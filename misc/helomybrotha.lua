local ClientDataManager
local xI
local xp
local xs
local xO
local w9
local CurrencyService
local xc
local wU
local xB
local UpgradesService
local xE
local xi
local w_
local xH
local UpgradesLibrary
local xo
local VariantsLibrary
local xr
local wN
local xQ
local wQ
local xx
local xb
local LocalPlayer
local xA
local w8
local BoxesLibrary
local xD
local wW
local wZ
local xk
local xh
local w1
local PlaytimeRewardsService
local w4
local HitboxUtils
local PlayerUnitService
local IndexRewardsService
local xa
local xw
local wS
local xd
local wV
local PlaytimeRewardsLibrary
local CollectionService
local xj
local function fn9()
    PlaytimeRewardsService = require(xB.Shared.Services.PlaytimeRewardsService)
end
local function worker13()
    while xO() do
        pcall(w9.Step)
        task.wait(w9.Delay)
    end
end
local function fn50(c3, c4)
    local As = {}
    for k in pairs(c3) do
        local At = c4[k] or k
        As[At] = true
    end
    return As
end
local function fn52(ij)
    xk.Enabled = ij == true
    local Ei = xk.Enabled and "Auto Upgrade Placed running" or "Auto Upgrade Placed idle"
    wZ.UpgradePlacedStatus = Ei
end
local function fn61()
    xw = require(xB.Shared.Services.DailyLoginService)
end
local function fn105(eo, ep)
    local eq = xI.EvaluateBuy(eo, ep)
    return eq
end
local function fn123(X)
    local y3 = typeof(cloneref) == "function" and typeof(X) == "Instance"
    if y3 then
        return cloneref(X)
    end
    return X
end
local function fn129(eV)
    local BE = { LocalPlayer:FindFirstChild("Backpack"), LocalPlayer.Character }
    for i, v in ipairs(BE) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                local BE_1 = child:IsA("Tool") and child:GetAttribute("InventoryType") == "Crate"
                if BE_1 then
                    eV(child)
                end
            end
        end
    end
end
local function fn162()
    CurrencyService = require(xB.Shared.Services.CurrencyService)
end
local function worker6()
    while xO() do
        pcall(wW.Step)
        task.wait(wW.Delay)
    end
end
local function fn226()
    IndexRewardsService = require(xB.Shared.Services.IndexRewardsService)
end
local function fn248(dN)
    xI.MaxCost = math.max(0, xr(dN))
end
local function fn262(bk, bl)
    return bk.index < bl.index
end
local function fn269()
    return not xc.Unloaded
end
local function fn274(bZ)
    local zm_1
    local zl = not HitboxUtils or not wQ(HitboxUtils.getInstPlot)
    local zl_1
    if zl then
        return nil
    end
    for i, v in ipairs(CollectionService:GetTagged(bZ)) do
        zl_1, zm_1 = pcall(HitboxUtils.getInstPlot, v)
        if zl_1 and zm_1 and zm_1.Name == LocalPlayer.Name then
            return v
        end
    end
    return nil
end
local function fn279(gt)
    wN.Enabled = gt == true
    local CP = wN.Enabled and "Auto Claim Index running" or "Auto Claim Index idle"
    wZ.IndexStatus = CP
end
local function fn297(i3)
    xd.Enabled = i3 == true
    local EV = xd.Enabled and "Auto Claim Rewards running" or "Auto Claim Rewards idle"
    wZ.RewardsStatus = EV
end
local function fn314(cZ)
    local Ap = cZ or ""
    local Aq = tostring(Ap):gsub("[,%s%$]", "")
    if Aq == "" then
        return 0
    end
    local Ap_1 = tonumber(Aq) or 0
    return Ap_1
end
local function fn366(b7, b8)
    local zw_1
    local zv = not HitboxUtils or not wQ(HitboxUtils.getInstPlot)
    local zv_1
    if zv then
        return
    end
    for i, v in ipairs(CollectionService:GetTagged(b7)) do
        zv_1, zw_1 = pcall(HitboxUtils.getInstPlot, v)
        if zv_1 and zw_1 and zw_1.Name == LocalPlayer.Name then
            b8(v)
        end
    end
end
local function fn370(fR)
    xx.Upgrades = w_(wS(fR), xH)
end
local function fn413()
    local zH_1
    local zF = ClientDataManager
    local zF_1
    local zG = {}
    if zF then
        zF = wQ(ClientDataManager.GetData)
    end
    if not zF then
        return zG
    end
    zF_1, zH_1 = pcall(ClientDataManager.GetData)
    local zI = zF_1 and type(zH_1) == "table" and type(zH_1.Inventory) == "table" and type(zH_1.Inventory.Boxes) == "table"
    if not zI then
        return zG
    end
    for k, v in zH_1.Inventory.Boxes do
        if type(v) == "table" then
            for k2, v in v do
                local zF_2 = type(v) == "table" and tonumber(v.Amount)
                local zH_2 = zF_2 or tonumber(v)
                local zF_3 = zH_2
                if zH_2 then
                    zH_2 = zF_3 > 0
                end
                if zH_2 then
                    table.insert(zG, { BoxName = k, Variant = k2, Amount = zF_3 })
                end
            end
        end
    end
    return zG
end
local function worker()
    while xO() do
        pcall(xD.Step)
        task.wait(xD.Delay)
    end
end
local function fn436(fM)
    xx.Enabled = fM == true
    local Ci = xx.Enabled and "Auto Upgrade running" or "Auto Upgrade idle"
    wZ.UpgradeStatus = Ci
end
local function fn468(jD)
    local Fm = tonumber(jD) or 0.8
    xD.Delay = math.max(0.2, Fm)
end
local function fn470(iT)
    local EL = tonumber(iT) or 3.2
    xj.Delay = math.max(3, EL)
end
local function fn490(hJ)
    w9.Enabled = hJ == true
    local DQ = w9.Enabled and "Auto Carry Boxes running" or "Auto Carry Boxes idle"
    wZ.CarryStatus = DQ
end
local function fn494()
    PlaytimeRewardsLibrary = require(xB.Shared.Core.Storage.Game.PlaytimeRewardsLibrary)
end
local function fn497(fP)
    local Co = tonumber(fP) or 0.6
    xx.Delay = math.max(0.2, Co)
end
local function worker7()
    while xO() do
        pcall(xa.Step)
        task.wait(xa.Delay)
    end
end
local function fn531(cT)
    local Ag = {}
    if type(cT) ~= "table" then
        return Ag
    end
    for k, v in pairs(cT) do
        local Ah = v == true and type(k) == "string"
        if Ah then
            Ag[k] = true
        elseif type(v) == "string" then
            Ag[v] = true
        end
    end
    return Ag
end
local function fn596()
    gethui = xQ
end
local function fn624(im)
    local El = tonumber(im) or 0.7
    xk.Delay = math.max(0.2, El)
end
local function fn625(dB)
    local AV = tonumber(dB) or 0.35
    xI.Delay = math.max(0.05, AV)
end
local function worker12()
    while xO() do
        pcall(xj.Step)
        task.wait(xj.Delay)
    end
end
local function fn644(dy)
    xI.Enabled = dy == true
    local AS = xI.Enabled and "Auto Buy running" or "Auto Buy idle"
    wZ.BuyStatus = AS
end
local function fn648()
    UpgradesService = require(xB.Shared.Services.UpgradesService)
end
local function fn649(dI)
    xI.Variants = w_(wS(dI), wV)
end
local function fn661(bQ)
    local zj_1
    local zi = tonumber(bQ) or 0
    local zi_2
    bQ = zi
    local zi_1 = CurrencyService and wQ(CurrencyService.CanAfford)
    if zi_1 then
        zi_2, zj_1 = pcall(CurrencyService.CanAfford, LocalPlayer, "Cash", bQ)
        if zi_2 then
            return zj_1 == true
        end
        return wU() >= bQ
    end
    return wU() >= bQ
end
local function worker2()
    while xO() do
        pcall(wN.Step)
        task.wait(wN.Delay)
    end
end
local function fn705(d5, d6)
    local Ba_1
    local A8 = type(d5) ~= "string" or type(d6) ~= "string"
    local A8_4, A8_8
    if A8 then
        return false, "invalid"
    end
    local A8_1 = w8(xI.Boxes) and not xI.Boxes[d5]
    if A8_1 then
        return false, "filter"
    end
    local A8_2 = w8(xI.Variants) and not xI.Variants[d6]
    if A8_2 then
        return false, "filter"
    end
    local A8_3 = xh
    local A9 = 0
    local A9_1
    if A8_3 then
        A8_3 = wQ(xh.GetBoxPrice)
    end
    if A8_3 then
        A8_4, Ba_1 = pcall(xh.GetBoxPrice, d5, d6)
        if A8_4 then
            local A8_5 = (tonumber(Ba_1))
            local Bf = if A8_5 then 1 else 0
            local Bd = 4091 * Bf + 2151 * (1 - Bf)
            local Be = 3505 * Bf + 1760 * (1 - Bf)
            if not ((Bd * 1777 + Be * 3964 + Bd * Be) % 16777213 == 1948056) then
                A8_5 = 0
            end
            A9 = A8_5
        end
    end
    if xI.MaxCost > 0 and A9 > xI.MaxCost then
        return false, "maxcost"
    elseif not xo(A9) then
        return false, "unaffordable"
    else
        local A8_7 = xh and wQ(xh.HasBoxInventorySpace)
        if A8_7 then
            A8_8, A9_1 = pcall(xh.HasBoxInventorySpace, LocalPlayer, 1)
            if A8_8 and A9_1 ~= true then
                return false, "full"
            end
            return true, "ok"
        end
        return true, "ok"
    end
end
local function fn734(h7)
    local D8 = tonumber(h7) or 1.25
    xs.Delay = math.max(0.3, D8)
end
local function fn773()
    return xi
end
local function fn779(jA)
    xD.Enabled = jA == true
    local Fj = xD.Enabled and "Auto Upgrade Conveyor running" or "Auto Upgrade Conveyor idle"
    wZ.ConveyorUpgradeStatus = Fj
end
local function worker10()
    while xO() do
        pcall(xs.Step)
        task.wait(xs.Delay)
    end
end
local function fn806(dQ)
    xI.SkipUnaffordable = dQ == true
end
local function fn819(dD)
    xI.Boxes = w_(wS(dD), xb)
    xI.SyncSelectedBoxes()
end
local function fn828()
    local zc_1
    local zb = ClientDataManager and wQ(ClientDataManager.GetData)
    local zb_1
    if zb then
        zb_1, zc_1 = pcall(ClientDataManager.GetData)
        local zd = zb_1 and type(zc_1) == "table" and type(zc_1.Currency) == "table"
        if zd then
            local zb_2 = tonumber(zc_1.Currency.Cash) or 0
            return zb_2
        end
        return 0
    end
    return 0
end
local function fn847(eP)
    local BA = wS(eP)
    local BB = w8(BA) and BA
    local BC = BB or { Crates = true }
    xE.Modes = BC
end
local function fn866(iQ)
    xj.Enabled = iQ == true
    local EF = xj.Enabled and "Auto Equip Best running" or "Auto Equip Best idle"
    wZ.EquipBestStatus = EF
end
local function fn885(h4)
    xs.Enabled = h4 == true
    local D2 = xs.Enabled and "Auto Sell Boxes running" or "Auto Sell Boxes idle"
    wZ.SellBoxesStatus = D2
end
local function worker5()
    while xO() do
        pcall(xA.Step)
        task.wait(xA.Delay)
    end
end
local function fn965(cA, cB)
    local zW = { LocalPlayer:FindFirstChild("Backpack"), LocalPlayer.Character }
    for i, v in ipairs(zW) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                local zW_1 = child:IsA("Tool") and child:GetAttribute("InventoryType") == cA
                if zW_1 then
                    cB(child)
                end
            end
        end
    end
end
local function fn968(am)
    local y8 = xp:FindFirstChild(am)
    local y9 = y8 and y8:IsA("RemoteFunction")
    if y9 then
        return y8
    end
    return nil
end
local function fn986(hM)
    local DT = tonumber(hM) or 0.4
    w9.Delay = math.max(0.1, DT)
end
local function worker11()
    while xO() do
        pcall(xE.Step)
        task.wait(xE.Delay)
    end
end
local function worker3()
    while xO() do
        pcall(xx.Step)
        task.wait(xx.Delay)
    end
end
local function fn1109()
    HitboxUtils = require(xB.Shared.Utility.HitboxUtils)
end
local function fn1120(bB, bC)
    return bB.order < bC.order
end
local function fn1122()
    PlayerUnitService = require(xB.Shared.Services.PlayerUnitService)
end
local function fn1129(dc)
    local AE = tonumber(dc) or 0.35
    xA.Delay = math.max(0.05, AE)
end
local function fn1151(eK)
    xE.Enabled = eK == true
    local Bv = xE.Enabled and "Auto Sell running" or "Auto Sell idle"
    wZ.SellStatus = Bv
end
local function fn1159()
    UpgradesLibrary = require(xB.Shared.Core.Storage.Game.UpgradesLibrary)
end
local function fn1174()
    VariantsLibrary = require(xB.Shared.Core.Storage.Game.VariantsLibrary)
end
local function worker8()
    while xO() do
        pcall(xk.Step)
        task.wait(xk.Delay)
    end
end
local function worker4()
    while xO() do
        pcall(xd.Step)
        task.wait(xd.Delay)
    end
end
local function fn1204()
    ClientDataManager = require(xB.Client.Data.ClientDataManager)
end
local function fn1210(gw)
    local CS = tonumber(gw) or 2
    wN.Delay = math.max(0.5, CS)
end
local function worker9()
    while xO() do
        pcall(xI.Step)
        task.wait(xI.Delay)
    end
end
local function fn1229(eN)
    local By = tonumber(eN) or 0.75
    xE.Delay = math.max(0.1, By)
end
local function fn1240(c1)
    return next(c1) ~= nil
end
local function fn1244(he)
    wW.Enabled = he == true
    local Dv = wW.Enabled and "Auto Open Lockers running" or "Auto Open Lockers idle"
    wZ.OpenStatus = Dv
end
local function fn1265()
    local B9 = not xE.Enabled or not xO()
    if B9 then
        return
    end
    if xE.Modes.Crates then
        xE.SellCrates()
    end
    for k, v in pairs(w4) do
        if xE.Modes[k] then
            xE.SellMerchant(v)
            task.wait(0.2)
        end
    end
end
local function fn1270()
    xh = require(xB.Shared.Services.BoxService)
end
local function fn1292()
    BoxesLibrary = require(xB.Shared.Core.Storage.Game.BoxesLibrary)
end
local function fn1296(hh)
    local Dy = tonumber(hh) or 0.5
    wW.Delay = math.max(0.1, Dy)
end
local function fn1308(aa)
    return type(aa) == "function"
end
local function fn1310(gQ)
    local Da = tonumber(gQ) or 0.45
    xa.Delay = math.max(0.1, Da)
end
local function fn1316(i6)
    local EY = tonumber(i6) or 2.5
    xd.Delay = math.max(0.5, EY)
end
local function fn1328(gN)
    xa.Enabled = gN == true
    local C7 = xa.Enabled and "Auto Place Lockers running" or "Auto Place Lockers idle"
    wZ.PlaceStatus = C7
end
local function fn1368()
    for i, v in ipairs(w1) do
        pcall(task.cancel, v)
    end
end
local function fn1379(bt, bu)
    return bt.chance > bu.chance
end
local function fn1381(c9)
    xA.Enabled = c9 == true
    local AB = xA.Enabled and "Auto Roll running" or "Auto Roll idle"
    wZ.RollStatus = AB
end
local function fn1390(ah)
    local y5 = xp:FindFirstChild(ah)
    local y6 = y5 and y5:IsA("RemoteEvent")
    if y6 then
        return y5
    end
    return nil
end
wN = nil
IndexRewardsService = nil
wQ = nil
CurrencyService = nil
wS = nil
LocalPlayer = nil
wU = nil
wV = nil
wW = nil
UpgradesService = nil
CollectionService = nil
wZ = nil
w_ = nil
w1 = nil
UpgradesLibrary = nil
w4 = nil
VariantsLibrary = nil
w8 = nil
w9 = nil
xa = nil
xb = nil
xc = nil
xd = nil
BoxesLibrary = nil
xh = nil
xi = nil
xj = nil
xk = nil
ClientDataManager = nil
xo = nil
xp = nil
xr = nil
xs = nil
HitboxUtils = nil
xw = nil
xx = nil
local Players, wO, w0, Workspace, Lighting, w7, TeleportService, xg, xl, GuiService, xq, VirtualUser, xv, xy
xA = nil
xB = nil
PlaytimeRewardsLibrary = nil
xD = nil
xE = nil
xH = nil
xI = nil
PlaytimeRewardsService = nil
xO = nil
PlayerUnitService = nil
xQ = nil
local UserInputService, xF, RunService, xK, xL, xM, xN, xR, xS, xV, xW, xX, xY, xZ, x_, x0, x1, x2, x3
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, xV, RunService, UserInputService, VirtualUser, GuiService, xi, TeleportService, Lighting, Workspace, CollectionService, LocalPlayer, xQ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
if (not Players and false and (Players or 24) or (not GuiService or not LocalPlayer) and (xi and not Lighting)) and (GuiService and xi and (not xi and GuiService) and ((xi or Lighting) and (GuiService or not Players))) or ((not Lighting and LocalPlayer or Players and not LocalPlayer) and (GuiService and xi and (not GuiService and Lighting)) or (Lighting or not Lighting or false) and (GuiService or GuiService or Lighting and GuiService)) or not ((not Players and false and (Players or 24) or (not GuiService or not LocalPlayer) and (xi and not Lighting)) and (GuiService and xi and (not xi and GuiService) and ((xi or Lighting) and (GuiService or not Players))) or ((not Lighting and LocalPlayer or Players and not LocalPlayer) and (GuiService and xi and (not GuiService and Lighting)) or (Lighting or not Lighting or false) and (GuiService or GuiService or Lighting and GuiService))) then
    xV = game:GetService("ReplicatedStorage")
else
    xi = game:GetService("ReplicatedStorage")
end
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
GuiService = game:GetService("GuiService")
xi = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
Workspace = game:GetService("Workspace")
CollectionService = game:GetService("CollectionService")
LocalPlayer = Players.LocalPlayer
local xU = "OuroborosBlueLockFarm"
xQ = fn773
if getgenv then
    getgenv().gethui = xQ
end
xc, xB, xv, xp, xy, HitboxUtils, ClientDataManager, xh, BoxesLibrary, VariantsLibrary, UpgradesLibrary, UpgradesService, CurrencyService, IndexRewardsService, PlayerUnitService, PlaytimeRewardsService, PlaytimeRewardsLibrary, xw, xl, xg, xb, x0, w0, wV, x_, wO, xN, xH, xS, xX, wQ, xO = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local xT = 7
repeat
    x1 = (xT * 14 + 5) % 17 + 1
    if x1 <= 9 then
        if x1 <= 5 then
            if x1 <= 3 then
                if x1 <= 2 then
                    if x1 <= 1 then
                        x2 = (vector.create((xT * 2 + 5) % 11 + 1, (xT * 5 + 5) % 13 + 1, (xT * 15 + 1) % 17 + 1))
                        x3 = (vector.create((xT * 5 + 1) % 11 + 1, (xT * 1 + 12) % 13 + 1, (xT * 11 + 15) % 17 + 1))
                        local Kv = vector.cross(x2, x3)
                        local Kw = vector.dot(x2, x3)
                        if vector.dot(Kv, Kv) + Kw * Kw == vector.dot(x2, x2) * vector.dot(x3, x3) then
                            xH = {}
                        else
                            xc = {}
                        end
                        xT = (xT + 28) % 68
                    else
                        x2 = {
                            "bakf",
                            "uian",
                            "bgwtpwzv",
                            "pvzddpirxfm",
                            "drgwweyetf",
                            "ovyehhslqbt",
                            "pxgp",
                            "glg",
                            "fzhvqd",
                            "niizybbarvn",
                            "kgxf"
                        }
                        if x2[(xT * 79 + 62) % 11 + 1] < x2[(xT * 79 + 62) % 11 + 1] then
                            pcall(fn596)
                            xc = function(t)
                                local yV
                                local yW
                                local yU
                                yU = nil
                                yV = nil
                                yW = nil
                                local yZ_2
                                local yX = t ~= ""
                                local yY = type(t) == "string" and yX
                                local yY_4
                                assert(yY, "Atypical is required")
                                assert(type(getgenv) == "function", "getgenv is unavailable")
                                yU = getgenv()
                                assert(type(yU) == "table", "getgenv did not return a table")
                                local yX_2 = yU[t]
                                if yX_2 ~= nil then
                                    local yY_3 = type(yX_2) == "table" and type(yX_2.Unload) == "function"
                                    assert(yY_3, "Namespace is occupied")
                                    yY_4, yZ_2 = pcall(yX_2.Unload)
                                    if not yY_4 then
                                        warn("Previous cleanup: " .. tostring(yZ_2))
                                    end
                                end
                                yV = {}
                                yW = { State = {}, Unloaded = false }
                                yW.Track = function(B)
                                    local yG_2
                                    local yF_2
                                    assert(type(B) == "function", "Cleanup must be callable")
                                    if yW.Unloaded then
                                        yF_2, yG_2 = pcall(B)
                                        if not yF_2 then
                                            warn("Cleanup: " .. tostring(yG_2))
                                        end
                                    else
                                        table.insert(yV, B)
                                    end
                                    return B
                                end
                                yW.Unload = function()
                                    local yN_2
                                    local yM_2
                                    if yW.Unloaded then
                                        return
                                    end
                                    yW.Unloaded = true
                                    local yR = #yV
                                    local yQ = -1
                                    while false and yR <= 1 or true and yR >= 1 do
                                        local yS = yR
                                        local yL_2 = table.remove(yV, yS)
                                        yM_2, yN_2 = pcall(yL_2)
                                        if not yM_2 then
                                            warn("Cleanup: " .. tostring(yN_2))
                                        end
                                        yR += yQ
                                    end
                                    table.clear(yW.State)
                                    if yU[t] == yW then
                                        yU[t] = nil
                                    end
                                end
                                yU[t] = yW
                                return yW
                            end
                            xU = xc(xS)
                        else
                            pcall(fn596)
                            xZ = function(t)
                                local yV
                                local yW
                                local yU
                                yU = nil
                                yV = nil
                                yW = nil
                                local yZ_1
                                local yX = t ~= ""
                                local yY = type(t) == "string" and yX
                                local yY_2
                                assert(yY, "Atypical is required")
                                assert(type(getgenv) == "function", "getgenv is unavailable")
                                yU = getgenv()
                                assert(type(yU) == "table", "getgenv did not return a table")
                                local yX_1 = yU[t]
                                if yX_1 ~= nil then
                                    local yY_1 = type(yX_1) == "table" and type(yX_1.Unload) == "function"
                                    assert(yY_1, "Namespace is occupied")
                                    yY_2, yZ_1 = pcall(yX_1.Unload)
                                    if not yY_2 then
                                        warn("Previous cleanup: " .. tostring(yZ_1))
                                    end
                                end
                                yV = {}
                                yW = { State = {}, Unloaded = false }
                                yW.Track = function(B)
                                    local yG_1
                                    local yF_1
                                    assert(type(B) == "function", "Cleanup must be callable")
                                    if yW.Unloaded then
                                        yF_1, yG_1 = pcall(B)
                                        if not yF_1 then
                                            warn("Cleanup: " .. tostring(yG_1))
                                        end
                                    else
                                        table.insert(yV, B)
                                    end
                                    return B
                                end
                                yW.Unload = function()
                                    local yN_1
                                    local yM_1
                                    if yW.Unloaded then
                                        return
                                    end
                                    yW.Unloaded = true
                                    local yR = #yV
                                    local yQ = -1
                                    while false and yR <= 1 or true and yR >= 1 do
                                        local yS = yR
                                        local yL_1 = table.remove(yV, yS)
                                        yM_1, yN_1 = pcall(yL_1)
                                        if not yM_1 then
                                            warn("Cleanup: " .. tostring(yN_1))
                                        end
                                        yR += yQ
                                    end
                                    table.clear(yW.State)
                                    if yU[t] == yW then
                                        yU[t] = nil
                                    end
                                end
                                yU[t] = yW
                                return yW
                            end
                            xS = function(P, Q)
                                local y1 = type(P) == "table" and type(P.Track) == "function"
                                assert(y1, "FeatureAPI required")
                                local y1_1 = type(Q) == "table" and type(Q.OnUnload) == "function"
                                assert(y1_1, "UI library required")
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
                            xc = xZ(xU)
                        end
                        xT = (xT + 62) % 68
                    end
                else
                    x2 = (vector.create((xT * 3 + 3) % 11 + 1, (xT * 9 + 12) % 13 + 1, (xT * 9 + 3) % 17 + 1))
                    x3 = (vector.create((xT * 5 + 2) % 11 + 1, (xT * 4 + 8) % 13 + 1, (xT * 9 + 7) % 17 + 1))
                    local KE = vector.dot(x2, x3)
                    if KE * KE <= vector.dot(x2, x2) * vector.dot(x3, x3) then
                        xX = fn123
                    else
                        xh = fn123
                    end
                    xT = (xT + 45) % 68
                end
            elseif x1 <= 4 then
                x2 = {
                    "eutvhmsllo",
                    "dgvxspriqn",
                    "cyjgxhsmcejd",
                    "apmss",
                    "mdfmg",
                    "vda",
                    "fuqjtyt",
                    "alaxoocs",
                    "oxq"
                }
                if x2[(xT * 68 + 62) % 9 + 1] < x2[(xT * 68 + 62) % 9 + 1] then
                    xO = fn1308
                    wQ = fn269
                else
                    wQ = fn1308
                    xO = fn269
                end
                xT = (xT + 11) % 68
            else
                local K1 = bit32.rrotate(bit32.bxor(bit32.lrotate(xT, 27), string.byte(tostring(xB))), 29)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(K1, 1746234357), 2998086405), (bit32.bxor(bit32.band(K1, 2548732938), 1346205360))), 2998086405), 1346205360) == K1 then
                    xB = xX(xV)
                    xv = xX(Workspace)
                    xp = xB:WaitForChild("Remotes")
                else
                    xv = xB(Workspace)
                    xp = xB(xV)
                    xX = xv:WaitForChild("Remotes")
                end
                xT = (xT + 11) % 68
            end
        elseif x1 <= 7 then
            if x1 <= 6 then
                x2 = {
                    "rpplhtbadynv",
                    "dcicoxjsh",
                    "wjqjafjxxuw",
                    "oksfqplth",
                    "fwuqgo",
                    "lfrjyyewir",
                    "obgxxmhtcofk",
                    "hzfl",
                    "yej",
                    "wedcwsdqkgp",
                    "trvlwbrkyji"
                }
                if x2[(xT * 62 + 57) % 11 + 1] <= x2[(xT * 62 + 57) % 11 + 1] then
                    xY = fn1390
                    xW = fn968
                    xy = {
                        RequestConveyorRoll = xY("RequestConveyorRoll"),
                        PurchaseConveyorRoll = xY("PurchaseConveyorRoll"),
                        RequestSetConveyorSelectedBox = xY("RequestSetConveyorSelectedBox"),
                        SellCrate = xY("SellCrate"),
                        PickupCrateBox = xY("PickupCrateBox"),
                        MerchantSell = xY("MerchantSell"),
                        PurchaseUpgrade = xY("PurchaseUpgrade"),
                        ClaimAllIndexRewards = xY("ClaimAllIndexRewards"),
                        PlaceBoxOnDropper = xY("PlaceBoxOnDropper"),
                        OpenBoxOnDropper = xW("OpenBoxOnDropper"),
                        SkipBoxOnDropper = xY("SkipBoxOnDropper"),
                        RequestPlayerUnitLevelUp = xY("RequestPlayerUnitLevelUp"),
                        EquipBestPlayerUnits = xY("EquipBestPlayerUnits"),
                        ClaimDailyReward = xY("ClaimDailyReward"),
                        ClaimPlaytimeReward = xY("ClaimPlaytimeReward"),
                        ClaimOfflineEarnings = xY("ClaimOfflineEarnings")
                    }
                else
                    xy = fn1390
                    xY = fn968
                    xW = {
                        SellCrate = xy("SellCrate"),
                        RequestPlayerUnitLevelUp = xy("RequestPlayerUnitLevelUp"),
                        MerchantSell = xy("MerchantSell"),
                        ClaimPlaytimeReward = xy("ClaimPlaytimeReward"),
                        SkipBoxOnDropper = xy("SkipBoxOnDropper"),
                        ClaimAllIndexRewards = xy("ClaimAllIndexRewards"),
                        OpenBoxOnDropper = xY("OpenBoxOnDropper"),
                        PlaceBoxOnDropper = xy("PlaceBoxOnDropper"),
                        EquipBestPlayerUnits = xy("EquipBestPlayerUnits"),
                        RequestSetConveyorSelectedBox = xy("RequestSetConveyorSelectedBox"),
                        PurchaseConveyorRoll = xy("PurchaseConveyorRoll"),
                        ClaimDailyReward = xy("ClaimDailyReward"),
                        PickupCrateBox = xy("PickupCrateBox"),
                        RequestConveyorRoll = xy("RequestConveyorRoll"),
                        PurchaseUpgrade = xy("PurchaseUpgrade"),
                        ClaimOfflineEarnings = xy("ClaimOfflineEarnings")
                    }
                end
                xT = (xT + 28) % 68
            else
                local Ku = bit32.rrotate(bit32.bxor(bit32.lrotate(xT, 25), string.byte(tostring(x0))), 30)
                if bit32.bxor(bit32.lrotate(bit32.bxor(Ku, 2638799341), 28), 3654585886) == bit32.lrotate(Ku, 28) then
                    HitboxUtils = nil
                end
                xT = (xT + 45) % 68
            end
        elseif x1 <= 8 then
            x2 = {
                "lklak",
                "azkscdrdwckh",
                "okbivjssexiw",
                "rsk",
                "ubyrvrmuyw",
                "ijmtp",
                "jbnpsgtb",
                "ujozsboksglr",
                "spnq",
                "fxpaoiokbr",
                "xjonpqbcgv",
                "xmn",
                "yfpgtksjo",
                "leanjtnexxp",
                "sjlh"
            }
            if x2[(xT * 66 + 23) % 15 + 1] < x2[(xT * 66 + 23) % 15 + 1] then
                xh = nil
                ClientDataManager = nil
            else
                ClientDataManager = nil
                xh = nil
            end
            xT = (xT + 28) % 68
        else
            x2 = (vector.create((xT * 1 + 9) % 11 + 1, (xT * 2 + 6) % 13 + 1, (xT * 9 + 8) % 17 + 1))
            local Mg = vector.floor(x2) + vector.ceil(x2 * -1)
            if vector.dot(Mg, Mg) == 5 then
                UpgradesLibrary = nil
                BoxesLibrary = nil
                VariantsLibrary = nil
            else
                BoxesLibrary = nil
                VariantsLibrary = nil
                UpgradesLibrary = nil
            end
            xT = (xT + 28) % 68
        end
    elseif x1 <= 13 then
        if x1 <= 11 then
            if x1 <= 10 then
                x2 = { "prhfnbvybwp", "aqpl", "fmjnlxlcxe", "vcqohkqkhdw", "onazv", "tpjkwxwjti", "ziwh", "qdbzfgmkp" }
                if x2[(xT * 79 + 46) % 8 + 1] <= x2[(xT * 79 + 46) % 8 + 1] then
                    UpgradesService = nil
                    CurrencyService = nil
                else
                    CurrencyService = nil
                    UpgradesService = nil
                end
                xT = (xT + 45) % 68
            else
                if (xT * 3 + 9) * 17 % 4 == ((xT * 3 + 9) * 17 + 12) % 4 then
                    IndexRewardsService = nil
                    PlayerUnitService = nil
                    PlaytimeRewardsService = nil
                else
                    PlaytimeRewardsService = nil
                    IndexRewardsService = nil
                    PlayerUnitService = nil
                end
                xT = (xT + 62) % 68
            end
        elseif x1 <= 12 then
            local LD = bit32.rrotate(bit32.bxor(bit32.lrotate(xT, 8), string.byte(tostring(PlayerUnitService))), 6)
            if bit32.bxor(bit32.lrotate(bit32.bxor(LD, 998154913), 18), 2323967482) == bit32.lrotate(LD, 18) then
                PlaytimeRewardsLibrary = nil
            else
                VariantsLibrary = nil
            end
            xT = (xT + 62) % 68
        else
            local LG = bit32.rrotate(bit32.bxor(bit32.lrotate(xT, 27), string.byte(tostring(PlaytimeRewardsLibrary))), 23)
            if bit32.bxor(bit32.lrotate(bit32.bxor(LG, 723547783), 4), 2986829938) ~= bit32.lrotate(LG, 4) then
                xl = nil
                pcall(fn1109)
                pcall(fn1204)
                pcall(fn1270)
                pcall(fn1292)
                pcall(fn1174)
                pcall(fn1159)
                pcall(fn648)
                pcall(fn162)
                pcall(fn226)
                pcall(fn1122)
                pcall(fn9)
                pcall(fn494)
                pcall(fn61)
                xw = {}
            else
                xw = nil
                pcall(fn1109)
                pcall(fn1204)
                pcall(fn1270)
                pcall(fn1292)
                pcall(fn1174)
                pcall(fn1159)
                pcall(fn648)
                pcall(fn162)
                pcall(fn226)
                pcall(fn1122)
                pcall(fn9)
                pcall(fn494)
                pcall(fn61)
                xl = {}
            end
            xT = (xT + 28) % 68
        end
    elseif x1 <= 15 then
        if x1 <= 14 then
            if ((not CurrencyService or not CurrencyService) and (CurrencyService and not xT) or (CurrencyService and not CurrencyService or (not xT or CurrencyService))) and (not xT and not xT and (CurrencyService or not CurrencyService) and (not xT and not xT and (not xT and CurrencyService))) or not (((not CurrencyService or not CurrencyService) and (CurrencyService and not xT) or (CurrencyService and not CurrencyService or (not xT or CurrencyService))) and (not xT and not xT and (CurrencyService or not CurrencyService) and (not xT and not xT and (not xT and CurrencyService)))) then
                xg = {}
                xb = {}
            else
                xb = {}
                xg = {}
            end
            xT = (xT + 62) % 68
        else
            x2 = (vector.create((xT * 5 + 1) % 11 + 1, (xT * 9 + 12) % 13 + 1, (xT * 6 + 16) % 17 + 1))
            x3 = (vector.create((xT * 6 + 4) % 11 + 1, (xT * 5 + 1) % 13 + 1, (xT * 12 + 12) % 17 + 1))
            local x4 = (vector.create((xT * 5 + 2) % 11 + 1, (xT * 2 + 9) % 13 + 1, (xT * 4 + 5) % 17 + 1))
            local x5 = (vector.create((xT * 3 + 3) % 5 + 1, (xT * 3 + 1) % 7 + 1, (xT * 5 + 6) % 9 + 1))
            if vector.dot(vector.cross(x2, (vector.cross(x3, x4))), x5) == vector.dot(x3 * vector.dot(x2, x4) - x4 * vector.dot(x2, x3), x5) then
                x0 = {}
                w0 = {}
                wV = {}
            else
                wV = {}
                x0 = {}
                w0 = {}
            end
            xT = (xT + 28) % 68
        end
    elseif x1 <= 16 then
        x1 = {
            "cgns",
            "rze",
            "dwze",
            "keuq",
            "kde",
            "pxudop",
            "gvkc",
            "jxo",
            "cvprxqcpjlbj",
            "pwn",
            "ogjkozvupaqb",
            "fsccdms",
            "rhfwnmt",
            "sokzxjnfmui"
        }
        if x1[(xT * 58 + 63) % 14 + 1] < x1[(xT * 58 + 63) % 14 + 1] then
            wO = {}
        else
            x_ = {}
        end
        xT = (xT + 11) % 68
    else
        if (not xh or xB or (xB or not xB) or not xh and not xB and (xh and not xB)) and ((not xh or not xh) and (not xB or xh) and (not xB and not xh and (not xh and not xB))) or ((not xh or xB) and (not xB and not xB) or (xB or xB or (xB or not xB))) and (not xB and xB and (not xh or not xB) or xB and xB and (xh or xh)) or not ((not xh or xB or (xB or not xB) or not xh and not xB and (xh and not xB)) and ((not xh or not xh) and (not xB or xh) and (not xB and not xh and (not xh and not xB))) or ((not xh or xB) and (not xB and not xB) or (xB or xB or (xB or not xB))) and (not xB and xB and (not xh or not xB) or xB and xB and (xh or xh))) then
            wO = {}
            xN = {}
        else
            xN = {}
            wO = {}
        end
        xT = (xT + 45) % 68
    end
until (xT * 43 + 32) % 68 == 44
x1 = {}
if type(BoxesLibrary) == "table" then
    for k, v in BoxesLibrary do
        xT = xh
        xU = k
        if xT then
            xT = wQ(xh.GetBoxName)
        end
        if xT then
            xT, xV = pcall(xh.GetBoxName, k)
            xW = xT and type(xV) == "string"
            xT = xV ~= ""
            xX = xW and xT
            if xX then
                xU = xV
            end
        end
        xT = table.insert
        xV = type(v) == "table" and tonumber(v.Index)
        xW = xV or 0
        xT(x1, { key = k, display = xU, index = xW })
    end
end
xV = 0
repeat
    if (not xV or xV or xV and xV) and (not xV and not xV or (not xV or xV)) and (not xV or not xV or not xV and not xV or (not xV or not xV) and (xV and xV)) and not ((not xV or xV or xV and xV) and (not xV and not xV or (not xV or xV)) and (not xV or not xV or not xV and not xV or (not xV or not xV) and (xV and xV))) then
        table.sort(x1, fn262)
    else
        table.sort(x1, fn262)
    end
    xV = (xV + 2) % 4
until (xV * 3 + 0) % 4 == 2
for i, v in ipairs(x1) do
    table.insert(xl, v.key)
    table.insert(xg, v.display)
    xb[v.display] = v.key
end
xT = {}
if type(VariantsLibrary) == "table" then
    for k, v in VariantsLibrary do
        xU = table.insert
        xV = type(v) == "table" and v.DisplayName
        xW = xV or k
        xV = type(v) == "table" and tonumber(v.Chance)
        xX = xV or 0
        xU(xT, { key = k, display = xW, chance = xX })
    end
end
xV = 3
repeat
    xU = (vector.create((xV * 1 + 4) % 11 + 1, (xV * 10 + 10) % 13 + 1, (xV * 9 + 17) % 17 + 1))
    xW = (vector.create((xV * 3 + 2) % 11 + 1, (xV * 8 + 3) % 13 + 1, (xV * 10 + 15) % 17 + 1))
    local Mf = vector.dot(xU, xW)
    if Mf * Mf >= vector.dot(xU, xU) * vector.dot(xW, xW) + 1 then
        table.sort(xT, fn1379)
    else
        table.sort(xT, fn1379)
    end
    xV = (xV + 2) % 4
until (xV * 3 + 0) % 4 == 3
for i, v in ipairs(xT) do
    table.insert(x0, v.key)
    table.insert(w0, v.display)
    wV[v.display] = v.key
    x_[v.key] = i
end
xT = {}
if type(UpgradesLibrary) == "table" then
    for k, v in UpgradesLibrary do
        xU = type(v) == "table" and not v.HiddenOnGui
        if xU then
            xU = table.insert
            xV = v.DisplayName
            local yi = if xV then 1 else 0
            local yg = 1091 * yi + 2476 * (1 - yi)
            local yh = 3147 * yi + 3395 * (1 - yi)
            if not ((yg * 2745 + yh * 3636 + yg * yh) % 16777213 == 1093451) then
                xV = k
            end
            xW = tonumber(v.LayoutOrder) or 0
            xU(xT, { key = k, display = xV, order = xW })
        end
    end
end
xX = 1
repeat
    if (xX * 2 + 2) * 7 % 3 == ((xX * 2 + 2) * 7 + 8) % 3 then
        table.sort(xT, fn1120)
    else
        table.sort(xT, fn1120)
    end
    xX = (xX + 1) % 4
until (xX * 1 + 0) % 4 == 2
for i, v in ipairs(xT) do
    table.insert(wO, v.key)
    table.insert(xN, v.display)
    xH[v.display] = v.key
end
w7, w4, wZ, xA, xI, xE, xx, wN, xa, wW, w9, xs, xk, xj, xd, xD, w1, xV, xW, wU, xo, xK, xM, xL, xq, xF, wS, xr, w8, w_, xR, xU = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
xT = 12
repeat
    xX = (xT * 11 + 3) % 17 + 1
    if xX <= 9 then
        if xX <= 5 then
            if xX <= 3 then
                if xX <= 2 then
                    if xX <= 1 then
                        if xT * 24039319 + 9 + 6 <= xT * 24039319 + 9 + 6 + 4 then
                            wU = fn828
                            xo = fn661
                        else
                            xo = fn828
                            wU = fn661
                        end
                        xT = (xT + 48) % 68
                    else
                        if (xx or xx or xx and xr) and (not xx or not xr or (not xF or xr)) or not ((xx or xx or xx and xr) and (not xx or not xr or (not xF or xr))) then
                            xK = fn274
                            xM = fn366
                            xL = fn413
                            xq = fn965
                        else
                            xq = fn274
                            xL = fn366
                            xK = fn413
                            xM = fn965
                        end
                        xT = (xT + 65) % 68
                    end
                else
                    if xT * 128366995 + 1 + 3 >= xT * 128366995 + 1 + 3 + 1 then
                        w8 = function(cK)
                            local z9
                            z9 = nil
                            local Character = LocalPlayer.Character
                            local Ab = Character and Character:FindFirstChildOfClass("Humanoid")
                            z9 = Ab
                            if not z9 or not cK then
                                return false
                            end
                            local Aa_4 = pcall(function()
                                z9:EquipTool(cK)
                            end)
                            return Aa_4
                        end
                        w_ = fn531
                        wS = fn314
                        xr = fn1240
                        xF = fn50
                    else
                        xF = function(cK)
                            local z9
                            z9 = nil
                            local Character = LocalPlayer.Character
                            local Ab = Character and Character:FindFirstChildOfClass("Humanoid")
                            z9 = Ab
                            if not z9 or not cK then
                                return false
                            end
                            local Aa_2 = pcall(function()
                                z9:EquipTool(cK)
                            end)
                            return Aa_2
                        end
                        wS = fn531
                        xr = fn314
                        w8 = fn1240
                        w_ = fn50
                    end
                    xT = (xT + 65) % 68
                end
            elseif xX <= 4 then
                xY = (vector.create((xT * 5 + 4) % 11 + 1, (xT * 3 + 10) % 13 + 1, (xT * 1 + 5) % 17 + 1))
                xZ = (vector.create((xT * 3 + 8) % 11 + 1, (xT * 7 + 2) % 13 + 1, (xT * 10 + 1) % 17 + 1))
                x_ = (vector.create((xT * 7 + 6) % 11 + 1, (xT * 1 + 10) % 13 + 1, (xT * 13 + 14) % 17 + 1))
                x0 = (vector.create((xT * 1 + 2) % 5 + 1, (xT * 1 + 6) % 7 + 1, (xT * 2 + 3) % 9 + 1))
                if vector.dot(vector.cross(xY, (vector.cross(xZ, x_))), x0) == vector.dot(xZ * vector.dot(xY, x_) - x_ * vector.dot(xY, xZ), x0) then
                    xA = { Enabled = false, Delay = 0.35 }
                else
                    wW = { Enabled = false, Delay = 0.35 }
                end
                xT = (xT + 14) % 68
            else
                xY = { "mvyke", "gqihvkt", "gvawhoawn", "btb", "bnos", "azanqxkr", "oyziua", "tkxtmapcaze" }
                local K5 = xT
                xZ = xY[K5 % 8 + 1]
                if xZ:len() <= xZ:gsub("(.)", "%1%1", K5 % 3 % 2 + 1):len() then
                    xA.SetEnabled = fn1381
                    xA.SetDelay = fn1129
                    xA.Step = function()
                        local RequestConveyorRoll
                        RequestConveyorRoll = nil
                        local AL_2
                        local AK_3
                        local AH = not xA.Enabled or not xO()
                        if AH then
                            return
                        end
                        RequestConveyorRoll = xy.RequestConveyorRoll
                        if not RequestConveyorRoll then
                            wZ.RollStatus = "Missing RequestConveyorRoll"
                            return
                        end
                        if LocalPlayer:GetAttribute("TutorialConveyorLock") then
                            wZ.RollStatus = "Tutorial lock active"
                            return
                        end
                        local AH_5 = xK("RollConveyorPart")
                        if not AH_5 then
                            wZ.RollStatus = "Plot conveyor not found"
                            return
                        end
                        local attr3 = AH_5:GetAttribute("BoxName")
                        local attr2 = AH_5:GetAttribute("Variant")
                        if type(attr3) == "string" then
                            AK_3, AL_2 = BuyController.EvaluateBuy(attr3, attr2)
                            if not (BuyController.SkipUnaffordable and not AK_3 and (AL_2 == "unaffordable" or AL_2 == "filter" or AL_2 == "maxcost")) then
                                wZ.RollStatus = "Waiting for pending box buy"
                                return
                            end
                            wZ.RollStatus = "Skipping unaffordable box"
                        end
                        local attr = AH_5:GetAttribute("RollCooldownUntil")
                        local AH_6 = type(attr) == "number" and workspace:GetServerTimeNow() < attr
                        if AH_6 then
                            wZ.RollStatus = "Roll on cooldown"
                            return
                        end
                        local AH_7 = pcall(function()
                            RequestConveyorRoll:FireServer()
                        end)
                        local AH_8 = AH_7 and "Rolled conveyor" or "Roll fire failed"
                        wZ.RollStatus = AH_8
                    end
                    xI = {
                        Enabled = false,
                        Delay = 0.35,
                        Boxes = {},
                        Variants = {},
                        MaxCost = 0,
                        SkipUnaffordable = false,
                        LastBuyKey = nil
                    }
                else
                    xI.SetEnabled = fn1381
                    xI.SetDelay = fn1129
                    xI.Step = function()
                        local RequestConveyorRoll
                        RequestConveyorRoll = nil
                        local AL_1
                        local AK_1
                        local AH = not xA.Enabled or not xO()
                        if AH then
                            return
                        end
                        RequestConveyorRoll = xy.RequestConveyorRoll
                        if not RequestConveyorRoll then
                            wZ.RollStatus = "Missing RequestConveyorRoll"
                            return
                        end
                        if LocalPlayer:GetAttribute("TutorialConveyorLock") then
                            wZ.RollStatus = "Tutorial lock active"
                            return
                        end
                        local AH_1 = xK("RollConveyorPart")
                        if not AH_1 then
                            wZ.RollStatus = "Plot conveyor not found"
                            return
                        end
                        local attr3 = AH_1:GetAttribute("BoxName")
                        local attr2 = AH_1:GetAttribute("Variant")
                        if type(attr3) == "string" then
                            AK_1, AL_1 = BuyController.EvaluateBuy(attr3, attr2)
                            if not (BuyController.SkipUnaffordable and not AK_1 and (AL_1 == "unaffordable" or AL_1 == "filter" or AL_1 == "maxcost")) then
                                wZ.RollStatus = "Waiting for pending box buy"
                                return
                            end
                            wZ.RollStatus = "Skipping unaffordable box"
                        end
                        local attr = AH_1:GetAttribute("RollCooldownUntil")
                        local AH_2 = type(attr) == "number" and workspace:GetServerTimeNow() < attr
                        if AH_2 then
                            wZ.RollStatus = "Roll on cooldown"
                            return
                        end
                        local AH_3 = pcall(function()
                            RequestConveyorRoll:FireServer()
                        end)
                        local AH_4 = AH_3 and "Rolled conveyor" or "Roll fire failed"
                        wZ.RollStatus = AH_4
                    end
                    xA = {
                        Delay = 0.35,
                        Boxes = {},
                        Variants = {},
                        SkipUnaffordable = false,
                        LastBuyKey = nil,
                        MaxCost = 0,
                        Enabled = false
                    }
                end
                xT = (xT + 65) % 68
            end
        elseif xX <= 7 then
            if xX <= 6 then
                if (xT * 2 + 3) * 13 % 3 == ((xT * 2 + 3) * 13 + 6) % 3 then
                    xI.SetEnabled = fn644
                    xI.SetDelay = fn625
                    xI.SetBoxes = fn819
                    xI.SetVariants = fn649
                    xI.SetMaxCost = fn248
                    xI.SetSkipUnaffordable = fn806
                    xI.SyncSelectedBoxes = function()
                        local RequestSetConveyorSelectedBox = xy.RequestSetConveyorSelectedBox
                        if not RequestSetConveyorSelectedBox then
                            return
                        end
                        local Boxes = xI.Boxes
                        local A_ = not w8(Boxes)
                        for i, v in ipairs(xl) do
                            local AY
                            local A7 = v
                            AY = A_ or Boxes[A7] == true
                            pcall(function()
                                RequestSetConveyorSelectedBox:FireServer(A7, AY)
                            end)
                        end
                    end
                    xI.EvaluateBuy = fn705
                    xI.ShouldBuy = fn105
                    xI.Step = function()
                        local PurchaseConveyorRoll
                        local attr2
                        local attr
                        PurchaseConveyorRoll = nil
                        attr = nil
                        attr2 = nil
                        local Bo_2
                        local Bm = not xI.Enabled or not xO()
                        local Bm_6
                        if Bm then
                            return
                        end
                        PurchaseConveyorRoll = xy.PurchaseConveyorRoll
                        if not PurchaseConveyorRoll then
                            wZ.BuyStatus = "Missing PurchaseConveyorRoll"
                            return
                        end
                        local Bm_5 = xK("RollConveyorPart")
                        if not Bm_5 then
                            wZ.BuyStatus = "Plot conveyor not found"
                            return
                        end
                        attr2 = Bm_5:GetAttribute("BoxName")
                        attr = Bm_5:GetAttribute("Variant")
                        local Bn = type(attr2) ~= "string" or type(attr) ~= "string"
                        if Bn then
                            wZ.BuyStatus = "No rolled box waiting"
                            return
                        end
                        local Bn_2 = tostring(Bm_5:GetAttribute("RollId")) .. ":" .. attr2 .. ":" .. attr
                        if xI.LastBuyKey == Bn_2 then
                            return
                        end
                        Bm_6, Bo_2 = xI.EvaluateBuy(attr2, attr)
                        if not Bm_6 then
                            if Bo_2 == "unaffordable" then
                                wZ.BuyStatus = "Cannot afford " .. attr2
                            elseif Bo_2 == "full" then
                                wZ.BuyStatus = "Locker inventory full"
                            else
                                if Bo_2 == "filter" or Bo_2 == "maxcost" then
                                    wZ.BuyStatus = "Skipped " .. attr2 .. " by filter"
                                else
                                    wZ.BuyStatus = "Skipped " .. attr2
                                end
                            end
                            return
                        end
                        local Bm_8 = pcall(function()
                            PurchaseConveyorRoll:FireServer(attr2, attr)
                        end)
                        if Bm_8 then
                            xI.LastBuyKey = Bn_2
                            wZ.BuyStatus = "Bought " .. attr2 .. " (" .. attr .. ")"
                        else
                            wZ.BuyStatus = "Buy fire failed"
                        end
                    end
                    xE = { Enabled = false, Delay = 0.75, Modes = { Crates = true } }
                else
                    xE.SetEnabled = fn644
                    xE.SetDelay = fn625
                    xE.SetBoxes = fn819
                    xE.SetVariants = fn649
                    xE.SetMaxCost = fn248
                    xE.SetSkipUnaffordable = fn806
                    xE.SyncSelectedBoxes = function()
                        local RequestSetConveyorSelectedBox = xy.RequestSetConveyorSelectedBox
                        if not RequestSetConveyorSelectedBox then
                            return
                        end
                        local Boxes = xI.Boxes
                        local A_ = not w8(Boxes)
                        for i, v in ipairs(xl) do
                            local AY
                            local A7 = v
                            AY = A_ or Boxes[A7] == true
                            pcall(function()
                                RequestSetConveyorSelectedBox:FireServer(A7, AY)
                            end)
                        end
                    end
                    xE.EvaluateBuy = fn705
                    xE.ShouldBuy = fn105
                    xE.Step = function()
                        local PurchaseConveyorRoll
                        local attr2
                        local attr
                        PurchaseConveyorRoll = nil
                        attr = nil
                        attr2 = nil
                        local Bo_1
                        local Bm = not xI.Enabled or not xO()
                        local Bm_2
                        if Bm then
                            return
                        end
                        PurchaseConveyorRoll = xy.PurchaseConveyorRoll
                        if not PurchaseConveyorRoll then
                            wZ.BuyStatus = "Missing PurchaseConveyorRoll"
                            return
                        end
                        local Bm_1 = xK("RollConveyorPart")
                        if not Bm_1 then
                            wZ.BuyStatus = "Plot conveyor not found"
                            return
                        end
                        attr2 = Bm_1:GetAttribute("BoxName")
                        attr = Bm_1:GetAttribute("Variant")
                        local Bn = type(attr2) ~= "string" or type(attr) ~= "string"
                        if Bn then
                            wZ.BuyStatus = "No rolled box waiting"
                            return
                        end
                        local Bn_1 = tostring(Bm_1:GetAttribute("RollId")) .. ":" .. attr2 .. ":" .. attr
                        if xI.LastBuyKey == Bn_1 then
                            return
                        end
                        Bm_2, Bo_1 = xI.EvaluateBuy(attr2, attr)
                        if not Bm_2 then
                            if Bo_1 == "unaffordable" then
                                wZ.BuyStatus = "Cannot afford " .. attr2
                            elseif Bo_1 == "full" then
                                wZ.BuyStatus = "Locker inventory full"
                            else
                                if Bo_1 == "filter" or Bo_1 == "maxcost" then
                                    wZ.BuyStatus = "Skipped " .. attr2 .. " by filter"
                                else
                                    wZ.BuyStatus = "Skipped " .. attr2
                                end
                            end
                            return
                        end
                        local Bm_4 = pcall(function()
                            PurchaseConveyorRoll:FireServer(attr2, attr)
                        end)
                        if Bm_4 then
                            xI.LastBuyKey = Bn_1
                            wZ.BuyStatus = "Bought " .. attr2 .. " (" .. attr .. ")"
                        else
                            wZ.BuyStatus = "Buy fire failed"
                        end
                    end
                    xI = { Enabled = false, Modes = { Crates = true }, Delay = 0.75 }
                end
                xT = (xT + 48) % 68
            else
                xY = (vector.create((xT * 4 + 4) % 11 + 1, (xT * 11 + 1) % 13 + 1, (xT * 1 + 3) % 17 + 1))
                xZ = (vector.create((xT * 1 + 9) % 11 + 1, (xT * 6 + 6) % 13 + 1, (xT * 6 + 15) % 17 + 1))
                local KG = vector.cross(xY, xZ)
                local KH = vector.dot(xY, xZ)
                if vector.dot(KG, KG) + KH * KH == vector.dot(xY, xY) * vector.dot(xZ, xZ) + 2 then
                    xR.SetEnabled = fn1151
                    xR.SetDelay = fn1229
                    xR.SetModes = fn847
                    xE = fn129
                else
                    xE.SetEnabled = fn1151
                    xE.SetDelay = fn1229
                    xE.SetModes = fn847
                    xR = fn129
                end
                xT = (xT + 65) % 68
            end
        elseif xX <= 8 then
            xY = {
                "rpkxwg",
                "zystzmp",
                "rmlnyaulz",
                "wxhcmlgcnhq",
                "ujyhss",
                "taksvod",
                "qhrfgbctcha",
                "qbinextbijf",
                "dstfog",
                "coqvmxq"
            }
            local K4 = xT
            xZ = xY[K4 % 10 + 1]
            if xZ:len() >= xZ:gsub("(.)", "%1%1", K4 % 3 % 2 + 1):len() then
                xx.SellCrates = function()
                    local SellCrate, BZ
                    local PickupCrateBox = xy.PickupCrateBox
                    SellCrate = xy.SellCrate
                    if not SellCrate then
                        wZ.SellStatus = "Missing SellCrate"
                        return false
                    end
                    local B_ = xK("ConveyorCollectPart")
                    local B0 = B_ and PickupCrateBox
                    if B0 then
                        local B1 = B_:GetAttribute("PendingBallCount") or 0
                        B0 = B1 > 0
                    end
                    if B0 then
                        pcall(function()
                            PickupCrateBox:FireServer(B_)
                        end)
                        task.wait(0.35)
                    end
                    BZ = 0
                    xR(function(fd)
                        local attr
                        local BU = not xO() or not xE.Enabled
                        if BU then
                            return
                        end
                        attr = fd:GetAttribute("InventoryKey")
                        local BU_4 = type(attr) ~= "string" and type(attr) ~= "number"
                        if BU_4 then
                            return
                        end
                        local Character = LocalPlayer.Character
                        local BV = Character and Character:FindFirstChildOfClass("Humanoid")
                        local BT = BV
                        if BT then
                            pcall(function()
                                BT:EquipTool(fd)
                            end)
                            task.wait(0.12)
                        end
                        local BU_6 = pcall(function()
                            SellCrate:FireServer(attr)
                        end)
                        if BU_6 then
                            BZ += 1
                        end
                        task.wait(0.15)
                    end)
                    if BZ > 0 then
                        wZ.SellStatus = "Sold " .. BZ .. " crate(s)"
                        return true
                    end
                    wZ.SellStatus = "No crates to sell"
                    return false
                end
                xx.SellMerchant = function(fy)
                    local MerchantSell
                    MerchantSell = nil
                    MerchantSell = xy.MerchantSell
                    if not MerchantSell then
                        wZ.SellStatus = "Missing MerchantSell"
                        return false
                    end
                    local B7 = pcall(function()
                        MerchantSell:FireServer(fy)
                    end)
                    if B7 then
                        wZ.SellStatus = "Merchant sell " .. fy
                    else
                        wZ.SellStatus = "Merchant sell failed"
                    end
                    return B7
                end
                xx.Step = fn1265
                xE = { Enabled = false, Upgrades = {}, Delay = 0.6 }
            else
                xE.SellCrates = function()
                    local SellCrate, BZ
                    local PickupCrateBox = xy.PickupCrateBox
                    SellCrate = xy.SellCrate
                    if not SellCrate then
                        wZ.SellStatus = "Missing SellCrate"
                        return false
                    end
                    local B_ = xK("ConveyorCollectPart")
                    local B0 = B_ and PickupCrateBox
                    if B0 then
                        local B1 = B_:GetAttribute("PendingBallCount") or 0
                        B0 = B1 > 0
                    end
                    if B0 then
                        pcall(function()
                            PickupCrateBox:FireServer(B_)
                        end)
                        task.wait(0.35)
                    end
                    BZ = 0
                    xR(function(fd)
                        local attr
                        local BU = not xO() or not xE.Enabled
                        if BU then
                            return
                        end
                        attr = fd:GetAttribute("InventoryKey")
                        local BU_1 = type(attr) ~= "string" and type(attr) ~= "number"
                        if BU_1 then
                            return
                        end
                        local Character = LocalPlayer.Character
                        local BV = Character and Character:FindFirstChildOfClass("Humanoid")
                        local BT = BV
                        if BT then
                            pcall(function()
                                BT:EquipTool(fd)
                            end)
                            task.wait(0.12)
                        end
                        local BU_3 = pcall(function()
                            SellCrate:FireServer(attr)
                        end)
                        if BU_3 then
                            BZ += 1
                        end
                        task.wait(0.15)
                    end)
                    if BZ > 0 then
                        wZ.SellStatus = "Sold " .. BZ .. " crate(s)"
                        return true
                    end
                    wZ.SellStatus = "No crates to sell"
                    return false
                end
                xE.SellMerchant = function(fy)
                    local MerchantSell
                    MerchantSell = nil
                    MerchantSell = xy.MerchantSell
                    if not MerchantSell then
                        wZ.SellStatus = "Missing MerchantSell"
                        return false
                    end
                    local B7 = pcall(function()
                        MerchantSell:FireServer(fy)
                    end)
                    if B7 then
                        wZ.SellStatus = "Merchant sell " .. fy
                    else
                        wZ.SellStatus = "Merchant sell failed"
                    end
                    return B7
                end
                xE.Step = fn1265
                xx = { Enabled = false, Delay = 0.6, Upgrades = {} }
            end
            xT = (xT + 31) % 68
        else
            xY = (vector.create((xT * 2 + 2) % 11 + 1, (xT * 10 + 12) % 13 + 1, (xT * 11 + 6) % 17 + 1))
            local Km = vector.floor(xY) + vector.ceil(xY * -1)
            if vector.dot(Km, Km) == 5 then
                wN.SetEnabled = fn436
                wN.SetDelay = fn497
                wN.SetUpgrades = fn370
                wN.Step = function()
                    local Cu_4
                    local Cr = not xx.Enabled or not xO()
                    if Cr then
                        return
                    end
                    local PurchaseUpgrade = xy.PurchaseUpgrade
                    local Cr_4 = not PurchaseUpgrade or type(UpgradesLibrary) ~= "table"
                    local Ct = Cr_4 or not UpgradesService
                    local Ct_10, Ct_13
                    if Ct then
                        wZ.UpgradeStatus = "Upgrade services unavailable"
                        return
                    end
                    local Upgrades = xx.Upgrades
                    local Cs_4 = {}
                    if w8(Upgrades) then
                        for k in pairs(Upgrades) do
                            table.insert(Cs_4, k)
                        end
                    else
                        for i, v in ipairs(wO) do
                            table.insert(Cs_4, v)
                        end
                    end
                    local Cr_6 = 0
                    for i, v in ipairs(Cs_4) do
                        local CN = v
                        local Cs_5 = not xO() or not xx.Enabled
                        if Cs_5 then
                            break
                        end
                        local Cs_6 = UpgradesLibrary[CN]
                        local Ct_9 = type(Cs_6) == "table" and wQ(Cs_6.GetPrice) and wQ(UpgradesService.GetTimesPurchased)
                        if Ct_9 then
                            Ct_10, Cu_4 = pcall(UpgradesService.GetTimesPurchased, LocalPlayer, CN)
                            local Cv = Ct_10 and tonumber(Cu_4)
                            local Cv_3
                            local Ct_11 = Cv or 0
                            if not (Cs_6.MaxPurchases and Ct_11 >= Cs_6.MaxPurchases) then
                                Ct_13, Cv_3 = pcall(Cs_6.GetPrice, Ct_11)
                                local Cu_6 = Ct_13 and tonumber(Cv_3)
                                local Ct_14 = Cu_6 or nil
                                local Cv_4 = Ct_14
                                if Ct_14 then
                                    Ct_14 = xo(Cv_4)
                                end
                                if Ct_14 then
                                    local Ct_15 = pcall(function()
                                        PurchaseUpgrade:FireServer(CN)
                                    end)
                                    if Ct_15 then
                                        Cr_6 += 1
                                        local Ct_16 = Cs_6.DisplayName or CN
                                        wZ.UpgradeStatus = "Upgraded " .. Ct_16
                                    end
                                    task.wait(0.2)
                                end
                            end
                        end
                    end
                    if Cr_6 == 0 then
                        wZ.UpgradeStatus = "No affordable upgrades"
                    end
                end
                xx = { Enabled = false, Delay = 2 }
            else
                xx.SetEnabled = fn436
                xx.SetDelay = fn497
                xx.SetUpgrades = fn370
                xx.Step = function()
                    local Cu_1
                    local Cr = not xx.Enabled or not xO()
                    if Cr then
                        return
                    end
                    local PurchaseUpgrade = xy.PurchaseUpgrade
                    local Cr_1 = not PurchaseUpgrade or type(UpgradesLibrary) ~= "table"
                    local Ct = Cr_1 or not UpgradesService
                    local Ct_2, Ct_5
                    if Ct then
                        wZ.UpgradeStatus = "Upgrade services unavailable"
                        return
                    end
                    local Upgrades = xx.Upgrades
                    local Cs_1 = {}
                    if w8(Upgrades) then
                        for k in pairs(Upgrades) do
                            table.insert(Cs_1, k)
                        end
                    else
                        for i, v in ipairs(wO) do
                            table.insert(Cs_1, v)
                        end
                    end
                    local Cr_3 = 0
                    for i, v in ipairs(Cs_1) do
                        local CN = v
                        local Cs_2 = not xO() or not xx.Enabled
                        if Cs_2 then
                            break
                        end
                        local Cs_3 = UpgradesLibrary[CN]
                        local Ct_1 = type(Cs_3) == "table" and wQ(Cs_3.GetPrice) and wQ(UpgradesService.GetTimesPurchased)
                        if Ct_1 then
                            Ct_2, Cu_1 = pcall(UpgradesService.GetTimesPurchased, LocalPlayer, CN)
                            local Cv = Ct_2 and tonumber(Cu_1)
                            local Cv_1
                            local Ct_3 = Cv or 0
                            if not (Cs_3.MaxPurchases and Ct_3 >= Cs_3.MaxPurchases) then
                                Ct_5, Cv_1 = pcall(Cs_3.GetPrice, Ct_3)
                                local Cu_3 = Ct_5 and tonumber(Cv_1)
                                local Ct_6 = Cu_3 or nil
                                local Cv_2 = Ct_6
                                if Ct_6 then
                                    Ct_6 = xo(Cv_2)
                                end
                                if Ct_6 then
                                    local Ct_7 = pcall(function()
                                        PurchaseUpgrade:FireServer(CN)
                                    end)
                                    if Ct_7 then
                                        Cr_3 += 1
                                        local Ct_8 = Cs_3.DisplayName or CN
                                        wZ.UpgradeStatus = "Upgraded " .. Ct_8
                                    end
                                    task.wait(0.2)
                                end
                            end
                        end
                    end
                    if Cr_3 == 0 then
                        wZ.UpgradeStatus = "No affordable upgrades"
                    end
                end
                wN = { Enabled = false, Delay = 2 }
            end
            xT = (xT + 65) % 68
        end
    elseif xX <= 13 then
        if xX <= 11 then
            if xX <= 10 then
                xY = { "atu", "wtpcxil", "rotov", "qoi", "ttgvcgdd", "vqeyocz", "tgk", "xpenqzkdjmng", "ete" }
                if xY[(xT * 35 + 91) % 9 + 1] < xY[(xT * 35 + 91) % 9 + 1] then
                    xa.SetEnabled = fn279
                    xa.SetDelay = fn1210
                    xa.Step = function()
                        local ClaimAllIndexRewards
                        ClaimAllIndexRewards = nil
                        local CX_2
                        local CW_3
                        local CV = not wN.Enabled or not xO()
                        local CV_6
                        if CV then
                            return
                        end
                        ClaimAllIndexRewards = xy.ClaimAllIndexRewards
                        if not ClaimAllIndexRewards then
                            wZ.IndexStatus = "Missing ClaimAllIndexRewards"
                            return
                        end
                        local CV_5 = IndexRewardsService and wQ(IndexRewardsService.HasAnyClaimable)
                        if CV_5 then
                            CV_6, CX_2 = pcall(IndexRewardsService.HasAnyClaimable)
                            CW_3 = CV_6 and CX_2 == true
                        else
                            CW_3 = true
                        end
                        if not CW_3 then
                            wZ.IndexStatus = "No index rewards claimable"
                            return
                        end
                        local CV_7 = pcall(function()
                            ClaimAllIndexRewards:FireServer()
                        end)
                        local CV_8 = CV_7 and "Claimed index rewards" or "Index claim failed"
                        wZ.IndexStatus = CV_8
                    end
                    wN = { Enabled = false, Delay = 0.45 }
                else
                    wN.SetEnabled = fn279
                    wN.SetDelay = fn1210
                    wN.Step = function()
                        local ClaimAllIndexRewards
                        ClaimAllIndexRewards = nil
                        local CX_1
                        local CW_1
                        local CV = not wN.Enabled or not xO()
                        local CV_2
                        if CV then
                            return
                        end
                        ClaimAllIndexRewards = xy.ClaimAllIndexRewards
                        if not ClaimAllIndexRewards then
                            wZ.IndexStatus = "Missing ClaimAllIndexRewards"
                            return
                        end
                        local CV_1 = IndexRewardsService and wQ(IndexRewardsService.HasAnyClaimable)
                        if CV_1 then
                            CV_2, CX_1 = pcall(IndexRewardsService.HasAnyClaimable)
                            CW_1 = CV_2 and CX_1 == true
                        else
                            CW_1 = true
                        end
                        if not CW_1 then
                            wZ.IndexStatus = "No index rewards claimable"
                            return
                        end
                        local CV_3 = pcall(function()
                            ClaimAllIndexRewards:FireServer()
                        end)
                        local CV_4 = CV_3 and "Claimed index rewards" or "Index claim failed"
                        wZ.IndexStatus = CV_4
                    end
                    xa = { Enabled = false, Delay = 0.45 }
                end
                xT = (xT + 48) % 68
            else
                xY = {
                    "psfamoq",
                    "qghzblinnjj",
                    "etsraadmpubp",
                    "ibteibhwvy",
                    "brjoku",
                    "sojny",
                    "pfywqm",
                    "gdugczhyjmu",
                    "ksfwgvxtl",
                    "emeicgoyfrz"
                }
                if xY[(xT * 44 + 40) % 10 + 1] <= xY[(xT * 44 + 40) % 10 + 1] then
                    xa.SetEnabled = fn1328
                    xa.SetDelay = fn1310
                    xa.Step = function()
                        local Df
                        Df = nil
                        local Dh = not xa.Enabled or not xO()
                        if Dh then
                            return
                        end
                        local PlaceBoxOnDropper = xy.PlaceBoxOnDropper
                        if not PlaceBoxOnDropper then
                            wZ.PlaceStatus = "Missing PlaceBoxOnDropper"
                            return
                        end
                        local Dh_3 = xL()
                        if #Dh_3 == 0 then
                            wZ.PlaceStatus = "No lockers in inventory"
                            return
                        end
                        Df = {}
                        xM("DropperBasePart", function(g1)
                            local Dc = g1:GetAttribute("Unlocked") and not g1:GetAttribute("Type")
                            if Dc then
                                table.insert(Df, g1)
                            end
                        end)
                        if #Df == 0 then
                            wZ.PlaceStatus = "No empty droppers"
                            return
                        end
                        local Di = 0
                        for i, v in ipairs(Df) do
                            local Dq = v
                            local De = Dh_3[i]
                            if not De then
                                break
                            else
                                local Dj = pcall(function()
                                    PlaceBoxOnDropper:FireServer(Dq, De.BoxName, De.Variant)
                                end)
                                if Dj then
                                    Di += 1
                                end
                                task.wait(0.12)
                            end
                        end
                        local Di_2 = Di > 0 and "Placed " .. Di .. " locker(s)"
                        local Dt = if Di_2 then 1 else 0
                        local Dr = 2475 * Dt + 2946 * (1 - Dt)
                        local Ds = 2504 * Dt + 2210 * (1 - Dt)
                        if not ((Dr * 2205 + Ds * 1289 + Dr * Ds) % 16777213 == 14882431) then
                            Di_2 = "Place failed"
                        end
                        wZ.PlaceStatus = Di_2
                    end
                    wW = { Enabled = false, Delay = 0.5 }
                else
                    wW.SetEnabled = fn1328
                    wW.SetDelay = fn1310
                    wW.Step = function()
                        local Df
                        Df = nil
                        local Dh = not xa.Enabled or not xO()
                        if Dh then
                            return
                        end
                        local PlaceBoxOnDropper = xy.PlaceBoxOnDropper
                        if not PlaceBoxOnDropper then
                            wZ.PlaceStatus = "Missing PlaceBoxOnDropper"
                            return
                        end
                        local Dh_1 = xL()
                        if #Dh_1 == 0 then
                            wZ.PlaceStatus = "No lockers in inventory"
                            return
                        end
                        Df = {}
                        xM("DropperBasePart", function(g1)
                            local Dc = g1:GetAttribute("Unlocked") and not g1:GetAttribute("Type")
                            if Dc then
                                table.insert(Df, g1)
                            end
                        end)
                        if #Df == 0 then
                            wZ.PlaceStatus = "No empty droppers"
                            return
                        end
                        local Di = 0
                        for i, v in ipairs(Df) do
                            local Dq = v
                            local De = Dh_1[i]
                            if not De then
                                break
                            else
                                local Dj = pcall(function()
                                    PlaceBoxOnDropper:FireServer(Dq, De.BoxName, De.Variant)
                                end)
                                if Dj then
                                    Di += 1
                                end
                                task.wait(0.12)
                            end
                        end
                        local Di_1 = Di > 0 and "Placed " .. Di .. " locker(s)"
                        local Dt = if Di_1 then 1 else 0
                        local Dr = 2475 * Dt + 2946 * (1 - Dt)
                        local Ds = 2504 * Dt + 2210 * (1 - Dt)
                        if not ((Dr * 2205 + Ds * 1289 + Dr * Ds) % 16777213 == 14882431) then
                            Di_1 = "Place failed"
                        end
                        wZ.PlaceStatus = Di_1
                    end
                    xa = { Enabled = false, Delay = 0.5 }
                end
                xT = (xT + 14) % 68
            end
        elseif xX <= 12 then
            if (xa and not w1 or not w8 and xq or (not xD or not w1) and (not w8 and xD)) and not (xa and not w1 or not w8 and xq or (not xD or not w1) and (not w8 and xD)) then
                w9.SetEnabled = fn1244
                w9.SetDelay = fn1296
                w9.Step = function()
                    local OpenBoxOnDropper, DL
                    local DM = not wW.Enabled or not xO()
                    if DM then
                        return
                    end
                    OpenBoxOnDropper = xy.OpenBoxOnDropper
                    if not OpenBoxOnDropper then
                        wZ.OpenStatus = "Missing OpenBoxOnDropper"
                        return
                    end
                    DL = 0
                    xM("DropperBasePart", function(hr)
                        local DF_2
                        local DA = not xO() or not wW.Enabled
                        if DA then
                            return
                        end
                        local DJ = if hr:GetAttribute("Type") ~= "Box" then 1 else 0
                        if DJ == 1 then
                            return
                        end
                        local attr3 = hr:GetAttribute("BoxName")
                        local attr2 = hr:GetAttribute("PlacedAt")
                        local attr = hr:GetAttribute("Variant")
                        local DD = xh
                        local DD_2
                        local DE = true
                        if DD then
                            DD = wQ(xh.IsBoxReady)
                        end
                        if DD then
                            DD_2, DF_2 = pcall(xh.IsBoxReady, attr3, attr2, attr)
                            DE = DD_2 and DF_2 == true
                        end
                        if not DE then
                            return
                        end
                        local DA_6 = pcall(function()
                            OpenBoxOnDropper:InvokeServer(hr)
                        end)
                        if DA_6 then
                            DL += 1
                        end
                        task.wait(0.2)
                    end)
                    local DN = DL > 0 and "Opened " .. DL .. " locker(s)" or "No ready lockers"
                    wZ.OpenStatus = DN
                end
                wW = { Enabled = false, Delay = 0.4 }
            else
                wW.SetEnabled = fn1244
                wW.SetDelay = fn1296
                wW.Step = function()
                    local OpenBoxOnDropper, DL
                    local DM = not wW.Enabled or not xO()
                    if DM then
                        return
                    end
                    OpenBoxOnDropper = xy.OpenBoxOnDropper
                    if not OpenBoxOnDropper then
                        wZ.OpenStatus = "Missing OpenBoxOnDropper"
                        return
                    end
                    DL = 0
                    xM("DropperBasePart", function(hr)
                        local DF_1
                        local DA = not xO() or not wW.Enabled
                        if DA then
                            return
                        end
                        local DJ = if hr:GetAttribute("Type") ~= "Box" then 1 else 0
                        if DJ == 1 then
                            return
                        end
                        local attr3 = hr:GetAttribute("BoxName")
                        local attr2 = hr:GetAttribute("PlacedAt")
                        local attr = hr:GetAttribute("Variant")
                        local DD = xh
                        local DD_1
                        local DE = true
                        if DD then
                            DD = wQ(xh.IsBoxReady)
                        end
                        if DD then
                            DD_1, DF_1 = pcall(xh.IsBoxReady, attr3, attr2, attr)
                            DE = DD_1 and DF_1 == true
                        end
                        if not DE then
                            return
                        end
                        local DA_3 = pcall(function()
                            OpenBoxOnDropper:InvokeServer(hr)
                        end)
                        if DA_3 then
                            DL += 1
                        end
                        task.wait(0.2)
                    end)
                    local DN = DL > 0 and "Opened " .. DL .. " locker(s)" or "No ready lockers"
                    wZ.OpenStatus = DN
                end
                w9 = { Enabled = false, Delay = 0.4 }
            end
            xT = (xT + 48) % 68
        else
            xY = {
                "qmxfz",
                "hwzxxwytwc",
                "njzxjew",
                "ndlqi",
                "iijempisk",
                "lttdrjro",
                "bhbkzptajql",
                "lixqv",
                "lochdpslv",
                "zvokgzrps",
                "cuuoy"
            }
            local KU = xT
            xZ = xY[KU % 11 + 1]
            if xZ:len() <= xZ:gsub("(.)", "%1%1", KU % 3 % 2 + 1):len() then
                w9.SetEnabled = fn490
                w9.SetDelay = fn986
                w9.Step = function()
                    local DY, DZ
                    local D_ = not w9.Enabled or not xO()
                    if D_ then
                        return
                    end
                    DZ = nil
                    xq("Box", function(hT)
                        if hT.Parent == LocalPlayer.Character then
                            DZ = hT
                        end
                    end)
                    if DZ then
                        wZ.CarryStatus = "Carrying " .. DZ.Name
                        return
                    end
                    DY = nil
                    xq("Box", function(hZ)
                        local DW = not DY and hZ.Parent == LocalPlayer:FindFirstChild("Backpack")
                        if DW then
                            DY = hZ
                        end
                    end)
                    if not DY then
                        wZ.CarryStatus = "No boxes to carry"
                        return
                    end
                    if xF(DY) then
                        wZ.CarryStatus = "Equipped " .. DY.Name
                    else
                        wZ.CarryStatus = "Equip failed"
                    end
                end
                xs = { Enabled = false, Delay = 1.25 }
            else
                xs.SetEnabled = fn490
                xs.SetDelay = fn986
                xs.Step = function()
                    local DY, DZ
                    local D_ = not w9.Enabled or not xO()
                    if D_ then
                        return
                    end
                    DZ = nil
                    xq("Box", function(hT)
                        if hT.Parent == LocalPlayer.Character then
                            DZ = hT
                        end
                    end)
                    if DZ then
                        wZ.CarryStatus = "Carrying " .. DZ.Name
                        return
                    end
                    DY = nil
                    xq("Box", function(hZ)
                        local DW = not DY and hZ.Parent == LocalPlayer:FindFirstChild("Backpack")
                        if DW then
                            DY = hZ
                        end
                    end)
                    if not DY then
                        wZ.CarryStatus = "No boxes to carry"
                        return
                    end
                    if xF(DY) then
                        wZ.CarryStatus = "Equipped " .. DY.Name
                    else
                        wZ.CarryStatus = "Equip failed"
                    end
                end
                w9 = { Enabled = false, Delay = 1.25 }
            end
            xT = (xT + 48) % 68
        end
    elseif xX <= 15 then
        if xX <= 14 then
            xY = {
                "prhpk",
                "ocejedfgktv",
                "qtzaguttl",
                "ejhik",
                "mgcxlkuedwcq",
                "vviiiixctoz",
                "nhuec",
                "hrogww",
                "zkmeoonidte",
                "tftsbcdfjtmd",
                "jfaln",
                "pgwjag"
            }
            if xY[(xT * 92 + 104) % 12 + 1] <= xY[(xT * 92 + 104) % 12 + 1] then
                xs.SetEnabled = fn885
                xs.SetDelay = fn734
                xs.Step = function()
                    local MerchantSell
                    MerchantSell = nil
                    local Eb = not xs.Enabled or not xO()
                    if Eb then
                        return
                    end
                    MerchantSell = xy.MerchantSell
                    if not MerchantSell then
                        wZ.SellBoxesStatus = "Missing MerchantSell"
                        return
                    end
                    local Eb_3 = pcall(function()
                        MerchantSell:FireServer("Lockers")
                    end)
                    local Eb_4 = Eb_3 and "Sold lockers"
                    local Eg = if Eb_4 then 1 else 0
                    local Ee = 16 * Eg + 1865 * (1 - Eg)
                    local Ef = 3832 * Eg + 705 * (1 - Eg)
                    if not ((Ee * 655 + Ef * 185 + Ee * Ef) % 16777213 == 780712) then
                        Eb_4 = "Sell boxes failed"
                    end
                    wZ.SellBoxesStatus = Eb_4
                end
                xk = { Enabled = false, Delay = 0.7 }
                xk.SetEnabled = fn52
                xk.SetDelay = fn624
                xk.Step = function()
                    local Ew, RequestPlayerUnitLevelUp
                    local Ey = not xk.Enabled or not xO()
                    if Ey then
                        return
                    end
                    RequestPlayerUnitLevelUp = xy.RequestPlayerUnitLevelUp
                    if not RequestPlayerUnitLevelUp then
                        wZ.UpgradePlacedStatus = "Missing RequestPlayerUnitLevelUp"
                        return
                    end
                    Ew = 0
                    xM("DropperBasePart", function(ix)
                        local En = not xO() or not xk.Enabled
                        if En then
                            return
                        end
                        if ix:GetAttribute("Type") ~= "PlayerUnit" then
                            return
                        end
                        local attr = ix:GetAttribute("PlayerUnitName")
                        local Eo = ix:GetAttribute("PlayerUnitVariant") or "Normal"
                        local Eo_4
                        local Eo_3 = (tonumber(ix:GetAttribute("PlayerUnitLevel")))
                        local Ev = if Eo_3 then 1 else 0
                        local Et = 2956 * Ev + 2519 * (1 - Ev)
                        local Eu = 1435 * Ev + 1129 * (1 - Ev)
                        if not ((Et * 767 + Eu * 1035 + Et * Eu) % 16777213 == 7994337) then
                            Eo_3 = 1
                        end
                        local Eq = PlayerUnitService
                        local Eq_2
                        local Er = Eo_3
                        if Eq then
                            Eq = wQ(PlayerUnitService.GetLevelUpgradeCost)
                        end
                        if Eq then
                            Eo_4, Eq_2 = pcall(PlayerUnitService.GetLevelUpgradeCost, LocalPlayer, attr, Eo, Er + 1)
                            if not Eo_4 or Eq_2 == nil then
                                return
                            end
                            if not xo(Eq_2) then
                                return
                            end
                        end
                        local En_6 = pcall(function()
                            RequestPlayerUnitLevelUp:FireServer(ix)
                        end)
                        if En_6 then
                            Ew += 1
                        end
                        task.wait(0.15)
                    end)
                    local Ez = Ew > 0 and "Upgraded " .. Ew .. " unit(s)" or "No affordable placed upgrades"
                    wZ.UpgradePlacedStatus = Ez
                end
                xj = { Enabled = false, Delay = 3.2 }
                xj.SetEnabled = fn866
                xj.SetDelay = fn470
                xj.Step = function()
                    local EquipBestPlayerUnits
                    EquipBestPlayerUnits = nil
                    local EO = not xj.Enabled or not xO()
                    if EO then
                        return
                    end
                    EquipBestPlayerUnits = xy.EquipBestPlayerUnits
                    if not EquipBestPlayerUnits then
                        wZ.EquipBestStatus = "Missing EquipBestPlayerUnits"
                        return
                    end
                    local EO_3 = pcall(function()
                        EquipBestPlayerUnits:FireServer()
                    end)
                    local EO_4 = EO_3 and "Equipped best" or "Equip best failed"
                    wZ.EquipBestStatus = EO_4
                end
                xd = { Enabled = false, Delay = 2.5 }
                xd.SetEnabled = fn297
                xd.SetDelay = fn1316
                xd.Step = function()
                    local E1_3, E1_4
                    local E_ = not xd.Enabled or not xO()
                    if E_ then
                        return
                    end
                    local E__3 = 0
                    local E0 = xy.ClaimDailyReward and xw and wQ(xw.CanClaim)
                    local E0_8, E0_11
                    if E0 then
                        E0_8, E1_3 = pcall(xw.CanClaim, LocalPlayer)
                        if E0_8 and E1_3 == true then
                            local E0_9 = pcall(function()
                                xy.ClaimDailyReward:FireServer()
                            end)
                            if E0_9 then
                                E__3 += 1
                            end
                        end
                    elseif xy.ClaimDailyReward then
                        pcall(function()
                            xy.ClaimDailyReward:FireServer()
                        end)
                    end
                    local E0_10 = xy.ClaimPlaytimeReward and PlaytimeRewardsService and PlaytimeRewardsLibrary and type(PlaytimeRewardsLibrary.Rewards) == "table"
                    if E0_10 then
                        for k in PlaytimeRewardsLibrary.Rewards do
                            local Fb = k
                            E0_11, E1_4 = pcall(PlaytimeRewardsService.GetRewardState, LocalPlayer, Fb)
                            if E0_11 and E1_4 == "Claimable" then
                                local E0_12 = pcall(function()
                                    xy.ClaimPlaytimeReward:FireServer(Fb)
                                end)
                                if E0_12 then
                                    E__3 += 1
                                    if wQ(PlaytimeRewardsService.MarkClaimed) then
                                        pcall(PlaytimeRewardsService.MarkClaimed, LocalPlayer, Fb)
                                    end
                                end
                                task.wait(0.1)
                            end
                        end
                    end
                    if xy.ClaimOfflineEarnings then
                        local E0_13 = pcall(function()
                            xy.ClaimOfflineEarnings:FireServer()
                        end)
                        if E0_13 then
                            E__3 += 1
                        end
                    end
                    local E__4 = E__3 > 0 and "Claimed " .. E__3 .. " reward(s)" or "No rewards ready"
                    wZ.RewardsStatus = E__4
                end
                xD = { Enabled = false, Delay = 0.8 }
                xD.SetEnabled = fn779
                xD.SetDelay = fn468
                xD.Step = function()
                    local PurchaseUpgrade
                    PurchaseUpgrade = nil
                    local Fp = not xD.Enabled or not xO()
                    local Fp_13, Fp_16
                    if Fp then
                        return
                    end
                    PurchaseUpgrade = xy.PurchaseUpgrade
                    local Fp_11 = UpgradesLibrary and UpgradesLibrary.ConveyorLuck
                    local Fq = not PurchaseUpgrade
                    local Fq_3
                    if not Fq then
                        Fq = type(Fp_11) ~= "table"
                    end
                    if not Fq then
                        Fq = not wQ(Fp_11.GetPrice)
                    end
                    local Fs = Fq or not UpgradesService
                    local Fs_5
                    if Fs then
                        wZ.ConveyorUpgradeStatus = "Conveyor upgrade unavailable"
                        return
                    end
                    Fp_13, Fq_3 = pcall(UpgradesService.GetTimesPurchased, LocalPlayer, "ConveyorLuck")
                    local Fs_4 = Fp_13 and tonumber(Fq_3)
                    local Fq_4 = Fs_4 or 0
                    if Fp_11.MaxPurchases and Fq_4 >= Fp_11.MaxPurchases then
                        wZ.ConveyorUpgradeStatus = "Conveyor upgrade maxed"
                        return
                    end
                    Fp_16, Fs_5 = pcall(Fp_11.GetPrice, Fq_4)
                    local Fr_3 = Fp_16 and tonumber(Fs_5)
                    local Fs_6 = Fr_3 or nil
                    local Fp_18 = not Fs_6 or not xo(Fs_6)
                    if Fp_18 then
                        wZ.ConveyorUpgradeStatus = "Cannot afford conveyor upgrade"
                        return
                    end
                    local Fp_19 = pcall(function()
                        PurchaseUpgrade:FireServer("ConveyorLuck")
                    end)
                    local Fr_4 = Fp_19 and "Conveyor luck Lv." .. tostring(Fq_4 + 1)
                    local Fp_20 = Fr_4
                    local Fw = if Fp_20 then 1 else 0
                    local Fu = 1481 * Fw + 1490 * (1 - Fw)
                    local Fv = 3812 * Fw + 1712 * (1 - Fw)
                    if not ((Fu * 1233 + Fv * 1430 + Fu * Fv) % 16777213 == 12922805) then
                        Fp_20 = "Conveyor upgrade failed"
                    end
                    wZ.ConveyorUpgradeStatus = Fp_20
                end
                w1 = {
                    task.spawn(worker5),
                    task.spawn(worker9),
                    task.spawn(worker11),
                    task.spawn(worker3),
                    task.spawn(worker2),
                    task.spawn(worker7),
                    task.spawn(worker6),
                    task.spawn(worker13),
                    task.spawn(worker10),
                    task.spawn(worker8),
                    task.spawn(worker12),
                    task.spawn(worker4),
                    task.spawn(worker)
                }
            else
                xk.SetEnabled = fn885
                xk.SetDelay = fn734
                xk.Step = function()
                    local MerchantSell
                    MerchantSell = nil
                    local Eb = not xs.Enabled or not xO()
                    if Eb then
                        return
                    end
                    MerchantSell = xy.MerchantSell
                    if not MerchantSell then
                        wZ.SellBoxesStatus = "Missing MerchantSell"
                        return
                    end
                    local Eb_1 = pcall(function()
                        MerchantSell:FireServer("Lockers")
                    end)
                    local Eb_2 = Eb_1 and "Sold lockers"
                    local Eg = if Eb_2 then 1 else 0
                    local Ee = 16 * Eg + 1865 * (1 - Eg)
                    local Ef = 3832 * Eg + 705 * (1 - Eg)
                    if not ((Ee * 655 + Ef * 185 + Ee * Ef) % 16777213 == 780712) then
                        Eb_2 = "Sell boxes failed"
                    end
                    wZ.SellBoxesStatus = Eb_2
                end
                xj = { Enabled = false, Delay = 0.7 }
                xj.SetEnabled = fn52
                xj.SetDelay = fn624
                xj.Step = function()
                    local Ew, RequestPlayerUnitLevelUp
                    local Ey = not xk.Enabled or not xO()
                    if Ey then
                        return
                    end
                    RequestPlayerUnitLevelUp = xy.RequestPlayerUnitLevelUp
                    if not RequestPlayerUnitLevelUp then
                        wZ.UpgradePlacedStatus = "Missing RequestPlayerUnitLevelUp"
                        return
                    end
                    Ew = 0
                    xM("DropperBasePart", function(ix)
                        local En = not xO() or not xk.Enabled
                        if En then
                            return
                        end
                        if ix:GetAttribute("Type") ~= "PlayerUnit" then
                            return
                        end
                        local attr = ix:GetAttribute("PlayerUnitName")
                        local Eo = ix:GetAttribute("PlayerUnitVariant") or "Normal"
                        local Eo_2
                        local Eo_1 = (tonumber(ix:GetAttribute("PlayerUnitLevel")))
                        local Ev = if Eo_1 then 1 else 0
                        local Et = 2956 * Ev + 2519 * (1 - Ev)
                        local Eu = 1435 * Ev + 1129 * (1 - Ev)
                        if not ((Et * 767 + Eu * 1035 + Et * Eu) % 16777213 == 7994337) then
                            Eo_1 = 1
                        end
                        local Eq = PlayerUnitService
                        local Eq_1
                        local Er = Eo_1
                        if Eq then
                            Eq = wQ(PlayerUnitService.GetLevelUpgradeCost)
                        end
                        if Eq then
                            Eo_2, Eq_1 = pcall(PlayerUnitService.GetLevelUpgradeCost, LocalPlayer, attr, Eo, Er + 1)
                            if not Eo_2 or Eq_1 == nil then
                                return
                            end
                            if not xo(Eq_1) then
                                return
                            end
                        end
                        local En_3 = pcall(function()
                            RequestPlayerUnitLevelUp:FireServer(ix)
                        end)
                        if En_3 then
                            Ew += 1
                        end
                        task.wait(0.15)
                    end)
                    local Ez = Ew > 0 and "Upgraded " .. Ew .. " unit(s)" or "No affordable placed upgrades"
                    wZ.UpgradePlacedStatus = Ez
                end
                xs = { Enabled = false, Delay = 3.2 }
                xs.SetEnabled = fn866
                xs.SetDelay = fn470
                xs.Step = function()
                    local EquipBestPlayerUnits
                    EquipBestPlayerUnits = nil
                    local EO = not xj.Enabled or not xO()
                    if EO then
                        return
                    end
                    EquipBestPlayerUnits = xy.EquipBestPlayerUnits
                    if not EquipBestPlayerUnits then
                        wZ.EquipBestStatus = "Missing EquipBestPlayerUnits"
                        return
                    end
                    local EO_1 = pcall(function()
                        EquipBestPlayerUnits:FireServer()
                    end)
                    local EO_2 = EO_1 and "Equipped best" or "Equip best failed"
                    wZ.EquipBestStatus = EO_2
                end
                w1 = { Enabled = false, Delay = 2.5 }
                w1.SetEnabled = fn297
                w1.SetDelay = fn1316
                w1.Step = function()
                    local E1_1, E1_2
                    local E_ = not xd.Enabled or not xO()
                    if E_ then
                        return
                    end
                    local E__1 = 0
                    local E0 = xy.ClaimDailyReward and xw and wQ(xw.CanClaim)
                    local E0_1, E0_4
                    if E0 then
                        E0_1, E1_1 = pcall(xw.CanClaim, LocalPlayer)
                        if E0_1 and E1_1 == true then
                            local E0_2 = pcall(function()
                                xy.ClaimDailyReward:FireServer()
                            end)
                            if E0_2 then
                                E__1 += 1
                            end
                        end
                    elseif xy.ClaimDailyReward then
                        pcall(function()
                            xy.ClaimDailyReward:FireServer()
                        end)
                    end
                    local E0_3 = xy.ClaimPlaytimeReward and PlaytimeRewardsService and PlaytimeRewardsLibrary and type(PlaytimeRewardsLibrary.Rewards) == "table"
                    if E0_3 then
                        for k in PlaytimeRewardsLibrary.Rewards do
                            local Fb = k
                            E0_4, E1_2 = pcall(PlaytimeRewardsService.GetRewardState, LocalPlayer, Fb)
                            if E0_4 and E1_2 == "Claimable" then
                                local E0_5 = pcall(function()
                                    xy.ClaimPlaytimeReward:FireServer(Fb)
                                end)
                                if E0_5 then
                                    E__1 += 1
                                    if wQ(PlaytimeRewardsService.MarkClaimed) then
                                        pcall(PlaytimeRewardsService.MarkClaimed, LocalPlayer, Fb)
                                    end
                                end
                                task.wait(0.1)
                            end
                        end
                    end
                    if xy.ClaimOfflineEarnings then
                        local E0_6 = pcall(function()
                            xy.ClaimOfflineEarnings:FireServer()
                        end)
                        if E0_6 then
                            E__1 += 1
                        end
                    end
                    local E__2 = E__1 > 0 and "Claimed " .. E__1 .. " reward(s)" or "No rewards ready"
                    wZ.RewardsStatus = E__2
                end
                xd = { Enabled = false, Delay = 0.8 }
                xd.SetEnabled = fn779
                xd.SetDelay = fn468
                xd.Step = function()
                    local PurchaseUpgrade
                    PurchaseUpgrade = nil
                    local Fp = not xD.Enabled or not xO()
                    local Fp_3, Fp_6
                    if Fp then
                        return
                    end
                    PurchaseUpgrade = xy.PurchaseUpgrade
                    local Fp_1 = UpgradesLibrary and UpgradesLibrary.ConveyorLuck
                    local Fq = not PurchaseUpgrade
                    local Fq_1
                    if not Fq then
                        Fq = type(Fp_1) ~= "table"
                    end
                    if not Fq then
                        Fq = not wQ(Fp_1.GetPrice)
                    end
                    local Fs = Fq or not UpgradesService
                    local Fs_2
                    if Fs then
                        wZ.ConveyorUpgradeStatus = "Conveyor upgrade unavailable"
                        return
                    end
                    Fp_3, Fq_1 = pcall(UpgradesService.GetTimesPurchased, LocalPlayer, "ConveyorLuck")
                    local Fs_1 = Fp_3 and tonumber(Fq_1)
                    local Fq_2 = Fs_1 or 0
                    if Fp_1.MaxPurchases and Fq_2 >= Fp_1.MaxPurchases then
                        wZ.ConveyorUpgradeStatus = "Conveyor upgrade maxed"
                        return
                    end
                    Fp_6, Fs_2 = pcall(Fp_1.GetPrice, Fq_2)
                    local Fr_1 = Fp_6 and tonumber(Fs_2)
                    local Fs_3 = Fr_1 or nil
                    local Fp_8 = not Fs_3 or not xo(Fs_3)
                    if Fp_8 then
                        wZ.ConveyorUpgradeStatus = "Cannot afford conveyor upgrade"
                        return
                    end
                    local Fp_9 = pcall(function()
                        PurchaseUpgrade:FireServer("ConveyorLuck")
                    end)
                    local Fr_2 = Fp_9 and "Conveyor luck Lv." .. tostring(Fq_2 + 1)
                    local Fp_10 = Fr_2
                    local Fw = if Fp_10 then 1 else 0
                    local Fu = 1481 * Fw + 1490 * (1 - Fw)
                    local Fv = 3812 * Fw + 1712 * (1 - Fw)
                    if not ((Fu * 1233 + Fv * 1430 + Fu * Fv) % 16777213 == 12922805) then
                        Fp_10 = "Conveyor upgrade failed"
                    end
                    wZ.ConveyorUpgradeStatus = Fp_10
                end
                xD = {
                    task.spawn(worker13),
                    task.spawn(worker12),
                    task.spawn(worker11),
                    task.spawn(worker10),
                    task.spawn(worker9),
                    task.spawn(worker8),
                    task.spawn(worker7),
                    task.spawn(worker6),
                    task.spawn(worker5),
                    task.spawn(worker4),
                    task.spawn(worker3),
                    task.spawn(worker2),
                    task.spawn(worker)
                }
            end
            xT = (xT + 65) % 68
        else
            local KS = bit32.rrotate(bit32.bxor(bit32.lrotate(xT, 25), string.byte(tostring(xW))), 3)
            if bit32.bxor(bit32.lrotate(bit32.bxor(KS, 3643288053), 4), 2458034013) == bit32.lrotate(KS, 4) then
                xc.Track(fn1368)
                xU = function()
                    local JB
                    local Jy
                    local Library
                    Library = nil
                    Jy = nil
                    JB = nil
                    local Toggles, Js, Jt, Ju, ThemeManager, Options, Jx, SaveManager, onDiscord
                    JB = "https://discord.gg/synapsex"
                    Ju = "Blue Lock Farm"
                    Js = "https://rscripts.net/@Ouroboros"
                    Jx = "https://ouroboros-hub-rbx.web.app/"
                    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
                    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
                    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
                    Toggles, Options = Library.Toggles, Library.Options
                    xS(xc, Library)
                    Jy = function(kJ, kK)
                        local FR
                        if type(setclipboard) == "function" then
                            FR = setclipboard
                        elseif type(toclipboard) == "function" then
                            FR = toclipboard
                        end
                        if not FR then
                            Library:Notify("Clipboard unavailable")
                            return
                        end
                        local FS = pcall(FR, tostring(kJ))
                        if FS then
                            local FR_2 = kK or "Copied"
                            Library:Notify(FR_2)
                        else
                            Library:Notify("Clipboard copy failed")
                        end
                    end
                    onDiscord = function()
                        Jy(JB, "Copied Discord invite")
                    end
                    local Window = Library:CreateWindow({
                        Title = "Ouroboros",
                        Font = Enum.Font.BuilderSans,
                        Footer = { { Text = JB, Copyable = true }, "|", Ju, "|", "v0.2" },
                        Icon = 132608042600488,
                        NotifySide = "Right",
                        ShowCustomCursor = false,
                        CornerRadius = 0,
                        SidebarCompacted = true,
                        TabSwipeFrom = "bottom",
                        Animations = { TabSwitch = true }
                    })
                    Jt = {}
                    Jt.Info = Window:AddTab("Info", "info")
                    Jt.Main = Window:AddTab("Main", "gamepad-2")
                    Jt.Player = Window:AddTab("Player", "person-standing")
                    Jt.Settings = Window:AddTab("Settings", "settings")
                    local function JC_6(kU)
                        local DiscordGroup = kU:AddLeftGroupbox("Discord", "message-circle")
                        DiscordGroup:AddDiscordBox(nil, {
                            Banner = 95892854151512,
                            Avatar = 132608042600488,
                            Title = "Ouroboros Hub",
                            Subtitle = "Dupes, keyless scripts and updates",
                            Status = "online",
                            Accent = Color3.fromRGB(88, 101, 242),
                            Link = JB,
                            Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
                        })
                        return DiscordGroup
                    end
                    for k, v in pairs(Jt) do
                        if k ~= "Info" then
                            JC_6(v)
                        end
                    end
                    local function JD()
                        local Ge
                        local Gl
                        local Gh
                        local Gb
                        local Gi
                        Gb = nil
                        Ge = nil
                        Gh = nil
                        Gi = nil
                        Gl = nil
                        local Label2, Gd, Label3, Gg, Label, Gk, Gm, Gn
                        Ge = function(k0)
                            return (tostring(k0):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
                        end
                        Gb = function(k2, k3)
                            return string.format('<font color="%s">%s</font>', k3, Ge(k2))
                        end
                        Gk = function(k6, k7, k8)
                            return string.format("<b>%s</b> %s %s", k6, Gb("-", "#5a6070"), Gb(k7, k8))
                        end
                        local Go = "#8b93a3"
                        Gd = "#7fd47f"
                        Gl = "Unknown"
                        Gn = "#e8a34d"
                        pcall(function()
                            local FY_2
                            local FX_3
                            if type(identifyexecutor) == "function" then
                                FY_2, FX_3 = identifyexecutor()
                                local FZ = FY_2 ~= ""
                                local F_ = type(FY_2) == "string" and FZ
                                if F_ then
                                    local FZ_2 = type(FX_3) == "string" and FX_3 ~= "" and FY_2 .. " " .. FX_3
                                    Gl = FZ_2 or FY_2
                                end
                            end
                        end)
                        Gi = os.clock()
                        Gm = function()
                            local F4 = math.floor(os.clock() - Gi)
                            if F4 < 60 then
                                return F4 .. "s"
                            elseif F4 < 3600 then
                                return string.format("%dm %ds", F4 // 60, F4 % 60)
                            else
                                return string.format("%dh %dm", F4 // 3600, F4 % 3600 // 60)
                            end
                        end
                        local UserGroup = Jt.Info:AddLeftGroupbox("User", "circle-user")
                        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
                        UserGroup:AddLabel(Gk("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Gd), true)
                        UserGroup:AddLabel(Gk("UserId", tostring(LocalPlayer.UserId), "#6ec1ff"), true)
                        UserGroup:AddLabel(Gk("Executor", Gl, Gd), true)
                        UserGroup:AddDivider()
                        Label3 = UserGroup:AddLabel(Gk("Session", Gm(), Gn), true)
                        UserGroup:AddDivider()
                        UserGroup:AddButton({
                            Text = "Copy Username",
                            Func = function()
                                Jy(LocalPlayer.Name, "Copied username")
                            end
                        })
                        UserGroup:AddButton({
                            Text = "Copy Profile Link",
                            Func = function()
                                Jy("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
                            end
                        })
                        local DiscordGroup = Jt.Info:AddRightGroupbox("Discord", "message-circle")
                        DiscordGroup:AddDiscordBox(nil, {
                            Banner = 95892854151512,
                            Avatar = 132608042600488,
                            Title = "Ouroboros Hub",
                            Subtitle = "Dupes, keyless scripts and updates",
                            Status = "online",
                            Accent = Color3.fromRGB(88, 101, 242),
                            Link = JB,
                            Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
                        })
                        local SessionGroup = Jt.Info:AddRightGroupbox("Session", "signal")
                        SessionGroup:AddLabel(Gk("Game", Ju, "#6ec1ff"), true)
                        Label2 = SessionGroup:AddLabel(Gk("Players", "0/0", Gd), true)
                        Gg = tostring(game.JobId)
                        local Gp = #Gg > 18 and string.sub(Gg, 1, 18) .. "..."
                        local Gp_2 = Gp or Gg
                        SessionGroup:AddLabel(Gk("Job", Gp_2, Go), true)
                        Label = SessionGroup:AddLabel(Gk("Ping", "0 ms", Gn), true)
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
                                Jy(Gg, "Copied Job ID")
                            end
                        })
                        local SocialsGroup = Jt.Info:AddRightGroupbox("Socials", "link")
                        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
                        SocialsGroup:AddButton({
                            Text = "Rscripts",
                            Func = function()
                                Jy(Js, "Copied Rscripts profile")
                            end
                        })
                        SocialsGroup:AddButton({
                            Text = "Website",
                            Func = function()
                                Jy(Jx, "Copied website link")
                            end
                        })
                        Gh = task.spawn(function()
                            local F7_2
                            local F6_3
                            while true do
                                task.wait(1)
                                if Library.Unloaded then
                                    break
                                end
                                Label3:SetText(Gk("Session", Gm(), Gn))
                                Label2:SetText(Gk("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Gd))
                                F6_3, F7_2 = pcall(function()
                                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                                end)
                                local F6_4 = F6_3 and F7_2 .. " ms" or "n/a"
                                Label:SetText(Gk("Ping", F6_4, Gn))
                            end
                        end)
                        xc.Track(function()
                            if coroutine.status(Gh) ~= "dead" then
                                task.cancel(Gh)
                            end
                        end)
                    end
                    JD()
                    local function JC_7()
                        local ou
                        local RollingGroup = Jt.Main:AddLeftGroupbox("Rolling", "dices")
                        local Label13 = RollingGroup:AddLabel(wZ.RollStatus, true)
                        local Label12 = RollingGroup:AddLabel(wZ.BuyStatus, true)
                        RollingGroup:AddDivider()
                        RollingGroup:AddToggle("AutoRoll", {
                            Text = "Auto Roll",
                            Default = false,
                            Callback = function(mi)
                                xA.SetEnabled(mi)
                            end
                        })
                        RollingGroup:AddSlider("RollDelay", {
                            Text = "Roll Delay",
                            Default = 0.35,
                            Min = 0.05,
                            Max = 5,
                            Rounding = 2,
                            Suffix = "s",
                            Callback = function(mm)
                                xA.SetDelay(mm)
                            end
                        })
                        RollingGroup:AddDivider()
                        RollingGroup:AddToggle("AutoBuyRoll", {
                            Text = "Auto Buy Roll",
                            Default = false,
                            Callback = function(mo)
                                xI.SetEnabled(mo)
                            end
                        })
                        RollingGroup:AddToggle("SkipUnaffordable", {
                            Text = "Auto Skip If Unaffordable",
                            Default = false,
                            Callback = function(ms)
                                xI.SetSkipUnaffordable(ms)
                            end
                        })
                        RollingGroup:AddDropdown("BuyBoxes", {
                            Text = "Buy Boxes",
                            Values = xg,
                            Default = {},
                            Multi = true,
                            AllowNull = true,
                            Callback = function(mw)
                                xI.SetBoxes(mw)
                            end
                        })
                        RollingGroup:AddDropdown("BuyVariants", {
                            Text = "Buy Variants",
                            Values = w0,
                            Default = {},
                            Multi = true,
                            AllowNull = true,
                            Callback = function(mA)
                                xI.SetVariants(mA)
                            end
                        })
                        RollingGroup:AddInput("BuyMaxCost", {
                            Text = "Max Buy Cost",
                            Default = "0",
                            Numeric = false,
                            Finished = true,
                            Callback = function(mC)
                                xI.SetMaxCost(mC)
                            end
                        })
                        RollingGroup:AddSlider("BuyDelay", {
                            Text = "Buy Delay",
                            Default = 0.35,
                            Min = 0.05,
                            Max = 5,
                            Rounding = 2,
                            Suffix = "s",
                            Callback = function(mE)
                                xI.SetDelay(mE)
                            end
                        })
                        local LockersGroup = Jt.Main:AddLeftGroupbox("Lockers", "package")
                        local Label11 = LockersGroup:AddLabel(wZ.PlaceStatus, true)
                        local Label10 = LockersGroup:AddLabel(wZ.OpenStatus, true)
                        local Label9 = LockersGroup:AddLabel(wZ.CarryStatus, true)
                        LockersGroup:AddDivider()
                        LockersGroup:AddToggle("AutoPlaceLockers", {
                            Text = "Auto Place Lockers",
                            Default = false,
                            Callback = function(mK)
                                xa.SetEnabled(mK)
                            end
                        })
                        LockersGroup:AddSlider("PlaceDelay", {
                            Text = "Place Delay",
                            Default = 0.45,
                            Min = 0.1,
                            Max = 5,
                            Rounding = 2,
                            Suffix = "s",
                            Callback = function(mO)
                                xa.SetDelay(mO)
                            end
                        })
                        LockersGroup:AddToggle("AutoOpenLockers", {
                            Text = "Auto Open Lockers",
                            Default = false,
                            Callback = function(mQ)
                                wW.SetEnabled(mQ)
                            end
                        })
                        LockersGroup:AddSlider("OpenDelay", {
                            Text = "Open Delay",
                            Default = 0.5,
                            Min = 0.1,
                            Max = 5,
                            Rounding = 2,
                            Suffix = "s",
                            Callback = function(mU)
                                wW.SetDelay(mU)
                            end
                        })
                        LockersGroup:AddToggle("AutoCarryBoxes", {
                            Text = "Auto Carry Boxes",
                            Default = false,
                            Callback = function(mW)
                                w9.SetEnabled(mW)
                            end
                        })
                        LockersGroup:AddSlider("CarryDelay", {
                            Text = "Carry Delay",
                            Default = 0.4,
                            Min = 0.1,
                            Max = 5,
                            Rounding = 2,
                            Suffix = "s",
                            Callback = function(m_)
                                w9.SetDelay(m_)
                            end
                        })
                        local SellingGroup = Jt.Main:AddLeftGroupbox("Selling", "banknote")
                        local Label8 = SellingGroup:AddLabel(wZ.SellStatus, true)
                        local Label7 = SellingGroup:AddLabel(wZ.SellBoxesStatus, true)
                        SellingGroup:AddDivider()
                        SellingGroup:AddToggle("AutoSell", {
                            Text = "Auto Sell",
                            Default = false,
                            Callback = function(m4)
                                xE.SetEnabled(m4)
                            end
                        })
                        SellingGroup:AddDropdown("SellModes", {
                            Text = "Sell Modes",
                            Values = w7,
                            Default = { Crates = true },
                            Multi = true,
                            AllowNull = true,
                            Callback = function(na)
                                xE.SetModes(na)
                            end
                        })
                        SellingGroup:AddSlider("SellDelay", {
                            Text = "Sell Delay",
                            Default = 0.75,
                            Min = 0.2,
                            Max = 10,
                            Rounding = 2,
                            Suffix = "s",
                            Callback = function(nc)
                                xE.SetDelay(nc)
                            end
                        })
                        SellingGroup:AddToggle("AutoSellBoxes", {
                            Text = "Auto Sell Boxes",
                            Default = false,
                            Callback = function(ne)
                                xs.SetEnabled(ne)
                            end
                        })
                        SellingGroup:AddSlider("SellBoxesDelay", {
                            Text = "Sell Boxes Delay",
                            Default = 1.25,
                            Min = 0.3,
                            Max = 10,
                            Rounding = 2,
                            Suffix = "s",
                            Callback = function(ni)
                                xs.SetDelay(ni)
                            end
                        })
                        local ProgressGroup = Jt.Main:AddRightGroupbox("Progress", "trending-up")
                        local Label6 = ProgressGroup:AddLabel(wZ.UpgradeStatus, true)
                        local Label5 = ProgressGroup:AddLabel(wZ.UpgradePlacedStatus, true)
                        local Label4 = ProgressGroup:AddLabel(wZ.ConveyorUpgradeStatus, true)
                        local Label3 = ProgressGroup:AddLabel(wZ.EquipBestStatus, true)
                        local Label2 = ProgressGroup:AddLabel(wZ.IndexStatus, true)
                        local Label = ProgressGroup:AddLabel(wZ.RewardsStatus, true)
                        ProgressGroup:AddDivider()
                        ProgressGroup:AddToggle("AutoUpgrade", {
                            Text = "Auto Upgrade",
                            Default = false,
                            Callback = function(nr)
                                xx.SetEnabled(nr)
                            end
                        })
                        ProgressGroup:AddDropdown("UpgradeIds", {
                            Text = "Upgrades",
                            Values = xN,
                            Default = {},
                            Multi = true,
                            AllowNull = true,
                            Callback = function(nx)
                                xx.SetUpgrades(nx)
                            end
                        })
                        ProgressGroup:AddSlider("UpgradeDelay", {
                            Text = "Upgrade Delay",
                            Default = 0.6,
                            Min = 0.2,
                            Max = 10,
                            Rounding = 2,
                            Suffix = "s",
                            Callback = function(nz)
                                xx.SetDelay(nz)
                            end
                        })
                        ProgressGroup:AddToggle("AutoUpgradePlaced", {
                            Text = "Auto Upgrade Placed",
                            Default = false,
                            Callback = function(nB)
                                xk.SetEnabled(nB)
                            end
                        })
                        ProgressGroup:AddSlider("UpgradePlacedDelay", {
                            Text = "Upgrade Placed Delay",
                            Default = 0.7,
                            Min = 0.2,
                            Max = 10,
                            Rounding = 2,
                            Suffix = "s",
                            Callback = function(nF)
                                xk.SetDelay(nF)
                            end
                        })
                        ProgressGroup:AddToggle("AutoUpgradeConveyor", {
                            Text = "Auto Upgrade Conveyor",
                            Default = false,
                            Callback = function(nH)
                                xD.SetEnabled(nH)
                            end
                        })
                        ProgressGroup:AddSlider("ConveyorUpgradeDelay", {
                            Text = "Conveyor Upgrade Delay",
                            Default = 0.8,
                            Min = 0.2,
                            Max = 10,
                            Rounding = 2,
                            Suffix = "s",
                            Callback = function(nL)
                                xD.SetDelay(nL)
                            end
                        })
                        ProgressGroup:AddToggle("AutoEquipBest", {
                            Text = "Auto Equip Best",
                            Default = false,
                            Callback = function(nN)
                                xj.SetEnabled(nN)
                            end
                        })
                        ProgressGroup:AddSlider("EquipBestDelay", {
                            Text = "Equip Best Delay",
                            Default = 3.2,
                            Min = 3,
                            Max = 30,
                            Rounding = 1,
                            Suffix = "s",
                            Callback = function(nR)
                                xj.SetDelay(nR)
                            end
                        })
                        ProgressGroup:AddDivider()
                        ProgressGroup:AddToggle("AutoClaimIndex", {
                            Text = "Auto Claim Index",
                            Default = false,
                            Callback = function(nT)
                                wN.SetEnabled(nT)
                            end
                        })
                        ProgressGroup:AddSlider("IndexDelay", {
                            Text = "Index Delay",
                            Default = 2,
                            Min = 0.5,
                            Max = 30,
                            Rounding = 1,
                            Suffix = "s",
                            Callback = function(nX)
                                wN.SetDelay(nX)
                            end
                        })
                        ProgressGroup:AddToggle("AutoClaimRewards", {
                            Text = "Auto Claim Rewards",
                            Default = false,
                            Callback = function(nZ)
                                xd.SetEnabled(nZ)
                            end
                        })
                        ProgressGroup:AddSlider("RewardsDelay", {
                            Text = "Rewards Delay",
                            Default = 2.5,
                            Min = 0.5,
                            Max = 30,
                            Rounding = 1,
                            Suffix = "s",
                            Callback = function(n2)
                                xd.SetDelay(n2)
                            end
                        })
                        ou = task.spawn(function()
                            while not Library.Unloaded do
                                pcall(function()
                                    Label13:SetText(wZ.RollStatus)
                                    Label12:SetText(wZ.BuyStatus)
                                    Label11:SetText(wZ.PlaceStatus)
                                    Label10:SetText(wZ.OpenStatus)
                                    Label9:SetText(wZ.CarryStatus)
                                    Label8:SetText(wZ.SellStatus)
                                    Label7:SetText(wZ.SellBoxesStatus)
                                    Label6:SetText(wZ.UpgradeStatus)
                                    Label5:SetText(wZ.UpgradePlacedStatus)
                                    Label4:SetText(wZ.ConveyorUpgradeStatus)
                                    Label3:SetText(wZ.EquipBestStatus)
                                    Label2:SetText(wZ.IndexStatus)
                                    Label:SetText(wZ.RewardsStatus)
                                end)
                                task.wait(0.35)
                            end
                        end)
                        xc.Track(function()
                            if coroutine.status(ou) ~= "dead" then
                                task.cancel(ou)
                            end
                        end)
                    end
                    JC_7()
                    local function JC_8()
                        local oB
                        local MovementGroup = Jt.Player:AddLeftGroupbox("Movement", "footprints")
                        local FlightGroup = Jt.Player:AddRightGroupbox("Flight", "plane")
                        oB = {
                            [1] = false,
                            [2] = 32,
                            [3] = false,
                            [4] = 60,
                            [5] = false,
                            [6] = false,
                            [7] = false,
                            [8] = {},
                            [9] = {},
                            [10] = {},
                            [11] = nil,
                            [12] = nil,
                            [13] = nil,
                            [14] = nil,
                            [15] = nil
                        }
                        local function oC()
                            local Character = LocalPlayer.Character
                            local Gw = Character and Character:FindFirstChildOfClass("Humanoid")
                            return Gw or nil
                        end
                        local function oH()
                            local Character = LocalPlayer.Character
                            local Gz = Character and Character:FindFirstChild("HumanoidRootPart")
                            return Gz or nil
                        end
                        local function oL()
                            local GB = oC()
                            if not GB then
                                return
                            end
                            if oB[1] then
                                if oB[8][GB] == nil then
                                    oB[8][GB] = GB.WalkSpeed
                                end
                                GB.WalkSpeed = oB[2]
                            else
                                local GC = oB[8][GB]
                                if GC ~= nil then
                                    GB.WalkSpeed = GC
                                    oB[8][GB] = nil
                                end
                            end
                        end
                        local function oQ()
                            if oB[11] then
                                pcall(function()
                                    oB[11]:Destroy()
                                end)
                                oB[11] = nil
                            end
                            local GE = oC()
                            if GE and oB[12] ~= nil then
                                GE.PlatformStand = oB[12]
                                oB[12] = nil
                            end
                        end
                        local function oW()
                            oQ()
                            local GK = oH()
                            local GL = oC()
                            if not GK or not GL then
                                return
                            end
                            oB[12] = GL.PlatformStand
                            GL.PlatformStand = true
                            local bodyVelocity = Instance.new("BodyVelocity")
                            bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
                            bodyVelocity.Velocity = Vector3.zero
                            bodyVelocity.Parent = GK
                            oB[11] = bodyVelocity
                        end
                        local function o3()
                            for k, v in pairs(oB[9]) do
                                local GU = k
                                local GW = v
                                if GU and GU.Parent then
                                    pcall(function()
                                        GU.CanCollide = GW
                                    end)
                                end
                            end
                            table.clear(oB[9])
                        end
                        local function pa(pb)
                            if not pb:IsA("BasePart") then
                                return
                            end
                            if oB[9][pb] == nil then
                                oB[9][pb] = pb.CanCollide
                            end
                            pb.CanCollide = false
                        end
                        local function pd()
                            for k, v in pairs(oB[10]) do
                                local G5 = k
                                local G7 = v
                                if G5 and G5.Parent then
                                    pcall(function()
                                        G5.HoldDuration = G7.HoldDuration
                                        G5.MaxActivationDistance = G7.MaxActivationDistance
                                        G5.RequiresLineOfSight = G7.RequiresLineOfSight
                                    end)
                                end
                            end
                            table.clear(oB[10])
                        end
                        local function pk(pl)
                            if not pl:IsA("ProximityPrompt") then
                                return
                            end
                            if oB[10][pl] == nil then
                                oB[10][pl] = {
                                    HoldDuration = pl.HoldDuration,
                                    MaxActivationDistance = pl.MaxActivationDistance,
                                    RequiresLineOfSight = pl.RequiresLineOfSight
                                }
                            end
                            pl.HoldDuration = 0
                            pl.MaxActivationDistance = 50
                            pl.RequiresLineOfSight = false
                        end
                        MovementGroup:AddToggle("WalkSpeedEnabled", {
                            Text = "WalkSpeed",
                            Default = false,
                            Callback = function(pn)
                                oB[1] = pn
                                oL()
                            end
                        })
                        MovementGroup:AddSlider("WalkSpeed", {
                            Text = "WalkSpeed Amount",
                            Default = 32,
                            Min = 16,
                            Max = 250,
                            Rounding = 0,
                            Callback = function(pq)
                                oB[2] = pq
                                if oB[1] then
                                    oL()
                                end
                            end
                        })
                        MovementGroup:AddToggle("InfJump", {
                            Text = "Infinite Jump",
                            Default = false,
                            Callback = function(pt)
                                oB[6] = pt
                                if oB[14] then
                                    oB[14]:Disconnect()
                                    oB[14] = nil
                                end
                                if pt then
                                    oB[14] = UserInputService.JumpRequest:Connect(function()
                                        local Hg = not oB[6] or not xO()
                                        if Hg then
                                            return
                                        end
                                        local Hg_2 = oC()
                                        if Hg_2 then
                                            Hg_2:ChangeState(Enum.HumanoidStateType.Jumping)
                                        end
                                    end)
                                end
                            end
                        })
                        MovementGroup:AddToggle("NoClip", {
                            Text = "NoClip",
                            Default = false,
                            Callback = function(pH)
                                oB[5] = pH
                                if oB[13] then
                                    oB[13]:Disconnect()
                                    oB[13] = nil
                                end
                                if pH then
                                    local Character2 = LocalPlayer.Character
                                    if Character2 then
                                        for i, descendant in ipairs(Character2:GetDescendants()) do
                                            pa(descendant)
                                        end
                                    end
                                    oB[13] = RunService.Stepped:Connect(function()
                                        local Hj = not oB[5] or not xO()
                                        if Hj then
                                            return
                                        end
                                        local Character = LocalPlayer.Character
                                        if not Character then
                                            return
                                        end
                                        for i, child in ipairs(Character:GetChildren()) do
                                            pa(child)
                                        end
                                    end)
                                else
                                    o3()
                                end
                            end
                        })
                        MovementGroup:AddToggle("InstantProximityPrompt", {
                            Text = "Instant ProximityPrompt",
                            Default = false,
                            Callback = function(p0)
                                oB[7] = p0
                                if oB[15] then
                                    oB[15]:Disconnect()
                                    oB[15] = nil
                                end
                                if p0 then
                                    for i, v in ipairs(xv:QueryDescendants("ProximityPrompt")) do
                                        pk(v)
                                    end
                                    oB[15] = xv.DescendantAdded:Connect(function(p9)
                                        if oB[7] then
                                            pk(p9)
                                        end
                                    end)
                                else
                                    pd()
                                end
                            end
                        })
                        FlightGroup:AddToggle("Fly", {
                            Text = "Fly",
                            Default = false,
                            Callback = function(qc)
                                oB[3] = qc
                                if qc then
                                    oW()
                                else
                                    oQ()
                                end
                            end
                        })
                        FlightGroup:AddSlider("FlySpeed", {
                            Text = "Fly Speed",
                            Default = 60,
                            Min = 10,
                            Max = 400,
                            Rounding = 0,
                            Callback = function(qg)
                                oB[4] = qg
                            end
                        })
                        local qv = task.spawn(function()
                            while true do
                                local HO = xO() and not Library.Unloaded
                                if HO then
                                    if oB[3] and oB[11] and oB[11].Parent then
                                        if UserInputService:GetFocusedTextBox() then
                                            oB[11].Velocity = Vector3.zero
                                        else
                                            local CurrentCamera = xv.CurrentCamera
                                            local HP = Vector3.zero
                                            if CurrentCamera then
                                                local LookVector = CurrentCamera.CFrame.LookVector
                                                local RightVector = CurrentCamera.CFrame.RightVector
                                                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                                    HP += LookVector
                                                end
                                                local HV = if UserInputService:IsKeyDown(Enum.KeyCode.S) then 1 else 0
                                                if HV == 1 then
                                                    HP -= LookVector
                                                end
                                                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                                                    HP -= RightVector
                                                end
                                                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                                                    HP += RightVector
                                                end
                                                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                                                    HP += Vector3.yAxis
                                                end
                                                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                                                    HP -= Vector3.yAxis
                                                end
                                            end
                                            if HP.Magnitude > 0 then
                                                oB[11].Velocity = HP.Unit * oB[4]
                                            else
                                                oB[11].Velocity = Vector3.zero
                                            end
                                        end
                                    end
                                    if oB[1] then
                                        oL()
                                    end
                                    task.wait(0.03)
                                    continue
                                end
                                break
                            end
                        end)
                        xc.Track(function()
                            pcall(task.cancel, qv)
                            oQ()
                            o3()
                            pd()
                            if oB[13] then
                                oB[13]:Disconnect()
                            end
                            if oB[14] then
                                oB[14]:Disconnect()
                            end
                            if oB[15] then
                                oB[15]:Disconnect()
                            end
                            oB[1] = false
                            oL()
                        end)
                        LocalPlayer.CharacterAdded:Connect(function()
                            task.wait(0.5)
                            local H_ = not xO() or Library.Unloaded
                            if H_ then
                                return
                            end
                            table.clear(oB[8])
                            if oB[1] then
                                oL()
                            end
                            if oB[3] then
                                oW()
                            end
                        end)
                    end
                    JC_8()
                    local function JC_9()
                        local I3, I4, I5, I6, I7, I8, I9, Ja, Jb, Jc, Jd, Je, Label, Jg
                        Jg = {}
                        Jb = {}
                        I7 = nil
                        I9 = 0
                        I4 = 0
                        Jc = false
                        Je = os.clock()
                        local MenuGroup = Jt.Settings:AddLeftGroupbox("Menu", "logs")
                        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                        Label = MenuGroup:AddLabel("AFK triggers: 0")
                        I6 = function()
                            local CurrentCamera
                            CurrentCamera = Workspace.CurrentCamera
                            local H5 = not CurrentCamera
                            local H9 = if H5 then 1 else 0
                            local H7 = 2221 * H9 + 2920 * (1 - H9)
                            local H8 = 2674 * H9 + 649 * (1 - H9)
                            if not ((H7 * 763 + H8 * 1749 + H7 * H8) % 16777213 == 12310403) then
                                H5 = not wQ(VirtualUser.CaptureController)
                            end
                            if not H5 then
                                H5 = not wQ(VirtualUser.ClickButton2)
                            end
                            if H5 then
                                return false
                            end
                            local H5_2 = pcall(function()
                                VirtualUser:CaptureController()
                                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
                            end)
                            if not H5_2 then
                                return false
                            end
                            I9 += 1
                            Je = os.clock()
                            pcall(function()
                                Label:SetText("AFK triggers: " .. I9)
                            end)
                            return true
                        end
                        Ja = function(rc)
                            pcall(function()
                                GuiService:SetGameplayPausedNotificationEnabled(not rc)
                            end)
                            pcall(function()
                                local RobloxNetworkPauseNotificati = xi:FindFirstChild("RobloxNetworkPauseNotification")
                                if RobloxNetworkPauseNotificati then
                                    RobloxNetworkPauseNotificati.Enabled = not rc
                                end
                            end)
                            if not rc then
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
                        I8 = function(rs)
                            local Ie = rs.ClassName == "ParticleEmitter" or rs.ClassName == "Trail" or rs.ClassName == "Smoke" or rs.ClassName == "Fire" or rs.ClassName == "Sparkles"
                            local Ii = if Ie then 1 else 0
                            local Ig = 3244 * Ii + 3625 * (1 - Ii)
                            local Ih = 1645 * Ii + 1030 * (1 - Ii)
                            if not ((Ig * 3018 + Ih * 2323 + Ig * Ih) % 16777213 == 2170894) then
                                Ie = rs.ClassName == "Explosion"
                            end
                            local Ii_2 = if Ie then 1 else 0
                            local Ig_2 = 1927 * Ii_2 + 3424 * (1 - Ii_2)
                            local Ih_2 = 342 * Ii_2 + 2180 * (1 - Ii_2)
                            if not ((Ig_2 * 2621 + Ih_2 * 2060 + Ig_2 * Ih_2) % 16777213 == 6414221) then
                                Ie = rs.ClassName == "Beam"
                            end
                            if Ie then
                                if Jg[rs] == nil then
                                    Jg[rs] = rs.Enabled
                                end
                                pcall(function()
                                    rs.Enabled = false
                                end)
                            end
                        end
                        I5 = function()
                            for k, v in pairs(Jg) do
                                local In = k
                                local Ip = v
                                if In.Parent then
                                    pcall(function()
                                        In.Enabled = Ip
                                    end)
                                end
                            end
                            table.clear(Jg)
                            if I7 then
                                pcall(function()
                                    settings().Rendering.QualityLevel = I7.Quality
                                end)
                                Lighting.GlobalShadows = I7.Shadows
                                Lighting.FogEnd = I7.Fog
                                I7 = nil
                            end
                        end
                        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
                        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
                        MenuGroup:AddToggle("Disable3D", {
                            Text = "Disable 3D Rendering",
                            Default = false,
                            Callback = function(rH)
                                pcall(function()
                                    RunService:Set3dRenderingEnabled(not rH)
                                end)
                            end
                        })
                        MenuGroup:AddToggle("FpsBoost", {
                            Text = "FPS Boost",
                            Default = false,
                            Callback = function(rM)
                                if rM then
                                    if not I7 then
                                        I7 = {
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
                                        pcall(I8, v)
                                    end
                                else
                                    I5()
                                end
                            end
                        })
                        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
                        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                        Library.ToggleKeybind = Options.MenuKeybind
                        Ja(true)
                        local ScriptGroup = Jt.Settings:AddLeftGroupbox("Script", "scroll-text")
                        ScriptGroup:AddButton({
                            Text = "Unload Script",
                            Func = function()
                                Library:Unload()
                            end
                        })
                        Toggles.AntiGameplayPause:OnChanged(function()
                            Ja(Toggles.AntiGameplayPause.Value)
                        end)
                        if Toggles.AntiGameplayPause.Value then
                            Ja(true)
                        end
                        table.insert(Jb, LocalPlayer.Idled:Connect(function()
                            if Toggles.AntiAfk.Value and not Library.Unloaded then
                                I6()
                            end
                        end))
                        table.insert(Jb, Workspace.DescendantAdded:Connect(function(r4)
                            if Toggles.FpsBoost.Value then
                                I8(r4)
                            end
                        end))
                        I3 = function(r8)
                            if Jc or Library.Unloaded or not Toggles.AutoReconnect.Value then
                                return
                            end
                            Jc = true
                            local IF = I4
                            local IG_3 = pcall(function()
                                if r8 then
                                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                                else
                                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                                end
                            end)
                            if not IG_3 then
                                Jc = false
                                if not r8 and IF == I4 then
                                    task.delay(1.5, function()
                                        if IF == I4 then
                                            I3(true)
                                        end
                                    end)
                                end
                            end
                        end
                        table.insert(Jb, TeleportService.TeleportInitFailed:Connect(function(sq)
                            local IN
                            if sq == LocalPlayer and Jc then
                                Jc = false
                                IN = I4
                                task.delay(3, function()
                                    if IN == I4 then
                                        I3(true)
                                    end
                                end)
                            end
                        end))
                        task.spawn(function()
                            local RobloxPromptGui = xi:WaitForChild("RobloxPromptGui", 30)
                            local IS = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
                            if Library.Unloaded or not IS then
                                return
                            end
                            table.insert(Jb, IS.ChildAdded:Connect(function(sF)
                                if sF.Name == "ErrorPrompt" then
                                    I3(false)
                                end
                            end))
                        end)
                        Jd = task.spawn(function()
                            while not Library.Unloaded do
                                if Toggles.AntiGameplayPause.Value then
                                    Ja(true)
                                end
                                local IV = Toggles.AntiAfk.Value and os.clock() - Je >= 60
                                if IV then
                                    I6()
                                end
                                task.wait(1)
                            end
                        end)
                        xc.Track(function()
                            I4 += 1
                            for i, v in ipairs(Jb) do
                                v:Disconnect()
                            end
                            pcall(task.cancel, Jd)
                            Ja(false)
                            I5()
                            pcall(function()
                                RunService:Set3dRenderingEnabled(true)
                            end)
                        end)
                    end
                    JC_9()
                    local function JC_10()
                        ThemeManager:SetLibrary(Library)
                        ThemeManager:SetFolder("OuroborosHub")
                        ThemeManager:SaveDefault("Evil Hello Kitty")
                        ThemeManager:ApplyToTab(Jt.Settings)
                        SaveManager:SetLibrary(Library)
                        SaveManager:IgnoreThemeSettings()
                        SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
                        SaveManager:SetFolder("OuroborosHub/BlueLockFarm")
                        SaveManager:BuildConfigSection(Jt.Settings)
                        ThemeManager:LoadDefault()
                        SaveManager:LoadAutoloadConfig()
                        if Options.BuyBoxes then
                            xI.SetBoxes(Options.BuyBoxes.Value)
                        end
                        if Options.BuyVariants then
                            xI.SetVariants(Options.BuyVariants.Value)
                        end
                        if Options.BuyMaxCost then
                            xI.SetMaxCost(Options.BuyMaxCost.Value)
                        end
                        if Options.SellModes then
                            xE.SetModes(Options.SellModes.Value)
                        end
                        if Options.UpgradeIds then
                            xx.SetUpgrades(Options.UpgradeIds.Value)
                        end
                        if Options.RollDelay then
                            xA.SetDelay(Options.RollDelay.Value)
                        end
                        if Options.BuyDelay then
                            xI.SetDelay(Options.BuyDelay.Value)
                        end
                        if Options.SellDelay then
                            xE.SetDelay(Options.SellDelay.Value)
                        end
                        if Options.UpgradeDelay then
                            xx.SetDelay(Options.UpgradeDelay.Value)
                        end
                        if Options.IndexDelay then
                            wN.SetDelay(Options.IndexDelay.Value)
                        end
                        if Options.PlaceDelay then
                            xa.SetDelay(Options.PlaceDelay.Value)
                        end
                        if Options.OpenDelay then
                            wW.SetDelay(Options.OpenDelay.Value)
                        end
                        if Options.CarryDelay then
                            w9.SetDelay(Options.CarryDelay.Value)
                        end
                        if Options.SellBoxesDelay then
                            xs.SetDelay(Options.SellBoxesDelay.Value)
                        end
                        if Options.UpgradePlacedDelay then
                            xk.SetDelay(Options.UpgradePlacedDelay.Value)
                        end
                        if Options.EquipBestDelay then
                            xj.SetDelay(Options.EquipBestDelay.Value)
                        end
                        if Options.RewardsDelay then
                            xd.SetDelay(Options.RewardsDelay.Value)
                        end
                        if Options.ConveyorUpgradeDelay then
                            xD.SetDelay(Options.ConveyorUpgradeDelay.Value)
                        end
                        if Toggles.AutoRoll then
                            xA.SetEnabled(Toggles.AutoRoll.Value)
                        end
                        if Toggles.AutoBuyRoll then
                            xI.SetEnabled(Toggles.AutoBuyRoll.Value)
                        end
                        if Toggles.SkipUnaffordable then
                            xI.SetSkipUnaffordable(Toggles.SkipUnaffordable.Value)
                        end
                        if Toggles.AutoSell then
                            xE.SetEnabled(Toggles.AutoSell.Value)
                        end
                        if Toggles.AutoUpgrade then
                            xx.SetEnabled(Toggles.AutoUpgrade.Value)
                        end
                        if Toggles.AutoClaimIndex then
                            wN.SetEnabled(Toggles.AutoClaimIndex.Value)
                        end
                        if Toggles.AutoPlaceLockers then
                            xa.SetEnabled(Toggles.AutoPlaceLockers.Value)
                        end
                        if Toggles.AutoOpenLockers then
                            wW.SetEnabled(Toggles.AutoOpenLockers.Value)
                        end
                        if Toggles.AutoCarryBoxes then
                            w9.SetEnabled(Toggles.AutoCarryBoxes.Value)
                        end
                        if Toggles.AutoSellBoxes then
                            xs.SetEnabled(Toggles.AutoSellBoxes.Value)
                        end
                        if Toggles.AutoUpgradePlaced then
                            xk.SetEnabled(Toggles.AutoUpgradePlaced.Value)
                        end
                        if Toggles.AutoEquipBest then
                            xj.SetEnabled(Toggles.AutoEquipBest.Value)
                        end
                        if Toggles.AutoClaimRewards then
                            xd.SetEnabled(Toggles.AutoClaimRewards.Value)
                        end
                        if Toggles.AutoUpgradeConveyor then
                            xD.SetEnabled(Toggles.AutoUpgradeConveyor.Value)
                        end
                        if Toggles.HideUiOnStart.Value then
                            Library:Toggle(false)
                        end
                    end
                    JC_10()
                end
            else
                xU.Track(fn1368)
                xc = function()
                    local JB
                    local Jy
                    local Library
                    Library = nil
                    Jy = nil
                    JB = nil
                    local Toggles, Js, Jt, Ju, ThemeManager, Options, Jx, SaveManager, onDiscord
                    JB = "https://discord.gg/synapsex"
                    Ju = "Blue Lock Farm"
                    Js = "https://rscripts.net/@Ouroboros"
                    Jx = "https://ouroboros-hub-rbx.web.app/"
                    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
                    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
                    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
                    Toggles, Options = Library.Toggles, Library.Options
                    xS(xc, Library)
                    Jy = function(kJ, kK)
                        local FR
                        if type(setclipboard) == "function" then
                            FR = setclipboard
                        elseif type(toclipboard) == "function" then
                            FR = toclipboard
                        end
                        if not FR then
                            Library:Notify("Clipboard unavailable")
                            return
                        end
                        local FS = pcall(FR, tostring(kJ))
                        if FS then
                            local FR_1 = kK or "Copied"
                            Library:Notify(FR_1)
                        else
                            Library:Notify("Clipboard copy failed")
                        end
                    end
                    onDiscord = function()
                        Jy(JB, "Copied Discord invite")
                    end
                    local Window = Library:CreateWindow({
                        Title = "Ouroboros",
                        Font = Enum.Font.BuilderSans,
                        Footer = { { Text = JB, Copyable = true }, "|", Ju, "|", "v0.2" },
                        Icon = 132608042600488,
                        NotifySide = "Right",
                        ShowCustomCursor = false,
                        CornerRadius = 0,
                        SidebarCompacted = true,
                        TabSwipeFrom = "bottom",
                        Animations = { TabSwitch = true }
                    })
                    Jt = {}
                    Jt.Info = Window:AddTab("Info", "info")
                    Jt.Main = Window:AddTab("Main", "gamepad-2")
                    Jt.Player = Window:AddTab("Player", "person-standing")
                    Jt.Settings = Window:AddTab("Settings", "settings")
                    local function JC_1(kU)
                        local DiscordGroup = kU:AddLeftGroupbox("Discord", "message-circle")
                        DiscordGroup:AddDiscordBox(nil, {
                            Banner = 95892854151512,
                            Avatar = 132608042600488,
                            Title = "Ouroboros Hub",
                            Subtitle = "Dupes, keyless scripts and updates",
                            Status = "online",
                            Accent = Color3.fromRGB(88, 101, 242),
                            Link = JB,
                            Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
                        })
                        return DiscordGroup
                    end
                    for k, v in pairs(Jt) do
                        if k ~= "Info" then
                            JC_1(v)
                        end
                    end
                    local function JD()
                        local Ge
                        local Gl
                        local Gh
                        local Gb
                        local Gi
                        Gb = nil
                        Ge = nil
                        Gh = nil
                        Gi = nil
                        Gl = nil
                        local Label2, Gd, Label3, Gg, Label, Gk, Gm, Gn
                        Ge = function(k0)
                            return (tostring(k0):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
                        end
                        Gb = function(k2, k3)
                            return string.format('<font color="%s">%s</font>', k3, Ge(k2))
                        end
                        Gk = function(k6, k7, k8)
                            return string.format("<b>%s</b> %s %s", k6, Gb("-", "#5a6070"), Gb(k7, k8))
                        end
                        local Go = "#8b93a3"
                        Gd = "#7fd47f"
                        Gl = "Unknown"
                        Gn = "#e8a34d"
                        pcall(function()
                            local FY_1
                            local FX_1
                            if type(identifyexecutor) == "function" then
                                FY_1, FX_1 = identifyexecutor()
                                local FZ = FY_1 ~= ""
                                local F_ = type(FY_1) == "string" and FZ
                                if F_ then
                                    local FZ_1 = type(FX_1) == "string" and FX_1 ~= "" and FY_1 .. " " .. FX_1
                                    Gl = FZ_1 or FY_1
                                end
                            end
                        end)
                        Gi = os.clock()
                        Gm = function()
                            local F4 = math.floor(os.clock() - Gi)
                            if F4 < 60 then
                                return F4 .. "s"
                            elseif F4 < 3600 then
                                return string.format("%dm %ds", F4 // 60, F4 % 60)
                            else
                                return string.format("%dh %dm", F4 // 3600, F4 % 3600 // 60)
                            end
                        end
                        local UserGroup = Jt.Info:AddLeftGroupbox("User", "circle-user")
                        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
                        UserGroup:AddLabel(Gk("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Gd), true)
                        UserGroup:AddLabel(Gk("UserId", tostring(LocalPlayer.UserId), "#6ec1ff"), true)
                        UserGroup:AddLabel(Gk("Executor", Gl, Gd), true)
                        UserGroup:AddDivider()
                        Label3 = UserGroup:AddLabel(Gk("Session", Gm(), Gn), true)
                        UserGroup:AddDivider()
                        UserGroup:AddButton({
                            Text = "Copy Username",
                            Func = function()
                                Jy(LocalPlayer.Name, "Copied username")
                            end
                        })
                        UserGroup:AddButton({
                            Text = "Copy Profile Link",
                            Func = function()
                                Jy("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
                            end
                        })
                        local DiscordGroup = Jt.Info:AddRightGroupbox("Discord", "message-circle")
                        DiscordGroup:AddDiscordBox(nil, {
                            Banner = 95892854151512,
                            Avatar = 132608042600488,
                            Title = "Ouroboros Hub",
                            Subtitle = "Dupes, keyless scripts and updates",
                            Status = "online",
                            Accent = Color3.fromRGB(88, 101, 242),
                            Link = JB,
                            Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
                        })
                        local SessionGroup = Jt.Info:AddRightGroupbox("Session", "signal")
                        SessionGroup:AddLabel(Gk("Game", Ju, "#6ec1ff"), true)
                        Label2 = SessionGroup:AddLabel(Gk("Players", "0/0", Gd), true)
                        Gg = tostring(game.JobId)
                        local Gp = #Gg > 18 and string.sub(Gg, 1, 18) .. "..."
                        local Gp_1 = Gp or Gg
                        SessionGroup:AddLabel(Gk("Job", Gp_1, Go), true)
                        Label = SessionGroup:AddLabel(Gk("Ping", "0 ms", Gn), true)
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
                                Jy(Gg, "Copied Job ID")
                            end
                        })
                        local SocialsGroup = Jt.Info:AddRightGroupbox("Socials", "link")
                        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
                        SocialsGroup:AddButton({
                            Text = "Rscripts",
                            Func = function()
                                Jy(Js, "Copied Rscripts profile")
                            end
                        })
                        SocialsGroup:AddButton({
                            Text = "Website",
                            Func = function()
                                Jy(Jx, "Copied website link")
                            end
                        })
                        Gh = task.spawn(function()
                            local F7_1
                            local F6_1
                            while true do
                                task.wait(1)
                                if Library.Unloaded then
                                    break
                                end
                                Label3:SetText(Gk("Session", Gm(), Gn))
                                Label2:SetText(Gk("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Gd))
                                F6_1, F7_1 = pcall(function()
                                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                                end)
                                local F6_2 = F6_1 and F7_1 .. " ms" or "n/a"
                                Label:SetText(Gk("Ping", F6_2, Gn))
                            end
                        end)
                        xc.Track(function()
                            if coroutine.status(Gh) ~= "dead" then
                                task.cancel(Gh)
                            end
                        end)
                    end
                    JD()
                    local function JC_2()
                        local ou
                        local RollingGroup = Jt.Main:AddLeftGroupbox("Rolling", "dices")
                        local Label13 = RollingGroup:AddLabel(wZ.RollStatus, true)
                        local Label12 = RollingGroup:AddLabel(wZ.BuyStatus, true)
                        RollingGroup:AddDivider()
                        RollingGroup:AddToggle("AutoRoll", {
                            Text = "Auto Roll",
                            Default = false,
                            Callback = function(mi)
                                xA.SetEnabled(mi)
                            end
                        })
                        RollingGroup:AddSlider("RollDelay", {
                            Text = "Roll Delay",
                            Default = 0.35,
                            Min = 0.05,
                            Max = 5,
                            Rounding = 2,
                            Suffix = "s",
                            Callback = function(mm)
                                xA.SetDelay(mm)
                            end
                        })
                        RollingGroup:AddDivider()
                        RollingGroup:AddToggle("AutoBuyRoll", {
                            Text = "Auto Buy Roll",
                            Default = false,
                            Callback = function(mo)
                                xI.SetEnabled(mo)
                            end
                        })
                        RollingGroup:AddToggle("SkipUnaffordable", {
                            Text = "Auto Skip If Unaffordable",
                            Default = false,
                            Callback = function(ms)
                                xI.SetSkipUnaffordable(ms)
                            end
                        })
                        RollingGroup:AddDropdown("BuyBoxes", {
                            Text = "Buy Boxes",
                            Values = xg,
                            Default = {},
                            Multi = true,
                            AllowNull = true,
                            Callback = function(mw)
                                xI.SetBoxes(mw)
                            end
                        })
                        RollingGroup:AddDropdown("BuyVariants", {
                            Text = "Buy Variants",
                            Values = w0,
                            Default = {},
                            Multi = true,
                            AllowNull = true,
                            Callback = function(mA)
                                xI.SetVariants(mA)
                            end
                        })
                        RollingGroup:AddInput("BuyMaxCost", {
                            Text = "Max Buy Cost",
                            Default = "0",
                            Numeric = false,
                            Finished = true,
                            Callback = function(mC)
                                xI.SetMaxCost(mC)
                            end
                        })
                        RollingGroup:AddSlider("BuyDelay", {
                            Text = "Buy Delay",
                            Default = 0.35,
                            Min = 0.05,
                            Max = 5,
                            Rounding = 2,
                            Suffix = "s",
                            Callback = function(mE)
                                xI.SetDelay(mE)
                            end
                        })
                        local LockersGroup = Jt.Main:AddLeftGroupbox("Lockers", "package")
                        local Label11 = LockersGroup:AddLabel(wZ.PlaceStatus, true)
                        local Label10 = LockersGroup:AddLabel(wZ.OpenStatus, true)
                        local Label9 = LockersGroup:AddLabel(wZ.CarryStatus, true)
                        LockersGroup:AddDivider()
                        LockersGroup:AddToggle("AutoPlaceLockers", {
                            Text = "Auto Place Lockers",
                            Default = false,
                            Callback = function(mK)
                                xa.SetEnabled(mK)
                            end
                        })
                        LockersGroup:AddSlider("PlaceDelay", {
                            Text = "Place Delay",
                            Default = 0.45,
                            Min = 0.1,
                            Max = 5,
                            Rounding = 2,
                            Suffix = "s",
                            Callback = function(mO)
                                xa.SetDelay(mO)
                            end
                        })
                        LockersGroup:AddToggle("AutoOpenLockers", {
                            Text = "Auto Open Lockers",
                            Default = false,
                            Callback = function(mQ)
                                wW.SetEnabled(mQ)
                            end
                        })
                        LockersGroup:AddSlider("OpenDelay", {
                            Text = "Open Delay",
                            Default = 0.5,
                            Min = 0.1,
                            Max = 5,
                            Rounding = 2,
                            Suffix = "s",
                            Callback = function(mU)
                                wW.SetDelay(mU)
                            end
                        })
                        LockersGroup:AddToggle("AutoCarryBoxes", {
                            Text = "Auto Carry Boxes",
                            Default = false,
                            Callback = function(mW)
                                w9.SetEnabled(mW)
                            end
                        })
                        LockersGroup:AddSlider("CarryDelay", {
                            Text = "Carry Delay",
                            Default = 0.4,
                            Min = 0.1,
                            Max = 5,
                            Rounding = 2,
                            Suffix = "s",
                            Callback = function(m_)
                                w9.SetDelay(m_)
                            end
                        })
                        local SellingGroup = Jt.Main:AddLeftGroupbox("Selling", "banknote")
                        local Label8 = SellingGroup:AddLabel(wZ.SellStatus, true)
                        local Label7 = SellingGroup:AddLabel(wZ.SellBoxesStatus, true)
                        SellingGroup:AddDivider()
                        SellingGroup:AddToggle("AutoSell", {
                            Text = "Auto Sell",
                            Default = false,
                            Callback = function(m4)
                                xE.SetEnabled(m4)
                            end
                        })
                        SellingGroup:AddDropdown("SellModes", {
                            Text = "Sell Modes",
                            Values = w7,
                            Default = { Crates = true },
                            Multi = true,
                            AllowNull = true,
                            Callback = function(na)
                                xE.SetModes(na)
                            end
                        })
                        SellingGroup:AddSlider("SellDelay", {
                            Text = "Sell Delay",
                            Default = 0.75,
                            Min = 0.2,
                            Max = 10,
                            Rounding = 2,
                            Suffix = "s",
                            Callback = function(nc)
                                xE.SetDelay(nc)
                            end
                        })
                        SellingGroup:AddToggle("AutoSellBoxes", {
                            Text = "Auto Sell Boxes",
                            Default = false,
                            Callback = function(ne)
                                xs.SetEnabled(ne)
                            end
                        })
                        SellingGroup:AddSlider("SellBoxesDelay", {
                            Text = "Sell Boxes Delay",
                            Default = 1.25,
                            Min = 0.3,
                            Max = 10,
                            Rounding = 2,
                            Suffix = "s",
                            Callback = function(ni)
                                xs.SetDelay(ni)
                            end
                        })
                        local ProgressGroup = Jt.Main:AddRightGroupbox("Progress", "trending-up")
                        local Label6 = ProgressGroup:AddLabel(wZ.UpgradeStatus, true)
                        local Label5 = ProgressGroup:AddLabel(wZ.UpgradePlacedStatus, true)
                        local Label4 = ProgressGroup:AddLabel(wZ.ConveyorUpgradeStatus, true)
                        local Label3 = ProgressGroup:AddLabel(wZ.EquipBestStatus, true)
                        local Label2 = ProgressGroup:AddLabel(wZ.IndexStatus, true)
                        local Label = ProgressGroup:AddLabel(wZ.RewardsStatus, true)
                        ProgressGroup:AddDivider()
                        ProgressGroup:AddToggle("AutoUpgrade", {
                            Text = "Auto Upgrade",
                            Default = false,
                            Callback = function(nr)
                                xx.SetEnabled(nr)
                            end
                        })
                        ProgressGroup:AddDropdown("UpgradeIds", {
                            Text = "Upgrades",
                            Values = xN,
                            Default = {},
                            Multi = true,
                            AllowNull = true,
                            Callback = function(nx)
                                xx.SetUpgrades(nx)
                            end
                        })
                        ProgressGroup:AddSlider("UpgradeDelay", {
                            Text = "Upgrade Delay",
                            Default = 0.6,
                            Min = 0.2,
                            Max = 10,
                            Rounding = 2,
                            Suffix = "s",
                            Callback = function(nz)
                                xx.SetDelay(nz)
                            end
                        })
                        ProgressGroup:AddToggle("AutoUpgradePlaced", {
                            Text = "Auto Upgrade Placed",
                            Default = false,
                            Callback = function(nB)
                                xk.SetEnabled(nB)
                            end
                        })
                        ProgressGroup:AddSlider("UpgradePlacedDelay", {
                            Text = "Upgrade Placed Delay",
                            Default = 0.7,
                            Min = 0.2,
                            Max = 10,
                            Rounding = 2,
                            Suffix = "s",
                            Callback = function(nF)
                                xk.SetDelay(nF)
                            end
                        })
                        ProgressGroup:AddToggle("AutoUpgradeConveyor", {
                            Text = "Auto Upgrade Conveyor",
                            Default = false,
                            Callback = function(nH)
                                xD.SetEnabled(nH)
                            end
                        })
                        ProgressGroup:AddSlider("ConveyorUpgradeDelay", {
                            Text = "Conveyor Upgrade Delay",
                            Default = 0.8,
                            Min = 0.2,
                            Max = 10,
                            Rounding = 2,
                            Suffix = "s",
                            Callback = function(nL)
                                xD.SetDelay(nL)
                            end
                        })
                        ProgressGroup:AddToggle("AutoEquipBest", {
                            Text = "Auto Equip Best",
                            Default = false,
                            Callback = function(nN)
                                xj.SetEnabled(nN)
                            end
                        })
                        ProgressGroup:AddSlider("EquipBestDelay", {
                            Text = "Equip Best Delay",
                            Default = 3.2,
                            Min = 3,
                            Max = 30,
                            Rounding = 1,
                            Suffix = "s",
                            Callback = function(nR)
                                xj.SetDelay(nR)
                            end
                        })
                        ProgressGroup:AddDivider()
                        ProgressGroup:AddToggle("AutoClaimIndex", {
                            Text = "Auto Claim Index",
                            Default = false,
                            Callback = function(nT)
                                wN.SetEnabled(nT)
                            end
                        })
                        ProgressGroup:AddSlider("IndexDelay", {
                            Text = "Index Delay",
                            Default = 2,
                            Min = 0.5,
                            Max = 30,
                            Rounding = 1,
                            Suffix = "s",
                            Callback = function(nX)
                                wN.SetDelay(nX)
                            end
                        })
                        ProgressGroup:AddToggle("AutoClaimRewards", {
                            Text = "Auto Claim Rewards",
                            Default = false,
                            Callback = function(nZ)
                                xd.SetEnabled(nZ)
                            end
                        })
                        ProgressGroup:AddSlider("RewardsDelay", {
                            Text = "Rewards Delay",
                            Default = 2.5,
                            Min = 0.5,
                            Max = 30,
                            Rounding = 1,
                            Suffix = "s",
                            Callback = function(n2)
                                xd.SetDelay(n2)
                            end
                        })
                        ou = task.spawn(function()
                            while not Library.Unloaded do
                                pcall(function()
                                    Label13:SetText(wZ.RollStatus)
                                    Label12:SetText(wZ.BuyStatus)
                                    Label11:SetText(wZ.PlaceStatus)
                                    Label10:SetText(wZ.OpenStatus)
                                    Label9:SetText(wZ.CarryStatus)
                                    Label8:SetText(wZ.SellStatus)
                                    Label7:SetText(wZ.SellBoxesStatus)
                                    Label6:SetText(wZ.UpgradeStatus)
                                    Label5:SetText(wZ.UpgradePlacedStatus)
                                    Label4:SetText(wZ.ConveyorUpgradeStatus)
                                    Label3:SetText(wZ.EquipBestStatus)
                                    Label2:SetText(wZ.IndexStatus)
                                    Label:SetText(wZ.RewardsStatus)
                                end)
                                task.wait(0.35)
                            end
                        end)
                        xc.Track(function()
                            if coroutine.status(ou) ~= "dead" then
                                task.cancel(ou)
                            end
                        end)
                    end
                    JC_2()
                    local function JC_3()
                        local oB
                        local MovementGroup = Jt.Player:AddLeftGroupbox("Movement", "footprints")
                        local FlightGroup = Jt.Player:AddRightGroupbox("Flight", "plane")
                        oB = {
                            [1] = false,
                            [2] = 32,
                            [3] = false,
                            [4] = 60,
                            [5] = false,
                            [6] = false,
                            [7] = false,
                            [8] = {},
                            [9] = {},
                            [10] = {},
                            [11] = nil,
                            [12] = nil,
                            [13] = nil,
                            [14] = nil,
                            [15] = nil
                        }
                        local function oC()
                            local Character = LocalPlayer.Character
                            local Gw = Character and Character:FindFirstChildOfClass("Humanoid")
                            return Gw or nil
                        end
                        local function oH()
                            local Character = LocalPlayer.Character
                            local Gz = Character and Character:FindFirstChild("HumanoidRootPart")
                            return Gz or nil
                        end
                        local function oL()
                            local GB = oC()
                            if not GB then
                                return
                            end
                            if oB[1] then
                                if oB[8][GB] == nil then
                                    oB[8][GB] = GB.WalkSpeed
                                end
                                GB.WalkSpeed = oB[2]
                            else
                                local GC = oB[8][GB]
                                if GC ~= nil then
                                    GB.WalkSpeed = GC
                                    oB[8][GB] = nil
                                end
                            end
                        end
                        local function oQ()
                            if oB[11] then
                                pcall(function()
                                    oB[11]:Destroy()
                                end)
                                oB[11] = nil
                            end
                            local GE = oC()
                            if GE and oB[12] ~= nil then
                                GE.PlatformStand = oB[12]
                                oB[12] = nil
                            end
                        end
                        local function oW()
                            oQ()
                            local GK = oH()
                            local GL = oC()
                            if not GK or not GL then
                                return
                            end
                            oB[12] = GL.PlatformStand
                            GL.PlatformStand = true
                            local bodyVelocity = Instance.new("BodyVelocity")
                            bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
                            bodyVelocity.Velocity = Vector3.zero
                            bodyVelocity.Parent = GK
                            oB[11] = bodyVelocity
                        end
                        local function o3()
                            for k, v in pairs(oB[9]) do
                                local GU = k
                                local GW = v
                                if GU and GU.Parent then
                                    pcall(function()
                                        GU.CanCollide = GW
                                    end)
                                end
                            end
                            table.clear(oB[9])
                        end
                        local function pa(pb)
                            if not pb:IsA("BasePart") then
                                return
                            end
                            if oB[9][pb] == nil then
                                oB[9][pb] = pb.CanCollide
                            end
                            pb.CanCollide = false
                        end
                        local function pd()
                            for k, v in pairs(oB[10]) do
                                local G5 = k
                                local G7 = v
                                if G5 and G5.Parent then
                                    pcall(function()
                                        G5.HoldDuration = G7.HoldDuration
                                        G5.MaxActivationDistance = G7.MaxActivationDistance
                                        G5.RequiresLineOfSight = G7.RequiresLineOfSight
                                    end)
                                end
                            end
                            table.clear(oB[10])
                        end
                        local function pk(pl)
                            if not pl:IsA("ProximityPrompt") then
                                return
                            end
                            if oB[10][pl] == nil then
                                oB[10][pl] = {
                                    HoldDuration = pl.HoldDuration,
                                    MaxActivationDistance = pl.MaxActivationDistance,
                                    RequiresLineOfSight = pl.RequiresLineOfSight
                                }
                            end
                            pl.HoldDuration = 0
                            pl.MaxActivationDistance = 50
                            pl.RequiresLineOfSight = false
                        end
                        MovementGroup:AddToggle("WalkSpeedEnabled", {
                            Text = "WalkSpeed",
                            Default = false,
                            Callback = function(pn)
                                oB[1] = pn
                                oL()
                            end
                        })
                        MovementGroup:AddSlider("WalkSpeed", {
                            Text = "WalkSpeed Amount",
                            Default = 32,
                            Min = 16,
                            Max = 250,
                            Rounding = 0,
                            Callback = function(pq)
                                oB[2] = pq
                                if oB[1] then
                                    oL()
                                end
                            end
                        })
                        MovementGroup:AddToggle("InfJump", {
                            Text = "Infinite Jump",
                            Default = false,
                            Callback = function(pt)
                                oB[6] = pt
                                if oB[14] then
                                    oB[14]:Disconnect()
                                    oB[14] = nil
                                end
                                if pt then
                                    oB[14] = UserInputService.JumpRequest:Connect(function()
                                        local Hg = not oB[6] or not xO()
                                        if Hg then
                                            return
                                        end
                                        local Hg_1 = oC()
                                        if Hg_1 then
                                            Hg_1:ChangeState(Enum.HumanoidStateType.Jumping)
                                        end
                                    end)
                                end
                            end
                        })
                        MovementGroup:AddToggle("NoClip", {
                            Text = "NoClip",
                            Default = false,
                            Callback = function(pH)
                                oB[5] = pH
                                if oB[13] then
                                    oB[13]:Disconnect()
                                    oB[13] = nil
                                end
                                if pH then
                                    local Character2 = LocalPlayer.Character
                                    if Character2 then
                                        for i, descendant in ipairs(Character2:GetDescendants()) do
                                            pa(descendant)
                                        end
                                    end
                                    oB[13] = RunService.Stepped:Connect(function()
                                        local Hj = not oB[5] or not xO()
                                        if Hj then
                                            return
                                        end
                                        local Character = LocalPlayer.Character
                                        if not Character then
                                            return
                                        end
                                        for i, child in ipairs(Character:GetChildren()) do
                                            pa(child)
                                        end
                                    end)
                                else
                                    o3()
                                end
                            end
                        })
                        MovementGroup:AddToggle("InstantProximityPrompt", {
                            Text = "Instant ProximityPrompt",
                            Default = false,
                            Callback = function(p0)
                                oB[7] = p0
                                if oB[15] then
                                    oB[15]:Disconnect()
                                    oB[15] = nil
                                end
                                if p0 then
                                    for i, v in ipairs(xv:QueryDescendants("ProximityPrompt")) do
                                        pk(v)
                                    end
                                    oB[15] = xv.DescendantAdded:Connect(function(p9)
                                        if oB[7] then
                                            pk(p9)
                                        end
                                    end)
                                else
                                    pd()
                                end
                            end
                        })
                        FlightGroup:AddToggle("Fly", {
                            Text = "Fly",
                            Default = false,
                            Callback = function(qc)
                                oB[3] = qc
                                if qc then
                                    oW()
                                else
                                    oQ()
                                end
                            end
                        })
                        FlightGroup:AddSlider("FlySpeed", {
                            Text = "Fly Speed",
                            Default = 60,
                            Min = 10,
                            Max = 400,
                            Rounding = 0,
                            Callback = function(qg)
                                oB[4] = qg
                            end
                        })
                        local qv = task.spawn(function()
                            while true do
                                local HO = xO() and not Library.Unloaded
                                if HO then
                                    if oB[3] and oB[11] and oB[11].Parent then
                                        if UserInputService:GetFocusedTextBox() then
                                            oB[11].Velocity = Vector3.zero
                                        else
                                            local CurrentCamera = xv.CurrentCamera
                                            local HP = Vector3.zero
                                            if CurrentCamera then
                                                local LookVector = CurrentCamera.CFrame.LookVector
                                                local RightVector = CurrentCamera.CFrame.RightVector
                                                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                                    HP += LookVector
                                                end
                                                local HV = if UserInputService:IsKeyDown(Enum.KeyCode.S) then 1 else 0
                                                if HV == 1 then
                                                    HP -= LookVector
                                                end
                                                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                                                    HP -= RightVector
                                                end
                                                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                                                    HP += RightVector
                                                end
                                                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                                                    HP += Vector3.yAxis
                                                end
                                                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                                                    HP -= Vector3.yAxis
                                                end
                                            end
                                            if HP.Magnitude > 0 then
                                                oB[11].Velocity = HP.Unit * oB[4]
                                            else
                                                oB[11].Velocity = Vector3.zero
                                            end
                                        end
                                    end
                                    if oB[1] then
                                        oL()
                                    end
                                    task.wait(0.03)
                                    continue
                                end
                                break
                            end
                        end)
                        xc.Track(function()
                            pcall(task.cancel, qv)
                            oQ()
                            o3()
                            pd()
                            if oB[13] then
                                oB[13]:Disconnect()
                            end
                            if oB[14] then
                                oB[14]:Disconnect()
                            end
                            if oB[15] then
                                oB[15]:Disconnect()
                            end
                            oB[1] = false
                            oL()
                        end)
                        LocalPlayer.CharacterAdded:Connect(function()
                            task.wait(0.5)
                            local H_ = not xO() or Library.Unloaded
                            if H_ then
                                return
                            end
                            table.clear(oB[8])
                            if oB[1] then
                                oL()
                            end
                            if oB[3] then
                                oW()
                            end
                        end)
                    end
                    JC_3()
                    local function JC_4()
                        local I3, I4, I5, I6, I7, I8, I9, Ja, Jb, Jc, Jd, Je, Label, Jg
                        Jg = {}
                        Jb = {}
                        I7 = nil
                        I9 = 0
                        I4 = 0
                        Jc = false
                        Je = os.clock()
                        local MenuGroup = Jt.Settings:AddLeftGroupbox("Menu", "logs")
                        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                        Label = MenuGroup:AddLabel("AFK triggers: 0")
                        I6 = function()
                            local CurrentCamera
                            CurrentCamera = Workspace.CurrentCamera
                            local H5 = not CurrentCamera
                            local H9 = if H5 then 1 else 0
                            local H7 = 2221 * H9 + 2920 * (1 - H9)
                            local H8 = 2674 * H9 + 649 * (1 - H9)
                            if not ((H7 * 763 + H8 * 1749 + H7 * H8) % 16777213 == 12310403) then
                                H5 = not wQ(VirtualUser.CaptureController)
                            end
                            if not H5 then
                                H5 = not wQ(VirtualUser.ClickButton2)
                            end
                            if H5 then
                                return false
                            end
                            local H5_1 = pcall(function()
                                VirtualUser:CaptureController()
                                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
                            end)
                            if not H5_1 then
                                return false
                            end
                            I9 += 1
                            Je = os.clock()
                            pcall(function()
                                Label:SetText("AFK triggers: " .. I9)
                            end)
                            return true
                        end
                        Ja = function(rc)
                            pcall(function()
                                GuiService:SetGameplayPausedNotificationEnabled(not rc)
                            end)
                            pcall(function()
                                local RobloxNetworkPauseNotificati = xi:FindFirstChild("RobloxNetworkPauseNotification")
                                if RobloxNetworkPauseNotificati then
                                    RobloxNetworkPauseNotificati.Enabled = not rc
                                end
                            end)
                            if not rc then
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
                        I8 = function(rs)
                            local Ie = rs.ClassName == "ParticleEmitter" or rs.ClassName == "Trail" or rs.ClassName == "Smoke" or rs.ClassName == "Fire" or rs.ClassName == "Sparkles"
                            local Ii = if Ie then 1 else 0
                            local Ig = 3244 * Ii + 3625 * (1 - Ii)
                            local Ih = 1645 * Ii + 1030 * (1 - Ii)
                            if not ((Ig * 3018 + Ih * 2323 + Ig * Ih) % 16777213 == 2170894) then
                                Ie = rs.ClassName == "Explosion"
                            end
                            local Ii_1 = if Ie then 1 else 0
                            local Ig_1 = 1927 * Ii_1 + 3424 * (1 - Ii_1)
                            local Ih_1 = 342 * Ii_1 + 2180 * (1 - Ii_1)
                            if not ((Ig_1 * 2621 + Ih_1 * 2060 + Ig_1 * Ih_1) % 16777213 == 6414221) then
                                Ie = rs.ClassName == "Beam"
                            end
                            if Ie then
                                if Jg[rs] == nil then
                                    Jg[rs] = rs.Enabled
                                end
                                pcall(function()
                                    rs.Enabled = false
                                end)
                            end
                        end
                        I5 = function()
                            for k, v in pairs(Jg) do
                                local In = k
                                local Ip = v
                                if In.Parent then
                                    pcall(function()
                                        In.Enabled = Ip
                                    end)
                                end
                            end
                            table.clear(Jg)
                            if I7 then
                                pcall(function()
                                    settings().Rendering.QualityLevel = I7.Quality
                                end)
                                Lighting.GlobalShadows = I7.Shadows
                                Lighting.FogEnd = I7.Fog
                                I7 = nil
                            end
                        end
                        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
                        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
                        MenuGroup:AddToggle("Disable3D", {
                            Text = "Disable 3D Rendering",
                            Default = false,
                            Callback = function(rH)
                                pcall(function()
                                    RunService:Set3dRenderingEnabled(not rH)
                                end)
                            end
                        })
                        MenuGroup:AddToggle("FpsBoost", {
                            Text = "FPS Boost",
                            Default = false,
                            Callback = function(rM)
                                if rM then
                                    if not I7 then
                                        I7 = {
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
                                        pcall(I8, v)
                                    end
                                else
                                    I5()
                                end
                            end
                        })
                        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
                        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                        Library.ToggleKeybind = Options.MenuKeybind
                        Ja(true)
                        local ScriptGroup = Jt.Settings:AddLeftGroupbox("Script", "scroll-text")
                        ScriptGroup:AddButton({
                            Text = "Unload Script",
                            Func = function()
                                Library:Unload()
                            end
                        })
                        Toggles.AntiGameplayPause:OnChanged(function()
                            Ja(Toggles.AntiGameplayPause.Value)
                        end)
                        if Toggles.AntiGameplayPause.Value then
                            Ja(true)
                        end
                        table.insert(Jb, LocalPlayer.Idled:Connect(function()
                            if Toggles.AntiAfk.Value and not Library.Unloaded then
                                I6()
                            end
                        end))
                        table.insert(Jb, Workspace.DescendantAdded:Connect(function(r4)
                            if Toggles.FpsBoost.Value then
                                I8(r4)
                            end
                        end))
                        I3 = function(r8)
                            if Jc or Library.Unloaded or not Toggles.AutoReconnect.Value then
                                return
                            end
                            Jc = true
                            local IF = I4
                            local IG_1 = pcall(function()
                                if r8 then
                                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                                else
                                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                                end
                            end)
                            if not IG_1 then
                                Jc = false
                                if not r8 and IF == I4 then
                                    task.delay(1.5, function()
                                        if IF == I4 then
                                            I3(true)
                                        end
                                    end)
                                end
                            end
                        end
                        table.insert(Jb, TeleportService.TeleportInitFailed:Connect(function(sq)
                            local IN
                            if sq == LocalPlayer and Jc then
                                Jc = false
                                IN = I4
                                task.delay(3, function()
                                    if IN == I4 then
                                        I3(true)
                                    end
                                end)
                            end
                        end))
                        task.spawn(function()
                            local RobloxPromptGui = xi:WaitForChild("RobloxPromptGui", 30)
                            local IS = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
                            if Library.Unloaded or not IS then
                                return
                            end
                            table.insert(Jb, IS.ChildAdded:Connect(function(sF)
                                if sF.Name == "ErrorPrompt" then
                                    I3(false)
                                end
                            end))
                        end)
                        Jd = task.spawn(function()
                            while not Library.Unloaded do
                                if Toggles.AntiGameplayPause.Value then
                                    Ja(true)
                                end
                                local IV = Toggles.AntiAfk.Value and os.clock() - Je >= 60
                                if IV then
                                    I6()
                                end
                                task.wait(1)
                            end
                        end)
                        xc.Track(function()
                            I4 += 1
                            for i, v in ipairs(Jb) do
                                v:Disconnect()
                            end
                            pcall(task.cancel, Jd)
                            Ja(false)
                            I5()
                            pcall(function()
                                RunService:Set3dRenderingEnabled(true)
                            end)
                        end)
                    end
                    JC_4()
                    local function JC_5()
                        ThemeManager:SetLibrary(Library)
                        ThemeManager:SetFolder("OuroborosHub")
                        ThemeManager:SaveDefault("Evil Hello Kitty")
                        ThemeManager:ApplyToTab(Jt.Settings)
                        SaveManager:SetLibrary(Library)
                        SaveManager:IgnoreThemeSettings()
                        SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
                        SaveManager:SetFolder("OuroborosHub/BlueLockFarm")
                        SaveManager:BuildConfigSection(Jt.Settings)
                        ThemeManager:LoadDefault()
                        SaveManager:LoadAutoloadConfig()
                        if Options.BuyBoxes then
                            xI.SetBoxes(Options.BuyBoxes.Value)
                        end
                        if Options.BuyVariants then
                            xI.SetVariants(Options.BuyVariants.Value)
                        end
                        if Options.BuyMaxCost then
                            xI.SetMaxCost(Options.BuyMaxCost.Value)
                        end
                        if Options.SellModes then
                            xE.SetModes(Options.SellModes.Value)
                        end
                        if Options.UpgradeIds then
                            xx.SetUpgrades(Options.UpgradeIds.Value)
                        end
                        if Options.RollDelay then
                            xA.SetDelay(Options.RollDelay.Value)
                        end
                        if Options.BuyDelay then
                            xI.SetDelay(Options.BuyDelay.Value)
                        end
                        if Options.SellDelay then
                            xE.SetDelay(Options.SellDelay.Value)
                        end
                        if Options.UpgradeDelay then
                            xx.SetDelay(Options.UpgradeDelay.Value)
                        end
                        if Options.IndexDelay then
                            wN.SetDelay(Options.IndexDelay.Value)
                        end
                        if Options.PlaceDelay then
                            xa.SetDelay(Options.PlaceDelay.Value)
                        end
                        if Options.OpenDelay then
                            wW.SetDelay(Options.OpenDelay.Value)
                        end
                        if Options.CarryDelay then
                            w9.SetDelay(Options.CarryDelay.Value)
                        end
                        if Options.SellBoxesDelay then
                            xs.SetDelay(Options.SellBoxesDelay.Value)
                        end
                        if Options.UpgradePlacedDelay then
                            xk.SetDelay(Options.UpgradePlacedDelay.Value)
                        end
                        if Options.EquipBestDelay then
                            xj.SetDelay(Options.EquipBestDelay.Value)
                        end
                        if Options.RewardsDelay then
                            xd.SetDelay(Options.RewardsDelay.Value)
                        end
                        if Options.ConveyorUpgradeDelay then
                            xD.SetDelay(Options.ConveyorUpgradeDelay.Value)
                        end
                        if Toggles.AutoRoll then
                            xA.SetEnabled(Toggles.AutoRoll.Value)
                        end
                        if Toggles.AutoBuyRoll then
                            xI.SetEnabled(Toggles.AutoBuyRoll.Value)
                        end
                        if Toggles.SkipUnaffordable then
                            xI.SetSkipUnaffordable(Toggles.SkipUnaffordable.Value)
                        end
                        if Toggles.AutoSell then
                            xE.SetEnabled(Toggles.AutoSell.Value)
                        end
                        if Toggles.AutoUpgrade then
                            xx.SetEnabled(Toggles.AutoUpgrade.Value)
                        end
                        if Toggles.AutoClaimIndex then
                            wN.SetEnabled(Toggles.AutoClaimIndex.Value)
                        end
                        if Toggles.AutoPlaceLockers then
                            xa.SetEnabled(Toggles.AutoPlaceLockers.Value)
                        end
                        if Toggles.AutoOpenLockers then
                            wW.SetEnabled(Toggles.AutoOpenLockers.Value)
                        end
                        if Toggles.AutoCarryBoxes then
                            w9.SetEnabled(Toggles.AutoCarryBoxes.Value)
                        end
                        if Toggles.AutoSellBoxes then
                            xs.SetEnabled(Toggles.AutoSellBoxes.Value)
                        end
                        if Toggles.AutoUpgradePlaced then
                            xk.SetEnabled(Toggles.AutoUpgradePlaced.Value)
                        end
                        if Toggles.AutoEquipBest then
                            xj.SetEnabled(Toggles.AutoEquipBest.Value)
                        end
                        if Toggles.AutoClaimRewards then
                            xd.SetEnabled(Toggles.AutoClaimRewards.Value)
                        end
                        if Toggles.AutoUpgradeConveyor then
                            xD.SetEnabled(Toggles.AutoUpgradeConveyor.Value)
                        end
                        if Toggles.HideUiOnStart.Value then
                            Library:Toggle(false)
                        end
                    end
                    JC_5()
                end
            end
            xT = (xT + 14) % 68
        end
    elseif xX <= 16 then
        xX = (vector.create((xT * 6 + 1) % 11 + 1, (xT * 8 + 10) % 13 + 1, (xT * 1 + 12) % 17 + 1))
        xY = (vector.create((xT * 4 + 2) % 11 + 1, (xT * 8 + 7) % 13 + 1, (xT * 7 + 4) % 17 + 1))
        xZ = (vector.create((xT * 4 + 7) % 11 + 1, (xT * 5 + 4) % 13 + 1, (xT * 3 + 8) % 17 + 1))
        x_ = (vector.create((xT * 5 + 8) % 11 + 1, (xT * 10 + 7) % 13 + 1, (xT * 10 + 11) % 17 + 1))
        if vector.dot(vector.cross(xX, xY), (vector.cross(xZ, x_))) == vector.dot(xX, xZ) * vector.dot(xY, x_) - vector.dot(xX, x_) * vector.dot(xY, xZ) + 1 then
            xU, xV = pcall(xW)
        else
            xV, xW = pcall(xU)
        end
        xT = (xT + 14) % 68
    else
        xX = {
            "dwmhs",
            "vjqrkjqfjqk",
            "qvtogob",
            "dymeu",
            "casajerfmtb",
            "uueiqatylk",
            "ybobrukqrrd",
            "nmzmhx",
            "dbbntv",
            "eprfdhshz",
            "pieaqzvctr"
        }
        local KI = xT
        xY = xX[KI % 11 + 1]
        if xY:len() <= xY:gsub("(.)", "%1%1", KI % 3 % 2 + 1):len() then
            w7 = { "Crates", "Inventory", "Lockers", "Players" }
            w4 = { Inventory = "Inventory", Lockers = "Lockers", Players = "Players" }
            wZ = {
                RollStatus = "Auto Roll idle",
                BuyStatus = "Auto Buy idle",
                SellStatus = "Auto Sell idle",
                UpgradeStatus = "Auto Upgrade idle",
                IndexStatus = "Auto Claim Index idle",
                PlaceStatus = "Auto Place Lockers idle",
                OpenStatus = "Auto Open Lockers idle",
                CarryStatus = "Auto Carry Boxes idle",
                SellBoxesStatus = "Auto Sell Boxes idle",
                UpgradePlacedStatus = "Auto Upgrade Placed idle",
                EquipBestStatus = "Auto Equip Best idle",
                RewardsStatus = "Auto Claim Rewards idle",
                ConveyorUpgradeStatus = "Auto Upgrade Conveyor idle"
            }
        else
            wZ = { "Crates", "Lockers", "Inventory", "Players" }
            w7 = { Players = "Players", Inventory = "Inventory", Lockers = "Lockers" }
            w4 = {
                EquipBestStatus = "Auto Equip Best idle",
                OpenStatus = "Auto Open Lockers idle",
                CarryStatus = "Auto Carry Boxes idle",
                ConveyorUpgradeStatus = "Auto Upgrade Conveyor idle",
                SellBoxesStatus = "Auto Sell Boxes idle",
                RollStatus = "Auto Roll idle",
                PlaceStatus = "Auto Place Lockers idle",
                UpgradeStatus = "Auto Upgrade idle",
                UpgradePlacedStatus = "Auto Upgrade Placed idle",
                RewardsStatus = "Auto Claim Rewards idle",
                SellStatus = "Auto Sell idle",
                IndexStatus = "Auto Claim Index idle",
                BuyStatus = "Auto Buy idle"
            }
        end
        xT = (xT + 14) % 68
    end
until (xT * 41 + 53) % 68 == 52
if not xV then
    xT = 2
    repeat
        xU = (vector.create((xT * 1 + 2) % 11 + 1, (xT * 8 + 10) % 13 + 1, (xT * 15 + 3) % 17 + 1))
        xV = (vector.create((xT * 1 + 7) % 11 + 1, (xT * 8 + 10) % 13 + 1, (xT * 10 + 4) % 17 + 1))
        local Mh = vector.dot(xU, xV)
        if Mh * Mh <= vector.dot(xU, xU) * vector.dot(xV, xV) then
            pcall(xc.Unload)
            error(xW, 0)
        else
            pcall(xW.Unload)
            error(xc, 0)
        end
        xT = (xT + 7) % 8
    until (xT * 5 + 2) % 8 == 7
end
