local fns = {}
local J1_5, J1_21
local yn
local xn
local x4
local w4
local xM
local wM
local yt
local AnomalyEvolution
local xt
local xa
local wS
local xz
local xg
local CoreGui
local wY
local xF
local ym
local xm
local x3
local w3
local xL
local ys
local SellShopConfig
local x9
local w9
local xR
local wR
local FoodShopConfig
local AnomalyConfig
local xf
local xX
local wX
local LocalPlayer
local Shared
local IndexRewardConfig
local RarityConfig
local w2
local LuckUpgradeConfig
local yr
local x8
local w8
local PlotLookup
local wQ
local xx
local xe
local xW
local wW
local xD
local w1
local yq
local xq
local w7
local xP
local wP
local xw
local yd
local xd
local xV
local wV
local xC
local yj
local SpeedConfig
local x0
local xI
local Network
local ToyConfig
local x6
local wO
local xv
local yc
local xc
local PlotConfig
local wU
local LabCapacityConfig
local yi
local xi
local State
local w_
local TreadmillUpgradeConfig
local xo
local x5
local w5
local xN
local yu
local wN
local yb
local xb
local xT
local xA
local yh
local xh
local xZ
local wZ
local xG
function fns.fn3()
    local FE_1
    local FD_1
    if not w3() then
        return false
    end
    task.wait(0.1)
    if not wV() then
        return false
    end
    FE_1, FD_1 = pcall(Network.Invoke, ToyConfig.RollInvokeName)
    local FF = FE_1 and typeof(FD_1) == "table"
    if FF then
        return FD_1.Ok == true
    end
    return FE_1
end
function fns.fn48(kD)
    State.AutoSteal = kD == true
    xb("Steal", w8, function()
        if xa() then
            xX()
            return
        end
        local F4 = wX() and xa()
        if F4 then
            task.wait(0.1)
            local F4_1 = wV() and xa()
            if F4_1 then
                xX()
            end
        end
    end)
end
function fns.fn52(bp)
    local zU = {}
    for i, v in ipairs(bp) do
        zU[v] = true
    end
    return zU
end
function fns.fn68(f6, f7)
    if typeof(f7) ~= "Vector3" then
        return false
    end
    xT(f7, f7 + Vector3.new(1, 0, 0))
    local Dd = os.clock() + 2.5
    while true do
        local De = wV() and os.clock() < Dd
        if De then
            if xL(f6) then
                return true
            end
            local De_1 = wM()
            if De_1 and (De_1.Position - f7).Magnitude > 40 then
                xT(f7, f7 + Vector3.new(1, 0, 0))
            end
            task.wait(0.15)
            continue
        end
        break
    end
    return xL(f6)
end
function fns.fn74()
    local EQ = State.SellKind
    local EQ_1
    local ER = EQ == ""
    local ER_3
    local ES = typeof(EQ) ~= "string"
    local EX = if ES then 1 else 0
    local EV = 2603 * EX + 1741 * (1 - EX)
    local EW = 421 * EX + 481 * (1 - EX)
    if not ((EV * 2002 + EW * 1340 + EV * EW) % 16777213 == 6871209) then
        ES = ER
    end
    if ES then
        EQ = "All"
    end
    local ER_1 = SellShopConfig.FindHitbox and SellShopConfig.FindHitbox()
    local ES_1 = ER_1
    if ER_1 then
        ER_1 = ES_1:IsA("BasePart")
    end
    if ER_1 then
        xT(ES_1.Position + Vector3.new(0, 3, 0))
        local ER_2 = os.clock() + 2
        while true do
            local ET = wV() and os.clock() < ER_2
            if ET then
                if SellShopConfig.IsPlayerInHitbox(LocalPlayer, ES_1) then
                    break
                end
                task.wait(0.1)
                continue
            end
            break
        end
    end
    if not wV() then
        return false
    end
    pcall(Network.FireServer, SellShopConfig.RequestKindEventName, EQ)
    task.wait(0.35)
    if not wV() then
        return false
    end
    ER_3, EQ_1 = pcall(Network.Invoke, SellShopConfig.ConfirmInvokeName)
    local ES_2 = ER_3 and typeof(EQ_1) == "table"
    if ES_2 then
        return EQ_1.Ok ~= false
    end
    return ER_3
end
function fns.fn92(bn)
    return next(bn) == nil
end
function fns.fn113()
    local Character = LocalPlayer.Character
    if not Character then
        return nil
    end
    return Character:FindFirstChildOfClass("Humanoid")
end
function fns.fn134(lL)
    State.AutoBuyFood = lL == true
    xb("BuyFood", wP, function()
        xd()
    end)
end
function fns.fn150()
    local DV_1
    local DT = xo()
    local DT_1
    local DU = false
    for i, v in ipairs(DT) do
        if not wV() then
            break
        end
        DT_1, DV_1 = pcall(Network.Invoke, AnomalyConfig.HatchInvokeName, v)
        if DT_1 and not DV_1 then
            DU = true
        end
        task.wait(w2)
    end
    return DU
end
function fns.fn154()
    local Dq_1
    local Dp_2
    local Du = if xa() then 1 else 0
    if Du == 1 then
        return true
    end
    local Do = w1()
    if #Do == 0 then
        local Dp_1 = math.max(1, #xc())
        local Dx = 1
        while Dx <= Dp_1 do
            if not wV() then
                return false
            end
            Dp_2, Dq_1 = yi()
            if not Dp_2 then
                return false
            end
            wU(Dp_2, Dq_1)
            Do = w1()
            if #Do > 0 then
                break
            end
            Dx += 1
        end
    end
    if #Do == 0 then
        return false
    end
    local Dp_3 = math.min(yb, #Do)
    local DC = 1
    while true do
        if not (DC <= Dp_3) then
            return xa()
        end
        local DD = DC
        if not wV() then
            return false
        end
        if xa() then
            break
        end
        local Dp_4 = Do[DD]
        if xP(Dp_4) then
            return true
        end
        task.wait(0.1)
        DC += 1
    end
    return true
end
function fns.fn164(l5)
    State.AutoClaimIndex = l5 == true
    xb("Index", wY, function()
        wN()
    end)
end
function fns.fn175()
    return xZ.GetCarriedEggName(LocalPlayer.UserId)
end
function fns.fn181()
    local E8_1
    local E7_1
    E7_1, E8_1 = pcall(Network.Invoke, LabCapacityConfig.EquipBestInvokeName)
    local E9 = E7_1 and typeof(E8_1) == "table" and E8_1.Ok == true
    return E9
end
function fns.fn204(eF, eG)
    local BW_2
    local BV_1, BV_2, BV_3, BV_4
    local BU_1, BU_2, BU_3, BU_4
    local BT_1, BT_2, BT_3, BT_4
    local BS = eG and eG.Parent
    local attr, BS_12, BasePart
    if BS then
        local Parent = eG.Parent
        if Parent:IsA("Attachment") then
            return Parent.WorldPosition
        elseif Parent:IsA("BasePart") then
            return Parent.Position
        else
            local attr2 = eF:GetAttribute("EggSpawnPosition")
            if typeof(attr) == "Vector3" then
                return attr2
            elseif typeof(attr2) == "string" then
                BV_1, BU_1, BT_1 = attr2:match("([^,]+),%s*([^,]+),%s*([^,]+)")
                BV_2, BU_2, BT_2 = tonumber(BV_1), tonumber(BU_1), tonumber(BT_1)
                if BW_2 then
                    return Vector3.new(BV_2, BU_2, BT_2)
                end
                local BS_4 = eF.PrimaryPart and eF.PrimaryPart:IsA("BasePart")
                if BS_12 then
                    return eF.PrimaryPart.Position
                end
                local BasePart2 = eF:FindFirstChildWhichIsA("BasePart", true)
                if BasePart then
                    return BasePart2.Position
                end
                return nil
            else
                local BS_6 = eF.PrimaryPart and eF.PrimaryPart:IsA("BasePart")
                if BS_12 then
                    return eF.PrimaryPart.Position
                end
                local BasePart2 = eF:FindFirstChildWhichIsA("BasePart", true)
                if BasePart then
                    return BasePart2.Position
                end
                return nil
            end
        end
    else
        attr = eF:GetAttribute("EggSpawnPosition")
        if typeof(attr) == "Vector3" then
            return attr
        elseif typeof(attr) == "string" then
            BV_3, BU_3, BT_3 = attr:match("([^,]+),%s*([^,]+),%s*([^,]+)")
            BV_4, BU_4, BT_4 = tonumber(BV_3), tonumber(BU_3), tonumber(BT_3)
            BW_2 = BV_4 and BU_4 and BT_4
            if BW_2 then
                return Vector3.new(BV_4, BU_4, BT_4)
            end
            local BS_10 = eF.PrimaryPart and eF.PrimaryPart:IsA("BasePart")
            if BS_12 then
                return eF.PrimaryPart.Position
            end
            local BasePart2 = eF:FindFirstChildWhichIsA("BasePart", true)
            if BasePart then
                return BasePart2.Position
            end
            return nil
        else
            BS_12 = eF.PrimaryPart and eF.PrimaryPart:IsA("BasePart")
            if BS_12 then
                return eF.PrimaryPart.Position
            end
            BasePart = eF:FindFirstChildWhichIsA("BasePart", true)
            if BasePart then
                return BasePart.Position
            end
            return nil
        end
    end
end
function fns.fn208(lz)
    State.AutoUpgradePlot = lz == true
    xb("Plot", wY, function()
        xI()
    end)
end
function fns.fn222(mh)
    State.AutoFeed = mh == true
    xb("Feed", wR, function()
        xx()
    end)
end
function fns.fn229(lR)
    local Gb = typeof(lR) == "string" and wQ[lR]
    if Gb then
        State.BuyFoodId = lR
    end
end
function fns.fn266()
    local Aa = xe()
    local Ab = Aa and typeof(Aa.Currency) == "number"
    if Ab then
        return Aa.Currency
    end
    return 0
end
function fns.fn270()
    local D5_2
    local D4 = xR()
    local D4_2
    if D4 then
        local D5_1 = PlotLookup.GetCollectButton and PlotLookup.GetCollectButton(D4)
        local D4_1 = D5_1
        if D5_1 then
            D5_1 = D4_1:IsA("BasePart")
        end
        if D5_1 then
            xT(D4_1.Position + Vector3.new(0, 3, 0))
            task.wait(0.1)
        end
    end
    if not wV() then
        return false
    end
    D5_2, D4_2 = pcall(Network.Invoke, AnomalyConfig.CollectAllInvokeName)
    local D6 = D5_2 and typeof(D4_2) == "table"
    if D6 then
        return D4_2.Ok == true
    end
    return D5_2
end
function fns.fn278()
    if PlotLookup.ResolveOwnedPlot then
        return PlotLookup.ResolveOwnedPlot(LocalPlayer)
    end
    return PlotLookup.FindPlotForUser(LocalPlayer.UserId)
end
function fns.fn293(lF)
    State.AutoCollectMoney = lF == true
    xb("Collect", wW, function()
        xi()
    end)
end
function fns.fn294(Z)
    local zx = typeof(cloneref) == "function" and typeof(Z) == "Instance"
    if zx then
        return cloneref(Z)
    end
    return Z
end
function fns.fn333()
    local B7 = {}
    local Map = ys:FindFirstChild("Map")
    local B9 = Map and Map:FindFirstChild(xZ.StagesFolderName)
    if not B9 then
        return B7
    end
    local B9_1 = wM()
    local Ca = B9_1 and B9_1.Position
    for i, child in ipairs(B9:GetChildren()) do
        if x6(child.Name) then
            local B8_2 = child:FindFirstChild(xZ.InteractionFolderName)
            local Ca_1 = B8_2 and B8_2:FindFirstChild(xZ.EggsFolderName)
            if Ca_1 then
                for i, child2 in ipairs(Ca_1:GetChildren()) do
                    local B8_4 = {}
                    local Ca_2 = child2:IsA("Model") and child2.Name:find("WorldEgg", 1, true)
                    if Ca_2 then
                        table.insert(B8_4, child2)
                    else
                        local Ca_3 = child2:IsA("Folder") and child2.Name:find(xZ.PersonalFolderPrefix, 1, true) == 1
                        if Ca_3 then
                            for i, child in ipairs(child2:GetChildren()) do
                                local Ca_4 = child:IsA("Model") and child.Name:find("WorldEgg", 1, true)
                                if Ca_4 then
                                    table.insert(B8_4, child)
                                end
                            end
                        end
                    end
                    for i, v in ipairs(B8_4) do
                        if not xG(v) then
                            local B8_5 = v:GetAttribute(AnomalyConfig.RarityAttribute) or v:GetAttribute("Rarity")
                            if xM(B8_5, State.StealRarities) then
                                local B8_6 = xn(v)
                                local Cb = wO(v, B8_6)
                                if B8_6 and B8_6.Enabled ~= false and Cb and Cb.Y > -50 and Cb.Magnitude > 5 then
                                    local Cc_2 = Ca and (Cb - Ca).Magnitude or 0
                                    table.insert(B7, { model = v, prompt = B8_6, position = Cb, zone = child.Name, rarity = B8_5, distance = Cc_2 })
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    table.sort(B7, function(ft, fu)
        return ft.distance < fu.distance
    end)
    return B7
end
function fns.fn372()
    local BuyFoodId = State.BuyFoodId
    local EL_3
    local EM = BuyFoodId == ""
    local EM_3, EM_5, EM_6
    local EN = typeof(BuyFoodId) ~= "string" or EM
    local EN_2, EN_4, EN_5
    if EN then
        return false
    end
    local EM_1 = FoodShopConfig.GetFood and FoodShopConfig.GetFood(BuyFoodId)
    local EM_2 = type(EM_1) == "table" and typeof(EM_1.Price) == "number" and w_() < EM_1.Price
    if EM_2 then
        return false
    end
    EM_3, EN_2 = pcall(Network.Invoke, FoodShopConfig.GetStateInvokeName)
    local EO = EM_3 and typeof(EN_2) == "table" and typeof(EN_2.Stock) == "table"
    if EO then
        local EM_4 = EN_2.Stock[BuyFoodId]
        local EN_3 = typeof(EM_4) == "number" and EM_4 <= 0
        if EN_3 then
            return false
        end
        EM_5, EN_4 = pcall(Network.Invoke, FoodShopConfig.PurchaseInvokeName, BuyFoodId)
        if EL_3 then
            return EN_4.Ok == true
        end
        return EM_5 and EN_4 == true
    end
    EM_6, EN_5 = pcall(Network.Invoke, FoodShopConfig.PurchaseInvokeName, BuyFoodId)
    EL_3 = EM_6 and typeof(EN_5) == "table"
    if EL_3 then
        return EN_5.Ok == true
    end
    return EM_6 and EN_5 == true
end
function fns.fn375(fw)
    local CD = os.clock()
    local CE = fw
    local CJ = if CE then 1 else 0
    local CH = 3261 * CJ + 1209 * (1 - CJ)
    local CI = 3386 * CJ + 1968 * (1 - CJ)
    if not ((CH * 3638 + CI * 2279 + CH * CI) % 16777213 == 13844745) then
        CE = 2
    end
    local CF = CD + CE
    while true do
        local CD_1 = wV() and os.clock() < CF
        if CD_1 then
            if xa() then
                return true
            end
            task.wait(0.08)
            continue
        end
        break
    end
    return xa()
end
function fns.fn380()
    local BE_8
    local BD_7, BD_8
    local BA_3, BA_7, BA_12, BA_13, BA_17, BA_20
    local BB_4, BB_8, BB_14, BB_15, BB_19, BB_20, BB_21, BB_22
    local Bz = xa()
    if not Bz then
        if not yc() then
            return false
        end
        local BA_1 = w9()
        local BB_1 = BA_1 and BA_1:GetAttribute("EggInstanceId")
        if BD_7 then
            return false
        end
        local BB_3 = xR()
        if not BB_14 then
            return false
        end
        local BD_2 = xz(BB_3)
        if not BD_8 then
            return false
        elseif not wZ(BB_14, BD_8) then
            return false
        elseif not wV() then
            return false
        elseif not Bz then
            local BA_2 = yc()
            if not BA_12 then
                return false
            end
            local attr = BA_2:GetAttribute("EggInstanceId")
            BA_3, BB_4 = pcall(Network.Invoke, AnomalyConfig.PlaceInvokeName, BD_2)
            local BD_3 = false
            if BA_17 then
                if typeof(BB_19) == "table" then
                    BD_3 = BB_4.Ok ~= false
                else
                    BD_3 = BB_4 == true or BB_4 == nil
                end
            end
            local BA_5 = os.clock() + x5
            while true do
                local BB_5 = wV() and os.clock() < BA_5
                if not BB_20 then
                    if Bz then
                        local Bz_1 = BD_3 and not xa()
                        return Bz_1
                    end
                    local Bz_2 = w9()
                    local BA_6 = BD_3
                    if BA_20 then
                        local BB_6 = Bz_2 == nil
                        if not BB_21 then
                            local BD_4 = attr ~= nil and Bz_2:GetAttribute("EggInstanceId") ~= attr
                            BB_6 = BD_4
                        end
                        BA_6 = BB_6
                    end
                    return BA_6
                end
                if Bz then
                    if not xa() then
                        return true
                    end
                    task.wait(0.1)
                    continue
                end
                local BB_7 = w9()
                if BB_22 == nil then
                    return true
                end
                local BE_2 = attr ~= nil and BB_7:GetAttribute("EggInstanceId") ~= attr
                if BE_8 then
                    break
                end
                task.wait(0.1)
            end
            return true
        else
            BA_7, BB_8 = pcall(Network.Invoke, AnomalyConfig.PlaceInvokeName, BD_2)
            local BD_5 = false
            if BA_17 then
                if typeof(BB_19) == "table" then
                    BD_5 = BB_8.Ok ~= false
                else
                    BD_5 = BB_8 == true or BB_8 == nil
                end
            end
            local BA_9 = os.clock() + x5
            while true do
                local BB_9 = wV() and os.clock() < BA_9
                if not BB_20 then
                    if Bz then
                        local Bz_3 = BD_5 and not xa()
                        return Bz_3
                    end
                    local Bz_4 = w9()
                    local BA_10 = BD_5
                    if BA_20 then
                        local BB_10 = Bz_4 == nil
                        if not BB_21 then
                            local BD_6 = BB_1 ~= nil and Bz_4:GetAttribute("EggInstanceId") ~= BB_1
                            BB_10 = BD_6
                        end
                        BA_10 = BB_10
                    end
                    return BA_10
                end
                if Bz then
                    if not xa() then
                        return true
                    end
                    task.wait(0.1)
                    continue
                end
                local BB_11 = w9()
                if BB_22 == nil then
                    return true
                end
                local BE_4 = BB_1 ~= nil and BB_11:GetAttribute("EggInstanceId") ~= BB_1
                if BE_8 then
                    break
                end
                task.wait(0.1)
            end
            return true
        end
    else
        local BA_11 = w9()
        local BB_12 = BA_11 and BA_11:GetAttribute("EggInstanceId")
        local BB_13 = not BA_11
        BD_7 = not Bz
        if BD_7 ~= false then
            BD_7 = BB_13
        end
        if BD_7 then
            return false
        end
        BB_14 = xR()
        if not BB_14 then
            return false
        end
        BD_8 = xz(BB_14)
        if not BD_8 then
            return false
        elseif not wZ(BB_14, BD_8) then
            return false
        elseif not wV() then
            return false
        elseif not Bz then
            BA_12 = yc()
            if not BA_12 then
                return false
            end
            local attr = BA_12:GetAttribute("EggInstanceId")
            BA_13, BB_15 = pcall(Network.Invoke, AnomalyConfig.PlaceInvokeName, BD_8)
            local BD_9 = false
            if BA_17 then
                if typeof(BB_19) == "table" then
                    BD_9 = BB_15.Ok ~= false
                else
                    BD_9 = BB_15 == true or BB_15 == nil
                end
            end
            local BA_15 = os.clock() + x5
            while true do
                local BB_16 = wV() and os.clock() < BA_15
                if not BB_20 then
                    if Bz then
                        local Bz_5 = BD_9 and not xa()
                        return Bz_5
                    end
                    local Bz_6 = w9()
                    local BA_16 = BD_9
                    if BA_20 then
                        local BB_17 = Bz_6 == nil
                        if not BB_21 then
                            local BD_10 = attr ~= nil and Bz_6:GetAttribute("EggInstanceId") ~= attr
                            BB_17 = BD_10
                        end
                        BA_16 = BB_17
                    end
                    return BA_16
                end
                if Bz then
                    if not xa() then
                        return true
                    end
                    task.wait(0.1)
                    continue
                end
                local BB_18 = w9()
                if BB_22 == nil then
                    return true
                end
                local BE_6 = attr ~= nil and BB_18:GetAttribute("EggInstanceId") ~= attr
                if BE_8 then
                    break
                end
                task.wait(0.1)
            end
            return true
        else
            BA_17, BB_19 = pcall(Network.Invoke, AnomalyConfig.PlaceInvokeName, BD_8)
            local BD_11 = false
            if BA_17 then
                if typeof(BB_19) == "table" then
                    BD_11 = BB_19.Ok ~= false
                else
                    BD_11 = BB_19 == true or BB_19 == nil
                end
            end
            local BA_19 = os.clock() + x5
            while true do
                BB_20 = wV() and os.clock() < BA_19
                if not BB_20 then
                    if Bz then
                        local Bz_7 = BD_11 and not xa()
                        return Bz_7
                    end
                    local Bz_8 = w9()
                    BA_20 = BD_11
                    if BA_20 then
                        BB_21 = Bz_8 == nil
                        if not BB_21 then
                            local BD_12 = BB_12 ~= nil and Bz_8:GetAttribute("EggInstanceId") ~= BB_12
                            BB_21 = BD_12
                        end
                        BA_20 = BB_21
                    end
                    return BA_20
                end
                if Bz then
                    if not xa() then
                        return true
                    end
                    task.wait(0.1)
                    continue
                end
                BB_22 = w9()
                if BB_22 == nil then
                    return true
                end
                BE_8 = BB_12 ~= nil and BB_22:GetAttribute("EggInstanceId") ~= BB_12
                if BE_8 then
                    break
                end
                task.wait(0.1)
            end
            return true
        end
    end
end
function fns.fn382()
    local DF = {}
    local DG = ys:FindFirstChild(AnomalyConfig.AnomaliesFolderName)
    if not DG then
        return DF
    end
    for i, child in ipairs(DG:GetChildren()) do
        local DG_1 = child:IsA("Model") and child:GetAttribute("OwnerUserId") == LocalPlayer.UserId
        if DG_1 then
            local attr2 = child:GetAttribute(AnomalyConfig.StageAttribute)
            local attr = child:GetAttribute("CreatureId")
            local DI = attr2 == AnomalyConfig.Stages.Egg and typeof(attr) == "string"
            if DI then
                local DG_3 = AnomalyEvolution.GetHatchRemaining(child)
                local DI_1 = typeof(DG_3) == "number" and DG_3 <= 0
                if DI_1 then
                    table.insert(DF, attr)
                end
            end
        end
    end
    return DF
end
function fns.fn383(lb)
    State.AutoHatchEggs = lb == true
    xb("Hatch", w2, function()
        x9()
    end)
end
local function fn393()
    local CZ = xc()
    if #CZ == 0 then
        return nil, nil
    end
    State.StealZoneCursor = State.StealZoneCursor % #CZ + 1
    local C_ = CZ[State.StealZoneCursor]
    return C_, xm[C_]
end
local function fn404()
    gethui = xv
end
local function fn430()
    local Fw = xR()
    if not Fw then
        return false
    end
    local Fx = PlotLookup.GetInteraction and PlotLookup.GetInteraction(Fw, PlotConfig.ToyRollerName)
    if not Fx then
        return false
    end
    local Fx_1 = Fx:IsA("BasePart") and Fx
    local Fy = Fx_1 or Fx:FindFirstChildWhichIsA("BasePart", true)
    if not Fy then
        return false
    end
    xT(Fy.Position + Vector3.new(0, 3, 0))
    return true
end
local function fn498(mb)
    State.AutoEquipBest = mb == true
    xb("Equip", wY, function()
        xF()
    end)
end
local function fn516(kd)
    return ({
        Steal = "AutoSteal",
        Place = "AutoPlaceEggs",
        Hatch = "AutoHatchEggs",
        Luck = "AutoUpgradeLuck",
        TreadUpgrade = "AutoUpgradeTreadmill",
        Treadmill = "AutoTreadmill",
        Plot = "AutoUpgradePlot",
        Collect = "AutoCollectMoney",
        BuyFood = "AutoBuyFood",
        Sell = "AutoSell",
        Index = "AutoClaimIndex",
        Equip = "AutoEquipBest",
        Feed = "AutoFeed",
        Roll = "AutoRollToys",
        BuyToy = "AutoBuyToys"
    })[kd]
end
local function fn523()
    local Backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
    if not Backpack then
        return nil
    end
    for i, child in ipairs(Backpack:GetChildren()) do
        if xq(child) then
            return child
        end
    end
    return nil
end
local function fn549(aR, aS)
    local zz = (tonumber(aR:match("%d+")))
    local zE = if zz then 1 else 0
    local zC = 883 * zE + 2411 * (1 - zE)
    local zD = 2495 * zE + 2858 * (1 - zE)
    if not ((zC * 365 + zD * 2723 + zC * zD) % 16777213 == 9319265) then
        zz = 0
    end
    local zA = tonumber(aS:match("%d+")) or 0
    return zz < zA
end
local function fn595(gh)
    if not gh or not gh.prompt or not gh.prompt.Parent then
        return false
    end
    if gh.model and gh.model.Parent == nil then
        return false
    end
    local Dh_2 = gh.position + Vector3.new(0, 2.5, 0)
    xT(Dh_2, gh.position + Vector3.new(1, 0, 0))
    task.wait(0.18)
    if not wV() then
        return false
    end
    local Di = wM()
    if Di and (Di.Position - gh.position).Magnitude > 18 then
        xT(Dh_2, gh.position + Vector3.new(1, 0, 0))
        task.wait(0.12)
    end
    if not xA(gh.prompt) then
        if not xf(gh.prompt) then
            return false
        end
        return xD(1.6)
    end
    return xD(1.6)
end
local function fn614()
    return xX()
end
local function fn621(mx)
    State.AutoBuyToys = mx == true
    xb("BuyToy", yq, function()
        yh()
    end)
end
local function fn637()
    local E0 = xe()
    local E0_3
    local E1 = IndexRewardConfig.CountUnclaimed and IndexRewardConfig.CountUnclaimed(E0)
    local E1_2
    local E1_1 = E1 or 0
    local E0_2 = typeof(E1_1) == "number" and E1_1 <= 0
    if E0_2 then
        return false
    end
    E0_3, E1_2 = pcall(Network.Invoke, IndexRewardConfig.ClaimAllInvokeName)
    local E2 = E0_3 and typeof(E1_2) == "table" and E1_2.Ok == true
    return E2
end
local function fn655(fT)
    local Map = ys:FindFirstChild("Map")
    local C2 = Map and Map:FindFirstChild(xZ.StagesFolderName)
    local C1_1 = C2
    if C2 then
        C2 = C1_1:FindFirstChild(fT)
    end
    local C1_2 = C2
    if not C1_2 then
        return false
    end
    local C2_1 = C1_2:FindFirstChild(xZ.InteractionFolderName)
    local C1_3 = C2_1 and C2_1:FindFirstChild(xZ.EggsFolderName)
    if not C1_3 then
        return false
    end
    for i, descendant in ipairs(C1_3:GetDescendants()) do
        local C1_4 = descendant:IsA("ProximityPrompt") and descendant.Name == xZ.StealPromptName
        if C1_4 then
            return true
        end
    end
    return false
end
local function fn659(eQ)
    local B1_1, B1_4, B1_5
    local B0_1, B0_5
    if not eQ then
        return true
    elseif typeof(xZ.ShouldHidePersonalEgg) == "function" then
        B0_1, B1_1 = pcall(xZ.ShouldHidePersonalEgg, eQ, LocalPlayer)
        if B0_1 and B1_1 then
            return true
        end
        local B0_2 = eQ:GetAttribute(xZ.EggOwnerAttribute) or eQ:GetAttribute("OwnerUserId")
        if B1_4 == LocalPlayer.UserId then
            return true
        end
        while true do
            if not B0_5 then
                return false
            end
            if B0_5.Name == xZ.PersonalFolderPrefix .. tostring(LocalPlayer.UserId) then
                break
            end
            if B1_5 then
                return false
            end
        end
        return true
    else
        local B0_4 = eQ:GetAttribute(xZ.EggOwnerAttribute) or eQ:GetAttribute("OwnerUserId")
        B1_4 = B0_4
        if B1_4 == LocalPlayer.UserId then
            return true
        end
        B0_5 = eQ.Parent
        while true do
            if not B0_5 then
                return false
            end
            if B0_5.Name == xZ.PersonalFolderPrefix .. tostring(LocalPlayer.UserId) then
                break
            end
            B1_5 = B0_5.Name == xZ.EggsFolderName or B0_5.Name == xZ.StagesFolderName
            if B1_5 then
                return false
            end
            B0_5 = B0_5.Parent
        end
        return true
    end
end
local function fn669(by)
    if w7(State.StealZones) then
        return true
    end
    return State.StealZones[by] == true
end
local function fn675(lt)
    State.AutoTreadmill = lt == true
    xb("Treadmill", ym, function()
        yu()
    end)
end
local function fn684(ac)
    return type(ac) == "function"
end
local function fn705()
    local FS_1
    local FR = xt()
    local FR_1
    if not FR then
        return false
    elseif not w3() then
        return false
    else
        task.wait(0.1)
        if not wV() then
            return false
        end
        FR_1, FS_1 = pcall(Network.Invoke, ToyConfig.PurchaseInvokeName)
        local FT = FR_1 and typeof(FS_1) == "table" and FS_1.Ok == true
        return FT
    end
end
local function fn713(mD)
    xW(State.ToyBuyRarities, mD, yd)
end
local function fn715(lh)
    State.AutoUpgradeLuck = lh == true
    xb("Luck", wY, function()
        x3()
    end)
end
local function fn725()
    local CK = {}
    if w7(State.StealZones) then
        for i, v in ipairs(xV) do
            if xm[v] then
                table.insert(CK, v)
            end
        end
        return CK
    end
    for i, v in ipairs(xV) do
        if State.StealZones[v] == true and xm[v] then
            table.insert(CK, v)
        end
    end
    return CK
end
local function fn726()
    return not xh.Unloaded
end
local function fn772()
    local Ft_1
    local Fr = xg()
    local Fr_1
    if #Fr == 0 then
        return false
    end
    local Fs = Fr[1]
    Fr_1, Ft_1 = pcall(Network.Invoke, AnomalyConfig.FeedInvokeName, Fs.id)
    return Fr_1 and Ft_1 == true
end
local function fn795()
    local Character = LocalPlayer.Character
    if not Character then
        return nil
    end
    local Tool = Character:FindFirstChildWhichIsA("Tool")
    if xq(Tool) then
        return Tool
    end
    return nil
end
local function fn838(bC, bD)
    local z7 = if w7(bD) then 1 else 0
    if z7 == 1 then
        return true
    end
    local z2 = bC
    local z3 = type(RarityConfig.Resolve) == "function" and typeof(bC) == "string"
    if z3 then
        local z3_1 = RarityConfig.Resolve(bC) or bC
        z2 = z3_1
    end
    local z3_2 = bD[z2] == true or bD[tostring(bC)] == true
    return z3_2
end
local function fn845(ew)
    if not ew then
        return nil
    end
    local BJ = ew:FindFirstChild(xZ.StealPromptName, true)
    local BK = BJ and BJ:IsA("ProximityPrompt")
    if BK then
        return BJ
    end
    for i, descendant in ipairs(ew:GetDescendants()) do
        local BJ_1 = (descendant:IsA("ProximityPrompt"))
        if BJ_1 then
            BJ_1 = descendant.Name == xZ.StealPromptName or descendant.ActionText == xZ.StealPromptActionText
        end
        if BJ_1 then
            return descendant
        end
    end
    return nil
end
local function fn853(mH)
    local Gn = tonumber(mH)
    local Go = Gn and math.max(0, Gn)
    local Gn_1 = Go or 0
    State.ToyMaxPrice = Gn_1
end
local function fn860()
    local Fb = {}
    local Fc = ys:FindFirstChild(AnomalyConfig.AnomaliesFolderName)
    if not Fc then
        return Fb
    end
    for i, child in ipairs(Fc:GetChildren()) do
        local Fc_1 = child:IsA("Model") and child:GetAttribute("OwnerUserId") == LocalPlayer.UserId
        if Fc_1 then
            local attr3 = child:GetAttribute(AnomalyConfig.StageAttribute)
            local attr2 = child:GetAttribute("CreatureId")
            local Fe = child:GetAttribute(AnomalyConfig.RarityAttribute) or child:GetAttribute("Rarity")
            local attr = child:GetAttribute(AnomalyConfig.LevelAttribute)
            local Fg = AnomalyEvolution.IsPet(attr3) and typeof(attr2) == "string"
            if Fg then
                local Fc_3 = not AnomalyEvolution.IsMaxed(attr) and xM(Fe, State.FeedRarities)
                if Fc_3 then
                    local insert = table.insert
                    local Ff_1 = typeof(attr) == "number" and attr
                    local Fe_2 = Ff_1 or 0
                    insert(Fb, { id = attr2, level = Fe_2, model = child })
                end
            end
        end
    end
    table.sort(Fb, function(jl, jm)
        return jl.level < jm.level
    end)
    return Fb
end
local function fn863()
    local EC = xR()
    if not EC then
        return false
    end
    local ED = PlotLookup.GetInteractionRoot and PlotLookup.GetInteractionRoot(EC, PlotConfig.TreadmillName)
    local EC_1 = ED
    if ED then
        ED = EC_1:IsA("BasePart")
    end
    if not ED then
        return false
    end
    local ED_1 = wM()
    local EE = x8()
    local EF = not EE
    local EG = not ED_1
    local EK = if EG then 1 else 0
    local EI = 2601 * EK + 952 * (1 - EK)
    local EJ = 2406 * EK + 2578 * (1 - EK)
    if not ((EI * 457 + EJ * 4087 + EI * EJ) % 16777213 == 502772) then
        EG = EF
    end
    if EG then
        return false
    end
    local ED_2 = EC_1.Position + EC_1.CFrame.LookVector * 0.5 + Vector3.new(0, 3, 0)
    xT(ED_2, EC_1.Position + EC_1.CFrame.LookVector)
    local max = math.max
    local WalkSpeed = EE.WalkSpeed
    local EF_1 = SpeedConfig.StartWalkSpeed or 32
    EE.WalkSpeed = max(WalkSpeed, EF_1)
    EE:Move(Vector3.new(0, 0, -1), true)
    local EC_3 = LocalPlayer:GetAttribute(SpeedConfig.OnTreadmillAttribute) == true or LocalPlayer:GetAttribute(SpeedConfig.TouchingTreadmillAttribute) == true
    return EC_3
end
local function fn945(cU)
    local AQ = cU ~= nil and cU:IsA("Tool") and cU:GetAttribute(AnomalyConfig.EggToolAttribute) == true
    return AQ
end
local function fn952(mr)
    State.AutoRollToys = mr == true
    xb("Roll", yq, function()
        x4()
    end)
end
local function fn1006(b_, b0)
    local Ai = wM()
    local Aj = not Ai or typeof(b_) ~= "Vector3"
    if Aj then
        return false
    end
    local Aj_1 = nil
    if typeof(b0) == "Vector3" then
        Aj_1 = Vector3.new(b0.X - b_.X, 0, b0.Z - b_.Z)
    end
    if not Aj_1 or Aj_1.Magnitude < 0.05 then
        local Ak_1 = Vector3.new(Ai.CFrame.LookVector.X, 0, Ai.CFrame.LookVector.Z)
        if Ak_1.Magnitude >= 0.05 then
            Aj_1 = Ak_1
        else
            Aj_1 = Vector3.new(0, 0, -1)
        end
    end
    Ai.CFrame = CFrame.new(b_, b_ + Aj_1.Unit)
    Ai.AssemblyLinearVelocity = Vector3.zero
    Ai.AssemblyAngularVelocity = Vector3.zero
    return true
end
local function fn1007()
    return CoreGui
end
local function fn1028(dP, dQ)
    local Bs = not dP or typeof(dQ) ~= "Vector3"
    if Bs then
        return false
    end
    local Bw = 1
    while Bw <= 6 do
        if not wV() then
            return false
        end
        xT(dQ + Vector3.new(0, 4, 0), dQ + Vector3.new(1, 0, 0))
        task.wait(0.12)
        local Bs_1 = not PlotLookup.IsPlayerNearPlot or PlotLookup.IsPlayerNearPlot(LocalPlayer, dP)
        if Bs_1 then
            return true
        end
        Bw += 1
    end
    local Bs_2 = not PlotLookup.IsPlayerNearPlot or PlotLookup.IsPlayerNearPlot(LocalPlayer, dP)
    return Bs_2
end
local function fn1041(bb, bc, bd)
    table.clear(bb)
    if type(bc) ~= "table" then
        return
    end
    if bc[1] ~= nil then
        for i, v in ipairs(bc) do
            local zF_1 = bd[v] or bd[tostring(v)]
            if zF_1 then
                bb[v] = true
            end
        end
        return
    end
    for k, v in pairs(bc) do
        local zF_2 = v
        if zF_2 then
            local zG = bd[k] or bd[tostring(k)]
            zF_2 = zG
        end
        if zF_2 then
            bb[k] = true
        end
    end
end
local function fn1062(l0)
    if typeof(l0) == "string" then
        for i, v in ipairs(x0) do
            if v == l0 then
                State.SellKind = l0
                return
            end
        end
    end
end
local function fn1068()
    local Ev = xe()
    local Ev_4
    local Ew = Ev and Ev.LabCapacity
    local Ew_3
    local Ew_1 = Ew or LabCapacityConfig.DefaultCapacity
    local Ev_2 = LabCapacityConfig.GetNextSlotPrice and LabCapacityConfig.GetNextSlotPrice(Ew_1)
    local Ev_3 = typeof(Ev_2) == "number" and w_() < Ev_2
    if Ev_3 then
        return false
    end
    Ev_4, Ew_3 = pcall(Network.Invoke, LabCapacityConfig.PurchaseInvokeName)
    local Ex = Ev_4 and typeof(Ew_3) == "table" and Ew_3.Ok == true
    return Ex
end
local function fn1081()
    local Character = LocalPlayer.Character
    if not Character then
        return false
    end
    local A9 = xC()
    local Ba = Character:FindFirstChild(A9)
    local A9_1 = Ba and Ba.Parent == Character and not Ba:IsA("Tool")
    if A9_1 then
        return true
    end
    for i, child in ipairs(Character:GetChildren()) do
        if not xq(child) then
            if child:GetAttribute("CarriedByUserId") == LocalPlayer.UserId then
                return true
            end
            local A8_1 = typeof(child.Name) == "string" and child.Name:find(xZ.CarriedEggPrefix, 1, true) == 1
            if A8_1 then
                return true
            end
        end
    end
    return false
end
local function fn1092(mn)
    xW(State.FeedRarities, mn, yj)
end
local function fn1108()
    local Eb = xe()
    local Eb_4
    local Ec = Eb and Eb.Luck
    local Ec_3
    local Eb_1 = Ec
    local Eh = if Eb_1 then 1 else 0
    local Ef = 2660 * Eh + 2770 * (1 - Eh)
    local Eg = 20 * Eh + 3733 * (1 - Eh)
    if not ((Ef * 816 + Eg * 2622 + Ef * Eg) % 16777213 == 2276200) then
        Eb_1 = LuckUpgradeConfig.DefaultLuck
    end
    local Ec_1 = Eb_1
    local Eb_2 = LuckUpgradeConfig.GetNextLevelPrice and LuckUpgradeConfig.GetNextLevelPrice(Ec_1)
    local Eb_3 = typeof(Eb_2) == "number" and w_() < Eb_2
    if Eb_3 then
        return false
    end
    Eb_4, Ec_3 = pcall(Network.Invoke, LuckUpgradeConfig.PurchaseInvokeName)
    local Ed = Eb_4 and typeof(Ec_3) == "table" and Ec_3.Ok == true
    return Ed
end
local function fn1113()
    local z8 = Shared.Get(LocalPlayer.UserId)
    if typeof(z8) == "table" then
        return z8
    end
    return nil
end
local function fn1148(ln)
    State.AutoUpgradeTreadmill = ln == true
    xb("TreadUpgrade", wY, function()
        w4()
    end)
end
local function fn1176()
    local Eo = xe()
    local Eo_4
    local Ep = Eo and Eo.TreadmillLevel
    local Ep_3
    local Eo_1 = Ep
    local Eu = if Eo_1 then 1 else 0
    local Es = 1754 * Eu + 1786 * (1 - Eu)
    local Et = 88 * Eu + 268 * (1 - Eu)
    if not ((Es * 1661 + Et * 394 + Es * Et) % 16777213 == 3102418) then
        Eo_1 = TreadmillUpgradeConfig.DefaultLevel
    end
    local Ep_1 = Eo_1
    local Eo_2 = TreadmillUpgradeConfig.GetNextLevelPrice and TreadmillUpgradeConfig.GetNextLevelPrice(Ep_1)
    local Eo_3 = typeof(Eo_2) == "number" and w_() < Eo_2
    if Eo_3 then
        return false
    end
    Eo_4, Ep_3 = pcall(Network.Invoke, TreadmillUpgradeConfig.PurchaseInvokeName)
    local Eq = Eo_4 and typeof(Ep_3) == "table" and Ep_3.Ok == true
    return Eq
end
local function fn1216(kR)
    xW(State.StealZones, kR, yr)
end
local function fn1221()
    local FK = xe()
    local FL = FK and FK.PendingToyOffer
    if typeof(FL) ~= "table" then
        return false, nil
    end
    local ToyId = FL.ToyId
    if typeof(ToyId) ~= "string" then
        return false, nil
    end
    local FK_2 = ToyConfig.GetToy and ToyConfig.GetToy(ToyId)
    if type(FK_2) ~= "table" then
        return false, nil
    elseif not xM(FK_2.Rarity, State.ToyBuyRarities) then
        return false, nil
    else
        local FK_3 = typeof(FK_2.Price) == "number" and FK_2.Price
        local FM_1 = FK_3 or 0
        if State.ToyMaxPrice > 0 and FM_1 > State.ToyMaxPrice then
            return false, nil
        elseif w_() < FM_1 then
            return false, nil
        else
            return true, ToyId
        end
    end
end
local function fn1228(kZ)
    State.AutoPlaceEggs = kZ == true
    xb("Place", w5, function()
        if xa() then
            return
        end
        local F9 = w9() or wS()
        if F9 then
            xw()
        end
    end)
end
local function fn1257(dG)
    local Bp_1
    if not dG then
        return nil
    end
    local Bo = PlotLookup.GetUnlockedPlaceAreas and PlotLookup.GetUnlockedPlaceAreas(dG)
    local Bo_1 = type(Bo) == "table" and #Bo > 0
    if Bo_1 then
        Bp_1 = Bo[1]
    else
        local Bo_2 = PlotLookup.GetEggsPlaceArea and PlotLookup.GetEggsPlaceArea(dG)
        Bp_1 = Bo_2
    end
    if not Bp_1 then
        return nil
    elseif PlotLookup.GetPadOriginForArea then
        local Bo_3 = PlotLookup.GetPadOriginForArea(Bp_1)
        if typeof(Bo_3) == "Vector3" then
            return Bo_3
        elseif Bp_1:IsA("BasePart") then
            if PlotLookup.GetPointOnPadTop then
                return PlotLookup.GetPointOnPadTop(Bp_1, Bp_1.Position)
            end
            return Bp_1.Position + Vector3.new(0, 3, 0)
        else
            return nil
        end
    elseif Bp_1:IsA("BasePart") then
        if PlotLookup.GetPointOnPadTop then
            return PlotLookup.GetPointOnPadTop(Bp_1, Bp_1.Position)
        end
        return Bp_1.Position + Vector3.new(0, 3, 0)
    else
        return nil
    end
end
local function fn1266()
    local Character = LocalPlayer.Character
    if not Character then
        return nil
    end
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    local Ad_1 = HumanoidRootPart and HumanoidRootPart:IsA("BasePart")
    if Ad_1 then
        return HumanoidRootPart
    end
    return nil
end
local function fn1288(kV)
    xW(State.StealRarities, kV, yn)
end
local function fn1301(lV)
    State.AutoSell = lV == true
    xb("Sell", yt, function()
        xN()
    end)
end
wM = nil
wN = nil
wO = nil
wP = nil
wQ = nil
wR = nil
wS = nil
wU = nil
wV = nil
wW = nil
wX = nil
wY = nil
wZ = nil
w_ = nil
w1 = nil
w2 = nil
w3 = nil
w4 = nil
w5 = nil
w7 = nil
w8 = nil
w9 = nil
xa = nil
xb = nil
xc = nil
xd = nil
xe = nil
xf = nil
xg = nil
xh = nil
xi = nil
SpeedConfig = nil
IndexRewardConfig = nil
xm = nil
xn = nil
xo = nil
ToyConfig = nil
xq = nil
SellShopConfig = nil
xt = nil
xv = nil
xw = nil
xx = nil
local Players, wT, w0, w6, xk, xr, xu
FoodShopConfig = nil
xz = nil
xA = nil
LabCapacityConfig = nil
xC = nil
xD = nil
LocalPlayer = nil
xF = nil
xG = nil
TreadmillUpgradeConfig = nil
xI = nil
LuckUpgradeConfig = nil
xL = nil
xM = nil
xN = nil
xP = nil
PlotLookup = nil
xR = nil
xT = nil
PlotConfig = nil
xV = nil
xW = nil
xX = nil
CoreGui = nil
xZ = nil
State = nil
x0 = nil
RarityConfig = nil
x3 = nil
x4 = nil
x5 = nil
x6 = nil
x8 = nil
x9 = nil
AnomalyEvolution = nil
yb = nil
yc = nil
yd = nil
AnomalyConfig = nil
yh = nil
yi = nil
yj = nil
local xJ, Lighting, TeleportService, GuiService, HttpService, VirtualUser, yg, UserInputService
Shared = nil
ym = nil
yn = nil
Network = nil
yq = nil
yr = nil
ys = nil
yt = nil
yu = nil
local RunService
RunService = nil
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, LocalPlayer, xv = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
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
local J1_19 = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local J1_9 = "OuroborosRaiseAnomaly"
xv = fn1007
if getgenv then
    getgenv().gethui = xv
end
xh, ys, Network, Shared, AnomalyConfig, AnomalyEvolution, RarityConfig, xZ, PlotConfig, PlotLookup, LuckUpgradeConfig, TreadmillUpgradeConfig, LabCapacityConfig, FoodShopConfig, SellShopConfig, ToyConfig, IndexRewardConfig, SpeedConfig, w8, w5, w2, wY, wW, wR, wP, yt, yq, ym, yg, yb, x5, State, xV, xJ, w0, wV = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn404)
local function J1_15(v)
    local zo
    local zq
    local zp
    zo = nil
    zp = nil
    zq = nil
    local zr = v ~= ""
    local zs = type(v) == "string" and zr
    assert(zs, "Atypical is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    zo = getgenv()
    assert(type(zo) == "table", "getgenv did not return a table")
    local zr_1 = zo[v]
    if zr_1 ~= nil then
        local zs_1 = type(zr_1) == "table" and type(zr_1.Unload) == "function"
        assert(zs_1, "Namespace is occupied")
        zr_1.Unload()
        assert(zo[v] == nil, "Previous instance did not release its namespace")
    end
    zp = {}
    zq = { State = {}, Unloaded = false }
    zq.Track = function(E)
        assert(type(E) == "function", "Cleanup must be callable")
        if zq.Unloaded then
            E()
        else
            table.insert(zp, E)
        end
        return E
    end
    zq.Unload = function()
        local ze_1
        local zd_1
        if zq.Unloaded then
            return
        end
        zq.Unloaded = true
        local zb = {}
        local zl = #zp
        local zk = -1
        while false and zl <= 1 or true and zl >= 1 do
            local zm = zl
            local zc_1 = table.remove(zp, zm)
            zd_1, ze_1 = pcall(zc_1)
            if not zd_1 then
                table.insert(zb, tostring(ze_1))
            end
            zl += zk
        end
        table.clear(zq.State)
        if #zb > 0 then
            error("Cleanup incomplete: " .. table.concat(zb, "; "), 0)
        end
        if zo[v] == zq then
            zo[v] = nil
        end
    end
    zo[v] = zq
    return zq
end
xJ = function(R, S)
    local zv = type(R) == "table" and type(R.Track) == "function"
    assert(zv, "FeatureAPI required")
    local zv_1 = type(S) == "table" and type(S.OnUnload) == "function"
    assert(zv_1, "UI library required")
    assert(type(S.Unload) == "function", "UI unload required")
    R.Track(function()
        if not S.Unloaded then
            S:Unload()
        end
    end)
    S:OnUnload(function()
        R.Unload()
    end)
end
xh = J1_15(J1_9)
w0 = fn684
wV = fn726
local J1_26 = fns.fn294(ReplicatedStorage)
ys = fns.fn294(J1_19)
Network = require(J1_26.Network.Network)
Shared = require(J1_26.Data.PlayerData.Shared)
AnomalyConfig = require(J1_26.Config.Creature.AnomalyConfig)
AnomalyEvolution = require(J1_26.Config.Creature.AnomalyEvolution)
RarityConfig = require(J1_26.Config.Creature.RarityConfig)
xZ = require(J1_26.Config.World.StageConfig)
PlotConfig = require(J1_26.Config.World.PlotConfig)
PlotLookup = require(J1_26.Config.World.PlotLookup)
LuckUpgradeConfig = require(J1_26.Config.Shop.LuckUpgradeConfig)
TreadmillUpgradeConfig = require(J1_26.Config.Shop.TreadmillUpgradeConfig)
LabCapacityConfig = require(J1_26.Config.Shop.LabCapacityConfig)
FoodShopConfig = require(J1_26.Config.Shop.FoodShopConfig)
SellShopConfig = require(J1_26.Config.Shop.SellShopConfig)
ToyConfig = require(J1_26.Config.Shop.ToyConfig)
IndexRewardConfig = require(J1_26.Config.Creature.IndexRewardConfig)
SpeedConfig = require(J1_26.Config.Character.SpeedConfig)
w8 = 0.35
w5 = 0.55
w2 = 0.45
wY = 0.7
wW = 0.8
wR = 0.12
wP = 0.55
yt = 1.1
yq = 1
ym = 0.35
yg = 0.2
yb = 3
x5 = 2.5
State = xh.State
State.AutoSteal = false
State.AutoPlaceEggs = false
State.AutoHatchEggs = false
State.AutoUpgradeLuck = false
State.AutoUpgradeTreadmill = false
State.AutoTreadmill = false
State.AutoUpgradePlot = false
State.AutoCollectMoney = false
State.AutoBuyFood = false
State.AutoSell = false
State.AutoClaimIndex = false
State.AutoEquipBest = false
State.AutoFeed = false
State.AutoRollToys = false
State.AutoBuyToys = false
State.StealZones = {}
State.StealRarities = {}
State.FeedRarities = {}
State.ToyBuyRarities = {}
State.BuyFoodId = "Cheeseburger"
State.SellKind = "All"
State.ToyMaxPrice = 0
State.Busy = false
State.StealZoneCursor = 0
xV = {}
J1_26 = (ys:FindFirstChild("Map"))
if J1_26 then
    J1_9 = 5
    repeat
        J1_19 = {
            "wgkezbiptkvg",
            "eylzcipvbjb",
            "rehhrtyaom",
            "rsjtflwzhler",
            "sgwrgcpzue",
            "fvwkcxiwzyb",
            "ovfyuy",
            "swsumt",
            "ryzvmmdf",
            "rvjbff",
            "yicbkllmvckn",
            "btlpnvxfl"
        }
        if J1_19[(J1_9 * 96 + 18) % 12 + 1] < J1_19[(J1_9 * 96 + 18) % 12 + 1] then
            xZ = J1_26.Map:FindFirstChild(ys.StagesFolderName)
        else
            J1_26 = ys.Map:FindFirstChild(xZ.StagesFolderName)
        end
        J1_9 = (J1_9 + 4) % 8
    until (J1_9 * 1 + 1) % 8 == 2
end
J1_19 = J1_26
if J1_19 then
    for i, child in ipairs(J1_19:GetChildren()) do
        if child.Name:match("^Stage%d+$") then
            table.insert(xV, child.Name)
        end
    end
end
J1_26 = 6
repeat
    local LO = bit32.rrotate(bit32.bxor(bit32.lrotate(J1_26, 12), string.byte(tostring(J1_26))), 25)
    if bit32.bxor(bit32.lrotate(bit32.bxor(LO, 2490039957), 24), 2509531902) ~= bit32.lrotate(LO, 24) then
        table.sort(xV, fn549)
    else
        table.sort(xV, fn549)
    end
    J1_26 = (J1_26 + 0) % 8
until (J1_26 * 5 + 5) % 8 == 3
if #xV == 0 then
    local J1_2 = 0
    while J1_2 <= 10 do
        local J1_11 = J1_2
        table.insert(xV, "Stage" .. tostring(J1_11))
        J1_2 += 1
    end
end
xm, xk = nil, nil
do
    xm = {
        Stage0 = Vector3.new(464, 12, 89),
        Stage1 = Vector3.new(259, 12, 90),
        Stage2 = Vector3.new(-7, 12, 86),
        Stage3 = Vector3.new(-449, 14, 92),
        Stage4 = Vector3.new(-927, 16, 96),
        Stage5 = Vector3.new(-1578, 34, 83),
        Stage6 = Vector3.new(-2404, 28, 150),
        Stage7 = Vector3.new(-3277, 48, 87),
        Stage8 = Vector3.new(-4160, 26, 69),
        Stage9 = Vector3.new(-5455, 54, 106),
        Stage10 = Vector3.new(-6530, 14, 67)
    }
end
xk = {}
J1_26 = {}
J1_9 = RarityConfig.OrderedRarities
local yW = if J1_9 then 1 else 0
local yU = 1834 * yW + 109 * (1 - yW)
local yV = 2794 * yW + 20 * (1 - yW)
if not ((yU * 4012 + yV * 3600 + yU * yV) % 16777213 == 5763391) then
    J1_9 = J1_26
end
for i, v in ipairs(J1_9) do
    table.insert(xk, v)
end
if #xk == 0 then
    J1_26 = 4
    repeat
        J1_9 = { "nfy", "ezledxz", "ggl", "xoq", "iwvi", "khgtpue", "gillwk", "tlezo", "jclugr", "dklbz" }
        local KK = J1_26
        J1_19 = J1_9[KK % 10 + 1]
        if J1_19:len() <= J1_19:gsub("(.)", "%1%1", KK % 3 % 2 + 1):len() then
            xk = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythical", "Secret" }
        else
            xk = { "Mythical", "Secret", "Rare", "Epic", "Legendary", "Common", "Uncommon" }
        end
        J1_26 = (J1_26 + 5) % 8
    until (J1_26 * 3 + 2) % 8 == 5
end
w6 = {}
J1_26 = {}
if type(ToyConfig.RarityOdds) == "table" then
    for k in pairs(ToyConfig.RarityOdds) do
        J1_26[tostring(k)] = true
    end
end
for k in pairs(J1_26) do
    table.insert(w6, k)
end
table.sort(w6)
if #w6 == 0 then
    J1_26 = 1
    repeat
        J1_9 = {
            "xeyo",
            "nrxh",
            "vmmj",
            "bjorxlrkj",
            "bzjtnqlfd",
            "kgh",
            "fbyxaydp",
            "yxoep",
            "eljyudocm",
            "fyzrq",
            "gbiseuudhee"
        }
        local KI = J1_26
        J1_19 = J1_9[KI % 11 + 1]
        if J1_19:len() <= J1_19:reverse():rep(KI % 3 + 2):len() then
            w6 = {
                "Common",
                "Uncommon",
                "Rare",
                "Epic",
                "Legendary",
                "Mythical",
                "Secret",
                "Silver",
                "Gold",
                "Rainbow"
            }
        else
            w6 = {
                "Silver",
                "Epic",
                "Uncommon",
                "Common",
                "Rare",
                "Mythical",
                "Rainbow",
                "Gold",
                "Secret",
                "Legendary"
            }
        end
        J1_26 = (J1_26 + 0) % 4
    until (J1_26 * 3 + 1) % 4 == 0
end
wQ = {}
wT = {}
J1_26 = {}
J1_9 = FoodShopConfig.FoodOrder or J1_26
for i, v in ipairs(J1_9) do
    J1_26 = FoodShopConfig.GetFood and FoodShopConfig.GetFood(v)
    J1_9 = v
    J1_19 = J1_26
    if type(J1_19) == "table" then
        J1_26 = J1_19.DisplayName or J1_19.Name
        J1_19 = J1_26 or v
        J1_9 = J1_19
    end
    table.insert(wT, v)
    wQ[v] = J1_9
end
if #wT == 0 then
    J1_26 = 11
    repeat
        J1_9 = (J1_26 * 1 + 0) % 2 + 1
        if J1_9 <= 1 then
            if ((J1_26 or not J1_26) and (not J1_26 or J1_26) or (not J1_26 or J1_26 or (J1_26 or not J1_26))) and ((not J1_26 or J1_26) and (not J1_26 and not J1_26) and ((not J1_26 or not J1_26) and (not J1_26 or not J1_26))) and not (((J1_26 or not J1_26) and (not J1_26 or J1_26) or (not J1_26 or J1_26 or (J1_26 or not J1_26))) and ((not J1_26 or J1_26) and (not J1_26 and not J1_26) and ((not J1_26 or not J1_26) and (not J1_26 or not J1_26)))) then
                wQ.Cheeseburger = "Cheeseburger"
            else
                wQ.Cheeseburger = "Cheeseburger"
            end
            J1_26 = (J1_26 + 13) % 16
        else
            if J1_26 * 98391211 + 9 + 6 <= J1_26 * 98391211 + 9 + 6 + 3 then
                wT = { "Cheeseburger" }
            else
                wT = { "Cheeseburger" }
            end
            J1_26 = (J1_26 + 7) % 16
        end
    until (J1_26 * 13 + 4) % 16 == 7
end
x0, yr, yn, yj, yd, xu, J1_5, xW, w7, x6, xM, xe, w_, wM, x8, xT, xf, xA, xR, xC, xq, w9, wS, yc, xa, xz, wZ, xX, xn, wO, xG, w1, xD, xc, yi, xL, wU, xP, wX, xw, xo, x9, xi, x3, w4, xI, yu, xd, xN, wN, xF, xg, xx, w3, x4, xt, yh, xr, xb = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
x0 = { "One", "Anomalies", "Food", "Toys", "All" }
xW = fn1041
w7 = fns.fn92
J1_19 = fns.fn52
yr = J1_19(xV)
yn = J1_19(xk)
yj = J1_19(xk)
yd = J1_19(w6)
if ((not yd or yd) and (xc and xc) or (xg or xc) and (not xg and not xc)) and (not yd and yd and (not xc or not xg) or (yd or not xg) and (xc and yd)) and not (((not yd or yd) and (xc and xc) or (xg or xc) and (not xg and not xc)) and (not yd and yd and (not xc or not xg) or (yd or not xg) and (xc and yd))) then
    w_ = fn669
    xe = fn838
    x6 = fn1113
    xM = fns.fn266
else
    x6 = fn669
    xM = fn838
    xe = fn1113
    w_ = fns.fn266
end
wM = fn1266
x8 = fns.fn113
xT = fn1006
xf = function(b8)
    local HoldDuration
    local MaxActivationDistance
    local RequiresLineOfSight
    HoldDuration = nil
    RequiresLineOfSight = nil
    MaxActivationDistance = nil
    local As = not b8 or not b8:IsA("ProximityPrompt")
    local Ay = if As then 1 else 0
    local Aw = 834 * Ay + 161 * (1 - Ay)
    local Ax = 1508 * Ay + 2371 * (1 - Ay)
    if not ((Aw * 3631 + Ax * 2139 + Aw * Ax) % 16777213 == 7511538) then
        As = b8.Parent == nil
    end
    if As then
        return false
    end
    local As_1 = typeof(b8.HoldDuration) == "number" and b8.HoldDuration
    local At = As_1 or 0
    HoldDuration = b8.HoldDuration
    MaxActivationDistance = b8.MaxActivationDistance
    RequiresLineOfSight = b8.RequiresLineOfSight
    pcall(function()
        b8.HoldDuration = 0
        local An = MaxActivationDistance or 10
        b8.MaxActivationDistance = math.max(An, 25)
        b8.RequiresLineOfSight = false
    end)
    local At_1 = false
    if w0(fireproximityprompt) then
        At_1 = pcall(fireproximityprompt, b8)
    end
    if not At_1 then
        local Au = pcall(function()
            b8:InputHoldBegin()
        end)
        if Au then
            task.wait(math.max(At, 0.05) + yg)
            pcall(function()
                b8:InputHoldEnd()
            end)
            At_1 = true
        end
    else
        task.wait(0.05)
    end
    pcall(function()
        b8.HoldDuration = HoldDuration
        b8.MaxActivationDistance = MaxActivationDistance
        b8.RequiresLineOfSight = RequiresLineOfSight
    end)
    return At_1
end
xA = function(cs)
    local RequiresLineOfSight
    local MaxActivationDistance
    local HoldDuration
    local AI = not cs or not cs:IsA("ProximityPrompt") or cs.Parent == nil
    if AI then
        return false
    elseif cs.Enabled == false then
        return false
    else
        local AI_1 = typeof(cs.HoldDuration) == "number" and math.max(cs.HoldDuration, 0)
        local AJ = AI_1 or 0
        HoldDuration = cs.HoldDuration
        MaxActivationDistance = cs.MaxActivationDistance
        RequiresLineOfSight = cs.RequiresLineOfSight
        pcall(function()
            local AA = MaxActivationDistance
            local AE = if AA then 1 else 0
            local AC = 606 * AE + 2889 * (1 - AE)
            local AD = 689 * AE + 1052 * (1 - AE)
            if not ((AC * 1232 + AD * 92 + AC * AD) % 16777213 == 1227514) then
                AA = 10
            end
            cs.MaxActivationDistance = math.max(AA, 25)
            cs.RequiresLineOfSight = false
        end)
        local AJ_1 = false
        local AK = AJ <= 0 and w0(fireproximityprompt)
        if AK then
            AJ_1 = pcall(fireproximityprompt, cs)
        else
            local AK_1 = pcall(function()
                cs:InputHoldBegin()
            end)
            if AK_1 then
                task.wait(AJ + yg)
                pcall(function()
                    cs:InputHoldEnd()
                end)
                AJ_1 = true
            elseif w0(fireproximityprompt) then
                pcall(function()
                    cs.HoldDuration = 0
                end)
                AJ_1 = pcall(fireproximityprompt, cs)
            end
        end
        pcall(function()
            cs.HoldDuration = HoldDuration
            cs.MaxActivationDistance = MaxActivationDistance
            cs.RequiresLineOfSight = RequiresLineOfSight
        end)
        return AJ_1
    end
end
xR = fns.fn278
xC = fns.fn175
xq = fn945
w9 = fn795
wS = fn523
yc = function()
    local A3
    local A2
    A2 = nil
    A3 = nil
    local A4 = w9()
    if A4 then
        return A4
    end
    A3 = wS()
    if not A3 then
        return nil
    end
    A2 = x8()
    if not A2 then
        return nil
    end
    local A5 = pcall(function()
        A2:EquipTool(A3)
    end)
    if not A5 then
        return nil
    end
    local A5_1 = os.clock() + 1.5
    while true do
        local A6 = wV() and os.clock() < A5_1
        if not A6 then
            return w9()
        end
        A4 = w9()
        if A4 then
            break
        end
        task.wait(0.05)
    end
    return A4
end
xa = fn1081
xz = fn1257
wZ = fn1028
xX = fns.fn380
xn = fn845
wO = fns.fn204
if (yi and not xC and (not xt or yi) and ((xC or not yi) and (not wX and yi)) or ((yi or not xF) and (not xC and wX) or (wX or yi or (xC or yi))) or ((yi or not xF) and (yi and not xt) and (not yi and yi or not wX and not wX) or (xt and yi or not yi and xC) and ((yi or xF) and (not xF and xF)))) and not (yi and not xC and (not xt or yi) and ((xC or not yi) and (not wX and yi)) or ((yi or not xF) and (not xC and wX) or (wX or yi or (xC or yi))) or ((yi or not xF) and (yi and not xt) and (not yi and yi or not wX and not wX) or (xt and yi or not yi and xC) and ((yi or xF) and (not xF and xF)))) then
    w1 = fn659
    xG = fns.fn333
else
    xG = fn659
    w1 = fns.fn333
end
xD = fns.fn375
xc = fn725
yi = fn393
xL = fn655
wU = fns.fn68
xP = fn595
wX = fns.fn154
xw = fn614
xo = fns.fn382
x9 = fns.fn150
if w9 and (w3 and false) or (xe or not x9) and (xe or not x9) or w9 and not xW and (xW and not xe) and ((not x9 or 97) and (not w3 or w3)) or not (w9 and (w3 and false) or (xe or not x9) and (xe or not x9) or w9 and not xW and (xW and not xe) and ((not x9 or 97) and (not w3 or w3))) then
    xi = fns.fn270
    x3 = fn1108
else
    x3 = fns.fn270
    xi = fn1108
end
w4 = fn1176
xI = fn1068
yu = fn863
xd = fns.fn372
xN = fns.fn74
wN = fn637
xF = fns.fn181
xg = fn860
xx = fn772
w3 = fn430
x4 = fns.fn3
xt = fn1221
yh = fn705
xu = {
    Steal = 0,
    Place = 0,
    Hatch = 0,
    Luck = 0,
    TreadUpgrade = 0,
    Treadmill = 0,
    Plot = 0,
    Collect = 0,
    BuyFood = 0,
    Sell = 0,
    Index = 0,
    Equip = 0,
    Feed = 0,
    Roll = 0,
    BuyToy = 0
}
xr = fn516
xb = function(kg, kh, ki)
    local FY, FZ
    xu[kg] += 1
    FY = xr(kg)
    if not (FY and State[FY]) then
        return
    end
    FZ = xu[kg]
    task.spawn(function()
        local FW_1
        while true do
            local FV = wV() and xu[kg] == FZ and State[FY]
            local FV_1
            if FV then
                if not State.Busy then
                    State.Busy = true
                    FV_1, FW_1 = pcall(ki)
                    State.Busy = false
                    if not FV_1 then
                        warn("[OuroborosRaiseAnomaly]", kg, FW_1)
                    end
                end
                local FV_2 = not wV() or xu[kg] ~= FZ or not State[FY]
                if FV_2 then
                    break
                end
                task.wait(kh)
                continue
            end
            break
        end
    end)
end
xh.SetAutoSteal = fns.fn48
xh.SetStealZones = fn1216
xh.SetStealRarities = fn1288
xh.SetAutoPlaceEggs = fn1228
xh.SetAutoHatchEggs = fns.fn383
xh.SetAutoUpgradeLuck = fn715
xh.SetAutoUpgradeTreadmill = fn1148
xh.SetAutoTreadmill = fn675
xh.SetAutoUpgradePlot = fns.fn208
xh.SetAutoCollectMoney = fns.fn293
xh.SetAutoBuyFood = fns.fn134
xh.SetBuyFoodId = fns.fn229
xh.SetAutoSell = fn1301
xh.SetSellKind = fn1062
xh.SetAutoClaimIndex = fns.fn164
xh.SetAutoEquipBest = fn498
xh.SetAutoFeed = fns.fn222
xh.SetFeedRarities = fn1092
xh.SetAutoRollToys = fn952
xh.SetAutoBuyToys = fn621
xh.SetToyBuyRarities = fn713
xh.SetToyMaxPrice = fn853
xh.Meta = {
    ZoneNames = xV,
    EggRarities = xk,
    ToyRarities = w6,
    FoodOptions = wT,
    FoodLabels = wQ,
    SellKinds = x0
}
J1_9 = function()
    local Library
    local Jz
    Jz = nil
    Library = nil
    local Options, Jw, Jx, SaveManager, JA, JC, Toggles, JE, JF
    JF = "Raise an Anomaly"
    Jw = "https://ouroboros-hub-rbx.web.app/"
    Jz = "https://discord.gg/synapsex"
    JE = "https://rscripts.net/@Ouroboros"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles, Options = Library.Toggles, Library.Options
    xJ(xh, Library)
    Jx = function(m_, m0)
        local Gq
        if type(setclipboard) == "function" then
            Gq = setclipboard
        elseif type(toclipboard) == "function" then
            Gq = toclipboard
        end
        if not Gq then
            Library:Notify("Clipboard unavailable")
            return
        end
        local Gr = pcall(Gq, tostring(m_))
        if Gr then
            local Gq_1 = m0 or "Copied"
            Library:Notify(Gq_1)
        else
            Library:Notify("Clipboard copy failed")
        end
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = Jz, Copyable = true }, "|", JF, "|", "v0.7" },
        Icon = 132608042600488,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    JC = {}
    JC.Info = Window:AddTab("Info", "info")
    JC.Main = Window:AddTab("Main", "gamepad-2")
    JC.Player = Window:AddTab("Player", "person-standing")
    JC.Settings = Window:AddTab("Settings", "settings")
    local function JG_1(m6)
        local DiscordGroup = m6:AddLeftGroupbox("Discord", "message-circle")
        DiscordGroup:AddDiscordBox(nil, {
            Banner = 95892854151512,
            Avatar = 132608042600488,
            Title = "Ouroboros Hub",
            Subtitle = "Dupes, keyless scripts and updates",
            Status = "online",
            Accent = Color3.fromRGB(88, 101, 242),
            Link = Jz,
            Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
        })
        return DiscordGroup
    end
    for k, v in pairs(JC) do
        if k ~= "Info" then
            JG_1(v)
        end
    end
    local JG_2 = { name = "getgenv", ok = w0(getgenv) }
    local JH = { name = "HttpGet", ok = w0(game.HttpGet) }
    local JJ = w0(fireproximityprompt)
    local JK = {}
    local JJ_1 = { JG_2, JH, { name = "fireproximityprompt", ok = JJ } }
    for i, v in ipairs(JJ_1) do
        if not v.ok then
            table.insert(JK, v.name)
        end
    end
    local JG_3 = #JK == 0 and "(ready)"
    local JH_1 = JG_3 or "(missing " .. table.concat(JK, ", ") .. ")"
    JA = JH_1
    local function JG_4()
        local oD
        local nD
        local ny
        local function nj(nk)
            return (tostring(nk):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        local function nl(nm, nn)
            return string.format('<font color="%s">%s</font>', nn, nj(nm))
        end
        local function np(nq, nr, ns)
            return string.format("<b>%s</b> %s %s", nq, nl("-", "#5a6070"), nl(nr, ns))
        end
        local nw = "#e8a34d"
        local nv = "#6ec1ff"
        local nx = "#8b93a3"
        local nu = "#7fd47f"
        ny = "Unknown"
        pcall(function()
            local GA_1
            local Gz_1
            if type(identifyexecutor) == "function" then
                GA_1, Gz_1 = identifyexecutor()
                local GB = GA_1 ~= ""
                local GC = type(GA_1) == "string" and GB
                if GC then
                    local GB_1 = type(Gz_1) == "string" and Gz_1 ~= "" and GA_1 .. " " .. Gz_1
                    ny = GB_1 or GA_1
                end
            end
        end)
        nD = os.clock()
        local function nE()
            local GH = math.floor(os.clock() - nD)
            if GH < 60 then
                return GH .. "s"
            elseif GH < 3600 then
                return string.format("%dm %ds", GH // 60, GH % 60)
            else
                return string.format("%dh %dm", GH // 3600, GH % 3600 // 60)
            end
        end
        local UserGroup = JC.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(np("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, nu), true)
        UserGroup:AddLabel(np("UserId", tostring(LocalPlayer.UserId), nv), true)
        UserGroup:AddLabel(np("Executor", ny .. "  " .. JA, nu), true)
        UserGroup:AddDivider()
        local Label5 = UserGroup:AddLabel(np("Session", nE(), nw), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                Jx(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                Jx("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local DiscordGroup = JC.Info:AddRightGroupbox("Discord", "message-circle")
        DiscordGroup:AddDiscordBox(nil, {
            Banner = 95892854151512,
            Avatar = 132608042600488,
            Title = "Ouroboros Hub",
            Subtitle = "Dupes, keyless scripts and updates",
            Status = "online",
            Accent = Color3.fromRGB(88, 101, 242),
            Link = Jz,
            Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
        })
        local SessionGroup = JC.Info:AddRightGroupbox("Session", "signal")
        local Label4 = SessionGroup:AddLabel(np("Game", JF, nu), true)
        local Label3 = SessionGroup:AddLabel(np("Players", tostring(#Players:GetPlayers()), nv), true)
        local Label2 = SessionGroup:AddLabel(np("Job", string.sub(game.JobId, 1, 12) .. "...", nx), true)
        local Label = SessionGroup:AddLabel(np("Ping", "--", nw), true)
        SessionGroup:AddButton({
            Text = "Rejoin Place",
            Func = function()
                pcall(function()
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                end)
            end
        })
        SessionGroup:AddButton({
            Text = "Copy Job ID",
            Func = function()
                Jx(game.JobId, "Copied job id")
            end
        })
        local SocialsGroup = JC.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({
            Text = "Copy Discord",
            Func = function()
                Jx(Jz, "Copied discord")
            end
        })
        SocialsGroup:AddButton({
            Text = "Copy Rscripts",
            Func = function()
                Jx(JE, "Copied rscripts")
            end
        })
        SocialsGroup:AddButton({
            Text = "Copy Website",
            Func = function()
                Jx(Jw, "Copied website")
            end
        })
        oD = task.spawn(function()
            while true do
                local GJ = wV() and not Library.Unloaded
                if GJ then
                    Label5:SetText(np("Session", nE(), nw))
                    Label3:SetText(np("Players", tostring(#Players:GetPlayers()), nv))
                    Label4:SetText(np("Game", JF, nu))
                    Label2:SetText(np("Job", string.sub(game.JobId, 1, 12) .. "...", nx))
                    local GJ_1 = LocalPlayer:GetNetworkPing()
                    Label:SetText(np("Ping", string.format("%dms", math.floor(GJ_1 * 1000)), nw))
                    task.wait(1)
                    continue
                end
                break
            end
        end)
        xh.Track(function()
            if coroutine.status(oD) ~= "dead" then
                task.cancel(oD)
            end
        end)
    end
    JG_4()
    local function JG_5()
        local GP
        local StealGroup = JC.Main:AddLeftGroupbox("Steal", "swords")
        local EggsGroup = JC.Main:AddLeftGroupbox("Eggs", "egg")
        local PlotGroup = JC.Main:AddLeftGroupbox("Plot", "house")
        local ShopGroup = JC.Main:AddRightGroupbox("Shop", "shopping-cart")
        local PetsGroup = JC.Main:AddRightGroupbox("Pets", "paw-print")
        local ToysGroup = JC.Main:AddRightGroupbox("Toys", "toy-brick")
        StealGroup:AddToggle("AutoSteal", {
            Text = "Auto Steal",
            Default = false,
            Callback = function(oO)
                xh.SetAutoSteal(oO)
            end
        })
        StealGroup:AddDropdown("StealZones", {
            Text = "Zone Filter",
            Values = xV,
            Multi = true,
            Default = {},
            Callback = function(oT)
                xh.SetStealZones(oT)
            end
        })
        StealGroup:AddDropdown("StealRarities", {
            Text = "Rarity Filter",
            Values = xk,
            Multi = true,
            Default = {},
            Callback = function(oX)
                xh.SetStealRarities(oX)
            end
        })
        EggsGroup:AddToggle("AutoPlaceEggs", {
            Text = "Auto Place Eggs",
            Default = false,
            Callback = function(oZ)
                xh.SetAutoPlaceEggs(oZ)
            end
        })
        EggsGroup:AddToggle("AutoHatchEggs", {
            Text = "Auto Hatch Eggs",
            Default = false,
            Callback = function(o0)
                xh.SetAutoHatchEggs(o0)
            end
        })
        PlotGroup:AddToggle("AutoUpgradeLuck", {
            Text = "Auto Upgrade Luck",
            Default = false,
            Callback = function(o2)
                xh.SetAutoUpgradeLuck(o2)
            end
        })
        PlotGroup:AddToggle("AutoUpgradeTreadmill", {
            Text = "Auto Upgrade Treadmill",
            Default = false,
            Callback = function(o4)
                xh.SetAutoUpgradeTreadmill(o4)
            end
        })
        PlotGroup:AddToggle("AutoTreadmill", {
            Text = "Auto Go on Treadmill",
            Default = false,
            Callback = function(o6)
                xh.SetAutoTreadmill(o6)
            end
        })
        PlotGroup:AddToggle("AutoUpgradePlot", {
            Text = "Auto Upgrade Plot",
            Default = false,
            Callback = function(o8)
                xh.SetAutoUpgradePlot(o8)
            end
        })
        PlotGroup:AddToggle("AutoCollectMoney", {
            Text = "Auto Collect Money",
            Default = false,
            Callback = function(pa)
                xh.SetAutoCollectMoney(pa)
            end
        })
        ShopGroup:AddToggle("AutoBuyFood", {
            Text = "Auto Buy Food",
            Default = false,
            Callback = function(pc)
                xh.SetAutoBuyFood(pc)
            end
        })
        local GQ_1 = {}
        for i, v in ipairs(wT) do
            local insert = table.insert
            local GS_1 = wQ[v] or v
            insert(GQ_1, GS_1)
        end
        GP = {}
        for i, v in ipairs(wT) do
            local GR_2 = wQ[v] or v
            GP[GR_2] = v
        end
        local GR_3 = wQ[State.BuyFoodId]
        local Ha = if GR_3 then 1 else 0
        local G8 = 1803 * Ha + 199 * (1 - Ha)
        local G9 = 3771 * Ha + 3945 * (1 - Ha)
        if not ((G8 * 1106 + G9 * 3044 + G8 * G9) % 16777213 == 3494942) then
            GR_3 = GQ_1[1]
        end
        ShopGroup:AddDropdown("BuyFoodSelect", {
            Text = "Food",
            Values = GQ_1,
            Default = GR_3,
            Callback = function(pr)
                local SetBuyFoodId = xh.SetBuyFoodId
                local GN = GP[pr] or pr
                SetBuyFoodId(GN)
            end
        })
        ShopGroup:AddDivider()
        ShopGroup:AddToggle("AutoSell", {
            Text = "Auto Sell",
            Default = false,
            Callback = function(pu)
                xh.SetAutoSell(pu)
            end
        })
        ShopGroup:AddDropdown("SellKind", {
            Text = "Sell Kind",
            Values = x0,
            Default = "All",
            Callback = function(py)
                xh.SetSellKind(py)
            end
        })
        PetsGroup:AddToggle("AutoClaimIndex", {
            Text = "Auto Claim Index",
            Default = false,
            Callback = function(pA)
                xh.SetAutoClaimIndex(pA)
            end
        })
        PetsGroup:AddToggle("AutoEquipBest", {
            Text = "Auto Equip Best",
            Default = false,
            Callback = function(pC)
                xh.SetAutoEquipBest(pC)
            end
        })
        PetsGroup:AddToggle("AutoFeed", {
            Text = "Auto Feed",
            Default = false,
            Callback = function(pE)
                xh.SetAutoFeed(pE)
            end
        })
        PetsGroup:AddDropdown("FeedRarities", {
            Text = "Feed Rarity Filter",
            Values = xk,
            Multi = true,
            Default = {},
            Callback = function(pG)
                xh.SetFeedRarities(pG)
            end
        })
        ToysGroup:AddToggle("AutoRollToys", {
            Text = "Auto Roll Toys",
            Default = false,
            Callback = function(pI)
                xh.SetAutoRollToys(pI)
            end
        })
        ToysGroup:AddToggle("AutoBuyToys", {
            Text = "Auto Buy Toys",
            Default = false,
            Callback = function(pK)
                xh.SetAutoBuyToys(pK)
            end
        })
        ToysGroup:AddDropdown("ToyBuyRarities", {
            Text = "Buy Toy Rarities",
            Values = w6,
            Multi = true,
            Default = {},
            Callback = function(pO)
                xh.SetToyBuyRarities(pO)
            end
        })
        ToysGroup:AddInput("ToyMaxPrice", {
            Text = "Max Toy Price (0 = any)",
            Default = "0",
            Numeric = true,
            Finished = true,
            Callback = function(pQ)
                xh.SetToyMaxPrice(pQ)
            end
        })
    end
    JG_5()
    local function JG_6()
        local pW
        local MovementGroup = JC.Player:AddLeftGroupbox("Movement", "person-standing")
        local FlightGroup = JC.Player:AddRightGroupbox("Flight", "plane")
        pW = {
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
        local function pX()
            return x8()
        end
        local function p0()
            local Hb = pX()
            if not Hb then
                return
            end
            if pW[1] then
                if pW[8] == nil then
                    pW[8] = Hb.WalkSpeed
                end
                Hb.WalkSpeed = pW[2]
            elseif pW[8] ~= nil then
                Hb.WalkSpeed = pW[8]
                pW[8] = nil
            end
        end
        local function p4()
            if pW[9] then
                pcall(function()
                    pW[9]:Destroy()
                end)
                pW[9] = nil
            end
            local Hd = pX()
            if Hd then
                Hd.PlatformStand = false
            end
        end
        local function p9()
            p4()
            local Hi = wM()
            local Hj = pX()
            if not Hi or not Hj then
                return
            end
            Hj.PlatformStand = true
            local bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
            bodyVelocity.Velocity = Vector3.zero
            bodyVelocity.Parent = Hi
            pW[9] = bodyVelocity
        end
        local function qj()
            for k, v in pairs(pW[10]) do
                if k and k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(pW[10])
        end
        local function qo()
            for k, v in pairs(pW[14]) do
                if k and k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(pW[14])
        end
        local function qt(qu)
            local HG = if not qu:IsA("ProximityPrompt") then 1 else 0
            if HG == 1 then
                return
            end
            if not pW[14][qu] then
                pW[14][qu] = {
                    HoldDuration = qu.HoldDuration,
                    MaxActivationDistance = qu.MaxActivationDistance,
                    RequiresLineOfSight = qu.RequiresLineOfSight
                }
            end
            qu.HoldDuration = 0
            qu.MaxActivationDistance = 50
            qu.RequiresLineOfSight = false
        end
        MovementGroup:AddToggle("WalkSpeedEnabled", {
            Text = "WalkSpeed",
            Default = false,
            Callback = function(qw)
                pW[1] = qw
                p0()
            end
        })
        MovementGroup:AddSlider("WalkSpeed", {
            Text = "Speed",
            Default = 32,
            Min = 16,
            Max = 250,
            Rounding = 0,
            Callback = function(qz)
                pW[2] = qz
                if pW[1] then
                    p0()
                end
            end
        })
        MovementGroup:AddToggle("InfJump", {
            Text = "Infinite Jump",
            Default = false,
            Callback = function(qC)
                pW[6] = qC
                if pW[12] then
                    pW[12]:Disconnect()
                    pW[12] = nil
                end
                if qC then
                    pW[12] = UserInputService.JumpRequest:Connect(function()
                        local HI = not wV() or not pW[6]
                        if HI then
                            return
                        end
                        local HI_1 = pX()
                        if HI_1 then
                            HI_1:ChangeState(Enum.HumanoidStateType.Jumping)
                        end
                    end)
                end
            end
        })
        MovementGroup:AddToggle("NoClip", {
            Text = "Noclip",
            Default = false,
            Callback = function(qP)
                pW[5] = qP
                if pW[11] then
                    pW[11]:Disconnect()
                    pW[11] = nil
                end
                if not qP then
                    qj()
                    return
                end
                pW[11] = RunService.Stepped:Connect(function()
                    local HL = not wV() or not pW[5]
                    if HL then
                        return
                    end
                    local Character = LocalPlayer.Character
                    if not Character then
                        return
                    end
                    for i, descendant in ipairs(Character:GetDescendants()) do
                        if descendant:IsA("BasePart") then
                            if pW[10][descendant] == nil then
                                pW[10][descendant] = descendant.CanCollide
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
            Callback = function(q4)
                pW[7] = q4
                if pW[13] then
                    pW[13]:Disconnect()
                    pW[13] = nil
                end
                if not q4 then
                    qo()
                    return
                end
                for i, descendant in ipairs(ys:GetDescendants()) do
                    qt(descendant)
                end
                pW[13] = ys.DescendantAdded:Connect(function(rd)
                    if pW[7] then
                        qt(rd)
                    end
                end)
            end
        })
        FlightGroup:AddToggle("Fly", {
            Text = "Fly",
            Default = false,
            Callback = function(rg)
                pW[3] = rg
                if rg then
                    p9()
                else
                    p4()
                end
            end
        })
        FlightGroup:AddSlider("FlySpeed", {
            Text = "Fly Speed",
            Default = 60,
            Min = 10,
            Max = 400,
            Rounding = 0,
            Callback = function(rk)
                pW[4] = rk
            end
        })
        local ry = task.spawn(function()
            while true do
                local H8 = wV() and not Library.Unloaded
                if H8 then
                    if pW[3] and pW[9] and pW[9].Parent then
                        if UserInputService:GetFocusedTextBox() then
                            pW[9].Velocity = Vector3.zero
                        else
                            local CurrentCamera = ys.CurrentCamera
                            local H9 = Vector3.zero
                            if CurrentCamera then
                                local LookVector = CurrentCamera.CFrame.LookVector
                                local RightVector = CurrentCamera.CFrame.RightVector
                                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                    H9 += LookVector
                                end
                                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                    H9 -= LookVector
                                end
                                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                                    H9 -= RightVector
                                end
                                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                                    H9 += RightVector
                                end
                                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                                    H9 += Vector3.yAxis
                                end
                                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                                    H9 -= Vector3.yAxis
                                end
                            end
                            if H9.Magnitude > 0 then
                                pW[9].Velocity = H9.Unit * pW[4]
                            else
                                pW[9].Velocity = Vector3.zero
                            end
                        end
                    end
                    task.wait()
                    continue
                end
                break
            end
        end)
        LocalPlayer.CharacterAdded:Connect(function()
            task.wait(0.2)
            local Ig = if not wV() then 1 else 0
            if Ig == 1 then
                return
            end
            pW[8] = nil
            if pW[1] then
                p0()
            end
            if pW[3] then
                p9()
            end
        end)
        xh.Track(function()
            if pW[12] then
                pW[12]:Disconnect()
            end
            if pW[11] then
                pW[11]:Disconnect()
            end
            if pW[13] then
                pW[13]:Disconnect()
            end
            qj()
            qo()
            p4()
            if pW[8] ~= nil then
                local Ih = pX()
                if Ih then
                    Ih.WalkSpeed = pW[8]
                end
            end
            if coroutine.status(ry) ~= "dead" then
                task.cancel(ry)
            end
        end)
    end
    JG_6()
    local function JG_7()
        local s7
        local MenuGroup = JC.Settings:AddLeftGroupbox("Menu", "settings")
        local ScriptGroup = JC.Settings:AddLeftGroupbox("Script", "scroll-text")
        local rP = { [1] = true, [2] = 0, [3] = nil }
        local Label = MenuGroup:AddLabel("AFK triggers: 0")
        local function rR()
            local Ij = not w0(VirtualUser.CaptureController) or not w0(VirtualUser.ClickButton2)
            if Ij then
                return false
            end
            local Ij_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new())
            end)
            if Ij_1 then
                rP[2] = rP[2] + 1
                Label:SetText("AFK triggers: " .. tostring(rP[2]))
            end
            return Ij_1
        end
        local function r1(r2)
            rP[1] = r2 == true
            if rP[3] then
                rP[3]:Disconnect()
                rP[3] = nil
            end
            if not rP[1] then
                return
            end
            rP[3] = LocalPlayer.Idled:Connect(function()
                local Io = wV() and rP[1]
                if Io then
                    rR()
                end
            end)
        end
        MenuGroup:AddToggle("AntiAfk", {
            Text = "Anti-AFK",
            Default = true,
            Callback = function(sd)
                r1(sd)
            end
        })
        r1(true)
        local sm = task.spawn(function()
            while true do
                local Ir = wV() and not Library.Unloaded
                if Ir then
                    task.wait(60)
                    local Ir_1 = wV() and rP[1]
                    if Ir_1 then
                        rR()
                    end
                    continue
                end
                break
            end
        end)
        local sn = { [1] = true, [2] = nil }
        local function so(sp)
            sn[1] = sp == true
            if sn[2] then
                sn[2]:Disconnect()
                sn[2] = nil
            end
            if not sn[1] then
                return
            end
            sn[2] = GuiService.ErrorMessageChanged:Connect(function()
                local Iw = not sn[1] or not wV()
                if Iw then
                    return
                end
                pcall(function()
                    GuiService:ClearError()
                end)
            end)
        end
        MenuGroup:AddToggle("AntiGameplayPause", {
            Text = "No Gameplay Paused",
            Default = true,
            Callback = function(sA)
                so(sA)
            end
        })
        so(true)
        local sC = { [1] = false, [2] = nil, [3] = 0 }
        local function sD(sE)
            sC[1] = sE == true
            if sC[2] then
                sC[2]:Disconnect()
                sC[2] = nil
            end
            if not sC[1] then
                return
            end
            sC[2] = GuiService.ErrorMessageChanged:Connect(function()
                local IG = not sC[1] or not wV()
                if IG then
                    return
                end
                if sC[3] >= 2 then
                    return
                end
                sC[3] = sC[3] + 1
                task.delay(1.5, function()
                    local IE = not wV() or not sC[1]
                    if IE then
                        return
                    end
                    pcall(function()
                        if sC[3] == 1 and game.JobId ~= "" then
                            TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                        else
                            TeleportService:Teleport(game.PlaceId, LocalPlayer)
                        end
                    end)
                end)
            end)
        end
        MenuGroup:AddToggle("AutoReconnect", {
            Text = "Auto Reconnect on Kick",
            Default = false,
            Callback = function(sZ)
                sD(sZ)
            end
        })
        local s0 = { [1] = false, [2] = nil }
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(s1)
                s0[1] = s1
                if s1 then
                    s0[2] = settings().Rendering.QualityLevel
                    pcall(function()
                        RunService:Set3dRenderingEnabled(false)
                    end)
                else
                    pcall(function()
                        RunService:Set3dRenderingEnabled(true)
                    end)
                end
            end
        })
        s7 = { [1] = false, [2] = {}, [3] = nil }
        local function s8(s9)
            if s7[2][s9] then
                return
            end
            local IN = s9:IsA("ParticleEmitter") or s9:IsA("Trail") or s9:IsA("Beam") or s9:IsA("Fire") or s9:IsA("Smoke")
            local IR = if IN then 1 else 0
            local IP = 2220 * IR + 768 * (1 - IR)
            local IQ = 2149 * IR + 2620 * (1 - IR)
            if not ((IP * 2285 + IQ * 2239 + IP * IQ) % 16777213 == 14655091) then
                IN = s9:IsA("Sparkles")
            end
            if IN then
                s7[2][s9] = { Enabled = s9.Enabled }
                s9.Enabled = false
            elseif s9:IsA("Explosion") then
                s7[2][s9] = { Visible = s9.Visible }
                s9.Visible = false
            end
        end
        local function tc()
            for k, v in pairs(s7[2]) do
                if k and k.Parent then
                    if v.Enabled ~= nil then
                        k.Enabled = v.Enabled
                    end
                    if v.Visible ~= nil then
                        k.Visible = v.Visible
                    end
                end
            end
            table.clear(s7[2])
            if s7[4] then
                Lighting.GlobalShadows = s7[4].GlobalShadows
                Lighting.FogEnd = s7[4].FogEnd
                s7[4] = nil
            end
        end
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(tk)
                s7[1] = tk
                if s7[3] then
                    s7[3]:Disconnect()
                    s7[3] = nil
                end
                if not tk then
                    tc()
                    return
                end
                s7[4] = { GlobalShadows = Lighting.GlobalShadows, FogEnd = Lighting.FogEnd }
                Lighting.GlobalShadows = false
                Lighting.FogEnd = 9000000000
                for i, descendant in ipairs(ys:GetDescendants()) do
                    s8(descendant)
                end
                s7[3] = ys.DescendantAdded:Connect(function(tt)
                    if s7[1] then
                        s8(tt)
                    end
                end)
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        xh.Track(function()
            if rP[3] then
                rP[3]:Disconnect()
            end
            if sn[2] then
                sn[2]:Disconnect()
            end
            if sC[2] then
                sC[2]:Disconnect()
            end
            if s7[3] then
                s7[3]:Disconnect()
            end
            tc()
            if s0[1] then
                pcall(function()
                    RunService:Set3dRenderingEnabled(true)
                end)
            end
            if coroutine.status(sm) ~= "dead" then
                task.cancel(sm)
            end
        end)
    end
    JG_7()
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("MyScriptHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(JC.Settings)
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/RaiseAnomaly")
    local JG_8 = SaveManager:BuildConfigSection(JC.Settings)
    JG_8:AddInput("SaveManager_ImportSource", { Text = "Import source", Default = "", Numeric = false, Finished = false })
    JG_8:AddButton({
        Text = "Export Config",
        Func = function()
            local Jg_1
            local Jf_1
            local Je = SaveManager:GetConfig()
            if type(Je) ~= "table" then
                Library:Notify("Export failed")
                return
            end
            Jf_1, Jg_1 = pcall(HttpService.JSONEncode, HttpService, Je)
            if not Jf_1 then
                Library:Notify("Encode failed")
                return
            end
            Jx(Jg_1, "Copied config")
        end
    })
    JG_8:AddButton({
        Text = "Import Config",
        Func = function()
            local Jk_1
            local Jj = Options.SaveManager_ImportSource and Options.SaveManager_ImportSource.Value
            local Jj_1
            local Jo = if Jj then 1 else 0
            local Jm = 317 * Jo + 1187 * (1 - Jo)
            local Jn = 1804 * Jo + 3348 * (1 - Jo)
            if not ((Jm * 2484 + Jn * 615 + Jm * Jn) % 16777213 == 2468756) then
                Jj = ""
            end
            local Ji_1 = Jj
            if Ji_1 == "" then
                Library:Notify("Paste a config first")
                return
            end
            Jj_1, Jk_1 = pcall(HttpService.JSONDecode, HttpService, Ji_1)
            local Ji_2 = not Jj_1 or type(Jk_1) ~= "table"
            if Ji_2 then
                Library:Notify("Invalid config")
                return
            end
            for k, v in pairs(Jk_1) do
                if k ~= "MenuKeybind" and k ~= "SaveManager_ImportSource" then
                    if Toggles[k] then
                        Toggles[k]:SetValue(v)
                    elseif Options[k] then
                        Options[k]:SetValue(v)
                    end
                end
            end
            Options.SaveManager_ImportSource:SetValue("")
            Library:Notify("Config imported")
        end
    })
    SaveManager:LoadAutoloadConfig()
    if Toggles.HideUiOnStart and Toggles.HideUiOnStart.Value then
        Library:Toggle(false)
    end
end
if (xX and false or xA and xX or not x4 and not xr and (false and xX)) and (xX or xr or not x4 and xX or (not x4 or not x4 or not x4 and not xr)) and not ((xX and false or xA and xX or not x4 and not xr and (false and xX)) and (xX or xr or not x4 and xX or (not x4 or not x4 or not x4 and not xr))) then
    J1_9, J1_21 = pcall(J1_5)
else
    J1_21, J1_5 = pcall(J1_9)
end
if not J1_21 then
    J1_26 = 7
    repeat
        local LR = bit32.rrotate(bit32.bxor(bit32.lrotate(J1_26, 6), string.byte(tostring(J1_26))), 1)
        if bit32.bxor(bit32.lrotate(bit32.bxor(LR, 3614947074), 18), 3691732446) == bit32.lrotate(LR, 18) then
            warn("[OuroborosRaiseAnomaly] UI failed:", J1_5)
            xh.Unload()
            error(J1_5, 0)
        else
            warn("[OuroborosRaiseAnomaly] UI failed:", xh)
            J1_5.Unload()
            error(xh, 0)
        end
        J1_26 = (J1_26 + 7) % 8
    until (J1_26 * 5 + 5) % 8 == 3
end
