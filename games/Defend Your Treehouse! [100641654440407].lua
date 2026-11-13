local fns = {}
local Rg_1, Rg_2, Rg_4, Rg_5, Rg_7, Rg_8, Rg_10, Rg_13, Rg_16, Rg_23, Rg_25, Rg_27, Players, Rg_29, Rg_31, Rg_39, Rg_44, Rg_47
Rg_1 = nil
Rg_4 = nil
Rg_7 = nil
Rg_10 = nil
Rg_13 = nil
Rg_16 = nil
Rg_25 = nil
Players = nil
Rg_31 = nil
local AL
local B9
local A9
local Ay
local BX
local Cl
local PlayerGui
local AK
local A8
local Bx
local Ax
local Options
local AW
local Ck
local Bk
local BJ
local AJ
local Library
local A7
local Bw
local Aw
local BV
local AV
local PlotUpgradeCosts
local Bj
local BI
local B6
local A6
local Bv
local Av
local AU
local Ci
local Bi
local AH
local B5
local A5
local Bu
local Au
local BT
local AT
local Ch
local State
local BG
local AG
local A4
local At
local BS
local AS
local Bg
local BF
local AF
local B3
local A3
local LocalPlayer
local As
local BR
local AR
local Cf
local Bf
local AE
local B2
local A2
local Br
local Ar
local BQ
local AQ
local Be
local BD
local AD
local B1
local A1
local Cq
local Bq
local Aq
local BP
local AP
local Cd
local Bd
local BC
local AC
local Toggles
local A0
local Cp
local Bp
local Ap
local CoreGui
local AO
local Bc
local AB
local B_
local A_
local Co
local BN
local AN
local Bb
local BA
local AA
local BZ
local AZ
local Cn
local Bn
local An
local BM
local AM
local Ca
function fns.fn23(em)
    local GD
    local GE = math.huge
    for k, v in A9(em) do
        local GF = B3(v.Name)
        if GF < GE or GF == GE and v.Name > (GD and GD.Name or "") then
            GE = GF
            GD = v
        end
    end
    return GD, GE
end
function fns.fn66(k4, k5)
    State.Enabled.AutoStop = k4 == true
    if tonumber(k5) then
        State.StopWave = math.clamp(math.floor(k5), 1, AK)
    end
    if State.Enabled.AutoStop or State.Enabled.AutoStart then
        AD("Wave", 0.45, A0)
    else
        B6(false)
        Rg_13("Wave")
    end
end
function fns.onOnClientEvent6(mu, mv)
    local LB = if not AF() then 1 else 0
    if LB == 1 then
        return
    end
    if tonumber(mv) then
        State.Wave = mv
    end
end
function fns.fn96(bN)
    local Eu = Cq(bN)
    local Ev = type(Eu) ~= "table" or AH(bN)
    if Ev then
        return nil
    end
    local Ev_1 = tonumber(Eu.Price) or 0
    local Eu_1 = Ev_1
    local Ev_2 = (tonumber(LocalPlayer:GetAttribute("OnboardingStep")))
    local Ez = if Ev_2 then 1 else 0
    local Ex = 693 * Ez + 335 * (1 - Ez)
    local Ey = 387 * Ez + 1232 * (1 - Ez)
    if not ((Ex * 3967 + Ey * 542 + Ex * Ey) % 16777213 == 3227076) then
        Ev_2 = 1
    end
    if Ev_2 <= 3 then
        Eu_1 = 100
    end
    if LocalPlayer:GetAttribute("IsVIP") then
        Eu_1 = math.floor(Eu_1 * 0.85)
    end
    return Eu_1
end
function fns.fn133(lg)
    State.Enabled.KillAura = lg == true
    if State.Enabled.KillAura then
        AD("Aura", 0.05, Bp)
    else
        Rg_13("Aura")
    end
end
function fns.fn135()
    return State.Enabled.AutoStart or State.Enabled.AutoStop
end
function fns.fn143(n3)
    local Mp = n3 and n3.Value
    if type(Mp) ~= "table" then
        return {}
    end
    return Mp
end
function fns.fn145()
    Au()
    local WeaponInventory = State.WeaponInventory
    if type(WeaponInventory) ~= "table" then
        return "Wooden Sword"
    end
    local J6
    local J7 = -1
    for k, v in pairs(WeaponInventory) do
        local J5_1 = tonumber(v) or 0
        if J5_1 > 0 then
            local J5_2 = BF[k]
            local J8 = J5_2 and tonumber(J5_2.Damage)
            local J5_3 = J8 or 0
            if J5_3 > J7 then
                J7 = J5_3
                J6 = k
            end
        end
    end
    return J6 or "Wooden Sword"
end
function fns.fn150(Y)
    local Dz = typeof(cloneref) == "function" and typeof(Y) == "Instance"
    if Dz then
        return cloneref(Y)
    end
    return Y
end
function fns.fn153()
    local Gp
    local Gq = -1
    for k, v in pairs(State.Inventory) do
        local Gr = tonumber(v) or 0
        if Gr > 0 then
            local Gr_1 = B3(k)
            local Gs = Gr_1 > Gq
            if not Gs then
                local Gt = Gr_1 == Gq
                if Gt then
                    local Gu = tostring(k)
                    local Gv = Gp or k
                    Gt = Gu < tostring(Gv)
                end
                Gs = Gt
            end
            if Gs then
                Gq = Gr_1
                Gp = k
            end
        end
    end
    return Gp, Gq
end
function fns.fn186(lQ, lR, lS, lT)
    local Lg = lQ ~= ""
    local Lh = type(lQ) == "string" and Lg
    if Lh then
        State.ClaimMode = lQ
    end
    local Lg_1 = lR ~= ""
    local Lh_1 = type(lR) == "string" and Lg_1
    if Lh_1 then
        State.MinRarity = lR
    end
    if tonumber(lS) then
        State.MinPrice = math.max(0, lS)
    end
    if type(lT) == "table" then
        State.SpecificItems = lT
    end
end
function fns.fn188(bC)
    local Ej = Cq(bC)
    local Ek = Ej and tonumber(Ej.Price)
    return Ek or 0
end
function fns.fn200(c6)
    local Fq = {}
    if not c6 then
        return Fq
    end
    for i, descendant in c6:GetDescendants() do
        local Fr = descendant:IsA("BasePart") and descendant.Name == "Slot"
        if Fr then
            Fq[#Fq + 1] = descendant
        end
    end
    return Fq
end
function fns.fn226(bG)
    local Em = Cq(bG)
    return Em and Em.Rarity or nil
end
function fns.fn241()
    local EI = Bb()
    local EJ = EI and EI:FindFirstChild("Roll")
    local EI_1 = EJ
    if EJ then
        EJ = EI_1:FindFirstChild("Lever")
    end
    local EI_2 = EJ
    if EJ then
        EJ = EI_2:FindFirstChild("Knob")
    end
    local EI_3 = EJ
    if EJ then
        EJ = EI_3:FindFirstChild("SlotPrompt", true)
    end
    local EI_4 = EJ
    if EJ then
        EJ = EI_4:IsA("ProximityPrompt")
    end
    if EJ then
        return EI_4
    end
end
function fns.fn245(bV)
    local EA = An(bV)
    if EA == nil then
        return false
    end
    return Rg_1() >= EA
end
function fns.onAutoRoll(pO)
    AU.SetAutoRoll(pO == true)
end
function fns.fn253(g1)
    local Iz = State.CrateSlots[g1]
    if type(Iz) ~= "table" then
        return nil
    end
    local IA = tonumber(Iz.Duration) or 0
    local IA_1 = tonumber(Iz.PlacedAt) or os.time()
    return IA - (os.time() - IA_1)
end
function fns.onAutoStartFight(pv)
    AU.SetAutoStart(pv == true)
end
function fns.fn271()
    local Ku = {
        Ci:FindFirstChild("ActiveEnemies"),
        Ci:FindFirstChild("LocalEnemies"),
        Ci:FindFirstChild("Bosses"),
        Ci:FindFirstChild("AliveCharacters")
    }
    for k, v in Ku do
        if v then
            for i, child in v:GetChildren() do
                if A2(child) then
                    return child
                end
            end
        end
    end
    local Ku_1 = B1()
    if Ku_1 then
        for i, child in Ku_1:GetChildren() do
            local Ku_2 = child:IsA("Model") and not child:GetAttribute("IsPlacedItem") and A2(child)
            if Ku_2 then
                return child
            end
        end
    end
end
function fns.fn283()
    Ay = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
end
function fns.onUpgradeTargets(qr)
    if Ck("AutoBuyUpgrades") then
        AU.SetAutoBuyUpgrades(true, qr)
    else
        local Ns = type(qr) == "table" and qr
        local Nu = Ns or {}
        State.UpgradeSet = Nu
    end
end
function fns.fn312()
    if os.clock() - State.LastRoll < 1.25 then
        return false
    end
    local H3 = AQ()
    if not H3 or H3.Enabled ~= true then
        return false
    end
    local H4_1 = B1()
    if not H4_1 then
        return false
    end
    local H5 = Ar(H4_1)
    if Bx(H5) then
        if not State.Enabled.AutoClaim then
            return false
        elseif Cp(H5) then
            return false
        else
            State.LastRoll = os.clock()
            if Ap then
                local H4_2 = pcall(Ap, H3)
                return H4_2 == true
            end
            return A3(Bn.RandomizerRoll)
        end
    else
        State.LastRoll = os.clock()
        if Ap then
            local H4_3 = pcall(Ap, H3)
            return H4_3 == true
        end
        return A3(Bn.RandomizerRoll)
    end
end
function fns.fn313(nZ)
    local Mm = Toggles[nZ]
    return Mm ~= nil and Mm.Value == true
end
function fns.fn325()
    local D4 = tonumber(LocalPlayer:GetAttribute("CurrentWave"))
    if D4 then
        State.Wave = D4
        return D4
    end
    local D4_1 = tonumber(State.Wave) or 1
    return D4_1
end
function fns.fn342(nK, nL)
    local Mh_1
    local Mg_1
    if type(setclipboard) == "function" then
        Mg_1 = setclipboard
    else
        if type(toclipboard) == "function" then
            Mh_1 = toclipboard
        else
            Mh_1 = nil
        end
        Mg_1 = Mh_1
    end
    local Mh_2 = Mg_1
    if type(Mh_2) ~= "function" then
        Library:Notify("Clipboard is unavailable")
        return
    end
    local Mg_2 = pcall(Mh_2, nK)
    if Mg_2 then
        Library:Notify(nL)
    else
        Library:Notify("Failed to copy")
    end
end
function fns.fn352()
    if Ck("AutoBuyUpgrades") then
        AU.SetAutoBuyUpgrades(true, BS(Options.UpgradeTargets))
    end
end
function fns.fn367(di, dj, dk, dl)
    local FK, FL, Size
    if not (di and dj and dk) then
        return true
    end
    local FI_1 = OverlapParams.new()
    FI_1.FilterType = Enum.RaycastFilterType.Exclude
    local FJ_1 = BM(di)
    FI_1.FilterDescendantsInstances = FJ_1
    local FJ_2 = Ci:GetPartBoundsInBox(dj, dk - Vector3.new(0.1, 0.1, 0.1), FI_1)
    local Path = di:FindFirstChild("Path")
    local FP = false
    for k, v in FJ_2 do
        local FO = 33
        while true do
            if FO < 18 then
                if FO < 9 then
                    if FO < 4 then
                        if FO < 2 then
                            if FO < 1 then
                                FO = if FK then 29 else 8
                            else
                                FO = if FJ_2 then 28 else 25
                            end
                        elseif FO < 3 then
                            FO = if FJ_2 == dl then 30 else 32
                        else
                            FJ_2 = v.Name == "Health"
                            FO = if FJ_2 then 17 else 1
                        end
                    elseif FO < 6 then
                        if FO < 5 then
                            FO = if FK then 14 else 19
                        else
                            return true
                        end
                    elseif FO < 7 then
                        break
                    elseif FO < 8 then
                        return true
                    else
                        FJ_2 = FJ_2.Parent
                        FO = 31
                    end
                elseif FO < 13 then
                    if FO < 11 then
                        if FO < 10 then
                            FL = dj:ToObjectSpace(FK.CFrame)
                            Size = FK.Size
                            FK = math.abs(FL.X) < (dk.X + Size.X) / 2 - 0.1
                            FO = if FK then 11 else 4
                        else
                            FO = if FL then 2 else 18
                        end
                    elseif FO < 12 then
                        FK = math.abs(FL.Z) < (dk.Z + Size.Z) / 2 - 0.1
                        FO = 4
                    else
                        FL = FK
                        FO = 10
                    end
                elseif FO < 15 then
                    if FO < 14 then
                        FK = FJ_2:GetAttribute("IsPlacedItem")
                        FO = 0
                    else
                        return true
                    end
                elseif FO < 16 then
                    FK = FJ_2 ~= Ci
                    FL = FJ_2
                    FO = if FL then 12 else 10
                elseif FO < 17 then
                    return true
                else
                    FJ_2 = v.Parent
                    FO = 1
                end
            elseif FO < 27 then
                if FO < 22 then
                    if FO < 20 then
                        if FO < 19 then
                            FO = 3
                        else
                            FO = 21
                        end
                    elseif FO < 21 then
                        FJ_2 = Path
                        FO = if FJ_2 then 26 else 24
                    else
                        FO = 3
                    end
                elseif FO < 24 then
                    if FO < 23 then
                        FO = 15
                    else
                        FP = true
                        FO = 6
                    end
                elseif FO < 25 then
                    FO = if FJ_2 then 5 else 35
                elseif FO < 26 then
                    FO = if FJ_2 then 7 else 20
                else
                    FJ_2 = v:IsDescendantOf(Path)
                    FO = 24
                end
            elseif FO < 31 then
                if FO < 29 then
                    if FO < 28 then
                        FL = FK:IsA("BasePart")
                        FO = 34
                    else
                        FJ_2 = v.Parent.Name == "Checkpoints"
                        FO = 25
                    end
                elseif FO < 30 then
                    FK = FJ_2:FindFirstChild("PlacementBox")
                    FL = FK
                    FO = if FL then 27 else 34
                else
                    FO = 3
                end
            elseif FO < 33 then
                if FO < 32 then
                    FO = 22
                else
                    FK = (FJ_2:IsA("Model"))
                    FO = if FK then 13 else 0
                end
            elseif FO < 34 then
                FJ_2 = v
                FO = 22
            elseif FO < 35 then
                FO = if FL then 9 else 16
            else
                FO = 6
            end
        end
        if FP then
            break
        end
    end
    return false
end
function fns.fn380(hj, hk, hl)
    if not hk then
        State.CrateSlots[hj] = nil
        return
    end
    local IL = Bv[hk]
    local CrateSlots = State.CrateSlots
    local IN = tonumber(hl) or os.time()
    local IO = IL and tonumber(IL.TimerDuration)
    local IL_1 = IO or 0
    CrateSlots[hj] = { Type = hk, PlacedAt = IN, Duration = IL_1 }
end
function fns.fn393(nV)
    local DiscordGroup = nV:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = AN })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = AN })
end
function fns.fn418(kG)
    State.Tokens[kG] += 1
end
function fns.fn419(fW)
    for i, v in ipairs(fW) do
        local HN = v ~= ""
        local HO = type(v) == "string" and HN
        if HO then
            return true
        end
    end
    return false
end
function fns.fn423()
    local IR_1
    local IQ_1
    IQ_1, IR_1 = AL(Bn.GetCrateShopStocks)
    local IS = IQ_1 and type(IR_1) == "table"
    if IS then
        State.CrateStocks = IR_1
        return true
    end
    return false
end
function fns.fn436(cN)
    local Inventory = State.Inventory
    local Ff = Inventory and Inventory[cN]
    local Fe_1 = tonumber(Ff) or 0
    return Fe_1
end
function fns.fn441(lX, lY)
    State.Enabled.AutoBuyCrate = lX == true
    AU.SetCrateType(lY)
    if B5() then
        AD("Crate", 0.45, function()
            if State.Enabled.AutoOpenCrate then
                B2()
            end
            if State.Enabled.AutoBuyCrate or State.Enabled.AutoPlaceCrate then
                A4()
            end
        end)
    else
        Rg_13("Crate")
    end
end
function fns.worker()
    while true do
        local Md = AF() and Library and not Library.Unloaded
        if Md then
            B_()
            task.wait(1)
            continue
        end
        break
    end
end
function fns.fn457()
    return State.Enabled.AutoPlace or State.Enabled.AutoReplace
end
function fns.fn481(jP)
    if not jP or not jP.Parent then
        return nil
    elseif Players:GetPlayerFromCharacter(jP) then
        return nil
    else
        local Humanoid = jP:FindFirstChildOfClass("Humanoid")
        if Humanoid and Humanoid.Health <= 0 then
            return nil
        end
        local Kr_2 = jP:FindFirstChild("HumanoidRootPart") or jP.PrimaryPart or jP:FindFirstChildWhichIsA("BasePart", true)
        local Ks_1 = Kr_2
        if Kr_2 then
            Kr_2 = Ks_1.Position
        end
        return Kr_2
    end
end
function fns.fn488()
    if Bd() then
        B6(false)
        if State.Fighting then
            BD()
        end
        return
    end
    if not State.Enabled.AutoStart then
        B6(false)
        return
    end
    B6(true)
    if not State.Fighting then
        BD()
    end
end
function fns.fn489()
    if os.clock() - State.LastOpenCrate < 0.7 then
        return false
    end
    for k, v in Rg_16 do
        if AA(v) then
            State.LastOpenCrate = os.clock()
            return A3(Bn.OpenCrate, v)
        end
    end
    return false
end
function fns.onAutoStopWave(px)
    local SetAutoStop = AU.SetAutoStop
    local M8 = px == true
    local M9 = Options.StopWave and Options.StopWave.Value
    SetAutoStop(M8, M9)
end
function fns.fn505(mc)
    State.Enabled.AutoEquipWeapon = mc == true
    if BC() then
        AD("Equip", 0.5, A6)
    else
        Rg_13("Equip")
    end
end
function fns.fn507(mi, mj)
    State.Enabled.AutoBuyUpgrades = mi == true
    if type(mj) == "table" then
        State.UpgradeSet = mj
    end
    if BP() then
        AD("Upgrade", 0.55, Bk)
    else
        Rg_13("Upgrade")
    end
end
function fns.fn548(gA)
    local Ia = Cf()
    local Ib = Ia and Ia:FindFirstChild("Slot" .. tostring(gA))
    return Ib
end
function fns.fn563()
    if not Aw() then
        return
    end
    if not AS() then
        return
    end
    local KM = Av()
    if not KM then
        return
    end
    local KN = tonumber(LocalPlayer:GetAttribute("WaveSpeed")) or 1
    local KO = KN
    if KO <= 0 then
        KO = 1
    end
    local KN_1 = 0.7 / KO
    if os.clock() - State.LastHit < KN_1 then
        return
    end
    State.LastHit = os.clock()
    A3(Bn.SwordHitEvent, KM)
end
function fns.fn568()
    return State.Enabled.AutoEquipWeapon
end
function fns.fn581()
    if os.clock() - State.LastClaim < 0.45 then
        return false
    elseif A1() then
        return false
    else
        local HW = B1()
        local HW_3
        local HX = Ar(HW)
        local HX_3, HX_4
        local HW_1 = Cp(HX)
        if not HW_1 then
            return false
        end
        local HY = HX[HW_1]
        local HY_3, HY_4
        local HX_1 = not BI(HY) or AH(HY)
        if HX_1 then
            return false
        end
        State.LastClaim = os.clock()
        local HX_2 = BV(HW_1)
        if HX_2 and HX_2.Enabled and Ap then
            local HY_2 = pcall(Ap, HX_2)
            if HY_2 then
                State.InventoryAt = 0
                return true
            end
            HX_3, HY_3 = AL(Bn.RandomizerPickup, HW_1)
            if HW_3 then
                State.InventoryAt = 0
                return true
            end
            return false
        end
        HX_4, HY_4 = AL(Bn.RandomizerPickup, HW_1)
        HW_3 = HX_4 and HY_4
        if HW_3 then
            State.InventoryAt = 0
            return true
        end
        return false
    end
end
function fns.fn587(eJ, eK, eL)
    local G2 = not AF()
    local G6 = if G2 then 1 else 0
    local G4 = 1944 * G6 + 2936 * (1 - G6)
    local G5 = 2075 * G6 + 2717 * (1 - G6)
    if not ((G4 * 3693 + G5 * 3309 + G4 * G5) % 16777213 == 1301954) then
        G2 = os.clock() - State.LastPlace < 0.2
    end
    if G2 then
        return false
    elseif Bg(eJ) <= 0 then
        return false
    else
        State.LastPlace = os.clock()
        local G6_1 = if A3(Bn.PlaceItemEvent, eJ, eK, eL) then 1 else 0
        if G6_1 == 1 then
            AW(eJ)
            return true
        end
        return false
    end
end
function fns.fn598()
    local EF = B1()
    local EG = EF and EF:FindFirstChild("PlotExtras")
    local EF_1 = EG
    if EG then
        EG = EF_1:FindFirstChild("Randomizer")
    end
    return EG
end
function fns.fn621()
    local I8_2
    if os.clock() - State.LastBuyCrate < 1.2 then
        return false
    end
    if not (State.Enabled.AutoBuyCrate or State.Enabled.AutoPlaceCrate) then
        return false
    elseif not AR() then
        return false
    else
        local CrateType = State.CrateType
        local I7 = type(CrateType) ~= "string" or CrateType == "" or not Bv[CrateType]
        if I7 then
            return false
        elseif Rg_31(CrateType) <= 0 then
            Bi()
            if Rg_31(CrateType) <= 0 then
                return false
            end
            local I7_1 = Ch(CrateType)
            local I8_1 = not I7_1 or Rg_1() < I7_1
            if I8_2 then
                return false
            end
            State.LastBuyCrate = os.clock()
            return A3(Bn.PurchaseCrate, CrateType)
        else
            local I7_2 = Ch(CrateType)
            I8_2 = not I7_2 or Rg_1() < I7_2
            if I8_2 then
                return false
            end
            State.LastBuyCrate = os.clock()
            return A3(Bn.PurchaseCrate, CrateType)
        end
    end
end
function fns.fn629(fm)
    if not fm then
        return {}
    end
    local attr = fm:GetAttribute("RandomizerResults")
    local Hp = attr == ""
    local Hp_1
    local Hq = type(attr) ~= "string" or Hp
    local Hq_1
    if Hq then
        return {}
    end
    Hp_1, Hq_1 = pcall(BZ.JSONDecode, BZ, attr)
    local Ho_1 = Hp_1 and type(Hq_1) == "table"
    if Ho_1 then
        return Hq_1
    end
    return {}
end
function fns.fn633()
    local G9 = B1()
    if not G9 then
        return false
    end
    B9()
    for i, v in ipairs(Cn()) do
        local Ha = BN(G9, v.Id)
        if #Ha > 0 then
            return BA(v.Id, Ha[1], G9)
        end
    end
    return false
end
function fns.fn637()
    local Hm_1
    local Hl_1
    local Hk_1
    local Hj_1
    local Hi = B1()
    if not Hi then
        return false
    end
    B9()
    Hj_1, Hk_1 = As()
    if not Hj_1 then
        return false
    end
    Hm_1, Hl_1 = Rg_4(Hi)
    if not Hm_1 then
        return false
    end
    if Hj_1 == Hm_1.Name or Hk_1 <= Hl_1 + 0.01 then
        return false
    end
    return AJ(Hm_1)
end
function fns.onClaimMode(pY)
    local SetClaimFilters = AU.SetClaimFilters
    local Nl = Options.ClaimRarity and Options.ClaimRarity.Value
    local Nm = Options.ClaimPrice and Options.ClaimPrice.Value
    SetClaimFilters(pY, Nl, Bw(Nm), BS(Options.ClaimSpecific))
end
function fns.onOnClientEvent4(mB)
    if not AF() then
        return
    end
    if type(mB) == "table" then
        State.CrateStocks = mB
    end
end
function fns.fn658(ld)
    if tonumber(ld) then
        State.StopWave = math.clamp(math.floor(ld), 1, AK)
    end
end
function fns.onOnClientEvent(mM, mN)
    if not AF() then
        return
    end
    AO(mM, mN)
end
function fns.fn679()
    B6(false)
end
function fns.fn694()
    return not AU.Unloaded
end
function fns.fn699(fz)
    local HA = fz == ""
    local HB = type(fz) ~= "string" or HA
    if HB then
        return false
    end
    local HA_1 = not Cq(fz) or AH(fz) or not BI(fz)
    if HA_1 then
        return false
    end
    local ClaimMode = State.ClaimMode
    if ClaimMode == "Specific" then
        return BT(fz)
    elseif ClaimMode == "Money Cost" then
        local HA_3 = Bq(fz)
        local HB_1 = tonumber(State.MinPrice) or 0
        return HA_3 >= HB_1
    else
        local HA_4 = AE(A_(fz))
        if HA_4 <= 0 then
            return false
        end
        return HA_4 >= AE(State.MinRarity)
    end
end
function fns.fn704(n7)
    local Mu_1
    if type(n7) == "number" then
        return math.max(0, n7)
    end
    local Ms = n7 or ""
    local Ms_1
    local Mt = tostring(Ms):gsub(",", ""):gsub("%s", "")
    Mu_1, Ms_1 = Mt:match("^([%d%.]+)([kKmMbBtT]?)$")
    local Mu_2 = tonumber(Mu_1)
    if not Mu_2 then
        return 0
    end
    local Mw = ({
        k = 1000,
        K = 1000,
        m = 1000000,
        M = 1000000,
        b = 1000000000,
        B = 1000000000,
        t = 1000000000000,
        T = 1000000000000
    })[Ms_1] or 1
    return math.max(0, Mu_2 * Mw)
end
function fns.fn711(cX)
    local Fl = A8[cX]
    if Fl then
        return Fl
    end
    local Fm = BX:FindFirstChild(cX)
    local Fn = Fm and Fm:IsA("Model") and Fm.PrimaryPart
    if not Fn then
        return nil
    end
    local PlacementBox = Fm:FindFirstChild("PlacementBox")
    local Fo = PlacementBox and PlacementBox:IsA("BasePart")
    if not Fo then
        return nil
    end
    local Fo_1 = Fm.PrimaryPart.CFrame:ToObjectSpace(PlacementBox.CFrame)
    local Fl_1 = { Size = PlacementBox.Size, OffsetInverse = Fo_1:Inverse() }
    A8[cX] = Fl_1
    return Fl_1
end
function fns.fn725(gT)
    local Iu = type(gT) == "string" and Bv[gT]
    local Iv = Iu
    if Iu then
        Iu = tonumber(Iv.Price)
    end
    return Iu or nil
end
function fns.onAutoEquipBest(pG)
    AU.SetAutoEquipWeapon(pG == true)
end
function fns.onClaimSpecific(p9)
    AU.SetClaimFilters(nil, nil, nil, p9)
end
function fns.fn777()
    if not State.Enabled.AutoStop then
        return false
    end
    local JI = AT()
    local JJ = tonumber(State.StopWave) or 50
    return JI >= JJ
end
function fns.onClaimRarity(p4)
    AU.SetClaimFilters(nil, p4, nil, nil)
end
function fns.fn781(dc)
    local Fz = {}
    if not dc then
        return Fz
    end
    for i, child in dc:GetChildren() do
        local FA = child:IsA("Model") and child:GetAttribute("IsPlacedItem")
        if FA then
            Fz[#Fz + 1] = child
        end
    end
    return Fz
end
function fns.fn822()
    if os.clock() - State.LastWaveToggle < 1.2 then
        return false
    end
    State.LastWaveToggle = os.clock()
    return A3(Bn.ToggleWaveState)
end
function fns.fn825()
    local Jn_7
    local Jm_20, Jm_26
    if os.clock() - State.LastUpgrade < 1 then
        return false
    end
    local Jk = B1()
    local Jk_17
    if not Jk then
        return false
    end
    local Jl = Rg_1()
    if BG("Plot") then
        local Jm_1 = tonumber(Jk:GetAttribute("BaseLevel")) or 1
        if Jm_1 < At then
            local Jm_2 = type(PlotUpgradeCosts) == "table" and tonumber(PlotUpgradeCosts[Jm_1])
            local Jn_2 = Jm_2
            if Jm_2 then
                Jm_2 = Jl >= Jn_2
            end
            if Jm_2 then
                State.LastUpgrade = os.clock()
                return A3(Bn.UpgradePlotEvent)
            end
            local Jr_1 = if BG("Luck") then 1 else 0
            if Jr_1 == 1 then
                local Jm_3 = tonumber(Jk:GetAttribute("Luck")) or 1
                if Jn_7 < AC then
                    if Jm_20 then
                        State.LastUpgrade = os.clock()
                        return A3(Bn.UpgradeLuck)
                    elseif BG("Extra Rolls") then
                        local Jm_5 = tonumber(Jk:GetAttribute("Rolls")) or 1
                        if Jk_17 < AG then
                            if Jm_26 then
                                State.LastUpgrade = os.clock()
                                return A3(Bn.UpgradeRolls)
                            end
                            return false
                        end
                        return false
                    else
                        return false
                    end
                elseif BG("Extra Rolls") then
                    local Jm_7 = tonumber(Jk:GetAttribute("Rolls")) or 1
                    if Jk_17 < AG then
                        if Jm_26 then
                            State.LastUpgrade = os.clock()
                            return A3(Bn.UpgradeRolls)
                        end
                        return false
                    end
                    return false
                else
                    return false
                end
            elseif BG("Extra Rolls") then
                local Jm_9 = tonumber(Jk:GetAttribute("Rolls")) or 1
                if Jk_17 < AG then
                    if Jm_26 then
                        State.LastUpgrade = os.clock()
                        return A3(Bn.UpgradeRolls)
                    end
                    return false
                end
                return false
            else
                return false
            end
        else
            local Jr_2 = if BG("Luck") then 1 else 0
            if Jr_2 == 1 then
                local Jm_11 = tonumber(Jk:GetAttribute("Luck")) or 1
                if Jn_7 < AC then
                    if Jm_20 then
                        State.LastUpgrade = os.clock()
                        return A3(Bn.UpgradeLuck)
                    elseif BG("Extra Rolls") then
                        local Jm_13 = tonumber(Jk:GetAttribute("Rolls")) or 1
                        if Jk_17 < AG then
                            if Jm_26 then
                                State.LastUpgrade = os.clock()
                                return A3(Bn.UpgradeRolls)
                            end
                            return false
                        end
                        return false
                    else
                        return false
                    end
                elseif BG("Extra Rolls") then
                    local Jm_15 = tonumber(Jk:GetAttribute("Rolls")) or 1
                    if Jk_17 < AG then
                        if Jm_26 then
                            State.LastUpgrade = os.clock()
                            return A3(Bn.UpgradeRolls)
                        end
                        return false
                    end
                    return false
                else
                    return false
                end
            elseif BG("Extra Rolls") then
                local Jm_17 = tonumber(Jk:GetAttribute("Rolls")) or 1
                if Jk_17 < AG then
                    if Jm_26 then
                        State.LastUpgrade = os.clock()
                        return A3(Bn.UpgradeRolls)
                    end
                    return false
                end
                return false
            else
                return false
            end
        end
    else
        local Jr_3 = if BG("Luck") then 1 else 0
        if Jr_3 == 1 then
            local Jm_19 = tonumber(Jk:GetAttribute("Luck")) or 1
            Jn_7 = Jm_19
            if Jn_7 < AC then
                Jm_20 = type(Co) == "table" and tonumber(Co[Jn_7])
                local Jn_8 = Jm_20
                if Jm_20 then
                    Jm_20 = Jl >= Jn_8
                end
                if Jm_20 then
                    State.LastUpgrade = os.clock()
                    return A3(Bn.UpgradeLuck)
                elseif BG("Extra Rolls") then
                    local Jm_21 = tonumber(Jk:GetAttribute("Rolls")) or 1
                    if Jk_17 < AG then
                        if Jm_26 then
                            State.LastUpgrade = os.clock()
                            return A3(Bn.UpgradeRolls)
                        end
                        return false
                    end
                    return false
                else
                    return false
                end
            elseif BG("Extra Rolls") then
                local Jm_23 = tonumber(Jk:GetAttribute("Rolls")) or 1
                if Jk_17 < AG then
                    if Jm_26 then
                        State.LastUpgrade = os.clock()
                        return A3(Bn.UpgradeRolls)
                    end
                    return false
                end
                return false
            else
                return false
            end
        elseif BG("Extra Rolls") then
            local Jm_25 = tonumber(Jk:GetAttribute("Rolls")) or 1
            Jk_17 = Jm_25
            if Jk_17 < AG then
                Jm_26 = type(Aq) == "table" and tonumber(Aq[Jk_17])
                local Jk_18 = Jm_26
                if Jm_26 then
                    Jm_26 = Jl >= Jk_18
                end
                if Jm_26 then
                    State.LastUpgrade = os.clock()
                    return A3(Bn.UpgradeRolls)
                end
                return false
            end
            return false
        else
            return false
        end
    end
end
function fns.onAutoPlaceCrate(qi)
    AU.SetAutoPlaceCrate(qi == true)
end
function fns.fn872()
    local SetCrateType = AU.SetCrateType
    local Nz = Options.CrateType and Options.CrateType.Value
    SetCrateType(Nz)
end
function fns.fn881(dG, dH, dI)
    local FU = BM(dG)
    if #FU == 0 then
        return false
    end
    local FV = RaycastParams.new()
    FV.FilterType = Enum.RaycastFilterType.Include
    FV.FilterDescendantsInstances = FU
    local FU_1 = math.max(1, math.round(dI.X / 4))
    local FW = math.max(1, math.round(dI.Z / 4))
    local FX = -dI.Y / 2 + 0.1
    local FY = -dI.X / 2 + dI.X / FU_1 / 2
    local FZ = -dI.Z / 2 + dI.Z / FW / 2
    local F_ = FU_1 - 1
    local F3 = 0
    while F3 <= F_ do
        local F4 = F3
        local F__1 = FW - 1
        local F8 = 0
        while F8 <= F__1 do
            local F9 = F8
            local F__2 = Vector3.new(FY + F4 * (dI.X / FU_1), FX, FZ + F9 * (dI.Z / FW))
            if not Ci:Raycast(dH:PointToWorldSpace(F__2), Vector3.new(0, -2, 0), FV) then
                return false
            end
            F8 += 1
        end
        F3 += 1
    end
    return true
end
function fns.fn893(bK)
    local Ep = Cq(bK)
    if type(Ep) ~= "table" then
        return true
    elseif Ep.ProductID ~= nil then
        return true
    elseif Ep.Limited == true then
        return true
    else
        return false
    end
end
function fns.fn905(g8)
    local ID = Bc(g8)
    if not ID then
        return false
    end
    local ProximityPrompt = ID:FindFirstChildWhichIsA("ProximityPrompt", true)
    if not ProximityPrompt then
        return false
    end
    return ProximityPrompt.ObjectText == "Ready!"
end
function fns.fn906(hN)
    local UpgradeSet = State.UpgradeSet
    if type(UpgradeSet) ~= "table" then
        return false
    elseif UpgradeSet[hN] == true then
        return true
    else
        for k, v in UpgradeSet do
            if v == hN then
                return true
            end
        end
        return false
    end
end
function fns.fn936()
    local Character = LocalPlayer.Character
    local E0 = Character and Character:FindFirstChildOfClass("Humanoid")
    local E1 = Character
    if E1 then
        local E0_1 = Character:FindFirstChild("HumanoidRootPart") or Character.PrimaryPart
        E1 = E0_1
    end
    local E0_2 = E1
    if E1 then
        E1 = E0
    end
    if E1 then
        E1 = E0.Health > 0
    end
    if E1 then
        return E0_2, Character, E0
    end
end
function fns.fn947()
    return State.Enabled.AutoBuyCrate or State.Enabled.AutoPlaceCrate or State.Enabled.AutoOpenCrate
end
function fns.onAutoBuyCrate(qc)
    local SetAutoBuyCrate = AU.SetAutoBuyCrate
    local Np = qc == true
    local Nq = Options.CrateType and Options.CrateType.Value
    SetAutoBuyCrate(Np, Nq)
end
function fns.onStopWave(pB)
    AU.SetStopWave(pB)
end
function fns.fn998()
    Rg_25(BQ, "Copied Discord invite to clipboard")
end
function fns.fn1009()
    for k, v in Rg_10 do
        v:Disconnect()
    end
end
function fns.fn1011()
    Au()
    local Js
    local Jt = -1
    local WeaponInventory = State.WeaponInventory
    if type(WeaponInventory) == "table" then
        for k, v in pairs(WeaponInventory) do
            local Ju_1 = tonumber(v) or 0
            if Ju_1 > 0 then
                local Ju_2 = BF[k]
                local Jv = Ju_2 and tonumber(Ju_2.Damage)
                local Ju_3 = Jv or 0
                if Ju_3 > Jt then
                    Jt = Ju_3
                    Js = k
                end
            end
        end
    end
    if not Js or Js == State.EquippedWeapon then
        return false
    end
    local JF = if os.clock() - State.LastEquip < 1.5 then 1 else 0
    if JF == 1 then
        return false
    end
    State.LastEquip = os.clock()
    return A3(Bn.EquipWeapon, Js)
end
function fns.fn1018()
    local GUI = PlayerGui:FindFirstChild("GUI")
    local LN = GUI and GUI:FindFirstChild("HUD")
    local LM_1 = LN
    if LN then
        LN = LM_1:FindFirstChild("Top")
    end
    local LM_2 = LN
    if LN then
        LN = LM_2:FindFirstChild("Buttons")
    end
    local LM_3 = LN
    if LN then
        LN = LM_3:FindFirstChild("WaveButton")
    end
    local LM_4 = LN
    if LN then
        LN = LM_4:FindFirstChild("Name")
    end
    local LM_5 = LN
    if LN then
        LN = LM_5:IsA("TextLabel")
    end
    if LN then
        State.Fighting = LM_5.Text == "Stop"
    end
end
function fns.fn1026(lV)
    local Lm = lV ~= ""
    local Ln = type(lV) == "string" and Lm
    if Ln then
        State.CrateType = lV
    end
end
function fns.fn1030(lv)
    State.Enabled.AutoReplace = lv == true
    AU.SetAutoPlace(State.Enabled.AutoPlace)
end
function fns.fn1034(aK, aL)
    if aK.Price == aL.Price then
        return aK.Name < aL.Name
    end
    return aK.Price < aL.Price
end
function fns.fn1039(kY)
    State.Enabled.AutoStart = kY == true
    if State.Enabled.AutoStart then
        if not AM() then
            return
        end
        AD("Wave", 0.45, A0)
    elseif not State.Enabled.AutoStop then
        B6(false)
        Rg_13("Wave")
    end
end
function fns.fn1045()
    return State.Enabled.AutoRoll or State.Enabled.AutoClaim
end
function fns.fn1048(ft)
    local SpecificItems = State.SpecificItems
    if type(SpecificItems) ~= "table" then
        return false
    elseif SpecificItems[ft] == true then
        return true
    else
        for k, v in SpecificItems do
            if v == ft then
                return true
            end
        end
        return false
    end
end
function fns.onOnClientEvent3(mE, mF, mG)
    if not AF() then
        return
    end
    if tonumber(mE) then
        Ca(mE, mF, mG)
    end
end
function fns.onOnClientEvent5(my)
    if not AF() then
        return
    end
    if type(my) == "table" then
        State.Inventory = my
        State.InventoryAt = os.clock()
    else
        State.InventoryAt = 0
    end
end
function fns.fn1075(iR)
    if State.AutoWaveOn == iR then
        return
    end
    State.AutoWaveOn = iR
    A3(Bn.SetAutoWave, iR)
end
function fns.fn1084(ch)
    local EO = Bb()
    local EP = EO and EO:FindFirstChild("Platform" .. tostring(ch))
    local EO_1 = EP
    if EP then
        EP = EO_1:FindFirstChild("PickupPrompt", true)
    end
    local EO_2 = EP
    if EP then
        EP = EO_2:IsA("ProximityPrompt")
    end
    if EP then
        return EO_2
    end
end
function fns.fn1100(fM)
    local HD
    local HE = -1
    for i, v in ipairs(fM) do
        local HF = i ~= 7 and Bj(v)
        if HF then
            local HF_1 = B3(v)
            if HF_1 > HE then
                HE = HF_1
                HD = i
            end
        end
    end
    return HD
end
function fns.fn1108(ll)
    State.Enabled.AutoPlace = ll == true
    if Ax() then
        AD("Place", 0.4, function()
            if State.Enabled.AutoPlace then
                if Cd() then
                    return
                end
            end
            if State.Enabled.AutoReplace then
                Bf()
            end
        end)
    else
        Rg_13("Place")
    end
end
function fns.fn1120()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local D_ = leaderstats and leaderstats:FindFirstChild("Cash")
    if D_ then
        local D__1 = tonumber(D_.Value) or 0
        return D__1
    end
    local DZ_2 = tonumber(LocalPlayer:GetAttribute("Cash")) or 0
    return DZ_2
end
function fns.fn1132()
    if not AF() then
        return
    end
    local LH = tonumber(LocalPlayer:GetAttribute("CurrentWave"))
    if LH then
        State.Wave = LH
    end
end
function fns.fn1153(br)
    local D9 = type(br) == "string" and BR[br]
    return D9 or nil
end
function fns.onAutoOpenCrate(qk)
    AU.SetAutoOpenCrate(qk == true)
end
function fns.fn1163(cS)
    local Inventory = State.Inventory
    if type(Inventory) ~= "table" then
        return
    end
    local Fi = tonumber(Inventory[cS]) or 0
    Inventory[cS] = math.max(Fi - 1, 0)
end
function fns.fn1183()
    return CoreGui
end
function fns.fn1184()
    return State.Enabled.AutoBuyUpgrades
end
function fns.fn1228(bv)
    local Ec = Cq(bv)
    if type(Ec) ~= "table" then
        return 0
    end
    if (Ec.Damage == 0 or Ec.Damage == nil) and Ec.DynamicDamageModifier then
        local Ed_1 = (tonumber(Ec.Price))
        local Ei = if Ed_1 then 1 else 0
        local Eg = 2881 * Ei + 192 * (1 - Ei)
        local Eh = 1347 * Ei + 2132 * (1 - Ei)
        if not ((Eg * 1327 + Eh * 699 + Eg * Eh) % 16777213 == 8645347) then
            Ed_1 = 0
        end
        return Ed_1 * 10
    end
    local Ed_2 = tonumber(Ec.FireRate) or 1
    local Ee_1 = Ed_2
    if Ee_1 <= 0 then
        Ee_1 = 1
    end
    local Ed_3 = tonumber(Ec.Damage) or 0
    return Ed_3 / Ee_1
end
function fns.fn1261(dV, dW)
    local Gb = AB(dW)
    if not Gb then
        return {}
    end
    local Gc = {}
    for k, v in BM(dV) do
        local Gd = v.Size * 0.5
        local Ge = 0
        while Ge + Gb.Size.X <= v.Size.X + 0.05 do
            local Gf = 0
            while Gf + Gb.Size.Z <= v.Size.Z + 0.05 do
                local Gg = Vector3.new(-Gd.X + Ge + Gb.Size.X * 0.5, Gd.Y + Gb.Size.Y * 0.5, -Gd.Z + Gf + Gb.Size.Z * 0.5)
                local Gh = v.CFrame * CFrame.new(Gg)
                local Gg_1 = AZ(dV, Gh, Gb.Size) and not AP(dV, Gh, Gb.Size)
                if Gg_1 then
                    Gc[#Gc + 1] = Gh * Gb.OffsetInverse
                end
                Gf += 4
            end
            Ge += 4
        end
    end
    return Gc
end
function fns.onOnClientEvent7(mr)
    if not AF() then
        return
    end
    State.Fighting = mr == true
end
function fns.onKillAura(pE)
    AU.SetKillAura(pE == true)
end
function fns.onAutoBuyUpgrades(qn)
    AU.SetAutoBuyUpgrades(qn == true, BS(Options.UpgradeTargets))
end
function fns.fn1308()
    local GT = {}
    for k, v in pairs(State.Inventory) do
        local GU = tonumber(v) or 0
        if GU > 0 then
            GT[#GT + 1] = { Id = k, Count = GU, Score = B3(k) }
        end
    end
    table.sort(GT, function(eG, eH)
        if eG.Score == eH.Score then
            return eG.Id < eH.Id
        end
        return eG.Score > eH.Score
    end)
    return GT
end
function fns.onAutoReplaceBetter(pL)
    AU.SetAutoReplace(pL == true)
end
function fns.fn1311()
    if Ck("AutoBuyUpgrades") then
        AU.SetAutoBuyUpgrades(true, BS(Options.UpgradeTargets))
    else
        State.UpgradeSet = BS(Options.UpgradeTargets)
    end
end
function fns.fn1325(gZ)
    local Ix = tonumber(State.CrateStocks[gZ]) or 0
    return Ix
end
function fns.fn1330(gF)
    local Id = BJ(gF)
    if not Id then
        return nil
    end
    for i, child in Id:GetChildren() do
        if child:IsA("Model") then
            return child
        end
    end
end
function fns.fn1335()
    local H7 = B1()
    local H8 = H7 and H7:FindFirstChild("PlotExtras")
    local H7_1 = H8
    if H8 then
        H8 = H7_1:FindFirstChild("ChestSlots")
    end
    return H8
end
function fns.fn1345()
    local EX = AQ()
    return not EX or EX.Enabled ~= true
end
function fns.fn1368()
    local J1_1
    local J0_1
    J0_1, J1_1 = AS()
    local Backpack = LocalPlayer:FindFirstChild("Backpack")
    local function J2(jd)
        if not jd then
            return nil
        end
        for i, child in jd:GetChildren() do
            local JP = (child:IsA("Tool"))
            if JP then
                local JQ = child:HasTag("Sword") or BF[child.Name]
                JP = JQ
            end
            if JP then
                return child
            end
        end
    end
    local J3 = J2(J1_1) or J2(Backpack)
    return J3
end
function fns.fn1384()
    if coroutine.status(Rg_7) ~= "dead" then
        pcall(task.cancel, Rg_7)
    end
end
function fns.fn1408(hd)
    if not Bc(hd) then
        return false
    end
    local IJ = Bu(hd)
    if IJ ~= nil then
        return IJ <= 0
    end
    return AV(hd)
end
function fns.onCrateType(qg)
    AU.SetCrateType(qg)
end
function fns.onAutoClaim(pQ)
    local SetAutoClaim = AU.SetAutoClaim
    local Nf = pQ == true
    local Ng = Options.ClaimMode and Options.ClaimMode.Value
    local Nh = Options.ClaimRarity and Options.ClaimRarity.Value
    local Ni = Options.ClaimPrice and Options.ClaimPrice.Value
    SetAutoClaim(Nf, Ng, Nh, Bw(Ni), BS(Options.ClaimSpecific))
end
local function fn1433(lJ, lK, lL, lM, lN)
    State.Enabled.AutoClaim = lJ == true
    local Ld = lK ~= ""
    local Le = type(lK) == "string" and Ld
    if Le then
        State.ClaimMode = lK
    end
    local Ld_1 = lL ~= ""
    local Le_1 = type(lL) == "string" and Ld_1
    if Le_1 then
        State.MinRarity = lL
    end
    if tonumber(lM) then
        State.MinPrice = math.max(0, lM)
    end
    if type(lN) == "table" then
        State.SpecificItems = lN
    end
    AU.SetAutoRoll(State.Enabled.AutoRoll)
end
local function fn1443()
    for k, v in Rg_16 do
        local Il = BJ(v)
        local Im = Il and not Bc(v)
        if Im then
            return true
        end
    end
    return false
end
local function onClaimPrice(p6)
    AU.SetClaimFilters(nil, nil, Bw(p6), nil)
end
local function fn1468(eU)
    local G7 = not AF() or not eU or not eU.Parent
    if G7 then
        return false
    elseif os.clock() - State.LastRemove < 0.25 then
        return false
    else
        State.LastRemove = os.clock()
        return A3(Bn.RemoveItemEvent, eU)
    end
end
local function onOnClientEvent2(mJ)
    if not AF() then
        return
    end
    if tonumber(mJ) then
        State.CrateSlots[mJ] = nil
    end
end
local function fn1492(cE)
    local E8_1
    local E7 = not cE
    local E7_1
    if E7 ~= false then
        E7 = os.clock() - State.InventoryAt < 0.35
    end
    if E7 then
        return State.Inventory
    end
    E7_1, E8_1 = AL(Bn.GetInventory)
    local E9 = E7_1 and type(E8_1) == "table"
    if E9 then
        State.Inventory = E8_1
        State.InventoryAt = os.clock()
    end
    return State.Inventory
end
local function fn1501(hz, hA)
    if type(hz) == "table" then
        State.WeaponInventory = hz
    end
    if type(hA) == "string" then
        State.EquippedWeapon = hA
    end
end
local function onAutoPlaceBest(pJ)
    AU.SetAutoPlace(pJ == true)
end
local function fn1505()
    gethui = A7
end
local function fn1515(hD)
    local IX_1
    local IW_1
    local IV = not hD
    local IV_1
    if IV ~= false then
        IV = os.clock() - State.LastWeaponRefresh < 1
    end
    if IV then
        return type(State.WeaponInventory) == "table"
    end
    State.LastWeaponRefresh = os.clock()
    IX_1, IV_1, IW_1 = AL(Bn.GetWeaponsInventory)
    if IX_1 then
        AO(IV_1, IW_1)
    end
    return IX_1 == true
end
local function fn1523()
    local Plots = Ci:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    local UserId = LocalPlayer.UserId
    for i, child in Plots:GetChildren() do
        if child:IsA("Model") then
            local attr = child:GetAttribute("OwnerId")
            local DR = attr == UserId or tonumber(attr) == UserId
            if DR then
                return child
            end
        end
    end
end
local function fn1540(l6)
    State.Enabled.AutoPlaceCrate = l6 == true
    AU.SetAutoBuyCrate(State.Enabled.AutoBuyCrate, State.CrateType)
end
local function fn1547(bo)
    local D6 = bo == ""
    local D7 = type(bo) ~= "string" or D6
    if D7 then
        return 0
    end
    return Be[bo] or 0
end
local function fn1562(l9)
    State.Enabled.AutoOpenCrate = l9 == true
    AU.SetAutoBuyCrate(State.Enabled.AutoBuyCrate, State.CrateType)
end
local function fn1563(ly)
    State.Enabled.AutoRoll = ly == true
    if Cl() then
        AD("Roll", 0.4, function()
            local K7 = State.Enabled.AutoClaim and A5()
            if K7 then
                return
            end
            if State.Enabled.AutoRoll then
                Br()
            end
        end)
    else
        Rg_13("Roll")
    end
end
Players = nil
An = nil
local Ao
Ap = nil
Aq = nil
Ar = nil
As = nil
At = nil
Au = nil
Av = nil
Aw = nil
Ax = nil
Ay = nil
Rg_7 = nil
AA = nil
AB = nil
AC = nil
AD = nil
AE = nil
AF = nil
AG = nil
AH = nil
AJ = nil
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
AU = nil
AV = nil
AW = nil
Rg_13 = nil
AZ = nil
A_ = nil
A0 = nil
A1 = nil
A2 = nil
A3 = nil
A4 = nil
A5 = nil
A6 = nil
A7 = nil
A8 = nil
local AI, AX
A9 = nil
Rg_1 = nil
Bb = nil
Bc = nil
Bd = nil
Be = nil
Bf = nil
Bg = nil
State = nil
Bi = nil
Bj = nil
Bk = nil
PlayerGui = nil
Rg_25 = nil
Bn = nil
Bp = nil
Bq = nil
Br = nil
LocalPlayer = nil
Bu = nil
Bv = nil
Bw = nil
Bx = nil
Rg_4 = nil
BA = nil
BC = nil
BD = nil
BF = nil
BG = nil
BI = nil
BJ = nil
Rg_31 = nil
BM = nil
BN = nil
CoreGui = nil
BP = nil
BQ = nil
BR = nil
BS = nil
BT = nil
BV = nil
Options = nil
local Bo, By, Lighting, BE, TeleportService, BK, GuiService
BX = nil
Rg_10 = nil
BZ = nil
B_ = nil
Toggles = nil
B1 = nil
B2 = nil
B3 = nil
B5 = nil
B6 = nil
Library = nil
B9 = nil
Ca = nil
Cd = nil
Cf = nil
Ch = nil
Ci = nil
PlotUpgradeCosts = nil
Ck = nil
Cl = nil
Rg_16 = nil
Cn = nil
Co = nil
Cp = nil
Cq = nil
local VirtualUser, SaveManager, UserInputService, ThemeManager, RunService, Cg
VirtualUser = nil
SaveManager = nil
UserInputService = nil
ThemeManager = nil
RunService = nil
Cg = nil
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, BZ, GuiService, CoreGui, TeleportService, Lighting, By, LocalPlayer, PlayerGui, A7 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local Rg_53 = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
if ((Players and TeleportService or (By or not Players)) and (not By and not A7 and (A7 and Players)) or (not By and not A7 or Players and VirtualUser) and ((not A7 or not PlayerGui) and (Players or VirtualUser))) and ((not A7 or not PlayerGui) and (not PlayerGui or VirtualUser) and (not A7 and not VirtualUser and (not TeleportService and TeleportService)) or (not PlayerGui or VirtualUser) and (not A7 and TeleportService) and (not Players and VirtualUser or (not VirtualUser or not Players))) or not (((Players and TeleportService or (By or not Players)) and (not By and not A7 and (A7 and Players)) or (not By and not A7 or Players and VirtualUser) and ((not A7 or not PlayerGui) and (Players or VirtualUser))) and ((not A7 or not PlayerGui) and (not PlayerGui or VirtualUser) and (not A7 and not VirtualUser and (not TeleportService and TeleportService)) or (not PlayerGui or VirtualUser) and (not A7 and TeleportService) and (not Players and VirtualUser or (not VirtualUser or not Players)))) then
    UserInputService = game:GetService("UserInputService")
else
    BZ = game:GetService("UserInputService")
end
VirtualUser = game:GetService("VirtualUser")
BZ = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
By = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local Rg_17 = "OuroborosDefendYourTreehouse"
A7 = fns.fn1183
if getgenv then
    getgenv().gethui = A7
end
AU, AF = nil, nil
pcall(fn1505)
local function Rg_36(v)
    local Do
    local Dp
    local Dn
    Dn = nil
    Do = nil
    Dp = nil
    local Dq = v ~= ""
    local Dr = type(v) == "string" and Dq
    assert(Dr, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    Do = getgenv()
    assert(type(Do) == "table", "getgenv did not return a table")
    local Dq_1 = Do[v]
    if Dq_1 ~= nil then
        local Dr_1 = type(Dq_1) == "table" and type(Dq_1.Unload) == "function"
        assert(Dr_1, "Namespace is occupied")
        Dq_1.Unload()
        assert(Do[v] == nil, "Previous instance did not release its namespace")
    end
    Dp = {}
    Dn = { State = {}, Unloaded = false }
    Dn.Track = function(D)
        assert(type(D) == "function", "Cleanup must be callable")
        if Dn.Unloaded then
            D()
        else
            table.insert(Dp, D)
        end
        return D
    end
    Dn.Unload = function()
        local Dg_1
        local Df_1
        if Dn.Unloaded then
            return
        end
        Dn.Unloaded = true
        local Dd = {}
        local Dk = #Dp
        local Dj = -1
        while false and Dk <= 1 or true and Dk >= 1 do
            local Dl = Dk
            local De_1 = table.remove(Dp, Dl)
            Df_1, Dg_1 = pcall(De_1)
            if not Df_1 then
                table.insert(Dd, tostring(Dg_1))
            end
            Dk += Dj
        end
        table.clear(Dn.State)
        if #Dd > 0 then
            error("Cleanup incomplete: " .. table.concat(Dd, "; "), 0)
        end
        if Do[v] == Dn then
            Do[v] = nil
        end
    end
    Do[v] = Dn
    return Dn
end
local function Rg_42(Q, R)
    local Dx = type(Q) == "table" and type(Q.Track) == "function"
    assert(Dx, "FeatureAPI required")
    local Dx_1 = type(R) == "table" and type(R.OnUnload) == "function"
    assert(Dx_1, "UI library required")
    assert(type(R.Unload) == "function", "UI unload required")
    Q.Track(function()
        if not R.Unloaded then
            R:Unload()
        end
    end)
    R:OnUnload(function()
        Q.Unload()
    end)
end
AU = Rg_36(Rg_17)
local Rg_56 = fns.fn150
AF = fns.fn694
local Rg_21 = type(fireproximityprompt) == "function" and fireproximityprompt
Rg_36 = Rg_21 or nil
Ap, Rg_2, Ci, Rg_23, Rg_21, Rg_39, BX, BR, Rg_27, BF, Rg_44, Bv, Bn, Be = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Rg_17 = 15
repeat
    Rg_5 = (Rg_17 * 5 + 0) % 11 + 1
    if Rg_5 <= 6 then
        if Rg_5 <= 3 then
            if Rg_5 <= 2 then
                if Rg_5 <= 1 then
                    Rg_47 = {
                        "vthdlvw",
                        "cwop",
                        "hfdtqnz",
                        "bvbaoypi",
                        "txplltrztjc",
                        "dlwru",
                        "dvbnxvaf",
                        "veovhamh",
                        "guy",
                        "noxovpb",
                        "kuswyevkvkk",
                        "arkzf",
                        "cng",
                        "pzp",
                        "etcxutvjdg"
                    }
                    if Rg_47[(Rg_17 * 8 + 26) % 15 + 1] < Rg_47[(Rg_17 * 8 + 26) % 15 + 1] then
                        By = Ci(Rg_56)
                    else
                        Ci = Rg_56(By)
                    end
                    Rg_17 = (Rg_17 + 42) % 88
                else
                    Rg_47 = { "gemnmhy", "nxhwdspwdho", "gienaziuqa", "ateb", "ipmkhgqvigyy", "pmjcioevwywm", "dhpmn", "bnzh" }
                    if Rg_47[(Rg_17 * 3 + 109) % 8 + 1] <= Rg_47[(Rg_17 * 3 + 109) % 8 + 1] then
                        Rg_23 = Rg_56(Rg_2:WaitForChild("Events"))
                    else
                        Rg_2 = Rg_23(Rg_56:WaitForChild("Events"))
                    end
                    Rg_17 = (Rg_17 + 9) % 88
                end
            else
                Rg_47 = (vector.create((Rg_17 * 3 + 9) % 11 + 1, (Rg_17 * 1 + 9) % 13 + 1, (Rg_17 * 12 + 2) % 17 + 1))
                Rg_29 = (vector.create((Rg_17 * 7 + 9) % 11 + 1, (Rg_17 * 10 + 8) % 13 + 1, (Rg_17 * 1 + 8) % 17 + 1))
                Rg_8 = (vector.create((Rg_17 * 3 + 3) % 5 + 1, (Rg_17 * 4 + 2) % 7 + 1, (Rg_17 * 4 + 6) % 9 + 1))
                if math.abs((vector.angle(Rg_47, Rg_29, Rg_8))) - math.abs((vector.angle(Rg_29, Rg_47, Rg_8))) == 4 then
                    Rg_2 = Rg_21(Rg_56:WaitForChild("Functions"))
                else
                    Rg_21 = Rg_56(Rg_2:WaitForChild("Functions"))
                end
                Rg_17 = (Rg_17 + 53) % 88
            end
        elseif Rg_5 <= 5 then
            if Rg_5 <= 4 then
                Rg_47 = {
                    "weklmtvy",
                    "ogzejfdwfoi",
                    "zpegdsg",
                    "shuzizmmno",
                    "otwrq",
                    "uxlrasxtscqs",
                    "znhzdgnifjcn",
                    "pvlqzfpn",
                    "mvcwnvdjlqp",
                    "lybtmk",
                    "jywvqaj",
                    "ibhch",
                    "akzxnhloeoji",
                    "bkppefaw"
                }
                if Rg_47[(Rg_17 * 65 + 46) % 14 + 1] <= Rg_47[(Rg_17 * 65 + 46) % 14 + 1] then
                    Rg_39 = Rg_56(Rg_2:WaitForChild("Modules"))
                else
                    Rg_2 = Rg_39(Rg_56:WaitForChild("Modules"))
                end
                Rg_17 = (Rg_17 + 9) % 88
            else
                Rg_47 = (vector.create((Rg_17 * 6 + 1) % 11 + 1, (Rg_17 * 1 + 6) % 13 + 1, (Rg_17 * 8 + 4) % 17 + 1))
                local SM = vector.floor(Rg_47) + vector.ceil(Rg_47 * -1)
                if vector.dot(SM, SM) == 4 then
                    Rg_2 = BX(Rg_56:WaitForChild("Turrets"))
                else
                    BX = Rg_56(Rg_2:WaitForChild("Turrets"))
                end
                Rg_17 = (Rg_17 + 42) % 88
            end
        else
            Rg_47 = (vector.create((Rg_17 * 4 + 9) % 11 + 1, (Rg_17 * 1 + 5) % 13 + 1, (Rg_17 * 4 + 13) % 17 + 1))
            local U8 = vector.floor(Rg_47) + vector.ceil(Rg_47 * -1)
            if vector.dot(U8, U8) == 0 then
                BR = require(Rg_56(Rg_39:WaitForChild("ItemConfigurations")))
            else
                Rg_39 = require(BR(Rg_56:WaitForChild("ItemConfigurations")))
            end
            Rg_17 = (Rg_17 + 86) % 88
        end
    elseif Rg_5 <= 9 then
        if Rg_5 <= 8 then
            if Rg_5 <= 7 then
                Rg_47 = (vector.create((Rg_17 * 5 + 2) % 11 + 1, (Rg_17 * 5 + 9) % 13 + 1, (Rg_17 * 6 + 14) % 17 + 1))
                Rg_29 = (vector.create((Rg_17 * 3 + 9) % 11 + 1, (Rg_17 * 8 + 11) % 13 + 1, (Rg_17 * 13 + 16) % 17 + 1))
                Rg_8 = (vector.create((Rg_17 * 4 + 4) % 11 + 1, (Rg_17 * 6 + 13) % 13 + 1, (Rg_17 * 6 + 16) % 17 + 1))
                if vector.dot(vector.cross(Rg_47, Rg_29), Rg_8) == vector.dot(vector.cross(Rg_29, Rg_8), Rg_47) then
                    Rg_27 = require(Rg_56(Rg_39:WaitForChild("UpgradeConfigurations")))
                else
                    Rg_39 = require(Rg_27(Rg_56:WaitForChild("UpgradeConfigurations")))
                end
                Rg_17 = (Rg_17 + 31) % 88
            else
                if (Rg_17 * 2 + 7) * 13 % 3 == ((Rg_17 * 2 + 7) * 13 + 3) % 3 then
                    BF = require(Rg_56(Rg_39:WaitForChild("SwordConfigurations")))
                    Rg_44 = require(Rg_56(Rg_39:WaitForChild("RandomizerConfigurations")))
                    Bv = require(Rg_56(Rg_39:WaitForChild("CrateConfigurations")))
                    Bn = {
                        ToggleWaveState = Rg_56(Rg_23:WaitForChild("ToggleWaveState")),
                        WaveStateChanged = Rg_56(Rg_23:WaitForChild("WaveStateChanged")),
                        WaveUIStateChanged = Rg_56(Rg_23:WaitForChild("WaveUIStateChanged")),
                        SetAutoWave = Rg_56(Rg_23:WaitForChild("SetAutoWave")),
                        PlaceItemEvent = Rg_56(Rg_23:WaitForChild("PlaceItemEvent")),
                        RemoveItemEvent = Rg_56(Rg_23:WaitForChild("RemoveItemEvent")),
                        InventoryUpdated = Rg_56(Rg_23:WaitForChild("InventoryUpdated")),
                        RandomizerRoll = Rg_56(Rg_23:WaitForChild("RandomizerRoll")),
                        RandomizerPickup = Rg_56(Rg_23:WaitForChild("RandomizerPickup")),
                        UpgradeRolls = Rg_56(Rg_23:WaitForChild("UpgradeRolls")),
                        UpgradeLuck = Rg_56(Rg_23:WaitForChild("UpgradeLuck")),
                        UpgradePlotEvent = Rg_56(Rg_23:WaitForChild("UpgradePlotEvent")),
                        PurchaseCrate = Rg_56(Rg_23:WaitForChild("PurchaseCrate")),
                        OpenCrate = Rg_56(Rg_23:WaitForChild("OpenCrate")),
                        CrateSlotUpdated = Rg_56(Rg_23:WaitForChild("CrateSlotUpdated")),
                        CrateOpened = Rg_56(Rg_23:WaitForChild("CrateOpened")),
                        UpdateCrateStocks = Rg_56(Rg_23:WaitForChild("UpdateCrateStocks")),
                        WeaponsInventoryUpdated = Rg_56(Rg_23:WaitForChild("WeaponsInventoryUpdated")),
                        SwordHitEvent = Rg_56(Rg_23:WaitForChild("SwordHitEvent")),
                        EquipWeapon = Rg_56(Rg_23:WaitForChild("EquipWeapon")),
                        GetInventory = Rg_56(Rg_21:WaitForChild("GetInventory")),
                        GetWeaponsInventory = Rg_56(Rg_21:WaitForChild("GetWeaponsInventory")),
                        GetCrateShopStocks = Rg_56(Rg_21:WaitForChild("GetCrateShopStocks"))
                    }
                else
                    Bv = require(Bn(Rg_56:WaitForChild("SwordConfigurations")))
                    Rg_21 = require(Bn(Rg_56:WaitForChild("RandomizerConfigurations")))
                    BF = require(Bn(Rg_56:WaitForChild("CrateConfigurations")))
                    Rg_23 = {
                        RandomizerRoll = Bn(Rg_44:WaitForChild("RandomizerRoll")),
                        GetCrateShopStocks = Bn(Rg_39:WaitForChild("GetCrateShopStocks")),
                        CrateOpened = Bn(Rg_44:WaitForChild("CrateOpened")),
                        WeaponsInventoryUpdated = Bn(Rg_44:WaitForChild("WeaponsInventoryUpdated")),
                        CrateSlotUpdated = Bn(Rg_44:WaitForChild("CrateSlotUpdated")),
                        UpgradeRolls = Bn(Rg_44:WaitForChild("UpgradeRolls")),
                        SwordHitEvent = Bn(Rg_44:WaitForChild("SwordHitEvent")),
                        WaveStateChanged = Bn(Rg_44:WaitForChild("WaveStateChanged")),
                        UpgradePlotEvent = Bn(Rg_44:WaitForChild("UpgradePlotEvent")),
                        PurchaseCrate = Bn(Rg_44:WaitForChild("PurchaseCrate")),
                        OpenCrate = Bn(Rg_44:WaitForChild("OpenCrate")),
                        EquipWeapon = Bn(Rg_44:WaitForChild("EquipWeapon")),
                        GetWeaponsInventory = Bn(Rg_39:WaitForChild("GetWeaponsInventory")),
                        ToggleWaveState = Bn(Rg_44:WaitForChild("ToggleWaveState")),
                        GetInventory = Bn(Rg_39:WaitForChild("GetInventory")),
                        PlaceItemEvent = Bn(Rg_44:WaitForChild("PlaceItemEvent")),
                        InventoryUpdated = Bn(Rg_44:WaitForChild("InventoryUpdated")),
                        UpdateCrateStocks = Bn(Rg_44:WaitForChild("UpdateCrateStocks")),
                        UpgradeLuck = Bn(Rg_44:WaitForChild("UpgradeLuck")),
                        RemoveItemEvent = Bn(Rg_44:WaitForChild("RemoveItemEvent")),
                        WaveUIStateChanged = Bn(Rg_44:WaitForChild("WaveUIStateChanged")),
                        RandomizerPickup = Bn(Rg_44:WaitForChild("RandomizerPickup")),
                        SetAutoWave = Bn(Rg_44:WaitForChild("SetAutoWave"))
                    }
                end
                Rg_17 = (Rg_17 + 86) % 88
            end
        else
            if (Rg_17 * 2 + 8) * 7 % 3 == ((Rg_17 * 2 + 8) * 7 + 3) % 3 then
                Be = {
                    Common = 1,
                    Uncommon = 2,
                    Rare = 3,
                    Epic = 4,
                    Legendary = 5,
                    Mythical = 6,
                    Mythic = 6,
                    Secret = 7,
                    OP = 8,
                    Exotic = 9,
                    Transcended = 10,
                    Celestial = 11,
                    Divine = 12,
                    Eternal = 13,
                    Prismatic = 14,
                    Godly = 15
                }
            else
                BX = {
                    Uncommon = 2,
                    Godly = 15,
                    Common = 1,
                    OP = 8,
                    Mythic = 6,
                    Divine = 12,
                    Mythical = 6,
                    Eternal = 13,
                    Rare = 3,
                    Epic = 4,
                    Exotic = 9,
                    Legendary = 5,
                    Secret = 7,
                    Prismatic = 14,
                    Celestial = 11,
                    Transcended = 10
                }
            end
            Rg_17 = (Rg_17 + 64) % 88
        end
    elseif Rg_5 <= 10 then
        Rg_5 = {
            "oog",
            "cvgq",
            "klr",
            "rzkpddqziu",
            "imqhuq",
            "ylmy",
            "zsv",
            "iswomegpos",
            "erkxhcqc",
            "xyfs",
            "ebrfu",
            "fpcicm"
        }
        local U4 = Rg_17
        Rg_47 = Rg_5[U4 % 12 + 1]
        if Rg_47:len() <= Rg_47:reverse():rep(U4 % 3 + 2):len() then
            Ap = Rg_36
        else
            Rg_36 = Ap
        end
        Rg_17 = (Rg_17 + 86) % 88
    else
        if (Rg_17 * 2 + 8) * 13 % 3 == ((Rg_17 * 2 + 8) * 13 + 1) % 3 then
            Rg_53 = Rg_2(Rg_56)
        else
            Rg_2 = Rg_56(Rg_53)
        end
        Rg_17 = (Rg_17 + 53) % 88
    end
until (Rg_17 * 87 + 26) % 88 == 66
Rg_36 = Rg_44.Rarities
if type(Rg_36) == "table" then
    for k, v in Rg_36 do
        Rg_36 = type(v) == "table" and type(v.Name) == "string"
        if Rg_36 then
            Rg_36 = v.Name
            Rg_17 = math.max
            Rg_53 = Be[v.Name] or 0
            Rg_39 = tonumber(k) or 0
            Be[Rg_36] = Rg_17(Rg_53, Rg_39)
        end
    end
end
Rg_23, Rg_56 = nil, nil
Rg_21 = 2
repeat
    Rg_36 = {
        "nesqd",
        "grevwyguj",
        "medocu",
        "fibxgop",
        "cwlmmt",
        "tovajasr",
        "hqc",
        "teyo",
        "dniffo",
        "jaibxo"
    }
    if Rg_36[(Rg_21 * 87 + 86) % 10 + 1] <= Rg_36[(Rg_21 * 87 + 86) % 10 + 1] then
        Rg_23 = {
            "Common",
            "Uncommon",
            "Rare",
            "Epic",
            "Legendary",
            "Mythical",
            "Secret",
            "OP",
            "Exotic",
            "Transcended",
            "Celestial",
            "Divine",
            "Eternal",
            "Prismatic",
            "Godly"
        }
        Rg_56 = {}
    else
        Rg_56 = {
            "Mythical",
            "Divine",
            "Transcended",
            "Eternal",
            "Epic",
            "Uncommon",
            "Secret",
            "OP",
            "Prismatic",
            "Common",
            "Legendary",
            "Rare",
            "Celestial",
            "Godly",
            "Exotic"
        }
        Rg_23 = {}
    end
    Rg_21 = (Rg_21 + 3) % 4
until (Rg_21 * 3 + 3) % 4 == 2
for k in pairs(BR) do
    if type(k) == "string" then
        Rg_56[#Rg_56 + 1] = k
    end
end
AK = nil
table.sort(Rg_56)
AK = 400
Rg_36 = tonumber(Rg_27.MaxRolls) or 6
AG = Rg_36
Rg_36 = tonumber(Rg_27.MaxLuck) or 200
AC = Rg_36
Rg_36 = tonumber(Rg_27.MaxPlotLevel) or 7
At, Aq, Co, PlotUpgradeCosts, Rg_53 = nil, nil, nil, nil, nil
Rg_17 = 4
repeat
    Rg_39 = (Rg_17 * 1 + 0) % 2 + 1
    if Rg_39 <= 1 then
        Rg_39 = (vector.create((Rg_17 * 7 + 4) % 11 + 1, (Rg_17 * 5 + 11) % 13 + 1, (Rg_17 * 10 + 13) % 17 + 1))
        Rg_21 = (vector.create((Rg_17 * 4 + 9) % 11 + 1, (Rg_17 * 2 + 4) % 13 + 1, (Rg_17 * 10 + 13) % 17 + 1))
        Rg_2 = (vector.create((Rg_17 * 3 + 7) % 11 + 1, (Rg_17 * 9 + 13) % 13 + 1, (Rg_17 * 15 + 3) % 17 + 1))
        if vector.dot(vector.cross(Rg_39, Rg_21), Rg_2) == vector.dot(vector.cross(Rg_21, Rg_2), Rg_39) then
            At = Rg_36
            Aq = Rg_27.RollUpgradeCosts
            Co = Rg_27.LuckUpgradeCosts
            PlotUpgradeCosts = Rg_27.PlotUpgradeCosts
        else
            Rg_36 = PlotUpgradeCosts
            Rg_27 = Aq.RollUpgradeCosts
            At = Aq.LuckUpgradeCosts
            Co = Aq.PlotUpgradeCosts
        end
        Rg_17 = (Rg_17 + 5) % 8
    else
        Rg_39 = {
            "ggzkhibfgnit",
            "fnjriwtoiww",
            "xzol",
            "lqkxgxaxjgeg",
            "vxervziyob",
            "tfoebnfvgtm",
            "pxezvm",
            "iebbrrb",
            "xjotl",
            "pltliqcf"
        }
        if Rg_39[(Rg_17 * 48 + 5) % 10 + 1] <= Rg_39[(Rg_17 * 48 + 5) % 10 + 1] then
            Rg_53 = {}
        else
            Aq = {}
        end
        Rg_17 = (Rg_17 + 5) % 8
    end
until (Rg_17 * 7 + 1) % 8 == 3
Rg_39 = {}
for k, v in pairs(Bv) do
    Rg_36 = type(k) == "string" and type(v) == "table"
    if Rg_36 then
        Rg_36 = #Rg_39 + 1
        Rg_17 = tonumber(v.Price) or 0
        Rg_39[Rg_36] = { Name = k, Price = Rg_17 }
    end
end
table.sort(Rg_39, fns.fn1034)
for i, v in ipairs(Rg_39) do
    Rg_53[#Rg_53 + 1] = v.Name
end
State = nil
Rg_17 = { "Plot", "Luck", "Extra Rolls" }
State = AU.State
State.Enabled = {
    AutoStart = false,
    AutoStop = false,
    KillAura = false,
    AutoPlace = false,
    AutoReplace = false,
    AutoRoll = false,
    AutoClaim = false,
    AutoBuyCrate = false,
    AutoPlaceCrate = false,
    AutoOpenCrate = false,
    AutoEquipWeapon = false,
    AutoBuyUpgrades = false
}
State.Tokens = { Wave = 0, Place = 0, Roll = 0, Aura = 0, Crate = 0, Upgrade = 0, Equip = 0 }
State.Fighting = false
Rg_36 = (tonumber(LocalPlayer:GetAttribute("CurrentWave")))
local Rg_35 = if Rg_36 then 1 else 0
local Rg_12 = 2632 * Rg_35 + 1531 * (1 - Rg_35)
local Rg_51 = 2860 * Rg_35 + 3268 * (1 - Rg_35)
if not ((Rg_12 * 3125 + Rg_51 * 3777 + Rg_12 * Rg_51) % 16777213 == 9777527) then
    Rg_36 = 1
end
State.Wave = Rg_36
State.StopWave = 50
State.ClaimMode = "Rarity"
State.MinRarity = "Rare"
State.MinPrice = 1000
State.SpecificItems = {}
State.Inventory = {}
State.LastWaveToggle = 0
State.LastPlace = 0
State.LastRemove = 0
State.LastRoll = 0
State.LastClaim = 0
State.LastBuyCrate = 0
State.LastOpenCrate = 0
State.LastUpgrade = 0
State.LastWeaponRefresh = 0
State.LastHit = 0
State.LastEquip = 0
State.AutoWaveOn = false
State.InventoryAt = 0
Rg_36 = Rg_53[1]
local Rg_38 = if Rg_36 then 1 else 0
local Rg_15 = 4020 * Rg_38 + 2487 * (1 - Rg_38)
local Rg_52 = 637 * Rg_38 + 686 * (1 - Rg_38)
if not ((Rg_15 * 2481 + Rg_52 * 2086 + Rg_15 * Rg_52) % 16777213 == 13863142) then
    Rg_36 = "Basic"
end
A8, Rg_16, A3, AL, B1, Rg_1, AT, AE, Cq, B3, Bq, A_, AH, An, BI, Bb, AQ, BV, A1, AS, B9, Bg, AW, AB, BM, A9, AP, AZ, BN, As, Rg_4, Cn, BA, AJ, Cd, Bf, Ar, BT, Bj, Cp, Bx, A5, Br, Cf, BJ, Bc, AR, Ch, Rg_31, Bu, AV, AA, Ca, Bi, AO, Au, BG, A4, B2, Bk, A6, B6, BD, Bd, A0, AI, Bo, Av, A2, Aw, Bp, AD, Rg_13, AM, Ax, Cl, B5, BP, BC = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
State.CrateType = Rg_36
State.CrateStocks = {}
State.CrateSlots = {}
State.UpgradeSet = {}
State.WeaponInventory = {}
State.EquippedWeapon = ""
A8 = {}
A3 = function(aS, ...)
    local DF = not AF()
    local DJ = if DF then 1 else 0
    local DH = 1025 * DJ + 238 * (1 - DJ)
    local DI = 2883 * DJ + 407 * (1 - DJ)
    if not ((DH * 155 + DI * 2071 + DH * DI) % 16777213 == 9084643) then
        DF = typeof(aS) ~= "Instance"
    end
    if DF then
        return false
    end
    local DF_1 = pcall(function(...)
        aS:FireServer(...)
    end, ...)
    return DF_1 == true
end
AL = function(aY, ...)
    local DN_1
    local DM_1
    local DL_1
    local DK = not AF() or typeof(aY) ~= "Instance"
    local DK_1
    if DK then
        return false, nil
    end
    DK_1, DN_1, DL_1, DM_1 = pcall(function(...)
        return aY:InvokeServer(...)
    end, ...)
    if not DK_1 then
        return false, nil
    end
    return true, DN_1, DL_1, DM_1
end
B1 = fn1523
Rg_1 = fns.fn1120
AT = fns.fn325
AE = fn1547
Cq = fns.fn1153
B3 = fns.fn1228
Bq = fns.fn188
A_ = fns.fn226
AH = fns.fn893
An = fns.fn96
BI = fns.fn245
Bb = fns.fn598
AQ = fns.fn241
BV = fns.fn1084
A1 = fns.fn1345
AS = fns.fn936
B9 = fn1492
Bg = fns.fn436
AW = fns.fn1163
AB = fns.fn711
BM = fns.fn200
A9 = fns.fn781
AP = fns.fn367
AZ = fns.fn881
BN = fns.fn1261
As = fns.fn153
Rg_4 = fns.fn23
Cn = fns.fn1308
BA = fns.fn587
AJ = fn1468
Cd = fns.fn633
Bf = fns.fn637
Ar = fns.fn629
BT = fns.fn1048
Bj = fns.fn699
Cp = fns.fn1100
Bx = fns.fn419
A5 = fns.fn581
Br = fns.fn312
Rg_16 = { 2, 3, 4 }
Cf = fns.fn1335
BJ = fns.fn548
Bc = fns.fn1330
AR = fn1443
if (not Rg_4 or not BM) and (A3 or not Rg_4) or BM and false and (BM or BM) or not ((not Rg_4 or not BM) and (A3 or not Rg_4) or BM and false and (BM or BM)) then
    Ch = fns.fn725
else
    A0 = fns.fn725
end
Rg_31 = fns.fn1325
Bu = fns.fn253
AV = fns.fn905
AA = fns.fn1408
Ca = fns.fn380
Bi = fns.fn423
AO = fn1501
Au = fn1515
BG = fns.fn906
A4 = fns.fn621
B2 = fns.fn489
Bk = fns.fn825
A6 = fns.fn1011
B6 = fns.fn1075
BD = fns.fn822
Bd = fns.fn777
A0 = fns.fn488
AI = fns.fn1368
Bo = fns.fn145
Av = function()
    local Kh
    local Kj_1
    local Ki_1
    Ki_1, Kj_1, Kh = AS()
    if not Kh then
        return nil
    end
    local Kg = AI()
    if Kg and Kg.Parent == Kj_1 then
        return Kg
    end
    if os.clock() - State.LastEquip >= 1.5 then
        State.LastEquip = os.clock()
        A3(Bn.EquipWeapon, Bo())
    end
    Kg = AI()
    if Kg and Kg.Parent ~= Kj_1 then
        pcall(function()
            Kh:EquipTool(Kg)
        end)
        Kg = AI()
    end
    if Kg and Kg.Parent == Kj_1 then
        return Kg
    end
end
A2 = fns.fn481
if ((Rg_1 or not Rg_1) and (Rg_1 or Bu) or (not Rg_1 or not Rg_1) and (Rg_1 and not Bu)) and not ((Rg_1 or not Rg_1) and (Rg_1 or Bu) or (not Rg_1 or not Rg_1) and (Rg_1 and not Bu)) then
    BN = fns.fn271
else
    Aw = fns.fn271
end
Bp = fns.fn563
AD = function(kl, km, kn)
    State.Tokens[kl] += 1
    local kp = State.Tokens[kl]
    local kA = task.spawn(function()
        while true do
            local KQ = AF() and State.Tokens[kl] == kp
            if KQ then
                if not AF() then
                    break
                end
                pcall(kn)
                local KQ_1 = not AF() or State.Tokens[kl] ~= kp
                if KQ_1 then
                    break
                end
                task.wait(km)
                continue
            end
            break
        end
    end)
    AU.Track(function()
        State.Tokens[kl] += 1
        if coroutine.status(kA) ~= "dead" then
            pcall(task.cancel, kA)
        end
    end)
end
Rg_13 = fns.fn418
AM = fns.fn135
Ax = fns.fn457
Cl = fns.fn1045
B5 = fns.fn947
BP = fns.fn1184
BC = fns.fn568
AU.SetAutoStart = fns.fn1039
AU.SetAutoStop = fns.fn66
AU.SetStopWave = fns.fn658
AU.SetKillAura = fns.fn133
AU.SetAutoPlace = fns.fn1108
AU.SetAutoReplace = fns.fn1030
AU.SetAutoRoll = fn1563
AU.SetAutoClaim = fn1433
AU.SetClaimFilters = fns.fn186
AU.SetCrateType = fns.fn1026
AU.SetAutoBuyCrate = fns.fn441
AU.SetAutoPlaceCrate = fn1540
AU.SetAutoOpenCrate = fn1562
AU.SetAutoEquipWeapon = fns.fn505
AU.SetAutoBuyUpgrades = fns.fn507
AU.Track(fns.fn679)
Rg_10 = nil
Rg_21 = 1
repeat
    Rg_36 = (Rg_21 * 1 + 0) % 2 + 1
    if Rg_36 <= 1 then
        if Rg_21 * 113264633 + 7 + 5 <= Rg_21 * 113264633 + 7 + 5 + 1 then
            Rg_10[#Rg_10 + 1] = Bn.WaveStateChanged.OnClientEvent:Connect(fns.onOnClientEvent7)
            Rg_10[#Rg_10 + 1] = Bn.WaveUIStateChanged.OnClientEvent:Connect(fns.onOnClientEvent6)
            Rg_10[#Rg_10 + 1] = Bn.InventoryUpdated.OnClientEvent:Connect(fns.onOnClientEvent5)
            Rg_10[#Rg_10 + 1] = Bn.UpdateCrateStocks.OnClientEvent:Connect(fns.onOnClientEvent4)
            Rg_10[#Rg_10 + 1] = Bn.CrateSlotUpdated.OnClientEvent:Connect(fns.onOnClientEvent3)
            Rg_10[#Rg_10 + 1] = Bn.CrateOpened.OnClientEvent:Connect(onOnClientEvent2)
            Rg_10[#Rg_10 + 1] = Bn.WeaponsInventoryUpdated.OnClientEvent:Connect(fns.onOnClientEvent)
            Rg_10[#Rg_10 + 1] = LocalPlayer:GetAttributeChangedSignal("CurrentWave"):Connect(fns.fn1132)
            Bi()
            Au(true)
            pcall(fns.fn1018)
            AU.Track(fns.fn1009)
        else
            Bi[#Bi + 1] = LocalPlayer.WaveStateChanged.OnClientEvent:Connect(fns.onOnClientEvent7)
            Bi[#Bi + 1] = LocalPlayer.WaveUIStateChanged.OnClientEvent:Connect(fns.onOnClientEvent6)
            Bi[#Bi + 1] = LocalPlayer.InventoryUpdated.OnClientEvent:Connect(fns.onOnClientEvent5)
            Bi[#Bi + 1] = LocalPlayer.UpdateCrateStocks.OnClientEvent:Connect(fns.onOnClientEvent4)
            Bi[#Bi + 1] = LocalPlayer.CrateSlotUpdated.OnClientEvent:Connect(fns.onOnClientEvent3)
            Bi[#Bi + 1] = LocalPlayer.CrateOpened.OnClientEvent:Connect(onOnClientEvent2)
            Bi[#Bi + 1] = LocalPlayer.WeaponsInventoryUpdated.OnClientEvent:Connect(fns.onOnClientEvent)
            Bi[#Bi + 1] = Rg_10:GetAttributeChangedSignal("CurrentWave"):Connect(fns.fn1132)
            AU()
            Bn(true)
            pcall(fns.fn1018)
            Au.Track(fns.fn1009)
        end
        Rg_21 = (Rg_21 + 7) % 16
    else
        if (Rg_21 * 2 + 2) * 10 % 3 == ((Rg_21 * 2 + 2) * 10 + 2) % 3 then
            Rg_10 = {}
        else
            Rg_10 = {}
        end
        Rg_21 = (Rg_21 + 1) % 16
    end
until (Rg_21 * 3 + 3) % 16 == 14
Ay, Rg_39 = nil, nil
Rg_36 = 3
repeat
    Rg_21 = (Rg_36 * 1 + 0) % 2 + 1
    if Rg_21 <= 1 then
        Rg_21 = (vector.create((Rg_36 * 6 + 4) % 11 + 1, (Rg_36 * 1 + 4) % 13 + 1, (Rg_36 * 1 + 6) % 17 + 1))
        Rg_2 = (vector.create((Rg_36 * 1 + 6) % 11 + 1, (Rg_36 * 11 + 6) % 13 + 1, (Rg_36 * 8 + 4) % 17 + 1))
        Rg_44 = (vector.create((Rg_36 * 4 + 6) % 5 + 1, (Rg_36 * 2 + 5) % 7 + 1, (Rg_36 * 1 + 7) % 9 + 1))
        if math.abs((vector.angle(Rg_21, Rg_2, Rg_44))) - math.abs((vector.angle(Rg_2, Rg_21, Rg_44))) == 3 then
            pcall(fns.fn283)
            Ay = {}
        else
            pcall(fns.fn283)
            Rg_39 = {}
        end
        Rg_36 = (Rg_36 + 7) % 16
    else
        Rg_21 = {
            "rekf",
            "ozmgbkqjzy",
            "xtlowlll",
            "uise",
            "nitcbatfqmv",
            "vtlbmcatehl",
            "fpwhdcj",
            "uya",
            "onnwocdft",
            "qrdoxadeiu",
            "uiarch"
        }
        local Vf = Rg_36
        Rg_2 = Rg_21[Vf % 11 + 1]
        if Rg_2:len() >= Rg_2:reverse():rep(Vf % 3 + 2):len() then
            Rg_39 = "Defend Your Treehouse"
        else
            Ay = "Defend Your Treehouse"
        end
        Rg_36 = (Rg_36 + 9) % 16
    end
until (Rg_36 * 15 + 10) % 16 == 7
if type(getgenv) ~= "function" then
    Rg_36 = 0
    repeat
        if (Rg_36 * 2 + 9) * 16 % 3 == ((Rg_36 * 2 + 9) * 16 + 5) % 3 then
            Rg_39[#Rg_39 + 1] = "getgenv"
        else
            Rg_39[#Rg_39 + 1] = "getgenv"
        end
        Rg_36 = (Rg_36 + 3) % 4
    until (Rg_36 * 3 + 3) % 4 == 0
end
if type(loadstring) ~= "function" then
    Rg_36 = 0
    repeat
        if (not Rg_36 and not Rg_36 or (not Rg_36 or Rg_36)) and (not Rg_36 and Rg_36 or (not Rg_36 or not Rg_36)) or not ((not Rg_36 and not Rg_36 or (not Rg_36 or Rg_36)) and (not Rg_36 and Rg_36 or (not Rg_36 or not Rg_36))) then
            Rg_39[#Rg_39 + 1] = "loadstring"
        else
            Rg_39[#Rg_39 + 1] = "loadstring"
        end
        Rg_36 = (Rg_36 + 5) % 8
    until (Rg_36 * 7 + 7) % 8 == 2
end
if typeof(game.HttpGet) ~= "function" then
    Rg_36 = 6
    repeat
        Rg_21 = {
            "vqhbrlgsggit",
            "vyfpopri",
            "lfklszdvot",
            "vkhmggfu",
            "kmuuzsy",
            "lpaljov",
            "lvnrdwlt",
            "tdblwdqzh",
            "heioiambog",
            "bei",
            "jsygvyipuwgb",
            "rdvwlk"
        }
        if Rg_21[(Rg_36 * 42 + 10) % 12 + 1] <= Rg_21[(Rg_36 * 42 + 10) % 12 + 1] then
            Rg_39[#Rg_39 + 1] = "HttpGet"
        else
            Rg_39[#Rg_39 + 1] = "HttpGet"
        end
        Rg_36 = (Rg_36 + 0) % 8
    until (Rg_36 * 5 + 6) % 8 == 4
end
Rg_36 = #Rg_39 == 0 and "available"
Rg_21 = Rg_36
if not Rg_21 then
    Rg_36 = 3
    repeat
        Rg_2 = {
            "zhkuwufijfc",
            "wkfkts",
            "wehlbnwuhyf",
            "cjpfzak",
            "vjkc",
            "lwhrpzkqf",
            "wslxtqyimio",
            "yfzrnsn",
            "ipkqacjg",
            "zrzqsysbsoq",
            "dapfawzpe",
            "lufdojvhovg"
        }
        local Vs = Rg_36
        Rg_44 = Rg_2[Vs % 12 + 1]
        if Rg_44:len() <= Rg_44:reverse():rep(Vs % 3 + 2):len() then
            Rg_21 = "missing " .. table.concat(Rg_39, ", ")
        else
            Rg_39 = "missing " .. table.concat(Rg_21, ", ")
        end
        Rg_36 = (Rg_36 + 3) % 4
    until (Rg_36 * 3 + 2) % 4 == 0
end
Cg, Library = nil, nil
Cg = Rg_21
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
assert(type(Library) == "table", "UI library failed to load")
Rg_42(AU, Library)
if type(setthreadidentity) == "function" then
    pcall(setthreadidentity, 8)
end
Rg_7, B_ = nil, nil
Rg_36 = 12
repeat
    Rg_39 = (Rg_36 * 1 + 1) % 2 + 1
    if Rg_39 <= 1 then
        if (Rg_36 * 2 + 2) * 10 % 3 == ((Rg_36 * 2 + 2) * 10 + 7) % 3 then
            AU.Track(fns.fn1384)
        else
            AU.Track(fns.fn1384)
        end
        Rg_36 = (Rg_36 + 5) % 16
    else
        Rg_39 = {
            "vaexwxsy",
            "sykmojud",
            "ilfofagnotsa",
            "vqmwrvaqdcap",
            "zgnnqfhi",
            "cgztztntyrsq",
            "pwadvvez",
            "zopticv"
        }
        if Rg_39[(Rg_36 * 51 + 64) % 8 + 1] <= Rg_39[(Rg_36 * 51 + 64) % 8 + 1] then
            B_ = function()
                local function L3(nf)
                    local LZ = not nf or not nf:IsA("ScreenGui")
                    if LZ then
                        return
                    end
                    nf.ResetOnSpawn = false
                    nf.IgnoreGuiInset = true
                    nf.ClipToDeviceSafeArea = false
                    nf.DisplayOrder = math.max(nf.DisplayOrder, 1000)
                    pcall(function()
                        nf.ScreenInsets = Enum.ScreenInsets.None
                    end)
                    if nf.Parent ~= CoreGui then
                        nf.Parent = CoreGui
                    end
                end
                L3(Library.ScreenGui)
                if Library.ActiveLoading and Library.ActiveLoading.ScreenGui then
                    L3(Library.ActiveLoading.ScreenGui)
                end
                for k, v in { "Obsidian", "ObsidianLoading" } do
                    local L4_2 = CoreGui:FindFirstChild(v) or PlayerGui:FindFirstChild(v)
                    if L4_2 then
                        L3(L4_2)
                    end
                end
            end
            B_()
            Rg_7 = task.spawn(fns.worker)
        else
            Rg_7 = function()
                local function L3(nf)
                    local LZ = not nf or not nf:IsA("ScreenGui")
                    if LZ then
                        return
                    end
                    nf.ResetOnSpawn = false
                    nf.IgnoreGuiInset = true
                    nf.ClipToDeviceSafeArea = false
                    nf.DisplayOrder = math.max(nf.DisplayOrder, 1000)
                    pcall(function()
                        nf.ScreenInsets = Enum.ScreenInsets.None
                    end)
                    if nf.Parent ~= CoreGui then
                        nf.Parent = CoreGui
                    end
                end
                L3(Library.ScreenGui)
                if Library.ActiveLoading and Library.ActiveLoading.ScreenGui then
                    L3(Library.ActiveLoading.ScreenGui)
                end
                for k, v in { "Obsidian", "ObsidianLoading" } do
                    local L4_1 = CoreGui:FindFirstChild(v) or PlayerGui:FindFirstChild(v)
                    if L4_1 then
                        L3(L4_1)
                    end
                end
            end
            Rg_7()
            B_ = task.spawn(fns.worker)
        end
        Rg_36 = (Rg_36 + 9) % 16
    end
until (Rg_36 * 3 + 4) % 16 == 2
if getgenv then
    Ao, Rg_39 = nil, nil
    Rg_36 = 2
    repeat
        Rg_21 = (Rg_36 * 1 + 0) % 2 + 1
        if Rg_21 <= 1 then
            Rg_21 = (vector.create((Rg_36 * 7 + 2) % 11 + 1, (Rg_36 * 2 + 11) % 13 + 1, (Rg_36 * 14 + 9) % 17 + 1))
            Rg_42 = (vector.create((Rg_36 * 3 + 9) % 11 + 1, (Rg_36 * 2 + 6) % 13 + 1, (Rg_36 * 1 + 16) % 17 + 1))
            local SI = vector.cross(Rg_21, Rg_42)
            local SJ = vector.dot(Rg_21, Rg_42)
            if vector.dot(SI, SI) + SJ * SJ == vector.dot(Rg_21, Rg_21) * vector.dot(Rg_42, Rg_42) + 3 then
                Rg_39 = getgenv().__ouroboros_lib
            else
                Ao = getgenv().__ouroboros_lib
            end
            Rg_36 = (Rg_36 + 9) % 16
        else
            local Vt = bit32.rrotate(bit32.bxor(bit32.lrotate(Rg_36, 30), string.byte(tostring(Ao))), 1)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Vt, 845854279), 3891503964), (bit32.bxor(bit32.band(Vt, 3449113016), 3800666973))), 3891503964), 3800666973) ~= Vt then
                Ao = Rg_39
            else
                Rg_39 = Ao
            end
            Rg_36 = (Rg_36 + 9) % 16
        end
    until (Rg_36 * 1 + 7) % 16 == 11
    if Rg_39 then
        Rg_36 = 6
        repeat
            Rg_21 = {
                "qidr",
                "azlehopr",
                "qttvhcrhdhl",
                "eilwrcujlx",
                "kchsryro",
                "qrmyvji",
                "pylgd",
                "mxmvnxtaaju",
                "crixjlfjc",
                "ofriroxqm"
            }
            if Rg_21[(Rg_36 * 92 + 104) % 10 + 1] < Rg_21[(Rg_36 * 92 + 104) % 10 + 1] then
                Ao = Rg_39.Unloaded == false
            else
                Rg_39 = Ao.Unloaded == false
            end
            Rg_36 = (Rg_36 + 6) % 8
        until (Rg_36 * 5 + 6) % 8 == 2
    end
    Rg_36 = Ao ~= Library
    Rg_21 = Rg_39 and Rg_36
    if Rg_21 then
        pcall(function()
            Ao:Unload()
        end)
    end
    getgenv().__ouroboros_lib = Library
end
ThemeManager, SaveManager, Toggles, Options, BQ, BK, BE, AX, Rg_21, Rg_29, Rg_27, Rg_8, Rg_25, AN, Ck, BS, Bw = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
BQ = "https://discord.gg/ehKVq7pf7v"
BK = "https://rscripts.net/@Ouroboros"
BE = "https://ouroboros-hub-rbx.web.app/"
Rg_5 = "v0.3"
Rg_25 = fns.fn342
AN = fns.fn998
Rg_36 = fns.fn393
Ck = fns.fn313
BS = fns.fn143
Bw = fns.fn704
Rg_42 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = BQ, Copyable = true }, "|", Ay, "|", Rg_5 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
AX = {}
AX.Info = Rg_42:AddTab("Info", "info")
AX.Main = Rg_42:AddTab("Main", "gamepad-2")
AX.Player = Rg_42:AddTab("Player", "person-standing")
AX.Settings = Rg_42:AddTab("Settings", "settings")
Rg_36(AX.Main)
Rg_36(AX.Player)
Rg_36(AX.Settings)
Rg_39 = function()
    local MU
    local M0
    local MZ
    local MT
    local MW
    MT = nil
    MU = nil
    MW = nil
    MZ = nil
    M0 = nil
    local Label, MR, MS, MV, Label2, Label3, M_, M1
    MW = function(og)
        return (tostring(og):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
    end
    MT = function(oi, oj)
        return string.format('<font color="%s">%s</font>', oj, MW(oi))
    end
    M_ = function(oo, op, oq)
        return string.format("<b>%s</b> %s %s", oo, MT("-", "#5a6070"), MT(op, oq))
    end
    MV = "#7fd47f"
    local M2 = "#8b93a3"
    M0 = "Unknown"
    MS = "#e8a34d"
    pcall(function()
        local MC_1
        local MB_1
        if type(identifyexecutor) == "function" then
            MC_1, MB_1 = identifyexecutor()
            local MD = MC_1 ~= ""
            local ME = type(MC_1) == "string" and MD
            if ME then
                local MD_1 = type(MB_1) == "string" and MB_1 ~= "" and MC_1 .. " " .. MB_1
                M0 = MD_1 or MC_1
            end
        end
    end)
    MZ = os.clock()
    MR = function()
        local MJ = math.floor(os.clock() - MZ)
        if MJ < 60 then
            return MJ .. "s"
        elseif MJ < 3600 then
            return string.format("%dm %ds", MJ // 60, MJ % 60)
        else
            return string.format("%dh %dm", MJ // 3600, MJ % 3600 // 60)
        end
    end
    local UserGroup = AX.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(M_("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, MV), true)
    UserGroup:AddLabel(M_("UserId", tostring(LocalPlayer.UserId), "#6ec1ff"), true)
    UserGroup:AddLabel(M_("Executor", M0 .. "  " .. Cg, MV), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(M_("Session", MR(), MS), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            Rg_25(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            Rg_25("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = AX.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddLabel(M_("Game", Ay, "#6ec1ff"), true)
    Label2 = SessionGroup:AddLabel(M_("Players", "0/0", MV), true)
    M1 = tostring(game.JobId)
    local M3 = #M1 > 18 and string.sub(M1, 1, 18) .. "..."
    local M3_1 = M3 or M1
    SessionGroup:AddLabel(M_("Job", M3_1, M2), true)
    Label = SessionGroup:AddLabel(M_("Ping", "0 ms", MS), true)
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
            Rg_25(M1, "Copied Job ID")
        end
    })
    MU = task.spawn(function()
        local MM_1
        while true do
            task.wait(1)
            local ML = Library.Unloaded or not AF()
            local ML_1
            if ML then
                break
            end
            Label3:SetText(M_("Session", MR(), MS))
            Label2:SetText(M_("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), MV))
            ML_1, MM_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local ML_2 = ML_1 and MM_1 .. " ms" or "n/a"
            Label:SetText(M_("Ping", ML_2, MS))
        end
    end)
    AU.Track(function()
        if coroutine.status(MU) ~= "dead" then
            pcall(task.cancel, MU)
        end
    end)
    local SocialsGroup = AX.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = AN })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            Rg_25(BK, "Copied Rscripts profile")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            Rg_25(BE, "Copied website link")
        end
    })
end
if ((not Bw or not BS or (false or not Rg_27)) and (not Rg_27 and Rg_29 or (not BS or Rg_27)) or (BK and Rg_27 or "https://rscripts.net/@Ouroboros") and (Bw or Rg_29 or (not Rg_29 or not Rg_27))) and ((Bw or BS or (Rg_29 or false)) and (not Rg_27 or not BS or not Rg_27 and not Rg_29) or (not Rg_27 or BK or Bw and BK) and (Rg_29 and BS and (Rg_27 or Rg_27))) or not (((not Bw or not BS or (false or not Rg_27)) and (not Rg_27 and Rg_29 or (not BS or Rg_27)) or (BK and Rg_27 or "https://rscripts.net/@Ouroboros") and (Bw or Rg_29 or (not Rg_29 or not Rg_27))) and ((Bw or BS or (Rg_29 or false)) and (not Rg_27 or not BS or not Rg_27 and not Rg_29) or (not Rg_27 or BK or Bw and BK) and (Rg_29 and BS and (Rg_27 or Rg_27)))) then
    Rg_39()
    Rg_21 = AX.Main:AddLeftGroupbox("Wave", "swords")
else
    Rg_21()
    AX = Rg_39.Main:AddLeftGroupbox("Wave", "swords")
end
Rg_21:AddToggle("AutoStartFight", { Text = "Auto Start Fight", Default = false, Callback = fns.onAutoStartFight })
Rg_21:AddToggle("AutoStopWave", { Text = "Auto Stop At Wave", Default = false, Callback = fns.onAutoStopWave })
Rg_21:AddSlider("StopWave", { Text = "Stop Wave", Default = 50, Min = 1, Max = AK, Rounding = 0, Callback = fns.onStopWave })
Rg_29 = AX.Main:AddLeftGroupbox("Combat", "target")
Rg_29:AddToggle("KillAura", { Text = "Kill Aura", Default = false, Callback = fns.onKillAura })
Rg_29:AddToggle("AutoEquipBest", { Text = "Auto Equip Best Weapon", Default = false, Callback = fns.onAutoEquipBest })
Rg_47 = AX.Main:AddRightGroupbox("Place", "box")
if (ThemeManager or ThemeManager or ThemeManager and not ThemeManager or (false or Rg_5 and not ThemeManager)) and (false and ((ThemeManager or Rg_5) and (ThemeManager or Rg_5))) and not ((ThemeManager or ThemeManager or ThemeManager and not ThemeManager or (false or Rg_5 and not ThemeManager)) and (false and ((ThemeManager or Rg_5) and (ThemeManager or Rg_5)))) then
    Rg_27:AddToggle("AutoPlaceBest", { Default = false, Text = "Auto Place Best", Callback = onAutoPlaceBest })
    Rg_27:AddToggle("AutoReplaceBetter", { Callback = fns.onAutoReplaceBetter, Text = "Auto Replace With Better", Default = false })
    AX = Rg_47.Main:AddRightGroupbox("Roll", "dices")
else
    Rg_47:AddToggle("AutoPlaceBest", { Text = "Auto Place Best", Default = false, Callback = onAutoPlaceBest })
    Rg_47:AddToggle("AutoReplaceBetter", { Text = "Auto Replace With Better", Default = false, Callback = fns.onAutoReplaceBetter })
    Rg_27 = AX.Main:AddRightGroupbox("Roll", "dices")
end
if (Rg_47 and Rg_5 or (SaveManager or Rg_5)) and (not SaveManager and Toggles or not SaveManager and Rg_8) and ((false or Ck or (not Rg_8 or not Toggles)) and (SaveManager or not SaveManager or (not Toggles or Ck))) or not ((Rg_47 and Rg_5 or (SaveManager or Rg_5)) and (not SaveManager and Toggles or not SaveManager and Rg_8) and ((false or Ck or (not Rg_8 or not Toggles)) and (SaveManager or not SaveManager or (not Toggles or Ck)))) then
    Rg_27:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false, Callback = fns.onAutoRoll })
    Rg_27:AddDivider()
    Rg_27:AddToggle("AutoClaim", { Text = "Auto Buy Roll", Default = false, Callback = fns.onAutoClaim })
    Rg_27:AddDropdown("ClaimMode", {
        Text = "Buy Roll By",
        Values = { "Rarity", "Money Cost", "Specific" },
        Default = "Rarity",
        Callback = fns.onClaimMode
    })
    Rg_27:AddDropdown("ClaimRarity", { Text = "Min Rarity", Values = Rg_23, Default = "Rare", Callback = fns.onClaimRarity })
    Rg_27:AddInput("ClaimPrice", {
        Text = "Min Money Cost",
        Default = "1000",
        Numeric = false,
        Finished = true,
        Callback = onClaimPrice
    })
    Rg_27:AddDropdown("ClaimSpecific", {
        Text = "Specific Turrets",
        Values = Rg_56,
        Default = {},
        Multi = true,
        Callback = fns.onClaimSpecific
    })
    Rg_8 = AX.Main:AddLeftGroupbox("Crate", "package")
else
    Rg_56:AddToggle("AutoRoll", { Default = false, Callback = fns.onAutoRoll, Text = "Auto Roll" })
    Rg_56:AddDivider()
    Rg_56:AddToggle("AutoClaim", { Default = false, Callback = fns.onAutoClaim, Text = "Auto Buy Roll" })
    Rg_56:AddDropdown("ClaimMode", {
        Text = "Buy Roll By",
        Default = "Rarity",
        Values = { "Money Cost", "Specific", "Rarity" },
        Callback = fns.onClaimMode
    })
    Rg_56:AddDropdown("ClaimRarity", { Default = "Rare", Text = "Min Rarity", Callback = fns.onClaimRarity, Values = Rg_27 })
    Rg_56:AddInput("ClaimPrice", {
        Default = "1000",
        Numeric = false,
        Callback = onClaimPrice,
        Text = "Min Money Cost",
        Finished = true
    })
    Rg_56:AddDropdown("ClaimSpecific", {
        Values = AX,
        Default = {},
        Callback = fns.onClaimSpecific,
        Multi = true,
        Text = "Specific Turrets"
    })
    Rg_8.Main:AddLeftGroupbox("Crate", "package")
end
Rg_8:AddToggle("AutoBuyCrate", { Text = "Auto Buy Crate", Default = false, Callback = fns.onAutoBuyCrate })
Rg_36 = #Rg_53 > 0 and Rg_53
Rg_39 = { "Basic" }
Rg_21 = Rg_36 or Rg_39
Rg_36 = Rg_53[1]
local Rg_41 = if Rg_36 then 1 else 0
local Rg_19 = 1446 * Rg_41 + 3806 * (1 - Rg_41)
local Rg_55 = 1856 * Rg_41 + 380 * (1 - Rg_41)
if not ((Rg_19 * 3647 + Rg_55 * 1102 + Rg_19 * Rg_55) % 16777213 == 10002650) then
    Rg_36 = "Basic"
end
Rg_53, Rg_39, Rg_42, Rg_56 = nil, nil, nil, nil
if (Rg_56 or false or Rg_39 and Rg_42) and (Rg_56 or not Rg_53 or Rg_39 and not Rg_53) or ((Rg_56 or not Rg_53) and (Rg_42 or not Rg_56) or (Rg_56 or Rg_42) and (not Rg_42)) or not ((Rg_56 or false or Rg_39 and Rg_42) and (Rg_56 or not Rg_53 or Rg_39 and not Rg_53) or ((Rg_56 or not Rg_53) and (Rg_42 or not Rg_56) or (Rg_56 or Rg_42) and (not Rg_42))) then
    Rg_8:AddDropdown("CrateType", { Text = "Crate", Values = Rg_21, Default = Rg_36, Callback = fns.onCrateType })
    Rg_8:AddToggle("AutoPlaceCrate", { Text = "Auto Place Crate", Default = false, Callback = fns.onAutoPlaceCrate })
    Rg_8:AddToggle("AutoOpenCrate", { Text = "Auto Open Crate", Default = false, Callback = fns.onAutoOpenCrate })
    Rg_53 = AX.Main:AddRightGroupbox("Upgrades", "arrow-up")
else
    Rg_8:AddDropdown("CrateType", { Values = Rg_21, Text = "Crate", Default = Rg_53, Callback = fns.onCrateType })
    Rg_36:AddToggle("AutoPlaceCrate", { Callback = fns.onAutoPlaceCrate, Default = false, Text = "Auto Place Crate" })
    Rg_36:AddToggle("AutoOpenCrate", { Default = false, Callback = fns.onAutoOpenCrate, Text = "Auto Open Crate" })
    AX = Rg_8.Main:AddRightGroupbox("Upgrades", "arrow-up")
end
Rg_53:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false, Callback = fns.onAutoBuyUpgrades })
Rg_53:AddDropdown("UpgradeTargets", {
    Text = "Upgrades",
    Values = Rg_17,
    Default = Rg_17,
    Multi = true,
    SelectAllButtons = true,
    Callback = fns.onUpgradeTargets
})
Toggles.AutoBuyUpgrades:OnChanged(fns.fn352)
Options.UpgradeTargets:OnChanged(fns.fn1311)
Options.CrateType:OnChanged(fns.fn872)
State.UpgradeSet = BS(Options.UpgradeTargets)
Rg_39 = function()
    local qI
    local qL
    local qJ
    local qK
    local qM = {}
    qK = {}
    qL = {}
    qI = {}
    qJ = {}
    local function qN()
        for k, v in qI do
            if k.Parent then
                k.CanCollide = v
            end
        end
        table.clear(qI)
    end
    local function qR()
        for k, v in qJ do
            if k.Parent then
                k.WalkSpeed = v
            end
        end
        table.clear(qJ)
    end
    local function qV()
        for k, v in qK do
            if k.Parent then
                k.PlatformStand = v
            end
        end
        table.clear(qK)
    end
    local function qZ()
        for k, v in qL do
            if k.Parent then
                k.HoldDuration = v[1]
                k.MaxActivationDistance = v[2]
                k.RequiresLineOfSight = v[3]
            end
        end
        table.clear(qL)
    end
    local function q2(q3)
        if not q3:IsA("ProximityPrompt") then
            return
        end
        if not qL[q3] then
            qL[q3] = { q3.HoldDuration, q3.MaxActivationDistance, q3.RequiresLineOfSight }
        end
        q3.HoldDuration = 0
        q3.MaxActivationDistance = 50
        q3.RequiresLineOfSight = false
    end
    local function q5()
        local Character = LocalPlayer.Character
        local N4 = Character and Character:FindFirstChildOfClass("Humanoid")
        return N4
    end
    local function ra()
        local Character = LocalPlayer.Character
        local N7 = Character and Character:FindFirstChild("HumanoidRootPart")
        return N7
    end
    local MovementGroup = AX.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", {
        Text = "WalkSpeed",
        Default = false,
        Callback = function(rg)
            if not rg then
                qR()
            end
        end
    })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", {
        Text = "NoClip",
        Default = false,
        Callback = function(ri)
            if not ri then
                qN()
            end
        end
    })
    MovementGroup:AddToggle("InstantProximityPrompt", {
        Text = "Instant ProximityPrompt",
        Default = false,
        Callback = function(rk)
            if rk then
                for i, descendant in By:GetDescendants() do
                    pcall(q2, descendant)
                end
            else
                qZ()
            end
        end
    })
    local FlyGroup = AX.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", {
        Text = "Fly",
        Default = false,
        Callback = function(rs)
            if not rs then
                qV()
            end
        end
    })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    table.insert(qM, By.DescendantAdded:Connect(function(ru)
        if Toggles.InstantProximityPrompt.Value then
            pcall(q2, ru)
        end
    end))
    table.insert(qM, RunService.Stepped:Connect(function()
        local Character = LocalPlayer.Character
        if Toggles.NoClip.Value and Character then
            for i, descendant in Character:GetDescendants() do
                if descendant:IsA("BasePart") then
                    if qI[descendant] == nil then
                        qI[descendant] = descendant.CanCollide
                    end
                    descendant.CanCollide = false
                end
            end
        end
    end))
    table.insert(qM, UserInputService.JumpRequest:Connect(function()
        local Oz = q5()
        if Toggles.InfJump.Value and Oz then
            Oz:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end))
    table.insert(qM, RunService.RenderStepped:Connect(function(rJ)
        local OF = q5()
        local OG = ra()
        local CurrentCamera = By.CurrentCamera
        if Toggles.WalkSpeedEnabled.Value and OF then
            if qJ[OF] == nil then
                qJ[OF] = OF.WalkSpeed
            end
            OF.WalkSpeed = Options.WalkSpeed.Value
        end
        if Toggles.Fly.Value and OG and OF and CurrentCamera then
            if qK[OF] == nil then
                qK[OF] = OF.PlatformStand
            end
            OF.PlatformStand = true
            local OF_1 = Vector3.zero
            if not UserInputService:GetFocusedTextBox() then
                local ON = if UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
                if ON == 1 then
                    OF_1 += CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    OF_1 -= CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    OF_1 -= CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    OF_1 += CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    OF_1 += Vector3.new(0, 1, 0)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    OF_1 -= Vector3.new(0, 1, 0)
                end
            end
            OG.AssemblyLinearVelocity = Vector3.zero
            if OF_1.Magnitude > 0 then
                OG.CFrame = OG.CFrame + OF_1.Unit * Options.FlySpeed.Value * rJ
            end
        end
    end))
    AU.Track(function()
        for k, v in qM do
            v:Disconnect()
        end
        qN()
        qR()
        qV()
        qZ()
    end)
end
Rg_39()
Rg_42 = function()
    local PW
    PW = nil
    local PP, PQ, PR, Label, PT, PU, PV, PX, PY, PZ, P_, P0, P1, P2, P3, P4, P5
    P0 = {}
    PT = {}
    P3 = nil
    P1 = 0
    PV = false
    PP = os.clock()
    local MenuGroup = AX.Settings:AddLeftGroupbox("Menu", "logs")
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Label = MenuGroup:AddLabel("AFK triggers: 0")
    P_ = function()
        local CurrentCamera
        CurrentCamera = By.CurrentCamera
        local OW = not CurrentCamera or type(VirtualUser.CaptureController) ~= "function" or type(VirtualUser.ClickButton2) ~= "function"
        if OW then
            return false
        end
        local OW_1 = pcall(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        end)
        if not OW_1 then
            return false
        end
        P1 += 1
        PP = os.clock()
        pcall(function()
            Label:SetText("AFK triggers: " .. P1)
        end)
        return true
    end
    PR = function(sp)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not sp)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not sp
            end
        end)
        if not sp then
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
    PQ = {
        ParticleEmitter = true,
        Trail = true,
        Smoke = true,
        Fire = true,
        Sparkles = true,
        Explosion = true,
        Beam = true
    }
    PZ = function(sE)
        if PQ[sE.ClassName] then
            if P0[sE] == nil then
                P0[sE] = sE.Enabled
            end
            pcall(function()
                sE.Enabled = false
            end)
        end
    end
    PU = function()
        for k, v in P0 do
            local O9 = k
            local Pb = v
            if O9.Parent then
                pcall(function()
                    O9.Enabled = Pb
                end)
            end
        end
        table.clear(P0)
        if P3 then
            pcall(function()
                settings().Rendering.QualityLevel = P3.Quality
            end)
            Lighting.GlobalShadows = P3.Shadows
            Lighting.FogEnd = P3.Fog
            P3 = nil
        end
    end
    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3D", {
        Text = "Disable 3D Rendering",
        Default = false,
        Callback = function(sS)
            pcall(function()
                RunService:Set3dRenderingEnabled(not sS)
            end)
        end
    })
    MenuGroup:AddToggle("FpsBoost", {
        Text = "FPS Boost",
        Default = false,
        Callback = function(sX)
            if sX then
                if not P3 then
                    P3 = {
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
                for i, descendant in By:GetDescendants() do
                    pcall(PZ, descendant)
                end
            else
                PU()
            end
        end
    })
    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddToggle("AutoExecute", { Text = "Auto Execute", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local ScriptGroup = AX.Settings:AddLeftGroupbox("Script", "terminal")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
    Toggles.AntiGameplayPause:OnChanged(function()
        PR(Toggles.AntiGameplayPause.Value)
    end)
    if Toggles.AntiGameplayPause.Value then
        PR(true)
    end
    table.insert(PT, LocalPlayer.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(P_)
        end
    end))
    table.insert(PT, By.DescendantAdded:Connect(function(td)
        if Toggles.FpsBoost.Value then
            pcall(PZ, td)
        end
    end))
    P5 = function()
        local PlaceId, JobId
        if PV then
            return
        end
        PV = true
        PlaceId, JobId = game.PlaceId, game.JobId
        local Pn = pcall(function()
            TeleportService:TeleportToPlaceInstance(PlaceId, JobId, LocalPlayer)
        end)
        if not Pn then
            pcall(function()
                TeleportService:Teleport(PlaceId, LocalPlayer)
            end)
        end
    end
    PW = task.spawn(function()
        local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
        local Ps = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        if not Ps then
            return
        end
        table.insert(PT, Ps.ChildAdded:Connect(function(tz)
            local Pp = not AF() or Library.Unloaded
            if Pp then
                return
            end
            if Toggles.AutoReconnect.Value and tz.Name == "ErrorPrompt" then
                P5()
            end
        end))
    end)
    AU.Track(function()
        if coroutine.status(PW) ~= "dead" then
            pcall(task.cancel, PW)
        end
    end)
    table.insert(PT, TeleportService.TeleportInitFailed:Connect(function()
        if Toggles.AutoReconnect.Value then
            PV = false
            P5()
        end
    end))
    local P6_2 = typeof(queue_on_teleport) == "function" and queue_on_teleport
    local P7 = P6_2
    local Qb = if P7 then 1 else 0
    local P9 = 1312 * Qb + 396 * (1 - Qb)
    local Qa = 2180 * Qb + 3784 * (1 - Qb)
    if not ((P9 * 2036 + Qa * 3791 + P9 * Qa) % 16777213 == 13795772) then
        local P6_3 = typeof(queueonteleport) == "function" and queueonteleport
        P7 = P6_3
    end
    PX = false
    P4 = P7
    P2 = function()
        if type(P4) ~= "function" then
            return false
        elseif PX then
            return true
        else
            PX = pcall(P4, 'if not game:IsLoaded() then game.Loaded:Wait() end local env = (getgenv and getgenv()) or _G if env.OuroborosAutoExecuted == game.JobId then return end env.OuroborosAutoExecuted = game.JobId task.wait(3) loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/Ouroboros/refs/heads/main/games/Defend%20Your%20Treehouse.luau"))()')
            return PX
        end
    end
    Toggles.AutoExecute:OnChanged(function()
        if not Ck("AutoExecute") then
            return
        end
        if not P2() then
            Library:Notify("queue_on_teleport is not supported by your executor")
        end
    end)
    table.insert(PT, LocalPlayer.OnTeleport:Connect(function(t5)
        if t5 ~= Enum.TeleportState.Started then
            return
        end
        local Py = not AF() or Library.Unloaded
        local PF = if Py then 1 else 0
        local PD = 3719 * PF + 2476 * (1 - PF)
        local PE = 1832 * PF + 2159 * (1 - PF)
        if not ((PD * 2883 + PE * 3579 + PD * PE) % 16777213 == 7314600) then
            Py = not Ck("AutoExecute")
        end
        if Py then
            return
        end
        P2()
    end))
    PY = task.spawn(function()
        while true do
            local PG = AF() and not Library.Unloaded
            if PG then
                task.wait(1)
                local PG_1 = not AF() or Library.Unloaded
                if PG_1 then
                    break
                end
                if Toggles.AntiGameplayPause.Value then
                    PR(true)
                end
                local PG_2 = Toggles.AntiAfk.Value and os.clock() - PP >= 60
                if PG_2 then
                    pcall(P_)
                end
                continue
            end
            break
        end
    end)
    AU.Track(function()
        if coroutine.status(PY) ~= "dead" then
            pcall(task.cancel, PY)
        end
        for k, v in PT do
            v:Disconnect()
        end
        PR(false)
        PU()
        pcall(function()
            RunService:Set3dRenderingEnabled(true)
        end)
    end)
end
Rg_42()
Rg_56 = function()
    local Q0
    Q0 = nil
    local Q_, Q1, Q2
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("MyScriptHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(AX.Settings)
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource", "AutoBuyRolls" })
    SaveManager:SetFolder("OuroborosHub/DefendYourTreehouse")
    local Q3 = SaveManager:BuildConfigSection(AX.Settings)
    Q0 = function(uA, uB)
        local Qd_1 = (uA == "Toggle" and Toggles or Options)[uB]
        local Qc_2 = type(Qd_1) == "table" and Qd_1.Type == uA
        return Qc_2 and Qd_1 or nil
    end
    Q_ = function(uK, uL)
        local Type = uL.Type
        if Type == "Toggle" then
            return { idx = uK, type = "Toggle", value = uL.Value == true }
        end
        if Type == "Slider" then
            return { idx = uK, type = "Slider", value = tostring(uL.Value) }
        end
        if Type == "Dropdown" then
            return { idx = uK, type = "Dropdown", multi = uL.Multi == true, value = uL.Value }
        end
        if Type == "Input" then
            local Qk = uL.Value
            local Qo = if Qk then 1 else 0
            local Qm = 3070 * Qo + 3288 * (1 - Qo)
            local Qn = 3671 * Qo + 1242 * (1 - Qo)
            if not ((Qm * 2498 + Qn * 3994 + Qm * Qn) % 16777213 == 46378) then
                Qk = ""
            end
            return { idx = uK, type = "Input", text = tostring(Qk) }
        end
        if Type == "ColorPicker" then
            return { idx = uK, type = "ColorPicker", value = uL.Value:ToHex(), transparency = uL.Transparency }
        end
        if Type == "KeyPicker" then
            return { idx = uK, type = "KeyPicker", key = uL.Value, mode = uL.Mode }
        end
    end
    Q2 = function()
        local Qp = {}
        local Qq = { MenuKeybind = true, SaveManager_ImportSource = true }
        local Qr = {}
        for k, v in Toggles do
            local Qs_1 = not Qq[k]
            if Qs_1 ~= false then
                Qs_1 = not Qr[k]
            end
            if Qs_1 then
                Qr[k] = true
                Qp[#Qp + 1] = Q_(k, v)
            end
        end
        for k, v in Options do
            local Qs_2 = not Qq[k]
            if Qs_2 ~= false then
                Qs_2 = not Qr[k]
            end
            if Qs_2 then
                Qr[k] = true
                Qp[#Qp + 1] = Q_(k, v)
            end
        end
        table.sort(Qp, function(uX, uY)
            return tostring(uX.idx) < tostring(uY.idx)
        end)
        return { objects = Qp }
    end
    Q1 = function(u_)
        local QG = type(u_) ~= "table" or type(u_.idx) ~= "string"
        local QM = if QG then 1 else 0
        local QK = 3049 * QM + 1306 * (1 - QM)
        local QL = 2266 * QM + 94 * (1 - QM)
        if not ((QK * 1853 + QL * 1105 + QK * QL) % 16777213 == 15062761) then
            QG = type(u_.type) ~= "string"
        end
        if QG then
            return false
        end
        local QG_1 = Q0(u_.type, u_.idx)
        if not QG_1 then
            return false
        end
        local QH = u_.type == "Toggle" and type(u_.value) == "boolean"
        if QH then
            QG_1:SetValue(u_.value)
            return true
        elseif u_.type == "Slider" then
            local QH_1 = tonumber(u_.value)
            if QH_1 then
                QG_1:SetValue(QH_1)
                return true
            end
            return false
        elseif u_.type == "Dropdown" then
            QG_1:SetValue(u_.value)
            return true
        elseif u_.type == "Input" then
            local QI = u_.text or u_.value or ""
            QG_1:SetValue(tostring(QI))
            return true
        else
            local QH_3 = u_.type == "ColorPicker" and type(u_.value) == "string"
            if QH_3 then
                QG_1:SetValueRGB(Color3.fromHex(u_.value), u_.transparency)
                return true
            elseif u_.type == "KeyPicker" then
                QG_1:SetValue({ u_.key, u_.mode })
                return true
            else
                return false
            end
        end
    end
    Q3:AddInput("SaveManager_ImportSource", {
        Text = "Paste exported config here",
        Default = "",
        Finished = true,
        AllowEmpty = true,
        Placeholder = ""
    })
    Q3:AddButton({
        Text = "Export Config to Clipboard",
        Func = function()
            local QO_1
            local QN_1
            QN_1, QO_1 = pcall(BZ.JSONEncode, BZ, Q2())
            if not QN_1 then
                Library:Notify("Failed to encode config")
                return
            end
            Rg_25(QO_1, "Copied config")
        end
    })
    Q3:AddButton({
        Text = "Import Config from Clipboard Text",
        Func = function()
            local QS_1
            local QR = Options.SaveManager_ImportSource and Options.SaveManager_ImportSource.Value or ""
            local QR_1
            if QR == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #QR > 262144 then
                Library:Notify("Config is too large")
                return
            end
            QR_1, QS_1 = pcall(BZ.JSONDecode, BZ, QR)
            local QQ_2 = not QR_1 or type(QS_1) ~= "table" or type(QS_1.objects) ~= "table"
            if QQ_2 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #QS_1.objects > 2048 then
                Library:Notify("Config has too many records")
                return
            end
            local QQ_3 = 0
            for k, v in QS_1.objects do
                if Q1(v) then
                    QQ_3 += 1
                end
            end
            if QQ_3 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local QS_2 = QQ_3 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(QQ_3, QS_2), 6)
        end
    })
    ThemeManager:LoadDefault()
    SaveManager:LoadAutoloadConfig()
    if Toggles.HideUiOnStart.Value then
        Library:Toggle(false)
    end
end
Rg_56()
