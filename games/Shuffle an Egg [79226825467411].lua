local fns = {}
local NA_43
local zG
local An
local zn
local AM
local zM
local At
local zt
local Rebirth2
local connection
local AS
local Az
local Mutations
local zz
local zg
local zY
local zF
local DealersConfig
local Rebirth
local z3
local y3
local zL
local z9
local AR
local y9
local zR
local UpgradesConfig
local zy
local zf
local zX
local AE
local CoreGui
local z2
local AK
local BuyCup
local z8
local AQ
local y8
local zQ
local zx
local Tutorial
local zW
local AD
local State
local Ak
local PlaytimeRemote
local z1
local zJ
local Aq
local BrainrotsConfig
local y7
local zP
local Aw
local AP
local zw
local LuckyBlockConfig
local zd
local zV
local AC
local PlaceEgg
local Aj
local z0
local zI
local TimeRewardConfig
local zp
local z6
local connection2
local GameHandShake
local Av
local zv
local AU
local zU
local zB
local Ai
local zi
local Cups
local AH
local zH
local zo
local z5
local AN
local y5
local RebirthConfig
local zu
local AT
local zb
local zT
local AA
local zA
local EggsConfig
local zh
local zZ
function fns.fn20(aP)
    local Cj = type(aP) == "string" and aP ~= "" and not table.find(z9, aP) and not table.find(z0, aP)
    if Cj then
        table.insert(z0, aP)
    end
end
function fns.fn45(my)
    State.AutoClaimPlaytime = my == true
    z1("Playtime", State.AutoClaimPlaytime, AK)
end
function fns.fn63(kW)
    while true do
        local IW = zd() and zz.Equip == kW and State.AutoEquipBest
        if IW then
            y3("Equip best")
            zg(zt)
            if not zR(2.5, "Equip", kW) then
                return
            end
            continue
        end
        break
    end
end
function fns.fn68(dF)
    local DQ, DR, DS, DT, DU, DV, DW, D0, D1, D2, D3, D5, D6, D7, D8
    local DX = 14
    while true do
        local DX_1 = 6483 - DX
        do
            if DX_1 < 6471 then
                if DX_1 < 6467 then
                    if DX_1 < 6466 then
                        if DX_1 < 6464 then
                            if DX_1 < 2288 then
                                break
                            elseif DX_1 < 6462 then
                                break
                            elseif DX_1 < 6463 then
                                if DX_1 == 6462 then
                                    DR = DQ.Position.Y + DQ.Size.Y / 2
                                    DU = math.max
                                    DV = EggsConfig.MIN_PLACE_SPACING
                                    DX = if DV then 17 else 6
                                else
                                    DX = 872
                                    continue
                                end
                            elseif DX_1 == 6463 then
                                DS = DQ.CFrame:PointToWorldSpace(Vector3.new(D3, DQ.Size.Y / 2, D8))
                                DU = Vector3.new(DS.X, DR, DS.Z)
                                DX = if not Aw(dF, DU) then 12 else 15
                            else
                                DX = 6468
                                continue
                            end
                        elseif DX_1 < 6465 then
                            return nil
                        elseif DX_1 == 6465 then
                            DS = -DT
                            D7 = DS
                            D5 = DT
                            D6 = DW
                            DX = 13
                        else
                            DX = 6467
                            continue
                        end
                    elseif DX_1 == 6466 then
                        DW = DU(DV, 5)
                        DU = -DS
                        D2 = DU
                        D0 = DS
                        D1 = DW
                        DX = 0
                    else
                        DX = 6468
                        continue
                    end
                elseif DX_1 < 6469 then
                    if DX_1 < 6468 then
                        DX = if DR then 19 else 21
                    elseif DX_1 == 6468 then
                        DX = 1
                    else
                        DX = 14825
                        continue
                    end
                elseif DX_1 < 6470 then
                    DQ = zZ(dF)
                    DX = if not DQ then 3 else 10
                else
                    DX = if D6 > 0 and D7 <= D5 or D6 <= 0 and D7 >= D5 then 4 else 11
                end
            elseif DX_1 < 6480 then
                if DX_1 < 6476 then
                    if DX_1 < 6472 then
                        return DU
                    elseif DX_1 < 6474 then
                        if DX_1 < 6473 then
                            if DX_1 == 6472 then
                                DX = 5
                            else
                                DX = 11943
                                continue
                            end
                        else
                            local DR_1 = 5
                            DS = DQ.Size.X / 2 - DR_1
                            DT = DQ.Size.Z / 2 - DR_1
                            DR = DS <= 0
                            local D_ = if DR then 1 else 0
                            local DY = 2168 * D_ + 595 * (1 - D_)
                            local DZ = 3521 * D_ + 3041 * (1 - D_)
                            DX = if (DY * 1560 + DZ * 1763 + DY * DZ) % 16777213 == 445918 then 16 else 7
                        end
                    elseif DX_1 < 6475 then
                        break
                    elseif DX_1 == 6475 then
                        D3 = D2
                        DX = 18
                    else
                        DX = 6468
                        continue
                    end
                elseif DX_1 < 6478 then
                    if DX_1 < 6477 then
                        DR = DT <= 0
                        DX = 16
                    else
                        DV = 5
                        DX = 17
                    end
                elseif DX_1 < 6479 then
                    if DX_1 == 6478 then
                        D2 += D1
                        DX = 0
                    else
                        DX = 6462
                        continue
                    end
                else
                    D8 = D7
                    DX = 20
                end
            elseif DX_1 < 6483 then
                if DX_1 < 6481 then
                    if DX_1 == 6480 then
                        return nil
                    end
                    DX = 6481
                    continue
                elseif DX_1 < 6482 then
                    return nil
                elseif DX_1 == 6482 then
                    D7 += D6
                    DX = 13
                else
                    DX = 872
                    continue
                end
            elseif DX_1 < 7356 then
                if DX_1 < 6658 then
                    if DX_1 == 6483 then
                        DX = if D1 > 0 and D2 <= D0 or D1 <= 0 and D2 >= D0 then 8 else 2
                    else
                        DX = 7530
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
function fns.fn73(lP)
    State.AutoSkipMutations = lP == true
    z1("Skip", zb(), AQ)
end
function fns.fn114()
    local Ia = State.AutoSkipRarities or State.AutoSkipMutations
    local Ie = if Ia then 1 else 0
    local Ic = 2576 * Ie + 329 * (1 - Ie)
    local Id = 602 * Ie + 1493 * (1 - Ie)
    if not ((Ic * 2098 + Id * 2292 + Ic * Id) % 16777213 == 8334984) then
        Ia = State.AutoSkipUnaffordable
    end
    return Ia
end
function fns.fn115()
    return zP and zP.Value or 0
end
function fns.fn127()
    if not (y8 and y8.Value and AR) then
        return false
    end
    local HQ_1 = zv.Shuffling or zh()
    if HQ_1 then
        return false
    end
    return os.clock() - zv.OfferChangedAt >= 0.35
end
function fns.fn135(hH, hI)
    local Hq = zv.PickedThisRound or not zh()
    local Hq_3
    if Hq then
        return false
    end
    local Hq_1 = os.clock()
    while true do
        local Hr = zv.VotePending or zv.Measuring > 0
        local Hr_1
        local Hs = Hr and os.clock() - Hq_1 < 1.5
        if not Hs then
            local Hq_2 = not zd() or zz[hH] ~= hI or zv.PickedThisRound
            if Hq_2 then
                return false
            end
            Hr_1, Hq_3 = zu()
            zv.PickedThisRound = true
            zv.RevealPending = true
            zv.OurPick = Hr_1
            zv.PickMethod = Hq_3
            y3("Guessing " .. AS[Hr_1] .. " cup (" .. Hq_3 .. ")")
            zg(GameHandShake, "PickCup", Hr_1)
            return true
        end
        local Hr_2 = not zd() or zz[hH] ~= hI
        if Hr_2 then
            break
        end
        task.wait(0.05)
    end
    return false
end
function fns.fn155(k4)
    while true do
        local IY = zd() and zz.PetSlot == k4 and State.AutoBuyPetSlot
        if IY then
            local IY_1 = 0
            if z3 then
                local Base = z3:FindFirstChild("Base")
                IY_1 = Base and Base.Value or 0
            end
            local Base = UpgradesConfig.Base
            local I__2 = Base and Base[IY_1 + 1]
            if not I__2 then
                y3("Pet slot: maxed")
                if not zR(2, "PetSlot", k4) then
                    return
                end
                continue
            elseif AN() < I__2 then
                y3("Pet slot: need cash")
                if not zR(1.25, "PetSlot", k4) then
                    break
                end
                continue
            else
                y3("Buying pet slot")
                zg(zn, "Base")
                if not zR(0.6, "PetSlot", k4) then
                    return
                end
                continue
            end
        else
            return
        end
    end
    return
end
function fns.fn188(jK)
    while true do
        local If = zd() and zz.Skip == jK and zb()
        if If then
            local If_1 = not State.AutoPlay and zX:GetAttribute("AtDealer") == true and Av() and zY()
            if If_1 then
                if not z6("Skip", jK, If_1) then
                    break
                end
                continue
            end
            if not zR(0.2, "Skip", jK) then
                return
            end
            continue
        end
        return
    end
    return
end
function fns.fn196(b2, b3, b4)
    local CB = os.clock() + b2
    while true do
        local CC = zd() and zz[b3] == b4 and os.clock() < CB
        if CC then
            task.wait(0.05)
            continue
        end
        break
    end
    local CB_1 = zd() and zz[b3] == b4
    return CB_1
end
function fns.fn270()
    local PlayerGui = zX:FindFirstChild("PlayerGui")
    if not PlayerGui then
        return false
    end
    local UI_GAME = PlayerGui:FindFirstChild("UI_GAME")
    if not UI_GAME then
        return false
    end
    local LEFT = UI_GAME:FindFirstChild("LEFT")
    return LEFT and LEFT.Enabled == true
end
function fns.fn285()
    if connection then
        connection:Disconnect()
        connection = nil
    end
end
function fns.fn317(lt)
    while true do
        local I5 = zd() and zz.Playtime == lt and State.AutoClaimPlaytime
        if I5 then
            y3("Claiming playtime")
            for i in ipairs(TimeRewardConfig) do
                local I5_1 = not zd() or zz.Playtime ~= lt or not State.AutoClaimPlaytime
                if I5_1 then
                    break
                end
                zg(PlaytimeRemote, "Claim", i)
                if not zR(0.15, "Playtime", lt) then
                    return
                end
            end
            if not zR(2.5, "Playtime", lt) then
                break
            end
            continue
        end
        return
    end
    return
end
function fns.fn329(lI)
    State.AutoSkipRarities = lI == true
    z1("Skip", zb(), AQ)
end
function fns.fn337()
    return zX.Character
end
function fns.fn373(c_)
    local Mutation = c_:FindFirstChild("Mutation")
    local Ds = Mutation and Mutation:IsA("StringValue") and Mutation.Value
    local Dr_1 = Ds or nil
    return zw(Dr_1)
end
function fns.fn401(mg)
    local Jx = type(mg) == "table" and mg
    local Jy = {}
    local Jz = Jx
    local JD = if Jz then 1 else 0
    local JB = 2684 * JD + 265 * (1 - JD)
    local JC = 2732 * JD + 38 * (1 - JD)
    if not ((JB * 1109 + JC * 309 + JB * JC) % 16777213 == 11153432) then
        Jz = Jy
    end
    State.PlaceMutations = Jz
end
function fns.fn413(lE)
    State.AutoGuess = lE == true
    z1("Guess", State.AutoGuess, zU)
end
function fns.fn414(aa)
    return type(aa) == "function"
end
function fns.fn427(ds, dt)
    local Eggs = ds:FindFirstChild("Eggs")
    if not Eggs then
        return false
    end
    local DH = EggsConfig.MIN_PLACE_SPACING or 5
    local DH_1 = DH * DH
    for i, child in ipairs(Eggs:GetChildren()) do
        local DG_1 = child:IsA("BasePart") or child:IsA("Model")
        if DG_1 then
            local DG_2 = child:IsA("BasePart") and child
            local DI_1 = DG_2 or child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart", true)
            if DI_1 then
                local DI_2 = DI_1.Position - dt
                if DI_2.X * DI_2.X + DI_2.Z * DI_2.Z < DH_1 then
                    return true
                end
            end
        end
    end
    return false
end
function fns.fn450(lA)
    State.AutoPlay = lA == true
    z1("Play", State.AutoPlay, AH)
end
function fns.fn452(kM)
    while true do
        local IM = zd() and zz.Hatch == kM and State.AutoHatchEggs
        if IM then
            local IM_1 = At()
            local IN = false
            if IM_1 then
                local Eggs = IM_1:FindFirstChild("Eggs")
                if Eggs then
                    for i, child in ipairs(Eggs:GetChildren()) do
                        local IM_2 = not zd() or zz.Hatch ~= kM or not State.AutoHatchEggs
                        if IM_2 then
                            break
                        end
                        local IM_3 = child:GetAttribute("HatchAt") or 0
                        if IM_3 - os.time() < 1 then
                            y3("Hatching " .. child.Name)
                            zg(zx, child.Name)
                            IN = true
                            if not zR(0.35, "Hatch", kM) then
                                return
                            end
                        end
                    end
                end
            end
            if not IN then
                y3("Hatch: waiting")
            end
            if not zR(0.75, "Hatch", kM) then
                return
            end
            continue
        end
        break
    end
end
function fns.fn501(cp)
    if not cp then
        return nil
    end
    local Plot = cp:FindFirstChild("Plot")
    if not Plot then
        return nil
    end
    local PrimaryPart = cp.PrimaryPart
    local CZ_1
    local C_ = PrimaryPart and PrimaryPart.Name == "Floor" and PrimaryPart:IsDescendantOf(Plot)
    local C__1
    if C_ then
        return PrimaryPart
    end
    C__1, CZ_1 = nil, 0
    for i, child in ipairs(Plot:GetChildren()) do
        local CY_1 = child:IsA("BasePart") and child.Name == "Floor"
        if CY_1 then
            local CY_2 = child.Size.X * child.Size.Z
            if CZ_1 < CY_2 then
                C__1 = child
                CZ_1 = CY_2
            end
        end
    end
    return C__1
end
function fns.fn545(mq)
    State.AutoBuyPetSlot = mq == true
    z1("PetSlot", State.AutoBuyPetSlot, zB)
end
function fns.fn557(mi)
    State.AutoHatchEggs = mi == true
    z1("Hatch", State.AutoHatchEggs, zM)
end
function fns.fn596()
    local Hx = AR and AR.Value
    local Hx_1 = Hx == ""
    local Hz = type(Hx) ~= "string" or Hx_1
    if Hz then
        return nil
    end
    if Ak and Ak.Value then
        local Hx_3 = LuckyBlockConfig[Hx]
        local Hz_1 = type(Hx_3) == "table" and Hx_3.Rarity
        return Hz_1 or nil
    end
    local Hx_5 = EggsConfig.Get(Hx)
    if Hx_5 then
        return Hx_5.rarity
    end
    local Hx_6 = BrainrotsConfig[Hx]
    local Hy_1 = type(Hx_6) == "table" and Hx_6.Rarity
    return Hy_1 or nil
end
function fns.fn618(i7)
    local HY, HZ, H_, H0
    local H1 = 15
    while true do
        local H1_1 = 15497 - H1
        do
            if H1_1 < 15432 then
                if H1_1 < 15408 then
                    if H1_1 < 15396 then
                        if H1_1 < 15387 then
                            if H1_1 < 15384 then
                                if H1_1 < 15376 then
                                    if H1_1 < 11973 then
                                        break
                                    elseif H1_1 < 15373 then
                                        break
                                    elseif H1_1 < 15374 then
                                        if H1_1 == 15373 then
                                            H1 = if HZ then 104 else 114
                                        else
                                            H1 = 15426
                                            continue
                                        end
                                    elseif H1_1 < 15375 then
                                        H1 = 9
                                    elseif H1_1 == 15375 then
                                        H1 = 121
                                    else
                                        H1 = 15438
                                        continue
                                    end
                                elseif H1_1 < 15381 then
                                    if H1_1 < 15378 then
                                        if H1_1 < 15377 then
                                            HY = (zd())
                                            H1 = if HY then 100 else 92
                                        else
                                            HY = "Play: not enough money"
                                            H1 = 115
                                        end
                                    elseif H1_1 < 15380 then
                                        if H1_1 < 15379 then
                                            if H1_1 == 15378 then
                                                H1 = if zz.Play == i7 then 83 else 77
                                            else
                                                H1 = 15442
                                                continue
                                            end
                                        else
                                            HY = (zd())
                                            H1 = if HY then 37 else 70
                                        end
                                    else
                                        H1 = 80
                                    end
                                elseif H1_1 < 15383 then
                                    if H1_1 < 15382 then
                                        H1 = if not zR(0.35, "Play", i7) then 105 else 42
                                    else
                                        HZ = HY
                                        H1 = if HZ then 25 else 62
                                    end
                                else
                                    H1 = if not HZ then 110 else 27
                                end
                            elseif H1_1 < 15386 then
                                if H1_1 < 15385 then
                                    if H1_1 == 15384 then
                                        H1 = if HY then 82 else 40
                                    else
                                        H1 = 15432
                                        continue
                                    end
                                else
                                    HY = true
                                    H1 = 72
                                end
                            elseif H1_1 == 15386 then
                                H_ = State.AutoPlay
                                H1 = 91
                            else
                                H1 = 15492
                                continue
                            end
                        elseif H1_1 < 15395 then
                            if H1_1 < 15391 then
                                if H1_1 < 15389 then
                                    if H1_1 < 15388 then
                                        if H1_1 == 15387 then
                                            return
                                        end
                                        H1 = 15482
                                        continue
                                    end
                                    return
                                elseif H1_1 < 15390 then
                                    if H1_1 == 15389 then
                                        H1 = 95
                                    else
                                        H1 = 9960
                                        continue
                                    end
                                elseif H1_1 == 15390 then
                                    H1 = 35
                                else
                                    H1 = 15486
                                    continue
                                end
                            elseif H1_1 < 15393 then
                                if H1_1 < 15392 then
                                    HY = zv.LastSequence
                                    HZ = zv.LastSpeed
                                    H1 = if HZ then 0 else 11
                                else
                                    return
                                end
                            elseif H1_1 < 15394 then
                                HZ = State.AutoPlay
                                H1 = 114
                            elseif H1_1 == 15394 then
                                H_ = y8.Value
                                H1 = 48
                            else
                                H1 = 15400
                                continue
                            end
                        else
                            H_ = y8
                            H1 = if H_ then 103 else 48
                        end
                    elseif H1_1 < 15402 then
                        if H1_1 < 15400 then
                            if H1_1 < 15399 then
                                if H1_1 < 15397 then
                                    return
                                elseif H1_1 < 15398 then
                                    if H1_1 == 15397 then
                                        HY = zz.Play == i7
                                        H1 = 92
                                    else
                                        H1 = 15399
                                        continue
                                    end
                                elseif H1_1 == 15398 then
                                    HZ = (zd())
                                    H1 = if HZ then 57 else 56
                                else
                                    H1 = 15386
                                    continue
                                end
                            else
                                H0 = (zd())
                                H1 = if H0 then 96 else 46
                            end
                        elseif H1_1 < 15401 then
                            H1 = 99
                        else
                            H0 = zz.Play == i7
                            H1 = 46
                        end
                    elseif H1_1 < 15407 then
                        if H1_1 < 15404 then
                            if H1_1 < 15403 then
                                if H1_1 == 15402 then
                                    H1 = 116
                                else
                                    H1 = 15432
                                    continue
                                end
                            else
                                H1 = 116
                            end
                        elseif H1_1 < 15405 then
                            return
                        elseif H1_1 < 15406 then
                            H1 = if HY then 61 else 55
                        elseif H1_1 == 15406 then
                            H1 = if H_ then 68 else 47
                        else
                            H1 = 15433
                            continue
                        end
                    elseif H1_1 == 15407 then
                        H0 = os.clock() - HZ < HY + 6
                        H1 = 1
                    else
                        H1 = 15448
                        continue
                    end
                elseif H1_1 < 15417 then
                    if H1_1 < 15412 then
                        if H1_1 < 15411 then
                            if H1_1 < 15410 then
                                if H1_1 < 15409 then
                                    if H1_1 == 15408 then
                                        y3("Play: starting")
                                        zv.PickedThisRound = false
                                        zv.PickReady = false
                                        zv.RevealPending = false
                                        zv.Shuffling = false
                                        zg(GameHandShake, "ExitGame")
                                        H1 = if not zR(0.35, "Play", i7) then 64 else 54
                                    else
                                        H1 = 15398
                                        continue
                                    end
                                elseif H1_1 == 15409 then
                                    task.wait(0.05)
                                    H1 = 4
                                else
                                    H1 = 15459
                                    continue
                                end
                            elseif H1_1 == 15410 then
                                H0 = State.AutoPlay
                                H1 = 34
                            else
                                H1 = 15462
                                continue
                            end
                        else
                            H_ = (zd())
                            H1 = if H_ then 79 else 50
                        end
                    elseif H1_1 < 15414 then
                        if H1_1 < 15413 then
                            H1 = if zv.InsufficientFunds then 81 else 49
                        else
                            HZ = os.clock() - HY < 4
                            H1 = 75
                        end
                    elseif H1_1 < 15415 then
                        y3("Idle")
                        H1 = 77
                    elseif H1_1 < 15416 then
                        HY = State.AutoPlay
                        H1 = 40
                    else
                        H1 = 121
                    end
                elseif H1_1 < 15427 then
                    if H1_1 < 15423 then
                        if H1_1 < 15420 then
                            if H1_1 < 15419 then
                                if H1_1 < 15418 then
                                    if H1_1 == 15417 then
                                        H1 = 69
                                    else
                                        H1 = 15409
                                        continue
                                    end
                                else
                                    H_ = zz.Play == i7
                                    H1 = 50
                                end
                            elseif H1_1 == 15419 then
                                y3("Play: finish tutorial step")
                                H1 = if not zR(1, "Play", i7) then 65 else 108
                            else
                                H1 = 15442
                                continue
                            end
                        elseif H1_1 < 15421 then
                            if H1_1 == 15420 then
                                H1 = 2
                            else
                                H1 = 15430
                                continue
                            end
                        elseif H1_1 < 15422 then
                            H1 = if not HY then 31 else 51
                        elseif H1_1 == 15422 then
                            H1 = if HZ then 88 else 14
                        else
                            H1 = 15400
                            continue
                        end
                    elseif H1_1 < 15425 then
                        if H1_1 < 15424 then
                            if H1_1 == 15423 then
                                H0 = HZ
                                H1 = 38
                            else
                                H1 = 15414
                                continue
                            end
                        elseif H1_1 == 15424 then
                            y3("Play: close window first")
                            H1 = if not zR(0.5, "Play", i7) then 93 else 94
                        else
                            H1 = 15374
                            continue
                        end
                    elseif H1_1 < 15426 then
                        if H1_1 == 15425 then
                            HZ = (zd())
                            H1 = if HZ then 23 else 124
                        else
                            H1 = 15404
                            continue
                        end
                    else
                        task.wait(0.05)
                        H1 = 8
                    end
                elseif H1_1 < 15430 then
                    if H1_1 < 15428 then
                        if H1_1 == 15427 then
                            H1 = if HY then 39 else 76
                        else
                            H1 = 15446
                            continue
                        end
                    elseif H1_1 < 15429 then
                        if H1_1 == 15428 then
                            HY = (zd())
                            H1 = if HY then 43 else 113
                        else
                            H1 = 15440
                            continue
                        end
                    else
                        H_ = os.clock() - HZ < 8
                        H1 = 47
                    end
                elseif H1_1 < 15431 then
                    y3("Play: shuffling")
                    zv.InsufficientFunds = false
                    zv.Shuffling = false
                    zg(GameHandShake, "StartShuffle")
                    HY = os.clock()
                    H1 = 97
                elseif H1_1 == 15431 then
                    HZ = not zv.InsufficientFunds
                    H1 = 3
                else
                    H1 = 15430
                    continue
                end
            elseif H1_1 < 15464 then
                if H1_1 < 15449 then
                    if H1_1 < 15442 then
                        if H1_1 < 15441 then
                            if H1_1 < 15437 then
                                if H1_1 < 15435 then
                                    if H1_1 < 15433 then
                                        return
                                    elseif H1_1 < 15434 then
                                        if H1_1 == 15433 then
                                            return
                                        end
                                        H1 = 15394
                                        continue
                                    else
                                        task.wait(0.05)
                                        H1 = 19
                                    end
                                elseif H1_1 < 15436 then
                                    if H1_1 == 15435 then
                                        HZ = "Play: pick timeout"
                                        H1 = 25
                                    else
                                        H1 = 15463
                                        continue
                                    end
                                elseif H1_1 == 15436 then
                                    HY = State.AutoPlay
                                    H1 = 55
                                else
                                    H1 = 15376
                                    continue
                                end
                            elseif H1_1 < 15439 then
                                if H1_1 < 15438 then
                                    if H1_1 == 15437 then
                                        HY = zv.InsufficientFunds
                                        H1 = if HY then 120 else 115
                                    else
                                        H1 = 9385
                                        continue
                                    end
                                else
                                    return
                                end
                            elseif H1_1 < 15440 then
                                H1 = 9
                            else
                                HZ = zz.Play == i7
                                H1 = 56
                            end
                        else
                            H1 = if HZ then 30 else 13
                        end
                    elseif H1_1 < 15448 then
                        if H1_1 < 15445 then
                            if H1_1 < 15443 then
                                H1 = if not HY then 18 else 5
                            elseif H1_1 < 15444 then
                                zg(GameHandShake, "Play")
                                zg(GameHandShake, "Select")
                                HY = false
                                HZ = os.clock()
                                H1 = 29
                            elseif H1_1 == 15444 then
                                H_ = true
                                H1 = 121
                            else
                                H1 = 483
                                continue
                            end
                        elseif H1_1 < 15446 then
                            if H1_1 == 15445 then
                                HZ = HY ~= "Play"
                                H0 = H_
                                H1 = if H0 then 74 else 38
                            else
                                H1 = 15456
                                continue
                            end
                        elseif H1_1 < 15447 then
                            if H1_1 == 15446 then
                                y3("Play: offer timeout")
                                zg(GameHandShake, "ExitGame")
                                H1 = if not zR(0.8, "Play", i7) then 109 else 36
                            else
                                H1 = 15484
                                continue
                            end
                        else
                            H1 = if H_ then 111 else 91
                        end
                    elseif H1_1 == 15448 then
                        H1 = if AM("Play", i7) then 53 else 71
                    else
                        H1 = 15396
                        continue
                    end
                elseif H1_1 < 15453 then
                    if H1_1 < 15451 then
                        if H1_1 < 15450 then
                            H1 = if H_ then 112 else 63
                        else
                            H1 = if H_ then 102 else 44
                        end
                    elseif H1_1 < 15452 then
                        H1 = if H0 then 87 else 34
                    elseif H1_1 == 15452 then
                        H1 = if not zV(i7) then 118 else 67
                    else
                        H1 = 15414
                        continue
                    end
                elseif H1_1 < 15459 then
                    if H1_1 < 15454 then
                        if H1_1 == 15453 then
                            H1 = 72
                        else
                            H1 = 15377
                            continue
                        end
                    elseif H1_1 < 15457 then
                        if H1_1 < 15456 then
                            if H1_1 < 15455 then
                                HY = zz.Play == i7
                                H1 = 113
                            else
                                H1 = 117
                            end
                        elseif H1_1 == 15456 then
                            y3("Play: selection timeout")
                            zg(GameHandShake, "ExitGame")
                            H1 = if not zR(0.8, "Play", i7) then 59 else 12
                        else
                            H1 = 12306
                            continue
                        end
                    elseif H1_1 < 15458 then
                        H1 = if HY then 22 else 28
                    else
                        HY = State.AutoPlay
                        H1 = 76
                    end
                elseif H1_1 < 15461 then
                    if H1_1 < 15460 then
                        if H1_1 == 15459 then
                            H1 = if H0 then 78 else 89
                        else
                            H1 = 15458
                            continue
                        end
                    elseif H1_1 == 15460 then
                        HY = zz.Play == i7
                        H1 = 70
                    else
                        H1 = 15405
                        continue
                    end
                elseif H1_1 < 15462 then
                    if H1_1 == 15461 then
                        H1 = 107
                    else
                        H1 = 15387
                        continue
                    end
                elseif H1_1 < 15463 then
                    H1 = 95
                elseif H1_1 == 15463 then
                    H1 = if H0 then 90 else 1
                else
                    H1 = 15490
                    continue
                end
            elseif H1_1 < 15484 then
                if H1_1 < 15470 then
                    if H1_1 < 15468 then
                        if H1_1 < 15466 then
                            if H1_1 < 15465 then
                                return
                            end
                            H1 = 98
                        elseif H1_1 < 15467 then
                            if H1_1 == 15466 then
                                return
                            end
                            H1 = 15403
                            continue
                        elseif H1_1 == 15467 then
                            HZ = not zv.Shuffling
                            H1 = 13
                        else
                            H1 = 15427
                            continue
                        end
                    elseif H1_1 < 15469 then
                        if H1_1 == 15468 then
                            H1 = 86
                        else
                            H1 = 15487
                            continue
                        end
                    else
                        H1 = 119
                    end
                elseif H1_1 < 15479 then
                    if H1_1 < 15478 then
                        if H1_1 < 15474 then
                            if H1_1 < 15472 then
                                if H1_1 < 15471 then
                                    H1 = if not HY then 41 else 45
                                elseif H1_1 == 15471 then
                                    y3("Play: revealing")
                                    H1 = if not zR(2.8, "Play", i7) then 101 else 123
                                else
                                    H1 = 15479
                                    continue
                                end
                            elseif H1_1 < 15473 then
                                y3(HZ)
                                zg(GameHandShake, "ExitGame")
                                H1 = if not zR(0.8, "Play", i7) then 33 else 58
                            else
                                HY = HZ
                                H1 = if HY then 17 else 16
                            end
                        elseif H1_1 < 15476 then
                            if H1_1 < 15475 then
                                HZ = zz.Play == i7
                                H1 = 124
                            elseif H1_1 == 15475 then
                                H1 = if zX.PlayerGui:GetAttribute("WindowOpen") then 73 else 20
                            else
                                H1 = 15453
                                continue
                            end
                        elseif H1_1 < 15477 then
                            if H1_1 == 15476 then
                                H_ = HZ
                                H1 = if H_ then 6 else 52
                            else
                                H1 = 15497
                                continue
                            end
                        elseif H1_1 == 15477 then
                            HY = zX:GetAttribute("TutorialStep")
                            HZ = Tutorial
                            H1 = if HZ then 7 else 21
                        else
                            H1 = 15448
                            continue
                        end
                    else
                        H1 = 29
                    end
                elseif H1_1 < 15481 then
                    if H1_1 < 15480 then
                        if H1_1 == 15479 then
                            return
                        end
                        H1 = 15492
                        continue
                    elseif H1_1 == 15480 then
                        local HZ_1 = HY
                        HY = math.clamp(HZ_1 * (2.4 / math.max(H_, 0.2)) + 1.5, 5, 18)
                        HZ = os.clock()
                        H_ = false
                        H1 = 32
                    else
                        H1 = 15472
                        continue
                    end
                elseif H1_1 < 15482 then
                    HY = 3
                    H1 = 17
                elseif H1_1 < 15483 then
                    if H1_1 == 15482 then
                        H1 = 80
                    else
                        H1 = 15483
                        continue
                    end
                elseif H1_1 == 15483 then
                    H1 = 106
                else
                    H1 = 15406
                    continue
                end
            elseif H1_1 < 15494 then
                if H1_1 < 15490 then
                    if H1_1 < 15487 then
                        if H1_1 < 15485 then
                            H1 = if HZ then 66 else 3
                        elseif H1_1 < 15486 then
                            if H1_1 == 15485 then
                                H1 = 35
                            else
                                H1 = 15496
                                continue
                            end
                        else
                            HZ = 1
                            H1 = 0
                        end
                    elseif H1_1 < 15488 then
                        if H1_1 == 15487 then
                            HZ = #HY
                            H1 = 24
                        else
                            H1 = 11973
                            continue
                        end
                    elseif H1_1 < 15489 then
                        H1 = 107
                    elseif H1_1 == 15489 then
                        H1 = 32
                    else
                        H1 = 15438
                        continue
                    end
                elseif H1_1 < 15492 then
                    if H1_1 < 15491 then
                        if H1_1 == 15490 then
                            HZ = not Tutorial.Value
                            H1 = 21
                        else
                            H1 = 15417
                            continue
                        end
                    else
                        H_ = HY
                        H1 = 52
                    end
                elseif H1_1 < 15493 then
                    if H1_1 == 15492 then
                        H1 = if not H_ then 60 else 26
                    else
                        H1 = 15440
                        continue
                    end
                else
                    H1 = 97
                end
            elseif H1_1 < 15497 then
                if H1_1 < 15495 then
                    H1 = if HZ then 84 else 75
                elseif H1_1 < 15496 then
                    break
                else
                    H1 = if H0 then 85 else 122
                end
            else
                H_ = HZ
                HZ = type(HY) == "table"
                H1 = if HZ then 10 else 24
            end
        end
    end
end
function fns.fn634(aI, aJ)
    return aI.order < aJ.order
end
function fns.fn665(lN)
    local Jb = type(lN) == "table" and lN
    local Jc = {}
    local Jd = Jb
    local Jh = if Jd then 1 else 0
    local Jf = 1267 * Jh + 1108 * (1 - Jh)
    local Jg = 1184 * Jh + 3176 * (1 - Jh)
    if not ((Jf * 2690 + Jg * 1686 + Jf * Jg) % 16777213 == 6904582) then
        Jd = Jc
    end
    State.SkipRarities = Jd
end
function fns.fn714()
    local SequenceSlots = zv.SequenceSlots
    local Vote = zv.Vote
    local Hl = z5(SequenceSlots)
    zv.MeasuredGuess = Hl
    if Vote and Vote.Unanimous then
        return Vote.Cup, "learned"
    end
    if Hl and zv.MeasuredMisses <= zv.MeasuredHits then
        return Hl, "tracked"
    elseif Vote then
        return Vote.Cup, "learned vote"
    else
        return 2, "middle"
    end
end
function fns.fn767()
    connection2:Disconnect()
end
local function fn772()
    return require(y5:WaitForChild("Shared"):WaitForChild("CupShuffleAnimations", 10))
end
local function fn789(dT)
    local Ea = type(dT) ~= "table" or #dT == 0
    if Ea then
        return nil
    end
    local Ea_1 = {}
    for i, v in ipairs(dT) do
        local Eb = type(v) == "number" and "Shuffle" .. v
        local Ec = Eb or v
        local Ec_1 = type(Ec) == "string" and AP[Ec]
        if not Ec_1 then
            return nil
        end
        Ea_1[i] = Ec_1
    end
    return Ea_1
end
local function fn803()
    local Cv = AC()
    local Cw = Cv and Cv:FindFirstChild("HumanoidRootPart")
    return Cw
end
local function fn808(jY)
    while true do
        local Ii = zd() and zz.BuyCup == jY and State.AutoBuyCup
        if Ii then
            local Ii_1 = false
            local Ij = AN()
            local Il = Cups.Order or {}
            for i, v in ipairs(Il) do
                local Ik_1 = not zd() or zz.BuyCup ~= jY or not State.AutoBuyCup
                if Ik_1 then
                    break
                end
                local Ik_2 = Cups.Skins and Cups.Skins[v]
                local Il_1 = Ik_2
                if Ik_2 then
                    Ik_2 = not AE(v)
                end
                if Ik_2 then
                    if not (Il_1.PassRequired and Il_1.PassRequired ~= false) then
                        local Il_2 = Il_1.Price or 0
                        if Il_2 == 0 or Ij >= Il_2 then
                            y3("Buying cup " .. v)
                            zg(BuyCup, v)
                            Ii_1 = true
                            if not zR(0.35, "BuyCup", jY) then
                                return
                            end
                            Ij = AN()
                        end
                    end
                end
            end
            if not Ii_1 then
                y3("Cups: nothing affordable")
            end
            if not zR(1.25, "BuyCup", jY) then
                break
            end
            continue
        end
        return
    end
    return
end
local function fn815()
    for i, v in ipairs(EggsConfig.List()) do
        zW(v.rarity)
    end
end
local function fn840(bQ)
    State.Status = bQ
end
local function fn845(kz)
    while true do
        local IG = zd() and zz.Place == kz and State.AutoPlaceEggs
        if IG then
            local IG_1 = At()
            if not IG_1 then
                y3("Place: no base")
                if not zR(1, "Place", kz) then
                    return
                end
                continue
            end
            local IH = IG_1:GetAttribute("EggCapacity") or EggsConfig.MAX_PLACED_EGGS
            local II = IH or 10
            local II_1 = IG_1:GetAttribute("Eggs")
            if typeof(II_1) ~= "number" then
                local Eggs = IG_1:FindFirstChild("Eggs")
                local IK_1 = Eggs and #Eggs:GetChildren()
                II_1 = IK_1 or 0
            end
            if II_1 >= II then
                y3("Place: egg slots full")
                if not zR(1, "Place", kz) then
                    break
                end
                continue
            end
            local IH_2 = Aj()
            if #IH_2 == 0 then
                y3("Place: no matching eggs")
                if not zR(1, "Place", kz) then
                    return
                end
            else
                local II_2 = IH_2[1]
                local UID = II_2:FindFirstChild("UID")
                local IJ_3 = zy(IG_1)
                if not UID or not IJ_3 then
                    y3("Place: no free spot")
                    if not zR(0.8, "Place", kz) then
                        return
                    end
                else
                    y3("Placing " .. II_2.Name)
                    zg(PlaceEgg, II_2.Name, IJ_3, UID.Value)
                    if not zR(0.45, "Place", kz) then
                        return
                    end
                end
            end
            continue
        end
        return
    end
    return
end
local function fn850(eq)
    local EG = os.clock()
    while true do
        local EH_1 = zo.Busy and zd() and os.clock() - EG < 3
        if EH_1 then
            task.wait(0.05)
            continue
        end
        break
    end
    local Survivors = zo.Survivors
    if not zo.Enabled or zo.Busy or not Survivors or #Survivors == 0 then
        return nil
    end
    local EH_3 = { 0, 0, 0 }
    for i, v in ipairs(Survivors) do
        local EI_1 = zp(v, eq)
        EH_3[EI_1] += 1
        if i % 6000 == 0 then
            task.wait()
            local EI_2 = not zd() or zo.Survivors ~= Survivors
            if EI_2 then
                return nil
            end
        end
    end
    local EI_3 = 1
    local ES = 2
    while ES <= 3 do
        local ET = ES
        if EH_3[ET] > EH_3[EI_3] then
            EI_3 = ET
        end
        ES += 1
    end
    return { Cup = EI_3, Unanimous = EH_3[EI_3] == #Survivors }
end
local function fn862()
    local HB = Tutorial and Tutorial.Value
    local HB_9
    if not HB then
        return nil
    end
    local HB_1 = AR and AR.Value
    local HC_6
    local HB_2 = HB_1 == ""
    local HD = type(HB_1) ~= "string" or HB_2
    if HD then
        return nil
    end
    local HC_1 = AA and AA.Value or nil
    local HB_4 = zw(HC_1)
    local HC_2 = type(State.KeepMutations) == "table" and State.KeepMutations[HB_4] == true
    local HD_1 = Ak
    if HD_1 then
        HD_1 = Ak.Value == true
    end
    local HC_3 = not HC_2
    local HF = HD_1
    if HC_3 ~= false then
        HC_3 = not HF
    end
    if HC_3 then
        HC_3 = State.AutoSkipMutations
    end
    if HC_3 then
        HC_3 = type(State.SkipMutations) == "table"
    end
    if HC_3 then
        HC_3 = State.SkipMutations[HB_4] == true
    end
    if HC_3 then
        return HB_4
    end
    local HB_5 = not HC_2
    if HB_5 ~= false then
        HB_5 = State.AutoSkipRarities
    end
    if HB_5 then
        HB_5 = type(State.SkipRarities) == "table"
    end
    if HB_5 then
        local HB_6 = zf()
        if HB_6 and State.SkipRarities[HB_6] == true then
            return HB_6
        end
        if HB_9 then
            if HC_6 > AN() then
                return "unaffordable"
            end
            return nil
        end
        return nil
    end
    HB_9 = State.AutoSkipUnaffordable and Aq
    if HB_9 then
        local HB_10 = tonumber(Aq.Value) or 0
        HC_6 = HB_10
        if HC_6 > AN() then
            return "unaffordable"
        end
        return nil
    end
    return nil
end
local function fn887(lm)
    while true do
        local I1 = zd() and zz.Rebirth == lm and State.AutoRebirth
        if I1 then
            local I2_1 = RebirthConfig[(Rebirth2 and Rebirth2.Value or 0) + 1]
            if not I2_1 then
                y3("Rebirth: maxed")
                if not zR(2, "Rebirth", lm) then
                    return
                end
            else
                local I1_3 = AN()
                if I1_3 < (I2_1.Cost or math.huge) then
                    y3("Rebirth: need cash")
                    if not zR(1.25, "Rebirth", lm) then
                        return
                    end
                else
                    y3("Rebirthing")
                    zg(Rebirth, "Rebirth")
                    if not zR(1, "Rebirth", lm) then
                        return
                    end
                end
            end
            continue
        end
        break
    end
end
local function fn902(ma)
    State.AutoPlaceEggs = ma == true
    z1("Place", State.AutoPlaceEggs, zJ)
end
local function fn906(mu)
    State.AutoRebirth = mu == true
    z1("Rebirth", State.AutoRebirth, z2)
end
local function fn912(cQ, cR)
    if type(cQ) ~= "table" then
        return true
    end
    local Dj = false
    for k, v in pairs(cQ) do
        if v then
            Dj = true
            break
        end
    end
    if not Dj then
        return true
    end
    return cQ[cR] == true
end
local function fn916()
    return CoreGui
end
local function fn928()
    zA.Unload()
end
local function fn950(fg, fh)
    local FB_1
    local Fz = fh[1].Position - fh[2].Position
    local Fz_1
    local FA = (Fz.X * Fz.X + Fz.Z * Fz.Z) * 0.25
    FB_1, Fz_1 = {}, {}
    local FK = 1
    while true do
        if not (FK <= 3) then
            return FB_1
        end
        local FM = FK
        local FC = fg.Items[FM]
        if not FC.Parent then
            return nil
        end
        local FD = fg.Bone and FC.TransformedWorldCFrame.Position
        local FD_1
        local FE = FD or FC.Position
        local FE_1
        FE_1, FD_1 = nil, math.huge
        for i, v in ipairs(fh) do
            local FF = v.Position - FE
            local FG = FF.X * FF.X + FF.Z * FF.Z
            if FG < FD_1 then
                FE_1, FD_1 = i, FG
            end
        end
        if not FE_1 or FD_1 > FA or Fz_1[FE_1] then
            break
        end
        Fz_1[FE_1] = true
        FB_1[FM] = FE_1
        FK += 1
    end
    return nil
end
local function fn987(iy, iz, iA)
    local Value = AR.Value
    local HL = AA and AA.Value
    y3("Skipping " .. tostring(Value) .. " (" .. iA .. ")")
    zg(GameHandShake, "Select", { SpeedMultiplier = 2, StartTime = tick() })
    local HL_1 = os.clock()
    while true do
        if not (os.clock() - HL_1 < 3) then
            return zR(0.35, iy, iz)
        end
        local HN = not zd() or zz[iy] ~= iz
        if HN then
            break
        end
        if AR.Value ~= Value or AA and AA.Value ~= HL then
            return zR(0.35, iy, iz)
        end
        task.wait(0.05)
    end
    return false
end
local function fn1009(l6)
    State.AutoBuyDealers = l6 == true
    z1("BuyDealers", State.AutoBuyDealers, zI)
end
local function fn1030(eG)
    if not eG then
        return nil
    end
    local EV = 2
    for i, v in ipairs(eG) do
        local EW = y9[AU[v]]
        if not EW then
            return nil
        end
        EV = y7[EW][EV]
    end
    return EV
end
local function fn1051(cG)
    if not zL then
        return false
    end
    local Da = zL:FindFirstChild(cG)
    return Da and Da.Value == true
end
local function fn1057(ea, eb)
    if not zo.Enabled or zo.Busy then
        return
    end
    zo.Busy = true
    local Et_1 = {}
    local Survivors = zo.Survivors
    local Ew = Survivors and #Survivors or zo.Total
    local EA = 1
    while EA <= Ew do
        local EB = EA
        local Ev_2 = Survivors
        if Ev_2 then
            Ev_2 = Survivors[EB]
        end
        local Ew_1 = Ev_2
        if not Ew_1 then
            Ew_1 = EB - 1
        end
        local Ev_3 = Ew_1
        if zp(Ev_3, ea) == eb then
            Et_1[#Et_1 + 1] = Ev_3
        end
        if EB % 6000 == 0 then
            task.wait()
            if not zd() then
                zo.Busy = false
                return
            end
        end
        EA += 1
    end
    zo.Survivors = Et_1
    zo.Observed = zo.Observed + 1
    if #Et_1 == 0 then
        zo.Enabled = false
    end
    zo.Busy = false
end
local function fn1069(me)
    local Jt = type(me) == "table" and me
    local Jv = Jt or {}
    State.PlaceRarities = Jv
end
local function fn1071(mm)
    State.AutoEquipBest = mm == true
    z1("Equip", State.AutoEquipBest, An)
end
local function fn1093(g0)
    zv.RevealPending = false
    zv.PickReady = false
    zv.PickedThisRound = true
    zv.Shuffling = false
    local G1 = type(g0) == "table" and tonumber(g0.CorrectCup)
    local G2 = G1 or nil
    if not G2 or G2 < 1 or G2 > 3 then
        return
    end
    if zv.OurPick then
        zv.Guesses = zv.Guesses + 1
        if zv.OurPick == G2 then
            zv.Correct = zv.Correct + 1
        end
    end
    if zv.MeasuredGuess then
        if zv.MeasuredGuess == G2 then
            zv.MeasuredHits = zv.MeasuredHits + 1
        else
            zv.MeasuredMisses = zv.MeasuredMisses + 1
        end
    end
    local SequenceSlots = zv.SequenceSlots
    if SequenceSlots and Tutorial and Tutorial.Value then
        task.spawn(AD, SequenceSlots, G2)
    end
end
local function fn1102()
    return not zA.Unloaded
end
local function fn1103(iS)
    local HT = os.clock()
    while true do
        local HU = zd() and zz.Play == iS and State.AutoPlay
        if not HU then
            return false
        end
        if os.clock() - HT > 60 then
            return false
        end
        local HU_1 = Av() and zY()
        local HV = y8
        if HV then
            HV = y8.Value
        end
        if not HV then
            if not zR(0.1, "Play", iS) then
                return false
            end
        elseif not HU_1 then
            if os.clock() - zv.OfferChangedAt >= 0.35 then
                break
            end
            if not zR(0.1, "Play", iS) then
                return false
            end
        elseif not z6("Play", iS, HU_1) then
            return false
        end
    end
    return true
end
local function fn1122(kj)
    while true do
        local Iu = zd() and zz.BuyDealers == kj and State.AutoBuyDealers
        if Iu then
            local Iu_1 = false
            local Iv = AN()
            local Ix = DealersConfig.Order or {}
            for i, v in ipairs(Ix) do
                local Iw_1 = not zd() or zz.BuyDealers ~= kj or not State.AutoBuyDealers
                if Iw_1 then
                    break
                end
                local Iw_2 = DealersConfig.Skins and DealersConfig.Skins[v]
                local Ix_1 = Iw_2
                if Iw_2 then
                    Iw_2 = not Ai(v)
                end
                if Iw_2 then
                    if not (Ix_1.PassRequired and Ix_1.PassRequired ~= false) then
                        local Ix_2 = Ix_1.Price or 0
                        if Ix_2 == 0 or Iv >= Ix_2 then
                            y3("Buying dealer " .. v)
                            zg(zF, v)
                            Iu_1 = true
                            if not zR(0.35, "BuyDealers", kj) then
                                return
                            end
                            Iv = AN()
                        end
                    end
                end
            end
            if not Iu_1 then
                y3("Dealers: nothing affordable")
            end
            if not zR(1.25, "BuyDealers", kj) then
                break
            end
            continue
        end
        return
    end
    return
end
local function fn1135(lY)
    State.AutoSkipUnaffordable = lY == true
    z1("Skip", zb(), AQ)
end
local function fn1145()
    local E6 = At()
    local E7 = E6 and E6:FindFirstChild("DealerContainer")
    if not E7 then
        return nil
    end
    local E7_1 = {}
    local Fg = 1
    while Fg <= 3 do
        local Fi = Fg
        local E8 = E7:FindFirstChild("Cup" .. Fi)
        local E9 = E8 and E8:IsA("BasePart")
        if not E9 then
            return nil
        end
        E7_1[Fi] = E8
        Fg += 1
    end
    return E7:FindFirstChild("Lucky Dealer"), E7_1
end
local function fn1158(c4)
    local Du = EggsConfig.Get(c4)
    return Du and Du.rarity or nil
end
local function fn1181()
    local Base = AT:FindFirstChild("Base")
    if not Base then
        return nil
    end
    for i, child in ipairs(Base:GetChildren()) do
        if child:GetAttribute("Owner") == zX.Name then
            return child
        end
    end
    return nil
end
local function fn1192()
    gethui = zQ
end
local function fn1204(cL)
    if not zG then
        return false
    end
    local Dg = zG:FindFirstChild(cL)
    return Dg and Dg.Value == true
end
local function fn1209(d2, d3)
    local Pow = zo.Pow
    local El = 2
    for i, v in ipairs(d3) do
        El = y7[d2 // Pow[v] % 6 + 1][El]
    end
    return El
end
local function fn1218(lW)
    local Jp = type(lW) == "table" and lW
    local Jr = Jp or {}
    State.KeepMutations = Jr
end
local function fn1241(cW)
    return zT(State.PlaceRarities, cW)
end
local function onOnClientEvent(g9, ha)
    if not zd() then
        return
    end
    local G5 = g9 == "ShuffleSequence" and type(ha) == "table"
    if G5 then
        zi(ha)
    elseif g9 == "RevealResult" then
        z8(ha)
    elseif g9 == "InsufficientFunds" then
        zv.InsufficientFunds = true
    end
end
local function fn1260(jD)
    local H2 = false
    while true do
        local H3 = zd() and zz.Guess == jD and State.AutoGuess
        if H3 then
            if State.AutoPlay then
                if not zR(0.35, "Guess", jD) then
                    return
                end
            else
                local H3_1 = zh()
                if H3_1 and not H2 then
                    AM("Guess", jD)
                end
                H2 = H3_1
                if not zR(0.08, "Guess", jD) then
                    return
                end
            end
            continue
        end
        break
    end
end
local function fn1263(X)
    local Ca = typeof(cloneref) == "function" and typeof(X) == "Instance"
    if Ca then
        return cloneref(X)
    end
    return X
end
local function fn1270()
    local Cy = AC()
    local Cz = Cy and Cy:FindFirstChildOfClass("Humanoid")
    return Cz
end
local function fn1274(lU)
    local Ji = type(lU) == "table" and lU
    local Jk = Ji or {}
    State.SkipMutations = Jk
end
local function fn1292(l2)
    State.AutoBuyCup = l2 == true
    z1("BuyCup", State.AutoBuyCup, zH)
end
y3 = nil
y5 = nil
y7 = nil
y8 = nil
y9 = nil
connection = nil
zb = nil
zd = nil
zf = nil
zg = nil
zh = nil
zi = nil
PlaytimeRemote = nil
Rebirth = nil
zn = nil
zo = nil
zp = nil
zt = nil
zu = nil
zv = nil
zw = nil
zx = nil
zy = nil
zz = nil
zA = nil
zB = nil
PlaceEgg = nil
State = nil
zF = nil
zG = nil
zH = nil
zI = nil
zJ = nil
BuyCup = nil
zL = nil
zM = nil
GameHandShake = nil
zP = nil
local Players, y4, zc, ze, zj, zl, zq, zr, zs, zE, zN
zQ = nil
zR = nil
Mutations = nil
zT = nil
zU = nil
zV = nil
zW = nil
zX = nil
zY = nil
zZ = nil
Cups = nil
z0 = nil
z1 = nil
z2 = nil
z3 = nil
z5 = nil
z6 = nil
BrainrotsConfig = nil
z8 = nil
z9 = nil
Rebirth2 = nil
LuckyBlockConfig = nil
Tutorial = nil
EggsConfig = nil
Ai = nil
Aj = nil
Ak = nil
CoreGui = nil
DealersConfig = nil
An = nil
TimeRewardConfig = nil
Aq = nil
At = nil
RebirthConfig = nil
Av = nil
Aw = nil
UpgradesConfig = nil
Az = nil
AA = nil
AC = nil
local z4, Lighting, Ac, TeleportService, Ag, GuiService, HttpService, As, VirtualUser, UserInputService
AD = nil
AE = nil
AH = nil
AK = nil
AM = nil
AN = nil
connection2 = nil
AP = nil
AQ = nil
AR = nil
AS = nil
AT = nil
AU = nil
local AF, AG, AI, AJ, RunService
AF = nil
AG = nil
AI = nil
AJ = nil
RunService = nil
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, zX, zQ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local NA_13 = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
local NA_27 = game:GetService("Workspace")
zX = Players.LocalPlayer
local NA_40 = "OuroborosShuffleAnEgg"
zQ = fn916
if getgenv then
    getgenv().gethui = zQ
end
zA, y5, AT, UpgradesConfig, RebirthConfig, TimeRewardConfig, DealersConfig, EggsConfig, LuckyBlockConfig, BrainrotsConfig, Cups, Mutations, zN, z4, zl, zd = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn1192)
local function NA_30(t)
    local B1
    local B3
    local B2
    B1 = nil
    B2 = nil
    B3 = nil
    local B4 = t ~= ""
    local B5 = type(t) == "string" and B4
    assert(B5, "Namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    B1 = getgenv()
    assert(type(B1) == "table", "getgenv did not return a table")
    local B4_1 = B1[t]
    if B4_1 ~= nil then
        local B5_1 = type(B4_1) == "table" and type(B4_1.Unload) == "function"
        assert(B5_1, "Namespace is occupied")
        B4_1.Unload()
        assert(B1[t] == nil, "Previous instance did not release its namespace")
    end
    B2 = {}
    B3 = { State = {}, Unloaded = false }
    B3.Track = function(C)
        assert(type(C) == "function", "Cleanup must be callable")
        if B3.Unloaded then
            C()
        else
            table.insert(B2, C)
        end
        return C
    end
    B3.Unload = function()
        local BV_1
        local BU_1
        if B3.Unloaded then
            return
        end
        B3.Unloaded = true
        local BS = {}
        local BZ = #B2
        local BY = -1
        while false and BZ <= 1 or true and BZ >= 1 do
            local B_ = BZ
            local BT_1 = table.remove(B2, B_)
            BU_1, BV_1 = pcall(BT_1)
            if not BU_1 then
                table.insert(BS, tostring(BV_1))
            end
            BZ += BY
        end
        table.clear(B3.State)
        if #BS > 0 then
            error("Cleanup incomplete: " .. table.concat(BS, "; "), 0)
        end
        if B1[t] == B3 then
            B1[t] = nil
        end
    end
    B1[t] = B3
    return B3
end
z4 = function(P, Q)
    local B8 = type(P) == "table" and type(P.Track) == "function"
    assert(B8, "FeatureAPI required")
    local B8_1 = type(Q) == "table" and type(Q.OnUnload) == "function"
    assert(B8_1, "UI library required")
    assert(type(Q.Unload) == "function", "UI unload required")
    P.Track(function()
        if not Q.Unloaded then
            Q:Unload()
        end
    end)
    Q:OnUnload(function()
        P.Unload()
    end)
end
zA = NA_30(NA_40)
local NA_11 = fn1263
zl = fns.fn414
zd = fn1102
y5 = NA_11(NA_13)
AT = NA_11(NA_27)
local NA_31 = y5:WaitForChild("Remotes", 30)
assert(NA_31, "Remotes missing")
local NA_16 = y5:WaitForChild("Configs", 30)
assert(NA_16, "Configs missing")
UpgradesConfig = require(NA_16:WaitForChild("UpgradesConfig"))
RebirthConfig = require(NA_16:WaitForChild("RebirthConfig"))
TimeRewardConfig = require(NA_16:WaitForChild("TimeRewardConfig"))
DealersConfig = require(NA_16:WaitForChild("DealersConfig"))
EggsConfig = require(NA_16:WaitForChild("EggsConfig"))
LuckyBlockConfig = require(NA_16:WaitForChild("LuckyBlockConfig"))
BrainrotsConfig = require(NA_16:WaitForChild("BrainrotsConfig"))
Cups = require(y5:WaitForChild("Assets"):WaitForChild("CupSkins"):WaitForChild("Cups"))
local NA_45 = require(y5:WaitForChild("Shared"):WaitForChild("WeightSystem"):WaitForChild("Rarities"))
Mutations = require(y5:WaitForChild("Shared"):WaitForChild("WeightSystem"):WaitForChild("Mutations"))
zN = {}
NA_11 = type(Mutations.ORDER) == "table" and Mutations.ORDER
NA_40 = {}
NA_27 = NA_11 or NA_40
for i, v in ipairs(NA_27) do
    if type(v) == "string" then
        table.insert(zN, v)
    end
end
zw = function(aw)
    local Cd_1
    local Cc_1
    Cc_1, Cd_1 = pcall(Mutations.Name, aw)
    local Ce = Cc_1 and type(Cd_1) == "string"
    local Cd_2 = Ce and Cd_1
    if not Cd_2 then
        Cd_2 = Mutations.NONE or "Normal"
    end
    return Cd_2
end
local y6 = {}
NA_27, NA_40 = nil, nil
NA_11 = 5
repeat
    NA_13 = (NA_11 * 1 + 0) % 2 + 1
    if NA_13 <= 1 then
        if (NA_11 * 2 + 9) * 16 % 3 == ((NA_11 * 2 + 9) * 16 + 3) % 3 then
            NA_40 = NA_45.RarityRank
        else
            NA_45 = NA_40.RarityRank
        end
        NA_11 = (NA_11 + 11) % 16
    else
        if (NA_11 * 1 + 3) * 17 % 4 == ((NA_11 * 1 + 3) * 17 + 8) % 4 then
            NA_27 = {}
        else
            NA_40 = {}
        end
        NA_11 = (NA_11 + 5) % 16
    end
until (NA_11 * 3 + 13) % 16 == 12
if type(NA_40) == "table" then
    for k, v in pairs(NA_40) do
        NA_11 = type(k) == "string" and type(v) == "number"
        if NA_11 then
            table.insert(NA_27, { name = k, order = v })
        end
    end
    NA_11 = 0
    repeat
        local P1 = bit32.rrotate(bit32.bxor(bit32.lrotate(NA_11, 21), string.byte(tostring(NA_11))), 20)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(P1, 4257865231), 881370237), (bit32.bxor(bit32.band(P1, 37102064), 504061483))), 881370237), 504061483) == P1 then
            table.sort(NA_27, fns.fn634)
        else
            table.sort(NA_27, fns.fn634)
        end
        NA_11 = (NA_11 + 3) % 4
    until (NA_11 * 3 + 1) % 4 == 2
    for i, v in ipairs(NA_27) do
        table.insert(y6, v.name)
    end
end
z9 = table.clone(y6)
z0, zW = nil, nil
z0 = {}
zW = fns.fn20
pcall(fn815)
for k, v in pairs(LuckyBlockConfig) do
    if type(v) == "table" then
        zW(v.Rarity)
    end
end
table.sort(z0)
for i, v in ipairs(z0) do
    table.insert(z9, v)
end
y7, AU, AP, AI = nil, nil, nil, nil
NA_11 = 4
repeat
    NA_40 = { "qkwxcpe", "opxbtfmbze", "ijpaml", "qhikcupxmw", "nodarzfzhrm", "ngcsfjgxq", "ijgbauf" }
    local Qc = NA_11
    NA_27 = NA_40[Qc % 7 + 1]
    if NA_27:len() <= NA_27:reverse():rep(Qc % 3 + 2):len() then
        y7 = { { 1, 2, 3 }, { 1, 3, 2 }, { 2, 1, 3 }, { 2, 3, 1 }, { 3, 1, 2 }, { 3, 2, 1 } }
        AU = {}
        AP = {}
        AI = {}
    else
        AU = { { 2, 1, 3 }, { 2, 3, 1 }, { 2, 1, 3 }, { 1, 3, 2 }, { 1, 2, 3 }, { 2, 1, 3 } }
        AI = {}
        y7 = {}
        AP = {}
    end
    NA_11 = (NA_11 + 2) % 8
until (NA_11 * 3 + 6) % 8 == 0
NA_27, NA_43, NA_13 = nil, nil, nil
NA_40 = 4
repeat
    NA_11 = (NA_40 * 1 + 1) % 2 + 1
    if NA_11 <= 1 then
        NA_11 = (vector.create((NA_40 * 2 + 3) % 11 + 1, (NA_40 * 9 + 1) % 13 + 1, (NA_40 * 3 + 3) % 17 + 1))
        NA_30 = (vector.create((NA_40 * 3 + 5) % 11 + 1, (NA_40 * 3 + 12) % 13 + 1, (NA_40 * 15 + 1) % 17 + 1))
        NA_16 = (vector.create((NA_40 * 6 + 7) % 11 + 1, (NA_40 * 6 + 7) % 13 + 1, (NA_40 * 15 + 7) % 17 + 1))
        NA_45 = (vector.create((NA_40 * 4 + 7) % 11 + 1, (NA_40 * 9 + 13) % 13 + 1, (NA_40 * 2 + 7) % 17 + 1))
        if vector.dot(vector.cross(NA_11, NA_30), (vector.cross(NA_16, NA_45))) == vector.dot(NA_11, NA_16) * vector.dot(NA_30, NA_45) - vector.dot(NA_11, NA_45) * vector.dot(NA_30, NA_16) then
            NA_13 = NA_27
        else
            NA_27 = NA_13
        end
        NA_40 = (NA_40 + 7) % 8
    else
        local Qa = bit32.rrotate(bit32.bxor(bit32.lrotate(NA_40, 23), string.byte(tostring(NA_43))), 4)
        if bit32.bxor(bit32.lrotate(bit32.bxor(Qa, 506946015), 2), 2027784060) ~= bit32.lrotate(Qa, 2) then
            NA_43, NA_27 = pcall(fn772)
        else
            NA_27, NA_43 = pcall(fn772)
        end
        NA_40 = (NA_40 + 7) % 8
    end
until (NA_40 * 1 + 2) % 8 == 4
if NA_13 then
    NA_11 = 1
    repeat
        NA_40 = (vector.create((NA_11 * 3 + 8) % 11 + 1, (NA_11 * 5 + 6) % 13 + 1, (NA_11 * 9 + 10) % 17 + 1))
        NA_27 = (vector.create((NA_11 * 2 + 2) % 11 + 1, (NA_11 * 5 + 12) % 13 + 1, (NA_11 * 6 + 16) % 17 + 1))
        NA_30 = (vector.create((NA_11 * 5 + 5) % 5 + 1, (NA_11 * 5 + 7) % 7 + 1, (NA_11 * 3 + 7) % 9 + 1))
        if math.abs((vector.angle(NA_40, NA_27, NA_30))) - math.abs((vector.angle(NA_27, NA_40, NA_30))) == 0 then
            NA_13 = type(NA_43) == "table"
        else
            NA_43 = type(NA_13) == "table"
        end
        NA_11 = (NA_11 + 2) % 4
    until (NA_11 * 1 + 2) % 4 == 1
end
if NA_13 then
    NA_11 = 1
    repeat
        if NA_11 * 43294077 + 8 + 5 <= NA_11 * 43294077 + 8 + 5 + 6 then
            NA_13 = type(NA_43.Shuffles) == "table"
        else
            NA_43 = type(NA_13.Shuffles) == "table"
        end
        NA_11 = (NA_11 + 4) % 8
    until (NA_11 * 1 + 0) % 8 == 5
end
if NA_13 then
    for k, v in pairs(NA_43.Shuffles) do
        NA_11 = type(k) == "string" and type(v) == "string"
        if NA_11 then
            table.insert(AU, k)
            NA_11 = v:match("%d+")
            if NA_11 then
                AI[NA_11] = k
            end
        end
    end
    table.sort(AU)
    for i, v in ipairs(AU) do
        AP[v] = i
    end
end
GameHandShake, BuyCup, zF, PlaceEgg, zx, zt, zn, Rebirth, PlaytimeRemote, NA_27, NA_40 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
NA_11 = 10
repeat
    NA_13 = (NA_11 * 5 + 5) % 7 + 1
    if NA_13 <= 4 then
        if NA_13 <= 2 then
            if NA_13 <= 1 then
                if (not NA_11 or NA_27) and (NA_40 and NA_11) and ((not PlaytimeRemote or PlaytimeRemote) and (PlaceEgg or NA_11)) and ((PlaceEgg or GameHandShake) and (NA_27 and PlaceEgg) and (not NA_40 or not NA_40 or (not GameHandShake or not NA_40))) or ((NA_11 or PlaceEgg) and (PlaceEgg or not GameHandShake) and (not NA_27 and PlaceEgg and (not GameHandShake and PlaytimeRemote)) or (not PlaceEgg or NA_27) and (PlaceEgg or GameHandShake) and (PlaytimeRemote or not NA_11 or (GameHandShake or not NA_27))) or not ((not NA_11 or NA_27) and (NA_40 and NA_11) and ((not PlaytimeRemote or PlaytimeRemote) and (PlaceEgg or NA_11)) and ((PlaceEgg or GameHandShake) and (NA_27 and PlaceEgg) and (not NA_40 or not NA_40 or (not GameHandShake or not NA_40))) or ((NA_11 or PlaceEgg) and (PlaceEgg or not GameHandShake) and (not NA_27 and PlaceEgg and (not GameHandShake and PlaytimeRemote)) or (not PlaceEgg or NA_27) and (PlaceEgg or GameHandShake) and (PlaytimeRemote or not NA_11 or (GameHandShake or not NA_27)))) then
                    BuyCup = NA_31:WaitForChild("BuyCup")
                else
                    NA_31 = BuyCup:WaitForChild("BuyCup")
                end
                NA_11 = (NA_11 + 10) % 28
            else
                NA_43 = { "wtqokwmxfg", "qbkdktggv", "vxnufusdwpz", "mhcuvxlxgos", "ashwfljfj", "fwn", "mtjnpyar" }
                local Qb = NA_11
                NA_30 = NA_43[Qb % 7 + 1]
                if NA_30:len() <= NA_30:gsub("(.)", "%1%1", Qb % 3 % 2 + 1):len() then
                    zF = NA_31:WaitForChild("BuyDealer")
                    PlaceEgg = NA_31:WaitForChild("PlaceEgg")
                    zx = NA_31:WaitForChild("OpenEgg")
                else
                    NA_31 = PlaceEgg:WaitForChild("BuyDealer")
                    zx = PlaceEgg:WaitForChild("PlaceEgg")
                    zF = PlaceEgg:WaitForChild("OpenEgg")
                end
                NA_11 = (NA_11 + 3) % 28
            end
        elseif NA_13 <= 3 then
            NA_43 = {
                "vokbxsvbmj",
                "dqytcomjg",
                "mnelcepjqy",
                "qbb",
                "czhakxnarxz",
                "xogfmwvxu",
                "fbzwwvxle",
                "ammfsumy"
            }
            local OZ = NA_11
            NA_30 = NA_43[OZ % 8 + 1]
            if NA_30:len() >= NA_30:reverse():rep(OZ % 3 + 2):len() then
                NA_31 = Rebirth:WaitForChild("EquipBestAnimals")
                zt = Rebirth:WaitForChild("Upgrade")
                zn = Rebirth:WaitForChild("Rebirth")
            else
                zt = NA_31:WaitForChild("EquipBestAnimals")
                zn = NA_31:WaitForChild("Upgrade")
                Rebirth = NA_31:WaitForChild("Rebirth")
            end
            NA_11 = (NA_11 + 24) % 28
        else
            local P4 = bit32.rrotate(bit32.bxor(bit32.lrotate(NA_11, 11), string.byte(tostring(zx))), 27)
            if bit32.bxor(bit32.lrotate(bit32.bxor(P4, 3417623239), 24), 3352016074) == bit32.lrotate(P4, 24) then
                PlaytimeRemote = NA_31:WaitForChild("PlaytimeRemote")
            else
                NA_31 = PlaytimeRemote:WaitForChild("PlaytimeRemote")
            end
            NA_11 = (NA_11 + 17) % 28
        end
    elseif NA_13 <= 6 then
        if NA_13 <= 5 then
            NA_13 = (vector.create((NA_11 * 3 + 5) % 11 + 1, (NA_11 * 9 + 7) % 13 + 1, (NA_11 * 10 + 13) % 17 + 1))
            NA_43 = (vector.create((NA_11 * 4 + 2) % 11 + 1, (NA_11 * 1 + 2) % 13 + 1, (NA_11 * 4 + 15) % 17 + 1))
            NA_30 = (vector.create((NA_11 * 3 + 2) % 11 + 1, (NA_11 * 1 + 12) % 13 + 1, (NA_11 * 7 + 11) % 17 + 1))
            NA_16 = (vector.create((NA_11 * 3 + 9) % 11 + 1, (NA_11 * 9 + 11) % 13 + 1, (NA_11 * 12 + 11) % 17 + 1))
            if vector.dot(vector.cross(NA_13, NA_43), (vector.cross(NA_30, NA_16))) == vector.dot(NA_13, NA_30) * vector.dot(NA_43, NA_16) - vector.dot(NA_13, NA_16) * vector.dot(NA_43, NA_30) then
                NA_27 = zX:WaitForChild("Game", 30)
            else
                zX = NA_27:WaitForChild("Game", 30)
            end
            NA_11 = (NA_11 + 3) % 28
        else
            if NA_11 * 58734561 + 10 + 7 <= NA_11 * 58734561 + 10 + 7 + 4 then
                NA_40 = NA_27
            else
                NA_27 = NA_40
            end
            NA_11 = (NA_11 + 24) % 28
        end
    else
        NA_13 = (vector.create((NA_11 * 2 + 6) % 11 + 1, (NA_11 * 7 + 9) % 13 + 1, (NA_11 * 12 + 3) % 17 + 1))
        NA_43 = (vector.create((NA_11 * 1 + 4) % 11 + 1, (NA_11 * 10 + 11) % 13 + 1, (NA_11 * 12 + 2) % 17 + 1))
        local N2 = vector.cross(NA_13, NA_43)
        local N3 = vector.dot(NA_13, NA_43)
        if vector.dot(N2, N2) + N3 * N3 == vector.dot(NA_13, NA_13) * vector.dot(NA_43, NA_43) + 5 then
            NA_31 = GameHandShake:WaitForChild("GameHandShake")
        else
            GameHandShake = NA_31:WaitForChild("GameHandShake")
        end
        NA_11 = (NA_11 + 3) % 28
    end
until (NA_11 * 5 + 14) % 28 == 8
if NA_40 then
    NA_11 = 0
    repeat
        NA_13 = (vector.create((NA_11 * 3 + 8) % 11 + 1, (NA_11 * 2 + 4) % 13 + 1, (NA_11 * 8 + 13) % 17 + 1))
        NA_43 = (vector.create((NA_11 * 4 + 4) % 11 + 1, (NA_11 * 5 + 3) % 13 + 1, (NA_11 * 12 + 15) % 17 + 1))
        NA_30 = (vector.create((NA_11 * 5 + 1) % 11 + 1, (NA_11 * 3 + 2) % 13 + 1, (NA_11 * 15 + 17) % 17 + 1))
        NA_16 = (vector.create((NA_11 * 2 + 6) % 11 + 1, (NA_11 * 10 + 13) % 13 + 1, (NA_11 * 14 + 16) % 17 + 1))
        if vector.dot(vector.cross(NA_13, NA_43), (vector.cross(NA_30, NA_16))) == vector.dot(NA_13, NA_30) * vector.dot(NA_43, NA_16) - vector.dot(NA_13, NA_16) * vector.dot(NA_43, NA_30) + 5 then
            NA_27 = NA_40:WaitForChild("CanSkip", 30)
        else
            NA_40 = NA_27:WaitForChild("CanSkip", 30)
        end
        NA_11 = (NA_11 + 3) % 4
    until (NA_11 * 1 + 3) % 4 == 2
end
NA_13 = NA_27
y8 = NA_40
if NA_13 then
    NA_11 = 1
    repeat
        local OH = bit32.rrotate(bit32.bxor(bit32.lrotate(NA_11, 22), string.byte(tostring(NA_11))), 9)
        if bit32.bxor(bit32.lrotate(bit32.bxor(OH, 2600811271), 30), 3871428289) ~= bit32.lrotate(OH, 30) then
            NA_27 = NA_13:WaitForChild("Selected", 30)
        else
            NA_13 = NA_27:WaitForChild("Selected", 30)
        end
        NA_11 = (NA_11 + 3) % 4
    until (NA_11 * 1 + 2) % 4 == 2
end
NA_40 = NA_27
AR = NA_13
if NA_40 then
    NA_11 = 6
    repeat
        if (NA_11 * 2 + 2) * 10 % 3 == ((NA_11 * 2 + 2) * 10 + 6) % 3 then
            NA_40 = NA_27:WaitForChild("Mutation", 30)
        else
            NA_27 = NA_40:WaitForChild("Mutation", 30)
        end
        NA_11 = (NA_11 + 7) % 8
    until (NA_11 * 3 + 5) % 8 == 4
end
NA_13 = NA_27
AA = NA_40
if NA_13 then
    NA_11 = 1
    repeat
        NA_40 = (vector.create((NA_11 * 6 + 1) % 11 + 1, (NA_11 * 4 + 12) % 13 + 1, (NA_11 * 12 + 15) % 17 + 1))
        NA_43 = (vector.create((NA_11 * 5 + 3) % 11 + 1, (NA_11 * 2 + 5) % 13 + 1, (NA_11 * 8 + 2) % 17 + 1))
        NA_30 = (vector.create((NA_11 * 5 + 1) % 11 + 1, (NA_11 * 3 + 8) % 13 + 1, (NA_11 * 9 + 17) % 17 + 1))
        NA_16 = (vector.create((NA_11 * 2 + 6) % 5 + 1, (NA_11 * 1 + 4) % 7 + 1, (NA_11 * 4 + 3) % 9 + 1))
        if vector.dot(vector.cross(NA_40, (vector.cross(NA_43, NA_30))), NA_16) == vector.dot(NA_43 * vector.dot(NA_40, NA_30) - NA_30 * vector.dot(NA_40, NA_43), NA_16) + 3 then
            NA_27 = NA_13:WaitForChild("Price", 30)
        else
            NA_13 = NA_27:WaitForChild("Price", 30)
        end
        NA_11 = (NA_11 + 0) % 4
    until (NA_11 * 3 + 1) % 4 == 0
end
NA_40 = NA_27
Aq = NA_13
if NA_40 then
    NA_11 = 7
    repeat
        NA_13 = (vector.create((NA_11 * 1 + 3) % 11 + 1, (NA_11 * 10 + 6) % 13 + 1, (NA_11 * 14 + 10) % 17 + 1))
        NA_43 = (vector.create((NA_11 * 6 + 5) % 11 + 1, (NA_11 * 1 + 9) % 13 + 1, (NA_11 * 14 + 12) % 17 + 1))
        NA_30 = (vector.create((NA_11 * 2 + 4) % 11 + 1, (NA_11 * 4 + 8) % 13 + 1, (NA_11 * 6 + 12) % 17 + 1))
        NA_16 = (vector.create((NA_11 * 3 + 6) % 5 + 1, (NA_11 * 3 + 4) % 7 + 1, (NA_11 * 2 + 6) % 9 + 1))
        if vector.dot(vector.cross(NA_13, (vector.cross(NA_43, NA_30))), NA_16) == vector.dot(NA_43 * vector.dot(NA_13, NA_30) - NA_30 * vector.dot(NA_13, NA_43), NA_16) then
            NA_40 = NA_27:WaitForChild("PlayForLuckyBlock", 30)
        else
            NA_27 = NA_40:WaitForChild("PlayForLuckyBlock", 30)
        end
        NA_11 = (NA_11 + 3) % 8
    until (NA_11 * 5 + 1) % 8 == 3
end
Ak, Tutorial, Rebirth2, z3, NA_43, NA_30 = nil, nil, nil, nil, nil, nil
NA_13 = 9
repeat
    NA_11 = (NA_13 * 1 + 1) % 3 + 1
    if NA_11 <= 2 then
        if NA_11 <= 1 then
            NA_11 = {
                "ewjovjr",
                "fiyfgzijgd",
                "sgkipuyyl",
                "frmndgdnthk",
                "inmi",
                "elsmcvlmgxh",
                "yyeqzqunaq",
                "irgvwamil",
                "rfrf"
            }
            local O_ = NA_13
            NA_27 = NA_11[O_ % 9 + 1]
            if NA_27:len() <= NA_27:reverse():rep(O_ % 3 + 2):len() then
                NA_30 = NA_43
            else
                NA_43 = NA_30
            end
            NA_13 = (NA_13 + 13) % 24
        else
            if not Rebirth2 and NA_30 or (not Ak or NA_13) or (not Ak or not NA_43) and (Rebirth2 and NA_13) or not (not Rebirth2 and NA_30 or (not Ak or NA_13) or (not Ak or not NA_43) and (Rebirth2 and NA_13)) then
                Ak = NA_40
                Tutorial = zX:WaitForChild("Tutorial", 30)
                Rebirth2 = zX:WaitForChild("Rebirth", 30)
                z3 = zX:WaitForChild("Upgrades", 30)
            else
                NA_40 = Tutorial
                zX = Rebirth2:WaitForChild("Tutorial", 30)
                z3 = Rebirth2:WaitForChild("Rebirth", 30)
                Ak = Rebirth2:WaitForChild("Upgrades", 30)
            end
            NA_13 = (NA_13 + 22) % 24
        end
    else
        NA_11 = (vector.create((NA_13 * 1 + 8) % 11 + 1, (NA_13 * 10 + 6) % 13 + 1, (NA_13 * 11 + 4) % 17 + 1))
        NA_27 = (vector.create((NA_13 * 7 + 2) % 11 + 1, (NA_13 * 5 + 6) % 13 + 1, (NA_13 * 9 + 9) % 17 + 1))
        NA_16 = (vector.create((NA_13 * 5 + 1) % 11 + 1, (NA_13 * 9 + 10) % 13 + 1, (NA_13 * 1 + 14) % 17 + 1))
        if vector.dot(vector.cross(NA_11, NA_27), NA_16) == vector.dot(vector.cross(NA_27, NA_16), NA_11) then
            NA_43 = zX:WaitForChild("leaderstats", 30)
        else
            zX = NA_43:WaitForChild("leaderstats", 30)
        end
        NA_13 = (NA_13 + 7) % 24
    end
until (NA_13 * 23 + 3) % 24 == 0
if NA_30 then
    NA_11 = 3
    repeat
        NA_40 = (vector.create((NA_11 * 5 + 9) % 11 + 1, (NA_11 * 1 + 1) % 13 + 1, (NA_11 * 15 + 2) % 17 + 1))
        NA_27 = (vector.create((NA_11 * 1 + 8) % 11 + 1, (NA_11 * 2 + 9) % 13 + 1, (NA_11 * 1 + 3) % 17 + 1))
        NA_13 = (vector.create((NA_11 * 3 + 3) % 5 + 1, (NA_11 * 5 + 6) % 7 + 1, (NA_11 * 4 + 1) % 9 + 1))
        if math.abs((vector.angle(NA_40, NA_27, NA_13))) - math.abs((vector.angle(NA_27, NA_40, NA_13))) == 3 then
            NA_43 = NA_30:WaitForChild("Money", 30)
        else
            NA_30 = NA_43:WaitForChild("Money", 30)
        end
        NA_11 = (NA_11 + 2) % 4
    until (NA_11 * 3 + 2) % 4 == 1
end
zP, zL, zG, State, zz, zv, zo = nil, nil, nil, nil, nil, nil, nil
NA_40 = 13
repeat
    NA_11 = (NA_40 * 1 + 1) % 3 + 1
    if NA_11 <= 2 then
        if NA_11 <= 1 then
            local PT = bit32.rrotate(bit32.bxor(bit32.lrotate(NA_40, 12), string.byte(tostring(zL))), 17)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(PT, 754707819), 3427236494), (bit32.bxor(bit32.band(PT, 3540259476), 3018923567))), 3427236494), 3018923567) == PT then
                zL = zX:WaitForChild("Cups", 30)
                zG = zX:WaitForChild("OwnedDealers", 30)
                State = zA.State
                State.Status = "Idle"
                State.AutoPlay = false
                State.AutoGuess = false
                State.AutoSkipRarities = false
                State.SkipRarities = {}
                State.AutoSkipUnaffordable = false
                State.AutoSkipMutations = false
                State.SkipMutations = {}
                State.KeepMutations = {}
                State.AutoBuyCup = false
                State.AutoBuyDealers = false
                State.AutoPlaceEggs = false
                State.PlaceRarities = {}
                State.PlaceMutations = {}
                State.AutoHatchEggs = false
                State.AutoEquipBest = false
                State.AutoBuyPetSlot = false
                State.AutoRebirth = false
                State.AutoClaimPlaytime = false
                zz = {
                    Play = 0,
                    Guess = 0,
                    Skip = 0,
                    BuyCup = 0,
                    BuyDealers = 0,
                    Place = 0,
                    Hatch = 0,
                    Equip = 0,
                    PetSlot = 0,
                    Rebirth = 0,
                    Playtime = 0
                }
                zv = {
                    LastSequence = nil,
                    LastSpeed = 1,
                    PickReady = false,
                    PickedThisRound = false,
                    RevealPending = false,
                    Shuffling = false,
                    InsufficientFunds = false,
                    SequenceSlots = nil,
                    Vote = nil,
                    VotePending = false,
                    Measuring = 0,
                    OurPick = nil,
                    PickMethod = nil,
                    MeasuredGuess = nil,
                    MeasuredHits = 0,
                    MeasuredMisses = 0,
                    Guesses = 0,
                    Correct = 0,
                    OfferChangedAt = 0
                }
            else
                zv = zz:WaitForChild("Cups", 30)
                zX = zz:WaitForChild("OwnedDealers", 30)
                zA = State.State
                zA.Status = "Idle"
                zA.AutoPlay = false
                zA.AutoGuess = false
                zA.AutoSkipRarities = false
                zA.SkipRarities = {}
                zA.AutoSkipUnaffordable = false
                zA.AutoSkipMutations = false
                zA.SkipMutations = {}
                zA.KeepMutations = {}
                zA.AutoBuyCup = false
                zA.AutoBuyDealers = false
                zA.AutoPlaceEggs = false
                zA.PlaceRarities = {}
                zA.PlaceMutations = {}
                zA.AutoHatchEggs = false
                zA.AutoEquipBest = false
                zA.AutoBuyPetSlot = false
                zA.AutoRebirth = false
                zA.AutoClaimPlaytime = false
                zG = {
                    Hatch = 0,
                    Place = 0,
                    BuyDealers = 0,
                    PetSlot = 0,
                    Equip = 0,
                    Rebirth = 0,
                    Play = 0,
                    Playtime = 0,
                    BuyCup = 0,
                    Skip = 0,
                    Guess = 0
                }
                zL = {
                    PickReady = false,
                    VotePending = false,
                    Vote = nil,
                    OfferChangedAt = 0,
                    PickedThisRound = false,
                    InsufficientFunds = false,
                    Correct = 0,
                    MeasuredHits = 0,
                    MeasuredMisses = 0,
                    MeasuredGuess = nil,
                    Shuffling = false,
                    LastSpeed = 1,
                    LastSequence = nil,
                    RevealPending = false,
                    Measuring = 0,
                    PickMethod = nil,
                    Guesses = 0,
                    SequenceSlots = nil,
                    OurPick = nil
                }
            end
            NA_40 = (NA_40 + 4) % 24
        else
            if NA_40 * 93772465 + 3 + 3 <= NA_40 * 93772465 + 3 + 3 + 2 then
                zo = { Enabled = false, Pow = {}, Total = 0, Survivors = nil, Observed = 0, Busy = false }
            else
                zv = { Survivors = nil, Total = 0, Busy = false, Pow = {}, Observed = 0, Enabled = false }
            end
            NA_40 = (NA_40 + 19) % 24
        end
    else
        if not NA_40 and not zP and (not zP or not zz) and ((not NA_40 or zz) and (NA_40 or not zz)) or NA_40 and not zP and (zP and not zP) and (zz and zz or not zL and zz) or not (not NA_40 and not zP and (not zP or not zz) and ((not NA_40 or zz) and (NA_40 or not zz)) or NA_40 and not zP and (zP and not zP) and (zz and zz or not zL and zz)) then
            zP = NA_30
        else
            NA_30 = zP
        end
        NA_40 = (NA_40 + 16) % 24
    end
until (NA_40 * 7 + 17) % 24 == 21
NA_13, NA_27 = nil, nil
NA_11 = 4
repeat
    NA_40 = (NA_11 * 1 + 0) % 2 + 1
    if NA_40 <= 1 then
        if (not NA_27 or NA_27 or (NA_13 or NA_27) or (NA_11 and NA_27 or (NA_11 or not NA_27))) and ((not NA_11 or NA_27 or (NA_11 or NA_13)) and (NA_27 and NA_11 and (NA_11 and NA_13))) and ((not NA_11 or not NA_13 or NA_13 and NA_27) and (NA_13 and NA_27 or NA_13 and NA_13) or NA_11 and NA_11 and (NA_27 and NA_13) and (NA_13 and not NA_11 or NA_13 and not NA_13)) and not ((not NA_27 or NA_27 or (NA_13 or NA_27) or (NA_11 and NA_27 or (NA_11 or not NA_27))) and ((not NA_11 or NA_27 or (NA_11 or NA_13)) and (NA_27 and NA_11 and (NA_11 and NA_13))) and ((not NA_11 or not NA_13 or NA_13 and NA_27) and (NA_13 and NA_27 or NA_13 and NA_13) or NA_11 and NA_11 and (NA_27 and NA_13) and (NA_13 and not NA_11 or NA_13 and not NA_13))) then
            AU = #NA_13
        else
            NA_13 = #AU
        end
        NA_11 = (NA_11 + 1) % 8
    else
        NA_40 = {
            "ycwukrn",
            "ydfdg",
            "elxvvghlps",
            "mxrdm",
            "gfgelkywptm",
            "ojq",
            "kfzbdvozzzc",
            "bccj",
            "jmxyja",
            "pkucdhqv",
            "mihhmbdpav"
        }
        local P_ = NA_11
        NA_43 = NA_40[P_ % 11 + 1]
        if NA_43:len() <= NA_43:reverse():rep(P_ % 3 + 2):len() then
            NA_27 = NA_13 > 0
        else
            NA_13 = NA_27 > 0
        end
        NA_11 = (NA_11 + 3) % 8
    end
until (NA_11 * 3 + 7) % 8 == 7
if NA_27 then
    NA_11 = 3
    repeat
        if NA_11 * 38928535 + 6 + 4 >= NA_11 * 38928535 + 6 + 4 + 6 then
            NA_13 = 6 ^ NA_27 <= 300000
        else
            NA_27 = 6 ^ NA_13 <= 300000
        end
        NA_11 = (NA_11 + 0) % 4
    until (NA_11 * 3 + 1) % 4 == 2
end
if NA_27 then
    NA_40 = nil
    NA_11 = 7
    repeat
        NA_27 = (vector.create((NA_11 * 4 + 6) % 11 + 1, (NA_11 * 5 + 11) % 13 + 1, (NA_11 * 2 + 9) % 17 + 1))
        NA_43 = (vector.create((NA_11 * 5 + 2) % 11 + 1, (NA_11 * 1 + 9) % 13 + 1, (NA_11 * 8 + 3) % 17 + 1))
        local OO = vector.dot(NA_27, NA_43)
        if OO * OO <= vector.dot(NA_27, NA_27) * vector.dot(NA_43, NA_43) then
            zo.Enabled = true
            NA_40 = 1
        else
            NA_40.Enabled = true
            zo = 1
        end
        NA_11 = (NA_11 + 5) % 8
    until (NA_11 * 7 + 3) % 8 == 7
    local BK = 1
    local BI = NA_13
    while BK <= BI do
        local BL = BK
        zo.Pow[BL] = NA_40
        NA_40 *= 6
        BK += 1
    end
    zo.Total = NA_40
end
y9, zc, connection, y3, AC, As, Ac, zR, zg, AN, At, zZ, zh, AE, Ai, zT, zs, ze, AG, Aj, Aw, zy, Ag, zp, AD, zq, z5, zr, AF, zj, zE, AJ, y4, zi, z8 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
y9 = {}
y3 = fn840
AC = fns.fn337
As = fn803
Ac = fn1270
zR = fns.fn196
zg = function(cb, ...)
    local cc
    cc = table.pack(...)
    return pcall(function()
        cb:FireServer(table.unpack(cc, 1, cc.n))
    end)
end
AN = fns.fn115
At = fn1181
zZ = fns.fn501
zh = fns.fn270
AE = fn1051
Ai = fn1204
zT = fn912
zs = fn1241
if ((not At or z8) and false or false and (z8 or false)) and not ((not At or z8) and false or false and (z8 or false)) then
    AG = fns.fn373
    ze = fn1158
else
    ze = fns.fn373
    AG = fn1158
end
Aj = function()
    local c9 = {}
    local function da(db)
        if not db then
            return
        end
        for i, child in ipairs(db:GetChildren()) do
            local Dx = child:IsA("Tool") and child:FindFirstChild("UID") and not child:FindFirstChild("IsPet")
            if Dx then
                local Dx_1 = AG(child.Name)
                local Dy = Dx_1 and zs(Dx_1) and zT(State.PlaceMutations, ze(child))
                if Dy then
                    table.insert(c9, child)
                end
            end
        end
    end
    da(zX:FindFirstChild("Backpack"))
    da(AC())
    return c9
end
Aw = fns.fn427
zy = fns.fn68
Ag = fn789
zp = fn1209
AD = fn1057
zq = fn850
z5 = fn1030
zr = fn1145
AF = function(eY)
    local Ft
    Ft = nil
    Ft = {}
    local function Fu(e0, e1)
        if not e0 then
            return
        end
        local Fj = {}
        local Fq = 1
        while true do
            if Fq <= 3 then
                local Fs = Fq
                local Fk = e0:FindFirstChild("Cup" .. Fs)
                local Fl = not Fk
                if not Fl then
                    local Fm_1 = e1 and not Fk:IsA("Bone")
                    Fl = Fm_1
                end
                if not Fl then
                    local Fm_2 = not e1
                    if Fm_2 ~= false then
                        Fm_2 = not Fk:IsA("BasePart")
                    end
                    Fl = Fm_2
                end
                if Fl then
                    break
                end
                Fj[Fs] = Fk
                Fq += 1
                continue
            end
            table.insert(Ft, { Items = Fj, Bone = e1 })
            return
        end
        return
    end
    local RootPart = eY:FindFirstChild("RootPart")
    local Cups = eY:FindFirstChild("Cups")
    local Fx = RootPart and RootPart:FindFirstChild("Bone")
    Fu(Fx, true)
    local Fv_1 = Cups and Cups:FindFirstChild("SKIN")
    Fu(Fv_1, false)
    local Fv_2 = Cups and Cups:FindFirstChild("LOCATIONS")
    Fu(Fv_2, false)
    return Ft
end
zj = fn950
zE = function(fA)
    local FW_1
    local FV_1
    FV_1, FW_1 = pcall(function()
        return fA.Animation and fA.Animation.AnimationId
    end)
    local FX = FV_1 and type(FW_1) == "string" and FW_1:match("%d+")
    if FX and AI[FX] then
        return AI[FX]
    end
    return AP[fA.Name] and fA.Name or nil
end
AJ = function(fM, fN, fO, fP)
    local onStopped, Gy, Gz, GA, GB, GC, GD, GE, GF
    GB = AF(fO)
    if #GB == 0 then
        return
    end
    zv.Measuring = zv.Measuring + 1
    GF, GD, GA, Gy = nil, nil, nil, nil
    GC = false
    GE = 0
    Gz = {}
    onStopped = function()
        if GC then
            return
        end
        GC = true
        zv.Measuring = math.max(zv.Measuring - 1, 0)
        for k, v in pairs(Gz) do
            v:Disconnect()
        end
        local F1 = Gy
        if not F1 then
            F1 = GE >= 0.85 and GA
        end
        local F1_1 = F1 or nil
        if not (GD and F1_1) then
            return
        end
        local F2_4 = {}
        local Gc = 1
        while Gc <= 3 do
            local Gd = Gc
            F2_4[GD[Gd]] = F1_1[Gd]
            Gc += 1
        end
        for i, v in ipairs(y7) do
            if v[1] == F2_4[1] and v[2] == F2_4[2] and v[3] == F2_4[3] then
                y9[fN] = i
                break
            end
        end
    end
    Gz.beat = RunService.Heartbeat:Connect(function()
        local Gl = not zd() or not fM.IsPlaying
        if Gl then
            onStopped()
            return
        end
        local Length = fM.Length
        local Gl_2 = Length > 0 and fM.TimePosition / Length or 0
        if not GF then
            for i, v in ipairs(GB) do
                local Gl_3 = zj(v, fP)
                if Gl_3 then
                    GF, GD = v, Gl_3
                    break
                end
            end
            if not GF and Gl_2 > 0.25 then
                onStopped()
            end
            return
        end
        local Gl_5 = zj(GF, fP)
        if Gl_5 then
            GA = Gl_5
            GE = Gl_2
        end
    end)
    pcall(function()
        Gz.change = fM:GetMarkerReachedSignal("CHANGE"):Connect(function()
            if GF and not Gy then
                local Gu_1 = zj(GF, fP) or GA
                Gy = Gu_1
            end
        end)
    end)
    Gz.stopped = fM.Stopped:Connect(onStopped)
    task.delay(math.max(fM.Length, 1) * 4 + 5, onStopped)
end
zc = nil
connection = nil
y4 = function()
    local GN, GO
    GO, GN = zr()
    local GP = GO and GO:FindFirstChild("AnimationController")
    local GQ = GP
    if GP then
        GP = GQ:FindFirstChildOfClass("Animator")
    end
    local GQ_1 = GP
    if not GQ_1 or GQ_1 == zc then
        return
    end
    if connection then
        connection:Disconnect()
    end
    zc = GQ_1
    connection = GQ_1.AnimationPlayed:Connect(function(gG)
        if not zd() then
            return
        end
        local GH = zE(gG)
        if GH and GO.Parent then
            AJ(gG, GH, GO, GN)
        end
    end)
end
zA.Track(fns.fn285)
pcall(y4)
zi = function(gO)
    pcall(y4)
    zv.LastSequence = gO.Sequence
    local G_ = gO.Speed or 1
    zv.LastSpeed = G_
    zv.PickedThisRound = false
    zv.PickReady = false
    zv.RevealPending = false
    zv.Shuffling = true
    zv.OurPick = nil
    zv.PickMethod = nil
    zv.MeasuredGuess = nil
    zv.Vote = nil
    local GZ = Ag(gO.Sequence)
    zv.SequenceSlots = GZ
    if GZ and zo.Enabled and zo.Observed > 0 then
        zv.VotePending = true
        task.spawn(function()
            local GX = zq(GZ)
            if zv.SequenceSlots == GZ then
                zv.Vote = GX
                zv.VotePending = false
            end
        end)
    else
        zv.VotePending = false
    end
end
z8 = fn1093
connection2, Az = nil, nil
NA_40 = 5
repeat
    local Qd = bit32.rrotate(bit32.bxor(bit32.lrotate(NA_40, 23), string.byte(tostring(connection2))), 2)
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Qd, 1134072073), 3246629000), (bit32.bxor(bit32.band(Qd, 3160895222), 1741727630))), 3246629000), 1741727630) ~= Qd then
        Az = connection2.OnClientEvent:Connect(onOnClientEvent)
        GameHandShake.Track(fns.fn767)
        zA = {}
    else
        connection2 = GameHandShake.OnClientEvent:Connect(onOnClientEvent)
        zA.Track(fns.fn767)
        Az = {}
    end
    NA_40 = (NA_40 + 7) % 8
until (NA_40 * 5 + 0) % 8 == 4
for i, v in ipairs({ AR, AA, Ak }) do
    if v then
        table.insert(Az, v:GetPropertyChangedSignal("Value"):Connect(function()
            zv.OfferChangedAt = os.clock()
            zv.Shuffling = false
        end))
    end
end
zA.Track(function()
    for i, v in ipairs(Az) do
        v:Disconnect()
    end
end)
AS, NA_27, NA_13, z1, zu, AM, zf, zY, z6, Av, zV, AH, zU, zb, AQ, zH, zI, zJ, zM, An, zB, z2, AK, NA_40 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
NA_11 = 60
repeat
    NA_43 = (NA_11 * 1 + 5) % 9 + 1
    if NA_43 <= 5 then
        if NA_43 <= 3 then
            if NA_43 <= 2 then
                if NA_43 <= 1 then
                    local Pd = bit32.rrotate(bit32.bxor(bit32.lrotate(NA_11, 26), string.byte(tostring(An))), 1)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(Pd, 1979954686), 12), 996140896) == bit32.lrotate(Pd, 12) then
                        zA.SetAutoPlay = fns.fn450
                        zA.SetAutoGuess = fns.fn413
                        zA.SetAutoSkipRarities = fns.fn329
                        zA.SetSkipRarities = fns.fn665
                        zA.SetAutoSkipMutations = fns.fn73
                        zA.SetSkipMutations = fn1274
                        zA.SetKeepMutations = fn1218
                        zA.SetAutoSkipUnaffordable = fn1135
                        zA.SetAutoBuyCup = fn1292
                        zA.SetAutoBuyDealers = fn1009
                        zA.SetAutoPlaceEggs = fn902
                        zA.SetPlaceRarities = fn1069
                        zA.SetPlaceMutations = fns.fn401
                        zA.SetAutoHatchEggs = fns.fn557
                        zA.SetAutoEquipBest = fn1071
                        zA.SetAutoBuyPetSlot = fns.fn545
                        zA.SetAutoRebirth = fn906
                        zA.SetAutoClaimPlaytime = fns.fn45
                        NA_40 = function()
                            local Nf
                            local Library
                            Nf = nil
                            Library = nil
                            local M9, Na, Nb, Options, Nd, SaveManager, Nh, Toggles, Nj, Nk, ThemeManager
                            Nb = "https://ouroboros-hub-rbx.web.app/"
                            Nj = "https://rscripts.net/@Ouroboros"
                            Nf = "https://discord.gg/synapsex"
                            Nk = "Shuffle an Egg"
                            Library = assert(loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))(), "Library load failed")
                            ThemeManager = assert(loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))(), "ThemeManager load failed")
                            SaveManager = assert(loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))(), "SaveManager load failed")
                            Toggles, Options = Library.Toggles, Library.Options
                            z4(zA, Library)
                            Nd = function(mR, mS)
                                local JE
                                if type(setclipboard) == "function" then
                                    JE = setclipboard
                                elseif type(toclipboard) == "function" then
                                    JE = toclipboard
                                end
                                if not JE then
                                    Library:Notify("Clipboard unavailable")
                                    return
                                end
                                local JF = pcall(JE, tostring(mR))
                                if JF then
                                    local JE_2 = mS or "Copied"
                                    Library:Notify(JE_2)
                                else
                                    Library:Notify("Clipboard copy failed")
                                end
                            end
                            local Window = Library:CreateWindow({
                                Title = "Ouroboros",
                                Font = Enum.Font.BuilderSans,
                                Footer = { { Text = Nf, Copyable = true }, "|", Nk, "|", "v0.5" },
                                Icon = 132608042600488,
                                NotifySide = "Right",
                                ShowCustomCursor = false,
                                CornerRadius = 0,
                                SidebarCompacted = true,
                                TabSwipeFrom = "bottom",
                                Animations = { TabSwitch = true }
                            })
                            Nh = {}
                            Nh[1] = Window:AddTab("Info", "info")
                            Nh[4] = Window:AddTab("Main", "gamepad-2")
                            Nh[2] = Window:AddTab("Player", "person-standing")
                            Nh[3] = Window:AddTab("Settings", "settings")
                            M9 = {
                                [1] = Nh[4]:AddSubTab("Game", "dices"),
                                [2] = Nh[4]:AddSubTab("Base", "home"),
                                [3] = Nh[4]:AddSubTab("Shop", "shopping-bag")
                            }
                            local function Nm(m_)
                                local DiscordGroup = m_:AddLeftGroupbox("Discord", "message-circle")
                                DiscordGroup:AddDiscordBox(nil, {
                                    Banner = 95892854151512,
                                    Avatar = 132608042600488,
                                    Title = "Ouroboros Hub",
                                    Subtitle = "Dupes, keyless scripts and updates",
                                    Status = "online",
                                    Accent = Color3.fromRGB(88, 101, 242),
                                    Link = Nf,
                                    Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
                                })
                                return DiscordGroup
                            end
                            Nm(M9[1])
                            Nm(M9[2])
                            Nm(M9[3])
                            Nm(Nh[2])
                            Nm(Nh[3])
                            local Nm_8 = { name = "getgenv", ok = zl(getgenv) }
                            local Nn_4 = zl(game.HttpGet)
                            local No = {}
                            local Nn_5 = { Nm_8, { name = "HttpGet", ok = Nn_4 } }
                            for i, v in ipairs(Nn_5) do
                                if not v.ok then
                                    table.insert(No, v.name)
                                end
                            end
                            local Nm_9 = #No == 0 and "(ready)"
                            local Nn_6 = Nm_9 or "(missing " .. table.concat(No, ", ") .. ")"
                            Na = Nn_6
                            local function Nm_10()
                                local ot
                                local nu
                                local np
                                local function na(nb)
                                    return (tostring(nb):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
                                end
                                local function nc(nd, ne)
                                    return string.format('<font color="%s">%s</font>', ne, na(nd))
                                end
                                local function ng(nh, ni, nj)
                                    return string.format("<b>%s</b> %s %s", nh, nc("-", "#5a6070"), nc(ni, nj))
                                end
                                local nl = "#7fd47f"
                                local nm = "#6ec1ff"
                                np = "Unknown"
                                local nn = "#e8a34d"
                                local no = "#8b93a3"
                                pcall(function()
                                    local JI_2
                                    local JH_3
                                    if type(identifyexecutor) == "function" then
                                        JI_2, JH_3 = identifyexecutor()
                                        local JJ = JI_2 ~= ""
                                        local JK = type(JI_2) == "string" and JJ
                                        if JK then
                                            local JJ_2 = type(JH_3) == "string" and JH_3 ~= "" and JI_2 .. " " .. JH_3
                                            np = JJ_2 or JI_2
                                        end
                                    end
                                end)
                                nu = os.clock()
                                local function nv()
                                    local JM = math.floor(os.clock() - nu)
                                    if JM < 60 then
                                        return JM .. "s"
                                    elseif JM < 3600 then
                                        return string.format("%dm %ds", JM // 60, JM % 60)
                                    else
                                        return string.format("%dh %dm", JM // 3600, JM % 3600 // 60)
                                    end
                                end
                                local UserGroup = Nh[1]:AddLeftGroupbox("User", "circle-user")
                                UserGroup:AddPlayerInfo("InfoUserCard", { Player = zX, Title = "User", HeaderIcon = "user", Collapsible = false })
                                UserGroup:AddLabel(ng("User", zX.DisplayName .. " @" .. zX.Name, nl), true)
                                UserGroup:AddLabel(ng("UserId", tostring(zX.UserId), nm), true)
                                UserGroup:AddLabel(ng("Executor", np .. "  " .. Na, nl), true)
                                UserGroup:AddDivider()
                                local Label4 = UserGroup:AddLabel(ng("Session", nv(), nn), true)
                                UserGroup:AddDivider()
                                UserGroup:AddButton({
                                    Text = "Copy Username",
                                    Func = function()
                                        Nd(zX.Name, "Copied username")
                                    end
                                })
                                UserGroup:AddButton({
                                    Text = "Copy Profile Link",
                                    Func = function()
                                        Nd("https://www.roblox.com/users/" .. tostring(zX.UserId) .. "/profile", "Copied profile link")
                                    end
                                })
                                local DiscordGroup = Nh[1]:AddRightGroupbox("Discord", "message-circle")
                                DiscordGroup:AddDiscordBox(nil, {
                                    Banner = 95892854151512,
                                    Avatar = 132608042600488,
                                    Title = "Ouroboros Hub",
                                    Subtitle = "Dupes, keyless scripts and updates",
                                    Status = "online",
                                    Accent = Color3.fromRGB(88, 101, 242),
                                    Link = Nf,
                                    Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
                                })
                                local SessionGroup = Nh[1]:AddRightGroupbox("Session", "signal")
                                SessionGroup:AddLabel(ng("Game", Nk, nl), true)
                                local Label3 = SessionGroup:AddLabel(ng("Players", tostring(#Players:GetPlayers()), nm), true)
                                local Label2 = SessionGroup:AddLabel(ng("Job", string.sub(game.JobId, 1, 12) .. "...", no), true)
                                local Label = SessionGroup:AddLabel(ng("Ping", "--", nn), true)
                                SessionGroup:AddButton({
                                    Text = "Rejoin Place",
                                    Func = function()
                                        pcall(function()
                                            TeleportService:Teleport(game.PlaceId, zX)
                                        end)
                                    end
                                })
                                SessionGroup:AddButton({
                                    Text = "Copy Job ID",
                                    Func = function()
                                        Nd(game.JobId, "Copied job id")
                                    end
                                })
                                local SocialsGroup = Nh[1]:AddRightGroupbox("Socials", "link")
                                SocialsGroup:AddButton({
                                    Text = "Copy Discord",
                                    Func = function()
                                        Nd(Nf, "Copied discord")
                                    end
                                })
                                SocialsGroup:AddButton({
                                    Text = "Copy Rscripts",
                                    Func = function()
                                        Nd(Nj, "Copied rscripts")
                                    end
                                })
                                SocialsGroup:AddButton({
                                    Text = "Copy Website",
                                    Func = function()
                                        Nd(Nb, "Copied website")
                                    end
                                })
                                ot = task.spawn(function()
                                    while true do
                                        local JO = zd() and not Library.Unloaded
                                        if JO then
                                            Label4:SetText(ng("Session", nv(), nn))
                                            Label3:SetText(ng("Players", tostring(#Players:GetPlayers()), nm))
                                            Label2:SetText(ng("Job", string.sub(game.JobId, 1, 12) .. "...", no))
                                            local JO_2 = zX:GetNetworkPing()
                                            Label:SetText(ng("Ping", string.format("%dms", math.floor(JO_2 * 1000)), nn))
                                            task.wait(1)
                                            continue
                                        end
                                        break
                                    end
                                end)
                                zA.Track(function()
                                    if coroutine.status(ot) ~= "dead" then
                                        task.cancel(ot)
                                    end
                                end)
                            end
                            Nm_10()
                            local function Nm_11()
                                local oW
                                local CupGameGroup = M9[1]:AddRightGroupbox("Cup Game", "dices")
                                local Label2 = CupGameGroup:AddLabel(State.Status, true)
                                CupGameGroup:AddToggle("AutoPlay", { Text = "Auto Play Game", Default = false, Callback = zA.SetAutoPlay })
                                CupGameGroup:AddToggle("AutoGuess", { Text = "Auto Guess Correct Cup", Default = false, Callback = zA.SetAutoGuess })
                                local Label = CupGameGroup:AddLabel("Guesses: 0/0 correct", true)
                                CupGameGroup:AddDivider()
                                CupGameGroup:AddToggle("AutoSkipRarities", { Text = "Auto Skip Egg Rarities", Default = false, Callback = zA.SetAutoSkipRarities })
                                CupGameGroup:AddDropdown("SkipRarities", {
                                    Text = "Skip Rarities",
                                    Values = z9,
                                    Multi = true,
                                    Default = {},
                                    AllowNull = true,
                                    Callback = zA.SetSkipRarities
                                })
                                CupGameGroup:AddToggle("AutoSkipMutations", { Text = "Auto Skip Egg Mutations", Default = false, Callback = zA.SetAutoSkipMutations })
                                CupGameGroup:AddDropdown("SkipMutations", {
                                    Text = "Skip Mutations",
                                    Values = zN,
                                    Multi = true,
                                    Default = {},
                                    AllowNull = true,
                                    Callback = zA.SetSkipMutations
                                })
                                CupGameGroup:AddDropdown("KeepMutations", {
                                    Text = "Always Keep Mutations",
                                    Values = zN,
                                    Multi = true,
                                    Default = {},
                                    AllowNull = true,
                                    Callback = zA.SetKeepMutations
                                })
                                CupGameGroup:AddToggle("AutoSkipUnaffordable", { Text = "Auto Skip Unaffordable Eggs", Default = false, Callback = zA.SetAutoSkipUnaffordable })
                                local BaseGroup = M9[2]:AddRightGroupbox("Base", "home")
                                BaseGroup:AddToggle("AutoPlaceEggs", { Text = "Auto Place Eggs", Default = false, Callback = zA.SetAutoPlaceEggs })
                                BaseGroup:AddDropdown("PlaceRarities", {
                                    Text = "Place Rarities",
                                    Values = y6,
                                    Multi = true,
                                    Default = {},
                                    AllowNull = true,
                                    Callback = zA.SetPlaceRarities
                                })
                                BaseGroup:AddDropdown("PlaceMutations", {
                                    Text = "Place Mutations",
                                    Values = zN,
                                    Multi = true,
                                    Default = {},
                                    AllowNull = true,
                                    Callback = zA.SetPlaceMutations
                                })
                                BaseGroup:AddToggle("AutoHatchEggs", { Text = "Auto Hatch Eggs", Default = false, Callback = zA.SetAutoHatchEggs })
                                BaseGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false, Callback = zA.SetAutoEquipBest })
                                BaseGroup:AddToggle("AutoBuyPetSlot", { Text = "Auto Buy Pet Slot", Default = false, Callback = zA.SetAutoBuyPetSlot })
                                BaseGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false, Callback = zA.SetAutoRebirth })
                                BaseGroup:AddToggle("AutoClaimPlaytime", { Text = "Auto Claim Playtime Rewards", Default = false, Callback = zA.SetAutoClaimPlaytime })
                                local ShopGroup = M9[3]:AddRightGroupbox("Shop", "shopping-bag")
                                ShopGroup:AddToggle("AutoBuyCup", { Text = "Auto Buy Cup", Default = false, Callback = zA.SetAutoBuyCup })
                                ShopGroup:AddToggle("AutoBuyDealers", { Text = "Auto Buy Dealers", Default = false, Callback = zA.SetAutoBuyDealers })
                                oW = task.spawn(function()
                                    while true do
                                        local JY = zd() and not Library.Unloaded
                                        if JY then
                                            pcall(function()
                                                Label2:SetText(State.Status)
                                                local JR = string.format("Guesses: %d/%d correct", zv.Correct, zv.Guesses)
                                                if zv.PickMethod then
                                                    JR ..= " | last: " .. zv.PickMethod
                                                end
                                                if zo.Observed > 0 then
                                                    local JT = zo.Enabled and " | learned " .. zo.Observed .. " rounds" or " | server looks random"
                                                    JR ..= JT
                                                end
                                                Label:SetText(JR)
                                            end)
                                            task.wait(0.35)
                                            continue
                                        end
                                        break
                                    end
                                end)
                                zA.Track(function()
                                    if coroutine.status(oW) ~= "dead" then
                                        task.cancel(oW)
                                    end
                                end)
                            end
                            Nm_11()
                            local function Nm_12()
                                local o1
                                local MovementGroup = Nh[2]:AddLeftGroupbox("Movement", "person-standing")
                                local FlightGroup = Nh[2]:AddRightGroupbox("Flight", "plane")
                                o1 = {
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
                                local function o2()
                                    local J0 = Ac()
                                    if not J0 then
                                        return
                                    end
                                    if o1[1] then
                                        if o1[8] == nil then
                                            o1[8] = J0.WalkSpeed
                                        end
                                        J0.WalkSpeed = o1[2]
                                    elseif o1[8] ~= nil then
                                        J0.WalkSpeed = o1[8]
                                        o1[8] = nil
                                    end
                                end
                                local function o8()
                                    if o1[9] then
                                        pcall(function()
                                            o1[9]:Destroy()
                                        end)
                                        o1[9] = nil
                                    end
                                    local J2 = Ac()
                                    if J2 then
                                        J2.PlatformStand = false
                                    end
                                end
                                local function pd()
                                    o8()
                                    local J4 = As()
                                    local J5 = Ac()
                                    if not J4 or not J5 then
                                        return
                                    end
                                    J5.PlatformStand = true
                                    local bodyVelocity = Instance.new("BodyVelocity")
                                    bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
                                    bodyVelocity.Velocity = Vector3.zero
                                    bodyVelocity.Parent = J4
                                    o1[9] = bodyVelocity
                                end
                                local function pn()
                                    for k, v in pairs(o1[10]) do
                                        if k and k.Parent then
                                            k.CanCollide = v
                                        end
                                    end
                                    table.clear(o1[10])
                                end
                                local function ps()
                                    for k, v in pairs(o1[14]) do
                                        if k and k.Parent then
                                            k.HoldDuration = v.HoldDuration
                                            k.MaxActivationDistance = v.MaxActivationDistance
                                            k.RequiresLineOfSight = v.RequiresLineOfSight
                                        end
                                    end
                                    table.clear(o1[14])
                                end
                                local function onDescendantAdded(py)
                                    if not py:IsA("ProximityPrompt") then
                                        return
                                    end
                                    if not o1[14][py] then
                                        o1[14][py] = {
                                            HoldDuration = py.HoldDuration,
                                            MaxActivationDistance = py.MaxActivationDistance,
                                            RequiresLineOfSight = py.RequiresLineOfSight
                                        }
                                    end
                                    py.HoldDuration = 0
                                    py.MaxActivationDistance = 50
                                    py.RequiresLineOfSight = false
                                end
                                MovementGroup:AddToggle("WalkSpeedEnabled", {
                                    Text = "WalkSpeed",
                                    Default = false,
                                    Callback = function(pA)
                                        o1[1] = pA
                                        o2()
                                    end
                                })
                                MovementGroup:AddSlider("WalkSpeed", {
                                    Text = "Speed",
                                    Default = 32,
                                    Min = 16,
                                    Max = 250,
                                    Rounding = 0,
                                    Callback = function(pD)
                                        o1[2] = pD
                                        if o1[1] then
                                            o2()
                                        end
                                    end
                                })
                                MovementGroup:AddToggle("InfJump", {
                                    Text = "Infinite Jump",
                                    Default = false,
                                    Callback = function(pG)
                                        o1[6] = pG
                                        if o1[12] then
                                            o1[12]:Disconnect()
                                            o1[12] = nil
                                        end
                                        if pG then
                                            o1[12] = UserInputService.JumpRequest:Connect(function()
                                                local Kr = not zd() or not o1[6]
                                                if Kr then
                                                    return
                                                end
                                                local Kr_2 = Ac()
                                                if Kr_2 then
                                                    Kr_2:ChangeState(Enum.HumanoidStateType.Jumping)
                                                end
                                            end)
                                        end
                                    end
                                })
                                MovementGroup:AddToggle("NoClip", {
                                    Text = "Noclip",
                                    Default = false,
                                    Callback = function(pT)
                                        o1[5] = pT
                                        if o1[11] then
                                            o1[11]:Disconnect()
                                            o1[11] = nil
                                        end
                                        if not pT then
                                            pn()
                                            return
                                        end
                                        o1[11] = RunService.Stepped:Connect(function()
                                            local Ku = not zd() or not o1[5]
                                            if Ku then
                                                return
                                            end
                                            local Ku_2 = AC()
                                            if not Ku_2 then
                                                return
                                            end
                                            for i, descendant in ipairs(Ku_2:GetDescendants()) do
                                                if descendant:IsA("BasePart") then
                                                    if o1[10][descendant] == nil then
                                                        o1[10][descendant] = descendant.CanCollide
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
                                    Callback = function(p9)
                                        o1[7] = p9
                                        if o1[13] then
                                            o1[13]:Disconnect()
                                            o1[13] = nil
                                        end
                                        if not p9 then
                                            ps()
                                            return
                                        end
                                        for i, descendant in ipairs(AT:GetDescendants()) do
                                            onDescendantAdded(descendant)
                                        end
                                        o1[13] = AT.DescendantAdded:Connect(onDescendantAdded)
                                    end
                                })
                                FlightGroup:AddToggle("Fly", {
                                    Text = "Fly",
                                    Default = false,
                                    Callback = function(qi)
                                        o1[3] = qi
                                        if qi then
                                            pd()
                                        else
                                            o8()
                                        end
                                    end
                                })
                                FlightGroup:AddSlider("FlySpeed", {
                                    Text = "Fly Speed",
                                    Default = 60,
                                    Min = 10,
                                    Max = 400,
                                    Rounding = 0,
                                    Callback = function(qm)
                                        o1[4] = qm
                                    end
                                })
                                local connection2 = RunService.RenderStepped:Connect(function()
                                    local KO = not zd() or not o1[3] or not o1[9]
                                    if KO then
                                        return
                                    end
                                    if UserInputService:GetFocusedTextBox() then
                                        o1[9].Velocity = Vector3.zero
                                        return
                                    end
                                    local CurrentCamera = AT.CurrentCamera
                                    if not CurrentCamera then
                                        return
                                    end
                                    local KP = Vector3.zero
                                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                        KP += CurrentCamera.CFrame.LookVector
                                    end
                                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                        KP -= CurrentCamera.CFrame.LookVector
                                    end
                                    local KT = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
                                    if KT == 1 then
                                        KP -= CurrentCamera.CFrame.RightVector
                                    end
                                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                                        KP += CurrentCamera.CFrame.RightVector
                                    end
                                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                                        KP += Vector3.yAxis
                                    end
                                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                                        KP -= Vector3.yAxis
                                    end
                                    if KP.Magnitude > 0 then
                                        o1[9].Velocity = KP.Unit * o1[4]
                                    else
                                        o1[9].Velocity = Vector3.zero
                                    end
                                end)
                                local connection = zX.CharacterAdded:Connect(function()
                                    task.wait(0.2)
                                    if not zd() then
                                        return
                                    end
                                    o2()
                                    if o1[3] then
                                        pd()
                                    end
                                end)
                                zA.Track(function()
                                    connection2:Disconnect()
                                    connection:Disconnect()
                                    if o1[11] then
                                        o1[11]:Disconnect()
                                    end
                                    if o1[12] then
                                        o1[12]:Disconnect()
                                    end
                                    if o1[13] then
                                        o1[13]:Disconnect()
                                    end
                                    o8()
                                    pn()
                                    ps()
                                    if o1[8] ~= nil then
                                        local KV = Ac()
                                        if KV then
                                            KV.WalkSpeed = o1[8]
                                        end
                                    end
                                end)
                            end
                            Nm_12()
                            local function Nm_13()
                                local LZ, L_, L0, L1, L2, Label, L4, L5, L6, L7, L8, L9, Ma, Mb
                                L5 = {}
                                LZ = {}
                                L9 = nil
                                Ma = 0
                                L6 = 0
                                L0 = false
                                L1 = os.clock()
                                local MenuGroup = Nh[3]:AddLeftGroupbox("Menu", "logs")
                                MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                                Label = MenuGroup:AddLabel("AFK triggers: 0")
                                L7 = function()
                                    local CurrentCamera
                                    CurrentCamera = AT.CurrentCamera
                                    local KY = not CurrentCamera or not zl(VirtualUser.CaptureController) or not zl(VirtualUser.ClickButton2)
                                    if KY then
                                        return false
                                    end
                                    local KY_2 = pcall(function()
                                        VirtualUser:CaptureController()
                                        VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
                                    end)
                                    if not KY_2 then
                                        return false
                                    end
                                    Ma += 1
                                    L1 = os.clock()
                                    pcall(function()
                                        Label:SetText("AFK triggers: " .. Ma)
                                    end)
                                    return true
                                end
                                L2 = function(re)
                                    pcall(function()
                                        GuiService:SetGameplayPausedNotificationEnabled(not re)
                                    end)
                                    pcall(function()
                                        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                                        if RobloxNetworkPauseNotificati then
                                            RobloxNetworkPauseNotificati.Enabled = not re
                                        end
                                    end)
                                    if not re then
                                        return
                                    end
                                    pcall(function()
                                        if sethiddenproperty then
                                            sethiddenproperty(zX, "GameplayPaused", false)
                                        else
                                            zX.GameplayPaused = false
                                        end
                                    end)
                                end
                                L_ = function(ru)
                                    local K6 = ru.ClassName == "ParticleEmitter" or ru.ClassName == "Trail" or ru.ClassName == "Smoke" or ru.ClassName == "Fire"
                                    local La = if K6 then 1 else 0
                                    local K8 = 3053 * La + 1100 * (1 - La)
                                    local K9 = 910 * La + 2899 * (1 - La)
                                    if not ((K8 * 3586 + K9 * 862 + K8 * K9) % 16777213 == 14510708) then
                                        K6 = ru.ClassName == "Sparkles"
                                    end
                                    if not K6 then
                                        K6 = ru.ClassName == "Explosion"
                                    end
                                    if not K6 then
                                        K6 = ru.ClassName == "Beam"
                                    end
                                    if K6 then
                                        if L5[ru] == nil then
                                            L5[ru] = ru.Enabled
                                        end
                                        pcall(function()
                                            ru.Enabled = false
                                        end)
                                    end
                                end
                                Mb = function()
                                    for k, v in pairs(L5) do
                                        local Lf = k
                                        local Lh = v
                                        if Lf.Parent then
                                            pcall(function()
                                                Lf.Enabled = Lh
                                            end)
                                        end
                                    end
                                    table.clear(L5)
                                    if L9 then
                                        pcall(function()
                                            settings().Rendering.QualityLevel = L9.Quality
                                        end)
                                        Lighting.GlobalShadows = L9.Shadows
                                        Lighting.FogEnd = L9.Fog
                                        L9 = nil
                                    end
                                end
                                MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
                                MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
                                MenuGroup:AddToggle("Disable3D", {
                                    Text = "Disable 3D Rendering",
                                    Default = false,
                                    Callback = function(rJ)
                                        pcall(function()
                                            RunService:Set3dRenderingEnabled(not rJ)
                                        end)
                                    end
                                })
                                MenuGroup:AddToggle("FpsBoost", {
                                    Text = "FPS Boost",
                                    Default = false,
                                    Callback = function(rO)
                                        if rO then
                                            if not L9 then
                                                L9 = {
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
                                            for i, descendant in ipairs(AT:GetDescendants()) do
                                                pcall(L_, descendant)
                                            end
                                        else
                                            Mb()
                                        end
                                    end
                                })
                                MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
                                MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                                Library.ToggleKeybind = Options.MenuKeybind
                                L2(true)
                                local ScriptGroup = Nh[3]:AddLeftGroupbox("Script", "terminal")
                                ScriptGroup:AddButton({
                                    Text = "Unload Script",
                                    Func = function()
                                        Library:Unload()
                                    end
                                })
                                Toggles.AntiGameplayPause:OnChanged(function()
                                    L2(Toggles.AntiGameplayPause.Value)
                                end)
                                if Toggles.AntiGameplayPause.Value then
                                    L2(true)
                                end
                                table.insert(LZ, zX.Idled:Connect(function()
                                    if Toggles.AntiAfk.Value and not Library.Unloaded then
                                        L7()
                                    end
                                end))
                                table.insert(LZ, AT.DescendantAdded:Connect(function(r6)
                                    if Toggles.FpsBoost.Value then
                                        L_(r6)
                                    end
                                end))
                                L8 = function(sa)
                                    if L0 or Library.Unloaded or not Toggles.AutoReconnect.Value then
                                        return
                                    end
                                    L0 = true
                                    local Lx = L6
                                    local Ly_3 = pcall(function()
                                        if sa then
                                            TeleportService:Teleport(game.PlaceId, zX)
                                        else
                                            TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, zX)
                                        end
                                    end)
                                    if not Ly_3 then
                                        L0 = false
                                        if not sa and Lx == L6 then
                                            task.delay(1.5, function()
                                                if Lx == L6 then
                                                    L8(true)
                                                end
                                            end)
                                        end
                                    end
                                end
                                table.insert(LZ, TeleportService.TeleportInitFailed:Connect(function(ss)
                                    local LF
                                    if ss == zX and L0 then
                                        L0 = false
                                        LF = L6
                                        task.delay(3, function()
                                            if LF == L6 then
                                                L8(true)
                                            end
                                        end)
                                    end
                                end))
                                task.spawn(function()
                                    local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
                                    local LK = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
                                    if Library.Unloaded or not LK then
                                        return
                                    end
                                    table.insert(LZ, LK.ChildAdded:Connect(function(sH)
                                        if sH.Name == "ErrorPrompt" then
                                            L8(false)
                                        end
                                    end))
                                end)
                                L4 = task.spawn(function()
                                    while not Library.Unloaded do
                                        if Toggles.AntiGameplayPause.Value then
                                            L2(true)
                                        end
                                        local LQ = Toggles.AntiAfk.Value and os.clock() - L1 >= 60
                                        if LQ then
                                            L7()
                                        end
                                        task.wait(1)
                                    end
                                end)
                                zA.Track(function()
                                    L6 += 1
                                    for i, v in ipairs(LZ) do
                                        v:Disconnect()
                                    end
                                    pcall(task.cancel, L4)
                                    L2(false)
                                    Mb()
                                    pcall(function()
                                        RunService:Set3dRenderingEnabled(true)
                                    end)
                                end)
                            end
                            Nm_13()
                            local function Nm_14()
                                local M2, M3, M4, M5
                                ThemeManager:SetLibrary(Library)
                                ThemeManager:SetFolder("MyScriptHub")
                                ThemeManager:SaveDefault("Evil Hello Kitty")
                                ThemeManager:ApplyToTab(Nh[3])
                                SaveManager:SetLibrary(Library)
                                SaveManager:IgnoreThemeSettings()
                                SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
                                SaveManager:SetFolder("OuroborosHub/ShuffleAnEgg")
                                local M6 = SaveManager:BuildConfigSection(Nh[3])
                                M2 = function(s7, s8)
                                    local Mf_2 = (s7 == "Toggle" and Toggles or Options)[s8]
                                    local Me_5 = type(Mf_2) == "table" and Mf_2.Type == s7
                                    return Me_5 and Mf_2 or nil
                                end
                                M5 = function(th, ti)
                                    local Type = ti.Type
                                    if Type == "Toggle" then
                                        return { idx = th, type = "Toggle", value = ti.Value == true }
                                    elseif Type == "Slider" then
                                        return { idx = th, type = "Slider", value = tostring(ti.Value) }
                                    elseif Type == "Dropdown" then
                                        return { idx = th, type = "Dropdown", multi = ti.Multi == true, value = ti.Value }
                                    elseif Type == "Input" then
                                        local Mm = ti.Value or ""
                                        return { idx = th, type = "Input", text = tostring(Mm) }
                                    elseif Type == "ColorPicker" then
                                        return { idx = th, type = "ColorPicker", value = ti.Value:ToHex(), transparency = ti.Transparency }
                                    elseif Type == "KeyPicker" then
                                        return {
                                            idx = th,
                                            type = "KeyPicker",
                                            mode = ti.Mode,
                                            key = ti.Value,
                                            modifiers = ti.Modifiers,
                                            toggled = ti.Toggled
                                        }
                                    else
                                        return nil
                                    end
                                end
                                M3 = function()
                                    local Mp = {}
                                    for i, v in ipairs({ Toggles, Options }) do
                                        for k, v in pairs(v) do
                                            local Mq = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                                            if Mq then
                                                local Mq_2 = M5(k, v)
                                                if Mq_2 then
                                                    Mp[#Mp + 1] = Mq_2
                                                end
                                            end
                                        end
                                    end
                                    table.sort(Mp, function(ts, tt)
                                        if ts.type ~= tt.type then
                                            return ts.type < tt.type
                                        end
                                        return ts.idx < tt.idx
                                    end)
                                    return { objects = Mp }
                                end
                                M4 = function(tv)
                                    local MG
                                    MG = nil
                                    local MH = type(tv) ~= "table" or type(tv.idx) ~= "string" or type(tv.type) ~= "string" or SaveManager.Ignore[tv.idx]
                                    if MH then
                                        return false
                                    end
                                    MG = M2(tv.type, tv.idx)
                                    if not MG then
                                        return false
                                    end
                                    local MH_2 = pcall(function()
                                        if tv.type == "Input" then
                                            if type(tv.text) ~= "string" then
                                                return
                                            end
                                            MG:SetValue(tv.text)
                                        elseif tv.type == "ColorPicker" then
                                            MG:SetValueRGB(Color3.fromHex(tv.value), tv.transparency)
                                        elseif tv.type == "KeyPicker" then
                                            MG:SetValue({ tv.key, tv.mode, tv.modifiers })
                                            if tv.mode == "Toggle" and tv.toggled ~= nil then
                                                MG.Toggled = tv.toggled
                                                MG:Update()
                                            end
                                        else
                                            MG:SetValue(tv.value)
                                        end
                                    end)
                                    return MH_2
                                end
                                M6:AddDivider()
                                M6:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
                                M6:AddButton("Export Config to Clipboard", function()
                                    local MK_2
                                    local MJ_5
                                    MJ_5, MK_2 = pcall(HttpService.JSONEncode, HttpService, M3())
                                    if MJ_5 then
                                        local MJ_6 = zl(setclipboard) and setclipboard
                                        local ML = MJ_6
                                        if not ML then
                                            local MJ_7 = zl(toclipboard) and toclipboard
                                            ML = MJ_7 or nil
                                        end
                                        local MJ_8 = ML
                                        local ML_2 = type(MJ_8) == "function" and pcall(MJ_8, MK_2)
                                        if ML_2 then
                                            Library:Notify("Config copied to clipboard", 6)
                                            return
                                        end
                                        Library:Notify("Your executor does not support copying to the clipboard")
                                        return
                                    end
                                    Library:Notify("Failed to encode the config")
                                end)
                                M6:AddButton("Import Config from Clipboard Text", function()
                                    local MQ_3
                                    local MO = Options.SaveManager_ImportSource.Value or ""
                                    local MO_3
                                    local MP = tostring(MO):match("^%s*(.-)%s*$")
                                    if MP == "" then
                                        Library:Notify("Paste an exported config into the box first")
                                        return
                                    end
                                    if #MP > 262144 then
                                        Library:Notify("That config is too large")
                                        return
                                    end
                                    MO_3, MQ_3 = pcall(HttpService.JSONDecode, HttpService, MP)
                                    local MP_3 = not MO_3 or type(MQ_3) ~= "table" or type(MQ_3.objects) ~= "table"
                                    if MP_3 then
                                        Library:Notify("That is not a valid exported config")
                                        return
                                    end
                                    if #MQ_3.objects > 2048 then
                                        Library:Notify("That config has too many records")
                                        return
                                    end
                                    local MO_4 = 0
                                    for i, v in ipairs(MQ_3.objects) do
                                        if M4(v) then
                                            MO_4 += 1
                                        end
                                    end
                                    if MO_4 == 0 then
                                        Library:Notify("No settings in that config matched this script")
                                        return
                                    end
                                    Options.SaveManager_ImportSource:SetValue("")
                                    local MQ_4 = MO_4 == 1 and "" or "s"
                                    Library:Notify(("Imported %d setting%s"):format(MO_4, MQ_4), 6)
                                end)
                                ThemeManager:LoadDefault()
                                SaveManager:LoadAutoloadConfig()
                                local function M6_3(t3, t4)
                                    if Toggles[t3] then
                                        t4(Toggles[t3].Value)
                                    end
                                end
                                local function M7(t7, t8)
                                    if Options[t7] then
                                        t8(Options[t7].Value)
                                    end
                                end
                                M7("PlaceRarities", zA.SetPlaceRarities)
                                M7("SkipRarities", zA.SetSkipRarities)
                                M7("PlaceMutations", zA.SetPlaceMutations)
                                M7("SkipMutations", zA.SetSkipMutations)
                                M7("KeepMutations", zA.SetKeepMutations)
                                M6_3("AutoPlay", zA.SetAutoPlay)
                                M6_3("AutoGuess", zA.SetAutoGuess)
                                M6_3("AutoSkipRarities", zA.SetAutoSkipRarities)
                                M6_3("AutoSkipMutations", zA.SetAutoSkipMutations)
                                M6_3("AutoSkipUnaffordable", zA.SetAutoSkipUnaffordable)
                                M6_3("AutoBuyCup", zA.SetAutoBuyCup)
                                M6_3("AutoBuyDealers", zA.SetAutoBuyDealers)
                                M6_3("AutoPlaceEggs", zA.SetAutoPlaceEggs)
                                M6_3("AutoHatchEggs", zA.SetAutoHatchEggs)
                                M6_3("AutoEquipBest", zA.SetAutoEquipBest)
                                M6_3("AutoBuyPetSlot", zA.SetAutoBuyPetSlot)
                                M6_3("AutoRebirth", zA.SetAutoRebirth)
                                M6_3("AutoClaimPlaytime", zA.SetAutoClaimPlaytime)
                                if Toggles.HideUiOnStart and Toggles.HideUiOnStart.Value then
                                    pcall(function()
                                        Library:Toggle(false)
                                    end)
                                end
                            end
                            Nm_14()
                        end
                    else
                        NA_40.SetAutoPlay = fns.fn450
                        NA_40.SetAutoGuess = fns.fn413
                        NA_40.SetAutoSkipRarities = fns.fn329
                        NA_40.SetSkipRarities = fns.fn665
                        NA_40.SetAutoSkipMutations = fns.fn73
                        NA_40.SetSkipMutations = fn1274
                        NA_40.SetKeepMutations = fn1218
                        NA_40.SetAutoSkipUnaffordable = fn1135
                        NA_40.SetAutoBuyCup = fn1292
                        NA_40.SetAutoBuyDealers = fn1009
                        NA_40.SetAutoPlaceEggs = fn902
                        NA_40.SetPlaceRarities = fn1069
                        NA_40.SetPlaceMutations = fns.fn401
                        NA_40.SetAutoHatchEggs = fns.fn557
                        NA_40.SetAutoEquipBest = fn1071
                        NA_40.SetAutoBuyPetSlot = fns.fn545
                        NA_40.SetAutoRebirth = fn906
                        NA_40.SetAutoClaimPlaytime = fns.fn45
                        zA = function()
                            local Nf
                            local Library
                            Nf = nil
                            Library = nil
                            local M9, Na, Nb, Options, Nd, SaveManager, Nh, Toggles, Nj, Nk, ThemeManager
                            Nb = "https://ouroboros-hub-rbx.web.app/"
                            Nj = "https://rscripts.net/@Ouroboros"
                            Nf = "https://discord.gg/synapsex"
                            Nk = "Shuffle an Egg"
                            Library = assert(loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))(), "Library load failed")
                            ThemeManager = assert(loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))(), "ThemeManager load failed")
                            SaveManager = assert(loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))(), "SaveManager load failed")
                            Toggles, Options = Library.Toggles, Library.Options
                            z4(zA, Library)
                            Nd = function(mR, mS)
                                local JE
                                if type(setclipboard) == "function" then
                                    JE = setclipboard
                                elseif type(toclipboard) == "function" then
                                    JE = toclipboard
                                end
                                if not JE then
                                    Library:Notify("Clipboard unavailable")
                                    return
                                end
                                local JF = pcall(JE, tostring(mR))
                                if JF then
                                    local JE_1 = mS or "Copied"
                                    Library:Notify(JE_1)
                                else
                                    Library:Notify("Clipboard copy failed")
                                end
                            end
                            local Window = Library:CreateWindow({
                                Title = "Ouroboros",
                                Font = Enum.Font.BuilderSans,
                                Footer = { { Text = Nf, Copyable = true }, "|", Nk, "|", "v0.5" },
                                Icon = 132608042600488,
                                NotifySide = "Right",
                                ShowCustomCursor = false,
                                CornerRadius = 0,
                                SidebarCompacted = true,
                                TabSwipeFrom = "bottom",
                                Animations = { TabSwitch = true }
                            })
                            Nh = {}
                            Nh[1] = Window:AddTab("Info", "info")
                            Nh[4] = Window:AddTab("Main", "gamepad-2")
                            Nh[2] = Window:AddTab("Player", "person-standing")
                            Nh[3] = Window:AddTab("Settings", "settings")
                            M9 = {
                                [1] = Nh[4]:AddSubTab("Game", "dices"),
                                [2] = Nh[4]:AddSubTab("Base", "home"),
                                [3] = Nh[4]:AddSubTab("Shop", "shopping-bag")
                            }
                            local function Nm(m_)
                                local DiscordGroup = m_:AddLeftGroupbox("Discord", "message-circle")
                                DiscordGroup:AddDiscordBox(nil, {
                                    Banner = 95892854151512,
                                    Avatar = 132608042600488,
                                    Title = "Ouroboros Hub",
                                    Subtitle = "Dupes, keyless scripts and updates",
                                    Status = "online",
                                    Accent = Color3.fromRGB(88, 101, 242),
                                    Link = Nf,
                                    Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
                                })
                                return DiscordGroup
                            end
                            Nm(M9[1])
                            Nm(M9[2])
                            Nm(M9[3])
                            Nm(Nh[2])
                            Nm(Nh[3])
                            local Nm_1 = { name = "getgenv", ok = zl(getgenv) }
                            local Nn_1 = zl(game.HttpGet)
                            local No = {}
                            local Nn_2 = { Nm_1, { name = "HttpGet", ok = Nn_1 } }
                            for i, v in ipairs(Nn_2) do
                                if not v.ok then
                                    table.insert(No, v.name)
                                end
                            end
                            local Nm_2 = #No == 0 and "(ready)"
                            local Nn_3 = Nm_2 or "(missing " .. table.concat(No, ", ") .. ")"
                            Na = Nn_3
                            local function Nm_3()
                                local ot
                                local nu
                                local np
                                local function na(nb)
                                    return (tostring(nb):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
                                end
                                local function nc(nd, ne)
                                    return string.format('<font color="%s">%s</font>', ne, na(nd))
                                end
                                local function ng(nh, ni, nj)
                                    return string.format("<b>%s</b> %s %s", nh, nc("-", "#5a6070"), nc(ni, nj))
                                end
                                local nl = "#7fd47f"
                                local nm = "#6ec1ff"
                                np = "Unknown"
                                local nn = "#e8a34d"
                                local no = "#8b93a3"
                                pcall(function()
                                    local JI_1
                                    local JH_1
                                    if type(identifyexecutor) == "function" then
                                        JI_1, JH_1 = identifyexecutor()
                                        local JJ = JI_1 ~= ""
                                        local JK = type(JI_1) == "string" and JJ
                                        if JK then
                                            local JJ_1 = type(JH_1) == "string" and JH_1 ~= "" and JI_1 .. " " .. JH_1
                                            np = JJ_1 or JI_1
                                        end
                                    end
                                end)
                                nu = os.clock()
                                local function nv()
                                    local JM = math.floor(os.clock() - nu)
                                    if JM < 60 then
                                        return JM .. "s"
                                    elseif JM < 3600 then
                                        return string.format("%dm %ds", JM // 60, JM % 60)
                                    else
                                        return string.format("%dh %dm", JM // 3600, JM % 3600 // 60)
                                    end
                                end
                                local UserGroup = Nh[1]:AddLeftGroupbox("User", "circle-user")
                                UserGroup:AddPlayerInfo("InfoUserCard", { Player = zX, Title = "User", HeaderIcon = "user", Collapsible = false })
                                UserGroup:AddLabel(ng("User", zX.DisplayName .. " @" .. zX.Name, nl), true)
                                UserGroup:AddLabel(ng("UserId", tostring(zX.UserId), nm), true)
                                UserGroup:AddLabel(ng("Executor", np .. "  " .. Na, nl), true)
                                UserGroup:AddDivider()
                                local Label4 = UserGroup:AddLabel(ng("Session", nv(), nn), true)
                                UserGroup:AddDivider()
                                UserGroup:AddButton({
                                    Text = "Copy Username",
                                    Func = function()
                                        Nd(zX.Name, "Copied username")
                                    end
                                })
                                UserGroup:AddButton({
                                    Text = "Copy Profile Link",
                                    Func = function()
                                        Nd("https://www.roblox.com/users/" .. tostring(zX.UserId) .. "/profile", "Copied profile link")
                                    end
                                })
                                local DiscordGroup = Nh[1]:AddRightGroupbox("Discord", "message-circle")
                                DiscordGroup:AddDiscordBox(nil, {
                                    Banner = 95892854151512,
                                    Avatar = 132608042600488,
                                    Title = "Ouroboros Hub",
                                    Subtitle = "Dupes, keyless scripts and updates",
                                    Status = "online",
                                    Accent = Color3.fromRGB(88, 101, 242),
                                    Link = Nf,
                                    Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
                                })
                                local SessionGroup = Nh[1]:AddRightGroupbox("Session", "signal")
                                SessionGroup:AddLabel(ng("Game", Nk, nl), true)
                                local Label3 = SessionGroup:AddLabel(ng("Players", tostring(#Players:GetPlayers()), nm), true)
                                local Label2 = SessionGroup:AddLabel(ng("Job", string.sub(game.JobId, 1, 12) .. "...", no), true)
                                local Label = SessionGroup:AddLabel(ng("Ping", "--", nn), true)
                                SessionGroup:AddButton({
                                    Text = "Rejoin Place",
                                    Func = function()
                                        pcall(function()
                                            TeleportService:Teleport(game.PlaceId, zX)
                                        end)
                                    end
                                })
                                SessionGroup:AddButton({
                                    Text = "Copy Job ID",
                                    Func = function()
                                        Nd(game.JobId, "Copied job id")
                                    end
                                })
                                local SocialsGroup = Nh[1]:AddRightGroupbox("Socials", "link")
                                SocialsGroup:AddButton({
                                    Text = "Copy Discord",
                                    Func = function()
                                        Nd(Nf, "Copied discord")
                                    end
                                })
                                SocialsGroup:AddButton({
                                    Text = "Copy Rscripts",
                                    Func = function()
                                        Nd(Nj, "Copied rscripts")
                                    end
                                })
                                SocialsGroup:AddButton({
                                    Text = "Copy Website",
                                    Func = function()
                                        Nd(Nb, "Copied website")
                                    end
                                })
                                ot = task.spawn(function()
                                    while true do
                                        local JO = zd() and not Library.Unloaded
                                        if JO then
                                            Label4:SetText(ng("Session", nv(), nn))
                                            Label3:SetText(ng("Players", tostring(#Players:GetPlayers()), nm))
                                            Label2:SetText(ng("Job", string.sub(game.JobId, 1, 12) .. "...", no))
                                            local JO_1 = zX:GetNetworkPing()
                                            Label:SetText(ng("Ping", string.format("%dms", math.floor(JO_1 * 1000)), nn))
                                            task.wait(1)
                                            continue
                                        end
                                        break
                                    end
                                end)
                                zA.Track(function()
                                    if coroutine.status(ot) ~= "dead" then
                                        task.cancel(ot)
                                    end
                                end)
                            end
                            Nm_3()
                            local function Nm_4()
                                local oW
                                local CupGameGroup = M9[1]:AddRightGroupbox("Cup Game", "dices")
                                local Label2 = CupGameGroup:AddLabel(State.Status, true)
                                CupGameGroup:AddToggle("AutoPlay", { Text = "Auto Play Game", Default = false, Callback = zA.SetAutoPlay })
                                CupGameGroup:AddToggle("AutoGuess", { Text = "Auto Guess Correct Cup", Default = false, Callback = zA.SetAutoGuess })
                                local Label = CupGameGroup:AddLabel("Guesses: 0/0 correct", true)
                                CupGameGroup:AddDivider()
                                CupGameGroup:AddToggle("AutoSkipRarities", { Text = "Auto Skip Egg Rarities", Default = false, Callback = zA.SetAutoSkipRarities })
                                CupGameGroup:AddDropdown("SkipRarities", {
                                    Text = "Skip Rarities",
                                    Values = z9,
                                    Multi = true,
                                    Default = {},
                                    AllowNull = true,
                                    Callback = zA.SetSkipRarities
                                })
                                CupGameGroup:AddToggle("AutoSkipMutations", { Text = "Auto Skip Egg Mutations", Default = false, Callback = zA.SetAutoSkipMutations })
                                CupGameGroup:AddDropdown("SkipMutations", {
                                    Text = "Skip Mutations",
                                    Values = zN,
                                    Multi = true,
                                    Default = {},
                                    AllowNull = true,
                                    Callback = zA.SetSkipMutations
                                })
                                CupGameGroup:AddDropdown("KeepMutations", {
                                    Text = "Always Keep Mutations",
                                    Values = zN,
                                    Multi = true,
                                    Default = {},
                                    AllowNull = true,
                                    Callback = zA.SetKeepMutations
                                })
                                CupGameGroup:AddToggle("AutoSkipUnaffordable", { Text = "Auto Skip Unaffordable Eggs", Default = false, Callback = zA.SetAutoSkipUnaffordable })
                                local BaseGroup = M9[2]:AddRightGroupbox("Base", "home")
                                BaseGroup:AddToggle("AutoPlaceEggs", { Text = "Auto Place Eggs", Default = false, Callback = zA.SetAutoPlaceEggs })
                                BaseGroup:AddDropdown("PlaceRarities", {
                                    Text = "Place Rarities",
                                    Values = y6,
                                    Multi = true,
                                    Default = {},
                                    AllowNull = true,
                                    Callback = zA.SetPlaceRarities
                                })
                                BaseGroup:AddDropdown("PlaceMutations", {
                                    Text = "Place Mutations",
                                    Values = zN,
                                    Multi = true,
                                    Default = {},
                                    AllowNull = true,
                                    Callback = zA.SetPlaceMutations
                                })
                                BaseGroup:AddToggle("AutoHatchEggs", { Text = "Auto Hatch Eggs", Default = false, Callback = zA.SetAutoHatchEggs })
                                BaseGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false, Callback = zA.SetAutoEquipBest })
                                BaseGroup:AddToggle("AutoBuyPetSlot", { Text = "Auto Buy Pet Slot", Default = false, Callback = zA.SetAutoBuyPetSlot })
                                BaseGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false, Callback = zA.SetAutoRebirth })
                                BaseGroup:AddToggle("AutoClaimPlaytime", { Text = "Auto Claim Playtime Rewards", Default = false, Callback = zA.SetAutoClaimPlaytime })
                                local ShopGroup = M9[3]:AddRightGroupbox("Shop", "shopping-bag")
                                ShopGroup:AddToggle("AutoBuyCup", { Text = "Auto Buy Cup", Default = false, Callback = zA.SetAutoBuyCup })
                                ShopGroup:AddToggle("AutoBuyDealers", { Text = "Auto Buy Dealers", Default = false, Callback = zA.SetAutoBuyDealers })
                                oW = task.spawn(function()
                                    while true do
                                        local JY = zd() and not Library.Unloaded
                                        if JY then
                                            pcall(function()
                                                Label2:SetText(State.Status)
                                                local JR = string.format("Guesses: %d/%d correct", zv.Correct, zv.Guesses)
                                                if zv.PickMethod then
                                                    JR ..= " | last: " .. zv.PickMethod
                                                end
                                                if zo.Observed > 0 then
                                                    local JT = zo.Enabled and " | learned " .. zo.Observed .. " rounds" or " | server looks random"
                                                    JR ..= JT
                                                end
                                                Label:SetText(JR)
                                            end)
                                            task.wait(0.35)
                                            continue
                                        end
                                        break
                                    end
                                end)
                                zA.Track(function()
                                    if coroutine.status(oW) ~= "dead" then
                                        task.cancel(oW)
                                    end
                                end)
                            end
                            Nm_4()
                            local function Nm_5()
                                local o1
                                local MovementGroup = Nh[2]:AddLeftGroupbox("Movement", "person-standing")
                                local FlightGroup = Nh[2]:AddRightGroupbox("Flight", "plane")
                                o1 = {
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
                                local function o2()
                                    local J0 = Ac()
                                    if not J0 then
                                        return
                                    end
                                    if o1[1] then
                                        if o1[8] == nil then
                                            o1[8] = J0.WalkSpeed
                                        end
                                        J0.WalkSpeed = o1[2]
                                    elseif o1[8] ~= nil then
                                        J0.WalkSpeed = o1[8]
                                        o1[8] = nil
                                    end
                                end
                                local function o8()
                                    if o1[9] then
                                        pcall(function()
                                            o1[9]:Destroy()
                                        end)
                                        o1[9] = nil
                                    end
                                    local J2 = Ac()
                                    if J2 then
                                        J2.PlatformStand = false
                                    end
                                end
                                local function pd()
                                    o8()
                                    local J4 = As()
                                    local J5 = Ac()
                                    if not J4 or not J5 then
                                        return
                                    end
                                    J5.PlatformStand = true
                                    local bodyVelocity = Instance.new("BodyVelocity")
                                    bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
                                    bodyVelocity.Velocity = Vector3.zero
                                    bodyVelocity.Parent = J4
                                    o1[9] = bodyVelocity
                                end
                                local function pn()
                                    for k, v in pairs(o1[10]) do
                                        if k and k.Parent then
                                            k.CanCollide = v
                                        end
                                    end
                                    table.clear(o1[10])
                                end
                                local function ps()
                                    for k, v in pairs(o1[14]) do
                                        if k and k.Parent then
                                            k.HoldDuration = v.HoldDuration
                                            k.MaxActivationDistance = v.MaxActivationDistance
                                            k.RequiresLineOfSight = v.RequiresLineOfSight
                                        end
                                    end
                                    table.clear(o1[14])
                                end
                                local function onDescendantAdded(py)
                                    if not py:IsA("ProximityPrompt") then
                                        return
                                    end
                                    if not o1[14][py] then
                                        o1[14][py] = {
                                            HoldDuration = py.HoldDuration,
                                            MaxActivationDistance = py.MaxActivationDistance,
                                            RequiresLineOfSight = py.RequiresLineOfSight
                                        }
                                    end
                                    py.HoldDuration = 0
                                    py.MaxActivationDistance = 50
                                    py.RequiresLineOfSight = false
                                end
                                MovementGroup:AddToggle("WalkSpeedEnabled", {
                                    Text = "WalkSpeed",
                                    Default = false,
                                    Callback = function(pA)
                                        o1[1] = pA
                                        o2()
                                    end
                                })
                                MovementGroup:AddSlider("WalkSpeed", {
                                    Text = "Speed",
                                    Default = 32,
                                    Min = 16,
                                    Max = 250,
                                    Rounding = 0,
                                    Callback = function(pD)
                                        o1[2] = pD
                                        if o1[1] then
                                            o2()
                                        end
                                    end
                                })
                                MovementGroup:AddToggle("InfJump", {
                                    Text = "Infinite Jump",
                                    Default = false,
                                    Callback = function(pG)
                                        o1[6] = pG
                                        if o1[12] then
                                            o1[12]:Disconnect()
                                            o1[12] = nil
                                        end
                                        if pG then
                                            o1[12] = UserInputService.JumpRequest:Connect(function()
                                                local Kr = not zd() or not o1[6]
                                                if Kr then
                                                    return
                                                end
                                                local Kr_1 = Ac()
                                                if Kr_1 then
                                                    Kr_1:ChangeState(Enum.HumanoidStateType.Jumping)
                                                end
                                            end)
                                        end
                                    end
                                })
                                MovementGroup:AddToggle("NoClip", {
                                    Text = "Noclip",
                                    Default = false,
                                    Callback = function(pT)
                                        o1[5] = pT
                                        if o1[11] then
                                            o1[11]:Disconnect()
                                            o1[11] = nil
                                        end
                                        if not pT then
                                            pn()
                                            return
                                        end
                                        o1[11] = RunService.Stepped:Connect(function()
                                            local Ku = not zd() or not o1[5]
                                            if Ku then
                                                return
                                            end
                                            local Ku_1 = AC()
                                            if not Ku_1 then
                                                return
                                            end
                                            for i, descendant in ipairs(Ku_1:GetDescendants()) do
                                                if descendant:IsA("BasePart") then
                                                    if o1[10][descendant] == nil then
                                                        o1[10][descendant] = descendant.CanCollide
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
                                    Callback = function(p9)
                                        o1[7] = p9
                                        if o1[13] then
                                            o1[13]:Disconnect()
                                            o1[13] = nil
                                        end
                                        if not p9 then
                                            ps()
                                            return
                                        end
                                        for i, descendant in ipairs(AT:GetDescendants()) do
                                            onDescendantAdded(descendant)
                                        end
                                        o1[13] = AT.DescendantAdded:Connect(onDescendantAdded)
                                    end
                                })
                                FlightGroup:AddToggle("Fly", {
                                    Text = "Fly",
                                    Default = false,
                                    Callback = function(qi)
                                        o1[3] = qi
                                        if qi then
                                            pd()
                                        else
                                            o8()
                                        end
                                    end
                                })
                                FlightGroup:AddSlider("FlySpeed", {
                                    Text = "Fly Speed",
                                    Default = 60,
                                    Min = 10,
                                    Max = 400,
                                    Rounding = 0,
                                    Callback = function(qm)
                                        o1[4] = qm
                                    end
                                })
                                local connection2 = RunService.RenderStepped:Connect(function()
                                    local KO = not zd() or not o1[3] or not o1[9]
                                    if KO then
                                        return
                                    end
                                    if UserInputService:GetFocusedTextBox() then
                                        o1[9].Velocity = Vector3.zero
                                        return
                                    end
                                    local CurrentCamera = AT.CurrentCamera
                                    if not CurrentCamera then
                                        return
                                    end
                                    local KP = Vector3.zero
                                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                        KP += CurrentCamera.CFrame.LookVector
                                    end
                                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                        KP -= CurrentCamera.CFrame.LookVector
                                    end
                                    local KT = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
                                    if KT == 1 then
                                        KP -= CurrentCamera.CFrame.RightVector
                                    end
                                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                                        KP += CurrentCamera.CFrame.RightVector
                                    end
                                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                                        KP += Vector3.yAxis
                                    end
                                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                                        KP -= Vector3.yAxis
                                    end
                                    if KP.Magnitude > 0 then
                                        o1[9].Velocity = KP.Unit * o1[4]
                                    else
                                        o1[9].Velocity = Vector3.zero
                                    end
                                end)
                                local connection = zX.CharacterAdded:Connect(function()
                                    task.wait(0.2)
                                    if not zd() then
                                        return
                                    end
                                    o2()
                                    if o1[3] then
                                        pd()
                                    end
                                end)
                                zA.Track(function()
                                    connection2:Disconnect()
                                    connection:Disconnect()
                                    if o1[11] then
                                        o1[11]:Disconnect()
                                    end
                                    if o1[12] then
                                        o1[12]:Disconnect()
                                    end
                                    if o1[13] then
                                        o1[13]:Disconnect()
                                    end
                                    o8()
                                    pn()
                                    ps()
                                    if o1[8] ~= nil then
                                        local KV = Ac()
                                        if KV then
                                            KV.WalkSpeed = o1[8]
                                        end
                                    end
                                end)
                            end
                            Nm_5()
                            local function Nm_6()
                                local LZ, L_, L0, L1, L2, Label, L4, L5, L6, L7, L8, L9, Ma, Mb
                                L5 = {}
                                LZ = {}
                                L9 = nil
                                Ma = 0
                                L6 = 0
                                L0 = false
                                L1 = os.clock()
                                local MenuGroup = Nh[3]:AddLeftGroupbox("Menu", "logs")
                                MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                                Label = MenuGroup:AddLabel("AFK triggers: 0")
                                L7 = function()
                                    local CurrentCamera
                                    CurrentCamera = AT.CurrentCamera
                                    local KY = not CurrentCamera or not zl(VirtualUser.CaptureController) or not zl(VirtualUser.ClickButton2)
                                    if KY then
                                        return false
                                    end
                                    local KY_1 = pcall(function()
                                        VirtualUser:CaptureController()
                                        VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
                                    end)
                                    if not KY_1 then
                                        return false
                                    end
                                    Ma += 1
                                    L1 = os.clock()
                                    pcall(function()
                                        Label:SetText("AFK triggers: " .. Ma)
                                    end)
                                    return true
                                end
                                L2 = function(re)
                                    pcall(function()
                                        GuiService:SetGameplayPausedNotificationEnabled(not re)
                                    end)
                                    pcall(function()
                                        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                                        if RobloxNetworkPauseNotificati then
                                            RobloxNetworkPauseNotificati.Enabled = not re
                                        end
                                    end)
                                    if not re then
                                        return
                                    end
                                    pcall(function()
                                        if sethiddenproperty then
                                            sethiddenproperty(zX, "GameplayPaused", false)
                                        else
                                            zX.GameplayPaused = false
                                        end
                                    end)
                                end
                                L_ = function(ru)
                                    local K6 = ru.ClassName == "ParticleEmitter" or ru.ClassName == "Trail" or ru.ClassName == "Smoke" or ru.ClassName == "Fire"
                                    local La = if K6 then 1 else 0
                                    local K8 = 3053 * La + 1100 * (1 - La)
                                    local K9 = 910 * La + 2899 * (1 - La)
                                    if not ((K8 * 3586 + K9 * 862 + K8 * K9) % 16777213 == 14510708) then
                                        K6 = ru.ClassName == "Sparkles"
                                    end
                                    if not K6 then
                                        K6 = ru.ClassName == "Explosion"
                                    end
                                    if not K6 then
                                        K6 = ru.ClassName == "Beam"
                                    end
                                    if K6 then
                                        if L5[ru] == nil then
                                            L5[ru] = ru.Enabled
                                        end
                                        pcall(function()
                                            ru.Enabled = false
                                        end)
                                    end
                                end
                                Mb = function()
                                    for k, v in pairs(L5) do
                                        local Lf = k
                                        local Lh = v
                                        if Lf.Parent then
                                            pcall(function()
                                                Lf.Enabled = Lh
                                            end)
                                        end
                                    end
                                    table.clear(L5)
                                    if L9 then
                                        pcall(function()
                                            settings().Rendering.QualityLevel = L9.Quality
                                        end)
                                        Lighting.GlobalShadows = L9.Shadows
                                        Lighting.FogEnd = L9.Fog
                                        L9 = nil
                                    end
                                end
                                MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
                                MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
                                MenuGroup:AddToggle("Disable3D", {
                                    Text = "Disable 3D Rendering",
                                    Default = false,
                                    Callback = function(rJ)
                                        pcall(function()
                                            RunService:Set3dRenderingEnabled(not rJ)
                                        end)
                                    end
                                })
                                MenuGroup:AddToggle("FpsBoost", {
                                    Text = "FPS Boost",
                                    Default = false,
                                    Callback = function(rO)
                                        if rO then
                                            if not L9 then
                                                L9 = {
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
                                            for i, descendant in ipairs(AT:GetDescendants()) do
                                                pcall(L_, descendant)
                                            end
                                        else
                                            Mb()
                                        end
                                    end
                                })
                                MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
                                MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                                Library.ToggleKeybind = Options.MenuKeybind
                                L2(true)
                                local ScriptGroup = Nh[3]:AddLeftGroupbox("Script", "terminal")
                                ScriptGroup:AddButton({
                                    Text = "Unload Script",
                                    Func = function()
                                        Library:Unload()
                                    end
                                })
                                Toggles.AntiGameplayPause:OnChanged(function()
                                    L2(Toggles.AntiGameplayPause.Value)
                                end)
                                if Toggles.AntiGameplayPause.Value then
                                    L2(true)
                                end
                                table.insert(LZ, zX.Idled:Connect(function()
                                    if Toggles.AntiAfk.Value and not Library.Unloaded then
                                        L7()
                                    end
                                end))
                                table.insert(LZ, AT.DescendantAdded:Connect(function(r6)
                                    if Toggles.FpsBoost.Value then
                                        L_(r6)
                                    end
                                end))
                                L8 = function(sa)
                                    if L0 or Library.Unloaded or not Toggles.AutoReconnect.Value then
                                        return
                                    end
                                    L0 = true
                                    local Lx = L6
                                    local Ly_1 = pcall(function()
                                        if sa then
                                            TeleportService:Teleport(game.PlaceId, zX)
                                        else
                                            TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, zX)
                                        end
                                    end)
                                    if not Ly_1 then
                                        L0 = false
                                        if not sa and Lx == L6 then
                                            task.delay(1.5, function()
                                                if Lx == L6 then
                                                    L8(true)
                                                end
                                            end)
                                        end
                                    end
                                end
                                table.insert(LZ, TeleportService.TeleportInitFailed:Connect(function(ss)
                                    local LF
                                    if ss == zX and L0 then
                                        L0 = false
                                        LF = L6
                                        task.delay(3, function()
                                            if LF == L6 then
                                                L8(true)
                                            end
                                        end)
                                    end
                                end))
                                task.spawn(function()
                                    local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
                                    local LK = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
                                    if Library.Unloaded or not LK then
                                        return
                                    end
                                    table.insert(LZ, LK.ChildAdded:Connect(function(sH)
                                        if sH.Name == "ErrorPrompt" then
                                            L8(false)
                                        end
                                    end))
                                end)
                                L4 = task.spawn(function()
                                    while not Library.Unloaded do
                                        if Toggles.AntiGameplayPause.Value then
                                            L2(true)
                                        end
                                        local LQ = Toggles.AntiAfk.Value and os.clock() - L1 >= 60
                                        if LQ then
                                            L7()
                                        end
                                        task.wait(1)
                                    end
                                end)
                                zA.Track(function()
                                    L6 += 1
                                    for i, v in ipairs(LZ) do
                                        v:Disconnect()
                                    end
                                    pcall(task.cancel, L4)
                                    L2(false)
                                    Mb()
                                    pcall(function()
                                        RunService:Set3dRenderingEnabled(true)
                                    end)
                                end)
                            end
                            Nm_6()
                            local function Nm_7()
                                local M2, M3, M4, M5
                                ThemeManager:SetLibrary(Library)
                                ThemeManager:SetFolder("MyScriptHub")
                                ThemeManager:SaveDefault("Evil Hello Kitty")
                                ThemeManager:ApplyToTab(Nh[3])
                                SaveManager:SetLibrary(Library)
                                SaveManager:IgnoreThemeSettings()
                                SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
                                SaveManager:SetFolder("OuroborosHub/ShuffleAnEgg")
                                local M6 = SaveManager:BuildConfigSection(Nh[3])
                                M2 = function(s7, s8)
                                    local Mf_1 = (s7 == "Toggle" and Toggles or Options)[s8]
                                    local Me_2 = type(Mf_1) == "table" and Mf_1.Type == s7
                                    return Me_2 and Mf_1 or nil
                                end
                                M5 = function(th, ti)
                                    local Type = ti.Type
                                    if Type == "Toggle" then
                                        return { idx = th, type = "Toggle", value = ti.Value == true }
                                    elseif Type == "Slider" then
                                        return { idx = th, type = "Slider", value = tostring(ti.Value) }
                                    elseif Type == "Dropdown" then
                                        return { idx = th, type = "Dropdown", multi = ti.Multi == true, value = ti.Value }
                                    elseif Type == "Input" then
                                        local Mm = ti.Value or ""
                                        return { idx = th, type = "Input", text = tostring(Mm) }
                                    elseif Type == "ColorPicker" then
                                        return { idx = th, type = "ColorPicker", value = ti.Value:ToHex(), transparency = ti.Transparency }
                                    elseif Type == "KeyPicker" then
                                        return {
                                            idx = th,
                                            type = "KeyPicker",
                                            mode = ti.Mode,
                                            key = ti.Value,
                                            modifiers = ti.Modifiers,
                                            toggled = ti.Toggled
                                        }
                                    else
                                        return nil
                                    end
                                end
                                M3 = function()
                                    local Mp = {}
                                    for i, v in ipairs({ Toggles, Options }) do
                                        for k, v in pairs(v) do
                                            local Mq = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                                            if Mq then
                                                local Mq_1 = M5(k, v)
                                                if Mq_1 then
                                                    Mp[#Mp + 1] = Mq_1
                                                end
                                            end
                                        end
                                    end
                                    table.sort(Mp, function(ts, tt)
                                        if ts.type ~= tt.type then
                                            return ts.type < tt.type
                                        end
                                        return ts.idx < tt.idx
                                    end)
                                    return { objects = Mp }
                                end
                                M4 = function(tv)
                                    local MG
                                    MG = nil
                                    local MH = type(tv) ~= "table" or type(tv.idx) ~= "string" or type(tv.type) ~= "string" or SaveManager.Ignore[tv.idx]
                                    if MH then
                                        return false
                                    end
                                    MG = M2(tv.type, tv.idx)
                                    if not MG then
                                        return false
                                    end
                                    local MH_1 = pcall(function()
                                        if tv.type == "Input" then
                                            if type(tv.text) ~= "string" then
                                                return
                                            end
                                            MG:SetValue(tv.text)
                                        elseif tv.type == "ColorPicker" then
                                            MG:SetValueRGB(Color3.fromHex(tv.value), tv.transparency)
                                        elseif tv.type == "KeyPicker" then
                                            MG:SetValue({ tv.key, tv.mode, tv.modifiers })
                                            if tv.mode == "Toggle" and tv.toggled ~= nil then
                                                MG.Toggled = tv.toggled
                                                MG:Update()
                                            end
                                        else
                                            MG:SetValue(tv.value)
                                        end
                                    end)
                                    return MH_1
                                end
                                M6:AddDivider()
                                M6:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
                                M6:AddButton("Export Config to Clipboard", function()
                                    local MK_1
                                    local MJ_1
                                    MJ_1, MK_1 = pcall(HttpService.JSONEncode, HttpService, M3())
                                    if MJ_1 then
                                        local MJ_2 = zl(setclipboard) and setclipboard
                                        local ML = MJ_2
                                        if not ML then
                                            local MJ_3 = zl(toclipboard) and toclipboard
                                            ML = MJ_3 or nil
                                        end
                                        local MJ_4 = ML
                                        local ML_1 = type(MJ_4) == "function" and pcall(MJ_4, MK_1)
                                        if ML_1 then
                                            Library:Notify("Config copied to clipboard", 6)
                                            return
                                        end
                                        Library:Notify("Your executor does not support copying to the clipboard")
                                        return
                                    end
                                    Library:Notify("Failed to encode the config")
                                end)
                                M6:AddButton("Import Config from Clipboard Text", function()
                                    local MQ_1
                                    local MO = Options.SaveManager_ImportSource.Value or ""
                                    local MO_1
                                    local MP = tostring(MO):match("^%s*(.-)%s*$")
                                    if MP == "" then
                                        Library:Notify("Paste an exported config into the box first")
                                        return
                                    end
                                    if #MP > 262144 then
                                        Library:Notify("That config is too large")
                                        return
                                    end
                                    MO_1, MQ_1 = pcall(HttpService.JSONDecode, HttpService, MP)
                                    local MP_1 = not MO_1 or type(MQ_1) ~= "table" or type(MQ_1.objects) ~= "table"
                                    if MP_1 then
                                        Library:Notify("That is not a valid exported config")
                                        return
                                    end
                                    if #MQ_1.objects > 2048 then
                                        Library:Notify("That config has too many records")
                                        return
                                    end
                                    local MO_2 = 0
                                    for i, v in ipairs(MQ_1.objects) do
                                        if M4(v) then
                                            MO_2 += 1
                                        end
                                    end
                                    if MO_2 == 0 then
                                        Library:Notify("No settings in that config matched this script")
                                        return
                                    end
                                    Options.SaveManager_ImportSource:SetValue("")
                                    local MQ_2 = MO_2 == 1 and "" or "s"
                                    Library:Notify(("Imported %d setting%s"):format(MO_2, MQ_2), 6)
                                end)
                                ThemeManager:LoadDefault()
                                SaveManager:LoadAutoloadConfig()
                                local function M6_1(t3, t4)
                                    if Toggles[t3] then
                                        t4(Toggles[t3].Value)
                                    end
                                end
                                local function M7(t7, t8)
                                    if Options[t7] then
                                        t8(Options[t7].Value)
                                    end
                                end
                                M7("PlaceRarities", zA.SetPlaceRarities)
                                M7("SkipRarities", zA.SetSkipRarities)
                                M7("PlaceMutations", zA.SetPlaceMutations)
                                M7("SkipMutations", zA.SetSkipMutations)
                                M7("KeepMutations", zA.SetKeepMutations)
                                M6_1("AutoPlay", zA.SetAutoPlay)
                                M6_1("AutoGuess", zA.SetAutoGuess)
                                M6_1("AutoSkipRarities", zA.SetAutoSkipRarities)
                                M6_1("AutoSkipMutations", zA.SetAutoSkipMutations)
                                M6_1("AutoSkipUnaffordable", zA.SetAutoSkipUnaffordable)
                                M6_1("AutoBuyCup", zA.SetAutoBuyCup)
                                M6_1("AutoBuyDealers", zA.SetAutoBuyDealers)
                                M6_1("AutoPlaceEggs", zA.SetAutoPlaceEggs)
                                M6_1("AutoHatchEggs", zA.SetAutoHatchEggs)
                                M6_1("AutoEquipBest", zA.SetAutoEquipBest)
                                M6_1("AutoBuyPetSlot", zA.SetAutoBuyPetSlot)
                                M6_1("AutoRebirth", zA.SetAutoRebirth)
                                M6_1("AutoClaimPlaytime", zA.SetAutoClaimPlaytime)
                                if Toggles.HideUiOnStart and Toggles.HideUiOnStart.Value then
                                    pcall(function()
                                        Library:Toggle(false)
                                    end)
                                end
                            end
                            Nm_7()
                        end
                    end
                    NA_11 = (NA_11 + 55) % 72
                else
                    NA_30 = {
                        "glttem",
                        "awq",
                        "xim",
                        "xoifk",
                        "fkqqauqjb",
                        "jgabzm",
                        "kpuqazbuq",
                        "xkaxxetkrsn",
                        "fgotnbqrd",
                        "qapxq"
                    }
                    local P0 = NA_11
                    NA_16 = NA_30[P0 % 10 + 1]
                    if NA_16:len() <= NA_16:gsub("(.)", "%1%1", P0 % 3 % 2 + 1):len() then
                        NA_27, NA_13 = pcall(NA_40)
                    else
                        NA_40, NA_27 = pcall(NA_13)
                    end
                    NA_11 = (NA_11 + 1) % 72
                end
            else
                NA_30 = (vector.create((NA_11 * 1 + 8) % 11 + 1, (NA_11 * 5 + 6) % 13 + 1, (NA_11 * 9 + 13) % 17 + 1))
                NA_16 = (vector.create((NA_11 * 7 + 5) % 11 + 1, (NA_11 * 5 + 9) % 13 + 1, (NA_11 * 2 + 12) % 17 + 1))
                NA_45 = (vector.create((NA_11 * 2 + 3) % 5 + 1, (NA_11 * 2 + 2) % 7 + 1, (NA_11 * 4 + 7) % 9 + 1))
                if math.abs((vector.angle(NA_30, NA_16, NA_45))) - math.abs((vector.angle(NA_16, NA_30, NA_45))) == 0 then
                    z1 = function(hq, hr, hs)
                        local Hh
                        Hh = nil
                        zz[hq] += 1
                        Hh = zz[hq]
                        if not hr then
                            return
                        end
                        task.spawn(function()
                            hs(Hh)
                        end)
                    end
                    zu = fns.fn714
                    AS = { "left", "middle", "right" }
                    AM = fns.fn135
                else
                    AS = function(hq, hr, hs)
                        local Hh
                        Hh = nil
                        zz[hq] += 1
                        Hh = zz[hq]
                        if not hr then
                            return
                        end
                        task.spawn(function()
                            hs(Hh)
                        end)
                    end
                    AM = fns.fn714
                    z1 = { "left", "middle", "right" }
                    zu = fns.fn135
                end
                NA_11 = (NA_11 + 28) % 72
            end
        elseif NA_43 <= 4 then
            NA_30 = (vector.create((NA_11 * 4 + 8) % 11 + 1, (NA_11 * 3 + 7) % 13 + 1, (NA_11 * 7 + 3) % 17 + 1))
            NA_16 = (vector.create((NA_11 * 4 + 4) % 11 + 1, (NA_11 * 10 + 4) % 13 + 1, (NA_11 * 4 + 9) % 17 + 1))
            local P8 = vector.cross(NA_30, NA_16)
            local P9 = vector.dot(NA_30, NA_16)
            if vector.dot(P8, P8) + P9 * P9 == vector.dot(NA_30, NA_30) * vector.dot(NA_16, NA_16) + 2 then
                zV = fns.fn596
            else
                zf = fns.fn596
            end
            NA_11 = (NA_11 + 37) % 72
        else
            NA_30 = (vector.create((NA_11 * 7 + 7) % 11 + 1, (NA_11 * 9 + 13) % 13 + 1, (NA_11 * 5 + 6) % 17 + 1))
            NA_16 = (vector.create((NA_11 * 4 + 5) % 11 + 1, (NA_11 * 1 + 7) % 13 + 1, (NA_11 * 7 + 5) % 17 + 1))
            NA_45 = (vector.create((NA_11 * 5 + 5) % 5 + 1, (NA_11 * 3 + 5) % 7 + 1, (NA_11 * 3 + 5) % 9 + 1))
            if math.abs((vector.angle(NA_30, NA_16, NA_45))) - math.abs((vector.angle(NA_16, NA_30, NA_45))) == 0 then
                zY = fn862
                z6 = fn987
                Av = fns.fn127
                zV = fn1103
                AH = fns.fn618
            else
                Av = fn862
                zV = fn987
                z6 = fns.fn127
                AH = fn1103
                zY = fns.fn618
            end
            NA_11 = (NA_11 + 46) % 72
        end
    elseif NA_43 <= 7 then
        if NA_43 <= 6 then
            local Pc = bit32.rrotate(bit32.bxor(bit32.lrotate(NA_11, 23), string.byte(tostring(NA_27))), 20)
            if bit32.bxor(bit32.lrotate(bit32.bxor(Pc, 3234942363), 16), 1302053073) == bit32.lrotate(Pc, 16) then
                zU = fn1260
                zb = fns.fn114
                AQ = fns.fn188
            else
                AQ = fn1260
                zU = fns.fn114
                zb = fns.fn188
            end
            NA_11 = (NA_11 + 10) % 72
        else
            NA_30 = {
                "yhyxodmywxsp",
                "jbrhnrujye",
                "rizkhjrnvvze",
                "wdgwctrtlr",
                "yzukjytqd",
                "kffhokc",
                "zvzibpa",
                "phrudp",
                "fehlcskav",
                "rbyuhddkx",
                "woypscgtcd",
                "uom",
                "zmfbtdt",
                "tmx",
                "txrxaq",
                "oxfdumhxd"
            }
            if NA_30[(NA_11 * 26 + 53) % 16 + 1] < NA_30[(NA_11 * 26 + 53) % 16 + 1] then
                zI = fn808
                zH = fn1122
            else
                zH = fn808
                zI = fn1122
            end
            NA_11 = (NA_11 + 10) % 72
        end
    elseif NA_43 <= 8 then
        NA_43 = (vector.create((NA_11 * 6 + 5) % 11 + 1, (NA_11 * 9 + 11) % 13 + 1, (NA_11 * 15 + 8) % 17 + 1))
        NA_30 = (vector.create((NA_11 * 1 + 7) % 11 + 1, (NA_11 * 1 + 9) % 13 + 1, (NA_11 * 14 + 7) % 17 + 1))
        local OX = vector.cross(NA_43, NA_30)
        local OY = vector.dot(NA_43, NA_30)
        if vector.dot(OX, OX) + OY * OY == vector.dot(NA_43, NA_43) * vector.dot(NA_30, NA_30) then
            zJ = fn845
            zM = fns.fn452
            An = fns.fn63
            zB = fns.fn155
            z2 = fn887
        else
            zB = fn845
            An = fns.fn452
            z2 = fns.fn63
            zM = fns.fn155
            zJ = fn887
        end
        NA_11 = (NA_11 + 64) % 72
    else
        NA_43 = (vector.create((NA_11 * 4 + 6) % 11 + 1, (NA_11 * 11 + 5) % 13 + 1, (NA_11 * 4 + 6) % 17 + 1))
        NA_30 = (vector.create((NA_11 * 4 + 7) % 11 + 1, (NA_11 * 4 + 1) % 13 + 1, (NA_11 * 7 + 14) % 17 + 1))
        NA_16 = (vector.create((NA_11 * 4 + 4) % 5 + 1, (NA_11 * 5 + 2) % 7 + 1, (NA_11 * 4 + 7) % 9 + 1))
        if math.abs((vector.angle(NA_43, NA_30, NA_16))) - math.abs((vector.angle(NA_30, NA_43, NA_16))) == 0 then
            AK = fns.fn317
        else
            zV = fns.fn317
        end
        NA_11 = (NA_11 + 1) % 72
    end
until (NA_11 * 35 + 39) % 72 == 15
if not NA_27 then
    NA_11 = 2
    repeat
        if NA_11 * 30222067 + 6 + 7 >= NA_11 * 30222067 + 6 + 7 + 5 then
            warn("[Ouroboros Shuffle an Egg] UI failed: ", NA_13)
            warn(debug.traceback())
            pcall(fn928)
        else
            warn("[Ouroboros Shuffle an Egg] UI failed: ", NA_13)
            warn(debug.traceback())
            pcall(fn928)
        end
        NA_11 = (NA_11 + 2) % 4
    until (NA_11 * 1 + 3) % 4 == 3
end
