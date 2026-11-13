local fns = {}
local DC
local Dj
local Cj
local DI
local CI
local Dp
local Cp
local CO
local Cv
local CoreGui
local Cc
local DB
local Di
local Ci
local CH
local Do
local C5
local DN
local Du
local Cu
local Db
local Cb
local DA
local Ch
local CZ
local DG
local CG
local Dn
local Cn
local DM
local CM
local Dt
local Da
local Ca
local Cz
local Dg
local CY
local DF
local CF
local Cm
local DL
local CL
local Ds
local Cs
local connection
local State
local Df
local CX
local Dl
local Cl
local DK
local CK
local Dr
local CQ
local Cx
local De
local Ce
local CollectionService
local DJ
local Cq
local C7
local DP
local LocalPlayer
local Dw
local Cw
local Dd
local Cd
function fns.fn19(ek, el)
    local G5 = Dd(ek, el)
    local G6 = G5 and G5:FindFirstChild("end_platform")
    local G5_1 = G6
    if G6 then
        G6 = G5_1:FindFirstChild("Buttons")
    end
    local G5_2 = G6
    if G6 then
        G6 = G5_2:FindFirstChild(Cp())
    end
    local G5_3 = G6
    local Hd = if G5_3 then 1 else 0
    local Hb = 1230 * Hd + 4009 * (1 - Hd)
    local Hc = 2371 * Hd + 2366 * (1 - Hd)
    if not ((Hb * 3816 + Hc * 3013 + Hb * Hc) % 16777213 == 14753833) then
        G5_3 = nil
    end
    return G5_3
end
function fns.fn37(dy)
    local GB_1
    local GA = Ds.stage and Cm(Ds.stage.lobbyPathFor)
    local GA_1
    if GA then
        GA_1, GB_1 = pcall(Ds.stage.lobbyPathFor, dy)
        local GC_1 = GA_1 and type(GB_1) == "table"
        if GC_1 then
            return GB_1
        end
        return dy == 2 and { "Map2", "Lobby" } or { "Map", "Lobby" }
    end
    return dy == 2 and { "Map2", "Lobby" } or { "Map", "Lobby" }
end
function fns.worker()
    local EX_1
    local EW_1
    EW_1, EX_1 = pcall(Cq)
    if not EW_1 then
        warn("[Ouroboros] module load failed: " .. tostring(EX_1))
        Ds.ready = true
    end
end
function fns.fn127(gC)
    if not gC then
        return false
    end
    local H7 = Ds.treadmill and Ds.treadmill.productAttribute or "ID"
    local H6_1 = tonumber(gC:GetAttribute(H7))
    if H6_1 and H6_1 > 0 then
        local H8 = Ds.treadmill and Ds.treadmill.ownedKey or "ownedTreadmills"
        local H7_3 = {}
        local H9 = (C7(H8)) or H7_3
        for i, v in ipairs(H9) do
            if v == H6_1 then
                return true
            end
        end
        return false
    end
    local H7_5 = Ds.treadmill and Ds.treadmill.giftAttribute or "Gift"
    if gC:GetAttribute(H7_5) == true then
        local H6_3 = C7("flags")
        return H6_3 and H6_3.freeTreadmillClaimed == true
    end
    return true
end
function fns.fn145(df)
    df.stopped = true
    df.generation = (df.generation or 0) + 1
end
function fns.fn179()
    connection:Disconnect()
    DL = nil
end
function fns.fn212(o1)
    local OB_1
    local OA = not Ds.world or not Cm(Ds.world.isUnlocked)
    local OA_1
    if OA then
        return o1 == 1
    end
    OA_1, OB_1 = pcall(Ds.world.isUnlocked, o1, C7(Ds.world.unlocksPath))
    return OA_1 and OB_1 == true
end
function fns.fn227()
    local EH = CY(DN, "Configs")
    local EI = CY(DN, "Modules")
    local EJ = CY(DN, "Packages")
    local EK = CY(DN, "Remotes")
    if EJ then
        local EL = Dn(CY(EJ, "DataService"))
        Ds.client = EL and EL.client or nil
    end
    if EH then
        Ds.stage = Dn(CY(EH, "StageConfig"))
        Ds.plane = Dn(CY(EH, "PlaneConfig"))
        Ds.multiplier = Dn(CY(EH, "MultiplierConfig"))
        Ds.trail = Dn(CY(EH, "TrailConfig"))
        Ds.progression = Dn(CY(EH, "ProgressionConfig"))
        Ds.world = Dn(CY(EH, "WorldConfig"))
        Ds.treadmill = Dn(CY(EH, "TreadmillConfig"))
    end
    if EI then
        Ds.streamAround = Dn(CY(EI, "StreamAround"))
    end
    if EK then
        Ds.claimWin = CY(CY(EK, "Stage"), "ClaimWinPad")
        Ds.equipPlane = CY(CY(EK, "Plane"), "EquipPlane")
        Ds.selectMultiplier = CY(CY(EK, "Multiplier"), "SelectMultiplier")
        Ds.buyTrail = CY(CY(EK, "Trail"), "BuyTrail")
        Ds.equipTrail = CY(CY(EK, "Trail"), "EquipTrail")
        Ds.rebirth = CY(CY(EK, "Progression"), "Rebirth")
        Ds.travelWorld = CY(CY(EK, "World"), "TravelToWorld")
    end
    local EH_1 = Ds.client and Cm(Ds.client.waitForData)
    if EH_1 then
        pcall(function()
            Ds.client:waitForData()
        end)
    end
    local EH_2 = {}
    if not Ds.client then
        table.insert(EH_2, "data")
    end
    if not Ds.stage or not Ds.claimWin then
        table.insert(EH_2, "stages")
    end
    if not Ds.treadmill then
        table.insert(EH_2, "treadmills")
    end
    if not Ds.rebirth then
        table.insert(EH_2, "rebirth")
    end
    if not Ds.plane or not Ds.equipPlane then
        table.insert(EH_2, "planes")
    end
    local EI_3 = not Ds.multiplier
    local EP = if EI_3 then 1 else 0
    local EN = 1311 * EP + 2357 * (1 - EP)
    local EO = 3315 * EP + 3161 * (1 - EP)
    if not ((EN * 1923 + EO * 3859 + EN * EO) % 16777213 == 2882390) then
        EI_3 = not Ds.selectMultiplier
    end
    if EI_3 then
        table.insert(EH_2, "multipliers")
    end
    local EI_4 = not Ds.buyTrail
    local ES = if EI_4 then 1 else 0
    local EQ = 1273 * ES + 3511 * (1 - ES)
    local ER = 1893 * ES + 1534 * (1 - ES)
    if not ((EQ * 433 + ER * 3878 + EQ * ER) % 16777213 == 10302052) then
        EI_4 = not Ds.equipTrail
    end
    if EI_4 then
        table.insert(EH_2, "trails")
    end
    local EI_5 = not Ds.travelWorld
    local EV = if EI_5 then 1 else 0
    local ET = 1071 * EV + 1373 * (1 - EV)
    local EU = 1546 * EV + 4082 * (1 - EV)
    if not ((ET * 598 + EU * 3443 + ET * EU) % 16777213 == 7619102) then
        EI_5 = not Ds.world
    end
    if EI_5 then
        table.insert(EH_2, "worlds")
    end
    Ds.missing = EH_2
    Ds.ready = true
end
function fns.fn261()
    local Kk = {}
    local Kp = 1
    while Kp <= 20 do
        local Kr = Kp
        local Kl = Do(Kr)
        if Kl then
            table.insert(Kk, Kl)
        end
        Kp += 1
    end
    return Kk
end
function fns.fn298(cV)
    local Gm_2
    local Gl = os.clock() + 8
    local Gl_1
    while true do
        local Gm_1 = State.MoveBusy and Cc() and os.clock() < Gl
        if Gm_1 then
            task.wait(0.1)
            continue
        end
        break
    end
    if not Cc() then
        return
    end
    State.MoveBusy = true
    Gl_1, Gm_2 = pcall(cV)
    State.MoveBusy = false
    if not Gl_1 then
        warn("[Ouroboros] move error: " .. tostring(Gm_2))
    end
end
function fns.fn301(jF, jG)
    local KL = CM(DG, Dj(jF))
    local KM = KL and KL:FindFirstChild(tostring(jG))
    return KM or nil
end
function fns.fn302(bT)
    local FQ_1
    local FP = bT or Cz()
    local FP_2
    bT = FP
    local FP_1 = Ds.stage and Cm(Ds.stage.stageCountFor)
    if FP_1 then
        FP_2, FQ_1 = pcall(Ds.stage.stageCountFor, bT)
        local FR = FP_2 and type(FQ_1) == "number"
        if FR then
            return FQ_1
        end
        return bT == 2 and 7 or 15
    end
    return bT == 2 and 7 or 15
end
function fns.fn306(jc)
    local Ke_1
    jc = tostring(jc)
    local Kd = Ds.plane and Cm(Ds.plane.getById)
    local Kd_1
    if Kd then
        Kd_1, Ke_1 = pcall(Ds.plane.getById, jc)
        local Kf = Kd_1 and type(Ke_1) == "table"
        if Kf then
            return Ke_1
        end
        local Kd_2 = Ds.plane and Ds.plane.planes
        if Kd_2 then
            local Ke_2 = Ds.plane.planes[jc] or Ds.plane.planes[tonumber(jc)]
            Kd_2 = Ke_2
        end
        return Kd_2 or nil
    end
    local Kd_3 = Ds.plane and Ds.plane.planes
    if Kd_3 then
        local Ke_4 = Ds.plane.planes[jc] or Ds.plane.planes[tonumber(jc)]
        Kd_3 = Ke_4
    end
    return Kd_3 or nil
end
function fns.fn346()
    return CoreGui
end
function fns.fn368(pu)
    if pu then
        CZ(Ca, Ch)
    else
        Ci(Ca)
        State.WinStatus = "Idle"
    end
end
function fns.fn392(nX)
    local NH_1
    local NG = Ds.trail and Cm(Ds.trail.getById)
    local NG_1
    if NG then
        NG_1, NH_1 = pcall(Ds.trail.getById, nX)
        local NI = NG_1 and type(NH_1) == "table"
        if NI then
            return NH_1
        end
        return Ds.trail and Ds.trail.trails and Ds.trail.trails[nX] or nil
    end
    return Ds.trail and Ds.trail.trails and Ds.trail.trails[nX] or nil
end
function fns.fn405(p1)
    if p1 then
        CZ(Di, Cb)
    else
        Ci(Di)
        State.TrailStatus = "Idle"
    end
end
function fns.fn468(V)
    local En = typeof(cloneref) == "function" and typeof(V) == "Instance"
    if En then
        return cloneref(V)
    end
    return V
end
function fns.fn486(lW, lX)
    local Mj = CM(DG, CO(lW))
    if not Mj then
        return nil
    end
    for i, v in ipairs(DI(lW)) do
        if v == lX then
            return Mj:FindFirstChild(tostring(i))
        end
    end
    return Mj:FindFirstChild(tostring(lX))
end
function fns.fn511(ev, ew)
    local He = CG(ev, ew)
    local Hf = He and He:FindFirstChildWhichIsA("BasePart", true)
    local He_1 = Hf
    if Hf then
        Hf = He_1:IsA("BasePart")
    end
    return Hf and He_1 or nil
end
function fns.fn528()
    local JY_1
    if not Ds.rebirth then
        State.RebirthStatus = "Rebirth remote unavailable"
        return
    end
    local JV = Cv()
    local JW = 25
    local JX = Ds.progression and Cm(Ds.progression.levelRequiredForRebirth)
    local JX_1
    if JX then
        JX_1, JY_1 = pcall(Ds.progression.levelRequiredForRebirth, JV)
        local JZ = JX_1 and type(JY_1) == "number"
        if JZ then
            JW = JY_1
        end
    end
    local JX_2 = Dl()
    local JY_2 = LocalPlayer:GetAttribute("CanRebirth") ~= true and JX_2 < JW
    if JY_2 then
        State.RebirthStatus = string.format("Need level %d (at %d)", JW, JX_2)
        return
    end
    pcall(function()
        Ds.rebirth:FireServer()
    end)
    task.wait(0.45)
    if Cv() > JV then
        State.RebirthStatus = string.format("Rebirthed to %d", Cv())
    else
        State.RebirthStatus = "Rebirth requested"
    end
end
function fns.fn579()
    Ci(Ca)
    Ci(DJ)
    Ci(DB)
    Ci(Du)
    Ci(Dp)
    Ci(Di)
    DF(nil)
end
function fns.fn604()
    local Fq = C7({ "stats", "speed" })
    if Fq == nil then
        local Fr_1 = C7("stats")
        Fq = Fr_1 and Fr_1.speed
    end
    if Fq ~= nil then
        local Fr_2 = (tonumber(Fq))
        local Fw = if Fr_2 then 1 else 0
        local Fu = 3868 * Fw + 1781 * (1 - Fw)
        local Fv = 2269 * Fw + 1012 * (1 - Fw)
        if not ((Fu * 4054 + Fv * 2957 + Fu * Fv) % 16777213 == 14389584) then
            Fr_2 = 0
        end
        return Fr_2
    end
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local Fr_3 = leaderstats and leaderstats:FindFirstChild("Speed")
    local Fq_2 = Fr_3
    if Fr_3 then
        Fr_3 = DA(Fq_2.Value)
    end
    return Fr_3 or 0
end
function fns.fn611(pD)
    if pD then
        CZ(DJ, Cu)
    else
        Ci(DJ)
        DF(nil)
        State.SpeedStatus = "Idle"
    end
end
function fns.fn612(d8, d9)
    return State.WinPadCache[tostring(d8) .. "/" .. tostring(d9)]
end
function fns.fn629(a1)
    local E6_1
    local E5_2
    if type(a1) == "number" then
        return a1
    elseif type(a1) ~= "string" then
        local E5_1 = (tonumber(a1)) or 0
        return E5_1
    else
        E5_2, E6_1 = string.match(a1, "^([%d%.]+)%s*(%a*)$")
        local E7 = tonumber(E5_2)
        if not E7 then
            return 0
        end
        return E7 * (({ K = 1000, M = 1000000, B = 1000000000, T = 1000000000000, Qa = 1000000000000000, Qi = 1e+18 })[E6_1] or 1)
    end
end
function fns.fn664()
    local Od = C5()
    local Oe
    for i, v in ipairs(DK()) do
        if Od[v.id] then
            Oe = v
        end
    end
    return Oe
end
function fns.fn688(eD)
    local Hi = eD and eD:FindFirstChildWhichIsA("BasePart", true)
    return Hi or nil
end
function fns.fn692(mn)
    local MK = CI()
    local ML = mn
    local MM = 0
    local MQ = if ML then 1 else 0
    local MO = 1026 * MQ + 1760 * (1 - MQ)
    local MP = 663 * MQ + 271 * (1 - MQ)
    if not ((MO * 3696 + MP * 1568 + MO * MP) % 16777213 == 5511918) then
        ML = Cz()
    end
    for i, v in ipairs(DI(ML)) do
        if MK[v] and v > MM then
            MM = v
        end
    end
    if MM == 0 then
        for k in MK do
            local MK_1 = type(k) == "number" and k > MM
            if MK_1 then
                MM = k
            end
        end
    end
    return MM
end
function fns.fn719()
    local NW = {}
    for i, v in ipairs(Db) do
        local NX = Cx(v)
        local NY = NX and tonumber(NX.winsCost) and NX.winsCost > 0 and not NX.robuxOnly and not NX.rewardOnly
        if NY then
            table.insert(NW, NX)
        end
    end
    table.sort(NW, function(oa, ob)
        local NQ = (tonumber(oa.speedBoost)) or 0
        local NR = (tonumber(ob.speedBoost))
        local NV = if NR then 1 else 0
        local NT = 3750 * NV + 1794 * (1 - NV)
        local NU = 1715 * NV + 741 * (1 - NV)
        if not ((NT * 3899 + NU * 2512 + NT * NU) % 16777213 == 8583367) then
            NR = 0
        end
        return NQ < NR
    end)
    return NW
end
function fns.fn722(eG)
    local Hl = eG or Cz()
    eG = Hl
    local Hl_1 = CM(DG, Dg(eG))
    if not Hl_1 then
        return
    end
    for i, child in ipairs(Hl_1:GetChildren()) do
        local Hl_2 = tonumber(string.match(child.Name, "^Stage(%d+)$"))
        if Hl_2 then
            local Hm = DM(eG, Hl_2)
            if Hm then
                Ce(eG, Hl_2, Hm.Position)
            end
        end
    end
end
function fns.fn740()
    local Fj = C7({ "stats", "wins" })
    if Fj == nil then
        local Fk_1 = C7("stats")
        Fj = Fk_1 and Fk_1.wins
    end
    if Fj ~= nil then
        local Fk_2 = (tonumber(Fj)) or 0
        return Fk_2
    end
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local Fk_3 = leaderstats and leaderstats:FindFirstChild("Wins")
    local Fj_2 = Fk_3
    if Fk_3 then
        Fk_3 = DA(Fj_2.Value)
    end
    return Fk_3 or 0
end
local function fn812(Y)
    return type(Y) == "function"
end
local function fn820(pQ)
    if pQ then
        CZ(Du, Dw)
    else
        Ci(Du)
        State.PlaneStatus = "Idle"
    end
end
local function fn826(ag)
    local Eq_1
    local Ep_1
    if not ag then
        return nil
    end
    Ep_1, Eq_1 = pcall(require, ag)
    local Er = Ep_1 and type(Eq_1) == "table"
    if Er then
        return Eq_1
    end
    return nil
end
local function fn828()
    gethui = CK
end
local function fn836()
    local N5 = C5()
    for i, v in ipairs(DK()) do
        if not N5[v.id] then
            return v
        end
    end
    return nil
end
local function fn858()
    local Nv = {}
    local Nx = Ds.trail and Ds.trail.ownedPath or "trails"
    local Nx_1 = {}
    local Ny = (C7(Nx)) or Nx_1
    for i, v in ipairs(Ny) do
        local Nw_2 = type(v) == "table" and v.id and v.isUnlocked
        if Nw_2 then
            Nv[v.id] = true
        end
    end
    return Nv
end
local function fn897()
    return math.max(0, Cj() - De())
end
local function fn928()
    return Ds.stage and Ds.stage.winPads and Ds.stage.winPads.normalPadName or "x1win"
end
local function fn932()
    local Ma = Ds.multiplier and Ds.multiplier.pads and Ds.multiplier.pads.dataPath or "multiplierTier"
    local L9_1 = (tonumber(C7(Ma))) or 0
    return math.floor(L9_1)
end
local function fn950(eP, eQ)
    local Hw_1
    local Hv_1
    local Hu = {}
    for k, v in State.WinPadCache do
        Hv_1, Hw_1 = string.match(k, "^(%d+)/(%d+)$")
        if tonumber(Hv_1) == eP then
            table.insert(Hu, { stage = tonumber(Hw_1), position = v })
        end
    end
    table.sort(Hu, function(eX, eY)
        return eX.stage < eY.stage
    end)
    if #Hu >= 2 then
        local Hv_2 = Hu[1]
        local Hw_2 = Hu[#Hu]
        if Hv_2.stage ~= Hw_2.stage then
            return Hv_2.position + (Hw_2.position - Hv_2.position) * ((eQ - Hv_2.stage) / (Hw_2.stage - Hv_2.stage))
        elseif #Hu == 1 then
            return Hu[1].position
        else
            return nil
        end
    elseif #Hu == 1 then
        return Hu[1].position
    else
        return nil
    end
end
local function fn956(dG)
    local GF_1
    local GE = Ds.treadmill and Cm(Ds.treadmill.lobbyPathFor)
    local GE_1
    if GE then
        GE_1, GF_1 = pcall(Ds.treadmill.lobbyPathFor, dG)
        local GG = GE_1 and type(GF_1) == "table"
        if GG then
            return GF_1
        elseif dG == 2 then
            return { "Map2", "Lobby", "Functional", "Treadmills" }
        else
            return { "Map", "Lobby", "Functional", "treadmills", "Treadmills" }
        end
    elseif dG == 2 then
        return { "Map2", "Lobby", "Functional", "Treadmills" }
    else
        return { "Map", "Lobby", "Functional", "treadmills", "Treadmills" }
    end
end
local function fn965()
    local IV = {}
    local IW = {}
    for i, v in ipairs(CL()) do
        for i, child in ipairs(v:GetChildren()) do
            local IX = (child:IsA("Model"))
            if IX then
                local IZ = Ds.treadmill and Ds.treadmill.multiplierAttribute or "Multi"
                IX = child:GetAttribute(IZ) ~= nil
            end
            if IX then
                if not IW[child.Name] then
                    IW[child.Name] = true
                    table.insert(IV, { Name = child.Name, Multiplier = CX(child), Model = child, Unlocked = Cn(child) })
                end
            end
        end
    end
    table.sort(IV, function(hI, hJ)
        if hI.Multiplier == hJ.Multiplier then
            return hI.Name < hJ.Name
        end
        return hI.Multiplier > hJ.Multiplier
    end)
    return IV
end
local function fn970(dM)
    local GL = Ds.plane and Ds.plane.shop and type(Ds.plane.shop.worlds) == "table"
    if GL then
        for i, v in ipairs(Ds.plane.shop.worlds) do
            local GL_1 = v.world == dM and type(v.folderPath) == "table"
            if GL_1 then
                return v.folderPath
            end
        end
    end
    if dM == 2 then
        return { "Map2", "Lobby", "Functional", "Planes", "Planes" }
    end
    return { "Map", "Lobby", "Functional", "Planes", "Pads" }
end
local function fn974(l1)
    local Mz
    local Mu_1
    local Mr = l1 or Cz()
    l1 = Mr
    local Mr_1 = CI()
    local Ms = Ds.multiplier and tonumber(Ds.multiplier.maxTier)
    local Mt = Ms or 21
    local Mt_2
    local My = 1
    while true do
        if not (My <= Mt) then
            return nil, nil, false
        end
        Mz = My
        if not Mr_1[Mz] then
            break
        end
        My += 1
    end
    local Ms_2 = nil
    local Mt_1 = Ds.multiplier and Cm(Ds.multiplier.getTier)
    if Mt_1 then
        Mt_2, Mu_1 = pcall(Ds.multiplier.getTier, Mz, l1)
        if Mt_2 then
            Ms_2 = Mu_1
        end
    end
    local Mt_3 = Ms_2
    if not Mt_3 then
        local Mu_2 = Ds.multiplier and Ds.multiplier.tiers
        if Mu_2 then
            Mu_2 = Ds.multiplier.tiers[Mz]
        end
        Mt_3 = Mu_2
    end
    local Ms_3 = Mt_3
    local Mt_4 = false
    for i, v in ipairs(DI(l1)) do
        if v == Mz then
            Mt_4 = true
            break
        end
    end
    return Ms_3, Mz, Mt_4
end
local function fn982()
    local Character = LocalPlayer.Character
    local FU = Character and Character:FindFirstChild("HumanoidRootPart")
    return FU or nil
end
local function fn992()
    local FK = (tonumber(State.WinsReserve))
    local FO = if FK then 1 else 0
    local FM = 2475 * FO + 205 * (1 - FO)
    local FN = 1385 * FO + 1867 * (1 - FO)
    if not ((FM * 3698 + FN * 2117 + FM * FN) % 16777213 == 15512470) then
        FK = 0
    end
    return math.max(0, FK)
end
local function fn993(ap, aq)
    local Ez = ap
    if type(aq) ~= "table" then
        return nil
    end
    for i, v in ipairs(aq) do
        if not Ez then
            return nil
        end
        Ez = Ez:FindFirstChild(v)
    end
    return Ez
end
local function fn1016(lO)
    local Mc = Ds.multiplier and Ds.multiplier.worlds
    local Md = Mc
    if Mc then
        Mc = Md[lO]
    end
    local Md_1 = Mc
    if Mc then
        Mc = Md_1.padTiers
    end
    local Md_2 = {}
    local Me = Mc
    local Mi = if Me then 1 else 0
    local Mg = 3965 * Mi + 1358 * (1 - Mi)
    local Mh = 2157 * Mi + 2227 * (1 - Mi)
    if not ((Mg * 61 + Mh * 345 + Mg * Mh) % 16777213 == 9538535) then
        Me = Md_2
    end
    return Me
end
local function fn1047(jN)
    local KO = jN or Cz()
    jN = KO
    local KO_1 = Cd()
    for i, v in ipairs(CF()) do
        local KP = (tonumber(v.world)) or 1
        local KP_1 = KP == jN and not KO_1[tostring(v.id)] and not v.robuxOnly and not v.rewardOnly
        if KP_1 then
            return v
        end
    end
    return nil
end
local function fn1118(hl)
    local IO = Da(hl)
    local Character = LocalPlayer.Character
    local IQ = Character and Character:FindFirstChildOfClass("Humanoid")
    local IQ_1 = Cl()
    if not (IO and IQ and IQ_1) then
        return nil, IO
    end
    local IS_1 = IO.Position.Y + IO.Size.Y * 0.5 + IQ.HipHeight + IQ_1.Size.Y * 0.5 + 0.05
    return CFrame.new(IO.Position.X, IS_1, IO.Position.Z), IO
end
local function fn1119(pA)
    local OJ = pA
    local OP = if OJ then 1 else 0
    local ON = 2391 * OP + 666 * (1 - OP)
    local OO = 259 * OP + 143 * (1 - OP)
    if not ((ON * 3305 + OO * 2043 + ON * OO) % 16777213 == 9050661) then
        OJ = "Best Unlocked"
    end
    local OK = tostring(OJ)
    local OJ_1 = OK == "Best"
    local OL = OK == ""
    local OP_1 = if OL then 1 else 0
    local ON_1 = 471 * OP_1 + 8 * (1 - OP_1)
    local OO_1 = 3306 * OP_1 + 3701 * (1 - OP_1)
    if not ((ON_1 * 3568 + OO_1 * 1866 + ON_1 * OO_1) % 16777213 == 9406650) then
        OL = OJ_1
    end
    if OL then
        OK = "Best Unlocked"
    end
    DJ.belt = OK
end
local function fn1133(gQ)
    local Ii = Ds.treadmill and Ds.treadmill.multiplierAttribute or "Multi"
    local Ih_1 = (tonumber(gQ:GetAttribute(Ii))) or 1
    return Ih_1
end
local function fn1149()
    local belt = DJ.belt
    local Jy_1
    local Jz = belt ~= ""
    local Jz_2, Jz_3
    local JA = type(belt) == "string" and Jz
    local JA_1
    if JA and belt ~= "Best Unlocked" then
        JA_1, Jz_2 = Cs(belt)
        if JA_1 then
            if not Cn(JA_1) then
                return nil, nil, string.format("%s is locked", belt)
            end
            local JB_1 = Jz_2
            local JF = if JB_1 then 1 else 0
            local JD = 4014 * JF + 1644 * (1 - JF)
            local JE = 3191 * JF + 3491 * (1 - JF)
            if not ((JD * 2142 + JE * 2587 + JD * JE) % 16777213 == 12884566) then
                JB_1 = 1
            end
            return JA_1, JB_1, nil
        end
        return nil, nil, string.format("%s not streamed in", belt)
    end
    Jz_3, Jy_1 = DC()
    if not Jz_3 then
        return nil, nil, "No unlocked treadmill"
    end
    return Jz_3, Jy_1 or 1, nil
end
local function fn1167()
    local J3 = {}
    local J4 = {}
    local J5 = (C7("planes")) or J4
    for i, v in ipairs(J5) do
        local J4_1 = type(v) == "table" and v.id and v.isUnlocked
        if J4_1 then
            J3[tostring(v.id)] = true
        end
    end
    return J3
end
local function fn1205(dT)
    local GT = Ds.multiplier and Ds.multiplier.worlds
    local GU = GT
    if GT then
        GT = GU[dT]
    end
    local GU_1 = GT
    if GT then
        GT = type(GU_1.padsPath) == "table"
    end
    if GT then
        return GU_1.padsPath
    elseif dT == 2 then
        return { "Map2", "Lobby", "Functional", "Upgrades", "Upgrades" }
    else
        return { "Map", "Lobby", "Functional", "Upgrades", "Pads" }
    end
end
local function fn1209(al, am)
    local Ew = al and al:FindFirstChild(am)
    return Ew or nil
end
local function fn1230()
    return not Cw.Unloaded
end
local function fn1242(hc)
    if not hc then
        return nil
    end
    local IB = -1
    local IC
    for i, descendant in ipairs(hc:GetDescendants()) do
        local ID_1 = (descendant:IsA("BasePart")) and descendant.CanCollide and descendant.Size.Y <= 4
        if ID_1 then
            local ID_2 = descendant.Size.X * descendant.Size.Z
            if ID_2 > IB then
                IC = descendant
                IB = ID_2
            end
        end
    end
    local ID_3 = IC or hc:FindFirstChildWhichIsA("BasePart", true)
    return ID_3
end
local function fn1245(hL)
    for i, v in ipairs(CL()) do
        local Jc = v:FindFirstChild(hL)
        local Jd = Jc and Jc:IsA("Model")
        if Jd then
            return Jc, CX(Jc)
        end
    end
    return nil, nil
end
local function fn1254()
    local fw = Cz()
    local fy = select(1, CH(fw))
    return fy, fw
end
local function onHeartbeat()
    local F9 = not DL
    local Ga = not Cc() or F9
    if Ga then
        return
    end
    local F9_1 = Cl()
    if not F9_1 then
        return
    end
    F9_1.CFrame = DL
    F9_1.AssemblyLinearVelocity = Vector3.zero
end
local function fn1266(dp)
    local Gx_1
    local Gw = Ds.stage and Cm(Ds.stage.stagesPathFor)
    local Gw_1
    if Gw then
        Gw_1, Gx_1 = pcall(Ds.stage.stagesPathFor, dp)
        local Gy_1 = Gw_1 and type(Gx_1) == "table"
        if Gy_1 then
            return Gx_1
        end
        return dp == 2 and { "Map2", "Stages" } or { "Map", "Stages" }
    end
    return dp == 2 and { "Map2", "Stages" } or { "Map", "Stages" }
end
local function fn1274()
    local FH = (tonumber(LocalPlayer:GetAttribute("Level"))) or 1
    return FH
end
local function fn1278(d3, d4, d5)
    if typeof(d5) ~= "Vector3" then
        return
    end
    State.WinPadCache[tostring(d3) .. "/" .. tostring(d4)] = d5
end
local function fn1305()
    local Jo = -1
    local Model
    for i, v in ipairs(Dt()) do
        if v.Unlocked and v.Multiplier > Jo then
            Jo = v.Multiplier
            Model = v.Model
        end
    end
    return Model, Jo
end
local function fn1340(js, jt)
    if not js then
        return nil
    end
    if jt then
        for i, child in ipairs(js:GetChildren()) do
            local Ks_1 = (child:IsA("BasePart")) and CollectionService:HasTag(child, jt)
            if Ks_1 then
                return child
            end
        end
    end
    local Ks_2 = -1
    local Kt
    for i, child in ipairs(js:GetChildren()) do
        if child:IsA("BasePart") then
            local Ku_1 = child.Size.X * child.Size.Y * child.Size.Z
            if Ku_1 > Ks_2 then
                Kt = child
                Ks_2 = Ku_1
            end
        end
    end
    local Ku_2 = Kt or js:FindFirstChildWhichIsA("BasePart", true)
    return Ku_2
end
local function fn1347()
    local Fh = Ds.world and Ds.world.currentWorldPath or "currentWorld"
    local Fg_1 = tonumber(C7(Fh))
    if Fg_1 then
        return Fg_1
    end
    return 1
end
local function fn1357(pK)
    if pK then
        CZ(DB, Df)
    else
        Ci(DB)
        State.RebirthStatus = "Idle"
    end
end
local function fn1380(jY)
    local KY = jY
    local K4 = if KY then 1 else 0
    local K2 = 55 * K4 + 333 * (1 - K4)
    local K3 = 491 * K4 + 3829 * (1 - K4)
    if not ((K2 * 62 + K3 * 1892 + K2 * K3) % 16777213 == 959387) then
        KY = Cz()
    end
    jY = KY
    local KY_1 = Cd()
    local KZ
    local K_
    for i, v in ipairs(CF()) do
        if KY_1[tostring(v.id)] then
            KZ = v
            local K0 = (tonumber(v.world)) or 1
            if K0 == jY then
                K_ = v
            end
        end
    end
    return K_ or KZ
end
local function fn1394(ec, ed)
    local G_ = CM(DG, Dg(ec))
    local G0 = G_ and G_:FindFirstChild("Stage" .. tostring(ed))
    local G__1 = G0
    local G4 = if G__1 then 1 else 0
    local G2 = 99 * G4 + 3407 * (1 - G4)
    local G3 = 1043 * G4 + 3418 * (1 - G4)
    if not ((G2 * 4084 + G3 * 1503 + G2 * G3) % 16777213 == 2075202) then
        G__1 = nil
    end
    return G__1
end
local function fn1397(e2)
    local HF = DP[e2]
    if HF then
        return HF.stage, HF
    end
    return CQ(e2), nil
end
local function fn1398(b7)
    DL = b7
end
local function fn1460(aX)
    local EZ = (tonumber(aX))
    local E4 = if EZ then 1 else 0
    local E2 = 2822 * E4 + 3430 * (1 - E4)
    local E3 = 783 * E4 + 4085 * (1 - E4)
    if not ((E2 * 2492 + E3 * 2691 + E2 * E3) % 16777213 == 11349103) then
        EZ = 0
    end
    aX = EZ
    local EZ_1 = 1
    local E_ = { "", "K", "M", "B", "T", "Qa", "Qi", "Sx", "Sp", "Oc", "No", "Dc" }
    while aX >= 1000 and EZ_1 < 12 do
        aX = aX / 1000
        EZ_1 += 1
    end
    if EZ_1 == 1 then
        return string.format("%d", aX)
    end
    return string.format("%.2f%s", aX, E_[EZ_1])
end
local function fn1474()
    local FA = C7({ "stats", "rebirths" })
    if FA == nil then
        local FB_1 = C7("stats")
        FA = FB_1 and FB_1.rebirths
    end
    if FA ~= nil then
        local FB_2 = (tonumber(FA)) or 0
        return FB_2
    end
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local FB_3 = leaderstats and leaderstats:FindFirstChild("Rebirths")
    local FA_2 = FB_3
    if FB_3 then
        FB_3 = DA(FA_2.Value)
    end
    local FA_3 = FB_3
    local FG = if FA_3 then 1 else 0
    local FE = 200 * FG + 2096 * (1 - FG)
    local FF = 2196 * FG + 1478 * (1 - FG)
    if not ((FE * 1966 + FF * 2739 + FE * FF) % 16777213 == 6847244) then
        FA_3 = 0
    end
    return FA_3
end
local function fn1490()
    local LV = {}
    local LX = Ds.multiplier and Ds.multiplier.pads and Ds.multiplier.pads.ownedPath or "ownedMultipliers"
    local LW_1 = {}
    local LY = (C7(LX))
    local L1 = if LY then 1 else 0
    local L_ = 2919 * L1 + 2050 * (1 - L1)
    local L0 = 3050 * L1 + 2719 * (1 - L1)
    if not ((L_ * 2572 + L0 * 41 + L_ * L0) % 16777213 == 16535668) then
        LY = LW_1
    end
    local LW_2 = LY
    for i, v in ipairs(LW_2) do
        local LW_3 = (tonumber(v)) or v
        LV[LW_3] = true
    end
    return LV
end
local function fn1493(pW)
    if pW then
        CZ(Dp, Dr)
    else
        Ci(Dp)
        State.MultiplierStatus = "Idle"
    end
end
connection = nil
Ca = nil
Cb = nil
Cc = nil
Cd = nil
Ce = nil
Ch = nil
Ci = nil
Cj = nil
Cl = nil
Cm = nil
Cn = nil
Cp = nil
Cq = nil
Cs = nil
Cu = nil
Cv = nil
Cw = nil
Cx = nil
Cz = nil
CF = nil
CG = nil
CH = nil
CI = nil
CK = nil
CL = nil
CM = nil
CO = nil
LocalPlayer = nil
CQ = nil
local Players, Cf, Cg, Ck, Co, Cr, Ct, Cy, CA, CB, CC, CD, CE, CJ, CN, CR, CS, CT, CU, CV
CollectionService = nil
CX = nil
CY = nil
CZ = nil
C5 = nil
C7 = nil
Da = nil
Db = nil
CoreGui = nil
Dd = nil
De = nil
Df = nil
Dg = nil
Di = nil
Dj = nil
Dl = nil
Dn = nil
Do = nil
Dp = nil
Dr = nil
Ds = nil
Dt = nil
Du = nil
Dw = nil
State = nil
DA = nil
DB = nil
DC = nil
DF = nil
DG = nil
DI = nil
local C_, C0, Lighting, C2, C3, C4, C6, C8, TeleportService, GuiService, HttpService, Dm, VirtualUser, UserInputService, Dx, Dz, DD, DE, DH
DJ = nil
DK = nil
DL = nil
DM = nil
DN = nil
DP = nil
local DO
local DX_4
local DW_4
local DU_1, DU_2
local DT_1, DT_2
local D2 = if not game:IsLoaded() then 1 else 0
if D2 == 1 then
    game.Loaded:Wait()
end
Players, DE, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, CollectionService, CT, LocalPlayer, CK = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local DS = game:GetService("ReplicatedStorage")
local DS_2
DE = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
CollectionService = game:GetService("CollectionService")
CT = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local DR = "OuroborosSpeedPlaneEscape"
local DR_2
CK = fns.fn346
if getgenv then
    getgenv().gethui = CK
end
Cw, DN, DG, State, Ds, DU_1, CU, DT_1, Cm, Cc, Dn, CY, CM, Cq = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local DQ = 40
repeat
    local DV_1 = (DQ * 5 + 2) % 6 + 1
    if DV_1 <= 3 then
        if DV_1 <= 2 then
            if DV_1 <= 1 then
                local DW_1 = (vector.create((DQ * 5 + 1) % 11 + 1, (DQ * 8 + 13) % 13 + 1, (DQ * 4 + 12) % 17 + 1))
                local DX_1 = (vector.create((DQ * 2 + 4) % 11 + 1, (DQ * 4 + 6) % 13 + 1, (DQ * 10 + 16) % 17 + 1))
                local DY_1 = (vector.create((DQ * 1 + 6) % 11 + 1, (DQ * 3 + 9) % 13 + 1, (DQ * 12 + 14) % 17 + 1))
                local DZ_1 = (vector.create((DQ * 6 + 6) % 11 + 1, (DQ * 9 + 1) % 13 + 1, (DQ * 13 + 9) % 17 + 1))
                if vector.dot(vector.cross(DW_1, DX_1), (vector.cross(DY_1, DZ_1))) == vector.dot(DW_1, DY_1) * vector.dot(DX_1, DZ_1) - vector.dot(DW_1, DZ_1) * vector.dot(DX_1, DY_1) then
                    Cw = DU_1(DR)
                else
                    DR = Cw(DU_1)
                end
                DQ = (DQ + 35) % 48
            else
                if (not DN and DN or not CY and DN) and (not DT_1 or not DT_1 or (not Cq or DT_1)) or not ((not DN and DN or not CY and DN) and (not DT_1 or not DT_1 or (not Cq or DT_1))) then
                    DT_1 = fns.fn468
                    Cm = fn812
                    Cc = fn1230
                    DN = DT_1(DS)
                    DG = DT_1(CT)
                else
                    DG = fns.fn468
                    DS = fn812
                    CT = fn1230
                    DT_1 = DG(Cc)
                    Cm = DG(DN)
                end
                DQ = (DQ + 23) % 48
            end
        else
            local DW_2 = { "ignopodsp", "igaqyiye", "uhrgiq", "aqvlgxppr", "pfzvc", "lzz", "aeqp", "dzk" }
            local Wd = DQ
            local DX_2 = DW_2[Wd % 8 + 1]
            if DX_2:len() >= DX_2:gsub("(.)", "%1%1", Wd % 3 % 2 + 1):len() then
                Cw = State.State
                Cw.WinStatus = "Idle"
                Cw.SpeedStatus = "Idle"
                Cw.RebirthStatus = "Idle"
                Cw.PlaneStatus = "Idle"
                Cw.MultiplierStatus = "Idle"
                Cw.TrailStatus = "Idle"
                Cw.WorldStatus = "Idle"
                Cw.MoveBusy = false
                Cw.WinsReserve = 0
                Cw.WinPadCache = {}
                Dn = {
                    progression = nil,
                    claimWin = nil,
                    multiplier = nil,
                    missing = {},
                    equipTrail = nil,
                    selectMultiplier = nil,
                    world = nil,
                    equipPlane = nil,
                    streamAround = nil,
                    ready = false,
                    treadmill = nil,
                    plane = nil,
                    client = nil,
                    trail = nil,
                    stage = nil,
                    travelWorld = nil,
                    buyTrail = nil,
                    rebirth = nil
                }
                Ds = fn826
            else
                State = Cw.State
                State.WinStatus = "Idle"
                State.SpeedStatus = "Idle"
                State.RebirthStatus = "Idle"
                State.PlaneStatus = "Idle"
                State.MultiplierStatus = "Idle"
                State.TrailStatus = "Idle"
                State.WorldStatus = "Idle"
                State.MoveBusy = false
                State.WinsReserve = 0
                State.WinPadCache = {}
                Ds = {
                    ready = false,
                    client = nil,
                    stage = nil,
                    plane = nil,
                    multiplier = nil,
                    trail = nil,
                    progression = nil,
                    world = nil,
                    treadmill = nil,
                    streamAround = nil,
                    claimWin = nil,
                    equipPlane = nil,
                    selectMultiplier = nil,
                    buyTrail = nil,
                    equipTrail = nil,
                    rebirth = nil,
                    travelWorld = nil,
                    missing = {}
                }
                Dn = fn826
            end
            DQ = (DQ + 11) % 48
        end
    elseif DV_1 <= 5 then
        if DV_1 <= 4 then
            local DV_2 = (vector.create((DQ * 3 + 3) % 11 + 1, (DQ * 9 + 7) % 13 + 1, (DQ * 15 + 3) % 17 + 1))
            local DW_3 = (vector.create((DQ * 1 + 2) % 11 + 1, (DQ * 3 + 2) % 13 + 1, (DQ * 6 + 9) % 17 + 1))
            local DX_3 = (vector.create((DQ * 4 + 7) % 5 + 1, (DQ * 1 + 2) % 7 + 1, (DQ * 1 + 4) % 9 + 1))
            if math.abs((vector.angle(DV_2, DW_3, DX_3))) - math.abs((vector.angle(DW_3, DV_2, DX_3))) == 5 then
                Cq = fn1209
                CY = fn993
                CM = fns.fn227
            else
                CY = fn1209
                CM = fn993
                Cq = fns.fn227
            end
            DQ = (DQ + 23) % 48
        else
            if (DQ * 1 + 4) * 17 % 4 == ((DQ * 1 + 4) * 17 + 4) % 4 then
                pcall(fn828)
                DU_1 = function(u)
                    local Ef
                    local Eg
                    local Ee
                    Ee = nil
                    Ef = nil
                    Eg = nil
                    local Eh = u ~= ""
                    local Ei = type(u) == "string" and Eh
                    assert(Ei, "A namespace is required")
                    assert(type(getgenv) == "function", "getgenv is unavailable")
                    Ef = getgenv()
                    assert(type(Ef) == "table", "getgenv did not return a table")
                    local Eh_2 = Ef[u]
                    if Eh_2 ~= nil then
                        local Ei_2 = type(Eh_2) == "table" and type(Eh_2.Unload) == "function"
                        assert(Ei_2, "Namespace is occupied")
                        Eh_2.Unload()
                        assert(Ef[u] == nil, "Previous instance did not release its namespace")
                    end
                    Eg = {}
                    Ee = { State = {}, Unloaded = false }
                    Ee.Track = function(A)
                        assert(type(A) == "function", "Cleanup must be callable")
                        if Ee.Unloaded then
                            A()
                        else
                            table.insert(Eg, A)
                        end
                        return A
                    end
                    Ee.Unload = function()
                        local D7_2
                        local D6_2
                        if Ee.Unloaded then
                            return
                        end
                        Ee.Unloaded = true
                        local D4 = {}
                        local Eb = #Eg
                        local Ea = -1
                        while false and Eb <= 1 or true and Eb >= 1 do
                            local Ec = Eb
                            local D5_2 = table.remove(Eg, Ec)
                            D6_2, D7_2 = pcall(D5_2)
                            if not D6_2 then
                                table.insert(D4, tostring(D7_2))
                            end
                            Eb += Ea
                        end
                        table.clear(Ee.State)
                        if #D4 > 0 then
                            error("Cleanup incomplete: " .. table.concat(D4, "; "), 0)
                        end
                        if Ef[u] == Ee then
                            Ef[u] = nil
                        end
                    end
                    Ef[u] = Ee
                    return Ee
                end
            else
                pcall(fn828)
                DG = function(u)
                    local Ef
                    local Eg
                    local Ee
                    Ee = nil
                    Ef = nil
                    Eg = nil
                    local Eh = u ~= ""
                    local Ei = type(u) == "string" and Eh
                    assert(Ei, "A namespace is required")
                    assert(type(getgenv) == "function", "getgenv is unavailable")
                    Ef = getgenv()
                    assert(type(Ef) == "table", "getgenv did not return a table")
                    local Eh_1 = Ef[u]
                    if Eh_1 ~= nil then
                        local Ei_1 = type(Eh_1) == "table" and type(Eh_1.Unload) == "function"
                        assert(Ei_1, "Namespace is occupied")
                        Eh_1.Unload()
                        assert(Ef[u] == nil, "Previous instance did not release its namespace")
                    end
                    Eg = {}
                    Ee = { State = {}, Unloaded = false }
                    Ee.Track = function(A)
                        assert(type(A) == "function", "Cleanup must be callable")
                        if Ee.Unloaded then
                            A()
                        else
                            table.insert(Eg, A)
                        end
                        return A
                    end
                    Ee.Unload = function()
                        local D7_1
                        local D6_1
                        if Ee.Unloaded then
                            return
                        end
                        Ee.Unloaded = true
                        local D4 = {}
                        local Eb = #Eg
                        local Ea = -1
                        while false and Eb <= 1 or true and Eb >= 1 do
                            local Ec = Eb
                            local D5_1 = table.remove(Eg, Ec)
                            D6_1, D7_1 = pcall(D5_1)
                            if not D6_1 then
                                table.insert(D4, tostring(D7_1))
                            end
                            Eb += Ea
                        end
                        table.clear(Ee.State)
                        if #D4 > 0 then
                            error("Cleanup incomplete: " .. table.concat(D4, "; "), 0)
                        end
                        if Ef[u] == Ee then
                            Ef[u] = nil
                        end
                    end
                    Ef[u] = Ee
                    return Ee
                end
            end
            DQ = (DQ + 5) % 48
        end
    else
        local DV_3 = { "kqcuurh", "ivwt", "jwle", "oeaelfjfg", "yduqwhhr", "olq", "fzvffmaqrbq", "nnypzhaj", "qzf" }
        if DV_3[(DQ * 90 + 112) % 9 + 1] < DV_3[(DQ * 90 + 112) % 9 + 1] then
            DN = function(N, O)
                local El = type(N) == "table" and type(N.Track) == "function"
                assert(El, "FeatureAPI required")
                local El_2 = type(O) == "table" and type(O.OnUnload) == "function"
                assert(El_2, "UI library required")
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
            CU = function(N, O)
                local El = type(N) == "table" and type(N.Track) == "function"
                assert(El, "FeatureAPI required")
                local El_1 = type(O) == "table" and type(O.OnUnload) == "function"
                assert(El_1, "UI library required")
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
        DQ = (DQ + 41) % 48
    end
until (DQ * 7 + 45) % 48 == 43
DX_4, DW_4 = nil, nil
local DV_4 = 0
repeat
    if (DV_4 * 1 + 1) % 2 + 1 <= 1 then
        if not DV_4 and DV_4 and (not DX_4 or DW_4) or (not DW_4 or DW_4) and (not DX_4 and DV_4) or not (not DV_4 and DV_4 and (not DX_4 or DW_4) or (not DW_4 or DW_4) and (not DX_4 and DV_4)) then
            DW_4 = os.clock() + 12
        else
            DX_4 = os.clock() + 12
        end
        DV_4 = (DV_4 + 3) % 8
    else
        if DV_4 * 41402031 + 3 + 6 >= DV_4 * 41402031 + 3 + 6 + 4 then
            DW_4 = task.spawn(fns.worker)
        else
            DX_4 = task.spawn(fns.worker)
        end
        DV_4 = (DV_4 + 1) % 8
    end
until (DV_4 * 5 + 4) % 8 == 0
while true do
    local DQ_2 = not Ds.ready and os.clock() < DW_4
    if DQ_2 then
        task.wait(0.05)
        continue
    end
    break
end
local DR_1 = nil
local DQ_3 = 6
repeat
    local DS_1 = {
        "wlrwyzrzl",
        "wthiwpizv",
        "nlewjjoq",
        "czdxfrnaz",
        "cusxdktytyqa",
        "enyyuf",
        "tbmnech",
        "ggfla",
        "dqadyrjy",
        "ahnvnaa",
        "voxbfzeuajg",
        "zsttax",
        "gnov",
        "bkqaipo",
        "aemnjp"
    }
    if DS_1[(DQ_3 * 71 + 70) % 15 + 1] < DS_1[(DQ_3 * 71 + 70) % 15 + 1] then
        DX_4 = coroutine.status(DR_1) ~= "dead"
    else
        DR_1 = coroutine.status(DX_4) ~= "dead"
    end
    DQ_3 = (DQ_3 + 2) % 8
until (DQ_3 * 7 + 5) % 8 == 5
if DR_1 then
    DR_1 = not Ds.ready
end
if DR_1 then
    Ds.ready = true
end
DL, connection, Ca, DP, DJ, DB, Du, Dp, Di, Db, DT_2, DU_2, Cg, DA, C7, Cz, Cj, C8, Cv, Dl, De, C2, CQ, Cl, DF, Dm, DR_2, Dz, CV, DH, CZ, Ci, Dg, CJ, Ck, Dj, CO, Cp, Ce, Dx, Dd, CG, DM, C4, CR, DO, CH, Cr, Cy, Ch, Cn, CX, CL, Da, CC, Dt, Cs, DC, C0, Cu, Df, Cd, Do, CF, Co, C6, CD, DD, CN, Dw, CI, Cf, DI, C_, Ct, CE, Dr, C5, Cx, DK, CS, CA, Cb, C3, CB, DS_2 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local DQ_4 = 300
repeat
    local DV_5 = (DQ_4 * 31 + 29) % 38 + 1
    if DV_5 <= 19 then
        if DV_5 <= 10 then
            if DV_5 <= 5 then
                if DV_5 <= 3 then
                    if DV_5 <= 2 then
                        if DV_5 <= 1 then
                            if DQ_4 * 115207031 + 13 + 5 >= DQ_4 * 115207031 + 13 + 5 + 1 then
                                CH = fns.fn722
                                Cr = fn950
                                CR = fn1397
                                DO = function(e7, e8)
                                    local HI = DM(e7, e8)
                                    local HI_10
                                    if HI then
                                        return HI.Position
                                    end
                                    local HI_6 = Dx(e7, e8)
                                    if HI_6 then
                                        return HI_6
                                    end
                                    local HI_7 = DP[e7]
                                    local HJ = HI_7 and e8 == HI_7.stage
                                    local HJ_8
                                    if HJ then
                                        local HJ_5 = HI_7.pad
                                        local HO = if HJ_5 then 1 else 0
                                        local HM = 1130 * HO + 2409 * (1 - HO)
                                        local HN = 3871 * HO + 3585 * (1 - HO)
                                        if not ((HM * 1684 + HN * 3649 + HM * HN) % 16777213 == 3625216) then
                                            HJ_5 = HI_7.near
                                        end
                                        return HJ_5
                                    end
                                    local HI_8 = Dd(e7, e8)
                                    local HJ_6 = HI_8 and HI_8:FindFirstChild("end_platform")
                                    local HH = HJ_6
                                    local HJ_7 = (C4(HH)) or C4(HI_8)
                                    if HJ_7 then
                                        return HJ_7.Position
                                    elseif HH then
                                        HI_10, HJ_8 = pcall(function()
                                            return HH:GetPivot()
                                        end)
                                        if HI_10 and HJ_8 and HJ_8.Position.Magnitude > 10 then
                                            return HJ_8.Position
                                        end
                                        return DO(e7, e8)
                                    else
                                        return DO(e7, e8)
                                    end
                                end
                            else
                                CR = fns.fn722
                                DO = fn950
                                CH = fn1397
                                Cr = function(e7, e8)
                                    local HI = DM(e7, e8)
                                    local HI_5
                                    if HI then
                                        return HI.Position
                                    end
                                    local HI_1 = Dx(e7, e8)
                                    if HI_1 then
                                        return HI_1
                                    end
                                    local HI_2 = DP[e7]
                                    local HJ = HI_2 and e8 == HI_2.stage
                                    local HJ_4
                                    if HJ then
                                        local HJ_1 = HI_2.pad
                                        local HO = if HJ_1 then 1 else 0
                                        local HM = 1130 * HO + 2409 * (1 - HO)
                                        local HN = 3871 * HO + 3585 * (1 - HO)
                                        if not ((HM * 1684 + HN * 3649 + HM * HN) % 16777213 == 3625216) then
                                            HJ_1 = HI_2.near
                                        end
                                        return HJ_1
                                    end
                                    local HI_3 = Dd(e7, e8)
                                    local HJ_2 = HI_3 and HI_3:FindFirstChild("end_platform")
                                    local HH = HJ_2
                                    local HJ_3 = (C4(HH)) or C4(HI_3)
                                    if HJ_3 then
                                        return HJ_3.Position
                                    elseif HH then
                                        HI_5, HJ_4 = pcall(function()
                                            return HH:GetPivot()
                                        end)
                                        if HI_5 and HJ_4 and HJ_4.Position.Magnitude > 10 then
                                            return HJ_4.Position
                                        end
                                        return DO(e7, e8)
                                    else
                                        return DO(e7, e8)
                                    end
                                end
                            end
                            DQ_4 = (DQ_4 + 217) % 304
                        else
                            local DW_5 = {
                                "sngeiozof",
                                "rcjqqamu",
                                "jxaqfbujmq",
                                "ymlgvblcb",
                                "exshw",
                                "lltqvl",
                                "xhzemi",
                                "wtosjw",
                                "uichaon",
                                "sudzisqus"
                            }
                            local VK = DQ_4
                            local DX_5 = DW_5[VK % 10 + 1]
                            if DX_5:len() <= DX_5:reverse():rep(VK % 3 + 2):len() then
                                Cy = fn1254
                            else
                                Cu = fn1254
                            end
                            DQ_4 = (DQ_4 + 141) % 304
                        end
                    else
                        local Vh = bit32.rrotate(bit32.bxor(bit32.lrotate(DQ_4, 14), string.byte(tostring(CQ))), 3)
                        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Vh, 3075985761), 1810929800), (bit32.bxor(bit32.band(Vh, 1218981534), 4080981686))), 1810929800), 4080981686) ~= Vh then
                            Cn = function()
                                local HX, HY, HZ, H_
                                local H1_2
                                if not Ds.claimWin then
                                    State.WinStatus = "Win remote unavailable"
                                    return
                                end
                                DF(nil)
                                HY, H_ = Cy()
                                CR(H_)
                                HX = Cj()
                                HZ = nil
                                local H0 = Ds.stage and Cm(Ds.stage.rewardForStage)
                                local H0_2
                                if H0 then
                                    H0_2, H1_2 = pcall(Ds.stage.rewardForStage, HY, H_)
                                    if H0_2 then
                                        HZ = tonumber(H1_2)
                                    end
                                end
                                DH(function()
                                    local HP = DP[H_]
                                    local HQ = Cr(H_, HY)
                                    if HP and HY == HP.stage then
                                        HQ = HP.near or HQ
                                    end
                                    if not HQ then
                                        local HR_9 = CM(DG, CJ(H_))
                                        local HS_6 = C4(HR_9)
                                        HQ = HS_6 and HS_6.Position or nil
                                    end
                                    State.WinStatus = string.format("Streaming world %d stage %d...", H_, HY)
                                    local HR_11 = CV(function()
                                        return DM(H_, HY)
                                    end, 12, HQ)
                                    local HS_8 = not Cc() or Ca.stopped
                                    if HS_8 then
                                        return
                                    end
                                    if HR_11 then
                                        Ce(H_, HY, HR_11.Position)
                                        Dz(HR_11.Position)
                                        Dm(HR_11.Position, 3)
                                        task.wait(0.25)
                                        local HS_9 = not Cc() or Ca.stopped
                                        if HS_9 then
                                            return
                                        end
                                        local HS_10 = (DM(H_, HY)) or HR_11
                                        if HS_10 then
                                            Dm(HS_10.Position, 3)
                                            Ce(H_, HY, HS_10.Position)
                                        end
                                    else
                                        if HP and HY == HP.stage and HP.pad then
                                            Dz(HP.pad)
                                            Dm(HP.pad, 3)
                                            Ce(H_, HY, HP.pad)
                                            task.wait(0.35)
                                        else
                                            if not HQ then
                                                State.WinStatus = string.format("World %d stage %d pad is not streamed in", H_, HY)
                                                return
                                            end
                                            Dz(HQ)
                                            Dm(HQ, 6)
                                            task.wait(0.35)
                                        end
                                    end
                                    local format = string.format
                                    local HQ_4 = HZ and " (+" .. Cg(HZ) .. ")"
                                    local HR_14 = HQ_4 or ""
                                    State.WinStatus = format("Claiming world %d stage %d%s", H_, HY, HR_14)
                                    pcall(function()
                                        Ds.claimWin:FireServer(H_, HY, Cp())
                                    end)
                                    local HP_4 = os.clock() + 2
                                    while true do
                                        local HQ_5 = (Cc()) and not Ca.stopped and Cj() == HX and os.clock() < HP_4
                                        if HQ_5 then
                                            local HQ_6 = DM(H_, HY)
                                            if HQ_6 then
                                                Dm(HQ_6.Position + Vector3.new(os.clock() % 0.3 - 0.15, 0, 0), 3)
                                            end
                                            task.wait(0.15)
                                            continue
                                        end
                                        break
                                    end
                                end)
                                if Cj() > HX then
                                    State.WinStatus = string.format("Claimed stage %d (%s wins)", HY, Cg(Cj()))
                                end
                            end
                            Ch = fns.fn127
                            CL = fn1133
                            CX = function()
                                local Iq
                                Iq = nil
                                Iq = {}
                                local function Ir(gW)
                                    local In = gW
                                    if In then
                                        local Io = (gW:IsA("Folder")) or gW:IsA("Model")
                                        In = Io
                                    end
                                    if In then
                                        table.insert(Iq, gW)
                                    end
                                end
                                local Is = Cz()
                                Ir(CM(DG, Ck(Is)))
                                local It = CM(DG, Dg(Is))
                                if It then
                                    for i, child in ipairs(It:GetChildren()) do
                                        local end_platform = child:FindFirstChild("end_platform")
                                        local It_2 = end_platform and end_platform:FindFirstChild("Treadmills")
                                        Ir(It_2)
                                    end
                                end
                                return Iq
                            end
                        else
                            Ch = function()
                                local HX, HY, HZ, H_
                                local H1_1
                                if not Ds.claimWin then
                                    State.WinStatus = "Win remote unavailable"
                                    return
                                end
                                DF(nil)
                                HY, H_ = Cy()
                                CR(H_)
                                HX = Cj()
                                HZ = nil
                                local H0 = Ds.stage and Cm(Ds.stage.rewardForStage)
                                local H0_1
                                if H0 then
                                    H0_1, H1_1 = pcall(Ds.stage.rewardForStage, HY, H_)
                                    if H0_1 then
                                        HZ = tonumber(H1_1)
                                    end
                                end
                                DH(function()
                                    local HP = DP[H_]
                                    local HQ = Cr(H_, HY)
                                    if HP and HY == HP.stage then
                                        HQ = HP.near or HQ
                                    end
                                    if not HQ then
                                        local HR_2 = CM(DG, CJ(H_))
                                        local HS_1 = C4(HR_2)
                                        HQ = HS_1 and HS_1.Position or nil
                                    end
                                    State.WinStatus = string.format("Streaming world %d stage %d...", H_, HY)
                                    local HR_4 = CV(function()
                                        return DM(H_, HY)
                                    end, 12, HQ)
                                    local HS_3 = not Cc() or Ca.stopped
                                    if HS_3 then
                                        return
                                    end
                                    if HR_4 then
                                        Ce(H_, HY, HR_4.Position)
                                        Dz(HR_4.Position)
                                        Dm(HR_4.Position, 3)
                                        task.wait(0.25)
                                        local HS_4 = not Cc() or Ca.stopped
                                        if HS_4 then
                                            return
                                        end
                                        local HS_5 = (DM(H_, HY)) or HR_4
                                        if HS_5 then
                                            Dm(HS_5.Position, 3)
                                            Ce(H_, HY, HS_5.Position)
                                        end
                                    else
                                        if HP and HY == HP.stage and HP.pad then
                                            Dz(HP.pad)
                                            Dm(HP.pad, 3)
                                            Ce(H_, HY, HP.pad)
                                            task.wait(0.35)
                                        else
                                            if not HQ then
                                                State.WinStatus = string.format("World %d stage %d pad is not streamed in", H_, HY)
                                                return
                                            end
                                            Dz(HQ)
                                            Dm(HQ, 6)
                                            task.wait(0.35)
                                        end
                                    end
                                    local format = string.format
                                    local HQ_1 = HZ and " (+" .. Cg(HZ) .. ")"
                                    local HR_7 = HQ_1 or ""
                                    State.WinStatus = format("Claiming world %d stage %d%s", H_, HY, HR_7)
                                    pcall(function()
                                        Ds.claimWin:FireServer(H_, HY, Cp())
                                    end)
                                    local HP_2 = os.clock() + 2
                                    while true do
                                        local HQ_2 = (Cc()) and not Ca.stopped and Cj() == HX and os.clock() < HP_2
                                        if HQ_2 then
                                            local HQ_3 = DM(H_, HY)
                                            if HQ_3 then
                                                Dm(HQ_3.Position + Vector3.new(os.clock() % 0.3 - 0.15, 0, 0), 3)
                                            end
                                            task.wait(0.15)
                                            continue
                                        end
                                        break
                                    end
                                end)
                                if Cj() > HX then
                                    State.WinStatus = string.format("Claimed stage %d (%s wins)", HY, Cg(Cj()))
                                end
                            end
                            Cn = fns.fn127
                            CX = fn1133
                            CL = function()
                                local Iq
                                Iq = nil
                                Iq = {}
                                local function Ir(gW)
                                    local In = gW
                                    if In then
                                        local Io = (gW:IsA("Folder")) or gW:IsA("Model")
                                        In = Io
                                    end
                                    if In then
                                        table.insert(Iq, gW)
                                    end
                                end
                                local Is = Cz()
                                Ir(CM(DG, Ck(Is)))
                                local It = CM(DG, Dg(Is))
                                if It then
                                    for i, child in ipairs(It:GetChildren()) do
                                        local end_platform = child:FindFirstChild("end_platform")
                                        local It_1 = end_platform and end_platform:FindFirstChild("Treadmills")
                                        Ir(It_1)
                                    end
                                end
                                return Iq
                            end
                        end
                        DQ_4 = (DQ_4 + 141) % 304
                    end
                elseif DV_5 <= 4 then
                    local DW_6 = (vector.create((DQ_4 * 5 + 8) % 11 + 1, (DQ_4 * 5 + 6) % 13 + 1, (DQ_4 * 1 + 5) % 17 + 1))
                    local DX_6 = (vector.create((DQ_4 * 5 + 3) % 11 + 1, (DQ_4 * 8 + 1) % 13 + 1, (DQ_4 * 8 + 12) % 17 + 1))
                    local U7 = vector.dot(DW_6, DX_6)
                    if U7 * U7 >= vector.dot(DW_6, DW_6) * vector.dot(DX_6, DX_6) + 1 then
                        CC = fn1242
                        Da = fn1118
                    else
                        Da = fn1242
                        CC = fn1118
                    end
                    DQ_4 = (DQ_4 + 217) % 304
                else
                    if (DQ_4 * 1 + 7) * 9 % 4 == ((DQ_4 * 1 + 7) * 9 + 12) % 4 then
                        Dt = fn965
                    else
                        CB = fn965
                    end
                    DQ_4 = (DQ_4 + 179) % 304
                end
            elseif DV_5 <= 8 then
                if DV_5 <= 7 then
                    if DV_5 <= 6 then
                        local DW_7 = { "nlh", "agmmwf", "wbu", "uzro", "cyhronfxfv", "cvlkcf", "fbzxjacjiml", "bxgomdie" }
                        local Uq = DQ_4
                        local DX_7 = DW_7[Uq % 8 + 1]
                        if DX_7:len() <= DX_7:reverse():rep(Uq % 3 + 2):len() then
                            Cs = fn1245
                            DC = fn1305
                            C0 = fn1149
                            Cu = function()
                                local JQ, JR, JS
                                JQ, JS, JR = C0()
                                JS = JS or 1
                                local JT_2 = C8()
                                DH(function()
                                    local JJ
                                    local JM_5
                                    local JL = JQ and CC(JQ)
                                    JJ, JM_5 = JL
                                    if JQ and not JM_5 then
                                        State.SpeedStatus = string.format("Streaming %s treadmill...", JQ.Name)
                                        local JL_9 = CM(DG, Ck(Cz()))
                                        local JN_4 = C4(JL_9)
                                        local function JL_10()
                                            local JG = Cs(JQ.Name)
                                            local JH = JG and Da(JG)
                                            return JH
                                        end
                                        local JN_5 = JN_4 and JN_4.Position or nil
                                        local JM_6 = CV(JL_10, 10, JN_5)
                                        if JM_6 then
                                            local JL_11 = (JM_6:FindFirstAncestorOfClass("Model")) or JQ
                                            JQ = JL_11
                                            JJ = select(1, CC(JQ))
                                        end
                                    end
                                    if not JJ then
                                        DF(nil)
                                        State.SpeedStatus = JR or "No unlocked treadmill streamed in"
                                        return
                                    end
                                    Dz(JJ.Position)
                                    DL = JJ
                                    local JK = Cl()
                                    if JK then
                                        pcall(function()
                                            JK.CFrame = JJ
                                            JK.AssemblyLinearVelocity = Vector3.zero
                                        end)
                                    end
                                    local format = string.format
                                    local JN_6 = JQ and JQ.Name or "?"
                                    State.SpeedStatus = format("%s x%s  speed %s", JN_6, tostring(JS), Cg(C8()))
                                    local JL_14 = os.clock() + math.max(0.4, DJ.interval)
                                    while true do
                                        local JM_8 = (Cc()) and not DJ.stopped and os.clock() < JL_14
                                        if JM_8 then
                                            task.wait(0.1)
                                            continue
                                        end
                                        break
                                    end
                                end)
                                if C8() > JT_2 then
                                    State.SpeedStatus = string.format("Speed %s", Cg(C8()))
                                end
                            end
                        else
                            C0 = fn1245
                            Cu = fn1305
                            Cs = fn1149
                            DC = function()
                                local JQ, JR, JS
                                JQ, JS, JR = C0()
                                JS = JS or 1
                                local JT_1 = C8()
                                DH(function()
                                    local JJ
                                    local JM_1
                                    local JL = JQ and CC(JQ)
                                    JJ, JM_1 = JL
                                    if JQ and not JM_1 then
                                        State.SpeedStatus = string.format("Streaming %s treadmill...", JQ.Name)
                                        local JL_2 = CM(DG, Ck(Cz()))
                                        local JN_1 = C4(JL_2)
                                        local function JL_3()
                                            local JG = Cs(JQ.Name)
                                            local JH = JG and Da(JG)
                                            return JH
                                        end
                                        local JN_2 = JN_1 and JN_1.Position or nil
                                        local JM_2 = CV(JL_3, 10, JN_2)
                                        if JM_2 then
                                            local JL_4 = (JM_2:FindFirstAncestorOfClass("Model")) or JQ
                                            JQ = JL_4
                                            JJ = select(1, CC(JQ))
                                        end
                                    end
                                    if not JJ then
                                        DF(nil)
                                        State.SpeedStatus = JR or "No unlocked treadmill streamed in"
                                        return
                                    end
                                    Dz(JJ.Position)
                                    DL = JJ
                                    local JK = Cl()
                                    if JK then
                                        pcall(function()
                                            JK.CFrame = JJ
                                            JK.AssemblyLinearVelocity = Vector3.zero
                                        end)
                                    end
                                    local format = string.format
                                    local JN_3 = JQ and JQ.Name or "?"
                                    State.SpeedStatus = format("%s x%s  speed %s", JN_3, tostring(JS), Cg(C8()))
                                    local JL_7 = os.clock() + math.max(0.4, DJ.interval)
                                    while true do
                                        local JM_4 = (Cc()) and not DJ.stopped and os.clock() < JL_7
                                        if JM_4 then
                                            task.wait(0.1)
                                            continue
                                        end
                                        break
                                    end
                                end)
                                if C8() > JT_1 then
                                    State.SpeedStatus = string.format("Speed %s", Cg(C8()))
                                end
                            end
                        end
                        DQ_4 = (DQ_4 + 293) % 304
                    else
                        if DQ_4 * 96277895 + 7 + 4 >= DQ_4 * 96277895 + 7 + 4 + 2 then
                            DA = fns.fn528
                        else
                            Df = fns.fn528
                        end
                        DQ_4 = (DQ_4 + 293) % 304
                    end
                else
                    local DW_8 = {
                        "wwbocwzl",
                        "tocqvn",
                        "prsvqofpdz",
                        "kwktjb",
                        "ueweqvrvffv",
                        "ltusrf",
                        "nwyriun",
                        "rpucxqxn",
                        "cqeefzvh",
                        "xnkvy",
                        "dubhchzzyy",
                        "dihccvd"
                    }
                    local Vk = DQ_4
                    local DX_8 = DW_8[Vk % 12 + 1]
                    if DX_8:len() >= DX_8:gsub("(.)", "%1%1", Vk % 3 % 2 + 1):len() then
                        Do = fn1167
                        Cd = fns.fn306
                    else
                        Cd = fn1167
                        Do = fns.fn306
                    end
                    DQ_4 = (DQ_4 + 141) % 304
                end
            elseif DV_5 <= 9 then
                local DW_9 = {
                    "cujqjmoi",
                    "jiseck",
                    "zwbuwkile",
                    "uzb",
                    "bzm",
                    "ldozhmtlnaf",
                    "lcheq",
                    "rxskjx",
                    "jsylzyrgpsn",
                    "kklbtebqss",
                    "tagcko"
                }
                local U6 = DQ_4
                local DX_9 = DW_9[U6 % 11 + 1]
                if DX_9:len() <= DX_9:gsub("(.)", "%1%1", U6 % 3 % 2 + 1):len() then
                    CF = fns.fn261
                else
                    DT_2 = fns.fn261
                end
                DQ_4 = (DQ_4 + 179) % 304
            else
                local DW_10 = (vector.create((DQ_4 * 7 + 3) % 11 + 1, (DQ_4 * 4 + 3) % 13 + 1, (DQ_4 * 10 + 9) % 17 + 1))
                local U3 = vector.floor(DW_10) + vector.ceil(DW_10 * -1)
                if vector.dot(U3, U3) == 0 then
                    Co = fn1340
                    C6 = fns.fn301
                    CD = fn1047
                    DD = fn1380
                else
                    DD = fn1340
                    CD = fns.fn301
                    C6 = fn1047
                    Co = fn1380
                end
                DQ_4 = (DQ_4 + 255) % 304
            end
        elseif DV_5 <= 15 then
            if DV_5 <= 13 then
                if DV_5 <= 12 then
                    if DV_5 <= 11 then
                        if (not Cj or not DS_2 or (DR_2 or not DR_2) or (not Cj or DR_2 or DS_2 and DS_2)) and ((Df or not Df) and (Cj or not DR_2) and (Df and not Cj or (not Da or Df))) or not ((not Cj or not DS_2 or (DR_2 or not DR_2) or (not Cj or DR_2 or DS_2 and DS_2)) and ((Df or not Df) and (Cj or not DR_2) and (Df and not Cj or (not Da or Df)))) then
                            CN = function(j7, j8, j9)
                                local Lb = Co(j7, j8)
                                if not Lb then
                                    local Lc = C4(j7)
                                    local function Ld()
                                        return Co(j7, j8)
                                    end
                                    local Le = j9
                                    local Lj = if Le then 1 else 0
                                    local Lh = 3105 * Lj + 1351 * (1 - Lj)
                                    local Li = 70 * Lj + 109 * (1 - Lj)
                                    if not ((Lh * 3850 + Li * 1897 + Lh * Li) % 16777213 == 12304390) then
                                        Le = 8
                                    end
                                    local Lc_2 = Lc and Lc.Position or nil
                                    Lb = CV(Ld, Le, Lc_2)
                                end
                                if not Lb then
                                    return false
                                end
                                Dz(Lb.Position)
                                Dm(Lb.Position, 3)
                                task.wait(0.25)
                                return true
                            end
                            Dw = function()
                                local Lz, LA, LD, LE
                                if not Ds.equipPlane then
                                    State.PlaneStatus = "Plane remote unavailable"
                                    return
                                end
                                DF(nil)
                                LD = Cz()
                                local LC = CD(LD)
                                if LC then
                                    local LF_14 = (tonumber(LC.cost))
                                    local LL = if LF_14 then 1 else 0
                                    local LJ = 3957 * LL + 1365 * (1 - LL)
                                    local LK = 1389 * LL + 2694 * (1 - LL)
                                    if not ((LJ * 3772 + LK * 2054 + LJ * LK) % 16777213 == 6497870) then
                                        LF_14 = 0
                                    end
                                    LE = LF_14
                                    if C2() < LE then
                                        local format = string.format
                                        local LG_13 = Cg(LE + De())
                                        local LH_4 = LC.modelName or LC.id
                                        State.PlaneStatus = format("Need %s wins for %s (have %s)", LG_13, LH_4, Cg(Cj()))
                                        local LB = DD(LD)
                                        local LF_16 = (C7("equippedPlane")) or ""
                                        local LG_14 = tostring(LF_16)
                                        local LF_17 = LB and LG_14 ~= tostring(LB.id)
                                        if LF_17 then
                                            pcall(function()
                                                Ds.equipPlane:FireServer(tostring(LB.id))
                                            end)
                                        end
                                        return
                                    end
                                    LA = C6(LD, LC.id)
                                    if not LA then
                                        local format = string.format
                                        local LG_15 = LC.modelName
                                        local LL_2 = if LG_15 then 1 else 0
                                        local LJ_2 = 3409 * LL_2 + 4092 * (1 - LL_2)
                                        local LK_2 = 737 * LL_2 + 2850 * (1 - LL_2)
                                        if not ((LJ_2 * 3064 + LK_2 * 2232 + LJ_2 * LK_2) % 16777213 == 14602593) then
                                            LG_15 = LC.id
                                        end
                                        State.PlaneStatus = format("Streaming %s pad...", LG_15)
                                        DH(function()
                                            local Lp = CM(DG, Dj(LD))
                                            local Lq = C4(Lp)
                                            local function Lp_2()
                                                LA = C6(LD, LC.id)
                                                local Ln = Ds.plane and Ds.plane.shop and Ds.plane.shop.padTag
                                                return Co(LA, Ln)
                                            end
                                            local Lq_2 = Lq and Lq.Position or nil
                                            CV(Lp_2, 10, Lq_2)
                                        end)
                                        LA = C6(LD, LC.id)
                                    end
                                    if not LA then
                                        local format = string.format
                                        local LG_16 = LC.modelName or LC.id
                                        State.PlaneStatus = format("%s pad is not streamed in", LG_16)
                                        return
                                    end
                                    local LF_20 = Cd()[tostring(LC.id)] == true
                                    DH(function()
                                        local format = string.format
                                        local Lu = LC.modelName or LC.id
                                        State.PlaneStatus = format("Buying %s (%s wins)", Lu, Cg(LE))
                                        local Lt_2 = Ds.plane and Ds.plane.shop and Ds.plane.shop.padTag
                                        if CN(LA, Lt_2, 8) then
                                            pcall(function()
                                                Ds.equipPlane:FireServer(tostring(LC.id))
                                            end)
                                            task.wait(0.45)
                                        end
                                    end)
                                    local LG_17 = not LF_20
                                    local LH_5 = Cd()[tostring(LC.id)] and LG_17
                                    if LH_5 then
                                        local format = string.format
                                        local LG_18 = LC.modelName or LC.id
                                        State.PlaneStatus = format("Bought %s", LG_18)
                                    end
                                    return
                                end
                                local LF_22 = nil
                                for i, v in ipairs(CF()) do
                                    local LG_19 = (tonumber(v.world)) or 1
                                    local LG_20 = LG_19 ~= LD and not Cd()[tostring(v.id)] and not v.robuxOnly and not v.rewardOnly
                                    if LG_20 then
                                        LF_22 = v
                                        break
                                    end
                                end
                                Lz = DD(LD)
                                if not Lz then
                                    State.PlaneStatus = LF_22 and "Need World 2 for next plane" or "No plane owned yet"
                                    return
                                end
                                local LF_24 = (C7("equippedPlane")) or ""
                                local LG_22 = tostring(LF_24)
                                if LG_22 == tostring(Lz.id) then
                                    local format = string.format
                                    local LG_23 = Lz.modelName
                                    local LU = if LG_23 then 1 else 0
                                    local LS = 928 * LU + 950 * (1 - LU)
                                    local LT = 1211 * LU + 167 * (1 - LU)
                                    if not ((LS * 1243 + LT * 650 + LS * LT) % 16777213 == 3064462) then
                                        LG_23 = Lz.id
                                    end
                                    State.PlaneStatus = format("Best equipped: %s", LG_23)
                                    return
                                end
                                DH(function()
                                    local Lw = C6(LD, Lz.id)
                                    if Lw then
                                        local Lx = Ds.plane and Ds.plane.shop and Ds.plane.shop.padTag
                                        CN(Lw, Lx, 6)
                                    end
                                    pcall(function()
                                        Ds.equipPlane:FireServer(tostring(Lz.id))
                                    end)
                                    task.wait(0.35)
                                end)
                                local format = string.format
                                local LG_24 = Lz.modelName or Lz.id
                                State.PlaneStatus = format("Equipped %s", LG_24)
                            end
                            CI = fn1490
                            Cf = fn932
                            DI = fn1016
                        else
                            Dw = function(j7, j8, j9)
                                local Lb = Co(j7, j8)
                                if not Lb then
                                    local Lc = C4(j7)
                                    local function Ld()
                                        return Co(j7, j8)
                                    end
                                    local Le = j9
                                    local Lj = if Le then 1 else 0
                                    local Lh = 3105 * Lj + 1351 * (1 - Lj)
                                    local Li = 70 * Lj + 109 * (1 - Lj)
                                    if not ((Lh * 3850 + Li * 1897 + Lh * Li) % 16777213 == 12304390) then
                                        Le = 8
                                    end
                                    local Lc_1 = Lc and Lc.Position or nil
                                    Lb = CV(Ld, Le, Lc_1)
                                end
                                if not Lb then
                                    return false
                                end
                                Dz(Lb.Position)
                                Dm(Lb.Position, 3)
                                task.wait(0.25)
                                return true
                            end
                            CI = function()
                                local Lz, LA, LD, LE
                                if not Ds.equipPlane then
                                    State.PlaneStatus = "Plane remote unavailable"
                                    return
                                end
                                DF(nil)
                                LD = Cz()
                                local LC = CD(LD)
                                if LC then
                                    local LF_1 = (tonumber(LC.cost))
                                    local LL = if LF_1 then 1 else 0
                                    local LJ = 3957 * LL + 1365 * (1 - LL)
                                    local LK = 1389 * LL + 2694 * (1 - LL)
                                    if not ((LJ * 3772 + LK * 2054 + LJ * LK) % 16777213 == 6497870) then
                                        LF_1 = 0
                                    end
                                    LE = LF_1
                                    if C2() < LE then
                                        local format = string.format
                                        local LG_1 = Cg(LE + De())
                                        local LH_1 = LC.modelName or LC.id
                                        State.PlaneStatus = format("Need %s wins for %s (have %s)", LG_1, LH_1, Cg(Cj()))
                                        local LB = DD(LD)
                                        local LF_3 = (C7("equippedPlane")) or ""
                                        local LG_2 = tostring(LF_3)
                                        local LF_4 = LB and LG_2 ~= tostring(LB.id)
                                        if LF_4 then
                                            pcall(function()
                                                Ds.equipPlane:FireServer(tostring(LB.id))
                                            end)
                                        end
                                        return
                                    end
                                    LA = C6(LD, LC.id)
                                    if not LA then
                                        local format = string.format
                                        local LG_3 = LC.modelName
                                        local LL_1 = if LG_3 then 1 else 0
                                        local LJ_1 = 3409 * LL_1 + 4092 * (1 - LL_1)
                                        local LK_1 = 737 * LL_1 + 2850 * (1 - LL_1)
                                        if not ((LJ_1 * 3064 + LK_1 * 2232 + LJ_1 * LK_1) % 16777213 == 14602593) then
                                            LG_3 = LC.id
                                        end
                                        State.PlaneStatus = format("Streaming %s pad...", LG_3)
                                        DH(function()
                                            local Lp = CM(DG, Dj(LD))
                                            local Lq = C4(Lp)
                                            local function Lp_1()
                                                LA = C6(LD, LC.id)
                                                local Ln = Ds.plane and Ds.plane.shop and Ds.plane.shop.padTag
                                                return Co(LA, Ln)
                                            end
                                            local Lq_1 = Lq and Lq.Position or nil
                                            CV(Lp_1, 10, Lq_1)
                                        end)
                                        LA = C6(LD, LC.id)
                                    end
                                    if not LA then
                                        local format = string.format
                                        local LG_4 = LC.modelName or LC.id
                                        State.PlaneStatus = format("%s pad is not streamed in", LG_4)
                                        return
                                    end
                                    local LF_7 = Cd()[tostring(LC.id)] == true
                                    DH(function()
                                        local format = string.format
                                        local Lu = LC.modelName or LC.id
                                        State.PlaneStatus = format("Buying %s (%s wins)", Lu, Cg(LE))
                                        local Lt_1 = Ds.plane and Ds.plane.shop and Ds.plane.shop.padTag
                                        if CN(LA, Lt_1, 8) then
                                            pcall(function()
                                                Ds.equipPlane:FireServer(tostring(LC.id))
                                            end)
                                            task.wait(0.45)
                                        end
                                    end)
                                    local LG_5 = not LF_7
                                    local LH_2 = Cd()[tostring(LC.id)] and LG_5
                                    if LH_2 then
                                        local format = string.format
                                        local LG_6 = LC.modelName or LC.id
                                        State.PlaneStatus = format("Bought %s", LG_6)
                                    end
                                    return
                                end
                                local LF_9 = nil
                                for i, v in ipairs(CF()) do
                                    local LG_7 = (tonumber(v.world)) or 1
                                    local LG_8 = LG_7 ~= LD and not Cd()[tostring(v.id)] and not v.robuxOnly and not v.rewardOnly
                                    if LG_8 then
                                        LF_9 = v
                                        break
                                    end
                                end
                                Lz = DD(LD)
                                if not Lz then
                                    State.PlaneStatus = LF_9 and "Need World 2 for next plane" or "No plane owned yet"
                                    return
                                end
                                local LF_11 = (C7("equippedPlane")) or ""
                                local LG_10 = tostring(LF_11)
                                if LG_10 == tostring(Lz.id) then
                                    local format = string.format
                                    local LG_11 = Lz.modelName
                                    local LU = if LG_11 then 1 else 0
                                    local LS = 928 * LU + 950 * (1 - LU)
                                    local LT = 1211 * LU + 167 * (1 - LU)
                                    if not ((LS * 1243 + LT * 650 + LS * LT) % 16777213 == 3064462) then
                                        LG_11 = Lz.id
                                    end
                                    State.PlaneStatus = format("Best equipped: %s", LG_11)
                                    return
                                end
                                DH(function()
                                    local Lw = C6(LD, Lz.id)
                                    if Lw then
                                        local Lx = Ds.plane and Ds.plane.shop and Ds.plane.shop.padTag
                                        CN(Lw, Lx, 6)
                                    end
                                    pcall(function()
                                        Ds.equipPlane:FireServer(tostring(Lz.id))
                                    end)
                                    task.wait(0.35)
                                end)
                                local format = string.format
                                local LG_12 = Lz.modelName or Lz.id
                                State.PlaneStatus = format("Equipped %s", LG_12)
                            end
                            CN = fn1490
                            DI = fn932
                            Cf = fn1016
                        end
                        DQ_4 = (DQ_4 + 141) % 304
                    else
                        local DW_11 = {
                            "ivbvmymhij",
                            "vtbitfph",
                            "dvcrfb",
                            "qhnvsu",
                            "skhl",
                            "gujp",
                            "njz",
                            "zkjnxolp",
                            "cuzhgocj",
                            "efqh",
                            "sdjcvqnuzxyo",
                            "rfa",
                            "yhghkuujptu"
                        }
                        if DW_11[(DQ_4 * 93 + 25) % 13 + 1] <= DW_11[(DQ_4 * 93 + 25) % 13 + 1] then
                            C_ = fns.fn486
                            Ct = fn974
                        else
                            Ct = fns.fn486
                            C_ = fn974
                        end
                        DQ_4 = (DQ_4 + 179) % 304
                    end
                else
                    local DW_12 = (vector.create((DQ_4 * 1 + 6) % 11 + 1, (DQ_4 * 10 + 2) % 13 + 1, (DQ_4 * 3 + 15) % 17 + 1))
                    local DX_10 = (vector.create((DQ_4 * 3 + 5) % 11 + 1, (DQ_4 * 8 + 11) % 13 + 1, (DQ_4 * 10 + 2) % 17 + 1))
                    local DY_2 = (vector.create((DQ_4 * 1 + 3) % 11 + 1, (DQ_4 * 2 + 8) % 13 + 1, (DQ_4 * 5 + 1) % 17 + 1))
                    if vector.dot(vector.cross(DW_12, DX_10), DY_2) == vector.dot(vector.cross(DX_10, DY_2), DW_12) then
                        CE = fns.fn692
                        Dr = function()
                            local Nc, Nd, Ne, Ng, Nh, Ni, Nj, Nk
                            local Nl_7
                            if not Ds.selectMultiplier then
                                State.MultiplierStatus = "Multiplier remote unavailable"
                                return
                            end
                            DF(nil)
                            Ne = Cz()
                            Nk, Ng, Nl_7 = Ct(Ne)
                            if Nk and Ng then
                                if not Nl_7 then
                                    local format = string.format
                                    local Nm_4 = Nk.multiplier or Ng
                                    State.MultiplierStatus = format("Need World 2 for %sx multiplier", tostring(Nm_4))
                                    return
                                end
                                local Nl_9 = (tonumber(Nk.winsCost)) or 0
                                Nd = Nl_9
                                local Nu = if C2() < Nd then 1 else 0
                                if Nu == 1 then
                                    local format = string.format
                                    local Nm_5 = Cg(Nd + De())
                                    local Nn = Nk.multiplier or Ng
                                    State.MultiplierStatus = format("Need %s wins for %sx (have %s)", Nm_5, tostring(Nn), Cg(Cj()))
                                    local Nf = CE(Ne)
                                    local Nl_11 = Nf > 0 and Cf() ~= Nf
                                    if Nl_11 then
                                        Nj = C_(Ne, Nf)
                                        DH(function()
                                            if Nj then
                                                CN(Nj, nil, 6)
                                            end
                                            pcall(function()
                                                Ds.selectMultiplier:FireServer(Nf, Ne)
                                            end)
                                        end)
                                    end
                                    return
                                end
                                Ni = C_(Ne, Ng)
                                if not Ni then
                                    State.MultiplierStatus = string.format("Streaming multiplier pad %d...", Ng)
                                    DH(function()
                                        local M1 = CM(DG, CO(Ne))
                                        local M2 = C4(M1)
                                        local function M1_2()
                                            Ni = C_(Ne, Ng)
                                            return Co(Ni)
                                        end
                                        local M2_2 = M2 and M2.Position or nil
                                        CV(M1_2, 10, M2_2)
                                    end)
                                    Ni = C_(Ne, Ng)
                                end
                                if not Ni then
                                    State.MultiplierStatus = string.format("Multiplier pad %d is not streamed in", Ng)
                                    return
                                end
                                DH(function()
                                    local M6 = Nk.multiplier or Ng
                                    State.MultiplierStatus = string.format("Buying %sx (%s wins)", tostring(M6), Cg(Nd))
                                    local Na = if CN(Ni, nil, 8) then 1 else 0
                                    if Na == 1 then
                                        pcall(function()
                                            Ds.selectMultiplier:FireServer(Ng, Ne)
                                        end)
                                        task.wait(0.45)
                                    end
                                end)
                                if CI()[Ng] then
                                    local format = string.format
                                    local Nm_6 = Nk.multiplier or Ng
                                    State.MultiplierStatus = format("Owned %sx", tostring(Nm_6))
                                end
                                return
                            end
                            Nh = CE(Ne)
                            if Nh <= 0 then
                                State.MultiplierStatus = "No multiplier owned yet"
                                return
                            end
                            if Cf() == Nh then
                                State.MultiplierStatus = string.format("Best equipped: tier %d", Nh)
                                return
                            end
                            Nc = C_(Ne, Nh)
                            DH(function()
                                if Nc then
                                    CN(Nc, nil, 6)
                                end
                                pcall(function()
                                    Ds.selectMultiplier:FireServer(Nh, Ne)
                                end)
                                task.wait(0.35)
                            end)
                            State.MultiplierStatus = string.format("Equipped tier %d", Nh)
                        end
                        Db = { "Blue", "Green", "Red", "Yellow", "Raimbow" }
                        C5 = fn858
                        Cx = fns.fn392
                    else
                        C5 = fns.fn692
                        CE = function()
                            local Nc, Nd, Ne, Ng, Nh, Ni, Nj, Nk
                            local Nl_1
                            if not Ds.selectMultiplier then
                                State.MultiplierStatus = "Multiplier remote unavailable"
                                return
                            end
                            DF(nil)
                            Ne = Cz()
                            Nk, Ng, Nl_1 = Ct(Ne)
                            if Nk and Ng then
                                if not Nl_1 then
                                    local format = string.format
                                    local Nm_1 = Nk.multiplier or Ng
                                    State.MultiplierStatus = format("Need World 2 for %sx multiplier", tostring(Nm_1))
                                    return
                                end
                                local Nl_3 = (tonumber(Nk.winsCost)) or 0
                                Nd = Nl_3
                                local Nu = if C2() < Nd then 1 else 0
                                if Nu == 1 then
                                    local format = string.format
                                    local Nm_2 = Cg(Nd + De())
                                    local Nn = Nk.multiplier or Ng
                                    State.MultiplierStatus = format("Need %s wins for %sx (have %s)", Nm_2, tostring(Nn), Cg(Cj()))
                                    local Nf = CE(Ne)
                                    local Nl_5 = Nf > 0 and Cf() ~= Nf
                                    if Nl_5 then
                                        Nj = C_(Ne, Nf)
                                        DH(function()
                                            if Nj then
                                                CN(Nj, nil, 6)
                                            end
                                            pcall(function()
                                                Ds.selectMultiplier:FireServer(Nf, Ne)
                                            end)
                                        end)
                                    end
                                    return
                                end
                                Ni = C_(Ne, Ng)
                                if not Ni then
                                    State.MultiplierStatus = string.format("Streaming multiplier pad %d...", Ng)
                                    DH(function()
                                        local M1 = CM(DG, CO(Ne))
                                        local M2 = C4(M1)
                                        local function M1_1()
                                            Ni = C_(Ne, Ng)
                                            return Co(Ni)
                                        end
                                        local M2_1 = M2 and M2.Position or nil
                                        CV(M1_1, 10, M2_1)
                                    end)
                                    Ni = C_(Ne, Ng)
                                end
                                if not Ni then
                                    State.MultiplierStatus = string.format("Multiplier pad %d is not streamed in", Ng)
                                    return
                                end
                                DH(function()
                                    local M6 = Nk.multiplier or Ng
                                    State.MultiplierStatus = string.format("Buying %sx (%s wins)", tostring(M6), Cg(Nd))
                                    local Na = if CN(Ni, nil, 8) then 1 else 0
                                    if Na == 1 then
                                        pcall(function()
                                            Ds.selectMultiplier:FireServer(Ng, Ne)
                                        end)
                                        task.wait(0.45)
                                    end
                                end)
                                if CI()[Ng] then
                                    local format = string.format
                                    local Nm_3 = Nk.multiplier or Ng
                                    State.MultiplierStatus = format("Owned %sx", tostring(Nm_3))
                                end
                                return
                            end
                            Nh = CE(Ne)
                            if Nh <= 0 then
                                State.MultiplierStatus = "No multiplier owned yet"
                                return
                            end
                            if Cf() == Nh then
                                State.MultiplierStatus = string.format("Best equipped: tier %d", Nh)
                                return
                            end
                            Nc = C_(Ne, Nh)
                            DH(function()
                                if Nc then
                                    CN(Nc, nil, 6)
                                end
                                pcall(function()
                                    Ds.selectMultiplier:FireServer(Nh, Ne)
                                end)
                                task.wait(0.35)
                            end)
                            State.MultiplierStatus = string.format("Equipped tier %d", Nh)
                        end
                        Cx = { "Blue", "Yellow", "Red", "Raimbow", "Green" }
                        Db = fn858
                        Dr = fns.fn392
                    end
                    DQ_4 = (DQ_4 + 65) % 304
                end
            elseif DV_5 <= 14 then
                local Vm = bit32.rrotate(bit32.bxor(bit32.lrotate(DQ_4, 2), string.byte(tostring(DT_2))), 4)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Vm, 3994275997), 3032622255), (bit32.bxor(bit32.band(Vm, 300691298), 4167080990))), 3032622255), 4167080990) == Vm then
                    DK = fns.fn719
                    CS = fn836
                else
                    CS = fns.fn719
                    DK = fn836
                end
                DQ_4 = (DQ_4 + 141) % 304
            else
                local DW_13 = (vector.create((DQ_4 * 1 + 2) % 11 + 1, (DQ_4 * 11 + 12) % 13 + 1, (DQ_4 * 8 + 11) % 17 + 1))
                local DX_11 = (vector.create((DQ_4 * 2 + 1) % 11 + 1, (DQ_4 * 3 + 12) % 13 + 1, (DQ_4 * 8 + 11) % 17 + 1))
                local Va = vector.dot(DW_13, DX_11)
                if Va * Va <= vector.dot(DW_13, DW_13) * vector.dot(DX_11, DX_11) then
                    CA = fns.fn664
                    Cb = function()
                        local Oo
                        if not Ds.buyTrail or not Ds.equipTrail then
                            State.TrailStatus = "Trail remotes unavailable"
                            return
                        end
                        local On = CS()
                        if On then
                            local Op_12 = (tonumber(On.winsCost)) or 0
                            if C2() < Op_12 then
                                local format = string.format
                                local Or_6 = Cg(Op_12 + De())
                                local Os_3 = On.name or On.id
                                State.TrailStatus = format("Need %s wins for %s (have %s)", Or_6, Os_3, Cg(Cj()))
                                local Om = CA()
                                local Or_7 = Ds.trail and Ds.trail.equippedPath
                                local Ow_3 = if Or_7 then 1 else 0
                                local Ou_3 = 248 * Ow_3 + 3491 * (1 - Ow_3)
                                local Ov_3 = 1549 * Ow_3 + 3393 * (1 - Ow_3)
                                if not ((Ou_3 * 219 + Ov_3 * 2743 + Ou_3 * Ov_3) % 16777213 == 4687371) then
                                    Or_7 = "equippedTrail"
                                end
                                local Op_15 = (C7(Or_7)) or ""
                                local Or_8 = tostring(Op_15)
                                if Om and Or_8 ~= Om.id then
                                    pcall(function()
                                        Ds.equipTrail:FireServer(Om.id)
                                    end)
                                end
                                return
                            end
                            local Op_17 = C5()[On.id] == true
                            local format2 = string.format
                            local Os_4 = On.name or On.id
                            State.TrailStatus = format2("Buying %s (%s wins)", Os_4, Cg(Op_12))
                            pcall(function()
                                Ds.buyTrail:FireServer(On.id)
                            end)
                            task.wait(0.4)
                            local Oq_9 = not Op_17
                            local Or_10 = C5()[On.id] and Oq_9
                            if Or_10 then
                                pcall(function()
                                    Ds.equipTrail:FireServer(On.id)
                                end)
                                local format = string.format
                                local Oq_10 = On.name
                                local Ow_4 = if Oq_10 then 1 else 0
                                local Ou_4 = 1430 * Ow_4 + 487 * (1 - Ow_4)
                                local Ov_4 = 2140 * Ow_4 + 1879 * (1 - Ow_4)
                                if not ((Ou_4 * 3770 + Ov_4 * 916 + Ou_4 * Ov_4) % 16777213 == 10411540) then
                                    Oq_10 = On.id
                                end
                                State.TrailStatus = format("Bought %s", Oq_10)
                            end
                            return
                        end
                        Oo = CA()
                        if not Oo then
                            State.TrailStatus = "No win trail owned yet"
                            return
                        end
                        local Oq_11 = Ds.trail and Ds.trail.equippedPath or "equippedTrail"
                        local Op_20 = (C7(Oq_11)) or ""
                        local Oq_12 = tostring(Op_20)
                        if Oq_12 == Oo.id then
                            local format = string.format
                            local Oq_13 = Oo.name or Oo.id
                            State.TrailStatus = format("Best equipped: %s", Oq_13)
                            return
                        end
                        pcall(function()
                            Ds.equipTrail:FireServer(Oo.id)
                        end)
                        task.wait(0.3)
                        local format = string.format
                        local Oq_14 = Oo.name
                        local Oz = if Oq_14 then 1 else 0
                        local Ox = 1521 * Oz + 1355 * (1 - Oz)
                        local Oy = 2673 * Oz + 2907 * (1 - Oz)
                        if not ((Ox * 111 + Oy * 3821 + Ox * Oy) % 16777213 == 14447997) then
                            Oq_14 = Oo.id
                        end
                        State.TrailStatus = format("Equipped %s", Oq_14)
                    end
                else
                    Cb = fns.fn664
                    CA = function()
                        local Oo
                        if not Ds.buyTrail or not Ds.equipTrail then
                            State.TrailStatus = "Trail remotes unavailable"
                            return
                        end
                        local On = CS()
                        if On then
                            local Op_1 = (tonumber(On.winsCost)) or 0
                            if C2() < Op_1 then
                                local format = string.format
                                local Or_1 = Cg(Op_1 + De())
                                local Os_1 = On.name or On.id
                                State.TrailStatus = format("Need %s wins for %s (have %s)", Or_1, Os_1, Cg(Cj()))
                                local Om = CA()
                                local Or_2 = Ds.trail and Ds.trail.equippedPath
                                local Ow_1 = if Or_2 then 1 else 0
                                local Ou_1 = 248 * Ow_1 + 3491 * (1 - Ow_1)
                                local Ov_1 = 1549 * Ow_1 + 3393 * (1 - Ow_1)
                                if not ((Ou_1 * 219 + Ov_1 * 2743 + Ou_1 * Ov_1) % 16777213 == 4687371) then
                                    Or_2 = "equippedTrail"
                                end
                                local Op_4 = (C7(Or_2)) or ""
                                local Or_3 = tostring(Op_4)
                                if Om and Or_3 ~= Om.id then
                                    pcall(function()
                                        Ds.equipTrail:FireServer(Om.id)
                                    end)
                                end
                                return
                            end
                            local Op_6 = C5()[On.id] == true
                            local format2 = string.format
                            local Os_2 = On.name or On.id
                            State.TrailStatus = format2("Buying %s (%s wins)", Os_2, Cg(Op_1))
                            pcall(function()
                                Ds.buyTrail:FireServer(On.id)
                            end)
                            task.wait(0.4)
                            local Oq_2 = not Op_6
                            local Or_5 = C5()[On.id] and Oq_2
                            if Or_5 then
                                pcall(function()
                                    Ds.equipTrail:FireServer(On.id)
                                end)
                                local format = string.format
                                local Oq_3 = On.name
                                local Ow_2 = if Oq_3 then 1 else 0
                                local Ou_2 = 1430 * Ow_2 + 487 * (1 - Ow_2)
                                local Ov_2 = 2140 * Ow_2 + 1879 * (1 - Ow_2)
                                if not ((Ou_2 * 3770 + Ov_2 * 916 + Ou_2 * Ov_2) % 16777213 == 10411540) then
                                    Oq_3 = On.id
                                end
                                State.TrailStatus = format("Bought %s", Oq_3)
                            end
                            return
                        end
                        Oo = CA()
                        if not Oo then
                            State.TrailStatus = "No win trail owned yet"
                            return
                        end
                        local Oq_4 = Ds.trail and Ds.trail.equippedPath or "equippedTrail"
                        local Op_9 = (C7(Oq_4)) or ""
                        local Oq_5 = tostring(Op_9)
                        if Oq_5 == Oo.id then
                            local format = string.format
                            local Oq_6 = Oo.name or Oo.id
                            State.TrailStatus = format("Best equipped: %s", Oq_6)
                            return
                        end
                        pcall(function()
                            Ds.equipTrail:FireServer(Oo.id)
                        end)
                        task.wait(0.3)
                        local format = string.format
                        local Oq_7 = Oo.name
                        local Oz = if Oq_7 then 1 else 0
                        local Ox = 1521 * Oz + 1355 * (1 - Oz)
                        local Oy = 2673 * Oz + 2907 * (1 - Oz)
                        if not ((Ox * 111 + Oy * 3821 + Ox * Oy) % 16777213 == 14447997) then
                            Oq_7 = Oo.id
                        end
                        State.TrailStatus = format("Equipped %s", Oq_7)
                    end
                end
                DQ_4 = (DQ_4 + 141) % 304
            end
        elseif DV_5 <= 17 then
            if DV_5 <= 16 then
                local DW_14 = {
                    "aqpstpspa",
                    "tgxd",
                    "abyqdvyd",
                    "arvrkunr",
                    "uvkqkdxja",
                    "aadkoiiho",
                    "dsyrjytg",
                    "esnad",
                    "bgmy",
                    "dfrcaq",
                    "ugz"
                }
                local U4 = DQ_4
                local DX_12 = DW_14[U4 % 11 + 1]
                if DX_12:len() <= DX_12:gsub("(.)", "%1%1", U4 % 3 % 2 + 1):len() then
                    C3 = fns.fn212
                else
                    Dp = fns.fn212
                end
                DQ_4 = (DQ_4 + 255) % 304
            else
                local DW_15 = (vector.create((DQ_4 * 4 + 8) % 11 + 1, (DQ_4 * 2 + 4) % 13 + 1, (DQ_4 * 15 + 5) % 17 + 1))
                local DX_13 = (vector.create((DQ_4 * 2 + 8) % 11 + 1, (DQ_4 * 7 + 2) % 13 + 1, (DQ_4 * 14 + 6) % 17 + 1))
                local DY_3 = (vector.create((DQ_4 * 5 + 2) % 11 + 1, (DQ_4 * 2 + 12) % 13 + 1, (DQ_4 * 12 + 9) % 17 + 1))
                local DZ_2 = (vector.create((DQ_4 * 6 + 8) % 11 + 1, (DQ_4 * 3 + 9) % 13 + 1, (DQ_4 * 5 + 7) % 17 + 1))
                if vector.dot(vector.cross(DW_15, DX_13), (vector.cross(DY_3, DZ_2))) == vector.dot(DW_15, DY_3) * vector.dot(DX_13, DZ_2) - vector.dot(DW_15, DZ_2) * vector.dot(DX_13, DY_3) + 4 then
                    Ck = function(o9)
                        if not Ds.travelWorld then
                            State.WorldStatus = "World remote unavailable"
                            return
                        end
                        DF(nil)
                        o9 = tonumber(o9)
                        if Cz() == o9 then
                            State.WorldStatus = string.format("Already in World %d", o9)
                            return
                        end
                        if not C3(o9) then
                            local OF_5 = Ds.world and Ds.world.requiredLevels and Ds.world.requiredLevels[o9]
                            local OF_6 = type(OF_5) == "number" and OF_5 > 0
                            if OF_6 then
                                State.WorldStatus = string.format("Reach level %d to unlock World %d", OF_5, o9)
                            else
                                State.WorldStatus = string.format("World %d is locked", o9)
                            end
                            return
                        end
                        DF(nil)
                        State.WorldStatus = string.format("Traveling to World %d...", o9)
                        pcall(function()
                            Ds.travelWorld:FireServer(o9)
                        end)
                        local OF_7 = os.clock() + 12
                        while true do
                            local OG_5 = (Cc()) and Cz() ~= o9 and os.clock() < OF_7
                            if OG_5 then
                                task.wait(0.2)
                                continue
                            end
                            break
                        end
                        if Cz() == o9 then
                            local OF_8 = CM(DG, CJ(o9))
                            local OG_6 = C4(OF_8)
                            if OG_6 then
                                Dz(OG_6.Position)
                            end
                            State.WorldStatus = string.format("Arrived in World %d", o9)
                        else
                            State.WorldStatus = string.format("World %d travel did not complete", o9)
                        end
                    end
                else
                    CB = function(o9)
                        if not Ds.travelWorld then
                            State.WorldStatus = "World remote unavailable"
                            return
                        end
                        DF(nil)
                        o9 = tonumber(o9)
                        if Cz() == o9 then
                            State.WorldStatus = string.format("Already in World %d", o9)
                            return
                        end
                        if not C3(o9) then
                            local OF_1 = Ds.world and Ds.world.requiredLevels and Ds.world.requiredLevels[o9]
                            local OF_2 = type(OF_1) == "number" and OF_1 > 0
                            if OF_2 then
                                State.WorldStatus = string.format("Reach level %d to unlock World %d", OF_1, o9)
                            else
                                State.WorldStatus = string.format("World %d is locked", o9)
                            end
                            return
                        end
                        DF(nil)
                        State.WorldStatus = string.format("Traveling to World %d...", o9)
                        pcall(function()
                            Ds.travelWorld:FireServer(o9)
                        end)
                        local OF_3 = os.clock() + 12
                        while true do
                            local OG_2 = (Cc()) and Cz() ~= o9 and os.clock() < OF_3
                            if OG_2 then
                                task.wait(0.2)
                                continue
                            end
                            break
                        end
                        if Cz() == o9 then
                            local OF_4 = CM(DG, CJ(o9))
                            local OG_3 = C4(OF_4)
                            if OG_3 then
                                Dz(OG_3.Position)
                            end
                            State.WorldStatus = string.format("Arrived in World %d", o9)
                        else
                            State.WorldStatus = string.format("World %d travel did not complete", o9)
                        end
                    end
                end
                DQ_4 = (DQ_4 + 65) % 304
            end
        elseif DV_5 <= 18 then
            if (DQ_4 * 2 + 6) * 10 % 3 == ((DQ_4 * 2 + 6) * 10 + 4) % 3 then
                Di.SetEnabled = fns.fn368
                DS_2.SetBelt = fn1119
                DS_2.SetEnabled = fns.fn611
                DJ.SetEnabled = fn1357
                DB.SetEnabled = fn820
                Du.SetEnabled = fn1493
                Dp.SetEnabled = fns.fn405
                Ca.Track(fns.fn579)
                Cw = function()
                    local Tk
                    local onDiscord
                    local To
                    Tk = nil
                    To = nil
                    onDiscord = nil
                    local Ti, Tj, Library, Toggles, Tn, Tp, SaveManager, Ts, ThemeManager, Options
                    To = "https://discord.gg/synapsex"
                    Tj = "https://rscripts.net/@Ouroboros"
                    Ti = "+1 Speed Plane Escape"
                    local Tw = "v0.4"
                    Ts = "https://ouroboros-hub-rbx.web.app/"
                    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
                    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
                    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
                    Toggles = Library.Toggles
                    Options = Library.Options
                    CU(Cw, Library)
                    local Tv = #Ds.missing > 0 and "missing: " .. table.concat(Ds.missing, ", ")
                    local Tx = Tv or "bindings ready"
                    local Tv_9 = {}
                    local Tx_4 = (Cm(LocalPlayer.RequestStreamAroundAsync))
                    local TD = if Tx_4 then 1 else 0
                    local TB = 1458 * TD + 1776 * (1 - TD)
                    local TC = 1837 * TD + 113 * (1 - TD)
                    if not ((TB * 2932 + TC * 3364 + TB * TC) % 16777213 == 13132870) then
                        local Tz = Ds.streamAround and Cm(Ds.streamAround.Prepare)
                        Tx_4 = Tz
                    end
                    if Tx_4 then
                        table.insert(Tv_9, "stream")
                    end
                    local Tx_5 = (Cm(setclipboard)) or Cm(toclipboard)
                    if Tx_5 then
                        table.insert(Tv_9, "clipboard")
                    end
                    local Tx_6 = #Tv_9 > 0 and table.concat(Tv_9, "+")
                    Tp = (Tx_6 or "basic") .. " | " .. Tx
                    Tk = function(qB, qC)
                        local OV = (Cm(setclipboard)) and setclipboard
                        local OW = OV
                        if not OW then
                            local OV_3 = (Cm(toclipboard)) and toclipboard
                            OW = OV_3 or nil
                        end
                        local OV_4 = OW
                        if not OV_4 then
                            Library:Notify("Clipboard is unavailable")
                            return
                        end
                        local OW_2 = pcall(OV_4, qB)
                        if OW_2 then
                            Library:Notify(qC)
                        else
                            Library:Notify("Failed to copy")
                        end
                    end
                    onDiscord = function()
                        Tk(To, "Copied Discord invite to clipboard")
                    end
                    local Window = Library:CreateWindow({
                        Title = "Ouroboros",
                        Font = Enum.Font.BuilderSans,
                        Footer = { { Text = To, Copyable = true }, "|", Ti, "|", Tw },
                        Icon = 78539693571783,
                        NotifySide = "Right",
                        ShowCustomCursor = false,
                        CornerRadius = 0,
                        SidebarCompacted = true,
                        TabSwipeFrom = "bottom",
                        Animations = { TabSwitch = true }
                    })
                    Window:SetGlow(false)
                    Tn = {
                        Info = Window:AddTab("Info", "info"),
                        Main = Window:AddTab("Main", "gamepad-2"),
                        Player = Window:AddTab("Player", "person-standing"),
                        Settings = Window:AddTab("Settings", "settings")
                    }
                    local function Tv_12(qP)
                        local DiscordGroup = qP:AddLeftGroupbox("Discord")
                        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
                        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
                    end
                    for k, v in Tn do
                        if k ~= "Info" then
                            Tv_12(v)
                        end
                    end
                    local function Tw_2()
                        local Po
                        local Pd
                        local Pk
                        local Pg
                        local Pj
                        Pd = nil
                        Pg = nil
                        Pj = nil
                        Pk = nil
                        Po = nil
                        local Pe, Label, Ph, Pi, Pl, Label2, Label3, Pp
                        Pk = function(qW)
                            return (tostring(qW):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
                        end
                        Pj = function(qY, qZ)
                            return string.format('<font color="%s">%s</font>', qZ, Pk(qY))
                        end
                        Pp = function(q1, q2, q3)
                            return string.format("<b>%s</b> %s %s", q1, Pj("-", "#5a6070"), Pj(q2, q3))
                        end
                        Pd = "Unknown"
                        local Pq = "#8b93a3"
                        Pl = "#7fd47f"
                        Pi = "#e8a34d"
                        pcall(function()
                            local O2_2
                            local O1_3
                            if type(identifyexecutor) == "function" then
                                O2_2, O1_3 = identifyexecutor()
                                local O3 = O2_2 ~= ""
                                local O4 = type(O2_2) == "string" and O3
                                if O4 then
                                    local O3_2 = type(O1_3) == "string" and O1_3 ~= "" and O2_2 .. " " .. O1_3
                                    Pd = O3_2 or O2_2
                                end
                            end
                        end)
                        Po = os.clock()
                        Ph = function()
                            local O6 = math.floor(os.clock() - Po)
                            if O6 < 60 then
                                return O6 .. "s"
                            elseif O6 < 3600 then
                                return string.format("%dm %ds", O6 // 60, O6 % 60)
                            else
                                return string.format("%dh %dm", O6 // 3600, O6 % 3600 // 60)
                            end
                        end
                        local UserGroup = Tn.Info:AddLeftGroupbox("User", "circle-user")
                        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
                        UserGroup:AddLabel(Pp("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Pl), true)
                        UserGroup:AddLabel(Pp("UserId", tostring(LocalPlayer.UserId), "#6ec1ff"), true)
                        UserGroup:AddLabel(Pp("Executor", Pd .. "  " .. Tp, Pl), true)
                        UserGroup:AddDivider()
                        Label3 = UserGroup:AddLabel(Pp("Session", Ph(), Pi), true)
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
                        local SessionGroup = Tn.Info:AddRightGroupbox("Session", "signal")
                        SessionGroup:AddLabel(Pp("Game", Ti, "#6ec1ff"), true)
                        Label2 = SessionGroup:AddLabel(Pp("Players", "0/0", Pl), true)
                        Pe = tostring(game.JobId)
                        local Pr = #Pe > 18 and string.sub(Pe, 1, 18) .. "..."
                        local Pr_2 = Pr or Pe
                        SessionGroup:AddLabel(Pp("Job", Pr_2, Pq), true)
                        Label = SessionGroup:AddLabel(Pp("Ping", "0 ms", Pi), true)
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
                                Tk(Pe, "Copied Job ID")
                            end
                        })
                        Pg = task.spawn(function()
                            local O9_2
                            local O8_3
                            while true do
                                task.wait(1)
                                if Library.Unloaded then
                                    break
                                end
                                Label3:SetText(Pp("Session", Ph(), Pi))
                                Label2:SetText(Pp("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Pl))
                                O8_3, O9_2 = pcall(function()
                                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                                end)
                                local O8_4 = O8_3 and O9_2 .. " ms" or "n/a"
                                Label:SetText(Pp("Ping", O8_4, Pi))
                            end
                        end)
                        Cw.Track(function()
                            if coroutine.status(Pg) ~= "dead" then
                                task.cancel(Pg)
                            end
                        end)
                        local SocialsGroup = Tn.Info:AddRightGroupbox("Socials", "link")
                        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
                        SocialsGroup:AddButton({
                            Text = "Rscripts",
                            Func = function()
                                Tk(Tj, "Copied Rscripts profile")
                            end
                        })
                        SocialsGroup:AddButton({
                            Text = "Website",
                            Func = function()
                                Tk(Ts, "Copied website link")
                            end
                        })
                    end
                    Tw_2()
                    local function Tv_13()
                        local PN
                        PN = nil
                        local Label7, Label, Label2, Label5, Label3, PM, Label4, PP, Label6
                        PM = { "Best Unlocked" }
                        PP = false
                        task.spawn(function()
                            local Pw_2
                            local Pv_2
                            Pv_2, Pw_2 = pcall(Dt)
                            local Px = Pv_2 and type(Pw_2) == "table"
                            if Px then
                                for i, v in ipairs(Pw_2) do
                                    table.insert(PM, v.Name)
                                end
                            end
                            PP = true
                        end)
                        local PR = os.clock() + 4
                        while true do
                            local PS = not PP and os.clock() < PR
                            if PS then
                                task.wait(0.05)
                                continue
                            end
                            break
                        end
                        local AutoFarmGroup = Tn.Main:AddLeftGroupbox("Auto Farm", "trophy")
                        Label7 = AutoFarmGroup:AddLabel(State.WinStatus, true)
                        AutoFarmGroup:AddDivider()
                        AutoFarmGroup:AddToggle("AutoWin", {
                            Text = "Auto Win Stages",
                            Default = false,
                            Callback = function(so)
                                Ca.SetEnabled(so)
                            end
                        })
                        Label6 = AutoFarmGroup:AddLabel(State.SpeedStatus, true)
                        AutoFarmGroup:AddToggle("AutoSpeed", {
                            Text = "Auto Earn Speed",
                            Default = false,
                            Callback = function(st)
                                DJ.SetEnabled(st)
                            end
                        })
                        AutoFarmGroup:AddDropdown("TreadmillBelt", {
                            Text = "Treadmill",
                            Values = PM,
                            Default = PM[1],
                            Multi = false,
                            AllowNull = false,
                            Callback = function(sx)
                                DJ.SetBelt(sx)
                            end
                        })
                        Label5 = AutoFarmGroup:AddLabel(State.RebirthStatus, true)
                        AutoFarmGroup:AddToggle("AutoRebirth", {
                            Text = "Auto Rebirth",
                            Default = false,
                            Callback = function(sA)
                                DB.SetEnabled(sA)
                            end
                        })
                        local Plane_MultiplierGroup = Tn.Main:AddRightGroupbox("Plane & Multiplier", "plane")
                        Label4 = Plane_MultiplierGroup:AddLabel(State.PlaneStatus, true)
                        Plane_MultiplierGroup:AddDivider()
                        Plane_MultiplierGroup:AddToggle("AutoPlane", {
                            Text = "Auto Buy & Equip Best Plane",
                            Default = false,
                            Callback = function(sG)
                                Du.SetEnabled(sG)
                            end
                        })
                        Label3 = Plane_MultiplierGroup:AddLabel(State.MultiplierStatus, true)
                        Plane_MultiplierGroup:AddToggle("AutoMultiplier", {
                            Text = "Auto Buy Step Speed Multiplier",
                            Default = false,
                            Callback = function(sL)
                                Dp.SetEnabled(sL)
                            end
                        })
                        Label2 = Plane_MultiplierGroup:AddLabel(State.TrailStatus, true)
                        Plane_MultiplierGroup:AddToggle("AutoTrail", {
                            Text = "Auto Buy & Equip Best Trail",
                            Default = false,
                            Callback = function(sQ)
                                Di.SetEnabled(sQ)
                            end
                        })
                        Plane_MultiplierGroup:AddSlider("WinsReserve", {
                            Text = "Keep Wins Reserve",
                            Default = 0,
                            Min = 0,
                            Max = 1000000000000,
                            Rounding = 0,
                            Callback = function(sU)
                                State.WinsReserve = sU
                            end
                        })
                        local WorldsGroup = Tn.Main:AddLeftGroupbox("Worlds", "globe")
                        Label = WorldsGroup:AddLabel(State.WorldStatus, true)
                        WorldsGroup:AddDivider()
                        WorldsGroup:AddButton({
                            Text = "Teleport to World 1",
                            Func = function()
                                CB(1)
                            end
                        })
                        WorldsGroup:AddButton({
                            Text = "Teleport to World 2",
                            Func = function()
                                CB(2)
                            end
                        })
                        PN = task.spawn(function()
                            while not Library.Unloaded do
                                pcall(function()
                                    Label7:SetText(State.WinStatus)
                                    Label6:SetText(State.SpeedStatus)
                                    Label5:SetText(State.RebirthStatus)
                                    Label4:SetText(State.PlaneStatus)
                                    Label3:SetText(State.MultiplierStatus)
                                    Label2:SetText(State.TrailStatus)
                                    Label:SetText(State.WorldStatus)
                                end)
                                task.wait(0.35)
                            end
                        end)
                        Cw.Track(function()
                            if coroutine.status(PN) ~= "dead" then
                                task.cancel(PN)
                            end
                        end)
                    end
                    Tv_13()
                    local function Tv_14()
                        local tu
                        local ts
                        local tt
                        local tr
                        local MovementGroup = Tn.Player:AddLeftGroupbox("Movement", "footprints")
                        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
                        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
                        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
                        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
                        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
                        local FlyGroup = Tn.Player:AddRightGroupbox("Fly", "feather")
                        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
                        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
                        tu = {}
                        local tq = {}
                        tt = {}
                        tr = {}
                        ts = {}
                        local function tv()
                            for k, v in tr do
                                if k.Parent then
                                    k.CanCollide = v
                                end
                            end
                            table.clear(tr)
                        end
                        local function tz()
                            for k, v in ts do
                                if k.Parent then
                                    k.WalkSpeed = v
                                end
                            end
                            table.clear(ts)
                        end
                        local function tD()
                            for k, v in tt do
                                if k.Parent then
                                    k.PlatformStand = v
                                end
                            end
                            table.clear(tt)
                        end
                        local function tH(tI)
                            if not tI:IsA("ProximityPrompt") then
                                return
                            end
                            if tu[tI] == nil then
                                tu[tI] = {
                                    HoldDuration = tI.HoldDuration,
                                    MaxActivationDistance = tI.MaxActivationDistance,
                                    RequiresLineOfSight = tI.RequiresLineOfSight
                                }
                            end
                            tI.HoldDuration = 0
                            tI.MaxActivationDistance = 50
                            tI.RequiresLineOfSight = false
                        end
                        local function tK()
                            for k, v in tu do
                                if k.Parent then
                                    k.HoldDuration = v.HoldDuration
                                    k.MaxActivationDistance = v.MaxActivationDistance
                                    k.RequiresLineOfSight = v.RequiresLineOfSight
                                end
                            end
                            table.clear(tu)
                        end
                        Toggles.Fly:OnChanged(function()
                            if not Toggles.Fly.Value then
                                tD()
                            end
                        end)
                        Toggles.WalkSpeedEnabled:OnChanged(function()
                            if not Toggles.WalkSpeedEnabled.Value then
                                tz()
                            end
                        end)
                        Toggles.NoClip:OnChanged(function()
                            if not Toggles.NoClip.Value then
                                tv()
                            end
                        end)
                        Toggles.InstantProximityPrompt:OnChanged(function()
                            if Toggles.InstantProximityPrompt.Value then
                                for k, v in CT:QueryDescendants("ProximityPrompt") do
                                    pcall(tH, v)
                                end
                            else
                                tK()
                            end
                        end)
                        table.insert(tq, CT.DescendantAdded:Connect(function(t2)
                            if Toggles.InstantProximityPrompt.Value then
                                tH(t2)
                            end
                        end))
                        table.insert(tq, DE.Stepped:Connect(function()
                            if Library.Unloaded then
                                return
                            end
                            local Character = LocalPlayer.Character
                            if Toggles.NoClip.Value and Character then
                                for k, v in Character:QueryDescendants("BasePart") do
                                    if tr[v] == nil then
                                        tr[v] = v.CanCollide
                                    end
                                    v.CanCollide = false
                                end
                            end
                        end))
                        table.insert(tq, UserInputService.JumpRequest:Connect(function()
                            if Library.Unloaded then
                                return
                            end
                            local Character = LocalPlayer.Character
                            local QK = Character and Character:FindFirstChildOfClass("Humanoid")
                            if Toggles.InfJump.Value and QK then
                                QK:ChangeState(Enum.HumanoidStateType.Jumping)
                            end
                        end))
                        table.insert(tq, DE.RenderStepped:Connect(function(uo)
                            if Library.Unloaded then
                                return
                            end
                            local Character = LocalPlayer.Character
                            local QN = Character and Character:FindFirstChildOfClass("Humanoid")
                            local QO = Character
                            if QO then
                                QO = Character:FindFirstChild("HumanoidRootPart")
                            end
                            local QM_2 = QO
                            local CurrentCamera = CT.CurrentCamera
                            if Toggles.WalkSpeedEnabled.Value and QN then
                                if ts[QN] == nil then
                                    ts[QN] = QN.WalkSpeed
                                end
                                QN.WalkSpeed = Options.WalkSpeed.Value
                            end
                            if Toggles.Fly.Value and QM_2 and QN and CurrentCamera then
                                if tt[QN] == nil then
                                    tt[QN] = QN.PlatformStand
                                end
                                QN.PlatformStand = true
                                local QO_8 = Vector3.zero
                                if not UserInputService:GetFocusedTextBox() then
                                    local QU = if UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
                                    if QU == 1 then
                                        QO_8 += CurrentCamera.CFrame.LookVector
                                    end
                                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                        QO_8 -= CurrentCamera.CFrame.LookVector
                                    end
                                    local QU_3 = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
                                    if QU_3 == 1 then
                                        QO_8 -= CurrentCamera.CFrame.RightVector
                                    end
                                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                                        QO_8 += CurrentCamera.CFrame.RightVector
                                    end
                                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                                        QO_8 += Vector3.new(0, 1, 0)
                                    end
                                    local QU_4 = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                                    if QU_4 == 1 then
                                        QO_8 -= Vector3.new(0, 1, 0)
                                    end
                                end
                                QM_2.AssemblyLinearVelocity = Vector3.zero
                                if QO_8.Magnitude > 0 then
                                    QM_2.CFrame = QM_2.CFrame + QO_8.Unit * Options.FlySpeed.Value * uo
                                end
                            end
                        end))
                        Cw.Track(function()
                            for k, v in tq do
                                v:Disconnect()
                            end
                            tv()
                            tz()
                            tD()
                            tK()
                        end)
                    end
                    Tv_14()
                    local function Tv_15()
                        local Sa, Sb, Label, Sd, Se, Sf, Sg, Sh, Si, Sj, Sk, Sl, Sm, Sn
                        Sd = {}
                        Sl = {}
                        Si = nil
                        Sf = 0
                        Sn = false
                        Sj = 0
                        Sa = os.clock()
                        local MenuGroup = Tn.Settings:AddLeftGroupbox("Menu", "logs")
                        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                        Label = MenuGroup:AddLabel("AFK triggers: 0")
                        Sg = function()
                            local CurrentCamera
                            CurrentCamera = CT.CurrentCamera
                            local Q2 = not CurrentCamera or not Cm(VirtualUser.CaptureController) or not Cm(VirtualUser.ClickButton2)
                            if Q2 then
                                return false
                            end
                            local Q2_2 = pcall(function()
                                VirtualUser:CaptureController()
                                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
                            end)
                            if not Q2_2 then
                                return false
                            end
                            Sj += 1
                            Sa = os.clock()
                            pcall(function()
                                Label:SetText("AFK triggers: " .. Sj)
                            end)
                            return true
                        end
                        Sb = function(u7)
                            pcall(function()
                                GuiService:SetGameplayPausedNotificationEnabled(not u7)
                            end)
                            pcall(function()
                                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                                if RobloxNetworkPauseNotificati then
                                    RobloxNetworkPauseNotificati.Enabled = not u7
                                end
                            end)
                            if not u7 then
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
                        Sm = function(vn)
                            local Re = vn.ClassName == "ParticleEmitter" or vn.ClassName == "Trail" or vn.ClassName == "Smoke" or vn.ClassName == "Fire" or vn.ClassName == "Sparkles"
                            local Ri = if Re then 1 else 0
                            local Rg = 3114 * Ri + 2433 * (1 - Ri)
                            local Rh = 353 * Ri + 2056 * (1 - Ri)
                            if not ((Rg * 3067 + Rh * 803 + Rg * Rh) % 16777213 == 10933339) then
                                Re = vn.ClassName == "Explosion"
                            end
                            if not Re then
                                Re = vn.ClassName == "Beam"
                            end
                            if Re then
                                if Sd[vn] == nil then
                                    Sd[vn] = vn.Enabled
                                end
                                pcall(function()
                                    vn.Enabled = false
                                end)
                            end
                        end
                        Sk = function()
                            for k, v in Sd do
                                local Rn = k
                                local Rp = v
                                if Rn.Parent then
                                    pcall(function()
                                        Rn.Enabled = Rp
                                    end)
                                end
                            end
                            table.clear(Sd)
                            if Si then
                                pcall(function()
                                    settings().Rendering.QualityLevel = Si.Quality
                                end)
                                Lighting.GlobalShadows = Si.Shadows
                                Lighting.FogEnd = Si.Fog
                                Si = nil
                            end
                        end
                        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
                        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
                        MenuGroup:AddToggle("Disable3D", {
                            Text = "Disable 3D Rendering",
                            Default = false,
                            Callback = function(vC)
                                pcall(function()
                                    DE:Set3dRenderingEnabled(not vC)
                                end)
                            end
                        })
                        MenuGroup:AddToggle("FpsBoost", {
                            Text = "FPS Boost",
                            Default = false,
                            Callback = function(vH)
                                if vH then
                                    if not Si then
                                        Si = {
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
                                    for k, v in CT:QueryDescendants("ParticleEmitter,Trail,Smoke,Fire,Sparkles,Beam") do
                                        pcall(Sm, v)
                                    end
                                else
                                    Sk()
                                end
                            end
                        })
                        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
                        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                        Library.ToggleKeybind = Options.MenuKeybind
                        Sb(true)
                        local ScriptGroup = Tn.Settings:AddLeftGroupbox("Script", "terminal")
                        ScriptGroup:AddButton({
                            Text = "Unload Script",
                            Func = function()
                                Library:Unload()
                            end
                        })
                        Toggles.AntiGameplayPause:OnChanged(function()
                            Sb(Toggles.AntiGameplayPause.Value)
                        end)
                        if Toggles.AntiGameplayPause.Value then
                            Sb(true)
                        end
                        table.insert(Sl, LocalPlayer.Idled:Connect(function()
                            if Toggles.AntiAfk.Value and not Library.Unloaded then
                                Sg()
                            end
                        end))
                        table.insert(Sl, CT.DescendantAdded:Connect(function(v_)
                            if Toggles.FpsBoost.Value then
                                Sm(v_)
                            end
                        end))
                        Sh = function(v3)
                            if Sn or Library.Unloaded or not Toggles.AutoReconnect.Value then
                                return
                            end
                            Sn = true
                            local RL = Sf
                            local RM_3 = pcall(function()
                                if v3 then
                                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                                else
                                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                                end
                            end)
                            if not RM_3 then
                                Sn = false
                                if not v3 and RL == Sf then
                                    task.delay(1.5, function()
                                        if RL == Sf then
                                            Sh(true)
                                        end
                                    end)
                                end
                            end
                        end
                        table.insert(Sl, TeleportService.TeleportInitFailed:Connect(function(wl)
                            local RQ
                            if wl == LocalPlayer and Sn then
                                Sn = false
                                RQ = Sf
                                task.delay(3, function()
                                    if RQ == Sf then
                                        Sh(true)
                                    end
                                end)
                            end
                        end))
                        task.spawn(function()
                            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
                            local RZ = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
                            if Library.Unloaded or not RZ then
                                return
                            end
                            table.insert(Sl, RZ.ChildAdded:Connect(function(wA)
                                if wA.Name == "ErrorPrompt" then
                                    Sh(false)
                                end
                            end))
                        end)
                        Se = task.spawn(function()
                            while not Library.Unloaded do
                                if Toggles.AntiGameplayPause.Value then
                                    Sb(true)
                                end
                                local R1 = Toggles.AntiAfk.Value and os.clock() - Sa >= 60
                                if R1 then
                                    Sg()
                                end
                                task.wait(1)
                            end
                        end)
                        Cw.Track(function()
                            Sf += 1
                            for k, v in Sl do
                                v:Disconnect()
                            end
                            pcall(task.cancel, Se)
                            Sb(false)
                            Sk()
                            pcall(function()
                                DE:Set3dRenderingEnabled(true)
                            end)
                        end)
                    end
                    Tv_15()
                    local function Tv_16()
                        local Tb
                        Tb = nil
                        local Ta, Tc
                        ThemeManager:SetLibrary(Library)
                        ThemeManager:SetFolder("OuroborosHub")
                        ThemeManager:SaveDefault("Evil Hello Kitty")
                        ThemeManager:ApplyToTab(Tn.Settings)
                        SaveManager:SetLibrary(Library)
                        SaveManager:IgnoreThemeSettings()
                        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
                        SaveManager:SetFolder("OuroborosHub/SpeedPlaneEscape")
                        local Td = SaveManager:BuildConfigSection(Tn.Settings)
                        Tb = function(w0, w1)
                            local Sr_2 = (w0 == "Toggle" and Toggles or Options)[w1]
                            local Sq_5 = type(Sr_2) == "table" and Sr_2.Type == w0
                            return Sq_5 and Sr_2 or nil
                        end
                        Ta = function(xa, xb)
                            local Type = xb.Type
                            if Type == "Toggle" then
                                return { idx = xa, type = "Toggle", value = xb.Value == true }
                            elseif Type == "Slider" then
                                return { idx = xa, type = "Slider", value = tostring(xb.Value) }
                            elseif Type == "Dropdown" then
                                return { idx = xa, type = "Dropdown", multi = xb.Multi == true, value = xb.Value }
                            elseif Type == "Input" then
                                local Sv_3 = xb.Value or ""
                                return { idx = xa, type = "Input", text = tostring(Sv_3) }
                            elseif Type == "ColorPicker" then
                                return { idx = xa, type = "ColorPicker", value = xb.Value:ToHex(), transparency = xb.Transparency }
                            elseif Type == "KeyPicker" then
                                return {
                                    idx = xa,
                                    type = "KeyPicker",
                                    key = xb.Value,
                                    mode = xb.Mode,
                                    syncToggleState = xb.SyncToggleState or nil
                                }
                            else
                                return nil
                            end
                        end
                        Tc = function(xe)
                            local SB = type(xe) ~= "table" or type(xe.idx) ~= "string" or type(xe.type) ~= "string"
                            if SB then
                                return false
                            end
                            local SB_2 = Tb(xe.type, xe.idx)
                            if not SB_2 then
                                return false
                            end
                            local SC = xe.type == "Toggle" and type(xe.value) == "boolean"
                            if SC then
                                SB_2:SetValue(xe.value)
                                return true
                            elseif xe.type == "Slider" then
                                local SC_6 = tonumber(xe.value)
                                if SC_6 then
                                    SB_2:SetValue(SC_6)
                                    return true
                                end
                                return false
                            elseif xe.type == "Dropdown" then
                                SB_2:SetValue(xe.value)
                                return true
                            else
                                local SC_7 = xe.type == "Input" and type(xe.text) == "string"
                                if SC_7 then
                                    SB_2:SetValue(xe.text)
                                    return true
                                end
                                local SC_8 = xe.type == "ColorPicker" and type(xe.value) == "string"
                                if SC_8 then
                                    SB_2:SetValueRGB(Color3.fromHex(xe.value))
                                    if type(xe.transparency) == "number" then
                                        SB_2:SetTransparency(xe.transparency)
                                    end
                                    return true
                                end
                                local SC_9 = xe.type == "KeyPicker" and type(xe.key) == "string"
                                if SC_9 then
                                    local key = xe.key
                                    local SD = xe.mode or "Toggle"
                                    SB_2:SetValue({ key, SD })
                                    return true
                                end
                                return false
                            end
                        end
                        Td:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Default = "", Finished = true, AllowEmpty = true })
                        Td:AddButton({
                            Text = "Export Config to Clipboard",
                            Func = function()
                                local SK_4
                                local SJ_8
                                local SI = {}
                                for k, v in Toggles do
                                    if k ~= "MenuKeybind" then
                                        local SJ_5 = Ta(k, v)
                                        if SJ_5 then
                                            table.insert(SI, SJ_5)
                                        end
                                    end
                                end
                                for k, v in Options do
                                    if k ~= "MenuKeybind" and k ~= "SaveManager_ImportSource" then
                                        local SJ_7 = Ta(k, v)
                                        if SJ_7 then
                                            table.insert(SI, SJ_7)
                                        end
                                    end
                                end
                                table.sort(SI, function(xt, xu)
                                    return xt.idx < xu.idx
                                end)
                                SJ_8, SK_4 = pcall(HttpService.JSONEncode, HttpService, { objects = SI })
                                if not SJ_8 then
                                    Library:Notify("Failed to encode config")
                                    return
                                end
                                Tk(SK_4, "Copied config to clipboard")
                            end
                        })
                        Td:AddButton({
                            Text = "Import Config from Clipboard Text",
                            Func = function()
                                local SZ = Options.SaveManager_ImportSource and Options.SaveManager_ImportSource.Value or ""
                                local SZ_5
                                local SZ_4 = SZ == ""
                                local S_ = type(SZ) ~= "string" or SZ_4
                                local S__3
                                if S_ then
                                    Library:Notify("Paste a config first")
                                    return
                                end
                                if #SZ > 262144 then
                                    Library:Notify("That config is too large")
                                    return
                                end
                                SZ_5, S__3 = pcall(HttpService.JSONDecode, HttpService, SZ)
                                local SY_5 = not SZ_5 or type(S__3) ~= "table" or type(S__3.objects) ~= "table"
                                if SY_5 then
                                    Library:Notify("That is not a valid exported config")
                                    return
                                end
                                if #S__3.objects > 2048 then
                                    Library:Notify("That config has too many records")
                                    return
                                end
                                local SY_6 = 0
                                for i, v in ipairs(S__3.objects) do
                                    if Tc(v) then
                                        SY_6 += 1
                                    end
                                end
                                if SY_6 == 0 then
                                    Library:Notify("No settings in that config matched this script")
                                    return
                                end
                                Options.SaveManager_ImportSource:SetValue("")
                                local S__4 = SY_6 == 1 and "" or "s"
                                Library:Notify(("Imported %d setting%s"):format(SY_6, S__4), 6)
                            end
                        })
                        ThemeManager:LoadDefault()
                        SaveManager:LoadAutoloadConfig()
                        if Options.WinsReserve then
                            State.WinsReserve = Options.WinsReserve.Value
                        end
                        if Options.TreadmillBelt then
                            DJ.SetBelt(Options.TreadmillBelt.Value)
                        end
                        if Toggles.AutoWin then
                            Ca.SetEnabled(Toggles.AutoWin.Value)
                        end
                        if Toggles.AutoSpeed then
                            DJ.SetEnabled(Toggles.AutoSpeed.Value)
                        end
                        if Toggles.AutoRebirth then
                            DB.SetEnabled(Toggles.AutoRebirth.Value)
                        end
                        if Toggles.AutoPlane then
                            Du.SetEnabled(Toggles.AutoPlane.Value)
                        end
                        if Toggles.AutoMultiplier then
                            Dp.SetEnabled(Toggles.AutoMultiplier.Value)
                        end
                        if Toggles.AutoTrail then
                            Di.SetEnabled(Toggles.AutoTrail.Value)
                        end
                        if Toggles.HideUiOnStart.Value then
                            Library:Toggle(false)
                        end
                    end
                    Tv_16()
                end
            else
                Ca.SetEnabled = fns.fn368
                DJ.SetBelt = fn1119
                DJ.SetEnabled = fns.fn611
                DB.SetEnabled = fn1357
                Du.SetEnabled = fn820
                Dp.SetEnabled = fn1493
                Di.SetEnabled = fns.fn405
                Cw.Track(fns.fn579)
                DS_2 = function()
                    local Tk
                    local onDiscord
                    local To
                    Tk = nil
                    To = nil
                    onDiscord = nil
                    local Ti, Tj, Library, Toggles, Tn, Tp, SaveManager, Ts, ThemeManager, Options
                    To = "https://discord.gg/synapsex"
                    Tj = "https://rscripts.net/@Ouroboros"
                    Ti = "+1 Speed Plane Escape"
                    local Tw = "v0.4"
                    Ts = "https://ouroboros-hub-rbx.web.app/"
                    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
                    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
                    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
                    Toggles = Library.Toggles
                    Options = Library.Options
                    CU(Cw, Library)
                    local Tv = #Ds.missing > 0 and "missing: " .. table.concat(Ds.missing, ", ")
                    local Tx = Tv or "bindings ready"
                    local Tv_1 = {}
                    local Tx_1 = (Cm(LocalPlayer.RequestStreamAroundAsync))
                    local TD = if Tx_1 then 1 else 0
                    local TB = 1458 * TD + 1776 * (1 - TD)
                    local TC = 1837 * TD + 113 * (1 - TD)
                    if not ((TB * 2932 + TC * 3364 + TB * TC) % 16777213 == 13132870) then
                        local Tz = Ds.streamAround and Cm(Ds.streamAround.Prepare)
                        Tx_1 = Tz
                    end
                    if Tx_1 then
                        table.insert(Tv_1, "stream")
                    end
                    local Tx_2 = (Cm(setclipboard)) or Cm(toclipboard)
                    if Tx_2 then
                        table.insert(Tv_1, "clipboard")
                    end
                    local Tx_3 = #Tv_1 > 0 and table.concat(Tv_1, "+")
                    Tp = (Tx_3 or "basic") .. " | " .. Tx
                    Tk = function(qB, qC)
                        local OV = (Cm(setclipboard)) and setclipboard
                        local OW = OV
                        if not OW then
                            local OV_1 = (Cm(toclipboard)) and toclipboard
                            OW = OV_1 or nil
                        end
                        local OV_2 = OW
                        if not OV_2 then
                            Library:Notify("Clipboard is unavailable")
                            return
                        end
                        local OW_1 = pcall(OV_2, qB)
                        if OW_1 then
                            Library:Notify(qC)
                        else
                            Library:Notify("Failed to copy")
                        end
                    end
                    onDiscord = function()
                        Tk(To, "Copied Discord invite to clipboard")
                    end
                    local Window = Library:CreateWindow({
                        Title = "Ouroboros",
                        Font = Enum.Font.BuilderSans,
                        Footer = { { Text = To, Copyable = true }, "|", Ti, "|", Tw },
                        Icon = 78539693571783,
                        NotifySide = "Right",
                        ShowCustomCursor = false,
                        CornerRadius = 0,
                        SidebarCompacted = true,
                        TabSwipeFrom = "bottom",
                        Animations = { TabSwitch = true }
                    })
                    Window:SetGlow(false)
                    Tn = {
                        Info = Window:AddTab("Info", "info"),
                        Main = Window:AddTab("Main", "gamepad-2"),
                        Player = Window:AddTab("Player", "person-standing"),
                        Settings = Window:AddTab("Settings", "settings")
                    }
                    local function Tv_4(qP)
                        local DiscordGroup = qP:AddLeftGroupbox("Discord")
                        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
                        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
                    end
                    for k, v in Tn do
                        if k ~= "Info" then
                            Tv_4(v)
                        end
                    end
                    local function Tw_1()
                        local Po
                        local Pd
                        local Pk
                        local Pg
                        local Pj
                        Pd = nil
                        Pg = nil
                        Pj = nil
                        Pk = nil
                        Po = nil
                        local Pe, Label, Ph, Pi, Pl, Label2, Label3, Pp
                        Pk = function(qW)
                            return (tostring(qW):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
                        end
                        Pj = function(qY, qZ)
                            return string.format('<font color="%s">%s</font>', qZ, Pk(qY))
                        end
                        Pp = function(q1, q2, q3)
                            return string.format("<b>%s</b> %s %s", q1, Pj("-", "#5a6070"), Pj(q2, q3))
                        end
                        Pd = "Unknown"
                        local Pq = "#8b93a3"
                        Pl = "#7fd47f"
                        Pi = "#e8a34d"
                        pcall(function()
                            local O2_1
                            local O1_1
                            if type(identifyexecutor) == "function" then
                                O2_1, O1_1 = identifyexecutor()
                                local O3 = O2_1 ~= ""
                                local O4 = type(O2_1) == "string" and O3
                                if O4 then
                                    local O3_1 = type(O1_1) == "string" and O1_1 ~= "" and O2_1 .. " " .. O1_1
                                    Pd = O3_1 or O2_1
                                end
                            end
                        end)
                        Po = os.clock()
                        Ph = function()
                            local O6 = math.floor(os.clock() - Po)
                            if O6 < 60 then
                                return O6 .. "s"
                            elseif O6 < 3600 then
                                return string.format("%dm %ds", O6 // 60, O6 % 60)
                            else
                                return string.format("%dh %dm", O6 // 3600, O6 % 3600 // 60)
                            end
                        end
                        local UserGroup = Tn.Info:AddLeftGroupbox("User", "circle-user")
                        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
                        UserGroup:AddLabel(Pp("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Pl), true)
                        UserGroup:AddLabel(Pp("UserId", tostring(LocalPlayer.UserId), "#6ec1ff"), true)
                        UserGroup:AddLabel(Pp("Executor", Pd .. "  " .. Tp, Pl), true)
                        UserGroup:AddDivider()
                        Label3 = UserGroup:AddLabel(Pp("Session", Ph(), Pi), true)
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
                        local SessionGroup = Tn.Info:AddRightGroupbox("Session", "signal")
                        SessionGroup:AddLabel(Pp("Game", Ti, "#6ec1ff"), true)
                        Label2 = SessionGroup:AddLabel(Pp("Players", "0/0", Pl), true)
                        Pe = tostring(game.JobId)
                        local Pr = #Pe > 18 and string.sub(Pe, 1, 18) .. "..."
                        local Pr_1 = Pr or Pe
                        SessionGroup:AddLabel(Pp("Job", Pr_1, Pq), true)
                        Label = SessionGroup:AddLabel(Pp("Ping", "0 ms", Pi), true)
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
                                Tk(Pe, "Copied Job ID")
                            end
                        })
                        Pg = task.spawn(function()
                            local O9_1
                            local O8_1
                            while true do
                                task.wait(1)
                                if Library.Unloaded then
                                    break
                                end
                                Label3:SetText(Pp("Session", Ph(), Pi))
                                Label2:SetText(Pp("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Pl))
                                O8_1, O9_1 = pcall(function()
                                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                                end)
                                local O8_2 = O8_1 and O9_1 .. " ms" or "n/a"
                                Label:SetText(Pp("Ping", O8_2, Pi))
                            end
                        end)
                        Cw.Track(function()
                            if coroutine.status(Pg) ~= "dead" then
                                task.cancel(Pg)
                            end
                        end)
                        local SocialsGroup = Tn.Info:AddRightGroupbox("Socials", "link")
                        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
                        SocialsGroup:AddButton({
                            Text = "Rscripts",
                            Func = function()
                                Tk(Tj, "Copied Rscripts profile")
                            end
                        })
                        SocialsGroup:AddButton({
                            Text = "Website",
                            Func = function()
                                Tk(Ts, "Copied website link")
                            end
                        })
                    end
                    Tw_1()
                    local function Tv_5()
                        local PN
                        PN = nil
                        local Label7, Label, Label2, Label5, Label3, PM, Label4, PP, Label6
                        PM = { "Best Unlocked" }
                        PP = false
                        task.spawn(function()
                            local Pw_1
                            local Pv_1
                            Pv_1, Pw_1 = pcall(Dt)
                            local Px = Pv_1 and type(Pw_1) == "table"
                            if Px then
                                for i, v in ipairs(Pw_1) do
                                    table.insert(PM, v.Name)
                                end
                            end
                            PP = true
                        end)
                        local PR = os.clock() + 4
                        while true do
                            local PS = not PP and os.clock() < PR
                            if PS then
                                task.wait(0.05)
                                continue
                            end
                            break
                        end
                        local AutoFarmGroup = Tn.Main:AddLeftGroupbox("Auto Farm", "trophy")
                        Label7 = AutoFarmGroup:AddLabel(State.WinStatus, true)
                        AutoFarmGroup:AddDivider()
                        AutoFarmGroup:AddToggle("AutoWin", {
                            Text = "Auto Win Stages",
                            Default = false,
                            Callback = function(so)
                                Ca.SetEnabled(so)
                            end
                        })
                        Label6 = AutoFarmGroup:AddLabel(State.SpeedStatus, true)
                        AutoFarmGroup:AddToggle("AutoSpeed", {
                            Text = "Auto Earn Speed",
                            Default = false,
                            Callback = function(st)
                                DJ.SetEnabled(st)
                            end
                        })
                        AutoFarmGroup:AddDropdown("TreadmillBelt", {
                            Text = "Treadmill",
                            Values = PM,
                            Default = PM[1],
                            Multi = false,
                            AllowNull = false,
                            Callback = function(sx)
                                DJ.SetBelt(sx)
                            end
                        })
                        Label5 = AutoFarmGroup:AddLabel(State.RebirthStatus, true)
                        AutoFarmGroup:AddToggle("AutoRebirth", {
                            Text = "Auto Rebirth",
                            Default = false,
                            Callback = function(sA)
                                DB.SetEnabled(sA)
                            end
                        })
                        local Plane_MultiplierGroup = Tn.Main:AddRightGroupbox("Plane & Multiplier", "plane")
                        Label4 = Plane_MultiplierGroup:AddLabel(State.PlaneStatus, true)
                        Plane_MultiplierGroup:AddDivider()
                        Plane_MultiplierGroup:AddToggle("AutoPlane", {
                            Text = "Auto Buy & Equip Best Plane",
                            Default = false,
                            Callback = function(sG)
                                Du.SetEnabled(sG)
                            end
                        })
                        Label3 = Plane_MultiplierGroup:AddLabel(State.MultiplierStatus, true)
                        Plane_MultiplierGroup:AddToggle("AutoMultiplier", {
                            Text = "Auto Buy Step Speed Multiplier",
                            Default = false,
                            Callback = function(sL)
                                Dp.SetEnabled(sL)
                            end
                        })
                        Label2 = Plane_MultiplierGroup:AddLabel(State.TrailStatus, true)
                        Plane_MultiplierGroup:AddToggle("AutoTrail", {
                            Text = "Auto Buy & Equip Best Trail",
                            Default = false,
                            Callback = function(sQ)
                                Di.SetEnabled(sQ)
                            end
                        })
                        Plane_MultiplierGroup:AddSlider("WinsReserve", {
                            Text = "Keep Wins Reserve",
                            Default = 0,
                            Min = 0,
                            Max = 1000000000000,
                            Rounding = 0,
                            Callback = function(sU)
                                State.WinsReserve = sU
                            end
                        })
                        local WorldsGroup = Tn.Main:AddLeftGroupbox("Worlds", "globe")
                        Label = WorldsGroup:AddLabel(State.WorldStatus, true)
                        WorldsGroup:AddDivider()
                        WorldsGroup:AddButton({
                            Text = "Teleport to World 1",
                            Func = function()
                                CB(1)
                            end
                        })
                        WorldsGroup:AddButton({
                            Text = "Teleport to World 2",
                            Func = function()
                                CB(2)
                            end
                        })
                        PN = task.spawn(function()
                            while not Library.Unloaded do
                                pcall(function()
                                    Label7:SetText(State.WinStatus)
                                    Label6:SetText(State.SpeedStatus)
                                    Label5:SetText(State.RebirthStatus)
                                    Label4:SetText(State.PlaneStatus)
                                    Label3:SetText(State.MultiplierStatus)
                                    Label2:SetText(State.TrailStatus)
                                    Label:SetText(State.WorldStatus)
                                end)
                                task.wait(0.35)
                            end
                        end)
                        Cw.Track(function()
                            if coroutine.status(PN) ~= "dead" then
                                task.cancel(PN)
                            end
                        end)
                    end
                    Tv_5()
                    local function Tv_6()
                        local tu
                        local ts
                        local tt
                        local tr
                        local MovementGroup = Tn.Player:AddLeftGroupbox("Movement", "footprints")
                        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
                        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
                        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
                        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
                        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
                        local FlyGroup = Tn.Player:AddRightGroupbox("Fly", "feather")
                        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
                        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
                        tu = {}
                        local tq = {}
                        tt = {}
                        tr = {}
                        ts = {}
                        local function tv()
                            for k, v in tr do
                                if k.Parent then
                                    k.CanCollide = v
                                end
                            end
                            table.clear(tr)
                        end
                        local function tz()
                            for k, v in ts do
                                if k.Parent then
                                    k.WalkSpeed = v
                                end
                            end
                            table.clear(ts)
                        end
                        local function tD()
                            for k, v in tt do
                                if k.Parent then
                                    k.PlatformStand = v
                                end
                            end
                            table.clear(tt)
                        end
                        local function tH(tI)
                            if not tI:IsA("ProximityPrompt") then
                                return
                            end
                            if tu[tI] == nil then
                                tu[tI] = {
                                    HoldDuration = tI.HoldDuration,
                                    MaxActivationDistance = tI.MaxActivationDistance,
                                    RequiresLineOfSight = tI.RequiresLineOfSight
                                }
                            end
                            tI.HoldDuration = 0
                            tI.MaxActivationDistance = 50
                            tI.RequiresLineOfSight = false
                        end
                        local function tK()
                            for k, v in tu do
                                if k.Parent then
                                    k.HoldDuration = v.HoldDuration
                                    k.MaxActivationDistance = v.MaxActivationDistance
                                    k.RequiresLineOfSight = v.RequiresLineOfSight
                                end
                            end
                            table.clear(tu)
                        end
                        Toggles.Fly:OnChanged(function()
                            if not Toggles.Fly.Value then
                                tD()
                            end
                        end)
                        Toggles.WalkSpeedEnabled:OnChanged(function()
                            if not Toggles.WalkSpeedEnabled.Value then
                                tz()
                            end
                        end)
                        Toggles.NoClip:OnChanged(function()
                            if not Toggles.NoClip.Value then
                                tv()
                            end
                        end)
                        Toggles.InstantProximityPrompt:OnChanged(function()
                            if Toggles.InstantProximityPrompt.Value then
                                for k, v in CT:QueryDescendants("ProximityPrompt") do
                                    pcall(tH, v)
                                end
                            else
                                tK()
                            end
                        end)
                        table.insert(tq, CT.DescendantAdded:Connect(function(t2)
                            if Toggles.InstantProximityPrompt.Value then
                                tH(t2)
                            end
                        end))
                        table.insert(tq, DE.Stepped:Connect(function()
                            if Library.Unloaded then
                                return
                            end
                            local Character = LocalPlayer.Character
                            if Toggles.NoClip.Value and Character then
                                for k, v in Character:QueryDescendants("BasePart") do
                                    if tr[v] == nil then
                                        tr[v] = v.CanCollide
                                    end
                                    v.CanCollide = false
                                end
                            end
                        end))
                        table.insert(tq, UserInputService.JumpRequest:Connect(function()
                            if Library.Unloaded then
                                return
                            end
                            local Character = LocalPlayer.Character
                            local QK = Character and Character:FindFirstChildOfClass("Humanoid")
                            if Toggles.InfJump.Value and QK then
                                QK:ChangeState(Enum.HumanoidStateType.Jumping)
                            end
                        end))
                        table.insert(tq, DE.RenderStepped:Connect(function(uo)
                            if Library.Unloaded then
                                return
                            end
                            local Character = LocalPlayer.Character
                            local QN = Character and Character:FindFirstChildOfClass("Humanoid")
                            local QO = Character
                            if QO then
                                QO = Character:FindFirstChild("HumanoidRootPart")
                            end
                            local QM_1 = QO
                            local CurrentCamera = CT.CurrentCamera
                            if Toggles.WalkSpeedEnabled.Value and QN then
                                if ts[QN] == nil then
                                    ts[QN] = QN.WalkSpeed
                                end
                                QN.WalkSpeed = Options.WalkSpeed.Value
                            end
                            if Toggles.Fly.Value and QM_1 and QN and CurrentCamera then
                                if tt[QN] == nil then
                                    tt[QN] = QN.PlatformStand
                                end
                                QN.PlatformStand = true
                                local QO_4 = Vector3.zero
                                if not UserInputService:GetFocusedTextBox() then
                                    local QU = if UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
                                    if QU == 1 then
                                        QO_4 += CurrentCamera.CFrame.LookVector
                                    end
                                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                        QO_4 -= CurrentCamera.CFrame.LookVector
                                    end
                                    local QU_1 = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
                                    if QU_1 == 1 then
                                        QO_4 -= CurrentCamera.CFrame.RightVector
                                    end
                                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                                        QO_4 += CurrentCamera.CFrame.RightVector
                                    end
                                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                                        QO_4 += Vector3.new(0, 1, 0)
                                    end
                                    local QU_2 = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                                    if QU_2 == 1 then
                                        QO_4 -= Vector3.new(0, 1, 0)
                                    end
                                end
                                QM_1.AssemblyLinearVelocity = Vector3.zero
                                if QO_4.Magnitude > 0 then
                                    QM_1.CFrame = QM_1.CFrame + QO_4.Unit * Options.FlySpeed.Value * uo
                                end
                            end
                        end))
                        Cw.Track(function()
                            for k, v in tq do
                                v:Disconnect()
                            end
                            tv()
                            tz()
                            tD()
                            tK()
                        end)
                    end
                    Tv_6()
                    local function Tv_7()
                        local Sa, Sb, Label, Sd, Se, Sf, Sg, Sh, Si, Sj, Sk, Sl, Sm, Sn
                        Sd = {}
                        Sl = {}
                        Si = nil
                        Sf = 0
                        Sn = false
                        Sj = 0
                        Sa = os.clock()
                        local MenuGroup = Tn.Settings:AddLeftGroupbox("Menu", "logs")
                        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                        Label = MenuGroup:AddLabel("AFK triggers: 0")
                        Sg = function()
                            local CurrentCamera
                            CurrentCamera = CT.CurrentCamera
                            local Q2 = not CurrentCamera or not Cm(VirtualUser.CaptureController) or not Cm(VirtualUser.ClickButton2)
                            if Q2 then
                                return false
                            end
                            local Q2_1 = pcall(function()
                                VirtualUser:CaptureController()
                                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
                            end)
                            if not Q2_1 then
                                return false
                            end
                            Sj += 1
                            Sa = os.clock()
                            pcall(function()
                                Label:SetText("AFK triggers: " .. Sj)
                            end)
                            return true
                        end
                        Sb = function(u7)
                            pcall(function()
                                GuiService:SetGameplayPausedNotificationEnabled(not u7)
                            end)
                            pcall(function()
                                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                                if RobloxNetworkPauseNotificati then
                                    RobloxNetworkPauseNotificati.Enabled = not u7
                                end
                            end)
                            if not u7 then
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
                        Sm = function(vn)
                            local Re = vn.ClassName == "ParticleEmitter" or vn.ClassName == "Trail" or vn.ClassName == "Smoke" or vn.ClassName == "Fire" or vn.ClassName == "Sparkles"
                            local Ri = if Re then 1 else 0
                            local Rg = 3114 * Ri + 2433 * (1 - Ri)
                            local Rh = 353 * Ri + 2056 * (1 - Ri)
                            if not ((Rg * 3067 + Rh * 803 + Rg * Rh) % 16777213 == 10933339) then
                                Re = vn.ClassName == "Explosion"
                            end
                            if not Re then
                                Re = vn.ClassName == "Beam"
                            end
                            if Re then
                                if Sd[vn] == nil then
                                    Sd[vn] = vn.Enabled
                                end
                                pcall(function()
                                    vn.Enabled = false
                                end)
                            end
                        end
                        Sk = function()
                            for k, v in Sd do
                                local Rn = k
                                local Rp = v
                                if Rn.Parent then
                                    pcall(function()
                                        Rn.Enabled = Rp
                                    end)
                                end
                            end
                            table.clear(Sd)
                            if Si then
                                pcall(function()
                                    settings().Rendering.QualityLevel = Si.Quality
                                end)
                                Lighting.GlobalShadows = Si.Shadows
                                Lighting.FogEnd = Si.Fog
                                Si = nil
                            end
                        end
                        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
                        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
                        MenuGroup:AddToggle("Disable3D", {
                            Text = "Disable 3D Rendering",
                            Default = false,
                            Callback = function(vC)
                                pcall(function()
                                    DE:Set3dRenderingEnabled(not vC)
                                end)
                            end
                        })
                        MenuGroup:AddToggle("FpsBoost", {
                            Text = "FPS Boost",
                            Default = false,
                            Callback = function(vH)
                                if vH then
                                    if not Si then
                                        Si = {
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
                                    for k, v in CT:QueryDescendants("ParticleEmitter,Trail,Smoke,Fire,Sparkles,Beam") do
                                        pcall(Sm, v)
                                    end
                                else
                                    Sk()
                                end
                            end
                        })
                        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
                        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                        Library.ToggleKeybind = Options.MenuKeybind
                        Sb(true)
                        local ScriptGroup = Tn.Settings:AddLeftGroupbox("Script", "terminal")
                        ScriptGroup:AddButton({
                            Text = "Unload Script",
                            Func = function()
                                Library:Unload()
                            end
                        })
                        Toggles.AntiGameplayPause:OnChanged(function()
                            Sb(Toggles.AntiGameplayPause.Value)
                        end)
                        if Toggles.AntiGameplayPause.Value then
                            Sb(true)
                        end
                        table.insert(Sl, LocalPlayer.Idled:Connect(function()
                            if Toggles.AntiAfk.Value and not Library.Unloaded then
                                Sg()
                            end
                        end))
                        table.insert(Sl, CT.DescendantAdded:Connect(function(v_)
                            if Toggles.FpsBoost.Value then
                                Sm(v_)
                            end
                        end))
                        Sh = function(v3)
                            if Sn or Library.Unloaded or not Toggles.AutoReconnect.Value then
                                return
                            end
                            Sn = true
                            local RL = Sf
                            local RM_1 = pcall(function()
                                if v3 then
                                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                                else
                                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                                end
                            end)
                            if not RM_1 then
                                Sn = false
                                if not v3 and RL == Sf then
                                    task.delay(1.5, function()
                                        if RL == Sf then
                                            Sh(true)
                                        end
                                    end)
                                end
                            end
                        end
                        table.insert(Sl, TeleportService.TeleportInitFailed:Connect(function(wl)
                            local RQ
                            if wl == LocalPlayer and Sn then
                                Sn = false
                                RQ = Sf
                                task.delay(3, function()
                                    if RQ == Sf then
                                        Sh(true)
                                    end
                                end)
                            end
                        end))
                        task.spawn(function()
                            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
                            local RZ = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
                            if Library.Unloaded or not RZ then
                                return
                            end
                            table.insert(Sl, RZ.ChildAdded:Connect(function(wA)
                                if wA.Name == "ErrorPrompt" then
                                    Sh(false)
                                end
                            end))
                        end)
                        Se = task.spawn(function()
                            while not Library.Unloaded do
                                if Toggles.AntiGameplayPause.Value then
                                    Sb(true)
                                end
                                local R1 = Toggles.AntiAfk.Value and os.clock() - Sa >= 60
                                if R1 then
                                    Sg()
                                end
                                task.wait(1)
                            end
                        end)
                        Cw.Track(function()
                            Sf += 1
                            for k, v in Sl do
                                v:Disconnect()
                            end
                            pcall(task.cancel, Se)
                            Sb(false)
                            Sk()
                            pcall(function()
                                DE:Set3dRenderingEnabled(true)
                            end)
                        end)
                    end
                    Tv_7()
                    local function Tv_8()
                        local Tb
                        Tb = nil
                        local Ta, Tc
                        ThemeManager:SetLibrary(Library)
                        ThemeManager:SetFolder("OuroborosHub")
                        ThemeManager:SaveDefault("Evil Hello Kitty")
                        ThemeManager:ApplyToTab(Tn.Settings)
                        SaveManager:SetLibrary(Library)
                        SaveManager:IgnoreThemeSettings()
                        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
                        SaveManager:SetFolder("OuroborosHub/SpeedPlaneEscape")
                        local Td = SaveManager:BuildConfigSection(Tn.Settings)
                        Tb = function(w0, w1)
                            local Sr_1 = (w0 == "Toggle" and Toggles or Options)[w1]
                            local Sq_2 = type(Sr_1) == "table" and Sr_1.Type == w0
                            return Sq_2 and Sr_1 or nil
                        end
                        Ta = function(xa, xb)
                            local Type = xb.Type
                            if Type == "Toggle" then
                                return { idx = xa, type = "Toggle", value = xb.Value == true }
                            elseif Type == "Slider" then
                                return { idx = xa, type = "Slider", value = tostring(xb.Value) }
                            elseif Type == "Dropdown" then
                                return { idx = xa, type = "Dropdown", multi = xb.Multi == true, value = xb.Value }
                            elseif Type == "Input" then
                                local Sv_1 = xb.Value or ""
                                return { idx = xa, type = "Input", text = tostring(Sv_1) }
                            elseif Type == "ColorPicker" then
                                return { idx = xa, type = "ColorPicker", value = xb.Value:ToHex(), transparency = xb.Transparency }
                            elseif Type == "KeyPicker" then
                                return {
                                    idx = xa,
                                    type = "KeyPicker",
                                    key = xb.Value,
                                    mode = xb.Mode,
                                    syncToggleState = xb.SyncToggleState or nil
                                }
                            else
                                return nil
                            end
                        end
                        Tc = function(xe)
                            local SB = type(xe) ~= "table" or type(xe.idx) ~= "string" or type(xe.type) ~= "string"
                            if SB then
                                return false
                            end
                            local SB_1 = Tb(xe.type, xe.idx)
                            if not SB_1 then
                                return false
                            end
                            local SC = xe.type == "Toggle" and type(xe.value) == "boolean"
                            if SC then
                                SB_1:SetValue(xe.value)
                                return true
                            elseif xe.type == "Slider" then
                                local SC_1 = tonumber(xe.value)
                                if SC_1 then
                                    SB_1:SetValue(SC_1)
                                    return true
                                end
                                return false
                            elseif xe.type == "Dropdown" then
                                SB_1:SetValue(xe.value)
                                return true
                            else
                                local SC_2 = xe.type == "Input" and type(xe.text) == "string"
                                if SC_2 then
                                    SB_1:SetValue(xe.text)
                                    return true
                                end
                                local SC_3 = xe.type == "ColorPicker" and type(xe.value) == "string"
                                if SC_3 then
                                    SB_1:SetValueRGB(Color3.fromHex(xe.value))
                                    if type(xe.transparency) == "number" then
                                        SB_1:SetTransparency(xe.transparency)
                                    end
                                    return true
                                end
                                local SC_4 = xe.type == "KeyPicker" and type(xe.key) == "string"
                                if SC_4 then
                                    local key = xe.key
                                    local SD = xe.mode or "Toggle"
                                    SB_1:SetValue({ key, SD })
                                    return true
                                end
                                return false
                            end
                        end
                        Td:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Default = "", Finished = true, AllowEmpty = true })
                        Td:AddButton({
                            Text = "Export Config to Clipboard",
                            Func = function()
                                local SK_2
                                local SJ_4
                                local SI = {}
                                for k, v in Toggles do
                                    if k ~= "MenuKeybind" then
                                        local SJ_1 = Ta(k, v)
                                        if SJ_1 then
                                            table.insert(SI, SJ_1)
                                        end
                                    end
                                end
                                for k, v in Options do
                                    if k ~= "MenuKeybind" and k ~= "SaveManager_ImportSource" then
                                        local SJ_3 = Ta(k, v)
                                        if SJ_3 then
                                            table.insert(SI, SJ_3)
                                        end
                                    end
                                end
                                table.sort(SI, function(xt, xu)
                                    return xt.idx < xu.idx
                                end)
                                SJ_4, SK_2 = pcall(HttpService.JSONEncode, HttpService, { objects = SI })
                                if not SJ_4 then
                                    Library:Notify("Failed to encode config")
                                    return
                                end
                                Tk(SK_2, "Copied config to clipboard")
                            end
                        })
                        Td:AddButton({
                            Text = "Import Config from Clipboard Text",
                            Func = function()
                                local SZ = Options.SaveManager_ImportSource and Options.SaveManager_ImportSource.Value or ""
                                local SZ_2
                                local SZ_1 = SZ == ""
                                local S_ = type(SZ) ~= "string" or SZ_1
                                local S__1
                                if S_ then
                                    Library:Notify("Paste a config first")
                                    return
                                end
                                if #SZ > 262144 then
                                    Library:Notify("That config is too large")
                                    return
                                end
                                SZ_2, S__1 = pcall(HttpService.JSONDecode, HttpService, SZ)
                                local SY_2 = not SZ_2 or type(S__1) ~= "table" or type(S__1.objects) ~= "table"
                                if SY_2 then
                                    Library:Notify("That is not a valid exported config")
                                    return
                                end
                                if #S__1.objects > 2048 then
                                    Library:Notify("That config has too many records")
                                    return
                                end
                                local SY_3 = 0
                                for i, v in ipairs(S__1.objects) do
                                    if Tc(v) then
                                        SY_3 += 1
                                    end
                                end
                                if SY_3 == 0 then
                                    Library:Notify("No settings in that config matched this script")
                                    return
                                end
                                Options.SaveManager_ImportSource:SetValue("")
                                local S__2 = SY_3 == 1 and "" or "s"
                                Library:Notify(("Imported %d setting%s"):format(SY_3, S__2), 6)
                            end
                        })
                        ThemeManager:LoadDefault()
                        SaveManager:LoadAutoloadConfig()
                        if Options.WinsReserve then
                            State.WinsReserve = Options.WinsReserve.Value
                        end
                        if Options.TreadmillBelt then
                            DJ.SetBelt(Options.TreadmillBelt.Value)
                        end
                        if Toggles.AutoWin then
                            Ca.SetEnabled(Toggles.AutoWin.Value)
                        end
                        if Toggles.AutoSpeed then
                            DJ.SetEnabled(Toggles.AutoSpeed.Value)
                        end
                        if Toggles.AutoRebirth then
                            DB.SetEnabled(Toggles.AutoRebirth.Value)
                        end
                        if Toggles.AutoPlane then
                            Du.SetEnabled(Toggles.AutoPlane.Value)
                        end
                        if Toggles.AutoMultiplier then
                            Dp.SetEnabled(Toggles.AutoMultiplier.Value)
                        end
                        if Toggles.AutoTrail then
                            Di.SetEnabled(Toggles.AutoTrail.Value)
                        end
                        if Toggles.HideUiOnStart.Value then
                            Library:Toggle(false)
                        end
                    end
                    Tv_8()
                end
            end
            DQ_4 = (DQ_4 + 217) % 304
        else
            if DQ_4 * 106585727 + 5 + 5 <= DQ_4 * 106585727 + 5 + 5 + 2 then
                DT_2, DU_2 = pcall(DS_2)
            else
                DS_2, DT_2 = pcall(DU_2)
            end
            DQ_4 = (DQ_4 + 141) % 304
        end
    elseif DV_5 <= 29 then
        if DV_5 <= 24 then
            if DV_5 <= 22 then
                if DV_5 <= 21 then
                    if DV_5 <= 20 then
                        local DW_16 = {
                            "pcv",
                            "cunzpdafp",
                            "wwcqywtop",
                            "knfraespjsq",
                            "jbzbxdmglki",
                            "uqphnar",
                            "dzyoghjj",
                            "txyhwker",
                            "oiia",
                            "viomzjoyqnp",
                            "palb",
                            "tskqtdr",
                            "putcrhr",
                            "crmlmfhh"
                        }
                        if DW_16[(DQ_4 * 78 + 108) % 14 + 1] <= DW_16[(DQ_4 * 78 + 108) % 14 + 1] then
                            Cg = fn1460
                            DA = fns.fn629
                            C7 = function(a7)
                                local Fe_2
                                local Fd = not Ds.client or not Cm(Ds.client.get)
                                local Fd_2
                                if Fd then
                                    return nil
                                end
                                Fd_2, Fe_2 = pcall(function()
                                    return Ds.client:get(a7)
                                end)
                                if Fd_2 then
                                    return Fe_2
                                end
                                return nil
                            end
                            Cz = fn1347
                        else
                            Cz = fn1460
                            C7 = fns.fn629
                            Cg = function(a7)
                                local Fe_1
                                local Fd = not Ds.client or not Cm(Ds.client.get)
                                local Fd_1
                                if Fd then
                                    return nil
                                end
                                Fd_1, Fe_1 = pcall(function()
                                    return Ds.client:get(a7)
                                end)
                                if Fd_1 then
                                    return Fe_1
                                end
                                return nil
                            end
                            DA = fn1347
                        end
                        DQ_4 = (DQ_4 + 27) % 304
                    else
                        local DW_17 = {
                            "mpp",
                            "zfmxpwsmzmfe",
                            "zrltqufb",
                            "bei",
                            "uzfdoycqv",
                            "loeqy",
                            "fmqri",
                            "fkk",
                            "nzxhk",
                            "eedhsu",
                            "qxxnu",
                            "acze",
                            "rijuu",
                            "crnmg",
                            "xfr",
                            "shgox"
                        }
                        if DW_17[(DQ_4 * 28 + 30) % 16 + 1] <= DW_17[(DQ_4 * 28 + 30) % 16 + 1] then
                            Cj = fns.fn740
                            C8 = fns.fn604
                        else
                            C8 = fns.fn740
                            Cj = fns.fn604
                        end
                        DQ_4 = (DQ_4 + 141) % 304
                    end
                else
                    if (DQ_4 * 1 + 6) * 13 % 4 == ((DQ_4 * 1 + 6) * 13 + 9) % 4 then
                        Dl = fn1474
                        De = fn1274
                        Cv = fn992
                    else
                        Cv = fn1474
                        Dl = fn1274
                        De = fn992
                    end
                    DQ_4 = (DQ_4 + 27) % 304
                end
            elseif DV_5 <= 23 then
                if DQ_4 * 73627971 + 9 + 1 <= DQ_4 * 73627971 + 9 + 1 + 6 then
                    C2 = fn897
                    CQ = fns.fn302
                    Cl = fn982
                    DL = nil
                else
                    Cl = fn897
                    DL = fns.fn302
                    CQ = fn982
                    C2 = nil
                end
                DQ_4 = (DQ_4 + 179) % 304
            else
                local DW_18 = (vector.create((DQ_4 * 5 + 7) % 11 + 1, (DQ_4 * 6 + 13) % 13 + 1, (DQ_4 * 10 + 17) % 17 + 1))
                local DX_14 = (vector.create((DQ_4 * 3 + 9) % 11 + 1, (DQ_4 * 5 + 13) % 13 + 1, (DQ_4 * 5 + 4) % 17 + 1))
                local DY_4 = (vector.create((DQ_4 * 4 + 2) % 11 + 1, (DQ_4 * 10 + 3) % 13 + 1, (DQ_4 * 3 + 1) % 17 + 1))
                if vector.dot(vector.cross(DW_18, DX_14), DY_4) == vector.dot(vector.cross(DX_14, DY_4), DW_18) then
                    DF = fn1398
                    Dm = function(ca, cb)
                        local F_
                        F_ = nil
                        if typeof(ca) ~= "Vector3" then
                            return false
                        end
                        F_ = Cl()
                        if not F_ then
                            return false
                        end
                        return (pcall(function()
                            local FY = cb or 4
                            F_.CFrame = CFrame.new(ca + Vector3.new(0, FY, 0))
                            F_.AssemblyLinearVelocity = Vector3.zero
                        end))
                    end
                    DR_2 = function(ci, cj)
                        local F1
                        if typeof(ci) ~= "Vector3" then
                            return false
                        end
                        local F4 = cj or 4
                        DL = CFrame.new(ci + Vector3.new(0, F4, 0))
                        F1 = Cl()
                        if not F1 then
                            return false
                        end
                        return (pcall(function()
                            F1.CFrame = DL
                            F1.AssemblyLinearVelocity = Vector3.zero
                        end))
                    end
                else
                    DR_2 = fn1398
                    DF = function(ca, cb)
                        local F_
                        F_ = nil
                        if typeof(ca) ~= "Vector3" then
                            return false
                        end
                        F_ = Cl()
                        if not F_ then
                            return false
                        end
                        return (pcall(function()
                            local FY = cb or 4
                            F_.CFrame = CFrame.new(ca + Vector3.new(0, FY, 0))
                            F_.AssemblyLinearVelocity = Vector3.zero
                        end))
                    end
                    Dm = function(ci, cj)
                        local F1
                        if typeof(ci) ~= "Vector3" then
                            return false
                        end
                        local F4 = cj or 4
                        DL = CFrame.new(ci + Vector3.new(0, F4, 0))
                        F1 = Cl()
                        if not F1 then
                            return false
                        end
                        return (pcall(function()
                            F1.CFrame = DL
                            F1.AssemblyLinearVelocity = Vector3.zero
                        end))
                    end
                end
                DQ_4 = (DQ_4 + 27) % 304
            end
        elseif DV_5 <= 27 then
            if DV_5 <= 26 then
                if DV_5 <= 25 then
                    if (Df or not Cj or (not Cj or Df) or (Df or Df or (Df or Cj))) and (not Df and Cj and (not Cj or Df) or Cj and not Df and (not Df or not Cj)) and not ((Df or not Cj or (not Cj or Df) or (Df or Df or (Df or Cj))) and (not Df and Cj and (not Cj or Df) or Cj and not Df and (not Df or not Cj))) then
                        DE = connection.Heartbeat:Connect(onHeartbeat)
                    else
                        connection = DE.Heartbeat:Connect(onHeartbeat)
                    end
                    DQ_4 = (DQ_4 + 293) % 304
                else
                    local DW_19 = (vector.create((DQ_4 * 3 + 1) % 11 + 1, (DQ_4 * 3 + 11) % 13 + 1, (DQ_4 * 10 + 16) % 17 + 1))
                    local Vd = vector.floor(DW_19) + vector.ceil(DW_19 * -1)
                    if vector.dot(Vd, Vd) == 4 then
                        CZ.Track(fns.fn179)
                        Cw = function(cx)
                            if typeof(cx) ~= "Vector3" then
                                return
                            end
                            local Gc = Ds.streamAround and Cm(Ds.streamAround.Prepare)
                            if Gc then
                                pcall(Ds.streamAround.Prepare, LocalPlayer, cx, 10)
                                return
                            end
                            if Cm(LocalPlayer.RequestStreamAroundAsync) then
                                pcall(function()
                                    LocalPlayer:RequestStreamAroundAsync(cx, 10)
                                end)
                            end
                        end
                        Dz = function(cF, cG, cH)
                            local Gf = os.clock()
                            local Gh = Gf + (cG or 10)
                            local Gk = false
                            repeat
                                local Gf_5 = (Cc()) and os.clock() < Gh
                                if Gf_5 then
                                    local Gf_6 = cF()
                                    local Gg_3 = Gf_6 and Gf_6:IsA("BasePart")
                                    if Gg_3 then
                                        return Gf_6
                                    end
                                    if cH then
                                        Dz(cH)
                                        local Ge = Cl()
                                        if Ge then
                                            pcall(function()
                                                Ge.CFrame = CFrame.new(cH + Vector3.new(0, 8, 0))
                                                Ge.AssemblyLinearVelocity = Vector3.zero
                                            end)
                                        end
                                    end
                                    task.wait(0.2)
                                else
                                    Gk = true
                                end
                            until Gk
                            local Gf_7 = cF()
                            local Gg_4 = Gf_7 and Gf_7:IsA("BasePart")
                            return Gg_4 and Gf_7 or nil
                        end
                        CV = fns.fn298
                        DH = function(c2, c3)
                            local generation
                            c2.generation = (c2.generation or 0) + 1
                            c2.stopped = false
                            generation = c2.generation
                            task.spawn(function()
                                local Gp_2
                                while true do
                                    local Go = (Cc()) and not c2.stopped and c2.generation == generation
                                    local Go_3
                                    if Go then
                                        Go_3, Gp_2 = pcall(c3)
                                        if not Go_3 then
                                            warn("[Ouroboros] loop error: " .. tostring(Gp_2))
                                        end
                                        local Go_4 = not Cc() or c2.stopped or c2.generation ~= generation
                                        if Go_4 then
                                            break
                                        end
                                        task.wait(c2.interval)
                                        continue
                                    end
                                    break
                                end
                            end)
                        end
                    else
                        Cw.Track(fns.fn179)
                        Dz = function(cx)
                            if typeof(cx) ~= "Vector3" then
                                return
                            end
                            local Gc = Ds.streamAround and Cm(Ds.streamAround.Prepare)
                            if Gc then
                                pcall(Ds.streamAround.Prepare, LocalPlayer, cx, 10)
                                return
                            end
                            if Cm(LocalPlayer.RequestStreamAroundAsync) then
                                pcall(function()
                                    LocalPlayer:RequestStreamAroundAsync(cx, 10)
                                end)
                            end
                        end
                        CV = function(cF, cG, cH)
                            local Gf = os.clock()
                            local Gh = Gf + (cG or 10)
                            local Gk = false
                            repeat
                                local Gf_1 = (Cc()) and os.clock() < Gh
                                if Gf_1 then
                                    local Gf_2 = cF()
                                    local Gg_1 = Gf_2 and Gf_2:IsA("BasePart")
                                    if Gg_1 then
                                        return Gf_2
                                    end
                                    if cH then
                                        Dz(cH)
                                        local Ge = Cl()
                                        if Ge then
                                            pcall(function()
                                                Ge.CFrame = CFrame.new(cH + Vector3.new(0, 8, 0))
                                                Ge.AssemblyLinearVelocity = Vector3.zero
                                            end)
                                        end
                                    end
                                    task.wait(0.2)
                                else
                                    Gk = true
                                end
                            until Gk
                            local Gf_3 = cF()
                            local Gg_2 = Gf_3 and Gf_3:IsA("BasePart")
                            return Gg_2 and Gf_3 or nil
                        end
                        DH = fns.fn298
                        CZ = function(c2, c3)
                            local generation
                            c2.generation = (c2.generation or 0) + 1
                            c2.stopped = false
                            generation = c2.generation
                            task.spawn(function()
                                local Gp_1
                                while true do
                                    local Go = (Cc()) and not c2.stopped and c2.generation == generation
                                    local Go_1
                                    if Go then
                                        Go_1, Gp_1 = pcall(c3)
                                        if not Go_1 then
                                            warn("[Ouroboros] loop error: " .. tostring(Gp_1))
                                        end
                                        local Go_2 = not Cc() or c2.stopped or c2.generation ~= generation
                                        if Go_2 then
                                            break
                                        end
                                        task.wait(c2.interval)
                                        continue
                                    end
                                    break
                                end
                            end)
                        end
                    end
                    DQ_4 = (DQ_4 + 103) % 304
                end
            else
                if DQ_4 * 21857055 + 13 + 1 >= DQ_4 * 21857055 + 13 + 1 + 1 then
                    CJ = fns.fn145
                else
                    Ci = fns.fn145
                end
                DQ_4 = (DQ_4 + 179) % 304
            end
        elseif DV_5 <= 28 then
            local DW_20 = { "wuwppk", "dylunksaa", "ypg", "yznmdchvei", "tyzyudhw", "qbzoc", "qoezq", "xcwjg", "wwktzmfy" }
            local Vg = DQ_4
            local DX_15 = DW_20[Vg % 9 + 1]
            if DX_15:len() >= DX_15:gsub("(.)", "%1%1", Vg % 3 % 2 + 1):len() then
                C_ = { interval = 0.6 }
            else
                Ca = { interval = 0.6 }
            end
            DQ_4 = (DQ_4 + 293) % 304
        else
            if (not CA or CA) and (not CA or not Ck) and (DS_2 or Ck or (not Cd or CA)) and ((not Ck and not CA or DS_2 and not Cd) and ((Cd or not DS_2) and (not Cd or Cd))) or (Cd and not Ck and (Ck or Cd) or not Ck and not DS_2 and (not Ck and not DS_2) or not Cd and Ck and (not DS_2 or DS_2) and (CA and not DS_2 or not CA and not Cd)) or not ((not CA or CA) and (not CA or not Ck) and (DS_2 or Ck or (not Cd or CA)) and ((not Ck and not CA or DS_2 and not Cd) and ((Cd or not DS_2) and (not Cd or Cd))) or (Cd and not Ck and (Ck or Cd) or not Ck and not DS_2 and (not Ck and not DS_2) or not Cd and Ck and (not DS_2 or DS_2) and (CA and not DS_2 or not CA and not Cd))) then
                DP = {
                    [1] = { stage = 15, near = Vector3.new(293, 135, -9073), pad = Vector3.new(293.717, 133.602, -9082.225) },
                    [2] = { stage = 7, near = Vector3.new(-1305, 36, 349), pad = Vector3.new(-1299.873, 35.156, 358.714) }
                }
            else
                DC = {
                    [1] = { pad = Vector3.new(293.717, 133.602, -9082.225), near = Vector3.new(293, 135, -9073), stage = 15 },
                    [2] = { stage = 7, pad = Vector3.new(-1299.873, 35.156, 358.714), near = Vector3.new(-1305, 36, 349) }
                }
            end
            DQ_4 = (DQ_4 + 293) % 304
        end
    elseif DV_5 <= 34 then
        if DV_5 <= 32 then
            if DV_5 <= 31 then
                if DV_5 <= 30 then
                    if (Db and CE or not Dx and Dx or (not CE or Db) and (Db or not Db)) and not (Db and CE or not Dx and Dx or (not CE or Db) and (Db or not Db)) then
                        CC = { interval = 0.35, belt = "Best Unlocked" }
                    else
                        DJ = { interval = 0.35, belt = "Best Unlocked" }
                    end
                    DQ_4 = (DQ_4 + 27) % 304
                else
                    if (DQ_4 * 3 + 9) * 5 % 4 == ((DQ_4 * 3 + 9) * 5 + 13) % 4 then
                        CV = { interval = 2 }
                    else
                        DB = { interval = 2 }
                    end
                    DQ_4 = (DQ_4 + 27) % 304
                end
            else
                local U0 = bit32.rrotate(bit32.bxor(bit32.lrotate(DQ_4, 22), string.byte(tostring(Cu))), 30)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(U0, 1130726785), 3328319117), (bit32.bxor(bit32.band(U0, 3164240510), 3520915081))), 3328319117), 3520915081) == U0 then
                    Du = { interval = 1.5 }
                else
                    Co = { interval = 1.5 }
                end
                DQ_4 = (DQ_4 + 293) % 304
            end
        elseif DV_5 <= 33 then
            if ((not Cz and not Co or not CJ and CJ or (Cz or not CJ) and (Cz or not Cz)) and (not CJ and not Cz or Co and Cz or (CJ and Cz or Cz and not Co)) or ((not CJ or CJ) and (CJ or Cz) or Cz and Co and (not CJ and not Cz)) and (not Co and Co and (not Co or Co) and (not Co and Co and (CJ and Co)))) and not ((not Cz and not Co or not CJ and CJ or (Cz or not CJ) and (Cz or not Cz)) and (not CJ and not Cz or Co and Cz or (CJ and Cz or Cz and not Co)) or ((not CJ or CJ) and (CJ or Cz) or Cz and Co and (not CJ and not Cz)) and (not Co and Co and (not Co or Co) and (not Co and Co and (CJ and Co)))) then
                Cj = { interval = 1.5 }
            else
                Dp = { interval = 1.5 }
            end
            DQ_4 = (DQ_4 + 293) % 304
        else
            if (not Cv or not Dj or (not Cz or not Cv)) and (not CQ and CB and (not Cv or not Cv)) or not ((not Cv or not Dj or (not Cz or not Cv)) and (not CQ and CB and (not Cv or not Cv))) then
                Di = { interval = 1.5 }
            else
                Dd = { interval = 1.5 }
            end
            DQ_4 = (DQ_4 + 141) % 304
        end
    elseif DV_5 <= 36 then
        if DV_5 <= 35 then
            local DW_21 = (vector.create((DQ_4 * 5 + 5) % 11 + 1, (DQ_4 * 10 + 7) % 13 + 1, (DQ_4 * 3 + 5) % 17 + 1))
            local DX_16 = (vector.create((DQ_4 * 2 + 6) % 11 + 1, (DQ_4 * 2 + 12) % 13 + 1, (DQ_4 * 7 + 13) % 17 + 1))
            local Vv = vector.dot(DW_21, DX_16)
            if Vv * Vv <= vector.dot(DW_21, DW_21) * vector.dot(DX_16, DX_16) then
                Dg = fn1266
                CJ = fns.fn37
                Ck = fn956
                Dj = fn970
            else
                Dj = fn1266
                Dg = fns.fn37
                CJ = fn956
                Ck = fn970
            end
            DQ_4 = (DQ_4 + 103) % 304
        else
            if (DP and Da or (not Da or not DI)) and (DP or DP or Da and DI) and (DP and DP and (DP or not DP) or not Da and not Da and (DP and Da)) or not ((DP and Da or (not Da or not DI)) and (DP or DP or Da and DI) and (DP and DP and (DP or not DP) or not Da and not Da and (DP and Da))) then
                CO = fn1205
                Cp = fn928
                Ce = fn1278
                Dx = fns.fn612
                Dd = fn1394
            else
                Cp = fn1205
                Ce = fn928
                Dx = fn1278
                Dd = fns.fn612
                CO = fn1394
            end
            DQ_4 = (DQ_4 + 255) % 304
        end
    elseif DV_5 <= 37 then
        local DV_6 = {
            "wssvpdymd",
            "sghtbgbxkck",
            "jtrafqgpaj",
            "uvmocxkj",
            "qqdzve",
            "xwsk",
            "sjgmxxixkv",
            "xlsmv",
            "chkrtdfn",
            "qqglgf"
        }
        if DV_6[(DQ_4 * 28 + 15) % 10 + 1] <= DV_6[(DQ_4 * 28 + 15) % 10 + 1] then
            CG = fns.fn19
        else
            CJ = fns.fn19
        end
        DQ_4 = (DQ_4 + 27) % 304
    else
        local DV_7 = (vector.create((DQ_4 * 3 + 5) % 11 + 1, (DQ_4 * 1 + 9) % 13 + 1, (DQ_4 * 13 + 8) % 17 + 1))
        local DW_22 = (vector.create((DQ_4 * 2 + 3) % 11 + 1, (DQ_4 * 9 + 13) % 13 + 1, (DQ_4 * 4 + 13) % 17 + 1))
        local DX_17 = (vector.create((DQ_4 * 6 + 6) % 11 + 1, (DQ_4 * 11 + 1) % 13 + 1, (DQ_4 * 10 + 17) % 17 + 1))
        local DY_5 = (vector.create((DQ_4 * 7 + 3) % 11 + 1, (DQ_4 * 1 + 6) % 13 + 1, (DQ_4 * 7 + 11) % 17 + 1))
        if vector.dot(vector.cross(DV_7, DW_22), (vector.cross(DX_17, DY_5))) == vector.dot(DV_7, DX_17) * vector.dot(DW_22, DY_5) - vector.dot(DV_7, DY_5) * vector.dot(DW_22, DX_17) + 4 then
            C4 = fns.fn511
            DM = fns.fn688
        else
            DM = fns.fn511
            C4 = fns.fn688
        end
        DQ_4 = (DQ_4 + 103) % 304
    end
until (DQ_4 * 155 + 77) % 304 == 217
if not DT_2 then
    local DQ_5 = 2
    repeat
        local DR_3 = { "nxrukcrjlk", "tiebtfa", "cibppcjwl", "muvmkzaggw", "qcmca", "fski", "jxnayjxkhgw" }
        local Vn = DQ_5
        local DS_3 = DR_3[Vn % 7 + 1]
        local D2_1 = if DS_3:len() <= DS_3:gsub("(.)", "%1%1", Vn % 3 % 2 + 1):len() then 1 else 0
        if D2_1 == 1 then
            pcall(Cw.Unload)
            error(DU_2, 0)
        else
            pcall(DU_2.Unload)
            error(Cw, 0)
        end
        DQ_5 = (DQ_5 + 3) % 4
    until (DQ_5 * 3 + 1) % 4 == 0
end
