local fns = {}
local TV_3, TV_5, TV_6, TV_9, CoreGui, TV_14, TV_17
TV_3 = nil
TV_5 = nil
TV_6 = nil
TV_9 = nil
CoreGui = nil
TV_14 = nil
TV_17 = nil
local B_
local HttpService
local Co
local DN
local CN
local BN
local Db
local Cb
local DA
local CA
local CZ
local BZ
local Dn
local DM
local Da
local Ca
local Dz
local CY
local BY
local Dm
local Cm
local DL
local CL
local BL
local C9
local B9
local Cy
local CX
local BX
local Dl
local Cl
local ModuleScripts
local C8
local Dx
local Cx
local CW
local BW
local Dk
local Ck
local DJ
local CJ
local CollectionService
local B7
local connection
local Cw
local BV
local Cj
local DI
local C6
local B6
local Dv
local Cv
local CU
local BU
local Di
local Ci
local CH
local C5
local B5
local Cu
local BT
local Dh
local Ch
local DG
local C4
local B4
local Dt
local Ct
local CS
local BS
local Dg
local Cg
local DF
local LocalPlayer
local C3
local B3
local Ds
local Cs
local CR
local BR
local Df
local DE
local CE
local C2
local B2
local Dr
local Cr
local CQ
local BQ
local De
local Ce
local DD
local CD
local C1
local B1
local Dq
local CP
local State
local Dd
local Cd
local DC
local CC
local C0
local B0
local Dp
function fns.fn12(e3)
    local Is = {}
    local It = {}
    for i, v in ipairs(e3) do
        table.insert(It, v.Label)
        Is[v.Label] = v
    end
    return It, Is
end
function fns.fn14(me)
    local M1 = tonumber(tostring(me):match("(%d+)"))
    local M3 = M1 or Cg
    Dz.limit = math.clamp(M3, 1, Cg)
end
function fns.fn15()
    local K5 = Dl(CU)
    local K6 = not K5 or not BX(K5.SetRunState) or not BX(K5.SetTreadmill)
    if K6 then
        State.TrainStatus = "Training remote unavailable"
        return
    end
    local treadmill = CC.treadmill
    if not treadmill then
        State.TrainStatus = "Pick a treadmill first"
        return
    end
    if State.MoveBusy then
        State.TrainStatus = "Paused while collecting"
        return
    end
    local K7 = DG(treadmill)
    if not K7 then
        State.TrainStatus = treadmill .. " is not in the lobby"
        return
    end
    local Position = K7:GetPivot().Position
    Ce(Position)
    local K7_1 = C0()
    if not K7_1 or (K7_1.Position - Position).Magnitude > 14 then
        Cd(Position, 4)
        task.wait(0.3)
    end
    if LocalPlayer:GetAttribute("Treadmill") ~= treadmill then
        K5:SetTreadmill(LocalPlayer, treadmill)
    end
    local Ld = if not LocalPlayer:GetAttribute("RunState") then 1 else 0
    if Ld == 1 then
        K5:SetRunState(LocalPlayer, true)
    end
    local K5_1 = C1(treadmill)
    local format = string.format
    local K5_2 = K5_1 and "" or " (not owned, no bonus)"
    State.TrainStatus = format("Training on %s%s | Power %s", treadmill, K5_2, Dv(Db()))
end
function fns.fn30()
    if De() == 0 then
        return true
    end
    local Lo = Dd(function()
        local Li = 1
        local Lg = BZ
        while Li <= Lg do
            local Lj = Li
            State.BrainrotStatus = string.format("Delivering to the base (try %d)", Lj)
            if Ca() then
                return true
            end
            local Le = not BN()
            local Ln = if Le then 1 else 0
            local Ll = 3672 * Ln + 4091 * (1 - Ln)
            local Lm = 1294 * Ln + 398 * (1 - Ln)
            if not ((Ll * 2119 + Lm * 2052 + Ll * Lm) % 16777213 == 15187824) then
                Le = Ds.stopped
            end
            if Le then
                break
            end
            Li += 1
        end
        Cw(nil)
        return De() == 0
    end)
    if Lo then
        State.BrainrotStatus = "Delivered to the base"
    else
        State.BrainrotStatus = "Still carrying, the base did not register it"
    end
    return Lo
end
function fns.fn38()
    local LR_1
    local LQ_1
    local LO = Dl(Df)
    local LP = not LO or not BX(LO.UpSpeed) or not BX(LO.GetUpLvSpeedPrice)
    if LP then
        State.SpeedStatus = "Speed remote unavailable"
        return
    end
    local LP_1 = math.max(1, math.floor(Dh.amount))
    LQ_1, LR_1 = pcall(LO.GetUpLvSpeedPrice, LO, LocalPlayer, LP_1)
    local LS = LQ_1 and tonumber(LR_1)
    local LQ_2 = LS or nil
    if not LQ_2 then
        State.SpeedStatus = "Speed price is unavailable"
        return
    end
    if B3() < LQ_2 then
        State.SpeedStatus = string.format("Speed costs %s, you have %s", Dv(LQ_2), Dv(B3()))
        return
    end
    LO:UpSpeed(LocalPlayer, LP_1)
    task.wait(0.5)
    local LO_1 = Da("SpeedStat")
    local format = string.format
    local LO_2 = LO_1 and LO_1.Value or "?"
    State.SpeedStatus = format("Speed level %s", tostring(LO_2))
end
function fns.fn61()
    local KD_1
    local KA = Dl(CU)
    local KB = KA
    local KB_1
    local KC
    if KB then
        KB = BX(KA.GetTreadmillInfo)
    end
    if KB then
        KB_1, KD_1 = pcall(KA.GetTreadmillInfo, KA)
        KC = KB_1 and KD_1 or nil
    end
    local KA_2 = {}
    if type(KC) == "table" then
        for k, v in pairs(KC) do
            if type(v) == "table" then
                local insert = table.insert
                local KC_1 = tonumber(v.Add) or 1
                local KD_2 = tonumber(tostring(k):match("(%d+)$")) or 0
                insert(KA_2, { Name = k, Add = KC_1, Index = KD_2 })
            end
        end
    end
    table.sort(KA_2, function(iE, iF)
        if iE.Add ~= iF.Add then
            return iE.Add < iF.Add
        end
        return iE.Index < iF.Index
    end)
    return KA_2
end
function fns.fn89(nX)
    local N3 = (tonumber(nX))
    local N7 = if N3 then 1 else 0
    local N5 = 1489 * N7 + 3548 * (1 - N7)
    local N6 = 1845 * N7 + 2474 * (1 - N7)
    if not ((N5 * 2412 + N6 * 2576 + N5 * N6) % 16777213 == 11091393) then
        N3 = 5
    end
    CJ.interval = math.max(1, N3)
end
function fns.fn98(mI)
    if mI then
        Ct(Dh, BV)
    else
        DF(Dh)
    end
end
function fns.onHeartbeat()
    local FJ = not CA
    local FK = not BN() or FJ
    if FK then
        return
    end
    local FJ_1 = C0()
    if not FJ_1 then
        return
    end
    FJ_1.CFrame = CA
    FJ_1.AssemblyLinearVelocity = Vector3.zero
end
function fns.fn130(fF)
    fF.stopped = true
    local IQ = fF.generation or 0
    fF.generation = IQ + 1
end
function fns.fn144(a5)
    local PlayerData = LocalPlayer:FindFirstChild("PlayerData")
    local ET = PlayerData and PlayerData:FindFirstChild(a5)
    return ET or nil
end
function fns.fn146()
    if not LocalPlayer:GetAttribute("ResetWallInfo") then
        return true
    end
    local Jw = Dl(DC)
    local Jx = not Jw or not BX(Jw.HitWall)
    if Jx then
        return false
    end
    local Jx_1 = CW() or DD(BL())[1]
    local Jy = Jx_1 or 1
    local Jy_1 = os.clock() + 3
    while true do
        local Jz = BN() and LocalPlayer:GetAttribute("ResetWallInfo") and os.clock() < Jy_1
        if Jz then
            Jw:HitWall(LocalPlayer, "BlockWall" .. Jy)
            task.wait(0.3)
            continue
        end
        break
    end
    return not LocalPlayer:GetAttribute("ResetWallInfo")
end
function fns.fn150()
    DF(Dz)
    DF(Ds)
    DF(Dm)
    DF(Dh)
    DF(C9)
    DF(C4)
    DF(CX)
    DF(CQ)
    DF(CJ)
    DF(CC)
    DF(Cy)
    Cw(nil)
end
function fns.fn152()
    local JL = Dl(Dx)
    local JM = JL and BX(JL.PlaceBrainrot) and BX(JL.getBrainrotGoldPerSecond)
    if JM then
        return JL
    end
    return nil
end
function fns.fn186(eC)
    local HT = CD(eC)
    local HU = HT
    local HV = {}
    if HU then
        HU = type(HT.Own) == "table"
    end
    if HU then
        for k, v in pairs(HT.Own) do
            if type(v) == "string" then
                HV[v] = true
            end
        end
    end
    return HV, HT and HT.Equipped or nil
end
function fns.fn217(m9, na)
    local ND = B_(m9)
    local NE = {}
    for k in pairs(ND) do
        local ND_1 = na and na[k]
        if ND_1 then
            NE[ND_1.Name] = true
        end
    end
    C4.targets = NE
end
function fns.fn222(ba)
    local EX_1
    local EW_1
    local EV = Da(ba)
    if not EV then
        return nil
    end
    EW_1, EX_1 = pcall(HttpService.JSONDecode, HttpService, tostring(EV.Value))
    local EV_1 = EW_1 and type(EX_1) == "table"
    if EV_1 then
        return EX_1
    end
    return nil
end
function fns.fn293()
    local He = 1
    for i, v in ipairs(C5()) do
        if v.Map > He then
            He = v.Map
        end
    end
    local Hp = 1
    local Hn = Cg
    while Hp <= Hn do
        local Hr = Hp
        local Hf = B2(Hr)
        if Hf > He then
            He = Hf
        end
        Hp += 1
    end
    return He
end
function fns.fn317()
    local GP = TV_14(DC, "Config")
    return GP and GP.AreaConfig or nil
end
function fns.fn319(mU, mV)
    local Nr = B_(mU)
    local Ns = {}
    for k in pairs(Nr) do
        local Nr_1 = mV and mV[k]
        if Nr_1 then
            Ns[Nr_1.Name] = true
        end
    end
    C9.targets = Ns
end
function fns.fn335()
    local Fj_1
    local Fg = Da("GrowthNum")
    local Fh = Fg and Fg.Value
    local Fg_1 = (tonumber(Fh))
    local Fn = if Fg_1 then 1 else 0
    local Fl = 4017 * Fn + 2977 * (1 - Fn)
    local Fm = 1997 * Fn + 3233 * (1 - Fn)
    if not ((Fl * 1478 + Fm * 3676 + Fl * Fm) % 16777213 == 4522834) then
        Fg_1 = 0
    end
    local Fh_1 = Fg_1
    local Fg_2 = Dl(Cs)
    local Fi = Fg_2 and BX(Fg_2.GetGrowthNum)
    local Fi_1
    if Fi then
        Fi_1, Fj_1 = pcall(Fg_2.GetGrowthNum, Fg_2, LocalPlayer)
        local Fg_3 = Fi_1 and tonumber(Fj_1)
        if Fg_3 then
            return tonumber(Fj_1)
        end
        return Fh_1
    end
    return Fh_1
end
function fns.fn350()
    local Fa = CD("statistics")
    local Fb = Fa and Fa.MaxWallId
    local Fa_1 = (tonumber(Fb))
    local Ff = if Fa_1 then 1 else 0
    local Fd = 362 * Ff + 2458 * (1 - Ff)
    local Fe = 1006 * Ff + 1208 * (1 - Ff)
    if not ((Fd * 1205 + Fe * 1134 + Fd * Fe) % 16777213 == 1941186) then
        Fa_1 = 0
    end
    return Fa_1
end
function fns.fn356()
    local Map = DI:FindFirstChild("Map")
    local Jt = Map and Map:FindFirstChild("SafetyBase")
    local Js_1 = Jt
    if Jt then
        Jt = Js_1:IsA("BasePart")
    end
    return Jt and Js_1 or nil
end
function fns.fn361()
    local E1 = Da("MapStat")
    local E2 = E1 and E1.Value
    local E1_1 = (tonumber(E2))
    local E9 = if E1_1 then 1 else 0
    local E7 = 3266 * E9 + 322 * (1 - E9)
    local E8 = 368 * E9 + 2808 * (1 - E9)
    if not ((E7 * 2826 + E8 * 2101 + E7 * E8) % 16777213 == 11204772) then
        E1_1 = 1
    end
    return E1_1
end
function fns.fn372()
    if ModuleScripts and ModuleScripts.Parent then
        return ModuleScripts
    end
    ModuleScripts = DL:FindFirstChild("ModuleScripts")
    return ModuleScripts
end
function fns.fn379()
    local TerritoryFolder = DI:FindFirstChild("TerritoryFolder")
    local HL = TerritoryFolder and TerritoryFolder:FindFirstChild(LocalPlayer.Name)
    local HK_1 = HL
    if HL then
        HL = HK_1:FindFirstChild("CarryFolder")
    end
    local HK_2 = HL
    if HL then
        HL = HK_2:FindFirstChild("data")
    end
    return HL or nil
end
function fns.fn388(bI)
    local Fo = Dl(Cl)
    local Fp = Fo and Fo.productData
    local Fp_1 = type(Fp) == "table" and Fp[bI] ~= nil
    return Fp_1
end
function fns.fn403()
    local Kd_1
    local Ke_1
    local Kc = TV_6()
    if not Kc then
        State.PlaceStatus = "Place remote unavailable"
        return
    end
    Kd_1, Ke_1 = CY(Kc)
    if #Ke_1 == 0 then
        State.PlaceStatus = "Every base slot is filled"
        return
    end
    local Kd_2 = BU(Kc)
    if #Kd_2 == 0 then
        State.PlaceStatus = "No brainrots in your inventory"
        return
    end
    local Kf = 0
    for i, v in ipairs(Ke_1) do
        local Ke_2 = Kd_2[i]
        if not Ke_2 then
            break
        end
        Kc:PlaceBrainrot(LocalPlayer, Ke_2.Uid, v)
        Kf += 1
        task.wait(0.4)
        local Ke_3 = not BN() or CQ.stopped
        if Ke_3 then
            break
        end
    end
    if Kf > 0 then
        local format = string.format
        local Ke_4 = Kf == 1 and "" or "s"
        State.PlaceStatus = format("Placed %d brainrot%s", Kf, Ke_4)
    else
        State.PlaceStatus = "Nothing left to place"
    end
end
function fns.fn454(m2)
    C9.equip = m2 == true
end
function fns.fn455(dS)
    local Hs = dS <= 1 or DA() >= B7
    return Hs
end
function fns.fn462(lq)
    if lq <= TV_17 then
        return 1
    end
    return 1 + math.ceil((lq - TV_17) / Cx)
end
function fns.fn487()
    gethui = Cv
end
function fns.fn493(bO)
    local Fr = tonumber(bO) or 0
    bO = Fr
    local Fr_1 = 1
    local Fs = { "", "K", "M", "B", "T", "Qa", "Qi", "Sx", "Sp", "Oc", "No", "Dc" }
    while bO >= 1000 and Fr_1 < 12 do
        bO = bO / 1000
        Fr_1 += 1
    end
    if Fr_1 == 1 then
        return string.format("%d", bO)
    end
    return string.format("%.2f%s", bO, Fs[Fr_1])
end
function fns.fn508(ii)
    local Lobby = DI:FindFirstChild("Lobby")
    local Kw = Lobby and Lobby:FindFirstChild(CN)
    local Kv_1 = Kw
    if Kw then
        Kw = Kv_1:FindFirstChild(ii)
    end
    local Kv_2 = Kw
    if Kw then
        Kw = Kv_2:IsA("Model")
    end
    return Kw and Kv_2 or nil
end
function fns.fn557(ec)
    local BrainrotFolder = DI:FindFirstChild("BrainrotFolder")
    local HB = BrainrotFolder and BrainrotFolder:FindFirstChild("data")
    local HA_1 = HB
    if HB then
        HB = HA_1:FindFirstChild(ec)
    end
    return HB or nil
end
function fns.fn561(nk)
    if nk then
        Ct(CX, CR)
    else
        DF(CX)
        State.FloorStatus = "Idle"
    end
end
function fns.fn571()
    local G4 = {}
    local G5 = {}
    for i, v in ipairs(C5()) do
        local G6 = string.format("Area %d (World %d)", v.Index, v.Map)
        table.insert(G5, G6)
        G4[G6] = v
    end
    return G5, G4
end
function fns.fn589(m4)
    if m4 then
        Ct(C4, Cr)
    else
        DF(C4)
    end
end
function fns.fn599(e9)
    local IB = {}
    if type(e9) == "table" then
        for k, v in pairs(e9) do
            local IC = v == true and type(k) == "string"
            if IC then
                IB[k] = true
            elseif type(v) == "string" then
                IB[v] = true
            end
        end
    end
    return IB
end
function fns.fn608()
    local MA_1
    local My = Dl(C2)
    local Mz = not My
    local Mz_1, Mz_3, Mz_5
    local MG = if Mz then 1 else 0
    local ME = 595 * MG + 2302 * (1 - MG)
    local MF = 1905 * MG + 1630 * (1 - MG)
    if not ((ME * 1170 + MF * 1040 + ME * MF) % 16777213 == 3810825) then
        Mz = not BX(My.BuyBrainrotPlacePlot)
    end
    if not Mz then
        Mz = not BX(My.GetMaxUnlockPlacePlot)
    end
    if Mz then
        State.FloorStatus = "Floor remote unavailable"
        return
    end
    Mz_1, MA_1 = pcall(My.GetMaxUnlockPlacePlot, My, LocalPlayer)
    local MB = Mz_1 and tonumber(MA_1)
    local MB_1, MB_3
    local Mz_2 = MB or nil
    if not Mz_2 then
        State.FloorStatus = "Slot count is unavailable"
        return
    end
    Mz_3, MB_1 = pcall(My.GetPriceOfPlot, My, Mz_2 + 1)
    local MC = Mz_3 and tonumber(MB_1)
    local Mz_4 = MC or nil
    if not Mz_4 then
        State.FloorStatus = string.format("Every floor is unlocked (%d slots)", Mz_2)
        return
    end
    if B3() < Mz_4 then
        State.FloorStatus = string.format("Floor %d slot %d costs %s, you have %s", Dg(Mz_2 + 1), Mz_2 + 1, Dv(Mz_4), Dv(B3()))
        return
    end
    My:BuyBrainrotPlacePlot(LocalPlayer)
    task.wait(0.6)
    Mz_5, MB_3 = pcall(My.GetMaxUnlockPlacePlot, My, LocalPlayer)
    local My_1 = Mz_5 and tonumber(MB_3)
    local Mz_6 = My_1 or Mz_2
    State.FloorStatus = string.format("Floor %d | %d slots unlocked", Dg(Mz_6), Mz_6)
end
function fns.fn609(mN)
    local No = tonumber(mN) or 1
    Dh.amount = math.max(1, math.floor(No))
end
function fns.fn610(gc)
    local Jd_1
    local Jc_1
    local Jb = C6()
    if BL() == Jb then
        return true
    end
    Jc_1, Jd_1 = Cu(Jb)
    if not Jc_1 then
        if gc then
            local Jc_2 = Jd_1 or string.format("Could not reach World %d", Jb)
            State[gc] = Jc_2
        end
        local Jc_3 = Jd_1 or string.format("Could not reach World %d", Jb)
        State.WorldStatus = Jc_3
        return false
    end
    State.WorldStatus = string.format("Moved to World %d (walls were reset)", Jb)
    return true
end
function fns.fn622(l5)
    if l5 then
        Ct(Dz, Dt)
    else
        DF(Dz)
        State.WallStatus = "Idle"
    end
end
function fns.fn646(ni)
    C4.equip = ni == true
end
function fns.fn665()
    local LL = Dl(Dx)
    local LM = not LL or not BX(LL.OneClickGetAllBrainrotIncomeGold)
    if LM then
        State.MoneyStatus = "Income remote unavailable"
        return
    end
    local LM_1 = B3()
    LL:OneClickGetAllBrainrotIncomeGold(LocalPlayer)
    task.wait(1)
    local LL_1 = B3() - LM_1
    if LL_1 > 0 then
        State.MoneyStatus = string.format("Collected %s | Gold %s", Dv(LL_1), Dv(B3()))
    else
        State.MoneyStatus = string.format("Nothing to collect | Gold %s", Dv(B3()))
    end
end
function fns.fn673(mr, ms)
    local M9 = B_(mr)
    local Na = {}
    for k in pairs(M9) do
        local M9_1 = ms and ms[k]
        if M9_1 then
            Na[M9_1.Name] = true
        end
    end
    Ds.areas = Na
end
function fns.fn687(mp)
    local M7 = tonumber(mp) or 1.5
    Ds.interval = math.max(0.5, M7)
end
function fns.fn734(eK, eL)
    local H6 = {}
    if type(eK) == "table" then
        for k, v in pairs(eK) do
            if type(v) == "table" then
                local H8 = tonumber(v.gold) or 0
                local H9 = tonumber(v[eL]) or 0
                local Ib = tonumber(v[eL]) or 0
                table.insert(H6, { Name = k, Gold = H8, Add = H9, Label = string.format("%s (+%s)", k, Dv(Ib)) })
            end
        end
    end
    table.sort(H6, function(eP, eQ)
        if eP.Add ~= eQ.Add then
            return eP.Add < eQ.Add
        end
        return eP.Name < eQ.Name
    end)
    return H6
end
function fns.fn739()
    if not BX(firetouchinterest) then
        return
    end
    local JB = Ck()
    local JC = C0()
    if not JB or not JC then
        return
    end
    pcall(firetouchinterest, JC, JB, 0)
    pcall(firetouchinterest, JC, JB, 1)
end
function fns.fn775()
    local areas = Ds.areas
    local Map
    for i, v in ipairs(C5()) do
        if areas[v.Name] then
            if Map and Map ~= v.Map then
                return nil
            end
            Map = v.Map
        end
    end
    return Map
end
function fns.fn785()
    local areas = Ds.areas
    local Jg = next(areas) ~= nil
    local Jh = BL()
    local Ji
    for i, v in ipairs(C5()) do
        local Jj = v.Map == Jh
        if Jj then
            Jj = not Jg or areas[v.Name]
        end
        if Jj then
            local Jj_1 = Dp(v.Name)
            local Jk_2 = Jj_1 and #Jj_1:GetChildren() > 0
            if Jk_2 then
                if not Ji or v.Index > Ji.Index then
                    Ji = v
                end
            end
        end
    end
    return Ji
end
function fns.fn800(nZ)
    local N9 = tonumber(nZ) or 3
    CC.interval = math.max(1, N9)
end
function fns.fn812(ej, ek, el)
    local attr = ej:GetAttribute("pos")
    if typeof(attr) ~= "Vector3" then
        return {}
    end
    local HH = Cj(ek)
    local HH_1 = HH and attr + HH.Position or attr
    local HH_2 = tonumber(el) or 1
    local HI_1 = (HH_2 - 1) * Cb
    if HI_1 == 0 then
        return { HH_1 }
    end
    return { HH_1 + Vector3.new(0, 0, HI_1), HH_1 }
end
function fns.fn878()
    local IV_1
    local IU_1
    local IS = Dl(DC)
    local IT = not IS or not BX(IS.HitWall)
    if IT then
        State.WallStatus = "Wall remote unavailable"
        return
    end
    if not BY() then
        State.WallStatus = "Waiting for wall data"
        return
    end
    local IT_1 = BL()
    IV_1, IU_1 = C3(Dz.limit)
    if not IV_1 then
        local IW_1 = CW()
        if IW_1 then
            State.WallStatus = string.format("Zone %d skips every World %d wall (first is wall %d)", Dz.limit, IT_1, IW_1)
        else
            State.WallStatus = string.format("Cleared every wall up to zone %d on World %d", Dz.limit, IT_1)
        end
        return
    end
    IS:HitWall(LocalPlayer, "BlockWall" .. IV_1)
    local IS_1 = 0
    local IW_2 = tonumber(IU_1.max) or 0
    if IW_2 > 0 then
        local clamp = math.clamp
        local IY = tonumber(IU_1.hp) or 0
        IS_1 = clamp(1 - IY / IW_2, 0, 1) * 100
    end
    State.WallStatus = string.format("World %d | Wall %d at %.1f%% | Power %s vs %s", IT_1, IV_1, IS_1, Dv(Db()), Dv(IU_1.hp))
end
function fns.fn908()
    BW()
    Ce(B5)
    Cd(B5, 0)
    task.wait(0.4)
    Cw(nil)
    local JG = os.clock() + 4
    local JH = 0
    while true do
        local JI = BN() and De() > 0 and os.clock() < JG
        if JI then
            local Character = LocalPlayer.Character
            local JJ = Character and Character:FindFirstChildOfClass("Humanoid")
            local JI_2 = JJ
            if JJ then
                JJ = os.clock() >= JH
            end
            if JJ then
                JI_2:MoveTo(B1)
                CH()
                JH = os.clock() + 0.8
            end
            task.wait(0.15)
            continue
        end
        break
    end
    return De() == 0
end
function fns.fn916(cf)
    local FQ_2
    local FP = os.clock() + 8
    local FP_2
    while true do
        local FQ_1 = State.MoveBusy and BN() and os.clock() < FP
        if FQ_1 then
            task.wait(0.1)
            continue
        end
        break
    end
    local FP_1 = State.MoveBusy
    local FU = if FP_1 then 1 else 0
    local FS = 1170 * FU + 3599 * (1 - FU)
    local FT = 2571 * FU + 539 * (1 - FU)
    if not ((FS * 649 + FT * 2964 + FS * FT) % 16777213 == 11387844) then
        FP_1 = not BN()
    end
    if FP_1 then
        return false
    end
    State.MoveBusy = true
    FP_2, FQ_2 = pcall(cf)
    State.MoveBusy = false
    Cw(nil)
    if not FP_2 then
        warn("[Ouroboros] movement error: " .. tostring(FQ_2))
        return false
    end
    return FQ_2
end
function fns.fn922(mG)
    local Nj = tonumber(mG) or 30
    Dm.interval = math.max(1, Nj)
end
function fns.fn959()
    local GU = DJ()
    local GV = {}
    if type(GU) == "table" then
        for k, v in pairs(GU) do
            local insert = table.insert
            local GW = type(v) == "table" and v.map
            local GX = tonumber(GW) or 1
            insert(GV, { Name = k, Map = GX, Index = Di(k) })
        end
    end
    table.sort(GV, function(dz, dA)
        return dz.Index < dA.Index
    end)
    return GV
end
function fns.fn974()
    local I9 = DE.target or TV_5() or BL()
    return I9
end
function fns.fn978(Y)
    return type(Y) == "function"
end
function fns.fn981(cG)
    local min = math.min
    local F6 = cG or Cg
    local F7 = min(F6, Cg)
    local Gb = 1
    while Gb <= F7 do
        local Gc = Gb
        local F5_1 = TV_9(Gc)
        local F6_1 = F5_1
        if F6_1 then
            local F7_1 = tonumber(F5_1.hp) or 0
            F6_1 = F7_1 > 0
        end
        if F6_1 then
            return Gc, F5_1
        end
        Gb += 1
    end
    return nil
end
function fns.fn993(nq)
    if nq then
        Ct(CQ, BQ)
    else
        DF(CQ)
        State.PlaceStatus = "Idle"
    end
end
function fns.fn1007(hp)
    local JS = CD("OwnBrainrot")
    local JT = JS
    local JU = {}
    if JT then
        JT = type(JS.Own) == "table"
    end
    if JT then
        for k, v in pairs(JS.Own) do
            local JS_1 = type(v) == "table" and v.class == "brainrot" and v.uid
            if JS_1 then
                table.insert(JU, { Uid = v.uid, Name = tostring(v.name), Rate = Ch(hp, v) })
            end
        end
    end
    table.sort(JU, function(hy, hz)
        return hy.Rate > hz.Rate
    end)
    return JU
end
function fns.fn1029(hj, hk)
    local JP_1
    local JO_1
    JO_1, JP_1 = pcall(hj.getBrainrotGoldPerSecond, hj, hk)
    local JQ = JO_1 and tonumber(JP_1)
    return JQ or 0
end
function fns.fn1037(nV)
    local N0 = tonumber(nV) or 5
    CQ.interval = math.max(1, N0)
end
function fns.fn1038()
    local HN = BR()
    local HO = HN and #HN:GetChildren()
    local HN_1 = HO
    local HS = if HN_1 then 1 else 0
    local HQ = 1897 * HS + 425 * (1 - HS)
    local HR = 1918 * HS + 845 * (1 - HS)
    if not ((HQ * 961 + HR * 3125 + HQ * HR) % 16777213 == 11455213) then
        HN_1 = 0
    end
    return HN_1
end
local function fn1046(nC)
    if nC then
        Ct(CC, B6)
    else
        DF(CC)
        local NO = Dl(CU)
        local NP = NO and BX(NO.SetRunState)
        if NP then
            pcall(NO.SetRunState, NO, LocalPlayer, false)
        end
        Cw(nil)
        State.TrainStatus = "Idle"
    end
end
local function fn1066()
    local MK_1
    local MH = Dl(C8)
    local MI = not MH or not BX(MH.Rebirth)
    local MI_3
    local MP = if MI then 1 else 0
    local MN = 1613 * MP + 3455 * (1 - MP)
    local MO = 2901 * MP + 1307 * (1 - MP)
    if not ((MN * 1011 + MO * 2443 + MN * MO) % 16777213 == 13397199) then
        MI = not BX(MH.GetRebirthConfig)
    end
    if MI then
        State.RebirthStatus = "Rebirth remote unavailable"
        return
    end
    local MI_1 = Da("RebirthNum")
    local MJ = MI_1 and MI_1.Value
    local MI_2 = (tonumber(MJ))
    local MP_1 = if MI_2 then 1 else 0
    local MN_1 = 1605 * MP_1 + 1165 * (1 - MP_1)
    local MO_1 = 3863 * MP_1 + 1232 * (1 - MP_1)
    if not ((MN_1 * 685 + MO_1 * 2613 + MN_1 * MO_1) % 16777213 == 616346) then
        MI_2 = 0
    end
    local MJ_1 = MI_2
    MI_3, MK_1 = pcall(MH.GetRebirthConfig, MH, MJ_1 + 1)
    local ML = not MI_3 or type(MK_1) ~= "table"
    if ML then
        State.RebirthStatus = string.format("Rebirth %d is the last one", MJ_1)
        return
    end
    local MI_4 = tonumber(MK_1.Need) or 0
    local MI_5 = Db()
    if MI_5 < MI_4 then
        State.RebirthStatus = string.format("Rebirth %d needs %s power, you have %s", MJ_1 + 1, Dv(MI_4), Dv(MI_5))
        return
    end
    MH:Rebirth(LocalPlayer)
    task.wait(0.8)
    local MH_1 = Da("RebirthNum")
    local format = string.format
    local MH_2 = MH_1 and MH_1.Value or MJ_1
    State.RebirthStatus = format("Rebirths: %s", tostring(MH_2))
end
local function fn1088(ko, kp, kq, kr, ks, kt)
    local LY_1
    local LX_1
    LX_1, LY_1 = CL(kq)
    local targets = ko.targets
    local L_ = next(targets) ~= nil
    local L0 = B3()
    local L1
    local L2
    for i, v in ipairs(kp) do
        local L3_1 = not LX_1[v.Name]
        if L3_1 ~= false then
            L3_1 = v.Gold > 0
        end
        if L3_1 then
            L3_1 = not B0(v.Name)
        end
        if L3_1 then
            if not L_ or targets[v.Name] then
                if not L1 or v.Gold < L1.Gold then
                    L1 = v
                end
                if v.Gold <= L0 and (not L2 or v.Add > L2.Add) then
                    L2 = v
                end
            end
        end
    end
    if L2 then
        kr(L2.Name)
        task.wait(0.6)
        LX_1, LY_1 = CL(kq)
    end
    if ko.equip then
        local LZ_1 = nil
        for i, v in ipairs(kp) do
            local L__1 = LX_1[v.Name]
            if L__1 then
                L__1 = not LZ_1 or v.Add > LZ_1.Add
            end
            if L__1 then
                LZ_1 = v
            end
        end
        if LZ_1 and LZ_1.Name ~= LY_1 then
            ks(LZ_1.Name)
            task.wait(0.4)
        end
    end
    if L2 then
        return string.format("Bought %s", L2.Label)
    elseif L1 then
        return string.format("%s costs %s, you have %s", L1.Name, Dv(L1.Gold), Dv(L0))
    else
        return string.format("Every %s you can buy with gold is owned", kt)
    end
end
local function fn1095(iP)
    local K__1
    local KY = Dl(CU)
    local KZ = not KY or not BX(KY.CheckTreadmill)
    local KZ_1
    if KZ then
        return false
    end
    KZ_1, K__1 = pcall(KY.CheckTreadmill, KY, LocalPlayer, iP)
    return KZ_1 and K__1 == true
end
local function fn1098()
    local Ge = TV_14(DC, "Config")
    local Gf = type(Ge) == "table" and Ge.WallConfig
    return Gf or nil
end
local function fn1101(cS)
    local Gh = Cm()
    local Gi = Gh and Gh["BlockWall" .. cS]
    local Gi_1 = type(Gi) == "table" and Gi.map
    local Gh_2 = tonumber(Gi_1) or 1
    return Gh_2
end
local function fn1103()
    local GD
    local GC = 1
    local GA = Cg
    while true do
        if not (GC <= GA) then
            return nil
        end
        GD = GC
        local Gw = TV_9(GD)
        local Gx = Gw
        if Gx then
            local Gy = tonumber(Gw.hp) or 0
            Gx = Gy > 0
        end
        if Gx then
            break
        end
        GC += 1
    end
    return GD
end
local function fn1141(aF)
    local EC_1
    local EA = Dr[aF]
    local EA_3
    if EA ~= nil then
        return EA
    end
    local EA_1 = DM()
    if not EA_1 then
        return nil
    end
    local EB = EA_1:FindFirstChild(aF)
    local EA_2 = not EB or not EB:IsA("ModuleScript")
    if EA_2 then
        return nil
    end
    EA_3, EC_1 = pcall(require, EB)
    local EB_1 = not EA_3 or type(EC_1) ~= "table"
    if EB_1 then
        return nil
    end
    Dr[aF] = EC_1
    return EC_1
end
local function fn1147(n0)
    if n0 then
        Ct(Cy, Dn)
    else
        DF(Cy)
        State.RebirthStatus = "Idle"
    end
end
local function fn1174(db)
    local GF = Co[db]
    if GF and GF.Parent then
        return GF
    end
    for i, v in ipairs(CollectionService:GetTagged("AreaBox")) do
        Co[v.Name] = v
    end
    local GF_1 = Co[db]
    return GF_1 and GF_1.Parent and GF_1 or nil
end
local function fn1181(cw)
    local F0_1
    local FZ = BY()
    local F_ = FZ and FZ:FindFirstChild("BlockWall" .. cw)
    local F__1
    if not F_ then
        return nil
    end
    F__1, F0_1 = pcall(HttpService.JSONDecode, HttpService, tostring(F_.Value))
    local FZ_2 = F__1 and type(F0_1) == "table"
    if FZ_2 then
        return F0_1
    end
    return nil
end
local function fn1186(hB)
    local J3_1
    local J2_1
    local J1 = CD("OwnPlaceBrainrot")
    J3_1, J2_1 = {}, {}
    local J4 = J1 and type(J1.Own) == "table"
    if J4 then
        for k, v in pairs(J1.Own) do
            local J1_1 = tonumber(k)
            local J4_1 = J1_1 and type(v) == "table"
            if J4_1 then
                if v.class == "brainrot" then
                    table.insert(J3_1, { Slot = J1_1, Name = tostring(v.name), Rate = Ch(hB, v) })
                elseif v.class == nil then
                    table.insert(J2_1, J1_1)
                end
            end
        end
    end
    table.sort(J2_1)
    table.sort(J3_1, function(hM, hN)
        return hM.Rate < hN.Rate
    end)
    return J3_1, J2_1
end
local function fn1224(bY)
    CA = bY
end
local function fn1269(nw)
    if nw then
        Ct(CJ, TV_3)
    else
        DF(CJ)
        State.ReplaceStatus = "Idle"
    end
end
local function fn1298(cZ)
    local Gk = {}
    local Go = 1
    local Gm = Cg
    while Go <= Gm do
        local Gp = Go
        if B2(Gp) >= cZ then
            table.insert(Gk, Gp)
        end
        Go += 1
    end
    if #Gk == 0 then
        local Gt = 1
        local Gr = Cg
        while Gt <= Gr do
            local Gu = Gt
            table.insert(Gk, Gu)
            Gt += 1
        end
    end
    return Gk
end
local function fn1344()
    local KO = {}
    local KP = {}
    for i, v in ipairs(CE()) do
        local KQ = string.format("%s (x%s)", v.Name, Dv(v.Add))
        table.insert(KP, KQ)
        KO[KQ] = v
    end
    return KP, KO
end
local function fn1363()
    return not B9.Unloaded
end
local function fn1370()
    local EZ = CD("Currency")
    local E_ = EZ and EZ.Gold
    local EZ_1 = tonumber(E_) or 0
    return EZ_1
end
local function fn1377()
    local Character = LocalPlayer.Character
    local Fw = Character and Character:FindFirstChild("HumanoidRootPart")
    local Fv_1 = Fw
    local FA = if Fv_1 then 1 else 0
    local Fy = 1638 * FA + 2888 * (1 - FA)
    local Fz = 1704 * FA + 1243 * (1 - FA)
    if not ((Fy * 1598 + Fz * 1332 + Fy * Fz) % 16777213 == 7678404) then
        Fv_1 = nil
    end
    return Fv_1
end
local function fn1383(nP, nQ)
    local NU = nQ and nQ[nP]
    local NV = NU
    if NU then
        NU = NV.Name
    end
    local NV_1 = NU
    local NZ = if NV_1 then 1 else 0
    local NX = 4051 * NZ + 162 * (1 - NZ)
    local NY = 3338 * NZ + 1810 * (1 - NZ)
    if not ((NX * 57 + NY * 253 + NX * NY) % 16777213 == 14597659) then
        NV_1 = nil
    end
    CC.treadmill = NV_1
end
local function fn1395(dr)
    local GS = tonumber(tostring(dr):match("(%d+)$")) or 0
    return GS
end
local function fn1397(mP)
    if mP then
        Ct(C9, BS)
    else
        DF(C9)
    end
end
local function fn1402(mi)
    if mi then
        Ct(Ds, CP)
    else
        DF(Ds)
        Cw(nil)
        State.BrainrotStatus = "Idle"
    end
end
local function fn1416()
    return LocalPlayer:FindFirstChild("WallInfo")
end
local function fn1420(mb)
    local M_ = tonumber(mb) or BT
    Dz.interval = math.max(BT, M_)
end
local function fn1422()
    local Kn = TV_6()
    if not Kn then
        State.ReplaceStatus = "Place remote unavailable"
        return
    end
    local Ko = CY(Kn)
    if #Ko == 0 then
        State.ReplaceStatus = "Nothing is placed yet"
        return
    end
    local Kp = BU(Kn)
    local Kq = Kp[1]
    if not Kq then
        State.ReplaceStatus = "No brainrots in your inventory"
        return
    end
    local Kp_1 = Ko[1]
    if Kq.Rate <= Kp_1.Rate then
        State.ReplaceStatus = string.format("Weakest placed earns %s/s, nothing better in stock", Dv(Kp_1.Rate))
        return
    end
    Kn:PlaceBrainrot(LocalPlayer, Kq.Uid, Kp_1.Slot)
    task.wait(0.5)
    State.ReplaceStatus = string.format("Slot %d: %s/s swapped for %s/s", Kp_1.Slot, Dv(Kp_1.Rate), Dv(Kq.Rate))
end
local function fn1428(dX)
    local clamp = math.clamp
    local Hv = tonumber(dX) or 1
    dX = clamp(Hv, 1, DN())
    if BL() == dX then
        return true
    end
    local Hu_1 = Dl(DC)
    local Hv_1 = not Hu_1 or not BX(Hu_1.ChangeMap)
    if Hv_1 then
        return false, "World remote unavailable"
    elseif not CZ(dX) then
        return false, string.format("World %d needs wall %d cleared first (you are at %d)", dX, B7, DA())
    else
        Hu_1:ChangeMap(LocalPlayer, dX)
        local Hu_2 = os.clock() + 4
        while true do
            local Hv_2 = BN() and BL() ~= dX and os.clock() < Hu_2
            if Hv_2 then
                task.wait(0.15)
                continue
            end
            break
        end
        local Hz = if BL() ~= dX then 1 else 0
        if Hz == 1 then
            return false, string.format("The server refused to move you to World %d", dX)
        end
        return true
    end
end
local function fn1471()
    local Ip = TV_14(Dk, "Config")
    local Iq = Ip and Ip.Config
    return B4(Iq, "add")
end
local function fn1477()
    return CoreGui
end
local function fn1485()
    connection:Disconnect()
    CA = nil
end
local function fn1495(mA)
    if mA then
        Ct(Dm, CS)
    else
        DF(Dm)
        State.MoneyStatus = "Idle"
    end
end
local function fn1496()
    local Im = TV_14(Dq, "Config")
    local In = Im and Im.ToolInfo
    return B4(In, "add")
end
local function fn1504(aR, aS)
    local EK_1
    local EH = aR .. "/" .. aS
    local EI = Ci[EH]
    local EI_4
    if EI ~= nil then
        return EI
    end
    local EI_1 = DM()
    if not EI_1 then
        return nil
    end
    local EJ = EI_1:FindFirstChild(aR)
    local EI_2 = EJ and EJ:FindFirstChild(aS)
    local EI_3 = not EI_2 or not EI_2:IsA("ModuleScript")
    if EI_3 then
        return nil
    end
    EI_4, EK_1 = pcall(require, EI_2)
    local EJ_2 = not EI_4 or type(EK_1) ~= "table"
    if EJ_2 then
        return nil
    end
    Ci[EH] = EK_1
    return EK_1
end
local function fn1513(V)
    local Et = typeof(cloneref) == "function" and typeof(V) == "Instance"
    if Et then
        return cloneref(V)
    end
    return V
end
ModuleScripts = nil
BL = nil
BN = nil
TV_9 = nil
State = nil
BQ = nil
BR = nil
BS = nil
BT = nil
BU = nil
BV = nil
BW = nil
BX = nil
BY = nil
BZ = nil
B_ = nil
B0 = nil
B1 = nil
B2 = nil
B3 = nil
B4 = nil
B5 = nil
B6 = nil
B7 = nil
B9 = nil
Ca = nil
Cb = nil
TV_14 = nil
Cd = nil
Ce = nil
Cg = nil
Ch = nil
Ci = nil
Cj = nil
Ck = nil
Cl = nil
Cm = nil
Co = nil
TV_3 = nil
Cr = nil
Cs = nil
Ct = nil
Cu = nil
Cv = nil
local Players, BM, B8, Cf, Cn, Cq
Cw = nil
Cx = nil
Cy = nil
CA = nil
TV_17 = nil
CC = nil
CD = nil
CE = nil
LocalPlayer = nil
CH = nil
CJ = nil
CL = nil
CN = nil
TV_6 = nil
CP = nil
CQ = nil
CR = nil
CS = nil
CU = nil
CW = nil
CX = nil
CY = nil
CZ = nil
C0 = nil
C1 = nil
C2 = nil
C3 = nil
C4 = nil
C5 = nil
C6 = nil
CollectionService = nil
C8 = nil
C9 = nil
Da = nil
Db = nil
CoreGui = nil
Dd = nil
De = nil
Df = nil
Dg = nil
Dh = nil
Di = nil
local Cz, CG, Workspace, CM, Lighting, CV, TeleportService
Dk = nil
Dl = nil
Dm = nil
Dn = nil
HttpService = nil
Dp = nil
Dq = nil
Dr = nil
Ds = nil
Dt = nil
Dv = nil
connection = nil
Dx = nil
Dz = nil
DA = nil
DC = nil
DD = nil
DE = nil
DF = nil
DG = nil
DI = nil
DJ = nil
DL = nil
DM = nil
DN = nil
TV_5 = nil
local GuiService, VirtualUser, Dy, UserInputService, RunService, DK
GuiService = nil
VirtualUser = nil
Dy = nil
UserInputService = nil
RunService = nil
DK = nil
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, CollectionService, TeleportService, Lighting, Workspace, LocalPlayer, Cv = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
CollectionService = game:GetService("CollectionService")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local TV_23 = "OuroborosStrengthArm"
Cv = fn1477
if getgenv then
    getgenv().gethui = Cv
end
B9, DL, DI, DC, Dx, Dq, Dk, Df, C8, C2, CU, CN, TV_17, Cx, Cs, Cl, Cg, Cb, B7, B5, B1, BZ, BT, State, ModuleScripts, Dr, Ci, CA, connection, Co, DE, Dz, Ds, Dm, Dh, C9, C4, CX, CQ, CJ, CC, Cy, CM, BX, BN, DM, Dl, TV_14, Da, CD, B3, BL, DA, Db, B0, Dv, C0, Cw, Cd, Dd, Ce, BY, TV_9, C3, Cm, B2, DD, CW, Cj, DJ, Di, C5, B8, DN, CZ, Cu, Dp, CG, BR, De, CL, B4, Dy, CV, Cn, B_, Ct, DF, Dt, TV_5, C6, Cz, BM, Ck, BW, CH, Ca, TV_6, Ch, BU, CY, BQ, TV_3, DG, CE, DK, C1, B6, Cf, CP, CS, BV, Cq, BS, Cr, Dg, CR, Dn = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fns.fn487)
local function TV_25(u)
    local El
    local Em
    local Ek
    Ek = nil
    El = nil
    Em = nil
    local En = u ~= ""
    local Eo = type(u) == "string" and En
    assert(Eo, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    El = getgenv()
    assert(type(El) == "table", "getgenv did not return a table")
    local En_1 = El[u]
    if En_1 ~= nil then
        local Eo_1 = type(En_1) == "table" and type(En_1.Unload) == "function"
        assert(Eo_1, "Namespace is occupied")
        En_1.Unload()
        assert(El[u] == nil, "Previous instance did not release its namespace")
    end
    Em = {}
    Ek = { State = {}, Unloaded = false }
    Ek.Track = function(A)
        assert(type(A) == "function", "Cleanup must be callable")
        if Ek.Unloaded then
            A()
        else
            table.insert(Em, A)
        end
        return A
    end
    Ek.Unload = function()
        local Ea_1
        local D9_1
        if Ek.Unloaded then
            return
        end
        Ek.Unloaded = true
        local D7 = {}
        local Ee = #Em
        local Ed = -1
        while false and Ee <= 1 or true and Ee >= 1 do
            local Ef = Ee
            local D8_1 = table.remove(Em, Ef)
            D9_1, Ea_1 = pcall(D8_1)
            if not D9_1 then
                table.insert(D7, tostring(Ea_1))
            end
            Ee += Ed
        end
        table.clear(Ek.State)
        if #D7 > 0 then
            error("Cleanup incomplete: " .. table.concat(D7, "; "), 0)
        end
        if El[u] == Ek then
            El[u] = nil
        end
    end
    El[u] = Ek
    return Ek
end
CM = function(N, O)
    local Er = type(N) == "table" and type(N.Track) == "function"
    assert(Er, "FeatureAPI required")
    local Er_1 = type(O) == "table" and type(O.OnUnload) == "function"
    assert(Er_1, "UI library required")
    assert(type(O.Unload) == "function", "UI unload required")
    N.Track(function()
        if not O.Unloaded then
            O:Unload()
        end
    end)
    O:OnUnload(function()
        N.Unload()
    end)
end
B9 = TV_25(TV_23)
BX = fns.fn978
BN = fn1363
DL = fn1513(ReplicatedStorage)
DI = fn1513(Workspace)
DC = "Manager_获取脑红"
Dx = "Manager_脑红"
Dq = "Manager_成长"
Dk = "Manager_光环"
Df = "Manager_速度"
C8 = "Manager_重生"
C2 = "Manager_地盘"
CU = "Manager_跑步机"
CN = "跑步机"
TV_17 = 10
if (not Cu or State or (State or Cm)) and (not State and not State and (State or not State)) and not ((not Cu or State or (State or Cm)) and (not State and not State and (State or not State))) then
    Cs = 4
    Cl = "Manager_Player"
    Cx = "Manager_Shop"
else
    Cx = 4
    Cs = "Manager_Player"
    Cl = "Manager_Shop"
end
Cg = 21
Cb = 1500
B7 = 12
B5 = Vector3.new(127, 236, -972)
B1 = Vector3.new(126, 236, -936)
BZ = 8
BT = 0.5
State = B9.State
State.WorldStatus = "Idle"
State.WallStatus = "Idle"
State.BrainrotStatus = "Idle"
State.MoneyStatus = "Idle"
State.SpeedStatus = "Idle"
State.DumbbellStatus = "Idle"
State.AuraStatus = "Idle"
State.FloorStatus = "Idle"
State.PlaceStatus = "Idle"
State.ReplaceStatus = "Idle"
State.TrainStatus = "Idle"
State.RebirthStatus = "Idle"
State.MoveBusy = false
ModuleScripts = nil
DM = fns.fn372
Dr = {}
Dl = fn1141
Ci = {}
TV_14 = fn1504
Da = fns.fn144
CD = fns.fn222
B3 = fn1370
BL = fns.fn361
DA = fns.fn350
if Cd and not C0 and (Cj or TV_3) or C0 and TV_3 and (not C0 and TV_3) or not (Cd and not C0 and (Cj or TV_3) or C0 and TV_3 and (not C0 and TV_3)) then
    Db = fns.fn335
    B0 = fns.fn388
else
    B0 = fns.fn335
    Db = fns.fn388
end
Dv = fns.fn493
C0 = fn1377
CA = nil
Cw = fn1224
Cd = function(b0, b1)
    local FB
    if typeof(b0) ~= "Vector3" then
        return false
    end
    local FE = b1
    local FI = if FE then 1 else 0
    local FG = 2037 * FI + 1356 * (1 - FI)
    local FH = 2094 * FI + 480 * (1 - FI)
    if not ((FG * 1854 + FH * 1455 + FG * FH) % 16777213 == 11088846) then
        FE = 4
    end
    CA = CFrame.new(b0 + Vector3.new(0, FE, 0))
    FB = C0()
    if not FB then
        return false
    end
    return (pcall(function()
        FB.CFrame = CA
        FB.AssemblyLinearVelocity = Vector3.zero
    end))
end
connection = RunService.Heartbeat:Connect(fns.onHeartbeat)
B9.Track(fn1485)
Dd = fns.fn916
Ce = function(cp)
    if typeof(cp) ~= "Vector3" then
        return
    end
    pcall(function()
        LocalPlayer:RequestStreamAroundAsync(cp)
    end)
end
BY = fn1416
TV_9 = fn1181
C3 = fns.fn981
Cm = fn1098
B2 = fn1101
DD = fn1298
CW = fn1103
Co = {}
Cj = fn1174
DJ = fns.fn317
Di = fn1395
C5 = fns.fn959
B8 = fns.fn571
DN = fns.fn293
CZ = fns.fn455
Cu = fn1428
Dp = fns.fn557
CG = fns.fn812
BR = fns.fn379
De = fns.fn1038
CL = fns.fn186
B4 = fns.fn734
Dy = fn1496
CV = fn1471
Cn = fns.fn12
B_ = fns.fn599
DE = { target = nil }
Dz = { interval = 0.5, limit = Cg }
Ds = { interval = 1.5, areas = {} }
Dm = { interval = 30 }
Dh = { interval = 2, amount = 1 }
C9 = { interval = 5, targets = {}, equip = true }
if (not BU and not BU and (DG or false) or (C8 and Dp or (Dp or DG)) or (false or not Dp) and (false or not BU) and (not DG and C8 and (false and CD))) and not (not BU and not BU and (DG or false) or (C8 and Dp or (Dp or DG)) or (false or not Dp) and (false or not BU) and (not DG and C8 and (false and CD))) then
else
    C4 = { interval = 5, targets = {}, equip = true }
end
CX = { interval = 5 }
CQ = { interval = 5 }
CJ = { interval = 5 }
CC = { interval = 3, treadmill = nil }
Cy = { interval = 5 }
Ct = function(fs, ft)
    local generation
    local IO = fs.generation or 0
    fs.generation = IO + 1
    fs.stopped = false
    generation = fs.generation
    task.spawn(function()
        local IL_1
        while true do
            local IK = BN() and not fs.stopped and fs.generation == generation
            local IK_1
            if IK then
                IK_1, IL_1 = pcall(ft)
                if not IK_1 then
                    warn("[Ouroboros] loop error: " .. tostring(IL_1))
                end
                local IK_2 = not BN() or fs.stopped or fs.generation ~= generation
                if IK_2 then
                    break
                end
                task.wait(fs.interval)
                continue
            end
            break
        end
    end)
end
DF = fns.fn130
Dt = fns.fn878
TV_5 = fns.fn775
C6 = fns.fn974
Cz = fns.fn610
BM = fns.fn785
Ck = fns.fn356
BW = fns.fn146
CH = fns.fn739
Ca = fns.fn908
TV_6 = fns.fn152
if ((B7 or not Dn) and (BW or BW) or (B7 or not Dg or (Dn or Dn)) or (Dn or Dn) and (Dg and Dn) and (Dg and not Dg or (not Dn or Dn))) and ((not BW and BW and (not Dn or BW) or (Dg and BW or (BW or BW))) and ((Dn or B7) and (BW and B7) or (not Dg and not Dn or not Dn and Dn))) or not (((B7 or not Dn) and (BW or BW) or (B7 or not Dg or (Dn or Dn)) or (Dn or Dn) and (Dg and Dn) and (Dg and not Dg or (not Dn or Dn))) and ((not BW and BW and (not Dn or BW) or (Dg and BW or (BW or BW))) and ((Dn or B7) and (BW and B7) or (not Dg and not Dn or not Dn and Dn)))) then
    Ch = fns.fn1029
    BU = fns.fn1007
else
    BU = fns.fn1029
    Ch = fns.fn1007
end
CY = fn1186
BQ = fns.fn403
TV_3 = fn1422
DG = fns.fn508
CE = fns.fn61
DK = fn1344
C1 = fn1095
B6 = fns.fn15
Cf = fns.fn30
CP = function()
    local Lz, LA, LB, LC, LD
    LC = Dl(DC)
    local LE = not LC
    local LK = if LE then 1 else 0
    local LI = 115 * LK + 161 * (1 - LK)
    local LJ = 2396 * LK + 284 * (1 - LK)
    if not ((LI * 2239 + LJ * 3174 + LI * LJ) % 16777213 == 8137929) then
        LE = not BX(LC.PickUpBrainrot)
    end
    if LE then
        State.BrainrotStatus = "Pickup remote unavailable"
        return
    end
    if De() > 0 then
        Cf()
        return
    end
    if not Cz("BrainrotStatus") then
        return
    end
    local LE_1 = BL()
    Lz = BM()
    if not Lz then
        State.BrainrotStatus = string.format("No brainrots spawned on World %d yet", LE_1)
        return
    end
    local LF = Dp(Lz.Name)
    local LG = LF and LF:GetChildren()[1]
    LD = LG
    if not LD then
        State.BrainrotStatus = string.format("No brainrots spawned on World %d yet", LE_1)
        return
    end
    LB = CG(LD, Lz.Name, Lz.Map)
    if #LB == 0 then
        State.BrainrotStatus = "Brainrot position is missing"
        return
    end
    local LE_2 = LD:GetAttribute("brainrot") or "brainrot"
    LA = tostring(LE_2)
    Dd(function()
        for i, v in ipairs(LB) do
            local Lq = not BN() or Ds.stopped or not LD.Parent
            if Lq then
                break
            else
                Ce(v)
                Cd(v, 4)
                task.wait(0.4)
                local Lq_1 = C0()
                if Lq_1 and (Lq_1.Position - v).Magnitude <= 20 then
                    LC:PickUpBrainrot(LocalPlayer, { uid = LD.Name })
                    State.BrainrotStatus = string.format("Picked up %s from Area %d (World %d)", LA, Lz.Index, Lz.Map)
                    local Lq_2 = os.clock() + 2
                    while true do
                        local Lr_1 = BN() and De() == 0 and os.clock() < Lq_2
                        if Lr_1 then
                            task.wait(0.15)
                            continue
                        end
                        break
                    end
                    if De() > 0 then
                        break
                    end
                else
                    State.BrainrotStatus = "Could not reach " .. Lz.Name
                end
            end
        end
        Cw(nil)
    end)
    if De() > 0 then
        Cf()
    end
end
CS = fns.fn665
BV = fns.fn38
Cq = fn1088
BS = function()
    local Ml
    Ml = Dl(Dq)
    local Mm = not Ml or not BX(Ml.BuyTool)
    if Mm then
        State.DumbbellStatus = "Dumbbell remote unavailable"
        return
    end
    State.DumbbellStatus = Cq(C9, Dy(), "OwnTool", function(k1)
        Ml:BuyTool(LocalPlayer, k1)
    end, function(k5)
        Ml:EquipTool(LocalPlayer, k5)
    end, "dumbbell")
end
Cr = function()
    local Mo
    Mo = Dl(Dk)
    local Mp = not Mo
    local Mt = if Mp then 1 else 0
    local Mr = 1877 * Mt + 61 * (1 - Mt)
    local Ms = 3603 * Mt + 751 * (1 - Mt)
    if not ((Mr * 2037 + Ms * 1699 + Mr * Ms) % 16777213 == 16707777) then
        Mp = not BX(Mo.BuyAura)
    end
    if Mp then
        State.AuraStatus = "Aura remote unavailable"
        return
    end
    State.AuraStatus = Cq(C4, CV(), "OwnAura", function(li)
        Mo:BuyAura(LocalPlayer, li)
    end, function(lm)
        Mo:EquipAura(LocalPlayer, lm)
    end, "aura")
end
Dg = fns.fn462
CR = fns.fn608
Dn = fn1066
DE.SetTarget = function(l0)
    local MW
    MW = tonumber(tostring(l0):match("(%d+)"))
    DE.target = MW
    if not MW then
        State.WorldStatus = string.format("Staying on World %d", BL())
        return
    end
    task.spawn(function()
        local MR_1
        local MQ_1
        MQ_1, MR_1 = Cu(MW)
        if MQ_1 then
            State.WorldStatus = string.format("On World %d | the switch reset your walls", MW)
        else
            local MQ_2 = MR_1 or string.format("Could not reach World %d", MW)
            State.WorldStatus = MQ_2
        end
    end)
end
Dz.SetEnabled = fns.fn622
Dz.SetDelay = fn1420
Dz.SetLimit = fns.fn14
Ds.SetEnabled = fn1402
Ds.SetDelay = fns.fn687
Ds.SetAreas = fns.fn673
Dm.SetEnabled = fn1495
Dm.SetDelay = fns.fn922
Dh.SetEnabled = fns.fn98
Dh.SetAmount = fns.fn609
C9.SetEnabled = fn1397
C9.SetTargets = fns.fn319
C9.SetEquip = fns.fn454
C4.SetEnabled = fns.fn589
C4.SetTargets = fns.fn217
C4.SetEquip = fns.fn646
CX.SetEnabled = fns.fn561
CQ.SetEnabled = fns.fn993
CJ.SetEnabled = fn1269
CC.SetEnabled = fn1046
CC.SetTreadmill = fn1383
CQ.SetDelay = fns.fn1037
CJ.SetDelay = fns.fn89
CC.SetDelay = fns.fn800
Cy.SetEnabled = fn1147
B9.Track(fns.fn150)
local function TV_10()
    local Ta
    local Tk
    local onDiscord
    onDiscord = nil
    Ta = nil
    Tk = nil
    local S0, S1, S2, Library, Toggles, S6, S7, S8, S9, Tb, SaveManager, Td, Te, Tf, ThemeManager, Options, Ti, Tj, Tl, Tm
    Ta = "https://discord.gg/synapsex"
    Te = "https://ouroboros-hub-rbx.web.app/"
    local To = "v0.4"
    S1 = "https://rscripts.net/@Ouroboros"
    Tm = "+1 Strength to Grow Your Arm"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    CM(B9, Library)
    Td, S7 = B8()
    S8, Tl = Cn(Dy())
    S9, S0 = Cn(CV())
    Tb, S2 = DK()
    Tf = function(oH)
        local Oc = {}
        for i, v in ipairs(DD(oH)) do
            table.insert(Oc, "Zone " .. v)
        end
        return Oc
    end
    S6 = Tf(BL())
    Tj = { "Stay where I am" }
    local Tn = DN()
    local Ts = 1
    while Ts <= Tn do
        local Tt = Ts
        table.insert(Tj, "World " .. Tt)
        Ts += 1
    end
    Tk = function(oR, oS)
        local Ok = BX(setclipboard) and setclipboard
        local Ol = Ok
        if not Ol then
            local Ok_1 = BX(toclipboard) and toclipboard
            Ol = Ok_1 or nil
        end
        local Ok_2 = Ol
        if not Ok_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local Ol_1 = pcall(Ok_2, oR)
        if Ol_1 then
            Library:Notify(oS)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        Tk(Ta, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = Ta, Copyable = true }, "|", Tm, "|", To },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    Ti = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function Tn_2(o7)
        local DiscordGroup = o7:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    for k, v in Ti do
        if k ~= "Info" then
            Tn_2(v)
        end
    end
    local function To_1()
        local OI
        OI = nil
        local Label12, Label3, Label, OE, Label8, Label9, Label4, Label5, Label11, Label10, Label6, Label7, OO, Label2
        local WorldGroup = Ti.Main:AddLeftGroupbox("World", "globe")
        Label12 = WorldGroup:AddLabel(State.WorldStatus, true)
        WorldGroup:AddDivider()
        WorldGroup:AddDropdown("WorldTarget", {
            Text = "World",
            Values = Tj,
            Default = Tj[1],
            Multi = false,
            AllowNull = false,
            Tooltip = "Walls and brainrots only answer for the world your save is set to. Switching worlds resets every wall back to full health, and World 2 needs wall 12 cleared first.",
            Callback = function(pj)
                DE.SetTarget(pj)
            end
        })
        local WallsGroup = Ti.Main:AddLeftGroupbox("Walls", "hammer")
        Label11 = WallsGroup:AddLabel(State.WallStatus, true)
        WallsGroup:AddDivider()
        WallsGroup:AddToggle("AutoWalls", {
            Text = "Auto Break Walls",
            Default = false,
            Tooltip = "Punches the lowest wall that still has health. The server only accepts one hit every half second.",
            Callback = function(pp)
                Dz.SetEnabled(pp)
            end
        })
        WallsGroup:AddDropdown("WallZone", {
            Text = "Stop At Zone",
            Values = S6,
            Default = S6[#S6],
            Multi = false,
            AllowNull = false,
            Tooltip = "Walls past this zone are left alone. The list only shows the walls that exist on the world you are on.",
            Callback = function(pu)
                Dz.SetLimit(pu)
            end
        })
        WallsGroup:AddSlider("WallDelay", {
            Text = "Hit Delay",
            Default = 0.5,
            Min = 0.5,
            Max = 5,
            Rounding = 1,
            Suffix = "s",
            Callback = function(pw)
                Dz.SetDelay(pw)
            end
        })
        local BrainrotsGroup = Ti.Main:AddLeftGroupbox("Brainrots", "brain")
        Label10 = BrainrotsGroup:AddLabel(State.BrainrotStatus, true)
        BrainrotsGroup:AddDivider()
        BrainrotsGroup:AddToggle("AutoBrainrots", {
            Text = "Auto Collect Brainrots",
            Default = false,
            Tooltip = "Teleports onto a spawned brainrot and picks it up. The game carries you back to base, which also resets your walls.",
            Callback = function(pA)
                Ds.SetEnabled(pA)
            end
        })
        BrainrotsGroup:AddDropdown("BrainrotAreas", {
            Text = "Areas",
            Values = Td,
            Default = {},
            Multi = true,
            AllowNull = true,
            Tooltip = "Leave everything unticked to always take the highest area on your current world.",
            Callback = function(pF)
                Ds.SetAreas(pF, S7)
            end
        })
        BrainrotsGroup:AddSlider("BrainrotDelay", {
            Text = "Pickup Delay",
            Default = 1.5,
            Min = 0.5,
            Max = 15,
            Rounding = 1,
            Suffix = "s",
            Callback = function(pJ)
                Ds.SetDelay(pJ)
            end
        })
        local MoneyGroup = Ti.Main:AddLeftGroupbox("Money", "coins")
        Label9 = MoneyGroup:AddLabel(State.MoneyStatus, true)
        MoneyGroup:AddDivider()
        MoneyGroup:AddToggle("AutoMoney", {
            Text = "Auto Collect Money",
            Default = false,
            Tooltip = "Claims the income from every brainrot placed on your base.",
            Callback = function(pN)
                Dm.SetEnabled(pN)
            end
        })
        MoneyGroup:AddSlider("MoneyDelay", {
            Text = "Collect Delay",
            Default = 30,
            Min = 1,
            Max = 300,
            Rounding = 0,
            Suffix = "s",
            Callback = function(pR)
                Dm.SetDelay(pR)
            end
        })
        local PlacementGroup = Ti.Main:AddLeftGroupbox("Placement", "layout-grid")
        Label8 = PlacementGroup:AddLabel(State.PlaceStatus, true)
        PlacementGroup:AddDivider()
        PlacementGroup:AddToggle("AutoPlace", {
            Text = "Auto Place",
            Default = false,
            Tooltip = "Fills every empty base slot with the best brainrots sitting in your inventory.",
            Callback = function(pV)
                CQ.SetEnabled(pV)
            end
        })
        PlacementGroup:AddSlider("PlaceDelay", {
            Text = "Place Delay",
            Default = 5,
            Min = 1,
            Max = 60,
            Rounding = 0,
            Suffix = "s",
            Callback = function(pZ)
                CQ.SetDelay(pZ)
            end
        })
        Label7 = PlacementGroup:AddLabel(State.ReplaceStatus, true)
        PlacementGroup:AddToggle("AutoReplace", {
            Text = "Auto Replace Placed With Better",
            Default = false,
            Tooltip = "Swaps your weakest placed brainrot for a stronger one from your inventory, one slot per pass.",
            Callback = function(p1)
                CJ.SetEnabled(p1)
            end
        })
        PlacementGroup:AddSlider("ReplaceDelay", {
            Text = "Replace Delay",
            Default = 5,
            Min = 1,
            Max = 60,
            Rounding = 0,
            Suffix = "s",
            Callback = function(p5)
                CJ.SetDelay(p5)
            end
        })
        local TrainingGroup = Ti.Main:AddRightGroupbox("Training", "activity")
        Label6 = TrainingGroup:AddLabel(State.TrainStatus, true)
        TrainingGroup:AddDivider()
        TrainingGroup:AddToggle("AutoTrain", {
            Text = "Auto Train",
            Default = false,
            Tooltip = "Holds you on the chosen treadmill and keeps the running state alive so the server adds power every half second.",
            Callback = function(p9)
                CC.SetEnabled(p9)
            end
        })
        local OR = Tb[1] or ""
        TrainingGroup:AddDropdown("TrainArea", {
            Text = "Training Area",
            Values = Tb,
            Default = OR,
            Multi = false,
            AllowNull = true,
            Tooltip = "Treadmills you do not own still train you, just without their multiplier.",
            Callback = function(qe)
                CC.SetTreadmill(qe, S2)
            end
        })
        TrainingGroup:AddSlider("TrainDelay", {
            Text = "Refresh Delay",
            Default = 3,
            Min = 1,
            Max = 15,
            Rounding = 0,
            Suffix = "s",
            Callback = function(qi)
                CC.SetDelay(qi)
            end
        })
        local SpeedGroup = Ti.Main:AddRightGroupbox("Speed", "zap")
        Label5 = SpeedGroup:AddLabel(State.SpeedStatus, true)
        SpeedGroup:AddDivider()
        SpeedGroup:AddToggle("AutoSpeed", {
            Text = "Auto Upgrade Speed",
            Default = false,
            Tooltip = "Buys walk speed levels whenever you can afford them.",
            Callback = function(qm)
                Dh.SetEnabled(qm)
            end
        })
        SpeedGroup:AddSlider("SpeedAmount", {
            Text = "Levels Per Purchase",
            Default = 1,
            Min = 1,
            Max = 25,
            Rounding = 0,
            Callback = function(qq)
                Dh.SetAmount(qq)
            end
        })
        local DumbbellsGroup = Ti.Main:AddRightGroupbox("Dumbbells", "dumbbell")
        Label4 = DumbbellsGroup:AddLabel(State.DumbbellStatus, true)
        DumbbellsGroup:AddDivider()
        DumbbellsGroup:AddToggle("AutoDumbbells", {
            Text = "Auto Buy Dumbbells",
            Default = false,
            Tooltip = "Buys the strongest gold dumbbell you can afford. Robux dumbbells are skipped.",
            Callback = function(qu)
                C9.SetEnabled(qu)
            end
        })
        DumbbellsGroup:AddDropdown("DumbbellTargets", {
            Text = "Dumbbells",
            Values = S8,
            Default = {},
            Multi = true,
            AllowNull = true,
            Tooltip = "Leave everything unticked to buy every gold dumbbell in order.",
            Callback = function(qz)
                C9.SetTargets(qz, Tl)
            end
        })
        DumbbellsGroup:AddToggle("DumbbellEquip", {
            Text = "Equip Best Dumbbell",
            Default = true,
            Callback = function(qD)
                C9.SetEquip(qD)
            end
        })
        local AuraGroup = Ti.Main:AddRightGroupbox("Aura", "sparkles")
        Label3 = AuraGroup:AddLabel(State.AuraStatus, true)
        AuraGroup:AddDivider()
        AuraGroup:AddToggle("AutoAura", {
            Text = "Auto Buy Aura",
            Default = false,
            Tooltip = "Buys the strongest gold aura you can afford. Robux auras are skipped.",
            Callback = function(qH)
                C4.SetEnabled(qH)
            end
        })
        AuraGroup:AddDropdown("AuraTargets", {
            Text = "Auras",
            Values = S9,
            Default = {},
            Multi = true,
            AllowNull = true,
            Tooltip = "Leave everything unticked to buy every gold aura in order.",
            Callback = function(qM)
                C4.SetTargets(qM, S0)
            end
        })
        AuraGroup:AddToggle("AuraEquip", {
            Text = "Equip Best Aura",
            Default = true,
            Callback = function(qQ)
                C4.SetEquip(qQ)
            end
        })
        local FloorsGroup = Ti.Main:AddRightGroupbox("Floors", "building-2")
        Label2 = FloorsGroup:AddLabel(State.FloorStatus, true)
        FloorsGroup:AddDivider()
        FloorsGroup:AddToggle("AutoFloors", {
            Text = "Auto Unlock Floors",
            Default = false,
            Tooltip = "Buys the next placement slot on your plot whenever you can afford it, which is what opens the next floor.",
            Callback = function(qU)
                CX.SetEnabled(qU)
            end
        })
        local RebirthGroup = Ti.Main:AddRightGroupbox("Rebirth", "rotate-ccw")
        Label = RebirthGroup:AddLabel(State.RebirthStatus, true)
        RebirthGroup:AddDivider()
        RebirthGroup:AddToggle("AutoRebirth", {
            Text = "Auto Rebirth",
            Default = false,
            Tooltip = "Rebirths as soon as your power reaches the requirement.",
            Callback = function(q_)
                Cy.SetEnabled(q_)
            end
        })
        OO = nil
        OE = function()
            local Oo = BL()
            if Oo == OO then
                return
            end
            OO = Oo
            local Op = Tf(Oo)
            local WallZone = Options.WallZone
            local Or = WallZone and BX(WallZone.SetValues)
            if Or then
                WallZone:SetValues(Op)
                local Or_1 = tonumber(tostring(WallZone.Value):match("(%d+)"))
                local Os = DD(Oo)[1] or 1
                local Ot = not Or_1
                local Oy = if Ot then 1 else 0
                local Ow = 3122 * Oy + 2460 * (1 - Oy)
                local Ox = 874 * Oy + 3661 * (1 - Oy)
                if not ((Ow * 654 + Ox * 1432 + Ow * Ox) % 16777213 == 6021984) then
                    Ot = Or_1 < Os
                end
                if Ot then
                    WallZone:SetValue(Op[#Op])
                end
            end
            if DE.target == nil then
                State.WorldStatus = string.format("On World %d", Oo)
            end
        end
        OE()
        OI = task.spawn(function()
            while not Library.Unloaded do
                task.wait(0.4)
                pcall(OE)
                pcall(function()
                    Label12:SetText(State.WorldStatus)
                    Label11:SetText(State.WallStatus)
                    Label10:SetText(State.BrainrotStatus)
                    Label9:SetText(State.MoneyStatus)
                    Label5:SetText(State.SpeedStatus)
                    Label4:SetText(State.DumbbellStatus)
                    Label3:SetText(State.AuraStatus)
                    Label2:SetText(State.FloorStatus)
                    Label8:SetText(State.PlaceStatus)
                    Label7:SetText(State.ReplaceStatus)
                    Label6:SetText(State.TrainStatus)
                    Label:SetText(State.RebirthStatus)
                end)
            end
        end)
        B9.Track(function()
            if coroutine.status(OI) ~= "dead" then
                task.cancel(OI)
            end
        end)
    end
    To_1()
    local function Tn_3()
        local Pb
        local Pi
        local Pg
        local O8
        O8 = nil
        Pb = nil
        Pg = nil
        Pi = nil
        local O7, O9, Label, Pc, Pd, Pe, Label2, Label3, Pj
        O8 = function(rQ)
            return (tostring(rQ):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        Pg = function(rS, rT)
            return string.format('<font color="%s">%s</font>', rT, O8(rS))
        end
        O9 = function(rW, rX, rY)
            return string.format("<b>%s</b> %s %s", rW, Pg("-", "#5a6070"), Pg(rX, rY))
        end
        Pe = "#e8a34d"
        local Pk = {}
        local Pl = "#8b93a3"
        local Pm = "#6ec1ff"
        Pj = "#7fd47f"
        if not Dl(DC) then
            table.insert(Pk, "walls and brainrots")
        end
        if not Dl(Dx) then
            table.insert(Pk, "money")
        end
        if not Dl(Df) then
            table.insert(Pk, "speed")
        end
        if not Dl(Dq) then
            table.insert(Pk, "dumbbells")
        end
        if not Dl(Dk) then
            table.insert(Pk, "auras")
        end
        if not Dl(C2) then
            table.insert(Pk, "base")
        end
        if not Dl(C8) then
            table.insert(Pk, "rebirth")
        end
        local Pn = #Pk == 0 and "ready"
        local Po = Pn or "limited: " .. table.concat(Pk, ", ")
        Pd = "Unknown"
        pcall(function()
            local OU_1
            local OT_1
            if BX(identifyexecutor) then
                OU_1, OT_1 = identifyexecutor()
                local OV = OU_1 ~= ""
                local OW = type(OU_1) == "string" and OV
                if OW then
                    local OV_1 = type(OT_1) == "string" and OT_1 ~= "" and OU_1 .. " " .. OT_1
                    local OT_2 = OV_1
                    local O_ = if OT_2 then 1 else 0
                    local OY = 3334 * O_ + 2388 * (1 - O_)
                    local OZ = 1179 * O_ + 2858 * (1 - O_)
                    if not ((OY * 2175 + OZ * 2282 + OY * OZ) % 16777213 == 13872714) then
                        OT_2 = OU_1
                    end
                    Pd = OT_2
                end
            end
        end)
        Pi = os.clock()
        Pc = function()
            local O0 = math.floor(os.clock() - Pi)
            if O0 < 60 then
                return O0 .. "s"
            elseif O0 < 3600 then
                return string.format("%dm %ds", O0 // 60, O0 % 60)
            else
                return string.format("%dh %dm", O0 // 3600, O0 % 3600 // 60)
            end
        end
        local UserGroup = Ti.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(O9("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Pj), true)
        UserGroup:AddLabel(O9("UserId", tostring(LocalPlayer.UserId), Pm), true)
        UserGroup:AddLabel(O9("Executor", Pd .. "  " .. Po, Pj), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(O9("Session", Pc(), Pe), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                Tk(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                Tk("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = Ti.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(O9("Game", Tm, Pm), true)
        Label2 = SessionGroup:AddLabel(O9("Players", "0/0", Pj), true)
        O7 = tostring(game.JobId)
        local Pm_1 = #O7 > 18 and string.sub(O7, 1, 18) .. "..."
        local Pn_2 = Pm_1 or O7
        SessionGroup:AddLabel(O9("Job", Pn_2, Pl), true)
        Label = SessionGroup:AddLabel(O9("Ping", "0 ms", Pe), true)
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
                Tk(O7, "Copied Job ID")
            end
        })
        Pb = task.spawn(function()
            local O3_1
            local O2_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(O9("Session", Pc(), Pe))
                Label2:SetText(O9("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Pj))
                O2_1, O3_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local O2_2 = O2_1 and O3_1 .. " ms" or "n/a"
                Label:SetText(O9("Ping", O2_2, Pe))
            end
        end)
        B9.Track(function()
            if coroutine.status(Pb) ~= "dead" then
                task.cancel(Pb)
            end
        end)
        local SocialsGroup = Ti.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                Tk(S1, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                Tk(Te, "Copied website link")
            end
        })
    end
    Tn_3()
    local function Tn_4()
        local tn
        local tl
        local tm
        local tk
        local MovementGroup = Ti.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = Ti.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        local tj = {}
        tn = {}
        tm = {}
        tk = {}
        tl = {}
        local function to()
            for k, v in tk do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(tk)
        end
        local function ts()
            for k, v in tl do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(tl)
        end
        local function tw()
            for k, v in tm do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(tm)
        end
        local function tA(tB)
            if not tB:IsA("ProximityPrompt") then
                return
            end
            if tn[tB] == nil then
                tn[tB] = {
                    HoldDuration = tB.HoldDuration,
                    MaxActivationDistance = tB.MaxActivationDistance,
                    RequiresLineOfSight = tB.RequiresLineOfSight
                }
            end
            tB.HoldDuration = 0
            tB.MaxActivationDistance = 50
            tB.RequiresLineOfSight = false
        end
        local function tD()
            for k, v in tn do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(tn)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                tw()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                ts()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                to()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                    pcall(tA, v)
                end
            else
                tD()
            end
        end)
        table.insert(tj, Workspace.DescendantAdded:Connect(function(tW)
            if Toggles.InstantProximityPrompt.Value then
                tA(tW)
            end
        end))
        table.insert(tj, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if tk[v] == nil then
                        tk[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(tj, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Qg = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and Qg then
                Qg:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(tj, RunService.RenderStepped:Connect(function(uh)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Qm = Character and Character:FindFirstChildOfClass("Humanoid")
            local Qn = Character
            if Qn then
                Qn = Character:FindFirstChild("HumanoidRootPart")
            end
            local Ql_1 = Qn
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and Qm then
                if tl[Qm] == nil then
                    tl[Qm] = Qm.WalkSpeed
                end
                Qm.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and Ql_1 and Qm and CurrentCamera then
                if tm[Qm] == nil then
                    tm[Qm] = Qm.PlatformStand
                end
                Qm.PlatformStand = true
                local Qn_4 = Vector3.zero
                local Qt = if not UserInputService:GetFocusedTextBox() then 1 else 0
                if Qt == 1 then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        Qn_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        Qn_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        Qn_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        Qn_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        Qn_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        Qn_4 -= Vector3.new(0, 1, 0)
                    end
                end
                Ql_1.AssemblyLinearVelocity = Vector3.zero
                if Qn_4.Magnitude > 0 then
                    Ql_1.CFrame = Ql_1.CFrame + Qn_4.Unit * Options.FlySpeed.Value * uh
                end
            end
        end))
        B9.Track(function()
            for k, v in tj do
                v:Disconnect()
            end
            to()
            ts()
            tw()
            tD()
        end)
    end
    Tn_4()
    local function Tn_5()
        local RD, RE, RF, RG, RH, RI, RJ, RK, Label, RM, RN, RO, RP, RQ
        RM = {}
        RG = {}
        RD = nil
        RO = 0
        RI = false
        RE = 0
        RJ = os.clock()
        local MenuGroup = Ti.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        RP = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local QC = not CurrentCamera or not BX(VirtualUser.CaptureController) or not BX(VirtualUser.ClickButton2)
            if QC then
                return false
            end
            local QC_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not QC_1 then
                return false
            end
            RE += 1
            RJ = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. RE)
            end)
            return true
        end
        RK = function(u0)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not u0)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not u0
                end
            end)
            if not u0 then
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
        RH = function(vg)
            local QI = vg.ClassName == "ParticleEmitter" or vg.ClassName == "Trail" or vg.ClassName == "Smoke" or vg.ClassName == "Fire" or vg.ClassName == "Sparkles" or vg.ClassName == "Explosion"
            local QM = if QI then 1 else 0
            local QK = 3308 * QM + 2916 * (1 - QM)
            local QL = 108 * QM + 765 * (1 - QM)
            if not ((QK * 182 + QL * 1573 + QK * QL) % 16777213 == 1129204) then
                QI = vg.ClassName == "Beam"
            end
            if QI then
                if RM[vg] == nil then
                    RM[vg] = vg.Enabled
                end
                pcall(function()
                    vg.Enabled = false
                end)
            end
        end
        RF = function()
            for k, v in RM do
                local QU = k
                local QW = v
                if QU.Parent then
                    pcall(function()
                        QU.Enabled = QW
                    end)
                end
            end
            table.clear(RM)
            if RD then
                pcall(function()
                    settings().Rendering.QualityLevel = RD.Quality
                end)
                Lighting.GlobalShadows = RD.Shadows
                Lighting.FogEnd = RD.Fog
                RD = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(vv)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not vv)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(vA)
                if vA then
                    if not RD then
                        RD = {
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
                        pcall(RH, v)
                    end
                else
                    RF()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        RK(true)
        local ScriptGroup = Ti.Settings:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            RK(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            RK(true)
        end
        table.insert(RG, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                RP()
            end
        end))
        table.insert(RG, Workspace.DescendantAdded:Connect(function(vT)
            if Toggles.FpsBoost.Value then
                RH(vT)
            end
        end))
        RQ = function(vX)
            if RI or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            RI = true
            local Rb = RO
            local Rc_1 = pcall(function()
                if vX then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not Rc_1 then
                RI = false
                if not vX and Rb == RO then
                    task.delay(1.5, function()
                        if Rb == RO then
                            RQ(true)
                        end
                    end)
                end
            end
        end
        table.insert(RG, TeleportService.TeleportInitFailed:Connect(function(we)
            local Rj
            if we == LocalPlayer and RI then
                RI = false
                Rj = RO
                task.delay(3, function()
                    if Rj == RO then
                        RQ(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local Ro = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            local Ro_1 = not Ro
            local Rp = Library.Unloaded
            local Rt = if Rp then 1 else 0
            local Rr = 1079 * Rt + 2603 * (1 - Rt)
            local Rs = 1349 * Rt + 3544 * (1 - Rt)
            if not ((Rr * 479 + Rs * 2689 + Rr * Rs) % 16777213 == 5599873) then
                Rp = Ro_1
            end
            if Rp then
                return
            end
            table.insert(RG, Ro.ChildAdded:Connect(function(wt)
                if wt.Name == "ErrorPrompt" then
                    RQ(false)
                end
            end))
        end)
        RN = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    RK(true)
                end
                local Ru = Toggles.AntiAfk.Value and os.clock() - RJ >= 60
                if Ru then
                    RP()
                end
                task.wait(1)
            end
        end)
        B9.Track(function()
            RO += 1
            for k, v in RG do
                v:Disconnect()
            end
            pcall(task.cancel, RN)
            RK(false)
            RF()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    Tn_5()
    local function Tn_6()
        local SS, ST, SU, SV
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(Ti.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/StrengthArm")
        local SW = SaveManager:BuildConfigSection(Ti.Settings)
        SU = function(wU, wV)
            local RY_1 = (wU == "Toggle" and Toggles or Options)[wV]
            local RX_2 = type(RY_1) == "table" and RY_1.Type == wU
            return RX_2 and RY_1 or nil
        end
        SS = function(w3, w4)
            local Type = w4.Type
            if Type == "Toggle" then
                return { idx = w3, type = "Toggle", value = w4.Value == true }
            elseif Type == "Slider" then
                return { idx = w3, type = "Slider", value = tostring(w4.Value) }
            elseif Type == "Dropdown" then
                return { idx = w3, type = "Dropdown", multi = w4.Multi == true, value = w4.Value }
            elseif Type == "Input" then
                local R1 = w4.Value or ""
                return { idx = w3, type = "Input", text = tostring(R1) }
            elseif Type == "ColorPicker" then
                return { idx = w3, type = "ColorPicker", value = w4.Value:ToHex(), transparency = w4.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = w3,
                    type = "KeyPicker",
                    mode = w4.Mode,
                    key = w4.Value,
                    modifiers = w4.Modifiers,
                    toggled = w4.Toggled
                }
            else
                return nil
            end
        end
        SV = function()
            local Sa = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local Sb = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if Sb then
                        local Sb_1 = SS(k, v)
                        if Sb_1 then
                            Sa[#Sa + 1] = Sb_1
                        end
                    end
                end
            end
            table.sort(Sa, function(xe, xf)
                if xe.type ~= xf.type then
                    return xe.type < xf.type
                end
                return xe.idx < xf.idx
            end)
            return { objects = Sa }
        end
        ST = function(xh)
            local Su
            Su = nil
            local Sv = type(xh) ~= "table" or type(xh.idx) ~= "string" or type(xh.type) ~= "string"
            local Sz = if Sv then 1 else 0
            local Sx = 2684 * Sz + 3930 * (1 - Sz)
            local Sy = 1517 * Sz + 3281 * (1 - Sz)
            if not ((Sx * 1180 + Sy * 713 + Sx * Sy) % 16777213 == 8320369) then
                Sv = SaveManager.Ignore[xh.idx]
            end
            if Sv then
                return false
            end
            Su = SU(xh.type, xh.idx)
            if not Su then
                return false
            end
            local Sv_1 = pcall(function()
                if xh.type == "Input" then
                    if type(xh.text) ~= "string" then
                        return
                    end
                    Su:SetValue(xh.text)
                elseif xh.type == "ColorPicker" then
                    Su:SetValueRGB(Color3.fromHex(xh.value), xh.transparency)
                elseif xh.type == "KeyPicker" then
                    Su:SetValue({ xh.key, xh.mode, xh.modifiers })
                    if xh.mode == "Toggle" and xh.toggled ~= nil then
                        Su.Toggled = xh.toggled
                        Su:Update()
                    end
                else
                    Su:SetValue(xh.value)
                end
            end)
            return Sv_1
        end
        SW:AddDivider()
        SW:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        SW:AddButton("Export Config to Clipboard", function()
            local SB_1
            local SA_1
            SA_1, SB_1 = pcall(HttpService.JSONEncode, HttpService, SV())
            if SA_1 then
                local SA_2 = BX(setclipboard) and setclipboard
                local SC = SA_2
                if not SC then
                    local SA_3 = BX(toclipboard) and toclipboard
                    SC = SA_3 or nil
                end
                local SA_4 = SC
                local SC_1 = type(SA_4) == "function" and pcall(SA_4, SB_1)
                if SC_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        SW:AddButton("Import Config from Clipboard Text", function()
            local SH_1
            local SF = Options.SaveManager_ImportSource.Value
            local SF_1
            local SL = if SF then 1 else 0
            local SJ = 49 * SL + 1705 * (1 - SL)
            local SK = 4034 * SL + 627 * (1 - SL)
            if not ((SJ * 2900 + SK * 494 + SJ * SK) % 16777213 == 2332562) then
                SF = ""
            end
            local SG = tostring(SF):match("^%s*(.-)%s*$")
            if SG == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #SG > 262144 then
                Library:Notify("That config is too large")
                return
            end
            SF_1, SH_1 = pcall(HttpService.JSONDecode, HttpService, SG)
            local SG_1 = not SF_1
            local SL_1 = if SG_1 then 1 else 0
            local SJ_1 = 736 * SL_1 + 2500 * (1 - SL_1)
            local SK_1 = 1964 * SL_1 + 3269 * (1 - SL_1)
            if not ((SJ_1 * 2082 + SK_1 * 128 + SJ_1 * SK_1) % 16777213 == 3229248) then
                SG_1 = type(SH_1) ~= "table"
            end
            if not SG_1 then
                SG_1 = type(SH_1.objects) ~= "table"
            end
            if SG_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #SH_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local SF_2 = 0
            for i, v in ipairs(SH_1.objects) do
                if ST(v) then
                    SF_2 += 1
                end
            end
            if SF_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local SH_2 = SF_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(SF_2, SH_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.WorldTarget then
            DE.SetTarget(Options.WorldTarget.Value)
        end
        if Options.WallDelay then
            Dz.SetDelay(Options.WallDelay.Value)
        end
        if Options.WallZone then
            Dz.SetLimit(Options.WallZone.Value)
        end
        if Options.BrainrotDelay then
            Ds.SetDelay(Options.BrainrotDelay.Value)
        end
        if Options.BrainrotAreas then
            Ds.SetAreas(Options.BrainrotAreas.Value, S7)
        end
        if Options.MoneyDelay then
            Dm.SetDelay(Options.MoneyDelay.Value)
        end
        if Options.SpeedAmount then
            Dh.SetAmount(Options.SpeedAmount.Value)
        end
        if Options.DumbbellTargets then
            C9.SetTargets(Options.DumbbellTargets.Value, Tl)
        end
        if Toggles.DumbbellEquip then
            C9.SetEquip(Toggles.DumbbellEquip.Value)
        end
        if Options.AuraTargets then
            C4.SetTargets(Options.AuraTargets.Value, S0)
        end
        if Toggles.AuraEquip then
            C4.SetEquip(Toggles.AuraEquip.Value)
        end
        if Toggles.AutoWalls then
            Dz.SetEnabled(Toggles.AutoWalls.Value)
        end
        if Toggles.AutoBrainrots then
            Ds.SetEnabled(Toggles.AutoBrainrots.Value)
        end
        if Toggles.AutoMoney then
            Dm.SetEnabled(Toggles.AutoMoney.Value)
        end
        if Toggles.AutoSpeed then
            Dh.SetEnabled(Toggles.AutoSpeed.Value)
        end
        if Toggles.AutoDumbbells then
            C9.SetEnabled(Toggles.AutoDumbbells.Value)
        end
        if Toggles.AutoAura then
            C4.SetEnabled(Toggles.AutoAura.Value)
        end
        if Toggles.AutoFloors then
            CX.SetEnabled(Toggles.AutoFloors.Value)
        end
        if Options.PlaceDelay then
            CQ.SetDelay(Options.PlaceDelay.Value)
        end
        if Options.ReplaceDelay then
            CJ.SetDelay(Options.ReplaceDelay.Value)
        end
        if Options.TrainDelay then
            CC.SetDelay(Options.TrainDelay.Value)
        end
        if Options.TrainArea then
            CC.SetTreadmill(Options.TrainArea.Value, S2)
        end
        if Toggles.AutoPlace then
            CQ.SetEnabled(Toggles.AutoPlace.Value)
        end
        if Toggles.AutoReplace then
            CJ.SetEnabled(Toggles.AutoReplace.Value)
        end
        if Toggles.AutoTrain then
            CC.SetEnabled(Toggles.AutoTrain.Value)
        end
        if Toggles.AutoRebirth then
            Cy.SetEnabled(Toggles.AutoRebirth.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    Tn_6()
end
TV_10()
