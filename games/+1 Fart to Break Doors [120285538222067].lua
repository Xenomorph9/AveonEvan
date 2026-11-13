local wQ
local vQ
local we
local wW
local vW
local wD
local wk
local v1
local vJ
local wq
local wP
local vP
local ww
local wd
local vV
local v0
local vI
local wp
local v6
local wO
local LocalPlayer
local wv
local wc
local wU
local vU
local wB
local wi
local wH
local vH
local wo
local v5
local State
local vN
local wu
local wb
local wT
local vT
local wG
local vG
local wn
local wM
local vM
local wt
local wa
local wS
local vS
local wz
local CoreGui
local wF
local v3
local wL
local vL
local ws
local v9
local wR
local vR
local wy
local wf
local vX
local wE
local wl
local wK
local vK
local v8
local function fn35(iF)
    if iF then
        wf(ww, vT)
    else
        wd(ww)
    end
end
local function fn50(jy)
    if jy then
        wf(wl, wc)
    else
        wd(wl)
    end
end
local function fn51(fH)
    local BR = fH ~= ""
    local BS = type(fH) == "string" and BR
    local BS_1 = BS and fH
    local BW = if BS_1 then 1 else 0
    local BU = 3569 * BW + 2519 * (1 - BW)
    local BV = 776 * BW + 1722 * (1 - BW)
    if not ((BU * 434 + BV * 4065 + BU * BV) % 16777213 == 7472930) then
        BS_1 = nil
    end
    vQ.plate = BS_1
end
local function fn57(gx, gy)
    wW.targets = wM(gx, gy)
end
local function fn65()
    local Eh_1
    local Ef_1
    local Ee_1
    Ef_1, Ee_1 = wi()
    if not Ef_1 then
        wb("The daily reward values are not loaded")
        return
    end
    local Eg = Ee_1 + 86400 - os.time()
    local Eg_1
    if Eg > 0 then
        wb(string.format("Daily reward in %dh %dm", Eg // 3600, Eg % 3600 // 60))
        return
    end
    if not wq("ClaimDailyReward", Ef_1) then
        wb("The daily reward remote is not available")
        return
    end
    task.wait(1)
    Eh_1, Eg_1 = wi()
    if Eg_1 and Eg_1 > Ee_1 then
        wD("Claimed daily reward day " .. Ef_1)
        local Eg_2 = Eh_1 and Eh_1 - 1 or Ef_1
        wb("Claimed daily reward day " .. tostring(Eg_2))
    else
        wb("The server refused the daily reward")
    end
end
local function fn66()
    local zw_1
    local zv_1
    zv_1, zw_1 = {}, {}
    for i, v in ipairs(wv()) do
        if v.Cost >= 0 then
            local zx = string.format("%s (%s cash)", v.Name, wt(v.Cost))
            table.insert(zv_1, zx)
            zw_1[zx] = v.Index
        end
    end
    return zv_1, zw_1
end
local function fn88(aI)
    local HiddenStats = LocalPlayer:FindFirstChild("HiddenStats")
    local xS = HiddenStats and HiddenStats:FindFirstChild(aI)
    local xR_1 = xS
    if xS then
        xS = tonumber(xR_1.Value)
    end
    return xS or 0
end
local function fn131(dD, dE)
    local Aw = {}
    for k in pairs(v9(dD)) do
        local Ax = dE and dE[k]
        if Ax ~= nil then
            Aw[Ax] = true
        else
            Aw[k] = true
        end
    end
    return Aw
end
local function fn178()
    local ym_1
    local yl_2, yl_4, yl_5, yl_6
    local yh = { Farts = {}, Foods = {}, Eggs = {}, Areas = {}, DoorCounts = {}, Spins = {}, Playtime = {} }
    local MainModules = vG:FindFirstChild("MainModules")
    local yj = MainModules and MainModules:FindFirstChild("Config")
    local yj_10, yj_14, yj_17, yj_19
    local yk_2, yk_10, yk_11
    if yj then
        local FartStats = yj:FindFirstChild("FartStats")
        local yl_1 = FartStats and FartStats:IsA("ModuleScript")
        if yl_1 then
            yl_2, ym_1 = pcall(require, FartStats)
            local yj_2 = yl_2 and type(ym_1) == "table" and type(ym_1.farts) == "table"
            if yj_2 then
                for i, v in ipairs(ym_1.farts) do
                    local yj_3 = type(v) == "table" and type(v.Name) == "string"
                    if yj_3 then
                        local insert = table.insert
                        local Farts = yh.Farts
                        local Name = v.Name
                        local yn_1 = tonumber(v.Cost) or 0
                        insert(Farts, { Index = i, Name = Name, Cost = yn_1, Entry = v })
                    end
                end
            end
        end
        local DoorStats = yj:FindFirstChild("DoorStats")
        local yk_1 = DoorStats and DoorStats:IsA("ModuleScript")
        if yk_1 then
            yk_2, yl_4 = pcall(require, DoorStats)
            local yj_6 = yk_2 and type(yl_4) == "table"
            if yj_6 then
                for k, v in pairs(yl_4) do
                    local yj_7 = type(k) == "string" and type(v) == "table"
                    if yj_7 then
                        local yj_8 = 0
                        for k in pairs(v) do
                            yj_8 += 1
                        end
                        yh.DoorCounts[k] = yj_8
                    end
                end
            end
        end
    end
    local yj_9 = MainModules and MainModules:FindFirstChild("Config")
    local yk_3 = yj_9
    if yj_9 then
        yj_9 = yk_3:IsA("ModuleScript")
    end
    if yj_9 then
        yj_10, yl_5 = pcall(require, yk_3)
        local yk_4 = yj_10 and type(yl_5) == "table"
        if yk_4 then
            if type(yl_5.trainning_foods) == "table" then
                local yJ = 0
                while yJ <= 200 do
                    local yK = yJ
                    local yj_11 = yl_5.trainning_foods[yK]
                    local yk_5 = type(yj_11) == "table" and type(yj_11.Name) == "string"
                    if yk_5 then
                        local insert = table.insert
                        local Foods = yh.Foods
                        local Name = yj_11.Name
                        local yo_1 = tonumber(yj_11.Cost) or -1
                        insert(Foods, { Index = yK, Name = Name, Cost = yo_1 })
                    end
                    yJ += 1
                end
            end
            if type(yl_5.Areas) == "table" then
                for i, v in ipairs(yl_5.Areas) do
                    local yj_12 = type(v) == "table" and type(v.Name) == "string"
                    if yj_12 then
                        yh.Areas[i] = v.Name
                    end
                end
            end
        end
    end
    local yj_13 = MainModules and MainModules:FindFirstChild("SpinModule")
    local yk_7 = yj_13
    if yj_13 then
        yj_13 = yk_7:IsA("ModuleScript")
    end
    if yj_13 then
        yj_14, yl_6 = pcall(require, yk_7)
        local yk_8 = yj_14 and type(yl_6) == "table" and type(yl_6.Spin) == "table" and type(yl_6.Spin.Rewards) == "table"
        if yk_8 then
            for k, v in pairs(yl_6.Spin.Rewards) do
                if type(v) == "table" then
                    local insert = table.insert
                    local Spins = yh.Spins
                    local yl_7 = tostring(k)
                    local ym_4 = v.Reward or "Reward"
                    local yn_3 = tostring(ym_4)
                    local Amount = v.Amount
                    local yp = tonumber(v.Rarity) or 1
                    insert(Spins, { Key = yl_7, Reward = yn_3, Amount = Amount, Rarity = yp })
                end
            end
            table.sort(yh.Spins, function(bQ, bR)
                return bQ.Key < bR.Key
            end)
        end
    end
    local yj_16 = MainModules and MainModules:FindFirstChild("PlaytimeRewards")
    local yi_1 = yj_16
    if yj_16 then
        yj_16 = yi_1:FindFirstChild("Rewards")
    end
    local yi_2 = yj_16
    if yj_16 then
        yj_16 = yi_2:IsA("ModuleScript")
    end
    if yj_16 then
        yj_17, yk_10 = pcall(require, yi_2)
        local yi_3 = yj_17 and type(yk_10) == "table"
        if yi_3 then
            for k in pairs(yk_10) do
                if tonumber(k) then
                    table.insert(yh.Playtime, tonumber(k))
                end
            end
            table.sort(yh.Playtime)
        end
    end
    local Config = vG:FindFirstChild("Config")
    local yj_18 = Config and Config:FindFirstChild("Config")
    local yi_5 = yj_18
    if yj_18 then
        yj_18 = yi_5:IsA("ModuleScript")
    end
    if yj_18 then
        yj_19, yk_11 = pcall(require, yi_5)
        local yi_6 = yj_19 and type(yk_11) == "table" and type(yk_11.Eggs) == "table"
        if yi_6 then
            for k, v in pairs(yk_11.Eggs) do
                if type(v) == "table" then
                    local insert = table.insert
                    local Eggs = yh.Eggs
                    local yk_12 = v.EggName or k
                    local yl_8 = tostring(yk_12)
                    local ym_5 = tonumber(v.Price) or 0
                    insert(Eggs, { Name = yl_8, Price = ym_5 })
                end
            end
            table.sort(yh.Eggs, function(b9, ca)
                if b9.Price == ca.Price then
                    return b9.Name < ca.Name
                end
                return b9.Price < ca.Price
            end)
        end
    end
    return yh
end
local function fn199()
    local Af = {}
    for i, v in ipairs(wn()) do
        table.insert(Af, v.Name)
    end
    return Af
end
local function fn204(id, ie)
    local DB = id == ""
    local DC = type(id) ~= "string" or DB
    if DC then
        wB.egg = nil
        return
    end
    local DC_1 = ie and ie[id] or id
    wB.egg = DC_1
end
local function fn212(g4)
    local Pets = vG:FindFirstChild("Pets")
    local CF = Pets and Pets:FindFirstChild(tostring(g4))
    local CE_1 = CF
    if CF then
        CF = CE_1:FindFirstChild("ClicksMultiplier")
    end
    local CE_2 = CF
    local CF_1 = not CE_2 or not CE_2:IsA("StringValue")
    if CF_1 then
        return 1
    end
    local CF_2 = CE_2.Value or ""
    local CE_3 = tostring(CF_2):match("[%d,%.]+")
    local CF_3 = CE_3 and tonumber((CE_3:gsub(",", "")))
    local CE_4 = CF_3
    if CF_3 then
        CF_3 = CE_4 > 0
    end
    if CF_3 then
        return CE_4
    end
    return 1
end
local function fn214(iK)
    local D4 = tonumber(iK) or 15
    ww.interval = math.max(D4, 1)
end
local function fn231()
    local Character = LocalPlayer.Character
    local x6 = Character and Character:FindFirstChildOfClass("Humanoid")
    return x6 or nil
end
local function fn244(jD, jE)
    local ES = jD == ""
    local ET = type(jD) ~= "string"
    local EY = if ET then 1 else 0
    local EW = 920 * EY + 3708 * (1 - EY)
    local EX = 4003 * EY + 2913 * (1 - EY)
    if not ((EW * 683 + EX * 2467 + EW * EX) % 16777213 == 14186521) then
        ET = ES
    end
    if ET or jD == wo then
        wl.reward = nil
        return
    end
    local ET_1 = jE and jE[jD]
    local EY_1 = if ET_1 then 1 else 0
    local EW_1 = 1458 * EY_1 + 2159 * (1 - EY_1)
    local EX_1 = 3571 * EY_1 + 3912 * (1 - EY_1)
    if not ((EW_1 * 1180 + EX_1 * 1744 + EW_1 * EX_1) % 16777213 == 13154782) then
        ET_1 = nil
    end
    wl.reward = ET_1
end
local function fn250(jI)
    local E_ = tonumber(jI) or 1.5
    wl.interval = math.max(E_, 0.5)
end
local function fn283()
    return vK().Foods
end
local function fn298()
    local zG_1
    local zF_1
    zG_1, zF_1 = {}, {}
    for i, v in ipairs(wk()) do
        local zH = string.format("%s (%s cash)", v.Name, wt(v.Price))
        table.insert(zG_1, zH)
        zF_1[zH] = v.Name
    end
    return zG_1, zF_1
end
local function fn314()
    return vK().Eggs
end
local function fn321(hL)
    local Df = tonumber(hL) or 10
    wH.interval = math.max(Df, 1)
end
local function fn336(U)
    local xt = typeof(cloneref) == "function" and typeof(U) == "Instance"
    if xt then
        return cloneref(U)
    end
    return U
end
local function fn365()
    local zm_1
    local zl_1
    zm_1, zl_1 = {}, {}
    for i, v in ipairs(wG()) do
        local zn = string.format("%s (%s cash)", v.Name, wt(v.Cost))
        table.insert(zm_1, zn)
        zl_1[zn] = v.Name
    end
    return zm_1, zl_1
end
local function fn374()
    local BP = if LocalPlayer:GetAttribute("Trainning") == true then 1 else 0
    if BP == 1 then
        wb("Training, fart power " .. wt(we("FartPower")))
        return
    end
    local BI = wE()
    if not BI then
        wb("No training plate is loaded")
        return
    end
    local ProximityPrompt = BI.Plate:FindFirstChildOfClass("ProximityPrompt")
    if not ProximityPrompt then
        wb("The training prompt is missing on " .. BI.Name)
        return
    end
    local BK = vQ.stand and not vM(BI.Plate)
    if BK then
        wb("Could not stand on " .. BI.Name)
        return
    end
    local BK_1 = v3()
    local BL = BK_1 and (BK_1.Position - BI.Plate.Position).Magnitude > math.max(ProximityPrompt.MaxActivationDistance - 1, 4)
    if BL then
        wb("Too far from " .. BI.Name .. " to train")
        return
    end
    if BI.Plate:GetAttribute("IsUsing") == true then
        wb(BI.Name .. " is already being used")
        return
    end
    vN(ProximityPrompt)
    task.wait(0.6)
    if LocalPlayer:GetAttribute("Trainning") == true then
        wb("Training on " .. BI.Name)
    end
end
local function fn405(hG)
    if hG then
        wf(wH, v5)
    else
        wd(wH)
    end
end
local function fn408(f1)
    if f1 then
        wf(vL, wP)
    else
        wd(vL)
    end
end
local function fn409(aj)
    State.Status = tostring(aj)
end
local function fn427()
    local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
    local DM = PlayerGui and PlayerGui:FindFirstChild("PlaytimeRewards")
    local DL_1 = DM
    if DM then
        DM = DL_1:FindFirstChild("ClaimableRewards")
    end
    local DL_2 = DM
    if DM then
        DM = tonumber(DL_2.Value)
    end
    return DM or 0
end
local function fn434(aP)
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local xY = leaderstats and leaderstats:FindFirstChild(aP)
    local xX_1 = xY
    if xY then
        xY = tonumber(xX_1.Value)
    end
    return xY or 0
end
local function fn489()
    return State.Catalog or vP
end
local function fn490()
    local AQ = wT()
    local AW = 1
    while AW <= AQ do
        local AX = AW
        local AR = not vW() or v0.stopped
        if AR then
            return false
        end
        local AR_1 = v8(AX)
        if AR_1 and AR_1.success then
            local AR_2 = AR_1.doorDestroyed and AX + 1 or AX
            State.DoorIndex = AR_2
            if State.DoorIndex > AQ then
                State.DoorIndex = 1
            end
            State.DoorMisses = 0
            return true
        end
        AW += 1
    end
    return false
end
local function fn497(am, an)
    local xA = vG:FindFirstChild("Remotes")
    for k in tostring(am):gmatch("[^%.]+") do
        if not xA then
            return nil
        end
        xA = xA:FindFirstChild(k)
    end
    local xB = xA and xA:IsA(an)
    if xB then
        return xA
    end
    return nil
end
local function fn560(ek)
    local AN_1
    local AM_1
    AM_1, AN_1 = vH("DoorEvents.RequestDoorDamage", ek)
    local AO = not AM_1 or type(AN_1) ~= "table"
    if AO then
        return nil
    end
    return AN_1
end
local function fn563(fB)
    if fB then
        wf(vQ, vI)
    else
        wd(vQ)
        wq("Trainning.EndTrain")
    end
end
local function fn568()
    return vK().Farts
end
local function fn579()
    local Bj = wn()
    if #Bj == 0 then
        return nil
    end
    local plate = vQ.plate
    local Bl = plate ~= ""
    local Bm = type(plate) == "string" and Bl
    if Bm then
        for i, v in ipairs(Bj) do
            if v.Name == plate then
                return v
            end
        end
    end
    for i, v in ipairs(Bj) do
        if v.Plate:GetAttribute("IsUsing") ~= true then
            return v
        end
    end
    return Bj[1]
end
local function fn603()
    local Character = LocalPlayer.Character
    local x3 = Character and Character:FindFirstChild("HumanoidRootPart")
    return x3 or nil
end
local function fn617(ii)
    local DE = tonumber(tostring(ii):match("%d+"))
    local DG = DE or 1
    wB.amount = math.max(DG, 1)
end
local function worker()
    local y9_1
    local y8_1
    y8_1, y9_1 = pcall(vV)
    local za = y8_1 and type(y9_1) == "table"
    if za then
        State.Catalog = y9_1
    end
    wL = true
end
local function fn657()
    local PlayerStats = LocalPlayer:FindFirstChild("PlayerStats")
    local Ep = PlayerStats and PlayerStats:FindFirstChild("Spin")
    local Eo_1 = Ep
    if Ep then
        Ep = tonumber(Eo_1.Value)
    end
    return Ep or 0
end
local function fn697(dx)
    local An = {}
    if type(dx) == "table" then
        for k, v in pairs(dx) do
            local Ao = v == true and type(k) == "string"
            if Ao then
                An[k] = true
            elseif type(v) == "string" then
                An[v] = true
            end
        end
    end
    return An
end
local function fn744()
    return not wu.Unloaded
end
local function fn754(ae, af)
    if not vW() then
        return
    end
    local Notifications = State.Notifications
    local xx = tostring(ae)
    local xy = af or 5
    table.insert(Notifications, { text = xx, time = xy })
    if #State.Notifications > 12 then
        table.remove(State.Notifications, 1)
    end
end
local function fn756()
    wd(v0)
    wd(vQ)
    wd(vL)
    wd(wW)
    wd(wQ)
    wd(wH)
    wd(wB)
    wd(ww)
    wd(wp)
    wd(wl)
end
local function fn872()
    local Playtime = vK().Playtime
    if #Playtime == 0 then
        wb("The playtime reward list is not available")
        return
    end
    local DS = wF()
    if DS <= 0 then
        wb("No playtime reward is ready yet")
        return
    end
    for i, v in ipairs(Playtime) do
        local DR_1 = not vW()
        local D1 = if DR_1 then 1 else 0
        local D_ = 2485 * D1 + 1685 * (1 - D1)
        local D0 = 2980 * D1 + 2044 * (1 - D1)
        if not ((D_ * 3646 + D0 * 1027 + D_ * D0) % 16777213 == 2748857) then
            DR_1 = ww.stopped
        end
        if DR_1 then
            return
        end
        wq("PlaytimeRewards.ClaimRewards", v)
        task.wait(0.2)
    end
    task.wait(0.5)
    local DR_2 = wF()
    if DR_2 < DS then
        wD("Claimed " .. DS - DR_2 .. " playtime rewards")
        wb("Claimed " .. DS - DR_2 .. " playtime rewards")
    else
        wb("The server refused the playtime rewards")
    end
end
local function fn882(hO)
    for i, v in ipairs(wk()) do
        if v.Name == hO then
            return v
        end
    end
    return nil
end
local function fn891()
    local B5 = wv()
    local B5_3
    if #B5 == 0 then
        wb("The food list is not available")
        return
    end
    local B6 = we("Trainning_Item_Unlocked")
    local B6_1
    local targets = wW.targets
    if next(targets) ~= nil then
        local B8_1 = false
        for k in pairs(targets) do
            local B7_1 = tonumber(k) or 0
            if B7_1 > B6 then
                B8_1 = true
                break
            end
        end
        if not B8_1 then
            wb("Every selected food is owned")
            return
        end
    end
    local B7_2 = nil
    for i, v in ipairs(B5) do
        if v.Index == B6 + 1 and v.Cost >= 0 then
            B7_2 = v
            break
        end
    end
    if not B7_2 then
        wb("Every food is already unlocked")
        return
    end
    local B5_2 = we("Cash")
    if B5_2 < B7_2.Cost then
        wb(string.format("%s costs %s cash, %s now", B7_2.Name, wt(B7_2.Cost), wt(B5_2)))
        return
    end
    B5_3, B6_1 = vH("StatsChangeEvents.FoodPurchase", B7_2.Index)
    local B8_2 = not B5_3 or type(B6_1) ~= "table"
    if B8_2 then
        wb("The server refused " .. B7_2.Name)
        return
    end
    task.wait(0.3)
    if we("Trainning_Item_Unlocked") >= B7_2.Index then
        wq("StatsChangeEvents.FoodEquip", B7_2.Index)
        wD("Bought and equipped " .. B7_2.Name)
        wb("Bought " .. B7_2.Name)
    else
        wb("Could not buy " .. B7_2.Name)
    end
end
local function fn964()
    local EK = wz()
    if EK < 1 then
        wb("No spins left")
        return
    end
    local EL = wl.reward or vX()
    if not EL then
        wb("The spin reward list is not available")
        return
    end
    if not wq("Events.Spin", EL) then
        wb("The spin remote is not available")
        return
    end
    task.wait(1)
    local EL_1 = wz()
    if EL_1 < EK then
        wb(string.format("Spun for %s, %d left", EL, EL_1))
    else
        wb("The server refused the spin")
    end
end
local function fn968(h8)
    if h8 then
        wf(wB, v1)
    else
        wd(wB)
    end
end
local function fn983(eU)
    local Bc = tonumber(eU) or 0.15
    v0.interval = math.max(Bc, 0.05)
end
local function fn999(d7)
    d7.stopped = true
    local AK = d7.generation or 0
    d7.generation = AK + 1
end
local function fn1004(a3)
    local x8 = tonumber(a3) or 0
    local x9 = x8
    local x8_1 = 1
    local ya = { "", "K", "M", "B", "T", "Qa", "Qi", "Sx", "Sp", "Oc", "No", "Dc", "Ud" }
    while x9 >= 1000 and x8_1 < 13 do
        x9 = x9 / 1000
        x8_1 += 1
    end
    if x8_1 == 1 then
        return string.format("%d", x9)
    end
    return string.format("%.2f%s", x9, ya[x8_1])
end
local function fn1012()
    local Dw = if not vR("TryPurchaseHatch", "RemoteFunction") then 1 else 0
    if Dw == 1 then
        wb("The egg remote is not available")
        return
    end
    local Do = ws(wB.egg)
    if not Do then
        wb("Pick an egg to hatch first")
        return
    end
    local max = math.max
    local Dp_2
    local floor = math.floor
    local Dr = tonumber(wB.amount) or 1
    local Dr_2
    local Dq_1 = max(floor(Dr), 1)
    local Dp_1 = we("Cash")
    local Dr_1 = Do.Price * Dq_1
    if Dp_1 < Dr_1 then
        wb(string.format("%s x%d costs %s cash, %s now", Do.Name, Dq_1, wt(Dr_1), wt(Dp_1)))
        return
    end
    Dp_2, Dr_2 = vH("TryPurchaseHatch", Do.Name, Dq_1)
    local Ds = not Dp_2 or type(Dr_2) ~= "table"
    if Ds then
        wb("The server refused " .. Do.Name)
        return
    end
    if Dr_2.Message then
        wb(Do.Name .. ": " .. tostring(Dr_2.Message))
        return
    end
    if Dr_2.RewardedPets then
        local Dp_3 = type(Dr_2.RewardedPets) == "table" and #Dr_2.RewardedPets
        local Dr_3 = Dp_3 or Dq_1
        local format = string.format
        local Ds_1 = Dr_3 == 1 and "" or "s"
        wb(format("Hatched %d pet%s from %s", Dr_3, Ds_1, Do.Name))
        return
    end
    wb("Hatched " .. Do.Name)
end
local function fn1015()
    return CoreGui
end
local function fn1027()
    local CQ_1
    local CP_3
    local CM_1
    local CL_1
    CL_1, CM_1 = vH("GetPetState")
    local CN = not CL_1 or type(CM_1) ~= "table" or type(CM_1.inventory) ~= "table"
    if CN then
        wb("The pet inventory is not available")
        return
    end
    local CL_2 = tonumber(CM_1.maxEquip) or 3
    local CN_1 = {}
    for k, v in pairs(CM_1.inventory) do
        if type(v) == "table" then
            local insert = table.insert
            local CM_2 = v.name or "Pet"
            insert(CN_1, { Uid = k, Name = tostring(CM_2), Equipped = v.equipped == true, Multiplier = wa(v.name) })
        end
    end
    if #CN_1 == 0 then
        wb("You do not own any pets yet")
        return
    end
    table.sort(CN_1, function(hq, hr)
        if hq.Multiplier == hr.Multiplier then
            return hq.Name < hr.Name
        end
        return hq.Multiplier > hr.Multiplier
    end)
    local CL_4 = {}
    local CM_3 = math.min(CL_2, #CN_1)
    local C0 = 1
    while C0 <= CM_3 do
        local C1 = C0
        CL_4[CN_1[C1].Uid] = true
        C0 += 1
    end
    local CM_4 = 0
    for i, v in ipairs(CN_1) do
        if v.Equipped and not CL_4[v.Uid] then
            if vH("ToggleEquipPet", v.Uid, "") then
                CM_4 += 1
                task.wait(0.1)
            end
        end
    end
    for i, v in ipairs(CN_1) do
        if CL_4[v.Uid] and not v.Equipped then
            CP_3, CQ_1 = vH("ToggleEquipPet", v.Uid, v.Name)
            local CR = CP_3 and type(CQ_1) == "table" and CQ_1.Success
            if CR then
                CM_4 += 1
                task.wait(0.1)
            end
        end
    end
    if CM_4 > 0 then
        wD("Equipped your best " .. math.min(CL_2, #CN_1) .. " pets")
    end
    wb(string.format("Best pet %s x%s", CN_1[1].Name, wt(CN_1[1].Multiplier)))
end
local function fn1047()
    return math.ceil(5000 * 2.8 ^ wK("Rebirths"))
end
local function fn1051(i1)
    if i1 then
        wf(wp, vU)
    else
        wd(wp)
    end
end
local function fn1052()
    local Spins = vK().Spins
    if #Spins == 0 then
        return nil
    end
    local Ev = 0
    for i, v in ipairs(Spins) do
        Ev += v.Rarity
    end
    if Ev <= 0 then
        return Spins[math.random(#Spins)].Key
    end
    local Ew = math.random() * Ev
    local Ev_1 = 0
    for i, v in ipairs(Spins) do
        Ev_1 += v.Rarity
        if Ew <= Ev_1 then
            return v.Key
        end
    end
    return Spins[#Spins].Key
end
local function fn1085(gV)
    if gV then
        wf(wQ, wy)
    else
        wd(wQ)
    end
end
local function fn1087(g_, g0)
    wQ.targets = wM(g_, g0)
end
local function fn1091(X)
    return type(X) == "function"
end
local function fn1109()
    local Cl = wG()
    local Cl_2
    if #Cl == 0 then
        wb("The fart list is not available")
        return
    end
    local Cm = we("Fart_Unlocked")
    local Cm_1
    local targets = wQ.targets
    if next(targets) ~= nil then
        local Co_1 = false
        for i, v in ipairs(Cl) do
            if targets[v.Name] and v.Index > Cm then
                Co_1 = true
                break
            end
        end
        if not Co_1 then
            wb("Every selected fart power is owned")
            return
        end
    end
    local Cn_1 = Cl[Cm + 1]
    if not Cn_1 then
        wb("Every fart power is already owned")
        return
    end
    local Cl_1 = we("Cash")
    if Cl_1 < Cn_1.Cost then
        wb(string.format("%s costs %s cash, %s now", Cn_1.Name, wt(Cn_1.Cost), wt(Cl_1)))
        return
    end
    Cl_2, Cm_1 = vH("StatsChangeEvents.FartPurchase", Cn_1.Entry)
    local Co_2 = not Cl_2 or type(Cm_1) ~= "table"
    if Co_2 then
        wb("The server refused " .. Cn_1.Name)
        return
    end
    task.wait(0.3)
    local Cz = if we("Fart_Unlocked") >= Cn_1.Index then 1 else 0
    if Cz == 1 then
        wD("Bought " .. Cn_1.Name)
        wb("Bought " .. Cn_1.Name)
    else
        wb("Could not buy " .. Cn_1.Name)
    end
end
local function fn1139()
    local A6 = if not vR("DoorEvents.RequestDoorDamage", "RemoteFunction") then 1 else 0
    if A6 == 1 then
        wb("The door remote is not available")
        return
    end
    local AZ = wT()
    if State.DoorIndex < 1 or State.DoorIndex > AZ then
        State.DoorIndex = 1
    end
    local A__1 = State.DoorIndex
    local A0 = v8(A__1)
    if A0 and A0.success then
        State.DoorMisses = 0
        if A0.doorDestroyed then
            State.DoorIndex = A__1 + 1
            if State.DoorIndex > AZ then
                State.DoorIndex = 1
                wb("Cleared door " .. A__1 .. ", starting the run again")
            else
                wb("Broke door " .. A__1 .. "/" .. AZ)
            end
        else
            local A1_1 = tonumber(A0.healthLeft)
            local format = string.format
            local A2 = A1_1 and wt(A1_1)
            local A1_2 = A2 or "some"
            wb(format("Door %d/%d, %s health left", A__1, AZ, A1_2))
        end
        return
    end
    State.DoorMisses = State.DoorMisses + 1
    if State.DoorMisses >= 6 then
        State.DoorMisses = 0
        wb("Looking for the current door")
        if not wO() then
            wb("No door accepted damage, waiting")
        end
    end
end
local function fn1142()
    local zh = v6()
    local DoorCounts = vK().DoorCounts
    return zh and DoorCounts[zh] or 50
end
local function fn1152(fJ)
    vQ.stand = fJ == true
end
local function fn1177()
    local z2 = {}
    local TrainningArea = wS:FindFirstChild("TrainningArea")
    if not TrainningArea then
        return z2
    end
    for i, child in ipairs(TrainningArea:GetChildren()) do
        local Plate = child:FindFirstChild("Plate")
        local z4 = Plate and Plate:IsA("BasePart")
        if z4 then
            table.insert(z2, { Name = child.Name, Plate = Plate })
        end
    end
    table.sort(z2, function(dn, dp)
        return dn.Name < dp.Name
    end)
    return z2
end
local function fn1178(i6)
    local Em = tonumber(i6) or 30
    wp.interval = math.max(Em, 5)
end
local function fn1181(gs)
    if gs then
        wf(wW, vS)
    else
        wd(wW)
    end
end
local function fn1196()
    local DayReward = LocalPlayer:FindFirstChild("DayReward")
    local LastClaimTime = LocalPlayer:FindFirstChild("LastClaimTime")
    if not DayReward or not LastClaimTime then
        return nil
    end
    local D8_1 = tonumber(DayReward.Value) or 1
    local D6_1 = (tonumber(LastClaimTime.Value))
    local Ed = if D6_1 then 1 else 0
    local Eb = 497 * Ed + 3254 * (1 - Ed)
    local Ec = 2287 * Ed + 1982 * (1 - Ed)
    if not ((Eb * 2762 + Ec * 1010 + Eb * Ec) % 16777213 == 4819223) then
        D6_1 = 0
    end
    return D8_1, D6_1
end
local function fn1219()
    local Areas = vK().Areas
    local zf = Areas[we("Equipped_Area")] or Areas[1]
    return zf
end
local function fn1241(il)
    local DJ = tonumber(il) or 2
    wB.interval = math.max(DJ, 0.5)
end
local function fn1247()
    local zQ_1
    local zP_1
    zP_1, zQ_1 = { wo }, {}
    for i, v in ipairs(vK().Spins) do
        local Amount = v.Amount
        local Reward = v.Reward
        local zU = type(Amount) == "number" and wt(Amount)
        local zV = zU or tostring(Amount)
        local zR_1 = string.format("%s +%s", Reward, zV)
        table.insert(zP_1, zR_1)
        zQ_1[zR_1] = v.Key
    end
    return zP_1, zQ_1
end
local function fn1254(eO)
    if eO then
        State.DoorMisses = 0
        wf(v0, wR)
    else
        wd(v0)
    end
end
local function fn1269()
    gethui = wU
end
local function fn1275()
    local BZ_1
    local BX = vJ()
    local BY = we("FartPower")
    local BY_1
    if BY < BX then
        wb(string.format("Rebirth at %s fart power, %s now", wt(BX), wt(BY)))
        return
    end
    local BX_1 = wK("Rebirths")
    BY_1, BZ_1 = vH("StatsChangeEvents.Rebirth")
    local B_ = not BY_1 or type(BZ_1) ~= "table" or BZ_1.success ~= true
    if B_ then
        wb("The server refused the rebirth")
        return
    end
    task.wait(0.5)
    local BY_2 = wK("Rebirths")
    if BY_2 > BX_1 then
        wD("Rebirthed, now at " .. BY_2)
        wb("Rebirthed, now at " .. BY_2)
    end
end
local function fn1284(f6)
    local B3 = tonumber(f6) or 5
    vL.interval = math.max(B3, 1)
end
vG = nil
vH = nil
vI = nil
vJ = nil
vK = nil
vL = nil
vM = nil
vN = nil
LocalPlayer = nil
vP = nil
vQ = nil
vR = nil
vS = nil
vT = nil
vU = nil
vV = nil
vW = nil
vX = nil
v0 = nil
v1 = nil
v3 = nil
v5 = nil
v6 = nil
v8 = nil
v9 = nil
wa = nil
wb = nil
wc = nil
wd = nil
we = nil
wf = nil
CoreGui = nil
wi = nil
wk = nil
wl = nil
wn = nil
wo = nil
wp = nil
wq = nil
local Players, vY, Workspace, v_, Lighting, v4, TeleportService, wh, wj, GuiService, HttpService
ws = nil
wt = nil
wu = nil
wv = nil
ww = nil
wy = nil
wz = nil
wB = nil
wD = nil
wE = nil
wF = nil
wG = nil
wH = nil
wK = nil
wL = nil
wM = nil
State = nil
wO = nil
wP = nil
wQ = nil
wR = nil
wS = nil
wT = nil
wU = nil
wW = nil
local VirtualUser, wA, UserInputService, wI, RunService, wV
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, Workspace, LocalPlayer, wU = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
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
local wY = "OuroborosFartBreakDoors"
local wY_1
wU = fn1015
if getgenv then
    getgenv().gethui = wU
end
wu, vG, wS, State, v_, v4, vW, wD, wb, vR, wq, vH, we, wK, v3, wV, wt, vV = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn1269)
local function w0(t)
    local xm
    local xk
    local xl
    xk = nil
    xl = nil
    xm = nil
    local xn = t ~= ""
    local xo = type(t) == "string" and xn
    assert(xo, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    xk = getgenv()
    assert(type(xk) == "table", "getgenv did not return a table")
    local xn_1 = xk[t]
    if xn_1 ~= nil then
        local xo_1 = type(xn_1) == "table" and type(xn_1.Unload) == "function"
        assert(xo_1, "Namespace is occupied")
        xn_1.Unload()
        assert(xk[t] == nil, "Previous instance did not release its namespace")
    end
    xl = {}
    xm = { State = {}, Unloaded = false }
    xm.Track = function(z)
        assert(type(z) == "function", "Cleanup must be callable")
        if xm.Unloaded then
            z()
        else
            table.insert(xl, z)
        end
        return z
    end
    xm.Unload = function()
        local xd_1
        local xc_1
        if xm.Unloaded then
            return
        end
        xm.Unloaded = true
        local xa = {}
        local xh = #xl
        local xg = -1
        while false and xh <= 1 or true and xh >= 1 do
            local xi = xh
            local xb_1 = table.remove(xl, xi)
            xc_1, xd_1 = pcall(xb_1)
            if not xc_1 then
                table.insert(xa, tostring(xd_1))
            end
            xh += xg
        end
        table.clear(xm.State)
        if #xa > 0 then
            error("Cleanup incomplete: " .. table.concat(xa, "; "), 0)
        end
        if xk[t] == xm then
            xk[t] = nil
        end
    end
    xk[t] = xm
    return xm
end
v_ = function(M, N)
    local xr = type(M) == "table" and type(M.Track) == "function"
    assert(xr, "FeatureAPI required")
    local xr_1 = type(N) == "table" and type(N.OnUnload) == "function"
    assert(xr_1, "UI library required")
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
if ((wD or wV) and (State and v3) or (not wV or not wV) and (not wV and State)) and (not wD and not wD or (wV or State) or (not v3 or wD or not v3 and not wD)) and not (((wD or wV) and (State and v3) or (not wV or not wV) and (not wV and State)) and (not wD and not wD or (wV or State) or (not v3 or wD or not v3 and not wD))) then
    wu(w0)
else
    wu = w0(wY)
end
v4 = fn1091
vW = fn744
vG = fn336(ReplicatedStorage)
wS = fn336(Workspace)
State = wu.State
State.Notifications = {}
State.Status = "Idle"
State.Catalog = nil
State.DoorIndex = 1
State.DoorMisses = 0
wD = fn754
wb = fn409
vR = fn497
wq = function(at, ...)
    local xI
    local xH
    xH = nil
    xI = nil
    xI = vR(at, "RemoteEvent")
    if not xI then
        return false
    end
    xH = table.pack(...)
    return (pcall(function()
        xI:FireServer(table.unpack(xH, 1, xH.n))
    end))
end
vH = function(aA, ...)
    local xO
    local xN
    xN = nil
    xO = nil
    xO = vR(aA, "RemoteFunction")
    if not xO then
        return false, "remote unavailable"
    end
    xN = table.pack(...)
    local xP = table.pack(pcall(function()
        return xO:InvokeServer(table.unpack(xN, 1, xN.n))
    end))
    if not xP[1] then
        return false, "remote rejected"
    end
    return true, table.unpack(xP, 2, xP.n)
end
we = fn88
wK = fn434
v3 = fn603
wV = fn231
wt = fn1004
vV = fn178
wL = nil
wL = false
task.spawn(worker)
local w2 = os.clock() + 15
while true do
    local wX = not wL and os.clock() < w2
    if wX then
        task.wait(0.05)
        continue
    end
    break
end
vP, wo, v0, vQ, vL, wW, wQ, wH, wB, ww, wp, wl, vK, wG, wv, wk, v6, wT, wh, wI, vY, wj, wn, wA, v9, wM, wf, wd, v8, wO, wR, vN, wE, vM, vI, vJ, wP, vS, wy, wa, v5, ws, v1, wF, vT, wi, vU, wz, vX, wc, wY_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
vP = { Farts = {}, Foods = {}, Eggs = {}, Areas = {}, DoorCounts = {}, Spins = {}, Playtime = {} }
vK = fn489
wG = fn568
wv = fn283
wk = fn314
v6 = fn1219
wT = fn1142
wh = fn365
wI = fn66
vY = fn298
wo = "Random"
wj = fn1247
wn = fn1177
if vJ and not wP and false or false and not vJ and (not vJ or not vJ) or not (vJ and not wP and false or false and not vJ and (not vJ or not vJ)) then
    wA = fn199
    v9 = fn697
    wM = fn131
else
    wM = fn199
    wA = fn697
    v9 = fn131
end
v0 = { interval = 0.15 }
vQ = { interval = 1, plate = nil, stand = true }
if (not wY_1 and wY_1 or (wA or not wY_1)) and (wY_1 and wY_1 or (wY_1 or wA)) or not ((not wY_1 and wY_1 or (wA or not wY_1)) and (wY_1 and wY_1 or (wY_1 or wA))) then
    vL = { interval = 5 }
else
    wA = { interval = 5 }
end
wW = { interval = 3, targets = {} }
wQ = { interval = 3, targets = {} }
wH = { interval = 10 }
wB = { interval = 2, egg = nil, amount = 1 }
ww = { interval = 15 }
wp = { interval = 30 }
wl = { interval = 1.5, reward = nil }
wf = function(dV, dW)
    local generation
    local AI = dV.generation or 0
    dV.generation = AI + 1
    dV.stopped = false
    generation = dV.generation
    task.spawn(function()
        local AF_1
        while true do
            local AE = vW() and not dV.stopped and dV.generation == generation
            local AE_1
            if AE then
                AE_1, AF_1 = pcall(dW)
                if not AE_1 then
                    warn("[Ouroboros] loop error: " .. tostring(AF_1))
                end
                local AE_2 = not vW() or dV.stopped or dV.generation ~= generation
                if AE_2 then
                    break
                end
                task.wait(dV.interval)
                continue
            end
            break
        end
    end)
end
wd = fn999
wu.Track(fn756)
v8 = fn560
wO = fn490
wR = fn1139
v0.SetEnabled = fn1254
v0.SetDelay = fn983
vN = function(eX)
    if v4(fireproximityprompt) then
        if pcall(fireproximityprompt, eX) then
            return true
        end
        return (pcall(function()
            eX:InputHoldBegin()
            local Bg = tonumber(eX.HoldDuration) or 0
            task.wait(math.max(Bg, 0) + 0.15)
            eX:InputHoldEnd()
        end))
    end
    return (pcall(function()
        eX:InputHoldBegin()
        local Bg = tonumber(eX.HoldDuration) or 0
        task.wait(math.max(Bg, 0) + 0.15)
        eX:InputHoldEnd()
    end))
end
wE = fn579
vM = function(e9)
    local BA = v3()
    if not BA then
        return false
    elseif (BA.Position - e9.Position).Magnitude <= 8 then
        return true
    else
        local BB = pcall(function()
            BA.CFrame = CFrame.new(e9.Position + Vector3.new(0, 4, 0))
            BA.AssemblyLinearVelocity = Vector3.zero
        end)
        if not BB then
            return false
        end
        local BB_1 = os.clock() + 4
        while true do
            local BC = vW() and os.clock() < BB_1
            if BC then
                task.wait(0.15)
                local BC_1 = wV()
                if BC_1 and BC_1.FloorMaterial ~= Enum.Material.Air then
                    return true
                end
                continue
            end
            break
        end
        return false
    end
end
vI = fn374
vQ.SetEnabled = fn563
vQ.SetPlate = fn51
vQ.SetStand = fn1152
vJ = fn1047
wP = fn1275
vL.SetEnabled = fn408
vL.SetDelay = fn1284
vS = fn891
wW.SetEnabled = fn1181
wW.SetTargets = fn57
wy = fn1109
wQ.SetEnabled = fn1085
wQ.SetTargets = fn1087
wa = fn212
v5 = fn1027
wH.SetEnabled = fn405
wH.SetDelay = fn321
ws = fn882
v1 = fn1012
wB.SetEnabled = fn968
wB.SetEgg = fn204
wB.SetAmount = fn617
wB.SetDelay = fn1241
wF = fn427
vT = fn872
ww.SetEnabled = fn35
ww.SetDelay = fn214
wi = fn1196
vU = fn65
wp.SetEnabled = fn1051
wp.SetDelay = fn1178
wz = fn657
vX = fn1052
wc = fn964
wl.SetEnabled = fn50
wl.SetReward = fn244
wl.SetDelay = fn250
local function wY_2()
    local JP
    local onDiscord
    local JJ
    JJ = nil
    onDiscord = nil
    JP = nil
    local ThemeManager, Options, JE, JF, JG, JH, Library, Toggles, JL, JM, JO, JQ, SaveManager, JS, JT, JU, JV, JW, JX
    JE = "+1 Fart to Break Doors"
    JG = "https://rscripts.net/@Ouroboros"
    JW = "https://ouroboros-hub-rbx.web.app/"
    JP = "https://discord.gg/synapsex"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    v_(wu, Library)
    JS, JL = wh()
    JT, JM = wI()
    JU, JO = vY()
    JV = wA()
    JH, JX = wj()
    JQ = { "1x", "3x" }
    JJ = function(j7, j8)
        local E1 = v4(setclipboard) and setclipboard
        local E2 = E1
        if not E2 then
            local E1_1 = v4(toclipboard) and toclipboard
            E2 = E1_1 or nil
        end
        local E1_2 = E2
        if not E1_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local E2_1 = pcall(E1_2, j7)
        if E2_1 then
            Library:Notify(j8)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        JJ(JP, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = JP, Copyable = true }, "|", JE, "|", "v0.1" },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    JF = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function JY(kl)
        local DiscordGroup = kl:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    for k, v in JF do
        if k ~= "Info" then
            JY(v)
        end
    end
    local function JZ_1()
        local Fh
        Fh = nil
        local Label
        local DoorsGroup = JF.Main:AddLeftGroupbox("Doors", "door-open")
        Label = DoorsGroup:AddLabel(State.Status, true)
        DoorsGroup:AddDivider()
        DoorsGroup:AddToggle("AutoDoors", {
            Text = "Auto Break Doors",
            Default = false,
            Tooltip = "Sends the door damage remote for the door the server expects next, so you do not have to walk the level.",
            Callback = function(kx)
                v0.SetEnabled(kx)
            end
        })
        DoorsGroup:AddSlider("DoorDelay", {
            Text = "Hit Delay",
            Default = 0.15,
            Min = 0.05,
            Max = 2,
            Rounding = 2,
            Suffix = "s",
            Tooltip = "The server only accepts one hit every half second, extra calls are simply refused.",
            Callback = function(kB)
                v0.SetDelay(kB)
            end
        })
        local TrainingGroup = JF.Main:AddLeftGroupbox("Training", "dumbbell")
        TrainingGroup:AddToggle("AutoTrain", {
            Text = "Auto Train",
            Default = false,
            Tooltip = "Triggers the plate prompt and restarts it whenever training stops.",
            Callback = function(kE)
                vQ.SetEnabled(kE)
            end
        })
        local Fk = JV[1] or ""
        TrainingGroup:AddDropdown("TrainPlate", {
            Text = "Training Plate",
            Values = JV,
            Default = Fk,
            Multi = false,
            AllowNull = true,
            Tooltip = "Leave this empty to use the first plate nobody is standing on.",
            Callback = function(kJ)
                vQ.SetPlate(kJ)
            end
        })
        TrainingGroup:AddToggle("TrainStand", {
            Text = "Stand On Plate",
            Default = true,
            Tooltip = "Moves you onto the plate, the prompt only fires when you are within its range.",
            Callback = function(kL)
                vQ.SetStand(kL)
            end
        })
        local RewardsGroup = JF.Main:AddLeftGroupbox("Rewards", "gift")
        RewardsGroup:AddToggle("AutoPlaytime", {
            Text = "Auto Claim Rewards",
            Default = false,
            Tooltip = "Claims every playtime reward as soon as its timer finishes.",
            Callback = function(kO)
                ww.SetEnabled(kO)
            end
        })
        RewardsGroup:AddSlider("PlaytimeDelay", {
            Text = "Reward Check Delay",
            Default = 15,
            Min = 1,
            Max = 120,
            Rounding = 0,
            Suffix = "s",
            Callback = function(kS)
                ww.SetDelay(kS)
            end
        })
        RewardsGroup:AddToggle("AutoDaily", {
            Text = "Auto Claim Daily Rewards",
            Default = false,
            Tooltip = "Claims the daily reward once the twenty four hour cooldown is over.",
            Callback = function(kU)
                wp.SetEnabled(kU)
            end
        })
        RewardsGroup:AddDivider("Spin Wheel")
        RewardsGroup:AddToggle("AutoSpin", {
            Text = "Auto Spin Wheel",
            Default = false,
            Tooltip = "Spends your spins one at a time, the reward is chosen on the client.",
            Callback = function(kY)
                wl.SetEnabled(kY)
            end
        })
        RewardsGroup:AddDropdown("SpinReward", {
            Text = "Spin Reward",
            Values = JH,
            Default = JH[1],
            Multi = false,
            AllowNull = false,
            Tooltip = "Random rolls the same odds the game uses, a named reward asks the server for that one every time.",
            Callback = function(k2)
                wl.SetReward(k2, JX)
            end
        })
        RewardsGroup:AddSlider("SpinDelay", {
            Text = "Spin Delay",
            Default = 1.5,
            Min = 0.5,
            Max = 15,
            Rounding = 1,
            Suffix = "s",
            Callback = function(k6)
                wl.SetDelay(k6)
            end
        })
        local ProgressGroup = JF.Main:AddRightGroupbox("Progress", "trending-up")
        ProgressGroup:AddToggle("AutoRebirth", {
            Text = "Auto Rebirth",
            Default = false,
            Tooltip = "Rebirths as soon as your fart power reaches the requirement.",
            Callback = function(k9)
                vL.SetEnabled(k9)
            end
        })
        ProgressGroup:AddSlider("RebirthDelay", {
            Text = "Rebirth Check Delay",
            Default = 5,
            Min = 1,
            Max = 60,
            Rounding = 0,
            Suffix = "s",
            Callback = function(ld)
                vL.SetDelay(ld)
            end
        })
        local ShopsGroup = JF.Main:AddRightGroupbox("Shops", "shopping-cart")
        ShopsGroup:AddToggle("AutoFood", {
            Text = "Auto Buy Food",
            Default = false,
            Tooltip = "Buys the next food in the list and equips it, foods unlock in order.",
            Callback = function(lg)
                wW.SetEnabled(lg)
            end
        })
        ShopsGroup:AddDropdown("FoodTargets", {
            Text = "Foods",
            Values = JT,
            Default = {},
            Multi = true,
            AllowNull = true,
            Tooltip = "Buying stops once every ticked food is owned, leave everything unticked to keep buying.",
            Callback = function(ll)
                wW.SetTargets(ll, JM)
            end
        })
        ShopsGroup:AddDivider("Fart Powers")
        ShopsGroup:AddToggle("AutoFarts", {
            Text = "Auto Buy Fart Powers",
            Default = false,
            Tooltip = "Buys the next fart power when you can afford it, the server equips it for you.",
            Callback = function(lp)
                wQ.SetEnabled(lp)
            end
        })
        ShopsGroup:AddDropdown("FartTargets", {
            Text = "Fart Powers",
            Values = JS,
            Default = {},
            Multi = true,
            AllowNull = true,
            Tooltip = "Buying stops once every ticked fart power is owned, cheaper ones are still bought first because they unlock in order.",
            Callback = function(lu)
                wQ.SetTargets(lu, JL)
            end
        })
        local PetsGroup = JF.Main:AddRightGroupbox("Pets", "paw-print")
        PetsGroup:AddToggle("AutoEquipPets", {
            Text = "Auto Equip Best Pet",
            Default = false,
            Tooltip = "Keeps your highest multiplier pets equipped up to your slot limit.",
            Callback = function(lz)
                wH.SetEnabled(lz)
            end
        })
        PetsGroup:AddSlider("PetDelay", {
            Text = "Equip Check Delay",
            Default = 10,
            Min = 1,
            Max = 120,
            Rounding = 0,
            Suffix = "s",
            Callback = function(lD)
                wH.SetDelay(lD)
            end
        })
        PetsGroup:AddDivider("Eggs")
        PetsGroup:AddToggle("AutoEggs", {
            Text = "Auto Buy Eggs",
            Default = false,
            Tooltip = "Hatches the selected egg whenever you can afford it.",
            Callback = function(lF)
                wB.SetEnabled(lF)
            end
        })
        local Fk_1 = JU[1]
        local Fo = if Fk_1 then 1 else 0
        local Fm = 1228 * Fo + 2451 * (1 - Fo)
        local Fn = 2884 * Fo + 1119 * (1 - Fo)
        if not ((Fm * 1569 + Fn * 454 + Fm * Fn) % 16777213 == 6777620) then
            Fk_1 = ""
        end
        PetsGroup:AddDropdown("EggChoice", {
            Text = "Egg",
            Values = JU,
            Default = Fk_1,
            Multi = false,
            AllowNull = true,
            Tooltip = "Eggs outside your unlocked world are refused by the server.",
            Callback = function(lK)
                wB.SetEgg(lK, JO)
            end
        })
        PetsGroup:AddDropdown("EggAmount", {
            Text = "Amount",
            Values = JQ,
            Default = JQ[1],
            Multi = false,
            AllowNull = false,
            Tooltip = "Three at a time needs the triple hatch gamepass, otherwise the server refuses it.",
            Callback = function(lP)
                wB.SetAmount(lP)
            end
        })
        PetsGroup:AddSlider("EggDelay", {
            Text = "Hatch Delay",
            Default = 2,
            Min = 0.5,
            Max = 30,
            Rounding = 1,
            Suffix = "s",
            Callback = function(lR)
                wB.SetDelay(lR)
            end
        })
        Fh = task.spawn(function()
            while not Library.Unloaded do
                pcall(function()
                    local l6 = string.format("Cash %s  |  Power %s  |  Rebirths %d  |  Doors %d", wt(we("Cash")), wt(we("FartPower")), wK("Rebirths"), we("Doorbroken"))
                    Label:SetText(l6 .. "  |  " .. tostring(State.Status))
                end)
                local Fc = false
                repeat
                    local E8
                    if State.Notifications and #State.Notifications > 0 then
                        E8 = table.remove(State.Notifications, 1)
                        pcall(function()
                            Library:Notify(E8.text, E8.time)
                        end)
                    else
                        Fc = true
                    end
                until Fc
                task.wait(0.3)
            end
        end)
        wu.Track(function()
            local Fg = if coroutine.status(Fh) ~= "dead" then 1 else 0
            if Fg == 1 then
                pcall(task.cancel, Fh)
            end
        end)
    end
    JZ_1()
    local function JY_1()
        local FN
        local FF
        local FD
        local FM
        FD = nil
        FF = nil
        FM = nil
        FN = nil
        local FB, FC, Label, FG, FH, FI, FJ, Label3, Label2
        FD = function(mk)
            return (tostring(mk):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        FN = function(mm, mn)
            return string.format('<font color="%s">%s</font>', mn, FD(mm))
        end
        FH = function(mq, mr, ms)
            return string.format("<b>%s</b> %s %s", mq, FN("-", "#5a6070"), FN(mr, ms))
        end
        FB = "#7fd47f"
        FJ = "#e8a34d"
        local FO = "#8b93a3"
        local FP = {}
        local FQ = "#6ec1ff"
        local FW = if not vR("DoorEvents.RequestDoorDamage", "RemoteFunction") then 1 else 0
        if FW == 1 then
            table.insert(FP, "doors")
        end
        if not vR("StatsChangeEvents.Rebirth", "RemoteFunction") then
            table.insert(FP, "rebirths")
        end
        if not vR("StatsChangeEvents.FoodPurchase", "RemoteFunction") then
            table.insert(FP, "food")
        end
        if not vR("StatsChangeEvents.FartPurchase", "RemoteFunction") then
            table.insert(FP, "fart powers")
        end
        if not vR("TryPurchaseHatch", "RemoteFunction") then
            table.insert(FP, "eggs")
        end
        if not vR("ToggleEquipPet", "RemoteFunction") then
            table.insert(FP, "pets")
        end
        if not v4(fireproximityprompt) then
            table.insert(FP, "training")
        end
        local FR = #FP == 0 and "ready"
        local FS = FR or "limited: " .. table.concat(FP, ", ")
        FI = "Unknown"
        pcall(function()
            local Fq_1
            local Fp_1
            if v4(identifyexecutor) then
                Fq_1, Fp_1 = identifyexecutor()
                local Fr = Fq_1 ~= ""
                local Fs = type(Fq_1) == "string" and Fr
                if Fs then
                    local Fr_1 = type(Fp_1) == "string" and Fp_1 ~= "" and Fq_1 .. " " .. Fp_1
                    FI = Fr_1 or Fq_1
                end
            end
        end)
        FM = os.clock()
        FG = function()
            local Fu = math.floor(os.clock() - FM)
            if Fu < 60 then
                return Fu .. "s"
            elseif Fu < 3600 then
                return string.format("%dm %ds", Fu // 60, Fu % 60)
            else
                return string.format("%dh %dm", Fu // 3600, Fu % 3600 // 60)
            end
        end
        local UserGroup = JF.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(FH("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, FB), true)
        UserGroup:AddLabel(FH("UserId", tostring(LocalPlayer.UserId), FQ), true)
        UserGroup:AddLabel(FH("Executor", FI .. "  " .. FS, FB), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(FH("Session", FG(), FJ), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                JJ(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                JJ("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = JF.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(FH("Game", JE, FQ), true)
        Label2 = SessionGroup:AddLabel(FH("Players", "0/0", FB), true)
        FC = tostring(game.JobId)
        local FQ_1 = #FC > 18 and string.sub(FC, 1, 18) .. "..."
        local FR_2 = FQ_1
        local FZ = if FR_2 then 1 else 0
        local FX = 3604 * FZ + 1947 * (1 - FZ)
        local FY = 3398 * FZ + 67 * (1 - FZ)
        if not ((FX * 3088 + FY * 1726 + FX * FY) % 16777213 == 12463279) then
            FR_2 = FC
        end
        local FQ_2 = FR_2
        SessionGroup:AddLabel(FH("Job", FQ_2, FO), true)
        Label = SessionGroup:AddLabel(FH("Ping", "0 ms", FJ), true)
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
                JJ(FC, "Copied Job ID")
            end
        })
        FF = task.spawn(function()
            local Fx_1
            local Fw_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(FH("Session", FG(), FJ))
                Label2:SetText(FH("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), FB))
                Fw_1, Fx_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local Fw_2 = Fw_1 and Fx_1 .. " ms" or "n/a"
                Label:SetText(FH("Ping", Fw_2, FJ))
            end
        end)
        wu.Track(function()
            if coroutine.status(FF) ~= "dead" then
                task.cancel(FF)
            end
        end)
        local SocialsGroup = JF.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                JJ(JG, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                JJ(JW, "Copied website link")
            end
        })
    end
    JY_1()
    local function JY_2()
        local nF
        local nI
        local nG
        local nH
        local MovementGroup = JF.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = JF.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        nH = {}
        nI = {}
        nG = {}
        nF = {}
        local nE = {}
        local function nJ()
            for k, v in nF do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(nF)
        end
        local function nN()
            for k, v in nG do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(nG)
        end
        local function nR()
            for k, v in nH do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(nH)
        end
        local function nV(nW)
            local Gn = if not nW:IsA("ProximityPrompt") then 1 else 0
            if Gn == 1 then
                return
            end
            if nI[nW] == nil then
                nI[nW] = {
                    HoldDuration = nW.HoldDuration,
                    MaxActivationDistance = nW.MaxActivationDistance,
                    RequiresLineOfSight = nW.RequiresLineOfSight
                }
            end
            nW.HoldDuration = 0
            nW.MaxActivationDistance = 50
            nW.RequiresLineOfSight = false
        end
        local function nY()
            for k, v in nI do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(nI)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                nR()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                nN()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                nJ()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                    pcall(nV, v)
                end
            else
                nY()
            end
        end)
        table.insert(nE, Workspace.DescendantAdded:Connect(function(og)
            if Toggles.InstantProximityPrompt.Value then
                nV(og)
            end
        end))
        table.insert(nE, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if nF[v] == nil then
                        nF[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(nE, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local GT = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and GT then
                GT:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(nE, RunService.RenderStepped:Connect(function(oF)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local GZ = Character and Character:FindFirstChildOfClass("Humanoid")
            local G_ = Character
            if G_ then
                G_ = Character:FindFirstChild("HumanoidRootPart")
            end
            local GY_1 = G_
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and GZ then
                if nG[GZ] == nil then
                    nG[GZ] = GZ.WalkSpeed
                end
                GZ.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and GY_1 and GZ and CurrentCamera then
                if nH[GZ] == nil then
                    nH[GZ] = GZ.PlatformStand
                end
                GZ.PlatformStand = true
                local G__4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        G__4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        G__4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        G__4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        G__4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        G__4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        G__4 -= Vector3.new(0, 1, 0)
                    end
                end
                GY_1.AssemblyLinearVelocity = Vector3.zero
                if G__4.Magnitude > 0 then
                    GY_1.CFrame = GY_1.CFrame + G__4.Unit * Options.FlySpeed.Value * oF
                end
            end
        end))
        wu.Track(function()
            for k, v in nE do
                v:Disconnect()
            end
            nJ()
            nN()
            nR()
            nY()
        end)
    end
    JY_2()
    local function JY_3()
        local If, Ig, Ih, Ii, Ij, Ik, Il, Im, In, Label, Ip, Iq, Ir, Is
        Ip = {}
        Ij = {}
        Ig = nil
        Ih = 0
        Ir = 0
        Il = false
        Im = os.clock()
        local MenuGroup = JF.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        Is = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local Hk = not CurrentCamera or not v4(VirtualUser.CaptureController) or not v4(VirtualUser.ClickButton2)
            if Hk then
                return false
            end
            local Hk_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not Hk_1 then
                return false
            end
            Ih += 1
            Im = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. Ih)
            end)
            return true
        end
        In = function(po)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not po)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not po
                end
            end)
            if not po then
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
        Ik = function(pE)
            if pE.ClassName == "ParticleEmitter" or pE.ClassName == "Trail" or pE.ClassName == "Smoke" or pE.ClassName == "Fire" or pE.ClassName == "Sparkles" or pE.ClassName == "Explosion" or pE.ClassName == "Beam" then
                if Ip[pE] == nil then
                    Ip[pE] = pE.Enabled
                end
                pcall(function()
                    pE.Enabled = false
                end)
            end
        end
        Ii = function()
            for k, v in Ip do
                local Hw = k
                local Hy = v
                if Hw.Parent then
                    pcall(function()
                        Hw.Enabled = Hy
                    end)
                end
            end
            table.clear(Ip)
            if Ig then
                pcall(function()
                    settings().Rendering.QualityLevel = Ig.Quality
                end)
                Lighting.GlobalShadows = Ig.Shadows
                Lighting.FogEnd = Ig.Fog
                Ig = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(pT)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not pT)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(pY)
                if pY then
                    if not Ig then
                        Ig = {
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
                        pcall(Ik, v)
                    end
                else
                    Ii()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        In(true)
        local ScriptGroup = JF.Settings:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            In(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            In(true)
        end
        table.insert(Ij, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                Is()
            end
        end))
        table.insert(Ij, Workspace.DescendantAdded:Connect(function(qg)
            if Toggles.FpsBoost.Value then
                Ik(qg)
            end
        end))
        If = function(qk)
            if Il or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            Il = true
            local HO = Ir
            local HP_1 = pcall(function()
                if qk then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not HP_1 then
                Il = false
                if not qk and HO == Ir then
                    task.delay(1.5, function()
                        if HO == Ir then
                            If(true)
                        end
                    end)
                end
            end
        end
        table.insert(Ij, TeleportService.TeleportInitFailed:Connect(function(qC)
            local HW
            if qC == LocalPlayer and Il then
                Il = false
                HW = Ir
                task.delay(3, function()
                    if HW == Ir then
                        If(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local H0 = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not H0 then
                return
            end
            table.insert(Ij, H0.ChildAdded:Connect(function(qR)
                if qR.Name == "ErrorPrompt" then
                    If(false)
                end
            end))
        end)
        Iq = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    In(true)
                end
                local H6 = Toggles.AntiAfk.Value and os.clock() - Im >= 60
                if H6 then
                    Is()
                end
                task.wait(1)
            end
        end)
        wu.Track(function()
            Ir += 1
            for k, v in Ij do
                v:Disconnect()
            end
            pcall(task.cancel, Iq)
            In(false)
            Ii()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    JY_3()
    local function JY_4()
        local Jn, Jo, Jp, Jq
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(JF.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/FartToBreakDoors")
        local Jr = SaveManager:BuildConfigSection(JF.Settings)
        Jq = function(rh, ri)
            local Iw_1 = (rh == "Toggle" and Toggles or Options)[ri]
            local Iv_2 = type(Iw_1) == "table" and Iw_1.Type == rh
            local Iv_3 = Iv_2 and Iw_1
            local IE = if Iv_3 then 1 else 0
            local IC = 631 * IE + 684 * (1 - IE)
            local ID = 1113 * IE + 158 * (1 - IE)
            if not ((IC * 3954 + ID * 475 + IC * ID) % 16777213 == 3725952) then
                Iv_3 = nil
            end
            return Iv_3
        end
        Jo = function(rr, rs)
            local Type = rs.Type
            if Type == "Toggle" then
                return { idx = rr, type = "Toggle", value = rs.Value == true }
            elseif Type == "Slider" then
                return { idx = rr, type = "Slider", value = tostring(rs.Value) }
            elseif Type == "Dropdown" then
                return { idx = rr, type = "Dropdown", multi = rs.Multi == true, value = rs.Value }
            elseif Type == "Input" then
                local IG = rs.Value or ""
                return { idx = rr, type = "Input", text = tostring(IG) }
            elseif Type == "ColorPicker" then
                return { idx = rr, type = "ColorPicker", value = rs.Value:ToHex(), transparency = rs.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = rr,
                    type = "KeyPicker",
                    mode = rs.Mode,
                    key = rs.Value,
                    modifiers = rs.Modifiers,
                    toggled = rs.Toggled
                }
            else
                return nil
            end
        end
        Jn = function()
            local IJ = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local IK = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if IK then
                        local IK_1 = Jo(k, v)
                        if IK_1 then
                            IJ[#IJ + 1] = IK_1
                        end
                    end
                end
            end
            table.sort(IJ, function(rC, rD)
                if rC.type ~= rD.type then
                    return rC.type < rD.type
                end
                return rC.idx < rD.idx
            end)
            return { objects = IJ }
        end
        Jp = function(rF)
            local I2
            I2 = nil
            local I3 = type(rF) ~= "table" or type(rF.idx) ~= "string" or type(rF.type) ~= "string" or SaveManager.Ignore[rF.idx]
            if I3 then
                return false
            end
            I2 = Jq(rF.type, rF.idx)
            if not I2 then
                return false
            end
            local I3_1 = pcall(function()
                if rF.type == "Input" then
                    if type(rF.text) ~= "string" then
                        return
                    end
                    I2:SetValue(rF.text)
                elseif rF.type == "ColorPicker" then
                    I2:SetValueRGB(Color3.fromHex(rF.value), rF.transparency)
                elseif rF.type == "KeyPicker" then
                    I2:SetValue({ rF.key, rF.mode, rF.modifiers })
                    if rF.mode == "Toggle" and rF.toggled ~= nil then
                        I2.Toggled = rF.toggled
                        I2:Update()
                    end
                else
                    I2:SetValue(rF.value)
                end
            end)
            return I3_1
        end
        Jr:AddDivider()
        Jr:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        Jr:AddButton("Export Config to Clipboard", function()
            local I6_1
            local I5_1
            I5_1, I6_1 = pcall(HttpService.JSONEncode, HttpService, Jn())
            if I5_1 then
                local I5_2 = v4(setclipboard) and setclipboard
                local I7 = I5_2
                if not I7 then
                    local I5_3 = v4(toclipboard) and toclipboard
                    I7 = I5_3 or nil
                end
                local I5_4 = I7
                local I7_1 = type(I5_4) == "function" and pcall(I5_4, I6_1)
                if I7_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        Jr:AddButton("Import Config from Clipboard Text", function()
            local Jc_1
            local Ja = Options.SaveManager_ImportSource.Value or ""
            local Ja_1
            local Jb = tostring(Ja):match("^%s*(.-)%s*$")
            if Jb == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #Jb > 262144 then
                Library:Notify("That config is too large")
                return
            end
            Ja_1, Jc_1 = pcall(HttpService.JSONDecode, HttpService, Jb)
            local Jb_1 = not Ja_1 or type(Jc_1) ~= "table"
            local Jg = if Jb_1 then 1 else 0
            local Je = 742 * Jg + 1814 * (1 - Jg)
            local Jf = 3223 * Jg + 1819 * (1 - Jg)
            if not ((Je * 357 + Jf * 437 + Je * Jf) % 16777213 == 4064811) then
                Jb_1 = type(Jc_1.objects) ~= "table"
            end
            if Jb_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #Jc_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local Ja_2 = 0
            for i, v in ipairs(Jc_1.objects) do
                if Jp(v) then
                    Ja_2 += 1
                end
            end
            if Ja_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local Jc_2 = Ja_2 == 1 and ""
            local Jg_1 = if Jc_2 then 1 else 0
            local Je_1 = 2019 * Jg_1 + 1818 * (1 - Jg_1)
            local Jf_1 = 2182 * Jg_1 + 2814 * (1 - Jg_1)
            if not ((Je_1 * 3559 + Jf_1 * 2784 + Je_1 * Jf_1) % 16777213 == 888554) then
                Jc_2 = "s"
            end
            Library:Notify(("Imported %d setting%s"):format(Ja_2, Jc_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.DoorDelay then
            v0.SetDelay(Options.DoorDelay.Value)
        end
        if Options.TrainPlate then
            vQ.SetPlate(Options.TrainPlate.Value)
        end
        if Toggles.TrainStand then
            vQ.SetStand(Toggles.TrainStand.Value)
        end
        if Options.RebirthDelay then
            vL.SetDelay(Options.RebirthDelay.Value)
        end
        if Options.FoodTargets then
            wW.SetTargets(Options.FoodTargets.Value, JM)
        end
        if Options.FartTargets then
            wQ.SetTargets(Options.FartTargets.Value, JL)
        end
        if Options.PetDelay then
            wH.SetDelay(Options.PetDelay.Value)
        end
        if Options.EggChoice then
            wB.SetEgg(Options.EggChoice.Value, JO)
        end
        if Options.EggAmount then
            wB.SetAmount(Options.EggAmount.Value)
        end
        if Options.EggDelay then
            wB.SetDelay(Options.EggDelay.Value)
        end
        if Options.PlaytimeDelay then
            ww.SetDelay(Options.PlaytimeDelay.Value)
        end
        if Options.SpinReward then
            wl.SetReward(Options.SpinReward.Value, JX)
        end
        if Options.SpinDelay then
            wl.SetDelay(Options.SpinDelay.Value)
        end
        if Toggles.AutoDoors then
            v0.SetEnabled(Toggles.AutoDoors.Value)
        end
        if Toggles.AutoTrain then
            vQ.SetEnabled(Toggles.AutoTrain.Value)
        end
        if Toggles.AutoRebirth then
            vL.SetEnabled(Toggles.AutoRebirth.Value)
        end
        if Toggles.AutoFood then
            wW.SetEnabled(Toggles.AutoFood.Value)
        end
        if Toggles.AutoFarts then
            wQ.SetEnabled(Toggles.AutoFarts.Value)
        end
        if Toggles.AutoEquipPets then
            wH.SetEnabled(Toggles.AutoEquipPets.Value)
        end
        if Toggles.AutoEggs then
            wB.SetEnabled(Toggles.AutoEggs.Value)
        end
        if Toggles.AutoPlaytime then
            ww.SetEnabled(Toggles.AutoPlaytime.Value)
        end
        if Toggles.AutoDaily then
            wp.SetEnabled(Toggles.AutoDaily.Value)
        end
        if Toggles.AutoSpin then
            wl.SetEnabled(Toggles.AutoSpin.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    JY_4()
end
wY_2()
