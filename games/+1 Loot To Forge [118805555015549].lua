local fns = {}
local Pw_2, Pw_4, Pw_5, Pw_6, Pw_8, Pw_10, Pw_11, Pw_12, Pw_14, Pw_16, Pw_17, Pw_18, Pw_20, Pw_22, Pw_23, Pw_25, Pw_26, Pw_28, Pw_29, Pw_31, Pw_32, Pw_34, Pw_35, Pw_37, Pw_54
Pw_2 = nil
Pw_4 = nil
Pw_5 = nil
Pw_6 = nil
Pw_8 = nil
Pw_10 = nil
Pw_11 = nil
Pw_12 = nil
Pw_14 = nil
Pw_16 = nil
Pw_17 = nil
Pw_18 = nil
Pw_20 = nil
Pw_22 = nil
Pw_23 = nil
Pw_25 = nil
Pw_26 = nil
Pw_28 = nil
Pw_29 = nil
Pw_31 = nil
Pw_32 = nil
Pw_34 = nil
Pw_35 = nil
Pw_37 = nil
local AD
local BD
local B1
local A1
local BJ
local Cq
local AJ
local B7
local Aq
local A7
local Bk
local Cw
local AP
local Cd
local Aw
local Bw
local State
local Bd
local BC
local AC
local Bj
local B0
local A0
local Aj
local Cp
local BI
local Bp
local Ap
local A6
local BO
local Cv
local AI
local Av
local Bc
local CoreGui
local Cc
local AU
local BB
local AB
local Ci
local A_
local Co
local LocalPlayer
local AH
local Ao
local A5
local AN
local Bu
local Cb
local Au
local Bb
local BT
local Ch
local AA
local Bh
local BZ
local AZ
local Cn
local AG
local Bn
local An
local BM
local Ct
local AM
local At
local Ba
local Bz
local Cg
local Az
local Ag
local BF
local AF
local Bm
local B3
local Am
local BL
local Cs
local AL
local Bs
local As
function fns.fn2()
    for k in pairs(Cq) do
        Pw_37(k)
    end
    table.clear(Pw_25)
    table.clear(A1)
end
function fns.fn29()
    if State.AutoDungeon or State.AutoTower then
        if not Cq.Kill then
            B1("Kill", Pw_10, A_)
        end
    else
        Pw_37("Kill")
    end
end
function fns.fn39()
    return math.clamp(State.DungeonStage, 1, AZ)
end
function fns.fn43(ir)
    local Im_1
    local Il = Az and type(Az.GetPower) == "function"
    local Il_1
    if Il then
        Il_1, Im_1 = pcall(Az.GetPower, ir)
        if Il_1 then
            local Il_2 = tonumber(Im_1) or 0
            return Il_2
        end
        return 0
    end
    return 0
end
function fns.fn94()
    if not AN() then
        return false, "Rebirth remote is unavailable"
    end
    local Rebirths = State.Rebirths
    Pw_11()
    return true, State.Rebirths > Rebirths and "Rebirth requested" or "Rebirth requirements are not met"
end
function fns.fn95(bX)
    local D6 = (tonumber(bX))
    local Ec = if D6 then 1 else 0
    local Ea = 799 * Ec + 1754 * (1 - Ec)
    local Eb = 2045 * Ec + 1464 * (1 - Ec)
    if not ((Ea * 2406 + Eb * 531 + Ea * Eb) % 16777213 == 4642244) then
        D6 = 0
    end
    bX = D6
    local D6_1 = 1
    local D7 = { "", "K", "M", "B", "T", "Qa", "Qi" }
    while true do
        local D8 = math.abs(bX) >= 1000 and D6_1 < #D7
        if D8 then
            bX /= 1000
            D6_1 += 1
            continue
        end
        break
    end
    if D6_1 == 1 then
        return string.format("%d", bX)
    end
    return string.format("%.2f%s", bX, D7[D6_1])
end
function fns.fn98()
    local EE_1
    local ED = not Bh or type(Bh.GetMaxRound) ~= "function"
    local ED_1
    if ED then
        return 0
    end
    ED_1, EE_1 = pcall(Bh.GetMaxRound)
    local EF = ED_1 and tonumber(EE_1)
    return EF or 0
end
function fns.fn116(lN)
    State.AutoDungeon = lN == true
    if State.AutoDungeon then
        B1("Dungeon", Cb, AF)
    else
        Pw_37("Dungeon")
        BO("Idle")
    end
    Aq()
end
function fns.fn123()
    local KT = not Bw()
    local KX = if KT then 1 else 0
    local KV = 3934 * KX + 2706 * (1 - KX)
    local KW = 3379 * KX + 2484 * (1 - KX)
    if not ((KV * 1964 + KW * 2983 + KV * KW) % 16777213 == 14321706) then
        KT = type(Bh.ExitDungeon) ~= "function"
    end
    if KT then
        return false, "Tower data is unavailable"
    elseif not Bj() then
        return false, "You are not in a tower run"
    elseif not pcall(Bh.ExitDungeon) then
        return false, "Exit request failed"
    else
        return true, "Left the tower"
    end
end
function fns.fn144()
    local m4, m5 = AL()
    State.ForgeStatus = m5
    return m4, m5
end
function fns.fn154(m1)
    local Ks = (tonumber(m1))
    local Kw = if Ks then 1 else 0
    local Ku = 3880 * Kw + 1620 * (1 - Kw)
    local Kv = 2276 * Kw + 658 * (1 - Kw)
    if not ((Ku * 1555 + Kv * 308 + Ku * Kv) % 16777213 == 15565288) then
        Ks = 0
    end
    State.ForgeKeep = math.max(0, math.floor(Ks))
end
function fns.fn175(ix)
    local Iq_1
    if State.ForgeRarityCount == 0 then
        return true
    end
    local Io = Az
    local Io_1
    local Ip
    if Io then
        Io = type(Az.GetRarity) == "function"
    end
    if Io then
        Io_1, Iq_1 = pcall(Az.GetRarity, ix)
        if Io_1 then
            Ip = Iq_1
        end
    end
    local Io_2 = Pw_6(Ip)
    return Io_2 ~= nil and State.ForgeRarities[Io_2] == true
end
function fns.fn202(m_)
    State.ForgeBestFirst = m_ == true
end
function fns.fn203(nk)
    State.AutoSell = nk == true
    if State.AutoSell then
        B1("Sell", Bp, Au)
    else
        Pw_37("Sell")
    end
end
function fns.fn230()
    local Id = {}
    for i, v in ipairs(BB) do
        Id[i] = v.Label
    end
    return Id
end
function fns.fn239(l1)
    State.AutoTower = l1 == true
    if State.AutoTower then
        B1("Tower", Ch, Cg)
    else
        Pw_37("Tower")
        Bu("Idle")
    end
    Aq()
end
function fns.fn250(mU)
    State.ForgeTarget = Pw_22(mU).Key
end
function fns.fn264(g5)
    local Hj_1
    local Hh = not AC or not AC[g5.Name]
    local Hh_2
    if Hh then
        return false
    elseif State.CollectRarityCount == 0 then
        return true
    else
        local Hh_1 = Az
        local Hi
        if Hh_1 then
            Hh_1 = type(Az.GetRarity) == "function"
        end
        if Hh_1 then
            Hh_2, Hj_1 = pcall(Az.GetRarity, g5.Name)
            if Hh_2 then
                Hi = Hj_1
            end
        end
        local Hh_3 = Pw_6(Hi)
        return Hh_3 ~= nil and State.CollectRarities[Hh_3] == true
    end
end
function fns.fn269(dc)
    local E1 = tonumber(dc.Name:match("Stage_(%d+)"))
    local E2 = E1 and dc:IsA("BasePart")
    if E2 then
        A5[E1] = { position = dc.Position, height = dc.Size.Y }
    end
end
function fns.fn287()
    local IW = not BC or AU()
    if IW then
        return
    end
    local IW_1 = 1 / math.clamp(State.ClickRate, 1, 20)
    local IX = os.clock()
    if IX - Bk < IW_1 then
        return
    end
    Bk = IX
    local IW_2 = pcall(function()
        BC:FireServer()
    end)
    if IW_2 then
        State.Clicks = State.Clicks + 1
        LocalPlayer:SetAttribute("LastTrainTick", tick())
    end
end
function fns.fn292(iI)
    local Iz_1
    local Ix_1, Ix_4
    local Iw = not A6 or type(A6.GetData) ~= "function"
    local Iw_1
    if Iw then
        return nil, "Backpack data is unavailable"
    end
    Iw_1, Ix_1 = pcall(A6.GetData)
    local Iy = not Iw_1 or type(Ix_1) ~= "table" or type(Ix_1.have) ~= "table"
    local Iy_2
    if Iy then
        return nil, "Backpack data is unavailable"
    end
    local Iw_2 = {}
    for k, v in pairs(Ix_1.have) do
        local Ix_2 = type(v) == "table" and v.Type == "Ore" and B0(v.ID)
        if Ix_2 then
            local Ix_3 = tonumber(v.Number) or 0
            local Iy_1 = Ix_3 - State.ForgeKeep
            if Iy_1 > 0 then
                table.insert(Iw_2, { UUID = k, ID = v.ID, Number = Iy_1, Power = Cw(v.ID) })
            end
        end
    end
    if #Iw_2 == 0 then
        return nil, "No ore matches your forge filter"
    end
    table.sort(Iw_2, function(iW, iX)
        if iW.Power == iX.Power then
            return iW.Number > iX.Number
        elseif State.ForgeBestFirst then
            return iW.Power > iX.Power
        else
            return iW.Power < iX.Power
        end
    end)
    Iz_1, Iy_2, Ix_4 = {}, 0, 0
    for i, v in ipairs(Iw_2) do
        if Iy_2 >= iI or Ix_4 >= AD then
            break
        end
        local Iw_4 = math.min(v.Number, iI - Iy_2)
        if Iw_4 > 0 then
            Iz_1[v.UUID] = Iw_4
            Iy_2 += Iw_4
            Ix_4 += 1
        end
    end
    if Iy_2 < AB then
        return nil, string.format("Only %d usable ore, need %d", Iy_2, AB)
    end
    return Iz_1, Iy_2
end
function fns.fn296(lh)
    local JT = Cq[lh]
    if not JT then
        return
    end
    Cq[lh] = nil
    if coroutine.status(JT) ~= "dead" then
        pcall(task.cancel, JT)
    end
end
function fns.fn332(mO)
    State.AutoForge = mO == true
    if State.AutoForge then
        B1("Forge", AJ, Pw_26)
    else
        Pw_37("Forge")
        State.ForgeStatus = "Idle"
    end
end
function fns.fn337(ec)
    local FN_1
    local FL = ec ~= ""
    local FM = type(ec) == "string" and FL
    local FM_2
    if FM then
        return ec
    end
    local FL_1 = tonumber(ec)
    if not FL_1 then
        return nil
    end
    local FM_1 = At and type(At.GetRarityByLevel) == "function"
    if FM_1 then
        FM_2, FN_1 = pcall(At.GetRarityByLevel, FL_1)
        local FO = FM_2 and type(FN_1) == "string"
        if FO then
            return FN_1
        end
        return Pw_23[FL_1]
    end
    return Pw_23[FL_1]
end
function fns.fn340(mM)
    local Kn = tonumber(mM) or 6
    State.ClickRate = math.clamp(math.floor(Kn), 1, 20)
end
function fns.fn341(Y)
    return type(Y) == "function"
end
function fns.fn355(l_)
    State.DungeonForceKill = l_ == true
end
function fns.fn380()
    local EQ_1
    local EP_1
    if State.PackBlocked then
        return true
    end
    EP_1, EQ_1 = Pw_5()
    if not EP_1 or not EQ_1 or EQ_1 <= 0 then
        return false
    end
    return EP_1 >= EQ_1
end
function fns.fn434(m8)
    State.AutoTrain = m8 == true
    if State.AutoTrain then
        B1("Train", Pw_29, Bm)
    else
        Pw_37("Train")
    end
end
function fns.fn442()
    if not BF then
        return false
    end
    LocalPlayer:SetAttribute("StageID", nil)
    local Gw = pcall(function()
        BF:Fire(true)
    end)
    if not Gw then
        return false
    end
    State.PackBlocked = false
    State.Cycles = State.Cycles + 1
    return true
end
function fns.fn449()
    local Hc_1
    local Hb_1
    local Hg = if not Bw() then 1 else 0
    if Hg == 1 then
        Bu("Tower data unavailable")
        return
    end
    if Bj() then
        local Ha_1 = LocalPlayer:GetAttribute("CurrentRound") or "?"
        Bu("Running round " .. tostring(Ha_1))
        return
    end
    if AU() then
        Bu("Waiting for respawn")
        return
    end
    local Ha_2 = AI()
    Bu("Entering round " .. Ha_2)
    Hb_1, Hc_1 = pcall(Bh.TryIntoDungeon, Ha_2)
    if not Hb_1 then
        Bu("Tower entry failed")
        return
    end
    if Hc_1 then
        State.Runs = State.Runs + 1
        Bu("Entered round " .. Ha_2)
    else
        Bu("Server refused round " .. Ha_2)
    end
end
function fns.fn513()
    local Jc_1
    local Jb_1, Jb_3, Jb_4
    if not AA() then
        return false
    end
    Jb_1, Jc_1 = pcall(Pw_28.GetData)
    local Jd = not Jb_1 or type(Jc_1) ~= "table" or type(Jc_1.OrePack) ~= "table"
    local Jd_1, Jd_2
    if Jd then
        return false
    end
    local Jb_2 = tonumber(Jc_1.OrePack.Level) or 0
    Jb_3, Jd_1 = pcall(Cp.CheckOrePackIsMax, Jb_2)
    if Jb_3 and Jd_1 then
        return false
    end
    Jb_4, Jd_2 = pcall(Cp.GetOrePackPrice, Jb_2 + 1)
    local Jc_3 = Jb_4 and tonumber(Jd_2)
    local Jd_3 = Jc_3 or nil
    local Jb_6 = not Jd_3 or Pw_20("coin") < Jd_3
    if Jb_6 then
        return false
    elseif pcall(Pw_28.UpOrePack) then
        State.Upgrades = State.Upgrades + 1
        return true
    else
        return false
    end
end
function fns.fn515()
    local G6_1
    if State.TowerInOrder then
        return math.clamp(Pw_35() + 1, 1, Bn)
    end
    local G4 = math.clamp(State.TowerRound, 1, Bn)
    local G5 = Bh and type(Bh.CheckCanUnlock) == "function"
    local G5_1
    if G5 then
        G5_1, G6_1 = pcall(Bh.CheckCanUnlock, G4)
        if G5_1 and G6_1 == false then
            G4 = math.clamp(Pw_35() + 1, 1, Bn)
        end
    end
    return G4
end
function fns.fn549()
    local Gp = A6 ~= nil and type(A6.TrySellItem) == "function"
    return Gp
end
function fns.fn567(V)
    local Dy = typeof(cloneref) == "function" and typeof(V) == "Instance"
    if Dy then
        return cloneref(V)
    end
    return V
end
function fns.fn581()
    return Pw_14 ~= nil
end
function fns.fn582()
    return string.format("Rebirth %d | Level %d | Coins %s | Tickets %d | Sold %d", Pw_20("rebirth"), Pw_20("level"), Bd(Pw_20("coin")), AH(), State.Sold)
end
function fns.fn587()
    local Gr = {}
    local Gv = if not BJ() then 1 else 0
    if Gv == 1 then
        table.insert(Gr, "stage map")
    end
    if not Bw() then
        table.insert(Gr, "tower data")
    end
    local Gv_1 = if not Pw_17() then 1 else 0
    if Gv_1 == 1 then
        table.insert(Gr, "enemy hit event")
    end
    if not Pw_31() then
        table.insert(Gr, "fireproximityprompt")
    end
    if not AN() then
        table.insert(Gr, "rebirth remote")
    end
    if not AA() then
        table.insert(Gr, "upgrade data")
    end
    if not An() then
        table.insert(Gr, "train remote")
    end
    if not Bs then
        table.insert(Gr, "forge remote")
    end
    if not Ct() then
        table.insert(Gr, "backpack data")
    end
    return Gr
end
function fns.fn610(b8)
    local Eco = LocalPlayer:FindFirstChild("Eco")
    local Er = Eco and Eco:FindFirstChild(b8)
    local Eq_1 = Er
    local Ev = if Eq_1 then 1 else 0
    local Et = 2901 * Ev + 2236 * (1 - Ev)
    local Eu = 1271 * Ev + 2423 * (1 - Ev)
    if not ((Et * 3343 + Eu * 3384 + Et * Eu) % 16777213 == 909065) then
        Eq_1 = nil
    end
    local Er_1 = Eq_1
    if Eq_1 then
        Eq_1 = tonumber(Er_1.Value)
    end
    return Eq_1 or 0
end
function fns.fn629()
    return Pw_23
end
function fns.fn669(hS)
    for i, v in ipairs(BB) do
        if v.Key == hS then
            return v
        end
    end
    return BB[2]
end
function fns.fn670()
    return require(Pw_34.UpgradeData)
end
function fns.fn704(mb)
    local Kd = Pw_32(mb)
    local Kf = Kd or 1
    State.TowerRound = math.clamp(Kf, 1, Bn)
end
function fns.fn705(dz)
    local Fl = Pw_14 and Pw_14:FindFirstChild("Stage_" .. dz)
    local Fm = Fl or nil
    local Fl_1 = Fm
    if Fm then
        Fm = Fl_1:IsA("BasePart")
    end
    if Fm then
        AP(Fl_1)
        return Fl_1.Position, Fl_1.Size.Y, true
    end
    local Fl_2 = Co(dz)
    if Fl_2 then
        return Fl_2, 47, false
    end
    local Fl_3 = A5[dz]
    if Fl_3 then
        return Fl_3.position, Fl_3.height, false
    end
    return nil
end
function fns.fn730()
    return Av(fireproximityprompt)
end
function fns.fn750()
    return BC ~= nil
end
function fns.fn764()
    return Ag
end
function fns.fn770(mx)
    State.AutoUpgrade = mx == true
    if State.AutoUpgrade then
        B1("Upgrade", BD, Cn)
    else
        Pw_37("Upgrade")
    end
end
function fns.fn813()
    local EL_1
    local EK_1
    EL_1, EK_1 = Pw_5()
    if not EL_1 or not EK_1 then
        return "?"
    end
    return EL_1 .. "/" .. EK_1
end
function fns.fn817()
    local im, io, ip = As(State.ForgeTarget)
    return string.format("%s | %s | %d ore | %d%% class roll", im.Label, im.Type, io, math.floor(ip * 100 + 0.5))
end
function fns.fn818(bR)
    State.DungeonStatus = bR
end
function fns.fn838()
    return LocalPlayer:GetAttribute("Dungeoning") == true
end
function fns.fn844(mg)
    State.TowerForceKill = mg == true
end
function fns.fn852(kB)
    local Jx_1, Jx_2
    local Jv = not Ap or type(Ap.GetRarity) ~= "function"
    if Jv then
        return nil
    end
    local Jv_1 = kB.Type
    local Jw = A6 and type(A6.GetConfigType) == "function"
    local Jw_1, Jw_2
    if Jw then
        Jw_1, Jx_1 = pcall(A6.GetConfigType, kB.Type)
        local Jy = Jw_1 and type(Jx_1) == "string"
        if Jy then
            Jv_1 = Jx_1
        end
    end
    Jw_2, Jx_2 = pcall(Ap.GetRarity, Jv_1, kB.ID)
    if not Jw_2 then
        return nil
    end
    return Pw_6(Jx_2)
end
function fns.fn855(hX)
    local H__1
    local HY_1, HY_2
    local HX = Pw_4(hX)
    if HX.Type == "Weapon" then
        HY_1 = Ci
    else
        HY_1 = Cd
    end
    local HZ = HY_1
    if type(HZ) ~= "table" then
        return HX, AB, 0
    end
    HY_2, H__1 = nil, nil
    for k, v in pairs(HZ) do
        local HZ_1 = tonumber(k)
        local H0_1 = type(v) == "table" and tonumber(v[HX.Key])
        local H1 = H0_1 or nil
        if HZ_1 and H1 then
            if not H__1 or H1 > H__1 or H1 == H__1 and HZ_1 < HY_2 then
                HY_2, H__1 = HZ_1, H1
            end
        end
    end
    local max = math.max
    local H0_3 = HY_2 or AB
    local HY_3 = max(H0_3, AB)
    return HX, HY_3, H__1 or 0
end
function fns.fn878(eF)
    return tonumber(tostring(eF):match("(%d+)"))
end
function fns.fn881(cV)
    return Vector3.new(cV.X, 0, cV.Z)
end
function fns.fn888(mr)
    State.AutoRebirth = mr == true
    if State.AutoRebirth then
        B1("Rebirth", Pw_18, Pw_11)
    else
        Pw_37("Rebirth")
    end
end
function fns.fn893()
    local FQ = {}
    local FU = 1
    local FS = AZ
    while FU <= FS do
        local FV = FU
        FQ[FV] = "Stage " .. FV
        FU += 1
    end
    return FQ
end
function fns.fn910(nt)
    State.SellRarities, State.SellRarityCount = AG(nt)
end
function fns.fn926(nw)
    local KK = tonumber(nw) or 0
    State.SellKeep = math.max(0, math.floor(KK))
end
function fns.fn939()
    if not BT then
        return false, "Daily ticket remote is unavailable"
    end
    local K0 = pcall(function()
        BT:FireServer()
    end)
    if not K0 then
        return false, "Claim request failed"
    end
    return true, "Requested the daily tower ticket"
end
function fns.fn941()
    local EI_1
    local EH_1
    if not B3 then
        return nil, nil
    end
    EI_1, EH_1 = tostring(B3.Text):match("(%d+)%s*/%s*(%d+)")
    return tonumber(EI_1), tonumber(EH_1)
end
function fns.fn944(b1)
    local Ee_1
    local Ed_1
    Ee_1, Ed_1 = {}, 0
    if type(b1) == "table" then
        for k, v in pairs(b1) do
            local Ef = v == true and type(k) == "string"
            if Ef then
                Ee_1[k] = true
                Ed_1 += 1
            elseif type(v) == "string" then
                Ee_1[v] = true
                Ed_1 += 1
            end
        end
    elseif type(b1) == "string" then
        Ee_1[b1] = true
        Ed_1 = 1
    end
    return Ee_1, Ed_1
end
function fns.fn970(hM)
    for i, v in ipairs(BB) do
        if v.Label == hM or v.Key == hM then
            return v
        end
    end
    return BB[2]
end
function fns.fn1018()
    local F6_1
    local F3 = {}
    for i, v in ipairs(Pw_16) do
        local F4 = Cv
        local F4_1
        local F5 = 0
        if F4 then
            F4 = type(Cv.GetNeedRebirth) == "function"
        end
        if F4 then
            F4_1, F6_1 = pcall(Cv.GetNeedRebirth, v)
            if F4_1 then
                local F4_2 = tonumber(F6_1) or 0
                F5 = F4_2
            end
        end
        F3[i] = string.format("Area %d (Rebirth %d)", v, F5)
    end
    return F3
end
function fns.fn1024()
    return LocalPlayer:GetAttribute("Dead") == true
end
function fns.fn1038()
    local Ky = State.ForgeStatus or "Idle"
    return string.format("%s | Forged %d | Clicks %d", Ky, State.Forges, State.Clicks)
end
function fns.fn1064(aB)
    local DE_1
    local DD_1
    DD_1, DE_1 = pcall(aB)
    local DF = DD_1 and type(DE_1) == "table"
    if DF then
        return DE_1
    end
    return nil
end
function fns.fn1065()
    local Character = LocalPlayer.Character
    if not Character or not Character.Parent then
        return nil, nil
    end
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    if not HumanoidRootPart then
        return nil, nil
    end
    return Character, HumanoidRootPart
end
function fns.fn1067(mG)
    State.AutoClick = mG == true
    if State.AutoClick then
        B1("Click", Aw, Pw_8)
    else
        Pw_37("Click")
    end
end
function fns.fn1070()
    return require(Pw_34.BackpackData)
end
function fns.fn1075()
    local jn, jo = AL()
    State.ForgeStatus = jo
    return jn
end
function fns.fn1111()
    local FX = {}
    local F0 = 1
    local FZ = Bn
    while F0 <= FZ do
        local F1 = F0
        FX[F1] = "Round " .. F1
        F0 += 1
    end
    return FX
end
function fns.fn1159(ne)
    local KE = B7(ne)
    local KE_1 = KE or Pw_16[1] or 1
    State.TrainArea = KE_1
end
function fns.fn1163()
    return LocalPlayer:GetAttribute("IntoFight") == true
end
function fns.fn1170()
    local KM = not Ct() or type(A6.SellAll) ~= "function"
    if KM then
        return false, "Backpack data is unavailable"
    elseif not pcall(A6.SellAll) then
        return false, "Sell all request failed"
    else
        return true, "Requested a full inventory sell"
    end
end
function fns.fn1174(mD)
    State.UpgradeTargets, State.UpgradeTargetCount = AG(mD)
end
function fns.fn1198()
    return not AM.Unloaded
end
function fns.fn1217()
    local OreCache = Pw_12:FindFirstChild("OreCache")
    if not OreCache then
        return false
    end
    for i, child in ipairs(OreCache:GetChildren()) do
        local FC_1 = child:IsA("Model") and A0(child)
        if FC_1 then
            local PrimaryPart = child.PrimaryPart
            local FD = PrimaryPart and PrimaryPart:FindFirstChildWhichIsA("ProximityPrompt")
            local FC_3 = FD or nil
            local FD_1 = FC_3
            if FC_3 then
                FC_3 = FD_1.Enabled
            end
            if FC_3 then
                return true
            end
        end
    end
    return false
end
function fns.fn1228()
    local EA_1
    local Ez = not A6 or type(A6.GetItemDataByIDType) ~= "function"
    local Ez_1
    if Ez then
        return 0
    end
    Ez_1, EA_1 = pcall(A6.GetItemDataByIDType, "Dungeon_Ticket", "Material")
    local EB = Ez_1 and type(EA_1) == "table"
    if EB then
        local Ez_2 = tonumber(EA_1.Number) or 0
        return Ez_2
    end
    return 0
end
function fns.fn1246(mX)
    State.ForgeRarities, State.ForgeRarityCount = AG(mX)
end
function fns.fn1252()
    return BM ~= nil
end
function fns.fn1262(aX, aY)
    local DT = Bb and Bb:FindFirstChild(aX)
    local DT_1 = DT or nil
    if not DT_1 then
        return nil
    end
    return DT_1:FindFirstChild(aY)
end
function fns.fn1290()
    return require(Pw_34.DungeonData)
end
function fns.fn1313(mi)
    State.AutoCollect = mi == true
    if State.AutoCollect then
        B1("Collect", Pw_2, Cc)
    else
        Pw_37("Collect")
    end
end
function fns.fn1314()
    return string.format("%s | Runs %d | Cleared Round %d", State.TowerStatus, State.Runs, Pw_35())
end
function fns.fn1316()
    if State.UpgradeTargetCount == 0 then
        return
    end
    if State.UpgradeTargets["Ore Pack Capacity"] then
        Bz()
    end
end
function fns.fn1318()
    local JG_2
    local JE_1, JE_2, JE_4
    local JD = not Ct() or State.SellTypeCount == 0
    local JD_1
    if JD then
        return
    end
    JD_1, JE_1 = pcall(A6.GetData)
    local JF = not JD_1 or type(JE_1) ~= "table" or type(JE_1.have) ~= "table"
    local JF_1
    if JF then
        return
    end
    for k, v in pairs(JE_1.have) do
        if not Am() then
            return
        end
        local JD_2 = type(v) == "table" and State.SellTypes[v.Type]
        if JD_2 then
            local JD_3 = false
            if type(A6.IsEquipedUUID) == "function" then
                JE_2, JF_1 = pcall(A6.IsEquipedUUID, k)
                JD_3 = JE_2 and JF_1 == true
            end
            local JE_3 = Ap
            local JF_2 = false
            if JE_3 then
                JE_3 = type(Ap.CheckIsUnSell) == "function"
            end
            if JE_3 then
                JE_4, JG_2 = pcall(Ap.CheckIsUnSell, v.Type, v.ID)
                JF_2 = JE_4 and JG_2 == true
            end
            local JE_5 = BI(v)
            local JG_3 = State.SellRarityCount == 0
            if not JG_3 then
                JG_3 = JE_5 ~= nil and State.SellRarities[JE_5] == true
            end
            local JE_6 = JG_3
            local max = math.max
            local JH_4 = tonumber(v.Number) or 1
            local JI_2 = max(1, JH_4)
            local JG_5 = JI_2 - State.SellKeep
            local JH_5 = not JD_3
            if JH_5 ~= false then
                JH_5 = not JF_2
            end
            if JH_5 then
                JH_5 = JE_6
            end
            if JH_5 then
                JH_5 = JG_5 > 0
            end
            if JH_5 then
                if pcall(A6.TrySellItem, k, JG_5) then
                    State.Sold = State.Sold + JG_5
                end
            end
        end
    end
end
function fns.fn1349(bU)
    State.TowerStatus = bU
end
function fns.fn1360(nq)
    State.SellTypes, State.SellTypeCount = AG(nq)
end
function fns.fn1371()
    local I6_1
    local I5_1
    if not AN() then
        return
    end
    local I4 = Pw_20("rebirth")
    I5_1, I6_1 = pcall(Aj.GetNeedLevel, I4 + 1)
    local I4_1 = I5_1 and tonumber(I6_1)
    local I5_2 = I4_1 or nil
    if not I5_2 then
        return
    end
    if Pw_20("level") < I5_2 then
        return
    end
    if pcall(function()
        BZ:FireServer()
    end) then
        State.Rebirths = State.Rebirths + 1
    end
end
function fns.fn1413()
    if not AA() then
        return false, "Upgrade data is unavailable"
    end
    local K8 = Bz() and "Bought an ore pack level"
    return true, K8 or "No affordable upgrade"
end
function fns.fn1446()
    local GB = Pw_5()
    if not GB then
        return
    end
    if GB > BL then
        State.Collected = State.Collected + (GB - BL)
    end
    BL = GB
end
function fns.fn1447()
    return Ao
end
function fns.fn1452()
    gethui = Bc
end
function fns.fn1456()
    local Ge = Bh ~= nil and type(Bh.TryIntoDungeon) == "function"
    return Ge
end
local function fn1473()
    return BZ ~= nil and Aj ~= nil
end
local function fn1478(eD)
    return tonumber(tostring(eD):match("Area (%d+)"))
end
local function fn1488()
    return CoreGui
end
local function fn1492()
    return string.format("%s | Pack %s | Clears %d | Kills %d | Ore %d", State.DungeonStatus, Ba(), State.Clears, State.Kills, State.Collected)
end
local function fn1500()
    if not BF then
        return false, "Stage exit event is unavailable"
    elseif not A7() then
        return false, "You are not in a stage fight"
    else
        LocalPlayer:SetAttribute("StageID", nil)
        local KO = pcall(function()
            BF:Fire(true)
        end)
        if not KO then
            return false, "Exit request failed"
        end
        local KS = if A7() then 1 else 0
        if KS == 1 then
            return true, "Exit sent, but a stage gate is re-entering you. Step off it first"
        end
        return true, "Left the stage fight and claimed the loose ore"
    end
end
local function fn1530(lV)
    local J8 = Pw_32(lV)
    local Ka = J8 or 1
    State.DungeonStage = math.clamp(Ka, 1, AZ)
end
local function fn1531()
    local EnemyFolder = Pw_12:FindFirstChild("EnemyFolder")
    if not EnemyFolder then
        return 0
    end
    local Fu = 0
    for i, child in ipairs(EnemyFolder:GetChildren()) do
        local Ft_1 = child:IsA("Model") and child:GetAttribute("Dead") ~= true
        if Ft_1 then
            Fu += 1
        end
    end
    return Fu
end
local function fn1535(fD)
    if LocalPlayer:GetAttribute("StageID") == fD then
        LocalPlayer:SetAttribute("StageID", nil)
    end
    LocalPlayer:SetAttribute("StageID", fD)
end
local function fn1547()
    return require(Cs.CTRL.TrainCTRL)
end
local function fn1549(l9)
    State.TowerInOrder = l9 == true
end
local function fn1551(mo)
    State.CollectRarities, State.CollectRarityCount = AG(mo)
end
local function fn1613()
    return Pw_28 ~= nil and Cp ~= nil
end
local function fn1614(j6)
    local TOUCHED = Pw_12:FindFirstChild("TOUCHED")
    local Jl = TOUCHED and TOUCHED:FindFirstChild("AutoTrainArea")
    local Jl_1 = Jl or nil
    if not Jl_1 then
        return nil
    end
    local Jk_2 = Jl_1:FindFirstChild(tostring(j6))
    local Jl_2 = Jk_2 and Jk_2:IsA("BasePart")
    if Jl_2 then
        return Jk_2
    end
    return nil
end
Pw_35 = nil
Pw_11 = nil
Ag = nil
Aj = nil
Pw_16 = nil
Am = nil
An = nil
Ao = nil
Ap = nil
Aq = nil
Pw_23 = nil
As = nil
At = nil
Au = nil
Av = nil
Aw = nil
Az = nil
AA = nil
AB = nil
AC = nil
AD = nil
Pw_14 = nil
AF = nil
AG = nil
AH = nil
AI = nil
AJ = nil
AL = nil
AM = nil
AN = nil
AP = nil
Pw_28 = nil
Pw_4 = nil
AU = nil
Pw_34 = nil
AZ = nil
A_ = nil
local Players, Ah, Ai, Ak, Ax, Ay, AK, AO, AS, AT, AV, AX, AY
A0 = nil
A1 = nil
Pw_17 = nil
A5 = nil
A6 = nil
A7 = nil
Pw_25 = nil
Ba = nil
Bb = nil
Bc = nil
Bd = nil
Pw_31 = nil
Pw_8 = nil
Bh = nil
Bj = nil
Bk = nil
Bm = nil
Bn = nil
LocalPlayer = nil
Bp = nil
Pw_22 = nil
Bs = nil
Bu = nil
Bw = nil
Pw_29 = nil
Pw_5 = nil
Bz = nil
BB = nil
BC = nil
BD = nil
BF = nil
BI = nil
BJ = nil
Pw_18 = nil
BL = nil
BM = nil
local A3, A4, A9, Bg, Bi, Bl, Bq, Workspace, Bv, BA, BE, BG, Lighting, TeleportService
BO = nil
Pw_26 = nil
Pw_2 = nil
BT = nil
CoreGui = nil
State = nil
Pw_32 = nil
Pw_10 = nil
BZ = nil
B0 = nil
B1 = nil
B3 = nil
B7 = nil
Cb = nil
Cc = nil
Cd = nil
Pw_6 = nil
Cg = nil
Ch = nil
Ci = nil
Pw_37 = nil
Pw_12 = nil
Cn = nil
Co = nil
Cp = nil
Cq = nil
Pw_20 = nil
Cs = nil
Ct = nil
Cv = nil
Cw = nil
local BP, BS, BY, GuiService, B2, B4, B5, HttpService, B8, B9, VirtualUser, UserInputService, RunService, Cm
BP = nil
BS = nil
BY = nil
GuiService = nil
B2 = nil
B4 = nil
B5 = nil
HttpService = nil
B8 = nil
B9 = nil
VirtualUser = nil
UserInputService = nil
RunService = nil
Cm = nil
local Cu
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, Workspace, LocalPlayer, Bc = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local Pw_52 = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
game:GetService("CollectionService")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local Pw_59 = "OuroborosLootToForge"
Bc = fn1488
if getgenv then
    getgenv().gethui = Bc
end
AM, Cs, Pw_12, Ch, Cb, B8, B2, Pw_10, Pw_2, Pw_18, BD, Pw_29, Bp, Bl, Bg, A9, A3, AV, AO, AJ, AD, AB, Aw, Pw_23, Ao, Ag, Bb, A4, Pw_34, Pw_14, Bv, Av, Am, Cu = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fns.fn1452)
local function Pw_40(u)
    local Dn
    local Do
    local Dm
    Dm = nil
    Dn = nil
    Do = nil
    local Dp = u ~= ""
    local Dq = type(u) == "string" and Dp
    assert(Dq, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    Dn = getgenv()
    assert(type(Dn) == "table", "getgenv did not return a table")
    local Dp_1 = Dn[u]
    if Dp_1 ~= nil then
        local Dq_1 = type(Dp_1) == "table" and type(Dp_1.Unload) == "function"
        assert(Dq_1, "Namespace is occupied")
        Dp_1.Unload()
        assert(Dn[u] == nil, "Previous instance did not release its namespace")
    end
    Do = {}
    Dm = { State = {}, Unloaded = false }
    Dm.Track = function(A)
        assert(type(A) == "function", "Cleanup must be callable")
        if Dm.Unloaded then
            A()
        else
            table.insert(Do, A)
        end
        return A
    end
    Dm.Unload = function()
        local Df_1
        local De_1
        if Dm.Unloaded then
            return
        end
        Dm.Unloaded = true
        local Dc = {}
        local Dj = #Do
        local Di = -1
        while false and Dj <= 1 or true and Dj >= 1 do
            local Dk = Dj
            local Dd_1 = table.remove(Do, Dk)
            De_1, Df_1 = pcall(Dd_1)
            if not De_1 then
                table.insert(Dc, tostring(Df_1))
            end
            Dj += Di
        end
        table.clear(Dm.State)
        if #Dc > 0 then
            error("Cleanup incomplete: " .. table.concat(Dc, "; "), 0)
        end
        if Dn[u] == Dm then
            Dn[u] = nil
        end
    end
    Dn[u] = Dm
    return Dm
end
Bv = function(N, O)
    local Dw = type(N) == "table" and type(N.Track) == "function"
    assert(Dw, "FeatureAPI required")
    local Dw_1 = type(O) == "table" and type(O.OnUnload) == "function"
    assert(Dw_1, "UI library required")
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
AM = Pw_40(Pw_59)
local Pw_3 = fns.fn567
Av = fns.fn341
Am = fns.fn1198
Cs = Pw_3(Pw_52)
Pw_12 = Pw_3(Workspace)
Ch = 3
Cb = 0.5
B8 = 1.2
B2 = 3
Pw_10 = 0.2
Pw_2 = 0.4
Pw_18 = 5
BD = 4
Pw_29 = 0.16
Bp = 6
Bl = 1.5
Bg = 1000
if (A3 or false) and (false or A3) and (false and not A3 and (A3 or false)) and not ((A3 or false) and (false or A3) and (false and not A3 and (A3 or false))) then
    AV = 12
    A9 = 45
    A3 = 3
else
    A9 = 12
    A3 = 45
    AV = 3
end
AO = 60
AJ = 3
AD = 4
AB = 4
Aw = 0.05
Pw_23 = {
    "Common",
    "UnCommon",
    "Rare",
    "Epic",
    "Legendary",
    "Mythic",
    "Eternal",
    "Secret",
    "Ancient",
    "Infinite"
}
Ao = { "Ore", "Weapon", "Armor", "Hat", "EnchStone", "Material" }
Ag = { "Ore Pack Capacity" }
Cu = fns.fn1064
local function Pw_61(aG, aH, aI)
    local DN_1
    local DM_1
    if not aG then
        return nil
    end
    DM_1, DN_1 = pcall(function()
        local DK = aI or 20
        return aG:WaitForChild(aH, DK)
    end)
    local DM_2 = DM_1 and DN_1
    local DS = if DM_2 then 1 else 0
    local DQ = 2080 * DS + 1297 * (1 - DS)
    local DR = 375 * DS + 1973 * (1 - DS)
    if not ((DQ * 3165 + DR * 3981 + DQ * DR) % 16777213 == 8856075) then
        DM_2 = nil
    end
    return DM_2
end
Bb = Pw_61(Cs, "Remote")
A4 = Pw_61(Cs, "Config")
Pw_34 = Pw_61(Cs, "LocalData")
local Pw_46 = Pw_61(Pw_12, "WorldModel")
local Pw_30 = Pw_61(Pw_46, "StageMap")
Pw_14 = Pw_61(Pw_30, "AreaPart")
local Pw_9 = Pw_30 and Pw_30:FindFirstChild("EnemyPoint")
local Pw_24 = Pw_9 or nil
Ay, Bh, A6, Pw_28, Pw_46, Pw_40, AC, Az, At, Ap, Aj, Cv, Cp, Ci, Cd, B5, BZ, BT, BM, BF, BC, Bs, Bn, Pw_3, Pw_52 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Pw_59 = 10
repeat
    Pw_30 = (Pw_59 * 13 + 0) % 15 + 1
    if Pw_30 <= 8 then
        if Pw_30 <= 4 then
            if Pw_30 <= 2 then
                if Pw_30 <= 1 then
                    if (Pw_59 * 1 + 1) * 21 % 4 == ((Pw_59 * 1 + 1) * 21 + 12) % 4 then
                        Pw_46 = Pw_52("Dungeon", "Config")
                    else
                        Pw_52 = Pw_46("Dungeon", "Config")
                    end
                    Pw_59 = (Pw_59 + 82) % 120
                else
                    Pw_9 = {
                        "mdcm",
                        "pnc",
                        "amm",
                        "xuhfgjfrb",
                        "yepqfkt",
                        "pzopbk",
                        "rjtrfpgei",
                        "frorjchehxu",
                        "nat",
                        "xobewug",
                        "wgvkgrivcs",
                        "odi"
                    }
                    if Pw_9[(Pw_59 * 45 + 34) % 12 + 1] <= Pw_9[(Pw_59 * 45 + 34) % 12 + 1] then
                        Pw_40 = Pw_52("Stage", "StageEnemyConfig")
                    else
                        Pw_52 = Pw_40("Stage", "StageEnemyConfig")
                    end
                    Pw_59 = (Pw_59 + 112) % 120
                end
            elseif Pw_30 <= 3 then
                if not BF and not Cd and (BZ and Bs) or Cp and Cd and (not BZ and Pw_59) or not (not BF and not Cd and (BZ and Bs) or Cp and Cd and (not BZ and Pw_59)) then
                    AC = Pw_52("Ore", "Config")
                else
                    Pw_52 = AC("Ore", "Config")
                end
                Pw_59 = (Pw_59 + 37) % 120
            else
                local QN = bit32.rrotate(bit32.bxor(bit32.lrotate(Pw_59, 16), string.byte(tostring(Az))), 26)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(QN, 3588089083), 1354423382), (bit32.bxor(bit32.band(QN, 706878212), 3376155019))), 1354423382), 3376155019) ~= QN then
                    Pw_52 = At("Ore", "Helper")
                    Az = At("Rarity", "Helper")
                    Aj = At("AnyHelper")
                    Ap = At("Rebirth", "Helper")
                else
                    Az = Pw_52("Ore", "Helper")
                    At = Pw_52("Rarity", "Helper")
                    Ap = Pw_52("AnyHelper")
                    Aj = Pw_52("Rebirth", "Helper")
                end
                Pw_59 = (Pw_59 + 22) % 120
            end
        elseif Pw_30 <= 6 then
            if Pw_30 <= 5 then
                if (Pw_59 * 2 + 6) * 7 % 3 == ((Pw_59 * 2 + 6) * 7 + 0) % 3 then
                    Cv = Pw_52("TrainArea", "Helper")
                else
                    Pw_52 = Cv("TrainArea", "Helper")
                end
                Pw_59 = (Pw_59 + 112) % 120
            else
                if (Pw_59 * 3 + 1) * 13 % 4 == ((Pw_59 * 3 + 1) * 13 + 9) % 4 then
                    Pw_52 = Ci("Upgrade", "Helper")
                    Cp = Ci("Weapon", "ForgePercent")
                else
                    Cp = Pw_52("Upgrade", "Helper")
                    Ci = Pw_52("Weapon", "ForgePercent")
                end
                Pw_59 = (Pw_59 + 22) % 120
            end
        elseif Pw_30 <= 7 then
            Pw_9 = (vector.create((Pw_59 * 7 + 1) % 11 + 1, (Pw_59 * 11 + 1) % 13 + 1, (Pw_59 * 14 + 5) % 17 + 1))
            Pw_54 = (vector.create((Pw_59 * 5 + 7) % 11 + 1, (Pw_59 * 5 + 2) % 13 + 1, (Pw_59 * 14 + 11) % 17 + 1))
            local QD = vector.cross(Pw_9, Pw_54)
            local QE = vector.dot(Pw_9, Pw_54)
            if vector.dot(QD, QD) + QE * QE == vector.dot(Pw_9, Pw_9) * vector.dot(Pw_54, Pw_54) + 1 then
                Pw_52 = Cd("Armor", "ForgePercent")
            else
                Cd = Pw_52("Armor", "ForgePercent")
            end
            Pw_59 = (Pw_59 + 67) % 120
        else
            Pw_9 = {
                "fuz",
                "qnr",
                "rshmdvd",
                "eqmmtkfs",
                "ikkkyfim",
                "gaqvyk",
                "skhsh",
                "ozacisx",
                "eqbfukatyhs",
                "heka"
            }
            local QT = Pw_59
            Pw_54 = Pw_9[QT % 10 + 1]
            if Pw_54:len() >= Pw_54:reverse():rep(QT % 3 + 2):len() then
                BM = BZ(fn1547)
                Pw_3 = B5("Rebirth", "TryRebirthRE")
                Cu = B5("Dungeon", "TryClaimDailyDunTicRE")
                BT = B5("Attack", "EnemyHitBE")
            else
                B5 = Cu(fn1547)
                BZ = Pw_3("Rebirth", "TryRebirthRE")
                BT = Pw_3("Dungeon", "TryClaimDailyDunTicRE")
                BM = Pw_3("Attack", "EnemyHitBE")
            end
            Pw_59 = (Pw_59 + 37) % 120
        end
    elseif Pw_30 <= 12 then
        if Pw_30 <= 10 then
            if Pw_30 <= 9 then
                if Cd and not Bh and (Bh and not Pw_59) or (BC and not BC or (Cd or Cp)) or not (Cd and not Bh and (Bh and not Pw_59) or (BC and not BC or (Cd or Cp))) then
                    BF = Pw_3("Stage", "ExitFightBE")
                    BC = Pw_3("Train", "TrainOnceRE")
                    Bs = Pw_3("Forge", "ForgeRF")
                else
                    Pw_3 = Bs("Stage", "ExitFightBE")
                    BF = Bs("Train", "TrainOnceRE")
                    BC = Bs("Forge", "ForgeRF")
                end
                Pw_59 = (Pw_59 + 82) % 120
            else
                if Pw_59 * 28121253 + 5 + 5 >= Pw_59 * 28121253 + 5 + 5 + 5 then
                    BT = 0
                else
                    Bn = 0
                end
                Pw_59 = (Pw_59 + 22) % 120
            end
        elseif Pw_30 <= 11 then
            Pw_9 = (vector.create((Pw_59 * 5 + 1) % 11 + 1, (Pw_59 * 10 + 12) % 13 + 1, (Pw_59 * 15 + 7) % 17 + 1))
            Pw_54 = (vector.create((Pw_59 * 2 + 9) % 11 + 1, (Pw_59 * 8 + 5) % 13 + 1, (Pw_59 * 7 + 1) % 17 + 1))
            local Pw_48 = (vector.create((Pw_59 * 7 + 9) % 11 + 1, (Pw_59 * 6 + 12) % 13 + 1, (Pw_59 * 8 + 7) % 17 + 1))
            local Pw_42 = (vector.create((Pw_59 * 6 + 9) % 11 + 1, (Pw_59 * 3 + 6) % 13 + 1, (Pw_59 * 1 + 8) % 17 + 1))
            if vector.dot(vector.cross(Pw_9, Pw_54), (vector.cross(Pw_48, Pw_42))) == vector.dot(Pw_9, Pw_48) * vector.dot(Pw_54, Pw_42) - vector.dot(Pw_9, Pw_42) * vector.dot(Pw_54, Pw_48) then
                Ay = Pw_24
            else
                Pw_24 = Ay
            end
            Pw_59 = (Pw_59 + 22) % 120
        else
            if (Pw_59 * 3 + 1) * 21 % 4 == ((Pw_59 * 3 + 1) * 21 + 11) % 4 then
                Ci = fns.fn1262
            else
                Pw_3 = fns.fn1262
            end
            Pw_59 = (Pw_59 + 82) % 120
        end
    elseif Pw_30 <= 14 then
        if Pw_30 <= 13 then
            if Pw_59 * 18283083 + 6 + 5 <= Pw_59 * 18283083 + 6 + 5 + 2 then
                Pw_52 = function(...)
                    local a2 = { ... }
                    return Cu(function()
                        local DZ = A4
                        for i, v in ipairs(a2) do
                            DZ = DZ[v]
                        end
                        return require(DZ)
                    end)
                end
            else
                Ci = function(...)
                    local a2 = { ... }
                    return Cu(function()
                        local DZ = A4
                        for i, v in ipairs(a2) do
                            DZ = DZ[v]
                        end
                        return require(DZ)
                    end)
                end
            end
            Pw_59 = (Pw_59 + 112) % 120
        else
            if Pw_59 * 80250079 + 9 + 3 <= Pw_59 * 80250079 + 9 + 3 + 6 then
                Bh = Cu(fns.fn1290)
                A6 = Cu(fns.fn1070)
            else
                Cu = A6(fns.fn1290)
                Bh = A6(fns.fn1070)
            end
            Pw_59 = (Pw_59 + 22) % 120
        end
    else
        Pw_30 = (vector.create((Pw_59 * 7 + 2) % 11 + 1, (Pw_59 * 9 + 5) % 13 + 1, (Pw_59 * 1 + 2) % 17 + 1))
        Pw_9 = (vector.create((Pw_59 * 7 + 3) % 11 + 1, (Pw_59 * 4 + 4) % 13 + 1, (Pw_59 * 14 + 12) % 17 + 1))
        local TZ = vector.dot(Pw_30, Pw_9)
        if TZ * TZ <= vector.dot(Pw_30, Pw_30) * vector.dot(Pw_9, Pw_9) then
            Pw_28 = Cu(fns.fn670)
        else
            Cu = Pw_28(fns.fn670)
        end
        Pw_59 = (Pw_59 + 67) % 120
    end
until (Pw_59 * 119 + 54) % 120 == 104
if type(Pw_46) == "table" then
    for k in pairs(Pw_46) do
        Pw_24 = tonumber(k)
        Pw_3 = Pw_24 and Pw_24 > Bn
        if Pw_3 then
            Bn = Pw_24
        end
    end
end
if Bn <= 0 then
    Bn = 1
end
AZ = 0
if type(Pw_40) == "table" then
    for k in pairs(Pw_40) do
        Pw_24 = tonumber(tostring(k):match("Stage_(%d+)"))
        Pw_3 = Pw_24 and Pw_24 > AZ
        if Pw_3 then
            AZ = Pw_24
        end
    end
end
Pw_24 = AZ <= 0 and Pw_14
if Pw_24 then
    for i, child in ipairs(Pw_14:GetChildren()) do
        Pw_24 = tonumber(child.Name:match("Stage_(%d+)"))
        Pw_3 = Pw_24 and Pw_24 > AZ
        if Pw_3 then
            AZ = Pw_24
        end
    end
end
if AZ <= 0 then
    AZ = 1
end
Pw_16 = {}
Pw_24 = Cv
Pw_3 = nil
if Pw_24 then
    Pw_59 = 6
    repeat
        Pw_52 = (vector.create((Pw_59 * 1 + 6) % 11 + 1, (Pw_59 * 2 + 4) % 13 + 1, (Pw_59 * 10 + 9) % 17 + 1))
        Pw_46 = (vector.create((Pw_59 * 7 + 9) % 11 + 1, (Pw_59 * 5 + 4) % 13 + 1, (Pw_59 * 2 + 3) % 17 + 1))
        local QH = vector.dot(Pw_52, Pw_46)
        if QH * QH >= vector.dot(Pw_52, Pw_52) * vector.dot(Pw_46, Pw_46) + 1 then
            Cv = type(Pw_24.GetConfig) == "function"
        else
            Pw_24 = type(Cv.GetConfig) == "function"
        end
        Pw_59 = (Pw_59 + 6) % 8
    until (Pw_59 * 3 + 6) % 8 == 2
end
if Pw_24 then
    Pw_24, Pw_59 = pcall(Cv.GetConfig)
    Pw_52 = Pw_24 and Pw_59
    Pw_24 = Pw_52 or nil
    Pw_3 = Pw_24
end
if type(Pw_3) == "table" then
    for k in pairs(Pw_3) do
        Pw_24 = tonumber(k)
        if Pw_24 then
            table.insert(Pw_16, Pw_24)
        end
    end
end
table.sort(Pw_16)
if #Pw_16 == 0 then
    local Pw_55 = 1
    while Pw_55 <= 9 do
        local Pw_49 = Pw_55
        Pw_16[Pw_49] = Pw_49
        Pw_55 += 1
    end
end
State = nil
State = AM.State
if (State and false or (not State or 6) or false) and ((State or State) and (not State or 6) or (State or false)) and not ((State and false or (not State or 6) or false) and ((State or State) and (not State or 6) or (State or false))) then
    State.AutoDungeon = false
    State.DungeonStage = 1
    State.DungeonForceKill = true
    State.AutoTower = false
    State.TowerInOrder = false
    State.TowerRound = 1
    State.TowerForceKill = true
    State.AutoCollect = false
    State.CollectRarities = {}
    State.CollectRarityCount = 0
    State.AutoRebirth = false
    State.AutoUpgrade = false
    State.UpgradeTargets = {}
    State.UpgradeTargetCount = 0
    State.AutoTrain = false
else
    State.AutoDungeon = false
    State.DungeonStage = 1
    State.DungeonForceKill = true
    State.AutoTower = false
    State.TowerInOrder = false
    State.TowerRound = 1
    State.TowerForceKill = true
    State.AutoCollect = false
    State.CollectRarities = {}
    State.CollectRarityCount = 0
    State.AutoRebirth = false
    State.AutoUpgrade = false
    State.UpgradeTargets = {}
    State.UpgradeTargetCount = 0
    State.AutoTrain = false
end
Pw_24 = Pw_16[1] or 1
B3, BO, Bu, Bd, AG, Pw_20, BP, Bj, A7, AU, AH, Pw_35 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
State.TrainArea = Pw_24
State.AutoClick = false
State.ClickRate = 6
State.AutoForge = false
State.ForgeTarget = "Great"
State.ForgeRarities = {}
State.ForgeRarityCount = 0
State.ForgeBestFirst = false
State.ForgeKeep = 0
State.Forges = 0
State.Clicks = 0
State.ForgeStatus = "Idle"
State.AutoSell = false
State.SellTypes = {}
State.SellTypeCount = 0
State.SellRarities = {}
State.SellRarityCount = 0
State.SellKeep = 0
State.DungeonStatus = "Idle"
State.TowerStatus = "Idle"
State.PackBlocked = false
State.Cycles = 0
State.Clears = 0
State.Ticks = 0
State.Runs = 0
State.Kills = 0
State.Collected = 0
State.Sold = 0
State.Rebirths = 0
State.Upgrades = 0
BO = fns.fn818
Bu = fns.fn1349
Bd = fns.fn95
AG = fns.fn944
Pw_20 = fns.fn610
BP = fns.fn1065
Bj = fns.fn838
A7 = fns.fn1163
AU = fns.fn1024
AH = fns.fn1228
Pw_35 = fns.fn98
B3 = nil
Pw_30 = LocalPlayer:FindFirstChild("PlayerGui")
Pw_40 = Pw_61(Pw_30, "Hud", 10)
Pw_46 = Pw_61(Pw_40, "LeftInfos", 10)
Pw_52 = Pw_61(Pw_46, "OrePack", 10)
B3 = Pw_61(Pw_52, "Title", 10)
A5, AX, Pw_5, Ba, AK, Ah, Cm, AP = nil, nil, nil, nil, nil, nil, nil, nil
Pw_5 = fns.fn941
Ba = fns.fn813
AK = fns.fn380
Ah = fns.fn881
Cm = function(cX, cY, cZ, c_)
    local ET, EU
    local EW_1
    local EV_1
    EU = RaycastParams.new()
    EU.FilterType = Enum.RaycastFilterType.Exclude
    EU.FilterDescendantsInstances = { cZ, Pw_12:FindFirstChild("EnemyFolder"), Pw_12:FindFirstChild("OreCache") }
    ET = cX + Vector3.new(0, cY * 0.5, 0)
    EV_1, EW_1 = pcall(function()
        return Pw_12:Raycast(ET, Vector3.new(0, cY + 60, 0) * -1, EU)
    end)
    if EV_1 and EW_1 then
        return EW_1.Position.Y + 3.5
    end
    return c_
end
A5 = {}
AX = false
AP = fns.fn269
if Pw_14 then
    for i, child in ipairs(Pw_14:GetChildren()) do
        AP(child)
    end
    Pw_14.ChildAdded:Connect(function(di)
        task.defer(AP, di)
    end)
end
A0, B4, BY, BS, BL, BE, BA, Pw_25, A1, BB, Bk, Cq, Co, Bi, Ak, BG, AS, Pw_6, B7, Pw_32, BJ, Bw, Pw_31, Pw_17, AN, AA, An, Ct, Ax, Ai, Bq, AY, AF, A_, AI, Cg, Cc, Pw_22, Pw_4, As, Cw, B0, AT, AL, Pw_26, Pw_8, Pw_11, Bz, Cn, B9, Bm, BI, Au, Pw_37, B1, Aq = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Co = function(dl)
    local Fa_1
    local E9_1
    local E7 = Ay and Ay:FindFirstChild("Stage_" .. dl)
    local E7_2
    local E8 = E7 or nil
    local E8_1
    if not E8 then
        return nil
    end
    E8_1, E9_1 = Vector3.zero, 0
    for i, child in ipairs(E8:GetChildren()) do
        local Fk = child
        if Fk:IsA("BasePart") then
            E8_1 += Fk.Position
            E9_1 += 1
        elseif Fk:IsA("Model") then
            E7_2, Fa_1 = pcall(function()
                return Fk:GetPivot().Position
            end)
            if E7_2 then
                E8_1 += Fa_1
                E9_1 += 1
            end
        end
    end
    if E9_1 <= 0 then
        return nil
    end
    return E8_1 / E9_1
end
Bi = fns.fn705
Ak = function(dK)
    local Fr = AX or typeof(dK) ~= "Vector3"
    if Fr then
        return
    end
    AX = true
    task.spawn(function()
        pcall(function()
            LocalPlayer:RequestStreamAroundAsync(dK, 8)
        end)
        AX = false
    end)
end
BG = fn1531
AS = fns.fn1217
Pw_6 = fns.fn337
AM.RarityValues = fns.fn629
AM.SellTypeValues = fns.fn1447
AM.UpgradeValues = fns.fn764
AM.StageValues = fns.fn893
AM.RoundValues = fns.fn1111
AM.TrainAreaValues = fns.fn1018
B7 = fn1478
Pw_32 = fns.fn878
BJ = fns.fn581
Bw = fns.fn1456
Pw_31 = fns.fn730
Pw_17 = fns.fn1252
AN = fn1473
AA = fn1613
An = fns.fn750
Ct = fns.fn549
AM.Support = fns.fn587
AM.GetDungeonStatus = fn1492
AM.GetTowerStatus = fns.fn1314
AM.GetProgress = fns.fn582
Ax = fns.fn39
Ai = fns.fn442
B4 = nil
BY = nil
BS = nil
BL = 0
BE = false
BA = false
if (A1 and not Pw_26 and (BY or BY) and (A1 and not A1 or (Pw_26 or A1)) or ((A1 or not A1) and (not A1 or BY) or (not A1 or not Pw_26 or (Pw_26 or not A1)))) and ((not Pw_26 or not A1 or Pw_26 and A1) and ((A1 or not A1) and (Pw_26 or BY)) or not A1 and not A1 and (not Pw_26 and not BY) and (A1 or not BY or not BY and not A1)) and not ((A1 and not Pw_26 and (BY or BY) and (A1 and not A1 or (Pw_26 or A1)) or ((A1 or not A1) and (not A1 or BY) or (not A1 or not Pw_26 or (Pw_26 or not A1)))) and ((not Pw_26 or not A1 or Pw_26 and A1) and ((A1 or not A1) and (Pw_26 or BY)) or not A1 and not A1 and (not Pw_26 and not BY) and (A1 or not BY or not BY and not A1))) then
    AY = fns.fn1446
    Bq = fn1535
else
    Bq = fns.fn1446
    AY = fn1535
end
AF = function()
    local GE
    local GF
    local GL_1
    local GK_1
    local GM_1
    local GJ_1
    local GG_1
    State.Ticks = State.Ticks + 1
    if not BJ() then
        BO("Stage map unavailable")
        return
    end
    if Bj() then
        BO("Paused for the tower")
        return
    end
    if AU() then
        B4 = nil
        BO("Waiting for respawn")
        return
    end
    GF, GG_1 = BP()
    if not GG_1 then
        BO("Waiting for character")
        return
    end
    local GH = Ax()
    local GI = "Stage_" .. GH
    GL_1, GJ_1, GK_1 = Bi(GH)
    if not GL_1 then
        BO("Stage " .. GH .. " is not loaded yet")
        return
    end
    Bq()
    if BE then
        BE = false
        State.Clears = State.Clears + 1
    end
    if GK_1 then
        GM_1 = A9
    else
        GM_1 = A3
    end
    local GN = GM_1
    local Magnitude = (Ah(GG_1.Position) - Ah(GL_1)).Magnitude
    if Magnitude > GN then
        BO("Moving to stage " .. GH)
        Ak(GL_1)
        GE = Vector3.new(GL_1.X, Cm(GL_1, GJ_1, GF, GG_1.Position.Y), GL_1.Z)
        pcall(function()
            GF:PivotTo(CFrame.new(GE))
        end)
        return
    end
    if not GK_1 then
        Ak(GL_1)
        local GG_2 = os.clock()
        if BY ~= GH then
            BY = GH
            BS = GG_2
        end
        if GG_2 - (BS or GG_2) < AV then
            BO("Loading stage " .. GH)
            return
        end
    else
        BY = nil
    end
    local GG_3 = not A7() or LocalPlayer:GetAttribute("StageID") ~= GI
    if GG_3 then
        B4 = nil
        BA = false
        BE = false
        AY(GI)
        BO("Entering stage " .. GH)
        return
    end
    if BG() > 0 then
        B4 = nil
        BO("Fighting stage " .. GH)
        return
    end
    local GG_4 = State.AutoCollect and not AK() and AS()
    if GG_4 then
        B4 = nil
        BO("Collecting stage " .. GH .. " drops")
        return
    end
    local GG_5 = os.clock()
    if not B4 then
        B4 = GG_5
        return
    end
    if GG_5 - B4 < B8 then
        return
    end
    B4 = nil
    local GR = if Ai() then 1 else 0
    if GR == 1 then
        BO("Stage " .. GH .. " cleared, banked " .. Ba())
    else
        BO("Stage " .. GH .. " cleared")
    end
end
A_ = function()
    local GU_5
    if not Pw_17() then
        return
    end
    local GT = Bj()
    if GT then
        if not State.AutoTower or not State.TowerForceKill then
            return
        end
    else
        local GU_2 = not State.AutoDungeon or not A7()
        if GU_2 then
            return
        end
    end
    local EnemyFolder = Pw_12:FindFirstChild("EnemyFolder")
    if not EnemyFolder then
        return
    end
    local GV = 0
    for i, child in ipairs(EnemyFolder:GetChildren()) do
        local G3 = child
        if not Am() then
            return
        end
        local GU_4 = G3:IsA("Model") and G3:GetAttribute("Dead") ~= true
        if GU_4 then
            GV += 1
            if GT then
                GU_5 = State.TowerForceKill
            else
                GU_5 = State.DungeonForceKill
            end
            local GW = GU_5
            local HPValue = G3:FindFirstChild("HPValue")
            local GX = HPValue and tonumber(HPValue.Value)
            local GU_7 = GX or nil
            local GX_1 = GW
            local GS = GU_7
            if GX_1 then
                GX_1 = GS
            end
            if GX_1 then
                GX_1 = GS > 0
            end
            if GX_1 then
                local GU_8 = pcall(function()
                    BM:Fire(G3.Name, GS, nil)
                end)
                if GU_8 then
                    State.Kills = State.Kills + 1
                end
            end
        end
    end
    if GT then
        return
    end
    if GV == 0 and BA then
        BE = true
    end
    BA = GV > 0
end
AI = fns.fn515
if Pw_11 and not AT and (not AT or Pw_11) and (AT and not Pw_11 or not Pw_11 and AT) or (Pw_11 and not Pw_11 and (AT or not AT) or (not AT and AT or (not AT or not Pw_11))) or not (Pw_11 and not AT and (not AT or Pw_11) and (AT and not Pw_11 or not Pw_11 and AT) or (Pw_11 and not Pw_11 and (AT or not AT) or (not AT and AT or (not AT or not Pw_11)))) then
    Cg = fns.fn449
    Pw_25 = {}
    A1 = {}
    A0 = fns.fn264
else
    Pw_25 = fns.fn449
    A0 = {}
    Cg = {}
    A1 = fns.fn264
end
Cc = function()
    local Hr_4
    if not Pw_31() then
        return
    end
    local OreCache = Pw_12:FindFirstChild("OreCache")
    if not OreCache then
        return
    end
    Bq()
    local Hq = os.clock()
    for k, v in pairs(Pw_25) do
        if Hq >= v or not k.Parent then
            Pw_25[k] = nil
        end
    end
    for k in pairs(A1) do
        if not k.Parent then
            A1[k] = nil
        end
    end
    for i, child in ipairs(OreCache:GetChildren()) do
        if not Am() then
            return
        end
        local Hp_1 = child:IsA("Model") and not Pw_25[child] and A0(child)
        if Hp_1 then
            local PrimaryPart = child.PrimaryPart
            local Hr_2 = PrimaryPart and PrimaryPart:FindFirstChildWhichIsA("ProximityPrompt")
            local Hs = Hr_2 or nil
            local Hs_2
            local Ho = Hs
            if Ho then
                if not Ho.Enabled then
                    if A1[child] then
                        A1[child] = nil
                        State.PackBlocked = false
                    end
                else
                    local Hs_1 = (A1[child] or 0) + 1
                    A1[child] = Hs_1
                    Pw_25[child] = Hq + Bl
                    pcall(function()
                        Ho.MaxActivationDistance = Bg
                        Ho.HoldDuration = 0
                        Ho.RequiresLineOfSight = false
                    end)
                    pcall(fireproximityprompt, Ho)
                    if Hs_1 >= B2 then
                        Hr_4, Hs_2 = BP()
                        if Hs_2 and (Hs_2.Position - PrimaryPart.Position).Magnitude <= AO then
                            State.PackBlocked = true
                        end
                    end
                end
            end
        end
    end
end
BB = {
    { Key = "Katana", Label = "Katana", Type = "Weapon" },
    { Key = "Great", Label = "Great Sword", Type = "Weapon" },
    { Key = "Hat_Light", Label = "Light Hat", Type = "Armor" },
    { Key = "Armor_Light", Label = "Light Armor", Type = "Armor" },
    { Key = "Hat_Heave", Label = "Heavy Hat", Type = "Armor" },
    { Key = "Armor_Heave", Label = "Heavy Armor", Type = "Armor" }
}
Pw_22 = fns.fn970
Pw_4 = fns.fn669
As = fns.fn855
AM.ForgeTargetValues = fns.fn230
AM.GetForgePlan = fns.fn817
Cw = fns.fn43
B0 = fns.fn175
AT = fns.fn292
AL = function()
    local IQ, IR
    local IU_1
    local IT_1
    local IS_1, IS_2
    if not Bs then
        return false, "Forge remote is unavailable"
    end
    IR, IS_1 = As(State.ForgeTarget)
    IQ, IT_1 = AT(IS_1)
    if not IQ then
        return false, IT_1
    end
    IS_2, IU_1 = pcall(function()
        return Bs:InvokeServer({ ConfigType = IR.Type, UUIDList = IQ })
    end)
    if not IS_2 then
        return false, "Forge request failed"
    elseif not IU_1 then
        return false, "Server refused the forge"
    else
        State.Forges = State.Forges + 1
        return true, string.format("Forged a %s using %d ore", IR.Label, IT_1)
    end
end
Pw_26 = fns.fn1075
Bk = 0
if (AY or not B4) and (not AY or AN) and (AY and AA and (not AA or AN)) and (B4 and not AN or (AA or not AA) or AA and AN and (B4 or AA)) and (not AN and not AA and (false or not AA) and (AN and not AN and (false and not B4)) or (false or Cc or B4 and not AA) and (Cc and B4 or (AN or not AA))) and not ((AY or not B4) and (not AY or AN) and (AY and AA and (not AA or AN)) and (B4 and not AN or (AA or not AA) or AA and AN and (B4 or AA)) and (not AN and not AA and (false or not AA) and (AN and not AN and (false and not B4)) or (false or Cc or B4 and not AA) and (Cc and B4 or (AN or not AA)))) then
    Bm = fns.fn287
else
    Pw_8 = fns.fn287
end
Pw_11 = fns.fn1371
Bz = fns.fn513
Cn = fns.fn1316
B9 = fn1614
Bm = function()
    local Jn
    if not An() then
        return
    end
    local Jp = State.AutoDungeon or Bj() or A7()
    local Jp_1
    local Ju = if Jp then 1 else 0
    local Js = 2149 * Ju + 2999 * (1 - Ju)
    local Jt = 1575 * Ju + 1677 * (1 - Ju)
    if not ((Js * 1120 + Jt * 3330 + Js * Jt) % 16777213 == 11036305) then
        Jp = AU()
    end
    if Jp then
        return
    end
    Jn, Jp_1 = BP()
    if not Jp_1 then
        return
    end
    local Jq = B9(State.TrainArea)
    if Jq then
        local Jo = Jq.Position + Vector3.new(0, 4, 0)
        if (Jp_1.Position - Jo).Magnitude > 8 then
            pcall(function()
                Jn:PivotTo(CFrame.new(Jo))
            end)
            return
        end
    end
    local Jp_2 = B5 and type(B5.TrainOnce) == "function"
    if Jp_2 then
        pcall(B5.TrainOnce, nil, false)
        return
    end
    local attr = LocalPlayer:GetAttribute("LastTrainTick")
    local Jq_1 = attr and tick() - attr <= 0.15
    if Jq_1 then
        return
    end
    LocalPlayer:SetAttribute("LastTrainTick", tick())
    pcall(function()
        BC:FireServer()
    end)
end
if (AA or not AS or not AA and Pw_31) and (B1 and AA and (AA and B1)) or (not B1 or not Pw_8 or not Ai and Pw_8 or (not Pw_31 or AA) and (AS and Pw_8)) or not AA and not Ai and (AS or not Ai) and (AS and Pw_31 or (not AS or not Pw_8)) and ((Ai and not Pw_31 or Pw_31 and Pw_31) and (Ai and Pw_8 or Pw_31 and Pw_31)) or not ((AA or not AS or not AA and Pw_31) and (B1 and AA and (AA and B1)) or (not B1 or not Pw_8 or not Ai and Pw_8 or (not Pw_31 or AA) and (AS and Pw_8)) or not AA and not Ai and (AS or not Ai) and (AS and Pw_31 or (not AS or not Pw_8)) and ((Ai and not Pw_31 or Pw_31 and Pw_31) and (Ai and Pw_8 or Pw_31 and Pw_31))) then
    BI = fns.fn852
    Au = fns.fn1318
else
    Au = fns.fn852
    BI = fns.fn1318
end
if not Cq and not Cq and (Pw_8 or not Aq) and (Pw_8 or not Cq or not B4 and not Pw_8) or ((not Cq or not B4) and (Cq or not B4) or (Pw_8 and not Aq or not Aq and Pw_8)) or not (not Cq and not Cq and (Pw_8 or not Aq) and (Pw_8 or not Cq or not B4 and not Pw_8) or ((not Cq or not B4) and (Cq or not B4) or (Pw_8 and not Aq or not Aq and Pw_8))) then
    Cq = {}
    Pw_37 = fns.fn296
    B1 = function(lk, ll, lm)
        Pw_37(lk)
        local lo
        lo = task.spawn(function()
            local JW_2
            while true do
                local JV = Am() and Cq[lk] == lo
                local JV_2
                if JV then
                    JV_2, JW_2 = pcall(lm)
                    if not JV_2 then
                        warn("[Ouroboros] " .. lk .. ": " .. tostring(JW_2))
                        task.wait(1)
                    end
                    task.wait(ll)
                    continue
                end
                break
            end
        end)
        Cq[lk] = lo
    end
else
    B1 = {}
    Cq = fns.fn296
    Pw_37 = function(lk, ll, lm)
        Pw_37(lk)
        local lo
        lo = task.spawn(function()
            local JW_1
            while true do
                local JV = Am() and Cq[lk] == lo
                local JV_1
                if JV then
                    JV_1, JW_1 = pcall(lm)
                    if not JV_1 then
                        warn("[Ouroboros] " .. lk .. ": " .. tostring(JW_1))
                        task.wait(1)
                    end
                    task.wait(ll)
                    continue
                end
                break
            end
        end)
        Cq[lk] = lo
    end
end
Aq = fns.fn29
AM.Track(fns.fn2)
AM.SetAutoDungeon = fns.fn116
AM.SetDungeonStage = fn1530
AM.SetDungeonForceKill = fns.fn355
AM.SetAutoTower = fns.fn239
AM.SetTowerInOrder = fn1549
AM.SetTowerRound = fns.fn704
AM.SetTowerForceKill = fns.fn844
AM.SetAutoCollect = fns.fn1313
AM.SetCollectRarities = fn1551
AM.SetAutoRebirth = fns.fn888
AM.SetAutoUpgrade = fns.fn770
AM.SetUpgradeTargets = fns.fn1174
AM.SetAutoClick = fns.fn1067
AM.SetClickRate = fns.fn340
AM.SetAutoForge = fns.fn332
AM.SetForgeTarget = fns.fn250
AM.SetForgeRarities = fns.fn1246
AM.SetForgeBestFirst = fns.fn202
AM.SetForgeKeep = fns.fn154
AM.ForgeNow = fns.fn144
AM.GetForgeStatus = fns.fn1038
AM.SetAutoTrain = fns.fn434
AM.SetTrainArea = fns.fn1159
AM.SetAutoSell = fns.fn203
AM.SetSellTypes = fns.fn1360
AM.SetSellRarities = fns.fn910
AM.SetSellKeep = fns.fn926
AM.SellAllNow = fns.fn1170
AM.ExitFightNow = fn1500
AM.ExitTowerNow = fns.fn123
AM.ClaimDailyTicket = fns.fn939
AM.RebirthNow = fns.fn94
AM.BuyUpgradeNow = fns.fn1413
Pw_24 = function()
    local qm
    local nV = "v0.5"
    local nU = "+1 Loot To Forge"
    local nW = "https://discord.gg/synapsex"
    local nY = "https://ouroboros-hub-rbx.web.app/"
    local nX = "https://rscripts.net/@Ouroboros"
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    local Toggles = Library.Toggles
    local Options = Library.Options
    Bv(AM, Library)
    local function n6(n7, n8)
        local Lb = Av(setclipboard) and setclipboard
        local Lc = Lb
        if not Lc then
            local Lb_1 = Av(toclipboard) and toclipboard
            Lc = Lb_1 or nil
        end
        local Lb_2 = Lc
        if not Lb_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local Lc_1 = pcall(Lb_2, n7)
        if Lc_1 then
            Library:Notify(n8)
        else
            Library:Notify("Failed to copy")
        end
    end
    local function onDiscord()
        n6(nW, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = nW, Copyable = true }, "|", nU, "|", nV },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    local oj = {
        [1] = Window:AddTab("Info", "info"),
        [2] = Window:AddTab("Main", "gamepad-2"),
        [3] = Window:AddTab("Player", "person-standing"),
        [4] = Window:AddTab("Settings", "settings")
    }
    local ol = oj[2]:AddSubTab("Dungeon", "swords")
    local om = oj[2]:AddSubTab("Tower", "castle")
    local on = oj[2]:AddSubTab("Forge", "hammer")
    local oo = oj[2]:AddSubTab("Items", "coins")
    local function op(oq)
        local DiscordGroup = oq:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    op(ol)
    op(om)
    op(on)
    op(oo)
    op(oj[3])
    op(oj[4])
    local function ov()
        local DungeonGroup = ol:AddRightGroupbox("Dungeon", "swords")
        local Label = DungeonGroup:AddLabel(AM.GetDungeonStatus(), true)
        DungeonGroup:AddDivider()
        DungeonGroup:AddToggle("AutoDungeon", {
            Text = "Auto Farm Dungeon",
            Tooltip = "Moves to the stage gate and clears it, then farms the respawns",
            Default = false,
            Callback = function(oA)
                AM.SetAutoDungeon(oA)
            end
        })
        DungeonGroup:AddDropdown("DungeonStage", {
            Text = "Stage",
            Values = AM.StageValues(),
            Default = 1,
            Multi = false,
            Callback = function(oC)
                AM.SetDungeonStage(oC)
            end
        })
        DungeonGroup:AddToggle("DungeonForceKill", {
            Text = "Force Kill Stage Enemies",
            Default = true,
            Callback = function(oE)
                AM.SetDungeonForceKill(oE)
            end
        })
        DungeonGroup:AddDivider()
        DungeonGroup:AddButton({
            Text = "Exit Fight Now",
            Func = function()
                local oH, oI = AM.ExitFightNow()
                Library:Notify(oI)
            end
        })
        local CollectGroup = ol:AddRightGroupbox("Collect", "gem")
        CollectGroup:AddToggle("AutoCollect", {
            Text = "Auto Collect Ore",
            Default = false,
            Callback = function(oM)
                AM.SetAutoCollect(oM)
            end
        })
        CollectGroup:AddDropdown("CollectRarities", {
            Text = "Ore Rarity Filter",
            Tooltip = "Leave empty to collect every ore",
            Values = AM.RarityValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Callback = function(oO)
                AM.SetCollectRarities(oO)
            end
        })
        return Label
    end
    local function oQ()
        local FrostboundTowerGroup = om:AddRightGroupbox("Frostbound Tower", "castle")
        local Label = FrostboundTowerGroup:AddLabel(AM.GetTowerStatus(), true)
        FrostboundTowerGroup:AddDivider()
        FrostboundTowerGroup:AddToggle("AutoTower", {
            Text = "Auto Farm Tower",
            Default = false,
            Callback = function(oV)
                AM.SetAutoTower(oV)
            end
        })
        FrostboundTowerGroup:AddDropdown("TowerRound", {
            Text = "Start Round",
            Values = AM.RoundValues(),
            Default = 1,
            Multi = false,
            Callback = function(oX)
                AM.SetTowerRound(oX)
            end
        })
        FrostboundTowerGroup:AddToggle("TowerInOrder", {
            Text = "Farm Rounds In Order",
            Tooltip = "Ignores the dropdown and always starts at your highest unlocked round",
            Default = false,
            Callback = function(oZ)
                AM.SetTowerInOrder(oZ)
            end
        })
        FrostboundTowerGroup:AddToggle("TowerForceKill", {
            Text = "Force Kill Tower Enemies",
            Default = true,
            Callback = function(o0)
                AM.SetTowerForceKill(o0)
            end
        })
        FrostboundTowerGroup:AddDivider()
        FrostboundTowerGroup:AddButton({
            Text = "Claim Daily Ticket",
            Func = function()
                local o3, o4 = AM.ClaimDailyTicket()
                Library:Notify(o4)
            end
        })
        FrostboundTowerGroup:AddButton({
            Text = "Exit Tower Now",
            Func = function()
                local o8, o9 = AM.ExitTowerNow()
                Library:Notify(o9)
            end
        })
        return Label
    end
    local function pb()
        local ForgeGroup = on:AddRightGroupbox("Forge", "hammer")
        local Label2 = ForgeGroup:AddLabel(AM.GetForgeStatus(), true)
        local Label = ForgeGroup:AddLabel(AM.GetForgePlan(), true)
        ForgeGroup:AddDivider()
        ForgeGroup:AddToggle("AutoForge", {
            Text = "Auto Forge",
            Default = false,
            Callback = function(ph)
                AM.SetAutoForge(ph)
            end
        })
        ForgeGroup:AddDropdown("ForgeTarget", {
            Text = "Target Gear",
            Tooltip = "The ore count is chosen automatically to give this class the best roll",
            Values = AM.ForgeTargetValues(),
            Default = 2,
            Multi = false,
            Callback = function(pj)
                AM.SetForgeTarget(pj)
                Label:SetText(AM.GetForgePlan())
            end
        })
        ForgeGroup:AddDropdown("ForgeRarities", {
            Text = "Ore Rarity Filter",
            Tooltip = "Leave empty to feed any ore. Rarer ore rolls a higher tier",
            Values = AM.RarityValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Callback = function(pm)
                AM.SetForgeRarities(pm)
            end
        })
        ForgeGroup:AddToggle("ForgeBestFirst", {
            Text = "Spend Best Ore First",
            Tooltip = "Off spends your cheapest ore first",
            Default = false,
            Callback = function(po)
                AM.SetForgeBestFirst(po)
            end
        })
        ForgeGroup:AddSlider("ForgeKeep", {
            Text = "Keep Per Ore",
            Default = 0,
            Min = 0,
            Max = 100,
            Rounding = 0,
            Callback = function(pq)
                AM.SetForgeKeep(pq)
            end
        })
        ForgeGroup:AddDivider()
        ForgeGroup:AddButton({
            Text = "Forge Now",
            Func = function()
                local pt, pu = AM.ForgeNow()
                Library:Notify(pu)
            end
        })
        return Label2
    end
    local function px()
        local SellGroup = oo:AddRightGroupbox("Sell", "coins")
        SellGroup:AddToggle("AutoSell", {
            Text = "Auto Sell",
            Default = false,
            Callback = function(pA)
                AM.SetAutoSell(pA)
            end
        })
        SellGroup:AddDropdown("SellTypes", {
            Text = "Sell Item Types",
            Values = AM.SellTypeValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Callback = function(pD)
                AM.SetSellTypes(pD)
            end
        })
        SellGroup:AddDropdown("SellRarities", {
            Text = "Sell Rarity Filter",
            Tooltip = "Leave empty to sell every rarity of the selected types",
            Values = AM.RarityValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Callback = function(pF)
                AM.SetSellRarities(pF)
            end
        })
        SellGroup:AddSlider("SellKeep", {
            Text = "Keep Per Item",
            Default = 0,
            Min = 0,
            Max = 50,
            Rounding = 0,
            Callback = function(pH)
                AM.SetSellKeep(pH)
            end
        })
        SellGroup:AddDivider()
        SellGroup:AddButton({
            Text = "Sell All Now",
            Func = function()
                local pK, pL = AM.SellAllNow()
                Library:Notify(pL)
            end
        })
        local ProgressionGroup = oo:AddLeftGroupbox("Progression", "trending-up")
        local Label = ProgressionGroup:AddLabel(AM.GetProgress(), true)
        ProgressionGroup:AddDivider()
        ProgressionGroup:AddToggle("AutoRebirth", {
            Text = "Auto Rebirth",
            Default = false,
            Callback = function(pQ)
                AM.SetAutoRebirth(pQ)
            end
        })
        ProgressionGroup:AddButton({
            Text = "Rebirth Now",
            Func = function()
                local pT, pU = AM.RebirthNow()
                Library:Notify(pU)
            end
        })
        ProgressionGroup:AddDivider()
        ProgressionGroup:AddToggle("AutoUpgrade", {
            Text = "Auto Buy Upgrades",
            Default = false,
            Callback = function(pW)
                AM.SetAutoUpgrade(pW)
            end
        })
        ProgressionGroup:AddDropdown("UpgradeTargets", {
            Text = "Upgrades To Buy",
            Values = AM.UpgradeValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Callback = function(pY)
                AM.SetUpgradeTargets(pY)
            end
        })
        ProgressionGroup:AddButton({
            Text = "Buy Upgrade Now",
            Func = function()
                local p0, p1 = AM.BuyUpgradeNow()
                Library:Notify(p1)
            end
        })
        local TrainingGroup = oo:AddLeftGroupbox("Training", "dumbbell")
        TrainingGroup:AddToggle("AutoTrain", {
            Text = "Auto Train",
            Tooltip = "Pauses while a dungeon or tower run is active",
            Default = false,
            Callback = function(p4)
                AM.SetAutoTrain(p4)
            end
        })
        TrainingGroup:AddDropdown("TrainArea", {
            Text = "Train Area",
            Values = AM.TrainAreaValues(),
            Default = 1,
            Multi = false,
            Callback = function(p6)
                AM.SetTrainArea(p6)
            end
        })
        TrainingGroup:AddDivider()
        TrainingGroup:AddToggle("AutoClick", {
            Text = "Auto Click",
            Tooltip = "Sends train clicks wherever you are stood",
            Default = false,
            Callback = function(p8)
                AM.SetAutoClick(p8)
            end
        })
        TrainingGroup:AddSlider("ClickRate", {
            Text = "Clicks Per Second",
            Default = 6,
            Min = 1,
            Max = 20,
            Rounding = 0,
            Callback = function(qa)
                AM.SetClickRate(qa)
            end
        })
        return Label
    end
    local qc = ov()
    local qd = oQ()
    local qe = pb()
    local qf = px()
    qm = task.spawn(function()
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            qc:SetText(AM.GetDungeonStatus())
            qd:SetText(AM.GetTowerStatus())
            qe:SetText(AM.GetForgeStatus())
            qf:SetText(AM.GetProgress())
        end
    end)
    AM.Track(function()
        if coroutine.status(qm) ~= "dead" then
            pcall(task.cancel, qm)
        end
    end)
    local function qo()
        local LK
        local LC
        local LH
        local LF
        LC = nil
        LF = nil
        LH = nil
        LK = nil
        local LD, LE, LG, LI, Label2, Label3, LM, LN, Label
        LH = function(qq)
            return (tostring(qq):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        LF = function(qs, qt)
            return string.format('<font color="%s">%s</font>', qt, LH(qs))
        end
        LI = function(qw, qx, qy)
            return string.format("<b>%s</b> %s %s", qw, LF("-", "#5a6070"), LF(qx, qy))
        end
        LN = "#e8a34d"
        local LP = "#8b93a3"
        LG = "#7fd47f"
        local LQ = "#6ec1ff"
        local LR = AM.Support()
        local LS = #LR == 0 and "ready"
        local LT = LS or "limited: " .. table.concat(LR, ", ")
        LE = "Unknown"
        pcall(function()
            local Ll_1
            local Lk_1
            local Lu = if Av(identifyexecutor) then 1 else 0
            if Lu == 1 then
                Ll_1, Lk_1 = identifyexecutor()
                local Lm = Ll_1 ~= ""
                local Ln = type(Ll_1) == "string" and Lm
                if Ln then
                    local Lm_1 = type(Lk_1) == "string" and Lk_1 ~= "" and Ll_1 .. " " .. Lk_1
                    LE = Lm_1 or Ll_1
                end
            end
        end)
        LK = os.clock()
        LD = function()
            local Lv = math.floor(os.clock() - LK)
            if Lv < 60 then
                return Lv .. "s"
            elseif Lv < 3600 then
                return string.format("%dm %ds", Lv // 60, Lv % 60)
            else
                return string.format("%dh %dm", Lv // 3600, Lv % 3600 // 60)
            end
        end
        local UserGroup = oj[1]:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(LI("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, LG), true)
        UserGroup:AddLabel(LI("UserId", tostring(LocalPlayer.UserId), LQ), true)
        UserGroup:AddLabel(LI("Executor", LE .. "  " .. LT, LG), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(LI("Session", LD(), LN), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                n6(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                n6("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = oj[1]:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(LI("Game", nU, LQ), true)
        Label2 = SessionGroup:AddLabel(LI("Players", "0/0", LG), true)
        LM = tostring(game.JobId)
        local LQ_1 = #LM > 18 and string.sub(LM, 1, 18) .. "..."
        local LS_2 = LQ_1
        local LX = if LS_2 then 1 else 0
        local LV = 3510 * LX + 2142 * (1 - LX)
        local LW = 3730 * LX + 182 * (1 - LX)
        if not ((LV * 3178 + LW * 3835 + LV * LW) % 16777213 == 4997204) then
            LS_2 = LM
        end
        local LQ_2 = LS_2
        SessionGroup:AddLabel(LI("Job", LQ_2, LP), true)
        Label = SessionGroup:AddLabel(LI("Ping", "0 ms", LN), true)
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
                n6(LM, "Copied Job ID")
            end
        })
        LC = task.spawn(function()
            local Ly_1
            local Lx_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(LI("Session", LD(), LN))
                Label2:SetText(LI("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), LG))
                Lx_1, Ly_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local Lx_2 = Lx_1 and Ly_1 .. " ms" or "n/a"
                Label:SetText(LI("Ping", Lx_2, LN))
            end
        end)
        AM.Track(function()
            if coroutine.status(LC) ~= "dead" then
                pcall(task.cancel, LC)
            end
        end)
        local SocialsGroup = oj[1]:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                n6(nX, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                n6(nY, "Copied website link")
            end
        })
    end
    qo()
    local function rE()
        local rM
        local rK
        local rL
        local rJ
        local MovementGroup = oj[3]:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = oj[3]:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        rJ = {}
        rM = {}
        rK = {}
        local rI = {}
        rL = {}
        local function rN()
            for k, v in rJ do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(rJ)
        end
        local function rR()
            for k, v in rK do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(rK)
        end
        local function rV()
            for k, v in rL do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(rL)
        end
        local function rZ(r_)
            if not r_:IsA("ProximityPrompt") then
                return
            end
            if rM[r_] == nil then
                rM[r_] = {
                    HoldDuration = r_.HoldDuration,
                    MaxActivationDistance = r_.MaxActivationDistance,
                    RequiresLineOfSight = r_.RequiresLineOfSight
                }
            end
            r_.HoldDuration = 0
            r_.MaxActivationDistance = 50
            r_.RequiresLineOfSight = false
        end
        local function r1()
            for k, v in rM do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(rM)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                rV()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                rR()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                rN()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                    pcall(rZ, v)
                end
            else
                r1()
            end
        end)
        table.insert(rI, Workspace.DescendantAdded:Connect(function(sk)
            if Toggles.InstantProximityPrompt.Value then
                rZ(sk)
            end
        end))
        table.insert(rI, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if rJ[v] == nil then
                        rJ[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(rI, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local MO = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and MO then
                MO:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(rI, RunService.RenderStepped:Connect(function(sG)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local MR = Character and Character:FindFirstChildOfClass("Humanoid")
            local MS = Character
            if MS then
                MS = Character:FindFirstChild("HumanoidRootPart")
            end
            local MQ_1 = MS
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and MR then
                if rK[MR] == nil then
                    rK[MR] = MR.WalkSpeed
                end
                MR.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and MQ_1 and MR and CurrentCamera then
                if rL[MR] == nil then
                    rL[MR] = MR.PlatformStand
                end
                MR.PlatformStand = true
                local MS_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        MS_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        MS_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        MS_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        MS_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        MS_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        MS_4 -= Vector3.new(0, 1, 0)
                    end
                end
                MQ_1.AssemblyLinearVelocity = Vector3.zero
                if MS_4.Magnitude > 0 then
                    MQ_1.CFrame = MQ_1.CFrame + MS_4.Unit * Options.FlySpeed.Value * sG
                end
            end
        end))
        AM.Track(function()
            for k, v in rI do
                v:Disconnect()
            end
            rN()
            rR()
            rV()
            r1()
        end)
    end
    rE()
    local function sW()
        local N7, Label, N9, Oa, Ob, Oc, Od, Oe, Of, Og, Oh, Oi, Oj, Ok
        N9 = {}
        Oh = {}
        Oe = nil
        Oj = false
        Of = 0
        Ob = 0
        Ok = os.clock()
        local MenuGroup = oj[4]:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        Oc = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local M3 = not CurrentCamera or not Av(VirtualUser.CaptureController) or not Av(VirtualUser.ClickButton2)
            if M3 then
                return false
            end
            local M3_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not M3_1 then
                return false
            end
            Of += 1
            Ok = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. Of)
            end)
            return true
        end
        N7 = function(tp)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not tp)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not tp
                end
            end)
            if not tp then
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
        Oi = function(tF)
            if tF.ClassName == "ParticleEmitter" or tF.ClassName == "Trail" or tF.ClassName == "Smoke" or tF.ClassName == "Fire" or tF.ClassName == "Sparkles" or tF.ClassName == "Explosion" or tF.ClassName == "Beam" then
                if N9[tF] == nil then
                    N9[tF] = tF.Enabled
                end
                pcall(function()
                    tF.Enabled = false
                end)
            end
        end
        Og = function()
            for k, v in N9 do
                local Ni = k
                local Nk = v
                if Ni.Parent then
                    pcall(function()
                        Ni.Enabled = Nk
                    end)
                end
            end
            table.clear(N9)
            if Oe then
                pcall(function()
                    settings().Rendering.QualityLevel = Oe.Quality
                end)
                Lighting.GlobalShadows = Oe.Shadows
                Lighting.FogEnd = Oe.Fog
                Oe = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(tU)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not tU)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(tZ)
                if tZ then
                    if not Oe then
                        Oe = {
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
                        pcall(Oi, v)
                    end
                else
                    Og()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        N7(true)
        local ScriptGroup = oj[4]:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            N7(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            N7(true)
        end
        table.insert(Oh, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                Oc()
            end
        end))
        table.insert(Oh, Workspace.DescendantAdded:Connect(function(uh)
            if Toggles.FpsBoost.Value then
                Oi(uh)
            end
        end))
        Od = function(ul)
            local NE = Oj or Library.Unloaded
            local NJ = if NE then 1 else 0
            local NH = 3887 * NJ + 2644 * (1 - NJ)
            local NI = 243 * NJ + 3891 * (1 - NJ)
            if not ((NH * 3493 + NI * 3399 + NH * NI) % 16777213 == 15347789) then
                NE = not Toggles.AutoReconnect.Value
            end
            if NE then
                return
            end
            Oj = true
            local ND = Ob
            local NE_1 = pcall(function()
                if ul then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not NE_1 then
                Oj = false
                if not ul and ND == Ob then
                    task.delay(1.5, function()
                        if ND == Ob then
                            Od(true)
                        end
                    end)
                end
            end
        end
        table.insert(Oh, TeleportService.TeleportInitFailed:Connect(function(uD)
            local NO
            if uD == LocalPlayer and Oj then
                Oj = false
                NO = Ob
                task.delay(3, function()
                    if NO == Ob then
                        Od(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local NT = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not NT then
                return
            end
            table.insert(Oh, NT.ChildAdded:Connect(function(uS)
                if uS.Name == "ErrorPrompt" then
                    Od(false)
                end
            end))
        end)
        Oa = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    N7(true)
                end
                local NZ = Toggles.AntiAfk.Value and os.clock() - Ok >= 60
                if NZ then
                    Oc()
                end
                task.wait(1)
            end
        end)
        AM.Track(function()
            Ob += 1
            for k, v in Oh do
                v:Disconnect()
            end
            pcall(task.cancel, Oa)
            N7(false)
            Og()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    sW()
    local function vb()
        local Pf, Pg, Ph, Pi
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("MyScriptHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(oj[4])
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/LootToForge")
        local Pj = SaveManager:BuildConfigSection(oj[4])
        Ph = function(vi, vj)
            local Oo_1 = (vi == "Toggle" and Toggles or Options)[vj]
            local On_2 = type(Oo_1) == "table" and Oo_1.Type == vi
            return On_2 and Oo_1 or nil
        end
        Pf = function(vs, vt)
            local Type = vt.Type
            if Type == "Toggle" then
                return { idx = vs, type = "Toggle", value = vt.Value == true }
            elseif Type == "Slider" then
                return { idx = vs, type = "Slider", value = tostring(vt.Value) }
            elseif Type == "Dropdown" then
                return { idx = vs, type = "Dropdown", multi = vt.Multi == true, value = vt.Value }
            elseif Type == "Input" then
                local Os = vt.Value or ""
                return { idx = vs, type = "Input", text = tostring(Os) }
            elseif Type == "ColorPicker" then
                return { idx = vs, type = "ColorPicker", value = vt.Value:ToHex(), transparency = vt.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = vs,
                    type = "KeyPicker",
                    mode = vt.Mode,
                    key = vt.Value,
                    modifiers = vt.Modifiers,
                    toggled = vt.Toggled
                }
            else
                return nil
            end
        end
        Pi = function()
            local Ov = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local Ow = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if Ow then
                        local Ow_1 = Pf(k, v)
                        if Ow_1 then
                            Ov[#Ov + 1] = Ow_1
                        end
                    end
                end
            end
            table.sort(Ov, function(vD, vE)
                if vD.type ~= vE.type then
                    return vD.type < vE.type
                end
                return vD.idx < vE.idx
            end)
            return { objects = Ov }
        end
        Pg = function(vG)
            local OP
            OP = nil
            local OQ = type(vG) ~= "table" or type(vG.idx) ~= "string"
            local OU = if OQ then 1 else 0
            local OS = 2185 * OU + 1333 * (1 - OU)
            local OT = 2030 * OU + 573 * (1 - OU)
            if not ((OS * 3965 + OT * 2098 + OS * OT) % 16777213 == 580802) then
                OQ = type(vG.type) ~= "string"
            end
            if not OQ then
                OQ = SaveManager.Ignore[vG.idx]
            end
            if OQ then
                return false
            end
            OP = Ph(vG.type, vG.idx)
            if not OP then
                return false
            end
            local OQ_1 = pcall(function()
                if vG.type == "Input" then
                    if type(vG.text) ~= "string" then
                        return
                    end
                    OP:SetValue(vG.text)
                elseif vG.type == "ColorPicker" then
                    OP:SetValueRGB(Color3.fromHex(vG.value), vG.transparency)
                elseif vG.type == "KeyPicker" then
                    OP:SetValue({ vG.key, vG.mode, vG.modifiers })
                    if vG.mode == "Toggle" and vG.toggled ~= nil then
                        OP.Toggled = vG.toggled
                        OP:Update()
                    end
                else
                    OP:SetValue(vG.value)
                end
            end)
            return OQ_1
        end
        Pj:AddDivider()
        Pj:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        Pj:AddButton("Export Config to Clipboard", function()
            local OW_1
            local OV_1
            OV_1, OW_1 = pcall(HttpService.JSONEncode, HttpService, Pi())
            if OV_1 then
                local OV_2 = Av(setclipboard) and setclipboard
                local OX = OV_2
                if not OX then
                    local OV_3 = Av(toclipboard) and toclipboard
                    local OY = OV_3
                    local O1 = if OY then 1 else 0
                    local O_ = 426 * O1 + 416 * (1 - O1)
                    local O0 = 3390 * O1 + 4085 * (1 - O1)
                    if not ((O_ * 134 + O0 * 857 + O_ * O0) % 16777213 == 4406454) then
                        OY = nil
                    end
                    OX = OY
                end
                local OV_4 = OX
                local OX_1 = type(OV_4) == "function" and pcall(OV_4, OW_1)
                if OX_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        Pj:AddButton("Import Config from Clipboard Text", function()
            local O4_1
            local O2 = Options.SaveManager_ImportSource.Value or ""
            local O2_1
            local O3 = tostring(O2):match("^%s*(.-)%s*$")
            if O3 == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #O3 > 262144 then
                Library:Notify("That config is too large")
                return
            end
            O2_1, O4_1 = pcall(HttpService.JSONDecode, HttpService, O3)
            local O3_1 = not O2_1 or type(O4_1) ~= "table" or type(O4_1.objects) ~= "table"
            if O3_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #O4_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local O2_2 = 0
            for i, v in ipairs(O4_1.objects) do
                if Pg(v) then
                    O2_2 += 1
                end
            end
            if O2_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local O4_2 = O2_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(O2_2, O4_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.DungeonStage then
            AM.SetDungeonStage(Options.DungeonStage.Value)
        end
        if Options.TowerRound then
            AM.SetTowerRound(Options.TowerRound.Value)
        end
        if Options.CollectRarities then
            AM.SetCollectRarities(Options.CollectRarities.Value)
        end
        if Options.SellTypes then
            AM.SetSellTypes(Options.SellTypes.Value)
        end
        if Options.SellRarities then
            AM.SetSellRarities(Options.SellRarities.Value)
        end
        if Options.SellKeep then
            AM.SetSellKeep(Options.SellKeep.Value)
        end
        if Options.UpgradeTargets then
            AM.SetUpgradeTargets(Options.UpgradeTargets.Value)
        end
        if Options.TrainArea then
            AM.SetTrainArea(Options.TrainArea.Value)
        end
        if Options.ForgeTarget then
            AM.SetForgeTarget(Options.ForgeTarget.Value)
        end
        if Options.ForgeRarities then
            AM.SetForgeRarities(Options.ForgeRarities.Value)
        end
        if Options.ForgeKeep then
            AM.SetForgeKeep(Options.ForgeKeep.Value)
        end
        if Options.ClickRate then
            AM.SetClickRate(Options.ClickRate.Value)
        end
        if Toggles.ForgeBestFirst then
            AM.SetForgeBestFirst(Toggles.ForgeBestFirst.Value)
        end
        if Toggles.DungeonForceKill then
            AM.SetDungeonForceKill(Toggles.DungeonForceKill.Value)
        end
        if Toggles.TowerInOrder then
            AM.SetTowerInOrder(Toggles.TowerInOrder.Value)
        end
        if Toggles.TowerForceKill then
            AM.SetTowerForceKill(Toggles.TowerForceKill.Value)
        end
        if Toggles.AutoCollect then
            AM.SetAutoCollect(Toggles.AutoCollect.Value)
        end
        if Toggles.AutoSell then
            AM.SetAutoSell(Toggles.AutoSell.Value)
        end
        if Toggles.AutoRebirth then
            AM.SetAutoRebirth(Toggles.AutoRebirth.Value)
        end
        if Toggles.AutoUpgrade then
            AM.SetAutoUpgrade(Toggles.AutoUpgrade.Value)
        end
        if Toggles.AutoTrain then
            AM.SetAutoTrain(Toggles.AutoTrain.Value)
        end
        if Toggles.AutoClick then
            AM.SetAutoClick(Toggles.AutoClick.Value)
        end
        if Toggles.AutoForge then
            AM.SetAutoForge(Toggles.AutoForge.Value)
        end
        if Toggles.AutoDungeon then
            AM.SetAutoDungeon(Toggles.AutoDungeon.Value)
        end
        if Toggles.AutoTower then
            AM.SetAutoTower(Toggles.AutoTower.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    vb()
end
Pw_24()
