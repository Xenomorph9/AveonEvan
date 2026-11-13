local fns = {}
local y6
local zv
local Ac
local yU
local connection
local zi
local y_
local zo
local z5
local y5
local zN
local zu
local zb
local zA
local Ah
local zh
local zZ
local zG
local An
local za
local zz
local Ag
local zg
local zY
local yY
local Am
local zm
local z3
local y3
local zL
local As
local zs
local y9
local CoreGui
local Af
local yX
local zE
local Al
local z2
local y2
local Ar
local zr
local z8
local y8
local zQ
local Ae
local zW
local zD
local Ak
local zk
local z1
local y1
local zJ
local Aq
local zP
local zw
local Ad
local zd
local zV
local yV
local zC
local zI
local Ap
function fns.fn6()
    local Ic = {}
    for i, v in ipairs(zJ) do
        local Id = zL(v)
        local Ie = Id and tonumber(Id.WinsCost)
        if Id and Ie then
            local insert = table.insert
            local Ig = tonumber(Id.SpeedMultiplier) or 0
            local Ih = tonumber(Id.Order) or #Ic + 1
            insert(Ic, { Name = v, Info = Id, Cost = Ie, Mult = Ig, Order = Ih })
        end
    end
    table.sort(Ic, function(lb, lc)
        if lb.Order == lc.Order then
            return lb.Cost < lc.Cost
        end
        return lb.Order < lc.Order
    end)
    return Ic
end
function fns.fn11()
    local Gj = { "Best Unlocked" }
    for i, v in ipairs(Ae()) do
        table.insert(Gj, v.Name)
    end
    return Gj
end
function fns.fn12(ek, el, em)
    local DX = (Ah())
    if DX then
        local DY_1 = ek == "final" or tostring(ek) == "final"
        DX = DY_1
    end
    if DX then
        if el == "Double" then
            return Vector3.new(z3.X, z3.Y, z3.Z - 92)
        end
        return z3
    end
    local DX_1 = Ap(el, ek)
    if DX_1 then
        return DX_1
    end
    local DX_2 = zV(em, ek)
    local DY_2 = z5(DX_2)
    if DY_2 then
        return DY_2
    end
    local DY_3 = el == "Double" and "Normal" or "Double"
    local DX_4 = Ap(DY_3, ek)
    if DX_4 then
        local DY_5 = el == "Double" and DX_4.Z - 65 or DX_4.Z + 65
        return Vector3.new(DX_4.X, DX_4.Y, DY_5)
    end
    return yX(ek)
end
function fns.fn22(kU)
    local H6_1
    local H5_1
    local trailData = zZ.trailData
    if not trailData then
        return nil
    end
    local H4 = trailData[kU]
    if type(H4) ~= "table" then
        if zo(trailData.Get) then
            H5_1, H6_1 = pcall(trailData.Get, kU)
            local H3_1 = H5_1 and type(H6_1) == "table"
            if H3_1 then
                H4 = H6_1
            end
        end
    end
    local H3_2 = type(H4) == "table" and H4
    return H3_2 or nil
end
function fns.fn30()
    local horseData = zZ.horseData
    local Hh = not horseData or type(horseData.Tiers) ~= "table"
    if Hh then
        return {}
    end
    local Hh_1 = {}
    for i, v in ipairs(horseData.Tiers) do
        if tonumber(v.Wins) then
            table.insert(Hh_1, v)
        end
    end
    table.sort(Hh_1, function(jp, jq)
        local G5 = (tonumber(jp.Index))
        local Hc = if G5 then 1 else 0
        local Ha = 74 * Hc + 2049 * (1 - Hc)
        local Hb = 4054 * Hc + 2626 * (1 - Hc)
        if not ((Ha * 3852 + Hb * 1522 + Ha * Hb) % 16777213 == 6755232) then
            G5 = 0
        end
        local G6 = G5
        local G5_1 = tonumber(jq.Index) or 0
        if G6 == G5_1 then
            local G5_2 = tonumber(jp.Wins) or 0
            local G8 = (tonumber(jq.Wins))
            local Hf = if G8 then 1 else 0
            local Hd = 3061 * Hf + 318 * (1 - Hf)
            local He = 3969 * Hf + 3794 * (1 - Hf)
            if not ((Hd * 1956 + He * 376 + Hd * He) % 16777213 == 2851556) then
                G8 = 0
            end
            return G5_2 < G8
        end
        return G6 < G5_1
    end)
    return Hh_1
end
function fns.fn50()
    local F4 = -1
    local Model
    for i, v in ipairs(Ae()) do
        if v.Unlocked and v.Multiplier > F4 then
            F4 = v.Multiplier
            Model = v.Model
        end
    end
    return Model, F4
end
function fns.fn99()
    local Cn = tonumber(Ad.WinsReserve) or 0
    return math.max(0, Cn)
end
function fns.fn118(aq)
    yY = aq
end
function fns.fn159(bx)
    local BU_1
    local BT_1
    if not bx then
        return nil
    end
    BT_1, BU_1 = pcall(require, bx)
    local BV = BT_1 and type(BU_1) == "table"
    if BV then
        return BU_1
    end
    return nil
end
function fns.fn161(bX)
    local leaderstats = y5:FindFirstChild("leaderstats")
    local B9 = leaderstats and leaderstats:FindFirstChild(bX)
    local B8_1 = B9
    if B9 then
        B9 = tonumber(B8_1.Value)
    end
    return B9 or 0
end
function fns.fn190()
    if Ah() then
        local World2 = An:FindFirstChild("World2")
        local Cv = World2 and World2:FindFirstChild("New-Lobby")
        return Cv
    end
    return An:FindFirstChild("Lobby")
end
function fns.fn268(cX, cY, cZ)
    local CG = not cX
    local CH = typeof(cZ) ~= "Vector3" or CG
    if CH or not cY then
        return
    end
    Ad.WinPadCache[z1(cX, cY)] = cZ
end
local function fn284()
    local G_ = zD()
    local G0 = G_ and G_:FindFirstChild("HorseDisplay")
    local G__1 = G0
    if G0 then
        G0 = G__1:FindFirstChildWhichIsA("BasePart", true)
    end
    local G__2 = G0
    if G0 then
        G0 = G__2.Position
    end
    return G0 or nil
end
local function fn291(cM)
    local CB = y2()
    if not CB then
        return nil, nil
    end
    local DoubleWins = CB:FindFirstChild("DoubleWins")
    local CollectWins = CB:FindFirstChild("CollectWins")
    if cM == "Double" and DoubleWins then
        return DoubleWins, "Double"
    end
    if cM == "Normal" and CollectWins then
        return CollectWins, "Normal"
    end
    local CB_3 = y5:GetAttribute("HasPermanent2xWins") == true and DoubleWins
    if CB_3 then
        return DoubleWins, "Double"
    end
    return CollectWins or DoubleWins, CollectWins and "Normal" or DoubleWins and "Double" or nil
end
local function fn340(b3)
    local PlayerStats = y5:FindFirstChild("PlayerStats")
    local Ci = PlayerStats and PlayerStats:FindFirstChild(b3)
    if not Ci then
        return nil
    elseif Ci:IsA("StringValue") then
        return Ci.Value
    else
        return Ci.Value
    end
end
local function fn350(fq)
    fq.stopped = true
    local Ez = fq.generation or 0
    fq.generation = Ez + 1
end
local function fn388(gZ)
    if not gZ then
        return nil
    end
    local Fr = (gZ:FindFirstChild("Hitbox"))
    local Fw = if Fr then 1 else 0
    local Fu = 2364 * Fw + 190 * (1 - Fw)
    local Fv = 1957 * Fw + 4067 * (1 - Fw)
    if not ((Fu * 3822 + Fv * 2109 + Fu * Fv) % 16777213 == 1011656) then
        Fr = gZ:FindFirstChild("AFKSpawn")
    end
    local Fs = Fr
    if Fr then
        Fr = Fs:IsA("BasePart")
    end
    if Fr then
        return Fs
    end
    return gZ:FindFirstChildWhichIsA("BasePart", true)
end
local function fn410()
    local Hw
    for i, v in ipairs(zW()) do
        if zk(v.Name) then
            Hw = v
        end
    end
    return Hw
end
local function fn423()
    gethui = Aq
end
local function fn456(mc)
    local I_ = mc or "Best Unlocked"
    local I0 = tostring(I_)
    if I0 == "" or I0 == "Best" then
        I0 = "Best Unlocked"
    end
    za.belt = I0
end
local function fn494(d3)
    local DO_1
    local DL = zY()
    local DM = DL and DL:FindFirstChild("StagePlatforms")
    local DL_1 = DM
    if DM then
        DM = DL_1:FindFirstChild(tostring(d3))
    end
    local DL_2 = DM
    if not DL_2 then
        return nil
    end
    local BasePart = DL_2:FindFirstChildWhichIsA("BasePart", true)
    if not BasePart then
        return nil
    end
    local DL_3 = 400
    local DN = zZ.stageSpeed and zo(zZ.stageSpeed.LengthOf)
    local DN_1
    if DN then
        DN_1, DO_1 = pcall(zZ.stageSpeed.LengthOf, d3)
        local DP = DN_1 and type(DO_1) == "number"
        if DP then
            DL_3 = DO_1
        end
    end
    return BasePart.Position + Vector3.new(DL_3, 6, 0)
end
local function fn524(af)
    local A9 = (tonumber(af))
    local Bf = if A9 then 1 else 0
    local Bd = 931 * Bf + 1848 * (1 - Bf)
    local Be = 2482 * Bf + 3936 * (1 - Bf)
    if not ((Bd * 1861 + Be * 3311 + Bd * Be) % 16777213 == 12261235) then
        A9 = 0
    end
    af = A9
    local A9_1 = 1
    local Ba = { "", "K", "M", "B", "T", "Qa", "Qi", "Sx", "Sp", "Oc", "No", "Dc" }
    while af >= 1000 and A9_1 < 12 do
        af = af / 1000
        A9_1 += 1
    end
    if A9_1 == 1 then
        return string.format("%d", af)
    end
    return string.format("%.2f%s", af, Ba[A9_1])
end
local function fn529(dN, dO)
    local DA = zV(dN, dO)
    local DB = DA and DA:FindFirstChild("Touch")
    local DA_1 = DB
    if DB then
        DB = DA_1:IsA("BasePart")
    end
    return DB and DA_1 or nil
end
local function fn531()
    return CoreGui
end
local function worker()
    local B6_1
    local B5_1
    B5_1, B6_1 = pcall(y3)
    if not B5_1 then
        warn("[Ouroboros] module load failed: " .. tostring(B6_1))
        zZ.ready = true
    end
end
local function fn542(l6)
    if l6 then
        zz(zi, zg)
    else
        zv(zi)
        Ad.WinStatus = "Idle"
    end
end
local function fn591()
    local Iw
    for i, v in ipairs(zJ) do
        if Ac(v) then
            local Ix = zL(v)
            local Iy = Ix and tonumber(Ix.SpeedMultiplier)
            Iw = { Name = v, Info = Ix, Mult = Iy or 0 }
        end
    end
    return Iw
end
local function fn595()
    return zs() == "World2"
end
local function fn608(dJ, dK)
    local Du = dJ and dJ:FindFirstChild(tostring(dK))
    return Du or nil
end
local function fn650()
    return zC("Rebirths")
end
local function fn653()
    for i, v in ipairs(zW()) do
        if not zk(v.Name) then
            return v
        end
    end
    return nil
end
local function fn659(my)
    if my then
        zz(Ak, z8)
    else
        zv(Ak)
        Ad.TrailStatus = "Idle"
    end
end
local function fn676()
    return not zP.Unloaded
end
local function fn721()
    local stage = zi.stage
    local EC = stage == ""
    local ED = type(stage) ~= "string" or EC
    if ED or stage == "Best" then
        local EI = if Ah() then 1 else 0
        if EI == 1 then
            return "final"
        end
        local EC_2 = zI()
        return EC_2[#EC_2] or 10
    end
    local EC_3 = tonumber(string.match(stage, "%d+"))
    if EC_3 then
        return EC_3
    elseif Ah() then
        return "final"
    else
        local EB_1 = zI()
        return EB_1[#EB_1] or 10
    end
end
local function fn737(V)
    local A7 = typeof(cloneref) == "function" and typeof(V) == "Instance"
    if A7 then
        return cloneref(V)
    end
    return V
end
local function fn786()
    local attr = y5:GetAttribute("CurrentWorld")
    local Cq = attr ~= ""
    local Cr = type(attr) == "string" and Cq
    if Cr then
        return attr
    end
    local Cp_1 = zu()
    local Cq_1 = Cp_1 and math.abs(Cp_1.Position.Z) > 100000
    if Cq_1 then
        return "World2"
    end
    return "World1"
end
local function fn790()
    local Cx = zY()
    if not Cx then
        return nil
    end
    local Wins = Cx:FindFirstChild("Wins")
    if Wins then
        return Wins
    elseif Ah() then
        local Cy_1 = zD()
        local Cz = Cy_1 and Cy_1:FindFirstChildWhichIsA("BasePart", true)
        if Cz then
            y6(Cz.Position)
        end
        return Cx:FindFirstChild("Wins")
    else
        return nil
    end
end
local function fn851(gB)
    if not gB then
        return false
    end
    local Ff = zQ[gB.Name]
    local Fe_1 = Ff and y5:GetAttribute(Ff) ~= true
    if Fe_1 then
        return false
    end
    local attr = gB:GetAttribute("RequirementType")
    local Fg = tonumber(gB:GetAttribute("RequirementValue")) or 0
    if attr == "DeveloperProduct" then
        local Fg_1 = Ff or "HasThunderTreadmill"
        return y5:GetAttribute(Fg_1) == true
    end
    if attr == "Rebirths" or attr == nil then
        return y1() >= Fg
    end
    return gB:GetAttribute("DisplayStatus") == "Unlocked"
end
local function fn873(aQ)
    local BE_2
    local BD = os.clock() + 8
    local BD_2
    while true do
        local BE_1 = Ad.MoveBusy and zb() and os.clock() < BD
        if BE_1 then
            task.wait(0.1)
            continue
        end
        break
    end
    local BD_1 = Ad.MoveBusy or not zb()
    if BD_1 then
        return false
    end
    Ad.MoveBusy = true
    BD_2, BE_2 = pcall(aQ)
    Ad.MoveBusy = false
    As(nil)
    if not BD_2 then
        warn("[Ouroboros] movement error: " .. tostring(BE_2))
        return false
    end
    return BE_2
end
local function fn893()
    local Ck = tonumber(Ag("Level")) or 1
    return Ck
end
local function fn908(mf)
    if mf then
        zz(za, zN)
    else
        zv(za)
        As(nil)
        Ad.StepsStatus = "Idle"
    end
end
local function fn922()
    local C6 = { "Best" }
    for i, v in ipairs(zI()) do
        table.insert(C6, zA(v))
    end
    return C6
end
local function fn938(a5, a6, a7)
    local BL = os.clock()
    local BN = BL + (a6 or 8)
    while true do
        local BL_1 = zb() and os.clock() < BN
        if not BL_1 then
            local BL_2 = a5()
            local BM_1 = BL_2 and BL_2:IsA("BasePart")
            return BM_1 and BL_2 or nil
        end
        if a7 then
            y6(a7)
        end
        BL = a5()
        local BM_2 = BL and BL:IsA("BasePart")
        if BM_2 then
            break
        end
        task.wait(0.15)
    end
    return BL
end
local function fn947(g3)
    local Fx = y8(g3)
    if Fx then
        return Fx.Position
    end
    local Lobby = An:FindFirstChild("Lobby")
    local Fy = Lobby and Lobby:FindFirstChild("Treadmills")
    local Fx_2 = Fy
    if Fy then
        Fy = Fx_2:FindFirstChildWhichIsA("BasePart", true)
    end
    local Fx_3 = Fy
    if Fy then
        Fy = Fx_3.Position
    end
    local Fx_4 = Fy
    local FC = if Fx_4 then 1 else 0
    local FA = 142 * FC + 719 * (1 - FC)
    local FB = 1213 * FC + 4009 * (1 - FC)
    if not ((FA * 1828 + FB * 473 + FA * FB) % 16777213 == 1005571) then
        Fx_4 = nil
    end
    return Fx_4
end
local function fn956(hq)
    for i, v in ipairs(zG()) do
        local FW = v:FindFirstChild(hq)
        local FX = FW and FW:IsA("Model")
        if FX then
            local FX_1 = tonumber(FW:GetAttribute("StepMultiplier")) or 1
            return FW, FX_1
        end
    end
    return nil, nil
end
local function fn990()
    return zC("Steps")
end
local function fn1000()
    zv(zi)
    zv(za)
    zv(y_)
    zv(yU)
    zv(Ak)
    As(nil)
end
local function fn1029(Y)
    return type(Y) == "function"
end
local function fn1050(ms)
    if ms then
        zz(yU, Ar)
    else
        zv(yU)
        Ad.HorseStatus = "Idle"
    end
end
local function fn1058(cT, cU)
    return zs() .. "/" .. tostring(cT) .. "/" .. tostring(cU)
end
local function fn1071()
    y9:Disconnect()
    yY = nil
end
local function fn1074(mm)
    if mm then
        zz(y_, zh)
    else
        zv(y_)
        Ad.RebirthStatus = "Idle"
    end
end
local function fn1102(iO)
    local GP_1
    local horseData = zZ.horseData
    local GO = horseData and zo(horseData.Owns)
    local GO_1, GO_5
    if GO then
        GO_1, GP_1 = pcall(horseData.Owns, y5, iO)
        if GO_1 then
            return GP_1 == true
        end
        local HorsesOwned = y5:FindFirstChild("HorsesOwned")
        local GO_2 = HorsesOwned and HorsesOwned:FindFirstChild(iO)
        local GO_3 = GO_2 ~= nil
        if GO_5 then
            local GP_2 = not GO_2:IsA("BoolValue") or GO_2.Value == true
            GO_3 = GP_2
        end
        return GO_3
    end
    local HorsesOwned = y5:FindFirstChild("HorsesOwned")
    local GO_4 = HorsesOwned and HorsesOwned:FindFirstChild(iO)
    GO_5 = GO_4 ~= nil
    if GO_5 then
        local GP_3 = not GO_4:IsA("BoolValue") or GO_4.Value == true
        GO_5 = GP_3
    end
    return GO_5
end
local function fn1105()
    local FE = {}
    local FF = {}
    for i, v in ipairs(zG()) do
        for i, child in ipairs(v:GetChildren()) do
            local FG = child:IsA("Model") and not FF[child.Name]
            if FG then
                FF[child.Name] = true
                local insert = table.insert
                local Name = child.Name
                local FI = tonumber(child:GetAttribute("StepMultiplier")) or 1
                insert(FE, { Name = Name, Multiplier = FI, Model = child, Unlocked = zm(child) })
            end
        end
    end
    table.sort(FE, function(hn, ho)
        if hn.Multiplier == ho.Multiplier then
            return hn.Name < ho.Name
        end
        return hn.Multiplier > ho.Multiplier
    end)
    return FE
end
local function fn1111()
    return zC("Wins")
end
local function fn1113(kR)
    return y5:GetAttribute("Owns" .. kR .. "Trail") == true
end
local function fn1115()
    local B_ = yV:FindFirstChild("Modules") and yV.Modules:FindFirstChild("Shared")
    if B_ then
        zZ.horseData = zE(B_:FindFirstChild("HorseData"))
        zZ.trailData = zE(B_:FindFirstChild("TrailData"))
        zZ.winsData = zE(B_:FindFirstChild("WinsData"))
        zZ.stageSpeed = zE(B_:FindFirstChild("StageSpeed"))
        zZ.helper = zE(B_:FindFirstChild("Helper"))
        zZ.remoteService = zE(B_:FindFirstChild("RemoteEventService"))
    end
    local B__1 = zZ.remoteService and zo(zZ.remoteService.Get)
    if B__1 then
        zZ.addSpeed = zZ.remoteService.Get("AddSpeed")
        zZ.freeShop = zZ.remoteService.Get("FreeShop")
        zZ.requestHorseEquip = zZ.remoteService.Get("RequestHorseEquip")
        zZ.buyTrailWins = zZ.remoteService.Get("BuyTrailWins", "RemoteFunction")
        zZ.equipTrail = zZ.remoteService.Get("EquipTrail")
    end
    local B__2 = yV:FindFirstChild("Events")
    local B0_1 = B__2 and B__2:FindFirstChild("RequestWorldTeleport")
    zZ.requestWorldTeleport = B0_1
    local B__3 = {}
    if not zZ.horseData then
        table.insert(B__3, "horses")
    end
    if not zZ.trailData then
        table.insert(B__3, "trails")
    end
    if not zZ.winsData or not zZ.stageSpeed then
        table.insert(B__3, "stages")
    end
    if not zZ.addSpeed then
        table.insert(B__3, "steps")
    end
    if not zZ.freeShop then
        table.insert(B__3, "rebirth")
    end
    if not zZ.requestHorseEquip then
        table.insert(B__3, "horse equip")
    end
    local B0_3 = not zZ.buyTrailWins
    local B4 = if B0_3 then 1 else 0
    local B2 = 796 * B4 + 119 * (1 - B4)
    local B3 = 3266 * B4 + 4056 * (1 - B4)
    if not ((B2 * 64 + B3 * 159 + B2 * B3) % 16777213 == 3169974) then
        B0_3 = not zZ.equipTrail
    end
    if B0_3 then
        table.insert(B__3, "trails remote")
    end
    if not zZ.requestWorldTeleport then
        table.insert(B__3, "world teleport")
    end
    zZ.missing = B__3
    zZ.ready = true
end
local function fn1168(l3)
    local IV = l3 or "Best"
    local IW = tostring(IV)
    if IW == "" or IW == "Best Unlocked" then
        IW = "Best"
    end
    zi.stage = IW
end
local function fn1188()
    if Ah() then
        return An:FindFirstChild("World2")
    end
    return An
end
local function onHeartbeat()
    local BA = not yY
    local BB = not zb() or BA
    if BB then
        return
    end
    local BA_1 = zu()
    if not BA_1 then
        return
    end
    BA_1.CFrame = yY
    BA_1.AssemblyLinearVelocity = Vector3.zero
end
local function fn1206()
    for i, v in ipairs(Af()) do
        if not Ac(v.Name) then
            return v
        end
    end
    return nil
end
local function fn1220(eE, eF, eG)
    local D6 = not eE or typeof(eF) ~= "Vector3"
    if D6 then
        return nil
    end
    local D6_1 = nil
    local D8 = eG or 80
    for i, child in ipairs(eE:GetChildren()) do
        local Touch = child:FindFirstChild("Touch")
        local D9 = Touch and Touch:IsA("BasePart")
        if D9 then
            local Magnitude = (Touch.Position - eF).Magnitude
            if Magnitude < D8 then
                D8 = Magnitude
                D6_1 = Touch
            end
        end
    end
    return D6_1
end
local function fn1285()
    local belt = za.belt
    local Ge_1
    local Gf = belt ~= ""
    local Gf_2, Gf_3
    local Gg = type(belt) == "string" and Gf
    local Gg_1
    if Gg and belt ~= "Best Unlocked" then
        Gg_1, Gf_2 = Al(belt)
        if Gg_1 then
            if not zm(Gg_1) then
                return nil, nil, string.format("%s is locked", belt)
            end
            return Gg_1, Gf_2 or 1, nil
        end
        return nil, nil, string.format("%s not streamed in", belt)
    end
    Gf_3, Ge_1 = zr()
    if not Gf_3 then
        return nil, nil, "No unlocked treadmill"
    end
    return Gf_3, Ge_1 or 1, nil
end
local function fn1308()
    local GD = not zZ.freeShop
    local GJ = if GD then 1 else 0
    local GH = 2352 * GJ + 485 * (1 - GJ)
    local GI = 3961 * GJ + 857 * (1 - GJ)
    if not ((GH * 1590 + GI * 855 + GH * GI) % 16777213 == 16442607) then
        GD = not zZ.helper
    end
    local GM = if GD then 1 else 0
    local GK = 2833 * GM + 1288 * (1 - GM)
    local GL = 3266 * GM + 1011 * (1 - GM)
    if not ((GK * 1110 + GL * 704 + GK * GL) % 16777213 == 14696472) then
        GD = not zo(zZ.helper.GetRebirthLevelRequired)
    end
    if GD then
        Ad.RebirthStatus = "Rebirth remote unavailable"
        return
    end
    local GD_1 = y1()
    local GE = zZ.helper.GetRebirthLevelRequired(GD_1)
    local GF = Am()
    if GF < GE then
        Ad.RebirthStatus = string.format("Need level %d (at %d)", GE, GF)
        return
    end
    pcall(function()
        zZ.freeShop:FireServer("Rebirth", false)
    end)
    task.wait(0.4)
    if y1() > GD_1 then
        Ad.RebirthStatus = string.format("Rebirthed to %d", y1())
    else
        Ad.RebirthStatus = "Rebirth requested"
    end
end
local function fn1334()
    connection:Disconnect()
end
local function fn1337(c2, c3)
    return Ad.WinPadCache[z1(c2, c3)]
end
local function fn1340()
    local Character = y5.Character
    local Bh = Character and Character:FindFirstChild("HumanoidRootPart")
    local Bg_1 = Bh
    local Bl = if Bg_1 then 1 else 0
    local Bj = 2291 * Bl + 2904 * (1 - Bl)
    local Bk = 688 * Bl + 2934 * (1 - Bl)
    if not ((Bj * 2058 + Bk * 987 + Bj * Bk) % 16777213 == 6970142) then
        Bg_1 = nil
    end
    return Bg_1
end
local function fn1384()
    return math.max(0, zw() - z2())
end
local function fn1391(dl)
    if Ah() then
        return "World 2 Stage " .. tostring(dl)
    end
    return "Stage " .. tostring(dl)
end
local function fn1407()
    Ad.WorldStatus = "Current: " .. zs()
end
local function fn1427()
    zd()
end
local function fn1434(i2)
    local GU = zD()
    local GV = GU and GU:FindFirstChild("HorseDisplay")
    local GU_1 = GV
    if GV then
        GV = GU_1:FindFirstChild("Horsies")
    end
    local GU_2 = GV
    if GV then
        GV = GU_2:FindFirstChild(i2)
    end
    return GV
end
yU = nil
yV = nil
yX = nil
yY = nil
y_ = nil
y1 = nil
y2 = nil
y3 = nil
y5 = nil
y6 = nil
y8 = nil
y9 = nil
za = nil
zb = nil
zd = nil
zg = nil
zh = nil
zi = nil
zk = nil
zm = nil
zo = nil
zr = nil
zs = nil
zu = nil
zv = nil
zw = nil
CoreGui = nil
zz = nil
zA = nil
zC = nil
zD = nil
zE = nil
local Players, yT, yW, yZ, y0, y4, y7, zc, ze, zf, zj, Lighting, zn, zp, TeleportService, zt, zx, zB
zG = nil
zI = nil
zJ = nil
zL = nil
zN = nil
zP = nil
zQ = nil
zV = nil
zW = nil
zY = nil
zZ = nil
z1 = nil
z2 = nil
z3 = nil
z5 = nil
z8 = nil
Ac = nil
Ad = nil
Ae = nil
Af = nil
Ag = nil
Ah = nil
connection = nil
Ak = nil
Al = nil
Am = nil
An = nil
Ap = nil
Aq = nil
Ar = nil
local GuiService, zH, HttpService, zM, zO, VirtualUser, zS, zT, zU, zX, z_, UserInputService, z4, z6, z7, z9, Aa, Ab, Aj, Ao
As = nil
local Aw, Ax, Ay, Az, AA
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, z9, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, zc, y5, Aq = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local Av = game:GetService("ReplicatedStorage")
z9 = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
zc = game:GetService("Workspace")
y5 = Players.LocalPlayer
local Au = "OuroborosHorseEvolution"
Aq = fn531
if getgenv then
    getgenv().gethui = Aq
end
zP, yV, An, Ad, yY, y9, zZ, zQ, zJ, Ax, zf, Aw, zo, zb, z4, zu, As, z_, y4, Aj, y6, zO, zU, zE, y3 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local At = 65
repeat
    Ay = (At * 1 + 1) % 9 + 1
    if Ay <= 5 then
        if Ay <= 3 then
            if Ay <= 2 then
                if Ay <= 1 then
                    local PR = bit32.rrotate(bit32.bxor(bit32.lrotate(At, 31), string.byte(tostring(yV))), 12)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(PR, 3656474710), 16), 1616304625) ~= bit32.lrotate(PR, 16) then
                        Aj = function(aB, aC)
                            local By
                            By = nil
                            if typeof(aB) ~= "Vector3" then
                                return false
                            end
                            By = zu()
                            if not By then
                                return false
                            end
                            return (pcall(function()
                                local Bw = aC or 4
                                By.CFrame = CFrame.new(aB + Vector3.new(0, Bw, 0))
                                By.AssemblyLinearVelocity = Vector3.zero
                            end))
                        end
                        zP = y4.Heartbeat:Connect(onHeartbeat)
                        zO.Track(fn1071)
                        z9 = fn873
                        y9 = function(a_)
                            if typeof(a_) ~= "Vector3" then
                                return false
                            end
                            local BJ = pcall(function()
                                y5:RequestStreamAroundAsync(a_)
                            end)
                            return BJ
                        end
                        y6 = fn938
                    else
                        y4 = function(aB, aC)
                            local By
                            By = nil
                            if typeof(aB) ~= "Vector3" then
                                return false
                            end
                            By = zu()
                            if not By then
                                return false
                            end
                            return (pcall(function()
                                local Bw = aC or 4
                                By.CFrame = CFrame.new(aB + Vector3.new(0, Bw, 0))
                                By.AssemblyLinearVelocity = Vector3.zero
                            end))
                        end
                        y9 = z9.Heartbeat:Connect(onHeartbeat)
                        zP.Track(fn1071)
                        Aj = fn873
                        y6 = function(a_)
                            if typeof(a_) ~= "Vector3" then
                                return false
                            end
                            local BJ = pcall(function()
                                y5:RequestStreamAroundAsync(a_)
                            end)
                            return BJ
                        end
                        zO = fn938
                    end
                    At = (At + 1) % 72
                else
                    local QO = bit32.rrotate(bit32.bxor(bit32.lrotate(At, 20), string.byte(tostring(y3))), 25)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(QO, 3642360229), 26), 2539939846) ~= bit32.lrotate(QO, 26) then
                        zQ = function(bh, bj, bk)
                            local BQ = bh()
                            local BR = BQ and BQ:IsA("BasePart")
                            if BR then
                                return BQ
                            end
                            if typeof(bj) == "Vector3" then
                                y6(bj)
                                local BP = zu()
                                if BP then
                                    pcall(function()
                                        BP.CFrame = CFrame.new(bj + Vector3.new(0, 8, 0))
                                        BP.AssemblyLinearVelocity = Vector3.zero
                                    end)
                                end
                            end
                            local BQ_2 = bk or 10
                            return zO(bh, BQ_2, bj)
                        end
                        zJ = {
                            ready = false,
                            addSpeed = nil,
                            requestHorseEquip = nil,
                            buyTrailWins = nil,
                            trailData = nil,
                            winsData = nil,
                            freeShop = nil,
                            horseData = nil,
                            helper = nil,
                            requestWorldTeleport = nil,
                            missing = {},
                            stageSpeed = nil,
                            remoteService = nil,
                            equipTrail = nil
                        }
                        zZ = {
                            Glitch = "HasGlitchTreadmill",
                            Gold = "HasGoldTreadmill",
                            Zeus = "HasThunderTreadmill",
                            Thunder = "HasThunderTreadmill",
                            Sakura = "HasSakuraTreadmill"
                        }
                        zU = { "Gold", "Purple", "Galaxy", "Pink", "Red", "Rainbow", "Green", "Blue" }
                    else
                        zU = function(bh, bj, bk)
                            local BQ = bh()
                            local BR = BQ and BQ:IsA("BasePart")
                            if BR then
                                return BQ
                            end
                            if typeof(bj) == "Vector3" then
                                y6(bj)
                                local BP = zu()
                                if BP then
                                    pcall(function()
                                        BP.CFrame = CFrame.new(bj + Vector3.new(0, 8, 0))
                                        BP.AssemblyLinearVelocity = Vector3.zero
                                    end)
                                end
                            end
                            local BQ_1 = bk or 10
                            return zO(bh, BQ_1, bj)
                        end
                        zZ = {
                            ready = false,
                            horseData = nil,
                            trailData = nil,
                            winsData = nil,
                            stageSpeed = nil,
                            helper = nil,
                            remoteService = nil,
                            addSpeed = nil,
                            freeShop = nil,
                            requestHorseEquip = nil,
                            buyTrailWins = nil,
                            equipTrail = nil,
                            requestWorldTeleport = nil,
                            missing = {}
                        }
                        zQ = {
                            Gold = "HasGoldTreadmill",
                            Glitch = "HasGlitchTreadmill",
                            Sakura = "HasSakuraTreadmill",
                            Zeus = "HasThunderTreadmill",
                            Thunder = "HasThunderTreadmill"
                        }
                        zJ = { "Blue", "Pink", "Red", "Purple", "Green", "Gold", "Rainbow", "Galaxy" }
                    end
                    At = (At + 37) % 72
                end
            else
                Az = (vector.create((At * 3 + 5) % 11 + 1, (At * 9 + 7) % 13 + 1, (At * 2 + 12) % 17 + 1))
                AA = (vector.create((At * 6 + 3) % 11 + 1, (At * 6 + 13) % 13 + 1, (At * 8 + 8) % 17 + 1))
                local QK = vector.dot(Az, AA)
                if QK * QK <= vector.dot(Az, Az) * vector.dot(AA, AA) then
                    zE = fns.fn159
                    y3 = fn1115
                else
                    y3 = fns.fn159
                    zE = fn1115
                end
                At = (At + 1) % 72
            end
        elseif Ay <= 4 then
            Az = { "ejhkd", "yhn", "uex", "poapjp", "cjsrwxbme", "qjeljhfe", "queqdjsug", "gsgltz", "gggrpgrpw" }
            local Re = At
            AA = Az[Re % 9 + 1]
            if AA:len() >= AA:gsub("(.)", "%1%1", Re % 3 % 2 + 1):len() then
                pcall(fn423)
                zQ = function(t)
                    local AZ
                    local A0
                    local A_
                    AZ = nil
                    A_ = nil
                    A0 = nil
                    local A1 = t ~= ""
                    local A2 = type(t) == "string" and A1
                    assert(A2, "Atypical is required")
                    assert(type(getgenv) == "function", "getgenv is unavailable")
                    AZ = getgenv()
                    assert(type(AZ) == "table", "getgenv did not return a table")
                    local A1_2 = AZ[t]
                    if A1_2 ~= nil then
                        local A2_2 = type(A1_2) == "table" and type(A1_2.Unload) == "function"
                        assert(A2_2, "Namespace is occupied")
                        A1_2.Unload()
                        assert(AZ[t] == nil, "Previous instance did not release its namespace")
                    end
                    A_ = {}
                    A0 = { State = {}, Unloaded = false }
                    A0.Track = function(A)
                        assert(type(A) == "function", "Cleanup must be callable")
                        if A0.Unloaded then
                            A()
                        else
                            table.insert(A_, A)
                        end
                        return A
                    end
                    A0.Unload = function()
                        local AP_2
                        local AO_2
                        if A0.Unloaded then
                            return
                        end
                        A0.Unloaded = true
                        local AM = {}
                        local AW = #A_
                        local AV = -1
                        while false and AW <= 1 or true and AW >= 1 do
                            local AX = AW
                            local AN_2 = table.remove(A_, AX)
                            AO_2, AP_2 = pcall(AN_2)
                            if not AO_2 then
                                table.insert(AM, tostring(AP_2))
                            end
                            AW += AV
                        end
                        table.clear(A0.State)
                        if #AM > 0 then
                            error("Cleanup incomplete: " .. table.concat(AM, "; "), 0)
                        end
                        if AZ[t] == A0 then
                            AZ[t] = nil
                        end
                    end
                    AZ[t] = A0
                    return A0
                end
            else
                pcall(fn423)
                Ax = function(t)
                    local AZ
                    local A0
                    local A_
                    AZ = nil
                    A_ = nil
                    A0 = nil
                    local A1 = t ~= ""
                    local A2 = type(t) == "string" and A1
                    assert(A2, "Atypical is required")
                    assert(type(getgenv) == "function", "getgenv is unavailable")
                    AZ = getgenv()
                    assert(type(AZ) == "table", "getgenv did not return a table")
                    local A1_1 = AZ[t]
                    if A1_1 ~= nil then
                        local A2_1 = type(A1_1) == "table" and type(A1_1.Unload) == "function"
                        assert(A2_1, "Namespace is occupied")
                        A1_1.Unload()
                        assert(AZ[t] == nil, "Previous instance did not release its namespace")
                    end
                    A_ = {}
                    A0 = { State = {}, Unloaded = false }
                    A0.Track = function(A)
                        assert(type(A) == "function", "Cleanup must be callable")
                        if A0.Unloaded then
                            A()
                        else
                            table.insert(A_, A)
                        end
                        return A
                    end
                    A0.Unload = function()
                        local AP_1
                        local AO_1
                        if A0.Unloaded then
                            return
                        end
                        A0.Unloaded = true
                        local AM = {}
                        local AW = #A_
                        local AV = -1
                        while false and AW <= 1 or true and AW >= 1 do
                            local AX = AW
                            local AN_1 = table.remove(A_, AX)
                            AO_1, AP_1 = pcall(AN_1)
                            if not AO_1 then
                                table.insert(AM, tostring(AP_1))
                            end
                            AW += AV
                        end
                        table.clear(A0.State)
                        if #AM > 0 then
                            error("Cleanup incomplete: " .. table.concat(AM, "; "), 0)
                        end
                        if AZ[t] == A0 then
                            AZ[t] = nil
                        end
                    end
                    AZ[t] = A0
                    return A0
                end
            end
            At = (At + 37) % 72
        else
            Az = {
                "xhfcrbqka",
                "fex",
                "fffjykhv",
                "aielrsykufw",
                "ufvyui",
                "pvajhiulrd",
                "skevv",
                "zygwxi",
                "yjtynsod"
            }
            if Az[(At * 88 + 95) % 9 + 1] <= Az[(At * 88 + 95) % 9 + 1] then
                zf = function(N, O)
                    local A5 = type(N) == "table" and type(N.Track) == "function"
                    assert(A5, "FeatureAPI required")
                    local A5_2 = type(O) == "table" and type(O.OnUnload) == "function"
                    assert(A5_2, "UI library required")
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
            else
                y6 = function(N, O)
                    local A5 = type(N) == "table" and type(N.Track) == "function"
                    assert(A5, "FeatureAPI required")
                    local A5_1 = type(O) == "table" and type(O.OnUnload) == "function"
                    assert(A5_1, "UI library required")
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
            end
            At = (At + 1) % 72
        end
    elseif Ay <= 7 then
        if Ay <= 6 then
            Az = {
                "xzysskg",
                "xkg",
                "qfsaxjlbt",
                "pqfbjofe",
                "jdsddlhxie",
                "apqral",
                "fztqmk",
                "vhr",
                "vmcxwa",
                "atheij",
                "emowcndmfio"
            }
            local Q0 = At
            AA = Az[Q0 % 11 + 1]
            if AA:len() <= AA:reverse():rep(Q0 % 3 + 2):len() then
                zP = Ax(Au)
            else
                Au = zP(Ax)
            end
            At = (At + 46) % 72
        else
            if (At * 2 + 4) * 10 % 3 == ((At * 2 + 4) * 10 + 0) % 3 then
                Aw = fn737
                zo = fn1029
                zb = fn676
                yV = Aw(Av)
                An = Aw(zc)
            else
                zo = fn737
                An = fn1029
                Av = fn676
                zc = zo(Aw)
                zb = zo(yV)
            end
            At = (At + 1) % 72
        end
    elseif Ay <= 8 then
        if (At * 2 + 7) * 13 % 3 == ((At * 2 + 7) * 13 + 3) % 3 then
            Ad = zP.State
            Ad.WinStatus = "Idle"
            Ad.StepsStatus = "Idle"
            Ad.RebirthStatus = "Idle"
            Ad.HorseStatus = "Idle"
            Ad.TrailStatus = "Idle"
            Ad.WorldStatus = "Idle"
            Ad.MoveBusy = false
            Ad.WinsReserve = 0
            Ad.WinPadCache = {}
            z4 = fn524
            zu = fn1340
        else
            zu = z4.State
            zu.WinStatus = "Idle"
            zu.StepsStatus = "Idle"
            zu.RebirthStatus = "Idle"
            zu.HorseStatus = "Idle"
            zu.TrailStatus = "Idle"
            zu.WorldStatus = "Idle"
            zu.MoveBusy = false
            zu.WinsReserve = 0
            zu.WinPadCache = {}
            Ad = fn524
            zP = fn1340
        end
        At = (At + 55) % 72
    else
        Ay = {
            "tyllz",
            "psrpgs",
            "avglttr",
            "adakg",
            "vbgqszi",
            "efobu",
            "iqcfswueak",
            "vhutyxypl",
            "uyyr",
            "qqqijycpmcp"
        }
        local QI = At
        Az = Ay[QI % 10 + 1]
        if Az:len() >= Az:reverse():rep(QI % 3 + 2):len() then
            z_ = nil
            yY = fns.fn118
            As = function(at, au)
                local Bm
                if typeof(at) ~= "Vector3" then
                    return false
                end
                local Bp = au or 4
                yY = CFrame.new(at + Vector3.new(0, Bp, 0))
                Bm = zu()
                if not Bm then
                    return false
                end
                return (pcall(function()
                    Bm.CFrame = yY
                    Bm.AssemblyLinearVelocity = Vector3.zero
                end))
            end
        else
            yY = nil
            As = fns.fn118
            z_ = function(at, au)
                local Bm
                if typeof(at) ~= "Vector3" then
                    return false
                end
                local Bp = au or 4
                yY = CFrame.new(at + Vector3.new(0, Bp, 0))
                Bm = zu()
                if not Bm then
                    return false
                end
                return (pcall(function()
                    Bm.CFrame = yY
                    Bm.AssemblyLinearVelocity = Vector3.zero
                end))
            end
        end
        At = (At + 55) % 72
    end
until (At * 43 + 62) % 72 == 31
AA, Az = nil, nil
Ay = 5
repeat
    if ((not Az or Ay) and (not Ay or Ay) or (not Az and not Az or Az and Ay)) and ((not Ay or Ay or (Az or Ay)) and (not Ay and Az or (Az or not Ay))) or not (((not Az or Ay) and (not Ay or Ay) or (not Az and not Az or Az and Ay)) and ((not Ay or Ay or (Az or Ay)) and (not Ay and Az or (Az or not Ay)))) then
        AA = task.spawn(worker)
        Az = os.clock() + 12
    else
        Az = task.spawn(worker)
        AA = os.clock() + 12
    end
    Ay = (Ay + 5) % 8
until (Ay * 7 + 0) % 8 == 6
while true do
    At = not zZ.ready and os.clock() < Az
    if At then
        task.wait(0.05)
        continue
    end
    break
end
Au = nil
At = 5
repeat
    Av = { "orjoya", "dgkkzdkg", "cuek", "yvxgzrssxft", "kueygc", "wrq", "kpcvbe" }
    local QR = At
    Aw = Av[QR % 7 + 1]
    if Aw:len() <= Aw:reverse():rep(QR % 3 + 2):len() then
        Au = coroutine.status(AA) ~= "dead"
    else
        AA = coroutine.status(Au) ~= "dead"
    end
    At = (At + 7) % 8
until (At * 5 + 0) % 8 == 4
if Au then
    Au = not zZ.ready
end
if Au then
    zZ.ready = true
end
z3, zi, za, y_, yU, Ak, zC, Ag, zw, zj, y1, Am, z2, zM, zs, Ah, zY, zD, y2, zn, z1, zx, Ap, zI, zA, ze, zX, zV, zt, z5, yX, zS, y0, y7, yT, zz, zv, Ab, zg, zm, zG, y8, z6, Ae, Al, zr, z7, yW, zN, zh, zk, yZ, zp, zW, Aa, zB, Ar, Ac, zL, Af, Ao, zH, z8, zT, zd = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
At = 70
repeat
    Au = (At * 3 + 8) % 22 + 1
    if Au <= 11 then
        if Au <= 6 then
            if Au <= 3 then
                if Au <= 2 then
                    if Au <= 1 then
                        Av = { "pmjctvq", "gutyfxguf", "lts", "tzwybv", "ujwourfpvtrp", "dusm", "zeqc", "uiwsmcls" }
                        if Av[(At * 42 + 43) % 8 + 1] < Av[(At * 42 + 43) % 8 + 1] then
                            zs = fns.fn99
                            z2 = fn1384
                            zM = fn786
                        else
                            z2 = fns.fn99
                            zM = fn1384
                            zs = fn786
                        end
                        At = (At + 37) % 88
                    else
                        Av = {
                            "kreyiczb",
                            "syuqdwu",
                            "puoyybegd",
                            "qwa",
                            "czozu",
                            "abhsdqmigo",
                            "susjg",
                            "luhpkikfu",
                            "udpecyj",
                            "zjiztknox",
                            "dgfxuojzqvk",
                            "ghyafnz"
                        }
                        local PI = At
                        Aw = Av[PI % 12 + 1]
                        if Aw:len() <= Aw:gsub("(.)", "%1%1", PI % 3 % 2 + 1):len() then
                            Ah = fn595
                            zY = fn1188
                            zD = fns.fn190
                            y2 = fn790
                            zn = fn291
                        else
                            zD = fn595
                            Ah = fn1188
                            y2 = fns.fn190
                            zn = fn790
                            zY = fn291
                        end
                        At = (At + 15) % 88
                    end
                else
                    Av = (vector.create((At * 2 + 9) % 11 + 1, (At * 3 + 10) % 13 + 1, (At * 12 + 5) % 17 + 1))
                    Aw = (vector.create((At * 7 + 1) % 11 + 1, (At * 2 + 12) % 13 + 1, (At * 10 + 5) % 17 + 1))
                    local QS = vector.cross(Av, Aw)
                    local QT = vector.dot(Av, Aw)
                    if vector.dot(QS, QS) + QT * QT == vector.dot(Av, Av) * vector.dot(Aw, Aw) + 4 then
                        Af = fn1058
                    else
                        z1 = fn1058
                    end
                    At = (At + 59) % 88
                end
            elseif Au <= 5 then
                if Au <= 4 then
                    local Q4 = bit32.rrotate(bit32.bxor(bit32.lrotate(At, 28), string.byte(tostring(zV))), 25)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Q4, 95913695), 1842109932), (bit32.bxor(bit32.band(Q4, 4199053600), 2533533391))), 1842109932), 2533533391) == Q4 then
                        zx = fns.fn268
                        Ap = fn1337
                    else
                        Ap = fns.fn268
                        zx = fn1337
                    end
                    At = (At + 37) % 88
                else
                    Av = (vector.create((At * 6 + 9) % 11 + 1, (At * 11 + 11) % 13 + 1, (At * 5 + 4) % 17 + 1))
                    local QJ = vector.floor(Av) + vector.ceil(Av * -1)
                    if vector.dot(QJ, QJ) == 0 then
                        zI = function()
                            local CX
                            local CW
                            CW = nil
                            CX = nil
                            CW = {}
                            CX = {}
                            local function CY(da)
                                if not da then
                                    return
                                end
                                for i, child in ipairs(da:GetChildren()) do
                                    local CN = tonumber(child.Name)
                                    if CN and not CW[CN] then
                                        CW[CN] = true
                                        table.insert(CX, CN)
                                    end
                                end
                            end
                            local CZ = y2()
                            if CZ then
                                CY(CZ:FindFirstChild("CollectWins"))
                                CY(CZ:FindFirstChild("DoubleWins"))
                            end
                            if #CX == 0 then
                                local C2 = 1
                                while C2 <= 10 do
                                    local C3 = C2
                                    table.insert(CX, C3)
                                    C2 += 1
                                end
                            else
                                table.sort(CX)
                            end
                            return CX
                        end
                        zA = fn1391
                        ze = fn922
                    else
                        ze = function()
                            local CX
                            local CW
                            CW = nil
                            CX = nil
                            CW = {}
                            CX = {}
                            local function CY(da)
                                if not da then
                                    return
                                end
                                for i, child in ipairs(da:GetChildren()) do
                                    local CN = tonumber(child.Name)
                                    if CN and not CW[CN] then
                                        CW[CN] = true
                                        table.insert(CX, CN)
                                    end
                                end
                            end
                            local CZ = y2()
                            if CZ then
                                CY(CZ:FindFirstChild("CollectWins"))
                                CY(CZ:FindFirstChild("DoubleWins"))
                            end
                            if #CX == 0 then
                                local C2 = 1
                                while C2 <= 10 do
                                    local C3 = C2
                                    table.insert(CX, C3)
                                    C2 += 1
                                end
                            else
                                table.sort(CX)
                            end
                            return CX
                        end
                        zI = fn1391
                        zA = fn922
                    end
                    At = (At + 37) % 88
                end
            else
                Av = {
                    "bhi",
                    "rfo",
                    "qelhmbnl",
                    "bhwquc",
                    "terebqgz",
                    "spawevftt",
                    "iabozks",
                    "gtjrki",
                    "jrqveatkci",
                    "ahwx"
                }
                local QC = At
                Aw = Av[QC % 10 + 1]
                if Aw:len() <= Aw:gsub("(.)", "%1%1", QC % 3 % 2 + 1):len() then
                    zX = function()
                        for i, v in ipairs({ "Normal", "Double" }) do
                            local De = select(1, zn(v))
                            local De_4
                            if De then
                                for i, child in ipairs(De:GetChildren()) do
                                    local Dt = child
                                    local Touch = Dt:FindFirstChild("Touch")
                                    local Df = Touch and Touch:IsA("BasePart")
                                    local Df_2
                                    if Df then
                                        zx(v, Dt.Name, Touch.Position)
                                    else
                                        De_4, Df_2 = pcall(function()
                                            return Dt:GetPivot()
                                        end)
                                        if De_4 and Df_2 then
                                            zx(v, Dt.Name, Df_2.Position)
                                        end
                                    end
                                end
                            end
                        end
                    end
                    zV = fn608
                    zt = fn529
                else
                    zt = function()
                        for i, v in ipairs({ "Normal", "Double" }) do
                            local De = select(1, zn(v))
                            local De_2
                            if De then
                                for i, child in ipairs(De:GetChildren()) do
                                    local Dt = child
                                    local Touch = Dt:FindFirstChild("Touch")
                                    local Df = Touch and Touch:IsA("BasePart")
                                    local Df_1
                                    if Df then
                                        zx(v, Dt.Name, Touch.Position)
                                    else
                                        De_2, Df_1 = pcall(function()
                                            return Dt:GetPivot()
                                        end)
                                        if De_2 and Df_1 then
                                            zx(v, Dt.Name, Df_1.Position)
                                        end
                                    end
                                end
                            end
                        end
                    end
                    zX = fn608
                    zV = fn529
                end
                At = (At + 81) % 88
            end
        elseif Au <= 9 then
            if Au <= 8 then
                if Au <= 7 then
                    if At * 28115017 + 5 + 2 >= At * 28115017 + 5 + 2 + 4 then
                        z3 = function(dV)
                            if not dV then
                                return nil
                            end
                            local Touch = dV:FindFirstChild("Touch")
                            local DE_4
                            local DF = Touch and Touch:IsA("BasePart")
                            local DF_4
                            if DF then
                                return Touch.Position
                            end
                            local Outline = dV:FindFirstChild("Outline")
                            local DF_3 = Outline and Outline:IsA("BasePart")
                            if DF_3 then
                                return Outline.Position
                            end
                            DE_4, DF_4 = pcall(function()
                                return dV:GetPivot()
                            end)
                            if DE_4 and DF_4 then
                                return DF_4.Position
                            end
                            return nil
                        end
                        z5 = fn494
                        yX = Vector3.new(6367, 165, -100901)
                    else
                        z5 = function(dV)
                            if not dV then
                                return nil
                            end
                            local Touch = dV:FindFirstChild("Touch")
                            local DE_2
                            local DF = Touch and Touch:IsA("BasePart")
                            local DF_2
                            if DF then
                                return Touch.Position
                            end
                            local Outline = dV:FindFirstChild("Outline")
                            local DF_1 = Outline and Outline:IsA("BasePart")
                            if DF_1 then
                                return Outline.Position
                            end
                            DE_2, DF_2 = pcall(function()
                                return dV:GetPivot()
                            end)
                            if DE_2 and DF_2 then
                                return DF_2.Position
                            end
                            return nil
                        end
                        yX = fn494
                        z3 = Vector3.new(6367, 165, -100901)
                    end
                    At = (At + 81) % 88
                else
                    if At * 129089497 + 8 + 4 <= At * 129089497 + 8 + 4 + 6 then
                        zS = fns.fn12
                        y0 = fn1220
                        y7 = function(eQ, eR, eS, eT)
                            local Ej = os.clock()
                            local Ek = eT or 14
                            local Ek_11
                            local El = Ej + Ek
                            local Eh = zS(eS, eR, eQ)
                            local Ej_3 = eS == "final"
                            local Ek_8 = Ah() and Ej_3
                            local Eq = false
                            repeat
                                local Ek_9 = zb() and os.clock() < El
                                if Ek_9 then
                                    local Ek_10 = select(1, zn(eR)) or eQ
                                    eQ = Ek_10
                                    if Ek_8 then
                                        Ek_11 = y0(eQ, Eh, 120)
                                    else
                                        Ek_11 = zt(eQ, eS)
                                    end
                                    if Ek_11 then
                                        local En = Ek_8 and "final" or eS
                                        zx(eR, En, Ek_11.Position)
                                        return Ek_11, eQ
                                    end
                                    local Ek_12 = not Ek_8
                                    if Ek_12 ~= false then
                                        Ek_12 = zV(eQ, eS)
                                    end
                                    local Ek_13 = Ek_12 or nil
                                    local Em_6 = z5(Ek_13) or Eh or zS(eS, eR, eQ)
                                    Eh = Em_6
                                    if Eh then
                                        y6(Eh)
                                        local Ei = zu()
                                        if Ei then
                                            pcall(function()
                                                Ei.CFrame = CFrame.new(Eh + Vector3.new(0, 6, 0))
                                                Ei.AssemblyLinearVelocity = Vector3.zero
                                            end)
                                        end
                                    end
                                    task.wait(0.2)
                                else
                                    Eq = true
                                end
                            until Eq
                            local Ek_14 = select(1, zn(eR)) or eQ
                            eQ = Ek_14
                            if Ek_8 then
                                return y0(eQ, Eh, 120), eQ
                            end
                            return zt(eQ, eS), eQ
                        end
                        yT = function(e5)
                            local Er = not e5 or not e5:IsA("ProximityPrompt")
                            if Er then
                                return false
                            elseif zo(fireproximityprompt) then
                                local Er_4 = pcall(fireproximityprompt, e5)
                                if Er_4 then
                                    return true
                                end
                                local Er_5 = pcall(function()
                                    e5:InputHoldBegin()
                                    task.wait(math.max(0.05, e5.HoldDuration + 0.1))
                                    e5:InputHoldEnd()
                                end)
                                return Er_5
                            else
                                local Er_6 = pcall(function()
                                    e5:InputHoldBegin()
                                    task.wait(math.max(0.05, e5.HoldDuration + 0.1))
                                    e5:InputHoldEnd()
                                end)
                                return Er_6
                            end
                        end
                    else
                        yT = fns.fn12
                        y7 = fn1220
                        zS = function(eQ, eR, eS, eT)
                            local Ej = os.clock()
                            local Ek = eT or 14
                            local Ek_4
                            local El = Ej + Ek
                            local Eh = zS(eS, eR, eQ)
                            local Ej_1 = eS == "final"
                            local Ek_1 = Ah() and Ej_1
                            local Eq = false
                            repeat
                                local Ek_2 = zb() and os.clock() < El
                                if Ek_2 then
                                    local Ek_3 = select(1, zn(eR)) or eQ
                                    eQ = Ek_3
                                    if Ek_1 then
                                        Ek_4 = y0(eQ, Eh, 120)
                                    else
                                        Ek_4 = zt(eQ, eS)
                                    end
                                    if Ek_4 then
                                        local En = Ek_1 and "final" or eS
                                        zx(eR, En, Ek_4.Position)
                                        return Ek_4, eQ
                                    end
                                    local Ek_5 = not Ek_1
                                    if Ek_5 ~= false then
                                        Ek_5 = zV(eQ, eS)
                                    end
                                    local Ek_6 = Ek_5 or nil
                                    local Em_3 = z5(Ek_6) or Eh or zS(eS, eR, eQ)
                                    Eh = Em_3
                                    if Eh then
                                        y6(Eh)
                                        local Ei = zu()
                                        if Ei then
                                            pcall(function()
                                                Ei.CFrame = CFrame.new(Eh + Vector3.new(0, 6, 0))
                                                Ei.AssemblyLinearVelocity = Vector3.zero
                                            end)
                                        end
                                    end
                                    task.wait(0.2)
                                else
                                    Eq = true
                                end
                            until Eq
                            local Ek_7 = select(1, zn(eR)) or eQ
                            eQ = Ek_7
                            if Ek_1 then
                                return y0(eQ, Eh, 120), eQ
                            end
                            return zt(eQ, eS), eQ
                        end
                        y0 = function(e5)
                            local Er = not e5 or not e5:IsA("ProximityPrompt")
                            if Er then
                                return false
                            elseif zo(fireproximityprompt) then
                                local Er_1 = pcall(fireproximityprompt, e5)
                                if Er_1 then
                                    return true
                                end
                                local Er_2 = pcall(function()
                                    e5:InputHoldBegin()
                                    task.wait(math.max(0.05, e5.HoldDuration + 0.1))
                                    e5:InputHoldEnd()
                                end)
                                return Er_2
                            else
                                local Er_3 = pcall(function()
                                    e5:InputHoldBegin()
                                    task.wait(math.max(0.05, e5.HoldDuration + 0.1))
                                    e5:InputHoldEnd()
                                end)
                                return Er_3
                            end
                        end
                    end
                    At = (At + 37) % 88
                end
            else
                Av = {
                    "zoaiqiwepd",
                    "dayfo",
                    "gwjtowvqxhk",
                    "cjd",
                    "gkmnuhjtaz",
                    "qmphgad",
                    "utyqfvocc",
                    "jtvvt",
                    "hhzizkhnw"
                }
                local Rb = At
                Aw = Av[Rb % 9 + 1]
                if Aw:len() >= Aw:reverse():rep(Rb % 3 + 2):len() then
                    za = function(fc, fd)
                        local generation
                        local Ex = fc.generation or 0
                        fc.generation = Ex + 1
                        fc.stopped = false
                        generation = fc.generation
                        task.spawn(function()
                            local Eu_2
                            while true do
                                local Et = zb() and not fc.stopped and fc.generation == generation
                                local Et_3
                                if Et then
                                    Et_3, Eu_2 = pcall(fd)
                                    if not Et_3 then
                                        warn("[Ouroboros] loop error: " .. tostring(Eu_2))
                                    end
                                    local Et_4 = not zb() or fc.stopped or fc.generation ~= generation
                                    if Et_4 then
                                        break
                                    end
                                    task.wait(fc.interval)
                                    continue
                                end
                                break
                            end
                        end)
                    end
                    zz = fn350
                    y_ = { interval = 0.35, stage = "Best" }
                    zi = { interval = 0.12, belt = "Best Unlocked" }
                    zv = { interval = 2 }
                else
                    zz = function(fc, fd)
                        local generation
                        local Ex = fc.generation or 0
                        fc.generation = Ex + 1
                        fc.stopped = false
                        generation = fc.generation
                        task.spawn(function()
                            local Eu_1
                            while true do
                                local Et = zb() and not fc.stopped and fc.generation == generation
                                local Et_1
                                if Et then
                                    Et_1, Eu_1 = pcall(fd)
                                    if not Et_1 then
                                        warn("[Ouroboros] loop error: " .. tostring(Eu_1))
                                    end
                                    local Et_2 = not zb() or fc.stopped or fc.generation ~= generation
                                    if Et_2 then
                                        break
                                    end
                                    task.wait(fc.interval)
                                    continue
                                end
                                break
                            end
                        end)
                    end
                    zv = fn350
                    zi = { interval = 0.35, stage = "Best" }
                    za = { interval = 0.12, belt = "Best Unlocked" }
                    y_ = { interval = 2 }
                end
                At = (At + 15) % 88
            end
        elseif Au <= 10 then
            if At * 28478559 + 2 + 1 <= At * 28478559 + 2 + 1 + 1 then
                yU = { interval = 2 }
                Ak = { interval = 2 }
                Ab = fn721
            else
                Ab = { interval = 2 }
                yU = { interval = 2 }
                Ak = fn721
            end
            At = (At + 81) % 88
        else
            Av = {
                "ouyzqdilwp",
                "dkapurwfly",
                "ylmxq",
                "cxq",
                "hdmclqaypoh",
                "wbviy",
                "wvomknhm",
                "pgolkv",
                "dbrpvim",
                "bupnk"
            }
            local Rp = At
            Aw = Av[Rp % 10 + 1]
            if Aw:len() <= Aw:reverse():rep(Rp % 3 + 2):len() then
                zg = function()
                    local EZ, E_, E0, E1, E2, E3, E5, E6
                    zX()
                    E5 = Ab()
                    E_ = E5 == "final"
                    E6, E1 = zn()
                    if not E6 then
                        local E7_11 = (zS(E5, "Normal", nil))
                        local Fd_3 = if E7_11 then 1 else 0
                        local Fb_3 = 751 * Fd_3 + 3183 * (1 - Fd_3)
                        local Fc_3 = 2899 * Fd_3 + 3871 * (1 - Fd_3)
                        if not ((Fb_3 * 2485 + Fc_3 * 3383 + Fb_3 * Fc_3) % 16777213 == 13850701) then
                            E7_11 = yX(E5)
                        end
                        local E4 = E7_11
                        if not E4 and E_ then
                            E4 = z3
                        end
                        if not E4 then
                            local E7_13 = zD()
                            local E8_7 = E7_13 and E7_13:FindFirstChildWhichIsA("BasePart", true)
                            local E7_14 = E8_7
                            if E8_7 then
                                E8_7 = E7_14.Position
                            end
                            E4 = E8_7
                        end
                        if E4 then
                            Ad.WinStatus = string.format("Streaming %s win pads...", zs())
                            Aj(function()
                                zU(function()
                                    local EJ = y2()
                                    local EK = EJ and EJ:FindFirstChildWhichIsA("BasePart", true)
                                    return EK
                                end, E4, 8)
                            end)
                            E6, E1 = zn()
                        end
                    end
                    if not E6 then
                        Ad.WinStatus = string.format("%s win pads are not loaded", zs())
                        return
                    end
                    E0 = zS(E5, E1, E6)
                    local E7_15 = E_ and y0(E6, E0, 120)
                    local E8_8 = E7_15 or zt(E6, E5)
                    EZ = E8_8
                    if not EZ then
                        local E7_16 = E_ and "Streaming World 2 final stage..."
                        local E8_9 = E7_16 or string.format("Streaming %s...", zA(E5))
                        Ad.WinStatus = E8_9
                        Aj(function()
                            EZ, E6 = y7(E6, E1, E5, 14)
                        end)
                    end
                    local E7_17 = not EZ or not EZ:IsA("BasePart")
                    if E7_17 then
                        if E_ then
                            Ad.WinStatus = "World 2 final stage is not streamed in"
                        else
                            Ad.WinStatus = string.format("%s pad is not streamed in", zA(E5))
                        end
                        return
                    end
                    local E8_10 = E_ and "final" or E5
                    zx(E1, E8_10, EZ.Position)
                    E2 = zw()
                    local E7_19 = not E_ and zZ.winsData and tonumber(zZ.winsData[E5])
                    E3 = E7_19 or nil
                    Aj(function()
                        local EM_7 = E_ and (E0 or z3) or EZ.Position
                        y6(EM_7)
                        y4(EM_7 + Vector3.new(35, 0, 0), 5)
                        task.wait(0.2)
                        local EM_8 = not zb() or zi.stopped
                        if EM_8 then
                            return
                        end
                        if E_ then
                            EZ = y0(E6, EM_7, 120)
                            if not EZ then
                                EZ, E6 = y7(E6, E1, "final", 8)
                            end
                        else
                            EZ = zt(E6, E5)
                            local EM_9 = not EZ
                            local EY = if EM_9 then 1 else 0
                            local EW = 3521 * EY + 3687 * (1 - EY)
                            local EX = 2356 * EY + 4085 * (1 - EY)
                            if not ((EW * 1746 + EX * 706 + EW * EX) % 16777213 == 16106478) then
                                EM_9 = not EZ.Parent
                            end
                            if EM_9 then
                                EZ, E6 = y7(E6, E1, E5, 8)
                            end
                        end
                        if not EZ then
                            return
                        end
                        local EO = E_ and "final" or E5
                        local EO_7
                        zx(E1, EO, EZ.Position)
                        local format = string.format
                        local EO_5 = zs()
                        local EP = E3 and " (+" .. z4(E3) .. ")"
                        local EQ_2 = EP or (E_ and " final" or "")
                        Ad.WinStatus = format("%s %s lane, claiming%s", EO_5, E1, EQ_2)
                        y4(EZ.Position, 3)
                        local EM_12 = os.clock() + 4
                        while true do
                            local EO_6 = zb() and not zi.stopped and zw() == E2 and os.clock() < EM_12
                            if EO_6 then
                                if E_ then
                                    local EP_5 = y0(E6, EM_7, 120) or EZ
                                    EO_7 = EP_5
                                else
                                    local EP_6 = zt(E6, E5) or EZ
                                    EO_7 = EP_6
                                    if not EO_7 or not EO_7.Parent then
                                        local EP_8 = select(1, y7(E6, E1, E5, 4)) or EO_7
                                        EO_7 = EP_8
                                    end
                                end
                                if EO_7 then
                                    y4(EO_7.Position + Vector3.new(os.clock() % 0.4 - 0.2, 0, 0), 3)
                                end
                                task.wait(0.15)
                                continue
                            end
                            break
                        end
                        if EZ and EZ.Parent then
                            y4(EZ.Position + Vector3.new(40, 0, 0), 5)
                        end
                        task.wait(0.15)
                    end)
                    if zw() > E2 then
                        local format = string.format
                        local E9 = E_ and "World 2 final"
                        local Fd_4 = if E9 then 1 else 0
                        local Fb_4 = 2385 * Fd_4 + 76 * (1 - Fd_4)
                        local Fc_4 = 308 * Fd_4 + 1429 * (1 - Fd_4)
                        if not ((Fb_4 * 1793 + Fc_4 * 2391 + Fb_4 * Fc_4) % 16777213 == 5747313) then
                            E9 = zA(E5)
                        end
                        Ad.WinStatus = format("Claimed %s (%s wins)", E9, z4(zw()))
                    end
                end
                zm = fn851
                zG = function()
                    local Fl
                    Fl = nil
                    Fl = {}
                    local function Fm(gK)
                        local Fj = gK and gK:IsA("Folder")
                        if Fj then
                            table.insert(Fl, gK)
                        end
                    end
                    if Ah() then
                        local World2 = An:FindFirstChild("World2")
                        if World2 then
                            local New_Lobby = World2:FindFirstChild("New-Lobby")
                            local Fp = New_Lobby and New_Lobby:FindFirstChild("Treadmills")
                            Fm(Fp)
                            local StagePlatforms = World2:FindFirstChild("StagePlatforms")
                            local Fn_6 = StagePlatforms and StagePlatforms:FindFirstChild("Treadmills")
                            Fm(Fn_6)
                        end
                    else
                        local Lobby = An:FindFirstChild("Lobby")
                        local Fo_7 = Lobby and Lobby:FindFirstChild("Treadmills")
                        Fm(Fo_7)
                        local StagePlatforms = An:FindFirstChild("StagePlatforms")
                        local Fo_8 = StagePlatforms and StagePlatforms:FindFirstChild("Treadmills")
                        Fm(Fo_8)
                    end
                    return Fl
                end
                y8 = fn388
            else
                y8 = function()
                    local EZ, E_, E0, E1, E2, E3, E5, E6
                    zX()
                    E5 = Ab()
                    E_ = E5 == "final"
                    E6, E1 = zn()
                    if not E6 then
                        local E7_1 = (zS(E5, "Normal", nil))
                        local Fd_1 = if E7_1 then 1 else 0
                        local Fb_1 = 751 * Fd_1 + 3183 * (1 - Fd_1)
                        local Fc_1 = 2899 * Fd_1 + 3871 * (1 - Fd_1)
                        if not ((Fb_1 * 2485 + Fc_1 * 3383 + Fb_1 * Fc_1) % 16777213 == 13850701) then
                            E7_1 = yX(E5)
                        end
                        local E4 = E7_1
                        if not E4 and E_ then
                            E4 = z3
                        end
                        if not E4 then
                            local E7_3 = zD()
                            local E8_1 = E7_3 and E7_3:FindFirstChildWhichIsA("BasePart", true)
                            local E7_4 = E8_1
                            if E8_1 then
                                E8_1 = E7_4.Position
                            end
                            E4 = E8_1
                        end
                        if E4 then
                            Ad.WinStatus = string.format("Streaming %s win pads...", zs())
                            Aj(function()
                                zU(function()
                                    local EJ = y2()
                                    local EK = EJ and EJ:FindFirstChildWhichIsA("BasePart", true)
                                    return EK
                                end, E4, 8)
                            end)
                            E6, E1 = zn()
                        end
                    end
                    if not E6 then
                        Ad.WinStatus = string.format("%s win pads are not loaded", zs())
                        return
                    end
                    E0 = zS(E5, E1, E6)
                    local E7_5 = E_ and y0(E6, E0, 120)
                    local E8_2 = E7_5 or zt(E6, E5)
                    EZ = E8_2
                    if not EZ then
                        local E7_6 = E_ and "Streaming World 2 final stage..."
                        local E8_3 = E7_6 or string.format("Streaming %s...", zA(E5))
                        Ad.WinStatus = E8_3
                        Aj(function()
                            EZ, E6 = y7(E6, E1, E5, 14)
                        end)
                    end
                    local E7_7 = not EZ or not EZ:IsA("BasePart")
                    if E7_7 then
                        if E_ then
                            Ad.WinStatus = "World 2 final stage is not streamed in"
                        else
                            Ad.WinStatus = string.format("%s pad is not streamed in", zA(E5))
                        end
                        return
                    end
                    local E8_4 = E_ and "final" or E5
                    zx(E1, E8_4, EZ.Position)
                    E2 = zw()
                    local E7_9 = not E_ and zZ.winsData and tonumber(zZ.winsData[E5])
                    E3 = E7_9 or nil
                    Aj(function()
                        local EM_1 = E_ and (E0 or z3) or EZ.Position
                        y6(EM_1)
                        y4(EM_1 + Vector3.new(35, 0, 0), 5)
                        task.wait(0.2)
                        local EM_2 = not zb() or zi.stopped
                        if EM_2 then
                            return
                        end
                        if E_ then
                            EZ = y0(E6, EM_1, 120)
                            if not EZ then
                                EZ, E6 = y7(E6, E1, "final", 8)
                            end
                        else
                            EZ = zt(E6, E5)
                            local EM_3 = not EZ
                            local EY = if EM_3 then 1 else 0
                            local EW = 3521 * EY + 3687 * (1 - EY)
                            local EX = 2356 * EY + 4085 * (1 - EY)
                            if not ((EW * 1746 + EX * 706 + EW * EX) % 16777213 == 16106478) then
                                EM_3 = not EZ.Parent
                            end
                            if EM_3 then
                                EZ, E6 = y7(E6, E1, E5, 8)
                            end
                        end
                        if not EZ then
                            return
                        end
                        local EO = E_ and "final" or E5
                        local EO_3
                        zx(E1, EO, EZ.Position)
                        local format = string.format
                        local EO_1 = zs()
                        local EP = E3 and " (+" .. z4(E3) .. ")"
                        local EQ_1 = EP or (E_ and " final" or "")
                        Ad.WinStatus = format("%s %s lane, claiming%s", EO_1, E1, EQ_1)
                        y4(EZ.Position, 3)
                        local EM_6 = os.clock() + 4
                        while true do
                            local EO_2 = zb() and not zi.stopped and zw() == E2 and os.clock() < EM_6
                            if EO_2 then
                                if E_ then
                                    local EP_1 = y0(E6, EM_1, 120) or EZ
                                    EO_3 = EP_1
                                else
                                    local EP_2 = zt(E6, E5) or EZ
                                    EO_3 = EP_2
                                    if not EO_3 or not EO_3.Parent then
                                        local EP_4 = select(1, y7(E6, E1, E5, 4)) or EO_3
                                        EO_3 = EP_4
                                    end
                                end
                                if EO_3 then
                                    y4(EO_3.Position + Vector3.new(os.clock() % 0.4 - 0.2, 0, 0), 3)
                                end
                                task.wait(0.15)
                                continue
                            end
                            break
                        end
                        if EZ and EZ.Parent then
                            y4(EZ.Position + Vector3.new(40, 0, 0), 5)
                        end
                        task.wait(0.15)
                    end)
                    if zw() > E2 then
                        local format = string.format
                        local E9 = E_ and "World 2 final"
                        local Fd_2 = if E9 then 1 else 0
                        local Fb_2 = 2385 * Fd_2 + 76 * (1 - Fd_2)
                        local Fc_2 = 308 * Fd_2 + 1429 * (1 - Fd_2)
                        if not ((Fb_2 * 1793 + Fc_2 * 2391 + Fb_2 * Fc_2) % 16777213 == 5747313) then
                            E9 = zA(E5)
                        end
                        Ad.WinStatus = format("Claimed %s (%s wins)", E9, z4(zw()))
                    end
                end
                zg = fn851
                zm = function()
                    local Fl
                    Fl = nil
                    Fl = {}
                    local function Fm(gK)
                        local Fj = gK and gK:IsA("Folder")
                        if Fj then
                            table.insert(Fl, gK)
                        end
                    end
                    if Ah() then
                        local World2 = An:FindFirstChild("World2")
                        if World2 then
                            local New_Lobby = World2:FindFirstChild("New-Lobby")
                            local Fp = New_Lobby and New_Lobby:FindFirstChild("Treadmills")
                            Fm(Fp)
                            local StagePlatforms = World2:FindFirstChild("StagePlatforms")
                            local Fn_2 = StagePlatforms and StagePlatforms:FindFirstChild("Treadmills")
                            Fm(Fn_2)
                        end
                    else
                        local Lobby = An:FindFirstChild("Lobby")
                        local Fo_3 = Lobby and Lobby:FindFirstChild("Treadmills")
                        Fm(Fo_3)
                        local StagePlatforms = An:FindFirstChild("StagePlatforms")
                        local Fo_4 = StagePlatforms and StagePlatforms:FindFirstChild("Treadmills")
                        Fm(Fo_4)
                    end
                    return Fl
                end
                zG = fn388
            end
            At = (At + 37) % 88
        end
    elseif Au <= 17 then
        if Au <= 14 then
            if Au <= 13 then
                if Au <= 12 then
                    local Ra = bit32.rrotate(bit32.bxor(bit32.lrotate(At, 27), string.byte(tostring(Ak))), 21)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(Ra, 479132747), 16), 4232780942) ~= bit32.lrotate(Ra, 16) then
                        Ae = fn947
                        z6 = fn1105
                    else
                        z6 = fn947
                        Ae = fn1105
                    end
                    At = (At + 59) % 88
                else
                    if (At * 2 + 7) * 10 % 3 == ((At * 2 + 7) * 10 + 5) % 3 then
                        z2 = fn956
                    else
                        Al = fn956
                    end
                    At = (At + 59) % 88
                end
            else
                if not Ab and not zH and (not zg or not y8) and (zH and y8 or (not y8 or zg)) or (not yZ or zH or not zH and y8) and ((not zI or zg) and (Ab and not y8)) or not (not Ab and not zH and (not zg or not y8) and (zH and y8 or (not y8 or zg)) or (not yZ or zH or not zH and y8) and ((not zI or zg) and (Ab and not y8))) then
                    zr = fns.fn50
                else
                    zi = fns.fn50
                end
                At = (At + 37) % 88
            end
        elseif Au <= 16 then
            if Au <= 15 then
                Av = (vector.create((At * 3 + 4) % 11 + 1, (At * 4 + 9) % 13 + 1, (At * 7 + 14) % 17 + 1))
                Aw = (vector.create((At * 2 + 9) % 11 + 1, (At * 4 + 12) % 13 + 1, (At * 14 + 5) % 17 + 1))
                Ax = (vector.create((At * 7 + 4) % 11 + 1, (At * 10 + 3) % 13 + 1, (At * 4 + 8) % 17 + 1))
                Ay = (vector.create((At * 5 + 3) % 5 + 1, (At * 5 + 1) % 7 + 1, (At * 3 + 6) % 9 + 1))
                if vector.dot(vector.cross(Av, (vector.cross(Aw, Ax))), Ay) == vector.dot(Aw * vector.dot(Av, Ax) - Ax * vector.dot(Av, Aw), Ay) then
                    z7 = fn1285
                    yW = fns.fn11
                    zN = function()
                        local Gy, Gz, GA
                        if not zZ.addSpeed then
                            Ad.StepsStatus = "AddSpeed remote unavailable"
                            return
                        end
                        Gy, GA, Gz = z7()
                        GA = GA or 1
                        local GB_2 = zj()
                        Aj(function()
                            local Gu
                            if Gy then
                                Gu = y8(Gy)
                                if not Gu then
                                    Ad.StepsStatus = string.format("Streaming %s treadmill...", Gy.Name)
                                    Gu = zU(function()
                                        local Gr = Al(Gy.Name)
                                        local Gs = Gr and y8(Gr)
                                        return Gs
                                    end, z6(Gy), 10)
                                    if Gu then
                                        local Gv_5 = Gu:FindFirstAncestorOfClass("Model") or Gy
                                        Gy = Gv_5
                                    end
                                end
                            end
                            local Gv_6 = Gu and Gu:IsA("BasePart")
                            if Gv_6 then
                                y6(Gu.Position)
                                z_(Gu.Position, Gu.Size.Y / 2 + 3)
                                local format = string.format
                                local Gw = Gy and Gy.Name or "?"
                                Ad.StepsStatus = format("%s treadmill x%s", Gw, tostring(GA))
                            else
                                local Gu_5 = Gz or "Firing steps (no unlocked treadmill)"
                                Ad.StepsStatus = Gu_5
                            end
                            local Gu_6 = os.clock() + math.max(0.5, za.interval)
                            while true do
                                local Gv_8 = zb() and not za.stopped and os.clock() < Gu_6
                                if Gv_8 then
                                    pcall(function()
                                        zZ.addSpeed:FireServer()
                                    end)
                                    task.wait(0.08)
                                    continue
                                end
                                break
                            end
                        end)
                        if zj() > GB_2 then
                            Ad.StepsStatus = string.format("Steps %s", z4(zj()))
                        end
                    end
                    zh = fn1308
                else
                    zh = fn1285
                    zN = fns.fn11
                    yW = function()
                        local Gy, Gz, GA
                        if not zZ.addSpeed then
                            Ad.StepsStatus = "AddSpeed remote unavailable"
                            return
                        end
                        Gy, GA, Gz = z7()
                        GA = GA or 1
                        local GB_1 = zj()
                        Aj(function()
                            local Gu
                            if Gy then
                                Gu = y8(Gy)
                                if not Gu then
                                    Ad.StepsStatus = string.format("Streaming %s treadmill...", Gy.Name)
                                    Gu = zU(function()
                                        local Gr = Al(Gy.Name)
                                        local Gs = Gr and y8(Gr)
                                        return Gs
                                    end, z6(Gy), 10)
                                    if Gu then
                                        local Gv_1 = Gu:FindFirstAncestorOfClass("Model") or Gy
                                        Gy = Gv_1
                                    end
                                end
                            end
                            local Gv_2 = Gu and Gu:IsA("BasePart")
                            if Gv_2 then
                                y6(Gu.Position)
                                z_(Gu.Position, Gu.Size.Y / 2 + 3)
                                local format = string.format
                                local Gw = Gy and Gy.Name or "?"
                                Ad.StepsStatus = format("%s treadmill x%s", Gw, tostring(GA))
                            else
                                local Gu_2 = Gz or "Firing steps (no unlocked treadmill)"
                                Ad.StepsStatus = Gu_2
                            end
                            local Gu_3 = os.clock() + math.max(0.5, za.interval)
                            while true do
                                local Gv_4 = zb() and not za.stopped and os.clock() < Gu_3
                                if Gv_4 then
                                    pcall(function()
                                        zZ.addSpeed:FireServer()
                                    end)
                                    task.wait(0.08)
                                    continue
                                end
                                break
                            end
                        end)
                        if zj() > GB_1 then
                            Ad.StepsStatus = string.format("Steps %s", z4(zj()))
                        end
                    end
                    z7 = fn1308
                end
                At = (At + 15) % 88
            else
                if (At * 2 + 8) * 7 % 3 == ((At * 2 + 8) * 7 + 8) % 3 then
                    Aa = fn1102
                    zk = fn1434
                    zW = fn284
                    yZ = fns.fn30
                    zp = fn653
                else
                    zk = fn1102
                    yZ = fn1434
                    zp = fn284
                    zW = fns.fn30
                    Aa = fn653
                end
                At = (At + 81) % 88
            end
        else
            local Rf = bit32.rrotate(bit32.bxor(bit32.lrotate(At, 11), string.byte(tostring(zW))), 20)
            if bit32.bxor(bit32.lrotate(bit32.bxor(Rf, 3028662293), 16), 3088430213) == bit32.lrotate(Rf, 16) then
                zB = fn410
                Ar = function()
                    local HP, HQ, HS, HT, HV
                    local HR = Aa()
                    if HR then
                        local HW_15 = (tonumber(HR.Wins))
                        local H2_5 = if HW_15 then 1 else 0
                        local H0_5 = 2569 * H2_5 + 2593 * (1 - H2_5)
                        local H1_5 = 2115 * H2_5 + 1485 * (1 - H2_5)
                        if not ((H0_5 * 2133 + H1_5 * 2903 + H0_5 * H1_5) % 16777213 == 275744) then
                            HW_15 = 0
                        end
                        HV = HW_15
                        if zM() < HV then
                            local format = string.format
                            local HX_12 = z4(HV + z2())
                            local HY_4 = HR.Display
                            local H2_6 = if HY_4 then 1 else 0
                            local H0_6 = 520 * H2_6 + 2866 * (1 - H2_6)
                            local H1_6 = 771 * H2_6 + 1310 * (1 - H2_6)
                            if not ((H0_6 * 3498 + H1_6 * 2455 + H0_6 * H1_6) % 16777213 == 4112685) then
                                HY_4 = HR.Name
                            end
                            Ad.HorseStatus = format("Need %s wins for %s (have %s)", HX_12, HY_4, z4(zw()))
                            local HU = zB()
                            local HW_17 = Ag("HorseEquipped") or ""
                            local HX_13 = tostring(HW_17)
                            if HU and HX_13 ~= HU.Name and zZ.requestHorseEquip then
                                pcall(function()
                                    zZ.requestHorseEquip:FireServer(HU.Name)
                                end)
                            end
                            return
                        end
                        HS = yZ(HR.Name)
                        local HW_19 = HS and HS:FindFirstChildWhichIsA("ProximityPrompt", true)
                        local HX_14 = HS
                        HQ = HW_19
                        if HX_14 then
                            HX_14 = HS:FindFirstChild("Anchor")
                        end
                        local HW_20 = not HQ
                        HP = HX_14
                        if not HW_20 then
                            local HX_15 = HP and HP:IsA("BasePart")
                            HW_20 = not HX_15
                        end
                        if HW_20 then
                            local format = string.format
                            local HX_16 = HR.Display
                            local H2_7 = if HX_16 then 1 else 0
                            local H0_7 = 2554 * H2_7 + 79 * (1 - H2_7)
                            local H1_7 = 670 * H2_7 + 2841 * (1 - H2_7)
                            if not ((H0_7 * 3821 + H1_7 * 3899 + H0_7 * H1_7) % 16777213 == 14082344) then
                                HX_16 = HR.Name
                            end
                            Ad.HorseStatus = format("Streaming %s stand...", HX_16)
                            Aj(function()
                                local function HI()
                                    HS = yZ(HR.Name)
                                    local HE = HS and HS:FindFirstChild("Anchor")
                                    local HF = HE
                                    if HE then
                                        HE = HF:IsA("BasePart")
                                    end
                                    return HE and HF or nil
                                end
                                local HJ = HP and HP:IsA("BasePart") and HP.Position
                                local HK = HJ or zp()
                                HP = zU(HI, HK, 10)
                                HS = yZ(HR.Name)
                                HI = HS and HS:FindFirstChildWhichIsA("ProximityPrompt", true)
                                HQ = HI
                            end)
                        end
                        if not HQ then
                            local format = string.format
                            local HX_17 = HR.Display or HR.Name
                            Ad.HorseStatus = format("%s stand not streamed in", HX_17)
                            return
                        end
                        local HW_23 = zk(HR.Name)
                        local HX_18 = zw()
                        Aj(function()
                            local HM = HS and HS:FindFirstChild("Anchor")
                            HP = HM
                            local HM_3 = HP and HP:IsA("BasePart")
                            if HM_3 then
                                y6(HP.Position)
                                y4(HP.Position, 3)
                                task.wait(0.2)
                            end
                            local format = string.format
                            local HN = HR.Display or HR.Name
                            Ad.HorseStatus = format("Buying %s (%s wins)", HN, z4(HV))
                            yT(HQ)
                            task.wait(0.5)
                        end)
                        local HY_5 = not HW_23
                        local HZ = zk(HR.Name) and HY_5
                        if HZ then
                            local format = string.format
                            local HY_6 = HR.Display or HR.Name
                            Ad.HorseStatus = format("Bought %s", HY_6)
                            if zZ.requestHorseEquip then
                                pcall(function()
                                    zZ.requestHorseEquip:FireServer(HR.Name)
                                end)
                            end
                        elseif zw() == HX_18 then
                            local format = string.format
                            local HX_19 = HR.Display or HR.Name
                            Ad.HorseStatus = format("Waiting to buy %s", HX_19)
                        end
                        return
                    end
                    HT = zB()
                    if not HT then
                        Ad.HorseStatus = "No horse owned yet"
                        return
                    end
                    local HW_26 = Ag("HorseEquipped") or ""
                    local HX_20 = tostring(HW_26)
                    if HX_20 == HT.Name then
                        local format = string.format
                        local HX_21 = HT.Display
                        local H2_8 = if HX_21 then 1 else 0
                        local H0_8 = 2497 * H2_8 + 578 * (1 - H2_8)
                        local H1_8 = 1366 * H2_8 + 2604 * (1 - H2_8)
                        if not ((H0_8 * 258 + H1_8 * 4001 + H0_8 * H1_8) % 16777213 == 9520494) then
                            HX_21 = HT.Name
                        end
                        Ad.HorseStatus = format("Best equipped: %s", HX_21)
                        return
                    end
                    if not zZ.requestHorseEquip then
                        Ad.HorseStatus = "Horse equip remote unavailable"
                        return
                    end
                    pcall(function()
                        zZ.requestHorseEquip:FireServer(HT.Name)
                    end)
                    task.wait(0.35)
                    local format = string.format
                    local HX_22 = HT.Display or HT.Name
                    Ad.HorseStatus = format("Equipped %s", HX_22)
                end
                Ac = fn1113
                zL = fns.fn22
                Af = fns.fn6
            else
                zL = fn410
                Af = function()
                    local HP, HQ, HS, HT, HV
                    local HR = Aa()
                    if HR then
                        local HW_1 = (tonumber(HR.Wins))
                        local H2_1 = if HW_1 then 1 else 0
                        local H0_1 = 2569 * H2_1 + 2593 * (1 - H2_1)
                        local H1_1 = 2115 * H2_1 + 1485 * (1 - H2_1)
                        if not ((H0_1 * 2133 + H1_1 * 2903 + H0_1 * H1_1) % 16777213 == 275744) then
                            HW_1 = 0
                        end
                        HV = HW_1
                        if zM() < HV then
                            local format = string.format
                            local HX_1 = z4(HV + z2())
                            local HY_1 = HR.Display
                            local H2_2 = if HY_1 then 1 else 0
                            local H0_2 = 520 * H2_2 + 2866 * (1 - H2_2)
                            local H1_2 = 771 * H2_2 + 1310 * (1 - H2_2)
                            if not ((H0_2 * 3498 + H1_2 * 2455 + H0_2 * H1_2) % 16777213 == 4112685) then
                                HY_1 = HR.Name
                            end
                            Ad.HorseStatus = format("Need %s wins for %s (have %s)", HX_1, HY_1, z4(zw()))
                            local HU = zB()
                            local HW_3 = Ag("HorseEquipped") or ""
                            local HX_2 = tostring(HW_3)
                            if HU and HX_2 ~= HU.Name and zZ.requestHorseEquip then
                                pcall(function()
                                    zZ.requestHorseEquip:FireServer(HU.Name)
                                end)
                            end
                            return
                        end
                        HS = yZ(HR.Name)
                        local HW_5 = HS and HS:FindFirstChildWhichIsA("ProximityPrompt", true)
                        local HX_3 = HS
                        HQ = HW_5
                        if HX_3 then
                            HX_3 = HS:FindFirstChild("Anchor")
                        end
                        local HW_6 = not HQ
                        HP = HX_3
                        if not HW_6 then
                            local HX_4 = HP and HP:IsA("BasePart")
                            HW_6 = not HX_4
                        end
                        if HW_6 then
                            local format = string.format
                            local HX_5 = HR.Display
                            local H2_3 = if HX_5 then 1 else 0
                            local H0_3 = 2554 * H2_3 + 79 * (1 - H2_3)
                            local H1_3 = 670 * H2_3 + 2841 * (1 - H2_3)
                            if not ((H0_3 * 3821 + H1_3 * 3899 + H0_3 * H1_3) % 16777213 == 14082344) then
                                HX_5 = HR.Name
                            end
                            Ad.HorseStatus = format("Streaming %s stand...", HX_5)
                            Aj(function()
                                local function HI()
                                    HS = yZ(HR.Name)
                                    local HE = HS and HS:FindFirstChild("Anchor")
                                    local HF = HE
                                    if HE then
                                        HE = HF:IsA("BasePart")
                                    end
                                    return HE and HF or nil
                                end
                                local HJ = HP and HP:IsA("BasePart") and HP.Position
                                local HK = HJ or zp()
                                HP = zU(HI, HK, 10)
                                HS = yZ(HR.Name)
                                HI = HS and HS:FindFirstChildWhichIsA("ProximityPrompt", true)
                                HQ = HI
                            end)
                        end
                        if not HQ then
                            local format = string.format
                            local HX_6 = HR.Display or HR.Name
                            Ad.HorseStatus = format("%s stand not streamed in", HX_6)
                            return
                        end
                        local HW_9 = zk(HR.Name)
                        local HX_7 = zw()
                        Aj(function()
                            local HM = HS and HS:FindFirstChild("Anchor")
                            HP = HM
                            local HM_1 = HP and HP:IsA("BasePart")
                            if HM_1 then
                                y6(HP.Position)
                                y4(HP.Position, 3)
                                task.wait(0.2)
                            end
                            local format = string.format
                            local HN = HR.Display or HR.Name
                            Ad.HorseStatus = format("Buying %s (%s wins)", HN, z4(HV))
                            yT(HQ)
                            task.wait(0.5)
                        end)
                        local HY_2 = not HW_9
                        local HZ = zk(HR.Name) and HY_2
                        if HZ then
                            local format = string.format
                            local HY_3 = HR.Display or HR.Name
                            Ad.HorseStatus = format("Bought %s", HY_3)
                            if zZ.requestHorseEquip then
                                pcall(function()
                                    zZ.requestHorseEquip:FireServer(HR.Name)
                                end)
                            end
                        elseif zw() == HX_7 then
                            local format = string.format
                            local HX_8 = HR.Display or HR.Name
                            Ad.HorseStatus = format("Waiting to buy %s", HX_8)
                        end
                        return
                    end
                    HT = zB()
                    if not HT then
                        Ad.HorseStatus = "No horse owned yet"
                        return
                    end
                    local HW_12 = Ag("HorseEquipped") or ""
                    local HX_9 = tostring(HW_12)
                    if HX_9 == HT.Name then
                        local format = string.format
                        local HX_10 = HT.Display
                        local H2_4 = if HX_10 then 1 else 0
                        local H0_4 = 2497 * H2_4 + 578 * (1 - H2_4)
                        local H1_4 = 1366 * H2_4 + 2604 * (1 - H2_4)
                        if not ((H0_4 * 258 + H1_4 * 4001 + H0_4 * H1_4) % 16777213 == 9520494) then
                            HX_10 = HT.Name
                        end
                        Ad.HorseStatus = format("Best equipped: %s", HX_10)
                        return
                    end
                    if not zZ.requestHorseEquip then
                        Ad.HorseStatus = "Horse equip remote unavailable"
                        return
                    end
                    pcall(function()
                        zZ.requestHorseEquip:FireServer(HT.Name)
                    end)
                    task.wait(0.35)
                    local format = string.format
                    local HX_11 = HT.Display or HT.Name
                    Ad.HorseStatus = format("Equipped %s", HX_11)
                end
                Ar = fn1113
                Ac = fns.fn22
                zB = fns.fn6
            end
            At = (At + 59) % 88
        end
    elseif Au <= 20 then
        if Au <= 19 then
            if Au <= 18 then
                if (At * 1 + 6) * 9 % 4 == ((At * 1 + 6) * 9 + 11) % 4 then
                    z8 = fn1206
                    Ao = fn591
                    zH = function()
                        local IH
                        local IL_5
                        local IK_7
                        local II = Ao()
                        if II then
                            local IQ = if zM() < II.Cost then 1 else 0
                            if IQ == 1 then
                                Ad.TrailStatus = string.format("Need %s wins for %s (have %s)", z4(II.Cost + z2()), II.Name, z4(zw()))
                                local IJ = zH()
                                local IK_5 = Ag("TrailEquipped") or ""
                                local IL_4 = tostring(IK_5)
                                if IJ and IL_4 ~= IJ.Name and zZ.equipTrail then
                                    pcall(function()
                                        zZ.equipTrail:FireServer(IJ.Name)
                                    end)
                                end
                                return
                            elseif not zZ.buyTrailWins then
                                Ad.TrailStatus = "Trail buy remote unavailable"
                                return
                            else
                                Ad.TrailStatus = string.format("Buying %s (%s wins)", II.Name, z4(II.Cost))
                                IK_7, IL_5 = pcall(function()
                                    return zZ.buyTrailWins:InvokeServer(II.Name)
                                end)
                                task.wait(0.25)
                                if Ac(II.Name) then
                                    Ad.TrailStatus = string.format("Bought %s", II.Name)
                                    if zZ.equipTrail then
                                        pcall(function()
                                            zZ.equipTrail:FireServer(II.Name)
                                        end)
                                    end
                                elseif not (IK_7 and IL_5) then
                                    Ad.TrailStatus = string.format("Could not buy %s", II.Name)
                                end
                                return
                            end
                        end
                        IH = zH()
                        if not IH then
                            Ad.TrailStatus = "No trail owned yet"
                            return
                        end
                        local IK_8 = Ag("TrailEquipped") or ""
                        local IL_6 = tostring(IK_8)
                        if IL_6 == IH.Name then
                            Ad.TrailStatus = string.format("Best equipped: %s x%s", IH.Name, tostring(IH.Mult))
                            return
                        end
                        if not zZ.equipTrail then
                            Ad.TrailStatus = "Trail equip remote unavailable"
                            return
                        end
                        pcall(function()
                            zZ.equipTrail:FireServer(IH.Name)
                        end)
                        task.wait(0.25)
                        Ad.TrailStatus = string.format("Equipped %s x%s", IH.Name, tostring(IH.Mult))
                    end
                else
                    Ao = fn1206
                    zH = fn591
                    z8 = function()
                        local IH
                        local IL_2
                        local IK_3
                        local II = Ao()
                        if II then
                            local IQ = if zM() < II.Cost then 1 else 0
                            if IQ == 1 then
                                Ad.TrailStatus = string.format("Need %s wins for %s (have %s)", z4(II.Cost + z2()), II.Name, z4(zw()))
                                local IJ = zH()
                                local IK_1 = Ag("TrailEquipped") or ""
                                local IL_1 = tostring(IK_1)
                                if IJ and IL_1 ~= IJ.Name and zZ.equipTrail then
                                    pcall(function()
                                        zZ.equipTrail:FireServer(IJ.Name)
                                    end)
                                end
                                return
                            elseif not zZ.buyTrailWins then
                                Ad.TrailStatus = "Trail buy remote unavailable"
                                return
                            else
                                Ad.TrailStatus = string.format("Buying %s (%s wins)", II.Name, z4(II.Cost))
                                IK_3, IL_2 = pcall(function()
                                    return zZ.buyTrailWins:InvokeServer(II.Name)
                                end)
                                task.wait(0.25)
                                if Ac(II.Name) then
                                    Ad.TrailStatus = string.format("Bought %s", II.Name)
                                    if zZ.equipTrail then
                                        pcall(function()
                                            zZ.equipTrail:FireServer(II.Name)
                                        end)
                                    end
                                elseif not (IK_3 and IL_2) then
                                    Ad.TrailStatus = string.format("Could not buy %s", II.Name)
                                end
                                return
                            end
                        end
                        IH = zH()
                        if not IH then
                            Ad.TrailStatus = "No trail owned yet"
                            return
                        end
                        local IK_4 = Ag("TrailEquipped") or ""
                        local IL_3 = tostring(IK_4)
                        if IL_3 == IH.Name then
                            Ad.TrailStatus = string.format("Best equipped: %s x%s", IH.Name, tostring(IH.Mult))
                            return
                        end
                        if not zZ.equipTrail then
                            Ad.TrailStatus = "Trail equip remote unavailable"
                            return
                        end
                        pcall(function()
                            zZ.equipTrail:FireServer(IH.Name)
                        end)
                        task.wait(0.25)
                        Ad.TrailStatus = string.format("Equipped %s x%s", IH.Name, tostring(IH.Mult))
                    end
                end
                At = (At + 81) % 88
            else
                Av = {
                    "vjnn",
                    "swl",
                    "xztaaxeokme",
                    "jkgdrxfkl",
                    "huwvp",
                    "ytq",
                    "qgbsvrbsm",
                    "gkclecfwwex",
                    "kqefyqowrt",
                    "ofms",
                    "vmmyfytqcj",
                    "ohrhtk"
                }
                local PP = At
                Aw = Av[PP % 12 + 1]
                if Aw:len() >= Aw:reverse():rep(PP % 3 + 2):len() then
                    z3 = function(lT)
                        if not zZ.requestWorldTeleport then
                            Ad.WorldStatus = "World teleport unavailable"
                            return
                        end
                        Ad.WorldStatus = "Teleporting to " .. lT
                        pcall(function()
                            zZ.requestWorldTeleport:FireServer(lT)
                        end)
                    end
                else
                    zT = function(lT)
                        if not zZ.requestWorldTeleport then
                            Ad.WorldStatus = "World teleport unavailable"
                            return
                        end
                        Ad.WorldStatus = "Teleporting to " .. lT
                        pcall(function()
                            zZ.requestWorldTeleport:FireServer(lT)
                        end)
                    end
                end
                At = (At + 37) % 88
            end
        else
            Av = (vector.create((At * 3 + 7) % 11 + 1, (At * 7 + 5) % 13 + 1, (At * 2 + 10) % 17 + 1))
            Aw = (vector.create((At * 3 + 2) % 11 + 1, (At * 11 + 2) % 13 + 1, (At * 12 + 2) % 17 + 1))
            Ax = (vector.create((At * 7 + 5) % 11 + 1, (At * 1 + 9) % 13 + 1, (At * 4 + 16) % 17 + 1))
            Ay = (vector.create((At * 1 + 5) % 5 + 1, (At * 4 + 6) % 7 + 1, (At * 1 + 7) % 9 + 1))
            if vector.dot(vector.cross(Av, (vector.cross(Aw, Ax))), Ay) == vector.dot(Aw * vector.dot(Av, Ax) - Ax * vector.dot(Av, Aw), Ay) + 5 then
                z1 = fn1407
            else
                zd = fn1407
            end
            At = (At + 37) % 88
        end
    elseif Au <= 21 then
        local Rd = bit32.rrotate(bit32.bxor(bit32.lrotate(At, 20), string.byte(tostring(zk))), 24)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Rd, 1022551103), 1094314770), (bit32.bxor(bit32.band(Rd, 3272416192), 61487581))), 1094314770), 61487581) ~= Rd then
            z1 = fns.fn161
        else
            zC = fns.fn161
        end
        At = (At + 59) % 88
    else
        Au = (vector.create((At * 6 + 9) % 11 + 1, (At * 10 + 3) % 13 + 1, (At * 1 + 15) % 17 + 1))
        Av = (vector.create((At * 1 + 6) % 11 + 1, (At * 10 + 1) % 13 + 1, (At * 11 + 17) % 17 + 1))
        Aw = (vector.create((At * 5 + 1) % 11 + 1, (At * 4 + 11) % 13 + 1, (At * 2 + 3) % 17 + 1))
        Ax = (vector.create((At * 6 + 4) % 11 + 1, (At * 5 + 1) % 13 + 1, (At * 5 + 9) % 17 + 1))
        if vector.dot(vector.cross(Au, Av), (vector.cross(Aw, Ax))) == vector.dot(Au, Aw) * vector.dot(Av, Ax) - vector.dot(Au, Ax) * vector.dot(Av, Aw) + 2 then
            zw = fn340
            zj = fn1111
            Am = fn990
            Ag = fn650
            y1 = fn893
        else
            Ag = fn340
            zw = fn1111
            zj = fn990
            y1 = fn650
            Am = fn893
        end
        At = (At + 15) % 88
    end
until (At * 85 + 28) % 88 == 82
connection = nil
Au = 8
repeat
    At = (Au * 1 + 0) % 2 + 1
    if At <= 1 then
        At = (vector.create((Au * 2 + 7) % 11 + 1, (Au * 9 + 6) % 13 + 1, (Au * 6 + 5) % 17 + 1))
        Av = (vector.create((Au * 5 + 7) % 11 + 1, (Au * 3 + 1) % 13 + 1, (Au * 8 + 5) % 17 + 1))
        Aw = (vector.create((Au * 2 + 3) % 5 + 1, (Au * 1 + 1) % 7 + 1, (Au * 5 + 2) % 9 + 1))
        if math.abs((vector.angle(At, Av, Aw))) - math.abs((vector.angle(Av, At, Aw))) == 0 then
            connection = y5:GetAttributeChangedSignal("CurrentWorld"):Connect(fn1427)
        else
            y5 = connection:GetAttributeChangedSignal("CurrentWorld"):Connect(fn1427)
        end
        Au = (Au + 9) % 16
    else
        local PE = bit32.rrotate(bit32.bxor(bit32.lrotate(Au, 27), string.byte(tostring(connection))), 8)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(PE, 3970544495), 1306360671), (bit32.bxor(bit32.band(PE, 324422800), 1421008906))), 1306360671), 1421008906) == PE then
            zP.Track(fn1334)
        else
            zP.Track(fn1334)
        end
        Au = (Au + 5) % 16
    end
until (Au * 9 + 5) % 16 == 11
Aw, Ax, Av = nil, nil, nil
At = 7
repeat
    Au = (At * 1 + 0) % 2 + 1
    if Au <= 1 then
        if At * 10916603 + 9 + 6 <= At * 10916603 + 9 + 6 + 1 then
            Aw, Ax = pcall(Av)
        else
            Ax, Av = pcall(Aw)
        end
        At = (At + 11) % 16
    else
        local PF = bit32.rrotate(bit32.bxor(bit32.lrotate(At, 23), string.byte(tostring(Av))), 23)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(PF, 2923194357), 222183571), (bit32.bxor(bit32.band(PF, 1371772938), 307512179))), 222183571), 307512179) == PF then
            zd()
            zi.SetStage = fn1168
            zi.SetEnabled = fn542
            za.SetBelt = fn456
            za.SetEnabled = fn908
            y_.SetEnabled = fn1074
            yU.SetEnabled = fn1050
            Ak.SetEnabled = fn659
            zP.Track(fn1000)
            Av = function()
                local onDiscord
                local N0
                local N1
                onDiscord = nil
                N0 = nil
                N1 = nil
                local SaveManager, NR, NS, NT, ThemeManager, Options, NX, NY, Library, Toggles
                NX = "+1 Horse Evolution"
                N1 = "https://discord.gg/synapsex"
                NT = "https://ouroboros-hub-rbx.web.app/"
                local N3 = "v0.7"
                NY = "https://rscripts.net/@Ouroboros"
                Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
                ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
                SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
                Toggles = Library.Toggles
                Options = Library.Options
                zf(zP, Library)
                local N2 = #zZ.missing > 0 and "missing: " .. table.concat(zZ.missing, ", ")
                local N4 = N2 or "bindings ready"
                local N2_9 = {}
                local N9 = if zo(fireproximityprompt) then 1 else 0
                if N9 == 1 then
                    table.insert(N2_9, "prompt")
                end
                local N4_3 = zo(setclipboard) or zo(toclipboard)
                if N4_3 then
                    table.insert(N2_9, "clipboard")
                end
                local N4_4 = #N2_9 > 0 and table.concat(N2_9, "+")
                NS = (N4_4 or "basic") .. " | " .. N4
                N0 = function(m3, m4)
                    local Jd = zo(setclipboard) and setclipboard
                    local Je = Jd
                    if not Je then
                        local Jd_3 = zo(toclipboard) and toclipboard
                        Je = Jd_3 or nil
                    end
                    local Jd_4 = Je
                    if not Jd_4 then
                        Library:Notify("Clipboard is unavailable")
                        return
                    end
                    local Je_2 = pcall(Jd_4, m3)
                    if Je_2 then
                        Library:Notify(m4)
                    else
                        Library:Notify("Failed to copy")
                    end
                end
                onDiscord = function()
                    N0(N1, "Copied Discord invite to clipboard")
                end
                local Window = Library:CreateWindow({
                    Title = "Ouroboros",
                    Font = Enum.Font.BuilderSans,
                    Footer = { { Text = N1, Copyable = true }, "|", NX, "|", N3 },
                    Icon = 78539693571783,
                    NotifySide = "Right",
                    ShowCustomCursor = false,
                    CornerRadius = 0,
                    SidebarCompacted = true,
                    TabSwipeFrom = "bottom",
                    Animations = { TabSwitch = true }
                })
                Window:SetGlow(false)
                NR = {
                    Info = Window:AddTab("Info", "info"),
                    Main = Window:AddTab("Main", "gamepad-2"),
                    Player = Window:AddTab("Player", "person-standing"),
                    Settings = Window:AddTab("Settings", "settings")
                }
                local function N2_12(nh)
                    local DiscordGroup = nh:AddLeftGroupbox("Discord")
                    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
                    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
                end
                for k, v in NR do
                    if k ~= "Info" then
                        N2_12(v)
                    end
                end
                local function N3_2()
                    local JH
                    local JF
                    local JI
                    local JE
                    local JA
                    JA = nil
                    JE = nil
                    JF = nil
                    JH = nil
                    JI = nil
                    local Jz, JB, Label, JD, JG, Label2, Label3, JL
                    JF = function(no)
                        return (tostring(no):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
                    end
                    JA = function(nq, nr)
                        return string.format('<font color="%s">%s</font>', nr, JF(nq))
                    end
                    JG = function(nu, nv, nw)
                        return string.format("<b>%s</b> %s %s", nu, JA("-", "#5a6070"), JA(nv, nw))
                    end
                    local JM = "#8b93a3"
                    JD = "#7fd47f"
                    JI = "Unknown"
                    Jz = "#e8a34d"
                    pcall(function()
                        local Ji_2
                        local Jh_3
                        if type(identifyexecutor) == "function" then
                            Ji_2, Jh_3 = identifyexecutor()
                            local Jj = Ji_2 ~= ""
                            local Jk = type(Ji_2) == "string" and Jj
                            if Jk then
                                local Jj_2 = type(Jh_3) == "string" and Jh_3 ~= "" and Ji_2 .. " " .. Jh_3
                                JI = Jj_2 or Ji_2
                            end
                        end
                    end)
                    JH = os.clock()
                    JL = function()
                        local Jp = math.floor(os.clock() - JH)
                        if Jp < 60 then
                            return Jp .. "s"
                        elseif Jp < 3600 then
                            return string.format("%dm %ds", Jp // 60, Jp % 60)
                        else
                            return string.format("%dh %dm", Jp // 3600, Jp % 3600 // 60)
                        end
                    end
                    local UserGroup = NR.Info:AddLeftGroupbox("User", "circle-user")
                    UserGroup:AddPlayerInfo("InfoUserCard", { Player = y5, Title = "User", HeaderIcon = "user", Collapsible = false })
                    UserGroup:AddLabel(JG("User", y5.DisplayName .. " @" .. y5.Name, JD), true)
                    UserGroup:AddLabel(JG("UserId", tostring(y5.UserId), "#6ec1ff"), true)
                    UserGroup:AddLabel(JG("Executor", JI .. "  " .. NS, JD), true)
                    UserGroup:AddDivider()
                    Label3 = UserGroup:AddLabel(JG("Session", JL(), Jz), true)
                    UserGroup:AddDivider()
                    UserGroup:AddButton({
                        Text = "Copy Username",
                        Func = function()
                            N0(y5.Name, "Copied username")
                        end
                    })
                    UserGroup:AddButton({
                        Text = "Copy Profile Link",
                        Func = function()
                            N0("https://www.roblox.com/users/" .. tostring(y5.UserId) .. "/profile", "Copied profile link")
                        end
                    })
                    local SessionGroup = NR.Info:AddRightGroupbox("Session", "signal")
                    SessionGroup:AddLabel(JG("Game", NX, "#6ec1ff"), true)
                    Label2 = SessionGroup:AddLabel(JG("Players", "0/0", JD), true)
                    JB = tostring(game.JobId)
                    local JN = #JB > 18 and string.sub(JB, 1, 18) .. "..."
                    local JN_2 = JN or JB
                    SessionGroup:AddLabel(JG("Job", JN_2, JM), true)
                    Label = SessionGroup:AddLabel(JG("Ping", "0 ms", Jz), true)
                    SessionGroup:AddDivider()
                    SessionGroup:AddButton({
                        Text = "Rejoin Place",
                        Func = function()
                            TeleportService:Teleport(game.PlaceId, y5)
                        end
                    })
                    SessionGroup:AddButton({
                        Text = "Copy Job ID",
                        Func = function()
                            N0(JB, "Copied Job ID")
                        end
                    })
                    JE = task.spawn(function()
                        local Js_2
                        local Jr_3
                        while true do
                            task.wait(1)
                            if Library.Unloaded then
                                break
                            end
                            Label3:SetText(JG("Session", JL(), Jz))
                            Label2:SetText(JG("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), JD))
                            Jr_3, Js_2 = pcall(function()
                                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                            end)
                            local Jr_4 = Jr_3 and Js_2 .. " ms" or "n/a"
                            Label:SetText(JG("Ping", Jr_4, Jz))
                        end
                    end)
                    zP.Track(function()
                        local Jy = if coroutine.status(JE) ~= "dead" then 1 else 0
                        if Jy == 1 then
                            task.cancel(JE)
                        end
                    end)
                    local SocialsGroup = NR.Info:AddRightGroupbox("Socials", "link")
                    SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
                    SocialsGroup:AddButton({
                        Text = "Rscripts",
                        Func = function()
                            N0(NY, "Copied Rscripts profile")
                        end
                    })
                    SocialsGroup:AddButton({
                        Text = "Website",
                        Func = function()
                            N0(NT, "Copied website link")
                        end
                    })
                end
                N3_2()
                local function N2_13()
                    local connection
                    local qu
                    local function oC(oD, oE)
                        local JR = type(oD) ~= "table"
                        local JV = if JR then 1 else 0
                        local JT = 1366 * JV + 470 * (1 - JV)
                        local JU = 3951 * JV + 3264 * (1 - JV)
                        if not ((JT * 2134 + JU * 2745 + JT * JU) % 16777213 == 2380392) then
                            JR = type(oE) ~= "table"
                        end
                        if not JR then
                            JR = #oD ~= #oE
                        end
                        if JR then
                            return false
                        end
                        for i, v in ipairs(oD) do
                            if oE[i] ~= v then
                                return false
                            end
                        end
                        return true
                    end
                    local oK = ze()
                    local oN = yW()
                    local AutoFarmGroup = NR.Main:AddLeftGroupbox("Auto Farm", "trophy")
                    local Label6 = AutoFarmGroup:AddLabel(Ad.WinStatus, true)
                    AutoFarmGroup:AddDivider()
                    AutoFarmGroup:AddToggle("AutoWin", {
                        Text = "Auto Win Races (Stage Farm)",
                        Default = false,
                        Callback = function(oT)
                            zi.SetEnabled(oT)
                        end
                    })
                    AutoFarmGroup:AddDropdown("WinStage", {
                        Text = "Win Stage",
                        Values = oK,
                        Default = oK[1],
                        Multi = false,
                        AllowNull = false,
                        Callback = function(oX)
                            zi.SetStage(oX)
                        end
                    })
                    local Label5 = AutoFarmGroup:AddLabel(Ad.StepsStatus, true)
                    AutoFarmGroup:AddToggle("AutoSteps", {
                        Text = "Auto Earn Steps (Treadmill)",
                        Default = false,
                        Callback = function(o_)
                            za.SetEnabled(o_)
                        end
                    })
                    AutoFarmGroup:AddDropdown("TreadmillBelt", {
                        Text = "Treadmill",
                        Values = oN,
                        Default = oN[1],
                        Multi = false,
                        AllowNull = false,
                        Callback = function(o3)
                            za.SetBelt(o3)
                        end
                    })
                    local Label4 = AutoFarmGroup:AddLabel(Ad.RebirthStatus, true)
                    AutoFarmGroup:AddToggle("AutoRebirth", {
                        Text = "Auto Rebirth",
                        Default = false,
                        Callback = function(o6)
                            y_.SetEnabled(o6)
                        end
                    })
                    local Horse_TrailGroup = NR.Main:AddRightGroupbox("Horse & Trail", "paw-print")
                    local Label3 = Horse_TrailGroup:AddLabel(Ad.HorseStatus, true)
                    Horse_TrailGroup:AddDivider()
                    Horse_TrailGroup:AddToggle("AutoHorse", {
                        Text = "Auto Buy & Equip Best Horse",
                        Default = false,
                        Callback = function(pc)
                            yU.SetEnabled(pc)
                        end
                    })
                    local Label2 = Horse_TrailGroup:AddLabel(Ad.TrailStatus, true)
                    Horse_TrailGroup:AddToggle("AutoTrail", {
                        Text = "Auto Buy & Equip Best Trail",
                        Default = false,
                        Callback = function(ph)
                            Ak.SetEnabled(ph)
                        end
                    })
                    Horse_TrailGroup:AddSlider("WinsReserve", {
                        Text = "Keep Wins Reserve",
                        Default = 0,
                        Min = 0,
                        Max = 100000,
                        Rounding = 0,
                        Callback = function(pl)
                            Ad.WinsReserve = pl
                        end
                    })
                    local WorldsGroup = NR.Main:AddLeftGroupbox("Worlds", "globe")
                    local Label = WorldsGroup:AddLabel(Ad.WorldStatus, true)
                    WorldsGroup:AddDivider()
                    WorldsGroup:AddButton({
                        Text = "Teleport to World 1",
                        Func = function()
                            zT("World1")
                        end
                    })
                    WorldsGroup:AddButton({
                        Text = "Teleport to World 2",
                        Func = function()
                            zT("World2")
                        end
                    })
                    local pv = zs()
                    local function pw(px)
                        local J4, J6
                        local J8 = zs()
                        local J5 = ze()
                        local J7 = yW()
                        local J9 = px or J8 ~= pv or not oC(oK, J5)
                        local Ka = px
                        local Kf = if Ka then 1 else 0
                        local Kd = 160 * Kf + 689 * (1 - Kf)
                        local Ke = 2194 * Kf + 2341 * (1 - Kf)
                        if not ((Kd * 2097 + Ke * 3128 + Kd * Ke) % 16777213 == 7549392) then
                            Ka = J8 ~= pv
                        end
                        if not Ka then
                            Ka = not oC(oN, J7)
                        end
                        local J9_3 = Ka
                        pv = J8
                        zd()
                        if J9 and Options.WinStage then
                            oK = J5
                            local Value = Options.WinStage.Value
                            pcall(function()
                                Options.WinStage:SetValues(J5)
                            end)
                            local Ka_2 = table.find(J5, Value) and Value
                            J6 = Ka_2 or J5[1]
                            pcall(function()
                                Options.WinStage:SetValue(J6)
                            end)
                            zi.SetStage(J6)
                        end
                        if J9_3 and Options.TreadmillBelt then
                            oN = J7
                            local Value = Options.TreadmillBelt.Value
                            pcall(function()
                                Options.TreadmillBelt:SetValues(J7)
                            end)
                            local J9_4 = table.find(J7, Value) and Value
                            J4 = J9_4 or J7[1]
                            pcall(function()
                                Options.TreadmillBelt:SetValue(J4)
                            end)
                            za.SetBelt(J4)
                        end
                    end
                    connection = y5:GetAttributeChangedSignal("CurrentWorld"):Connect(function()
                        task.defer(function()
                            if not Library.Unloaded then
                                pw(true)
                            end
                        end)
                    end)
                    zP.Track(function()
                        connection:Disconnect()
                    end)
                    qu = task.spawn(function()
                        while not Library.Unloaded do
                            pcall(function()
                                pw(false)
                                Label6:SetText(Ad.WinStatus)
                                Label5:SetText(Ad.StepsStatus)
                                Label4:SetText(Ad.RebirthStatus)
                                Label3:SetText(Ad.HorseStatus)
                                Label2:SetText(Ad.TrailStatus)
                                Label:SetText(Ad.WorldStatus)
                            end)
                            task.wait(0.5)
                        end
                    end)
                    zP.Track(function()
                        local Ko = if coroutine.status(qu) ~= "dead" then 1 else 0
                        if Ko == 1 then
                            task.cancel(qu)
                        end
                    end)
                end
                N2_13()
                local function N2_14()
                    local qD
                    local qB
                    local qE
                    local qC
                    local MovementGroup = NR.Player:AddLeftGroupbox("Movement", "footprints")
                    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
                    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
                    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
                    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
                    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
                    local FlyGroup = NR.Player:AddRightGroupbox("Fly", "feather")
                    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
                    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
                    qC = {}
                    qB = {}
                    qE = {}
                    qD = {}
                    local qA = {}
                    local function qF()
                        for k, v in qB do
                            if k.Parent then
                                k.CanCollide = v
                            end
                        end
                        table.clear(qB)
                    end
                    local function qJ()
                        for k, v in qC do
                            if k.Parent then
                                k.WalkSpeed = v
                            end
                        end
                        table.clear(qC)
                    end
                    local function qN()
                        for k, v in qD do
                            if k.Parent then
                                k.PlatformStand = v
                            end
                        end
                        table.clear(qD)
                    end
                    local function qR(qS)
                        if not qS:IsA("ProximityPrompt") then
                            return
                        end
                        if qE[qS] == nil then
                            qE[qS] = {
                                HoldDuration = qS.HoldDuration,
                                MaxActivationDistance = qS.MaxActivationDistance,
                                RequiresLineOfSight = qS.RequiresLineOfSight
                            }
                        end
                        qS.HoldDuration = 0
                        qS.MaxActivationDistance = 50
                        qS.RequiresLineOfSight = false
                    end
                    local function qU()
                        for k, v in qE do
                            if k.Parent then
                                k.HoldDuration = v.HoldDuration
                                k.MaxActivationDistance = v.MaxActivationDistance
                                k.RequiresLineOfSight = v.RequiresLineOfSight
                            end
                        end
                        table.clear(qE)
                    end
                    Toggles.Fly:OnChanged(function()
                        if not Toggles.Fly.Value then
                            qN()
                        end
                    end)
                    Toggles.WalkSpeedEnabled:OnChanged(function()
                        if not Toggles.WalkSpeedEnabled.Value then
                            qJ()
                        end
                    end)
                    Toggles.NoClip:OnChanged(function()
                        if not Toggles.NoClip.Value then
                            qF()
                        end
                    end)
                    Toggles.InstantProximityPrompt:OnChanged(function()
                        if Toggles.InstantProximityPrompt.Value then
                            for k, v in zc:QueryDescendants("ProximityPrompt") do
                                pcall(qR, v)
                            end
                        else
                            qU()
                        end
                    end)
                    table.insert(qA, zc.DescendantAdded:Connect(function(rc)
                        if Toggles.InstantProximityPrompt.Value then
                            qR(rc)
                        end
                    end))
                    table.insert(qA, z9.Stepped:Connect(function()
                        if Library.Unloaded then
                            return
                        end
                        local Character = y5.Character
                        if Toggles.NoClip.Value and Character then
                            for k, v in Character:QueryDescendants("BasePart") do
                                if qB[v] == nil then
                                    qB[v] = v.CanCollide
                                end
                                v.CanCollide = false
                            end
                        end
                    end))
                    table.insert(qA, UserInputService.JumpRequest:Connect(function()
                        if Library.Unloaded then
                            return
                        end
                        local Character = y5.Character
                        local Lf = Character and Character:FindFirstChildOfClass("Humanoid")
                        if Toggles.InfJump.Value and Lf then
                            Lf:ChangeState(Enum.HumanoidStateType.Jumping)
                        end
                    end))
                    table.insert(qA, z9.RenderStepped:Connect(function(ry)
                        if Library.Unloaded then
                            return
                        end
                        local Character = y5.Character
                        local Li = Character and Character:FindFirstChildOfClass("Humanoid")
                        local Lj = Character
                        if Lj then
                            Lj = Character:FindFirstChild("HumanoidRootPart")
                        end
                        local Lh_2 = Lj
                        local CurrentCamera = zc.CurrentCamera
                        if Toggles.WalkSpeedEnabled.Value and Li then
                            if qC[Li] == nil then
                                qC[Li] = Li.WalkSpeed
                            end
                            Li.WalkSpeed = Options.WalkSpeed.Value
                        end
                        if Toggles.Fly.Value and Lh_2 and Li and CurrentCamera then
                            if qD[Li] == nil then
                                qD[Li] = Li.PlatformStand
                            end
                            Li.PlatformStand = true
                            local Lj_8 = Vector3.zero
                            if not UserInputService:GetFocusedTextBox() then
                                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                    Lj_8 += CurrentCamera.CFrame.LookVector
                                end
                                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                    Lj_8 -= CurrentCamera.CFrame.LookVector
                                end
                                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                                    Lj_8 -= CurrentCamera.CFrame.RightVector
                                end
                                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                                    Lj_8 += CurrentCamera.CFrame.RightVector
                                end
                                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                                    Lj_8 += Vector3.new(0, 1, 0)
                                end
                                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                                    Lj_8 -= Vector3.new(0, 1, 0)
                                end
                            end
                            Lh_2.AssemblyLinearVelocity = Vector3.zero
                            if Lj_8.Magnitude > 0 then
                                Lh_2.CFrame = Lh_2.CFrame + Lj_8.Unit * Options.FlySpeed.Value * ry
                            end
                        end
                    end))
                    zP.Track(function()
                        for k, v in qA do
                            v:Disconnect()
                        end
                        qF()
                        qJ()
                        qN()
                        qU()
                    end)
                end
                N2_14()
                local function N2_15()
                    local Mz, MA, MB, Label, MD, ME, MF, MG, MH, MI, MJ, MK, ML, MM
                    MD = {}
                    ML = {}
                    MI = nil
                    MF = 0
                    MJ = 0
                    Mz = false
                    MA = os.clock()
                    local MenuGroup = NR.Settings:AddLeftGroupbox("Menu", "logs")
                    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                    Label = MenuGroup:AddLabel("AFK triggers: 0")
                    MG = function()
                        local CurrentCamera
                        CurrentCamera = zc.CurrentCamera
                        local LB = not CurrentCamera or not zo(VirtualUser.CaptureController) or not zo(VirtualUser.ClickButton2)
                        if LB then
                            return false
                        end
                        local LB_2 = pcall(function()
                            VirtualUser:CaptureController()
                            VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
                        end)
                        if not LB_2 then
                            return false
                        end
                        MJ += 1
                        MA = os.clock()
                        pcall(function()
                            Label:SetText("AFK triggers: " .. MJ)
                        end)
                        return true
                    end
                    MB = function(sh)
                        pcall(function()
                            GuiService:SetGameplayPausedNotificationEnabled(not sh)
                        end)
                        pcall(function()
                            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                            if RobloxNetworkPauseNotificati then
                                RobloxNetworkPauseNotificati.Enabled = not sh
                            end
                        end)
                        if not sh then
                            return
                        end
                        pcall(function()
                            if sethiddenproperty then
                                sethiddenproperty(y5, "GameplayPaused", false)
                            else
                                y5.GameplayPaused = false
                            end
                        end)
                    end
                    MM = function(sx)
                        local LH = sx.ClassName == "ParticleEmitter" or sx.ClassName == "Trail" or sx.ClassName == "Smoke" or sx.ClassName == "Fire"
                        local LL = if LH then 1 else 0
                        local LJ = 2480 * LL + 87 * (1 - LL)
                        local LK = 3884 * LL + 1006 * (1 - LL)
                        if not ((LJ * 1544 + LK * 267 + LJ * LK) % 16777213 == 14498468) then
                            LH = sx.ClassName == "Sparkles"
                        end
                        if not LH then
                            LH = sx.ClassName == "Explosion"
                        end
                        if not LH then
                            LH = sx.ClassName == "Beam"
                        end
                        if LH then
                            if MD[sx] == nil then
                                MD[sx] = sx.Enabled
                            end
                            pcall(function()
                                sx.Enabled = false
                            end)
                        end
                    end
                    MK = function()
                        for k, v in MD do
                            local LQ = k
                            local LS = v
                            if LQ.Parent then
                                pcall(function()
                                    LQ.Enabled = LS
                                end)
                            end
                        end
                        table.clear(MD)
                        if MI then
                            pcall(function()
                                settings().Rendering.QualityLevel = MI.Quality
                            end)
                            Lighting.GlobalShadows = MI.Shadows
                            Lighting.FogEnd = MI.Fog
                            MI = nil
                        end
                    end
                    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
                    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
                    MenuGroup:AddToggle("Disable3D", {
                        Text = "Disable 3D Rendering",
                        Default = false,
                        Callback = function(sM)
                            pcall(function()
                                z9:Set3dRenderingEnabled(not sM)
                            end)
                        end
                    })
                    MenuGroup:AddToggle("FpsBoost", {
                        Text = "FPS Boost",
                        Default = false,
                        Callback = function(sR)
                            if sR then
                                if not MI then
                                    MI = {
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
                                for k, v in zc:QueryDescendants("ParticleEmitter,Trail,Smoke,Fire,Sparkles,Beam") do
                                    pcall(MM, v)
                                end
                            else
                                MK()
                            end
                        end
                    })
                    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
                    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                    Library.ToggleKeybind = Options.MenuKeybind
                    MB(true)
                    local ScriptGroup = NR.Settings:AddLeftGroupbox("Script", "terminal")
                    ScriptGroup:AddButton({
                        Text = "Unload Script",
                        Func = function()
                            Library:Unload()
                        end
                    })
                    Toggles.AntiGameplayPause:OnChanged(function()
                        MB(Toggles.AntiGameplayPause.Value)
                    end)
                    if Toggles.AntiGameplayPause.Value then
                        MB(true)
                    end
                    table.insert(ML, y5.Idled:Connect(function()
                        if Toggles.AntiAfk.Value and not Library.Unloaded then
                            MG()
                        end
                    end))
                    table.insert(ML, zc.DescendantAdded:Connect(function(s9)
                        if Toggles.FpsBoost.Value then
                            MM(s9)
                        end
                    end))
                    MH = function(td)
                        if Mz or Library.Unloaded or not Toggles.AutoReconnect.Value then
                            return
                        end
                        Mz = true
                        local L4 = MF
                        local L5_3 = pcall(function()
                            if td then
                                TeleportService:Teleport(game.PlaceId, y5)
                            else
                                TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, y5)
                            end
                        end)
                        if not L5_3 then
                            Mz = false
                            if not td and L4 == MF then
                                task.delay(1.5, function()
                                    if L4 == MF then
                                        MH(true)
                                    end
                                end)
                            end
                        end
                    end
                    table.insert(ML, TeleportService.TeleportInitFailed:Connect(function(tv)
                        local Mc
                        if tv == y5 and Mz then
                            Mz = false
                            Mc = MF
                            task.delay(3, function()
                                if Mc == MF then
                                    MH(true)
                                end
                            end)
                        end
                    end))
                    task.spawn(function()
                        local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
                        local Mn = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
                        if Library.Unloaded or not Mn then
                            return
                        end
                        table.insert(ML, Mn.ChildAdded:Connect(function(tK)
                            if tK.Name == "ErrorPrompt" then
                                MH(false)
                            end
                        end))
                    end)
                    ME = task.spawn(function()
                        while not Library.Unloaded do
                            if Toggles.AntiGameplayPause.Value then
                                MB(true)
                            end
                            local Mq = Toggles.AntiAfk.Value and os.clock() - MA >= 60
                            if Mq then
                                MG()
                            end
                            task.wait(1)
                        end
                    end)
                    zP.Track(function()
                        MF += 1
                        for k, v in ML do
                            v:Disconnect()
                        end
                        pcall(task.cancel, ME)
                        MB(false)
                        MK()
                        pcall(function()
                            z9:Set3dRenderingEnabled(true)
                        end)
                    end)
                end
                N2_15()
                local function N2_16()
                    local NF
                    NF = nil
                    local NG, NH
                    ThemeManager:SetLibrary(Library)
                    ThemeManager:SetFolder("OuroborosHub")
                    ThemeManager:SaveDefault("Evil Hello Kitty")
                    ThemeManager:ApplyToTab(NR.Settings)
                    SaveManager:SetLibrary(Library)
                    SaveManager:IgnoreThemeSettings()
                    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
                    SaveManager:SetFolder("OuroborosHub/HorseEvolution")
                    local NI = SaveManager:BuildConfigSection(NR.Settings)
                    NF = function(ua, ub)
                        local MT_2 = (ua == "Toggle" and Toggles or Options)[ub]
                        local MS_5 = type(MT_2) == "table" and MT_2.Type == ua
                        return MS_5 and MT_2 or nil
                    end
                    NH = function(uk, ul)
                        local Type = ul.Type
                        if Type == "Toggle" then
                            return { idx = uk, type = "Toggle", value = ul.Value == true }
                        elseif Type == "Slider" then
                            return { idx = uk, type = "Slider", value = tostring(ul.Value) }
                        elseif Type == "Dropdown" then
                            return { idx = uk, type = "Dropdown", multi = ul.Multi == true, value = ul.Value }
                        elseif Type == "Input" then
                            local MX_3 = ul.Value
                            local M1 = if MX_3 then 1 else 0
                            local M_ = 4095 * M1 + 1891 * (1 - M1)
                            local M0 = 1248 * M1 + 1367 * (1 - M1)
                            if not ((M_ * 2488 + M0 * 1461 + M_ * M0) % 16777213 == 345035) then
                                MX_3 = ""
                            end
                            return { idx = uk, type = "Input", text = tostring(MX_3) }
                        elseif Type == "ColorPicker" then
                            return { idx = uk, type = "ColorPicker", value = ul.Value:ToHex(), transparency = ul.Transparency }
                        elseif Type == "KeyPicker" then
                            return {
                                idx = uk,
                                type = "KeyPicker",
                                key = ul.Value,
                                mode = ul.Mode,
                                syncToggleState = ul.SyncToggleState or nil
                            }
                        else
                            return nil
                        end
                    end
                    NG = function(uo)
                        local M2 = type(uo) ~= "table" or type(uo.idx) ~= "string" or type(uo.type) ~= "string"
                        if M2 then
                            return false
                        end
                        local M2_2 = NF(uo.type, uo.idx)
                        if not M2_2 then
                            return false
                        end
                        local M3 = uo.type == "Toggle" and type(uo.value) == "boolean"
                        if M3 then
                            M2_2:SetValue(uo.value)
                            return true
                        elseif uo.type == "Slider" then
                            local M3_6 = tonumber(uo.value)
                            if M3_6 then
                                M2_2:SetValue(M3_6)
                                return true
                            end
                            return false
                        elseif uo.type == "Dropdown" then
                            M2_2:SetValue(uo.value)
                            return true
                        else
                            local M3_7 = uo.type == "Input" and type(uo.text) == "string"
                            if M3_7 then
                                M2_2:SetValue(uo.text)
                                return true
                            end
                            local M3_8 = uo.type == "ColorPicker" and type(uo.value) == "string"
                            if M3_8 then
                                M2_2:SetValueRGB(Color3.fromHex(uo.value))
                                if type(uo.transparency) == "number" then
                                    M2_2:SetTransparency(uo.transparency)
                                end
                                return true
                            end
                            local M3_9 = uo.type == "KeyPicker" and type(uo.key) == "string"
                            if M3_9 then
                                local key = uo.key
                                local M4 = uo.mode or "Toggle"
                                M2_2:SetValue({ key, M4 })
                                return true
                            end
                            return false
                        end
                    end
                    NI:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Default = "", Finished = true, AllowEmpty = true })
                    NI:AddButton({
                        Text = "Export Config to Clipboard",
                        Func = function()
                            local Nb_4
                            local Na_8
                            local M9 = {}
                            for k, v in Toggles do
                                if k ~= "MenuKeybind" then
                                    local Na_5 = NH(k, v)
                                    if Na_5 then
                                        table.insert(M9, Na_5)
                                    end
                                end
                            end
                            for k, v in Options do
                                if k ~= "MenuKeybind" and k ~= "SaveManager_ImportSource" then
                                    local Na_7 = NH(k, v)
                                    if Na_7 then
                                        table.insert(M9, Na_7)
                                    end
                                end
                            end
                            table.sort(M9, function(uD, uE)
                                return uD.idx < uE.idx
                            end)
                            Na_8, Nb_4 = pcall(HttpService.JSONEncode, HttpService, { objects = M9 })
                            if not Na_8 then
                                Library:Notify("Failed to encode config")
                                return
                            end
                            N0(Nb_4, "Copied config to clipboard")
                        end
                    })
                    NI:AddButton({
                        Text = "Import Config from Clipboard Text",
                        Func = function()
                            local Nt = Options.SaveManager_ImportSource and Options.SaveManager_ImportSource.Value or ""
                            local Nt_5
                            local Nt_4 = Nt == ""
                            local Nu = type(Nt) ~= "string"
                            local Nu_3
                            local Ny = if Nu then 1 else 0
                            local Nw = 2443 * Ny + 610 * (1 - Ny)
                            local Nx = 1051 * Ny + 2229 * (1 - Ny)
                            if not ((Nw * 993 + Nx * 3427 + Nw * Nx) % 16777213 == 8595269) then
                                Nu = Nt_4
                            end
                            if Nu then
                                Library:Notify("Paste a config first")
                                return
                            end
                            if #Nt > 262144 then
                                Library:Notify("That config is too large")
                                return
                            end
                            Nt_5, Nu_3 = pcall(HttpService.JSONDecode, HttpService, Nt)
                            local Ns_5 = not Nt_5 or type(Nu_3) ~= "table" or type(Nu_3.objects) ~= "table"
                            if Ns_5 then
                                Library:Notify("That is not a valid exported config")
                                return
                            end
                            if #Nu_3.objects > 2048 then
                                Library:Notify("That config has too many records")
                                return
                            end
                            local Ns_6 = 0
                            for i, v in ipairs(Nu_3.objects) do
                                if NG(v) then
                                    Ns_6 += 1
                                end
                            end
                            if Ns_6 == 0 then
                                Library:Notify("No settings in that config matched this script")
                                return
                            end
                            Options.SaveManager_ImportSource:SetValue("")
                            local Nu_4 = Ns_6 == 1 and "" or "s"
                            Library:Notify(("Imported %d setting%s"):format(Ns_6, Nu_4), 6)
                        end
                    })
                    ThemeManager:LoadDefault()
                    SaveManager:LoadAutoloadConfig()
                    if Options.WinsReserve then
                        Ad.WinsReserve = Options.WinsReserve.Value
                    end
                    if Options.WinStage then
                        zi.SetStage(Options.WinStage.Value)
                    end
                    if Options.TreadmillBelt then
                        za.SetBelt(Options.TreadmillBelt.Value)
                    end
                    if Toggles.AutoWin then
                        zi.SetEnabled(Toggles.AutoWin.Value)
                    end
                    if Toggles.AutoSteps then
                        za.SetEnabled(Toggles.AutoSteps.Value)
                    end
                    if Toggles.AutoRebirth then
                        y_.SetEnabled(Toggles.AutoRebirth.Value)
                    end
                    if Toggles.AutoHorse then
                        yU.SetEnabled(Toggles.AutoHorse.Value)
                    end
                    if Toggles.AutoTrail then
                        Ak.SetEnabled(Toggles.AutoTrail.Value)
                    end
                    if Toggles.HideUiOnStart.Value then
                        Library:Toggle(false)
                    end
                end
                N2_16()
            end
        else
            yU()
            y_.SetStage = fn1168
            y_.SetEnabled = fn542
            zi.SetBelt = fn456
            zi.SetEnabled = fn908
            zd.SetEnabled = fn1074
            Av.SetEnabled = fn1050
            za.SetEnabled = fn659
            Ak.Track(fn1000)
            zP = function()
                local onDiscord
                local N0
                local N1
                onDiscord = nil
                N0 = nil
                N1 = nil
                local SaveManager, NR, NS, NT, ThemeManager, Options, NX, NY, Library, Toggles
                NX = "+1 Horse Evolution"
                N1 = "https://discord.gg/synapsex"
                NT = "https://ouroboros-hub-rbx.web.app/"
                local N3 = "v0.7"
                NY = "https://rscripts.net/@Ouroboros"
                Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
                ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
                SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
                Toggles = Library.Toggles
                Options = Library.Options
                zf(zP, Library)
                local N2 = #zZ.missing > 0 and "missing: " .. table.concat(zZ.missing, ", ")
                local N4 = N2 or "bindings ready"
                local N2_1 = {}
                local N9 = if zo(fireproximityprompt) then 1 else 0
                if N9 == 1 then
                    table.insert(N2_1, "prompt")
                end
                local N4_1 = zo(setclipboard) or zo(toclipboard)
                if N4_1 then
                    table.insert(N2_1, "clipboard")
                end
                local N4_2 = #N2_1 > 0 and table.concat(N2_1, "+")
                NS = (N4_2 or "basic") .. " | " .. N4
                N0 = function(m3, m4)
                    local Jd = zo(setclipboard) and setclipboard
                    local Je = Jd
                    if not Je then
                        local Jd_1 = zo(toclipboard) and toclipboard
                        Je = Jd_1 or nil
                    end
                    local Jd_2 = Je
                    if not Jd_2 then
                        Library:Notify("Clipboard is unavailable")
                        return
                    end
                    local Je_1 = pcall(Jd_2, m3)
                    if Je_1 then
                        Library:Notify(m4)
                    else
                        Library:Notify("Failed to copy")
                    end
                end
                onDiscord = function()
                    N0(N1, "Copied Discord invite to clipboard")
                end
                local Window = Library:CreateWindow({
                    Title = "Ouroboros",
                    Font = Enum.Font.BuilderSans,
                    Footer = { { Text = N1, Copyable = true }, "|", NX, "|", N3 },
                    Icon = 78539693571783,
                    NotifySide = "Right",
                    ShowCustomCursor = false,
                    CornerRadius = 0,
                    SidebarCompacted = true,
                    TabSwipeFrom = "bottom",
                    Animations = { TabSwitch = true }
                })
                Window:SetGlow(false)
                NR = {
                    Info = Window:AddTab("Info", "info"),
                    Main = Window:AddTab("Main", "gamepad-2"),
                    Player = Window:AddTab("Player", "person-standing"),
                    Settings = Window:AddTab("Settings", "settings")
                }
                local function N2_4(nh)
                    local DiscordGroup = nh:AddLeftGroupbox("Discord")
                    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
                    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
                end
                for k, v in NR do
                    if k ~= "Info" then
                        N2_4(v)
                    end
                end
                local function N3_1()
                    local JH
                    local JF
                    local JI
                    local JE
                    local JA
                    JA = nil
                    JE = nil
                    JF = nil
                    JH = nil
                    JI = nil
                    local Jz, JB, Label, JD, JG, Label2, Label3, JL
                    JF = function(no)
                        return (tostring(no):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
                    end
                    JA = function(nq, nr)
                        return string.format('<font color="%s">%s</font>', nr, JF(nq))
                    end
                    JG = function(nu, nv, nw)
                        return string.format("<b>%s</b> %s %s", nu, JA("-", "#5a6070"), JA(nv, nw))
                    end
                    local JM = "#8b93a3"
                    JD = "#7fd47f"
                    JI = "Unknown"
                    Jz = "#e8a34d"
                    pcall(function()
                        local Ji_1
                        local Jh_1
                        if type(identifyexecutor) == "function" then
                            Ji_1, Jh_1 = identifyexecutor()
                            local Jj = Ji_1 ~= ""
                            local Jk = type(Ji_1) == "string" and Jj
                            if Jk then
                                local Jj_1 = type(Jh_1) == "string" and Jh_1 ~= "" and Ji_1 .. " " .. Jh_1
                                JI = Jj_1 or Ji_1
                            end
                        end
                    end)
                    JH = os.clock()
                    JL = function()
                        local Jp = math.floor(os.clock() - JH)
                        if Jp < 60 then
                            return Jp .. "s"
                        elseif Jp < 3600 then
                            return string.format("%dm %ds", Jp // 60, Jp % 60)
                        else
                            return string.format("%dh %dm", Jp // 3600, Jp % 3600 // 60)
                        end
                    end
                    local UserGroup = NR.Info:AddLeftGroupbox("User", "circle-user")
                    UserGroup:AddPlayerInfo("InfoUserCard", { Player = y5, Title = "User", HeaderIcon = "user", Collapsible = false })
                    UserGroup:AddLabel(JG("User", y5.DisplayName .. " @" .. y5.Name, JD), true)
                    UserGroup:AddLabel(JG("UserId", tostring(y5.UserId), "#6ec1ff"), true)
                    UserGroup:AddLabel(JG("Executor", JI .. "  " .. NS, JD), true)
                    UserGroup:AddDivider()
                    Label3 = UserGroup:AddLabel(JG("Session", JL(), Jz), true)
                    UserGroup:AddDivider()
                    UserGroup:AddButton({
                        Text = "Copy Username",
                        Func = function()
                            N0(y5.Name, "Copied username")
                        end
                    })
                    UserGroup:AddButton({
                        Text = "Copy Profile Link",
                        Func = function()
                            N0("https://www.roblox.com/users/" .. tostring(y5.UserId) .. "/profile", "Copied profile link")
                        end
                    })
                    local SessionGroup = NR.Info:AddRightGroupbox("Session", "signal")
                    SessionGroup:AddLabel(JG("Game", NX, "#6ec1ff"), true)
                    Label2 = SessionGroup:AddLabel(JG("Players", "0/0", JD), true)
                    JB = tostring(game.JobId)
                    local JN = #JB > 18 and string.sub(JB, 1, 18) .. "..."
                    local JN_1 = JN or JB
                    SessionGroup:AddLabel(JG("Job", JN_1, JM), true)
                    Label = SessionGroup:AddLabel(JG("Ping", "0 ms", Jz), true)
                    SessionGroup:AddDivider()
                    SessionGroup:AddButton({
                        Text = "Rejoin Place",
                        Func = function()
                            TeleportService:Teleport(game.PlaceId, y5)
                        end
                    })
                    SessionGroup:AddButton({
                        Text = "Copy Job ID",
                        Func = function()
                            N0(JB, "Copied Job ID")
                        end
                    })
                    JE = task.spawn(function()
                        local Js_1
                        local Jr_1
                        while true do
                            task.wait(1)
                            if Library.Unloaded then
                                break
                            end
                            Label3:SetText(JG("Session", JL(), Jz))
                            Label2:SetText(JG("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), JD))
                            Jr_1, Js_1 = pcall(function()
                                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                            end)
                            local Jr_2 = Jr_1 and Js_1 .. " ms" or "n/a"
                            Label:SetText(JG("Ping", Jr_2, Jz))
                        end
                    end)
                    zP.Track(function()
                        local Jy = if coroutine.status(JE) ~= "dead" then 1 else 0
                        if Jy == 1 then
                            task.cancel(JE)
                        end
                    end)
                    local SocialsGroup = NR.Info:AddRightGroupbox("Socials", "link")
                    SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
                    SocialsGroup:AddButton({
                        Text = "Rscripts",
                        Func = function()
                            N0(NY, "Copied Rscripts profile")
                        end
                    })
                    SocialsGroup:AddButton({
                        Text = "Website",
                        Func = function()
                            N0(NT, "Copied website link")
                        end
                    })
                end
                N3_1()
                local function N2_5()
                    local connection
                    local qu
                    local function oC(oD, oE)
                        local JR = type(oD) ~= "table"
                        local JV = if JR then 1 else 0
                        local JT = 1366 * JV + 470 * (1 - JV)
                        local JU = 3951 * JV + 3264 * (1 - JV)
                        if not ((JT * 2134 + JU * 2745 + JT * JU) % 16777213 == 2380392) then
                            JR = type(oE) ~= "table"
                        end
                        if not JR then
                            JR = #oD ~= #oE
                        end
                        if JR then
                            return false
                        end
                        for i, v in ipairs(oD) do
                            if oE[i] ~= v then
                                return false
                            end
                        end
                        return true
                    end
                    local oK = ze()
                    local oN = yW()
                    local AutoFarmGroup = NR.Main:AddLeftGroupbox("Auto Farm", "trophy")
                    local Label6 = AutoFarmGroup:AddLabel(Ad.WinStatus, true)
                    AutoFarmGroup:AddDivider()
                    AutoFarmGroup:AddToggle("AutoWin", {
                        Text = "Auto Win Races (Stage Farm)",
                        Default = false,
                        Callback = function(oT)
                            zi.SetEnabled(oT)
                        end
                    })
                    AutoFarmGroup:AddDropdown("WinStage", {
                        Text = "Win Stage",
                        Values = oK,
                        Default = oK[1],
                        Multi = false,
                        AllowNull = false,
                        Callback = function(oX)
                            zi.SetStage(oX)
                        end
                    })
                    local Label5 = AutoFarmGroup:AddLabel(Ad.StepsStatus, true)
                    AutoFarmGroup:AddToggle("AutoSteps", {
                        Text = "Auto Earn Steps (Treadmill)",
                        Default = false,
                        Callback = function(o_)
                            za.SetEnabled(o_)
                        end
                    })
                    AutoFarmGroup:AddDropdown("TreadmillBelt", {
                        Text = "Treadmill",
                        Values = oN,
                        Default = oN[1],
                        Multi = false,
                        AllowNull = false,
                        Callback = function(o3)
                            za.SetBelt(o3)
                        end
                    })
                    local Label4 = AutoFarmGroup:AddLabel(Ad.RebirthStatus, true)
                    AutoFarmGroup:AddToggle("AutoRebirth", {
                        Text = "Auto Rebirth",
                        Default = false,
                        Callback = function(o6)
                            y_.SetEnabled(o6)
                        end
                    })
                    local Horse_TrailGroup = NR.Main:AddRightGroupbox("Horse & Trail", "paw-print")
                    local Label3 = Horse_TrailGroup:AddLabel(Ad.HorseStatus, true)
                    Horse_TrailGroup:AddDivider()
                    Horse_TrailGroup:AddToggle("AutoHorse", {
                        Text = "Auto Buy & Equip Best Horse",
                        Default = false,
                        Callback = function(pc)
                            yU.SetEnabled(pc)
                        end
                    })
                    local Label2 = Horse_TrailGroup:AddLabel(Ad.TrailStatus, true)
                    Horse_TrailGroup:AddToggle("AutoTrail", {
                        Text = "Auto Buy & Equip Best Trail",
                        Default = false,
                        Callback = function(ph)
                            Ak.SetEnabled(ph)
                        end
                    })
                    Horse_TrailGroup:AddSlider("WinsReserve", {
                        Text = "Keep Wins Reserve",
                        Default = 0,
                        Min = 0,
                        Max = 100000,
                        Rounding = 0,
                        Callback = function(pl)
                            Ad.WinsReserve = pl
                        end
                    })
                    local WorldsGroup = NR.Main:AddLeftGroupbox("Worlds", "globe")
                    local Label = WorldsGroup:AddLabel(Ad.WorldStatus, true)
                    WorldsGroup:AddDivider()
                    WorldsGroup:AddButton({
                        Text = "Teleport to World 1",
                        Func = function()
                            zT("World1")
                        end
                    })
                    WorldsGroup:AddButton({
                        Text = "Teleport to World 2",
                        Func = function()
                            zT("World2")
                        end
                    })
                    local pv = zs()
                    local function pw(px)
                        local J4, J6
                        local J8 = zs()
                        local J5 = ze()
                        local J7 = yW()
                        local J9 = px or J8 ~= pv or not oC(oK, J5)
                        local Ka = px
                        local Kf = if Ka then 1 else 0
                        local Kd = 160 * Kf + 689 * (1 - Kf)
                        local Ke = 2194 * Kf + 2341 * (1 - Kf)
                        if not ((Kd * 2097 + Ke * 3128 + Kd * Ke) % 16777213 == 7549392) then
                            Ka = J8 ~= pv
                        end
                        if not Ka then
                            Ka = not oC(oN, J7)
                        end
                        local J9_1 = Ka
                        pv = J8
                        zd()
                        if J9 and Options.WinStage then
                            oK = J5
                            local Value = Options.WinStage.Value
                            pcall(function()
                                Options.WinStage:SetValues(J5)
                            end)
                            local Ka_1 = table.find(J5, Value) and Value
                            J6 = Ka_1 or J5[1]
                            pcall(function()
                                Options.WinStage:SetValue(J6)
                            end)
                            zi.SetStage(J6)
                        end
                        if J9_1 and Options.TreadmillBelt then
                            oN = J7
                            local Value = Options.TreadmillBelt.Value
                            pcall(function()
                                Options.TreadmillBelt:SetValues(J7)
                            end)
                            local J9_2 = table.find(J7, Value) and Value
                            J4 = J9_2 or J7[1]
                            pcall(function()
                                Options.TreadmillBelt:SetValue(J4)
                            end)
                            za.SetBelt(J4)
                        end
                    end
                    connection = y5:GetAttributeChangedSignal("CurrentWorld"):Connect(function()
                        task.defer(function()
                            if not Library.Unloaded then
                                pw(true)
                            end
                        end)
                    end)
                    zP.Track(function()
                        connection:Disconnect()
                    end)
                    qu = task.spawn(function()
                        while not Library.Unloaded do
                            pcall(function()
                                pw(false)
                                Label6:SetText(Ad.WinStatus)
                                Label5:SetText(Ad.StepsStatus)
                                Label4:SetText(Ad.RebirthStatus)
                                Label3:SetText(Ad.HorseStatus)
                                Label2:SetText(Ad.TrailStatus)
                                Label:SetText(Ad.WorldStatus)
                            end)
                            task.wait(0.5)
                        end
                    end)
                    zP.Track(function()
                        local Ko = if coroutine.status(qu) ~= "dead" then 1 else 0
                        if Ko == 1 then
                            task.cancel(qu)
                        end
                    end)
                end
                N2_5()
                local function N2_6()
                    local qD
                    local qB
                    local qE
                    local qC
                    local MovementGroup = NR.Player:AddLeftGroupbox("Movement", "footprints")
                    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
                    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
                    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
                    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
                    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
                    local FlyGroup = NR.Player:AddRightGroupbox("Fly", "feather")
                    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
                    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
                    qC = {}
                    qB = {}
                    qE = {}
                    qD = {}
                    local qA = {}
                    local function qF()
                        for k, v in qB do
                            if k.Parent then
                                k.CanCollide = v
                            end
                        end
                        table.clear(qB)
                    end
                    local function qJ()
                        for k, v in qC do
                            if k.Parent then
                                k.WalkSpeed = v
                            end
                        end
                        table.clear(qC)
                    end
                    local function qN()
                        for k, v in qD do
                            if k.Parent then
                                k.PlatformStand = v
                            end
                        end
                        table.clear(qD)
                    end
                    local function qR(qS)
                        if not qS:IsA("ProximityPrompt") then
                            return
                        end
                        if qE[qS] == nil then
                            qE[qS] = {
                                HoldDuration = qS.HoldDuration,
                                MaxActivationDistance = qS.MaxActivationDistance,
                                RequiresLineOfSight = qS.RequiresLineOfSight
                            }
                        end
                        qS.HoldDuration = 0
                        qS.MaxActivationDistance = 50
                        qS.RequiresLineOfSight = false
                    end
                    local function qU()
                        for k, v in qE do
                            if k.Parent then
                                k.HoldDuration = v.HoldDuration
                                k.MaxActivationDistance = v.MaxActivationDistance
                                k.RequiresLineOfSight = v.RequiresLineOfSight
                            end
                        end
                        table.clear(qE)
                    end
                    Toggles.Fly:OnChanged(function()
                        if not Toggles.Fly.Value then
                            qN()
                        end
                    end)
                    Toggles.WalkSpeedEnabled:OnChanged(function()
                        if not Toggles.WalkSpeedEnabled.Value then
                            qJ()
                        end
                    end)
                    Toggles.NoClip:OnChanged(function()
                        if not Toggles.NoClip.Value then
                            qF()
                        end
                    end)
                    Toggles.InstantProximityPrompt:OnChanged(function()
                        if Toggles.InstantProximityPrompt.Value then
                            for k, v in zc:QueryDescendants("ProximityPrompt") do
                                pcall(qR, v)
                            end
                        else
                            qU()
                        end
                    end)
                    table.insert(qA, zc.DescendantAdded:Connect(function(rc)
                        if Toggles.InstantProximityPrompt.Value then
                            qR(rc)
                        end
                    end))
                    table.insert(qA, z9.Stepped:Connect(function()
                        if Library.Unloaded then
                            return
                        end
                        local Character = y5.Character
                        if Toggles.NoClip.Value and Character then
                            for k, v in Character:QueryDescendants("BasePart") do
                                if qB[v] == nil then
                                    qB[v] = v.CanCollide
                                end
                                v.CanCollide = false
                            end
                        end
                    end))
                    table.insert(qA, UserInputService.JumpRequest:Connect(function()
                        if Library.Unloaded then
                            return
                        end
                        local Character = y5.Character
                        local Lf = Character and Character:FindFirstChildOfClass("Humanoid")
                        if Toggles.InfJump.Value and Lf then
                            Lf:ChangeState(Enum.HumanoidStateType.Jumping)
                        end
                    end))
                    table.insert(qA, z9.RenderStepped:Connect(function(ry)
                        if Library.Unloaded then
                            return
                        end
                        local Character = y5.Character
                        local Li = Character and Character:FindFirstChildOfClass("Humanoid")
                        local Lj = Character
                        if Lj then
                            Lj = Character:FindFirstChild("HumanoidRootPart")
                        end
                        local Lh_1 = Lj
                        local CurrentCamera = zc.CurrentCamera
                        if Toggles.WalkSpeedEnabled.Value and Li then
                            if qC[Li] == nil then
                                qC[Li] = Li.WalkSpeed
                            end
                            Li.WalkSpeed = Options.WalkSpeed.Value
                        end
                        if Toggles.Fly.Value and Lh_1 and Li and CurrentCamera then
                            if qD[Li] == nil then
                                qD[Li] = Li.PlatformStand
                            end
                            Li.PlatformStand = true
                            local Lj_4 = Vector3.zero
                            if not UserInputService:GetFocusedTextBox() then
                                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                    Lj_4 += CurrentCamera.CFrame.LookVector
                                end
                                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                    Lj_4 -= CurrentCamera.CFrame.LookVector
                                end
                                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                                    Lj_4 -= CurrentCamera.CFrame.RightVector
                                end
                                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                                    Lj_4 += CurrentCamera.CFrame.RightVector
                                end
                                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                                    Lj_4 += Vector3.new(0, 1, 0)
                                end
                                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                                    Lj_4 -= Vector3.new(0, 1, 0)
                                end
                            end
                            Lh_1.AssemblyLinearVelocity = Vector3.zero
                            if Lj_4.Magnitude > 0 then
                                Lh_1.CFrame = Lh_1.CFrame + Lj_4.Unit * Options.FlySpeed.Value * ry
                            end
                        end
                    end))
                    zP.Track(function()
                        for k, v in qA do
                            v:Disconnect()
                        end
                        qF()
                        qJ()
                        qN()
                        qU()
                    end)
                end
                N2_6()
                local function N2_7()
                    local Mz, MA, MB, Label, MD, ME, MF, MG, MH, MI, MJ, MK, ML, MM
                    MD = {}
                    ML = {}
                    MI = nil
                    MF = 0
                    MJ = 0
                    Mz = false
                    MA = os.clock()
                    local MenuGroup = NR.Settings:AddLeftGroupbox("Menu", "logs")
                    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                    Label = MenuGroup:AddLabel("AFK triggers: 0")
                    MG = function()
                        local CurrentCamera
                        CurrentCamera = zc.CurrentCamera
                        local LB = not CurrentCamera or not zo(VirtualUser.CaptureController) or not zo(VirtualUser.ClickButton2)
                        if LB then
                            return false
                        end
                        local LB_1 = pcall(function()
                            VirtualUser:CaptureController()
                            VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
                        end)
                        if not LB_1 then
                            return false
                        end
                        MJ += 1
                        MA = os.clock()
                        pcall(function()
                            Label:SetText("AFK triggers: " .. MJ)
                        end)
                        return true
                    end
                    MB = function(sh)
                        pcall(function()
                            GuiService:SetGameplayPausedNotificationEnabled(not sh)
                        end)
                        pcall(function()
                            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                            if RobloxNetworkPauseNotificati then
                                RobloxNetworkPauseNotificati.Enabled = not sh
                            end
                        end)
                        if not sh then
                            return
                        end
                        pcall(function()
                            if sethiddenproperty then
                                sethiddenproperty(y5, "GameplayPaused", false)
                            else
                                y5.GameplayPaused = false
                            end
                        end)
                    end
                    MM = function(sx)
                        local LH = sx.ClassName == "ParticleEmitter" or sx.ClassName == "Trail" or sx.ClassName == "Smoke" or sx.ClassName == "Fire"
                        local LL = if LH then 1 else 0
                        local LJ = 2480 * LL + 87 * (1 - LL)
                        local LK = 3884 * LL + 1006 * (1 - LL)
                        if not ((LJ * 1544 + LK * 267 + LJ * LK) % 16777213 == 14498468) then
                            LH = sx.ClassName == "Sparkles"
                        end
                        if not LH then
                            LH = sx.ClassName == "Explosion"
                        end
                        if not LH then
                            LH = sx.ClassName == "Beam"
                        end
                        if LH then
                            if MD[sx] == nil then
                                MD[sx] = sx.Enabled
                            end
                            pcall(function()
                                sx.Enabled = false
                            end)
                        end
                    end
                    MK = function()
                        for k, v in MD do
                            local LQ = k
                            local LS = v
                            if LQ.Parent then
                                pcall(function()
                                    LQ.Enabled = LS
                                end)
                            end
                        end
                        table.clear(MD)
                        if MI then
                            pcall(function()
                                settings().Rendering.QualityLevel = MI.Quality
                            end)
                            Lighting.GlobalShadows = MI.Shadows
                            Lighting.FogEnd = MI.Fog
                            MI = nil
                        end
                    end
                    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
                    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
                    MenuGroup:AddToggle("Disable3D", {
                        Text = "Disable 3D Rendering",
                        Default = false,
                        Callback = function(sM)
                            pcall(function()
                                z9:Set3dRenderingEnabled(not sM)
                            end)
                        end
                    })
                    MenuGroup:AddToggle("FpsBoost", {
                        Text = "FPS Boost",
                        Default = false,
                        Callback = function(sR)
                            if sR then
                                if not MI then
                                    MI = {
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
                                for k, v in zc:QueryDescendants("ParticleEmitter,Trail,Smoke,Fire,Sparkles,Beam") do
                                    pcall(MM, v)
                                end
                            else
                                MK()
                            end
                        end
                    })
                    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
                    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                    Library.ToggleKeybind = Options.MenuKeybind
                    MB(true)
                    local ScriptGroup = NR.Settings:AddLeftGroupbox("Script", "terminal")
                    ScriptGroup:AddButton({
                        Text = "Unload Script",
                        Func = function()
                            Library:Unload()
                        end
                    })
                    Toggles.AntiGameplayPause:OnChanged(function()
                        MB(Toggles.AntiGameplayPause.Value)
                    end)
                    if Toggles.AntiGameplayPause.Value then
                        MB(true)
                    end
                    table.insert(ML, y5.Idled:Connect(function()
                        if Toggles.AntiAfk.Value and not Library.Unloaded then
                            MG()
                        end
                    end))
                    table.insert(ML, zc.DescendantAdded:Connect(function(s9)
                        if Toggles.FpsBoost.Value then
                            MM(s9)
                        end
                    end))
                    MH = function(td)
                        if Mz or Library.Unloaded or not Toggles.AutoReconnect.Value then
                            return
                        end
                        Mz = true
                        local L4 = MF
                        local L5_1 = pcall(function()
                            if td then
                                TeleportService:Teleport(game.PlaceId, y5)
                            else
                                TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, y5)
                            end
                        end)
                        if not L5_1 then
                            Mz = false
                            if not td and L4 == MF then
                                task.delay(1.5, function()
                                    if L4 == MF then
                                        MH(true)
                                    end
                                end)
                            end
                        end
                    end
                    table.insert(ML, TeleportService.TeleportInitFailed:Connect(function(tv)
                        local Mc
                        if tv == y5 and Mz then
                            Mz = false
                            Mc = MF
                            task.delay(3, function()
                                if Mc == MF then
                                    MH(true)
                                end
                            end)
                        end
                    end))
                    task.spawn(function()
                        local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
                        local Mn = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
                        if Library.Unloaded or not Mn then
                            return
                        end
                        table.insert(ML, Mn.ChildAdded:Connect(function(tK)
                            if tK.Name == "ErrorPrompt" then
                                MH(false)
                            end
                        end))
                    end)
                    ME = task.spawn(function()
                        while not Library.Unloaded do
                            if Toggles.AntiGameplayPause.Value then
                                MB(true)
                            end
                            local Mq = Toggles.AntiAfk.Value and os.clock() - MA >= 60
                            if Mq then
                                MG()
                            end
                            task.wait(1)
                        end
                    end)
                    zP.Track(function()
                        MF += 1
                        for k, v in ML do
                            v:Disconnect()
                        end
                        pcall(task.cancel, ME)
                        MB(false)
                        MK()
                        pcall(function()
                            z9:Set3dRenderingEnabled(true)
                        end)
                    end)
                end
                N2_7()
                local function N2_8()
                    local NF
                    NF = nil
                    local NG, NH
                    ThemeManager:SetLibrary(Library)
                    ThemeManager:SetFolder("OuroborosHub")
                    ThemeManager:SaveDefault("Evil Hello Kitty")
                    ThemeManager:ApplyToTab(NR.Settings)
                    SaveManager:SetLibrary(Library)
                    SaveManager:IgnoreThemeSettings()
                    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
                    SaveManager:SetFolder("OuroborosHub/HorseEvolution")
                    local NI = SaveManager:BuildConfigSection(NR.Settings)
                    NF = function(ua, ub)
                        local MT_1 = (ua == "Toggle" and Toggles or Options)[ub]
                        local MS_2 = type(MT_1) == "table" and MT_1.Type == ua
                        return MS_2 and MT_1 or nil
                    end
                    NH = function(uk, ul)
                        local Type = ul.Type
                        if Type == "Toggle" then
                            return { idx = uk, type = "Toggle", value = ul.Value == true }
                        elseif Type == "Slider" then
                            return { idx = uk, type = "Slider", value = tostring(ul.Value) }
                        elseif Type == "Dropdown" then
                            return { idx = uk, type = "Dropdown", multi = ul.Multi == true, value = ul.Value }
                        elseif Type == "Input" then
                            local MX_1 = ul.Value
                            local M1 = if MX_1 then 1 else 0
                            local M_ = 4095 * M1 + 1891 * (1 - M1)
                            local M0 = 1248 * M1 + 1367 * (1 - M1)
                            if not ((M_ * 2488 + M0 * 1461 + M_ * M0) % 16777213 == 345035) then
                                MX_1 = ""
                            end
                            return { idx = uk, type = "Input", text = tostring(MX_1) }
                        elseif Type == "ColorPicker" then
                            return { idx = uk, type = "ColorPicker", value = ul.Value:ToHex(), transparency = ul.Transparency }
                        elseif Type == "KeyPicker" then
                            return {
                                idx = uk,
                                type = "KeyPicker",
                                key = ul.Value,
                                mode = ul.Mode,
                                syncToggleState = ul.SyncToggleState or nil
                            }
                        else
                            return nil
                        end
                    end
                    NG = function(uo)
                        local M2 = type(uo) ~= "table" or type(uo.idx) ~= "string" or type(uo.type) ~= "string"
                        if M2 then
                            return false
                        end
                        local M2_1 = NF(uo.type, uo.idx)
                        if not M2_1 then
                            return false
                        end
                        local M3 = uo.type == "Toggle" and type(uo.value) == "boolean"
                        if M3 then
                            M2_1:SetValue(uo.value)
                            return true
                        elseif uo.type == "Slider" then
                            local M3_1 = tonumber(uo.value)
                            if M3_1 then
                                M2_1:SetValue(M3_1)
                                return true
                            end
                            return false
                        elseif uo.type == "Dropdown" then
                            M2_1:SetValue(uo.value)
                            return true
                        else
                            local M3_2 = uo.type == "Input" and type(uo.text) == "string"
                            if M3_2 then
                                M2_1:SetValue(uo.text)
                                return true
                            end
                            local M3_3 = uo.type == "ColorPicker" and type(uo.value) == "string"
                            if M3_3 then
                                M2_1:SetValueRGB(Color3.fromHex(uo.value))
                                if type(uo.transparency) == "number" then
                                    M2_1:SetTransparency(uo.transparency)
                                end
                                return true
                            end
                            local M3_4 = uo.type == "KeyPicker" and type(uo.key) == "string"
                            if M3_4 then
                                local key = uo.key
                                local M4 = uo.mode or "Toggle"
                                M2_1:SetValue({ key, M4 })
                                return true
                            end
                            return false
                        end
                    end
                    NI:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Default = "", Finished = true, AllowEmpty = true })
                    NI:AddButton({
                        Text = "Export Config to Clipboard",
                        Func = function()
                            local Nb_2
                            local Na_4
                            local M9 = {}
                            for k, v in Toggles do
                                if k ~= "MenuKeybind" then
                                    local Na_1 = NH(k, v)
                                    if Na_1 then
                                        table.insert(M9, Na_1)
                                    end
                                end
                            end
                            for k, v in Options do
                                if k ~= "MenuKeybind" and k ~= "SaveManager_ImportSource" then
                                    local Na_3 = NH(k, v)
                                    if Na_3 then
                                        table.insert(M9, Na_3)
                                    end
                                end
                            end
                            table.sort(M9, function(uD, uE)
                                return uD.idx < uE.idx
                            end)
                            Na_4, Nb_2 = pcall(HttpService.JSONEncode, HttpService, { objects = M9 })
                            if not Na_4 then
                                Library:Notify("Failed to encode config")
                                return
                            end
                            N0(Nb_2, "Copied config to clipboard")
                        end
                    })
                    NI:AddButton({
                        Text = "Import Config from Clipboard Text",
                        Func = function()
                            local Nt = Options.SaveManager_ImportSource and Options.SaveManager_ImportSource.Value or ""
                            local Nt_2
                            local Nt_1 = Nt == ""
                            local Nu = type(Nt) ~= "string"
                            local Nu_1
                            local Ny = if Nu then 1 else 0
                            local Nw = 2443 * Ny + 610 * (1 - Ny)
                            local Nx = 1051 * Ny + 2229 * (1 - Ny)
                            if not ((Nw * 993 + Nx * 3427 + Nw * Nx) % 16777213 == 8595269) then
                                Nu = Nt_1
                            end
                            if Nu then
                                Library:Notify("Paste a config first")
                                return
                            end
                            if #Nt > 262144 then
                                Library:Notify("That config is too large")
                                return
                            end
                            Nt_2, Nu_1 = pcall(HttpService.JSONDecode, HttpService, Nt)
                            local Ns_2 = not Nt_2 or type(Nu_1) ~= "table" or type(Nu_1.objects) ~= "table"
                            if Ns_2 then
                                Library:Notify("That is not a valid exported config")
                                return
                            end
                            if #Nu_1.objects > 2048 then
                                Library:Notify("That config has too many records")
                                return
                            end
                            local Ns_3 = 0
                            for i, v in ipairs(Nu_1.objects) do
                                if NG(v) then
                                    Ns_3 += 1
                                end
                            end
                            if Ns_3 == 0 then
                                Library:Notify("No settings in that config matched this script")
                                return
                            end
                            Options.SaveManager_ImportSource:SetValue("")
                            local Nu_2 = Ns_3 == 1 and "" or "s"
                            Library:Notify(("Imported %d setting%s"):format(Ns_3, Nu_2), 6)
                        end
                    })
                    ThemeManager:LoadDefault()
                    SaveManager:LoadAutoloadConfig()
                    if Options.WinsReserve then
                        Ad.WinsReserve = Options.WinsReserve.Value
                    end
                    if Options.WinStage then
                        zi.SetStage(Options.WinStage.Value)
                    end
                    if Options.TreadmillBelt then
                        za.SetBelt(Options.TreadmillBelt.Value)
                    end
                    if Toggles.AutoWin then
                        zi.SetEnabled(Toggles.AutoWin.Value)
                    end
                    if Toggles.AutoSteps then
                        za.SetEnabled(Toggles.AutoSteps.Value)
                    end
                    if Toggles.AutoRebirth then
                        y_.SetEnabled(Toggles.AutoRebirth.Value)
                    end
                    if Toggles.AutoHorse then
                        yU.SetEnabled(Toggles.AutoHorse.Value)
                    end
                    if Toggles.AutoTrail then
                        Ak.SetEnabled(Toggles.AutoTrail.Value)
                    end
                    if Toggles.HideUiOnStart.Value then
                        Library:Toggle(false)
                    end
                end
                N2_8()
            end
        end
        At = (At + 15) % 16
    end
until (At * 3 + 15) % 16 == 2
if not Aw then
    At = 7
    repeat
        if (At * 2 + 2) * 16 % 3 == ((At * 2 + 2) * 16 + 0) % 3 then
            pcall(zP.Unload)
            error(Ax, 0)
        else
            pcall(Ax.Unload)
            error(zP, 0)
        end
        At = (At + 0) % 8
    until (At * 5 + 4) % 8 == 7
end
