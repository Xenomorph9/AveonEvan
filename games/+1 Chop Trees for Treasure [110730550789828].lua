local fns = {}
local R4_1, R4_2, R4_3, R4_4, R4_5, R4_7, R4_9, R4_10, R4_12, R4_13, R4_14, R4_16, R4_17, R4_18, CoreGui, R4_20, R4_21, R4_22, R4_23, R4_24, R4_25, R4_31, R4_32, R4_37
R4_2 = nil
R4_3 = nil
R4_5 = nil
R4_7 = nil
R4_9 = nil
R4_10 = nil
R4_12 = nil
R4_13 = nil
R4_14 = nil
R4_16 = nil
R4_18 = nil
CoreGui = nil
R4_21 = nil
R4_22 = nil
R4_24 = nil
R4_25 = nil
local Bc
local BB
local B_
local A_
local Co
local Bo
local BN
local AN
local Cb
local Bb
local CA
local BA
local LocalPlayer
local AZ
local Cn
local Bn
local CM
local AM
local Ca
local Ba
local Cz
local CY
local BY
local AY
local Bm
local CL
local BL
local AL
local B9
local A9
local Cy
local By
local CX
local BX
local Cl
local Bl
local BK
local A8
local Cx
local Bx
local CW
local BW
local AW
local Ck
local Bk
local CJ
local BJ
local B7
local A7
local Cw
local Bw
local CV
local BV
local AV
local Bj
local A6
local Bv
local BU
local connection
local Ci
local Bi
local CH
local BH
local B5
local A5
local Cu
local Bu
local CT
local BT
local AT
local BG
local connection2
local A4
local Ct
local Bt
local CS
local BS
local AS
local Cg
local Bg
local CF
local BF
local B3
local A3
local Cs
local Bs
local CR
local BR
local AR
local Cf
local Bf
local CE
local BE
local B2
local A2
local Cr
local Br
local CQ
local BQ
local AQ
local Ce
local Be
local CD
local BD
local B1
function fns.fn15()
    return CoreGui
end
function fns.fn31()
    local Fk = Bg ~= nil and Bi ~= nil and type(Bi.Auras) == "table"
    return Fk
end
function fns.fn46()
    return B7()
end
function fns.fn47()
    local HC_1
    local HB_1
    HB_1, HC_1 = R4_9(Bc.ChopZones)
    local HD = {}
    if #Cz == 0 then
        Co()
    end
    for i, v in ipairs(Cz) do
        if HC_1 == 0 or HB_1[v] then
            local HE_1 = Cu[v]
            local HF = HE_1 and CV:FindFirstChild(HE_1.zone)
            local HG = HF
            if HF then
                HF = HG:FindFirstChild(HE_1.part)
            end
            local HE_2 = HF
            if HE_2 then
                table.insert(HD, HE_2)
            end
        end
    end
    return HD
end
function fns.fn55(iT)
    local Js = tonumber(iT)
    if Js then
        Bc.LootRadius = math.clamp(Js, R4_16, 500)
    end
end
function fns.fn74()
    local Md_1
    local Mc_1
    local Mg_1, Mg_3, Mg_4
    if not Bc.AutoCraft then
        return
    end
    CT(false)
    local L9 = type(CY.treasureDiscovered) == "table" and CY.treasureDiscovered
    local Ma = L9 or nil
    if not Ma then
        return
    end
    local Ma_1 = (tonumber(CY.wood))
    local Mp = if Ma_1 then 1 else 0
    local Mn = 4093 * Mp + 1820 * (1 - Mp)
    local Mo = 3876 * Mp + 1471 * (1 - Mp)
    if not ((Mn * 850 + Mo * 2673 + Mn * Mo) % 16777213 == 12926853) then
        Ma_1 = 0
    end
    local Mb = Ma_1
    local Ma_2 = Cb()
    Mc_1, Md_1 = R4_9(Bc.CraftIds)
    for i, v in ipairs(Be.Craftable) do
        local Me = not Bc.AutoCraft or not AT()
        local Me_4, Me_6, Me_7
        if Me then
            return
        end
        local Me_1 = type(v) == "table" and type(v.id) == "string" and not Ma_2[v.id]
        if Me_1 then
            local Me_2 = v.name or v.id
            local Mf = tostring(Me_2)
            if Md_1 == 0 or Mc_1[Mf] then
                Me_4, Mg_1 = pcall(Be.woodCost, v)
                local Mh = Me_4 and tonumber(Mg_1)
                if Mb >= (Mh or 0) then
                    Me_6, Mg_3 = pcall(Be.hasIngredients, v, Ma)
                    if Me_6 and Mg_3 == true then
                        Me_7, Mg_4 = R4_22(A4, v.id)
                        if Me_7 and Mg_4 == "ok" then
                            Bc.Crafted = Bc.Crafted + 1
                            A8("Crafted " .. Mf)
                            CT(true)
                            return
                        end
                    end
                end
            end
        end
    end
end
function fns.fn86()
    local L0 = {}
    if type(CY.ownedArtifacts) == "table" then
        for k, v in pairs(CY.ownedArtifacts) do
            if type(v) == "string" then
                L0[v] = true
            else
                local L1 = v == true and type(k) == "string"
                if L1 then
                    L0[k] = true
                end
            end
        end
    end
    return L0
end
function fns.fn94()
    return not Bs.Unloaded
end
function fns.fn107(iX)
    Bc.LootTeleport = iX == true
end
function fns.fn117()
    if AS then
        if AS.Parent then
            AS.Anchored = false
        end
        AS = nil
    end
end
function fns.fn123(oj)
    Bc.AutoTrain = oj == true
    if Bc.AutoTrain then
        if not Ct() then
            Bc.AutoTrain = false
            A8("Training system unavailable")
            return
        end
        CR("train", Bu, Bt)
    else
        R4_12("train")
        local M7 = Ct() and A7(AQ.stopTraining)
        if M7 then
            pcall(AQ.stopTraining)
        end
    end
end
function fns.fn151(gp, gq)
    local Id_1
    local Ic_1
    Ic_1, Id_1 = pcall(gq.GetPivot, gq)
    if not Ic_1 then
        return false
    end
    local Position = Id_1.Position
    local Id_2 = Vector3.new(gp.Position.X - Position.X, 0, gp.Position.Z - Position.Z)
    if Id_2.Magnitude < 0.5 then
        Id_2 = Vector3.new(0, 0, 1)
    end
    local Ie = Position + Id_2.Unit * CL + Vector3.new(0, CJ, 0)
    if (gp.Position - Ie).Magnitude <= CD then
        return true
    end
    gp.AssemblyLinearVelocity = Vector3.zero
    gp.CFrame = CFrame.lookAt(Ie, Vector3.new(Position.X, Ie.Y, Position.Z))
    return true
end
function fns.fn172()
    local Lt_1
    local Ls_1, Ls_3
    if not Bc.AutoRebirth then
        return
    end
    local Lr = Cf()
    local Lr_3
    if Lr >= 200 then
        return
    end
    Ls_1, Lt_1 = pcall(A9.rebirthLevelRequirement, Lr)
    local Lr_1 = Ls_1 and tonumber(Lt_1)
    local Ls_2 = Lr_1 or nil
    local Lr_2 = not Ls_2 or R4_13() < Ls_2
    if Lr_2 then
        return
    end
    Lr_3, Ls_3 = R4_22(Bk)
    if Lr_3 and Ls_3 == "ok" then
        A8("Rebirthed")
        CT(true)
    end
end
function fns.fn198(hT)
    local IP = string.match(hT.Name, "^Treasure_(.+)$")
    if not IP then
        return nil
    end
    local IQ = tonumber(IP)
    if IQ ~= nil and BU[IQ] ~= nil then
        return IQ
    elseif BU[IP] ~= nil then
        return IP
    elseif IQ ~= nil then
        return IQ
    else
        return IP
    end
end
function fns.fn239(nf)
    Bc.AutoCraft = nf == true
    if Bc.AutoCraft then
        local Mz = if not B1() then 1 else 0
        if Mz == 1 then
            Bc.AutoCraft = false
            A8("Craft remote unavailable")
            return
        end
        CR("craft", Cg, BE)
    else
        R4_12("craft")
    end
end
function fns.fn257()
    local FX = #CH == 0 and BB and type(BB.RARITY_ORDER) == "table"
    if FX then
        for i, v in ipairs(BB.RARITY_ORDER) do
            table.insert(CH, tostring(v))
        end
    end
    return CH
end
function fns.fn292()
    gethui = R4_24
end
function fns.fn306()
    local E7 = BW ~= nil and BB ~= nil and type(BB.BY_ID) == "table"
    return E7
end
function fns.fn340(fo)
    local Hb = 0
    local Hc = {}
    if type(fo) == "table" then
        for k, v in pairs(fo) do
            local Hd
            if v == true then
                Hd = k
            elseif type(v) == "string" then
                Hd = v
            end
            local He = Hd ~= ""
            local Hf = type(Hd) == "string" and He
            if Hf then
                Hc[Hd] = true
                Hb += 1
            end
        end
    end
    return Hc, Hb
end
function fns.fn360()
    local Fm = AQ ~= nil and A7(AQ.isTraining)
    return Fm
end
function fns.fn387()
    local KB_1
    local KA_1
    if not Bc.AutoBuyChoppers then
        return
    end
    CT(false)
    local Ky = CF()
    local Kz = R4_18()
    KB_1, KA_1 = nil, nil
    for i, v in ipairs(BR()) do
        local KC_1 = type(v) == "table" and type(v.id) == "string" and not Ky[v.id]
        if KC_1 then
            local KC_2 = tonumber(v.price)
            if KC_2 and KC_2 <= Kz and (not KA_1 or KC_2 > KA_1) then
                KB_1 = v
                KA_1 = KC_2
            end
        end
    end
    local KC_3 = KB_1 and A5(BD, KB_1.id)
    if KC_3 then
        local Ky_1 = KB_1.name or KB_1.id
        A8("Bought " .. tostring(Ky_1))
        CT(true)
    end
end
function fns.fn389(lE)
    local Lp = lE or {}
    Bc.UpgradeIds = Lp
end
function fns.fn397()
    local GB_3
    local Gw = {}
    local Gx = {}
    local Gy = {}
    for i, v in ipairs(R4_2()) do
        for i, child in ipairs(v:GetChildren()) do
            local Name = child.Name
            local GA = (child:IsA("Model"))
            if GA then
                local GB_1 = string.match(Name, "^Train%d+$") or string.match(Name, "^RobuxTrain%d+$")
                GA = GB_1
            end
            if GA then
                local Stand = child:FindFirstChild("Stand")
                local GB_2 = Stand and Stand:IsA("BasePart")
                if GB_2 then
                    local GA_2 = Ce[Name]
                    if GA_2 == 0 then
                        GB_3 = "free"
                    elseif GA_2 then
                        GB_3 = GA_2 .. " rebirths"
                    else
                        GB_3 = "gamepass"
                    end
                    table.insert(Gx, {
                        label = string.format("%s - %s (%s)", v.Name, Name, GB_3),
                        zone = v.Name,
                        pad = Name,
                        need = GA_2
                    })
                end
            end
        end
    end
    table.sort(Gx, function(eD, eE)
        if eD.zone ~= eE.zone then
            return eD.zone < eE.zone
        end
        return eD.label < eE.label
    end)
    for i, v in ipairs(Gx) do
        table.insert(Gw, v.label)
        Gy[v.label] = v
    end
    R4_3 = Gw
    Ck = Gy
    return R4_3
end
function fns.fn407(mc, md)
    local LH_1
    local LG_1
    local LE = md == ""
    local LE_1
    local LF = type(md) ~= "string" or LE
    local LF_1
    if LF then
        return true
    end
    LE_1, LF_1 = Cs(mc)
    LG_1, LH_1 = Cs(md)
    if LE_1 ~= LG_1 then
        return LE_1 > LG_1
    end
    return LF_1 > LH_1
end
function fns.fn410()
    local JM_1
    if not Bc.AutoSell then
        return
    end
    CT(false)
    local JK = B_()
    local JL = not JK or JK < 1
    local JL_2
    if JL then
        return
    end
    local JL_1 = tonumber(Bc.SellAtCount) or 1
    if JK < JL_1 then
        return
    end
    JM_1, JL_2 = R4_9(Bc.SellRarities)
    if JL_2 == 0 then
        if Cl() then
            Bc.Sold = Bc.Sold + JK
            A8("Sold " .. JK .. " treasure")
            CT(true)
        end
        return
    end
    local treasureStock = CY.treasureStock
    local JL_3 = 0
    for k, v in pairs(treasureStock) do
        local JK_2 = not Bc.AutoSell or not AT()
        if JK_2 then
            break
        else
            local JK_3 = BB.BY_ID[k]
            local JN = tonumber(v) or 0
            local JO = JK_3 and JN > 0 and JM_1[tostring(JK_3.rarity)]
            if JO then
                if A5(BJ, k) then
                    JL_3 += JN
                end
                task.wait(0.1)
            end
        end
    end
    if JL_3 > 0 then
        Bc.Sold = Bc.Sold + JL_3
        A8("Sold " .. JL_3 .. " treasure")
        CT(true)
    end
end
function fns.fn417(h6, h7, h8)
    local IZ = os.clock()
    local IZ_2, IZ_4
    local I_ = h8 or BV
    local I__1, I__2
    local I0 = IZ + I_
    while true do
        local IZ_1 = AT() and os.clock() < I0
        if not IZ_1 then
            IZ_2, I__1 = R4_10()
            return I__1 ~= nil and (I__1.Position - h6).Magnitude <= h7
        end
        IZ_4, I__2 = R4_10()
        if not I__2 then
            return false
        end
        if (I__2.Position - h6).Magnitude <= h7 then
            break
        end
        I__2.AssemblyLinearVelocity = Vector3.zero
        I__2.CFrame = CFrame.new(h6 + Vector3.new(0, 3, 0))
        task.wait(0.1)
    end
    return true
end
function fns.onOnClientEvent2(ov)
    if type(ov) ~= "table" then
        return
    end
    for k, v in pairs(ov) do
        CY[k] = v
    end
end
function fns.fn440(mw)
    Bc.AutoRollAura = mw == true
    if Bc.AutoRollAura then
        local LX = if not CM() then 1 else 0
        if LX == 1 then
            Bc.AutoRollAura = false
            A8("Aura remote unavailable")
            return
        end
        CR("aura", BA, AW)
    else
        R4_12("aura")
    end
end
function fns.fn452()
    local Jv = type(CY.treasureStock) == "table" and CY.treasureStock
    local Jw = Jv
    local JD = if Jw then 1 else 0
    local JB = 3497 * JD + 128 * (1 - JD)
    local JC = 3971 * JD + 876 * (1 - JD)
    if not ((JB * 1228 + JC * 2718 + JB * JC) % 16777213 == 12196868) then
        Jw = nil
    end
    local Jv_1 = Jw
    if not Jv_1 then
        return nil
    end
    local Jw_1 = 0
    for k, v in pairs(Jv_1) do
        local Jv_2 = tonumber(v) or 0
        Jw_1 += Jv_2
    end
    return Jw_1
end
function fns.fn496()
    local Fi = Bk ~= nil and A9 ~= nil and A7(A9.rebirthLevelRequirement)
    return Fi
end
function fns.fn504()
    local LL_1, LL_3
    if not Bc.AutoRollAura then
        return
    end
    CT(false)
    local LK = Bc.AuraMode == "Lucky Reroll" and "lucky" or nil
    local LK_2, LK_4
    if LK == "lucky" then
        local LK_1 = tonumber(CY.luckyAuraRerolls) or 0
        if LK_1 < 1 then
            A8("No lucky rerolls left")
            return
        end
    elseif A7(Bi.spinCost) then
        LK_2, LL_1 = pcall(Bi.spinCost, CY.zone2Unlocked == true)
        local LM_1 = LK_2 and tonumber(LL_1)
        local LK_3 = LM_1 or nil
        local LL_2 = LK_3
        if LK_3 then
            LK_3 = R4_18() < LL_2
        end
        if LK_3 then
            return
        end
    end
    LK_4, LL_3 = R4_22(Bg, LK)
    local LJ_2 = not LK_4 or type(LL_3) ~= "table" or LL_3.ok ~= true or type(LL_3.auraId) ~= "string"
    if LJ_2 then
        return
    end
    if type(LL_3.luckyAuraRerolls) == "number" then
        CY.luckyAuraRerolls = LL_3.luckyAuraRerolls
    end
    local LJ_3 = type(CY.equippedAura) == "string" and CY.equippedAura
    local LK_5 = LJ_3
    local LQ = if LK_5 then 1 else 0
    local LO = 3291 * LQ + 4010 * (1 - LQ)
    local LP = 2217 * LQ + 1725 * (1 - LQ)
    if not ((LO * 2677 + LP * 591 + LO * LP) % 16777213 == 639188) then
        LK_5 = ""
    end
    local LJ_4 = "equip"
    local LM_2 = LK_5
    local LK_6 = Bc.AuraKeepBest and not BG(LL_3.auraId, LM_2)
    if LK_6 then
        LJ_4 = "keep"
    end
    A5(Bb, LJ_4, LL_3.auraId)
    if LJ_4 == "equip" then
        CY.equippedAura = LL_3.auraId
    end
    A8("Rolled " .. LL_3.auraId)
    CT(true)
end
function fns.fn508()
    local EQ_1
    local EP = CX and A7(CX.get)
    local EP_1
    if EP then
        EP_1, EQ_1 = pcall(CX.get)
        local ER = EP_1 and type(EQ_1) == "string"
        if ER and EQ_1 ~= "" then
            return EQ_1
        end
        local attr = LocalPlayer:GetAttribute("SpawnZone")
        local EQ_2 = type(attr) == "string" and attr
        return EQ_2 or "Zone1"
    end
    local attr = LocalPlayer:GetAttribute("SpawnZone")
    local EQ_3 = type(attr) == "string" and attr
    return EQ_3 or "Zone1"
end
function fns.fn523(aw)
    Bc.Status = aw
end
function fns.fn533()
    local Gg = #A6 == 0 and Be and type(Be.Craftable) == "table"
    if Gg then
        for i, v in ipairs(Be.Craftable) do
            local Gg_1 = type(v) == "table" and type(v.id) == "string"
            if Gg_1 then
                local Gg_2 = v.name or v.id
                local Gh = tostring(Gg_2)
                table.insert(A6, Gh)
                A_[Gh] = v
            end
        end
    end
    return A6
end
function fns.fn536()
    if not BJ then
        return false
    end
    return (pcall(function()
        BJ:FireServer(nil)
    end))
end
function fns.fn540()
    local Character = LocalPlayer.Character
    local Ep = not Character
    local Ev = if Ep then 1 else 0
    local Et = 173 * Ev + 2916 * (1 - Ev)
    local Eu = 2704 * Ev + 1333 * (1 - Ev)
    if not ((Et * 1182 + Eu * 3934 + Et * Eu) % 16777213 == 11309814) then
        Ep = not Character.Parent
    end
    if Ep then
        return nil, nil, nil
    end
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    local Er = not HumanoidRootPart
    local Ey = if Er then 1 else 0
    local Ew = 2418 * Ey + 1592 * (1 - Ey)
    local Ex = 2026 * Ey + 860 * (1 - Ey)
    if not ((Ew * 3170 + Ex * 1254 + Ew * Ex) % 16777213 == 15104532) then
        Er = not HumanoidRootPart:IsA("BasePart")
    end
    if Er then
        return Character, nil, Humanoid
    end
    return Character, HumanoidRootPart, Humanoid
end
function fns.fn550()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local ED = leaderstats
    if ED then
        local EE = leaderstats:FindFirstChild("Cash") or leaderstats:FindFirstChild("Wins")
        ED = EE
    end
    local EC_1 = ED
    if EC_1 then
        local ED_1 = tonumber(EC_1.Value) or 0
        return ED_1
    end
    local EC_2 = tonumber(CY.cash) or 0
    return EC_2
end
function fns.fn579(nn)
    local MB = nn or {}
    Bc.CraftIds = MB
end
function fns.fn597()
    connection2:Disconnect()
    table.clear(CY)
end
function fns.fn600(ld)
    Bc.AutoBuyChoppers = ld == true
    if Bc.AutoBuyChoppers then
        if not Bn() then
            Bc.AutoBuyChoppers = false
            A8("Shop remote unavailable")
            return
        end
        CR("buyChoppers", BK, Ci)
    else
        R4_12("buyChoppers")
    end
end
function fns.fn617()
    local Fq = AY ~= nil and Be ~= nil and A7(Be.get)
    return Fq
end
function fns.fn622(gD, gE, gF)
    local Ik_1
    local Ii_1
    local Ih_1
    Ih_1, Ii_1 = R4_10()
    if not Ii_1 then
        return
    end
    Ii_1.AssemblyLinearVelocity = Vector3.zero
    Ii_1.CFrame = gD
    Ii_1.Anchored = true
    AS = Ii_1
    local Ih_2 = os.clock() + gE
    while true do
        local Ij = AT() and os.clock() < Ih_2
        local Ij_2
        if Ij then
            local Ij_1 = gF and gF()
            if Ij_1 then
                R4_25()
                return
            end
            task.wait(0.1)
            Ij_2, Ik_1 = R4_10()
            if Ik_1 ~= Ii_1 then
                break
            end
            continue
        end
        R4_25()
        return
    end
    R4_25()
    return
end
function fns.fn625()
    local DO = tostring(Bc.Status)
    local DP = Bc.Chopped or 0
    local DQ = Bc.Looted
    local DW = if DQ then 1 else 0
    local DU = 1833 * DW + 1592 * (1 - DW)
    local DV = 3389 * DW + 2149 * (1 - DW)
    if not ((DU * 1222 + DV * 3913 + DU * DV) % 16777213 == 4935907) then
        DQ = 0
    end
    local DR = Bc.Sold or 0
    local DS = Bc.Crafted or 0
    return string.format("%s  |  trees %d  |  looted %d  |  sold %d  |  crafted %d", DO, DP, DQ, DR, DS)
end
function fns.fn645()
    connection:Disconnect()
    table.clear(BU)
end
function fns.fn647()
    local EX = {}
    for i, child in ipairs(CV:GetChildren()) do
        local EY = child:IsA("Folder") and string.match(child.Name, "^Zone%d+$")
        if EY then
            table.insert(EX, child)
        end
    end
    table.sort(EX, function(cB, cC)
        return cB.Name < cC.Name
    end)
    return EX
end
function fns.fn655(lu)
    Bc.AutoBuyUpgrades = lu == true
    if Bc.AutoBuyUpgrades then
        local Lm = not Bn() or type(Bo.List) ~= "table"
        if Lm then
            Bc.AutoBuyUpgrades = false
            A8("Upgrade remote unavailable")
            return
        end
        CR("upgrades", BK, AR)
    else
        R4_12("upgrades")
    end
end
function fns.fn707(fA)
    if not fA or not fA.Parent then
        return false
    end
    local Hv_1 = Cy(fA)
    if not Hv_1 then
        return false
    end
    return Hv_1.CanQuery and Hv_1.LocalTransparencyModifier < 0.5
end
function fns.fn748()
    local Fo = A4 ~= nil and Be ~= nil and type(Be.Craftable) == "table" and A7(Be.hasIngredients) and A7(Be.woodCost)
    return Fo
end
function fns.fn750()
    local Fs = {}
    if not CE() then
        table.insert(Fs, "chopping")
    end
    if not Ca() then
        table.insert(Fs, "looting")
    end
    if not BL() then
        table.insert(Fs, "selling")
    end
    local Fw = if not Bn() then 1 else 0
    if Fw == 1 then
        table.insert(Fs, "shop")
    end
    if not AV() then
        table.insert(Fs, "rebirth")
    end
    if not CM() then
        table.insert(Fs, "auras")
    end
    if not Ct() then
        table.insert(Fs, "training")
    end
    if not B1() then
        table.insert(Fs, "crafting")
    end
    local Fz = if not R4_14() then 1 else 0
    if Fz == 1 then
        table.insert(Fs, "artifacts")
    end
    return Fs
end
function fns.fn777(js)
    Bc.AutoSell = js == true
    if Bc.AutoSell then
        if not BL() then
            Bc.AutoSell = false
            A8("Sell remote unavailable")
            return
        end
        CR("sell", BQ, Bl)
    else
        R4_12("sell")
    end
end
function fns.fn787(ll)
    Bc.AutoEquipChopper = ll == true
    if Bc.AutoEquipChopper then
        if not Bx or not Bv then
            Bc.AutoEquipChopper = false
            A8("Equip remote unavailable")
            return
        end
        CR("equipChopper", BK, CA)
    else
        R4_12("equipChopper")
    end
end
function fns.fn796(nO)
    Bc.AutoEquipArtifact = nO == true
    if Bc.AutoEquipArtifact then
        if not R4_14() then
            Bc.AutoEquipArtifact = false
            A8("Artifact remote unavailable")
            return
        end
        CR("equipArtifact", Cg, BT)
    else
        R4_12("equipArtifact")
    end
end
function fns.fn843()
    return Co()
end
function fns.fn877(U)
    local DL = typeof(cloneref) == "function" and typeof(U) == "Instance"
    if DL then
        return cloneref(U)
    end
    return U
end
function fns.fn893()
    local M2_1
    if not Bc.AutoTrain then
        return
    end
    if AQ.isTraining() then
        A8("Training")
        return
    end
    local TrainArea = Bc.TrainArea
    local M0 = TrainArea == ""
    local M1 = type(TrainArea) ~= "string"
    local M1_3
    local M6 = if M1 then 1 else 0
    local M4 = 3597 * M6 + 2833 * (1 - M6)
    local M5 = 4001 * M6 + 3955 * (1 - M6)
    if not ((M4 * 2192 + M5 * 1650 + M4 * M5) % 16777213 == 12100658) then
        M1 = M0
    end
    if M1 then
        A8("Pick a training area")
        return
    end
    local M0_1 = Ck[TrainArea]
    if not M0_1 then
        B7()
        M0_1 = Ck[TrainArea]
    end
    if not M0_1 then
        A8("Training area missing")
        return
    end
    local M__1 = M0_1.need and Cf() < M0_1.need
    if M__1 then
        A8(string.format("Training needs %d rebirths", M0_1.need))
        return
    end
    local M__2 = CV:FindFirstChild(M0_1.zone)
    local M1_1 = M__2 and M__2:FindFirstChild(M0_1.pad)
    local M__3 = M1_1
    if M1_1 then
        M1_1 = M__3:FindFirstChild("Stand")
    end
    local M__4 = M1_1
    local M1_2 = not M__4 or not M__4:IsA("BasePart")
    if M1_2 then
        A8("Training pad missing")
        return
    end
    M1_3, M2_1 = R4_10()
    if not M2_1 then
        return
    end
    A8("Moving to " .. M0_1.pad)
    M2_1.AssemblyLinearVelocity = Vector3.zero
    M2_1.CFrame = M__4.CFrame + Vector3.new(0, 3.5, 0)
    task.wait(0.35)
    local M0_2 = not Bc.AutoTrain or AQ.isTraining()
    if M0_2 then
        return
    end
    if A7(firetouchinterest) then
        local Character = LocalPlayer.Character
        local M1_4 = Character and Character:FindFirstChild("HumanoidRootPart")
        local M0_4 = M1_4
        if M1_4 then
            M1_4 = M__4.Parent
        end
        if M1_4 then
            pcall(firetouchinterest, M0_4, M__4, 0)
            task.wait(0.1)
            pcall(firetouchinterest, M0_4, M__4, 1)
        end
    end
end
function fns.fn897()
    if #R4_3 == 0 then
        B7()
    end
    return R4_3
end
function fns.fn900()
    local HO = {}
    for i, v in ipairs(Ba()) do
        for i, child in ipairs(v:GetChildren()) do
            if child:IsA("Model") then
                table.insert(HO, child)
            end
        end
    end
    Bw = HO
    Bf = os.clock()
end
function fns.fn903(nq)
    local ME_1
    local MD_1
    MD_1, ME_1 = pcall(Be.get, nq)
    local MF = not MD_1 or type(ME_1) ~= "table"
    if MF then
        return -1, -1, -1
    end
    local MD_2 = tonumber(ME_1.strengthMult) or 0
    local MF_1 = tonumber(ME_1.cashMult) or 0
    local MG = tonumber(ME_1.speedMult) or 0
    return MD_2, MF_1, MG
end
function fns.fn935(jC)
    local J0 = tonumber(jC)
    if J0 then
        Bc.SellAtCount = math.clamp(math.floor(J0), 1, 500)
    end
end
function fns.fn958(hK)
    local IK = hK or {}
    Bc.ChopZones = IK
    R4_21 = nil
    Bf = 0
end
function fns.fn961()
    local E5 = B3 ~= nil and BH ~= nil and A7(BH.zoneIndexFromName)
    return E5
end
function fns.fn1017()
    local id
    local KQ_1
    if not Bc.AutoEquipChopper then
        return
    end
    CT(false)
    local KP = CF()
    id, KQ_1 = nil, -1
    for i, v in ipairs(BR()) do
        local KS_1 = type(v) == "table" and type(v.id) == "string" and KP[v.id]
        if KS_1 then
            local KS_2 = A3(v.id)
            if KS_2 > KQ_1 then
                id = v.id
                KQ_1 = KS_2
            end
        end
    end
    local KS_3 = id and id ~= CY.equippedChopper and A5(Bx, id)
    if KS_3 then
        CY.equippedChopper = id
        A8("Equipped " .. id)
        CT(true)
    end
end
function fns.fn1020(ga)
    local H4_1
    local H2_1
    local H3_1
    local H1 = os.clock() - Bf > Cr or #Bw == 0
    local H1_1
    if H1 then
        BN()
    end
    H2_1, H1_1 = nil, math.huge
    for i, v in ipairs(Bw) do
        if B2(v) then
            H3_1, H4_1 = pcall(v.GetPivot, v)
            if H3_1 then
                local Magnitude = (H4_1.Position - ga).Magnitude
                if Magnitude < H1_1 then
                    H2_1 = v
                    H1_1 = Magnitude
                end
            end
        end
    end
    return H2_1
end
function fns.fn1061(l4)
    local LB_1
    local LA = not Bi or not A7(Bi.get)
    local LA_1
    if LA then
        return 0, 0
    end
    LA_1, LB_1 = pcall(Bi.get, l4)
    local LC = not LA_1 or type(LB_1) ~= "table"
    if LC then
        return 0, 0
    end
    local LA_2 = tonumber(LB_1.strengthMult) or 0
    local LC_1 = tonumber(LB_1.runSpeedPct) or 0
    return LA_2, LC_1
end
function fns.fn1065(mG)
    Bc.AuraKeepBest = mG == true
end
function fns.fn1069(jA)
    local JZ = jA or {}
    Bc.SellRarities = JZ
end
function fns.fn1072()
    local EJ = By("Rebirths") or tonumber(CY.rebirths)
    local EK = EJ
    local EO = if EK then 1 else 0
    local EM = 1553 * EO + 928 * (1 - EO)
    local EN = 3849 * EO + 617 * (1 - EO)
    if not ((EM * 3670 + EN * 406 + EM * EN) % 16777213 == 13239701) then
        EK = 0
    end
    return EK
end
function fns.fn1077(a2, a3)
    local D6 = AM(AL, a2, 20)
    local D7 = D6 and D6:IsA(a3)
    if D7 then
        return D6
    end
    return nil
end
function fns.fn1080()
    local Kf_1
    local Ke = Bv and A7(Bv.ladderForZone)
    local Ke_1, Ke_3
    if Ke then
        Ke_1, Kf_1 = pcall(Bv.ladderForZone, R4_7())
        local Kg = Ke_1 and type(Kf_1) == "table" and #Kf_1 > 0
        if Kg then
            return Kf_1
        end
        if Ke_3 then
            return Bv.Choppers
        end
        return {}
    end
    Ke_3 = Bv and type(Bv.Choppers) == "table"
    if Ke_3 then
        return Bv.Choppers
    end
    return {}
end
function fns.fn1083(bO)
    if not AN then
        return
    end
    local El = os.clock()
    local Em = not bO
    if Em ~= false then
        Em = El - CS < Bm
    end
    if Em then
        return
    end
    CS = El
    A5(AN)
end
function fns.fn1092()
    local MO_1
    local MN_1
    local ML_1
    local MK_1
    local MJ_1
    local MI_1
    local MM_1
    if not Bc.AutoEquipArtifact then
        return
    end
    CT(false)
    ML_1, MK_1, MJ_1, MI_1 = nil, -1, -1, -1
    for k in pairs(Cb()) do
        MM_1, MN_1, MO_1 = Cw(k)
        local MP = MM_1 > MK_1
        if not MP then
            MP = MM_1 == MK_1 and MN_1 > MJ_1
        end
        if not MP then
            MP = MM_1 == MK_1 and MN_1 == MJ_1 and MO_1 > MI_1
        end
        if MP then
            ML_1 = k
            MK_1 = MM_1
            MJ_1 = MN_1
            MI_1 = MO_1
        end
    end
    local MM_2 = ML_1 and ML_1 ~= CY.equippedArtifact and A5(AY, ML_1)
    if MM_2 then
        CY.equippedArtifact = ML_1
        A8("Equipped " .. ML_1)
        CT(true)
    end
end
function fns.fn1125()
    local IC_1
    if not Bc.AutoChop then
        return
    end
    local IB = Bc.AutoTrain and Ct() and AQ.isTraining()
    local IB_1
    if IB then
        A8("Training")
        return
    end
    IB_1, IC_1 = R4_10()
    if not IC_1 then
        A8("Waiting for character")
        return
    end
    local IB_2 = R4_21 and not B2(R4_21)
    if IB_2 then
        Bc.Chopped = Bc.Chopped + 1
        R4_21 = nil
    end
    local IB_3 = R4_21 and os.clock() - Bj > Cx
    if IB_3 then
        R4_21 = nil
    end
    if not R4_21 then
        R4_21 = AZ(IC_1.Position)
        local IB_4 = R4_21 and os.clock()
        Bj = IB_4 or 0
    end
    if not R4_21 then
        Br()
        A8("Waiting for trees")
        return
    end
    A8("Chopping")
    BS(IC_1, R4_21)
end
function fns.fn1138(hA)
    Bc.AutoChop = hA == true
    if Bc.AutoChop then
        if not CE() then
            Bc.AutoChop = false
            A8("Chop remote unavailable")
            return
        end
        R4_21 = nil
        BN()
        CR("chop", CQ, A2)
    else
        R4_12("chop")
        R4_21 = nil
        if Bc.Status ~= "Idle" then
            A8("Idle")
        end
    end
end
function fns.fn1171()
    local FB = {}
    local FC = BH
    local FD = {}
    if FC then
        FC = A7(BH.zoneIndexFromName)
    end
    if FC then
        local FC_1 = {}
        for i, v in ipairs(R4_2()) do
            for i, child in ipairs(v:GetChildren()) do
                if child:IsA("BasePart") then
                    local FE = BH.zoneIndexFromName(child.Name)
                    if FE then
                        table.insert(FC_1, { label = string.format("%s - Zone %d", v.Name, FE), index = FE, zone = v.Name, part = child.Name })
                    end
                end
            end
        end
        table.sort(FC_1, function(dI, dJ)
            if dI.zone ~= dJ.zone then
                return dI.zone < dJ.zone
            end
            return dI.index < dJ.index
        end)
        for i, v in ipairs(FC_1) do
            table.insert(FB, v.label)
            FD[v.label] = v
        end
    end
    Cz = FB
    Cu = FD
    return Cz
end
function fns.fn1189(jX)
    local Kp_1, Kp_2, Kp_3
    local Ko = Bv and A7(Bv.effectiveStrength)
    local Ko_1, Ko_3, Ko_4, Ko_5
    if Ko then
        Ko_1, Kp_1 = pcall(Bv.effectiveStrength, jX)
        local Kq_1 = Ko_1 and type(Kp_1) == "number" and Kp_1 > 0
        if Kq_1 then
            return Kp_1
        end
        local Ko_2 = Bv and A7(Bv.strengthOf)
        if Ko_4 then
            Ko_3, Kp_2 = pcall(Bv.strengthOf, jX)
            local Kq_2 = Ko_3 and type(Kp_2) == "number"
            if Kq_2 then
                return Kp_2
            end
            return 0
        end
        return 0
    end
    Ko_4 = Bv and A7(Bv.strengthOf)
    if Ko_4 then
        Ko_5, Kp_3 = pcall(Bv.strengthOf, jX)
        local Kq_3 = Ko_5 and type(Kp_3) == "number"
        if Kq_3 then
            return Kp_3
        end
        return 0
    end
    return 0
end
function fns.fn1192(X)
    return type(X) == "function"
end
function fns.fn1194()
    local LocalTreasureDrops = CV:FindFirstChild("LocalTreasureDrops")
    local IN = LocalTreasureDrops and LocalTreasureDrops:IsA("Folder")
    if IN then
        return LocalTreasureDrops
    end
    return nil
end
function fns.fn1204(fv)
    for i, descendant in ipairs(fv:GetDescendants()) do
        local Hn = descendant:IsA("BasePart") and descendant.Name ~= "ChopBlocker" and descendant.Name ~= "TreeHpAdornee"
        if Hn then
            return descendant
        end
    end
    return nil
end
function fns.fn1244()
    table.clear(CW)
end
function fns.fn1270(iR)
    local Jm = {}
    local Jn = iR
    local Jr = if Jn then 1 else 0
    local Jp = 4001 * Jr + 1093 * (1 - Jr)
    local Jq = 1114 * Jr + 2217 * (1 - Jr)
    if not ((Jp * 2796 + Jq * 1298 + Jp * Jq) % 16777213 == 312669) then
        Jn = Jm
    end
    Bc.LootRarities = Jn
end
local function fn1282(hZ)
    local IX_1
    local IW_1
    IX_1, IW_1 = R4_9(Bc.LootRarities)
    if IW_1 == 0 then
        return true
    end
    local IW_2 = BU[hZ]
    if not IW_2 then
        return false
    end
    return IX_1[IW_2] == true
end
local function fn1298()
    if #Cz == 0 then
        Co()
    end
    return Cz
end
local function fn1312(b2)
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local EA = leaderstats and leaderstats:FindFirstChild(b2)
    if EA then
        return tonumber(EA.Value)
    end
    return nil
end
local function fn1329()
    local Fc = BJ ~= nil and BB ~= nil and type(BB.BY_ID) == "table"
    return Fc
end
local function fn1339(lW)
    Bc.AutoRebirth = lW == true
    if Bc.AutoRebirth then
        if not AV() then
            Bc.AutoRebirth = false
            A8("Rebirth remote unavailable")
            return
        end
        CR("rebirth", BF, Cn)
    else
        R4_12("rebirth")
    end
end
local function fn1340(ot)
    if type(ot) == "string" then
        Bc.TrainArea = ot
    end
end
local function onOnClientEvent(eO, eP)
    if type(eP) ~= "table" then
        return
    end
    for k, v in pairs(eP) do
        local GU = type(v) == "table" and v.dropId ~= nil and type(v.id) == "string"
        if GU then
            local GU_1 = BB.BY_ID[v.id]
            local dropId = v.dropId
            local GW = GU_1 and tostring(GU_1.rarity)
            local GU_2 = GW or nil
            BU[dropId] = GU_2
        end
    end
end
local function fn1361(aJ)
    local D3_1
    local D2_1
    if not aJ then
        return nil
    end
    D2_1, D3_1 = pcall(require, aJ)
    local D4 = D2_1 and type(D3_1) == "table"
    if D4 then
        return D3_1
    end
    return nil
end
local function fn1367()
    return BD ~= nil and R4_5 ~= nil and Bv ~= nil and Bo ~= nil
end
local function fn1412()
    local K3_1
    local K2_1
    if not Bc.AutoBuyUpgrades then
        return
    end
    CT(false)
    K3_1, K2_1 = R4_9(Bc.UpgradeIds)
    local K4 = type(CY.upgrades) == "table" and CY.upgrades
    local K6 = K4 or {}
    local K6_7, K6_9
    local K5_1 = R4_18()
    for i, v in ipairs(Bo.List) do
        local K6_1 = not Bc.AutoBuyUpgrades or not AT()
        if K6_1 then
            return
        end
        local K6_2 = type(v) == "table" and type(v.id) == "string"
        if K6_2 then
            local K6_3 = v.name or v.id
            local K7 = tostring(K6_3)
            if K2_1 == 0 or K3_1[K7] then
                local K6_5 = tonumber(K6[v.id]) or 0
                local K8_2
                local K6_6 = tonumber(v.maxLevel) or 0
                local K9_1
                if K6_5 < K6_6 then
                    K6_7, K9_1 = pcall(Bo.cost, v.id, K6_5)
                    local K8_1 = K6_7 and tonumber(K9_1)
                    local K6_8 = K8_1 or nil
                    local K9_2 = K6_8
                    if K6_8 then
                        K6_8 = K9_2 <= K5_1
                    end
                    if K6_8 then
                        K6_9, K8_2 = R4_22(R4_5, v.id, false)
                        if K6_9 and K8_2 ~= "broke" then
                            A8("Upgraded " .. K7)
                            CT(true)
                            return
                        end
                    end
                end
            end
        end
    end
end
local function fn1419()
    local EG = By("Level") or tonumber(CY.level)
    return EG or 0
end
local function fn1429()
    local F4 = #B5 == 0 and Bo and type(Bo.List) == "table"
    if F4 then
        for i, v in ipairs(Bo.List) do
            local F4_1 = type(v) == "table" and type(v.id) == "string"
            if F4_1 then
                local F4_2 = v.name or v.id
                local F5 = tostring(F4_2)
                table.insert(B5, F5)
                BY[F5] = v.id
            end
        end
    end
    return B5
end
local function fn1446(iJ)
    Bc.AutoLoot = iJ == true
    if Bc.AutoLoot then
        if not Ca() then
            Bc.AutoLoot = false
            A8("Loot remote unavailable")
            return
        end
        CR("loot", B9, BX)
    else
        R4_12("loot")
    end
end
local function fn1453(mE)
    if mE == "Cash" or mE == "Lucky Reroll" then
        Bc.AuraMode = mE
    end
end
local function fn1482(fj)
    CW[fj] = nil
end
local function fn1533()
    local J2 = {}
    if type(CY.ownedChoppers) == "table" then
        for k, v in pairs(CY.ownedChoppers) do
            local J3_1 = v == true and type(k) == "string"
            if J3_1 then
                J2[k] = true
            elseif type(v) == "string" then
                J2[v] = true
            end
        end
    end
    local J3_2 = Bv and type(Bv.StarterId) == "string"
    if J3_2 then
        J2[Bv.StarterId] = true
    end
    return J2
end
AL = nil
AM = nil
AN = nil
R4_25 = nil
R4_9 = nil
AQ = nil
AR = nil
AS = nil
AT = nil
connection = nil
AV = nil
AW = nil
AY = nil
AZ = nil
A_ = nil
R4_18 = nil
R4_2 = nil
A2 = nil
A3 = nil
A4 = nil
A5 = nil
A6 = nil
A7 = nil
A8 = nil
A9 = nil
Ba = nil
Bb = nil
Bc = nil
R4_12 = nil
Be = nil
Bf = nil
Bg = nil
Bi = nil
Bj = nil
Bk = nil
Bl = nil
Bm = nil
Bn = nil
Bo = nil
R4_21 = nil
R4_5 = nil
Br = nil
Bs = nil
Bt = nil
Bu = nil
Bv = nil
Bw = nil
local Players, AX, Bh
Bx = nil
By = nil
BA = nil
BB = nil
R4_14 = nil
BD = nil
BE = nil
BF = nil
BG = nil
BH = nil
BJ = nil
BK = nil
BL = nil
BN = nil
R4_24 = nil
R4_7 = nil
BQ = nil
BR = nil
BS = nil
BT = nil
BU = nil
BV = nil
BW = nil
BX = nil
BY = nil
LocalPlayer = nil
B_ = nil
R4_16 = nil
B1 = nil
B2 = nil
B3 = nil
connection2 = nil
B5 = nil
B7 = nil
B9 = nil
Ca = nil
Cb = nil
R4_10 = nil
Ce = nil
Cf = nil
Cg = nil
Ci = nil
local Bz, BI, BM, Workspace, B8, Lighting, Ch, TeleportService
Ck = nil
Cl = nil
Cn = nil
Co = nil
CoreGui = nil
R4_3 = nil
Cr = nil
Cs = nil
Ct = nil
Cu = nil
Cw = nil
Cx = nil
Cy = nil
Cz = nil
CA = nil
R4_13 = nil
CD = nil
CE = nil
CF = nil
CH = nil
CJ = nil
CL = nil
CM = nil
R4_22 = nil
CQ = nil
CR = nil
CS = nil
CT = nil
CV = nil
CW = nil
CX = nil
CY = nil
local GuiService, HttpService, VirtualUser, UserInputService, RunService
local Cm
GuiService = nil
HttpService = nil
local CG
VirtualUser = nil
UserInputService = nil
local CN
RunService = nil
local CU
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, Workspace, LocalPlayer, R4_24 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local R4_15 = game:GetService("ReplicatedStorage")
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
local R4_29 = "OuroborosChopTreesForTreasure"
R4_24 = fns.fn15
if getgenv then
    getgenv().gethui = R4_24
end
Bs, AL, CV, CQ, CL, CJ, CD, Cx, Cr, Cm, Cg, B9, R4_16, BV, BQ, BK, BF, BA, Bu, Bm, Bh, Bc, BH, BB, Bv, Bo, Bi, Be, A9, R4_1, R4_37, B8, A7, AT, A8, AM, R4_31 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (false and (R4_1 and false) and (Bi or R4_1 or Bi and false) and (Bi and false and false or 0.4 and (Bi or 96)) or (not Bi and 96 or (Bi or B9) or (not R4_1 or false) and R4_1) and (2.5 and (B9 or R4_1 or 96))) and not (false and (R4_1 and false) and (Bi or R4_1 or Bi and false) and (Bi and false and false or 0.4 and (Bi or 96)) or (not Bi and 96 or (Bi or B9) or (not R4_1 or false) and R4_1) and (2.5 and (B9 or R4_1 or 96))) then
    pcall(fns.fn292)
    AL = function(t)
        local DB
        local Dz
        local DA
        Dz = nil
        DA = nil
        DB = nil
        local DC = t ~= ""
        local DD = type(t) == "string" and DC
        assert(DD, "A namespace is required")
        assert(type(getgenv) == "function", "getgenv is unavailable")
        Dz = getgenv()
        assert(type(Dz) == "table", "getgenv did not return a table")
        local DC_2 = Dz[t]
        if DC_2 ~= nil then
            local DD_2 = type(DC_2) == "table" and type(DC_2.Unload) == "function"
            assert(DD_2, "Namespace is occupied")
            DC_2.Unload()
            assert(Dz[t] == nil, "Previous instance did not release its namespace")
        end
        DA = {}
        DB = { State = {}, Unloaded = false }
        DB.Track = function(z)
            assert(type(z) == "function", "Cleanup must be callable")
            if DB.Unloaded then
                z()
            else
                table.insert(DA, z)
            end
            return z
        end
        DB.Unload = function()
            local Dp_2
            local Do_2
            if DB.Unloaded then
                return
            end
            DB.Unloaded = true
            local Dm = {}
            local Dt = #DA
            local Ds = -1
            while false and Dt <= 1 or true and Dt >= 1 do
                local Du = Dt
                local Dn_2 = table.remove(DA, Du)
                Do_2, Dp_2 = pcall(Dn_2)
                if not Do_2 then
                    table.insert(Dm, tostring(Dp_2))
                end
                Dt += Ds
            end
            table.clear(DB.State)
            if #Dm > 0 then
                error("Cleanup incomplete: " .. table.concat(Dm, "; "), 0)
            end
            if Dz[t] == DB then
                Dz[t] = nil
            end
        end
        Dz[t] = DB
        return DB
    end
else
    pcall(fns.fn292)
    R4_37 = function(t)
        local DB
        local Dz
        local DA
        Dz = nil
        DA = nil
        DB = nil
        local DC = t ~= ""
        local DD = type(t) == "string" and DC
        assert(DD, "A namespace is required")
        assert(type(getgenv) == "function", "getgenv is unavailable")
        Dz = getgenv()
        assert(type(Dz) == "table", "getgenv did not return a table")
        local DC_1 = Dz[t]
        if DC_1 ~= nil then
            local DD_1 = type(DC_1) == "table" and type(DC_1.Unload) == "function"
            assert(DD_1, "Namespace is occupied")
            DC_1.Unload()
            assert(Dz[t] == nil, "Previous instance did not release its namespace")
        end
        DA = {}
        DB = { State = {}, Unloaded = false }
        DB.Track = function(z)
            assert(type(z) == "function", "Cleanup must be callable")
            if DB.Unloaded then
                z()
            else
                table.insert(DA, z)
            end
            return z
        end
        DB.Unload = function()
            local Dp_1
            local Do_1
            if DB.Unloaded then
                return
            end
            DB.Unloaded = true
            local Dm = {}
            local Dt = #DA
            local Ds = -1
            while false and Dt <= 1 or true and Dt >= 1 do
                local Du = Dt
                local Dn_1 = table.remove(DA, Du)
                Do_1, Dp_1 = pcall(Dn_1)
                if not Do_1 then
                    table.insert(Dm, tostring(Dp_1))
                end
                Dt += Ds
            end
            table.clear(DB.State)
            if #Dm > 0 then
                error("Cleanup incomplete: " .. table.concat(Dm, "; "), 0)
            end
            if Dz[t] == DB then
                Dz[t] = nil
            end
        end
        Dz[t] = DB
        return DB
    end
end
B8 = function(M, N)
    local DJ = type(M) == "table" and type(M.Track) == "function"
    assert(DJ, "FeatureAPI required")
    local DJ_1 = type(N) == "table" and type(N.OnUnload) == "function"
    assert(DJ_1, "UI library required")
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
Bs = R4_37(R4_29)
local R4_36 = fns.fn877
A7 = fns.fn1192
AT = fns.fn94
AL = R4_36(R4_15)
CV = R4_36(Workspace)
CQ = 0.2
CL = 4
CJ = 3.5
CD = 2.5
Cx = 60
Cr = 3
Cm = 4
Cg = 4
B9 = 0.4
R4_16 = 12
BV = 6
BQ = 4
BK = 3
BF = 5
BA = 1.5
Bu = 2
Bm = 10
if (R4_31 or A9) and (false or R4_31) and (not A9 and A9 or false and A9) or not ((R4_31 or A9) and (false or R4_31) and (not A9 and A9 or false and A9)) then
    Bh = 8
    Bc = Bs.State
    Bc.AutoChop = false
    Bc.AutoLoot = false
    Bc.AutoSell = false
    Bc.AutoBuyChoppers = false
    Bc.AutoEquipChopper = false
    Bc.AutoBuyUpgrades = false
    Bc.AutoRebirth = false
    Bc.AutoRollAura = false
    Bc.AutoTrain = false
    Bc.AutoCraft = false
    Bc.AutoEquipArtifact = false
    Bc.ChopZones = {}
    Bc.CraftIds = {}
    Bc.LootRarities = {}
    Bc.SellRarities = {}
    Bc.UpgradeIds = {}
    Bc.LootRadius = 120
    Bc.LootTeleport = false
    Bc.SellAtCount = 1
    Bc.AuraMode = "Cash"
    Bc.AuraKeepBest = true
    Bc.TrainArea = ""
    Bc.Status = "Idle"
    Bc.Chopped = 0
    Bc.Looted = 0
    Bc.Sold = 0
    Bc.Crafted = 0
    A8 = fns.fn523
else
    Bs = 8
    Bh = A8.State
    Bh.AutoChop = false
    Bh.AutoLoot = false
    Bh.AutoSell = false
    Bh.AutoBuyChoppers = false
    Bh.AutoEquipChopper = false
    Bh.AutoBuyUpgrades = false
    Bh.AutoRebirth = false
    Bh.AutoRollAura = false
    Bh.AutoTrain = false
    Bh.AutoCraft = false
    Bh.AutoEquipArtifact = false
    Bh.ChopZones = {}
    Bh.CraftIds = {}
    Bh.LootRarities = {}
    Bh.SellRarities = {}
    Bh.UpgradeIds = {}
    Bh.LootRadius = 120
    Bh.LootTeleport = false
    Bh.SellAtCount = 1
    Bh.AuraMode = "Cash"
    Bh.AuraKeepBest = true
    Bh.TrainArea = ""
    Bh.Status = "Idle"
    Bh.Chopped = 0
    Bh.Looted = 0
    Bh.Sold = 0
    Bh.Crafted = 0
    Bc = fns.fn523
end
Bs.GetStatus = fns.fn625
AM = function(aA, aB, aC)
    local D__1
    local DZ_1
    if not aA then
        return nil
    end
    DZ_1, D__1 = pcall(function()
        local DX = aC or 20
        return aA:WaitForChild(aB, DX)
    end)
    return DZ_1 and D__1 or nil
end
R4_31 = fn1361
local R4_30 = AM(AL, "Shared")
BH = R4_31(AM(R4_30, "TreeZonesData"))
BB = R4_31(AM(R4_30, "TreasureData"))
Bv = R4_31(AM(R4_30, "ChoppersData"))
Bo = R4_31(AM(R4_30, "UpgradesData"))
Bi = R4_31(AM(R4_30, "AurasData"))
Be = R4_31(AM(R4_30, "ArtifactsData"))
A9 = R4_31(AM(R4_30, "PlayerLevels"))
R4_1 = AM(AM(LocalPlayer, "PlayerScripts"), "Client")
R4_36 = R4_1 and R4_1:FindFirstChild("TrainingSystem")
AQ = R4_31(R4_36)
R4_36 = R4_1 and R4_1:FindFirstChild("CurrentZone")
CX = R4_31(R4_36)
R4_36 = R4_1 and R4_1:FindFirstChild("TreasureDrops")
CN, B3, BW, R4_30, BM, BJ, BD, Bx, R4_5, Bk, Bg, Bb, A4, AY, R4_17, AN, CY, CS, Cz, Cu, CH, B5, BY, A6, A_, R4_3, Ck, Ce, BU, R4_37, R4_15, R4_22, A5, CT, R4_10, By, R4_18, R4_13, Cf, R4_7, R4_2, CE, Ca, BL, Bn, AV, CM, Ct, B1, R4_14, Co, B7 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
R4_29 = 61
repeat
    R4_1 = (R4_29 * 13 + 19) % 22 + 1
    if R4_1 <= 11 then
        if R4_1 <= 6 then
            if R4_1 <= 3 then
                if R4_1 <= 2 then
                    if R4_1 <= 1 then
                        if (R4_29 * 3 + 3) * 9 % 4 == ((R4_29 * 3 + 3) * 9 + 11) % 4 then
                            R4_15 = BW("ChopTreeHit", "RemoteEvent")
                            B3 = BW("LootTreasure", "RemoteFunction")
                        else
                            B3 = R4_15("ChopTreeHit", "RemoteEvent")
                            BW = R4_15("LootTreasure", "RemoteFunction")
                        end
                        R4_29 = (R4_29 + 127) % 176
                    else
                        local TL = bit32.rrotate(bit32.bxor(bit32.lrotate(R4_29, 15), string.byte(tostring(Bn))), 26)
                        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(TL, 3228462073), 1632489735), (bit32.bxor(bit32.band(TL, 1066505222), 3458433761))), 1632489735), 3458433761) ~= TL then
                            R4_15 = R4_30("TreasureDrop", "RemoteEvent")
                        else
                            R4_30 = R4_15("TreasureDrop", "RemoteEvent")
                        end
                        R4_29 = (R4_29 + 149) % 176
                    end
                else
                    R4_20 = (vector.create((R4_29 * 1 + 4) % 11 + 1, (R4_29 * 10 + 7) % 13 + 1, (R4_29 * 2 + 14) % 17 + 1))
                    R4_4 = (vector.create((R4_29 * 7 + 9) % 11 + 1, (R4_29 * 3 + 10) % 13 + 1, (R4_29 * 15 + 2) % 17 + 1))
                    local Tk = vector.dot(R4_20, R4_4)
                    if Tk * Tk >= vector.dot(R4_20, R4_20) * vector.dot(R4_4, R4_4) + 1 then
                        BJ = Bx("EndChopRun", "RemoteEvent")
                        R4_15 = Bx("SellTreasure", "RemoteEvent")
                        BM = Bx("BuyChopper", "RemoteEvent")
                        BD = Bx("EquipChopper", "RemoteEvent")
                    else
                        BM = R4_15("EndChopRun", "RemoteEvent")
                        BJ = R4_15("SellTreasure", "RemoteEvent")
                        BD = R4_15("BuyChopper", "RemoteEvent")
                        Bx = R4_15("EquipChopper", "RemoteEvent")
                    end
                    R4_29 = (R4_29 + 105) % 176
                end
            elseif R4_1 <= 5 then
                if R4_1 <= 4 then
                    R4_20 = (vector.create((R4_29 * 3 + 4) % 11 + 1, (R4_29 * 4 + 11) % 13 + 1, (R4_29 * 8 + 1) % 17 + 1))
                    R4_4 = (vector.create((R4_29 * 7 + 7) % 11 + 1, (R4_29 * 11 + 13) % 13 + 1, (R4_29 * 5 + 8) % 17 + 1))
                    local To = vector.cross(R4_20, R4_4)
                    local Tp = vector.dot(R4_20, R4_4)
                    if vector.dot(To, To) + Tp * Tp == vector.dot(R4_20, R4_20) * vector.dot(R4_4, R4_4) then
                        R4_5 = R4_15("BuyUpgrade", "RemoteFunction")
                        Bk = R4_15("RebirthFunc", "RemoteFunction")
                    else
                        R4_15 = Bk("BuyUpgrade", "RemoteFunction")
                        R4_5 = Bk("RebirthFunc", "RemoteFunction")
                    end
                    R4_29 = (R4_29 + 17) % 176
                else
                    R4_20 = { "cpb", "wybhfjqrdmv", "bnypkhht", "uaeq", "qdstrqbry", "vmlzxjuyotnk", "tpsn", "widraisxiyl" }
                    if R4_20[(R4_29 * 37 + 64) % 8 + 1] <= R4_20[(R4_29 * 37 + 64) % 8 + 1] then
                        Bg = R4_15("SpinAura", "RemoteFunction")
                        Bb = R4_15("ChooseRolledAura", "RemoteEvent")
                        A4 = R4_15("CraftArtifact", "RemoteFunction")
                    else
                        Bb = A4("SpinAura", "RemoteFunction")
                        R4_15 = A4("ChooseRolledAura", "RemoteEvent")
                        Bg = A4("CraftArtifact", "RemoteFunction")
                    end
                    R4_29 = (R4_29 + 149) % 176
                end
            else
                local Tw = bit32.rrotate(bit32.bxor(bit32.lrotate(R4_29, 15), string.byte(tostring(Bx))), 20)
                if bit32.bxor(bit32.lrotate(bit32.bxor(Tw, 2130413702), 16), 2290515707) == bit32.lrotate(Tw, 16) then
                    AY = R4_15("EquipArtifact", "RemoteEvent")
                else
                    R4_15 = AY("EquipArtifact", "RemoteEvent")
                end
                R4_29 = (R4_29 + 127) % 176
            end
        elseif R4_1 <= 9 then
            if R4_1 <= 8 then
                if R4_1 <= 7 then
                    if ((not CS or not Bx or AY and not Bg or (not Bx or not CS) and (Bx or not A6)) and ((CS or AY) and (Bg or not Bx) and (not AY and Bx and (A6 and Bx))) or (not CS or not Bg) and (not Bx or not AY) and ((Bx or not Bg) and (AY and not A6)) and (CS and CS and (CS and not Bx) or (A6 and not CS or A6 and not Bg))) and not ((not CS or not Bx or AY and not Bg or (not Bx or not CS) and (Bx or not A6)) and ((CS or AY) and (Bg or not Bx) and (not AY and Bx and (A6 and Bx))) or (not CS or not Bg) and (not Bx or not AY) and ((Bx or not Bg) and (AY and not A6)) and (CS and CS and (CS and not Bx) or (A6 and not CS or A6 and not Bg))) then
                        R4_15 = R4_17("AxeDataSync", "RemoteEvent")
                    else
                        R4_17 = R4_15("AxeDataSync", "RemoteEvent")
                    end
                    R4_29 = (R4_29 + 83) % 176
                else
                    R4_20 = { "kakbt", "vpdhbv", "fjhnuldtbx", "cto", "qfxvc", "nthmuuk", "obwwwfauhm" }
                    local Tv = R4_29
                    R4_4 = R4_20[Tv % 7 + 1]
                    if R4_4:len() >= R4_4:reverse():rep(Tv % 3 + 2):len() then
                        R4_22 = false
                        R4_15 = {}
                        AN = 0
                        CS = function(bq, ...)
                            local Ee
                            local Ec
                            local Ef
                            local Ed
                            Ec = nil
                            Ed = nil
                            Ee = nil
                            Ef = nil
                            if not bq then
                                return false, nil
                            end
                            Ed = table.pack(...)
                            Ef, Ec, Ee = false, false, nil
                            task.spawn(function()
                                local bz, bA = pcall(function()
                                    return bq:InvokeServer(table.unpack(Ed, 1, Ed.n))
                                end)
                                Ec = bz
                                Ee = bA
                                Ef = true
                            end)
                            local Eg = os.clock() + Bh
                            while true do
                                local Eh = not Ef and os.clock() < Eg and AT()
                                if Eh then
                                    task.wait(0.1)
                                    continue
                                end
                                break
                            end
                            if not Ef then
                                return false, nil
                            end
                            return Ec, Ee
                        end
                        CY = function(bJ, ...)
                            local Ej
                            Ej = nil
                            if not bJ then
                                return false
                            end
                            Ej = table.pack(...)
                            return (pcall(function()
                                bJ:FireServer(table.unpack(Ej, 1, Ej.n))
                            end))
                        end
                    else
                        AN = R4_15("RequestSync", "RemoteEvent")
                        CY = {}
                        CS = 0
                        R4_22 = function(bq, ...)
                            local Ee
                            local Ec
                            local Ef
                            local Ed
                            Ec = nil
                            Ed = nil
                            Ee = nil
                            Ef = nil
                            if not bq then
                                return false, nil
                            end
                            Ed = table.pack(...)
                            Ef, Ec, Ee = false, false, nil
                            task.spawn(function()
                                local bz, bA = pcall(function()
                                    return bq:InvokeServer(table.unpack(Ed, 1, Ed.n))
                                end)
                                Ec = bz
                                Ee = bA
                                Ef = true
                            end)
                            local Eg = os.clock() + Bh
                            while true do
                                local Eh = not Ef and os.clock() < Eg and AT()
                                if Eh then
                                    task.wait(0.1)
                                    continue
                                end
                                break
                            end
                            if not Ef then
                                return false, nil
                            end
                            return Ec, Ee
                        end
                        A5 = function(bJ, ...)
                            local Ej
                            Ej = nil
                            if not bJ then
                                return false
                            end
                            Ej = table.pack(...)
                            return (pcall(function()
                                bJ:FireServer(table.unpack(Ej, 1, Ej.n))
                            end))
                        end
                    end
                    R4_29 = (R4_29 + 149) % 176
                end
            else
                if (R4_29 * 3 + 4) * 5 % 4 == ((R4_29 * 3 + 4) * 5 + 6) % 4 then
                    By = fns.fn1083
                    R4_18 = fns.fn540
                    CT = fn1312
                    R4_10 = fns.fn550
                else
                    CT = fns.fn1083
                    R4_10 = fns.fn540
                    By = fn1312
                    R4_18 = fns.fn550
                end
                R4_29 = (R4_29 + 127) % 176
            end
        elseif R4_1 <= 10 then
            R4_20 = (vector.create((R4_29 * 1 + 9) % 11 + 1, (R4_29 * 4 + 11) % 13 + 1, (R4_29 * 11 + 12) % 17 + 1))
            local U4 = vector.floor(R4_20) + vector.ceil(R4_20 * -1)
            if vector.dot(U4, U4) == 0 then
                R4_13 = fn1419
                Cf = fns.fn1072
                R4_7 = fns.fn508
                R4_2 = fns.fn647
                CE = fns.fn961
            else
                CE = fn1419
                R4_13 = fns.fn1072
                Cf = fns.fn508
                R4_7 = fns.fn647
                R4_2 = fns.fn961
            end
            R4_29 = (R4_29 + 83) % 176
        else
            R4_20 = (vector.create((R4_29 * 3 + 9) % 11 + 1, (R4_29 * 3 + 1) % 13 + 1, (R4_29 * 8 + 4) % 17 + 1))
            R4_4 = (vector.create((R4_29 * 3 + 9) % 11 + 1, (R4_29 * 5 + 8) % 13 + 1, (R4_29 * 6 + 16) % 17 + 1))
            R4_32 = (vector.create((R4_29 * 4 + 6) % 11 + 1, (R4_29 * 4 + 1) % 13 + 1, (R4_29 * 13 + 14) % 17 + 1))
            R4_23 = (vector.create((R4_29 * 2 + 3) % 11 + 1, (R4_29 * 4 + 5) % 13 + 1, (R4_29 * 15 + 3) % 17 + 1))
            if vector.dot(vector.cross(R4_20, R4_4), (vector.cross(R4_32, R4_23))) == vector.dot(R4_20, R4_32) * vector.dot(R4_4, R4_23) - vector.dot(R4_20, R4_23) * vector.dot(R4_4, R4_32) then
                Ca = fns.fn306
                BL = fn1329
                Bn = fn1367
            else
                Bn = fns.fn306
                Ca = fn1329
                BL = fn1367
            end
            R4_29 = (R4_29 + 149) % 176
        end
    elseif R4_1 <= 17 then
        if R4_1 <= 14 then
            if R4_1 <= 13 then
                if R4_1 <= 12 then
                    if not R4_5 and B1 or not B1 and not B1 or not B1 and R4_5 and (not R4_5 and B1) or not (not R4_5 and B1 or not B1 and not B1 or not B1 and R4_5 and (not R4_5 and B1)) then
                        AV = fns.fn496
                        CM = fns.fn31
                        Ct = fns.fn360
                        B1 = fns.fn748
                    else
                        B1 = fns.fn496
                        Ct = fns.fn31
                        CM = fns.fn360
                        AV = fns.fn748
                    end
                    R4_29 = (R4_29 + 127) % 176
                else
                    R4_20 = (vector.create((R4_29 * 2 + 6) % 11 + 1, (R4_29 * 11 + 13) % 13 + 1, (R4_29 * 3 + 8) % 17 + 1))
                    R4_4 = (vector.create((R4_29 * 1 + 4) % 11 + 1, (R4_29 * 2 + 1) % 13 + 1, (R4_29 * 9 + 13) % 17 + 1))
                    local Tx = vector.dot(R4_20, R4_4)
                    if Tx * Tx >= vector.dot(R4_20, R4_20) * vector.dot(R4_4, R4_4) + 1 then
                        Cz = fns.fn617
                        R4_14.Support = fns.fn750
                        Bs = {}
                    else
                        R4_14 = fns.fn617
                        Bs.Support = fns.fn750
                        Cz = {}
                    end
                    R4_29 = (R4_29 + 61) % 176
                end
            else
                R4_20 = (vector.create((R4_29 * 6 + 9) % 11 + 1, (R4_29 * 8 + 12) % 13 + 1, (R4_29 * 9 + 8) % 17 + 1))
                R4_4 = (vector.create((R4_29 * 5 + 1) % 11 + 1, (R4_29 * 4 + 4) % 13 + 1, (R4_29 * 11 + 7) % 17 + 1))
                R4_32 = (vector.create((R4_29 * 5 + 5) % 11 + 1, (R4_29 * 10 + 9) % 13 + 1, (R4_29 * 2 + 15) % 17 + 1))
                R4_23 = (vector.create((R4_29 * 5 + 8) % 11 + 1, (R4_29 * 8 + 10) % 13 + 1, (R4_29 * 10 + 1) % 17 + 1))
                if vector.dot(vector.cross(R4_20, R4_4), (vector.cross(R4_32, R4_23))) == vector.dot(R4_20, R4_32) * vector.dot(R4_4, R4_23) - vector.dot(R4_20, R4_23) * vector.dot(R4_4, R4_32) then
                    Cu = {}
                    Co = fns.fn1171
                else
                    Co = {}
                    Cu = fns.fn1171
                end
                R4_29 = (R4_29 + 171) % 176
            end
        elseif R4_1 <= 16 then
            if R4_1 <= 15 then
                R4_20 = {
                    "snr",
                    "kdebvtljetiv",
                    "iuynkrucgj",
                    "iaoa",
                    "omwte",
                    "tgcjddgme",
                    "kusrav",
                    "ilty",
                    "gaf",
                    "ddqyvmeikvt",
                    "bpajmgjlx",
                    "snf",
                    "svawoepbrym",
                    "teaq"
                }
                if R4_20[(R4_29 * 42 + 45) % 14 + 1] <= R4_20[(R4_29 * 42 + 45) % 14 + 1] then
                    Bs.ChopZoneValues = fn1298
                    Bs.RefreshChopZones = fns.fn843
                    CH = {}
                    Bs.RarityValues = fns.fn257
                    B5 = {}
                    BY = {}
                else
                    BY.ChopZoneValues = fn1298
                    BY.RefreshChopZones = fns.fn843
                    Bs = {}
                    BY.RarityValues = fns.fn257
                    CH = {}
                    B5 = {}
                end
                R4_29 = (R4_29 + 149) % 176
            else
                if (R4_29 * 3 + 1) * 13 % 4 == ((R4_29 * 3 + 1) * 13 + 12) % 4 then
                    Bs.UpgradeValues = fn1429
                    A6 = {}
                else
                    A6.UpgradeValues = fn1429
                    Bs = {}
                end
                R4_29 = (R4_29 + 83) % 176
            end
        else
            if R4_29 * 74246017 + 1 + 7 >= R4_29 * 74246017 + 1 + 7 + 3 then
                Bs = {}
                A_.CraftValues = fns.fn533
                Ck = {}
                R4_3 = {}
            else
                A_ = {}
                Bs.CraftValues = fns.fn533
                R4_3 = {}
                Ck = {}
            end
            R4_29 = (R4_29 + 17) % 176
        end
    elseif R4_1 <= 20 then
        if R4_1 <= 19 then
            if R4_1 <= 18 then
                R4_20 = (vector.create((R4_29 * 5 + 9) % 11 + 1, (R4_29 * 4 + 9) % 13 + 1, (R4_29 * 12 + 17) % 17 + 1))
                R4_4 = (vector.create((R4_29 * 4 + 9) % 11 + 1, (R4_29 * 9 + 10) % 13 + 1, (R4_29 * 2 + 5) % 17 + 1))
                local Wo = vector.cross(R4_20, R4_4)
                local Wp = vector.dot(R4_20, R4_4)
                if vector.dot(Wo, Wo) + Wp * Wp == vector.dot(R4_20, R4_20) * vector.dot(R4_4, R4_4) + 4 then
                    Co = { Train6 = 13, Train1 = 0, Train3 = 5, Train5 = 11, Train2 = 2, Train7 = 15, Train4 = 8 }
                else
                    Ce = { Train1 = 0, Train2 = 2, Train3 = 5, Train4 = 8, Train5 = 11, Train6 = 13, Train7 = 15 }
                end
                R4_29 = (R4_29 + 105) % 176
            else
                R4_20 = (vector.create((R4_29 * 1 + 1) % 11 + 1, (R4_29 * 8 + 12) % 13 + 1, (R4_29 * 1 + 6) % 17 + 1))
                R4_4 = (vector.create((R4_29 * 3 + 6) % 11 + 1, (R4_29 * 4 + 2) % 13 + 1, (R4_29 * 13 + 15) % 17 + 1))
                R4_32 = (vector.create((R4_29 * 5 + 4) % 11 + 1, (R4_29 * 8 + 13) % 13 + 1, (R4_29 * 12 + 6) % 17 + 1))
                R4_23 = (vector.create((R4_29 * 3 + 4) % 5 + 1, (R4_29 * 2 + 4) % 7 + 1, (R4_29 * 2 + 3) % 9 + 1))
                if vector.dot(vector.cross(R4_20, (vector.cross(R4_4, R4_32))), R4_23) == vector.dot(R4_4 * vector.dot(R4_20, R4_32) - R4_32 * vector.dot(R4_20, R4_4), R4_23) then
                    B7 = fns.fn397
                    Bs.TrainAreaValues = fns.fn897
                    Bs.RefreshTrainAreas = fns.fn46
                    BU = {}
                else
                    BU = fns.fn397
                    B7.TrainAreaValues = fns.fn897
                    B7.RefreshTrainAreas = fns.fn46
                    Bs = {}
                end
                R4_29 = (R4_29 + 171) % 176
            end
        else
            if R4_29 * 48252585 + 8 + 5 >= R4_29 * 48252585 + 8 + 5 + 5 then
                R4_30 = R4_37
            else
                R4_37 = R4_30
            end
            R4_29 = (R4_29 + 149) % 176
        end
    elseif R4_1 <= 21 then
        if Bn or CH or (Bn or Bn) or (Bn or R4_5) and (CH or R4_5) or not (Bn or CH or (Bn or Bn) or (Bn or R4_5) and (CH or R4_5)) then
            CN = R4_31(R4_36)
        else
            R4_36 = R4_31(CN)
        end
        R4_29 = (R4_29 + 149) % 176
    else
        R4_1 = (vector.create((R4_29 * 4 + 7) % 11 + 1, (R4_29 * 10 + 6) % 13 + 1, (R4_29 * 5 + 8) % 17 + 1))
        R4_20 = (vector.create((R4_29 * 5 + 6) % 11 + 1, (R4_29 * 3 + 5) % 13 + 1, (R4_29 * 3 + 1) % 17 + 1))
        local UW = vector.dot(R4_1, R4_20)
        if UW * UW <= vector.dot(R4_1, R4_1) * vector.dot(R4_20, R4_20) then
            R4_15 = fns.fn1077
        else
            A4 = fns.fn1077
        end
        R4_29 = (R4_29 + 61) % 176
    end
until (R4_29 * 105 + 137) % 176 == 74
if R4_37 then
    R4_37 = BB
end
if R4_37 then
    R4_36 = 0
    repeat
        if R4_36 * 65253087 + 10 + 4 >= R4_36 * 65253087 + 10 + 4 + 1 then
            BB = type(R4_37.BY_ID) == "table"
        else
            R4_37 = type(BB.BY_ID) == "table"
        end
        R4_36 = (R4_36 + 1) % 4
    until (R4_36 * 3 + 3) % 4 == 2
end
if R4_37 then
    connection = nil
    R4_36 = 0
    repeat
        R4_29 = (R4_36 * 1 + 0) % 2 + 1
        if R4_29 <= 1 then
            if (R4_36 * 2 + 6) * 16 % 3 == ((R4_36 * 2 + 6) * 16 + 5) % 3 then
                R4_30 = connection.OnClientEvent:Connect(onOnClientEvent)
            else
                connection = R4_30.OnClientEvent:Connect(onOnClientEvent)
            end
            R4_36 = (R4_36 + 5) % 8
        else
            R4_29 = {
                "nsdexzi",
                "egmjkl",
                "xaah",
                "njvw",
                "hptxu",
                "ypimrfnc",
                "lnsykqik",
                "hwrci",
                "ujmiqg",
                "ogckoby",
                "uhavknngz",
                "gsunjoe",
                "ygf"
            }
            if R4_29[(R4_36 * 65 + 45) % 13 + 1] < R4_29[(R4_36 * 65 + 45) % 13 + 1] then
                Bs.Track(fns.fn645)
            else
                Bs.Track(fns.fn645)
            end
            R4_36 = (R4_36 + 5) % 8
        end
    until (R4_36 * 5 + 5) % 8 == 7
end
CW, Bw, R4_21, Bj, Bf, AS, Bz, CR, R4_12, R4_9, Cy, B2, Ba, BN, AZ, BS, R4_25, CU, Br, A2, CG, Ch, BI, AX, BX, Cl, B_, Bl, CF, BR, A3, Ci, CA, AR, Cn, Cs, BG, AW, Cb, BE, Cw, BT, Bt = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
R4_29 = 131
repeat
    R4_36 = (R4_29 * 5 + 13) % 17 + 1
    if R4_36 <= 9 then
        if R4_36 <= 5 then
            if R4_36 <= 3 then
                if R4_36 <= 2 then
                    if R4_36 <= 1 then
                        R4_15 = (vector.create((R4_29 * 3 + 5) % 11 + 1, (R4_29 * 7 + 13) % 13 + 1, (R4_29 * 7 + 10) % 17 + 1))
                        R4_37 = (vector.create((R4_29 * 5 + 7) % 11 + 1, (R4_29 * 6 + 4) % 13 + 1, (R4_29 * 3 + 6) % 17 + 1))
                        local TD = vector.cross(R4_15, R4_37)
                        local TE = vector.dot(R4_15, R4_37)
                        if vector.dot(TD, TD) + TE * TE == vector.dot(R4_15, R4_15) * vector.dot(R4_37, R4_37) then
                            AW = fns.fn504
                        else
                            AX = fns.fn504
                        end
                        R4_29 = (R4_29 + 126) % 136
                    else
                        R4_15 = (vector.create((R4_29 * 6 + 1) % 11 + 1, (R4_29 * 8 + 13) % 13 + 1, (R4_29 * 11 + 4) % 17 + 1))
                        R4_37 = (vector.create((R4_29 * 5 + 3) % 11 + 1, (R4_29 * 5 + 11) % 13 + 1, (R4_29 * 1 + 17) % 17 + 1))
                        R4_30 = (vector.create((R4_29 * 1 + 5) % 11 + 1, (R4_29 * 4 + 9) % 13 + 1, (R4_29 * 7 + 5) % 17 + 1))
                        R4_1 = (vector.create((R4_29 * 5 + 7) % 5 + 1, (R4_29 * 4 + 1) % 7 + 1, (R4_29 * 1 + 6) % 9 + 1))
                        if vector.dot(vector.cross(R4_15, (vector.cross(R4_37, R4_30))), R4_1) == vector.dot(R4_37 * vector.dot(R4_15, R4_30) - R4_30 * vector.dot(R4_15, R4_37), R4_1) + 4 then
                            Cb.SetAutoRollAura = fns.fn440
                            Cb.SetAuraMode = fn1453
                            Cb.SetAuraKeepBest = fns.fn1065
                            Bs = fns.fn86
                        else
                            Bs.SetAutoRollAura = fns.fn440
                            Bs.SetAuraMode = fn1453
                            Bs.SetAuraKeepBest = fns.fn1065
                            Cb = fns.fn86
                        end
                        R4_29 = (R4_29 + 58) % 136
                    end
                else
                    R4_15 = (vector.create((R4_29 * 4 + 5) % 11 + 1, (R4_29 * 1 + 12) % 13 + 1, (R4_29 * 6 + 9) % 17 + 1))
                    local Ts = vector.floor(R4_15) + vector.ceil(R4_15 * -1)
                    if vector.dot(Ts, Ts) == 1 then
                        Cw = fns.fn74
                        BT.SetAutoCraft = fns.fn239
                        BT.SetCraftIds = fns.fn579
                        BE = fns.fn903
                        Bs = fns.fn1092
                    else
                        BE = fns.fn74
                        Bs.SetAutoCraft = fns.fn239
                        Bs.SetCraftIds = fns.fn579
                        Cw = fns.fn903
                        BT = fns.fn1092
                    end
                    R4_29 = (R4_29 + 7) % 136
                end
            elseif R4_36 <= 4 then
                if ((not AS or not AS) and (not BR or AZ) or (Cb or AS) and (not Ba and Cb)) and (AZ and AZ and (BR or Cb) or not Ba and BR and (Ba or AS)) or ((Cy or not AS or Cy and not AS) and (Cb and not Ba and (BR and not AS)) or (Cb and BR or (not BR or AZ)) and (not Cy or Cy or not AS and not BR)) or not (((not AS or not AS) and (not BR or AZ) or (Cb or AS) and (not Ba and Cb)) and (AZ and AZ and (BR or Cb) or not Ba and BR and (Ba or AS)) or ((Cy or not AS or Cy and not AS) and (Cb and not Ba and (BR and not AS)) or (Cb and BR or (not BR or AZ)) and (not Cy or Cy or not AS and not BR))) then
                    Bs.SetAutoEquipArtifact = fns.fn796
                    Bt = fns.fn893
                else
                    Bt.SetAutoEquipArtifact = fns.fn796
                    Bs = fns.fn893
                end
                R4_29 = (R4_29 + 109) % 136
            else
                R4_15 = (vector.create((R4_29 * 5 + 2) % 11 + 1, (R4_29 * 10 + 4) % 13 + 1, (R4_29 * 11 + 9) % 17 + 1))
                R4_37 = (vector.create((R4_29 * 4 + 2) % 11 + 1, (R4_29 * 6 + 8) % 13 + 1, (R4_29 * 6 + 9) % 17 + 1))
                R4_30 = (vector.create((R4_29 * 1 + 9) % 11 + 1, (R4_29 * 2 + 4) % 13 + 1, (R4_29 * 14 + 2) % 17 + 1))
                R4_1 = (vector.create((R4_29 * 3 + 3) % 5 + 1, (R4_29 * 4 + 1) % 7 + 1, (R4_29 * 3 + 4) % 9 + 1))
                if vector.dot(vector.cross(R4_15, (vector.cross(R4_37, R4_30))), R4_1) == vector.dot(R4_37 * vector.dot(R4_15, R4_30) - R4_30 * vector.dot(R4_15, R4_37), R4_1) then
                    Bs.SetAutoTrain = fns.fn123
                    Bs.SetTrainArea = fn1340
                else
                    Bs.SetAutoTrain = fns.fn123
                    Bs.SetTrainArea = fn1340
                end
                R4_29 = (R4_29 + 41) % 136
            end
        elseif R4_36 <= 7 then
            if R4_36 <= 6 then
                R4_15 = (vector.create((R4_29 * 6 + 6) % 11 + 1, (R4_29 * 1 + 13) % 13 + 1, (R4_29 * 9 + 17) % 17 + 1))
                R4_37 = (vector.create((R4_29 * 6 + 3) % 11 + 1, (R4_29 * 9 + 10) % 13 + 1, (R4_29 * 11 + 13) % 17 + 1))
                local TF = vector.dot(R4_15, R4_37)
                if TF * TF >= vector.dot(R4_15, R4_15) * vector.dot(R4_37, R4_37) + 1 then
                    R4_12 = {}
                    CW = function(e1, e2, e3)
                        local G9
                        if CW[e1] then
                            return
                        end
                        G9 = {}
                        CW[e1] = G9
                        task.spawn(function()
                            local G7_2
                            while true do
                                local G6 = AT() and CW[e1] == G9
                                local G6_2
                                if G6 then
                                    G6_2, G7_2 = pcall(e3)
                                    if not G6_2 then
                                        A8("Error: " .. tostring(G7_2):sub(1, 60))
                                    end
                                    if CW[e1] ~= G9 then
                                        break
                                    end
                                    task.wait(e2)
                                    continue
                                end
                                break
                            end
                            if CW[e1] == G9 then
                                CW[e1] = nil
                            end
                        end)
                    end
                    CR = fn1482
                else
                    CW = {}
                    CR = function(e1, e2, e3)
                        local G9
                        if CW[e1] then
                            return
                        end
                        G9 = {}
                        CW[e1] = G9
                        task.spawn(function()
                            local G7_1
                            while true do
                                local G6 = AT() and CW[e1] == G9
                                local G6_1
                                if G6 then
                                    G6_1, G7_1 = pcall(e3)
                                    if not G6_1 then
                                        A8("Error: " .. tostring(G7_1):sub(1, 60))
                                    end
                                    if CW[e1] ~= G9 then
                                        break
                                    end
                                    task.wait(e2)
                                    continue
                                end
                                break
                            end
                            if CW[e1] == G9 then
                                CW[e1] = nil
                            end
                        end)
                    end
                    R4_12 = fn1482
                end
                R4_29 = (R4_29 + 24) % 136
            else
                R4_15 = { "vmz", "jsfqw", "ktbjmfrs", "xbnw", "kcupzfj", "udpypcozup", "bwmjlobywpw", "joubxpnwl" }
                local TJ = R4_29
                R4_37 = R4_15[TJ % 8 + 1]
                if R4_37:len() >= R4_37:gsub("(.)", "%1%1", TJ % 3 % 2 + 1):len() then
                    B2.Track(fns.fn1244)
                    Bs = fns.fn340
                    R4_9 = fns.fn1204
                    Cy = fns.fn707
                else
                    Bs.Track(fns.fn1244)
                    R4_9 = fns.fn340
                    Cy = fns.fn1204
                    B2 = fns.fn707
                end
                R4_29 = (R4_29 + 58) % 136
            end
        elseif R4_36 <= 8 then
            if R4_29 * 22361369 + 8 + 4 >= R4_29 * 22361369 + 8 + 4 + 2 then
                R4_21 = {}
                Bw = nil
            else
                Bw = {}
                R4_21 = nil
            end
            R4_29 = (R4_29 + 75) % 136
        else
            R4_15 = (vector.create((R4_29 * 3 + 8) % 11 + 1, (R4_29 * 2 + 5) % 13 + 1, (R4_29 * 13 + 9) % 17 + 1))
            R4_37 = (vector.create((R4_29 * 1 + 1) % 11 + 1, (R4_29 * 9 + 8) % 13 + 1, (R4_29 * 11 + 3) % 17 + 1))
            R4_30 = (vector.create((R4_29 * 4 + 7) % 5 + 1, (R4_29 * 3 + 5) % 7 + 1, (R4_29 * 4 + 1) % 9 + 1))
            if math.abs((vector.angle(R4_15, R4_37, R4_30))) - math.abs((vector.angle(R4_37, R4_15, R4_30))) == 2 then
                Bf = 0
            else
                Bj = 0
            end
            R4_29 = (R4_29 + 7) % 136
        end
    elseif R4_36 <= 13 then
        if R4_36 <= 11 then
            if R4_36 <= 10 then
                if R4_29 * 10990895 + 11 + 3 >= R4_29 * 10990895 + 11 + 3 + 2 then
                    CF = 0
                else
                    Bf = 0
                end
                R4_29 = (R4_29 + 126) % 136
            else
                R4_15 = {
                    "sepwbngehdc",
                    "tnngcdfd",
                    "yygu",
                    "qdsldfi",
                    "rtcgghpnnnj",
                    "jofcfjlyqvy",
                    "xozhcqlp",
                    "trcgnyus",
                    "sbcnx",
                    "zuczibjyr",
                    "wveybic",
                    "nnjrgmy",
                    "wynlkehzledl",
                    "crjxx",
                    "ikcvguuip"
                }
                if R4_15[(R4_29 * 69 + 17) % 15 + 1] < R4_15[(R4_29 * 69 + 17) % 15 + 1] then
                    AS = fns.fn47
                    Ba = fns.fn900
                    BS = fns.fn1020
                    AZ = fns.fn151
                    BN = nil
                else
                    Ba = fns.fn47
                    BN = fns.fn900
                    AZ = fns.fn1020
                    BS = fns.fn151
                    AS = nil
                end
                R4_29 = (R4_29 + 126) % 136
            end
        elseif R4_36 <= 12 then
            if (R4_29 * 1 + 8) * 17 % 4 == ((R4_29 * 1 + 8) * 17 + 15) % 4 then
                CU = fns.fn117
                R4_25.Track(CU)
                Bs = fns.fn622
            else
                R4_25 = fns.fn117
                Bs.Track(R4_25)
                CU = fns.fn622
            end
            R4_29 = (R4_29 + 41) % 136
        else
            local Tl = bit32.rrotate(bit32.bxor(bit32.lrotate(R4_29, 13), string.byte(tostring(CR))), 17)
            if bit32.bxor(bit32.lrotate(bit32.bxor(Tl, 1995097301), 22), 895335089) == bit32.lrotate(Tl, 22) then
                Bz = false
                Br = function()
                    if Bz then
                        return
                    end
                    Bz = true
                    local Io = R4_21
                    local Ip = not Io or B2(Io)
                    if Ip then
                        Io = nil
                        for i, v in ipairs(Bw) do
                            local Ip_5 = v.Parent and not B2(v)
                            if Ip_5 then
                                Io = v
                                break
                            end
                        end
                    end
                    A8("Banking run")
                    local Ip_6 = CN and A7(CN.endRun)
                    if Ip_6 then
                        pcall(CN.endRun)
                    else
                        A5(BM)
                    end
                    if Bc.AutoChop then
                        local Ip_7 = CV:FindFirstChild(R4_7())
                        local Iq = Ip_7 and Ip_7:FindFirstChild("StartLine")
                        local Ip_8 = Iq
                        if Iq then
                            Iq = Ip_8:IsA("BasePart")
                        end
                        if Iq then
                            CU(Ip_8.CFrame * CFrame.new(0, 3, -12), Cm, function()
                                local Im = Io ~= nil and B2(Io)
                                return Im
                            end)
                        end
                    end
                    R4_21 = nil
                    BN()
                    CT(true)
                    Bz = false
                end
                A2 = fns.fn1125
                Bs.SetAutoChop = fns.fn1138
                Bs.SetChopZones = fns.fn958
                CG = fns.fn1194
                Ch = fns.fn198
            else
                Ch = false
                A2 = function()
                    if Bz then
                        return
                    end
                    Bz = true
                    local Io = R4_21
                    local Ip = not Io or B2(Io)
                    if Ip then
                        Io = nil
                        for i, v in ipairs(Bw) do
                            local Ip_1 = v.Parent and not B2(v)
                            if Ip_1 then
                                Io = v
                                break
                            end
                        end
                    end
                    A8("Banking run")
                    local Ip_2 = CN and A7(CN.endRun)
                    if Ip_2 then
                        pcall(CN.endRun)
                    else
                        A5(BM)
                    end
                    if Bc.AutoChop then
                        local Ip_3 = CV:FindFirstChild(R4_7())
                        local Iq = Ip_3 and Ip_3:FindFirstChild("StartLine")
                        local Ip_4 = Iq
                        if Iq then
                            Iq = Ip_4:IsA("BasePart")
                        end
                        if Iq then
                            CU(Ip_4.CFrame * CFrame.new(0, 3, -12), Cm, function()
                                local Im = Io ~= nil and B2(Io)
                                return Im
                            end)
                        end
                    end
                    R4_21 = nil
                    BN()
                    CT(true)
                    Bz = false
                end
                CG = fns.fn1125
                Br.SetAutoChop = fns.fn1138
                Br.SetChopZones = fns.fn958
                Bs = fns.fn1194
                Bz = fns.fn198
            end
            R4_29 = (R4_29 + 58) % 136
        end
    elseif R4_36 <= 15 then
        if R4_36 <= 14 then
            local Wn = bit32.rrotate(bit32.bxor(bit32.lrotate(R4_29, 1), string.byte(tostring(BX))), 19)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Wn, 1525526993), 2580581276), (bit32.bxor(bit32.band(Wn, 2769440302), 3183085860))), 2580581276), 3183085860) ~= Wn then
                BX = fn1282
                BI = fns.fn417
                AX = function()
                    local I8_4, I8_6
                    if not Bc.AutoLoot then
                        return
                    end
                    local I5 = CG()
                    if not I5 then
                        return
                    end
                    local I6 = tonumber(Bc.LootRadius) or 120
                    local I6_7, I6_10
                    for i, child in ipairs(I5:GetChildren()) do
                        local Jk = child
                        local I5_5 = not Bc.AutoLoot or not AT()
                        if I5_5 then
                            return
                        end
                        local I5_6 = Jk:IsA("BasePart") and Jk.Parent
                        if I5_6 then
                            local I5_7 = Ch(Jk)
                            local I6_6 = I5_7 ~= nil and BI(I5_7)
                            if I6_6 then
                                I6_7, I8_4 = R4_10()
                                if not I8_4 then
                                    return
                                end
                                local Magnitude = (Jk.Position - I8_4.Position).Magnitude
                                local I8_5 = Magnitude <= R4_16
                                local I9 = not I8_5
                                if I9 ~= false then
                                    I9 = Magnitude <= I6
                                end
                                if I9 then
                                    if Bc.LootTeleport then
                                        I8_5 = AX(Jk.Position, 10, BV)
                                    else
                                        I8_5 = true
                                    end
                                end
                                if I8_5 and Jk.Parent then
                                    I6_10, I8_6 = R4_22(BW, I5_7)
                                    if I6_10 and I8_6 == "ok" then
                                        Bc.Looted = Bc.Looted + 1
                                        BU[I5_7] = nil
                                        if Jk.Parent then
                                            pcall(function()
                                                Jk:Destroy()
                                            end)
                                        end
                                    else
                                        if I6_10 and I8_6 == "full" then
                                            Br()
                                            return
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            else
                BI = fn1282
                AX = fns.fn417
                BX = function()
                    local I8_1, I8_3
                    if not Bc.AutoLoot then
                        return
                    end
                    local I5 = CG()
                    if not I5 then
                        return
                    end
                    local I6 = tonumber(Bc.LootRadius) or 120
                    local I6_2, I6_5
                    for i, child in ipairs(I5:GetChildren()) do
                        local Jk = child
                        local I5_1 = not Bc.AutoLoot or not AT()
                        if I5_1 then
                            return
                        end
                        local I5_2 = Jk:IsA("BasePart") and Jk.Parent
                        if I5_2 then
                            local I5_3 = Ch(Jk)
                            local I6_1 = I5_3 ~= nil and BI(I5_3)
                            if I6_1 then
                                I6_2, I8_1 = R4_10()
                                if not I8_1 then
                                    return
                                end
                                local Magnitude = (Jk.Position - I8_1.Position).Magnitude
                                local I8_2 = Magnitude <= R4_16
                                local I9 = not I8_2
                                if I9 ~= false then
                                    I9 = Magnitude <= I6
                                end
                                if I9 then
                                    if Bc.LootTeleport then
                                        I8_2 = AX(Jk.Position, 10, BV)
                                    else
                                        I8_2 = true
                                    end
                                end
                                if I8_2 and Jk.Parent then
                                    I6_5, I8_3 = R4_22(BW, I5_3)
                                    if I6_5 and I8_3 == "ok" then
                                        Bc.Looted = Bc.Looted + 1
                                        BU[I5_3] = nil
                                        if Jk.Parent then
                                            pcall(function()
                                                Jk:Destroy()
                                            end)
                                        end
                                    else
                                        if I6_5 and I8_3 == "full" then
                                            Br()
                                            return
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
            R4_29 = (R4_29 + 7) % 136
        else
            if (R4_29 * 1 + 7) * 17 % 4 == ((R4_29 * 1 + 7) * 17 + 8) % 4 then
                Bs.SetAutoLoot = fn1446
                Bs.SetLootRarities = fns.fn1270
                Bs.SetLootRadius = fns.fn55
                Bs.SetLootTeleport = fns.fn107
                Cl = fns.fn536
                B_ = fns.fn452
                Bl = fns.fn410
                Bs.SetAutoSell = fns.fn777
                Bs.SetSellRarities = fns.fn1069
                Bs.SetSellAtCount = fns.fn935
                CF = fn1533
                BR = fns.fn1080
            else
                CF.SetAutoLoot = fn1446
                CF.SetLootRarities = fns.fn1270
                CF.SetLootRadius = fns.fn55
                CF.SetLootTeleport = fns.fn107
                B_ = fns.fn536
                BR = fns.fn452
                Bs = fns.fn410
                CF.SetAutoSell = fns.fn777
                CF.SetSellRarities = fns.fn1069
                CF.SetSellAtCount = fns.fn935
                Bl = fn1533
                Cl = fns.fn1080
            end
            R4_29 = (R4_29 + 7) % 136
        end
    elseif R4_36 <= 16 then
        if (R4_29 * 1 + 1) * 13 % 4 == ((R4_29 * 1 + 1) * 13 + 11) % 4 then
            AR = fns.fn1189
            A3 = fns.fn387
            Ci = fns.fn1017
            CA = fn1412
        else
            A3 = fns.fn1189
            Ci = fns.fn387
            CA = fns.fn1017
            AR = fn1412
        end
        R4_29 = (R4_29 + 7) % 136
    else
        R4_36 = (vector.create((R4_29 * 7 + 8) % 11 + 1, (R4_29 * 6 + 5) % 13 + 1, (R4_29 * 2 + 7) % 17 + 1))
        R4_15 = (vector.create((R4_29 * 1 + 3) % 11 + 1, (R4_29 * 7 + 4) % 13 + 1, (R4_29 * 5 + 16) % 17 + 1))
        local Wt = vector.dot(R4_36, R4_15)
        if Wt * Wt <= vector.dot(R4_36, R4_36) * vector.dot(R4_15, R4_15) then
            Bs.SetAutoBuyChoppers = fns.fn600
            Bs.SetAutoEquipChopper = fns.fn787
            Bs.SetAutoBuyUpgrades = fns.fn655
            Bs.SetUpgradeIds = fns.fn389
            Cn = fns.fn172
            Bs.SetAutoRebirth = fn1339
            Cs = fns.fn1061
            BG = fns.fn407
        else
            Cn.SetAutoBuyChoppers = fns.fn600
            Cn.SetAutoEquipChopper = fns.fn787
            Cn.SetAutoBuyUpgrades = fns.fn655
            Cn.SetUpgradeIds = fns.fn389
            Cs = fns.fn172
            Cn.SetAutoRebirth = fn1339
            BG = fns.fn1061
            Bs = fns.fn407
        end
        R4_29 = (R4_29 + 41) % 136
    end
until (R4_29 * 107 + 79) % 136 == 122
if R4_17 then
    connection2 = nil
    R4_36 = 7
    repeat
        R4_29 = (R4_36 * 1 + 0) % 2 + 1
        if R4_29 <= 1 then
            if R4_36 * 58420365 + 2 + 5 >= R4_36 * 58420365 + 2 + 5 + 3 then
                Bs.Track(fns.fn597)
            else
                Bs.Track(fns.fn597)
            end
            R4_36 = (R4_36 + 7) % 8
        else
            R4_29 = (vector.create((R4_36 * 6 + 3) % 11 + 1, (R4_36 * 10 + 3) % 13 + 1, (R4_36 * 9 + 10) % 17 + 1))
            R4_15 = (vector.create((R4_36 * 7 + 5) % 11 + 1, (R4_36 * 8 + 9) % 13 + 1, (R4_36 * 13 + 14) % 17 + 1))
            local U3 = vector.dot(R4_29, R4_15)
            if U3 * U3 >= vector.dot(R4_29, R4_29) * vector.dot(R4_15, R4_15) + 1 then
                R4_17 = connection2.OnClientEvent:Connect(fns.onOnClientEvent2)
            else
                connection2 = R4_17.OnClientEvent:Connect(fns.onOnClientEvent2)
            end
            R4_36 = (R4_36 + 5) % 8
        end
    until (R4_36 * 1 + 7) % 8 == 2
end
CT(true)
R4_29 = function()
    local oE = "v0.2"
    local oF = "https://discord.gg/synapsex"
    local oD = "+1 Chop Trees for Treasure"
    local oG = "https://rscripts.net/@Ouroboros"
    local oH = "https://ouroboros-hub-rbx.web.app/"
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    local Toggles = Library.Toggles
    local Options = Library.Options
    B8(Bs, Library)
    local function oQ(oR, oS)
        local Nk = A7(setclipboard) and setclipboard
        local Nl = Nk
        if not Nl then
            local Nk_1 = A7(toclipboard) and toclipboard
            Nl = Nk_1 or nil
        end
        local Nk_2 = Nl
        if not Nk_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local Nl_1 = pcall(Nk_2, oR)
        if Nl_1 then
            Library:Notify(oS)
        else
            Library:Notify("Failed to copy")
        end
    end
    local function onDiscord()
        oQ(oF, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = oF, Copyable = true }, "|", oD, "|", oE },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    local o4 = {
        [1] = Window:AddTab("Info", "info"),
        [2] = Window:AddTab("Main", "gamepad-2"),
        [3] = Window:AddTab("Player", "person-standing"),
        [4] = Window:AddTab("Settings", "settings")
    }
    local o5 = o4[2]:AddSubTab("Chop", "axe")
    local o6 = o4[2]:AddSubTab("Treasure", "gem")
    local o7 = o4[2]:AddSubTab("Shop", "shopping-cart")
    local o8 = o4[2]:AddSubTab("Artifacts", "shield")
    local o9 = o4[2]:AddSubTab("Progress", "trending-up")
    local function pa(pb)
        local DiscordGroup = pb:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    pa(o5)
    pa(o6)
    pa(o7)
    pa(o8)
    pa(o9)
    pa(o4[3])
    pa(o4[4])
    local function pe(pf, pg)
        pcall(function()
            local Nr = pf and A7(pf.SetValues)
            if Nr then
                pf:SetValues(pg)
            end
        end)
    end
    local function pm()
        local pT
        local ChoppingGroup = o5:AddRightGroupbox("Chopping", "axe")
        local Label = ChoppingGroup:AddLabel(Bs.GetStatus(), true)
        ChoppingGroup:AddDivider()
        ChoppingGroup:AddToggle("AutoChop", {
            Text = "Auto Chop Trees",
            Default = false,
            Tooltip = "Moves you onto the nearest standing tree so the game keeps swinging at it, then resets the run when the zone is cleared.",
            Callback = function(pr)
                Bs.SetAutoChop(pr)
            end
        })
        ChoppingGroup:AddDropdown("ChopZones", {
            Text = "Zone Filter",
            Values = Bs.ChopZoneValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Expandable = true,
            Tooltip = "Only chop trees in these tree zones. Leave empty to use every loaded zone.",
            Callback = function(pt)
                Bs.SetChopZones(pt)
            end
        })
        ChoppingGroup:AddButton({
            Text = "Refresh Zone List",
            Func = function()
                local Nt = Bs.RefreshChopZones()
                pe(Options.ChopZones, Nt)
                local Nu = #Nt
                local Nw = #Nt == 1 and "" or "s"
                Library:Notify(("Found %d tree zone%s"):format(Nu, Nw))
            end
        })
        local TrainingGroup = o5:AddLeftGroupbox("Training", "dumbbell")
        TrainingGroup:AddToggle("AutoTrain", {
            Text = "Auto Train",
            Default = false,
            Tooltip = "Stands on the selected training pad and starts the game's training swing loop.",
            Callback = function(pE)
                Bs.SetAutoTrain(pE)
            end
        })
        TrainingGroup:AddDropdown("TrainArea", {
            Text = "Training Area",
            Values = Bs.TrainAreaValues(),
            Default = 1,
            Multi = false,
            AllowNull = true,
            Tooltip = "Pad to train on. The game refuses rebirth locked pads until you meet the requirement.",
            Callback = function(pG)
                Bs.SetTrainArea(pG)
            end
        })
        TrainingGroup:AddButton({
            Text = "Refresh Training Areas",
            Func = function()
                local Ny = Bs.RefreshTrainAreas()
                pe(Options.TrainArea, Ny)
                local Nz = #Ny
                local NB = #Ny == 1 and "" or "s"
                Library:Notify(("Found %d training area%s"):format(Nz, NB))
            end
        })
        pT = task.spawn(function()
            local ND = 0
            while true do
                task.wait(0.5)
                if Library.Unloaded then
                    break
                end
                Label:SetText(Bs.GetStatus())
                ND += 1
                if ND % 20 == 0 then
                    pe(Options.ChopZones, Bs.RefreshChopZones())
                    pe(Options.TrainArea, Bs.RefreshTrainAreas())
                end
            end
        end)
        Bs.Track(function()
            local NI = if coroutine.status(pT) ~= "dead" then 1 else 0
            if NI == 1 then
                pcall(task.cancel, pT)
            end
        end)
    end
    local function pV()
        local LootGroup = o6:AddRightGroupbox("Loot", "sparkles")
        LootGroup:AddToggle("AutoLoot", {
            Text = "Auto Loot Treasure",
            Default = false,
            Tooltip = "Claims the treasure dropped by the trees you chop, then ends the run to bank it once your backpack fills.",
            Callback = function(pY)
                Bs.SetAutoLoot(pY)
            end
        })
        LootGroup:AddDropdown("LootRarities", {
            Text = "Rarity Filter",
            Values = Bs.RarityValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Expandable = true,
            Tooltip = "Only loot these rarities. Leave empty to loot everything.",
            Callback = function(p0)
                Bs.SetLootRarities(p0)
            end
        })
        LootGroup:AddSlider("LootRadius", {
            Text = "Loot Radius",
            Default = 120,
            Min = 12,
            Max = 500,
            Rounding = 0,
            Tooltip = "Ignore drops further away than this many studs.",
            Callback = function(p2)
                Bs.SetLootRadius(p2)
            end
        })
        LootGroup:AddToggle("LootTeleport", {
            Text = "Teleport To Distant Drops",
            Default = false,
            Tooltip = "Move to drops outside the game's own 12 stud loot range before claiming them.",
            Callback = function(p4)
                Bs.SetLootTeleport(p4)
            end
        })
        local SellGroup = o6:AddLeftGroupbox("Sell", "banknote")
        SellGroup:AddToggle("AutoSell", {
            Text = "Auto Sell Treasure",
            Default = false,
            Tooltip = "Sells stored treasure once storage passes the threshold below.",
            Callback = function(p7)
                Bs.SetAutoSell(p7)
            end
        })
        SellGroup:AddDropdown("SellRarities", {
            Text = "Rarity Filter",
            Values = Bs.RarityValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Expandable = true,
            Tooltip = "Only sell these rarities. Leave empty to sell your whole storage at once.",
            Callback = function(p9)
                Bs.SetSellRarities(p9)
            end
        })
        SellGroup:AddSlider("SellAtCount", {
            Text = "Sell At Stock Count",
            Default = 1,
            Min = 1,
            Max = 200,
            Rounding = 0,
            Tooltip = "Sell once your banked treasure stock holds at least this many items. Treasure only reaches the stock when a chop run ends.",
            Callback = function(qb)
                Bs.SetSellAtCount(qb)
            end
        })
    end
    local function qd()
        local ChoppersGroup = o7:AddRightGroupbox("Choppers", "axe")
        ChoppersGroup:AddToggle("AutoBuyChoppers", {
            Text = "Auto Buy Choppers",
            Default = false,
            Tooltip = "Buys the most expensive chopper you can currently afford from this zone's ladder.",
            Callback = function(qg)
                Bs.SetAutoBuyChoppers(qg)
            end
        })
        ChoppersGroup:AddToggle("AutoEquipChopper", {
            Text = "Auto Equip Best Chopper",
            Default = false,
            Tooltip = "Keeps your strongest owned chopper equipped.",
            Callback = function(qj)
                Bs.SetAutoEquipChopper(qj)
            end
        })
        local UpgradesGroup = o7:AddLeftGroupbox("Upgrades", "circle-arrow-up")
        UpgradesGroup:AddToggle("AutoBuyUpgrades", {
            Text = "Auto Buy Upgrades",
            Default = false,
            Tooltip = "Buys one affordable level at a time for the selected upgrades.",
            Callback = function(qm)
                Bs.SetAutoBuyUpgrades(qm)
            end
        })
        UpgradesGroup:AddDropdown("UpgradeIds", {
            Text = "Upgrade Filter",
            Values = Bs.UpgradeValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Expandable = true,
            Tooltip = "Only buy these upgrades. Leave empty to buy every upgrade.",
            Callback = function(qo)
                Bs.SetUpgradeIds(qo)
            end
        })
    end
    local function qq()
        local CraftingGroup = o8:AddRightGroupbox("Crafting", "hammer")
        CraftingGroup:AddToggle("AutoCraft", {
            Text = "Auto Craft Artifacts",
            Default = false,
            Tooltip = "Crafts an artifact as soon as its treasure discoveries and wood cost are met.",
            Callback = function(qt)
                Bs.SetAutoCraft(qt)
            end
        })
        CraftingGroup:AddDropdown("CraftIds", {
            Text = "Artifact Filter",
            Values = Bs.CraftValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Expandable = true,
            Tooltip = "Only craft these artifacts. Leave empty to craft every recipe you can afford.",
            Callback = function(qw)
                Bs.SetCraftIds(qw)
            end
        })
        local EquipGroup = o8:AddLeftGroupbox("Equip", "shield")
        EquipGroup:AddToggle("AutoEquipArtifact", {
            Text = "Auto Equip Best Artifact",
            Default = false,
            Tooltip = "Keeps the owned artifact with the highest strength multiplier equipped, breaking ties on cash then speed.",
            Callback = function(qz)
                Bs.SetAutoEquipArtifact(qz)
            end
        })
    end
    local function qB()
        local RebirthGroup = o9:AddRightGroupbox("Rebirth", "rotate-ccw")
        RebirthGroup:AddToggle("AutoRebirth", {
            Text = "Auto Rebirth",
            Default = false,
            Tooltip = "Rebirths as soon as you reach the required level.",
            Callback = function(qE)
                Bs.SetAutoRebirth(qE)
            end
        })
        local AurasGroup = o9:AddLeftGroupbox("Auras", "wand-sparkles")
        AurasGroup:AddToggle("AutoRollAura", {
            Text = "Auto Roll Aura",
            Default = false,
            Tooltip = "Spins the aura wheel while you can pay for it.",
            Callback = function(qI)
                Bs.SetAutoRollAura(qI)
            end
        })
        AurasGroup:AddDropdown("AuraMode", {
            Text = "Spin Currency",
            Values = { "Cash", "Lucky Reroll" },
            Default = "Cash",
            Multi = false,
            AllowNull = false,
            Tooltip = "Spend cash or your lucky rerolls.",
            Callback = function(qK)
                Bs.SetAuraMode(qK)
            end
        })
        AurasGroup:AddToggle("AuraKeepBest", {
            Text = "Keep Best Aura",
            Default = true,
            Tooltip = "Only equip a rolled aura when it beats the one you already wear.",
            Callback = function(qM)
                Bs.SetAuraKeepBest(qM)
            end
        })
    end
    pm()
    pV()
    qd()
    qq()
    qB()
    local function qO()
        local N1
        local NY
        local N6
        local N2
        NY = nil
        N1 = nil
        N2 = nil
        N6 = nil
        local NZ, N_, Label, N3, N4, N5, N7, Label2, Label3
        N6 = function(qQ)
            return (tostring(qQ):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        N2 = function(qS, qT)
            return string.format('<font color="%s">%s</font>', qT, N6(qS))
        end
        N7 = function(qW, qX, qY)
            return string.format("<b>%s</b> %s %s", qW, N2("-", "#5a6070"), N2(qX, qY))
        end
        local Oa = "#6ec1ff"
        N5 = "#7fd47f"
        local Ob = "#8b93a3"
        N_ = "#e8a34d"
        local Oc = Bs.Support()
        local Od = #Oc == 0 and "ready"
        local Oe = Od or "limited: " .. table.concat(Oc, ", ")
        N3 = "Unknown"
        pcall(function()
            local NK_1
            local NJ_1
            if A7(identifyexecutor) then
                NK_1, NJ_1 = identifyexecutor()
                local NL = NK_1 ~= ""
                local NM = type(NK_1) == "string" and NL
                if NM then
                    local NL_1 = type(NJ_1) == "string" and NJ_1 ~= "" and NK_1 .. " " .. NJ_1
                    N3 = NL_1 or NK_1
                end
            end
        end)
        NY = os.clock()
        N4 = function()
            local NO = math.floor(os.clock() - NY)
            if NO < 60 then
                return NO .. "s"
            elseif NO < 3600 then
                return string.format("%dm %ds", NO // 60, NO % 60)
            else
                return string.format("%dh %dm", NO // 3600, NO % 3600 // 60)
            end
        end
        local UserGroup = o4[1]:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(N7("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, N5), true)
        UserGroup:AddLabel(N7("UserId", tostring(LocalPlayer.UserId), Oa), true)
        UserGroup:AddLabel(N7("Executor", N3 .. "  " .. Oe, N5), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(N7("Session", N4(), N_), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                oQ(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                oQ("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = o4[1]:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(N7("Game", oD, Oa), true)
        Label2 = SessionGroup:AddLabel(N7("Players", "0/0", N5), true)
        NZ = tostring(game.JobId)
        local Oa_1 = #NZ > 18 and string.sub(NZ, 1, 18) .. "..."
        local Od_2 = Oa_1 or NZ
        SessionGroup:AddLabel(N7("Job", Od_2, Ob), true)
        Label = SessionGroup:AddLabel(N7("Ping", "0 ms", N_), true)
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
                oQ(NZ, "Copied Job ID")
            end
        })
        N1 = task.spawn(function()
            local NR_1
            local NQ_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(N7("Session", N4(), N_))
                Label2:SetText(N7("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), N5))
                NQ_1, NR_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local NQ_2 = NQ_1 and NR_1 .. " ms" or "n/a"
                Label:SetText(N7("Ping", NQ_2, N_))
            end
        end)
        Bs.Track(function()
            if coroutine.status(N1) ~= "dead" then
                pcall(task.cancel, N1)
            end
        end)
        local SocialsGroup = o4[1]:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                oQ(oG, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                oQ(oH, "Copied website link")
            end
        })
    end
    qO()
    local function r3()
        local r8
        local sa
        local sb
        local r9
        local MovementGroup = o4[3]:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = o4[3]:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        r9 = {}
        r8 = {}
        local r7 = {}
        sb = {}
        sa = {}
        local function sc()
            for k, v in r8 do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(r8)
        end
        local function sg()
            for k, v in r9 do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(r9)
        end
        local function sk()
            for k, v in sa do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(sa)
        end
        local function so(sp)
            if not sp:IsA("ProximityPrompt") then
                return
            end
            if sb[sp] == nil then
                sb[sp] = {
                    HoldDuration = sp.HoldDuration,
                    MaxActivationDistance = sp.MaxActivationDistance,
                    RequiresLineOfSight = sp.RequiresLineOfSight
                }
            end
            sp.HoldDuration = 0
            sp.MaxActivationDistance = 50
            sp.RequiresLineOfSight = false
        end
        local function sr()
            for k, v in sb do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(sb)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                sk()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                sg()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                sc()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for i, descendant in Workspace:GetDescendants() do
                    if descendant:IsA("ProximityPrompt") then
                        pcall(so, descendant)
                    end
                end
            else
                sr()
            end
        end)
        table.insert(r7, Workspace.DescendantAdded:Connect(function(sK)
            if Toggles.InstantProximityPrompt.Value then
                so(sK)
            end
        end))
        table.insert(r7, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for i, descendant in Character:GetDescendants() do
                    if descendant:IsA("BasePart") then
                        if r8[descendant] == nil then
                            r8[descendant] = descendant.CanCollide
                        end
                        descendant.CanCollide = false
                    end
                end
            end
        end))
        table.insert(r7, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Pf = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and Pf then
                Pf:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(r7, RunService.RenderStepped:Connect(function(s5)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Pl = Character and Character:FindFirstChildOfClass("Humanoid")
            local Pm = Character
            if Pm then
                Pm = Character:FindFirstChild("HumanoidRootPart")
            end
            local Pk_1 = Pm
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and Pl then
                if r9[Pl] == nil then
                    r9[Pl] = Pl.WalkSpeed
                end
                Pl.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and Pk_1 and Pl and CurrentCamera then
                if sa[Pl] == nil then
                    sa[Pl] = Pl.PlatformStand
                end
                Pl.PlatformStand = true
                local Pm_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        Pm_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        Pm_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        Pm_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        Pm_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        Pm_4 += Vector3.new(0, 1, 0)
                    end
                    local Ps = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                    if Ps == 1 then
                        Pm_4 -= Vector3.new(0, 1, 0)
                    end
                end
                Pk_1.AssemblyLinearVelocity = Vector3.zero
                if Pm_4.Magnitude > 0 then
                    Pk_1.CFrame = Pk_1.CFrame + Pm_4.Unit * Options.FlySpeed.Value * s5
                end
            end
        end))
        Bs.Track(function()
            for k, v in r7 do
                v:Disconnect()
            end
            sc()
            sg()
            sk()
            sr()
        end)
    end
    r3()
    local function tl()
        local QC, QD, QE, QF, QG, Label, QI, QJ, QK, QL, QM, QN, QO, QP
        QJ = {}
        QC = {}
        QN = nil
        QK = 0
        QO = 0
        QE = false
        QF = os.clock()
        local MenuGroup = o4[4]:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        QL = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local PE = not CurrentCamera or not A7(VirtualUser.CaptureController) or not A7(VirtualUser.ClickButton2)
            if PE then
                return false
            end
            local PE_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not PE_1 then
                return false
            end
            QO += 1
            QF = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. QO)
            end)
            return true
        end
        QG = function(tP)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not tP)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not tP
                end
            end)
            if not tP then
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
        QD = function(t4)
            local ClassName = t4.ClassName
            if ClassName == "ParticleEmitter" or ClassName == "Trail" or ClassName == "Smoke" or ClassName == "Fire" or ClassName == "Sparkles" or ClassName == "Explosion" or ClassName == "Beam" then
                if QJ[t4] == nil then
                    QJ[t4] = t4.Enabled
                end
                pcall(function()
                    t4.Enabled = false
                end)
            end
        end
        QP = function()
            for k, v in QJ do
                local PT = k
                local PV = v
                if PT.Parent then
                    pcall(function()
                        PT.Enabled = PV
                    end)
                end
            end
            table.clear(QJ)
            if QN then
                pcall(function()
                    settings().Rendering.QualityLevel = QN.Quality
                end)
                Lighting.GlobalShadows = QN.Shadows
                Lighting.FogEnd = QN.Fog
                QN = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(uj)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not uj)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(uo)
                if uo then
                    if not QN then
                        QN = {
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
                    for i, descendant in Workspace:GetDescendants() do
                        pcall(QD, descendant)
                    end
                else
                    QP()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        QG(true)
        local ScriptGroup = o4[4]:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            QG(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            QG(true)
        end
        table.insert(QC, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                QL()
            end
        end))
        table.insert(QC, Workspace.DescendantAdded:Connect(function(uH)
            if Toggles.FpsBoost.Value then
                QD(uH)
            end
        end))
        QM = function(uL)
            local Qb = QE or Library.Unloaded
            local Qg = if Qb then 1 else 0
            local Qe = 1464 * Qg + 920 * (1 - Qg)
            local Qf = 132 * Qg + 2985 * (1 - Qg)
            if not ((Qe * 839 + Qf * 1550 + Qe * Qf) % 16777213 == 1626144) then
                Qb = not Toggles.AutoReconnect.Value
            end
            if Qb then
                return
            end
            QE = true
            local Qa = QK
            local Qb_1 = pcall(function()
                if uL then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not Qb_1 then
                QE = false
                if not uL and Qa == QK then
                    task.delay(1.5, function()
                        if Qa == QK then
                            QM(true)
                        end
                    end)
                end
            end
        end
        table.insert(QC, TeleportService.TeleportInitFailed:Connect(function(u2)
            local Ql
            if u2 == LocalPlayer and QE then
                QE = false
                Ql = QK
                task.delay(3, function()
                    if Ql == QK then
                        QM(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local Qq = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not Qq then
                return
            end
            table.insert(QC, Qq.ChildAdded:Connect(function(vh)
                if vh.Name == "ErrorPrompt" then
                    QM(false)
                end
            end))
        end)
        QI = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    QG(true)
                end
                local Qt = Toggles.AntiAfk.Value and os.clock() - QF >= 60
                if Qt then
                    QL()
                end
                task.wait(1)
            end
        end)
        Bs.Track(function()
            QK += 1
            for k, v in QC do
                v:Disconnect()
            end
            pcall(task.cancel, QI)
            QG(false)
            QP()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    tl()
    local function vB()
        local RN, RO, RP, RQ
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("MyScriptHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(o4[4])
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/ChopTreesForTreasure")
        local RR = SaveManager:BuildConfigSection(o4[4])
        RQ = function(vI, vJ)
            local QT = vI == "Toggle" and Toggles
            local QY = if QT then 1 else 0
            local QW = 1651 * QY + 193 * (1 - QY)
            local QX = 1082 * QY + 503 * (1 - QY)
            if not ((QW * 2823 + QX * 2112 + QW * QX) % 16777213 == 8732339) then
                QT = Options
            end
            local QT_1 = QT[vJ]
            local QS_2 = type(QT_1) == "table" and QT_1.Type == vI
            return QS_2 and QT_1 or nil
        end
        RO = function(vS, vT)
            local Type = vT.Type
            if Type == "Toggle" then
                return { idx = vS, type = "Toggle", value = vT.Value == true }
            elseif Type == "Slider" then
                return { idx = vS, type = "Slider", value = tostring(vT.Value) }
            elseif Type == "Dropdown" then
                return { idx = vS, type = "Dropdown", multi = vT.Multi == true, value = vT.Value }
            elseif Type == "Input" then
                local Q_ = vT.Value or ""
                return { idx = vS, type = "Input", text = tostring(Q_) }
            elseif Type == "ColorPicker" then
                return { idx = vS, type = "ColorPicker", value = vT.Value:ToHex(), transparency = vT.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = vS,
                    type = "KeyPicker",
                    mode = vT.Mode,
                    key = vT.Value,
                    modifiers = vT.Modifiers,
                    toggled = vT.Toggled
                }
            else
                return nil
            end
        end
        RN = function()
            local Q2 = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local Q3 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if Q3 then
                        local Q3_1 = RO(k, v)
                        if Q3_1 then
                            Q2[#Q2 + 1] = Q3_1
                        end
                    end
                end
            end
            table.sort(Q2, function(v2, v3)
                if v2.type ~= v3.type then
                    return v2.type < v3.type
                end
                return v2.idx < v3.idx
            end)
            return { objects = Q2 }
        end
        RP = function(v5)
            local Rp
            Rp = nil
            local Rq = type(v5) ~= "table" or type(v5.idx) ~= "string" or type(v5.type) ~= "string" or SaveManager.Ignore[v5.idx]
            if Rq then
                return false
            end
            Rp = RQ(v5.type, v5.idx)
            if not Rp then
                return false
            end
            local Rq_1 = pcall(function()
                if v5.type == "Input" then
                    if type(v5.text) ~= "string" then
                        return
                    end
                    Rp:SetValue(v5.text)
                elseif v5.type == "ColorPicker" then
                    Rp:SetValueRGB(Color3.fromHex(v5.value), v5.transparency)
                elseif v5.type == "KeyPicker" then
                    Rp:SetValue({ v5.key, v5.mode, v5.modifiers })
                    if v5.mode == "Toggle" and v5.toggled ~= nil then
                        Rp.Toggled = v5.toggled
                        Rp:Update()
                    end
                else
                    Rp:SetValue(v5.value)
                end
            end)
            return Rq_1
        end
        RR:AddDivider()
        RR:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        RR:AddButton("Export Config to Clipboard", function()
            local Rt_1
            local Rs_1
            Rs_1, Rt_1 = pcall(HttpService.JSONEncode, HttpService, RN())
            if Rs_1 then
                local Rs_2 = A7(setclipboard) and setclipboard
                local Ru = Rs_2
                if not Ru then
                    local Rs_3 = A7(toclipboard) and toclipboard
                    local Rv = Rs_3
                    local Rz = if Rv then 1 else 0
                    local Rx = 3144 * Rz + 3616 * (1 - Rz)
                    local Ry = 3128 * Rz + 1674 * (1 - Rz)
                    if not ((Rx * 2340 + Ry * 3606 + Rx * Ry) % 16777213 == 11693747) then
                        Rv = nil
                    end
                    Ru = Rv
                end
                local Rs_4 = Ru
                local Ru_1 = type(Rs_4) == "function" and pcall(Rs_4, Rt_1)
                if Ru_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        RR:AddButton("Import Config from Clipboard Text", function()
            local RC_1
            local RA = Options.SaveManager_ImportSource.Value
            local RA_1
            local RG = if RA then 1 else 0
            local RE = 898 * RG + 2037 * (1 - RG)
            local RF = 232 * RG + 629 * (1 - RG)
            if not ((RE * 1574 + RF * 3070 + RE * RF) % 16777213 == 2334028) then
                RA = ""
            end
            local RB = tostring(RA):match("^%s*(.-)%s*$")
            if RB == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #RB > 262144 then
                Library:Notify("That config is too large")
                return
            end
            RA_1, RC_1 = pcall(HttpService.JSONDecode, HttpService, RB)
            local RB_1 = not RA_1 or type(RC_1) ~= "table" or type(RC_1.objects) ~= "table"
            if RB_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #RC_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local RA_2 = 0
            for i, v in ipairs(RC_1.objects) do
                if RP(v) then
                    RA_2 += 1
                end
            end
            if RA_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local RC_2 = RA_2 == 1 and ""
            local RG_1 = if RC_2 then 1 else 0
            local RE_1 = 1699 * RG_1 + 33 * (1 - RG_1)
            local RF_1 = 588 * RG_1 + 3693 * (1 - RG_1)
            if not ((RE_1 * 2420 + RF_1 * 436 + RE_1 * RF_1) % 16777213 == 5366960) then
                RC_2 = "s"
            end
            Library:Notify(("Imported %d setting%s"):format(RA_2, RC_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.ChopZones then
            Bs.SetChopZones(Options.ChopZones.Value)
        end
        if Options.TrainArea then
            Bs.SetTrainArea(Options.TrainArea.Value)
        end
        if Options.LootRarities then
            Bs.SetLootRarities(Options.LootRarities.Value)
        end
        if Options.LootRadius then
            Bs.SetLootRadius(Options.LootRadius.Value)
        end
        if Options.SellRarities then
            Bs.SetSellRarities(Options.SellRarities.Value)
        end
        if Options.SellAtCount then
            Bs.SetSellAtCount(Options.SellAtCount.Value)
        end
        if Options.UpgradeIds then
            Bs.SetUpgradeIds(Options.UpgradeIds.Value)
        end
        if Options.CraftIds then
            Bs.SetCraftIds(Options.CraftIds.Value)
        end
        if Options.AuraMode then
            Bs.SetAuraMode(Options.AuraMode.Value)
        end
        if Toggles.AuraKeepBest then
            Bs.SetAuraKeepBest(Toggles.AuraKeepBest.Value)
        end
        if Toggles.LootTeleport then
            Bs.SetLootTeleport(Toggles.LootTeleport.Value)
        end
        if Toggles.AutoLoot then
            Bs.SetAutoLoot(Toggles.AutoLoot.Value)
        end
        if Toggles.AutoSell then
            Bs.SetAutoSell(Toggles.AutoSell.Value)
        end
        if Toggles.AutoBuyChoppers then
            Bs.SetAutoBuyChoppers(Toggles.AutoBuyChoppers.Value)
        end
        if Toggles.AutoEquipChopper then
            Bs.SetAutoEquipChopper(Toggles.AutoEquipChopper.Value)
        end
        if Toggles.AutoBuyUpgrades then
            Bs.SetAutoBuyUpgrades(Toggles.AutoBuyUpgrades.Value)
        end
        if Toggles.AutoCraft then
            Bs.SetAutoCraft(Toggles.AutoCraft.Value)
        end
        if Toggles.AutoEquipArtifact then
            Bs.SetAutoEquipArtifact(Toggles.AutoEquipArtifact.Value)
        end
        if Toggles.AutoRebirth then
            Bs.SetAutoRebirth(Toggles.AutoRebirth.Value)
        end
        if Toggles.AutoRollAura then
            Bs.SetAutoRollAura(Toggles.AutoRollAura.Value)
        end
        if Toggles.AutoTrain then
            Bs.SetAutoTrain(Toggles.AutoTrain.Value)
        end
        if Toggles.AutoChop then
            Bs.SetAutoChop(Toggles.AutoChop.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    vB()
end
R4_29()
