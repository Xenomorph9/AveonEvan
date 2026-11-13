local fns = {}
local Toggles, acB_9, acB_10, acB_12, acB_14, Label4, acB_16, PlaceEggRequest, acB_20, acB_21, acB_24, acB_26, acB_27, acB_30, acB_32, acB_33, acB_34, acB_35, acB_36, acB_38, acB_39, acB_40, acB_43, acB_45, acB_48, acB_51, acB_59, acB_62, acB_65, acB_74, acB_77, acB_80, acB_85, acB_88
fns.Label6 = nil
fns.acB_4 = nil
Toggles = nil
acB_9 = nil
acB_12 = nil
acB_14 = nil
Label4 = nil
PlaceEggRequest = nil
acB_20 = nil
acB_21 = nil
acB_24 = nil
acB_26 = nil
acB_27 = nil
acB_32 = nil
acB_33 = nil
acB_34 = nil
acB_35 = nil
acB_38 = nil
acB_39 = nil
acB_40 = nil
acB_43 = nil
acB_45 = nil
local GJ
local G7
local F7
local Gw
local HV
local GV
local FV
local Hj
local Gj
local HI
local GI
local G6
local F6
local Hv
local Gv
local HU
local GU
local FU
local Hi
local Label2
local GH
local FH
local G5
local F5
local Gu
local HT
local GT
local FT
local Hh
local Gh
local FossilEvent
local H4
local Ht
local Gt
local GS
local FS
local Hg
local GF
local H3
local G3
local F3
local Hs
local MinimumCleanSeconds
local Gf
local HE
local SquatBonusRequest
local H2
local G2
local Label5
local Hr
local Gr
local HQ
local GQ
local FQ
local He
local Ge
local Options
local GD
local H1
local G1
local Hq
local FP
local Hd
local Label3
local GC
local F0
local Hp
local Label
local HO
local GO
local FO
local Hc
local Gc
local HB
local H_
local F_
local Ho
local Go
local HN
local LocalPlayer
local FN
local Hb
local Gb
local HA
local HZ
local ClaimAnimalIndexReward
local FZ
local Hn
local Gn
local GM
local FM
local Ga
local StationName
local Gz
local HY
function fns.fn37()
    return Hr
end
function fns.fn48()
    local K6 = HU()
    local K7 = K6 and K6:FindFirstChild("Detector")
    if K7 then
        Hd(K7.Position)
    end
end
function fns.fn88(bj, bk, bl)
    return string.format("<b>%s</b> %s %s", bj, F0("-", "#5a6070"), F0(bk, bl))
end
function fns.fn138(le, lf, lg, lh)
    return FH(le, lf) .. "  " .. FH(lg, lh, HO, HT)
end
function fns.fn217()
    if LocalPlayer:GetAttribute("IsSquatting") ~= true then
        return
    end
    if LocalPlayer:GetAttribute("SquatBonusAvailable") ~= true then
        return
    end
    local Lf = tonumber(LocalPlayer:GetAttribute("SquatBonusVersion")) or 0
    local Lg = math.floor(Lf)
    GJ("Claiming 2x")
    SquatBonusRequest:FireServer(Lg)
end
function fns.fn236(bz)
    local Jp = GV(bz, {})
    if typeof(Jp) ~= "table" then
        return {}
    end
    local Jq = {}
    for k, v in pairs(Jp) do
        if v == true then
            Jq[k] = true
        else
            local Jp_1 = typeof(k) == "number" and typeof(v) == "string"
            if Jp_1 then
                Jq[v] = true
            end
        end
    end
    return Jq
end
function fns.fn274(bg, bh)
    return string.format('<font color="%s">%s</font>', bh, bg)
end
function fns.fn282()
    local Oh_1
    local Og = Ho or G2
    local Og_1
    if Og then
        return
    end
    Ho = true
    Og_1, Oh_1 = pcall(function()
        if Ga() then
            GJ("Registering egg")
            G3()
            task.wait(0.15)
            return
        end
        local Oe = Gc(nil, false)
        if Oe then
            acB_34(Oe)
        else
            GJ("Scanning all zones")
        end
    end)
    Ho = false
    if not Og_1 then
        warn("[Ouroboros] Auto Collect All:", Oh_1)
    end
end
function fns.fn299()
    GJ("Claiming index")
    ClaimAnimalIndexReward:FireServer("__ALL__")
end
function fns.fn331()
    return FossilEvent:FindFirstChild(StationName)
end
function fns.fn387(iY)
    local TrailData = LocalPlayer:FindFirstChild("TrailData")
    local O7 = TrailData and TrailData:FindFirstChild("Owned")
    local O6_1 = O7
    if O7 then
        O7 = O6_1:FindFirstChild(iY)
    end
    local O6_2 = O7
    if O7 then
        O7 = O6_2.Value == true
    end
    return O7
end
function fns.fn388()
    local O1_1
    local O0 = acB_14 or G2
    local O0_1
    if O0 then
        return
    end
    acB_14 = true
    O0_1, O1_1 = pcall(function()
        local OS = HU()
        local OT = OS and OS:FindFirstChild("PlacedEggs")
        if not OT then
            return
        end
        for i, child in OT:GetChildren() do
            local OS_2 = H4.Unloaded or not HE("AutoHatchEggs")
            if OS_2 or G2 then
                break
            end
            local OS_3 = child:IsA("Model") and acB_20(child)
            if OS_3 then
                acB_26(child)
                task.wait(0.15)
            end
        end
    end)
    acB_14 = false
    if not O0_1 then
        warn("[Ouroboros] Auto Hatch:", O1_1)
    end
end
function fns.fn468(f7)
    local MO = Gu("FarmEggRarity")
    local MO_2
    if FP("FarmEggRarity") then
        local attr = f7:GetAttribute("Rarity")
        if not MO[tostring(attr)] then
            return false
        end
        Gu("FarmEggNames")
        if FP("FarmEggNames") then
            if not MO_2[f7.Name] then
                return false
            end
            return true
        end
        return true
    end
    MO_2 = Gu("FarmEggNames")
    if FP("FarmEggNames") then
        if not MO_2[f7.Name] then
            return false
        end
        return true
    end
    return true
end
function fns.fn469(hK, hL)
    local Detector = hK:FindFirstChild("Detector")
    local Ok = Detector and Detector.Position
    local Oj_1 = Ok or hK:GetPivot().Position
    local Oj_2 = (hL - 1) % 5
    local Ol = math.floor((hL - 1) / 5)
    return Vector3.new(Oj_1.X + (Oj_2 - 2) * 4, Oj_1.Y, Oj_1.Z + 6 + Ol * 4)
end
function fns.fn489()
    if G2 then
        return
    end
    GJ("Equip best")
    Hs:FireServer("EquipBest")
end
function fns.fn491()
    local Ps = F6()
    for i, v in ipairs(FZ) do
        local Pt = H4.Unloaded or not HE("AutoBuyCoil")
        if Pt then
            return
        end
        if not He(v) then
            local Pt_1 = Gh.Get(v)
            local Pu = Pt_1 and tonumber(Pt_1.Cost)
            if Ps >= (Pu or math.huge) then
                GJ("Buying " .. v)
                G6:FireServer("Select", v)
                task.wait(0.2)
                Ps = F6()
            end
        end
    end
end
function fns.fn493()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local JS = leaderstats and leaderstats:FindFirstChild("Cash")
    local JR_1 = JS
    if JS then
        JS = JR_1.Value
    end
    return GD(JS)
end
function fns.fn499(bu, bv)
    local Jn = Options[bu]
    if Jn == nil then
        return bv
    end
    return Jn.Value
end
function fns.fn508(cm)
    if not cm then
        return false
    end
    local Ka = tonumber(cm.JumpPower) or 0
    local Ka_1 = Gw.EggSteal and Gw.EggSteal.NaturalSpawnJumpPowerGrace
    local Kc = tonumber(Ka_1) or 25
    return G5() + Kc >= Ka
end
function fns.fn515()
    local attr = LocalPlayer:GetAttribute("PendingFossilName")
    local Lo = attr ~= ""
    local Lp = type(attr) == "string" and Lo
    return Lp
end
function fns.worker5()
    while not H4.Unloaded do
        if HE("AutoBuyTrails") then
            pcall(Gn)
        end
        if HE("AutoBuyCoil") then
            pcall(G7)
        end
        if HE("AutoEquipBest") then
            pcall(H3)
        end
        if HE("AutoUpgradePlot") then
            pcall(HB)
        end
        if HE("AutoClaimIndex") then
            pcall(Hi)
        end
        if HE("AutoBuyFossilEgg") then
            pcall(HY)
        end
        if HE("AutoSell") then
            pcall(FV)
        end
        task.wait(1.25)
    end
end
function fns.fn528()
    local Detector = acB_12:FindFirstChild("Detector")
    local PT = Detector and Detector:FindFirstChild("SellAnimalPrompt", true)
    if Detector then
        Hd(Detector.Position)
        task.wait(0.15)
    end
    if PT then
        GI(PT)
        task.wait(0.2)
    end
    acB_24:FireServer()
end
function fns.worker4()
    while not H4.Unloaded do
        if HE("AutoGoTrain") then
            pcall(FO)
        end
        if HE("Auto2x") then
            pcall(Hv)
        end
        task.wait(0.2)
    end
end
function fns.fn569()
    return F5() ~= nil
end
function fns.fn584()
    local MR = GV("CollectLogic", "Nearest")
    if type(MR) == "table" then
        MR = MR[1] or "Nearest"
    end
    return MR
end
function fns.fn620()
    local Character = LocalPlayer.Character
    local Jz = Character and Character:FindFirstChild("HumanoidRootPart")
    return Jz
end
function fns.fn650()
    local Ku
    for i, v in ipairs(HA()) do
        local Kv = Gj[v]
        if Kv and (not Ku or Kv.Index > Ku.Index) then
            Ku = Kv
        end
    end
    return Ku
end
function fns.fn651(bH)
    return next(Gu(bH)) ~= nil
end
function fns.fn655()
    local KV = tonumber(LocalPlayer:GetAttribute("CarriedEggCount")) or 0
    local KW = KV > 0
    local K_ = if KW then 1 else 0
    local KY = 3698 * K_ + 2245 * (1 - K_)
    local KZ = 1644 * K_ + 95 * (1 - K_)
    if not ((KY * 1611 + KZ * 3509 + KY * KZ) % 16777213 == 1028573) then
        KW = LocalPlayer:GetAttribute("EggCarryRestricted") == true
    end
    return KW
end
function fns.fn691()
    local aah = if HE("Auto2x") then 1 else 0
    if aah == 1 then
        pcall(Hv)
    end
end
function fns.fn704(k6, k7, k8, k9)
    local QD = k8 or HT
    local QE = F0(k6, QD)
    local QF = F0("-", HO)
    local QG = tostring(k7)
    local QH = k9 or HO
    return string.format("<b>%s</b> %s %s", QE, QF, F0(QG, QH))
end
function fns.fn706()
    local Lw = Gu("FossilZones")
    local Lx = {}
    for k in Lw do
        if k ~= "Best" and Gj[k] then
            table.insert(Lx, k)
        end
    end
    if #Lx > 0 then
        return Lx
    end
    for i, v in ipairs(Go) do
        local Lw_2 = v ~= "Best" and acB_38(Gj[v])
        if Lw_2 then
            table.insert(Lx, v)
        end
    end
    return Lx
end
function fns.fn734()
    local MA_1
    local Mz = acB_40 or G2
    local Mz_1
    if Mz then
        return
    end
    acB_40 = true
    Mz_1, MA_1 = pcall(function()
        local Mu = acB_43() or Gv()
        if Mu then
            GQ()
            return
        end
        local Mu_1 = F5()
        if not Mu_1 then
            GJ("No fossil in range")
            return
        end
        local My = if H2(Mu_1) then 1 else 0
        if My == 1 then
            GQ()
        end
    end)
    acB_40 = false
    if not Mz_1 then
        warn("[Ouroboros] Auto Fossils:", MA_1)
    end
end
function fns.fn841(ec)
    local Lu = Gu("FossilSizes")
    if not FP("FossilSizes") then
        return true
    end
    return Lu[tostring(ec:GetAttribute("FossilSize"))] == true
end
function fns.fn845()
    local LN_1
    local LM_1
    local LL_1
    local LJ = HZ()
    local LJ_1 = LJ and LJ.Position or Vector3.zero
    LN_1, LM_1, LL_1 = nil, nil, nil
    for i, v in ipairs(Hb()) do
        local LJ_2 = FN(v)
        local LO = LJ_2 and LJ_2:FindFirstChild(H1)
        if LO then
            for i, child in LO:GetChildren() do
                local LJ_4 = child:IsA("Model") and child:GetAttribute("IsFossil") == true
                if LJ_4 then
                    local LO_1 = tonumber(child:GetAttribute("CarriedByUserId")) or 0
                    LJ_4 = LO_1 == 0
                end
                if LJ_4 then
                    LJ_4 = HN(child)
                end
                if LJ_4 then
                    local LJ_5 = child:FindFirstChild(HV, true)
                    local LO_2 = LJ_5 and LJ_5:IsA("ProximityPrompt") and LJ_5.Enabled
                    if LO_2 then
                        local LJ_6 = tonumber(child:GetAttribute("Fragments")) or 0
                        local Magnitude = (child:GetPivot().Position - LJ_1).Magnitude
                        if not LN_1 or LJ_6 > LM_1 or LJ_6 == LM_1 and Magnitude < LL_1 then
                            LN_1, LM_1, LL_1 = child, LJ_6, Magnitude
                        end
                    end
                end
            end
        end
    end
    return LN_1
end
function fns.fn913()
    local K3 = F7.Placement and F7.Placement.MaximumIncubatingEggs
    local K4 = tonumber(K3) or 8
    return K4
end
function fns.worker2()
    while not H4.Unloaded do
        local Z8 = HE("AutoCollectAll") or HE("AutoCollectSelected")
        local Z9 = false
        if HE("AutoFossils") then
            if not Z8 then
                Z9 = true
            elseif HE("PrioritizeFossils") then
                local Z8_1 = acB_43() or Gv()
                if not Z8_1 then
                    local aaa_1 = not Ga() and FM()
                    Z8_1 = aaa_1
                end
                Z9 = Z8_1
            end
        end
        if Z9 then
            pcall(Hh)
            task.wait(0.05)
        elseif HE("AutoCollectAll") then
            pcall(Hn)
            task.wait(0.05)
        elseif HE("AutoCollectSelected") then
            pcall(HI)
            task.wait(0.05)
        else
            task.wait(0.35)
        end
    end
end
function fns.fn958()
    local Ll = tonumber(LocalPlayer:GetAttribute("CarriedFossilCount")) or 0
    return Ll > 0
end
function fns.fn968()
    return FT() >= acB_45()
end
function fns.fn977()
    local Plot = LocalPlayer:FindFirstChild("Plot")
    local JV = Plot and Plot.Value
    local JU_1 = JV
    if JV then
        JV = JU_1:IsA("Model")
    end
    if JV then
        return JU_1
    end
    return nil
end
function fns.fn984()
    local Lc = Gt()
    if not Lc then
        return
    end
    if LocalPlayer:GetAttribute("IsSquatting") == true then
        return
    end
    GJ("Going to train")
    Hd(Lc.Position)
    GH:FireServer(Lc)
end
function fns.fn1046()
    local Mh = F3()
    local Mi = FQ()
    local Mj = Mh and Mh:FindFirstChild(HQ, true)
    local Mh_1 = Mi
    if Mh_1 then
        Mh_1 = Mj
    end
    if Mh_1 then
        Mh_1 = Mj:IsA("ProximityPrompt")
    end
    if not Mh_1 then
        GJ("Research table missing")
        return false
    end
    GJ("Carrying fossil to the table")
    Hd(Mi.Position)
    task.wait(0.2)
    if not acB_43() then
        local Mr = 1
        while Mr <= 3 do
            GI(Mj)
            task.wait(0.25)
            if acB_43() then
                break
            end
            Mr += 1
        end
    end
    if not acB_43() then
        GJ("Could not place the fossil")
        return false
    end
    local Mh_2 = os.clock() + MinimumCleanSeconds + 1
    while true do
        if not (os.clock() < Mh_2) then
            GO:FireServer("Finish")
            local Mh_3 = os.clock() + 3
            while true do
                local Mi_1 = acB_43() and os.clock() < Mh_3
                if Mi_1 then
                    task.wait(0.1)
                    continue
                end
                break
            end
            GJ("Fossil cleaned")
            return not acB_43()
        end
        local Mj_1 = H4.Unloaded or not HE("AutoFossils")
        if Mj_1 then
            break
        end
        Hd(Mi.Position)
        GJ(string.format("Cleaning fossil (%ds)", math.max(0, math.ceil(Mh_2 - os.clock()))))
        task.wait(0.5)
    end
    return false
end
function fns.fn1066()
    local QA_1
    local Qz_1
    if G2 then
        return
    end
    G2 = true
    GJ("Selling pets")
    Qz_1, QA_1 = pcall(function()
        local Qa = {}
        local Qb = (GS())
        local Qg = if Qb then 1 else 0
        local Qe = 1423 * Qg + 762 * (1 - Qg)
        local Qf = 3944 * Qg + 3953 * (1 - Qg)
        if not ((Qe * 1667 + Qf * 936 + Qe * Qf) % 16777213 == 11676037) then
            Qb = Qa
        end
        local Qa_1 = {}
        local Qc = Qb
        for k, v in Qc do
            local Qb_1 = F_(v) and v.Id
            if Qb_1 then
                table.insert(Qa_1, v)
            end
        end
        table.sort(Qa_1, function(kG, kH)
            local P7 = tonumber(kG.CashPerSecond) or 0
            local P8 = tonumber(kH.CashPerSecond) or 0
            return P7 < P8
        end)
        for i, v in ipairs(Qa_1) do
            local Qa_2 = H4.Unloaded or not HE("AutoSell")
            if Qa_2 then
                break
            end
            GJ("Selling " .. tostring(v.Name))
            Hs:FireServer("SetEquipped", v.Id, false)
            task.wait(0.2)
            local Qa_3 = nil
            for i, v2 in ipairs(GT()) do
                if v2:GetAttribute("PetId") == v.Id then
                    Qa_3 = v2
                    break
                end
            end
            local Qb_2 = Qa_3 and acB_32(Qa_3)
            if Qb_2 then
                acB_27()
                task.wait(0.25)
            end
        end
        local Qa_4 = acB_35()
        if Qa_4 then
            Qa_4:UnequipTools()
        end
    end)
    G2 = false
    if not Qz_1 then
        warn("[Ouroboros] Auto Sell:", QA_1)
    end
end
function fns.fn1086(bW)
    local JI_1
    if type(bW) == "number" then
        return bW
    end
    local JH = bW or ""
    local JH_1
    bW = tostring(JH):gsub("%$", ""):gsub(",", ""):gsub("%s", "")
    JI_1, JH_1 = string.match(bW, "^([%d%.]+)([%a]*)$")
    local JI_2 = tonumber(JI_1)
    if not JI_2 then
        return 0
    end
    local JJ = {
        K = 1000,
        M = 1000000,
        B = 1000000000,
        T = 1000000000000,
        QA = 1000000000000000,
        QI = 1e+18,
        SX = 1e+21,
        SP = 1e+24,
        OC = 1e+27,
        NO = 1e+30,
        DC = 1e+33
    }
    local JK = 1
    local JM = JH_1 or ""
    local JH_2 = string.upper(JM)
    if JJ[JH_2] then
        JK = JJ[JH_2]
    end
    return JI_2 * JK
end
function fns.fn1089()
    local Ke
    for i, v in ipairs(Go) do
        if v ~= "Best" then
            local Kf = Gj[v]
            if acB_38(Kf) then
                Ke = Kf
            end
        end
    end
    return Ke
end
function fns.cashLoop()
    while not H4.Unloaded do
        local QJ = GC()
        local QK = HU()
        local QL = QK and QK:FindFirstChild("PlacedEggs")
        local QM = QK
        if QM then
            QM = QK:FindFirstChild("PlacedAnimals")
        end
        local QK_1 = QL
        local QL_1 = QM
        if QK_1 then
            QK_1 = #QL:GetChildren()
        end
        local QM_1 = QK_1 or 0
        local QK_2 = 0
        if QL then
            for i, child in QL:GetChildren() do
                local QM_2 = child:IsA("Model") and acB_20(child)
                if QM_2 then
                    QK_2 += 1
                end
            end
        end
        local QM_3 = 0
        if QJ then
            local QN_1 = FN(QJ.Name)
            local QP_1 = QN_1 and QN_1:FindFirstChild("SpawnedEggs")
            local QN_2 = QP_1
            if QP_1 then
                QP_1 = #QN_2:GetChildren()
            end
            QM_3 = QP_1 or 0
        end
        local QP_3 = Ho or Hj or acB_14 or G2 or acB_40
        local QN_6 = GU
        if not QP_3 then
            local QP_4 = HE("AutoCollectSelected") or HE("AutoCollectAll") or HE("AutoPlaceEggs") or HE("AutoHatchEggs") or HE("AutoSell") or HE("AutoBuyTrails") or HE("AutoBuyCoil") or HE("AutoEquipBest") or HE("AutoUpgradePlot") or HE("AutoClaimIndex")
            local Q0 = if QP_4 then 1 else 0
            local QZ = 718 * Q0 + 957 * (1 - Q0)
            local Q_ = 2290 * Q0 + 1534 * (1 - Q0)
            if not ((QZ * 2150 + Q_ * 3981 + QZ * Q_) % 16777213 == 12304410) then
                QP_4 = HE("AutoGoTrain")
            end
            if not QP_4 then
                QP_4 = HE("Auto2x")
            end
            if not QP_4 then
                QP_4 = HE("AutoFossils")
            end
            if not QP_4 then
                QP_4 = HE("AutoBuyFossilEgg")
            end
            if not QP_4 then
                QN_6 = "Idle"
                GU = "Idle"
            end
        end
        local QQ_2 = LocalPlayer.leaderstats and LocalPlayer.leaderstats.Cash and LocalPlayer.leaderstats.Cash.Value or 0
        local QP_6 = tostring(QQ_2)
        if string.sub(QP_6, 1, 1) ~= "$" then
            QP_6 = "$" .. QP_6
        end
        local QQ_3 = acB_45()
        local QR = string.format("bag %d | %d/%d spots | ready %d | world %d", #acB_39(), QM_1, QQ_3, QK_2, QM_3)
        if QM_1 >= QQ_3 then
            QR ..= " | FULL"
        end
        Label:SetText(FH("Action", QN_6))
        local QJ_1 = QJ and QJ.Name or "-"
        Label2:SetText(Hg("Zone", QJ_1, "Jump", tostring(G5())))
        local QJ_2 = Ga() and "Yes"
        local QK_4 = QJ_2 or "No"
        Label3:SetText(Hg("Cash", QP_6, "Carry", QK_4))
        Label4:SetText(FH("Eggs", QR, HO, HT))
        local QJ_3 = QL_1 and #QL_1:GetChildren()
        local QK_5 = QJ_3 or 0
        Label5:SetText(FH("Pets", tostring(QK_5)))
        local QJ_4 = 0
        for i, child in FS:GetChildren() do
            local QK_6 = child:FindFirstChild(H1)
            if QK_6 then
                QJ_4 += #QK_6:GetChildren()
            end
        end
        local QK_7 = tostring(QJ_4)
        if acB_43() then
            QK_7 ..= " | cleaning"
        elseif Gv() then
            QK_7 ..= " | carrying"
        end
        fns.Label6:SetText(Hg("Frags", tostring(acB_9()), "Fossils", QK_7))
        task.wait(0.25)
    end
end
function fns.fn1177(kV)
    local DiscordGroup = kV:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = Gf })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = Gf })
end
function fns.fn1179()
    local Lr = F3()
    local Ls = Lr and Lr:FindFirstChild(Ht, true)
    return Ls
end
function fns.fn1206(ik)
    if not ik or not ik.Parent then
        return false
    elseif ik:GetAttribute("HatchReady") == true then
        return true
    else
        local OE_1 = tonumber(ik:GetAttribute("HatchAt"))
        local OF = OE_1 and OE_1 <= workspace:GetServerTimeNow()
        if OF then
            return true
        end
        local HatchPrompt = ik:FindFirstChild("HatchPrompt", true)
        local OF_1 = HatchPrompt ~= nil and HatchPrompt:IsA("ProximityPrompt") and HatchPrompt.ActionText == "Open"
        return OF_1
    end
end
function fns.fn1231(gh)
    local MY_1, MY_2
    local MX_1, MX_2
    if #gh == 0 then
        return nil
    end
    local MU = GM()
    local MV = HZ()
    local MV_2
    local MV_1 = MV and MV.Position or Vector3.zero
    if MU == "Random" then
        return gh[math.random(1, #gh)]
    elseif MU == "Highest Rarity" then
        MY_1, MX_1, MV_2 = nil, nil, nil
        for i, v in ipairs(gh) do
            local MZ_1 = G1[tostring(v:GetAttribute("Rarity"))] or 0
            local Magnitude = (v:GetPivot().Position - MV_1).Magnitude
            if not MY_1 or MZ_1 > MX_1 or MZ_1 == MX_1 and Magnitude < MV_2 then
                MY_1 = v
                MX_1 = MZ_1
                MV_2 = Magnitude
            end
        end
        return MY_1
    else
        local MV_3 = MU == "Furthest"
        MY_2, MX_2 = nil, nil
        for i, v in ipairs(gh) do
            local Magnitude = (v:GetPivot().Position - MV_1).Magnitude
            local MZ_3 = not MX_2
            if not MZ_3 then
                MZ_3 = MV_3 and Magnitude > MX_2
            end
            if not MZ_3 then
                local M__3 = not MV_3
                if M__3 ~= false then
                    M__3 = Magnitude < MX_2
                end
                MZ_3 = M__3
            end
            if MZ_3 then
                MY_2 = v
                MX_2 = Magnitude
            end
        end
        return MY_2
    end
end
function fns.fn1312()
    local Fragments = LocalPlayer:FindFirstChild("Fragments")
    local Lj = Fragments and tonumber(Fragments.Value)
    return Lj or 0
end
function fns.fn1360()
    if Hj or G2 then
        return
    end
    if Hp() then
        GJ("Egg spots full")
        return
    end
    local On_1 = HU()
    if not On_1 then
        return
    end
    local PlacedEggs = On_1:FindFirstChild("PlacedEggs")
    local Op = PlacedEggs and #PlacedEggs:GetChildren()
    local Oo_1 = Op
    local Ox = if Oo_1 then 1 else 0
    local Ov = 912 * Ox + 3238 * (1 - Ox)
    local Ow = 3666 * Ox + 1428 * (1 - Ox)
    if not ((Ov * 1343 + Ow * 3867 + Ov * Ow) % 16777213 == 1967417) then
        Oo_1 = 0
    end
    local Op_1 = Oo_1
    local Oo_2 = acB_45()
    local Oq = acB_39()
    if #Oq == 0 or Op_1 >= Oo_2 then
        return
    end
    Hj = true
    GJ("Placing eggs")
    local Or_1 = 0
    for i, v in ipairs(Oq) do
        local Oq_1 = H4.Unloaded or not HE("AutoPlaceEggs")
        if Oq_1 or G2 then
            break
        elseif Op_1 + Or_1 >= Oo_2 then
            GJ("Egg spots full")
            break
        else
            local attr = v:GetAttribute("EggId")
            if attr then
                GJ("Placing " .. v.Name)
                local Os_1 = acB_35()
                if Os_1 and v.Parent == LocalPlayer.Backpack then
                    Os_1:EquipTool(v)
                    task.wait(0.1)
                end
                Or_1 += 1
                local Os_2 = FU(On_1, Op_1 + Or_1)
                PlaceEggRequest:FireServer(attr, Os_2)
                task.wait(0.25)
            end
        end
    end
    Hj = false
end
function fns.fn1366(eY)
    local L6 = eY:FindFirstChild(HV, true)
    local L7 = L6 and L6:IsA("ProximityPrompt")
    if not L7 then
        return false
    end
    GJ("Digging " .. eY.Name)
    Hd(eY:GetPivot().Position)
    task.wait(0.15)
    local Me = 1
    while true do
        if not (Me <= 3) then
            return Gv()
        end
        GI(L6)
        task.wait(0.2)
        if Gv() then
            break
        end
        Me += 1
    end
    return true
end
function fns.fn1381()
    local Pi = F6()
    for i, v in ipairs(Ge) do
        local Pj = H4.Unloaded or not HE("AutoBuyTrails")
        if Pj then
            return
        end
        if not acB_33(v) then
            local Pj_1 = fns.acB_4.Get(v)
            local Pk = Pj_1 and tonumber(Pj_1.Cost)
            if Pi >= (Pk or math.huge) then
                GJ("Buying " .. v)
                Hc:FireServer("Select", v)
                task.wait(0.2)
                Pi = F6()
            end
        end
    end
end
function fns.fn1386(bo)
    if H4.Unloaded then
        return false
    end
    local Jk = Toggles[bo]
    return Jk ~= nil and Jk.Value == true
end
function fns.fn1397()
    local N6_1
    local N5 = Ho
    local N5_1
    local Oa = if N5 then 1 else 0
    local N8 = 2363 * Oa + 1289 * (1 - Oa)
    local N9 = 3435 * Oa + 3291 * (1 - Oa)
    if not ((N8 * 426 + N9 * 4015 + N8 * N9) % 16777213 == 6137855) then
        N5 = G2
    end
    if N5 then
        return
    end
    Ho = true
    N5_1, N6_1 = pcall(function()
        if Ga() then
            GJ("Registering egg")
            G3()
            task.wait(0.15)
            return
        end
        local NS = HA()
        local NT = {}
        for i, v in ipairs(NS) do
            local NU_1 = Gj[v]
            local NV = NU_1 and acB_38(NU_1)
            if NV then
                table.insert(NT, v)
            end
        end
        if #NT == 0 then
            local NS_1 = #NS == 0 and "No zone" or "Need more jump"
            GJ(NS_1)
            return
        end
        local NS_2 = Gc(NT, true)
        if NS_2 then
            acB_34(NS_2)
        else
            GJ("Scanning " .. table.concat(NT, ", "))
        end
    end)
    Ho = false
    if not N5_1 then
        warn("[Ouroboros] Auto Collect Selected:", N6_1)
    end
end
function fns.fn1403()
    GJ("Upgrading plot")
    Hs:FireServer("BuyEquipSlot")
end
function fns.fn1405()
    local K0 = HU()
    local K1 = K0 and K0:FindFirstChild("PlacedEggs")
    local K0_1 = K1
    if K1 then
        K1 = #K0_1:GetChildren()
    end
    return K1 or 0
end
function fns.fn1490()
    local Kn = Gu("FarmZone")
    local Ko = {}
    for k in Kn do
        if k ~= "Best" and Gj[k] then
            table.insert(Ko, k)
        end
    end
    if #Ko > 0 then
        return Ko
    end
    local Kn_2 = acB_21()
    if Kn_2 then
        return { Kn_2.Name }
    end
    return {}
end
function fns.fn1492()
    Gz(Gb, "Copied Discord invite to clipboard")
end
function fns.fn1493(j6)
    local PN = type(j6) ~= "table" or j6.Kind ~= "Pet"
    local PN_3
    if PN then
        return false
    end
    local PN_1 = Gu("SellRarity")
    if FP("SellRarity") then
        if not PN_1[tostring(j6.Rarity)] then
            return false
        end
        Gu("SellAnimals")
        local PR_1 = if FP("SellAnimals") then 1 else 0
        if PR_1 == 1 then
            if not PN_3[tostring(j6.Name)] then
                return false
            end
            return true
        end
        return true
    end
    PN_3 = Gu("SellAnimals")
    local PR_2 = if FP("SellAnimals") then 1 else 0
    if PR_2 == 1 then
        if not PN_3[tostring(j6.Name)] then
            return false
        end
        return true
    end
    return true
end
function fns.fn1494(cU)
    return FS:FindFirstChild(cU)
end
function fns.fn1521(cj)
    local J8 = cj and cj:IsA("ProximityPrompt")
    if not J8 then
        return false
    end
    if fireproximityprompt then
        fireproximityprompt(cj)
    else
        cj:InputHoldBegin()
        task.wait(cj.HoldDuration)
        cj:InputHoldEnd()
    end
    return true
end
function fns.fn1569(a9, ba)
    if setclipboard then
        setclipboard(a9)
    elseif toclipboard then
        toclipboard(a9)
    end
    H4:Notify(ba)
end
function fns.fn1572(kl)
    local Character = LocalPlayer.Character
    local PX = acB_35()
    local Backpack = LocalPlayer:FindFirstChild("Backpack")
    if not (Character and PX and Backpack and kl) then
        return false
    end
    PX:UnequipTools()
    task.wait(0.05)
    for i, child in Character:GetChildren() do
        if child:IsA("Tool") then
            child.Parent = Backpack
        end
    end
    if kl.Parent ~= Character then
        kl.Parent = Character
    end
    task.wait(0.1)
    local Tool = Character:FindFirstChildOfClass("Tool")
    local PW_1 = Tool ~= nil and Tool:GetAttribute("PetId") == kl:GetAttribute("PetId")
    return PW_1
end
function fns.fn1604(a7)
    GU = a7 or "Idle"
end
function fns.fn1608(is)
    local HatchPrompt = is:FindFirstChild("HatchPrompt", true)
    local OI = HatchPrompt and HatchPrompt:IsA("ProximityPrompt")
    if not OI then
        return false
    end
    GJ("Hatching " .. is.Name)
    if not Hd(is:GetPivot().Position) then
        return false
    end
    task.wait()
    local OP = 1
    while true do
        if not (OP <= 3) then
            return not is.Parent
        end
        if not is.Parent then
            return true
        end
        GI(HatchPrompt)
        task.wait(0.2)
        local OI_1 = not is.Parent or is:GetAttribute("HatchOpening") == true
        if OI_1 then
            break
        end
        OP += 1
    end
    return true
end
function fns.fn1618()
    local K9 = HU()
    local La = K9 and K9:FindFirstChild("SquatZone")
    local K9_1 = La
    if La then
        La = K9_1:FindFirstChild("Floor")
    end
    local K9_2 = La
    if La then
        La = K9_2:FindFirstChild("Detector")
    end
    return La
end
function fns.fn1632()
    local Character = LocalPlayer.Character
    local JC = Character and Character:FindFirstChildOfClass("Humanoid")
    return JC
end
function fns.fn1634(i5)
    local CoilData = LocalPlayer:FindFirstChild("CoilData")
    local Pd = CoilData and CoilData:FindFirstChild("Owned")
    local Pc_1 = Pd
    if Pd then
        Pd = Pc_1:FindFirstChild(i5)
    end
    local Pc_2 = Pd
    if Pd then
        Pd = Pc_2.Value == true
    end
    return Pd
end
function fns.fn1637()
    local JumpPower = LocalPlayer:FindFirstChild("JumpPower")
    local JF = JumpPower and tonumber(JumpPower.Value)
    return JF or 0
end
function fns.worker3()
    while not H4.Unloaded do
        if HE("AutoPlaceEggs") then
            pcall(Hq)
        end
        if HE("AutoHatchEggs") then
            pcall(H_)
        end
        task.wait(0.25)
    end
end
function fns.fn1687(g7)
    local CollectPrompt = g7:FindFirstChild("CollectPrompt", true)
    if not CollectPrompt then
        return false
    end
    GJ("Collecting " .. g7.Name)
    Hd(g7:GetPivot().Position)
    task.wait(0.12)
    local NP = 1
    while NP <= 3 do
        GI(CollectPrompt)
        task.wait(0.15)
        if Ga() then
            break
        end
        NP += 1
    end
    if not Ga() then
        GJ("Missed " .. g7.Name)
        return false
    end
    GJ("Registering egg")
    G3()
    task.wait(0.15)
    return true
end
function fns.fn1730(cf)
    local J2 = HZ()
    if not (J2 and cf) then
        return false
    end
    if typeof(cf) == "CFrame" then
        J2.CFrame = cf
    else
        J2.CFrame = CFrame.new(cf + Vector3.new(0, 3, 0))
    end
    return true
end
FossilEvent = nil
FH = nil
acB_33 = nil
acB_12 = nil
FM = nil
FN = nil
FO = nil
FP = nil
FQ = nil
FS = nil
FT = nil
FU = nil
FV = nil
acB_21 = nil
fns.Label6 = nil
FZ = nil
F_ = nil
F0 = nil
Label5 = nil
F3 = nil
F5 = nil
F6 = nil
F7 = nil
acB_34 = nil
Label4 = nil
Ga = nil
Gb = nil
Gc = nil
Label3 = nil
Ge = nil
Gf = nil
Gh = nil
Label2 = nil
Gj = nil
acB_43 = nil
acB_26 = nil
fns.acB_4 = nil
Gn = nil
Go = nil
Label = nil
local FE, FF, FI, FJ, FR, FW, F1, F4, Gg, Gq
Gr = nil
Gt = nil
Gu = nil
Gv = nil
Gw = nil
acB_38 = nil
Gz = nil
local GB
GC = nil
GD = nil
SquatBonusRequest = nil
GF = nil
GH = nil
GI = nil
GJ = nil
acB_32 = nil
acB_9 = nil
GM = nil
LocalPlayer = nil
GO = nil
GQ = nil
GS = nil
GT = nil
GU = nil
GV = nil
acB_40 = nil
acB_20 = nil
ClaimAnimalIndexReward = nil
G1 = nil
G2 = nil
G3 = nil
G5 = nil
G6 = nil
G7 = nil
acB_14 = nil
Hb = nil
Hc = nil
Hd = nil
local Gs, Gy, GA, GG, GP, GR, GY, G0, G4, G8, Ha
He = nil
MinimumCleanSeconds = nil
Hg = nil
Hh = nil
Hi = nil
Hj = nil
acB_24 = nil
Hn = nil
Ho = nil
Hp = nil
Hq = nil
Hr = nil
Hs = nil
Ht = nil
Hv = nil
acB_35 = nil
PlaceEggRequest = nil
StationName = nil
HA = nil
HB = nil
Options = nil
HE = nil
HI = nil
acB_45 = nil
acB_27 = nil
Toggles = nil
HN = nil
HO = nil
HQ = nil
HT = nil
HU = nil
HV = nil
acB_39 = nil
HY = nil
HZ = nil
H_ = nil
local Hk, Hm, Hu, Hw, HC, HF, HG, BuyPromptName, HM, HP, HR, RunService, HX, H0
H1 = nil
H2 = nil
H3 = nil
H4 = nil
FE, acB_59, RunService, HM, HG, Hw, Hr, Hk, Ha, G4, GY, LocalPlayer, GF = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local acB_70 = 6
repeat
    acB_48 = (acB_70 * 7 + 3) % 8 + 1
    if acB_48 <= 4 then
        if acB_48 <= 2 then
            if acB_48 <= 1 then
                acB_30 = (vector.create((acB_70 * 5 + 5) % 11 + 1, (acB_70 * 3 + 1) % 13 + 1, (acB_70 * 4 + 10) % 17 + 1))
                acB_10 = (vector.create((acB_70 * 4 + 8) % 11 + 1, (acB_70 * 10 + 11) % 13 + 1, (acB_70 * 5 + 7) % 17 + 1))
                acB_85 = (vector.create((acB_70 * 3 + 2) % 11 + 1, (acB_70 * 2 + 2) % 13 + 1, (acB_70 * 12 + 3) % 17 + 1))
                acB_74 = (vector.create((acB_70 * 5 + 6) % 11 + 1, (acB_70 * 9 + 9) % 13 + 1, (acB_70 * 7 + 3) % 17 + 1))
                if vector.dot(vector.cross(acB_30, acB_10), (vector.cross(acB_85, acB_74))) == vector.dot(acB_30, acB_85) * vector.dot(acB_10, acB_74) - vector.dot(acB_30, acB_74) * vector.dot(acB_10, acB_85) then
                    HM = game:GetService("UserInputService")
                    HG = game:GetService("VirtualUser")
                    Hw = game:GetService("HttpService")
                else
                    Hw = game:GetService("UserInputService")
                    HM = game:GetService("VirtualUser")
                    HG = game:GetService("HttpService")
                end
                acB_70 = (acB_70 + 23) % 64
            else
                if (acB_70 * 1 + 7) * 9 % 4 == ((acB_70 * 1 + 7) * 9 + 4) % 4 then
                    Hr = game:GetService("CoreGui")
                    Hk = game:GetService("GuiService")
                else
                    Hk = game:GetService("CoreGui")
                    Hr = game:GetService("GuiService")
                end
                acB_70 = (acB_70 + 15) % 64
            end
        elseif acB_48 <= 3 then
            if (acB_70 * 2 + 9) * 16 % 3 == ((acB_70 * 2 + 9) * 16 + 0) % 3 then
                Ha = game:GetService("TeleportService")
                G4 = game:GetService("Workspace")
                GY = game:GetService("Lighting")
            else
                GY = game:GetService("TeleportService")
                Ha = game:GetService("Workspace")
                G4 = game:GetService("Lighting")
            end
            acB_70 = (acB_70 + 39) % 64
        else
            local ahF = bit32.rrotate(bit32.bxor(bit32.lrotate(acB_70, 19), string.byte(tostring(G4))), 16)
            if bit32.bxor(bit32.lrotate(bit32.bxor(ahF, 4064314299), 18), 250595586) == bit32.lrotate(ahF, 18) then
                LocalPlayer = FE.LocalPlayer
            else
                FE = LocalPlayer.LocalPlayer
            end
            acB_70 = (acB_70 + 55) % 64
        end
    elseif acB_48 <= 6 then
        if acB_48 <= 5 then
            acB_30 = (vector.create((acB_70 * 5 + 6) % 11 + 1, (acB_70 * 1 + 10) % 13 + 1, (acB_70 * 14 + 5) % 17 + 1))
            acB_10 = (vector.create((acB_70 * 1 + 9) % 11 + 1, (acB_70 * 9 + 8) % 13 + 1, (acB_70 * 2 + 5) % 17 + 1))
            acB_85 = (vector.create((acB_70 * 7 + 5) % 11 + 1, (acB_70 * 1 + 11) % 13 + 1, (acB_70 * 13 + 8) % 17 + 1))
            if vector.dot(vector.cross(acB_30, acB_10), acB_85) == vector.dot(vector.cross(acB_10, acB_85), acB_30) + 4 then
                acB_59 = fns.fn37
            else
                GF = fns.fn37
            end
            acB_70 = (acB_70 + 55) % 64
        else
            acB_30 = { "rsgsndwdj", "xonz", "iecxobx", "hytsar", "ghbp", "hqmtqeslai", "faei" }
            local ahq = acB_70
            acB_10 = acB_30[ahq % 7 + 1]
            if acB_10:len() <= acB_10:gsub("(.)", "%1%1", ahq % 3 % 2 + 1):len() then
                FE = game:GetService("Players")
            else
                Hr = game:GetService("Players")
            end
            acB_70 = (acB_70 + 63) % 64
        end
    elseif acB_48 <= 7 then
        acB_48 = {
            "thnvn",
            "mbpqifwi",
            "sjwhpo",
            "ovdc",
            "gbxndqjarby",
            "fecxlvsqtst",
            "iqkrbsgcom",
            "uytba",
            "fkkbgwrmqave"
        }
        if acB_48[(acB_70 * 69 + 46) % 9 + 1] < acB_48[(acB_70 * 69 + 46) % 9 + 1] then
            Hr = game:GetService("ReplicatedStorage")
        else
            acB_59 = game:GetService("ReplicatedStorage")
        end
        acB_70 = (acB_70 + 47) % 64
    else
        acB_48 = (vector.create((acB_70 * 1 + 8) % 11 + 1, (acB_70 * 11 + 8) % 13 + 1, (acB_70 * 2 + 2) % 17 + 1))
        acB_30 = (vector.create((acB_70 * 2 + 7) % 11 + 1, (acB_70 * 6 + 10) % 13 + 1, (acB_70 * 8 + 11) % 17 + 1))
        local aec = vector.dot(acB_48, acB_30)
        if aec * aec >= vector.dot(acB_48, acB_48) * vector.dot(acB_30, acB_30) + 1 then
            acB_59 = game:GetService("RunService")
        else
            RunService = game:GetService("RunService")
        end
        acB_70 = (acB_70 + 15) % 64
    end
until (acB_70 * 43 + 30) % 64 == 8
if getgenv then
    GB, acB_48 = nil, nil
    acB_70 = 2
    repeat
        acB_30 = (acB_70 * 1 + 0) % 2 + 1
        if acB_30 <= 1 then
            local ai4 = bit32.rrotate(bit32.bxor(bit32.lrotate(acB_70, 11), string.byte(tostring(GB))), 4)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(ai4, 879591881), 3690779396), (bit32.bxor(bit32.band(ai4, 3415375414), 3962862749))), 3690779396), 3962862749) ~= ai4 then
                getgenv().gethui = GB
                GF = getgenv().__OuroborosJumpForAnimalsLib
            else
                getgenv().gethui = GF
                GB = getgenv().__OuroborosJumpForAnimalsLib
            end
            acB_70 = (acB_70 + 3) % 8
        else
            acB_30 = {
                "mkznasimaepy",
                "appjtpv",
                "fyuo",
                "iwvxukqun",
                "sdrytqq",
                "tyrcwr",
                "jcpqvmk",
                "okmu",
                "muozvw",
                "mydfruohora",
                "xssbxaeym",
                "ekbuckew",
                "nbdfj"
            }
            if acB_30[(acB_70 * 74 + 18) % 13 + 1] <= acB_30[(acB_70 * 74 + 18) % 13 + 1] then
                acB_48 = GB
            else
                GB = acB_48
            end
            acB_70 = (acB_70 + 7) % 8
        end
    until (acB_70 * 5 + 1) % 8 == 5
    if acB_48 then
        acB_48 = GB.Unload
    end
    if acB_48 then
        pcall(function()
            GB:Unload()
        end)
    end
end
pcall(function()
    gethui = GF
end)
if setthreadidentity then
    setthreadidentity(8)
end
Gg, Gb, F4, F1, FW, FR, FJ, FF, H0, HT, HO, acB_30, PlaceEggRequest, Hs, acB_24, Hc, G6, ClaimAnimalIndexReward, GO, GH, SquatBonusRequest, acB_70, Gw, Gr, fns.acB_4, Gh, acB_51, F7, acB_62, acB_74, FS, acB_12, FossilEvent, H1, HV, HQ, BuyPromptName, StationName, Ht, Hm, MinimumCleanSeconds, G0, acB_85 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
acB_10 = 114
repeat
    acB_36 = (acB_10 * 4 + 4) % 17 + 1
    if acB_36 <= 9 then
        if acB_36 <= 5 then
            if acB_36 <= 3 then
                if acB_36 <= 2 then
                    if acB_36 <= 1 then
                        if acB_10 * 132081779 + 8 + 3 >= acB_10 * 132081779 + 8 + 3 + 1 then
                            acB_74 = acB_85.Station.FinishRangeStuds
                            G0 = {}
                        else
                            G0 = acB_74.Stand.PriceFragments
                            acB_85 = {}
                        end
                        acB_10 = (acB_10 + 47) % 136
                    else
                        if acB_10 * 122915041 + 10 + 7 <= acB_10 * 122915041 + 10 + 7 + 3 then
                            Gg = "Jump for Animals!"
                            Gb = "https://discord.gg/synapsex"
                            F4 = "https://rscripts.net/@Ouroboros"
                        else
                            F4 = "Jump for Animals!"
                            Gg = "https://discord.gg/synapsex"
                            Gb = "https://rscripts.net/@Ouroboros"
                        end
                        acB_10 = (acB_10 + 13) % 136
                    end
                else
                    if acB_10 * 28555277 + 13 + 7 <= acB_10 * 28555277 + 13 + 7 + 3 then
                        F1 = "https://ouroboros-hub-rbx.web.app/"
                        FW = "#7fd47f"
                        FR = "#6ec1ff"
                    else
                        FR = "https://ouroboros-hub-rbx.web.app/"
                        F1 = "#7fd47f"
                        FW = "#6ec1ff"
                    end
                    acB_10 = (acB_10 + 30) % 136
                end
            elseif acB_36 <= 4 then
                acB_16 = (vector.create((acB_10 * 5 + 3) % 11 + 1, (acB_10 * 3 + 2) % 13 + 1, (acB_10 * 2 + 13) % 17 + 1))
                acB_88 = (vector.create((acB_10 * 2 + 5) % 11 + 1, (acB_10 * 6 + 2) % 13 + 1, (acB_10 * 1 + 15) % 17 + 1))
                local ahk = vector.cross(acB_16, acB_88)
                local ahl = vector.dot(acB_16, acB_88)
                if vector.dot(ahk, ahk) + ahl * ahl == vector.dot(acB_16, acB_16) * vector.dot(acB_88, acB_88) then
                    FJ = "#e8a34d"
                    FF = "#8b93a3"
                    H0 = "#e05a5a"
                    HT = "#ff7eb9"
                else
                    HT = "#e8a34d"
                    FJ = "#8b93a3"
                    FF = "#e05a5a"
                    H0 = "#ff7eb9"
                end
                acB_10 = (acB_10 + 132) % 136
            else
                if (acB_10 * 3 + 9) * 17 % 4 == ((acB_10 * 3 + 9) * 17 + 4) % 4 then
                    HO = "#c084fc"
                else
                    Ht = "#c084fc"
                end
                acB_10 = (acB_10 + 30) % 136
            end
        elseif acB_36 <= 7 then
            if acB_36 <= 6 then
                if (acB_10 * 2 + 5) * 16 % 3 == ((acB_10 * 2 + 5) * 16 + 3) % 3 then
                    acB_30 = acB_59:WaitForChild("Remotes")
                else
                    acB_59 = acB_30:WaitForChild("Remotes")
                end
                acB_10 = (acB_10 + 47) % 136
            else
                acB_16 = (vector.create((acB_10 * 7 + 7) % 11 + 1, (acB_10 * 4 + 3) % 13 + 1, (acB_10 * 12 + 7) % 17 + 1))
                acB_88 = (vector.create((acB_10 * 4 + 6) % 11 + 1, (acB_10 * 4 + 5) % 13 + 1, (acB_10 * 5 + 5) % 17 + 1))
                acB_77 = (vector.create((acB_10 * 2 + 1) % 11 + 1, (acB_10 * 5 + 4) % 13 + 1, (acB_10 * 10 + 15) % 17 + 1))
                acB_65 = (vector.create((acB_10 * 1 + 4) % 11 + 1, (acB_10 * 11 + 7) % 13 + 1, (acB_10 * 2 + 17) % 17 + 1))
                if vector.dot(vector.cross(acB_16, acB_88), (vector.cross(acB_77, acB_65))) == vector.dot(acB_16, acB_77) * vector.dot(acB_88, acB_65) - vector.dot(acB_16, acB_65) * vector.dot(acB_88, acB_77) + 5 then
                    G6 = PlaceEggRequest:WaitForChild("PlaceEggRequest")
                    Hc = PlaceEggRequest:WaitForChild("PetInventory")
                    acB_30 = PlaceEggRequest:WaitForChild("Sell")
                    acB_24 = PlaceEggRequest:WaitForChild("Trails")
                    Hs = PlaceEggRequest:WaitForChild("Coils")
                else
                    PlaceEggRequest = acB_30:WaitForChild("PlaceEggRequest")
                    Hs = acB_30:WaitForChild("PetInventory")
                    acB_24 = acB_30:WaitForChild("Sell")
                    Hc = acB_30:WaitForChild("Trails")
                    G6 = acB_30:WaitForChild("Coils")
                end
                acB_10 = (acB_10 + 98) % 136
            end
        elseif acB_36 <= 8 then
            acB_16 = (vector.create((acB_10 * 7 + 6) % 11 + 1, (acB_10 * 6 + 12) % 13 + 1, (acB_10 * 9 + 6) % 17 + 1))
            acB_88 = (vector.create((acB_10 * 5 + 1) % 11 + 1, (acB_10 * 9 + 1) % 13 + 1, (acB_10 * 14 + 10) % 17 + 1))
            acB_77 = (vector.create((acB_10 * 7 + 2) % 11 + 1, (acB_10 * 6 + 10) % 13 + 1, (acB_10 * 4 + 5) % 17 + 1))
            acB_65 = (vector.create((acB_10 * 2 + 2) % 11 + 1, (acB_10 * 7 + 10) % 13 + 1, (acB_10 * 4 + 5) % 17 + 1))
            if vector.dot(vector.cross(acB_16, acB_88), (vector.cross(acB_77, acB_65))) == vector.dot(acB_16, acB_77) * vector.dot(acB_88, acB_65) - vector.dot(acB_16, acB_65) * vector.dot(acB_88, acB_77) then
                ClaimAnimalIndexReward = acB_30:WaitForChild("ClaimAnimalIndexReward")
            else
                acB_30 = ClaimAnimalIndexReward:WaitForChild("ClaimAnimalIndexReward")
            end
            acB_10 = (acB_10 + 81) % 136
        else
            acB_16 = {
                "nsijbun",
                "aysgxpwwh",
                "tonidwh",
                "ftpk",
                "bjh",
                "mektpomp",
                "nvuqpgi",
                "nikr",
                "dpm",
                "xizrrakt",
                "jeqamaxavsj",
                "dridfaxksmbp",
                "cunixrjor",
                "ezxogq"
            }
            if acB_16[(acB_10 * 72 + 110) % 14 + 1] <= acB_16[(acB_10 * 72 + 110) % 14 + 1] then
                GO = acB_30:WaitForChild("Fossil")
                GH = acB_30:WaitForChild("SquatTrainingRequest")
                SquatBonusRequest = acB_30:WaitForChild("SquatBonusRequest")
            else
                acB_30 = SquatBonusRequest:WaitForChild("Fossil")
                GO = SquatBonusRequest:WaitForChild("SquatTrainingRequest")
                GH = SquatBonusRequest:WaitForChild("SquatBonusRequest")
            end
            acB_10 = (acB_10 + 30) % 136
        end
    elseif acB_36 <= 13 then
        if acB_36 <= 11 then
            if acB_36 <= 10 then
                acB_16 = (vector.create((acB_10 * 2 + 7) % 11 + 1, (acB_10 * 3 + 9) % 13 + 1, (acB_10 * 13 + 17) % 17 + 1))
                acB_88 = (vector.create((acB_10 * 1 + 8) % 11 + 1, (acB_10 * 2 + 5) % 13 + 1, (acB_10 * 12 + 10) % 17 + 1))
                acB_77 = (vector.create((acB_10 * 3 + 9) % 11 + 1, (acB_10 * 3 + 6) % 13 + 1, (acB_10 * 11 + 16) % 17 + 1))
                if vector.dot(vector.cross(acB_16, acB_88), acB_77) == vector.dot(vector.cross(acB_88, acB_77), acB_16) + 4 then
                    acB_59 = acB_70:WaitForChild("Settings")
                else
                    acB_70 = acB_59:WaitForChild("Settings")
                end
                acB_10 = (acB_10 + 98) % 136
            else
                acB_16 = {
                    "ywvoddm",
                    "cgwd",
                    "xxie",
                    "cdafb",
                    "aoqhfakbnuy",
                    "qfadphgyva",
                    "uiiimgtnm",
                    "lzc",
                    "aoofzm",
                    "jqmwnleygsn",
                    "qvqlcnxo",
                    "gpnbzaffjz"
                }
                local aiB = acB_10
                acB_88 = acB_16[aiB % 12 + 1]
                if acB_88:len() <= acB_88:gsub("(.)", "%1%1", aiB % 3 % 2 + 1):len() then
                    Gw = require(acB_70:WaitForChild("Areas"))
                    Gr = require(acB_70:WaitForChild("JumpLevels"))
                    fns.acB_4 = require(acB_70:WaitForChild("Trails"))
                    Gh = require(acB_70:WaitForChild("SpeedUpgrades"))
                else
                    Gr = require(Gw:WaitForChild("Areas"))
                    Gh = require(Gw:WaitForChild("JumpLevels"))
                    acB_70 = require(Gw:WaitForChild("Trails"))
                    fns.acB_4 = require(Gw:WaitForChild("SpeedUpgrades"))
                end
                acB_10 = (acB_10 + 98) % 136
            end
        elseif acB_36 <= 12 then
            local ai1 = bit32.rrotate(bit32.bxor(bit32.lrotate(acB_10, 24), string.byte(tostring(acB_62))), 18)
            if bit32.bxor(bit32.lrotate(bit32.bxor(ai1, 2962687853), 22), 3681297857) ~= bit32.lrotate(ai1, 22) then
                acB_70 = require(acB_62:WaitForChild("Animals"))
                acB_51 = require(acB_62:WaitForChild("Eggs"))
                F7 = require(acB_62:WaitForChild("Rarities"))
            else
                acB_51 = require(acB_70:WaitForChild("Animals"))
                F7 = require(acB_70:WaitForChild("Eggs"))
                acB_62 = require(acB_70:WaitForChild("Rarities"))
            end
            acB_10 = (acB_10 + 81) % 136
        else
            if (acB_10 * 1 + 4) * 21 % 4 == ((acB_10 * 1 + 4) * 21 + 7) % 4 then
                acB_70 = require(acB_74:WaitForChild("FossilEvent"))
            else
                acB_74 = require(acB_70:WaitForChild("FossilEvent"))
            end
            acB_10 = (acB_10 + 98) % 136
        end
    elseif acB_36 <= 15 then
        if acB_36 <= 14 then
            if (acB_10 * 2 + 7) * 16 % 3 == ((acB_10 * 2 + 7) * 16 + 2) % 3 then
                G4 = FossilEvent:WaitForChild("Map"):WaitForChild("Stages")
                FS = FossilEvent:WaitForChild("Map"):WaitForChild("Sell")
                acB_12 = FossilEvent:WaitForChild("Map"):WaitForChild("FossilEvent")
            else
                FS = G4:WaitForChild("Map"):WaitForChild("Stages")
                acB_12 = G4:WaitForChild("Map"):WaitForChild("Sell")
                FossilEvent = G4:WaitForChild("Map"):WaitForChild("FossilEvent")
            end
            acB_10 = (acB_10 + 98) % 136
        else
            if acB_10 * 33820193 + 2 + 7 >= acB_10 * 33820193 + 2 + 7 + 2 then
                acB_74 = BuyPromptName.Spawn.FolderName
                H1 = BuyPromptName.Dig.PromptName
                HV = BuyPromptName.Station.PlacePromptName
                HQ = BuyPromptName.Stand.BuyPromptName
            else
                H1 = acB_74.Spawn.FolderName
                HV = acB_74.Dig.PromptName
                HQ = acB_74.Station.PlacePromptName
                BuyPromptName = acB_74.Stand.BuyPromptName
            end
            acB_10 = (acB_10 + 132) % 136
        end
    elseif acB_36 <= 16 then
        if (acB_10 * 2 + 4) * 13 % 3 == ((acB_10 * 2 + 4) * 13 + 6) % 3 then
            StationName = acB_74.Station.StationName
        else
            acB_74 = StationName.Station.StationName
        end
        acB_10 = (acB_10 + 132) % 136
    else
        if (acB_10 * 2 + 2) * 16 % 3 == ((acB_10 * 2 + 2) * 16 + 4) % 3 then
            acB_74 = MinimumCleanSeconds.Client.Cleaning.FossilSpotName
            Ht = MinimumCleanSeconds.Stand.EggStandName
            Hm = MinimumCleanSeconds.Station.MinimumCleanSeconds
        else
            Ht = acB_74.Client.Cleaning.FossilSpotName
            Hm = acB_74.Stand.EggStandName
            MinimumCleanSeconds = acB_74.Station.MinimumCleanSeconds
        end
        acB_10 = (acB_10 + 64) % 136
    end
until (acB_10 * 29 + 114) % 136 == 37
for i, v in ipairs(acB_74.Sizes) do
    acB_85[v.Name] = i
end
acB_70 = {}
for i, v in ipairs(acB_74.Sizes) do
    table.insert(acB_70, v.Name)
end
Go, Gj = nil, nil
acB_59 = 0
repeat
    if (not Gj or not Go or not acB_59 and not acB_59 or not Go and Go and (acB_59 or not Go) or (not acB_59 or Go or not acB_59 and Go) and ((not Gj or Gj) and (not Gj or not Go)) or ((not acB_59 or not acB_59) and (Gj and not Gj) and ((not acB_59 or Gj) and (not acB_59 or not acB_59)) or not Gj and Gj and (not Go and not acB_59) and (Gj or acB_59 or (acB_59 or not acB_59)))) and not (not Gj or not Go or not acB_59 and not acB_59 or not Go and Go and (acB_59 or not Go) or (not acB_59 or Go or not acB_59 and Go) and ((not Gj or Gj) and (not Gj or not Go)) or ((not acB_59 or not acB_59) and (Gj and not Gj) and ((not acB_59 or Gj) and (not acB_59 or not acB_59)) or not Gj and Gj and (not Go and not acB_59) and (Gj or acB_59 or (acB_59 or not acB_59)))) then
        Gj = { "Best" }
        Go = {}
    else
        Go = { "Best" }
        Gj = {}
    end
    acB_59 = (acB_59 + 0) % 4
until (acB_59 * 1 + 3) % 4 == 3
acB_48 = function(au, av, aw)
    local Jb = au == nil
    local Jg = if Jb then 1 else 0
    local Je = 17 * Jg + 1374 * (1 - Jg)
    local Jf = 144 * Jg + 1666 * (1 - Jg)
    if not ((Je * 3783 + Jf * 1180 + Je * Jf) % 16777213 == 236679) then
        Jb = au == ""
    end
    if not Jb then
        Jb = Gj[au]
    end
    if Jb then
        return
    end
    local Jb_1 = Gr.FirstWorldAreaRequirements[av]
    table.insert(Go, au)
    local Jb_2 = Jb_1 and Jb_1.JumpPower
    local Jg_1 = if Jb_2 then 1 else 0
    local Je_1 = 763 * Jg_1 + 1423 * (1 - Jg_1)
    local Jf_1 = 4042 * Jg_1 + 230 * (1 - Jg_1)
    if not ((Je_1 * 2071 + Jf_1 * 3491 + Je_1 * Jf_1) % 16777213 == 1997628) then
        Jb_2 = 0
    end
    Gj[au] = { Index = av, Name = au, Rarity = aw, JumpPower = Jb_2 }
end
for i, v in ipairs(Gw.List) do
    acB_48(v.Name, i, v.Rarity)
end
acB_30 = nil
acB_59 = 3
repeat
    acB_10 = {
        "ultpjohk",
        "rzxajy",
        "tgr",
        "pbka",
        "ygevrqfllfi",
        "mjbngbscsvr",
        "rypwgvovboy",
        "mvgf",
        "trmbk",
        "msacvq"
    }
    local ahp = acB_59
    acB_85 = acB_10[ahp % 10 + 1]
    if acB_85:len() <= acB_85:gsub("(.)", "%1%1", ahp % 3 % 2 + 1):len() then
        acB_30 = #Gw.List
    else
        Gw = #acB_30.List
    end
    acB_59 = (acB_59 + 7) % 8
until (acB_59 * 7 + 4) % 8 == 2
for i, child in FS:GetChildren() do
    if not Gj[child.Name] then
        acB_30 += 1
        acB_48(child.Name, acB_30, nil)
    end
end
G8, G1, GR = nil, nil, nil
acB_59 = 0
repeat
    acB_48 = { "hgoxffc", "ppa", "zuqgihzvm", "bbkeiqgegur", "buqbqtcud", "heutykpgvf", "jgp", "kpewc" }
    if acB_48[(acB_59 * 67 + 61) % 8 + 1] <= acB_48[(acB_59 * 67 + 61) % 8 + 1] then
        G8 = {}
        G1 = {}
        GR = {
            Common = 10265519,
            Uncommon = 2278750,
            Rare = 3900150,
            Epic = 11032055,
            Legendary = 16096779,
            Mythic = 15680580,
            Divine = 15485081,
            Celestial = 440020,
            Eternal = 15381256,
            Ascended = 16347926
        }
    else
        GR = {}
        G8 = {}
        G1 = {
            Uncommon = 2278750,
            Legendary = 16096779,
            Rare = 3900150,
            Divine = 15485081,
            Celestial = 440020,
            Ascended = 16347926,
            Epic = 11032055,
            Eternal = 15381256,
            Common = 10265519,
            Mythic = 15680580
        }
    end
    acB_59 = (acB_59 + 0) % 4
until (acB_59 * 3 + 0) % 4 == 0
for i, v in ipairs(acB_62.List) do
    table.insert(G8, v)
    G1[v] = i
end
Gy, Gs, Gq = nil, nil, nil
acB_48 = { "Nearest", "Furthest", "Random", "Highest Rarity" }
Gy = { "Farm Zone", "All Zones" }
Gs = { "Random", "Least Populated", "Most Populated" }
Gq = {}
for k in acB_51.List do
    table.insert(Gq, k)
end
table.sort(Gq)
Ge = {}
for i, v in ipairs(fns.acB_4.GetOrdered()) do
    table.insert(Ge, v.Name)
end
FZ = {}
for i, v in ipairs(Gh.GetOrdered()) do
    table.insert(FZ, v.Name)
end
H4, HX, HR = nil, nil, nil
acB_30 = 2
repeat
    acB_10 = { "dksbfhuoks", "flmubcetje", "liiipqpc", "egicx", "jmhmwtinx", "qnsigue", "smf", "kufzlgtav" }
    if acB_10[(acB_30 * 93 + 19) % 8 + 1] < acB_10[(acB_30 * 93 + 19) % 8 + 1] then
        HX = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
        loadstring(game:HttpGet(HX .. "Library.lua"))()
        HR = loadstring(game:HttpGet(HX .. "addons/ThemeManager.lua"))()
        H4 = loadstring(game:HttpGet(HX .. "addons/SaveManager.lua"))()
    else
        H4 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
        HX = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
        HR = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    end
    acB_30 = (acB_30 + 3) % 4
until (acB_30 * 3 + 0) % 4 == 3
if getgenv then
    getgenv().__OuroborosJumpForAnimalsLib = H4
end
Toggles, Options, Hu, Ho, Hj, acB_14, G2, GU, acB_40, acB_30, GG, GJ, Gz, Gf, F0, FI, HE, GV, Gu, FP, HZ, acB_35, G5, GD, F6, HU, Hd, GI, acB_38, acB_21, HA, GC, FN, acB_39, GT, Ga, FT, acB_45, Hp, G3, Gt, FO, Hv, acB_9, Gv, acB_43, F3, FQ, HN, Hb, F5, FM, H2, GQ, Hh, HY, HF, GM, GA, Gc, acB_34, HI, Hn, FU, Hq, acB_20, acB_26, H_, acB_33, He, Gn, G7, H3, HB, Hi, GS, F_, acB_27, acB_32, FV = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Toggles = H4.Toggles
Options = H4.Options
Hu = nil
Ho = false
Hj = false
acB_14 = false
G2 = false
GU = "Idle"
GJ = fns.fn1604
Gz = fns.fn1569
Gf = fns.fn1492
F0 = fns.fn274
FI = fns.fn88
HE = fns.fn1386
GV = fns.fn499
Gu = fns.fn236
FP = fns.fn651
HZ = fns.fn620
acB_35 = fns.fn1632
G5 = fns.fn1637
GD = fns.fn1086
F6 = fns.fn493
HU = fns.fn977
Hd = fns.fn1730
GI = fns.fn1521
acB_38 = fns.fn508
acB_21 = fns.fn1089
HA = fns.fn1490
GC = fns.fn650
FN = fns.fn1494
acB_39 = function()
    local cX
    cX = {}
    local function cY(cZ)
        if not cZ then
            return
        end
        for i, child in cZ:GetChildren() do
            local KF = child:IsA("Tool") and child:GetAttribute("IsEggTool") == true
            if KF then
                table.insert(cX, child)
            end
        end
    end
    cY(LocalPlayer:FindFirstChild("Backpack"))
    cY(LocalPlayer.Character)
    return cX
end
GT = function()
    local c5
    c5 = {}
    local function c6(c7)
        if not c7 then
            return
        end
        for i, child in c7:GetChildren() do
            local KN = child:IsA("Tool") and child:GetAttribute("IsPetInventoryTool") == true
            if KN then
                table.insert(c5, child)
            end
        end
    end
    c6(LocalPlayer:FindFirstChild("Backpack"))
    c6(LocalPlayer.Character)
    return c5
end
Ga = fns.fn655
FT = fns.fn1405
acB_45 = fns.fn913
Hp = fns.fn968
G3 = fns.fn48
Gt = fns.fn1618
FO = fns.fn984
Hv = fns.fn217
acB_40 = false
acB_9 = fns.fn1312
Gv = fns.fn958
acB_43 = fns.fn515
F3 = fns.fn331
FQ = fns.fn1179
HN = fns.fn841
Hb = fns.fn706
F5 = fns.fn845
FM = fns.fn569
H2 = fns.fn1366
GQ = fns.fn1046
Hh = fns.fn734
HY = function()
    local MG, MH
    if G2 or acB_40 then
        return
    end
    if acB_9() < G0 then
        return
    end
    local MI_1 = FossilEvent:FindFirstChild(Hm)
    local MJ = MI_1 and MI_1:FindFirstChild(BuyPromptName, true)
    MH = MJ
    local MI_2 = MH and MH:IsA("ProximityPrompt")
    if not MI_2 then
        return
    end
    local MI_3 = (MH:FindFirstAncestorWhichIsA("BasePart"))
    if not MI_3 then
        local MJ_1 = MH.Parent and MH.Parent:IsA("Attachment") and MH.Parent.Parent
        MI_3 = MJ_1
    end
    MG = MI_3
    acB_40 = true
    GJ("Buying Fossiled Egg")
    pcall(function()
        local MC = MG and MG:IsA("BasePart")
        if MC then
            Hd(MG.Position)
            task.wait(0.2)
        end
        local MC_1 = acB_9()
        GI(MH)
        local MD = os.clock() + 2
        while true do
            local ME = acB_9() >= MC_1 and os.clock() < MD
            if ME then
                task.wait(0.1)
                continue
            end
            break
        end
    end)
    acB_40 = false
end
HF = fns.fn468
GM = fns.fn584
GA = fns.fn1231
Gc = function(gL, gM)
    local Nu
    Nu = {}
    local function Nv(gP)
        if not gP then
            return
        end
        for i, child in gP:GetChildren() do
            local Nl = (child:IsA("Model"))
            if Nl then
                local Nm_1 = not gM or HF(child)
                Nl = Nm_1
            end
            if Nl then
                local CollectPrompt = child:FindFirstChild("CollectPrompt", true)
                local Nm_2 = CollectPrompt and CollectPrompt:IsA("ProximityPrompt") and CollectPrompt.Enabled
                if Nm_2 then
                    table.insert(Nu, child)
                end
            end
        end
    end
    if gL == nil then
        for i, child in FS:GetChildren() do
            Nv(child:FindFirstChild("SpawnedEggs"))
        end
    else
        if type(gL) == "string" then
            gL = { gL }
        end
        for i, v in ipairs(gL) do
            local Nw = FN(v)
            local Nx = Nw and Nw:FindFirstChild("SpawnedEggs")
            Nv(Nx)
        end
    end
    return GA(Nu)
end
acB_34 = fns.fn1687
HI = fns.fn1397
Hn = fns.fn282
FU = fns.fn469
Hq = fns.fn1360
acB_20 = fns.fn1206
if (HN or not F5) and (Gt or FT) and (not F5 and not HN and (not F5 and not F5)) or ((not Gt or FT) and (not F5 and not FT) or (not acB_30 or not F5 or (HN or not acB_30))) or Gt and not acB_30 and (not FT and not FO) and (not acB_30 and HN and (not Gt and Gt)) and (not acB_30 and FT and (not F5 and not FT) and (acB_30 and FT and (F5 or Gt))) or not ((HN or not F5) and (Gt or FT) and (not F5 and not HN and (not F5 and not F5)) or ((not Gt or FT) and (not F5 and not FT) or (not acB_30 or not F5 or (HN or not acB_30))) or Gt and not acB_30 and (not FT and not FO) and (not acB_30 and HN and (not Gt and Gt)) and (not acB_30 and FT and (not F5 and not FT) and (acB_30 and FT and (F5 or Gt)))) then
    acB_26 = fns.fn1608
    H_ = fns.fn388
    acB_33 = fns.fn387
else
    acB_33 = fns.fn1608
    acB_26 = fns.fn388
    H_ = fns.fn387
end
He = fns.fn1634
Gn = fns.fn1381
G7 = fns.fn491
H3 = fns.fn489
HB = fns.fn1403
Hi = fns.fn299
GS = function()
    local PI
    PI = nil
    PI = nil
    local connection = Hs.OnClientEvent:Connect(function(jY, jZ)
        local PG = jY == "Snapshot" and type(jZ) == "table"
        if PG then
            PI = jZ
        end
    end)
    Hs:FireServer("Get")
    local PK = os.clock() + 2
    while true do
        local PL = not PI and os.clock() < PK
        if PL then
            task.wait(0.05)
            continue
        end
        break
    end
    connection:Disconnect()
    if PI then
        Hu = PI
    end
    return Hu
end
F_ = fns.fn1493
acB_27 = fns.fn528
acB_32 = fns.fn1572
FV = fns.fn1066
acB_30 = H4:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = Gb, Copyable = true }, "|", Gg },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
if (not HU and not HU or (GU or not HU)) and (not Toggles or not GU or Toggles and not HU) or (not Hh and Ga or (not FO or Toggles) or FO and FO and (GU and not GU)) or not ((not HU and not HU or (GU or not HU)) and (not Toggles or not GU or Toggles and not HU) or (not Hh and Ga or (not FO or Toggles) or FO and FO and (GU and not GU))) then
    GG = {
        Info = acB_30:AddTab("Info", "info"),
        Main = acB_30:AddTab("Main", "paw-print"),
        Player = acB_30:AddTab("Player", "person-standing"),
        Webhook = acB_30:AddTab("Webhook", "webhook"),
        Settings = acB_30:AddTab("Settings", "settings")
    }
else
    acB_30 = {
        Main = GG:AddTab("Main", "paw-print"),
        Webhook = GG:AddTab("Webhook", "webhook"),
        Info = GG:AddTab("Info", "info"),
        Settings = GG:AddTab("Settings", "settings"),
        Player = GG:AddTab("Player", "person-standing")
    }
end
acB_10 = fns.fn1177
for k, v in GG do
    if k ~= "Info" then
        acB_10(v)
    end
end
Label, Label2, Label3, Label4, Label5, fns.Label6, FH, Hg, HP, HC, GP, acB_80 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
acB_16 = GG.Main:AddLeftTabbox()
acB_36 = acB_16:AddTab("All", "globe")
acB_36:AddToggle("AutoCollectAll", { Text = "Auto Collect All", Default = false })
acB_36:AddDropdown("CollectLogic", { Text = "Priority", Values = acB_48, Default = 1 })
acB_51 = acB_16:AddTab("Selected", "list-filter")
acB_51:AddToggle("AutoCollectSelected", { Text = "Auto Collect Selected", Default = false })
acB_51:AddDropdown("FarmZone", { Text = "Zone", Values = Go, Default = { Best = true }, Multi = true, AllowEmpty = true })
acB_51:AddDropdown("FarmEggRarity", { Text = "Egg Rarity", Values = G8, Default = {}, Multi = true, AllowEmpty = true })
acB_51:AddDropdown("FarmEggNames", {
    Text = "Egg Names",
    Values = Gq,
    Default = {},
    Multi = true,
    AllowEmpty = true,
    Searchable = true
})
acB_85 = GG.Main:AddLeftGroupbox("Farm", "egg")
acB_85:AddToggle("AutoPlaceEggs", { Text = "Auto Place Eggs", Default = false })
acB_85:AddToggle("AutoHatchEggs", { Text = "Auto Hatch Eggs", Default = false })
acB_85:AddDivider("Train")
acB_85:AddToggle("AutoGoTrain", { Text = "Auto Go Train", Default = false })
acB_85:AddToggle("Auto2x", { Text = "Auto 2x", Default = false })
acB_30 = GG.Main:AddLeftGroupbox("Fossils", "bone")
acB_30:AddToggle("AutoFossils", { Text = "Auto Dig & Clean Fossils", Default = false })
acB_30:AddDropdown("FossilZones", { Text = "Zone", Values = Go, Default = {}, Multi = true, AllowEmpty = true })
acB_30:AddDropdown("FossilSizes", { Text = "Fossil Size", Values = acB_70, Default = {}, Multi = true, AllowEmpty = true })
acB_30:AddToggle("PrioritizeFossils", { Text = "Prioritize Fossils Over Eggs", Default = true })
acB_30:AddDivider("Fossiled Egg")
acB_30:AddToggle("AutoBuyFossilEgg", { Text = "Auto Buy Fossiled Egg (" .. tostring(G0) .. " frags)", Default = false })
acB_59 = GG.Main:AddLeftGroupbox("Pets", "dog")
acB_59:AddToggle("AutoEquipBest", { Text = "Auto Equip Best Pets", Default = false })
acB_59:AddToggle("AutoUpgradePlot", { Text = "Auto Upgrade Plot", Default = false })
acB_59:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
FH = fns.fn704
Hg = fns.fn138
acB_88 = GG.Main:AddRightGroupbox("Status", "activity")
Label = acB_88:AddLabel(FH("Action", "Idle"), true)
Label2 = acB_88:AddLabel(Hg("Zone", "-", "Jump", "0"), true)
Label3 = acB_88:AddLabel(Hg("Cash", "$0", "Carry", "No"), true)
Label4 = acB_88:AddLabel(FH("Eggs", "bag 0 | placed 0 | ready 0 | world 0", HO, HT), true)
Label5 = acB_88:AddLabel(FH("Pets", "0"), true)
fns.Label6 = acB_88:AddLabel(Hg("Frags", "0", "Fossils", "0"), true)
task.spawn(fns.cashLoop)
local ShopGroup = GG.Main:AddRightGroupbox("Shop", "shopping-bag")
ShopGroup:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
ShopGroup:AddToggle("AutoBuyCoil", { Text = "Auto Buy Coil", Default = false })
local SellGroup = GG.Main:AddRightGroupbox("Sell", "tags")
SellGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
SellGroup:AddDropdown("SellRarity", {
    Text = "Sell Rarity",
    Values = G8,
    Default = { Common = true, Uncommon = true },
    Multi = true,
    AllowEmpty = true
})
SellGroup:AddDropdown("SellAnimals", {
    Text = "Sell Animals",
    Values = Gq,
    Default = {},
    Multi = true,
    AllowEmpty = true,
    Searchable = true
})
function fns.acB_54()
    local RU
    local RT
    RT = nil
    RU = nil
    local Label, Label2, Label3, RY, RZ
    local function R_()
        local Q7 = hookfunction ~= nil
        local Q8 = hookmetamethod ~= nil
        local Q9 = getrawmetatable ~= nil
        local Ra = setrawmetatable ~= nil
        local Rb = getgc ~= nil
        local Rc = getgenv ~= nil
        local Rd = getreg ~= nil
        local Re = getconnections ~= nil
        local Rf = firesignal ~= nil
        local Rg = getcallbackvalue ~= nil
        local Rh = setclipboard ~= nil
        local Ri = getcustomasset ~= nil
        local Rj = getnamecallmethod ~= nil
        local Rk = isexecutorclosure ~= nil
        local Rl = fireproximityprompt ~= nil
        local Rm = firetouchinterest ~= nil
        local Rn = WebSocket ~= nil
        local Ro = readfile ~= nil
        local Rp = writefile ~= nil
        local Rr = (request or http_request) ~= nil
        local Rt = (debug and debug.getupvalues) ~= nil
        local Rv = (debug and debug.setupvalue) ~= nil
        local Rw = 0
        local Rx = { Q7, Q8, Q9, Ra, Rb, Rc, Rd, Re, Rf, Rg, Rh, Ri, Rj, Rk, Rl, Rm, Rn, Ro, Rp, Rr, Rt, Rv }
        for i, v in ipairs(Rx) do
            if v then
                Rw += 1
            end
        end
        local Q7_1 = Rw / #Rx
        if Q7_1 >= 0.9 then
            return F0("Full Support", FW)
        elseif Q7_1 >= 0.6 then
            return F0("Half Support", FJ)
        else
            return F0("Low Support", H0)
        end
    end
    RT = "Unknown"
    pcall(function()
        local RJ_1
        local RI_1
        if identifyexecutor then
            RJ_1, RI_1 = identifyexecutor()
            local RK = RJ_1 ~= ""
            local RL = type(RJ_1) == "string" and RK
            if RL then
                local RK_1 = type(RI_1) == "string" and RI_1 ~= "" and RJ_1 .. " " .. RI_1
                RT = RK_1 or RJ_1
            end
        end
    end)
    local R0 = R_()
    RU = os.clock()
    RY = function()
        local RN = math.floor(os.clock() - RU)
        if RN < 60 then
            return RN .. "s"
        elseif RN < 3600 then
            return string.format("%dm %ds", RN // 60, RN % 60)
        else
            return string.format("%dh %dm", RN // 3600, RN % 3600 // 60)
        end
    end
    local R__1 = GG.Info:AddLeftGroupbox("User", "circle-user")
    R__1:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    R__1:AddLabel(FI("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, FW), true)
    R__1:AddLabel(FI("UserId", tostring(LocalPlayer.UserId), FR), true)
    R__1:AddLabel(FI("Executor", RT .. "  " .. R0, FW), true)
    R__1:AddDivider()
    Label3 = R__1:AddLabel(FI("Session", RY(), FJ), true)
    R__1:AddDivider()
    R__1:AddButton({
        Text = "Copy Username",
        Func = function()
            Gz(LocalPlayer.Name, "Copied username")
        end
    })
    R__1:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            Gz("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local R__2 = GG.Info:AddRightGroupbox("Session", "signal")
    R__2:AddDivider("Server")
    R__2:AddLabel(FI("Game", Gg, FR), true)
    Label2 = R__2:AddLabel(FI("Players", "0/0", FW), true)
    RZ = tostring(game.JobId)
    local R0_1 = #RZ > 18 and string.sub(RZ, 1, 18) .. "..."
    local R1 = R0_1
    local R5 = if R1 then 1 else 0
    local R3 = 1993 * R5 + 2477 * (1 - R5)
    local R4 = 892 * R5 + 3557 * (1 - R5)
    if not ((R3 * 911 + R4 * 289 + R3 * R4) % 16777213 == 3851167) then
        R1 = RZ
    end
    local R0_2 = R1
    R__2:AddLabel(FI("Job", R0_2, FF), true)
    Label = R__2:AddLabel(FI("Ping", "0 ms", FJ), true)
    R__2:AddDivider()
    R__2:AddButton({
        Text = "Rejoin Server",
        Func = function()
            Ha:Teleport(game.PlaceId, LocalPlayer)
        end
    })
    R__2:AddButton({
        Text = "Copy Job ID",
        Func = function()
            Gz(RZ, "Copied Job ID")
        end
    })
    task.spawn(function()
        local RQ_1
        local RP_1
        while true do
            task.wait(1)
            if H4.Unloaded then
                break
            end
            Label3:SetText(FI("Session", RY(), FJ))
            Label2:SetText(FI("Players", #FE:GetPlayers() .. "/" .. tostring(FE.MaxPlayers), FW))
            RP_1, RQ_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local RP_2 = RP_1 and RQ_1 .. " ms" or "n/a"
            Label:SetText(FI("Ping", RP_2, FJ))
        end
    end)
    local R__3 = GG.Info:AddRightGroupbox("Socials", "link")
    R__3:AddButton({ Text = "Discord", Func = Gf })
    R__3:AddButton({
        Text = "Rscripts",
        Func = function()
            Gz(F4, "Copied Rscripts profile to clipboard")
        end
    })
    R__3:AddButton({
        Text = "Website",
        Func = function()
            Gz(F1, "Copied website link")
        end
    })
end
function fns.acB_22()
    local MovementGroup = GG.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = GG.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local connection
    local function ni(nj)
        pcall(function()
            Hk:SetGameplayPausedNotificationEnabled(not nj)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = Hr:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not nj
            end
        end)
        if not nj then
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
    local function nw(nx)
        if not nx:IsA("ProximityPrompt") then
            return
        end
        nx.HoldDuration = 0
        nx.MaxActivationDistance = 50
        nx.RequiresLineOfSight = false
    end
    RunService.Stepped:Connect(function()
        if H4.Unloaded then
            return
        end
        if HE("NoClip") then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    local Sb_1 = descendant:IsA("BasePart") and descendant.CanCollide
                    if Sb_1 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    HM.JumpRequest:Connect(function()
        if H4.Unloaded then
            return
        end
        if HE("InfJump") then
            local Sm = acB_35()
            if Sm then
                Sm:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    RunService.RenderStepped:Connect(function(nO)
        if H4.Unloaded then
            return
        end
        if HE("WalkSpeedEnabled") then
            local So_1 = acB_35()
            local WalkSpeed = Options.WalkSpeed
            if So_1 and WalkSpeed then
                So_1.WalkSpeed = WalkSpeed.Value
            end
        end
        local Sx = if HE("Fly") then 1 else 0
        if Sx == 1 then
            local So_2 = HZ()
            local Sp_2 = acB_35()
            local FlySpeed = Options.FlySpeed
            local CurrentCamera = G4.CurrentCamera
            if So_2 and Sp_2 and FlySpeed and CurrentCamera then
                Sp_2.PlatformStand = true
                local Sp_3 = Vector3.zero
                if HM:IsKeyDown(Enum.KeyCode.W) then
                    Sp_3 += CurrentCamera.CFrame.LookVector
                end
                if HM:IsKeyDown(Enum.KeyCode.S) then
                    Sp_3 -= CurrentCamera.CFrame.LookVector
                end
                if HM:IsKeyDown(Enum.KeyCode.A) then
                    Sp_3 -= CurrentCamera.CFrame.RightVector
                end
                if HM:IsKeyDown(Enum.KeyCode.D) then
                    Sp_3 += CurrentCamera.CFrame.RightVector
                end
                if HM:IsKeyDown(Enum.KeyCode.Space) then
                    Sp_3 += Vector3.new(0, 1, 0)
                end
                if HM:IsKeyDown(Enum.KeyCode.LeftControl) then
                    Sp_3 -= Vector3.new(0, 1, 0)
                end
                So_2.AssemblyLinearVelocity = Vector3.zero
                if Sp_3.Magnitude > 0 then
                    So_2.CFrame = So_2.CFrame + Sp_3.Unit * FlySpeed.Value * nO
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local Sy = acB_35()
            if Sy then
                Sy.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local SA = acB_35()
            if SA then
                SA.WalkSpeed = 16
            end
        end
    end)
    Toggles.AntiGameplayPause:OnChanged(function()
        ni(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not H4.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                ni(true)
            end
        end
    end)
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in ipairs(G4:GetDescendants()) do
                pcall(nw, descendant)
            end
            connection = G4.DescendantAdded:Connect(function(op)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(nw, op)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    H4:OnUnload(function()
        ni(false)
        if connection then
            connection:Disconnect()
        end
    end)
end
acB_65 = function()
    local ServerHopGroup = GG.Player:AddRightGroupbox("Server Hop", "server")
    ServerHopGroup:AddToggle("ServerhopIfNoRarity", { Text = "Serverhop if No Rarity", Default = false })
    ServerHopGroup:AddDropdown("ServerhopRarities", { Text = "Rarity", Values = G8, Default = {}, Multi = true, AllowEmpty = true })
    ServerHopGroup:AddSlider("ServerhopWait", { Text = "Wait Before Hop", Default = 15, Min = 1, Max = 180, Rounding = 0 })
    ServerHopGroup:AddDropdown("ServerhopScope", { Text = "Check Zone", Values = Gy, Default = 1 })
    ServerHopGroup:AddSlider("ServerhopMinPlayers", { Text = "Min Players", Default = 1, Min = 0, Max = 30, Rounding = 0 })
    ServerHopGroup:AddDropdown("ServerhopMode", { Text = "Target Server", Values = Gs, Default = 1 })
    local oE = 0
    local oC = false
    local oD = 0
    local function oF(oG)
        local SM = Gu("ServerhopRarities")
        if not FP("ServerhopRarities") then
            return true
        end
        return SM[tostring(oG:GetAttribute("Rarity"))] == true
    end
    local function oM()
        local SX = GV("ServerhopScope", "Farm Zone")
        if type(SX) == "table" then
            SX = SX[1] or "Farm Zone"
        end
        local function SY_2(oR)
            if not oR then
                return false
            end
            for i, child in oR:GetChildren() do
                local SO = child:IsA("Model") and oF(child)
                if SO then
                    local CollectPrompt = child:FindFirstChild("CollectPrompt", true)
                    local SP = CollectPrompt and CollectPrompt:IsA("ProximityPrompt") and CollectPrompt.Enabled
                    if SP then
                        return true
                    end
                end
            end
            return false
        end
        if SX == "All Zones" then
            for i, child in FS:GetChildren() do
                if SY_2(child:FindFirstChild("SpawnedEggs")) then
                    return true
                end
            end
            return false
        end
        local SX_1 = GC()
        if not SX_1 then
            return false
        end
        local SZ = FN(SX_1.Name)
        local SX_2 = SZ and SZ:FindFirstChild("SpawnedEggs")
        return SY_2(SX_2)
    end
    local function o9()
        local nextPageCursor
        local S9 = {}
        local max = math.max
        local Ta_1, Ta_2
        local Tb = tonumber(GV("ServerhopMinPlayers", 1)) or 1
        local Tb_1
        local Tc = max(Tb, 0)
        for i = 1, 4 do
            local S6, S7
            S6 = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Asc&limit=100", game.PlaceId)
            if nextPageCursor then
                S6 ..= "&cursor=" .. nextPageCursor
            end
            Ta_1, S7 = pcall(function()
                return game:HttpGet(S6)
            end)
            if not Ta_1 then
                break
            else
                Ta_2, Tb_1 = pcall(function()
                    return Hw:JSONDecode(S7)
                end)
                local Td = Ta_2 and type(Tb_1) == "table" and type(Tb_1.data) == "table"
                if not Td then
                    break
                end
                for i, v in ipairs(Tb_1.data) do
                    local Ta_3 = type(v) == "table" and type(v.id) == "string" and v.id ~= game.JobId and type(v.playing) == "number" and type(v.maxPlayers) == "number" and v.playing < v.maxPlayers and v.playing >= Tc
                    if Ta_3 then
                        S9[#S9 + 1] = v
                    end
                end
                nextPageCursor = Tb_1.nextPageCursor
                local Ta_4 = type(nextPageCursor) ~= "string" or #S9 >= 40
                if Ta_4 then
                    break
                end
                task.wait(0.2)
            end
        end
        return S9
    end
    local function pu(pv)
        if #pv == 0 then
            return nil
        end
        local Tp = GV("ServerhopMode", "Random")
        if type(Tp) == "table" then
            Tp = Tp[1] or "Random"
        end
        if Tp == "Least Populated" then
            table.sort(pv, function(py, pz)
                return py.playing < pz.playing
            end)
            return pv[1]
        elseif Tp == "Most Populated" then
            table.sort(pv, function(pA, pB)
                return pA.playing > pB.playing
            end)
            return pv[1]
        else
            return pv[math.random(1, #pv)]
        end
    end
    local function pC(pD)
        local Tv
        local Tw = oC or H4.Unloaded or os.clock() < oD
        if Tw then
            return false
        end
        oC = true
        local Tw_1 = pD or "Server hopping"
        H4:Notify(tostring(Tw_1))
        Tv = pu(o9())
        if not Tv then
            oD = os.clock() + 20
            oC = false
            H4:Notify("No servers available to hop")
            return false
        end
        local Tw_2 = pcall(function()
            Ha:TeleportToPlaceInstance(game.PlaceId, Tv.id, LocalPlayer)
        end)
        if not Tw_2 then
            oD = os.clock() + 10
            oC = false
            H4:Notify("Server hop failed")
            return false
        end
        task.delay(15, function()
            oC = false
            oD = os.clock() + 5
        end)
        return true
    end
    ServerHopGroup:AddButton({
        Text = "Hop Now",
        Func = function()
            task.spawn(function()
                oD = 0
                pC("Manual hop")
            end)
        end
    })
    task.spawn(function()
        while not H4.Unloaded do
            task.wait(1)
            if not HE("ServerhopIfNoRarity") then
                oE = 0
                continue
            end
            local TB = oC or G2 or Ga()
            if TB then
                oE = 0
            elseif oM() then
                oE = 0
            else
                local TB_1 = os.clock()
                if oE == 0 then
                    oE = TB_1
                    continue
                end
                local TD = tonumber(GV("ServerhopWait", 15)) or 15
                local TE = math.max(TD, 1)
                if TB_1 - oE >= TE then
                    oE = 0
                    pcall(pC, "No matching rarity eggs")
                end
            end
        end
    end)
end
acB_74 = function()
    local UE
    local UH
    local UD
    local UI
    UD = nil
    UE = nil
    UH = nil
    UI = nil
    local UF, worker
    local VisualGroup = GG.Player:AddLeftGroupbox("Visual", "eye-off")
    VisualGroup:AddToggle("HideAvatar", { Text = "Hide Avatar", Default = false })
    VisualGroup:AddToggle("DeleteOtherPets", { Text = "Delete Other Pets", Default = false })
    VisualGroup:AddToggle("DeleteOwnPets", { Text = "Delete Own Pets", Default = false })
    UI = function(qi, qj)
        local TG = qi:IsA("BasePart") or qi:IsA("Decal") or qi:IsA("Texture")
        if TG then
            local TH = qj and 1 or 0
            qi.LocalTransparencyModifier = TH
        else
            local TG_2 = qi:IsA("BillboardGui") or qi:IsA("SurfaceGui")
            if TG_2 then
                qi.Enabled = not qj
            else
                local TG_3 = (qi:IsA("ParticleEmitter"))
                local TL = if TG_3 then 1 else 0
                local TJ = 2931 * TL + 2522 * (1 - TL)
                local TK = 1937 * TL + 339 * (1 - TL)
                if not ((TJ * 3894 + TK * 2380 + TJ * TK) % 16777213 == 4923508) then
                    TG_3 = qi:IsA("Trail")
                end
                local TL_1 = if TG_3 then 1 else 0
                local TJ_1 = 2733 * TL_1 + 500 * (1 - TL_1)
                local TK_1 = 1982 * TL_1 + 709 * (1 - TL_1)
                if not ((TJ_1 * 698 + TK_1 * 665 + TJ_1 * TK_1) % 16777213 == 8642470) then
                    TG_3 = qi:IsA("Smoke")
                end
                if not TG_3 then
                    TG_3 = qi:IsA("Fire")
                end
                if not TG_3 then
                    TG_3 = qi:IsA("Sparkles")
                end
                if TG_3 then
                    qi.Enabled = not qj
                end
            end
        end
    end
    UD = function(qo, qp)
        local TM = qo and qo:IsA("Model")
        if not TM then
            return
        end
        for i, descendant in qo:GetDescendants() do
            pcall(UI, descendant, qp)
        end
    end
    UE = function(qv)
        local Character = LocalPlayer.Character
        if not Character then
            return
        end
        UD(Character, qv)
    end
    UH = function()
        local Map = G4:FindFirstChild("Map")
        local TX = Map and Map:FindFirstChild("Plots")
        return TX
    end
    UF = function()
        local T2_1
        local TZ = UH()
        if not TZ then
            return
        end
        local T_ = HU()
        local T0 = HE("DeleteOwnPets")
        local T1 = HE("DeleteOtherPets")
        for i, child in TZ:GetChildren() do
            local PlacedAnimals = child:FindFirstChild("PlacedAnimals")
            if PlacedAnimals then
                if child == T_ then
                    T2_1 = T0
                else
                    T2_1 = T1
                end
                local T3 = T2_1
                for i, child in PlacedAnimals:GetChildren() do
                    if child:IsA("Model") then
                        UD(child, T3)
                    end
                end
            end
        end
    end
    worker = function()
        UE(HE("HideAvatar"))
        UF()
    end
    Toggles.HideAvatar:OnChanged(function()
        UE(HE("HideAvatar"))
    end)
    Toggles.DeleteOtherPets:OnChanged(worker)
    Toggles.DeleteOwnPets:OnChanged(worker)
    LocalPlayer.CharacterAdded:Connect(function(q3)
        task.wait(0.35)
        if H4.Unloaded then
            return
        end
        if HE("HideAvatar") then
            UD(q3, true)
        end
    end)
    local UJ_1 = UH()
    if UJ_1 then
        UJ_1.DescendantAdded:Connect(function()
            if H4.Unloaded then
                return
            end
            local Ui = (HE("DeleteOwnPets"))
            local Um = if Ui then 1 else 0
            local Uk = 3064 * Um + 3479 * (1 - Um)
            local Ul = 1622 * Um + 3542 * (1 - Um)
            if not ((Uk * 3554 + Ul * 3986 + Uk * Ul) % 16777213 == 5547343) then
                Ui = HE("DeleteOtherPets")
            end
            if not Ui then
                return
            end
            task.defer(worker)
        end)
    end
    task.spawn(function()
        while not H4.Unloaded do
            task.wait(0.5)
            local Un = HE("HideAvatar") or HE("DeleteOwnPets") or HE("DeleteOtherPets")
            if Un then
                worker()
            end
        end
    end)
    H4:OnUnload(function()
        UE(false)
        local Up = UH()
        if not Up then
            return
        end
        for i, child in Up:GetChildren() do
            local PlacedAnimals = child:FindFirstChild("PlacedAnimals")
            if PlacedAnimals then
                for i, child in PlacedAnimals:GetChildren() do
                    if child:IsA("Model") then
                        UD(child, false)
                    end
                end
            end
        end
    end)
end
acB_62 = function()
    local rr = {
        Common = Color3.fromRGB(156, 163, 175),
        Uncommon = Color3.fromRGB(34, 197, 94),
        Rare = Color3.fromRGB(59, 130, 246),
        Epic = Color3.fromRGB(168, 85, 247),
        Legendary = Color3.fromRGB(245, 158, 11),
        Mythic = Color3.fromRGB(239, 68, 68),
        Divine = Color3.fromRGB(236, 72, 153),
        Celestial = Color3.fromRGB(6, 182, 212),
        Eternal = Color3.fromRGB(234, 179, 8)
    }
    local rs = Color3.fromRGB(235, 220, 170)
    local rt = Color3.fromRGB(220, 220, 220)
    local EspGroup = GG.Player:AddRightGroupbox("ESP", "eye")
    EspGroup:AddToggle("EggEsp", { Text = "Egg ESP", Default = false })
    EspGroup:AddToggle("FossilEsp", { Text = "Fossil ESP", Default = false })
    EspGroup:AddToggle("EspShowDistance", { Text = "Show Distance", Default = true })
    EspGroup:AddDropdown("EspRarities", { Text = "Egg Rarity", Values = G8, Default = {}, Multi = true, AllowEmpty = true })
    EspGroup:AddDropdown("EspZones", { Text = "Zone", Values = Go, Default = {}, Multi = true, AllowEmpty = true })
    EspGroup:AddSlider("EspMaxDistance", { Text = "Max Distance", Default = 2000, Min = 100, Max = 6000, Rounding = 0, Suffix = " studs" })
    local rz = {}
    local ry
    local function rA()
        local UM_1
        local UL = ry and ry.Parent
        local UL_1
        if UL then
            return ry
        end
        UL_1, UM_1 = pcall(function()
            local screenGui = Instance.new("ScreenGui")
            screenGui.Name = "OuroborosJFAEsp"
            screenGui.ResetOnSpawn = false
            screenGui.IgnoreGuiInset = true
            screenGui.Parent = GF()
            return screenGui
        end)
        ry = UL_1 and UM_1 or nil
        return ry
    end
    local function rJ(rK)
        local UP
        UP = nil
        UP = rz[rK]
        if not UP then
            return
        end
        rz[rK] = nil
        pcall(function()
            UP.Gui:Destroy()
        end)
    end
    local function rO()
        for k in pairs(rz) do
            rJ(k)
        end
        if ry then
            pcall(function()
                ry:Destroy()
            end)
            ry = nil
        end
    end
    local function rU(rV, rW)
        local U1
        U1 = nil
        local U2 = rz[rV]
        local U2_1
        local U3 = U2 and U2.Gui.Parent
        local U3_1
        if U3 then
            if U2.Gui.Adornee ~= rW then
                U2.Gui.Adornee = rW
            end
            return U2
        end
        U1 = rA()
        if not U1 then
            return nil
        end
        U2_1, U3_1 = pcall(function()
            local billboardGui = Instance.new("BillboardGui")
            billboardGui.Name = "OuroborosEspTag"
            billboardGui.AlwaysOnTop = true
            billboardGui.ResetOnSpawn = false
            billboardGui.Size = UDim2.fromOffset(200, 34)
            billboardGui.StudsOffsetWorldSpace = Vector3.new(0, 3, 0)
            billboardGui.MaxDistance = math.huge
            billboardGui.Adornee = rW
            billboardGui.Parent = U1
            local textLabel = Instance.new("TextLabel")
            textLabel.Name = "Label"
            textLabel.BackgroundTransparency = 1
            textLabel.Size = UDim2.fromScale(1, 1)
            textLabel.Font = Enum.Font.BuilderSansBold
            textLabel.TextSize = 14
            textLabel.TextStrokeTransparency = 0.35
            textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
            textLabel.RichText = false
            textLabel.Parent = billboardGui
            return { Gui = billboardGui, Label = textLabel }
        end)
        if not U2_1 then
            return nil
        end
        rz[rV] = U3_1
        return U3_1
    end
    local function r7(r8)
        local U8 = Gu("EspZones")
        if not FP("EspZones") then
            return true
        end
        return U8[r8] == true
    end
    local function se(sf)
        local Va = Gu("EspRarities")
        if not FP("EspRarities") then
            return true
        end
        return Va[sf] == true
    end
    local function sj()
        local Vc = HZ()
        if not Vc then
            return
        end
        local Position = Vc.Position
        local Vc_1 = HE("EggEsp")
        local Ve = HE("FossilEsp")
        local Vf = HE("EspShowDistance")
        local Vg = tonumber(GV("EspMaxDistance", 2000)) or 2000
        local Vh = {}
        for i, child in FS:GetChildren() do
            if r7(child.Name) then
                if Vc_1 then
                    local SpawnedEggs = child:FindFirstChild("SpawnedEggs")
                    if SpawnedEggs then
                        for i, child in SpawnedEggs:GetChildren() do
                            local Vg_2 = (child:IsA("Model"))
                            if Vg_2 then
                                local Vj_1 = child:FindFirstChild("EggRoot") or child.PrimaryPart
                                Vg_2 = Vj_1
                            end
                            local Vj_2 = Vg_2 or nil
                            if Vj_2 then
                                local Vj_3 = child:GetAttribute("Rarity") or "?"
                                local Vk_1 = tostring(Vj_3)
                                local Magnitude = (Vj_2.Position - Position).Magnitude
                                local Vl_1 = se(Vk_1) and Magnitude <= Vg
                                if Vl_1 then
                                    local Vl_2 = rU(child, Vj_2)
                                    if Vl_2 then
                                        Vh[child] = true
                                        local Label2 = Vl_2.Label
                                        local Vm_1 = rr[Vk_1] or rt
                                        Label2.TextColor3 = Vm_1
                                        local Label = Vl_2.Label
                                        local Vm_2 = Vf and string.format("%s [%s]\n%dm", child.Name, Vk_1, math.floor(Magnitude))
                                        local Vj_5 = Vm_2 or string.format("%s [%s]", child.Name, Vk_1)
                                        Label.Text = Vj_5
                                    end
                                end
                            end
                        end
                    end
                end
                if Ve then
                    local Vg_6 = child:FindFirstChild(H1)
                    if Vg_6 then
                        for i, child in Vg_6:GetChildren() do
                            local Vg_7 = child:IsA("Model") and child.PrimaryPart
                            local Vg_8 = Vg_7 or nil
                            local Vj_7 = not Vg_8
                            if Vj_7 ~= false then
                                Vj_7 = child:IsA("Model")
                            end
                            if Vj_7 then
                                Vg_8 = child:FindFirstChildWhichIsA("BasePart")
                            end
                            if Vg_8 then
                                local Magnitude = (Vg_8.Position - Position).Magnitude
                                if Magnitude <= Vg then
                                    local Vk_2 = rU(child, Vg_8)
                                    if Vk_2 then
                                        Vh[child] = true
                                        Vk_2.Label.TextColor3 = rs
                                        local Vg_9 = child:GetAttribute("FossilSize") or "?"
                                        local Vl_3 = tostring(Vg_9)
                                        local Vg_10 = tonumber(child:GetAttribute("Fragments")) or 0
                                        local Label = Vk_2.Label
                                        local Vn = Vf and string.format("%s [%s] %d frag\n%dm", child.Name, Vl_3, Vg_10, math.floor(Magnitude))
                                        local Vj_9 = Vn or string.format("%s [%s] %d frag", child.Name, Vl_3, Vg_10)
                                        Label.Text = Vj_9
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        for k in pairs(rz) do
            if not Vh[k] or not k.Parent then
                rJ(k)
            end
        end
    end
    task.spawn(function()
        while not H4.Unloaded do
            local VM = HE("EggEsp") or HE("FossilEsp")
            if VM then
                pcall(sj)
                task.wait(0.3)
            else
                local VM_1 = next(rz) ~= nil or ry
                if VM_1 then
                    pcall(rO)
                end
                task.wait(0.5)
            end
        end
    end)
    H4:OnUnload(function()
        pcall(rO)
    end)
end
acB_77 = function()
    local Zx, Zy, Zz, ZA, ZB, ZC, ZD, ZE, ZF, ZG, ZH, ZI, ZJ, ZK, ZL, ZM, ZN, ZO, ZP, ZQ, ZR, ZS, ZT, ZU, ZV, ZW
    local ZY = syn and syn.request
    local Z1 = if ZY then 1 else 0
    local Z_ = 176 * Z1 + 1525 * (1 - Z1)
    local Z0 = 3165 * Z1 + 1509 * (1 - Z1)
    if not ((Z_ * 1105 + Z0 * 3374 + Z_ * Z0) % 16777213 == 11430230) then
        ZY = http and http.request
    end
    if not ZY then
        ZY = http_request
    end
    if not ZY then
        ZY = request
    end
    ZS = ZY
    ZJ = os.clock()
    ZD = os.clock()
    ZL = { [1] = 0, [2] = 0, [3] = 0, [4] = 0 }
    ZV = {}
    ZK = false
    Zy = 0
    ZE = {}
    ZF = function(ti, tj, tk)
        return { name = ti, value = tj, inline = tk ~= false }
    end
    ZA = function(tm)
        local VO = math.max(0, math.floor(tm))
        local VP = VO // 3600
        local VQ = VO % 3600 // 60
        local VR = VO % 60
        if VP > 0 then
            return string.format("%dh %dm", VP, VQ)
        elseif VQ > 0 then
            return string.format("%dm %ds", VQ, VR)
        else
            return string.format("%ds", VR)
        end
    end
    ZB = function()
        if HE("WebhookPingEveryone") then
            return "@everyone"
        end
        local VT = Options.WebhookPingId
        if VT then
            local VU_1 = Options.WebhookPingId.Value or ""
            VT = tostring(VU_1):gsub("%D", "")
        end
        local VU_2 = VT or ""
        if VU_2 ~= "" then
            return "<@" .. VU_2 .. ">"
        end
        return nil
    end
    Zx = function(tz)
        local VZ
        local V0_4
        local V_ = Options.WebhookUrl
        local V__3
        if V_ then
            local V0_1 = Options.WebhookUrl.Value or ""
            V_ = tostring(V0_1)
        end
        local V0_2 = V_
        local V5 = if V0_2 then 1 else 0
        local V3 = 1738 * V5 + 3917 * (1 - V5)
        local V4 = 3567 * V5 + 1861 * (1 - V5)
        if not ((V3 * 831 + V4 * 440 + V3 * V4) % 16777213 == 9213204) then
            V0_2 = ""
        end
        VZ = V0_2
        local V__1 = VZ == ""
        local V0_3 = type(ZS) ~= "function" or V__1
        if V0_3 then
            return false
        end
        local V__2 = not string.find(VZ, "discord.com/api/webhooks/", 1, true) and not string.find(VZ, "discordapp.com/api/webhooks/", 1, true)
        if V__2 then
            return false
        end
        V__3, V0_4 = pcall(function()
            return ZS({
                Url = VZ,
                Method = "POST",
                Headers = { ["Content-Type"] = "application/json" },
                Body = Hw:JSONEncode(tz)
            })
        end)
        if not V__3 then
            return false
        end
        local V__4 = V0_4
        if V__4 then
            V__4 = V0_4.StatusCode or V0_4.Status
        end
        local V0_5 = V__4
        local V__5 = V0_5 == nil
        if not V__5 then
            V__5 = V0_5 >= 200 and V0_5 < 300
        end
        return V__5
    end
    ZW = function(tV, tW)
        local We = if not HE("WebhookEnabled") then 1 else 0
        if We == 1 then
            return false
        end
        local V9 = tW and ZB()
        local Wa = V9 or nil
        return Zx({ username = "Ouroboros Hub", content = Wa, embeds = { tV } })
    end
    ZM = function(t1)
        local Wf = Gu("WebhookRarities")
        local Wg = Gu("WebhookEggs")
        local Wh = FP("WebhookRarities")
        local Wi = FP("WebhookEggs")
        local Wj = Wh and not Wf[tostring(t1:GetAttribute("Rarity"))]
        if Wj then
            return false
        end
        if Wi and not Wg[t1.Name] then
            return false
        end
        return true
    end
    ZT = function(t9)
        local Wl = t9:GetAttribute("Rarity") or "?"
        local Wm = tostring(Wl)
        local Wl_1 = t9:GetAttribute("AreaName") or "?"
        local Wn = tostring(Wl_1)
        local Wl_2 = tonumber(t9:GetAttribute("SizeMultiplier"))
        local Wo = tonumber(t9:GetAttribute("GrowthMultiplier"))
        local Wp = { string.format("**%s** `%s`", t9.Name, Wm), Wn }
        if Wl_2 then
            Wp[#Wp + 1] = string.format("x%.2f", Wl_2)
        end
        local Wl_3 = Wo and math.abs(Wo - 1) > 0.01
        if Wl_3 then
            Wp[#Wp + 1] = string.format("g%.2f", Wo)
        end
        local Name = t9.Name
        local Wo_1 = G1[Wm]
        local Wt = if Wo_1 then 1 else 0
        local Wr = 992 * Wt + 1014 * (1 - Wt)
        local Ws = 745 * Wt + 2013 * (1 - Wt)
        if not ((Wr * 2353 + Ws * 868 + Wr * Ws) % 16777213 == 3719876) then
            Wo_1 = 0
        end
        return { Name = Name, Rarity = Wm, Area = Wn, Rank = Wo_1, Text = table.concat(Wp, " · ") }
    end
    ZN = function(uj)
        local Wv_1
        local Wu_1
        Wu_1, Wv_1 = 0, 8141549
        for i, v in ipairs(uj) do
            if v.Rank > Wu_1 then
                Wu_1 = v.Rank
                Wv_1 = GR[v.Rarity] or Wv_1
            end
        end
        return Wv_1
    end
    ZC = function(ur, us)
        local WQ_1
        table.sort(ur, function(ut, uu)
            if ut.Rank == uu.Rank then
                return ut.Name < uu.Name
            end
            return ut.Rank > uu.Rank
        end)
        local WL = {}
        local WM = {}
        for i, v in ipairs(ur) do
            local WN_1 = WM[v.Rarity]
            if not WN_1 then
                WN_1 = {}
                WM[v.Rarity] = WN_1
                WL[#WL + 1] = v.Rarity
            end
            WN_1[#WN_1 + 1] = v.Name
        end
        table.sort(WL, function(uA, uB)
            return (G1[uA] or 0) > (G1[uB] or 0)
        end)
        local WN_2 = 0
        local WO = {}
        for i, v in ipairs(WL) do
            local WL_1 = #WO
            local WP = us or 12
            local WP_1
            if WL_1 >= WP then
                break
            end
            local WL_2 = WM[v]
            WQ_1, WP_1 = {}, {}
            for i, v in ipairs(WL_2) do
                if not WP_1[v] then
                    WP_1[v] = true
                    WQ_1[#WQ_1 + 1] = v
                end
            end
            WO[#WO + 1] = string.format("`%s` **x%d** · %s", v, #WL_2, table.concat(WQ_1, ", "))
            WN_2 += #WL_2
        end
        if WN_2 < #ur then
            WO[#WO + 1] = string.format("... +%d more", #ur - WN_2)
        end
        return WO, WN_2
    end
    ZR = function(uO)
        local W9 = {}
        for i, child in FS:GetChildren() do
            local SpawnedEggs = child:FindFirstChild("SpawnedEggs")
            if SpawnedEggs then
                for i, child in SpawnedEggs:GetChildren() do
                    local Xa_1 = (child:IsA("Model"))
                    if Xa_1 then
                        local Xb = not uO or ZM(child)
                        Xa_1 = Xb
                    end
                    if Xa_1 then
                        W9[#W9 + 1] = child
                    end
                end
            end
        end
        return W9
    end
    ZG = function(u0)
        local Xp = {}
        for i, v in ipairs(u0) do
            local Xq_1 = v:GetAttribute("Rarity") or "?"
            local Xr_1 = tostring(Xq_1)
            local Xq_2 = Xp[Xr_1] or 0
            Xp[Xr_1] = Xq_2 + 1
        end
        local Xq_3 = {}
        for i, v in ipairs(G8) do
            local Xr_2 = Xp[v]
            if Xr_2 and Xr_2 > 0 then
                Xq_3[#Xq_3 + 1] = string.format("%s %d", v, Xr_2)
            end
        end
        for k, v in pairs(Xp) do
            if not G1[k] then
                Xq_3[#Xq_3 + 1] = string.format("%s %d", k, v)
            end
        end
        local Xp_1 = #Xq_3 > 0 and table.concat(Xq_3, " · ")
        return Xp_1 or "none"
    end
    Zz = function()
        local XK = HU()
        local XL = XK and XK:FindFirstChild("PlacedEggs")
        local XM = XK
        if XM then
            XM = XK:FindFirstChild("PlacedAnimals")
        end
        local XK_1 = XM
        local XL_1 = ZR(true)
        local XM_1 = #acB_39()
        if XM_1 > ZL[4] then
            ZL[3] = ZL[3] + (XM_1 - ZL[4])
        end
        ZL[4] = XM_1
        local XP = LocalPlayer.leaderstats and LocalPlayer.leaderstats.Cash and LocalPlayer.leaderstats.Cash.Value or 0
        local XO_1 = tostring(XP)
        if string.sub(XO_1, 1, 1) ~= "$" then
            XO_1 = "$" .. XO_1
        end
        local XP_1 = G5()
        local XQ = XL and #XL:GetChildren()
        local XN_1 = XQ
        local XV = if XN_1 then 1 else 0
        local XT = 1231 * XV + 276 * (1 - XV)
        local XU = 1731 * XV + 2289 * (1 - XV)
        if not ((XT * 441 + XU * 3123 + XT * XU) % 16777213 == 8079645) then
            XN_1 = 0
        end
        local XQ_1 = XK_1 and #XK_1:GetChildren()
        local XK_2 = XQ_1 or 0
        local XQ_2 = Ga() and "Yes"
        local XR = XQ_2 or "No"
        return {
            Cash = XO_1,
            Jump = XP_1,
            Bag = XM_1,
            Placed = XN_1,
            Pets = XK_2,
            Carry = XR,
            Matching = XL_1,
            Zone = GC()
        }
    end
    ZP = function()
        local XW = Zz()
        local XX = {}
        for i, v in ipairs(XW.Matching) do
            XX[#XX + 1] = ZT(v)
        end
        local XY = select(1, ZC(XX, 10))
        local XX_1 = ZF("Cash", "`" .. XW.Cash .. "`")
        local XZ = ZF("Jump", "`" .. tostring(XW.Jump) .. "`")
        local X_ = ZF("Session", "`" .. ZA(os.clock() - ZJ) .. "`")
        local X0 = ZF("Bag / Placed", string.format("`%d` / `%d`", XW.Bag, XW.Placed))
        local X1 = ZF("Pets / Carry", string.format("`%d` / `%s`", XW.Pets, XW.Carry))
        local X3 = XW.Zone and XW.Zone.Name or "-"
        local X2_1 = {
            XX_1,
            XZ,
            X_,
            X0,
            X1,
            ZF("Farm Zone", "`" .. X3 .. "`"),
            ZF("Session Stats", string.format("Resets **%d** · Logged **%d** · Bag gained **%d**", ZL[1], ZL[2], ZL[3]), false),
            ZF("World Matches", ZG(XW.Matching), false)
        }
        if #XY > 0 then
            X2_1[#X2_1 + 1] = ZF(string.format("Top Matches (%d)", #XW.Matching), table.concat(XY, "\n"), false)
        end
        return {
            author = { name = LocalPlayer.DisplayName .. " · " .. Gg },
            title = "Progress",
            color = 8141549,
            fields = X2_1,
            footer = { text = "Ouroboros Hub" },
            timestamp = DateTime.now():ToIsoDate()
        }
    end
    ZO = function(vD)
        if #vD == 0 then
            return false
        end
        ZL[1] = ZL[1] + 1
        ZL[2] = ZL[2] + #vD
        local Ye = select(1, ZC(vD, 14))
        local Yf = {}
        for i, v in ipairs(vD) do
            local Area = v.Area
            local Yh_1 = Yf[v.Area] or 0
            Yf[Area] = Yh_1 + 1
        end
        local Yg_2 = {}
        for k, v in pairs(Yf) do
            Yg_2[#Yg_2 + 1] = string.format("%s %d", k, v)
        end
        table.sort(Yg_2)
        local Yf_1 = Zz()
        local Yh_2 = false
        for i, v in ipairs(vD) do
            if (G1[v.Rarity] or 0) >= (G1.Legendary or 5) then
                Yh_2 = true
                break
            end
        end
        local Yi_2 = { name = LocalPlayer.DisplayName .. " · " .. Gg }
        local Yj_2 = string.format("Egg Reset · %d matched", #vD)
        local Yk = ZN(vD)
        local Yl = table.concat(Ye, "\n")
        local Ym = #Yg_2 > 0 and table.concat(Yg_2, " · ")
        local Yg_3 = Ym or "-"
        return ZW({
            author = Yi_2,
            title = Yj_2,
            color = Yk,
            description = Yl,
            fields = {
                ZF("Areas", Yg_3, false),
                ZF("Cash", "`" .. Yf_1.Cash .. "`"),
                ZF("Jump", "`" .. tostring(Yf_1.Jump) .. "`"),
                ZF("Session", "`" .. ZA(os.clock() - ZJ) .. "`")
            },
            footer = { text = "Ouroboros Hub · egg reset" },
            timestamp = DateTime.now():ToIsoDate()
        }, Yh_2)
    end
    ZQ = function()
        if #ZE == 0 then
            return
        end
        local YE = ZE
        ZE = {}
        local YF = HE("WebhookOnEggReset") and HE("WebhookEnabled")
        if YF then
            ZO(YE)
        else
            ZL[2] = ZL[2] + #YE
        end
    end
    ZI = function(vV)
        local YQ
        local YR = not HE("WebhookEnabled") or not ZM(vV)
        if YR then
            return
        end
        ZE[#ZE + 1] = ZT(vV)
        Zy += 1
        YQ = Zy
        task.delay(1.75, function()
            local YK = YQ ~= Zy
            local YL = H4.Unloaded
            local YP = if YL then 1 else 0
            local YN = 2958 * YP + 2815 * (1 - YP)
            local YO = 2957 * YP + 2248 * (1 - YP)
            if not ((YN * 2991 + YO * 2594 + YN * YO) % 16777213 == 8487429) then
                YL = YK
            end
            if YL then
                return
            end
            ZQ()
        end)
    end
    ZH = function()
        table.clear(ZV)
        for i, v in ipairs(ZR(false)) do
            ZV[v] = true
        end
        ZL[4] = #acB_39()
        ZK = true
    end
    ZU = function()
        if not ZK then
            ZH()
            return
        end
        local Y_ = {}
        for i, v in ipairs(ZR(false)) do
            Y_[v] = true
            if ZV[v] == nil then
                ZV[v] = true
                ZI(v)
            end
        end
        for k in pairs(ZV) do
            if not Y_[k] then
                ZV[k] = nil
            end
        end
        local Y__1 = #acB_39()
        if Y__1 > ZL[4] then
            ZL[3] = ZL[3] + (Y__1 - ZL[4])
        end
        ZL[4] = Y__1
    end
    local WebhookGroup = GG.Webhook:AddLeftGroupbox("Webhook", "webhook")
    WebhookGroup:AddToggle("WebhookEnabled", { Text = "Enable Webhook", Default = false })
    WebhookGroup:AddInput("WebhookUrl", {
        Text = "Webhook URL",
        Default = "",
        Finished = true,
        AllowEmpty = true,
        Placeholder = "https://discord.com/api/webhooks/..."
    })
    WebhookGroup:AddInput("WebhookPingId", {
        Text = "Ping User ID",
        Default = "",
        Finished = true,
        AllowEmpty = true,
        Placeholder = "Discord user id"
    })
    WebhookGroup:AddToggle("WebhookPingEveryone", { Text = "Ping @everyone", Default = false })
    WebhookGroup:AddToggle("WebhookOnEggReset", { Text = "Send on Egg Reset", Default = true })
    WebhookGroup:AddSlider("WebhookInterval", { Text = "Send Every", Default = 15, Min = 1, Max = 180, Rounding = 0, Suffix = " min" })
    WebhookGroup:AddButton({
        Text = "Send Summary Now",
        Func = function()
            task.spawn(function()
                if not HE("WebhookEnabled") then
                    H4:Notify("Enable webhook first")
                    return
                end
                local Zb = ZW(ZP(), true)
                if Zb then
                    ZD = os.clock()
                end
                local Zb_1 = Zb and "Summary sent" or "Webhook send failed"
                H4:Notify(Zb_1)
            end)
        end
    })
    WebhookGroup:AddButton({
        Text = "Test Webhook",
        Func = function()
            local Ze = Options.WebhookUrl
            if Ze then
                local Zf_1 = Options.WebhookUrl.Value or ""
                Ze = tostring(Zf_1)
            end
            if (Ze or "") == "" then
                H4:Notify("Set a webhook URL first")
                return
            end
            local Ze_2 = Zx({
                username = "Ouroboros Hub",
                content = ZB(),
                embeds = {
                    {
                        title = "Webhook Connected",
                        description = "Egg reset + progress webhooks are ready.",
                        color = 8141549,
                        fields = { ZF("Player", LocalPlayer.Name), ZF("Game", Gg) },
                        footer = { text = "Ouroboros Hub" },
                        timestamp = DateTime.now():ToIsoDate()
                    }
                }
            })
            local Ze_3 = Ze_2 and "Webhook test sent" or "Webhook test failed"
            H4:Notify(Ze_3)
        end
    })
    local FiltersGroup = GG.Webhook:AddRightGroupbox("Filters", "list-filter")
    FiltersGroup:AddDropdown("WebhookRarities", { Text = "Log Rarities", Values = G8, Default = {}, Multi = true, AllowEmpty = true })
    FiltersGroup:AddDropdown("WebhookEggs", {
        Text = "Log Specific Eggs",
        Values = Gq,
        Default = {},
        Multi = true,
        AllowEmpty = true,
        Searchable = true
    })
    for i, child in FS:GetChildren() do
        local SpawnedEggs = child:FindFirstChild("SpawnedEggs")
        if SpawnedEggs then
            SpawnedEggs.ChildAdded:Connect(function(wW)
                local Zm = H4.Unloaded
                local Zq = if Zm then 1 else 0
                local Zo = 1482 * Zq + 3344 * (1 - Zq)
                local Zp = 2341 * Zq + 2152 * (1 - Zq)
                if not ((Zo * 421 + Zp * 2086 + Zo * Zp) % 16777213 == 8976610) then
                    Zm = not wW:IsA("Model")
                end
                if Zm then
                    return
                end
                task.defer(function()
                    if not ZK or ZV[wW] then
                        return
                    end
                    ZV[wW] = true
                    ZI(wW)
                end)
            end)
        end
    end
    task.spawn(function()
        while not H4.Unloaded do
            if HE("WebhookEnabled") then
                pcall(ZU)
                local max = math.max
                local Zv = tonumber(GV("WebhookInterval", 15)) or 15
                local Zu_1 = max(Zv, 1) * 60
                if os.clock() - ZD >= Zu_1 then
                    ZD = os.clock()
                    pcall(function()
                        ZW(ZP(), false)
                    end)
                end
            end
            task.wait(1)
        end
    end)
end
fns.acB_54()
fns.acB_22()
acB_65()
acB_74()
acB_62()
acB_77()
task.spawn(fns.worker2)
task.spawn(fns.worker3)
task.spawn(fns.worker4)
LocalPlayer:GetAttributeChangedSignal("SquatBonusAvailable"):Connect(fns.fn691)
task.spawn(fns.worker5)
HP = function()
    local aaU
    local aaS
    local aaP
    aaP = nil
    aaS = nil
    aaU = nil
    local aaO, aaQ, aaR, connection
    aaQ = { ParticleEmitter = true, Trail = true, Smoke = true, Fire = true, Sparkles = true }
    connection = nil
    aaO = nil
    aaR = function(xU, xV)
        pcall(function()
            xU.Enabled = xV
        end)
    end
    aaP = function()
        local QualityLevel
        QualityLevel = nil
        if aaO then
            return
        end
        local Terrain = G4:FindFirstChildOfClass("Terrain")
        QualityLevel = nil
        pcall(function()
            QualityLevel = settings().Rendering.QualityLevel
        end)
        aaO = {
            QualityLevel = QualityLevel,
            GlobalShadows = GY.GlobalShadows,
            FogEnd = GY.FogEnd,
            Terrain = Terrain,
            WaterWaveSize = Terrain and Terrain.WaterWaveSize,
            WaterReflectance = Terrain and Terrain.WaterReflectance,
            Effects = {}
        }
        pcall(function()
            settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
        end)
        GY.GlobalShadows = false
        GY.FogEnd = 1000000
        if Terrain then
            Terrain.WaterWaveSize = 0
            Terrain.WaterReflectance = 0
        end
        for i, descendant in G4:GetDescendants() do
            if aaQ[descendant.ClassName] and descendant.Enabled then
                aaO.Effects[#aaO.Effects + 1] = descendant
                aaR(descendant, false)
            end
        end
        connection = G4.DescendantAdded:Connect(function(ye)
            local aaj = aaQ[ye.ClassName] and HE("BoostFPS")
            if aaj then
                aaR(ye, false)
            end
        end)
    end
    aaS = function()
        if connection then
            connection:Disconnect()
            connection = nil
        end
        local aaE = aaO
        if not aaE then
            return
        end
        aaO = nil
        if aaE.QualityLevel then
            pcall(function()
                settings().Rendering.QualityLevel = aaE.QualityLevel
            end)
        end
        GY.GlobalShadows = aaE.GlobalShadows
        GY.FogEnd = aaE.FogEnd
        if aaE.Terrain and aaE.Terrain.Parent then
            aaE.Terrain.WaterWaveSize = aaE.WaterWaveSize
            aaE.Terrain.WaterReflectance = aaE.WaterReflectance
        end
        for k, v in aaE.Effects do
            aaR(v, true)
        end
    end
    aaU = function(yw)
        if yw then
            aaP()
        else
            aaS()
        end
    end
    Toggles.BoostFPS:OnChanged(function()
        aaU(HE("BoostFPS"))
    end)
    if HE("BoostFPS") then
        aaU(true)
    end
    H4:OnUnload(function()
        aaU(false)
    end)
end
HC = function()
    local yF = false
    local function yG()
        local aaW = pcall(function()
            Ha:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
        end)
        if not aaW then
            pcall(function()
                Ha:Teleport(game.PlaceId, LocalPlayer)
            end)
        end
    end
    local function yQ()
        local aaY = yF or H4.Unloaded or not HE("AutoReconnect")
        if aaY then
            return
        end
        yF = true
        task.delay(2, yG)
    end
    task.spawn(function()
        while not H4.Unloaded do
            task.wait(1)
            if not HE("AutoReconnect") then
                continue
            end
            local RobloxPromptGui = Hr:FindFirstChild("RobloxPromptGui")
            local aa0 = RobloxPromptGui and RobloxPromptGui:FindFirstChild("promptOverlay")
            if not aa0 then
                continue
            end
            for i, child in aa0:GetChildren() do
                local aa__2 = child.Name:find("ErrorPrompt") and child.Visible
                if aa__2 then
                    yQ()
                    break
                end
            end
        end
    end)
end
local G_ = "https://raw.githubusercontent.com/joustingmatch/Ouroboros/refs/heads/main/games/e1.luau"
GP = function()
    local abi, abj, abk
    local abl = queue_on_teleport
    if not abl then
        abl = syn and syn.queue_on_teleport
    end
    if not abl then
        abl = fluxus and fluxus.queue_on_teleport
    end
    if not abl then
        abl = queueonteleport
    end
    abk = false
    abi = abl
    abj = function()
        if type(abi) ~= "function" then
            return false
        elseif abk then
            return true
        else
            abk = pcall(abi, 'if not game:IsLoaded() then game.Loaded:Wait() end local env = (getgenv and getgenv()) or _G if env.OuroborosAutoExecuted == game.JobId then return end env.OuroborosAutoExecuted = game.JobId task.wait(3) loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/Ouroboros/refs/heads/main/games/e1.luau"))()')
            return abk
        end
    end
    Toggles.AutoExecute:OnChanged(function()
        local abf = if not HE("AutoExecute") then 1 else 0
        if abf == 1 then
            return
        end
        if not abj() then
            H4:Notify("queue_on_teleport is not supported by your executor")
        end
    end)
    LocalPlayer.OnTeleport:Connect(function(zr)
        if zr ~= Enum.TeleportState.Started then
            return
        end
        local abg = H4.Unloaded or not HE("AutoExecute")
        if abg then
            return
        end
        abk = false
        abj()
    end)
    if HE("AutoExecute") then
        abj()
    end
end
if (not acB_51 and not acB_77 or acB_51 and acB_77 or (Label2 or Label2) and (Label2 or not acB_77)) and ((not acB_51 or acB_77) and (not Label5 and false) and (false or not acB_77 or (not acB_51 or acB_51))) and ((not Label2 or false) and (not acB_51 and Label2) or Label2 and acB_77 and (Label5 or acB_77) or (acB_51 or not Label5 or acB_77 and G_) and ((acB_51 or acB_77) and (false and not acB_51))) or not ((not acB_51 and not acB_77 or acB_51 and acB_77 or (Label2 or Label2) and (Label2 or not acB_77)) and ((not acB_51 or acB_77) and (not Label5 and false) and (false or not acB_77 or (not acB_51 or acB_51))) and ((not Label2 or false) and (not acB_51 and Label2) or Label2 and acB_77 and (Label5 or acB_77) or (acB_51 or not Label5 or acB_77 and G_) and ((acB_51 or acB_77) and (false and not acB_51)))) then
    acB_80 = function()
        local connection
        local MenuGroup = GG.Settings:AddLeftGroupbox("Menu")
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        H4.ToggleKeybind = Options.MenuKeybind
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect", Default = false })
        MenuGroup:AddToggle("BoostFPS", { Text = "Boost FPS", Default = false })
        MenuGroup:AddToggle("AutoExecute", { Text = "Auto Execute", Default = false })
        HP()
        HC()
        GP()
        local zF = 0
        local zG = tick()
        local Label
        local function zI()
            local CurrentCamera = G4.CurrentCamera
            if not CurrentCamera then
                return
            end
            HG:CaptureController()
            HG:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            zF += 1
            zG = tick()
            if Label then
                pcall(function()
                    Label:SetText("AFK triggers: " .. zF)
                end)
            end
        end
        connection = LocalPlayer.Idled:Connect(function()
            if HE("AntiAfk") then
                pcall(zI)
            end
        end)
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        MenuGroup:AddButton({
            Text = "Unload UI",
            Func = function()
                H4:Unload()
            end
        })
        task.spawn(function()
            while not H4.Unloaded do
                task.wait(2)
                local abr = HE("AntiAfk") and tick() - zG >= 60
                if abr then
                    pcall(zI)
                end
            end
        end)
        H4:OnUnload(function()
            if connection then
                connection:Disconnect()
            end
            if getgenv then
                getgenv().__OuroborosJumpForAnimalsLib = nil
            end
        end)
        HX:SetLibrary(H4)
        HX:SetFolder("OuroborosHub")
        HX:SaveDefault("Evil Hello Kitty")
        HX:ApplyToTab(GG.Settings)
        HX:LoadDefault()
        HR:SetLibrary(H4)
        HR:IgnoreThemeSettings()
        HR:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        HR:SetFolder("OuroborosHub/JumpForAnimals")
        local z6 = HR:BuildConfigSection(GG.Settings)
        local function z7(z8, z9)
            local abv_2 = (z8 == "Toggle" and Toggles or Options)[z9]
            local abu_5 = type(abv_2) == "table" and abv_2.Type == z8
            return abu_5 and abv_2 or nil
        end
        local function Ag(Ah, Ai)
            local Type = Ai.Type
            if Type == "Toggle" then
                return { idx = Ah, type = "Toggle", value = Ai.Value == true }
            elseif Type == "Slider" then
                return { idx = Ah, type = "Slider", value = tostring(Ai.Value) }
            elseif Type == "Dropdown" then
                return { idx = Ah, type = "Dropdown", multi = Ai.Multi == true, value = Ai.Value }
            elseif Type == "Input" then
                local abC = Ai.Value or ""
                return { idx = Ah, type = "Input", text = tostring(abC) }
            elseif Type == "ColorPicker" then
                return { idx = Ah, type = "ColorPicker", value = Ai.Value:ToHex(), transparency = Ai.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = Ah,
                    type = "KeyPicker",
                    mode = Ai.Mode,
                    key = Ai.Value,
                    modifiers = Ai.Modifiers,
                    toggled = Ai.Toggled
                }
            else
                return nil
            end
        end
        local function Ak()
            local abF = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local abG = type(v) == "table" and type(v.Type) == "string" and not HR.Ignore[k]
                    if abG then
                        local abG_2 = Ag(k, v)
                        if abG_2 then
                            abF[#abF + 1] = abG_2
                        end
                    end
                end
            end
            table.sort(abF, function(Au, Av)
                if Au.type ~= Av.type then
                    return Au.type < Av.type
                end
                return Au.idx < Av.idx
            end)
            return { objects = abF }
        end
        local function Aw(Ax)
            local ab1
            ab1 = nil
            local ab2 = type(Ax) ~= "table" or type(Ax.idx) ~= "string" or type(Ax.type) ~= "string" or HR.Ignore[Ax.idx]
            if ab2 then
                return false
            end
            ab1 = z7(Ax.type, Ax.idx)
            if not ab1 then
                return false
            end
            local ab2_2 = pcall(function()
                if Ax.type == "Input" then
                    if type(Ax.text) ~= "string" then
                        return
                    end
                    ab1:SetValue(Ax.text)
                elseif Ax.type == "ColorPicker" then
                    ab1:SetValueRGB(Color3.fromHex(Ax.value), Ax.transparency)
                elseif Ax.type == "KeyPicker" then
                    ab1:SetValue({ Ax.key, Ax.mode, Ax.modifiers })
                    if Ax.mode == "Toggle" and Ax.toggled ~= nil then
                        ab1.Toggled = Ax.toggled
                        ab1:Update()
                    end
                else
                    ab1:SetValue(Ax.value)
                end
            end)
            return ab2_2
        end
        z6:AddDivider()
        z6:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        z6:AddButton({
            Text = "Export Config to Clipboard",
            Func = function()
                local ab5_2
                local ab4_4
                ab4_4, ab5_2 = pcall(Hw.JSONEncode, Hw, Ak())
                if not ab4_4 then
                    H4:Notify("Failed to encode the config")
                    return
                end
                local ab4_5 = setclipboard or toclipboard
                local ab4_6 = type(ab4_5) ~= "function" or not pcall(ab4_5, ab5_2)
                if ab4_6 then
                    H4:Notify("Your executor does not support copying to the clipboard")
                    return
                end
                H4:Notify("Config copied to clipboard", 6)
            end
        })
        z6:AddButton({
            Text = "Import Config from Clipboard Text",
            Func = function()
                local aca_3
                local ab8 = Options.SaveManager_ImportSource.Value
                local ab8_3
                local acf = if ab8 then 1 else 0
                local acd = 1117 * acf + 1592 * (1 - acf)
                local ace = 165 * acf + 3732 * (1 - acf)
                if not ((acd * 3460 + ace * 1900 + acd * ace) % 16777213 == 4362625) then
                    ab8 = ""
                end
                local ab9 = tostring(ab8):match("^%s*(.-)%s*$")
                if ab9 == "" then
                    H4:Notify("Paste an exported config into the box first")
                    return
                end
                ab8_3, aca_3 = pcall(Hw.JSONDecode, Hw, ab9)
                local ab9_3 = not ab8_3 or type(aca_3) ~= "table" or type(aca_3.objects) ~= "table"
                if ab9_3 then
                    H4:Notify("That is not a valid exported config")
                    return
                end
                local ab8_4 = 0
                for i, v in ipairs(aca_3.objects) do
                    if Aw(v) then
                        ab8_4 += 1
                    end
                end
                if ab8_4 == 0 then
                    H4:Notify("No settings in that config matched this script")
                    return
                end
                Options.SaveManager_ImportSource:SetValue("")
                local aca_4 = ab8_4 == 1 and "" or "s"
                H4:Notify(("Imported %d setting%s"):format(ab8_4, aca_4), 6)
            end
        })
        HR:LoadAutoloadConfig()
    end
else
    Hg = function()
        local connection
        local MenuGroup = GG.Settings:AddLeftGroupbox("Menu")
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        H4.ToggleKeybind = Options.MenuKeybind
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect", Default = false })
        MenuGroup:AddToggle("BoostFPS", { Text = "Boost FPS", Default = false })
        MenuGroup:AddToggle("AutoExecute", { Text = "Auto Execute", Default = false })
        HP()
        HC()
        GP()
        local zF = 0
        local zG = tick()
        local Label
        local function zI()
            local CurrentCamera = G4.CurrentCamera
            if not CurrentCamera then
                return
            end
            HG:CaptureController()
            HG:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            zF += 1
            zG = tick()
            if Label then
                pcall(function()
                    Label:SetText("AFK triggers: " .. zF)
                end)
            end
        end
        connection = LocalPlayer.Idled:Connect(function()
            if HE("AntiAfk") then
                pcall(zI)
            end
        end)
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        MenuGroup:AddButton({
            Text = "Unload UI",
            Func = function()
                H4:Unload()
            end
        })
        task.spawn(function()
            while not H4.Unloaded do
                task.wait(2)
                local abr = HE("AntiAfk") and tick() - zG >= 60
                if abr then
                    pcall(zI)
                end
            end
        end)
        H4:OnUnload(function()
            if connection then
                connection:Disconnect()
            end
            if getgenv then
                getgenv().__OuroborosJumpForAnimalsLib = nil
            end
        end)
        HX:SetLibrary(H4)
        HX:SetFolder("OuroborosHub")
        HX:SaveDefault("Evil Hello Kitty")
        HX:ApplyToTab(GG.Settings)
        HX:LoadDefault()
        HR:SetLibrary(H4)
        HR:IgnoreThemeSettings()
        HR:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        HR:SetFolder("OuroborosHub/JumpForAnimals")
        local z6 = HR:BuildConfigSection(GG.Settings)
        local function z7(z8, z9)
            local abv_1 = (z8 == "Toggle" and Toggles or Options)[z9]
            local abu_2 = type(abv_1) == "table" and abv_1.Type == z8
            return abu_2 and abv_1 or nil
        end
        local function Ag(Ah, Ai)
            local Type = Ai.Type
            if Type == "Toggle" then
                return { idx = Ah, type = "Toggle", value = Ai.Value == true }
            elseif Type == "Slider" then
                return { idx = Ah, type = "Slider", value = tostring(Ai.Value) }
            elseif Type == "Dropdown" then
                return { idx = Ah, type = "Dropdown", multi = Ai.Multi == true, value = Ai.Value }
            elseif Type == "Input" then
                local abC = Ai.Value or ""
                return { idx = Ah, type = "Input", text = tostring(abC) }
            elseif Type == "ColorPicker" then
                return { idx = Ah, type = "ColorPicker", value = Ai.Value:ToHex(), transparency = Ai.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = Ah,
                    type = "KeyPicker",
                    mode = Ai.Mode,
                    key = Ai.Value,
                    modifiers = Ai.Modifiers,
                    toggled = Ai.Toggled
                }
            else
                return nil
            end
        end
        local function Ak()
            local abF = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local abG = type(v) == "table" and type(v.Type) == "string" and not HR.Ignore[k]
                    if abG then
                        local abG_1 = Ag(k, v)
                        if abG_1 then
                            abF[#abF + 1] = abG_1
                        end
                    end
                end
            end
            table.sort(abF, function(Au, Av)
                if Au.type ~= Av.type then
                    return Au.type < Av.type
                end
                return Au.idx < Av.idx
            end)
            return { objects = abF }
        end
        local function Aw(Ax)
            local ab1
            ab1 = nil
            local ab2 = type(Ax) ~= "table" or type(Ax.idx) ~= "string" or type(Ax.type) ~= "string" or HR.Ignore[Ax.idx]
            if ab2 then
                return false
            end
            ab1 = z7(Ax.type, Ax.idx)
            if not ab1 then
                return false
            end
            local ab2_1 = pcall(function()
                if Ax.type == "Input" then
                    if type(Ax.text) ~= "string" then
                        return
                    end
                    ab1:SetValue(Ax.text)
                elseif Ax.type == "ColorPicker" then
                    ab1:SetValueRGB(Color3.fromHex(Ax.value), Ax.transparency)
                elseif Ax.type == "KeyPicker" then
                    ab1:SetValue({ Ax.key, Ax.mode, Ax.modifiers })
                    if Ax.mode == "Toggle" and Ax.toggled ~= nil then
                        ab1.Toggled = Ax.toggled
                        ab1:Update()
                    end
                else
                    ab1:SetValue(Ax.value)
                end
            end)
            return ab2_1
        end
        z6:AddDivider()
        z6:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        z6:AddButton({
            Text = "Export Config to Clipboard",
            Func = function()
                local ab5_1
                local ab4_1
                ab4_1, ab5_1 = pcall(Hw.JSONEncode, Hw, Ak())
                if not ab4_1 then
                    H4:Notify("Failed to encode the config")
                    return
                end
                local ab4_2 = setclipboard or toclipboard
                local ab4_3 = type(ab4_2) ~= "function" or not pcall(ab4_2, ab5_1)
                if ab4_3 then
                    H4:Notify("Your executor does not support copying to the clipboard")
                    return
                end
                H4:Notify("Config copied to clipboard", 6)
            end
        })
        z6:AddButton({
            Text = "Import Config from Clipboard Text",
            Func = function()
                local aca_1
                local ab8 = Options.SaveManager_ImportSource.Value
                local ab8_1
                local acf = if ab8 then 1 else 0
                local acd = 1117 * acf + 1592 * (1 - acf)
                local ace = 165 * acf + 3732 * (1 - acf)
                if not ((acd * 3460 + ace * 1900 + acd * ace) % 16777213 == 4362625) then
                    ab8 = ""
                end
                local ab9 = tostring(ab8):match("^%s*(.-)%s*$")
                if ab9 == "" then
                    H4:Notify("Paste an exported config into the box first")
                    return
                end
                ab8_1, aca_1 = pcall(Hw.JSONDecode, Hw, ab9)
                local ab9_1 = not ab8_1 or type(aca_1) ~= "table" or type(aca_1.objects) ~= "table"
                if ab9_1 then
                    H4:Notify("That is not a valid exported config")
                    return
                end
                local ab8_2 = 0
                for i, v in ipairs(aca_1.objects) do
                    if Aw(v) then
                        ab8_2 += 1
                    end
                end
                if ab8_2 == 0 then
                    H4:Notify("No settings in that config matched this script")
                    return
                end
                Options.SaveManager_ImportSource:SetValue("")
                local aca_2 = ab8_2 == 1 and "" or "s"
                H4:Notify(("Imported %d setting%s"):format(ab8_2, aca_2), 6)
            end
        })
        HR:LoadAutoloadConfig()
    end
end
acB_80()
