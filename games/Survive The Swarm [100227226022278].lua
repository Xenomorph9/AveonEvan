local fns = {}
local BO
local Cv
local BU
local BB
local Ci
local Bi
local B_
local CH
local Co
local Bo
local B5
local CN
local BN
local Bu
local Cb
local BT
local CA
local BA
local Ch
local CG
local BG
local Cn
local LocalPlayer
local worker
local BM
local Ct
local Ca
local Cz
local CollectionService
local Cg
local BY
local CF
local BF
local CL
local BL
local Cs
local CR
local BR
local By
local Cf
local BX
local CE
local Bl
local B2
local CK
local BK
local Cr
local Br
local BQ
local Cx
local BW
local Ck
local Bk
local B1
local BJ
local Cq
local Bq
local B7
local Cw
local Bj
local CoreGui
local CI
local BI
local Bp
function fns.fn10()
    local Ef_1
    local Ee_1
    if BN then
        Ee_1, Ef_1 = pcall(BN.Clock.now)
        local Eg = Ee_1 and type(Ef_1) == "number"
        if Eg then
            return Ef_1
        end
        return os.clock()
    end
    return os.clock()
end
function fns.fn14()
    local Em = BK()
    return Em ~= nil and not BR[Em]
end
function fns.fn61(h7, h8)
    if not h8 then
        return
    end
    local KI = BB(h8)
    if KI then
        KI.Velocity = Vector3.zero
    else
        h8.AssemblyLinearVelocity = Vector3.new(0, h8.AssemblyLinearVelocity.Y, 0)
    end
    if h7 then
        h7:Move(Vector3.zero, false)
    end
end
function fns.fn64(cn)
    local Fx_7
    local Fw_8
    local Fu = BA(cn, B5.searchRange)
    if #Fu == 0 then
        return nil
    end
    local targetMode = B5.targetMode
    local Fv_3, Fv_4
    if B5.ignoreBosses then
        local Fw_1 = {}
        for i, v in ipairs(Fu) do
            if v.maxHealth < 4000 then
                Fw_1[#Fw_1 + 1] = v
            end
        end
        if #Fw_1 > 0 then
            Fu = Fw_1
        end
    end
    if targetMode == "Closest" then
        local Fw_2 = nil
        for i, v in ipairs(Fu) do
            if not Fw_2 or v.distance < Fw_2.distance then
                Fw_2 = v
            end
        end
        return Fw_2 and Fw_2.position or nil
    elseif targetMode == "Lowest Health" then
        local Fw_4 = nil
        for i, v in ipairs(Fu) do
            if not Fw_4 or v.health < Fw_4.health then
                Fw_4 = v
            end
        end
        return Fw_4 and Fw_4.position or nil
    elseif targetMode == "Highest Health" then
        local Fw_6 = nil
        for i, v in ipairs(Fu) do
            if not Fw_6 or v.health > Fw_6.health then
                Fw_6 = v
            end
        end
        return Fw_6 and Fw_6.position or nil
    else
        Fw_8, Fv_3 = nil, -1
        local Fx_5 = math.max(B5.standoff * 1.8, 20)
        local Fy = Fx_5 * Fx_5
        for i, v in ipairs(Fu) do
            local Fx_6 = 0
            for i, v2 in ipairs(Fu) do
                local Fz = v2.position - v.position
                if Fz.X * Fz.X + Fz.Z * Fz.Z <= Fy then
                    Fx_6 += 1
                end
            end
            Fx_6 -= v.distance / 200
            if Fx_6 > Fv_3 then
                Fw_8, Fv_3 = v, Fx_6
            end
        end
        if not Fw_8 then
            return nil
        end
        Fv_4, Fx_7 = Vector3.zero, 0
        for i, v in ipairs(Fu) do
            local Fu_1 = v.position - Fw_8.position
            if Fu_1.X * Fu_1.X + Fu_1.Z * Fu_1.Z <= Fy then
                Fv_4 += v.position
                Fx_7 += 1
            end
        end
        return Fx_7 > 0 and Fv_4 / Fx_7 or Fw_8.position
    end
end
function fns.fn138(ag)
    local Dr = Vector3.new(ag.X, 0, ag.Z)
    if Dr.Magnitude < 0.0001 then
        return Vector3.zero
    end
    return Dr.Unit
end
function fns.fn177(bX, bY)
    local EZ = BU()
    local E_ = {}
    local E0 = bY * bY
    local E1 = BN and BN.UnitState
    for i, v in ipairs(EZ) do
        local EZ_1 = v.Position - bX
        local E1_1 = EZ_1.X * EZ_1.X + EZ_1.Z * EZ_1.Z
        if E1_1 <= E0 then
            local EZ_2 = select(2, pcall(E1.getHealth, v)) or 0
            local EZ_3 = select(2, pcall(E1.getMaxHealth, v)) or EZ_2
            local EZ_4 = #E_ + 1
            local Position = v.Position
            local E6 = math.sqrt(E1_1)
            local E7 = type(EZ_2) == "number" and EZ_2
            local E3_1 = E7 or 0
            local E7_1 = type(EZ_3) == "number" and EZ_3
            local E4_1 = E7_1 or 0
            E_[EZ_4] = { part = v, position = Position, distance = E6, health = E3_1, maxHealth = E4_1 }
        end
    end
    return E_
end
local function fn210()
    local Il = {}
    for k, v in pairs(Cq) do
        if typeof(v.position) == "Vector3" then
            Il[#Il + 1] = v.position
        else
            Cq[k] = nil
        end
    end
    return Il
end
local function fn232()
    if type(Bi.readyAt) ~= "table" then
        return false
    end
    local Lg = type(Bi.pausedAt) == "number" and Bi.pausedAt
    local Lh = Lg or Cw()
    for k, v in pairs(Bi.readyAt) do
        local Lh_1 = type(v) == "number" and v <= Lh
        if Lh_1 then
            return true
        end
    end
    return false
end
local function fn236(a_)
    local DZ_1
    local DY_1
    DY_1, DZ_1 = {}, {}
    for k, v in pairs(a_.Weapons) do
        local D__1 = type(v) == "table" and type(v.name) == "string" and v.name ~= ""
        local D__2 = D__1 and v.name or k
        DY_1[#DY_1 + 1] = D__2
        By.weaponName[D__2] = k
    end
    for k, v in pairs(a_.Passives) do
        local D__3 = type(v) == "table" and type(v.name) == "string" and v.name ~= ""
        local D__4 = D__3 and v.name or k
        DZ_1[#DZ_1 + 1] = D__4
        By.passiveName[D__4] = k
    end
    table.sort(DY_1)
    table.sort(DZ_1)
    By.weapons = DY_1
    By.passives = DZ_1
end
local function fn245()
    return By.passives
end
local function fn246(pz)
    local OY = tonumber(pz) or 25
    B5.orbHopDelay = OY / 100
end
local function fn262(pO)
    B5.weaponAvoid = Bq(pO, By.weaponName)
end
local function fn275()
    local Character = LocalPlayer.Character
    local Du = not Character
    local DB = if Du then 1 else 0
    local Dz = 1662 * DB + 385 * (1 - DB)
    local DA = 1240 * DB + 3846 * (1 - DB)
    if not ((Dz * 1642 + DA * 2515 + Dz * DA) % 16777213 == 7908484) then
        Du = not Character.Parent
    end
    if Du then
        return nil, nil, nil
    end
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    if not HumanoidRootPart or not Humanoid then
        return nil, nil, nil
    end
    return Character, HumanoidRootPart, Humanoid
end
local function fn304(cc, cd)
    local Fi_1
    local Fh_1
    local Ff = 0
    local Fg = Vector3.zero
    Fi_1, Fh_1 = nil, math.huge
    for i, v in ipairs(BA(cc, cd)) do
        Ff += 1
        Fg += v.position
        if v.distance < Fh_1 then
            Fi_1, Fh_1 = v, v.distance
        end
    end
    local Fg_1 = Ff > 0 and Fg / Ff
    local Ft = if Fg_1 then 1 else 0
    local Fr = 1084 * Ft + 2053 * (1 - Ft)
    local Fs = 497 * Ft + 13 * (1 - Ft)
    if not ((Fr * 654 + Fs * 1428 + Fr * Fs) % 16777213 == 1957400) then
        Fg_1 = nil
    end
    return Ff, Fg_1, Fi_1, Fh_1
end
local function fn317()
    local L7_1
    local L6 = not BN
    local L6_1
    local Mc = if L6 then 1 else 0
    local Ma = 2497 * Mc + 2090 * (1 - Mc)
    local Mb = 907 * Mc + 2677 * (1 - Mc)
    if not ((Ma * 511 + Mb * 824 + Ma * Mb) % 16777213 == 4288114) then
        L6 = not BN.runAtoms.podFlights
    end
    if L6 then
        return nil
    end
    L6_1, L7_1 = pcall(BN.runAtoms.podFlights)
    local L8 = not L6_1 or type(L7_1) ~= "table"
    if L8 then
        return nil
    end
    return L7_1[tostring(LocalPlayer.UserId)]
end
local function fn350(j2)
    local LA_1
    local LF_8, LF_9
    local LE_8, LE_9
    local Lz_1, Lz_3, Lz_9, Lz_10, Lz_11
    local id = Bi.id
    if type(id) ~= "string" then
        return nil
    end
    local Position = j2.Position
    local Lv_17, Lv_19, Lv_23
    local Lw = CI(j2, "Health", 0)
    local Lw_2
    local Lx = CI(j2, "MaxHealth", 0)
    local Ly = Lx > 0 and Lw / Lx * 100
    local Ly_1
    local Lw_1 = Ly or 100
    Ly_1, Lz_1, Lw_2, LA_1 = CL(Position, B5.castCrowdRadius)
    local Lw_3 = Ly_1 >= B5.castCrowdCount
    local Ly_2 = Lw_1 <= B5.castHealthPercent
    local Lx_2 = Lz_1 and Cf(Position - Lz_1)
    local LB = Lx_2 or Vector3.zero
    local LB_1, LB_3, LB_4, LB_5
    local Lx_3 = Lz_1
    if Lx_3 then
        Lx_3 = Cf(Lz_1 - Position)
    end
    local Lz_2 = Lx_3 or Vector3.zero
    if B5.castMode == "Off Cooldown" then
        Lz_3, LB_1 = CL(Position, B5.searchRange)
        local Lz_4 = LB_1 and Cf(LB_1 - Position)
        local Lz_5 = Lz_4 or Vector3.zero
        if Lz_5 == Vector3.zero then
            Lz_5 = Cf(j2.CFrame.LookVector)
        end
        return Lz_5, "Casting " .. id
    end
    if B5.autoDodge and B5.dodgeWithAbility then
        local Lz_7 = Ca(Position, B5.dodgeLead)
        if Lz_7 then
            local Lz_8 = Cg(Position)
            if Lz_8 ~= Vector3.zero then
                return Lz_8, "Escaping with " .. id
            elseif id == "Skirmish" then
                Lz_9, LB_3 = CL(Position, B5.searchRange)
                if LB_5 then
                    return Cf(LB_3 - Position), "Charging with Skirmish"
                end
                return nil
            elseif id == "GraceBloom" then
                if Lv_17 then
                    local Lv_2 = Lz_2 ~= Vector3.zero and Lz_2
                    local Lx_5 = Lv_2 or Cf(j2.CFrame.LookVector)
                    return Lx_5, "Healing with Grace Bloom"
                end
                return nil
            elseif id == "IronStance" then
                if Lv_19 then
                    local Lv_4 = LB ~= Vector3.zero and LB
                    local Lx_6 = Lv_4 or Cf(j2.CFrame.LookVector)
                    return Lx_6, "Planting Iron Stance"
                end
                return nil
            elseif id == "BailOut" then
                if Ly_2 or Lw_3 then
                    local Lx_7 = LB ~= Vector3.zero and LB
                    if not ((LE_8 * 3410 + LF_8 * 145 + LE_8 * LF_8) % 16777213 == 16747665) then
                        Lx_7 = Cf(j2.CFrame.LookVector)
                    end
                    return Lx_7, "Bailing out"
                end
                return nil
            else
                if Lv_23 then
                    local Lw_4 = LB ~= Vector3.zero and LB
                    if not ((LE_9 * 2505 + LF_9 * 1594 + LE_9 * LF_9) % 16777213 == 6116669) then
                        Lw_4 = Cf(j2.CFrame.LookVector)
                    end
                    return Lw_4, "Repositioning with " .. id
                end
                return nil
            end
        elseif id == "Skirmish" then
            Lz_10, LB_4 = CL(Position, B5.searchRange)
            if LB_5 then
                return Cf(LB_4 - Position), "Charging with Skirmish"
            end
            return nil
        elseif id == "GraceBloom" then
            if Lv_17 then
                local Lv_10 = Lz_2 ~= Vector3.zero and Lz_2
                local Lx_8 = Lv_10 or Cf(j2.CFrame.LookVector)
                return Lx_8, "Healing with Grace Bloom"
            end
            return nil
        elseif id == "IronStance" then
            if Lv_19 then
                local Lv_12 = LB ~= Vector3.zero and LB
                local Lx_9 = Lv_12 or Cf(j2.CFrame.LookVector)
                return Lx_9, "Planting Iron Stance"
            end
            return nil
        elseif id == "BailOut" then
            if Ly_2 or Lw_3 then
                local Lx_10 = LB ~= Vector3.zero and LB
                if not ((LE_8 * 3410 + LF_8 * 145 + LE_8 * LF_8) % 16777213 == 16747665) then
                    Lx_10 = Cf(j2.CFrame.LookVector)
                end
                return Lx_10, "Bailing out"
            end
            return nil
        else
            if Lv_23 then
                local Lw_5 = LB ~= Vector3.zero and LB
                if not ((LE_9 * 2505 + LF_9 * 1594 + LE_9 * LF_9) % 16777213 == 6116669) then
                    Lw_5 = Cf(j2.CFrame.LookVector)
                end
                return Lw_5, "Repositioning with " .. id
            end
            return nil
        end
    elseif id == "Skirmish" then
        Lz_11, LB_5 = CL(Position, B5.searchRange)
        if LB_5 then
            return Cf(LB_5 - Position), "Charging with Skirmish"
        end
        return nil
    elseif id == "GraceBloom" then
        Lv_17 = Ly_2 or Lw_3
        if Lv_17 then
            local Lv_18 = Lz_2 ~= Vector3.zero and Lz_2
            local Lx_11 = Lv_18 or Cf(j2.CFrame.LookVector)
            return Lx_11, "Healing with Grace Bloom"
        end
        return nil
    elseif id == "IronStance" then
        Lv_19 = Ly_2
        local LG_7 = if Lv_19 then 1 else 0
        local LE_7 = 2461 * LG_7 + 819 * (1 - LG_7)
        local LF_7 = 1721 * LG_7 + 2400 * (1 - LG_7)
        if not ((LE_7 * 2550 + LF_7 * 1505 + LE_7 * LF_7) % 16777213 == 13101036) then
            Lv_19 = Lw_3
        end
        if Lv_19 then
            local Lv_20 = LB ~= Vector3.zero and LB
            local Lx_12 = Lv_20 or Cf(j2.CFrame.LookVector)
            return Lx_12, "Planting Iron Stance"
        end
        return nil
    elseif id == "BailOut" then
        if Ly_2 or Lw_3 then
            local Lx_13 = LB ~= Vector3.zero and LB
            local LG_8 = if Lx_13 then 1 else 0
            LE_8 = 3540 * LG_8 + 432 * (1 - LG_8)
            LF_8 = 1269 * LG_8 + 1418 * (1 - LG_8)
            if not ((LE_8 * 3410 + LF_8 * 145 + LE_8 * LF_8) % 16777213 == 16747665) then
                Lx_13 = Cf(j2.CFrame.LookVector)
            end
            return Lx_13, "Bailing out"
        end
        return nil
    else
        Lv_23 = Ly_2 or Lw_3 or LA_1 <= math.max(B5.castCrowdRadius * 0.5, 6)
        if Lv_23 then
            local Lw_6 = LB ~= Vector3.zero and LB
            local LG_9 = if Lw_6 then 1 else 0
            LE_9 = 3680 * LG_9 + 1791 * (1 - LG_9)
            LF_9 = 2593 * LG_9 + 247 * (1 - LG_9)
            if not ((LE_9 * 2505 + LF_9 * 1594 + LE_9 * LF_9) % 16777213 == 6116669) then
                Lw_6 = Cf(j2.CFrame.LookVector)
            end
            return Lw_6, "Repositioning with " .. id
        end
        return nil
    end
end
local function fn351(pG)
    local O2 = tonumber(pG) or 150
    B5.runEndDelay = O2 / 100
end
local function fn391(pK)
    B5.weaponPriority = Bq(pK, By.weaponName)
end
local function fn408(pI)
    local O4 = tonumber(pI) or 60
    B5.draftDelay = O4 / 100
end
local function fn420(pq)
    B5.autoDodge = pq
    if not pq then
        table.clear(Co.projectiles)
    end
end
local function fn423()
    local Ej_1
    local Ei_1
    if not BN then
        return nil
    end
    Ei_1, Ej_1 = pcall(BN.runAtoms.runState)
    local Ek = not Ei_1 or type(Ej_1) ~= "table"
    if Ek then
        return nil
    end
    return Ej_1.phase
end
local function fn441()
    return not Bj.Unloaded
end
local function fn512(m3)
    local Nd = not B5.preferHigherRarity or not BN
    local Nd_4
    if Nd then
        return 0
    end
    local Nc_1 = 0
    local Nd_1 = type(m3.rarity) == "string" and BN.DraftRarities.byId[m3.rarity]
    local Ne_1
    local Nd_2 = type(Nd_1) == "table" and type(Nd_1.order) == "number"
    if Nd_2 then
        Nc_1 += Nd_1.order * 150
    end
    local Nd_3 = type(m3.variant) == "string" and CN(BN.Rarities.orderOf)
    if Nd_3 then
        Nd_4, Ne_1 = pcall(BN.Rarities.orderOf, m3.variant)
        local Nf = Nd_4 and type(Ne_1) == "number"
        if Nf then
            Nc_1 += Ne_1 * 50
        end
    end
    return Nc_1
end
local function fn532(gV, gW)
    local Kc, Ki, Kj, Kk
    local Kf_1, Kf_2, Kf_3, Kf_4, Kf_5, Kf_6
    local Kd_8
    local Ke_2, Ke_5, Ke_8, Ke_12, Ke_15, Ke_18
    local Kb_5, Kb_6, Kb_9, Kb_12, Kb_17, Kb_19, Kb_20, Kb_23, Kb_26
    local Ka_6, Ka_7, Ka_14, Ka_21, Ka_29, Ka_33, Ka_34, Ka_41, Ka_48, Ka_51, Ka_55
    local Position = gV.Position
    local farmMode
    if B5.autoExtract then
        local Ka_1 = Br()
        if Ka_1 then
            local Magnitude = Vector3.new(Ka_1.X - Position.X, 0, Ka_1.Z - Position.Z).Magnitude
            B_.farm = string.format("Extracting, %d studs out", math.floor(Magnitude))
            if Magnitude > B5.orbColumn then
                return Vector3.new(Ka_1.X, math.max(Position.Y, Ka_1.Y + B5.orbCruise), Ka_1.Z), "extract"
            end
            return Ka_1, "extract"
        end
        if Ka_29 then
            CI(gV, "Health", 0)
            CI(gV, "MaxHealth", 0)
            if Kb_17 < B5.orbHealthFloor then
                B1.orbFocus = nil
                B1.orbHoldUntil = 0
                B_.orbs = "Too hurt to collect"
                if not B5.autoFarm then
                    return nil, nil
                end
                local Ka_5 = CR(Position)
                if not Ka_55 then
                    B_.farm = "No enemies in range"
                    return nil, nil
                end
                if farmMode == "Overhead" then
                    B_.farm = "Holding overhead"
                    return Vector3.new(Ka_5.X, Ka_5.Y + B5.overheadHeight, Ka_5.Z), "farm"
                elseif farmMode == "Hover" then
                    B_.farm = "Hovering over the swarm"
                    return Vector3.new(Ka_5.X, Ka_5.Y + B5.hoverHeight, Ka_5.Z), "farm"
                else
                    B1.orbitAngle = B1.orbitAngle + B5.orbitSpeed * gW
                    local J9_2 = math.max(B5.orbitRadius, 4)
                    local Kb_4 = Vector3.new(math.cos(B1.orbitAngle) * J9_2, 0, math.sin(B1.orbitAngle) * J9_2)
                    B_.farm = "Orbiting above the swarm"
                    return Vector3.new(Ka_5.X + Kb_4.X, Ka_5.Y + B5.hoverHeight, Ka_5.Z + Kb_4.Z), "farm"
                end
            elseif B5.leadEnemies then
                Ka_6, Kb_5 = CE(Position)
                if Ka_33 then
                    Kc = CA(Ka_6, B5.orbDangerRadius)
                    if Kc > B5.orbMaxEnemies then
                        local Kd_1 = Cf(Position - Ka_6)
                        if Kd_8 == Vector3.zero then
                            Kd_1 = Vector3.new(1, 0, 0)
                        end
                        local Ke_1 = Ka_6 + Kd_1 * B5.leadDistance
                        B1.leadPoint = Vector3.new(Ke_1.X, Ka_6.Y + B5.hoverHeight, Ke_1.Z)
                        B_.orbs = string.format("Pulling %d off %d orbs", Kc, Kb_5)
                        return B1.leadPoint, "lead"
                    end
                    B1.leadPoint = nil
                    Ka_7, Kb_6, Kc = Bk(Position)
                    local Kd_2 = os.clock() < B1.orbHoldUntil
                    if Ka_48 then
                        B1.orbFocus = Ka_7
                        B1.orbHoldUntil = os.clock() + B5.orbHold
                        Kf_1, Ke_2 = BO(Position, Ka_7)
                        if Kc > 0 then
                            B_.orbs = string.format("%d safe, %d guarded", Kb_6 - Kc, Kc)
                        elseif Ke_18 == "drop" then
                            local format = string.format
                            local Kg_1 = Kb_6 == 1 and "" or "s"
                            B_.orbs = format("Dropping on %d orb%s", Kb_6, Kg_1)
                        else
                            local format = string.format
                            local Kg_2 = Kb_6 == 1 and "" or "s"
                            B_.orbs = format("Moving over %d orb%s", Kb_6, Kg_2)
                        end
                        return Kf_1, "orb"
                    end
                    if Ka_51 then
                        return BO(Position, B1.orbFocus), "orb"
                    end
                    B1.orbFocus = nil
                    if Kc and Kc > 0 then
                        local format = string.format
                        local Kd_3 = Kc == 1 and ""
                        Kk = if Kd_3 then 1 else 0
                        Ki = 2198 * Kk + 3966 * (1 - Kk)
                        Kj = 2180 * Kk + 201 * (1 - Kk)
                        if not ((Ki * 3856 + Kj * 3998 + Ki * Kj) % 16777213 == 5205555) then
                            Kd_3 = "s"
                        end
                        B_.orbs = format("%d orb%s guarded, skipping", Kc, Kd_3)
                    else
                        B_.orbs = "No orbs in range"
                    end
                    if not B5.autoFarm then
                        return nil, nil
                    end
                    local Ka_13 = CR(Position)
                    if not Ka_55 then
                        B_.farm = "No enemies in range"
                        return nil, nil
                    end
                    if farmMode == "Overhead" then
                        B_.farm = "Holding overhead"
                        return Vector3.new(Ka_13.X, Ka_13.Y + B5.overheadHeight, Ka_13.Z), "farm"
                    elseif farmMode == "Hover" then
                        B_.farm = "Hovering over the swarm"
                        return Vector3.new(Ka_13.X, Ka_13.Y + B5.hoverHeight, Ka_13.Z), "farm"
                    else
                        B1.orbitAngle = B1.orbitAngle + B5.orbitSpeed * gW
                        local J9_4 = math.max(B5.orbitRadius, 4)
                        local Kb_8 = Vector3.new(math.cos(B1.orbitAngle) * J9_4, 0, math.sin(B1.orbitAngle) * J9_4)
                        B_.farm = "Orbiting above the swarm"
                        return Vector3.new(Ka_13.X + Kb_8.X, Ka_13.Y + B5.hoverHeight, Ka_13.Z + Kb_8.Z), "farm"
                    end
                else
                    B1.leadPoint = nil
                    Ka_14, Kb_9, Kc = Bk(Position)
                    local Kd_4 = os.clock() < B1.orbHoldUntil
                    if Ka_48 then
                        B1.orbFocus = Ka_14
                        B1.orbHoldUntil = os.clock() + B5.orbHold
                        Kf_2, Ke_5 = BO(Position, Ka_14)
                        if Kc > 0 then
                            B_.orbs = string.format("%d safe, %d guarded", Kb_9 - Kc, Kc)
                        elseif Ke_18 == "drop" then
                            local format = string.format
                            local Kg_3 = Kb_9 == 1 and "" or "s"
                            B_.orbs = format("Dropping on %d orb%s", Kb_9, Kg_3)
                        else
                            local format = string.format
                            local Kg_4 = Kb_9 == 1 and "" or "s"
                            B_.orbs = format("Moving over %d orb%s", Kb_9, Kg_4)
                        end
                        return Kf_2, "orb"
                    end
                    if Ka_51 then
                        return BO(Position, B1.orbFocus), "orb"
                    end
                    B1.orbFocus = nil
                    if Kc and Kc > 0 then
                        local format = string.format
                        local Kd_5 = Kc == 1 and ""
                        Kk = if Kd_5 then 1 else 0
                        Ki = 2198 * Kk + 3966 * (1 - Kk)
                        Kj = 2180 * Kk + 201 * (1 - Kk)
                        if not ((Ki * 3856 + Kj * 3998 + Ki * Kj) % 16777213 == 5205555) then
                            Kd_5 = "s"
                        end
                        B_.orbs = format("%d orb%s guarded, skipping", Kc, Kd_5)
                    else
                        B_.orbs = "No orbs in range"
                    end
                    if not B5.autoFarm then
                        return nil, nil
                    end
                    local Ka_20 = CR(Position)
                    if not Ka_55 then
                        B_.farm = "No enemies in range"
                        return nil, nil
                    end
                    if farmMode == "Overhead" then
                        B_.farm = "Holding overhead"
                        return Vector3.new(Ka_20.X, Ka_20.Y + B5.overheadHeight, Ka_20.Z), "farm"
                    elseif farmMode == "Hover" then
                        B_.farm = "Hovering over the swarm"
                        return Vector3.new(Ka_20.X, Ka_20.Y + B5.hoverHeight, Ka_20.Z), "farm"
                    else
                        B1.orbitAngle = B1.orbitAngle + B5.orbitSpeed * gW
                        local J9_6 = math.max(B5.orbitRadius, 4)
                        local Kb_11 = Vector3.new(math.cos(B1.orbitAngle) * J9_6, 0, math.sin(B1.orbitAngle) * J9_6)
                        B_.farm = "Orbiting above the swarm"
                        return Vector3.new(Ka_20.X + Kb_11.X, Ka_20.Y + B5.hoverHeight, Ka_20.Z + Kb_11.Z), "farm"
                    end
                end
            else
                B1.leadPoint = nil
                Ka_21, Kb_12, Kc = Bk(Position)
                local Kd_6 = os.clock() < B1.orbHoldUntil
                if Ka_48 then
                    B1.orbFocus = Ka_21
                    B1.orbHoldUntil = os.clock() + B5.orbHold
                    Kf_3, Ke_8 = BO(Position, Ka_21)
                    if Kc > 0 then
                        B_.orbs = string.format("%d safe, %d guarded", Kb_12 - Kc, Kc)
                    elseif Ke_18 == "drop" then
                        local format = string.format
                        local Kg_5 = Kb_12 == 1 and "" or "s"
                        B_.orbs = format("Dropping on %d orb%s", Kb_12, Kg_5)
                    else
                        local format = string.format
                        local Kg_6 = Kb_12 == 1 and "" or "s"
                        B_.orbs = format("Moving over %d orb%s", Kb_12, Kg_6)
                    end
                    return Kf_3, "orb"
                end
                if Ka_51 then
                    return BO(Position, B1.orbFocus), "orb"
                end
                B1.orbFocus = nil
                if Kc and Kc > 0 then
                    local format = string.format
                    local Kd_7 = Kc == 1 and ""
                    Kk = if Kd_7 then 1 else 0
                    Ki = 2198 * Kk + 3966 * (1 - Kk)
                    Kj = 2180 * Kk + 201 * (1 - Kk)
                    if not ((Ki * 3856 + Kj * 3998 + Ki * Kj) % 16777213 == 5205555) then
                        Kd_7 = "s"
                    end
                    B_.orbs = format("%d orb%s guarded, skipping", Kc, Kd_7)
                else
                    B_.orbs = "No orbs in range"
                end
                if not B5.autoFarm then
                    return nil, nil
                end
                local Ka_27 = CR(Position)
                if not Ka_55 then
                    B_.farm = "No enemies in range"
                    return nil, nil
                end
                if farmMode == "Overhead" then
                    B_.farm = "Holding overhead"
                    return Vector3.new(Ka_27.X, Ka_27.Y + B5.overheadHeight, Ka_27.Z), "farm"
                elseif farmMode == "Hover" then
                    B_.farm = "Hovering over the swarm"
                    return Vector3.new(Ka_27.X, Ka_27.Y + B5.hoverHeight, Ka_27.Z), "farm"
                else
                    B1.orbitAngle = B1.orbitAngle + B5.orbitSpeed * gW
                    local J9_8 = math.max(B5.orbitRadius, 4)
                    local Kb_14 = Vector3.new(math.cos(B1.orbitAngle) * J9_8, 0, math.sin(B1.orbitAngle) * J9_8)
                    B_.farm = "Orbiting above the swarm"
                    return Vector3.new(Ka_27.X + Kb_14.X, Ka_27.Y + B5.hoverHeight, Ka_27.Z + Kb_14.Z), "farm"
                end
            end
        elseif not B5.autoFarm then
            return nil, nil
        else
            local Ka_28 = CR(Position)
            if not Ka_55 then
                B_.farm = "No enemies in range"
                return nil, nil
            end
            if farmMode == "Overhead" then
                B_.farm = "Holding overhead"
                return Vector3.new(Ka_28.X, Ka_28.Y + B5.overheadHeight, Ka_28.Z), "farm"
            elseif farmMode == "Hover" then
                B_.farm = "Hovering over the swarm"
                return Vector3.new(Ka_28.X, Ka_28.Y + B5.hoverHeight, Ka_28.Z), "farm"
            else
                B1.orbitAngle = B1.orbitAngle + B5.orbitSpeed * gW
                local J9_10 = math.max(B5.orbitRadius, 4)
                local Kb_15 = Vector3.new(math.cos(B1.orbitAngle) * J9_10, 0, math.sin(B1.orbitAngle) * J9_10)
                B_.farm = "Orbiting above the swarm"
                return Vector3.new(Ka_28.X + Kb_15.X, Ka_28.Y + B5.hoverHeight, Ka_28.Z + Kb_15.Z), "farm"
            end
        end
    else
        Ka_29 = B5.autoOrbs and B5.collectMode == "Glide"
        if Ka_29 then
            local Ka_30 = CI(gV, "Health", 0)
            local Kb_16 = CI(gV, "MaxHealth", 0)
            Kc = Kb_16 > 0 and Ka_30 / Kb_16 * 100
            Kb_17 = Kc or 100
            if Kb_17 < B5.orbHealthFloor then
                B1.orbFocus = nil
                B1.orbHoldUntil = 0
                B_.orbs = "Too hurt to collect"
                if not B5.autoFarm then
                    return nil, nil
                end
                local Ka_32 = CR(Position)
                if not Ka_55 then
                    B_.farm = "No enemies in range"
                    return nil, nil
                end
                if farmMode == "Overhead" then
                    B_.farm = "Holding overhead"
                    return Vector3.new(Ka_32.X, Ka_32.Y + B5.overheadHeight, Ka_32.Z), "farm"
                elseif farmMode == "Hover" then
                    B_.farm = "Hovering over the swarm"
                    return Vector3.new(Ka_32.X, Ka_32.Y + B5.hoverHeight, Ka_32.Z), "farm"
                else
                    B1.orbitAngle = B1.orbitAngle + B5.orbitSpeed * gW
                    local J9_12 = math.max(B5.orbitRadius, 4)
                    local Kb_18 = Vector3.new(math.cos(B1.orbitAngle) * J9_12, 0, math.sin(B1.orbitAngle) * J9_12)
                    B_.farm = "Orbiting above the swarm"
                    return Vector3.new(Ka_32.X + Kb_18.X, Ka_32.Y + B5.hoverHeight, Ka_32.Z + Kb_18.Z), "farm"
                end
            elseif B5.leadEnemies then
                Ka_33, Kb_19 = CE(Position)
                if Ka_33 then
                    Kc = CA(Ka_33, B5.orbDangerRadius)
                    if Kc > B5.orbMaxEnemies then
                        Kd_8 = Cf(Position - Ka_33)
                        if Kd_8 == Vector3.zero then
                            Kd_8 = Vector3.new(1, 0, 0)
                        end
                        local Ke_11 = Ka_33 + Kd_8 * B5.leadDistance
                        B1.leadPoint = Vector3.new(Ke_11.X, Ka_33.Y + B5.hoverHeight, Ke_11.Z)
                        B_.orbs = string.format("Pulling %d off %d orbs", Kc, Kb_19)
                        return B1.leadPoint, "lead"
                    end
                    B1.leadPoint = nil
                    Ka_34, Kb_20, Kc = Bk(Position)
                    local Kd_9 = os.clock() < B1.orbHoldUntil
                    if Ka_48 then
                        B1.orbFocus = Ka_34
                        B1.orbHoldUntil = os.clock() + B5.orbHold
                        Kf_4, Ke_12 = BO(Position, Ka_34)
                        if Kc > 0 then
                            B_.orbs = string.format("%d safe, %d guarded", Kb_20 - Kc, Kc)
                        elseif Ke_18 == "drop" then
                            local format = string.format
                            local Kg_7 = Kb_20 == 1 and "" or "s"
                            B_.orbs = format("Dropping on %d orb%s", Kb_20, Kg_7)
                        else
                            local format = string.format
                            local Kg_8 = Kb_20 == 1 and "" or "s"
                            B_.orbs = format("Moving over %d orb%s", Kb_20, Kg_8)
                        end
                        return Kf_4, "orb"
                    end
                    if Ka_51 then
                        return BO(Position, B1.orbFocus), "orb"
                    end
                    B1.orbFocus = nil
                    if Kc and Kc > 0 then
                        local format = string.format
                        local Kd_10 = Kc == 1 and ""
                        Kk = if Kd_10 then 1 else 0
                        Ki = 2198 * Kk + 3966 * (1 - Kk)
                        Kj = 2180 * Kk + 201 * (1 - Kk)
                        if not ((Ki * 3856 + Kj * 3998 + Ki * Kj) % 16777213 == 5205555) then
                            Kd_10 = "s"
                        end
                        B_.orbs = format("%d orb%s guarded, skipping", Kc, Kd_10)
                    else
                        B_.orbs = "No orbs in range"
                    end
                    if not B5.autoFarm then
                        return nil, nil
                    end
                    local Ka_40 = CR(Position)
                    if not Ka_55 then
                        B_.farm = "No enemies in range"
                        return nil, nil
                    end
                    if farmMode == "Overhead" then
                        B_.farm = "Holding overhead"
                        return Vector3.new(Ka_40.X, Ka_40.Y + B5.overheadHeight, Ka_40.Z), "farm"
                    elseif farmMode == "Hover" then
                        B_.farm = "Hovering over the swarm"
                        return Vector3.new(Ka_40.X, Ka_40.Y + B5.hoverHeight, Ka_40.Z), "farm"
                    else
                        B1.orbitAngle = B1.orbitAngle + B5.orbitSpeed * gW
                        local J9_14 = math.max(B5.orbitRadius, 4)
                        local Kb_22 = Vector3.new(math.cos(B1.orbitAngle) * J9_14, 0, math.sin(B1.orbitAngle) * J9_14)
                        B_.farm = "Orbiting above the swarm"
                        return Vector3.new(Ka_40.X + Kb_22.X, Ka_40.Y + B5.hoverHeight, Ka_40.Z + Kb_22.Z), "farm"
                    end
                else
                    B1.leadPoint = nil
                    Ka_41, Kb_23, Kc = Bk(Position)
                    local Kd_11 = os.clock() < B1.orbHoldUntil
                    if Ka_48 then
                        B1.orbFocus = Ka_41
                        B1.orbHoldUntil = os.clock() + B5.orbHold
                        Kf_5, Ke_15 = BO(Position, Ka_41)
                        if Kc > 0 then
                            B_.orbs = string.format("%d safe, %d guarded", Kb_23 - Kc, Kc)
                        elseif Ke_18 == "drop" then
                            local format = string.format
                            local Kg_9 = Kb_23 == 1 and "" or "s"
                            B_.orbs = format("Dropping on %d orb%s", Kb_23, Kg_9)
                        else
                            local format = string.format
                            local Kg_10 = Kb_23 == 1 and "" or "s"
                            B_.orbs = format("Moving over %d orb%s", Kb_23, Kg_10)
                        end
                        return Kf_5, "orb"
                    end
                    if Ka_51 then
                        return BO(Position, B1.orbFocus), "orb"
                    end
                    B1.orbFocus = nil
                    if Kc and Kc > 0 then
                        local format = string.format
                        local Kd_12 = Kc == 1 and ""
                        Kk = if Kd_12 then 1 else 0
                        Ki = 2198 * Kk + 3966 * (1 - Kk)
                        Kj = 2180 * Kk + 201 * (1 - Kk)
                        if not ((Ki * 3856 + Kj * 3998 + Ki * Kj) % 16777213 == 5205555) then
                            Kd_12 = "s"
                        end
                        B_.orbs = format("%d orb%s guarded, skipping", Kc, Kd_12)
                    else
                        B_.orbs = "No orbs in range"
                    end
                    if not B5.autoFarm then
                        return nil, nil
                    end
                    local Ka_47 = CR(Position)
                    if not Ka_55 then
                        B_.farm = "No enemies in range"
                        return nil, nil
                    end
                    if farmMode == "Overhead" then
                        B_.farm = "Holding overhead"
                        return Vector3.new(Ka_47.X, Ka_47.Y + B5.overheadHeight, Ka_47.Z), "farm"
                    elseif farmMode == "Hover" then
                        B_.farm = "Hovering over the swarm"
                        return Vector3.new(Ka_47.X, Ka_47.Y + B5.hoverHeight, Ka_47.Z), "farm"
                    else
                        B1.orbitAngle = B1.orbitAngle + B5.orbitSpeed * gW
                        local J9_16 = math.max(B5.orbitRadius, 4)
                        local Kb_25 = Vector3.new(math.cos(B1.orbitAngle) * J9_16, 0, math.sin(B1.orbitAngle) * J9_16)
                        B_.farm = "Orbiting above the swarm"
                        return Vector3.new(Ka_47.X + Kb_25.X, Ka_47.Y + B5.hoverHeight, Ka_47.Z + Kb_25.Z), "farm"
                    end
                end
            else
                B1.leadPoint = nil
                Ka_48, Kb_26, Kc = Bk(Position)
                local Kd_13 = os.clock() < B1.orbHoldUntil
                if Ka_48 then
                    B1.orbFocus = Ka_48
                    B1.orbHoldUntil = os.clock() + B5.orbHold
                    Kf_6, Ke_18 = BO(Position, Ka_48)
                    if Kc > 0 then
                        B_.orbs = string.format("%d safe, %d guarded", Kb_26 - Kc, Kc)
                    elseif Ke_18 == "drop" then
                        local format = string.format
                        local Kg_11 = Kb_26 == 1 and "" or "s"
                        B_.orbs = format("Dropping on %d orb%s", Kb_26, Kg_11)
                    else
                        local format = string.format
                        local Kg_12 = Kb_26 == 1 and "" or "s"
                        B_.orbs = format("Moving over %d orb%s", Kb_26, Kg_12)
                    end
                    return Kf_6, "orb"
                end
                Ka_51 = Kd_13 and B1.orbFocus
                if Ka_51 then
                    return BO(Position, B1.orbFocus), "orb"
                end
                B1.orbFocus = nil
                if Kc and Kc > 0 then
                    local format = string.format
                    local Kd_14 = Kc == 1 and ""
                    Kk = if Kd_14 then 1 else 0
                    Ki = 2198 * Kk + 3966 * (1 - Kk)
                    Kj = 2180 * Kk + 201 * (1 - Kk)
                    if not ((Ki * 3856 + Kj * 3998 + Ki * Kj) % 16777213 == 5205555) then
                        Kd_14 = "s"
                    end
                    B_.orbs = format("%d orb%s guarded, skipping", Kc, Kd_14)
                else
                    B_.orbs = "No orbs in range"
                end
                if not B5.autoFarm then
                    return nil, nil
                end
                local Ka_54 = CR(Position)
                if not Ka_55 then
                    B_.farm = "No enemies in range"
                    return nil, nil
                end
                if farmMode == "Overhead" then
                    B_.farm = "Holding overhead"
                    return Vector3.new(Ka_54.X, Ka_54.Y + B5.overheadHeight, Ka_54.Z), "farm"
                elseif farmMode == "Hover" then
                    B_.farm = "Hovering over the swarm"
                    return Vector3.new(Ka_54.X, Ka_54.Y + B5.hoverHeight, Ka_54.Z), "farm"
                else
                    B1.orbitAngle = B1.orbitAngle + B5.orbitSpeed * gW
                    local J9_18 = math.max(B5.orbitRadius, 4)
                    local Kb_28 = Vector3.new(math.cos(B1.orbitAngle) * J9_18, 0, math.sin(B1.orbitAngle) * J9_18)
                    B_.farm = "Orbiting above the swarm"
                    return Vector3.new(Ka_54.X + Kb_28.X, Ka_54.Y + B5.hoverHeight, Ka_54.Z + Kb_28.Z), "farm"
                end
            end
        elseif not B5.autoFarm then
            return nil, nil
        else
            Ka_55 = CR(Position)
            if not Ka_55 then
                B_.farm = "No enemies in range"
                return nil, nil
            end
            farmMode = B5.farmMode
            if farmMode == "Overhead" then
                B_.farm = "Holding overhead"
                return Vector3.new(Ka_55.X, Ka_55.Y + B5.overheadHeight, Ka_55.Z), "farm"
            elseif farmMode == "Hover" then
                B_.farm = "Hovering over the swarm"
                return Vector3.new(Ka_55.X, Ka_55.Y + B5.hoverHeight, Ka_55.Z), "farm"
            else
                B1.orbitAngle = B1.orbitAngle + B5.orbitSpeed * gW
                local J9_20 = math.max(B5.orbitRadius, 4)
                local Kb_29 = Vector3.new(math.cos(B1.orbitAngle) * J9_20, 0, math.sin(B1.orbitAngle) * J9_20)
                B_.farm = "Orbiting above the swarm"
                return Vector3.new(Ka_55.X + Kb_29.X, Ka_55.Y + B5.hoverHeight, Ka_55.Z + Kb_29.Z), "farm"
            end
        end
    end
end
local function fn541(en, eo)
    local Hk_1
    local Hj_1, Hj_2
    if not BN then
        return false, nil
    end
    local contains = BN.shapes.contains
    local Hi = Cw()
    local Hi_1
    for i, v in ipairs(Co.telegraphs) do
        if v.burstAt - Hi <= eo then
            Hj_1, Hk_1 = pcall(contains, v.shape, en)
            if Hj_1 and Hk_1 then
                return true, v.shape
            end
        end
    end
    for i, v in ipairs(Co.zones) do
        if not v.dead then
            Hi_1, Hj_2 = pcall(contains, v.shape, en)
            if Hi_1 and Hj_2 then
                return true, v.shape
            end
        end
    end
    return false, nil
end
local function fn667(f8, f9)
    local Jl = f9.Y + math.max(B5.orbCruise, B5.orbAltitude + 2)
    local Magnitude = Vector3.new(f9.X - f8.X, 0, f9.Z - f8.Z).Magnitude
    if Magnitude > B5.orbColumn then
        return Vector3.new(f9.X, math.max(f8.Y, Jl), f9.Z), "cruise"
    elseif f8.Y > Jl + 4 then
        return Vector3.new(f9.X, Jl, f9.Z), "cruise"
    else
        return Vector3.new(f9.X, f9.Y + B5.orbAltitude, f9.Z), "drop"
    end
end
local function fn672(p9)
    if BG and p9 ~= "draft" then
        return "Bindings failed: " .. BG
    end
    return B_[p9] or "Idle"
end
local function fn701(nt, nu, nv)
    local Nx_1
    local Nw_1
    local replacements = nt.replacements
    if type(replacements) ~= "table" then
        return nil
    end
    Nx_1, Nw_1 = nil, math.huge
    for i, v in ipairs(replacements) do
        local Ny = type(v) == "table" and type(v.id) == "string"
        if Ny then
            if v.kind == nil or nu.kind == nil or v.kind == nu.kind then
                local NA = { id = v.id, kind = v.kind or nu.kind, level = v.level, rarity = v.rarity, variant = v.variant }
                local Ny_3 = Ct(NA, nv, false)
                if Ny_3 < Nw_1 then
                    Nx_1, Nw_1 = v, Ny_3
                end
            end
        end
    end
    if Nx_1 then
        return Nx_1.id
    end
    for i, v in ipairs(replacements) do
        local Nv_1 = type(v) == "table" and type(v.id) == "string"
        if Nv_1 then
            return v.id
        end
    end
    return nil
end
local function fn728(hy)
    return math.clamp(hy.WalkSpeed, 8, 250)
end
local function fn736(h0)
    return h0.FloorMaterial ~= Enum.Material.Air
end
local function fn749(eW)
    local HR_1
    local HQ_1
    local HX_1, HX_2
    local HW_1, HW_2
    if not BN then
        return Vector3.zero
    end
    local contains = BN.shapes.contains
    local HP = math.max(B5.dodgeMargin, 4)
    HR_1, HQ_1 = Vector3.zero, -1
    local H1 = 0
    while H1 <= 15 do
        local HS = H1 / 16 * math.pi * 2
        local HT = Vector3.new(math.cos(HS), 0, math.sin(HS))
        local HS_1 = 0
        local H6 = 1
        while H6 <= 3 do
            local HU = eW + HT * (HP * H6)
            local HV = false
            for i, v in ipairs(Co.telegraphs) do
                HW_1, HX_1 = pcall(contains, v.shape, HU)
                if HW_1 and HX_1 then
                    HV = true
                    break
                end
            end
            if not HV then
                for i, v in ipairs(Co.zones) do
                    if not v.dead then
                        HW_2, HX_2 = pcall(contains, v.shape, HU)
                        if HW_2 and HX_2 then
                            HV = true
                            break
                        end
                    end
                end
            end
            if HV then
                break
            end
            HS_1 += 1
            H6 += 1
        end
        if HS_1 > HQ_1 then
            HR_1, HQ_1 = HT, HS_1
        end
        H1 += 1
    end
    if HQ_1 <= 0 then
        return Vector3.zero
    end
    return HR_1
end
local function fn751()
    local Me_1, Me_2
    local Md = not BN or not BN.podLaunch or not BN.runAtoms.launchState
    local Md_1, Md_2
    if Md then
        return false
    end
    Md_1, Me_1 = pcall(BN.podLaunch.phase)
    if not Md_1 or Me_1 ~= "standby" then
        return false
    end
    Md_2, Me_2 = pcall(BN.runAtoms.launchState)
    local Mf_1 = not Md_2
    local Mq = if Mf_1 then 1 else 0
    local Mo = 1394 * Mq + 2452 * (1 - Mq)
    local Mp = 1280 * Mq + 2418 * (1 - Mq)
    if not ((Mo * 974 + Mp * 934 + Mo * Mp) % 16777213 == 4337596) then
        Mf_1 = type(Me_2) ~= "table"
    end
    if not Mf_1 then
        Mf_1 = type(Me_2.members) ~= "table"
    end
    if Mf_1 then
        return false
    end
    for k, v in pairs(Me_2.members) do
        local Md_3 = type(v) == "table" and v.userId == LocalPlayer.UserId
        if Md_3 then
            return v.loaded == true and not v.ready and not v.launched
        end
    end
    return false
end
local function fn760(hu)
    local BodyVelocity = hu:FindFirstChild("BodyVelocity")
    local Kp = BodyVelocity and BodyVelocity:IsA("BodyVelocity")
    if Kp then
        return BodyVelocity
    end
    return nil
end
local function fn818(ap, aq, ar)
    if not ap then
        return ar
    end
    local attr = ap:GetAttribute(aq)
    if type(attr) == "number" then
        return attr
    end
    return ar
end
local function fn827()
    if BG then
        return "Bindings failed"
    elseif not BN then
        return "Loading"
    else
        local id = Bi.id
        if type(id) ~= "string" then
            return "No ability"
        end
        local O7 = BN.Abilities.defs[id]
        local O8 = type(O7) == "table" and O7.name
        local O7_1 = O8
        local Pc = if O7_1 then 1 else 0
        local Pa = 972 * Pc + 110 * (1 - Pc)
        local Pb = 656 * Pc + 1491 * (1 - Pc)
        if not ((Pa * 3455 + Pb * 2031 + Pa * Pb) % 16777213 == 5328228) then
            O7_1 = id
        end
        local O6_1 = O7_1
        return string.format("%s (%s)", O6_1, B_.cast)
    end
end
local function fn836()
    local LR_1
    local LQ_1
    while Cx() do
        local LP = B5.autoCast and BN and CH()
        local LP_1, LP_3
        if LP then
            LP_1, LQ_1 = BX()
            if LQ_1 then
                worker()
                if not Cx() then
                    break
                end
                local LP_2 = Bo() and BM(LQ_1)
                if LP_2 then
                    LR_1, LP_3 = BQ(LQ_1)
                    if LR_1 and LR_1 ~= Vector3.zero then
                        local LQ_3 = LP_3 or "Casting"
                        B_.cast = LQ_3
                        Bp(LR_1)
                    else
                        local LP_4 = Bi.id or "ability"
                        B_.cast = "Holding " .. tostring(LP_4)
                    end
                else
                    B_.cast = "On cooldown"
                end
                task.wait(0.2)
                continue
            end
            B_.cast = "No character"
            task.wait(0.2)
            continue
        end
        if B5.autoCast then
            B_.cast = "Waiting for a run"
        else
            B_.cast = "Idle"
        end
        task.wait(0.2)
    end
end
local function fn928(hA, hB, hC, hD)
    local Kr = Vector3.zero
    if hD ~= Vector3.zero then
        Kr = hD
    elseif hC then
        local Ks_1 = hC - hB.Position
        local Kt_1 = Vector3.new(Ks_1.X, 0, Ks_1.Z)
        if Kt_1.Magnitude > 2 then
            Kr = Kt_1.Unit
        end
    end
    local Ks_2 = BB(hB)
    if not Ks_2 then
        hA:Move(Kr, false)
        return Kr ~= Vector3.zero
    elseif Kr == Vector3.zero then
        Ks_2.Velocity = Vector3.new(0, BI, 0)
        return false
    else
        local Kt_2 = CF(hA)
        Ks_2.Velocity = Vector3.new(Kr.X * Kt_2, BI, Kr.Z * Kt_2)
        return true
    end
end
local function fn934(pW)
    B5.passiveAvoid = Bq(pW, By.passiveName)
end
local function fn966(ih, ii)
    ih.CFrame = CFrame.new(ii)
    local KK = BB(ih)
    if KK then
        KK.Velocity = Vector3.zero
    end
    ih.AssemblyLinearVelocity = Vector3.zero
    B2 = os.clock() + 0.2
end
local function fn976(pS)
    B5.passivePriority = Bq(pS, By.passiveName)
end
local function fn986()
    if coroutine.status(BF) ~= "dead" then
        pcall(task.cancel, BF)
    end
end
local function fn1000(iy)
    local KS_1
    local KR_1
    local KQ = not Cx() or not BN or os.clock() < B2
    local KQ_1
    if KQ then
        return
    end
    Ci()
    KQ_1, KR_1, KS_1 = BX()
    local KT = not KR_1
    local KT_5
    local KU = not KQ_1 or KT
    local KU_2
    if KU or not KS_1 then
        Ch = false
        return
    end
    local KQ_3 = KS_1.Health <= 0 or not CH()
    if KQ_3 then
        if Ch then
            Bl(KS_1, KR_1)
            Ch = false
            B7 = 0
        end
        B1.retreatAnchor = nil
        B_.farm = "Waiting for a run"
        return
    end
    local KQ_4 = B5.retreat
    if KQ_4 then
        local KT_2 = B5.autoExtract and Br()
        KQ_4 = not KT_2
    end
    if KQ_4 then
        local KQ_5 = CI(KR_1, "Health", 0)
        local KT_3 = CI(KR_1, "MaxHealth", 0)
        local KQ_6 = KT_3 > 0 and KQ_5 / KT_3 * 100 or 100
        if B1.retreatAnchor then
            if not (KQ_6 >= B5.retreatResume) then
                B_.retreat = string.format("Holding at %d%%", math.floor(KQ_6))
                Ch = true
                B7 = 0
                Cn(KS_1, KR_1, B1.retreatAnchor, Vector3.zero)
                return
            end
            B1.retreatAnchor = nil
            B_.retreat = "Back in"
        else
            if KQ_6 <= B5.retreatHealth then
                B1.retreatAnchor = Vector3.new(KR_1.Position.X, KR_1.Position.Y + B5.retreatAltitude, KR_1.Position.Z)
                B_.retreat = string.format("Climbing out at %d%%", math.floor(KQ_6))
                Ch = true
                B7 = 0
                Cn(KS_1, KR_1, B1.retreatAnchor, Vector3.zero)
                return
            end
            B_.retreat = "Watching"
        end
    else
        B1.retreatAnchor = nil
        B_.retreat = "Idle"
    end
    local KQ_7 = Vector3.zero
    if B5.autoDodge then
        KT_5, KU_2 = Ca(KR_1.Position, B5.dodgeLead)
        if KT_5 then
            KQ_7 = Cg(KR_1.Position)
            local KU_3 = KU_2 and "Leaving a telegraph" or "Leaving a hazard"
            B_.dodge = KU_3
        else
            local KT_7 = BJ(KR_1.Position)
            if KT_7 ~= Vector3.zero then
                KQ_7 = KT_7
                B_.dodge = "Sidestepping a projectile"
            else
                B_.dodge = "Clear"
            end
        end
    else
        B_.dodge = "Idle"
    end
    local KT_8 = select(1, BT(KR_1, iy))
    if (B5.autoFarm or B5.autoExtract or B5.autoOrbs and B5.collectMode == "Glide") and KT_8 then
        Ch = true
        Cn(KS_1, KR_1, KT_8, KQ_7)
        return
    end
    if not B5.autoFarm and not KT_8 and KQ_7 == Vector3.zero then
        if Ch then
            Ch = false
            B7 = os.clock() + 4
        end
        if B7 > 0 then
            local KU_6 = os.clock() < B7 and not Cb(KS_1)
            if KU_6 then
                B_.farm = "Landing"
                BY(KR_1)
                return
            end
            B7 = 0
            Bl(KS_1, KR_1)
            B_.farm = "Idle"
            return
        end
        return
    end
    B7 = 0
    Ch = true
    Cr(KS_1, KR_1, KT_8, KQ_7)
end
local function fn1011()
    return CoreGui
end
local function fn1067()
    gethui = BL
end
local function fn1088(mN, mO, mP)
    if type(mN) ~= "table" then
        return false
    elseif mN[mO] then
        return true
    else
        if mP and mN[mP] then
            return true
        end
        return false
    end
end
local function fn1094(pd, pe)
    local OE = {}
    if type(pd) == "table" then
        for k, v in pairs(pd) do
            local OF = type(k) == "string" and k
            local OG = OF
            if not OG then
                local OF_1 = type(v) == "string" and v
                OG = OF_1 or nil
            end
            local OF_2 = OG
            local OG_1 = v == true
            local OH_2 = type(k) == "string" and OG_1
            local OG_2 = OH_2 or type(v) == "string"
            if OF_2 and OG_2 then
                OE[OF_2] = true
                local OG_4 = pe and pe[OF_2]
                if OG_4 then
                    OE[OG_4] = true
                end
            end
        end
    end
    return OE
end
local function fn1109()
    return By.weapons
end
local function fn1142(hN, hO, hP, hQ)
    local Kv = CF(hN)
    local Kw = hP
    if hQ ~= Vector3.zero and hP then
        Kw = Vector3.new(hO.Position.X + hQ.X * Kv, hP.Y, hO.Position.Z + hQ.Z * Kv)
    end
    if not Kw then
        return false
    end
    local Kx_1 = Kw - hO.Position
    local Kw_1 = Vector3.new(Kx_1.X, 0, Kx_1.Z)
    local Ky = Vector3.zero
    if Kw_1.Magnitude > 1.5 then
        Ky = Kw_1.Unit * math.min(Kv, Kw_1.Magnitude * 2)
    end
    local Kw_2 = math.clamp(Kx_1.Y * 3, -Kv, Kv)
    local Kv_1 = BB(hO)
    if Kv_1 then
        Kv_1.Velocity = Vector3.new(Ky.X, Kw_2, Ky.Z)
    else
        hO.AssemblyLinearVelocity = Vector3.new(Ky.X, Kw_2, Ky.Z)
    end
    return true
end
local function fn1153(h2)
    local KG = BB(h2)
    if KG then
        KG.Velocity = Vector3.new(0, BI, 0)
    else
        h2.AssemblyLinearVelocity = Vector3.new(0, BI, 0)
    end
end
local function fn1216(pD)
    B5.retreat = pD
    if not pD then
        B1.retreatAnchor = nil
    end
end
local function fn1279()
    local L3_1
    local L2 = not BN or not BN.runOverlays
    local L2_1
    if L2 then
        return nil
    end
    L2_1, L3_1 = pcall(BN.runOverlays.presence)
    local L4 = not L2_1 or type(L3_1) ~= "table"
    if L4 then
        return nil
    end
    return L3_1
end
local function fn1376()
    local Gb = Cw()
    local Gh = #Co.telegraphs
    local Gg = -1
    while false and Gh <= 1 or true and Gh >= 1 do
        local Gi = Gh
        local Gc_1 = Co.telegraphs[Gi]
        if Gc_1.handle.live == false or Gb > Gc_1.burstAt + 0.35 then
            table.remove(Co.telegraphs, Gi)
        end
        Gh += Gg
    end
    local Gm = #Co.zones
    local Gl = -1
    while false and Gm <= 1 or true and Gm >= 1 do
        local Gn = Gm
        if Co.zones[Gn].dead then
            table.remove(Co.zones, Gn)
        end
        Gm += Gl
    end
    local Gb_2 = os.clock()
    local Gm_1 = #Co.projectiles
    local Gl_1 = -1
    while false and Gm_1 <= 1 or true and Gm_1 >= 1 do
        local Gp = Gm_1
        if Gb_2 > Co.projectiles[Gp].expiresAt then
            table.remove(Co.projectiles, Gp)
        end
        Gm_1 += Gl_1
    end
end
local function fn1390(ge)
    local Ju_1
    local Jv_4
    local orbRange = B5.orbRange
    local Js = orbRange * orbRange
    local Js_2, Js_3
    local Jr_1 = {}
    for i, v in ipairs(Ck()) do
        local Jt_1 = v - ge
        if Jt_1.X * Jt_1.X + Jt_1.Z * Jt_1.Z <= Js then
            Jr_1[#Jr_1 + 1] = v
        end
    end
    if #Jr_1 < B5.leadClusterMin then
        return nil, 0
    end
    local Js_1 = math.max(B5.orbDangerRadius, 10)
    local Jt_2 = Js_1 * Js_1
    Ju_1, Js_2 = nil, 0
    for i, v in ipairs(Jr_1) do
        local Jv_1 = 0
        for i, v2 in ipairs(Jr_1) do
            local Jw = v2 - v
            if Jw.X * Jw.X + Jw.Z * Jw.Z <= Jt_2 then
                Jv_1 += 1
            end
        end
        if Jv_1 > Js_2 then
            Ju_1, Js_2 = v, Jv_1
        end
    end
    if not Ju_1 or Js_2 < B5.leadClusterMin then
        return nil, Js_2 or 0
    end
    Jv_4, Js_3 = Vector3.zero, 0
    for i, v in ipairs(Jr_1) do
        local Jr_2 = v - Ju_1
        if Jr_2.X * Jr_2.X + Jr_2.Z * Jr_2.Z <= Jt_2 then
            Jv_4 += v
            Js_3 += 1
        end
    end
    return Jv_4 / Js_3, Js_3
end
local function fn1427(mS)
    local M3 = not BN or type(mS) ~= "table" or type(mS.id) ~= "string"
    if M3 then
        return nil
    end
    local M4 = mS.kind == "weapon" and BN.Weapons
    if not M4 then
        M4 = mS.kind == "passive" and BN.Passives
    end
    local M3_3 = M4
    if M4 then
        M4 = M3_3[mS.id]
    end
    local M3_4 = M4
    local M4_1 = type(M3_4) == "table" and type(M3_4.name) == "string" and M3_4.name ~= ""
    if M4_1 then
        return M3_4.name
    end
    return mS.id
end
local function fn1440()
    local LW_1
    local LV_1, LV_4
    while Cx() do
        local LT = false
        local LU = B5.autoOrbs and B5.collectMode == "Teleport" and BN and CH()
        local LU_1, LU_5
        if LU then
            LU_1, LW_1, LV_1 = BX()
            if LW_1 and LV_1 and LV_1.Health > 0 then
                local LU_3 = CI(LW_1, "Health", 0)
                local LV_2 = CI(LW_1, "MaxHealth", 0)
                local LX = LV_2 > 0 and LU_3 / LV_2 * 100
                local LX_1
                local LU_4 = LX or 100
                if B1.retreatAnchor then
                    B_.orbs = "Holding while hurt"
                elseif LU_4 < B5.orbHealthFloor then
                    B_.orbs = "Too hurt to collect"
                else
                    LV_4, LU_5, LX_1 = Bk(LW_1.Position)
                    if LV_4 then
                        LT = true
                        local Position = LW_1.Position
                        if LX_1 > 0 then
                            B_.orbs = string.format("Grabbing %d, skipping %d", LU_5 - LX_1, LX_1)
                        else
                            local L0 = LU_5 == 1 and "" or "s"
                            B_.orbs = string.format("Grabbing %d orb%s", LU_5, L0)
                        end
                        CK(LW_1, Vector3.new(LV_4.X, LV_4.Y + B5.orbAltitude, LV_4.Z))
                        task.wait(B5.orbGrab)
                        local LU_6 = Cx() and LW_1.Parent and B5.autoOrbs
                        if LU_6 then
                            CK(LW_1, Position)
                        end
                    else
                        if LX_1 and LX_1 > 0 then
                            local format = string.format
                            local LW_2 = LX_1 == 1 and "" or "s"
                            B_.orbs = format("%d orb%s guarded, skipping", LX_1, LW_2)
                        else
                            B_.orbs = "No orbs in range"
                        end
                    end
                end
            end
        end
        local wait = task.wait
        local LT_1 = LT and 0.05 or 0.25
        wait(LT_1)
    end
end
local function fn1447(ng, nh, ni)
    local Np_1
    if type(ng) ~= "table" then
        return -math.huge
    end
    local kind = ng.kind
    local No = Cs(ng)
    if kind == "evolution" then
        Np_1 = 6000
    elseif kind == "weapon" then
        Np_1 = 1200
        local Nu = if Bu(B5.weaponAvoid, ng.id, No) then 1 else 0
        if Nu == 1 then
            Np_1 -= 9000
        elseif Bu(B5.weaponPriority, ng.id, No) then
            Np_1 += 3000
        end
        if B5.preferOwned and nh.weapons and nh.weapons[ng.id] then
            Np_1 += 500
        elseif ni then
            Np_1 -= 700
        end
    elseif kind == "passive" then
        Np_1 = 1100
        if Bu(B5.passiveAvoid, ng.id, No) then
            Np_1 -= 9000
        elseif Bu(B5.passivePriority, ng.id, No) then
            Np_1 += 3000
        end
        if B5.preferOwned and nh.passives and nh.passives[ng.id] then
            Np_1 += 500
        elseif ni then
            Np_1 -= 700
        end
    elseif kind == "relic" then
        Np_1 = B5.takeRelics and 1500 or -500
    elseif kind == "curse" then
        Np_1 = -4000
    elseif kind == "filler" then
        Np_1 = -1000
    else
        Np_1 = 0
    end
    if type(ng.level) == "number" then
        Np_1 += ng.level * 10
    end
    return Np_1 + Cv(ng)
end
local function fn1471(ac)
    return type(ac) == "function"
end
local function fn1479(pB)
    local O_ = tonumber(pB) or 30
    B5.orbGrab = O_ / 100
end
local function fn1484(jR)
    local Lq_1
    local Lp_1
    if not BN then
        return false
    end
    Lp_1, Lq_1 = pcall(BN.runRestrictions)
    local Lr = Lp_1 and type(Lq_1) == "table" and Lq_1.noAbility
    if Lr then
        return false
    end
    local Lp_2 = tonumber(Bi.healthCostFraction) or 0
    if Lp_2 > 0 then
        local Lp_3 = CI(jR, "Health", 0)
        local Lr_1 = CI(jR, "MaxHealth", 0)
        if Lr_1 <= 0 or Lp_3 <= Lr_1 * Lp_2 then
            return false
        end
        return true
    end
    return true
end
local function fn1554()
    local Eq_1
    local Er_1
    local Ep = {}
    if not BN then
        return Ep
    end
    Eq_1, Er_1 = pcall(BN.runAtoms.loadouts)
    local Es = not Eq_1 or type(Er_1) ~= "table"
    if Es then
        return Ep
    end
    local Eq_2 = Er_1[tostring(LocalPlayer.UserId)]
    if type(Eq_2) ~= "table" then
        return Ep
    end
    for i, v in ipairs({ "weapons", "passives" }) do
        local Er_2 = Eq_2[v]
        if type(Er_2) == "table" then
            Ep[v] = {}
            for i, v2 in ipairs(Er_2) do
                local Er_3 = type(v2) == "table" and type(v2.id) == "string"
                if Er_3 then
                    Ep[v][v2.id] = v2
                end
            end
        end
    end
    return Ep
end
local function fn1560(pt)
    local OS = tonumber(pt) or 120
    B5.dodgeLead = OS / 100
end
local function fn1582(eD)
    local Hz = os.clock()
    local projectileLookahead = B5.projectileLookahead
    local projectileRadius = B5.projectileRadius
    local HC = Vector3.zero
    local HD = false
    for i, v in ipairs(Co.projectiles) do
        local HF = v.origin + v.direction * ((Hz - v.startedAt) * v.speed)
        local HE_1 = eD - HF
        local HG = HE_1.X * v.direction.X + HE_1.Z * v.direction.Z
        if HG > -2 and HG <= v.speed * projectileLookahead then
            local HE_3 = HF + v.direction * math.max(HG, 0)
            local HF_1 = Vector3.new(eD.X - HE_3.X, 0, eD.Z - HE_3.Z)
            if HF_1.Magnitude <= projectileRadius then
                HD = true
                local HE_4 = Vector3.new(-v.direction.Z, 0, v.direction.X)
                if HF_1.Magnitude > 0.25 then
                    local HG_1 = HF_1:Dot(HE_4) >= 0 and HE_4
                    HE_4 = HG_1 or -HE_4
                end
                HC += HE_4
            end
        end
    end
    if not HD then
        return Vector3.zero
    end
    return Cf(HC)
end
local function fn1586()
    local Pg = {}
    if not CN(getgenv) then
        table.insert(Pg, "getgenv")
    end
    local Ph = not CN(setclipboard) and not CN(toclipboard)
    if Ph then
        table.insert(Pg, "clipboard")
    end
    if BG then
        table.insert(Pg, "game bindings")
    end
    return Pg
end
local function fn1657(io, ip)
    local KM = math.max(B5.orbHop, 2)
    local KN = 0
    while true do
        local KO = Cx() and io.Parent
        if not KO then
            return false
        end
        local KO_1 = ip - io.Position
        if KO_1.Magnitude <= KM then
            BW(io, ip)
            return true
        end
        BW(io, io.Position + KO_1.Unit * KM)
        KN += 1
        if KN > 40 then
            break
        end
        task.wait(B5.orbHopDelay)
    end
    return false
end
local function fn1659(gE, gF)
    local JU = gF * gF
    local JV = 0
    for i, v in ipairs(BA(gE, gF + 5)) do
        local JW = v.position - gE
        if JW.X * JW.X + JW.Z * JW.Z <= JU then
            JV += 1
        end
    end
    return JV
end
local function fn1746(fO)
    local I4_1
    local I3_1
    local I2_1
    local orbRange = B5.orbRange
    local IZ_1
    local I_ = orbRange * orbRange
    local I0 = B5.orbDangerRadius * B5.orbDangerRadius
    local I1 = BA(fO, orbRange + B5.orbDangerRadius)
    I2_1, IZ_1 = nil, math.huge
    I4_1, I3_1 = 0, 0
    for i, v in ipairs(Ck()) do
        local I5 = v - fO
        local I6 = I5.X * I5.X + I5.Z * I5.Z
        if I6 <= I_ then
            I4_1 += 1
            local I5_1 = 0
            for i, v2 in ipairs(I1) do
                local I7 = v2.position - v
                if I7.X * I7.X + I7.Z * I7.Z <= I0 then
                    I5_1 += 1
                    if I5_1 > B5.orbMaxEnemies then
                        break
                    end
                end
            end
            if I5_1 > B5.orbMaxEnemies then
                I3_1 += 1
            elseif I6 < IZ_1 then
                I2_1, IZ_1 = v, I6
            end
        end
    end
    if not I2_1 then
        return nil, I4_1, I3_1
    elseif I4_1 - I3_1 < B5.orbMinCount then
        return nil, I4_1, I3_1
    else
        return I2_1, I4_1, I3_1
    end
end
local function fn1747(po)
    local OP = tonumber(po) or 120
    B5.orbitSpeed = OP / 100
end
local function fn1772()
    local EP_1
    local EM = {}
    if not BN then
        return EM
    end
    local UnitState = BN.UnitState
    for i, v in ipairs(CollectionService:GetTagged(CG)) do
        local EO = v:IsA("BasePart") and v.Parent
        local EO_1
        if EO then
            EO_1, EP_1 = pcall(UnitState.getTeam, v)
            if EO_1 and EP_1 == Cz then
                local EO_2 = select(2, pcall(UnitState.retired, v))
                local EP_2 = select(2, pcall(UnitState.getHealth, v))
                local EQ_1 = EO_2 ~= true and type(EP_2) == "number" and EP_2 > 0
                if EQ_1 then
                    EM[#EM + 1] = v
                end
            end
        end
    end
    return EM
end
local function fn1777(pv)
    local OU = tonumber(pv) or 140
    B5.projectileLookahead = OU / 100
end
local function fn1833(px)
    local OW = tonumber(px) or 300
    B5.orbHold = OW / 100
end
Bi = nil
Bj = nil
Bk = nil
Bl = nil
LocalPlayer = nil
Bo = nil
Bp = nil
Bq = nil
Br = nil
Bu = nil
By = nil
CollectionService = nil
BA = nil
BB = nil
BF = nil
BG = nil
BI = nil
BJ = nil
BK = nil
BL = nil
BM = nil
BN = nil
BO = nil
BQ = nil
BR = nil
BT = nil
BU = nil
BW = nil
BX = nil
BY = nil
B_ = nil
CoreGui = nil
B1 = nil
B2 = nil
local Players, Bh, Bm, Bs, Bt, Workspace, Bw, Bx, BC, BD, BE, Lighting, TeleportService, BS, BV, BZ
B5 = nil
B7 = nil
Ca = nil
Cb = nil
Cf = nil
Cg = nil
Ch = nil
Ci = nil
Ck = nil
Cn = nil
Co = nil
Cq = nil
Cr = nil
Cs = nil
Ct = nil
Cv = nil
Cw = nil
Cx = nil
Cz = nil
CA = nil
CE = nil
CF = nil
CG = nil
CH = nil
CI = nil
CK = nil
CL = nil
worker = nil
CN = nil
local B3, B4, GuiService, B8, B9, Cc, Cd, HttpService, Cj, Cl, VirtualUser, Cp, UserInputService, Cy, RunService, CC, CD, ReplicatedStorage, CP, CQ
CR = nil
local C3 = if not game:IsLoaded() then 1 else 0
if C3 == 1 then
    game.Loaded:Wait()
end
Players, ReplicatedStorage, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, CollectionService, Workspace, LocalPlayer, CG, Cz, Cp, Cj, B9, B3, BV, BL = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
CollectionService = game:GetService("CollectionService")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local CO = "OuroborosSurviveTheSwarm"
CG = "CombatUnit"
Cz = "enemies"
Cp = {
    Fireball = true,
    IceBolt = true,
    IceBoltCharge = true,
    IcePlasmaBeam = true,
    SentryBolt = true,
    Snowball = true,
    WispBolt = true
}
Cj = { "Orbit", "Hover", "Overhead" }
B9 = { "Teleport", "Glide" }
B3 = { "Closest", "Densest Cluster", "Lowest Health", "Highest Health" }
BV = { "Off Cooldown", "Smart" }
BL = fn1011
if getgenv then
    getgenv().gethui = BL
end
Bj, B5, B_, BN, BG, By, BR, Co, Cq, B1, BI, Ch, B7, B2, Bi, Bs, BC, BF, Cd, CN, Cx, Cf, BX, CI, Bx, CQ, Cw, BK, CH, B4, BU, BA, CL, CR, Ci, CC, Ca, BJ, Cg, Ck, BD, Bk, BO, CE, CA, Br, BT, BB, CF, Cr, Cn, Cb, BY, Bl, BW, CK, Bt, BS, worker, Bo, BM, BQ, Bp, CD, BE, Bm, B8, Bh, CP, Cc, Bu, Cs, Cv, Ct, Cl, Bw, Cy, BZ, Bq = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn1067)
local function CS(B)
    local Di
    local Dj
    local Dk
    Di = nil
    Dj = nil
    Dk = nil
    local Dl = B ~= ""
    local Dm = type(B) == "string" and Dl
    assert(Dm, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    Dk = getgenv()
    assert(type(Dk) == "table", "getgenv did not return a table")
    local Dl_1 = Dk[B]
    if Dl_1 ~= nil then
        local Dm_1 = type(Dl_1) == "table" and type(Dl_1.Unload) == "function"
        assert(Dm_1, "Namespace is occupied")
        Dl_1.Unload()
        assert(Dk[B] == nil, "Previous instance did not release its namespace")
    end
    Di = {}
    Dj = { State = {}, Unloaded = false }
    Dj.Track = function(H)
        assert(type(H) == "function", "Cleanup must be callable")
        if Dj.Unloaded then
            H()
        else
            table.insert(Di, H)
        end
        return H
    end
    Dj.Unload = function()
        local C8_1
        local C7_1
        if Dj.Unloaded then
            return
        end
        Dj.Unloaded = true
        local C5 = {}
        local Dc = #Di
        local Db = -1
        while false and Dc <= 1 or true and Dc >= 1 do
            local Dd = Dc
            local C6_1 = table.remove(Di, Dd)
            C7_1, C8_1 = pcall(C6_1)
            if not C7_1 then
                table.insert(C5, tostring(C8_1))
            end
            Dc += Db
        end
        table.clear(Dj.State)
        if #C5 > 0 then
            error("Cleanup incomplete: " .. table.concat(C5, "; "), 0)
        end
        if Dk[B] == Dj then
            Dk[B] = nil
        end
    end
    Dk[B] = Dj
    return Dj
end
Cd = function(U, V)
    local Dp = type(U) == "table" and type(U.Track) == "function"
    assert(Dp, "FeatureAPI required")
    local Dp_1 = type(V) == "table" and type(V.OnUnload) == "function"
    assert(Dp_1, "UI library required")
    assert(type(V.Unload) == "function", "UI unload required")
    U.Track(function()
        if not V.Unloaded then
            V:Unload()
        end
    end)
    V:OnUnload(function()
        U.Unload()
    end)
end
Bj = CS(CO)
CN = fn1471
Cx = fn441
Cf = fns.fn138
BX = fn275
CI = fn818
B5 = {
    autoFarm = false,
    farmMode = "Hover",
    targetMode = "Densest Cluster",
    standoff = 18,
    orbitRadius = 16,
    orbitSpeed = 1.2,
    hoverHeight = 14,
    overheadHeight = 12,
    searchRange = 260,
    ignoreBosses = false,
    autoCast = false,
    castMode = "Smart",
    castHealthPercent = 55,
    castCrowdCount = 4,
    castCrowdRadius = 16,
    autoDodge = false,
    dodgeLead = 1.2,
    dodgeMargin = 6,
    projectileLookahead = 1.4,
    projectileRadius = 7,
    dodgeWithAbility = false,
    autoOrbs = false,
    orbRange = 110,
    orbMinCount = 1,
    orbHold = 3,
    orbAltitude = 6,
    orbDangerRadius = 18,
    orbMaxEnemies = 2,
    orbHealthFloor = 40,
    orbCruise = 26,
    orbColumn = 4,
    collectMode = "Teleport",
    orbHop = 24,
    orbHopDelay = 0.25,
    orbGrab = 0.3,
    leadEnemies = false,
    leadDistance = 55,
    leadClusterMin = 3,
    retreat = false,
    retreatHealth = 25,
    retreatResume = 70,
    retreatAltitude = 80,
    autoRetry = false,
    autoLobby = false,
    autoGiveUp = false,
    autoLaunch = false,
    autoExtract = false,
    runEndDelay = 1.5,
    skipCutscenes = false,
    autoDraft = false,
    draftDelay = 0.6,
    preferOwned = true,
    preferHigherRarity = true,
    takeRelics = true,
    autoReroll = false,
    autoBanish = false,
    rerollFloor = 0,
    weaponPriority = {},
    weaponAvoid = {},
    passivePriority = {},
    passiveAvoid = {}
}
B_ = {
    farm = "Idle",
    cast = "Idle",
    dodge = "Idle",
    orbs = "Idle",
    draft = "Idle",
    retreat = "Idle",
    flow = "Idle"
}
BN = nil
BG = nil
By = { weapons = {}, passives = {}, weaponName = {}, passiveName = {} }
Bx = function()
    local SharedBase
    local Packages
    local DP
    local PlayerScripts
    local Shared
    Packages = nil
    PlayerScripts = nil
    SharedBase = nil
    DP = nil
    Shared = nil
    SharedBase = ReplicatedStorage:WaitForChild("SharedBase", 30)
    Packages = ReplicatedStorage:WaitForChild("Packages", 30)
    Shared = ReplicatedStorage:WaitForChild("Shared", 30)
    local DR = not Packages
    local DR_3
    local DS = not SharedBase
    local DS_1
    local DX = if DS then 1 else 0
    local DV = 217 * DX + 483 * (1 - DX)
    local DW = 2590 * DX + 425 * (1 - DX)
    if not ((DV * 1830 + DW * 2298 + DV * DW) % 16777213 == 6910960) then
        DS = DR
    end
    if DS or not Shared then
        return nil, "Game folders are missing"
    end
    PlayerScripts = LocalPlayer:WaitForChild("PlayerScripts", 30)
    local DR_2 = PlayerScripts and PlayerScripts:WaitForChild("SharedClient", 30)
    DP = DR_2
    if not DP then
        return nil, "SharedClient is missing"
    end
    DR_3, DS_1 = pcall(function()
        local Knit = require(Packages:WaitForChild("Knit"))
        local DF = {
            Knit = Knit,
            Clock = require(SharedBase.ecs.Clock),
            UnitState = require(SharedBase.combat.UnitState),
            shapes = require(SharedBase.combat.shapes),
            VfxKind = require(SharedBase.combat.VfxKind),
            VfxWire = require(DP.world.VfxWire),
            Telegraphs = require(DP.world.attackvfx.lib.Telegraphs),
            runRestrictions = require(DP.state.runRestrictions),
            runAtoms = require(Shared.runAtoms),
            Abilities = require(SharedBase.config.Abilities),
            Weapons = require(SharedBase.config.Weapons),
            Passives = require(SharedBase.config.Passives),
            DraftRarities = require(SharedBase.config.DraftRarities),
            Rarities = require(SharedBase.config.Rarities)
        }
        DF.AbilityService = Knit.GetService("AbilityService")
        DF.DraftService = Knit.GetService("DraftService")
        DF.XpOrbService = Knit.GetService("XpOrbService")
        DF.CombatService = Knit.GetService("CombatService")
        DF.DirectorService = Knit.GetService("DirectorService")
        DF.DropPodService = Knit.GetService("DropPodService")
        DF.CutsceneController = Knit.GetController("CutsceneController")
        local Client = PlayerScripts:FindFirstChild("Client")
        local DG = Client and Client:FindFirstChild("state")
        local DE_2 = DG
        if DG then
            DG = DE_2:FindFirstChild("leaveRun")
        end
        local DH = DG
        if DH then
            DF.leaveRun = require(DH)
        end
        local DG_1 = DE_2 and DE_2:FindFirstChild("runOverlays")
        if DG_1 then
            DF.runOverlays = require(DG_1)
        end
        local podLaunch = DP.state:FindFirstChild("podLaunch")
        if podLaunch then
            DF.podLaunch = require(podLaunch)
        end
        return DF
    end)
    if not DR_3 then
        return nil, tostring(DS_1)
    end
    local DR_4 = type(DS_1) ~= "table" or not DS_1.AbilityService or not DS_1.DraftService
    if DR_4 then
        return nil, "Knit services are unavailable"
    end
    return DS_1, nil
end
CQ = fn236
Cw = fns.fn10
BR = { Launch = true, RunOver = true }
BK = fn423
CH = fns.fn14
B4 = fn1554
BU = fn1772
BA = fns.fn177
CL = fn304
CR = fns.fn64
Co = { telegraphs = {}, zones = {}, projectiles = {} }
Ci = fn1376
CC = function()
    local connection
    if not BN then
        return
    end
    local Telegraphs = BN.Telegraphs
    local show = Telegraphs.show
    local hazard = Telegraphs.hazard
    if CN(show) then
        Telegraphs.show = function(dd)
            local Gr = show(dd)
            local Gs = Cx() and type(dd) == "table" and dd.shape ~= nil and type(Gr) == "table"
            if Gs then
                local insert = table.insert
                local telegraphs = Co.telegraphs
                local shape = dd.shape
                local Gv = type(Gr.burstAt) == "number" and Gr.burstAt
                local Gw = Gv
                if not Gw then
                    local Gv_1 = Cw()
                    local Gx = tonumber(dd.duration) or 1
                    Gw = Gv_1 + Gx
                end
                insert(telegraphs, { handle = Gr, shape = shape, burstAt = Gw })
            end
            return Gr
        end
        Bj.Track(function()
            if Telegraphs.show ~= show then
                Telegraphs.show = show
            end
        end)
    end
    local Hg = if CN(hazard) then 1 else 0
    if Hg == 1 then
        Telegraphs.hazard = function(du, dv)
            local GH = hazard(du, dv)
            local GI = Cx() and type(GH) == "table"
            if GI then
                local GF = { shape = du, dead = false }
                table.insert(Co.zones, GF)
                local GI_1 = getmetatable(GH)
                local GJ = GI_1 and GI_1.update
                local GK = GI_1
                local GE = GJ
                if GK then
                    GK = GI_1.release
                end
                local GG = GK
                if CN(GE) then
                    GH.update = function(dI, dJ, dK)
                        if dJ ~= nil then
                            GF.shape = dJ
                        end
                        return GE(dI, dJ, dK)
                    end
                end
                local GO = if CN(GG) then 1 else 0
                if GO == 1 then
                    GH.release = function(dN)
                        GF.dead = true
                        return GG(dN)
                    end
                end
            end
            return GH
        end
        Bj.Track(function()
            if Telegraphs.hazard ~= hazard then
                Telegraphs.hazard = hazard
            end
        end)
    end
    local Hb = BN.CombatService and BN.CombatService.AttackVFX
    local Hc = Hb
    if Hb then
        Hb = CN(Hc.Connect)
    end
    if Hb then
        connection = Hc:Connect(function(dV, ...)
            local G2_1
            local G1 = not Cx() or not B5.autoDodge
            local G1_1
            if G1 then
                return
            end
            G1_1, G2_1 = pcall(BN.VfxWire.kind, dV)
            if not G1_1 or not Cp[G2_1] then
                return
            end
            local G1_2 = table.pack(...)
            pcall(BN.VfxWire.deliver, dV, function(d6, d7, d8, d9)
                if typeof(d7) ~= "Vector3" then
                    return
                end
                local GQ
                if typeof(d8) == "Vector3" then
                    GQ = Cf(d8)
                elseif typeof(d8) == "Instance" then
                    local GR_1 = d8:IsA("Model") and d8.PrimaryPart
                    local GS_1 = GR_1 or d8
                    local GR_2 = GS_1
                    if GS_1 then
                        GS_1 = GR_2:IsA("BasePart")
                    end
                    if GS_1 then
                        GQ = Cf(GR_2.Position - d7)
                    end
                end
                if not GQ or GQ == Vector3.zero then
                    return
                end
                local GR_4 = tonumber(d9) or 0
                if GR_4 <= 0 then
                    return
                end
                local insert = table.insert
                local projectiles = Co.projectiles
                local GU = os.clock()
                local GV = os.clock()
                local GX = tonumber(d6) or 3
                insert(projectiles, {
                    origin = d7,
                    direction = GQ,
                    speed = GR_4,
                    startedAt = GU,
                    expiresAt = GV + math.clamp(GX, 0.2, 8)
                })
            end, table.unpack(G1_2, 1, G1_2.n))
        end)
        Bj.Track(function()
            local G5 = connection and CN(connection.Disconnect)
            if G5 then
                connection:Disconnect()
            end
        end)
    end
end
Ca = fn541
BJ = fn1582
Cg = fn749
Cq = {}
Ck = fn210
BD = function()
    local connection
    if not BN or not BN.XpOrbService then
        return
    end
    local XpOrbService = BN.XpOrbService
    local IU_1 = not XpOrbService.OrbEvents or not CN(XpOrbService.OrbEvents.Connect)
    if IU_1 then
        return
    end
    connection = XpOrbService.OrbEvents:Connect(function(fr)
        local It = not Cx() or type(fr) ~= "table"
        if It then
            return
        end
        if type(fr.spawns) == "table" then
            for k, v in pairs(fr.spawns) do
                local It_1 = type(v) == "table" and v.id ~= nil and typeof(v.position) == "Vector3"
                if It_1 then
                    local id = v.id
                    local position = v.position
                    local Iv = tonumber(v.value) or 1
                    Cq[id] = { position = position, value = Iv }
                end
            end
        end
        if type(fr.claims) == "table" then
            for k, v in pairs(fr.claims) do
                local It_3 = type(v) == "table" and v.id ~= nil
                if It_3 then
                    Cq[v.id] = nil
                end
            end
        end
        if type(fr.gone) == "table" then
            for k, v in pairs(fr.gone) do
                Cq[v] = nil
            end
        end
    end)
    Bj.Track(function()
        local IQ = connection and CN(connection.Disconnect)
        if IQ then
            connection:Disconnect()
        end
        table.clear(Cq)
    end)
    local IU_2 = XpOrbService.RequestOrbs and CN(XpOrbService.RequestOrbs.Fire)
    if IU_2 then
        pcall(function()
            XpOrbService.RequestOrbs:Fire()
        end)
    end
end
Bk = fn1746
BO = fn667
CE = fn1390
CA = fn1659
Br = function()
    local Portal
    Portal = nil
    local J6_1
    local J5_1
    if not BN then
        return nil
    end
    Portal = Workspace:FindFirstChild("Portal")
    if not Portal then
        return nil
    end
    J5_1, J6_1 = pcall(function()
        if Portal:IsA("BasePart") then
            return Portal.Position
        end
        return Portal:GetPivot().Position
    end)
    local J7 = not J5_1 or typeof(J6_1) ~= "Vector3"
    if J7 then
        return nil
    end
    return J6_1
end
B1 = {
    orbitAngle = 0,
    orbHoldUntil = 0,
    orbFocus = nil,
    leadUntil = 0,
    leadPoint = nil,
    retreatAnchor = nil
}
if (not B4 or not BK) and (BS or not B4) and (Bs and BS and (BK and CR)) or not ((not B4 or not BK) and (BS or not B4) and (Bs and BS and (BK and CR))) then
    BT = fn532
    BI = -16
    BB = fn760
    CF = fn728
else
    CF = fn532
    BT = -16
    BI = fn760
    BB = fn728
end
Cr = fn928
Cn = fn1142
Cb = fn736
BY = fn1153
Bl = fns.fn61
Ch = false
B7 = 0
B2 = 0
BW = fn966
CK = fn1657
Bt = fn1000
BS = function()
    local K5
    K5 = "OuroborosSurviveTheSwarmSteering"
    local K6 = pcall(function()
        RunService:BindToRenderStep(K5, Enum.RenderPriority.Character.Value, function(ja)
            local K3_1
            local K2_1
            K2_1, K3_1 = pcall(Bt, ja)
            if not K2_1 then
                B_.farm = "Error: " .. tostring(K3_1)
            end
        end)
    end)
    if K6 then
        Bj.Track(function()
            pcall(function()
                RunService:UnbindFromRenderStep(K5)
            end)
            local jo, jp, jq = BX()
            Bl(jq, jp)
            Ch = false
        end)
    end
end
Bi = { id = nil, readyAt = {}, cooldown = 0, healthCostFraction = 0, pausedAt = nil }
worker = function()
    local La_1
    local K9 = not BN or not BN.AbilityService
    local K9_1
    if K9 then
        return
    end
    local K8 = select(2, pcall(function()
        return BN.AbilityService:State()
    end))
    if type(K8) ~= "table" then
        return
    end
    local Lf = if CN(K8.await) then 1 else 0
    if Lf == 1 then
        K9_1, La_1 = K8:await()
    else
        K9_1, La_1 = pcall(function()
            return K8:expect()
        end)
    end
    local Lb = K9_1 and type(La_1) == "table"
    if Lb then
        Bi = La_1
    end
end
Bo = fn232
BM = fn1484
BQ = fn350
Bp = function(kG)
    local LH
    local LI = not BN or not BN.AbilityService
    local LI_1, LI_2
    if LI then
        return false
    end
    LI_1, LH = pcall(function()
        return BN.AbilityService:Use(kG)
    end)
    local LJ = not LI_1 or type(LH) ~= "table"
    local LJ_1
    if LJ then
        return false
    end
    if CN(LH.await) then
        LJ_1, LI_2 = LH:await()
    else
        LJ_1, LI_2 = pcall(function()
            return LH:expect()
        end)
    end
    local LK = LJ_1 and type(LI_2) == "table"
    if LK then
        Bi = LI_2
    end
    return LJ_1 == true
end
CD = fn836
BE = fn1440
Bs = { actedOn = nil, skippedPod = nil, launchAt = 0 }
Bm = fn1279
B8 = fn317
if (Ch or Cq or (worker or not CL) or Ch and false and (not CL and not Ch)) and (Cq and Cq or not BX and not BX or (not Cq and not Ch or not Cq and worker)) or (Cq and not Cq or false and CL) and (Cq or not BX or Ch and CL) and (Cq and worker or false and not CL or Ch and BX and (BX and not Ch)) or not ((Ch or Cq or (worker or not CL) or Ch and false and (not CL and not Ch)) and (Cq and Cq or not BX and not BX or (not Cq and not Ch or not Cq and worker)) or (Cq and not Cq or false and CL) and (Cq or not BX or Ch and CL) and (Cq and worker or false and not CL or Ch and BX and (BX and not Ch))) then
    Bh = fn751
    CP = function()
        local Play
        local MM
        MM = nil
        Play = nil
        MM = BN and BN.CutsceneController
        local MO_2 = not MM or not CN(MM.Play)
        if MO_2 then
            return
        end
        Play = MM.Play
        MM.Play = function(l0, l1, l2)
            local MC = Play(l0, l1, l2)
            local MD = MC and Cx() and B5.skipCutscenes
            if MD then
                task.defer(function()
                    local Mx = Cx() and B5.skipCutscenes
                    if Mx then
                        pcall(function()
                            l0:Stop(l1)
                        end)
                        B_.flow = "Skipped " .. tostring(l1)
                    end
                end)
            end
            return MC
        end
        Bj.Track(function()
            if MM.Play ~= Play then
                MM.Play = Play
            end
        end)
    end
else
    CP = fn751
    Bh = function()
        local Play
        local MM
        MM = nil
        Play = nil
        MM = BN and BN.CutsceneController
        local MO_1 = not MM or not CN(MM.Play)
        if MO_1 then
            return
        end
        Play = MM.Play
        MM.Play = function(l0, l1, l2)
            local MC = Play(l0, l1, l2)
            local MD = MC and Cx() and B5.skipCutscenes
            if MD then
                task.defer(function()
                    local Mx = Cx() and B5.skipCutscenes
                    if Mx then
                        pcall(function()
                            l0:Stop(l1)
                        end)
                        B_.flow = "Skipped " .. tostring(l1)
                    end
                end)
            end
            return MC
        end
        Bj.Track(function()
            if MM.Play ~= Play then
                MM.Play = Play
            end
        end)
    end
end
Cc = function()
    local MV_1
    local MU_2
    local MY = false
    repeat
        if Cx() then
            if BN then
                local MR = B5.autoLaunch and Bh() and os.clock() >= Bs.launchAt
                if MR then
                    Bs.launchAt = os.clock() + 1.5
                    B_.flow = "Launching"
                    pcall(function()
                        BN.DropPodService:Launch()
                    end)
                end
                if B5.skipCutscenes then
                    local MQ = B8()
                    if MQ and MQ.id ~= nil and Bs.skippedPod ~= MQ.id then
                        Bs.skippedPod = MQ.id
                        B_.flow = "Skipping the drop"
                        pcall(function()
                            BN.DropPodService:Skip(MQ.id)
                        end)
                    elseif not MQ then
                        Bs.skippedPod = nil
                    end
                end
                local MR_2 = Bm()
                if MR_2 == nil then
                    Bs.actedOn = nil
                    if B5.autoRetry or B5.autoLobby or B5.autoGiveUp or B5.autoLaunch then
                        if not B5.skipCutscenes or B_.flow == "Idle" then
                            B_.flow = "Watching"
                        end
                    else
                        B_.flow = "Idle"
                    end
                elseif Bs.actedOn ~= MR_2 then
                    local MS_3 = type(MR_2.final) == "table" and MR_2.final
                    local MT = MS_3 or nil
                    local MT_1 = (CN(MR_2.onRetry))
                    if MT_1 then
                        MT_1 = not MT or MT.retry ~= false
                    end
                    local MS_5 = MT_1
                    MV_1, MU_2 = nil, nil
                    local MT_2 = B5.autoGiveUp and CN(MR_2.onGiveUp)
                    if MT_2 then
                        MV_1, MU_2 = MR_2.onGiveUp, "Giving up"
                    else
                        if B5.autoRetry and MS_5 then
                            MV_1, MU_2 = MR_2.onRetry, "Run over, retrying"
                        else
                            local MS_6 = B5.autoLobby and CN(MR_2.onLeave)
                            if MS_6 then
                                MV_1, MU_2 = MR_2.onLeave, "Run over, heading to the lobby"
                            end
                        end
                    end
                    if MV_1 then
                        Bs.actedOn = MR_2
                        B_.flow = MU_2
                        task.wait(B5.runEndDelay)
                        local MS_7 = Cx() and Bm() == MR_2
                        if MS_7 then
                            pcall(MV_1)
                        end
                    elseif MR_2.mode ~= nil then
                        B_.flow = "Run over, waiting on you"
                    end
                end
            end
            task.wait(0.4)
        else
            MY = true
        end
    until MY
end
BC = { pending = nil, handled = {}, banished = {} }
Bu = fn1088
Cs = fn1427
Cv = fn512
Ct = fn1447
Cl = fn701
Bw = function(nL)
    if type(nL) ~= "table" then
        return false
    elseif CN(nL.await) then
        return (nL:await())
    else
        return (pcall(function()
            return nL:expect()
        end))
    end
end
Cy = function(nP)
    local NU
    local NS
    local NV
    local NT
    NS = nil
    NT = nil
    NU = nil
    NV = nil
    local NW
    local N1_1
    local N0_1
    local NX = type(nP) ~= "table" or type(nP.options) ~= "table"
    if NX then
        return
    end
    NS = BN and BN.DraftService
    if not NS then
        return
    end
    pcall(function()
        NS:Seen()
    end)
    if B5.draftDelay > 0 then
        task.wait(B5.draftDelay)
    end
    local NX_2 = not Cx() or not B5.autoDraft or BC.pending ~= nP
    if NX_2 then
        return
    end
    local NX_3 = B4()
    local NY = nP.needsReplacement == true
    local NZ = type(nP.relicSacrifices) == "table" and #nP.relicSacrifices > 0
    NT, N1_1, NW, N0_1 = nil, nil, nil, nil
    for i, v in ipairs(nP.options) do
        local NZ_1 = Ct(v, NX_3, NY)
        if not N1_1 or NZ_1 > N1_1 then
            NT, N1_1 = i, NZ_1
        end
        if not N0_1 or NZ_1 < N0_1 then
            NW, N0_1 = i, NZ_1
        end
    end
    if not NT then
        return
    end
    local NZ_2 = B5.autoBanish and NW and N0_1 and N0_1 <= -5000 and type(nP.banishesLeft) == "number" and nP.banishesLeft > 0 and not BC.banished[nP]
    if NZ_2 then
        BC.banished[nP] = true
        B_.draft = "Banishing an avoided card"
        local Oc = if Bw(select(2, pcall(function()
            return NS:Banish(NW)
        end))) then 1 else 0
        if Oc == 1 then
            return
        end
    end
    if B5.autoReroll and N1_1 and N1_1 < B5.rerollFloor and nP.canReroll and not BC.handled[nP] then
        BC.handled[nP] = true
        B_.draft = "Rerolling the hand"
        if Bw(select(2, pcall(function()
            return NS:Reroll()
        end))) then
            return
        end
    end
    local NZ_4 = nP.options[NT]
    NU = nil
    NV = nil
    if NZ then
        NU = 1
    elseif NY then
        NV = Cl(nP, NZ_4, NX_3)
    end
    local format = string.format
    local NY_1 = Cs(NZ_4) or "option " .. NT
    B_.draft = format("Picked %s", NY_1)
    pcall(function()
        NS:Choose(NT, NV, false, nil, NU)
    end)
end
BZ = function()
    local connection, connection2
    local Ox = BN and BN.DraftService
    local Ox_1 = not Ox or not Ox.OfferDraft or not CN(Ox.OfferDraft.Connect)
    if Ox_1 then
        return
    end
    connection2 = Ox.OfferDraft:Connect(function(oD)
        local Op = not Cx() or not B5.autoDraft
        if Op then
            return
        end
        BC.pending = oD
        task.spawn(function()
            local Ok_1
            local Oj_1
            Oj_1, Ok_1 = pcall(Cy, oD)
            if not Oj_1 then
                B_.draft = "Error: " .. tostring(Ok_1)
            end
        end)
    end)
    Bj.Track(function()
        local Or = connection2 and CN(connection2.Disconnect)
        if Or then
            connection2:Disconnect()
        end
    end)
    local Ox_2 = Ox.DraftResolved and CN(Ox.DraftResolved.Connect)
    if Ox_2 then
        connection = Ox.DraftResolved:Connect(function()
            BC.pending = nil
            table.clear(BC.handled)
            table.clear(BC.banished)
        end)
        Bj.Track(function()
            local Ot = connection and CN(connection.Disconnect)
            if Ot then
                connection:Disconnect()
            end
        end)
    end
end
local function CV(o5, o6)
    return function(o7)
        if o6 then
            B5[o5] = o6(o7)
        else
            B5[o5] = o7
        end
    end
end
Bq = fn1094
Bj.SetAutoFarm = CV("autoFarm")
Bj.SetFarmMode = CV("farmMode")
Bj.SetTargetMode = CV("targetMode")
Bj.SetStandoff = CV("standoff", tonumber)
Bj.SetOrbitRadius = CV("orbitRadius", tonumber)
Bj.SetOrbitSpeed = fn1747
Bj.SetHoverHeight = CV("hoverHeight", tonumber)
Bj.SetOverheadHeight = CV("overheadHeight", tonumber)
Bj.SetSearchRange = CV("searchRange", tonumber)
Bj.SetIgnoreBosses = CV("ignoreBosses")
Bj.SetAutoCast = CV("autoCast")
Bj.SetCastMode = CV("castMode")
Bj.SetCastHealthPercent = CV("castHealthPercent", tonumber)
Bj.SetCastCrowdCount = CV("castCrowdCount", tonumber)
Bj.SetCastCrowdRadius = CV("castCrowdRadius", tonumber)
Bj.SetAutoDodge = fn420
Bj.SetDodgeLead = fn1560
Bj.SetDodgeMargin = CV("dodgeMargin", tonumber)
Bj.SetProjectileLookahead = fn1777
Bj.SetProjectileRadius = CV("projectileRadius", tonumber)
Bj.SetDodgeWithAbility = CV("dodgeWithAbility")
Bj.SetAutoOrbs = CV("autoOrbs")
Bj.SetOrbRange = CV("orbRange", tonumber)
Bj.SetOrbMinCount = CV("orbMinCount", tonumber)
Bj.SetOrbHold = fn1833
Bj.SetOrbAltitude = CV("orbAltitude", tonumber)
Bj.SetOrbDangerRadius = CV("orbDangerRadius", tonumber)
Bj.SetOrbMaxEnemies = CV("orbMaxEnemies", tonumber)
Bj.SetOrbHealthFloor = CV("orbHealthFloor", tonumber)
Bj.SetOrbCruise = CV("orbCruise", tonumber)
Bj.SetCollectMode = CV("collectMode")
Bj.SetOrbHop = CV("orbHop", tonumber)
Bj.SetOrbHopDelay = fn246
Bj.SetOrbGrab = fn1479
Bj.SetLeadEnemies = CV("leadEnemies")
Bj.SetLeadDistance = CV("leadDistance", tonumber)
Bj.SetLeadClusterMin = CV("leadClusterMin", tonumber)
Bj.SetRetreat = fn1216
Bj.SetRetreatHealth = CV("retreatHealth", tonumber)
Bj.SetRetreatResume = CV("retreatResume", tonumber)
Bj.SetRetreatAltitude = CV("retreatAltitude", tonumber)
Bj.SetAutoRetry = CV("autoRetry")
Bj.SetAutoLobby = CV("autoLobby")
Bj.SetAutoGiveUp = CV("autoGiveUp")
Bj.SetAutoLaunch = CV("autoLaunch")
Bj.SetAutoExtract = CV("autoExtract")
Bj.SetSkipCutscenes = CV("skipCutscenes")
Bj.SetRunEndDelay = fn351
Bj.SetAutoDraft = CV("autoDraft")
Bj.SetDraftDelay = fn408
Bj.SetPreferOwned = CV("preferOwned")
Bj.SetPreferHigherRarity = CV("preferHigherRarity")
Bj.SetTakeRelics = CV("takeRelics")
Bj.SetAutoReroll = CV("autoReroll")
Bj.SetAutoBanish = CV("autoBanish")
Bj.SetWeaponPriority = fn391
Bj.SetWeaponAvoid = fn262
Bj.SetPassivePriority = fn976
Bj.SetPassiveAvoid = fn934
Bj.WeaponValues = fn1109
Bj.PassiveValues = fn245
Bj.AbilityLabel = fn827
Bj.StatusLine = fn672
Bj.Support = fn1586
BF = task.spawn(function()
    local connection
    local Pw_1
    local Pv_1
    Pw_1, Pv_1 = Bx()
    if not Cx() then
        return
    end
    if not Pw_1 then
        BG = Pv_1 or "unknown error"
        return
    end
    BN = Pw_1
    CQ(Pw_1)
    worker()
    local Pv_2 = Pw_1.AbilityService and Pw_1.AbilityService.Changed
    local Pw_2 = Pv_2
    if Pv_2 then
        Pv_2 = CN(Pw_2.Connect)
    end
    if Pv_2 then
        connection = Pw_2:Connect(function()
            if Cx() then
                task.spawn(worker)
            end
        end)
        Bj.Track(function()
            local Pn = connection and CN(connection.Disconnect)
            if Pn then
                connection:Disconnect()
            end
        end)
    end
    CC()
    CP()
    BD()
    BZ()
    BS()
    for i, v in ipairs({ CD, BE, Cc }) do
        local Pt
        Pt = task.spawn(v)
        Bj.Track(function()
            if coroutine.status(Pt) ~= "dead" then
                pcall(task.cancel, Pt)
            end
        end)
    end
end)
Bj.Track(fn986)
local function CT()
    local rl
    local r1
    local qR = "https://rscripts.net/@Ouroboros"
    local qO = "Survive The Swarm"
    local qS = "https://ouroboros-hub-rbx.web.app/"
    local qQ = "https://discord.gg/synapsex"
    local qP = "v0.7"
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    local Toggles = Library.Toggles
    local Options = Library.Options
    Cd(Bj, Library)
    local function q0(q1, q2)
        local PJ = CN(setclipboard) and setclipboard
        local PK = PJ
        if not PK then
            local PJ_1 = CN(toclipboard) and toclipboard
            PK = PJ_1 or nil
        end
        local PJ_2 = PK
        if not PJ_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local PK_1 = pcall(PJ_2, q1)
        if PK_1 then
            Library:Notify(q2)
        else
            Library:Notify("Failed to copy")
        end
    end
    local function onDiscord()
        q0(qQ, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = qQ, Copyable = true }, "|", qO, "|", qP },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    local rf = {
        [1] = Window:AddTab("Info", "info"),
        [2] = Window:AddTab("Main", "gamepad-2"),
        [3] = Window:AddTab("Player", "person-standing"),
        [4] = Window:AddTab("Settings", "settings")
    }
    local rg = { [1] = rf[2]:AddSubTab("Combat", "swords"), [2] = rf[2]:AddSubTab("Cards", "layers") }
    local function rh(ri)
        local DiscordGroup = ri:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    rh(rg[1])
    rh(rg[2])
    rh(rf[3])
    rh(rf[4])
    rl = "#ffb6c1"
    local function rm(rn)
        local ro = tostring(rn):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;")
        return string.format('<font color="%s">%s</font>', rl, ro)
    end
    local rq = {}
    local function rr()
        local AutoFarmGroup = rg[1]:AddRightGroupbox("Auto Farm", "crosshair")
        rq.farm = AutoFarmGroup:AddLabel(rm("Idle"), true)
        AutoFarmGroup:AddDivider()
        AutoFarmGroup:AddToggle("AutoFarm", {
            Text = "Auto Farm",
            Default = false,
            Tooltip = "Sits you in the air over the swarm so your weapons keep firing and nothing reaches you. Weapons shoot by themselves, this just handles where you stand",
            Callback = Bj.SetAutoFarm
        })
        AutoFarmGroup:AddDropdown("FarmMode", {
            Text = "Positioning",
            Values = Cj,
            Default = "Hover",
            Tooltip = "All three keep you off the ground. Hover parks over the swarm, Orbit circles it, Overhead sits right on the target. Being in the air is what the server logs as hover",
            Callback = Bj.SetFarmMode
        })
        AutoFarmGroup:AddDropdown("TargetMode", { Text = "Target Priority", Values = B3, Default = "Densest Cluster", Callback = Bj.SetTargetMode })
        AutoFarmGroup:AddSlider("OrbitRadius", {
            Text = "Orbit Radius",
            Default = 16,
            Min = 4,
            Max = 60,
            Rounding = 0,
            Suffix = " studs",
            Callback = Bj.SetOrbitRadius
        })
        AutoFarmGroup:AddSlider("OrbitSpeed", {
            Text = "Orbit Speed",
            Default = 120,
            Min = 20,
            Max = 400,
            Rounding = 0,
            Suffix = " %",
            Callback = Bj.SetOrbitSpeed
        })
        AutoFarmGroup:AddSlider("HoverHeight", {
            Text = "Hover Height",
            Default = 14,
            Min = 4,
            Max = 60,
            Rounding = 0,
            Suffix = " studs",
            Callback = Bj.SetHoverHeight
        })
        AutoFarmGroup:AddSlider("OverheadHeight", {
            Text = "Overhead Height",
            Default = 12,
            Min = 4,
            Max = 60,
            Rounding = 0,
            Suffix = " studs",
            Callback = Bj.SetOverheadHeight
        })
        AutoFarmGroup:AddSlider("SearchRange", {
            Text = "Search Range",
            Default = 260,
            Min = 40,
            Max = 600,
            Rounding = 0,
            Suffix = " studs",
            Callback = Bj.SetSearchRange
        })
        AutoFarmGroup:AddToggle("IgnoreBosses", {
            Text = "Ignore Bosses",
            Default = false,
            Tooltip = "Ignores huge health bars when picking a target",
            Callback = Bj.SetIgnoreBosses
        })
        local AutoCastAbilityGroup = rg[1]:AddLeftGroupbox("Auto Cast Ability", "zap")
        rq.cast = AutoCastAbilityGroup:AddLabel(rm("Loading"), true)
        AutoCastAbilityGroup:AddDivider()
        AutoCastAbilityGroup:AddToggle("AutoCast", {
            Text = "Auto Cast Ability",
            Default = false,
            Tooltip = "Uses your class ability. Iron Stance, Skirmish, Shadow Step, Blink, Grace Bloom, Bail Out",
            Callback = Bj.SetAutoCast
        })
        AutoCastAbilityGroup:AddDropdown("CastMode", {
            Text = "Cast Mode",
            Values = BV,
            Default = "Smart",
            Tooltip = "Off Cooldown burns every charge at the swarm. Smart saves it until you are hurt or boxed in",
            Callback = Bj.SetCastMode
        })
        AutoCastAbilityGroup:AddSlider("CastHealthPercent", {
            Text = "Cast Below Health",
            Default = 55,
            Min = 5,
            Max = 100,
            Rounding = 0,
            Suffix = " %",
            Callback = Bj.SetCastHealthPercent
        })
        AutoCastAbilityGroup:AddSlider("CastCrowdCount", {
            Text = "Cast When Surrounded By",
            Default = 4,
            Min = 1,
            Max = 40,
            Rounding = 0,
            Suffix = " enemies",
            Callback = Bj.SetCastCrowdCount
        })
        AutoCastAbilityGroup:AddSlider("CastCrowdRadius", {
            Text = "Crowd Radius",
            Default = 16,
            Min = 5,
            Max = 60,
            Rounding = 0,
            Suffix = " studs",
            Callback = Bj.SetCastCrowdRadius
        })
        local AutoDodgeGroup = rg[1]:AddLeftGroupbox("Auto Dodge", "shield")
        rq.dodge = AutoDodgeGroup:AddLabel(rm("Idle"), true)
        AutoDodgeGroup:AddDivider()
        AutoDodgeGroup:AddToggle("AutoDodge", {
            Text = "Auto Dodge",
            Default = false,
            Tooltip = "Walks out of red ground markers and hazards, and steps around incoming shots",
            Callback = Bj.SetAutoDodge
        })
        AutoDodgeGroup:AddSlider("DodgeLead", {
            Text = "Telegraph Lead",
            Default = 120,
            Min = 20,
            Max = 400,
            Rounding = 0,
            Suffix = " cs",
            Tooltip = "How early to leave a marker before it goes off, in hundredths of a second",
            Callback = Bj.SetDodgeLead
        })
        AutoDodgeGroup:AddSlider("DodgeMargin", {
            Text = "Escape Step",
            Default = 6,
            Min = 2,
            Max = 30,
            Rounding = 0,
            Suffix = " studs",
            Callback = Bj.SetDodgeMargin
        })
        AutoDodgeGroup:AddSlider("ProjectileLookahead", {
            Text = "Projectile Lookahead",
            Default = 140,
            Min = 20,
            Max = 400,
            Rounding = 0,
            Suffix = " cs",
            Callback = Bj.SetProjectileLookahead
        })
        AutoDodgeGroup:AddSlider("ProjectileRadius", {
            Text = "Projectile Clearance",
            Default = 7,
            Min = 2,
            Max = 25,
            Rounding = 0,
            Suffix = " studs",
            Callback = Bj.SetProjectileRadius
        })
        AutoDodgeGroup:AddToggle("DodgeWithAbility", {
            Text = "Escape With Ability",
            Default = false,
            Tooltip = "Burns your ability to get out of a marker. Needs Auto Cast Ability on",
            Callback = Bj.SetDodgeWithAbility
        })
        local AutoCollectExpOrbsGroup = rg[1]:AddRightGroupbox("Auto Collect EXP Orbs", "sparkles")
        rq.orbs = AutoCollectExpOrbsGroup:AddLabel(rm("Idle"), true)
        AutoCollectExpOrbsGroup:AddDivider()
        AutoCollectExpOrbsGroup:AddToggle("AutoOrbs", {
            Text = "Auto Collect EXP Orbs",
            Default = false,
            Tooltip = "Dips down to dropped orbs. The game sucks them in once you are close, so it stops at Collect Altitude instead of landing in the swarm",
            Callback = Bj.SetAutoOrbs
        })
        AutoCollectExpOrbsGroup:AddDropdown("CollectMode", {
            Text = "Collect Mode",
            Values = B9,
            Default = "Teleport",
            Tooltip = "Teleport hops onto orbs and back, so nothing can catch you. Glide flies over them instead, which is quieter but slow enough for mobs to close in",
            Callback = Bj.SetCollectMode
        })
        AutoCollectExpOrbsGroup:AddSlider("OrbHop", {
            Text = "Hop Distance",
            Default = 24,
            Min = 5,
            Max = 120,
            Rounding = 0,
            Suffix = " studs",
            Tooltip = "Studs per teleport. The game flags single jumps of 25 or more, so 24 stays under it. Higher is faster and louder",
            Callback = Bj.SetOrbHop
        })
        AutoCollectExpOrbsGroup:AddSlider("OrbHopDelay", {
            Text = "Hop Spacing",
            Default = 25,
            Min = 0,
            Max = 200,
            Rounding = 0,
            Suffix = " cs",
            Tooltip = "Pause between hops, in hundredths of a second. Shorter is faster but reads as higher speed",
            Callback = Bj.SetOrbHopDelay
        })
        AutoCollectExpOrbsGroup:AddSlider("OrbGrab", {
            Text = "Pickup Pause",
            Default = 30,
            Min = 5,
            Max = 200,
            Rounding = 0,
            Suffix = " cs",
            Tooltip = "How long to sit on an orb so the server hands it over, in hundredths of a second",
            Callback = Bj.SetOrbGrab
        })
        AutoCollectExpOrbsGroup:AddSlider("OrbAltitude", {
            Text = "Collect Altitude",
            Default = 6,
            Min = 1,
            Max = 20,
            Rounding = 0,
            Suffix = " studs",
            Tooltip = "How far above an orb to stop. The game grabs orbs from 8 studs, so 6 works without landing. Raise it if you stack magnet upgrades",
            Callback = Bj.SetOrbAltitude
        })
        AutoCollectExpOrbsGroup:AddSlider("OrbCruise", {
            Text = "Cruise Height",
            Default = 26,
            Min = 8,
            Max = 120,
            Rounding = 0,
            Suffix = " studs",
            Tooltip = "Height it travels at on the way to an orb. It moves over the orb first, then drops straight down, so it never cuts through the swarm sideways",
            Callback = Bj.SetOrbCruise
        })
        AutoCollectExpOrbsGroup:AddSlider("OrbMaxEnemies", {
            Text = "Skip Orbs Guarded By",
            Default = 2,
            Min = 0,
            Max = 20,
            Rounding = 0,
            Suffix = " enemies",
            Tooltip = "Leaves orbs alone if more than this many enemies sit on them",
            Callback = Bj.SetOrbMaxEnemies
        })
        AutoCollectExpOrbsGroup:AddSlider("OrbDangerRadius", {
            Text = "Guard Radius",
            Default = 18,
            Min = 5,
            Max = 60,
            Rounding = 0,
            Suffix = " studs",
            Callback = Bj.SetOrbDangerRadius
        })
        AutoCollectExpOrbsGroup:AddSlider("OrbHealthFloor", {
            Text = "Stop Collecting Below Health",
            Default = 40,
            Min = 0,
            Max = 100,
            Rounding = 0,
            Suffix = " %",
            Tooltip = "Stays high instead of diving for orbs while hurt",
            Callback = Bj.SetOrbHealthFloor
        })
        AutoCollectExpOrbsGroup:AddSlider("OrbRange", {
            Text = "Orb Search Range",
            Default = 110,
            Min = 20,
            Max = 400,
            Rounding = 0,
            Suffix = " studs",
            Callback = Bj.SetOrbRange
        })
        AutoCollectExpOrbsGroup:AddSlider("OrbMinCount", {
            Text = "Minimum Orbs To Detour",
            Default = 1,
            Min = 1,
            Max = 30,
            Rounding = 0,
            Callback = Bj.SetOrbMinCount
        })
        AutoCollectExpOrbsGroup:AddSlider("OrbHold", {
            Text = "Orb Hold Time",
            Default = 300,
            Min = 50,
            Max = 1000,
            Rounding = 0,
            Suffix = " cs",
            Tooltip = "How long to keep chasing the last orb after it leaves range, in hundredths of a second",
            Callback = Bj.SetOrbHold
        })
        AutoCollectExpOrbsGroup:AddDivider("Leading")
        AutoCollectExpOrbsGroup:AddToggle("LeadEnemies", {
            Text = "Lead Enemies Away From Orb Clusters",
            Default = false,
            Tooltip = "Enemies follow you. When a pile of orbs is covered, this pulls you off to the side, drags them with you, then goes back for the orbs. Glide mode only, teleport does not need it",
            Callback = Bj.SetLeadEnemies
        })
        AutoCollectExpOrbsGroup:AddSlider("LeadDistance", {
            Text = "Lead Distance",
            Default = 55,
            Min = 15,
            Max = 200,
            Rounding = 0,
            Suffix = " studs",
            Tooltip = "How far from the orbs to drag them",
            Callback = Bj.SetLeadDistance
        })
        AutoCollectExpOrbsGroup:AddSlider("LeadClusterMin", {
            Text = "Cluster Size",
            Default = 3,
            Min = 2,
            Max = 30,
            Rounding = 0,
            Suffix = " orbs",
            Tooltip = "Smallest pile worth clearing out",
            Callback = Bj.SetLeadClusterMin
        })
        local RunFlowGroup = rg[1]:AddRightGroupbox("Run Flow", "repeat")
        rq.flow = RunFlowGroup:AddLabel(rm("Idle"), true)
        RunFlowGroup:AddDivider()
        RunFlowGroup:AddToggle("AutoRetry", {
            Text = "Auto Retry",
            Default = false,
            Tooltip = "Starts a new run as soon as the last one ends",
            Callback = Bj.SetAutoRetry
        })
        RunFlowGroup:AddToggle("AutoLobby", {
            Text = "Auto Lobby",
            Default = false,
            Tooltip = "Goes back to the lobby when a run ends. Auto Retry wins if both are on",
            Callback = Bj.SetAutoLobby
        })
        RunFlowGroup:AddToggle("AutoExtract", {
            Text = "Auto Extract",
            Default = false,
            Tooltip = "Runs into the escape portal when it opens so the run banks instead of ending in a death. Overrides Retreat while the portal is up",
            Callback = Bj.SetAutoExtract
        })
        RunFlowGroup:AddToggle("AutoLaunch", {
            Text = "Auto Launch",
            Default = false,
            Tooltip = "Hits launch in the drop pod as soon as your pod is loaded",
            Callback = Bj.SetAutoLaunch
        })
        RunFlowGroup:AddToggle("AutoGiveUp", {
            Text = "Auto Give Up",
            Default = false,
            Tooltip = "Takes the give up option instead of sitting in the downed screen. Runs before Auto Retry so a dead run ends fast",
            Callback = Bj.SetAutoGiveUp
        })
        RunFlowGroup:AddSlider("RunEndDelay", {
            Text = "Wait After Run",
            Default = 150,
            Min = 0,
            Max = 1000,
            Rounding = 0,
            Suffix = " cs",
            Tooltip = "Pause before it leaves, so you can read the summary, in hundredths of a second",
            Callback = Bj.SetRunEndDelay
        })
        RunFlowGroup:AddToggle("SkipCutscenes", {
            Text = "Auto Skip Cutscenes",
            Default = false,
            Tooltip = "Cuts boss entrances and arrival scenes short and skips the drop pod ride in",
            Callback = Bj.SetSkipCutscenes
        })
        local RetreatGroup = rg[1]:AddLeftGroupbox("Retreat", "heart-pulse")
        rq.retreat = RetreatGroup:AddLabel(rm("Idle"), true)
        RetreatGroup:AddDivider()
        RetreatGroup:AddToggle("Retreat", {
            Text = "Retreat At Low Health",
            Default = false,
            Tooltip = "Goes straight up out of reach, waits for health to come back, then drops back in",
            Callback = Bj.SetRetreat
        })
        RetreatGroup:AddSlider("RetreatHealth", {
            Text = "Retreat Below",
            Default = 25,
            Min = 5,
            Max = 95,
            Rounding = 0,
            Suffix = " %",
            Callback = Bj.SetRetreatHealth
        })
        RetreatGroup:AddSlider("RetreatResume", {
            Text = "Come Back At",
            Default = 70,
            Min = 10,
            Max = 100,
            Rounding = 0,
            Suffix = " %",
            Tooltip = "Health comes back slowly, so a high number means a long wait up there",
            Callback = Bj.SetRetreatResume
        })
        RetreatGroup:AddSlider("RetreatAltitude", {
            Text = "Retreat Height",
            Default = 80,
            Min = 20,
            Max = 400,
            Rounding = 0,
            Suffix = " studs",
            Callback = Bj.SetRetreatAltitude
        })
    end
    local function rK()
        local AutoCardsGroup = rg[2]:AddRightGroupbox("Auto Cards", "layers")
        rq.draft = AutoCardsGroup:AddLabel(rm("Idle"), true)
        AutoCardsGroup:AddDivider()
        AutoCardsGroup:AddToggle("AutoDraft", {
            Text = "Auto Cards",
            Default = false,
            Tooltip = "Picks every level up, shrine and evolution card for you",
            Callback = Bj.SetAutoDraft
        })
        AutoCardsGroup:AddSlider("DraftDelay", {
            Text = "Pick Delay",
            Default = 60,
            Min = 0,
            Max = 500,
            Rounding = 0,
            Suffix = " cs",
            Tooltip = "Wait before it picks so you can see the cards, in hundredths of a second",
            Callback = Bj.SetDraftDelay
        })
        AutoCardsGroup:AddDivider("Scoring")
        AutoCardsGroup:AddToggle("PreferOwned", { Text = "Prefer Upgrading Owned Items", Default = true, Callback = Bj.SetPreferOwned })
        AutoCardsGroup:AddToggle("PreferHigherRarity", { Text = "Prefer Higher Rarity", Default = true, Callback = Bj.SetPreferHigherRarity })
        AutoCardsGroup:AddToggle("TakeRelics", { Text = "Take Relics", Default = true, Callback = Bj.SetTakeRelics })
        AutoCardsGroup:AddToggle("AutoBanish", {
            Text = "Banish Avoided Cards",
            Default = false,
            Tooltip = "Burns a banish charge on a card from your avoid list first",
            Callback = Bj.SetAutoBanish
        })
        AutoCardsGroup:AddToggle("AutoReroll", {
            Text = "Reroll Weak Hands",
            Default = false,
            Tooltip = "Rerolls once if nothing on offer is on a priority list",
            Callback = Bj.SetAutoReroll
        })
        AutoCardsGroup:AddDivider("Weapons")
        AutoCardsGroup:AddDropdown("WeaponPriority", {
            Text = "Weapon Priority",
            Values = Bj.WeaponValues(),
            Default = nil,
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Tooltip = "Weapons here beat everything except evolutions",
            Callback = Bj.SetWeaponPriority
        })
        AutoCardsGroup:AddDropdown("WeaponAvoid", {
            Text = "Weapon Avoid",
            Values = Bj.WeaponValues(),
            Default = nil,
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Callback = Bj.SetWeaponAvoid
        })
        AutoCardsGroup:AddDivider("Passives")
        AutoCardsGroup:AddDropdown("PassivePriority", {
            Text = "Passive Priority",
            Values = Bj.PassiveValues(),
            Default = nil,
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Callback = Bj.SetPassivePriority
        })
        AutoCardsGroup:AddDropdown("PassiveAvoid", {
            Text = "Passive Avoid",
            Values = Bj.PassiveValues(),
            Default = nil,
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Callback = Bj.SetPassiveAvoid
        })
    end
    rr()
    rK()
    r1 = task.spawn(function()
        while not Library.Unloaded do
            task.wait(0.35)
            if Library.Unloaded then
                break
            end
            for k, v in pairs(rq) do
                local PQ
                local PZ = v
                local PR = k == "cast" and Bj.AbilityLabel()
                local PS = PR or Bj.StatusLine(k)
                PQ = PS
                pcall(function()
                    PZ:SetText(rm(PQ))
                end)
            end
        end
    end)
    Bj.Track(function()
        if coroutine.status(r1) ~= "dead" then
            pcall(task.cancel, r1)
        end
    end)
    local function r3()
        local Qo
        local Qk
        local Qt
        local Qr
        Qk = nil
        Qo = nil
        Qr = nil
        Qt = nil
        local Label2, Label3, Ql, Qm, Label, Qp, Qq, Qs, Qu
        Qt = function(r5)
            return (tostring(r5):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        Qr = function(r7, r8)
            return string.format('<font color="%s">%s</font>', r8, Qt(r7))
        end
        Qu = function(sb, sc, sd)
            return string.format("<b>%s</b> %s %s", sb, Qr("-", "#5a6070"), Qr(sc, sd))
        end
        Qs = "#7fd47f"
        Qm = "#e8a34d"
        local Qv = "#8b93a3"
        local Qw = "#6ec1ff"
        local Qx = Bj.Support()
        local Qy = #Qx == 0 and "ready"
        local Qz = Qy or "limited: " .. table.concat(Qx, ", ")
        Qq = "Unknown"
        pcall(function()
            local P1_1
            local P0_1
            if CN(identifyexecutor) then
                P1_1, P0_1 = identifyexecutor()
                local P2 = P1_1 ~= ""
                local P3 = type(P1_1) == "string" and P2
                if P3 then
                    local P2_1 = type(P0_1) == "string" and P0_1 ~= "" and P1_1 .. " " .. P0_1
                    Qq = P2_1 or P1_1
                end
            end
        end)
        Qk = os.clock()
        Qp = function()
            local P8 = math.floor(os.clock() - Qk)
            if P8 < 60 then
                return P8 .. "s"
            elseif P8 < 3600 then
                return string.format("%dm %ds", P8 // 60, P8 % 60)
            else
                return string.format("%dh %dm", P8 // 3600, P8 % 3600 // 60)
            end
        end
        local UserGroup = rf[1]:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(Qu("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Qs), true)
        UserGroup:AddLabel(Qu("UserId", tostring(LocalPlayer.UserId), Qw), true)
        UserGroup:AddLabel(Qu("Executor", Qq .. "  " .. Qz, Qs), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(Qu("Session", Qp(), Qm), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                q0(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                q0("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = rf[1]:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(Qu("Game", qO, Qw), true)
        Label2 = SessionGroup:AddLabel(Qu("Players", "0/0", Qs), true)
        Ql = tostring(game.JobId)
        local Qw_1 = #Ql > 18 and string.sub(Ql, 1, 18) .. "..."
        local Qy_2 = Qw_1
        local QD = if Qy_2 then 1 else 0
        local QB = 1681 * QD + 526 * (1 - QD)
        local QC = 3058 * QD + 1605 * (1 - QD)
        if not ((QB * 2722 + QC * 2369 + QB * QC) % 16777213 == 183369) then
            Qy_2 = Ql
        end
        local Qw_2 = Qy_2
        SessionGroup:AddLabel(Qu("Job", Qw_2, Qv), true)
        Label = SessionGroup:AddLabel(Qu("Ping", "0 ms", Qm), true)
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
                q0(Ql, "Copied Job ID")
            end
        })
        Qo = task.spawn(function()
            local Qe_1
            local Qd_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(Qu("Session", Qp(), Qm))
                Label2:SetText(Qu("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Qs))
                Qd_1, Qe_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local Qd_2 = Qd_1 and Qe_1 .. " ms" or "n/a"
                Label:SetText(Qu("Ping", Qd_2, Qm))
            end
        end)
        Bj.Track(function()
            if coroutine.status(Qo) ~= "dead" then
                pcall(task.cancel, Qo)
            end
        end)
        local SocialsGroup = rf[1]:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                q0(qR, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                q0(qS, "Copied website link")
            end
        })
    end
    r3()
    local function tj()
        local tr
        local tp
        local tq
        local to
        local MovementGroup = rf[3]:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = rf[3]:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        tq = {}
        tp = {}
        tr = {}
        to = {}
        local tn = {}
        local function ts()
            for k, v in to do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(to)
        end
        local function tw()
            for k, v in tp do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(tp)
        end
        local function tA()
            for k, v in tq do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(tq)
        end
        local function tE(tF)
            if not tF:IsA("ProximityPrompt") then
                return
            end
            if tr[tF] == nil then
                tr[tF] = {
                    HoldDuration = tF.HoldDuration,
                    MaxActivationDistance = tF.MaxActivationDistance,
                    RequiresLineOfSight = tF.RequiresLineOfSight
                }
            end
            tF.HoldDuration = 0
            tF.MaxActivationDistance = 50
            tF.RequiresLineOfSight = false
        end
        local function tH()
            for k, v in tr do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(tr)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                tA()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                tw()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                ts()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for i, descendant in ipairs(Workspace:GetDescendants()) do
                    pcall(tE, descendant)
                end
            else
                tH()
            end
        end)
        table.insert(tn, Workspace.DescendantAdded:Connect(function(t_)
            if Toggles.InstantProximityPrompt.Value then
                pcall(tE, t_)
            end
        end))
        table.insert(tn, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    if descendant:IsA("BasePart") then
                        if to[descendant] == nil then
                            to[descendant] = descendant.CanCollide
                        end
                        descendant.CanCollide = false
                    end
                end
            end
        end))
        table.insert(tn, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Rx = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and Rx then
                Rx:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(tn, RunService.RenderStepped:Connect(function(ul)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local RD = Character and Character:FindFirstChildOfClass("Humanoid")
            local RE = Character
            if RE then
                RE = Character:FindFirstChild("HumanoidRootPart")
            end
            local RC_1 = RE
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and RD then
                if tp[RD] == nil then
                    tp[RD] = RD.WalkSpeed
                end
                RD.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and RC_1 and RD and CurrentCamera then
                if tq[RD] == nil then
                    tq[RD] = RD.PlatformStand
                end
                RD.PlatformStand = true
                local RE_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        RE_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        RE_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        RE_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        RE_4 += CurrentCamera.CFrame.RightVector
                    end
                    local RK = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
                    if RK == 1 then
                        RE_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        RE_4 -= Vector3.new(0, 1, 0)
                    end
                end
                RC_1.AssemblyLinearVelocity = Vector3.zero
                if RE_4.Magnitude > 0 then
                    RC_1.CFrame = RC_1.CFrame + RE_4.Unit * Options.FlySpeed.Value * ul
                end
            end
        end))
        Bj.Track(function()
            for k, v in tn do
                v:Disconnect()
            end
            ts()
            tw()
            tA()
            tH()
        end)
    end
    tj()
    local function uB()
        local S_, S0, S1, S2, S3, S4, S5, Label, S7, S8, S9, Ta, Tb, Tc
        S7 = {}
        S1 = {}
        Tc = nil
        S_ = 0
        S9 = 0
        S3 = false
        S4 = os.clock()
        local MenuGroup = rf[4]:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        Ta = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local RT = not CurrentCamera
            local RX = if RT then 1 else 0
            local RV = 2198 * RX + 368 * (1 - RX)
            local RW = 2585 * RX + 245 * (1 - RX)
            if not ((RV * 724 + RW * 3694 + RV * RW) % 16777213 == 44959) then
                RT = not CN(VirtualUser.CaptureController)
            end
            if not RT then
                RT = not CN(VirtualUser.ClickButton2)
            end
            if RT then
                return false
            end
            local RT_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not RT_1 then
                return false
            end
            S_ += 1
            S4 = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. S_)
            end)
            return true
        end
        S5 = function(u4)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not u4)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not u4
                end
            end)
            if not u4 then
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
        S2 = function(vk)
            local ClassName = vk.ClassName
            local R5 = ClassName == "Trail"
            local R6 = ClassName == "ParticleEmitter"
            local Sb = if R6 then 1 else 0
            local R9 = 134 * Sb + 885 * (1 - Sb)
            local Sa = 2329 * Sb + 237 * (1 - Sb)
            if not ((R9 * 2638 + Sa * 380 + R9 * Sa) % 16777213 == 1550598) then
                R6 = R5
            end
            if R6 or ClassName == "Smoke" or ClassName == "Fire" or ClassName == "Sparkles" or ClassName == "Beam" then
                if S7[vk] == nil then
                    S7[vk] = vk.Enabled
                end
                pcall(function()
                    vk.Enabled = false
                end)
            end
        end
        S0 = function()
            for k, v in S7 do
                local Sg = k
                local Si = v
                if Sg.Parent then
                    pcall(function()
                        Sg.Enabled = Si
                    end)
                end
            end
            table.clear(S7)
            if Tc then
                pcall(function()
                    settings().Rendering.QualityLevel = Tc.Quality
                end)
                Lighting.GlobalShadows = Tc.Shadows
                Lighting.FogEnd = Tc.Fog
                Tc = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(vz)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not vz)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(vE)
                if vE then
                    if not Tc then
                        Tc = {
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
                    for i, descendant in ipairs(Workspace:GetDescendants()) do
                        pcall(S2, descendant)
                    end
                else
                    S0()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        local ScriptGroup = rf[4]:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            S5(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            S5(true)
        end
        table.insert(S1, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                Ta()
            end
        end))
        table.insert(S1, Workspace.DescendantAdded:Connect(function(vX)
            if Toggles.FpsBoost.Value then
                pcall(S2, vX)
            end
        end))
        Tb = function(v0)
            if S3 or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            S3 = true
            local Sy = S9
            local Sz_1 = pcall(function()
                if v0 then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not Sz_1 then
                S3 = false
                if not v0 and Sy == S9 then
                    task.delay(1.5, function()
                        if Sy == S9 then
                            Tb(true)
                        end
                    end)
                end
            end
        end
        table.insert(S1, TeleportService.TeleportInitFailed:Connect(function(wi)
            local SG
            if wi == LocalPlayer and S3 then
                S3 = false
                SG = S9
                task.delay(3, function()
                    if SG == S9 then
                        Tb(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local SO = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not SO then
                return
            end
            table.insert(S1, SO.ChildAdded:Connect(function(wx)
                if wx.Name == "ErrorPrompt" then
                    Tb(false)
                end
            end))
        end)
        S8 = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    S5(true)
                end
                local SR = Toggles.AntiAfk.Value and os.clock() - S4 >= 60
                if SR then
                    Ta()
                end
                task.wait(1)
            end
        end)
        Bj.Track(function()
            S9 += 1
            for k, v in S1 do
                v:Disconnect()
            end
            pcall(task.cancel, S8)
            S5(false)
            S0()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    uB()
    local function wR()
        local Ud, Ue, Uf, Ug
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("MyScriptHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(rf[4])
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/SurviveTheSwarm")
        local Uh = SaveManager:BuildConfigSection(rf[4])
        Ue = function(wY, wZ)
            local Tg = wY == "Toggle" and Toggles
            local Tl = if Tg then 1 else 0
            local Tj = 429 * Tl + 1711 * (1 - Tl)
            local Tk = 735 * Tl + 23 * (1 - Tl)
            if not ((Tj * 3580 + Tk * 2322 + Tj * Tk) % 16777213 == 3557805) then
                Tg = Options
            end
            local Tg_1 = Tg[wZ]
            local Tf_2 = type(Tg_1) == "table" and Tg_1.Type == wY
            return Tf_2 and Tg_1 or nil
        end
        Ug = function(w7, w8)
            local Type = w8.Type
            if Type == "Toggle" then
                return { idx = w7, type = "Toggle", value = w8.Value == true }
            elseif Type == "Slider" then
                return { idx = w7, type = "Slider", value = tostring(w8.Value) }
            elseif Type == "Dropdown" then
                return { idx = w7, type = "Dropdown", multi = w8.Multi == true, value = w8.Value }
            elseif Type == "Input" then
                local Tn = w8.Value
                local Tr = if Tn then 1 else 0
                local Tp = 2877 * Tr + 1453 * (1 - Tr)
                local Tq = 2221 * Tr + 1289 * (1 - Tr)
                if not ((Tp * 339 + Tq * 3087 + Tp * Tq) % 16777213 == 14221347) then
                    Tn = ""
                end
                return { idx = w7, type = "Input", text = tostring(Tn) }
            elseif Type == "ColorPicker" then
                return { idx = w7, type = "ColorPicker", value = w8.Value:ToHex(), transparency = w8.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = w7,
                    type = "KeyPicker",
                    mode = w8.Mode,
                    key = w8.Value,
                    modifiers = w8.Modifiers,
                    toggled = w8.Toggled
                }
            else
                return nil
            end
        end
        Uf = function()
            local Tw = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local Tx = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if Tx then
                        local Tx_1 = Ug(k, v)
                        if Tx_1 then
                            Tw[#Tw + 1] = Tx_1
                        end
                    end
                end
            end
            table.sort(Tw, function(xi, xj)
                if xi.type ~= xj.type then
                    return xi.type < xj.type
                end
                return xi.idx < xj.idx
            end)
            return { objects = Tw }
        end
        Ud = function(xl)
            local TQ
            TQ = nil
            local TR = type(xl) ~= "table" or type(xl.idx) ~= "string"
            local TV = if TR then 1 else 0
            local TT = 3021 * TV + 2688 * (1 - TV)
            local TU = 2638 * TV + 602 * (1 - TV)
            if not ((TT * 950 + TU * 231 + TT * TU) % 16777213 == 11448726) then
                TR = type(xl.type) ~= "string"
            end
            if not TR then
                TR = SaveManager.Ignore[xl.idx]
            end
            if TR then
                return false
            end
            TQ = Ue(xl.type, xl.idx)
            if not TQ then
                return false
            end
            local TR_1 = pcall(function()
                if xl.type == "Input" then
                    if type(xl.text) ~= "string" then
                        return
                    end
                    TQ:SetValue(xl.text)
                elseif xl.type == "ColorPicker" then
                    TQ:SetValueRGB(Color3.fromHex(xl.value), xl.transparency)
                elseif xl.type == "KeyPicker" then
                    TQ:SetValue({ xl.key, xl.mode, xl.modifiers })
                    if xl.mode == "Toggle" and xl.toggled ~= nil then
                        TQ.Toggled = xl.toggled
                        TQ:Update()
                    end
                else
                    TQ:SetValue(xl.value)
                end
            end)
            return TR_1
        end
        Uh:AddDivider()
        Uh:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", AllowEmpty = true })
        Uh:AddButton("Export Config to Clipboard", function()
            local TX_1
            local TW_1
            TW_1, TX_1 = pcall(HttpService.JSONEncode, HttpService, Uf())
            if TW_1 then
                local TW_2 = CN(setclipboard) and setclipboard
                local TY = TW_2
                if not TY then
                    local TW_3 = CN(toclipboard) and toclipboard
                    TY = TW_3 or nil
                end
                local TW_4 = TY
                local TY_1 = type(TW_4) == "function" and pcall(TW_4, TX_1)
                if TY_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        Uh:AddButton("Import Config from Clipboard Text", function()
            local T5_1
            local T3 = Options.SaveManager_ImportSource.Value or ""
            local T3_1
            local T4 = tostring(T3):match("^%s*(.-)%s*$")
            if T4 == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #T4 > 262144 then
                Library:Notify("That config is too large")
                return
            end
            T3_1, T5_1 = pcall(HttpService.JSONDecode, HttpService, T4)
            local T4_1 = not T3_1 or type(T5_1) ~= "table" or type(T5_1.objects) ~= "table"
            if T4_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #T5_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local T3_2 = 0
            for i, v in ipairs(T5_1.objects) do
                if Ud(v) then
                    T3_2 += 1
                end
            end
            if T3_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local T5_2 = T3_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(T3_2, T5_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.FarmMode then
            Bj.SetFarmMode(Options.FarmMode.Value)
        end
        if Options.TargetMode then
            Bj.SetTargetMode(Options.TargetMode.Value)
        end
        if Options.OrbitRadius then
            Bj.SetOrbitRadius(Options.OrbitRadius.Value)
        end
        if Options.OrbitSpeed then
            Bj.SetOrbitSpeed(Options.OrbitSpeed.Value)
        end
        if Options.HoverHeight then
            Bj.SetHoverHeight(Options.HoverHeight.Value)
        end
        if Options.OverheadHeight then
            Bj.SetOverheadHeight(Options.OverheadHeight.Value)
        end
        if Options.SearchRange then
            Bj.SetSearchRange(Options.SearchRange.Value)
        end
        if Toggles.IgnoreBosses then
            Bj.SetIgnoreBosses(Toggles.IgnoreBosses.Value)
        end
        if Options.CastMode then
            Bj.SetCastMode(Options.CastMode.Value)
        end
        if Options.CastHealthPercent then
            Bj.SetCastHealthPercent(Options.CastHealthPercent.Value)
        end
        if Options.CastCrowdCount then
            Bj.SetCastCrowdCount(Options.CastCrowdCount.Value)
        end
        if Options.CastCrowdRadius then
            Bj.SetCastCrowdRadius(Options.CastCrowdRadius.Value)
        end
        if Options.DodgeLead then
            Bj.SetDodgeLead(Options.DodgeLead.Value)
        end
        if Options.DodgeMargin then
            Bj.SetDodgeMargin(Options.DodgeMargin.Value)
        end
        if Options.ProjectileLookahead then
            Bj.SetProjectileLookahead(Options.ProjectileLookahead.Value)
        end
        if Options.ProjectileRadius then
            Bj.SetProjectileRadius(Options.ProjectileRadius.Value)
        end
        if Toggles.DodgeWithAbility then
            Bj.SetDodgeWithAbility(Toggles.DodgeWithAbility.Value)
        end
        if Options.OrbRange then
            Bj.SetOrbRange(Options.OrbRange.Value)
        end
        if Options.OrbMinCount then
            Bj.SetOrbMinCount(Options.OrbMinCount.Value)
        end
        if Options.OrbHold then
            Bj.SetOrbHold(Options.OrbHold.Value)
        end
        if Options.OrbAltitude then
            Bj.SetOrbAltitude(Options.OrbAltitude.Value)
        end
        if Options.OrbDangerRadius then
            Bj.SetOrbDangerRadius(Options.OrbDangerRadius.Value)
        end
        if Options.OrbMaxEnemies then
            Bj.SetOrbMaxEnemies(Options.OrbMaxEnemies.Value)
        end
        if Options.OrbHealthFloor then
            Bj.SetOrbHealthFloor(Options.OrbHealthFloor.Value)
        end
        if Options.OrbCruise then
            Bj.SetOrbCruise(Options.OrbCruise.Value)
        end
        if Options.OrbHop then
            Bj.SetOrbHop(Options.OrbHop.Value)
        end
        if Options.OrbHopDelay then
            Bj.SetOrbHopDelay(Options.OrbHopDelay.Value)
        end
        if Options.OrbGrab then
            Bj.SetOrbGrab(Options.OrbGrab.Value)
        end
        if Options.CollectMode then
            Bj.SetCollectMode(Options.CollectMode.Value)
        end
        if Options.LeadDistance then
            Bj.SetLeadDistance(Options.LeadDistance.Value)
        end
        if Options.LeadClusterMin then
            Bj.SetLeadClusterMin(Options.LeadClusterMin.Value)
        end
        if Toggles.LeadEnemies then
            Bj.SetLeadEnemies(Toggles.LeadEnemies.Value)
        end
        if Options.RetreatHealth then
            Bj.SetRetreatHealth(Options.RetreatHealth.Value)
        end
        if Options.RetreatResume then
            Bj.SetRetreatResume(Options.RetreatResume.Value)
        end
        if Options.RetreatAltitude then
            Bj.SetRetreatAltitude(Options.RetreatAltitude.Value)
        end
        if Toggles.Retreat then
            Bj.SetRetreat(Toggles.Retreat.Value)
        end
        if Options.RunEndDelay then
            Bj.SetRunEndDelay(Options.RunEndDelay.Value)
        end
        if Toggles.SkipCutscenes then
            Bj.SetSkipCutscenes(Toggles.SkipCutscenes.Value)
        end
        if Toggles.AutoLobby then
            Bj.SetAutoLobby(Toggles.AutoLobby.Value)
        end
        if Toggles.AutoExtract then
            Bj.SetAutoExtract(Toggles.AutoExtract.Value)
        end
        if Toggles.AutoLaunch then
            Bj.SetAutoLaunch(Toggles.AutoLaunch.Value)
        end
        if Toggles.AutoGiveUp then
            Bj.SetAutoGiveUp(Toggles.AutoGiveUp.Value)
        end
        if Toggles.AutoRetry then
            Bj.SetAutoRetry(Toggles.AutoRetry.Value)
        end
        if Options.DraftDelay then
            Bj.SetDraftDelay(Options.DraftDelay.Value)
        end
        if Toggles.PreferOwned then
            Bj.SetPreferOwned(Toggles.PreferOwned.Value)
        end
        if Toggles.PreferHigherRarity then
            Bj.SetPreferHigherRarity(Toggles.PreferHigherRarity.Value)
        end
        if Toggles.TakeRelics then
            Bj.SetTakeRelics(Toggles.TakeRelics.Value)
        end
        if Toggles.AutoBanish then
            Bj.SetAutoBanish(Toggles.AutoBanish.Value)
        end
        if Toggles.AutoReroll then
            Bj.SetAutoReroll(Toggles.AutoReroll.Value)
        end
        if Options.WeaponPriority then
            Bj.SetWeaponPriority(Options.WeaponPriority.Value)
        end
        if Options.WeaponAvoid then
            Bj.SetWeaponAvoid(Options.WeaponAvoid.Value)
        end
        if Options.PassivePriority then
            Bj.SetPassivePriority(Options.PassivePriority.Value)
        end
        if Options.PassiveAvoid then
            Bj.SetPassiveAvoid(Options.PassiveAvoid.Value)
        end
        if Toggles.AutoDodge then
            Bj.SetAutoDodge(Toggles.AutoDodge.Value)
        end
        if Toggles.AutoOrbs then
            Bj.SetAutoOrbs(Toggles.AutoOrbs.Value)
        end
        if Toggles.AutoCast then
            Bj.SetAutoCast(Toggles.AutoCast.Value)
        end
        if Toggles.AutoDraft then
            Bj.SetAutoDraft(Toggles.AutoDraft.Value)
        end
        if Toggles.AutoFarm then
            Bj.SetAutoFarm(Toggles.AutoFarm.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    wR()
end
CT()
