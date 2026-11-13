local fns = {}
local Sq_4
local AT
local BA
local Ah
local AZ
local State
local AG
local Bn
local An
local A4
local BM
local AM
local At
local Ba
local AS
local Bz
local Az
local Bg
local Ag
local AF
local Bm
local Am
local A3
local BL
local AL
local Bs
local LocalPlayer
local A9
local BR
local AR
local Ay
local Bf
local BX
local Af
local AX
local BE
local AE
local Bl
local Al
local A2
local BK
local AK
local Br
local Ar
local A8
local BQ
local AQ
local Bx
local Ax
local Be
local BW
local AW
local AD
local Bk
local A1
local Aq
local BP
local AP
local Bw
local Aw
local Bd
local BV
local AV
local BC
local Bj
local B0
local Aj
local A0
local AI
local Bp
local Ap
local A6
local BO
local AO
local Bv
local Av
local Bc
local BU
local BB
local AB
local Ai
local CoreGui
local BH
local AH
local Bo
local Ao
local A5
local BN
local AN
local Bu
local Au
local Bb
local BT
function fns.fn25(mJ)
    local Mp = tonumber(mJ) or 5
    Ao.interval = math.max(1, Mp)
end
function fns.fn45(hC, hD)
    local IC = {}
    local ID = type(hC) == "table" and hC[hD]
    if type(ID) == "table" then
        for i, v in ipairs(ID) do
            local ID_1 = tonumber(v)
            if ID_1 then
                IC[ID_1] = true
            end
        end
    end
    return IC
end
function fns.fn58()
    local H1 = BR()
    local H2 = H1 and Be() < H1
    if H2 then
        AL(string.format("Rebirth needs level %d", H1))
        return
    end
    AV("Rebirth")
    task.wait(0.35)
    if Bz("Rebirth", "Frame/Info/Rebirth/Rebirth") then
        Bu("Requested rebirth")
    end
    task.wait(0.5)
    A6("Rebirth")
end
function fns.fn71()
    if BC("Pet", "EquipBest") then
        AL("Equipped best pets")
    end
end
function fns.fn72(a6, a7)
    local Do = Bf()
    local Dp = Do and Do:FindFirstChild(a6)
    local Do_1 = Dp
    if Dp then
        Dp = Do_1:IsA(a7)
    end
    if Dp then
        return Do_1
    end
    return nil
end
function fns.fn78(mL)
    Ao.animals = A5(mL)
end
function fns.fn86()
    for i, v in ipairs({ Bw, Bm, Bd, A3, AX, AO, AF, Aw, Ao, Ag, BU, BK, BA }) do
        Bo(v)
    end
    pcall(AB, { "Ctrl", "TrainArea", "StopTrainLoop" })
end
function fns.fn94()
    local LF = Ba()
    local LG = LF and Bv(LF)
    if LG then
        Bu("Teleported to level " .. tostring(LF))
    else
        Bu("Could not find the drilling area")
    end
end
function fns.fn99()
    local WorldScene = BV:FindFirstChild("WorldScene")
    if not WorldScene then
        return nil
    end
    local Eu = WorldScene:FindFirstChild(tostring(BB())) or WorldScene:FindFirstChildOfClass("Folder")
    return Eu
end
function fns.fn119(e3)
    local GH_1, GH_2
    local GG = not e3 or not e3:IsA("GuiButton")
    local GG_1, GG_3
    if GG then
        return false
    end
    local GL = if AR(firesignal) then 1 else 0
    if GL == 1 then
        if pcall(firesignal, e3.Activated) then
            return true
        elseif AR(getconnections) then
            GG_1, GH_1 = pcall(getconnections, e3.Activated)
            if GG_3 then
                local GG_2 = false
                for i, v in ipairs(GH_1) do
                    if AR(v.Fire) then
                        if pcall(v.Fire, v) then
                            GG_2 = true
                        end
                    elseif AR(v.Function) then
                        if pcall(v.Function) then
                            GG_2 = true
                        end
                    end
                end
                return GG_2
            end
            return false
        else
            return false
        end
    elseif AR(getconnections) then
        GG_3, GH_2 = pcall(getconnections, e3.Activated)
        if GG_3 then
            local GG_4 = false
            for i, v in ipairs(GH_2) do
                if AR(v.Fire) then
                    if pcall(v.Fire, v) then
                        GG_4 = true
                    end
                elseif AR(v.Function) then
                    if pcall(v.Function) then
                        GG_4 = true
                    end
                end
            end
            return GG_4
        end
        return false
    else
        return false
    end
end
function fns.fn136()
    local IT_1
    local IS_1
    local IP = At()
    local IQ = IP and IP.weaponData
    local IQ_1 = A8(IQ, "ownedWeaponIds")
    local IR = type(IQ) == "table" and IQ.equipWeaponId
    local IP_2 = tonumber(IR)
    IS_1, IT_1 = nil, nil
    for i, v in ipairs(AW()) do
        if IQ_1[v.id] then
            if not IT_1 or v.power > IT_1.power then
                IT_1 = v
            end
        else
            if v.price > 0 and not IS_1 then
                IS_1 = v
            end
        end
    end
    if IS_1 then
        local IQ_2 = BP()
        if IQ_2 < IS_1.price then
            AL(string.format("Waiting for %s (%s)", tostring(IS_1.name), A9(IS_1.price)))
            return
        end
        if not BC("Weapon", "RequestEquipOrBuy", IS_1.id) then
            return
        end
        Bu("Bought " .. tostring(IS_1.name))
        task.wait(0.4)
        local IQ_3 = not IT_1
        local IY = if IQ_3 then 1 else 0
        local IW = 3643 * IY + 466 * (1 - IY)
        local IX = 335 * IY + 2249 * (1 - IY)
        if not ((IW * 3897 + IX * 1789 + IW * IX) % 16777213 == 16016491) then
            IQ_3 = IS_1.power >= IT_1.power
        end
        if IQ_3 then
            IT_1 = IS_1
        end
    else
        if not IT_1 then
            AL("No drills available")
            return
        end
        AL("All drills owned")
    end
    if IT_1 and IP_2 ~= IT_1.id then
        BC("Weapon", "RequestEquipOrBuy", IT_1.id)
        AL("Drill: " .. tostring(IT_1.name))
    end
end
function fns.fn167(bL)
    local DH_1
    local DG_1
    if type(bL) == "number" then
        return bL
    elseif type(bL) ~= "string" then
        return nil
    else
        local DF = bL:gsub("[%s,%%$]", "")
        DG_1, DH_1 = DF:match("^(%-?%d*%.?%d+)(%a*)$")
        if not DG_1 then
            return nil
        end
        local DF_1 = tonumber(DG_1)
        if not DF_1 then
            return nil
        elseif DH_1 ~= "" then
            local DG_2 = AE[DH_1:upper()]
            if not DG_2 then
                return nil
            end
            DF_1 *= DG_2
            return DF_1
        else
            return DF_1
        end
    end
end
function fns.fn171(lA)
    if lA then
        Bs(Bw, AM)
    else
        Bo(Bw)
    end
end
function fns.fn184(no)
    local MP = tonumber(no) or 10
    BA.interval = math.max(1, MP)
end
function fns.fn202(nh)
    if nh then
        Bs(BA, A4)
    else
        Bo(BA)
    end
end
function fns.fn203(ak)
    State.Status = tostring(ak)
end
function fns.fn211(na)
    if na then
        Bs(BK, A1)
    else
        Bo(BK)
    end
end
function fns.fn236(lY)
    local L0 = tonumber(lY) or 1
    Bm.interval = math.max(0.3, L0)
end
function fns.fn241(fc, fd)
    local GS = AI(fc)
    if not GS then
        AV(fc)
        GS = AI(fc)
    end
    local GT = GS and BM(GS, fd)
    if not GT then
        return false
    end
    return A0(GT)
end
function fns.fn242()
    local zones = Bm.zones
    local Hs = Au()
    if Ah(zones) == 0 then
        return Hs
    end
    local Ht = {}
    for i, v in ipairs(Hs) do
        if zones[v] then
            table.insert(Ht, v)
        end
    end
    return Ht
end
function fns.fn277()
    local HT = Bg("Rebirth")
    if not HT then
        return nil
    end
    local HU = Ap() + 1
    for k, v in pairs(HT) do
        if tonumber(v.Rebirth) == HU then
            return tonumber(v.LevelLimit)
        end
    end
    return nil
end
function fns.fn284()
    local DR = Bj("PlayerData", "data")
    local DS = type(DR) == "table" and DR
    return DS or nil
end
function fns.fn296(kl)
    local K4 = kl or ""
    return tonumber(tostring(K4):match("%((%d+)%)"))
end
function fns.fn307()
    local CQ_1, CQ_2
    local CP_1, CP_5, CP_6
    local CO
    local CO_5
    if AR(getrenv) then
        CP_1, CQ_1 = pcall(getrenv)
        local CR = CP_1 and type(CQ_1) == "table"
        if CR then
            CO = CQ_1
        end
    end
    local CP_2 = CO and rawget(CO, "shared")
    local CP_3 = type(CP_2) == "table" and CP_2.Ctrl
    if CP_3 then
        return CP_2
    end
    local CO_2 = AR(getconnections) and AR(getfenv)
    if CO_2 then
        local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
        local CP_4 = PlayerGui and PlayerGui:FindFirstChild("HUD")
        if CP_4 then
            for i, descendant in ipairs(CP_4:GetDescendants()) do
                if descendant:IsA("GuiButton") then
                    CO_5, CP_5 = pcall(getconnections, descendant.Activated)
                    if CO_5 then
                        for i, v in ipairs(CP_5) do
                            local Function = v.Function
                            if type(Function) == "function" then
                                CP_6, CQ_2 = pcall(getfenv, Function)
                                local CO_7 = CP_6 and type(CQ_2) == "table" and rawget(CQ_2, "shared")
                                local CO_8 = type(CO_7) == "table" and CO_7.Ctrl
                                if CO_8 then
                                    return CO_7
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return nil
end
function fns.fn314(ml)
    if ml then
        Bs(AO, BE)
    else
        Bo(AO)
    end
end
function fns.fn317(k0)
    local Lw = AH()
    local Lx = Lw and Lw:FindFirstChild("DisplayStand")
    local Lw_1 = Lx
    if Lx then
        Lx = Lw_1:FindFirstChild(tostring(k0))
    end
    local Lw_2 = Lx
    if Lx then
        Lx = Lw_2:FindFirstChild("Charge")
    end
    local Lw_3 = Lx
    if not Lw_3 then
        return nil
    end
    local Trigger = Lw_3:FindFirstChild("Trigger")
    local Ly = Trigger and Trigger:IsA("BasePart")
    if Ly then
        return Trigger
    end
    return Lw_3:FindFirstChildWhichIsA("BasePart", true)
end
function fns.fn343(eU)
    local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
    local Gy = PlayerGui and PlayerGui:FindFirstChild(eU)
    return Gy
end
function fns.fn347(f1)
    local Hp = AN(f1)
    if not Hp then
        return false
    end
    return AK(Hp, 6)
end
function fns.fn410()
    A6("Selling")
    task.wait(0.4)
    AV("Selling")
    task.wait(0.6)
    local Jr = AI("Selling")
    local Js = Jr and BM(Jr, "Frame/Info/ScrollingFrame")
    local Jr_1 = {}
    if not Js then
        return Jr_1
    end
    for i, child in ipairs(Js:GetChildren()) do
        local Js_1 = child:IsA("GuiObject") and child.Name ~= "Temp" and child.Name ~= "AllSell"
        if Js_1 then
            local Js_2 = BM(child, "State/Sell")
            local NameText = child:FindFirstChild("NameText", true)
            local Ju = Js_2 and Js_2:IsA("GuiButton")
            if Ju then
                local insert = table.insert
                local Jv = NameText and NameText:IsA("TextLabel") and NameText.Text
                local Jt_2 = Jv or ""
                insert(Jr_1, { name = Jt_2, button = Js_2 })
            end
        end
    end
    return Jr_1
end
function fns.fn419()
    local Eb = tonumber(LocalPlayer:GetAttribute("WorldID")) or 1
    return Eb
end
function fns.fn425()
    local JO = BQ()
    local JP = AP()
    local mode = Ao.mode
    if mode == "Bag Full" then
        if JP <= 0 or JO < JP then
            return
        end
    elseif mode == "Threshold" then
        if JO < Ao.threshold then
            return
        end
    elseif JO <= 0 then
        return
    end
    if Ah(Ao.animals) > 0 then
        BT()
        return
    end
    if AD("TreasureF", "SellAllTreasures") then
        AL(string.format("Sold %d treasures", JO))
    end
end
function fns.fn429(lF)
    local LN = tonumber(lF) or 0.2
    Bw.interval = math.max(0.05, LN)
end
function fns.fn441(mZ)
    if mZ then
        Bs(BU, AS)
    else
        Bo(BU)
    end
end
function fns.fn478(kn)
    local K6 = Bg("EggRoll")
    local K7
    if K6 then
        for k, v in pairs(K6) do
            if tonumber(v.Id) == kn then
                K7 = tostring(v.EggModel)
            end
        end
    end
    local K6_1 = AH()
    local K8 = K6_1 and K6_1:FindFirstChild("WorldModel")
    if not K8 or not K7 then
        return nil
    end
    local K8_2 = tonumber(K7:match("(%d+)$"))
    if not K8_2 then
        return nil
    end
    local K9_1 = K8_2 % 100
    local K8_3 = {}
    if K7:sub(1, 1) == "R" then
        table.insert(K8_3, "REgg" .. tostring(K9_1))
    end
    table.insert(K8_3, "Egg" .. tostring(K9_1))
    for i, v in ipairs(K8_3) do
        local K7_1 = K8:FindFirstChild(v)
        if K7_1 then
            return K7_1
        end
    end
    return nil
end
function fns.fn479()
    gethui = BX
end
function fns.fn506()
    local EF = Bg("Target")
    local EG = {}
    if EF then
        for k, v in pairs(EF) do
            local EF_1 = tonumber(v.Id)
            if EF_1 then
                table.insert(EG, EF_1)
            end
        end
    end
    table.sort(EG)
    return EG
end
function fns.fn532()
    local Fh_1
    local Fg_1
    local Ff = Bj("Mgr", "BattleMgr", "GetCurrentReadyTargetId")
    local Ff_5
    if AR(Ff) then
        Fg_1, Fh_1 = pcall(Ff)
        local Ff_1 = Fg_1 and tonumber(Fh_1)
        if Ff_1 then
            return tonumber(Fh_1)
        end
        local Ff_2 = At()
        local Fg_2 = Ff_2 and Ff_2.defeatedTargets
        local Fg_3 = Au()
        if type(Ff_5) == "table" then
            for i, v in ipairs(Fg_3) do
                local Fh_2 = not Fg_2[v]
                if Fh_2 ~= false then
                    Fh_2 = not Fg_2[tostring(v)]
                end
                if Fh_2 then
                    return v
                end
            end
        end
        return Fg_3[1]
    end
    local Ff_4 = At()
    Ff_5 = Ff_4 and Ff_4.defeatedTargets
    local Fg_5 = Au()
    if type(Ff_5) == "table" then
        for i, v in ipairs(Fg_5) do
            local Fh_3 = not Ff_5[v]
            if Fh_3 ~= false then
                Fh_3 = not Ff_5[tostring(v)]
            end
            if Fh_3 then
                return v
            end
        end
    end
    return Fg_5[1]
end
function fns.fn542()
    local GY = AR(firesignal) or AR(getconnections)
    return GY
end
function fns.fn553(mv)
    if mv then
        Bs(Aw, Aq)
    else
        Bo(Aw)
    end
end
function fns.fn555(X)
    return type(X) == "function"
end
function fns.fn565()
    local JZ = AH()
    local J_ = JZ and JZ:FindFirstChild("TrainArea")
    local JZ_1 = {}
    if J_ then
        for i, child in ipairs(J_:GetChildren()) do
            local J__1 = tonumber(child.Name)
            if J__1 then
                table.insert(JZ_1, { id = J__1, model = child })
            end
        end
    end
    return JZ_1
end
function fns.fn572(m6)
    local MB = (tonumber(m6))
    local MF = if MB then 1 else 0
    local MD = 663 * MF + 3799 * (1 - MF)
    local ME = 3379 * MF + 480 * (1 - MF)
    if not ((MD * 510 + ME * 2447 + MD * ME) % 16777213 == 10846820) then
        MB = 1
    end
    BU.amount = math.clamp(math.floor(MB), 1, 3)
end
function fns.fn597(af, ag)
    if not Ax() then
        return
    end
    local Notifications = State.Notifications
    local CL = tostring(af)
    local CM = ag or 5
    table.insert(Notifications, { text = CL, time = CM })
    if #State.Notifications > 12 then
        table.remove(State.Notifications, 1)
    end
end
function fns.fn607(cF)
    local EC = BN()
    local ED = EC and EC:FindFirstChild(tostring(cF))
    return ED
end
function fns.fn637()
    local keys = A3.keys
    if Ah(keys) == 0 then
        return
    end
    for k in pairs(keys) do
        local H7_1 = not Ax() or A3.stopped
        if H7_1 then
            return
        end
        BC("Upgrade", "Upgrade", k)
        task.wait(0.2)
    end
    AL("Buying upgrades")
end
function fns.fn642()
    local Gq_1
    local Gp_1
    local Go = Bj("Mgr", "BackpackMgr", "GetMaxCapacity")
    if AR(Go) then
        Gp_1, Gq_1 = pcall(Go)
        local Go_1 = Gp_1 and tonumber(Gq_1)
        if Go_1 then
            return tonumber(Gq_1)
        end
        local Go_2 = Bg("GameData")
        local Go_3 = Go_2 and Go_2.MaxBagCount
        local Gp_3 = type(Go_3) == "table" and tonumber(Go_3.Treasure)
        return Gp_3 or 50
    end
    local Go_5 = Bg("GameData")
    local Go_6 = Go_5 and Go_5.MaxBagCount
    local Gp_5 = type(Go_6) == "table" and tonumber(Go_6.Treasure)
    return Gp_5 or 50
end
function fns.fn647(mA)
    if mA then
        Bs(Ao, Bx)
    else
        Bo(Ao)
    end
end
function fns.fn682()
    local LA = Am()
    if not LA then
        AL("No display stand found")
        return
    end
    local LB = AZ(LA)
    if not LB then
        AL("Display stand is not loaded")
        return
    end
    local LC = Bl()
    if not LC then
        return
    end
    local CFrame = LC.CFrame
    if Bn(LB.Position) > 5 then
        AK(LB.Position, 3)
        task.wait(0.4)
    end
    local LB_1 = BP()
    AD("DisplayStandF", "ClaimIncome", LA)
    local LA_1 = 0
    local LC_1 = os.clock() + 1.5
    while os.clock() < LC_1 do
        task.wait(0.1)
        LA_1 = BP() - LB_1
        if LA_1 > 0 then
            break
        end
    end
    if LA_1 > 0 then
        AL(string.format("Claimed %s income", A9(LA_1)))
    else
        AL("No income to claim")
    end
    if BA.returnAfter then
        local LA_2 = Bl()
        if LA_2 then
            LA_2.CFrame = CFrame
            task.wait(0.35)
        end
    end
end
function fns.fn694()
    local Ez = AH()
    local EA = Ez and Ez:FindFirstChild("BattleScene")
    return EA
end
function fns.fn704(jH)
    local Kq = jH or ""
    return tonumber(tostring(Kq):match("Machine (%d+)"))
end
function fns.fn705(dY, dZ)
    local FZ = Bc(dY)
    local F_ = FZ and FZ:FindFirstChild("SpawnedTreasures")
    local F__1, F__2
    local FZ_1 = {}
    local F0_1, F0_2
    if not F_ then
        return FZ_1
    end
    for i, child in ipairs(F_:GetChildren()) do
        F__1, F0_1 = child.Name:match("^Treasure_(%d+)_(%d+)$")
        F__2, F0_2 = tonumber(F__1), tonumber(F0_1)
        if F__2 and F0_2 then
            local F1_1 = AG(F__2)
            local F2 = F1_1 and F1_1.Quality or "Common"
            local F__4 = not dZ
            if not F__4 then
                F__4 = dZ[F2]
            end
            if F__4 then
                local F__5 = child:FindFirstChildWhichIsA("BasePart", true)
                if F__5 then
                    local insert = table.insert
                    local F1_2 = F1_1 and F1_1.Name or child.Name
                    insert(FZ_1, { uid = F0_2, zone = dY, quality = F2, name = F1_2, position = F__5.Position })
                end
            end
        end
    end
    return FZ_1
end
function fns.fn710(U)
    local CH = typeof(cloneref) == "function" and typeof(U) == "Instance"
    if CH then
        return cloneref(U)
    end
    return U
end
function fns.fn713(nm)
    BA.returnAfter = nm == true
end
function fns.fn730(...)
    local Dd = Af()
    for i, v in ipairs({ ... }) do
        if type(Dd) ~= "table" then
            return nil
        end
        Dd = Dd[v]
    end
    return Dd
end
function fns.fn731()
    local EO = Bg("Target")
    local EP = {}
    for i, v in ipairs(Au()) do
        local EQ = ""
        if EO then
            for k, v2 in pairs(EO) do
                if tonumber(v2.Id) == v then
                    local ER = type(v2.HP) == "table" and v2.HP[1]
                    local ES = ER or v2.HP
                    local ER_1 = ES
                    if ES then
                        ES = " - " .. tostring(ER_1) .. " HP"
                    end
                    EQ = ES or ""
                end
            end
        end
        EP[i] = string.format("Level %d (%d)%s", i, v, EQ)
    end
    return EP
end
function fns.fn800(mW)
    local Mu = Ar(mW) or 0
    Ag.trainId = Mu
end
function fns.fn817()
    local J8 = Bg("Train")
    local J9 = {}
    if J8 then
        local Ka = {}
        for k, v in pairs(J8) do
            local J8_1 = tonumber(v.Id)
            if J8_1 then
                local Kc = tonumber(v.Rebirth) or 0
                table.insert(Ka, { id = J8_1, rebirth = Kc, buff = v.PowerBuff })
            end
        end
        table.sort(Ka, function(jC, jD)
            return jC.id < jD.id
        end)
        for i, v in ipairs(Ka) do
            table.insert(J9, string.format("Machine %d (x%s, rebirth %d)", v.id, tostring(v.buff), v.rebirth))
        end
    end
    return J9
end
function fns.fn825()
    local Ip = Bg("Weapon")
    local Iq = {}
    if Ip then
        for k, v in pairs(Ip) do
            local Ip_1 = tonumber(v.Id)
            local Ir = Av(v.Price)
            if Ip_1 and Ir then
                local insert = table.insert
                local Name = v.Name
                local Iu = Av(v.Power) or 0
                insert(Iq, { id = Ip_1, price = Ir, name = Name, power = Iu })
            end
        end
    end
    table.sort(Iq, function(hz, hA)
        return hz.price < hA.price
    end)
    return Iq
end
local function fn854()
    local animals = Ao.animals
    local JE = Ao.animalMode == "Sell Except Selected"
    local JF = 0
    local JG = Az()
    for i, v in ipairs(JG) do
        local JG_1 = not Ax() or Ao.stopped
        if JG_1 then
            break
        end
        if animals[v.name] == true ~= JE then
            if A0(v.button) then
                JF += 1
                task.wait(0.25)
            end
        end
    end
    A6("Selling")
    if JF > 0 then
        AL(string.format("Sold %d treasures", JF))
    else
        AL("Nothing matched the sell filter")
    end
end
local function fn859(m3)
    local Mx = BL(m3) or 101
    BU.eggId = Mx
end
local function fn868(eh, ei)
    local Gc = Bc(eh)
    local Gd = Gc and Gc:FindFirstChild("SpawnedTreasures")
    if not Gd then
        return false
    end
    local Gd_1 = os.clock()
    local Gf = Gd_1 + (ei or 3)
    while os.clock() < Gf do
        if #Gd:GetChildren() > 0 then
            return true
        end
        if not Ax() then
            return false
        end
        task.wait(0.1)
    end
    return false
end
local function fn917(lH)
    if lH then
        Bs(Bm, AT)
    else
        Bo(Bm)
    end
end
local function fn940()
    return Aj:FindFirstChild("Remote")
end
local function fn974(c4)
    local E5 = c4 or ""
    return tonumber(tostring(E5):match("%((%d+)%)"))
end
local function fn980()
    local I4 = Bg("Aura")
    local I5 = {}
    if I4 then
        for k, v in pairs(I4) do
            local I4_1 = tonumber(v.Id)
            local I6 = Av(v.Price)
            if I4_1 and I6 then
                table.insert(I5, { id = I4_1, price = I6, name = v.Name })
            end
        end
    end
    table.sort(I5, function(ie, ig)
        return ie.price < ig.price
    end)
    return I5
end
local function fn987(lM)
    local LT = {}
    for k in pairs(A5(lM)) do
        local LU = A2(k)
        if LU then
            LT[LU] = true
        end
    end
    Bm.zones = LT
end
local function fn998(bt)
    local DA_1
    local Dz_1
    local Dy_4, Dy_5
    local Dx = Br[bt]
    if Dx ~= nil then
        return Dx or nil
    end
    local ConfigData = Aj:FindFirstChild("ConfigData")
    local Dy_2 = ConfigData and ConfigData:FindFirstChild(bt)
    local Dy_3 = not Dy_2 or not Dy_2:IsA("ModuleScript")
    if Dy_3 then
        Br[bt] = false
        return nil
    end
    Dy_4, Dz_1 = pcall(require, Dy_2)
    local Dx_3 = not Dy_4 or type(Dz_1) ~= "table"
    if Dx_3 then
        Br[bt] = false
        return nil
    end
    local Dx_4 = Dz_1
    if AR(Dz_1.GetTable) then
        Dy_5, DA_1 = pcall(Dz_1.GetTable)
        local Dz_2 = Dy_5 and type(DA_1) == "table"
        if Dz_2 then
            Dx_4 = DA_1
        end
    end
    Br[bt] = Dx_4
    return Dx_4
end
local function fn1000()
    local FO = {}
    local FP = {}
    local FQ = Bg("Treasure")
    if FQ then
        for k, v in pairs(FQ) do
            local Name = v.Name
            local FR = type(Name) == "string" and Name ~= "" and not FO[Name]
            if FR then
                FO[Name] = true
                table.insert(FP, Name)
            end
        end
    end
    table.sort(FP)
    return FP
end
local function fn1002(eZ, e_)
    local GA = eZ
    for k in tostring(e_):gmatch("[^/]+") do
        if not GA then
            return nil
        end
        GA = GA:FindFirstChild(k)
    end
    return GA
end
local function fn1017()
    local Jj_1
    local Ji_1
    local Jf = At()
    local Jg = Jf and Jf.auraData
    local Jg_1 = A8(Jg, "ownedAuraIds")
    local Jh = type(Jg) == "table" and Jg.equipAuraId
    local Jf_2 = tonumber(Jh)
    Ji_1, Jj_1 = nil, nil
    for i, v in ipairs(B0()) do
        if Jg_1[v.id] then
            Jj_1 = v
        elseif not Ji_1 then
            Ji_1 = v
        end
    end
    local Jh_1 = false
    if Ji_1 then
        local Jg_2 = BP()
        if Jg_2 < Ji_1.price then
            AL(string.format("Waiting for %s (%s)", tostring(Ji_1.name), A9(Ji_1.price)))
            return
        end
        AV("AurasShop")
        task.wait(0.35)
        Jh_1 = Bz("AurasShop", string.format("Frame/Info/ScrollingFrame/Aura_%d/Buy/Buy", Ji_1.id))
        if Jh_1 then
            Bu("Bought aura " .. tostring(Ji_1.name))
            task.wait(0.4)
            Jj_1 = Ji_1
        end
    else
        if not Jj_1 then
            AL("No auras available")
            return
        end
        AL("All auras owned")
    end
    if Jj_1 and Jf_2 ~= Jj_1.id then
        AV("AurasShop")
        task.wait(0.35)
        Bz("AurasShop", string.format("Frame/Info/ScrollingFrame/Aura_%d/State/Equip", Jj_1.id))
        AL("Aura: " .. tostring(Jj_1.name))
        Jh_1 = true
    end
    if Jh_1 then
        task.wait(0.2)
        A6("AurasShop")
    end
end
local function fn1019()
    local DU = At()
    local DV = DU and type(DU.cash) == "number"
    if DV then
        return DU.cash
    end
    return 0
end
local function fn1020(mF)
    local Mi = mF or "Bag Full"
    Ao.mode = tostring(Mi)
end
local function fn1041()
    local D5 = At()
    local D6 = D5 and tonumber(D5.rebirth)
    return D6 or 0
end
local function fn1059(mb)
    A3.keys = A5(mb)
end
local function fn1084(fS)
    local Ha = {}
    if type(fS) == "table" then
        for k, v in pairs(fS) do
            local Hb = v == true and type(k) == "string"
            if Hb then
                Ha[k] = true
            elseif type(v) == "string" then
                Ha[v] = true
            end
        end
    end
    return Ha
end
local function fn1126(bS)
    local DJ = tonumber(bS) or 0
    bS = DJ
    local DJ_1 = { { 1000000000000, "T" }, { 1000000000, "B" }, { 1000000, "M" }, { 1000, "K" } }
    for i, v in ipairs(DJ_1) do
        if bS >= v[1] then
            return string.format("%.2f%s", bS / v[1], v[2])
        end
    end
    return string.format("%d", bS)
end
local function fn1141(dy)
    local Fp = Bg("Treasure")
    if not Fp then
        return nil
    end
    for k, v in pairs(Fp) do
        if tonumber(v.Id) == dy then
            return v
        end
    end
    return nil
end
local function fn1155(mQ)
    if mQ then
        Bs(Ag, BW)
    else
        Bo(Ag)
        AB({ "Ctrl", "TrainArea", "StopTrainLoop" })
    end
end
local function fn1164(cj, ck)
    local Eg = Bl()
    local Eh = not Eg or typeof(cj) ~= "Vector3"
    if Eh then
        return false
    end
    local new = Vector3.new
    local Ei = ck or 4
    local Eh_2 = cj + new(0, Ei, 0)
    Eg.CFrame = CFrame.new(Eh_2)
    BC("Player", "ChangePlayerPos", Eh_2, Eg.CFrame.LookVector, 64)
    return true
end
local function fn1165(cr)
    local En = Bl()
    local Eo = not En
    local Es = if Eo then 1 else 0
    local Eq = 3448 * Es + 1107 * (1 - Es)
    local Er = 2072 * Es + 1920 * (1 - Es)
    if not ((Eq * 2537 + Er * 3226 + Eq * Er) % 16777213 == 5798891) then
        Eo = typeof(cr) ~= "Vector3"
    end
    if Eo then
        return math.huge
    end
    return (En.Position - cr).Magnitude
end
local function fn1169()
    local Character = LocalPlayer.Character
    local Ee = Character and Character:FindFirstChild("HumanoidRootPart")
    return Ee
end
local function fn1170(fQ)
    fQ.stopped = true
    local G5 = fQ.generation
    local G9 = if G5 then 1 else 0
    local G7 = 2238 * G9 + 1690 * (1 - G9)
    local G8 = 1007 * G9 + 2395 * (1 - G9)
    if not ((G7 * 3864 + G8 * 928 + G7 * G8) % 16777213 == 11835794) then
        G5 = 0
    end
    fQ.generation = G5 + 1
end
local function fn1186()
    return CoreGui
end
local function fn1214(lW)
    Bm.returnAfter = lW == true
end
local function fn1225(l6)
    if l6 then
        Bs(A3, Bb)
    else
        Bo(A3)
    end
end
local function fn1246(fY)
    local Hj = 0
    for k in pairs(fY) do
        Hj += 1
    end
    return Hj
end
local function fn1253()
    local Lu_1
    local Lt_1
    local Ls = Bj("Ctrl", "Showroom", "GetMyStandId")
    if AR(Ls) then
        Lt_1, Lu_1 = pcall(Ls)
        local Ls_1 = Lt_1 and tonumber(Lu_1)
        if Ls_1 then
            return tonumber(Lu_1)
        end
        return tonumber(LocalPlayer:GetAttribute("DisplayStandId"))
    end
    return tonumber(LocalPlayer:GetAttribute("DisplayStandId"))
end
local function fn1256(me)
    local L8 = (tonumber(me))
    local Mc = if L8 then 1 else 0
    local Ma = 1598 * Mc + 1534 * (1 - Mc)
    local Mb = 1391 * Mc + 3852 * (1 - Mc)
    if not ((Ma * 175 + Mb * 1313 + Ma * Mb) % 16777213 == 4328851) then
        L8 = 3
    end
    A3.interval = math.max(0.5, L8)
end
local function fn1262(mH)
    local Mm = tonumber(mH) or 40
    Ao.threshold = math.max(1, math.floor(Mm))
end
local function fn1268(mO)
    local Mr = mO or "Sell Only Selected"
    Ao.animalMode = tostring(Mr)
end
local function fn1270()
    local KP = Bg("EggRoll")
    local KQ = {}
    if KP then
        local KR = {}
        for k, v in pairs(KP) do
            local KP_1 = tonumber(v.Id)
            if KP_1 then
                table.insert(KR, { id = KP_1, name = v.Name, price = v.Price })
            end
        end
        table.sort(KR, function(ke, kf)
            return ke.id < kf.id
        end)
        for i, v in ipairs(KR) do
            local KP_2 = v.price and " - " .. tostring(v.price)
            local KR_1 = KP_2 or ""
            table.insert(KQ, string.format("%s (%d)%s", tostring(v.name), v.id, KR_1))
        end
    end
    return KQ
end
local function fn1296()
    local HB = Bl()
    if not HB then
        return
    end
    local HC = Ah(Bm.rarities) > 0 and Bm.rarities
    local HD = HC or nil
    local CFrame = HB.CFrame
    local HB_1 = AP()
    local HE = 0
    for i, v in ipairs(An()) do
        local HF = not Ax() or Bm.stopped
        if HF then
            break
        end
        local HF_1 = HB_1 > 0 and BQ() >= HB_1
        if HF_1 then
            AL("Bag is full")
            break
        end
        local HF_2 = AN(v)
        if HF_2 then
            if Bn(HF_2) > 60 then
                AK(HF_2, 6)
                task.wait(0.25)
            end
            Bk(v)
            AL(string.format("Sweeping level %d", v))
            for i, v in ipairs(Ay(v, HD)) do
                local HF_3 = not Ax() or Bm.stopped
                if HF_3 then
                    break
                end
                local HF_4 = HB_1 > 0 and BQ() >= HB_1
                if HF_4 then
                    break
                end
                if Bn(v.position) > 12 then
                    AK(v.position, 3)
                    task.wait(0.15)
                end
                if BC("Treasure", "RequestPickup", v.uid) then
                    HE += 1
                end
                task.wait(0.12)
            end
        end
    end
    if HE > 0 then
        AL(string.format("Collected %d treasures", HE))
    end
    if Bm.returnAfter then
        local HB_2 = Bl()
        if HB_2 then
            HB_2.CFrame = CFrame
            task.wait(0.35)
        end
    end
end
local function fn1325()
    local Shared = State.Shared
    local C8 = type(Shared) == "table" and Shared.Ctrl
    if C8 then
        return Shared
    end
    local C7_1 = Al()
    State.Shared = C7_1
    return C7_1
end
local function fn1326()
    AB({ "Ctrl", "Player", "TryClickAction" })
    AL("Clicking")
end
local function fn1353()
    local Id = AI("Upgrade")
    local Ie = Id and BM(Id, "Frame/ScrollingFrame")
    local Id_1 = {}
    if Ie then
        for i, child in ipairs(Ie:GetChildren()) do
            local Ie_1 = child:IsA("GuiObject") and child:FindFirstChild("Frame")
            if Ie_1 then
                table.insert(Id_1, child.Name)
            end
        end
    end
    if #Id_1 == 0 then
        Id_1 = { "CarryBagNum", "Lucky", "Pet", "ShowroomNum", "Speed" }
    end
    table.sort(Id_1)
    return Id_1
end
local function fn1357()
    AV("Showroom")
    task.wait(0.35)
    if not Bz("Showroom", "FrameBtn/Showroom/BestEquipment /BE") then
        Bz("Showroom", "FrameBtn/Showroom/BestEquipment/BE")
    end
    task.wait(0.35)
    A6("Showroom")
    AL("Equipped best animals")
end
local function fn1367()
    local Gm_1
    local Gl_1
    local Gk = Bj("Mgr", "BackpackMgr", "GetCarryCount")
    if AR(Gk) then
        Gl_1, Gm_1 = pcall(Gk)
        local Gk_1 = Gl_1 and tonumber(Gm_1)
        if Gk_1 then
            return tonumber(Gm_1)
        end
        return 0
    end
    return 0
end
local function fn1376(mq)
    if mq then
        Bs(AF, BH)
    else
        Bo(AF)
    end
end
local function fn1385(m8)
    local MH = tonumber(m8) or 2
    BU.interval = math.max(0.5, MH)
end
local function fn1389(l_)
    if l_ then
        Bs(Bd, AQ)
    else
        Bo(Bd)
    end
end
local function fn1391()
    AV("Spin")
    task.wait(0.35)
    if Bz("Spin", "FrameBtn/Spin/Spin/Button/Spin") then
        AL("Spun the wheel")
    end
    task.wait(0.4)
    A6("Spin")
end
local function fn1397()
    local Fx = {}
    local Fy = Bg("Treasure")
    if Fy then
        for k, v in pairs(Fy) do
            if type(v.Quality) == "string" then
                Fx[v.Quality] = true
            end
        end
    end
    local Fy_1 = {}
    for i, v in ipairs(BO) do
        if Fx[v] then
            table.insert(Fy_1, v)
            Fx[v] = nil
        end
    end
    for k in pairs(Fx) do
        table.insert(Fy_1, k)
    end
    return Fy_1
end
local function fn1413()
    local attr = LocalPlayer:GetAttribute("Level")
    if type(attr) == "number" then
        return attr
    end
    local D__1 = At()
    local D0 = D__1 and tonumber(D__1.level)
    return D0 or 0
end
local function fn1462(nf)
    local ML = tonumber(nf) or 15
    BK.interval = math.max(5, ML)
end
local function fn1467(l4)
    local L4 = tonumber(l4) or 10
    Bd.interval = math.max(3, L4)
end
local function fn1483(mg)
    if mg then
        Bs(AX, Ai)
    else
        Bo(AX)
    end
end
local function fn1491(eR)
    AB({ "Mgr", "UIMgr", "Close" }, eR)
end
local function fn1492()
    return not Bp.Unloaded
end
local function fn1506(lT)
    Bm.rarities = A5(lT)
end
Af = nil
Ag = nil
Ah = nil
Ai = nil
Aj = nil
Al = nil
Am = nil
An = nil
Ao = nil
Ap = nil
Aq = nil
Ar = nil
LocalPlayer = nil
At = nil
Au = nil
Av = nil
Aw = nil
Ax = nil
Ay = nil
Az = nil
AB = nil
AD = nil
AE = nil
AF = nil
AG = nil
AH = nil
AI = nil
AK = nil
AL = nil
AM = nil
AN = nil
AO = nil
AP = nil
AQ = nil
AR = nil
AS = nil
AT = nil
AV = nil
AW = nil
AX = nil
AZ = nil
CoreGui = nil
A0 = nil
local Players, Ak, Workspace, AC, Lighting, TeleportService, AY
A1 = nil
A2 = nil
A3 = nil
A4 = nil
A5 = nil
A6 = nil
A8 = nil
A9 = nil
Ba = nil
Bb = nil
Bc = nil
Bd = nil
Be = nil
Bf = nil
Bg = nil
Bj = nil
Bk = nil
Bl = nil
Bm = nil
Bn = nil
Bo = nil
Bp = nil
Br = nil
Bs = nil
Bu = nil
Bv = nil
Bw = nil
Bx = nil
Bz = nil
BA = nil
BB = nil
BC = nil
BE = nil
State = nil
BH = nil
BK = nil
BL = nil
BM = nil
BN = nil
BO = nil
local GuiService, Bh, HttpService, VirtualUser, Bt, UserInputService, BD, BF, BI, RunService
BP = nil
BQ = nil
BR = nil
BT = nil
BU = nil
BV = nil
BW = nil
BX = nil
B0 = nil
local BS, BY, BZ, B_
BS = nil
BY = nil
BZ = nil
B_ = nil
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, Workspace, LocalPlayer, BX = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
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
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local Sq_2 = "OuroborosDrillBlockPerClick"
BX = fn1186
if getgenv then
    getgenv().gethui = BX
end
Bp, Aj, BV, BO, State, Br, AE, Bw, Bm, Bd, A3, AX, AO, AF, Aw, Ao, Ag, BU, BK, BA, AC, AR, Ax, Bu, AL, Al, Af, Bj, AB, Bf, AY, BC, AD, Bg, Av, A9, At, BP, Be, Ap, BB, Bl, AK, Bn, AH, BN, Bc, Au, Bh, A2, AN, Ba, AG, BF, BS, Ay, Bk, BQ, AP, AV, A6, AI, BM, A0, Bz, BZ, Bs, Bo, A5, Ah, Bv, AM, An, AT, BR, AQ, Bb, BI, Ai, BE, AW, A8, BH, B0, Aq, Az, BT, Bx, BD, Ak, Ar, BW, BY, BL, Bt, AS, A1, Am, AZ, A4, B_, Sq_4 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fns.fn479)
local function Sq_1(t)
    local Cv
    local Cx
    local Cw
    Cv = nil
    Cw = nil
    Cx = nil
    local Cy = t ~= ""
    local Cz = type(t) == "string" and Cy
    assert(Cz, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    Cv = getgenv()
    assert(type(Cv) == "table", "getgenv did not return a table")
    local Cy_1 = Cv[t]
    if Cy_1 ~= nil then
        local Cz_1 = type(Cy_1) == "table" and type(Cy_1.Unload) == "function"
        assert(Cz_1, "Namespace is occupied")
        Cy_1.Unload()
        assert(Cv[t] == nil, "Previous instance did not release its namespace")
    end
    Cw = {}
    Cx = { State = {}, Unloaded = false }
    Cx.Track = function(z)
        assert(type(z) == "function", "Cleanup must be callable")
        if Cx.Unloaded then
            z()
        else
            table.insert(Cw, z)
        end
        return z
    end
    Cx.Unload = function()
        local Co_1
        local Cn_1
        if Cx.Unloaded then
            return
        end
        Cx.Unloaded = true
        local Cl = {}
        local Cs = #Cw
        local Cr = -1
        while false and Cs <= 1 or true and Cs >= 1 do
            local Ct = Cs
            local Cm_1 = table.remove(Cw, Ct)
            Cn_1, Co_1 = pcall(Cm_1)
            if not Cn_1 then
                table.insert(Cl, tostring(Co_1))
            end
            Cs += Cr
        end
        table.clear(Cx.State)
        if #Cl > 0 then
            error("Cleanup incomplete: " .. table.concat(Cl, "; "), 0)
        end
        if Cv[t] == Cx then
            Cv[t] = nil
        end
    end
    Cv[t] = Cx
    return Cx
end
AC = function(M, N)
    local CC = type(M) == "table" and type(M.Track) == "function"
    assert(CC, "FeatureAPI required")
    local CC_1 = type(N) == "table" and type(N.OnUnload) == "function"
    assert(CC_1, "UI library required")
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
Bp = Sq_1(Sq_2)
AR = fns.fn555
Ax = fn1492
Aj = fns.fn710(ReplicatedStorage)
BV = fns.fn710(Workspace)
BO = {
    "Common",
    "UnCommon",
    "Rare",
    "Epic",
    "Legendary",
    "Myth",
    "God",
    "Antique",
    "Secret",
    "Limited",
    "Exclusive"
}
State = Bp.State
State.Notifications = {}
State.Status = "Idle"
Bu = fns.fn597
AL = fns.fn203
Al = fns.fn307
Af = fn1325
Bj = fns.fn730
AB = function(aX, ...)
    local Dl
    local Dm
    Dl = nil
    Dm = nil
    Dm = Bj(table.unpack(aX))
    if not AR(Dm) then
        return false
    end
    Dl = table.pack(...)
    return (pcall(function()
        return Dm(table.unpack(Dl, 1, Dl.n))
    end))
end
Bf = fn940
AY = fns.fn72
BC = function(be, ...)
    local Ds
    local Dr
    Dr = nil
    Ds = nil
    Ds = AY(be, "RemoteEvent")
    if not Ds then
        return false
    end
    Dr = table.pack(...)
    return (pcall(function()
        Ds.FireServer(Ds, table.unpack(Dr, 1, Dr.n))
    end))
end
AD = function(bl, ...)
    local Du
    local Dv
    Du = nil
    Dv = nil
    Dv = AY(bl, "RemoteFunction")
    if not Dv then
        return false
    end
    Du = table.pack(...)
    return (pcall(function()
        return Dv:InvokeServer(table.unpack(Du, 1, Du.n))
    end))
end
Br = {}
Bg = fn998
AE = {
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
    DE = 1e+33
}
Av = fns.fn167
A9 = fn1126
At = fns.fn284
BP = fn1019
Be = fn1413
Ap = fn1041
BB = fns.fn419
Bl = fn1169
AK = fn1164
Bn = fn1165
AH = fns.fn99
BN = fns.fn694
Bc = fns.fn607
Au = fns.fn506
Bh = fns.fn731
A2 = fn974
AN = function(c6)
    local Fa_1
    local E9_1
    local E8 = Bc(c6)
    if not E8 then
        return nil
    end
    local Target1 = E8:FindFirstChild("Target1")
    if Target1 then
        E9_1, Fa_1 = pcall(function()
            return Target1:GetPivot().Position
        end)
        if E9_1 then
            return Fa_1
        end
        local BasePart = E8:FindFirstChildWhichIsA("BasePart", true)
        return BasePart and BasePart.Position or nil
    end
    local BasePart = E8:FindFirstChildWhichIsA("BasePart", true)
    return BasePart and BasePart.Position or nil
end
Ba = fns.fn532
AG = fn1141
if An and Bg or not Bg and An or not An and not Bg and (not Bg and Bg) or not (An and Bg or not Bg and An or not An and not Bg and (not Bg and Bg)) then
    BF = fn1397
    BS = fn1000
    Ay = fns.fn705
    Bk = fn868
    BQ = fn1367
else
    BQ = fn1397
    Ay = fn1000
    BF = fns.fn705
    BS = fn868
    Bk = fn1367
end
AP = fns.fn642
AV = function(eG)
    local Gs
    local Gt
    Gs = nil
    Gt = nil
    Gs = Bj("Mgr", "UIMgr", "Open")
    if not AR(Gs) then
        return false
    end
    Gt = false
    task.spawn(function()
        pcall(Gs, eG)
        Gt = true
    end)
    local Gu = os.clock() + 2
    while true do
        local Gv = not Gt and os.clock() < Gu
        if Gv then
            task.wait(0.05)
            continue
        end
        break
    end
    return true
end
A6 = fn1491
AI = fns.fn343
BM = fn1002
A0 = fns.fn119
Bz = fns.fn241
BZ = fns.fn542
Bw = { interval = 0.2 }
Bm = { interval = 1, zones = {}, rarities = {}, returnAfter = false }
Bd = { interval = 10 }
A3 = { interval = 3, keys = {} }
AX = { interval = 10 }
AO = { interval = 10 }
AF = { interval = 5 }
if (false or not Bd or Sq_4 and Sq_4) and (Sq_4 and Bd and (false or Sq_4)) or not ((false or not Bd or Sq_4 and Sq_4) and (Sq_4 and Bd and (false or Sq_4))) then
    Aw = { interval = 8 }
else
    A5 = { interval = 8 }
end
Ao = { interval = 5, mode = "Bag Full", threshold = 40, animals = {}, animalMode = "Sell Only Selected" }
Ag = { interval = 0.35, trainId = 0 }
BU = { interval = 2, eggId = 101, amount = 1 }
BK = { interval = 15 }
BA = { interval = 10, returnAfter = false }
if ((not AW or AM or Bg and not AM) and ((not AR or AM) and (not AR and not State)) or (not AR or AC or Bg and not AW or (not AR or AC) and (not AW and AW))) and ((AW and State or (Bg or AC)) and ((not AR or AW) and (not AM or AW)) or (AC and Bg or (not AW or false) or (AC or Bg) and (Bg and State))) and not (((not AW or AM or Bg and not AM) and ((not AR or AM) and (not AR and not State)) or (not AR or AC or Bg and not AW or (not AR or AC) and (not AW and AW))) and ((AW and State or (Bg or AC)) and ((not AR or AW) and (not AM or AW)) or (AC and Bg or (not AW or false) or (AC or Bg) and (Bg and State)))) then
    Bv = function(fD, fE)
        local generation
        local G3 = fD.generation or 0
        fD.generation = G3 + 1
        fD.stopped = false
        generation = fD.generation
        task.spawn(function()
            local G0_2
            while true do
                local G_ = Ax() and not fD.stopped and fD.generation == generation
                local G__3
                if G_ then
                    G__3, G0_2 = pcall(fE)
                    if not G__3 then
                        warn("[Ouroboros] loop error: " .. tostring(G0_2))
                    end
                    local G__4 = not Ax() or fD.stopped or fD.generation ~= generation
                    if G__4 then
                        break
                    end
                    task.wait(fD.interval)
                    continue
                end
                break
            end
        end)
    end
    Bs = fn1170
    Ah = fn1084
    Bo = fn1246
    A5 = fns.fn347
else
    Bs = function(fD, fE)
        local generation
        local G3 = fD.generation or 0
        fD.generation = G3 + 1
        fD.stopped = false
        generation = fD.generation
        task.spawn(function()
            local G0_1
            while true do
                local G_ = Ax() and not fD.stopped and fD.generation == generation
                local G__1
                if G_ then
                    G__1, G0_1 = pcall(fE)
                    if not G__1 then
                        warn("[Ouroboros] loop error: " .. tostring(G0_1))
                    end
                    local G__2 = not Ax() or fD.stopped or fD.generation ~= generation
                    if G__2 then
                        break
                    end
                    task.wait(fD.interval)
                    continue
                end
                break
            end
        end)
    end
    Bo = fn1170
    A5 = fn1084
    Ah = fn1246
    Bv = fns.fn347
end
AM = fn1326
An = fns.fn242
AT = fn1296
BR = fns.fn277
AQ = fns.fn58
if (not Bd or AX) and (BA and not Bd) and (Bd or not BA or not Bd and BA) or not ((not Bd or AX) and (BA and not Bd) and (Bd or not BA or not Bd and BA)) then
    Bb = fns.fn637
else
    Bv = fns.fn637
end
BI = fn1353
Ai = fns.fn71
BE = fn1357
AW = fns.fn825
A8 = fns.fn45
BH = fns.fn136
B0 = fn980
Aq = fn1017
Az = fns.fn410
BT = fn854
Bx = fns.fn425
BD = fns.fn565
Ak = fns.fn817
Ar = fns.fn704
BW = function()
    local Ku_1
    local Kt_1
    local Kx_2
    local Kw_1, Kw_2
    local Kv_2
    local trainId = Ag.trainId
    Ku_1, Kt_1 = nil, nil
    for i, v in ipairs(BD()) do
        local KF = v
        if trainId == 0 or KF.id == trainId then
            Kv_2, Kw_1 = pcall(function()
                return KF.model:GetPivot().Position
            end)
            if Kv_2 then
                local Kv_3 = Bn(Kw_1)
                if not Kt_1 or Kv_3 < Kt_1 then
                    Ku_1, Kt_1 = Kw_1, Kv_3
                end
            end
        end
    end
    if not Ku_1 then
        AL("No training machine found")
        return
    end
    local Ks_1 = Bj("Ctrl", "TrainArea", "IsInTrainArea")
    local Kv_4 = false
    if AR(Ks_1) then
        Kw_2, Kx_2 = pcall(Ks_1)
        Kv_4 = Kw_2 and Kx_2 == true
    end
    if not Kv_4 or Kt_1 > 20 then
        AK(Ku_1, 4)
        task.wait(0.4)
        AB({ "Ctrl", "TrainArea", "StartTrainLoop" })
    end
    AB({ "Ctrl", "Player", "TryClickAction" })
    AL("Training")
end
BY = fn1270
BL = fns.fn296
Bt = fns.fn478
AS = function()
    local Ln
    Ln = nil
    local Lp_1
    local Lo_1
    Ln = Bt(BU.eggId)
    if not Ln then
        AL("Selected egg is not loaded")
        return
    end
    Lo_1, Lp_1 = pcall(function()
        return Ln:GetPivot().Position
    end)
    if not Lo_1 then
        return
    end
    if Bn(Lp_1) > 14 then
        AK(Lp_1, 4)
        task.wait(0.6)
    end
    AB({ "UI", "EggOpen", "EggRollByCount" }, BU.amount)
    AL("Hatching eggs")
end
A1 = fn1391
Am = fn1253
AZ = fns.fn317
A4 = fns.fn682
B_ = fns.fn94
Bw.SetEnabled = fns.fn171
Bw.SetDelay = fns.fn429
Bm.SetEnabled = fn917
Bm.SetZones = fn987
Bm.SetRarities = fn1506
Bm.SetReturn = fn1214
Bm.SetDelay = fns.fn236
Bd.SetEnabled = fn1389
Bd.SetDelay = fn1467
A3.SetEnabled = fn1225
A3.SetKeys = fn1059
A3.SetDelay = fn1256
AX.SetEnabled = fn1483
AO.SetEnabled = fns.fn314
AF.SetEnabled = fn1376
Aw.SetEnabled = fns.fn553
Ao.SetEnabled = fns.fn647
Ao.SetMode = fn1020
Ao.SetThreshold = fn1262
Ao.SetDelay = fns.fn25
Ao.SetAnimals = fns.fn78
Ao.SetAnimalMode = fn1268
Ag.SetEnabled = fn1155
Ag.SetTrain = fns.fn800
BU.SetEnabled = fns.fn441
BU.SetEgg = fn859
BU.SetAmount = fns.fn572
BU.SetDelay = fn1385
BK.SetEnabled = fns.fn211
BK.SetDelay = fn1462
BA.SetEnabled = fns.fn202
BA.SetReturn = fns.fn713
BA.SetDelay = fns.fn184
Bp.Track(fns.fn86)
local function Sq_7()
    local M4
    M4 = false
    task.spawn(function()
        for i, v in ipairs({ "Target", "Treasure", "Weapon", "Aura", "EggRoll", "Train", "Rebirth", "GameData", "Upgrade" }) do
            pcall(Bg, v)
        end
        pcall(Af)
        M4 = true
    end)
    local M5 = os.clock() + 5
    while true do
        local M6 = not M4 and os.clock() < M5
        if M6 then
            task.wait(0.05)
            continue
        end
        break
    end
end
Sq_4 = function()
    local onDiscord
    local RY
    local RZ
    RY = nil
    RZ = nil
    onDiscord = nil
    local Library, RO, Toggles, RQ, RR, RT, RU, ThemeManager, Options, RX, SaveManager, R0, R1, R2, R3
    RY = "https://discord.gg/synapsex"
    R1 = "+1 Drill Block Per Click"
    RR = "https://ouroboros-hub-rbx.web.app/"
    R2 = "https://rscripts.net/@Ouroboros"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    AC(Bp, Library)
    RZ = function(n6, n7)
        local M8 = AR(setclipboard) and setclipboard
        local M9 = M8
        if not M9 then
            local M8_1 = AR(toclipboard) and toclipboard
            M9 = M8_1 or nil
        end
        local M8_2 = M9
        if not M8_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local M9_1 = pcall(M8_2, n6)
        if M9_1 then
            Library:Notify(n7)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        RZ(RY, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = RY, Copyable = true }, "|", R1, "|", "v0.4" },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    RU = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function R5(on)
        local DiscordGroup = on:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    for k, v in RU do
        if k ~= "Info" then
            R5(v)
        end
    end
    RT = Bh()
    RO = BF()
    R0 = Ak()
    RX = BY()
    RQ = BI()
    R3 = BS()
    local function R5_1()
        local q8
        local ClickingGroup = RU.Main:AddLeftGroupbox("Clicking", "mouse-pointer-click")
        local Label = ClickingGroup:AddLabel(State.Status, true)
        ClickingGroup:AddToggle("AutoClick", {
            Text = "Auto Click",
            Default = false,
            Callback = function(oM)
                Bw.SetEnabled(oM)
            end
        })
        ClickingGroup:AddSlider("ClickDelay", {
            Text = "Click Delay",
            Default = 0.2,
            Min = 0.05,
            Max = 2,
            Rounding = 2,
            Suffix = "s",
            Callback = function(oQ)
                Bw.SetDelay(oQ)
            end
        })
        local CollectingGroup = RU.Main:AddLeftGroupbox("Collecting", "hand-coins")
        CollectingGroup:AddToggle("AutoCollect", {
            Text = "Auto Collect",
            Default = false,
            Callback = function(oT)
                Bm.SetEnabled(oT)
            end
        })
        CollectingGroup:AddDropdown("CollectZones", {
            Values = RT,
            Default = {},
            Multi = true,
            AllowNull = true,
            Text = "Zone Filter",
            Tooltip = "Empty sweeps every zone in order",
            Callback = function(oY)
                Bm.SetZones(oY)
            end
        })
        CollectingGroup:AddDropdown("CollectRarities", {
            Values = RO,
            Default = {},
            Multi = true,
            AllowNull = true,
            Text = "Rarity Filter",
            Tooltip = "Empty collects every rarity",
            Callback = function(o0)
                Bm.SetRarities(o0)
            end
        })
        CollectingGroup:AddToggle("CollectReturn", {
            Text = "Return After Collecting",
            Default = false,
            Callback = function(o2)
                Bm.SetReturn(o2)
            end
        })
        CollectingGroup:AddSlider("CollectDelay", {
            Text = "Collect Delay",
            Default = 1,
            Min = 0.3,
            Max = 10,
            Rounding = 1,
            Suffix = "s",
            Callback = function(o4)
                Bm.SetDelay(o4)
            end
        })
        local IncomeGroup = RU.Main:AddLeftGroupbox("Income", "coins")
        IncomeGroup:AddToggle("AutoCollectMoney", {
            Text = "Auto Collect Money",
            Default = false,
            Callback = function(o7)
                BA.SetEnabled(o7)
            end
        })
        IncomeGroup:AddToggle("MoneyReturn", {
            Text = "Return After Claiming",
            Default = false,
            Callback = function(pb)
                BA.SetReturn(pb)
            end
        })
        IncomeGroup:AddSlider("MoneyDelay", {
            Text = "Claim Delay",
            Default = 10,
            Min = 1,
            Max = 120,
            Rounding = 0,
            Suffix = "s",
            Callback = function(pd)
                BA.SetDelay(pd)
            end
        })
        local SellingGroup = RU.Main:AddLeftGroupbox("Selling", "banknote")
        SellingGroup:AddToggle("AutoSell", {
            Text = "Auto Sell",
            Default = false,
            Callback = function(pg)
                Ao.SetEnabled(pg)
            end
        })
        SellingGroup:AddDropdown("SellAnimals", {
            Values = R3,
            Default = {},
            Multi = true,
            AllowNull = true,
            Text = "Animal Filter",
            Tooltip = "Empty sells the whole bag in one call",
            Callback = function(pl)
                Ao.SetAnimals(pl)
            end
        })
        SellingGroup:AddDropdown("SellAnimalMode", {
            Values = { "Sell Only Selected", "Sell Except Selected" },
            Default = 1,
            Multi = false,
            Text = "Filter Mode",
            Callback = function(pn)
                Ao.SetAnimalMode(pn)
            end
        })
        SellingGroup:AddDropdown("SellMode", {
            Values = { "Bag Full", "Threshold", "Always" },
            Default = 1,
            Multi = false,
            Text = "Sell When",
            Callback = function(pp)
                Ao.SetMode(pp)
            end
        })
        SellingGroup:AddSlider("SellThreshold", {
            Text = "Threshold Amount",
            Default = 40,
            Min = 1,
            Max = 200,
            Rounding = 0,
            Callback = function(pr)
                Ao.SetThreshold(pr)
            end
        })
        SellingGroup:AddSlider("SellDelay", {
            Text = "Sell Delay",
            Default = 5,
            Min = 1,
            Max = 60,
            Rounding = 0,
            Suffix = "s",
            Callback = function(pt)
                Ao.SetDelay(pt)
            end
        })
        local ProgressionGroup = RU.Main:AddRightGroupbox("Progression", "trending-up")
        ProgressionGroup:AddToggle("AutoRebirth", {
            Text = "Auto Rebirth",
            Default = false,
            Callback = function(pw)
                Bd.SetEnabled(pw)
            end
        })
        ProgressionGroup:AddSlider("RebirthDelay", {
            Text = "Rebirth Check Delay",
            Default = 10,
            Min = 3,
            Max = 120,
            Rounding = 0,
            Suffix = "s",
            Callback = function(pA)
                Bd.SetDelay(pA)
            end
        })
        ProgressionGroup:AddToggle("AutoTrain", {
            Text = "Auto Train",
            Default = false,
            Callback = function(pC)
                Ag.SetEnabled(pC)
            end
        })
        ProgressionGroup:AddDropdown("TrainMachine", {
            Values = R0,
            Default = 0,
            Multi = false,
            AllowNull = true,
            Text = "Training Machine",
            Tooltip = "Empty uses the closest machine",
            Callback = function(pH)
                Ag.SetTrain(pH)
            end
        })
        ProgressionGroup:AddToggle("AutoSpin", {
            Text = "Auto Spin",
            Default = false,
            Callback = function(pJ)
                BK.SetEnabled(pJ)
            end
        })
        ProgressionGroup:AddSlider("SpinDelay", {
            Text = "Spin Delay",
            Default = 15,
            Min = 5,
            Max = 300,
            Rounding = 0,
            Suffix = "s",
            Callback = function(pN)
                BK.SetDelay(pN)
            end
        })
        local ShopsGroup = RU.Main:AddRightGroupbox("Shops", "shopping-cart")
        ShopsGroup:AddToggle("AutoUpgrade", {
            Text = "Auto Buy Upgrades",
            Default = false,
            Callback = function(pQ)
                A3.SetEnabled(pQ)
            end
        })
        ShopsGroup:AddDropdown("UpgradeKeys", {
            Values = RQ,
            Default = {},
            Multi = true,
            AllowNull = true,
            Text = "Upgrades",
            Callback = function(pV)
                A3.SetKeys(pV)
            end
        })
        ShopsGroup:AddSlider("UpgradeDelay", {
            Text = "Upgrade Delay",
            Default = 3,
            Min = 0.5,
            Max = 30,
            Rounding = 1,
            Suffix = "s",
            Callback = function(pX)
                A3.SetDelay(pX)
            end
        })
        ShopsGroup:AddToggle("AutoBuyDrills", {
            Text = "Auto Buy Drills",
            Default = false,
            Callback = function(pZ)
                AF.SetEnabled(pZ)
            end
        })
        ShopsGroup:AddToggle("AutoBuyAura", {
            Text = "Auto Buy Aura",
            Default = false,
            Callback = function(p2)
                Aw.SetEnabled(p2)
            end
        })
        local EquipmentGroup = RU.Main:AddRightGroupbox("Equipment", "sparkles")
        EquipmentGroup:AddToggle("AutoEquipPet", {
            Text = "Auto Equip Best Pet",
            Default = false,
            Callback = function(p7)
                AX.SetEnabled(p7)
            end
        })
        EquipmentGroup:AddToggle("AutoEquipAnimal", {
            Text = "Auto Equip Best Animal",
            Default = false,
            Callback = function(qb)
                AO.SetEnabled(qb)
            end
        })
        local EggsGroup = RU.Main:AddRightGroupbox("Eggs", "egg")
        EggsGroup:AddToggle("AutoHatch", {
            Text = "Auto Hatch Egg",
            Default = false,
            Callback = function(qg)
                BU.SetEnabled(qg)
            end
        })
        EggsGroup:AddDropdown("HatchEgg", {
            Values = RX,
            Default = 1,
            Multi = false,
            Text = "Egg",
            Callback = function(ql)
                BU.SetEgg(ql)
            end
        })
        EggsGroup:AddSlider("HatchAmount", {
            Text = "Eggs Per Hatch",
            Default = 1,
            Min = 1,
            Max = 3,
            Rounding = 0,
            Callback = function(qn)
                BU.SetAmount(qn)
            end
        })
        EggsGroup:AddSlider("HatchDelay", {
            Text = "Hatch Delay",
            Default = 2,
            Min = 0.5,
            Max = 30,
            Rounding = 1,
            Suffix = "s",
            Callback = function(qp)
                BU.SetDelay(qp)
            end
        })
        local TeleportGroup = RU.Main:AddLeftGroupbox("Teleport", "map-pin")
        TeleportGroup:AddButton({ Text = "Teleport To Farm", Func = B_ })
        TeleportGroup:AddDropdown("TeleportZone", { Values = RT, Default = 1, Multi = false, Text = "Zone" })
        TeleportGroup:AddButton({
            Text = "Teleport To Zone",
            Func = function()
                local Nf = Options.TeleportZone and Options.TeleportZone.Value
                local Nf_1 = A2(Nf)
                if not Nf_1 then
                    Bu("Select a zone first")
                    return
                end
                if Bv(Nf_1) then
                    Bu("Teleported to level " .. tostring(Nf_1))
                else
                    Bu("That zone is not loaded")
                end
            end
        })
        q8 = task.spawn(function()
            while not Library.Unloaded do
                pcall(function()
                    local q_ = string.format("Cash %s  |  Bag %d/%d  |  Level %d", A9(BP()), BQ(), AP(), Be())
                    Label:SetText(q_ .. "  |  " .. tostring(State.Status))
                end)
                local Nm = false
                repeat
                    local Ni
                    if State.Notifications and #State.Notifications > 0 then
                        Ni = table.remove(State.Notifications, 1)
                        pcall(function()
                            Library:Notify(Ni.text, Ni.time)
                        end)
                    else
                        Nm = true
                    end
                until Nm
                task.wait(0.3)
            end
        end)
        Bp.Track(function()
            if coroutine.status(q8) ~= "dead" then
                pcall(task.cancel, q8)
            end
        end)
    end
    R5_1()
    local function R5_2()
        local NP
        local NL
        local NH
        local NO
        NH = nil
        NL = nil
        NO = nil
        NP = nil
        local Label, NI, NJ, NK, Label2, Label3, NQ, NR, NS
        NO = function(rd)
            return (tostring(rd):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        NL = function(rf, rg)
            return string.format('<font color="%s">%s</font>', rg, NO(rf))
        end
        NR = function(rj, rk, rl)
            return string.format("<b>%s</b> %s %s", rj, NL("-", "#5a6070"), NL(rk, rl))
        end
        NQ = "#7fd47f"
        local NT = "#6ec1ff"
        local NU = {}
        local NV = "#8b93a3"
        NK = "#e8a34d"
        if not Af() then
            table.insert(NU, "drilling, training, hatching and rebirth")
        end
        if not AY("Treasure", "RemoteEvent") then
            table.insert(NU, "collecting")
        end
        local N0 = if not AY("TreasureF", "RemoteFunction") then 1 else 0
        if N0 == 1 then
            table.insert(NU, "selling")
        end
        if not AY("Upgrade", "RemoteEvent") then
            table.insert(NU, "upgrades")
        end
        if not AY("Weapon", "RemoteEvent") then
            table.insert(NU, "buying drills")
        end
        if not AY("Pet", "RemoteEvent") then
            table.insert(NU, "equipping pets")
        end
        local N0_1 = if not BZ() then 1 else 0
        if N0_1 == 1 then
            table.insert(NU, "rebirth, spinning and aura buying")
        end
        if not Bg("Target") then
            table.insert(NU, "zone selection")
        end
        local NW = #NU == 0 and "ready"
        local NX = NW or "limited: " .. table.concat(NU, ", ")
        NI = "Unknown"
        pcall(function()
            local Np_1
            local No_1
            local Nv = if AR(identifyexecutor) then 1 else 0
            if Nv == 1 then
                Np_1, No_1 = identifyexecutor()
                local Nq = Np_1 ~= ""
                local Nr = type(Np_1) == "string" and Nq
                if Nr then
                    local Nq_1 = type(No_1) == "string" and No_1 ~= "" and Np_1 .. " " .. No_1
                    NI = Nq_1 or Np_1
                end
            end
        end)
        NP = os.clock()
        NJ = function()
            local Nw = math.floor(os.clock() - NP)
            if Nw < 60 then
                return Nw .. "s"
            elseif Nw < 3600 then
                return string.format("%dm %ds", Nw // 60, Nw % 60)
            else
                return string.format("%dh %dm", Nw // 3600, Nw % 3600 // 60)
            end
        end
        local UserGroup = RU.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(NR("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, NQ), true)
        UserGroup:AddLabel(NR("UserId", tostring(LocalPlayer.UserId), NT), true)
        UserGroup:AddLabel(NR("Executor", NI .. "  " .. NX, NQ), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(NR("Session", NJ(), NK), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                RZ(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                RZ("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = RU.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(NR("Game", R1, NT), true)
        Label2 = SessionGroup:AddLabel(NR("Players", "0/0", NQ), true)
        NS = tostring(game.JobId)
        local NT_1 = #NS > 18 and string.sub(NS, 1, 18) .. "..."
        local NW_2 = NT_1
        local N0_2 = if NW_2 then 1 else 0
        local NZ = 420 * N0_2 + 1081 * (1 - N0_2)
        local N_ = 1345 * N0_2 + 1997 * (1 - N0_2)
        if not ((NZ * 449 + N_ * 1673 + NZ * N_) % 16777213 == 3003665) then
            NW_2 = NS
        end
        local NT_2 = NW_2
        SessionGroup:AddLabel(NR("Job", NT_2, NV), true)
        Label = SessionGroup:AddLabel(NR("Ping", "0 ms", NK), true)
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
                RZ(NS, "Copied Job ID")
            end
        })
        NH = task.spawn(function()
            local Nz_1
            local Ny_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(NR("Session", NJ(), NK))
                Label2:SetText(NR("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), NQ))
                Ny_1, Nz_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local Ny_2 = Ny_1 and Nz_1 .. " ms"
                local NE = if Ny_2 then 1 else 0
                local NC = 212 * NE + 3383 * (1 - NE)
                local ND = 2278 * NE + 2283 * (1 - NE)
                if not ((NC * 3879 + ND * 1016 + NC * ND) % 16777213 == 3619732) then
                    Ny_2 = "n/a"
                end
                Label:SetText(NR("Ping", Ny_2, NK))
            end
        end)
        Bp.Track(function()
            if coroutine.status(NH) ~= "dead" then
                task.cancel(NH)
            end
        end)
        local SocialsGroup = RU.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                RZ(R2, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                RZ(RR, "Copied website link")
            end
        })
    end
    R5_2()
    local function R5_3()
        local sF
        local sD
        local sG
        local sE
        local MovementGroup = RU.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = RU.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        sD = {}
        sE = {}
        sG = {}
        local sC = {}
        sF = {}
        local function sH()
            for k, v in sD do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(sD)
        end
        local function sL()
            for k, v in sE do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(sE)
        end
        local function sP()
            for k, v in sF do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(sF)
        end
        local function sT(sU)
            if not sU:IsA("ProximityPrompt") then
                return
            end
            if sG[sU] == nil then
                sG[sU] = {
                    HoldDuration = sU.HoldDuration,
                    MaxActivationDistance = sU.MaxActivationDistance,
                    RequiresLineOfSight = sU.RequiresLineOfSight
                }
            end
            sU.HoldDuration = 0
            sU.MaxActivationDistance = 50
            sU.RequiresLineOfSight = false
        end
        local function sW()
            for k, v in sG do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(sG)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                sP()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                sL()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                sH()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                    pcall(sT, v)
                end
            else
                sW()
            end
        end)
        table.insert(sC, Workspace.DescendantAdded:Connect(function(te)
            if Toggles.InstantProximityPrompt.Value then
                sT(te)
            end
        end))
        table.insert(sC, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if sD[v] == nil then
                        sD[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(sC, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local OY = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and OY then
                OY:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(sC, RunService.RenderStepped:Connect(function(tA)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local O3 = Character and Character:FindFirstChildOfClass("Humanoid")
            local O4 = Character
            if O4 then
                O4 = Character:FindFirstChild("HumanoidRootPart")
            end
            local O2_1 = O4
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and O3 then
                if sE[O3] == nil then
                    sE[O3] = O3.WalkSpeed
                end
                O3.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and O2_1 and O3 and CurrentCamera then
                if sF[O3] == nil then
                    sF[O3] = O3.PlatformStand
                end
                O3.PlatformStand = true
                local O4_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        O4_4 += CurrentCamera.CFrame.LookVector
                    end
                    local Pa = if UserInputService:IsKeyDown(Enum.KeyCode.S) then 1 else 0
                    if Pa == 1 then
                        O4_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        O4_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        O4_4 += CurrentCamera.CFrame.RightVector
                    end
                    local Pa_1 = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
                    if Pa_1 == 1 then
                        O4_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        O4_4 -= Vector3.new(0, 1, 0)
                    end
                end
                O2_1.AssemblyLinearVelocity = Vector3.zero
                if O4_4.Magnitude > 0 then
                    O2_1.CFrame = O2_1.CFrame + O4_4.Unit * Options.FlySpeed.Value * tA
                end
            end
        end))
        Bp.Track(function()
            for k, v in sC do
                v:Disconnect()
            end
            sH()
            sL()
            sP()
            sW()
        end)
    end
    R5_3()
    local function R5_4()
        local Qw, Qx, Qy, Qz, QA, QB, QC, Label, QE, QF, QG, QH, QI, QJ
        QE = {}
        Qy = {}
        QJ = nil
        QG = 0
        QA = false
        Qw = 0
        QB = os.clock()
        local MenuGroup = RU.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        QH = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local Pj = not CurrentCamera or not AR(VirtualUser.CaptureController) or not AR(VirtualUser.ClickButton2)
            if Pj then
                return false
            end
            local Pj_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not Pj_1 then
                return false
            end
            Qw += 1
            QB = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. Qw)
            end)
            return true
        end
        QC = function(uj)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not uj)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not uj
                end
            end)
            if not uj then
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
        Qz = function(uz)
            local Pv = uz.ClassName == "ParticleEmitter" or uz.ClassName == "Trail"
            local Pz = if Pv then 1 else 0
            local Px = 3090 * Pz + 132 * (1 - Pz)
            local Py = 479 * Pz + 241 * (1 - Pz)
            if not ((Px * 3148 + Py * 3651 + Px * Py) % 16777213 == 12956259) then
                Pv = uz.ClassName == "Smoke"
            end
            if not Pv then
                Pv = uz.ClassName == "Fire"
            end
            local PC = if Pv then 1 else 0
            local PA = 2847 * PC + 2027 * (1 - PC)
            local PB = 382 * PC + 1923 * (1 - PC)
            if not ((PA * 1859 + PB * 2389 + PA * PB) % 16777213 == 7292725) then
                Pv = uz.ClassName == "Sparkles"
            end
            if not Pv then
                Pv = uz.ClassName == "Explosion"
            end
            if not Pv then
                Pv = uz.ClassName == "Beam"
            end
            if Pv then
                if QE[uz] == nil then
                    QE[uz] = uz.Enabled
                end
                pcall(function()
                    uz.Enabled = false
                end)
            end
        end
        Qx = function()
            for k, v in QE do
                local PH = k
                local PJ = v
                if PH.Parent then
                    pcall(function()
                        PH.Enabled = PJ
                    end)
                end
            end
            table.clear(QE)
            if QJ then
                pcall(function()
                    settings().Rendering.QualityLevel = QJ.Quality
                end)
                Lighting.GlobalShadows = QJ.Shadows
                Lighting.FogEnd = QJ.Fog
                QJ = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(uO)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not uO)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(uT)
                if uT then
                    if not QJ then
                        QJ = {
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
                        pcall(Qz, v)
                    end
                else
                    Qx()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        QC(true)
        local ScriptGroup = RU.Settings:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            QC(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            QC(true)
        end
        table.insert(Qy, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                QH()
            end
        end))
        table.insert(Qy, Workspace.DescendantAdded:Connect(function(vb)
            if Toggles.FpsBoost.Value then
                Qz(vb)
            end
        end))
        QI = function(vf)
            local P2 = QA
            local P7 = if P2 then 1 else 0
            local P5 = 3436 * P7 + 429 * (1 - P7)
            local P6 = 575 * P7 + 2841 * (1 - P7)
            if not ((P5 * 2570 + P6 * 2009 + P5 * P6) % 16777213 == 11961395) then
                P2 = Library.Unloaded
            end
            if not P2 then
                P2 = not Toggles.AutoReconnect.Value
            end
            if P2 then
                return
            end
            QA = true
            local P1 = QG
            local P2_1 = pcall(function()
                if vf then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not P2_1 then
                QA = false
                if not vf and P1 == QG then
                    task.delay(1.5, function()
                        if P1 == QG then
                            QI(true)
                        end
                    end)
                end
            end
        end
        table.insert(Qy, TeleportService.TeleportInitFailed:Connect(function(vx)
            local P9
            if vx == LocalPlayer and QA then
                QA = false
                P9 = QG
                task.delay(3, function()
                    if P9 == QG then
                        QI(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local Qh = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not Qh then
                return
            end
            table.insert(Qy, Qh.ChildAdded:Connect(function(vM)
                if vM.Name == "ErrorPrompt" then
                    QI(false)
                end
            end))
        end)
        QF = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    QC(true)
                end
                local Qn = Toggles.AntiAfk.Value and os.clock() - QB >= 60
                if Qn then
                    QH()
                end
                task.wait(1)
            end
        end)
        Bp.Track(function()
            QG += 1
            for k, v in Qy do
                v:Disconnect()
            end
            pcall(task.cancel, QF)
            QC(false)
            Qx()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    R5_4()
    local function R5_5()
        local RE, RF, RG, RH
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(RU.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/DrillBlockPerClick")
        local RI = SaveManager:BuildConfigSection(RU.Settings)
        RE = function(wc, wd)
            local QN = wc == "Toggle" and Toggles
            local QS = if QN then 1 else 0
            local QQ = 2954 * QS + 3458 * (1 - QS)
            local QR = 846 * QS + 3696 * (1 - QS)
            if not ((QQ * 3267 + QR * 419 + QQ * QR) % 16777213 == 12504276) then
                QN = Options
            end
            local QN_1 = QN[wd]
            local QM_2 = type(QN_1) == "table" and QN_1.Type == wc
            return QM_2 and QN_1 or nil
        end
        RG = function(wm, wn)
            local Type = wn.Type
            if Type == "Toggle" then
                return { idx = wm, type = "Toggle", value = wn.Value == true }
            elseif Type == "Slider" then
                return { idx = wm, type = "Slider", value = tostring(wn.Value) }
            elseif Type == "Dropdown" then
                return { idx = wm, type = "Dropdown", multi = wn.Multi == true, value = wn.Value }
            elseif Type == "Input" then
                local QU = wn.Value or ""
                return { idx = wm, type = "Input", text = tostring(QU) }
            elseif Type == "ColorPicker" then
                return { idx = wm, type = "ColorPicker", value = wn.Value:ToHex(), transparency = wn.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = wm,
                    type = "KeyPicker",
                    mode = wn.Mode,
                    key = wn.Value,
                    modifiers = wn.Modifiers,
                    toggled = wn.Toggled
                }
            else
                return nil
            end
        end
        RF = function()
            local Q_ = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local Q0 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if Q0 then
                        local Q0_1 = RG(k, v)
                        if Q0_1 then
                            Q_[#Q_ + 1] = Q0_1
                        end
                    end
                end
            end
            table.sort(Q_, function(wx, wy)
                if wx.type ~= wy.type then
                    return wx.type < wy.type
                end
                return wx.idx < wy.idx
            end)
            return { objects = Q_ }
        end
        RH = function(wA)
            local Rj
            Rj = nil
            local Rk = type(wA) ~= "table" or type(wA.idx) ~= "string" or type(wA.type) ~= "string" or SaveManager.Ignore[wA.idx]
            if Rk then
                return false
            end
            Rj = RE(wA.type, wA.idx)
            if not Rj then
                return false
            end
            local Rk_1 = pcall(function()
                if wA.type == "Input" then
                    if type(wA.text) ~= "string" then
                        return
                    end
                    Rj:SetValue(wA.text)
                elseif wA.type == "ColorPicker" then
                    Rj:SetValueRGB(Color3.fromHex(wA.value), wA.transparency)
                elseif wA.type == "KeyPicker" then
                    Rj:SetValue({ wA.key, wA.mode, wA.modifiers })
                    if wA.mode == "Toggle" and wA.toggled ~= nil then
                        Rj.Toggled = wA.toggled
                        Rj:Update()
                    end
                else
                    Rj:SetValue(wA.value)
                end
            end)
            return Rk_1
        end
        RI:AddDivider()
        RI:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        RI:AddButton("Export Config to Clipboard", function()
            local Rn_1
            local Rm_1
            Rm_1, Rn_1 = pcall(HttpService.JSONEncode, HttpService, RF())
            if Rm_1 then
                local Rm_2 = AR(setclipboard) and setclipboard
                local Ro = Rm_2
                local Rt = if Ro then 1 else 0
                local Rr = 725 * Rt + 1783 * (1 - Rt)
                local Rs = 4053 * Rt + 1919 * (1 - Rt)
                if not ((Rr * 1711 + Rs * 3826 + Rr * Rs) % 16777213 == 2908465) then
                    local Rm_3 = AR(toclipboard) and toclipboard
                    Ro = Rm_3 or nil
                end
                local Rm_4 = Ro
                local Ro_1 = type(Rm_4) == "function" and pcall(Rm_4, Rn_1)
                if Ro_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        RI:AddButton("Import Config from Clipboard Text", function()
            local Rw_1
            local Ru = Options.SaveManager_ImportSource.Value or ""
            local Ru_1
            local Rv = tostring(Ru):match("^%s*(.-)%s*$")
            if Rv == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #Rv > 262144 then
                Library:Notify("That config is too large")
                return
            end
            Ru_1, Rw_1 = pcall(HttpService.JSONDecode, HttpService, Rv)
            local Rv_1 = not Ru_1 or type(Rw_1) ~= "table" or type(Rw_1.objects) ~= "table"
            if Rv_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #Rw_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local Ru_2 = 0
            for i, v in ipairs(Rw_1.objects) do
                if RH(v) then
                    Ru_2 += 1
                end
            end
            if Ru_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local Rw_2 = Ru_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(Ru_2, Rw_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.ClickDelay then
            Bw.SetDelay(Options.ClickDelay.Value)
        end
        if Options.CollectZones then
            Bm.SetZones(Options.CollectZones.Value)
        end
        if Options.CollectRarities then
            Bm.SetRarities(Options.CollectRarities.Value)
        end
        if Toggles.CollectReturn then
            Bm.SetReturn(Toggles.CollectReturn.Value)
        end
        if Options.CollectDelay then
            Bm.SetDelay(Options.CollectDelay.Value)
        end
        if Options.SellAnimals then
            Ao.SetAnimals(Options.SellAnimals.Value)
        end
        if Options.SellAnimalMode then
            Ao.SetAnimalMode(Options.SellAnimalMode.Value)
        end
        if Options.SellMode then
            Ao.SetMode(Options.SellMode.Value)
        end
        if Options.SellThreshold then
            Ao.SetThreshold(Options.SellThreshold.Value)
        end
        if Options.SellDelay then
            Ao.SetDelay(Options.SellDelay.Value)
        end
        if Options.RebirthDelay then
            Bd.SetDelay(Options.RebirthDelay.Value)
        end
        if Options.TrainMachine then
            Ag.SetTrain(Options.TrainMachine.Value)
        end
        if Options.SpinDelay then
            BK.SetDelay(Options.SpinDelay.Value)
        end
        if Options.UpgradeKeys then
            A3.SetKeys(Options.UpgradeKeys.Value)
        end
        if Options.UpgradeDelay then
            A3.SetDelay(Options.UpgradeDelay.Value)
        end
        if Options.HatchEgg then
            BU.SetEgg(Options.HatchEgg.Value)
        end
        if Options.HatchAmount then
            BU.SetAmount(Options.HatchAmount.Value)
        end
        if Options.HatchDelay then
            BU.SetDelay(Options.HatchDelay.Value)
        end
        if Toggles.AutoClick then
            Bw.SetEnabled(Toggles.AutoClick.Value)
        end
        if Toggles.AutoCollect then
            Bm.SetEnabled(Toggles.AutoCollect.Value)
        end
        if Toggles.MoneyReturn then
            BA.SetReturn(Toggles.MoneyReturn.Value)
        end
        if Options.MoneyDelay then
            BA.SetDelay(Options.MoneyDelay.Value)
        end
        if Toggles.AutoCollectMoney then
            BA.SetEnabled(Toggles.AutoCollectMoney.Value)
        end
        if Toggles.AutoSell then
            Ao.SetEnabled(Toggles.AutoSell.Value)
        end
        if Toggles.AutoRebirth then
            Bd.SetEnabled(Toggles.AutoRebirth.Value)
        end
        if Toggles.AutoTrain then
            Ag.SetEnabled(Toggles.AutoTrain.Value)
        end
        if Toggles.AutoSpin then
            BK.SetEnabled(Toggles.AutoSpin.Value)
        end
        if Toggles.AutoUpgrade then
            A3.SetEnabled(Toggles.AutoUpgrade.Value)
        end
        if Toggles.AutoBuyDrills then
            AF.SetEnabled(Toggles.AutoBuyDrills.Value)
        end
        if Toggles.AutoBuyAura then
            Aw.SetEnabled(Toggles.AutoBuyAura.Value)
        end
        if Toggles.AutoEquipPet then
            AX.SetEnabled(Toggles.AutoEquipPet.Value)
        end
        if Toggles.AutoEquipAnimal then
            AO.SetEnabled(Toggles.AutoEquipAnimal.Value)
        end
        if Toggles.AutoHatch then
            BU.SetEnabled(Toggles.AutoHatch.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    R5_5()
end
Sq_7()
Sq_4()
