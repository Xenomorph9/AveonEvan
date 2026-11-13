local fns = {}
local K3_8, K3_9, K3_10, K3_18, K3_20, K3_25, K3_28, K3_29
local yq
local LocalPlayer
local yP
local xP
local yw
local xw
local yd
local xd
local xV
local xC
local x0
local yI
local xI
local xp
local yO
local xO
local yv
local State
local yc
local yU
local yB
local xB
local yi
local xi
local yH
local xH
local CoreGui
local xo
local x5
local yN
local yu
local xu
local yb
local yT
local xT
local yA
local xh
local xG
local xt
local yS
local xS
local xg
local yF
local ym
local xm
local x3
local xL
local xs
local x9
local yR
local xR
local yy
local xy
local yf
local xf
local xE
local yl
local xl
local xK
local yr
local xr
local x8
local yx
local xx
local xe
local xW
local xD
local xk
local yJ
function fns.fn2(kY)
    local FT = kY and true or false
    State.AutoOpen = FT
    if State.AutoOpen then
        xC("Open", xB, yw)
    else
        xS("Open")
    end
end
function fns.fn3(lb)
    local Gm = lb and true or false
    State.AutoUpgradePen = Gm
    if State.AutoUpgradePen then
        xC("PenUpgrade", xd, yy)
    else
        xS("PenUpgrade")
    end
end
function fns.fn5(dq)
    if not dq then
        return nil
    end
    local EggRoot = dq:FindFirstChild("EggRoot")
    local A_ = EggRoot and EggRoot:IsA("BasePart")
    if A_ then
        return EggRoot
    end
    local AZ_1 = dq.PrimaryPart or dq:FindFirstChildWhichIsA("BasePart", true)
    return AZ_1
end
function fns.fn7(dY)
    local BH = xk[dY]
    local BI = BH ~= nil and os.clock() < BH
    return BI
end
function fns.fn49(bR)
    State.Status = bR
end
function fns.fn58()
    if not State.AutoEquipBest then
        return
    end
    yN("Equipping best pets")
    pcall(function()
        xx("Pen_PlaceBest")
    end)
end
function fns.fn97(lc)
    local Gs = lc and true
    local Gw = if Gs then 1 else 0
    local Gu = 2111 * Gw + 3251 * (1 - Gw)
    local Gv = 2475 * Gw + 1946 * (1 - Gw)
    if not ((Gu * 1103 + Gv * 865 + Gu * Gv) % 16777213 == 9694033) then
        Gs = false
    end
    State.AutoTrain = Gs
    if State.AutoTrain then
        xC("Train", yT, yb)
    else
        xS("Train")
    end
end
function fns.fn164()
    local De_1
    local Dc = not xK
    local Dc_1
    local Dd = {}
    local Dj = if Dc then 1 else 0
    local Dh = 443 * Dj + 300 * (1 - Dj)
    local Di = 2025 * Dj + 1431 * (1 - Dj)
    if not ((Dh * 874 + Di * 1992 + Dh * Di) % 16777213 == 5318057) then
        Dc = type(xK.InvokeServer) ~= "function"
    end
    if Dc then
        return Dd
    end
    Dc_1, De_1 = pcall(xK.InvokeServer, xK, "Egg_Sync")
    local Df = not Dc_1 or type(De_1) ~= "table"
    if Df then
        return Dd
    end
    for k, v in pairs(De_1) do
        local Dc_2 = type(v) == "table" and v.OwnerUserId == LocalPlayer.UserId and type(v.Eggs) == "table"
        if Dc_2 then
            for k, v in pairs(v.Eggs) do
                local Dc_3 = type(v) == "table" and type(v.Id) == "string"
                if Dc_3 then
                    table.insert(Dd, v)
                end
            end
        end
    end
    return Dd
end
function fns.fn199(lq)
    State.StealRarities, State.StealRarityCount = x0(lq)
end
function fns.fn247(jO)
    local ES = jO or State.TeleportZone
    local ES_1 = yd(ES)
    if not ES_1 then
        yN("Zone not found")
        return false
    end
    yN("Teleport to " .. tostring(ES))
    State.TeleportZone = ES
    return xr(ES_1)
end
function fns.fn248()
    if not State.AutoUpgradePen or not yr then
        return
    end
    local Ep_1 = xV()
    if not Ep_1 then
        return
    end
    local Eq_1 = tonumber(Ep_1.PlotLevel) or 1
    local Eq_2 = yr.GetMaxPlotLevel and yr.GetMaxPlotLevel()
    if Eq_1 >= (Eq_2 or 8) then
        return
    end
    local Eq_4 = yr.GetPlotUpgradeCost and yr.GetPlotUpgradeCost(Eq_1)
    local Eq_5 = tonumber(Ep_1.money) or 0
    local Eq_6 = type(Eq_4) == "number" and Eq_5 >= Eq_4
    if Eq_6 then
        yN("Upgrading pen")
        pcall(function()
            xx("Pen_UpgradePlot")
        end)
    end
end
local function fn259(e4)
    local Cn_1
    local Ck = xg(e4)
    if not Ck then
        return false
    end
    local Cl = e4:GetAttribute("Animal") or e4.Name
    local Cm_2
    local Cl_1 = xt()
    yN("Stealing " .. tostring(Cl))
    local Ct = 1
    local Cr = yc
    while true do
        if not (Ct <= Cr) then
            return xI(e4, Cl_1)
        end
        local Cm_1 = not yR() or not State.AutoSteal
        if Cm_1 then
            return false
        end
        if not e4.Parent then
            return true
        end
        if xI(e4, Cl_1) then
            break
        end
        Cm_2, Cn_1 = x9()
        if not Cn_1 then
            return false
        end
        local Position = Ck.Position
        xr(Position)
        task.wait(0.08)
        local Cn_2 = select(2, x9())
        if not Cn_2 then
            return false
        end
        if not x5(Cn_2, Position, math.max(xR - 2, 8)) then
            xr(Position)
            task.wait(0.1)
            select(2, x9())
        end
        if not e4.Parent then
            return true
        end
        local Cm_4 = xL(e4)
        if not Cm_4 or Cm_4.Enabled == false then
            task.wait(0.15)
            Cm_4 = xL(e4)
        end
        if not Cm_4 then
            return false
        end
        local Co_1 = tonumber(Cm_4.MaxActivationDistance) or xR
        local Cn_3 = select(2, x9())
        local Co_2 = Cn_3 and not x5(Cn_3, Ck.Position, Co_1)
        if Co_2 then
            xr(Ck.Position)
            task.wait(0.08)
        end
        yH(Cm_4)
        local Cm_5 = os.clock() + 0.7 + 0.35
        while true do
            local Cn_4 = yR() and os.clock() < Cm_5
            if Cn_4 then
                if xI(e4, Cl_1) then
                    return true
                end
                task.wait(0.08)
                continue
            end
            break
        end
        Ct += 1
    end
    return true
end
local function fn263()
    if not State.AutoUpgradeTreadmill or not yi then
        return
    end
    local Eh_1 = xV()
    if not Eh_1 then
        return
    end
    local Ei_1 = tonumber(Eh_1.TreadmillLevel) or 1
    local Ei_2 = yi.GetTreadmillMaxLevel and yi.GetTreadmillMaxLevel()
    if Ei_1 >= (Ei_2 or 36) then
        return
    end
    local Ei_4 = yi.GetTreadmillUpgradePrice and yi.GetTreadmillUpgradePrice(Ei_1)
    local Ei_5 = (tonumber(Eh_1.money))
    local Eo = if Ei_5 then 1 else 0
    local Em = 2226 * Eo + 3342 * (1 - Eo)
    local En = 2444 * Eo + 1673 * (1 - Eo)
    if not ((Em * 3305 + En * 2069 + Em * En) % 16777213 == 1076697) then
        Ei_5 = 0
    end
    local Eh_2 = Ei_5
    local Ei_6 = type(Ei_4) == "number" and Eh_2 >= Ei_4
    if Ei_6 then
        yN("Upgrading treadmill")
        pcall(function()
            xx("Training_Upgrade")
        end)
    end
end
local function fn277()
    return table.clone(xu)
end
local function fn301()
    local Ak_1
    local Aj = not xE or type(xE.GetData) ~= "function"
    local Aj_1
    if Aj then
        return nil
    end
    Aj_1, Ak_1 = pcall(xE.GetData)
    local Al = Aj_1 and type(Ak_1) == "table"
    if Al then
        return Ak_1
    end
    return nil
end
local function fn334()
    gethui = xO
end
local function fn337()
    local Character = LocalPlayer.Character
    if not Character then
        return nil
    end
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    return Character, HumanoidRootPart, Humanoid
end
local function fn347()
    return yB:FindFirstChild("WorldEggs")
end
local function fn430()
    local A4 = {}
    local A5 = { LocalPlayer:FindFirstChild("Backpack"), LocalPlayer.Character }
    for i, v in ipairs(A5) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                if child:IsA("Tool") then
                    local attr = child:GetAttribute("EggId")
                    local A6 = attr ~= ""
                    local A7 = type(attr) == "string" and A6
                    if A7 then
                        table.insert(A4, child)
                    end
                end
            end
        end
    end
    return A4
end
local function fn548(dT)
    if State.EspRarityCount > 0 then
        local attr = dT:GetAttribute("Rarity")
        local BF = type(attr) ~= "string" or not State.EspRarities[attr]
        if BF then
            return false
        end
        return true
    end
    return true
end
local function fn551(jX)
    local EZ_1
    local EY = xs and type(xs.GetColor) == "function"
    local EY_1
    if EY then
        EY_1, EZ_1 = pcall(xs.GetColor, jX)
        local E_ = EY_1 and typeof(EZ_1) == "Color3"
        if E_ then
            return EZ_1
        end
        return Color3.fromRGB(255, 255, 255)
    end
    return Color3.fromRGB(255, 255, 255)
end
local function fn552()
    for k in pairs(xo) do
        xS(k)
    end
    xP()
    yS += 1
end
local function fn560(kS)
    local FQ = kS and true or false
    State.AutoPlace = FQ
    if State.AutoPlace then
        xC("Place", xG, yu)
    else
        xS("Place")
    end
end
local function fn561(ex, ey)
    local B1 = not ey
    local B2 = xt() and B1
    if B2 then
        return true
    elseif not ex.Parent then
        return true
    else
        return false
    end
end
local function fn568()
    local attr = LocalPlayer:GetAttribute("Plot")
    if type(attr) ~= "number" then
        return nil
    end
    local Map = yB:FindFirstChild("Map")
    local AN = Map and Map:FindFirstChild("Plots")
    if not AN then
        return nil
    end
    return AN:FindFirstChild(tostring(attr))
end
local function fn582()
    return not xy.Unloaded
end
local function fn586(k8)
    local F4 = k8 and true or false
    State.AutoClaimIndex = F4
    if State.AutoClaimIndex then
        xC("Index", xl, xm)
    else
        xS("Index")
    end
end
local function fn606()
    local Ag = not xK
    local Ah = {}
    if not Ag then
        Ag = type(xK.InvokeServer) ~= "function"
    end
    if Ag then
        table.insert(Ah, "Net")
    end
    local Ag_1 = not xE or type(xE.GetData) ~= "function"
    if Ag_1 then
        table.insert(Ah, "PlayerData")
    end
    if not xf(fireproximityprompt) then
        table.insert(Ah, "fireproximityprompt")
    end
    local Ag_2 = type(Drawing) ~= "table" or type(Drawing.new) ~= "function"
    if Ag_2 then
        table.insert(Ah, "Drawing")
    end
    return Ah
end
local function fn630()
    local EQ = x3()
    if not EQ then
        yN("No plot assigned")
        return false
    end
    yN("Teleport to pen")
    return xr(EQ.Position)
end
local function fn639(kL)
    local FK = kL and true
    local FO = if FK then 1 else 0
    local FM = 3065 * FO + 2586 * (1 - FO)
    local FN = 1990 * FO + 1554 * (1 - FO)
    if not ((FM * 917 + FN * 299 + FM * FN) % 16777213 == 9504965) then
        FK = false
    end
    State.AutoSteal = FK
    if State.AutoSteal then
        xC("Steal", xH, ym)
    else
        xS("Steal")
        yN("Idle")
    end
end
local function fn676(dF)
    local Bl = 0
    local Bm = {}
    if type(dF) == "table" then
        for k, v in pairs(dF) do
            local Bn = v == true and type(k) == "string"
            if Bn then
                Bm[k] = true
                Bl += 1
            elseif type(v) == "string" then
                Bm[v] = true
                Bl += 1
            end
        end
    end
    return Bm, Bl
end
local function fn678(lB)
    local GQ = lB ~= ""
    local GR = type(lB) == "string" and GQ
    if GR then
        State.TeleportZone = lB
    end
end
local function fn701(k7)
    local FZ = k7 and true or false
    State.AutoBuyTrails = FZ
    if State.AutoBuyTrails then
        xC("Trails", xp, xe)
    else
        xS("Trails")
    end
end
local function fn704()
    if not State.AutoBonus then
        return
    end
    if LocalPlayer:GetAttribute(yq) ~= true then
        return
    end
    local attr = LocalPlayer:GetAttribute(yl)
    if type(attr) ~= "number" then
        return
    end
    yN("Claiming 2x bonus")
    yU("Training_Bonus", attr)
end
local function fn731(dM)
    local Bz_3
    if State.StealZoneCount > 0 then
        local attr = dM:GetAttribute("Zone")
        local Bz_1 = type(attr) ~= "string" or not State.StealZones[attr]
        if Bz_1 then
            return false
        elseif State.StealRarityCount > 0 then
            dM:GetAttribute("Rarity")
            if Bz_3 then
                return false
            end
            return true
        else
            return true
        end
    elseif State.StealRarityCount > 0 then
        local attr = dM:GetAttribute("Rarity")
        Bz_3 = type(attr) ~= "string"
        local BD_2 = if Bz_3 then 1 else 0
        local BB_2 = 2583 * BD_2 + 2429 * (1 - BD_2)
        local BC_2 = 1884 * BD_2 + 2058 * (1 - BD_2)
        if not ((BB_2 * 2713 + BC_2 * 2522 + BB_2 * BC_2) % 16777213 == 16625499) then
            Bz_3 = not State.StealRarities[attr]
        end
        if Bz_3 then
            return false
        end
        return true
    else
        return true
    end
end
local function fn747(d2, d3)
    local BK = os.clock()
    local BL = d3 or x8
    xk[d2] = BK + BL
end
local function fn768()
    local Eu = yx()
    if not Eu then
        return nil
    end
    local Ev = Eu:FindFirstChild(yF)
    local Eu_1 = Ev and Ev:FindFirstChild(yA)
    local Ev_1 = Eu_1
    if Eu_1 then
        Eu_1 = Ev_1:FindFirstChild(yv)
    end
    local Ev_2 = Eu_1
    if Eu_1 then
        Eu_1 = Ev_2:IsA("BasePart")
    end
    if Eu_1 then
        return Ev_2
    end
    return nil
end
local function fn785()
    return LocalPlayer:GetAttribute(xW) == true
end
local function fn820()
    local AS = yx()
    if not AS then
        return nil
    end
    local ToUpdate = AS:FindFirstChild("ToUpdate")
    local AU = ToUpdate and ToUpdate:FindFirstChild("PetArea")
    local AT_1 = AU
    if AU then
        AU = AT_1:IsA("BasePart")
    end
    if AU then
        return AT_1
    end
    return AS:FindFirstChild("CenterPoint")
end
local function fn829(b9, ...)
    local An = not xK or type(xK.InvokeServer) ~= "function"
    if An then
        return false, "Net unavailable"
    end
    local An_1 = table.pack(pcall(xK.InvokeServer, xK, b9, ...))
    if not An_1[1] then
        return false, tostring(An_1[2])
    end
    return table.unpack(An_1, 2, An_1.n)
end
local function fn886(er, es, et)
    local BZ = not er or typeof(es) ~= "Vector3"
    if BZ then
        return false
    end
    return (er.Position - es).Magnitude <= (et or xR)
end
local function fn972()
    return table.clone(yf)
end
local function fn985(aC)
    return type(aC) == "function"
end
local function fn989()
    return CoreGui
end
local function fn993(k9)
    local Ga = k9 and true or false
    State.AutoSell = Ga
    if State.AutoSell then
        xC("Sell", xi, yJ)
    else
        xS("Sell")
    end
end
local function fn1010(ct)
    if xo[ct] then
        xo[ct] = nil
    end
end
local function fn1053(d7)
    local BN = xg(d7)
    if BN then
        local TakeEgg = BN:FindFirstChild("TakeEgg")
        local BN_1 = TakeEgg and TakeEgg:IsA("ProximityPrompt")
        if BN_1 then
            return TakeEgg
        end
        for i, descendant in ipairs(d7:GetDescendants()) do
            local BN_2 = (descendant:IsA("ProximityPrompt"))
            if BN_2 then
                BN_2 = descendant.Name == "TakeEgg" or descendant.ActionText == "Take"
            end
            if BN_2 then
                return descendant
            end
        end
        return nil
    end
    for i, descendant in ipairs(d7:GetDescendants()) do
        local BN_3 = (descendant:IsA("ProximityPrompt"))
        if BN_3 then
            BN_3 = descendant.Name == "TakeEgg" or descendant.ActionText == "Take"
        end
        if BN_3 then
            return descendant
        end
    end
    return nil
end
local function fn1090(lz)
    local GJ = lz == "Biggest"
    local GK = lz == "Rarest"
    local GP = if GK then 1 else 0
    local GN = 3037 * GP + 2226 * (1 - GP)
    local GO = 2201 * GP + 1259 * (1 - GP)
    if not ((GN * 1990 + GO * 1473 + GN * GO) % 16777213 == 15970140) then
        GK = GJ
    end
    if GK or lz == "Nearest" then
        State.Priority = lz
    end
end
local function fn1097(j9)
    local Fd_1
    local Fc = xh[j9]
    local Fc_2
    if Fc then
        return Fc
    end
    local Fc_1 = type(Drawing) ~= "table" or type(Drawing.new) ~= "function"
    if Fc_1 then
        return nil
    end
    Fc_2, Fd_1 = pcall(Drawing.new, "Text")
    if not Fc_2 or not Fd_1 then
        return nil
    end
    Fd_1.Center = true
    Fd_1.Outline = true
    Fd_1.OutlineColor = Color3.new(0, 0, 0)
    Fd_1.Size = 13
    Fd_1.Font = 2
    Fd_1.Visible = false
    xh[j9] = Fd_1
    return Fd_1
end
local function fn1115(la)
    local Gd = la and true
    local Gk = if Gd then 1 else 0
    local Gi = 1194 * Gk + 3354 * (1 - Gk)
    local Gj = 4039 * Gk + 1241 * (1 - Gk)
    if not ((Gi * 1846 + Gj * 2336 + Gi * Gj) % 16777213 == 16461794) then
        Gd = false
    end
    State.AutoUpgradeTreadmill = Gd
    if State.AutoUpgradeTreadmill then
        xC("Treadmill", xd, xT)
    else
        xS("Treadmill")
    end
end
local function fn1150()
    local z7 = tostring(State.Status)
    local z8 = State.Stolen
    local Af = if z8 then 1 else 0
    local Ad = 3696 * Af + 207 * (1 - Af)
    local Ae = 2650 * Af + 1943 * (1 - Af)
    if not ((Ad * 3874 + Ae * 1425 + Ad * Ae) % 16777213 == 11111741) then
        z8 = 0
    end
    local z9 = State.Placed or 0
    local Aa = State.Opened or 0
    local Ab = State.Sold or 0
    return string.format("%s  |  stolen %d  |  placed %d  |  opened %d  |  sold %d", z7, z8, z9, Aa, Ab)
end
local function fn1198()
    local Cg = x3()
    if not Cg then
        yN("No plot assigned")
        return false
    end
    yN("Returning to pen")
    xr(Cg.Position)
    local Ch = os.clock() + 6
    while true do
        local Ci = yR() and os.clock() < Ch
        if Ci then
            if not xt() then
                return true
            end
            xr(Cg.Position)
            task.wait(0.2)
            continue
        end
        break
    end
    return not xt()
end
local function fn1200(lt)
    State.EspRarities, State.EspRarityCount = x0(lt)
end
local function fn1223()
    return LocalPlayer:GetAttribute(yI) == true
end
local function fn1228(k3)
    local FW = k3 and true or false
    State.AutoEquipBest = FW
    if State.AutoEquipBest then
        xC("Equip", xw, xD)
    else
        xS("Equip")
    end
end
local function fn1231(az)
    local z0 = typeof(cloneref) == "function" and typeof(az) == "Instance"
    if z0 then
        return cloneref(az)
    end
    return az
end
local function fn1238()
    if not State.AutoClaimIndex then
        return
    end
    yN("Claiming index")
    pcall(function()
        xx("Index_ClaimAll")
    end)
end
local function fn1302(ln)
    State.StealZones, State.StealZoneCount = x0(ln)
end
local function fn1304(ld)
    local Gy = ld and true or false
    State.AutoBonus = Gy
    if State.AutoBonus then
        xC("Bonus", yO, yP)
    else
        xS("Bonus")
    end
end
local function fn1338(lw)
    State.SellRarities, State.SellRarityCount = x0(lw)
end
xd = nil
xe = nil
xf = nil
xg = nil
xh = nil
xi = nil
xk = nil
xl = nil
xm = nil
xo = nil
xp = nil
xr = nil
xs = nil
xt = nil
xu = nil
State = nil
xw = nil
xx = nil
xy = nil
xB = nil
xC = nil
xD = nil
xE = nil
xG = nil
xH = nil
xI = nil
xK = nil
xL = nil
xO = nil
xP = nil
xR = nil
xS = nil
xT = nil
xV = nil
xW = nil
local Players, xc, xn, xq, xz, xA, xF, xJ, xM, xN, xQ, xU, xX, xY
x0 = nil
x3 = nil
x5 = nil
LocalPlayer = nil
x8 = nil
x9 = nil
yb = nil
yc = nil
yd = nil
yf = nil
yi = nil
yl = nil
ym = nil
CoreGui = nil
yq = nil
yr = nil
yu = nil
yv = nil
yw = nil
yx = nil
yy = nil
yA = nil
yB = nil
yF = nil
yH = nil
yI = nil
yJ = nil
local xZ, x_, x1, x2, x4, x6, ya, ye, Lighting, yj, TeleportService, yn, yp, GuiService, HttpService, yC, yD, VirtualUser, UserInputService, yL
yN = nil
yO = nil
yP = nil
yR = nil
yS = nil
yT = nil
yU = nil
local RunService
local yQ
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, ya, LocalPlayer, x1, xX, xU, xQ, xM, xH, xG, xB, xw, xp, xl, xi, xd, yT, yO, yI, yF, yA, yv, yq, yl, yc, x8, x6, x2, xY, xW, xR, xO = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local K3_7 = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
ya = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local K3_16 = "OuroborosSurfForAnimals"
x1 = "Surf for Animals!"
xX = "v0.2"
xU = "https://discord.gg/synapsex"
xQ = "https://rscripts.net/@Ouroboros"
xM = "https://ouroboros-hub-rbx.web.app/"
xH = 0.35
xG = 0.8
xB = 1.2
xw = 6
xp = 8
xl = 10
xi = 8
xd = 6
yT = 0.5
yO = 0.25
yI = "IsTraining"
yF = "UpgradeZone"
yA = "Floor"
yv = "Detector"
yq = "TrainingBonusAvailable"
yl = "TrainingBonusVersion"
yc = 4
x8 = 2.5
x6 = 6
x2 = 4
xY = 3
xW = "CarryingEggs"
xR = 14
xO = fn989
if getgenv then
    getgenv().gethui = xO
end
xy, K3_8, yB, K3_18, K3_9, K3_29, xZ, K3_25, xf, yR = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local K3_17 = 26
repeat
    local K3_31 = (K3_17 * 3 + 3) % 8 + 1
    if K3_31 <= 4 then
        if K3_31 <= 2 then
            if K3_31 <= 1 then
                K3_20 = {
                    "zzxyip",
                    "lxhqzeq",
                    "nrtrwuwez",
                    "oxqhnowpiv",
                    "qymjxrn",
                    "lktjerwp",
                    "mcdadhlmtza",
                    "kiljuzkmhu",
                    "argqdabd",
                    "uctk",
                    "dkltit",
                    "qifkred"
                }
                local Lt = K3_17
                K3_10 = K3_20[Lt % 12 + 1]
                if K3_10:len() <= K3_10:reverse():rep(Lt % 3 + 2):len() then
                    K3_29 = K3_18
                else
                    K3_18 = K3_29
                end
                K3_17 = (K3_17 + 11) % 32
            else
                K3_20 = (vector.create((K3_17 * 7 + 3) % 11 + 1, (K3_17 * 1 + 8) % 13 + 1, (K3_17 * 12 + 2) % 17 + 1))
                K3_10 = (vector.create((K3_17 * 5 + 9) % 11 + 1, (K3_17 * 2 + 5) % 13 + 1, (K3_17 * 7 + 11) % 17 + 1))
                local L8 = vector.dot(K3_20, K3_10)
                if L8 * L8 <= vector.dot(K3_20, K3_20) * vector.dot(K3_10, K3_10) then
                    pcall(fn334)
                    K3_28 = function(Y)
                        local zQ
                        local zR
                        local zP
                        zP = nil
                        zQ = nil
                        zR = nil
                        local zS = Y ~= ""
                        local zT = type(Y) == "string" and zS
                        assert(zT, "Namespace is required")
                        assert(type(getgenv) == "function", "getgenv is unavailable")
                        zP = getgenv()
                        assert(type(zP) == "table", "getgenv did not return a table")
                        local zS_2 = zP[Y]
                        if zS_2 ~= nil then
                            local zT_2 = type(zS_2) == "table" and type(zS_2.Unload) == "function"
                            assert(zT_2, "Namespace is occupied")
                            zS_2.Unload()
                            assert(zP[Y] == nil, "Previous instance did not release its namespace")
                        end
                        zQ = {}
                        zR = { State = {}, Unloaded = false }
                        zR.Track = function(ae)
                            assert(type(ae) == "function", "Cleanup must be callable")
                            if zR.Unloaded then
                                ae()
                            else
                                table.insert(zQ, ae)
                            end
                            return ae
                        end
                        zR.Unload = function()
                            local zI_2
                            local zH_2
                            if zR.Unloaded then
                                return
                            end
                            zR.Unloaded = true
                            local zF = {}
                            local zM = #zQ
                            local zL = -1
                            while false and zM <= 1 or true and zM >= 1 do
                                local zN = zM
                                local zG_2 = table.remove(zQ, zN)
                                zH_2, zI_2 = pcall(zG_2)
                                if not zH_2 then
                                    table.insert(zF, tostring(zI_2))
                                end
                                zM += zL
                            end
                            table.clear(zR.State)
                            if #zF > 0 then
                                error("Cleanup incomplete: " .. table.concat(zF, "; "), 0)
                            end
                            if zP[Y] == zR then
                                zP[Y] = nil
                            end
                        end
                        zP[Y] = zR
                        return zR
                    end
                    xZ = function(ar, as)
                        local zZ = type(ar) == "table" and type(ar.Track) == "function"
                        assert(zZ, "FeatureAPI required")
                        local zZ_1 = type(as) == "table" and type(as.OnUnload) == "function"
                        assert(zZ_1, "UI library required")
                        assert(type(as.Unload) == "function", "UI unload required")
                        ar.Track(function()
                            if not as.Unloaded then
                                as:Unload()
                            end
                        end)
                        as:OnUnload(function()
                            ar.Unload()
                        end)
                    end
                    xy = K3_28(K3_16)
                else
                    pcall(fn334)
                    xy = function(Y)
                        local zQ
                        local zR
                        local zP
                        zP = nil
                        zQ = nil
                        zR = nil
                        local zS = Y ~= ""
                        local zT = type(Y) == "string" and zS
                        assert(zT, "Namespace is required")
                        assert(type(getgenv) == "function", "getgenv is unavailable")
                        zP = getgenv()
                        assert(type(zP) == "table", "getgenv did not return a table")
                        local zS_1 = zP[Y]
                        if zS_1 ~= nil then
                            local zT_1 = type(zS_1) == "table" and type(zS_1.Unload) == "function"
                            assert(zT_1, "Namespace is occupied")
                            zS_1.Unload()
                            assert(zP[Y] == nil, "Previous instance did not release its namespace")
                        end
                        zQ = {}
                        zR = { State = {}, Unloaded = false }
                        zR.Track = function(ae)
                            assert(type(ae) == "function", "Cleanup must be callable")
                            if zR.Unloaded then
                                ae()
                            else
                                table.insert(zQ, ae)
                            end
                            return ae
                        end
                        zR.Unload = function()
                            local zI_1
                            local zH_1
                            if zR.Unloaded then
                                return
                            end
                            zR.Unloaded = true
                            local zF = {}
                            local zM = #zQ
                            local zL = -1
                            while false and zM <= 1 or true and zM >= 1 do
                                local zN = zM
                                local zG_1 = table.remove(zQ, zN)
                                zH_1, zI_1 = pcall(zG_1)
                                if not zH_1 then
                                    table.insert(zF, tostring(zI_1))
                                end
                                zM += zL
                            end
                            table.clear(zR.State)
                            if #zF > 0 then
                                error("Cleanup incomplete: " .. table.concat(zF, "; "), 0)
                            end
                            if zP[Y] == zR then
                                zP[Y] = nil
                            end
                        end
                        zP[Y] = zR
                        return zR
                    end
                    K3_16 = xy(xZ)
                end
                K3_17 = (K3_17 + 11) % 32
            end
        elseif K3_31 <= 3 then
            K3_20 = { "igl", "neud", "dyr", "bsiytarja", "jwsxeflx", "aubnjrdsrj", "ynxnayc", "xakgzwsr" }
            local Mr = K3_17
            K3_10 = K3_20[Mr % 8 + 1]
            if K3_10:len() <= K3_10:gsub("(.)", "%1%1", Mr % 3 % 2 + 1):len() then
                K3_25 = fn1231
            else
                K3_18 = fn1231
            end
            K3_17 = (K3_17 + 19) % 32
        else
            if (K3_17 * 2 + 6) * 4 % 3 == ((K3_17 * 2 + 6) * 4 + 1) % 3 then
                yR = fn985
                xf = fn582
            else
                xf = fn985
                yR = fn582
            end
            K3_17 = (K3_17 + 19) % 32
        end
    elseif K3_31 <= 6 then
        if K3_31 <= 5 then
            local Nd = bit32.rrotate(bit32.bxor(bit32.lrotate(K3_17, 6), string.byte(tostring(xf))), 17)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Nd, 2035609075), 1569072246), (bit32.bxor(bit32.band(Nd, 2259358220), 4107544055))), 1569072246), 4107544055) == Nd then
                K3_8 = K3_25(K3_7)
            else
                K3_7 = K3_8(K3_25)
            end
            K3_17 = (K3_17 + 19) % 32
        else
            if (K3_17 * 2 + 2) * 7 % 3 == ((K3_17 * 2 + 2) * 7 + 6) % 3 then
                yB = K3_25(ya)
            else
                ya = yB(K3_25)
            end
            K3_17 = (K3_17 + 27) % 32
        end
    elseif K3_31 <= 7 then
        if (not xy and not K3_17 and (K3_17 or yR) or (not xy or not xy) and (not K3_29 and yR)) and not (not xy and not K3_17 and (K3_17 or yR) or (not xy or not xy) and (not K3_29 and yR)) then
            K3_8 = K3_18:WaitForChild("SharedModules", 20)
        else
            K3_18 = K3_8:WaitForChild("SharedModules", 20)
        end
        K3_17 = (K3_17 + 27) % 32
    else
        K3_31 = (vector.create((K3_17 * 5 + 3) % 11 + 1, (K3_17 * 1 + 11) % 13 + 1, (K3_17 * 10 + 14) % 17 + 1))
        K3_20 = (vector.create((K3_17 * 6 + 8) % 11 + 1, (K3_17 * 1 + 4) % 13 + 1, (K3_17 * 3 + 7) % 17 + 1))
        K3_10 = (vector.create((K3_17 * 1 + 5) % 11 + 1, (K3_17 * 8 + 10) % 13 + 1, (K3_17 * 12 + 1) % 17 + 1))
        local K3_1 = (vector.create((K3_17 * 1 + 2) % 5 + 1, (K3_17 * 5 + 2) % 7 + 1, (K3_17 * 5 + 4) % 9 + 1))
        if vector.dot(vector.cross(K3_31, (vector.cross(K3_20, K3_10))), K3_1) == vector.dot(K3_20 * vector.dot(K3_31, K3_10) - K3_10 * vector.dot(K3_31, K3_20), K3_1) + 4 then
            K3_8 = K3_9:WaitForChild("ClientModules", 20)
        else
            K3_9 = K3_8:WaitForChild("ClientModules", 20)
        end
        K3_17 = (K3_17 + 19) % 32
    end
until (K3_17 * 27 + 11) % 32 == 17
if K3_29 then
    K3_25 = 5
    repeat
        local Ns = bit32.rrotate(bit32.bxor(bit32.lrotate(K3_25, 26), string.byte(tostring(K3_25))), 6)
        if bit32.bxor(bit32.lrotate(bit32.bxor(Ns, 4212152504), 18), 1659104321) == bit32.lrotate(Ns, 18) then
            K3_29 = K3_18:WaitForChild("GameData", 20)
        else
            K3_18 = K3_29:WaitForChild("GameData", 20)
        end
        K3_25 = (K3_25 + 1) % 8
    until (K3_25 * 5 + 4) % 8 == 2
end
K3_16 = K3_18
K3_25 = K3_29
if K3_16 then
    K3_7 = 3
    repeat
        K3_28 = (vector.create((K3_7 * 6 + 2) % 11 + 1, (K3_7 * 2 + 8) % 13 + 1, (K3_7 * 1 + 11) % 17 + 1))
        K3_17 = (vector.create((K3_7 * 2 + 4) % 11 + 1, (K3_7 * 6 + 8) % 13 + 1, (K3_7 * 14 + 7) % 17 + 1))
        K3_8 = (vector.create((K3_7 * 2 + 5) % 5 + 1, (K3_7 * 5 + 1) % 7 + 1, (K3_7 * 3 + 4) % 9 + 1))
        if math.abs((vector.angle(K3_28, K3_17, K3_8))) - math.abs((vector.angle(K3_17, K3_28, K3_8))) == 1 then
            K3_18 = K3_16:WaitForChild("Configs", 20)
        else
            K3_16 = K3_18:WaitForChild("Configs", 20)
        end
        K3_7 = (K3_7 + 7) % 8
    until (K3_7 * 7 + 3) % 8 == 1
end
K3_28 = K3_16
K3_16 = function(aO)
    local z3_1
    local z2_1
    if typeof(aO) ~= "Instance" then
        return nil
    end
    z2_1, z3_1 = pcall(require, aO)
    local z4 = z2_1 and type(z3_1) == "table"
    if z4 then
        return z3_1
    end
    return nil
end
K3_7 = K3_18 and K3_18:FindFirstChild("Net")
xK = K3_16(K3_7)
K3_7 = K3_9 and K3_9:FindFirstChild("PlayerData")
xE = K3_16(K3_7)
K3_7 = K3_25 and K3_25:FindFirstChild("RarityData")
xs = K3_16(K3_7)
K3_7 = K3_25 and K3_25:FindFirstChild("AnimalsData")
local xj = K3_16(K3_7)
K3_7 = K3_25 and K3_25:FindFirstChild("TrailsData")
local yV = K3_16(K3_7)
K3_7 = K3_25 and K3_25:FindFirstChild("SellData")
local yK = K3_16(K3_7)
K3_7 = K3_25 and K3_25:FindFirstChild("EggData")
K3_17 = K3_16(K3_7)
K3_7 = K3_25 and K3_25:FindFirstChild("PenData")
yr = K3_16(K3_7)
K3_7 = K3_25 and K3_25:FindFirstChild("ProgressionData")
yi = K3_16(K3_7)
K3_7 = K3_25 and K3_25:FindFirstChild("Data")
K3_25 = K3_16(K3_7)
if K3_17 then
    K3_8 = nil
    K3_7 = 0
    repeat
        K3_29 = (vector.create((K3_7 * 2 + 7) % 11 + 1, (K3_7 * 6 + 2) % 13 + 1, (K3_7 * 12 + 14) % 17 + 1))
        K3_18 = (vector.create((K3_7 * 6 + 9) % 11 + 1, (K3_7 * 7 + 6) % 13 + 1, (K3_7 * 10 + 13) % 17 + 1))
        K3_9 = (vector.create((K3_7 * 4 + 1) % 5 + 1, (K3_7 * 3 + 6) % 7 + 1, (K3_7 * 4 + 1) % 9 + 1))
        if math.abs((vector.angle(K3_29, K3_18, K3_9))) - math.abs((vector.angle(K3_18, K3_29, K3_9))) == 5 then
            K3_17 = type(K3_8.CARRY_ATTRIBUTE) == "string"
        else
            K3_8 = type(K3_17.CARRY_ATTRIBUTE) == "string"
        end
        K3_7 = (K3_7 + 1) % 4
    until (K3_7 * 3 + 1) % 4 == 0
    if K3_8 then
        K3_7 = 1
        repeat
            if K3_7 * 30580233 + 5 + 7 >= K3_7 * 30580233 + 5 + 7 + 1 then
                K3_17 = K3_8.CARRY_ATTRIBUTE ~= ""
            else
                K3_8 = K3_17.CARRY_ATTRIBUTE ~= ""
            end
            K3_7 = (K3_7 + 1) % 4
        until (K3_7 * 3 + 2) % 4 == 0
    end
    if K3_8 then
        xW = K3_17.CARRY_ATTRIBUTE
    end
    K3_8 = nil
    K3_7 = 1
    repeat
        K3_29 = (vector.create((K3_7 * 7 + 6) % 11 + 1, (K3_7 * 10 + 5) % 13 + 1, (K3_7 * 4 + 7) % 17 + 1))
        K3_18 = (vector.create((K3_7 * 7 + 7) % 11 + 1, (K3_7 * 2 + 10) % 13 + 1, (K3_7 * 2 + 16) % 17 + 1))
        local N2 = vector.dot(K3_29, K3_18)
        if N2 * N2 >= vector.dot(K3_29, K3_29) * vector.dot(K3_18, K3_18) + 1 then
            K3_17 = type(K3_8.PICKUP_DISTANCE) == "number"
        else
            K3_8 = type(K3_17.PICKUP_DISTANCE) == "number"
        end
        K3_7 = (K3_7 + 2) % 8
    until (K3_7 * 7 + 6) % 8 == 3
    if K3_8 then
        K3_7 = 2
        repeat
            K3_29 = {
                "ligcnqvg",
                "ezktsu",
                "dtkdsvkvicm",
                "gmbkl",
                "hbh",
                "bcecvm",
                "bbsmwsgbge",
                "pzmt",
                "bwieugv",
                "mabs"
            }
            if K3_29[(K3_7 * 74 + 14) % 10 + 1] < K3_29[(K3_7 * 74 + 14) % 10 + 1] then
                K3_17 = K3_8.PICKUP_DISTANCE > 0
            else
                K3_8 = K3_17.PICKUP_DISTANCE > 0
            end
            K3_7 = (K3_7 + 1) % 8
        until (K3_7 * 7 + 2) % 8 == 7
    end
    if K3_8 then
        xR = K3_17.PICKUP_DISTANCE
    end
end
K3_7 = K3_28 and K3_28:FindFirstChild("TrainingConfig")
K3_28 = K3_16(K3_7)
if K3_28 then
    K3_7 = nil
    K3_16 = 2
    repeat
        if (K3_16 * 1 + 5) * 9 % 4 == ((K3_16 * 1 + 5) * 9 + 6) % 4 then
            K3_28 = type(K3_7.TRAINING_ATTRIBUTE) == "string"
        else
            K3_7 = type(K3_28.TRAINING_ATTRIBUTE) == "string"
        end
        K3_16 = (K3_16 + 7) % 8
    until (K3_16 * 5 + 1) % 8 == 6
    if K3_7 then
        K3_16 = 3
        repeat
            K3_17 = {
                "ocbhpylzlc",
                "jndoc",
                "rmfdwl",
                "wxboytxasvol",
                "qiaclrww",
                "wwigsl",
                "wcqvxe",
                "reu",
                "zuprkv",
                "raseewovy",
                "hhirqxvevugs",
                "vkzilx",
                "bwgvjl",
                "jedczf",
                "sxiktfqto",
                "nwhcyulsu"
            }
            if K3_17[(K3_16 * 59 + 67) % 16 + 1] <= K3_17[(K3_16 * 59 + 67) % 16 + 1] then
                K3_7 = K3_28.TRAINING_ATTRIBUTE ~= ""
            else
                K3_28 = K3_7.TRAINING_ATTRIBUTE ~= ""
            end
            K3_16 = (K3_16 + 0) % 4
        until (K3_16 * 1 + 0) % 4 == 3
    end
    if K3_7 then
        yI = K3_28.TRAINING_ATTRIBUTE
    end
    K3_7 = nil
    K3_16 = 2
    repeat
        K3_17 = (vector.create((K3_16 * 6 + 6) % 11 + 1, (K3_16 * 4 + 3) % 13 + 1, (K3_16 * 2 + 10) % 17 + 1))
        K3_8 = (vector.create((K3_16 * 4 + 6) % 11 + 1, (K3_16 * 8 + 5) % 13 + 1, (K3_16 * 6 + 11) % 17 + 1))
        K3_29 = (vector.create((K3_16 * 4 + 2) % 11 + 1, (K3_16 * 7 + 11) % 13 + 1, (K3_16 * 9 + 5) % 17 + 1))
        K3_18 = (vector.create((K3_16 * 3 + 5) % 5 + 1, (K3_16 * 4 + 7) % 7 + 1, (K3_16 * 1 + 6) % 9 + 1))
        if vector.dot(vector.cross(K3_17, (vector.cross(K3_8, K3_29))), K3_18) == vector.dot(K3_8 * vector.dot(K3_17, K3_29) - K3_29 * vector.dot(K3_17, K3_8), K3_18) then
            K3_7 = type(K3_28.ZONE_NAME) == "string"
        else
            K3_28 = type(K3_7.ZONE_NAME) == "string"
        end
        K3_16 = (K3_16 + 7) % 8
    until (K3_16 * 5 + 7) % 8 == 4
    if K3_7 then
        K3_16 = 2
        repeat
            if (K3_16 * 3 + 1) * 9 % 4 == ((K3_16 * 3 + 1) * 9 + 15) % 4 then
                K3_28 = K3_7.ZONE_NAME ~= ""
            else
                K3_7 = K3_28.ZONE_NAME ~= ""
            end
            K3_16 = (K3_16 + 7) % 8
        until (K3_16 * 3 + 6) % 8 == 1
    end
    if K3_7 then
        yF = K3_28.ZONE_NAME
    end
    K3_7 = nil
    K3_16 = 2
    repeat
        if ((not K3_16 or K3_16) and (K3_16 and not K3_7) or (not K3_16 and K3_7 or (K3_7 or K3_7))) and not ((not K3_16 or K3_16) and (K3_16 and not K3_7) or (not K3_16 and K3_7 or (K3_7 or K3_7))) then
            K3_28 = type(K3_7.FLOOR_NAME) == "string"
        else
            K3_7 = type(K3_28.FLOOR_NAME) == "string"
        end
        K3_16 = (K3_16 + 3) % 4
    until (K3_16 * 3 + 3) % 4 == 2
    if K3_7 then
        K3_16 = 1
        repeat
            K3_17 = {
                "vipfoxnxz",
                "yulndp",
                "phqmnubmjku",
                "seedv",
                "hwgywfzmco",
                "hwpboecf",
                "ikr",
                "dih",
                "bguhdr",
                "ssrismasxx"
            }
            local NA = K3_16
            K3_8 = K3_17[NA % 10 + 1]
            if K3_8:len() <= K3_8:reverse():rep(NA % 3 + 2):len() then
                K3_7 = K3_28.FLOOR_NAME ~= ""
            else
                K3_28 = K3_7.FLOOR_NAME ~= ""
            end
            K3_16 = (K3_16 + 3) % 4
        until (K3_16 * 3 + 2) % 4 == 2
    end
    if K3_7 then
        yA = K3_28.FLOOR_NAME
    end
    K3_7 = nil
    K3_16 = 2
    repeat
        if K3_16 * 14430443 + 2 + 5 >= K3_16 * 14430443 + 2 + 5 + 5 then
            K3_28 = type(K3_7.DETECTOR_NAME) == "string"
        else
            K3_7 = type(K3_28.DETECTOR_NAME) == "string"
        end
        K3_16 = (K3_16 + 0) % 8
    until (K3_16 * 5 + 4) % 8 == 6
    if K3_7 then
        K3_16 = 0
        repeat
            if K3_16 * 63500351 + 2 + 4 >= K3_16 * 63500351 + 2 + 4 + 2 then
                K3_28 = K3_7.DETECTOR_NAME ~= ""
            else
                K3_7 = K3_28.DETECTOR_NAME ~= ""
            end
            K3_16 = (K3_16 + 3) % 4
        until (K3_16 * 3 + 2) % 4 == 3
    end
    if K3_7 then
        yv = K3_28.DETECTOR_NAME
    end
    K3_7 = nil
    K3_16 = 5
    repeat
        if (not K3_7 or not K3_16) and (K3_16 and not K3_7) and (not K3_7 and K3_16 and (K3_16 or K3_16)) and not ((not K3_7 or not K3_16) and (K3_16 and not K3_7) and (not K3_7 and K3_16 and (K3_16 or K3_16))) then
            K3_28 = type(K3_7.BONUS_AVAILABLE_ATTRIBUTE) == "string"
        else
            K3_7 = type(K3_28.BONUS_AVAILABLE_ATTRIBUTE) == "string"
        end
        K3_16 = (K3_16 + 6) % 8
    until (K3_16 * 7 + 4) % 8 == 1
    if K3_7 then
        K3_16 = 3
        repeat
            K3_17 = {
                "ndtxqyygyv",
                "jjyrhbfp",
                "apbpgvzwho",
                "odhlvf",
                "bvbpotr",
                "udeuxmhrsdcj",
                "fyjdstjj",
                "susrtggw",
                "htrszya",
                "ubkakwnoqvw",
                "kbgb",
                "vcghzo",
                "eizxb",
                "zenridoymfjd"
            }
            if K3_17[(K3_16 * 26 + 57) % 14 + 1] < K3_17[(K3_16 * 26 + 57) % 14 + 1] then
                K3_28 = K3_7.BONUS_AVAILABLE_ATTRIBUTE ~= ""
            else
                K3_7 = K3_28.BONUS_AVAILABLE_ATTRIBUTE ~= ""
            end
            K3_16 = (K3_16 + 5) % 8
        until (K3_16 * 1 + 5) % 8 == 5
    end
    if K3_7 then
        yq = K3_28.BONUS_AVAILABLE_ATTRIBUTE
    end
    K3_7 = nil
    K3_16 = 1
    repeat
        K3_17 = (vector.create((K3_16 * 4 + 5) % 11 + 1, (K3_16 * 2 + 10) % 13 + 1, (K3_16 * 8 + 11) % 17 + 1))
        K3_8 = (vector.create((K3_16 * 6 + 5) % 11 + 1, (K3_16 * 9 + 4) % 13 + 1, (K3_16 * 5 + 8) % 17 + 1))
        K3_29 = (vector.create((K3_16 * 7 + 2) % 11 + 1, (K3_16 * 4 + 10) % 13 + 1, (K3_16 * 5 + 10) % 17 + 1))
        K3_18 = (vector.create((K3_16 * 2 + 2) % 11 + 1, (K3_16 * 5 + 12) % 13 + 1, (K3_16 * 2 + 6) % 17 + 1))
        if vector.dot(vector.cross(K3_17, K3_8), (vector.cross(K3_29, K3_18))) == vector.dot(K3_17, K3_29) * vector.dot(K3_8, K3_18) - vector.dot(K3_17, K3_18) * vector.dot(K3_8, K3_29) then
            K3_7 = type(K3_28.BONUS_VERSION_ATTRIBUTE) == "string"
        else
            K3_28 = type(K3_7.BONUS_VERSION_ATTRIBUTE) == "string"
        end
        K3_16 = (K3_16 + 4) % 8
    until (K3_16 * 7 + 3) % 8 == 6
    if K3_7 then
        K3_16 = 7
        repeat
            K3_17 = (vector.create((K3_16 * 3 + 5) % 11 + 1, (K3_16 * 7 + 3) % 13 + 1, (K3_16 * 9 + 3) % 17 + 1))
            K3_8 = (vector.create((K3_16 * 7 + 5) % 11 + 1, (K3_16 * 2 + 4) % 13 + 1, (K3_16 * 14 + 13) % 17 + 1))
            local Ml = vector.cross(K3_17, K3_8)
            local Mm = vector.dot(K3_17, K3_8)
            if vector.dot(Ml, Ml) + Mm * Mm == vector.dot(K3_17, K3_17) * vector.dot(K3_8, K3_8) then
                K3_7 = K3_28.BONUS_VERSION_ATTRIBUTE ~= ""
            else
                K3_28 = K3_7.BONUS_VERSION_ATTRIBUTE ~= ""
            end
            K3_16 = (K3_16 + 6) % 8
        until (K3_16 * 7 + 4) % 8 == 7
    end
    if K3_7 then
        yl = K3_28.BONUS_VERSION_ATTRIBUTE
    end
end
K3_16 = xs
xu = {}
if K3_16 then
    K3_7 = 2
    repeat
        K3_28 = {
            "ffcuobetebl",
            "ugtzrmmabfv",
            "iwrlu",
            "mqvory",
            "lzyuvaq",
            "bgiylgzg",
            "tshzgslqc",
            "fmlmmavc",
            "mtgahbezjq",
            "renjbxek"
        }
        local Nz = K3_7
        K3_17 = K3_28[Nz % 10 + 1]
        if K3_17:len() >= K3_17:gsub("(.)", "%1%1", Nz % 3 % 2 + 1):len() then
            xs = type(K3_16.GetAll) == "function"
        else
            K3_16 = type(xs.GetAll) == "function"
        end
        K3_7 = (K3_7 + 6) % 8
    until (K3_7 * 7 + 6) % 8 == 6
end
if K3_16 then
    K3_7, K3_8, K3_17 = nil, nil, nil
    K3_28 = 1
    repeat
        K3_16 = (K3_28 * 1 + 1) % 2 + 1
        if K3_16 <= 1 then
            K3_16 = (vector.create((K3_28 * 3 + 9) % 11 + 1, (K3_28 * 5 + 11) % 13 + 1, (K3_28 * 4 + 4) % 17 + 1))
            K3_29 = (vector.create((K3_28 * 5 + 9) % 11 + 1, (K3_28 * 9 + 6) % 13 + 1, (K3_28 * 2 + 2) % 17 + 1))
            local Mg = vector.cross(K3_16, K3_29)
            local Mh = vector.dot(K3_16, K3_29)
            if vector.dot(Mg, Mg) + Mh * Mh == vector.dot(K3_16, K3_16) * vector.dot(K3_29, K3_29) + 5 then
                xs, K3_7 = pcall(K3_8.GetAll)
            else
                K3_7, K3_8 = pcall(xs.GetAll)
            end
            K3_28 = (K3_28 + 3) % 16
        else
            K3_16 = {
                "iirqp",
                "ldvg",
                "oadvnwqa",
                "faqktgvj",
                "zbcgkzrtq",
                "txnqcf",
                "onfg",
                "mnjyxioyeh",
                "jsioged",
                "ygnwrwjxq"
            }
            local Mn = K3_28
            K3_29 = K3_16[Mn % 10 + 1]
            if K3_29:len() <= K3_29:reverse():rep(Mn % 3 + 2):len() then
                K3_17 = K3_7
            else
                K3_7 = K3_17
            end
            K3_28 = (K3_28 + 15) % 16
        end
    until (K3_28 * 5 + 1) % 16 == 0
    if K3_17 then
        K3_16 = 3
        repeat
            K3_7 = { "mithejz", "scng", "epyajke", "tvbwcaqe", "ldw", "qvmod", "sfrbnexpu", "skncftc" }
            if K3_7[(K3_16 * 83 + 38) % 8 + 1] < K3_7[(K3_16 * 83 + 38) % 8 + 1] then
                K3_8 = type(K3_17) == "table"
            else
                K3_17 = type(K3_8) == "table"
            end
            K3_16 = (K3_16 + 1) % 4
        until (K3_16 * 3 + 1) % 4 == 1
    end
    if K3_17 then
        for i, v in ipairs(K3_8) do
            if type(v) == "string" then
                table.insert(xu, v)
            end
        end
    end
end
K3_7 = nil
K3_16 = 3
repeat
    K3_28 = {
        "aqul",
        "gcltsr",
        "rkboo",
        "xxyrfjtyw",
        "elws",
        "idsze",
        "esbcnj",
        "mhxjx",
        "mdjjrrnk",
        "uggx",
        "pznoq"
    }
    local Nl = K3_16
    K3_17 = K3_28[Nl % 11 + 1]
    if K3_17:len() >= K3_17:reverse():rep(Nl % 3 + 2):len() then
        xu = #K3_7 == 0
    else
        K3_7 = #xu == 0
    end
    K3_16 = (K3_16 + 1) % 4
until (K3_16 * 3 + 0) % 4 == 0
if K3_7 then
    K3_7 = xs
end
if K3_7 then
    K3_16 = 2
    repeat
        K3_28 = {
            "bvbyhnon",
            "csbdsum",
            "ubbtmzhoxl",
            "mof",
            "gwaf",
            "ykuesx",
            "oafuajzlvvo",
            "towjqzfebit",
            "gsdjwtr",
            "iijixj",
            "ativuwvsoj"
        }
        if K3_28[(K3_16 * 92 + 39) % 11 + 1] < K3_28[(K3_16 * 92 + 39) % 11 + 1] then
            xs = type(K3_7.ORDER) == "table"
        else
            K3_7 = type(xs.ORDER) == "table"
        end
        K3_16 = (K3_16 + 0) % 4
    until (K3_16 * 1 + 3) % 4 == 1
end
if K3_7 then
    for i, v in ipairs(xs.ORDER) do
        if type(v) == "string" then
            table.insert(xu, v)
        end
    end
end
if #xu == 0 then
    K3_16 = 7
    repeat
        if K3_16 * 37862147 + 8 + 4 >= K3_16 * 37862147 + 8 + 4 + 1 then
            xu = {
                "Rare",
                "Mythic",
                "Admin",
                "Eternal",
                "Uncommon",
                "Celestial",
                "Exclusive",
                "Common",
                "Ascended",
                "Epic",
                "Legendary"
            }
        else
            xu = {
                "Common",
                "Uncommon",
                "Rare",
                "Epic",
                "Legendary",
                "Mythic",
                "Admin",
                "Celestial",
                "Eternal",
                "Ascended",
                "Exclusive"
            }
        end
        K3_16 = (K3_16 + 7) % 8
    until (K3_16 * 3 + 6) % 8 == 0
end
local ys = {}
for i, v in ipairs(xu) do
    ys[v] = i
end
K3_16 = K3_25
yf = {}
if K3_16 then
    K3_7 = 2
    repeat
        local Mk = bit32.rrotate(bit32.bxor(bit32.lrotate(K3_7, 15), string.byte(tostring(K3_7))), 9)
        if bit32.bxor(bit32.lrotate(bit32.bxor(Mk, 3672427262), 22), 3216423218) ~= bit32.lrotate(Mk, 22) then
            K3_25 = type(K3_16.Zones) == "table"
        else
            K3_16 = type(K3_25.Zones) == "table"
        end
        K3_7 = (K3_7 + 3) % 8
    until (K3_7 * 7 + 4) % 8 == 7
end
if K3_16 then
    K3_16 = {}
    for k, v in pairs(K3_25.Zones) do
        K3_25 = (tonumber(k))
        if not K3_25 then
            K3_7 = type(v) == "table" and tonumber(v.Index)
            K3_25 = K3_7
        end
        K3_7 = K3_25
        K3_25 = type(v) == "table" and v.Name
        K3_28 = K3_25
        K3_25 = type(K3_28) == "string" and K3_7
        if K3_25 then
            K3_16[K3_7] = K3_28
        end
    end
    local zB = 1
    while zB <= 32 do
        local zC = zB
        if K3_16[zC] then
            table.insert(yf, K3_16[zC])
        end
        zB += 1
    end
end
if #yf == 0 then
    K3_25 = 2
    repeat
        K3_16 = {
            "rgdv",
            "ste",
            "xekdqhw",
            "hqrn",
            "qbfgh",
            "cxkuoe",
            "diqptruhwzle",
            "cifdjorw",
            "kkww",
            "oyrsoopmqc"
        }
        if K3_16[(K3_25 * 64 + 22) % 10 + 1] < K3_16[(K3_25 * 64 + 22) % 10 + 1] then
            yf = {
                "Jungle",
                "Winter",
                "Meadow",
                "Desert",
                "Mystic Isles",
                "Crystal Mines",
                "Celestial Heights",
                "Coral Reef",
                "Prehistoric"
            }
        else
            yf = {
                "Meadow",
                "Coral Reef",
                "Winter",
                "Desert",
                "Crystal Mines",
                "Jungle",
                "Mystic Isles",
                "Prehistoric",
                "Celestial Heights"
            }
        end
        K3_25 = (K3_25 + 2) % 8
    until (K3_25 * 1 + 6) % 8 == 2
end
State, xo, xk, xh, xc, yS, K3_28, K3_17, yN, xV, xx, yU, x9, xS, xC, x_, xr, yx, x3, xF, xt, xg, yD, x0, xz, yL, yn, x4, xL, yH, x5, xI, xq, xJ, yQ, ym, yj, yu, xN, yw, xD, xe, xm, yJ, xT, yy, xA, yp, yb, yP, yd, ye, xP, xn, yC, K3_7 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
K3_16 = 6
repeat
    K3_25 = (K3_16 * 8 + 17) % 21 + 1
    if K3_25 <= 11 then
        if K3_25 <= 6 then
            if K3_25 <= 3 then
                if K3_25 <= 2 then
                    if K3_25 <= 1 then
                        K3_8 = (vector.create((K3_16 * 4 + 1) % 11 + 1, (K3_16 * 9 + 6) % 13 + 1, (K3_16 * 11 + 15) % 17 + 1))
                        local Nh = vector.floor(K3_8) + vector.ceil(K3_8 * -1)
                        if vector.dot(Nh, Nh) == 0 then
                            xy.SetAutoSteal = fn639
                            xy.SetAutoPlace = fn560
                            xy.SetAutoOpen = fns.fn2
                            xy.SetAutoEquipBest = fn1228
                            xy.SetAutoBuyTrails = fn701
                            xy.SetAutoClaimIndex = fn586
                            xy.SetAutoSell = fn993
                            xy.SetAutoUpgradeTreadmill = fn1115
                            xy.SetAutoUpgradePen = fns.fn3
                            xy.SetAutoTrain = fns.fn97
                            xy.SetAutoBonus = fn1304
                            xy.SetEggEsp = function(le)
                                local GF
                                local GH = le and true or false
                                State.EggEsp = GH
                                if State.EggEsp then
                                    if not xc then
                                        GF = 0
                                        xc = RunService.RenderStepped:Connect(function()
                                            local GD = not yR() or not State.EggEsp
                                            if GD then
                                                return
                                            end
                                            local GD_2 = os.clock()
                                            if GD_2 - GF < 0.05 then
                                                return
                                            end
                                            GF = GD_2
                                            yC()
                                        end)
                                        xy.Track(function()
                                            xP()
                                        end)
                                    end
                                else
                                    xP()
                                end
                            end
                            xy.SetStealZones = fn1302
                            xy.SetStealRarities = fns.fn199
                            xy.SetEspRarities = fn1200
                            xy.SetSellRarities = fn1338
                            xy.SetPriority = fn1090
                            xy.SetTeleportZone = fn678
                            xy.Track(fn552)
                            K3_7 = function()
                                local onDiscord
                                onDiscord = nil
                                local ThemeManager, KG, Options, KI, SaveManager, Library, Toggles
                                Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
                                ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
                                SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
                                Toggles = Library.Toggles
                                Options = Library.Options
                                xZ(xy, Library)
                                KI = function(lS, lT)
                                    local G0 = xf(setclipboard) and setclipboard
                                    local G1 = G0
                                    if not G1 then
                                        local G0_3 = xf(toclipboard) and toclipboard
                                        G1 = G0_3 or nil
                                    end
                                    local G0_4 = G1
                                    if not G0_4 then
                                        Library:Notify("Clipboard is unavailable")
                                        return
                                    end
                                    local G1_2 = pcall(G0_4, lS)
                                    if G1_2 then
                                        Library:Notify(lT)
                                    else
                                        Library:Notify("Failed to copy")
                                    end
                                end
                                onDiscord = function()
                                    KI(xU, "Copied Discord invite to clipboard")
                                end
                                local Window = Library:CreateWindow({
                                    Title = "Ouroboros",
                                    Font = Enum.Font.BuilderSans,
                                    Footer = { { Text = xU, Copyable = true }, "|", x1, "|", xX },
                                    Icon = 78539693571783,
                                    NotifySide = "Right",
                                    ShowCustomCursor = false,
                                    CornerRadius = 0,
                                    SidebarCompacted = true,
                                    TabSwipeFrom = "bottom",
                                    Animations = { TabSwitch = true }
                                })
                                Window:SetGlow(false)
                                KG = {
                                    Info = Window:AddTab("Info", "info"),
                                    Main = Window:AddTab("Main", "gamepad-2"),
                                    Player = Window:AddTab("Player", "person-standing"),
                                    Settings = Window:AddTab("Settings", "settings")
                                }
                                local function KN_6(mb)
                                    local DiscordGroup = mb:AddLeftGroupbox("Discord")
                                    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
                                    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
                                end
                                for k, v in KG do
                                    if k ~= "Info" then
                                        KN_6(v)
                                    end
                                end
                                local function KO()
                                    local m8
                                    local StealGroup = KG.Main:AddRightGroupbox("Steal", "egg")
                                    local Label = StealGroup:AddLabel(xy.GetStatus(), true)
                                    StealGroup:AddDivider()
                                    StealGroup:AddToggle("AutoSteal", {
                                        Text = "Auto Steal Eggs",
                                        Default = false,
                                        Callback = function(ml)
                                            xy.SetAutoSteal(ml)
                                        end
                                    })
                                    StealGroup:AddDropdown("StealZones", {
                                        Text = "Zone Filter",
                                        Values = xy.ZoneValues(),
                                        Default = {},
                                        Multi = true,
                                        AllowNull = true,
                                        Expandable = true,
                                        Callback = function(mn)
                                            xy.SetStealZones(mn)
                                        end
                                    })
                                    StealGroup:AddDropdown("StealRarities", {
                                        Text = "Rarity Filter",
                                        Values = xy.RarityValues(),
                                        Default = {},
                                        Multi = true,
                                        AllowNull = true,
                                        Expandable = true,
                                        Callback = function(mp)
                                            xy.SetStealRarities(mp)
                                        end
                                    })
                                    StealGroup:AddToggle("EggEsp", {
                                        Text = "Egg ESP",
                                        Default = false,
                                        Callback = function(mr)
                                            xy.SetEggEsp(mr)
                                        end
                                    })
                                    StealGroup:AddDropdown("EspRarities", {
                                        Text = "ESP Rarity Filter",
                                        Values = xy.RarityValues(),
                                        Default = {},
                                        Multi = true,
                                        AllowNull = true,
                                        Expandable = true,
                                        Callback = function(mt)
                                            xy.SetEspRarities(mt)
                                        end
                                    })
                                    local FarmGroup = KG.Main:AddLeftGroupbox("Farm", "rabbit")
                                    FarmGroup:AddToggle("AutoPlaceEggs", {
                                        Text = "Auto Place Eggs",
                                        Default = false,
                                        Callback = function(mw)
                                            xy.SetAutoPlace(mw)
                                        end
                                    })
                                    FarmGroup:AddToggle("AutoOpenEggs", {
                                        Text = "Auto Hatch Eggs",
                                        Default = false,
                                        Callback = function(my)
                                            xy.SetAutoOpen(my)
                                        end
                                    })
                                    FarmGroup:AddToggle("AutoEquipBest", {
                                        Text = "Auto Equip Best Pet",
                                        Default = false,
                                        Callback = function(mA)
                                            xy.SetAutoEquipBest(mA)
                                        end
                                    })
                                    FarmGroup:AddToggle("AutoBuyTrails", {
                                        Text = "Auto Buy Trails",
                                        Default = false,
                                        Callback = function(mC)
                                            xy.SetAutoBuyTrails(mC)
                                        end
                                    })
                                    FarmGroup:AddToggle("AutoClaimIndex", {
                                        Text = "Auto Claim Index",
                                        Default = false,
                                        Callback = function(mE)
                                            xy.SetAutoClaimIndex(mE)
                                        end
                                    })
                                    FarmGroup:AddToggle("AutoTrain", {
                                        Text = "Auto Go On Treadmill",
                                        Default = false,
                                        Callback = function(mG)
                                            xy.SetAutoTrain(mG)
                                        end
                                    })
                                    FarmGroup:AddToggle("AutoBonus", {
                                        Text = "Auto 2x Bonus",
                                        Default = false,
                                        Callback = function(mI)
                                            xy.SetAutoBonus(mI)
                                        end
                                    })
                                    local SellGroup = KG.Main:AddLeftGroupbox("Sell", "hand-coins")
                                    SellGroup:AddToggle("AutoSell", {
                                        Text = "Auto Sell",
                                        Default = false,
                                        Callback = function(mL)
                                            xy.SetAutoSell(mL)
                                        end
                                    })
                                    SellGroup:AddDropdown("SellRarities", {
                                        Text = "Sell Rarities",
                                        Values = xy.RarityValues(),
                                        Default = {},
                                        Multi = true,
                                        AllowNull = true,
                                        Expandable = true,
                                        Callback = function(mN)
                                            xy.SetSellRarities(mN)
                                        end
                                    })
                                    local UpgradesGroup = KG.Main:AddRightGroupbox("Upgrades", "arrow-up")
                                    UpgradesGroup:AddToggle("AutoUpgradeTreadmill", {
                                        Text = "Auto Upgrade Treadmill",
                                        Default = false,
                                        Callback = function(mQ)
                                            xy.SetAutoUpgradeTreadmill(mQ)
                                        end
                                    })
                                    UpgradesGroup:AddToggle("AutoUpgradePen", {
                                        Text = "Auto Upgrade Pen",
                                        Default = false,
                                        Callback = function(mS)
                                            xy.SetAutoUpgradePen(mS)
                                        end
                                    })
                                    local TravelGroup = KG.Main:AddRightGroupbox("Travel", "map-pin")
                                    TravelGroup:AddButton({
                                        Text = "Teleport to Pen",
                                        Func = function()
                                            xy.TeleportToPen()
                                        end
                                    })
                                    TravelGroup:AddDropdown("TeleportZone", {
                                        Text = "Zone",
                                        Values = xy.ZoneValues(),
                                        Default = yf[1],
                                        Callback = function(mY)
                                            xy.SetTeleportZone(mY)
                                        end
                                    })
                                    TravelGroup:AddButton({
                                        Text = "Teleport to Zone",
                                        Func = function()
                                            xy.TeleportToZone(Options.TeleportZone.Value)
                                        end
                                    })
                                    m8 = task.spawn(function()
                                        while true do
                                            task.wait(0.5)
                                            if Library.Unloaded then
                                                break
                                            end
                                            pcall(function()
                                                Label:SetText(xy.GetStatus())
                                            end)
                                        end
                                    end)
                                    xy.Track(function()
                                        if coroutine.status(m8) ~= "dead" then
                                            pcall(task.cancel, m8)
                                        end
                                    end)
                                end
                                KO()
                                local function KN_7()
                                    local HC
                                    local HA
                                    local Hw
                                    local Hs
                                    Hs = nil
                                    Hw = nil
                                    HA = nil
                                    HC = nil
                                    local Hr, Ht, Label2, Label3, Hx, Hy, Label, HB, HD
                                    Hs = function(nc)
                                        return (tostring(nc):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
                                    end
                                    HC = function(ne, nf)
                                        return string.format('<font color="%s">%s</font>', nf, Hs(ne))
                                    end
                                    Ht = function(ni, nj, nk)
                                        return string.format("<b>%s</b> %s %s", ni, HC("-", "#5a6070"), HC(nj, nk))
                                    end
                                    Hr = "#7fd47f"
                                    local HE = "#8b93a3"
                                    local HF = "#6ec1ff"
                                    Hy = "#e8a34d"
                                    local HG = xy.Support()
                                    local HH = #HG == 0 and "ready"
                                    local HI = HH or "limited: " .. table.concat(HG, ", ")
                                    HD = "Unknown"
                                    pcall(function()
                                        local Ha_2
                                        local G9_3
                                        if xf(identifyexecutor) then
                                            Ha_2, G9_3 = identifyexecutor()
                                            local Hb = Ha_2 ~= ""
                                            local Hc = type(Ha_2) == "string" and Hb
                                            if Hc then
                                                local Hb_2 = type(G9_3) == "string" and G9_3 ~= "" and Ha_2 .. " " .. G9_3
                                                HD = Hb_2 or Ha_2
                                            end
                                        end
                                    end)
                                    Hw = os.clock()
                                    HB = function()
                                        local Hh = math.floor(os.clock() - Hw)
                                        if Hh < 60 then
                                            return Hh .. "s"
                                        elseif Hh < 3600 then
                                            return string.format("%dm %ds", Hh // 60, Hh % 60)
                                        else
                                            return string.format("%dh %dm", Hh // 3600, Hh % 3600 // 60)
                                        end
                                    end
                                    local UserGroup = KG.Info:AddLeftGroupbox("User", "circle-user")
                                    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
                                    UserGroup:AddLabel(Ht("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Hr), true)
                                    UserGroup:AddLabel(Ht("UserId", tostring(LocalPlayer.UserId), HF), true)
                                    UserGroup:AddLabel(Ht("Executor", HD .. "  " .. HI, Hr), true)
                                    UserGroup:AddDivider()
                                    Label3 = UserGroup:AddLabel(Ht("Session", HB(), Hy), true)
                                    UserGroup:AddDivider()
                                    UserGroup:AddButton({
                                        Text = "Copy Username",
                                        Func = function()
                                            KI(LocalPlayer.Name, "Copied username")
                                        end
                                    })
                                    UserGroup:AddButton({
                                        Text = "Copy Profile Link",
                                        Func = function()
                                            KI("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
                                        end
                                    })
                                    local SessionGroup = KG.Info:AddRightGroupbox("Session", "signal")
                                    SessionGroup:AddLabel(Ht("Game", x1, HF), true)
                                    Label2 = SessionGroup:AddLabel(Ht("Players", "0/0", Hr), true)
                                    Hx = tostring(game.JobId)
                                    local HF_3 = #Hx > 18 and string.sub(Hx, 1, 18) .. "..."
                                    local HH_4 = HF_3 or Hx
                                    SessionGroup:AddLabel(Ht("Job", HH_4, HE), true)
                                    Label = SessionGroup:AddLabel(Ht("Ping", "0 ms", Hy), true)
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
                                            KI(Hx, "Copied Job ID")
                                        end
                                    })
                                    HA = task.spawn(function()
                                        local Hn_2
                                        local Hm_3
                                        while true do
                                            task.wait(1)
                                            if Library.Unloaded then
                                                break
                                            end
                                            Label3:SetText(Ht("Session", HB(), Hy))
                                            Label2:SetText(Ht("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Hr))
                                            Hm_3, Hn_2 = pcall(function()
                                                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                                            end)
                                            local Hm_4 = Hm_3 and Hn_2 .. " ms" or "n/a"
                                            Label:SetText(Ht("Ping", Hm_4, Hy))
                                        end
                                    end)
                                    xy.Track(function()
                                        if coroutine.status(HA) ~= "dead" then
                                            pcall(task.cancel, HA)
                                        end
                                    end)
                                    local SocialsGroup = KG.Info:AddRightGroupbox("Socials", "link")
                                    SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
                                    SocialsGroup:AddButton({
                                        Text = "Rscripts",
                                        Func = function()
                                            KI(xQ, "Copied Rscripts profile")
                                        end
                                    })
                                    SocialsGroup:AddButton({
                                        Text = "Website",
                                        Func = function()
                                            KI(xM, "Copied website link")
                                        end
                                    })
                                end
                                KN_7()
                                local function KN_8()
                                    local oD
                                    local oB
                                    local oC
                                    local oA
                                    local MovementGroup = KG.Player:AddLeftGroupbox("Movement", "footprints")
                                    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
                                    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
                                    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
                                    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
                                    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
                                    local FlyGroup = KG.Player:AddRightGroupbox("Fly", "feather")
                                    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
                                    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
                                    oD = {}
                                    oC = {}
                                    oB = {}
                                    local oz = {}
                                    oA = {}
                                    local function oE()
                                        for k, v in oA do
                                            if k.Parent then
                                                k.CanCollide = v
                                            end
                                        end
                                        table.clear(oA)
                                    end
                                    local function oI()
                                        for k, v in oB do
                                            if k.Parent then
                                                k.WalkSpeed = v
                                            end
                                        end
                                        table.clear(oB)
                                    end
                                    local function oM()
                                        for k, v in oC do
                                            if k.Parent then
                                                k.PlatformStand = v
                                            end
                                        end
                                        table.clear(oC)
                                    end
                                    local function oQ(oR)
                                        if not oR:IsA("ProximityPrompt") then
                                            return
                                        end
                                        if oD[oR] == nil then
                                            oD[oR] = {
                                                HoldDuration = oR.HoldDuration,
                                                MaxActivationDistance = oR.MaxActivationDistance,
                                                RequiresLineOfSight = oR.RequiresLineOfSight
                                            }
                                        end
                                        oR.HoldDuration = 0
                                        oR.MaxActivationDistance = 50
                                        oR.RequiresLineOfSight = false
                                    end
                                    local function oT()
                                        for k, v in oD do
                                            if k.Parent then
                                                k.HoldDuration = v.HoldDuration
                                                k.MaxActivationDistance = v.MaxActivationDistance
                                                k.RequiresLineOfSight = v.RequiresLineOfSight
                                            end
                                        end
                                        table.clear(oD)
                                    end
                                    Toggles.Fly:OnChanged(function()
                                        if not Toggles.Fly.Value then
                                            oM()
                                        end
                                    end)
                                    Toggles.WalkSpeedEnabled:OnChanged(function()
                                        if not Toggles.WalkSpeedEnabled.Value then
                                            oI()
                                        end
                                    end)
                                    Toggles.NoClip:OnChanged(function()
                                        if not Toggles.NoClip.Value then
                                            oE()
                                        end
                                    end)
                                    Toggles.InstantProximityPrompt:OnChanged(function()
                                        if Toggles.InstantProximityPrompt.Value then
                                            for k, v in ya:QueryDescendants("ProximityPrompt") do
                                                pcall(oQ, v)
                                            end
                                        else
                                            oT()
                                        end
                                    end)
                                    table.insert(oz, ya.DescendantAdded:Connect(function(pb)
                                        if Toggles.InstantProximityPrompt.Value then
                                            oQ(pb)
                                        end
                                    end))
                                    table.insert(oz, RunService.Stepped:Connect(function()
                                        if Library.Unloaded then
                                            return
                                        end
                                        local Character = LocalPlayer.Character
                                        if Toggles.NoClip.Value and Character then
                                            for k, v in Character:QueryDescendants("BasePart") do
                                                if oA[v] == nil then
                                                    oA[v] = v.CanCollide
                                                end
                                                v.CanCollide = false
                                            end
                                        end
                                    end))
                                    table.insert(oz, UserInputService.JumpRequest:Connect(function()
                                        if Library.Unloaded then
                                            return
                                        end
                                        local Character = LocalPlayer.Character
                                        local Ix = Character and Character:FindFirstChildOfClass("Humanoid")
                                        if Toggles.InfJump.Value and Ix then
                                            Ix:ChangeState(Enum.HumanoidStateType.Jumping)
                                        end
                                    end))
                                    table.insert(oz, RunService.RenderStepped:Connect(function(px)
                                        if Library.Unloaded then
                                            return
                                        end
                                        local Character = LocalPlayer.Character
                                        local ID = Character and Character:FindFirstChildOfClass("Humanoid")
                                        local IE = Character
                                        if IE then
                                            IE = Character:FindFirstChild("HumanoidRootPart")
                                        end
                                        local IC_2 = IE
                                        local CurrentCamera = ya.CurrentCamera
                                        if Toggles.WalkSpeedEnabled.Value and ID then
                                            if oB[ID] == nil then
                                                oB[ID] = ID.WalkSpeed
                                            end
                                            ID.WalkSpeed = Options.WalkSpeed.Value
                                        end
                                        if Toggles.Fly.Value and IC_2 and ID and CurrentCamera then
                                            if oC[ID] == nil then
                                                oC[ID] = ID.PlatformStand
                                            end
                                            ID.PlatformStand = true
                                            local IE_8 = Vector3.zero
                                            if not UserInputService:GetFocusedTextBox() then
                                                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                                    IE_8 += CurrentCamera.CFrame.LookVector
                                                end
                                                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                                    IE_8 -= CurrentCamera.CFrame.LookVector
                                                end
                                                local IN = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
                                                if IN == 1 then
                                                    IE_8 -= CurrentCamera.CFrame.RightVector
                                                end
                                                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                                                    IE_8 += CurrentCamera.CFrame.RightVector
                                                end
                                                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                                                    IE_8 += Vector3.new(0, 1, 0)
                                                end
                                                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                                                    IE_8 -= Vector3.new(0, 1, 0)
                                                end
                                            end
                                            IC_2.AssemblyLinearVelocity = Vector3.zero
                                            if IE_8.Magnitude > 0 then
                                                IC_2.CFrame = IC_2.CFrame + IE_8.Unit * Options.FlySpeed.Value * px
                                            end
                                        end
                                    end))
                                    xy.Track(function()
                                        for k, v in oz do
                                            v:Disconnect()
                                        end
                                        oE()
                                        oI()
                                        oM()
                                        oT()
                                    end)
                                end
                                KN_8()
                                local function KN_9()
                                    local pP = {}
                                    local pO = {}
                                    local pQ
                                    local pS = 0
                                    local pT = 0
                                    local pR = false
                                    local pU = os.clock()
                                    local MenuGroup = KG.Settings:AddLeftGroupbox("Menu", "logs")
                                    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                                    local Label = MenuGroup:AddLabel("AFK triggers: 0")
                                    local function pY()
                                        local CurrentCamera
                                        CurrentCamera = ya.CurrentCamera
                                        local IW = not CurrentCamera or not xf(VirtualUser.CaptureController) or not xf(VirtualUser.ClickButton2)
                                        if IW then
                                            return false
                                        end
                                        local IW_2 = pcall(function()
                                            VirtualUser:CaptureController()
                                            VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
                                        end)
                                        if not IW_2 then
                                            return false
                                        end
                                        pT += 1
                                        pU = os.clock()
                                        pcall(function()
                                            Label:SetText("AFK triggers: " .. pT)
                                        end)
                                        return true
                                    end
                                    local function qf(qg)
                                        pcall(function()
                                            GuiService:SetGameplayPausedNotificationEnabled(not qg)
                                        end)
                                        pcall(function()
                                            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                                            if RobloxNetworkPauseNotificati then
                                                RobloxNetworkPauseNotificati.Enabled = not qg
                                            end
                                        end)
                                        if not qg then
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
                                    local function qv(qw)
                                        if qw.ClassName == "ParticleEmitter" or qw.ClassName == "Trail" or qw.ClassName == "Smoke" or qw.ClassName == "Fire" or qw.ClassName == "Sparkles" or qw.ClassName == "Explosion" or qw.ClassName == "Beam" then
                                            if pP[qw] == nil then
                                                pP[qw] = qw.Enabled
                                            end
                                            pcall(function()
                                                qw.Enabled = false
                                            end)
                                        end
                                    end
                                    local function qA()
                                        for k, v in pP do
                                            local Jd = k
                                            local Jf = v
                                            if Jd.Parent then
                                                pcall(function()
                                                    Jd.Enabled = Jf
                                                end)
                                            end
                                        end
                                        table.clear(pP)
                                        if pQ then
                                            pcall(function()
                                                settings().Rendering.QualityLevel = pQ.Quality
                                            end)
                                            Lighting.GlobalShadows = pQ.Shadows
                                            Lighting.FogEnd = pQ.Fog
                                            pQ = nil
                                        end
                                    end
                                    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
                                    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
                                    MenuGroup:AddToggle("Disable3D", {
                                        Text = "Disable 3D Rendering",
                                        Default = false,
                                        Callback = function(qL)
                                            pcall(function()
                                                RunService:Set3dRenderingEnabled(not qL)
                                            end)
                                        end
                                    })
                                    MenuGroup:AddToggle("FpsBoost", {
                                        Text = "FPS Boost",
                                        Default = false,
                                        Callback = function(qQ)
                                            if qQ then
                                                if not pQ then
                                                    pQ = {
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
                                                for k, v in ya:QueryDescendants("ParticleEmitter, Trail, Smoke, Fire, Sparkles, Beam") do
                                                    qv(v)
                                                end
                                            else
                                                qA()
                                            end
                                        end
                                    })
                                    MenuGroup:AddToggle("HideUIOnStart", { Text = "Hide UI On Start", Default = false })
                                    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                                    Library.ToggleKeybind = Options.MenuKeybind
                                    table.insert(pO, LocalPlayer.Idled:Connect(function()
                                        if Toggles.AntiAfk.Value then
                                            pY()
                                        end
                                    end))
                                    local q8 = task.spawn(function()
                                        while true do
                                            task.wait(1)
                                            if Library.Unloaded then
                                                break
                                            end
                                            local Jo = Toggles.AntiAfk.Value and os.clock() - pU >= 60
                                            if Jo then
                                                pY()
                                            end
                                            if Toggles.AntiGameplayPause.Value then
                                                qf(true)
                                            end
                                        end
                                    end)
                                    Toggles.AntiGameplayPause:OnChanged(function(q9)
                                        qf(q9)
                                    end)
                                    qf(true)
                                    local function rb()
                                        local JA
                                        if pR or not Toggles.AutoReconnect.Value then
                                            return
                                        end
                                        pR = true
                                        pS += 1
                                        JA = pS
                                        task.spawn(function()
                                            for i = 1, 2 do
                                                local Jz = i
                                                if Library.Unloaded or not Toggles.AutoReconnect.Value or JA ~= pS then
                                                    break
                                                end
                                                local wait = task.wait
                                                local Ju_2 = Jz == 1 and 1 or 3
                                                wait(Ju_2)
                                                if JA ~= pS then
                                                    break
                                                end
                                                pcall(function()
                                                    if Jz == 1 and game.JobId ~= "" then
                                                        TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                                                    else
                                                        TeleportService:Teleport(game.PlaceId, LocalPlayer)
                                                    end
                                                end)
                                            end
                                            pR = false
                                        end)
                                    end
                                    table.insert(pO, GuiService.ErrorMessageChanged:Connect(function()
                                        if Toggles.AutoReconnect.Value then
                                            rb()
                                        end
                                    end))
                                    pcall(function()
                                        table.insert(pO, TeleportService.TeleportInitFailed:Connect(function(rC)
                                            if rC == LocalPlayer and Toggles.AutoReconnect.Value then
                                                rb()
                                            end
                                        end))
                                    end)
                                    local ScriptGroup = KG.Settings:AddLeftGroupbox("Script", "scroll-text")
                                    ScriptGroup:AddButton({
                                        Text = "Unload Script",
                                        Func = function()
                                            Library:Unload()
                                        end
                                    })
                                    xy.Track(function()
                                        for k, v in pO do
                                            v:Disconnect()
                                        end
                                        if coroutine.status(q8) ~= "dead" then
                                            pcall(task.cancel, q8)
                                        end
                                        qA()
                                        pcall(function()
                                            RunService:Set3dRenderingEnabled(true)
                                        end)
                                    end)
                                end
                                KN_9()
                                local function KN_10()
                                    local Kw, Kx, Ky, Kz
                                    ThemeManager:SetLibrary(Library)
                                    ThemeManager:SetFolder("MyScriptHub")
                                    ThemeManager:SaveDefault("Evil Hello Kitty")
                                    ThemeManager:ApplyToTab(KG.Settings)
                                    SaveManager:SetLibrary(Library)
                                    SaveManager:IgnoreThemeSettings()
                                    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
                                    SaveManager:SetFolder("OuroborosHub/SurfForAnimals")
                                    local KA = SaveManager:BuildConfigSection(KG.Settings)
                                    Ky = function(r0, r1)
                                        local JO_2 = (r0 == "Toggle" and Toggles or Options)[r1]
                                        local JN_5 = type(JO_2) == "table" and JO_2.Type == r0
                                        return JN_5 and JO_2 or nil
                                    end
                                    Kx = function(sa, sb)
                                        local Type = sb.Type
                                        if Type == "Toggle" then
                                            return { idx = sa, type = "Toggle", value = sb.Value == true }
                                        elseif Type == "Slider" then
                                            return { idx = sa, type = "Slider", value = tostring(sb.Value) }
                                        elseif Type == "Dropdown" then
                                            return { idx = sa, type = "Dropdown", multi = sb.Multi == true, value = sb.Value }
                                        elseif Type == "Input" then
                                            local JS = sb.Value or ""
                                            return { idx = sa, type = "Input", text = tostring(JS) }
                                        elseif Type == "ColorPicker" then
                                            return { idx = sa, type = "ColorPicker", value = sb.Value:ToHex(), transparency = sb.Transparency }
                                        elseif Type == "KeyPicker" then
                                            return {
                                                idx = sa,
                                                type = "KeyPicker",
                                                mode = sb.Mode,
                                                key = sb.Value,
                                                modifiers = sb.Modifiers,
                                                toggled = sb.Toggled
                                            }
                                        else
                                            return nil
                                        end
                                    end
                                    Kz = function()
                                        local JV = {}
                                        for i, v in ipairs({ Toggles, Options }) do
                                            for k, v in pairs(v) do
                                                local JW = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                                                if JW then
                                                    local JW_2 = Kx(k, v)
                                                    if JW_2 then
                                                        JV[#JV + 1] = JW_2
                                                    end
                                                end
                                            end
                                        end
                                        table.sort(JV, function(sl, sm)
                                            if sl.type ~= sm.type then
                                                return sl.type < sm.type
                                            end
                                            return sl.idx < sm.idx
                                        end)
                                        return { objects = JV }
                                    end
                                    Kw = function(so)
                                        local Kb
                                        Kb = nil
                                        local Kc = type(so) ~= "table" or type(so.idx) ~= "string"
                                        local Kg = if Kc then 1 else 0
                                        local Ke = 2002 * Kg + 71 * (1 - Kg)
                                        local Kf = 3841 * Kg + 495 * (1 - Kg)
                                        if not ((Ke * 1010 + Kf * 1886 + Ke * Kf) % 16777213 == 178615) then
                                            Kc = type(so.type) ~= "string"
                                        end
                                        if not Kc then
                                            Kc = SaveManager.Ignore[so.idx]
                                        end
                                        if Kc then
                                            return false
                                        end
                                        Kb = Ky(so.type, so.idx)
                                        if not Kb then
                                            return false
                                        end
                                        local Kc_2 = pcall(function()
                                            if so.type == "Input" then
                                                if type(so.text) ~= "string" then
                                                    return
                                                end
                                                Kb:SetValue(so.text)
                                            elseif so.type == "ColorPicker" then
                                                Kb:SetValueRGB(Color3.fromHex(so.value), so.transparency)
                                            elseif so.type == "KeyPicker" then
                                                Kb:SetValue({ so.key, so.mode, so.modifiers })
                                                if so.mode == "Toggle" and so.toggled ~= nil then
                                                    Kb.Toggled = so.toggled
                                                    Kb:Update()
                                                end
                                            else
                                                Kb:SetValue(so.value)
                                            end
                                        end)
                                        return Kc_2
                                    end
                                    KA:AddDivider()
                                    KA:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
                                    KA:AddButton("Export Config to Clipboard", function()
                                        local Ki_2
                                        local Kh_5
                                        Kh_5, Ki_2 = pcall(HttpService.JSONEncode, HttpService, Kz())
                                        if Kh_5 then
                                            local Kh_6 = xf(setclipboard) and setclipboard
                                            local Kj = Kh_6
                                            if not Kj then
                                                local Kh_7 = xf(toclipboard) and toclipboard
                                                Kj = Kh_7 or nil
                                            end
                                            local Kh_8 = Kj
                                            local Kj_2 = type(Kh_8) == "function" and pcall(Kh_8, Ki_2)
                                            if Kj_2 then
                                                Library:Notify("Config copied to clipboard", 6)
                                                return
                                            end
                                            Library:Notify("Your executor does not support copying to the clipboard")
                                            return
                                        end
                                        Library:Notify("Failed to encode the config")
                                    end)
                                    KA:AddButton("Import Config from Clipboard Text", function()
                                        local Ko_2
                                        local Km = Options.SaveManager_ImportSource.Value or ""
                                        local Km_3
                                        local Kn = tostring(Km):match("^%s*(.-)%s*$")
                                        if Kn == "" then
                                            Library:Notify("Paste a config first")
                                            return
                                        end
                                        if #Kn > 262144 then
                                            Library:Notify("Config is too large")
                                            return
                                        end
                                        Km_3, Ko_2 = pcall(HttpService.JSONDecode, HttpService, Kn)
                                        local Kn_3 = not Km_3 or type(Ko_2) ~= "table" or type(Ko_2.objects) ~= "table"
                                        if Kn_3 then
                                            Library:Notify("Invalid config payload")
                                            return
                                        end
                                        if #Ko_2.objects > 2048 then
                                            Library:Notify("Config has too many records")
                                            return
                                        end
                                        local Km_4 = 0
                                        local Kn_4 = 0
                                        for i, v in ipairs(Ko_2.objects) do
                                            if Kw(v) then
                                                Kn_4 += 1
                                            else
                                                Km_4 += 1
                                            end
                                        end
                                        Options.SaveManager_ImportSource:SetValue("")
                                        Library:Notify(string.format("Imported %d settings (%d skipped)", Kn_4, Km_4), 6)
                                    end)
                                    SaveManager:LoadAutoloadConfig()
                                    if Toggles.HideUIOnStart and Toggles.HideUIOnStart.Value then
                                        pcall(function()
                                            Library:Toggle(false)
                                        end)
                                    end
                                end
                                KN_10()
                                if Toggles.AutoSteal then
                                    xy.SetAutoSteal(Toggles.AutoSteal.Value)
                                end
                                if Toggles.AutoPlaceEggs then
                                    xy.SetAutoPlace(Toggles.AutoPlaceEggs.Value)
                                end
                                if Toggles.AutoOpenEggs then
                                    xy.SetAutoOpen(Toggles.AutoOpenEggs.Value)
                                end
                                if Toggles.AutoEquipBest then
                                    xy.SetAutoEquipBest(Toggles.AutoEquipBest.Value)
                                end
                                if Toggles.AutoBuyTrails then
                                    xy.SetAutoBuyTrails(Toggles.AutoBuyTrails.Value)
                                end
                                if Toggles.AutoClaimIndex then
                                    xy.SetAutoClaimIndex(Toggles.AutoClaimIndex.Value)
                                end
                                if Toggles.AutoTrain then
                                    xy.SetAutoTrain(Toggles.AutoTrain.Value)
                                end
                                if Toggles.AutoBonus then
                                    xy.SetAutoBonus(Toggles.AutoBonus.Value)
                                end
                                if Toggles.AutoSell then
                                    xy.SetAutoSell(Toggles.AutoSell.Value)
                                end
                                if Toggles.AutoUpgradeTreadmill then
                                    xy.SetAutoUpgradeTreadmill(Toggles.AutoUpgradeTreadmill.Value)
                                end
                                if Toggles.AutoUpgradePen then
                                    xy.SetAutoUpgradePen(Toggles.AutoUpgradePen.Value)
                                end
                                if Toggles.EggEsp then
                                    xy.SetEggEsp(Toggles.EggEsp.Value)
                                end
                                if Options.StealZones then
                                    xy.SetStealZones(Options.StealZones.Value)
                                end
                                if Options.StealRarities then
                                    xy.SetStealRarities(Options.StealRarities.Value)
                                end
                                if Options.EspRarities then
                                    xy.SetEspRarities(Options.EspRarities.Value)
                                end
                                if Options.SellRarities then
                                    xy.SetSellRarities(Options.SellRarities.Value)
                                end
                                if Options.TeleportZone then
                                    xy.SetTeleportZone(Options.TeleportZone.Value)
                                end
                            end
                        else
                            K3_7.SetAutoSteal = fn639
                            K3_7.SetAutoPlace = fn560
                            K3_7.SetAutoOpen = fns.fn2
                            K3_7.SetAutoEquipBest = fn1228
                            K3_7.SetAutoBuyTrails = fn701
                            K3_7.SetAutoClaimIndex = fn586
                            K3_7.SetAutoSell = fn993
                            K3_7.SetAutoUpgradeTreadmill = fn1115
                            K3_7.SetAutoUpgradePen = fns.fn3
                            K3_7.SetAutoTrain = fns.fn97
                            K3_7.SetAutoBonus = fn1304
                            K3_7.SetEggEsp = function(le)
                                local GF
                                local GH = le and true or false
                                State.EggEsp = GH
                                if State.EggEsp then
                                    if not xc then
                                        GF = 0
                                        xc = RunService.RenderStepped:Connect(function()
                                            local GD = not yR() or not State.EggEsp
                                            if GD then
                                                return
                                            end
                                            local GD_1 = os.clock()
                                            if GD_1 - GF < 0.05 then
                                                return
                                            end
                                            GF = GD_1
                                            yC()
                                        end)
                                        xy.Track(function()
                                            xP()
                                        end)
                                    end
                                else
                                    xP()
                                end
                            end
                            K3_7.SetStealZones = fn1302
                            K3_7.SetStealRarities = fns.fn199
                            K3_7.SetEspRarities = fn1200
                            K3_7.SetSellRarities = fn1338
                            K3_7.SetPriority = fn1090
                            K3_7.SetTeleportZone = fn678
                            K3_7.Track(fn552)
                            xy = function()
                                local onDiscord
                                onDiscord = nil
                                local ThemeManager, KG, Options, KI, SaveManager, Library, Toggles
                                Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
                                ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
                                SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
                                Toggles = Library.Toggles
                                Options = Library.Options
                                xZ(xy, Library)
                                KI = function(lS, lT)
                                    local G0 = xf(setclipboard) and setclipboard
                                    local G1 = G0
                                    if not G1 then
                                        local G0_1 = xf(toclipboard) and toclipboard
                                        G1 = G0_1 or nil
                                    end
                                    local G0_2 = G1
                                    if not G0_2 then
                                        Library:Notify("Clipboard is unavailable")
                                        return
                                    end
                                    local G1_1 = pcall(G0_2, lS)
                                    if G1_1 then
                                        Library:Notify(lT)
                                    else
                                        Library:Notify("Failed to copy")
                                    end
                                end
                                onDiscord = function()
                                    KI(xU, "Copied Discord invite to clipboard")
                                end
                                local Window = Library:CreateWindow({
                                    Title = "Ouroboros",
                                    Font = Enum.Font.BuilderSans,
                                    Footer = { { Text = xU, Copyable = true }, "|", x1, "|", xX },
                                    Icon = 78539693571783,
                                    NotifySide = "Right",
                                    ShowCustomCursor = false,
                                    CornerRadius = 0,
                                    SidebarCompacted = true,
                                    TabSwipeFrom = "bottom",
                                    Animations = { TabSwitch = true }
                                })
                                Window:SetGlow(false)
                                KG = {
                                    Info = Window:AddTab("Info", "info"),
                                    Main = Window:AddTab("Main", "gamepad-2"),
                                    Player = Window:AddTab("Player", "person-standing"),
                                    Settings = Window:AddTab("Settings", "settings")
                                }
                                local function KN_1(mb)
                                    local DiscordGroup = mb:AddLeftGroupbox("Discord")
                                    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
                                    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
                                end
                                for k, v in KG do
                                    if k ~= "Info" then
                                        KN_1(v)
                                    end
                                end
                                local function KO()
                                    local m8
                                    local StealGroup = KG.Main:AddRightGroupbox("Steal", "egg")
                                    local Label = StealGroup:AddLabel(xy.GetStatus(), true)
                                    StealGroup:AddDivider()
                                    StealGroup:AddToggle("AutoSteal", {
                                        Text = "Auto Steal Eggs",
                                        Default = false,
                                        Callback = function(ml)
                                            xy.SetAutoSteal(ml)
                                        end
                                    })
                                    StealGroup:AddDropdown("StealZones", {
                                        Text = "Zone Filter",
                                        Values = xy.ZoneValues(),
                                        Default = {},
                                        Multi = true,
                                        AllowNull = true,
                                        Expandable = true,
                                        Callback = function(mn)
                                            xy.SetStealZones(mn)
                                        end
                                    })
                                    StealGroup:AddDropdown("StealRarities", {
                                        Text = "Rarity Filter",
                                        Values = xy.RarityValues(),
                                        Default = {},
                                        Multi = true,
                                        AllowNull = true,
                                        Expandable = true,
                                        Callback = function(mp)
                                            xy.SetStealRarities(mp)
                                        end
                                    })
                                    StealGroup:AddToggle("EggEsp", {
                                        Text = "Egg ESP",
                                        Default = false,
                                        Callback = function(mr)
                                            xy.SetEggEsp(mr)
                                        end
                                    })
                                    StealGroup:AddDropdown("EspRarities", {
                                        Text = "ESP Rarity Filter",
                                        Values = xy.RarityValues(),
                                        Default = {},
                                        Multi = true,
                                        AllowNull = true,
                                        Expandable = true,
                                        Callback = function(mt)
                                            xy.SetEspRarities(mt)
                                        end
                                    })
                                    local FarmGroup = KG.Main:AddLeftGroupbox("Farm", "rabbit")
                                    FarmGroup:AddToggle("AutoPlaceEggs", {
                                        Text = "Auto Place Eggs",
                                        Default = false,
                                        Callback = function(mw)
                                            xy.SetAutoPlace(mw)
                                        end
                                    })
                                    FarmGroup:AddToggle("AutoOpenEggs", {
                                        Text = "Auto Hatch Eggs",
                                        Default = false,
                                        Callback = function(my)
                                            xy.SetAutoOpen(my)
                                        end
                                    })
                                    FarmGroup:AddToggle("AutoEquipBest", {
                                        Text = "Auto Equip Best Pet",
                                        Default = false,
                                        Callback = function(mA)
                                            xy.SetAutoEquipBest(mA)
                                        end
                                    })
                                    FarmGroup:AddToggle("AutoBuyTrails", {
                                        Text = "Auto Buy Trails",
                                        Default = false,
                                        Callback = function(mC)
                                            xy.SetAutoBuyTrails(mC)
                                        end
                                    })
                                    FarmGroup:AddToggle("AutoClaimIndex", {
                                        Text = "Auto Claim Index",
                                        Default = false,
                                        Callback = function(mE)
                                            xy.SetAutoClaimIndex(mE)
                                        end
                                    })
                                    FarmGroup:AddToggle("AutoTrain", {
                                        Text = "Auto Go On Treadmill",
                                        Default = false,
                                        Callback = function(mG)
                                            xy.SetAutoTrain(mG)
                                        end
                                    })
                                    FarmGroup:AddToggle("AutoBonus", {
                                        Text = "Auto 2x Bonus",
                                        Default = false,
                                        Callback = function(mI)
                                            xy.SetAutoBonus(mI)
                                        end
                                    })
                                    local SellGroup = KG.Main:AddLeftGroupbox("Sell", "hand-coins")
                                    SellGroup:AddToggle("AutoSell", {
                                        Text = "Auto Sell",
                                        Default = false,
                                        Callback = function(mL)
                                            xy.SetAutoSell(mL)
                                        end
                                    })
                                    SellGroup:AddDropdown("SellRarities", {
                                        Text = "Sell Rarities",
                                        Values = xy.RarityValues(),
                                        Default = {},
                                        Multi = true,
                                        AllowNull = true,
                                        Expandable = true,
                                        Callback = function(mN)
                                            xy.SetSellRarities(mN)
                                        end
                                    })
                                    local UpgradesGroup = KG.Main:AddRightGroupbox("Upgrades", "arrow-up")
                                    UpgradesGroup:AddToggle("AutoUpgradeTreadmill", {
                                        Text = "Auto Upgrade Treadmill",
                                        Default = false,
                                        Callback = function(mQ)
                                            xy.SetAutoUpgradeTreadmill(mQ)
                                        end
                                    })
                                    UpgradesGroup:AddToggle("AutoUpgradePen", {
                                        Text = "Auto Upgrade Pen",
                                        Default = false,
                                        Callback = function(mS)
                                            xy.SetAutoUpgradePen(mS)
                                        end
                                    })
                                    local TravelGroup = KG.Main:AddRightGroupbox("Travel", "map-pin")
                                    TravelGroup:AddButton({
                                        Text = "Teleport to Pen",
                                        Func = function()
                                            xy.TeleportToPen()
                                        end
                                    })
                                    TravelGroup:AddDropdown("TeleportZone", {
                                        Text = "Zone",
                                        Values = xy.ZoneValues(),
                                        Default = yf[1],
                                        Callback = function(mY)
                                            xy.SetTeleportZone(mY)
                                        end
                                    })
                                    TravelGroup:AddButton({
                                        Text = "Teleport to Zone",
                                        Func = function()
                                            xy.TeleportToZone(Options.TeleportZone.Value)
                                        end
                                    })
                                    m8 = task.spawn(function()
                                        while true do
                                            task.wait(0.5)
                                            if Library.Unloaded then
                                                break
                                            end
                                            pcall(function()
                                                Label:SetText(xy.GetStatus())
                                            end)
                                        end
                                    end)
                                    xy.Track(function()
                                        if coroutine.status(m8) ~= "dead" then
                                            pcall(task.cancel, m8)
                                        end
                                    end)
                                end
                                KO()
                                local function KN_2()
                                    local HC
                                    local HA
                                    local Hw
                                    local Hs
                                    Hs = nil
                                    Hw = nil
                                    HA = nil
                                    HC = nil
                                    local Hr, Ht, Label2, Label3, Hx, Hy, Label, HB, HD
                                    Hs = function(nc)
                                        return (tostring(nc):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
                                    end
                                    HC = function(ne, nf)
                                        return string.format('<font color="%s">%s</font>', nf, Hs(ne))
                                    end
                                    Ht = function(ni, nj, nk)
                                        return string.format("<b>%s</b> %s %s", ni, HC("-", "#5a6070"), HC(nj, nk))
                                    end
                                    Hr = "#7fd47f"
                                    local HE = "#8b93a3"
                                    local HF = "#6ec1ff"
                                    Hy = "#e8a34d"
                                    local HG = xy.Support()
                                    local HH = #HG == 0 and "ready"
                                    local HI = HH or "limited: " .. table.concat(HG, ", ")
                                    HD = "Unknown"
                                    pcall(function()
                                        local Ha_1
                                        local G9_1
                                        if xf(identifyexecutor) then
                                            Ha_1, G9_1 = identifyexecutor()
                                            local Hb = Ha_1 ~= ""
                                            local Hc = type(Ha_1) == "string" and Hb
                                            if Hc then
                                                local Hb_1 = type(G9_1) == "string" and G9_1 ~= "" and Ha_1 .. " " .. G9_1
                                                HD = Hb_1 or Ha_1
                                            end
                                        end
                                    end)
                                    Hw = os.clock()
                                    HB = function()
                                        local Hh = math.floor(os.clock() - Hw)
                                        if Hh < 60 then
                                            return Hh .. "s"
                                        elseif Hh < 3600 then
                                            return string.format("%dm %ds", Hh // 60, Hh % 60)
                                        else
                                            return string.format("%dh %dm", Hh // 3600, Hh % 3600 // 60)
                                        end
                                    end
                                    local UserGroup = KG.Info:AddLeftGroupbox("User", "circle-user")
                                    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
                                    UserGroup:AddLabel(Ht("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Hr), true)
                                    UserGroup:AddLabel(Ht("UserId", tostring(LocalPlayer.UserId), HF), true)
                                    UserGroup:AddLabel(Ht("Executor", HD .. "  " .. HI, Hr), true)
                                    UserGroup:AddDivider()
                                    Label3 = UserGroup:AddLabel(Ht("Session", HB(), Hy), true)
                                    UserGroup:AddDivider()
                                    UserGroup:AddButton({
                                        Text = "Copy Username",
                                        Func = function()
                                            KI(LocalPlayer.Name, "Copied username")
                                        end
                                    })
                                    UserGroup:AddButton({
                                        Text = "Copy Profile Link",
                                        Func = function()
                                            KI("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
                                        end
                                    })
                                    local SessionGroup = KG.Info:AddRightGroupbox("Session", "signal")
                                    SessionGroup:AddLabel(Ht("Game", x1, HF), true)
                                    Label2 = SessionGroup:AddLabel(Ht("Players", "0/0", Hr), true)
                                    Hx = tostring(game.JobId)
                                    local HF_1 = #Hx > 18 and string.sub(Hx, 1, 18) .. "..."
                                    local HH_2 = HF_1 or Hx
                                    SessionGroup:AddLabel(Ht("Job", HH_2, HE), true)
                                    Label = SessionGroup:AddLabel(Ht("Ping", "0 ms", Hy), true)
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
                                            KI(Hx, "Copied Job ID")
                                        end
                                    })
                                    HA = task.spawn(function()
                                        local Hn_1
                                        local Hm_1
                                        while true do
                                            task.wait(1)
                                            if Library.Unloaded then
                                                break
                                            end
                                            Label3:SetText(Ht("Session", HB(), Hy))
                                            Label2:SetText(Ht("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Hr))
                                            Hm_1, Hn_1 = pcall(function()
                                                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                                            end)
                                            local Hm_2 = Hm_1 and Hn_1 .. " ms" or "n/a"
                                            Label:SetText(Ht("Ping", Hm_2, Hy))
                                        end
                                    end)
                                    xy.Track(function()
                                        if coroutine.status(HA) ~= "dead" then
                                            pcall(task.cancel, HA)
                                        end
                                    end)
                                    local SocialsGroup = KG.Info:AddRightGroupbox("Socials", "link")
                                    SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
                                    SocialsGroup:AddButton({
                                        Text = "Rscripts",
                                        Func = function()
                                            KI(xQ, "Copied Rscripts profile")
                                        end
                                    })
                                    SocialsGroup:AddButton({
                                        Text = "Website",
                                        Func = function()
                                            KI(xM, "Copied website link")
                                        end
                                    })
                                end
                                KN_2()
                                local function KN_3()
                                    local oD
                                    local oB
                                    local oC
                                    local oA
                                    local MovementGroup = KG.Player:AddLeftGroupbox("Movement", "footprints")
                                    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
                                    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
                                    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
                                    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
                                    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
                                    local FlyGroup = KG.Player:AddRightGroupbox("Fly", "feather")
                                    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
                                    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
                                    oD = {}
                                    oC = {}
                                    oB = {}
                                    local oz = {}
                                    oA = {}
                                    local function oE()
                                        for k, v in oA do
                                            if k.Parent then
                                                k.CanCollide = v
                                            end
                                        end
                                        table.clear(oA)
                                    end
                                    local function oI()
                                        for k, v in oB do
                                            if k.Parent then
                                                k.WalkSpeed = v
                                            end
                                        end
                                        table.clear(oB)
                                    end
                                    local function oM()
                                        for k, v in oC do
                                            if k.Parent then
                                                k.PlatformStand = v
                                            end
                                        end
                                        table.clear(oC)
                                    end
                                    local function oQ(oR)
                                        if not oR:IsA("ProximityPrompt") then
                                            return
                                        end
                                        if oD[oR] == nil then
                                            oD[oR] = {
                                                HoldDuration = oR.HoldDuration,
                                                MaxActivationDistance = oR.MaxActivationDistance,
                                                RequiresLineOfSight = oR.RequiresLineOfSight
                                            }
                                        end
                                        oR.HoldDuration = 0
                                        oR.MaxActivationDistance = 50
                                        oR.RequiresLineOfSight = false
                                    end
                                    local function oT()
                                        for k, v in oD do
                                            if k.Parent then
                                                k.HoldDuration = v.HoldDuration
                                                k.MaxActivationDistance = v.MaxActivationDistance
                                                k.RequiresLineOfSight = v.RequiresLineOfSight
                                            end
                                        end
                                        table.clear(oD)
                                    end
                                    Toggles.Fly:OnChanged(function()
                                        if not Toggles.Fly.Value then
                                            oM()
                                        end
                                    end)
                                    Toggles.WalkSpeedEnabled:OnChanged(function()
                                        if not Toggles.WalkSpeedEnabled.Value then
                                            oI()
                                        end
                                    end)
                                    Toggles.NoClip:OnChanged(function()
                                        if not Toggles.NoClip.Value then
                                            oE()
                                        end
                                    end)
                                    Toggles.InstantProximityPrompt:OnChanged(function()
                                        if Toggles.InstantProximityPrompt.Value then
                                            for k, v in ya:QueryDescendants("ProximityPrompt") do
                                                pcall(oQ, v)
                                            end
                                        else
                                            oT()
                                        end
                                    end)
                                    table.insert(oz, ya.DescendantAdded:Connect(function(pb)
                                        if Toggles.InstantProximityPrompt.Value then
                                            oQ(pb)
                                        end
                                    end))
                                    table.insert(oz, RunService.Stepped:Connect(function()
                                        if Library.Unloaded then
                                            return
                                        end
                                        local Character = LocalPlayer.Character
                                        if Toggles.NoClip.Value and Character then
                                            for k, v in Character:QueryDescendants("BasePart") do
                                                if oA[v] == nil then
                                                    oA[v] = v.CanCollide
                                                end
                                                v.CanCollide = false
                                            end
                                        end
                                    end))
                                    table.insert(oz, UserInputService.JumpRequest:Connect(function()
                                        if Library.Unloaded then
                                            return
                                        end
                                        local Character = LocalPlayer.Character
                                        local Ix = Character and Character:FindFirstChildOfClass("Humanoid")
                                        if Toggles.InfJump.Value and Ix then
                                            Ix:ChangeState(Enum.HumanoidStateType.Jumping)
                                        end
                                    end))
                                    table.insert(oz, RunService.RenderStepped:Connect(function(px)
                                        if Library.Unloaded then
                                            return
                                        end
                                        local Character = LocalPlayer.Character
                                        local ID = Character and Character:FindFirstChildOfClass("Humanoid")
                                        local IE = Character
                                        if IE then
                                            IE = Character:FindFirstChild("HumanoidRootPart")
                                        end
                                        local IC_1 = IE
                                        local CurrentCamera = ya.CurrentCamera
                                        if Toggles.WalkSpeedEnabled.Value and ID then
                                            if oB[ID] == nil then
                                                oB[ID] = ID.WalkSpeed
                                            end
                                            ID.WalkSpeed = Options.WalkSpeed.Value
                                        end
                                        if Toggles.Fly.Value and IC_1 and ID and CurrentCamera then
                                            if oC[ID] == nil then
                                                oC[ID] = ID.PlatformStand
                                            end
                                            ID.PlatformStand = true
                                            local IE_4 = Vector3.zero
                                            if not UserInputService:GetFocusedTextBox() then
                                                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                                    IE_4 += CurrentCamera.CFrame.LookVector
                                                end
                                                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                                    IE_4 -= CurrentCamera.CFrame.LookVector
                                                end
                                                local IN = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
                                                if IN == 1 then
                                                    IE_4 -= CurrentCamera.CFrame.RightVector
                                                end
                                                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                                                    IE_4 += CurrentCamera.CFrame.RightVector
                                                end
                                                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                                                    IE_4 += Vector3.new(0, 1, 0)
                                                end
                                                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                                                    IE_4 -= Vector3.new(0, 1, 0)
                                                end
                                            end
                                            IC_1.AssemblyLinearVelocity = Vector3.zero
                                            if IE_4.Magnitude > 0 then
                                                IC_1.CFrame = IC_1.CFrame + IE_4.Unit * Options.FlySpeed.Value * px
                                            end
                                        end
                                    end))
                                    xy.Track(function()
                                        for k, v in oz do
                                            v:Disconnect()
                                        end
                                        oE()
                                        oI()
                                        oM()
                                        oT()
                                    end)
                                end
                                KN_3()
                                local function KN_4()
                                    local pP = {}
                                    local pO = {}
                                    local pQ
                                    local pS = 0
                                    local pT = 0
                                    local pR = false
                                    local pU = os.clock()
                                    local MenuGroup = KG.Settings:AddLeftGroupbox("Menu", "logs")
                                    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                                    local Label = MenuGroup:AddLabel("AFK triggers: 0")
                                    local function pY()
                                        local CurrentCamera
                                        CurrentCamera = ya.CurrentCamera
                                        local IW = not CurrentCamera or not xf(VirtualUser.CaptureController) or not xf(VirtualUser.ClickButton2)
                                        if IW then
                                            return false
                                        end
                                        local IW_1 = pcall(function()
                                            VirtualUser:CaptureController()
                                            VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
                                        end)
                                        if not IW_1 then
                                            return false
                                        end
                                        pT += 1
                                        pU = os.clock()
                                        pcall(function()
                                            Label:SetText("AFK triggers: " .. pT)
                                        end)
                                        return true
                                    end
                                    local function qf(qg)
                                        pcall(function()
                                            GuiService:SetGameplayPausedNotificationEnabled(not qg)
                                        end)
                                        pcall(function()
                                            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                                            if RobloxNetworkPauseNotificati then
                                                RobloxNetworkPauseNotificati.Enabled = not qg
                                            end
                                        end)
                                        if not qg then
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
                                    local function qv(qw)
                                        if qw.ClassName == "ParticleEmitter" or qw.ClassName == "Trail" or qw.ClassName == "Smoke" or qw.ClassName == "Fire" or qw.ClassName == "Sparkles" or qw.ClassName == "Explosion" or qw.ClassName == "Beam" then
                                            if pP[qw] == nil then
                                                pP[qw] = qw.Enabled
                                            end
                                            pcall(function()
                                                qw.Enabled = false
                                            end)
                                        end
                                    end
                                    local function qA()
                                        for k, v in pP do
                                            local Jd = k
                                            local Jf = v
                                            if Jd.Parent then
                                                pcall(function()
                                                    Jd.Enabled = Jf
                                                end)
                                            end
                                        end
                                        table.clear(pP)
                                        if pQ then
                                            pcall(function()
                                                settings().Rendering.QualityLevel = pQ.Quality
                                            end)
                                            Lighting.GlobalShadows = pQ.Shadows
                                            Lighting.FogEnd = pQ.Fog
                                            pQ = nil
                                        end
                                    end
                                    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
                                    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
                                    MenuGroup:AddToggle("Disable3D", {
                                        Text = "Disable 3D Rendering",
                                        Default = false,
                                        Callback = function(qL)
                                            pcall(function()
                                                RunService:Set3dRenderingEnabled(not qL)
                                            end)
                                        end
                                    })
                                    MenuGroup:AddToggle("FpsBoost", {
                                        Text = "FPS Boost",
                                        Default = false,
                                        Callback = function(qQ)
                                            if qQ then
                                                if not pQ then
                                                    pQ = {
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
                                                for k, v in ya:QueryDescendants("ParticleEmitter, Trail, Smoke, Fire, Sparkles, Beam") do
                                                    qv(v)
                                                end
                                            else
                                                qA()
                                            end
                                        end
                                    })
                                    MenuGroup:AddToggle("HideUIOnStart", { Text = "Hide UI On Start", Default = false })
                                    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                                    Library.ToggleKeybind = Options.MenuKeybind
                                    table.insert(pO, LocalPlayer.Idled:Connect(function()
                                        if Toggles.AntiAfk.Value then
                                            pY()
                                        end
                                    end))
                                    local q8 = task.spawn(function()
                                        while true do
                                            task.wait(1)
                                            if Library.Unloaded then
                                                break
                                            end
                                            local Jo = Toggles.AntiAfk.Value and os.clock() - pU >= 60
                                            if Jo then
                                                pY()
                                            end
                                            if Toggles.AntiGameplayPause.Value then
                                                qf(true)
                                            end
                                        end
                                    end)
                                    Toggles.AntiGameplayPause:OnChanged(function(q9)
                                        qf(q9)
                                    end)
                                    qf(true)
                                    local function rb()
                                        local JA
                                        if pR or not Toggles.AutoReconnect.Value then
                                            return
                                        end
                                        pR = true
                                        pS += 1
                                        JA = pS
                                        task.spawn(function()
                                            for i = 1, 2 do
                                                local Jz = i
                                                if Library.Unloaded or not Toggles.AutoReconnect.Value or JA ~= pS then
                                                    break
                                                end
                                                local wait = task.wait
                                                local Ju_1 = Jz == 1 and 1 or 3
                                                wait(Ju_1)
                                                if JA ~= pS then
                                                    break
                                                end
                                                pcall(function()
                                                    if Jz == 1 and game.JobId ~= "" then
                                                        TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                                                    else
                                                        TeleportService:Teleport(game.PlaceId, LocalPlayer)
                                                    end
                                                end)
                                            end
                                            pR = false
                                        end)
                                    end
                                    table.insert(pO, GuiService.ErrorMessageChanged:Connect(function()
                                        if Toggles.AutoReconnect.Value then
                                            rb()
                                        end
                                    end))
                                    pcall(function()
                                        table.insert(pO, TeleportService.TeleportInitFailed:Connect(function(rC)
                                            if rC == LocalPlayer and Toggles.AutoReconnect.Value then
                                                rb()
                                            end
                                        end))
                                    end)
                                    local ScriptGroup = KG.Settings:AddLeftGroupbox("Script", "scroll-text")
                                    ScriptGroup:AddButton({
                                        Text = "Unload Script",
                                        Func = function()
                                            Library:Unload()
                                        end
                                    })
                                    xy.Track(function()
                                        for k, v in pO do
                                            v:Disconnect()
                                        end
                                        if coroutine.status(q8) ~= "dead" then
                                            pcall(task.cancel, q8)
                                        end
                                        qA()
                                        pcall(function()
                                            RunService:Set3dRenderingEnabled(true)
                                        end)
                                    end)
                                end
                                KN_4()
                                local function KN_5()
                                    local Kw, Kx, Ky, Kz
                                    ThemeManager:SetLibrary(Library)
                                    ThemeManager:SetFolder("MyScriptHub")
                                    ThemeManager:SaveDefault("Evil Hello Kitty")
                                    ThemeManager:ApplyToTab(KG.Settings)
                                    SaveManager:SetLibrary(Library)
                                    SaveManager:IgnoreThemeSettings()
                                    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
                                    SaveManager:SetFolder("OuroborosHub/SurfForAnimals")
                                    local KA = SaveManager:BuildConfigSection(KG.Settings)
                                    Ky = function(r0, r1)
                                        local JO_1 = (r0 == "Toggle" and Toggles or Options)[r1]
                                        local JN_2 = type(JO_1) == "table" and JO_1.Type == r0
                                        return JN_2 and JO_1 or nil
                                    end
                                    Kx = function(sa, sb)
                                        local Type = sb.Type
                                        if Type == "Toggle" then
                                            return { idx = sa, type = "Toggle", value = sb.Value == true }
                                        elseif Type == "Slider" then
                                            return { idx = sa, type = "Slider", value = tostring(sb.Value) }
                                        elseif Type == "Dropdown" then
                                            return { idx = sa, type = "Dropdown", multi = sb.Multi == true, value = sb.Value }
                                        elseif Type == "Input" then
                                            local JS = sb.Value or ""
                                            return { idx = sa, type = "Input", text = tostring(JS) }
                                        elseif Type == "ColorPicker" then
                                            return { idx = sa, type = "ColorPicker", value = sb.Value:ToHex(), transparency = sb.Transparency }
                                        elseif Type == "KeyPicker" then
                                            return {
                                                idx = sa,
                                                type = "KeyPicker",
                                                mode = sb.Mode,
                                                key = sb.Value,
                                                modifiers = sb.Modifiers,
                                                toggled = sb.Toggled
                                            }
                                        else
                                            return nil
                                        end
                                    end
                                    Kz = function()
                                        local JV = {}
                                        for i, v in ipairs({ Toggles, Options }) do
                                            for k, v in pairs(v) do
                                                local JW = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                                                if JW then
                                                    local JW_1 = Kx(k, v)
                                                    if JW_1 then
                                                        JV[#JV + 1] = JW_1
                                                    end
                                                end
                                            end
                                        end
                                        table.sort(JV, function(sl, sm)
                                            if sl.type ~= sm.type then
                                                return sl.type < sm.type
                                            end
                                            return sl.idx < sm.idx
                                        end)
                                        return { objects = JV }
                                    end
                                    Kw = function(so)
                                        local Kb
                                        Kb = nil
                                        local Kc = type(so) ~= "table" or type(so.idx) ~= "string"
                                        local Kg = if Kc then 1 else 0
                                        local Ke = 2002 * Kg + 71 * (1 - Kg)
                                        local Kf = 3841 * Kg + 495 * (1 - Kg)
                                        if not ((Ke * 1010 + Kf * 1886 + Ke * Kf) % 16777213 == 178615) then
                                            Kc = type(so.type) ~= "string"
                                        end
                                        if not Kc then
                                            Kc = SaveManager.Ignore[so.idx]
                                        end
                                        if Kc then
                                            return false
                                        end
                                        Kb = Ky(so.type, so.idx)
                                        if not Kb then
                                            return false
                                        end
                                        local Kc_1 = pcall(function()
                                            if so.type == "Input" then
                                                if type(so.text) ~= "string" then
                                                    return
                                                end
                                                Kb:SetValue(so.text)
                                            elseif so.type == "ColorPicker" then
                                                Kb:SetValueRGB(Color3.fromHex(so.value), so.transparency)
                                            elseif so.type == "KeyPicker" then
                                                Kb:SetValue({ so.key, so.mode, so.modifiers })
                                                if so.mode == "Toggle" and so.toggled ~= nil then
                                                    Kb.Toggled = so.toggled
                                                    Kb:Update()
                                                end
                                            else
                                                Kb:SetValue(so.value)
                                            end
                                        end)
                                        return Kc_1
                                    end
                                    KA:AddDivider()
                                    KA:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
                                    KA:AddButton("Export Config to Clipboard", function()
                                        local Ki_1
                                        local Kh_1
                                        Kh_1, Ki_1 = pcall(HttpService.JSONEncode, HttpService, Kz())
                                        if Kh_1 then
                                            local Kh_2 = xf(setclipboard) and setclipboard
                                            local Kj = Kh_2
                                            if not Kj then
                                                local Kh_3 = xf(toclipboard) and toclipboard
                                                Kj = Kh_3 or nil
                                            end
                                            local Kh_4 = Kj
                                            local Kj_1 = type(Kh_4) == "function" and pcall(Kh_4, Ki_1)
                                            if Kj_1 then
                                                Library:Notify("Config copied to clipboard", 6)
                                                return
                                            end
                                            Library:Notify("Your executor does not support copying to the clipboard")
                                            return
                                        end
                                        Library:Notify("Failed to encode the config")
                                    end)
                                    KA:AddButton("Import Config from Clipboard Text", function()
                                        local Ko_1
                                        local Km = Options.SaveManager_ImportSource.Value or ""
                                        local Km_1
                                        local Kn = tostring(Km):match("^%s*(.-)%s*$")
                                        if Kn == "" then
                                            Library:Notify("Paste a config first")
                                            return
                                        end
                                        if #Kn > 262144 then
                                            Library:Notify("Config is too large")
                                            return
                                        end
                                        Km_1, Ko_1 = pcall(HttpService.JSONDecode, HttpService, Kn)
                                        local Kn_1 = not Km_1 or type(Ko_1) ~= "table" or type(Ko_1.objects) ~= "table"
                                        if Kn_1 then
                                            Library:Notify("Invalid config payload")
                                            return
                                        end
                                        if #Ko_1.objects > 2048 then
                                            Library:Notify("Config has too many records")
                                            return
                                        end
                                        local Km_2 = 0
                                        local Kn_2 = 0
                                        for i, v in ipairs(Ko_1.objects) do
                                            if Kw(v) then
                                                Kn_2 += 1
                                            else
                                                Km_2 += 1
                                            end
                                        end
                                        Options.SaveManager_ImportSource:SetValue("")
                                        Library:Notify(string.format("Imported %d settings (%d skipped)", Kn_2, Km_2), 6)
                                    end)
                                    SaveManager:LoadAutoloadConfig()
                                    if Toggles.HideUIOnStart and Toggles.HideUIOnStart.Value then
                                        pcall(function()
                                            Library:Toggle(false)
                                        end)
                                    end
                                end
                                KN_5()
                                if Toggles.AutoSteal then
                                    xy.SetAutoSteal(Toggles.AutoSteal.Value)
                                end
                                if Toggles.AutoPlaceEggs then
                                    xy.SetAutoPlace(Toggles.AutoPlaceEggs.Value)
                                end
                                if Toggles.AutoOpenEggs then
                                    xy.SetAutoOpen(Toggles.AutoOpenEggs.Value)
                                end
                                if Toggles.AutoEquipBest then
                                    xy.SetAutoEquipBest(Toggles.AutoEquipBest.Value)
                                end
                                if Toggles.AutoBuyTrails then
                                    xy.SetAutoBuyTrails(Toggles.AutoBuyTrails.Value)
                                end
                                if Toggles.AutoClaimIndex then
                                    xy.SetAutoClaimIndex(Toggles.AutoClaimIndex.Value)
                                end
                                if Toggles.AutoTrain then
                                    xy.SetAutoTrain(Toggles.AutoTrain.Value)
                                end
                                if Toggles.AutoBonus then
                                    xy.SetAutoBonus(Toggles.AutoBonus.Value)
                                end
                                if Toggles.AutoSell then
                                    xy.SetAutoSell(Toggles.AutoSell.Value)
                                end
                                if Toggles.AutoUpgradeTreadmill then
                                    xy.SetAutoUpgradeTreadmill(Toggles.AutoUpgradeTreadmill.Value)
                                end
                                if Toggles.AutoUpgradePen then
                                    xy.SetAutoUpgradePen(Toggles.AutoUpgradePen.Value)
                                end
                                if Toggles.EggEsp then
                                    xy.SetEggEsp(Toggles.EggEsp.Value)
                                end
                                if Options.StealZones then
                                    xy.SetStealZones(Options.StealZones.Value)
                                end
                                if Options.StealRarities then
                                    xy.SetStealRarities(Options.StealRarities.Value)
                                end
                                if Options.EspRarities then
                                    xy.SetEspRarities(Options.EspRarities.Value)
                                end
                                if Options.SellRarities then
                                    xy.SetSellRarities(Options.SellRarities.Value)
                                end
                                if Options.TeleportZone then
                                    xy.SetTeleportZone(Options.TeleportZone.Value)
                                end
                            end
                        end
                        K3_16 = (K3_16 + 71) % 168
                    else
                        local Nk = bit32.rrotate(bit32.bxor(bit32.lrotate(K3_16, 10), string.byte(tostring(yJ))), 7)
                        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Nk, 3110721475), 2777044994), (bit32.bxor(bit32.band(Nk, 1184245820), 41578635))), 2777044994), 41578635) ~= Nk then
                            K3_17, K3_7 = pcall(K3_28)
                        else
                            K3_28, K3_17 = pcall(K3_7)
                        end
                        K3_16 = (K3_16 + 50) % 168
                    end
                else
                    if K3_16 * 53155195 + 11 + 4 >= K3_16 * 53155195 + 11 + 4 + 6 then
                        xy = xo.State
                        xy.AutoSteal = false
                        xy.AutoPlace = false
                        xy.AutoOpen = false
                        xy.AutoEquipBest = false
                        xy.AutoBuyTrails = false
                        xy.AutoClaimIndex = false
                        xy.AutoSell = false
                        xy.AutoUpgradeTreadmill = false
                        xy.AutoUpgradePen = false
                        xy.AutoTrain = false
                        xy.AutoBonus = false
                        xy.EggEsp = false
                        xy.StealZones = {}
                        xy.StealRarities = {}
                        xy.EspRarities = {}
                        xy.SellRarities = {}
                        xy.StealZoneCount = 0
                        xy.StealRarityCount = 0
                        xy.EspRarityCount = 0
                        xy.SellRarityCount = 0
                        xy.Priority = "Nearest"
                        xy.TeleportZone = State[1]
                        xy.Status = "Idle"
                        xy.Stolen = 0
                        xy.Placed = 0
                        xy.Opened = 0
                        xy.Sold = 0
                        yf = {}
                    else
                        State = xy.State
                        State.AutoSteal = false
                        State.AutoPlace = false
                        State.AutoOpen = false
                        State.AutoEquipBest = false
                        State.AutoBuyTrails = false
                        State.AutoClaimIndex = false
                        State.AutoSell = false
                        State.AutoUpgradeTreadmill = false
                        State.AutoUpgradePen = false
                        State.AutoTrain = false
                        State.AutoBonus = false
                        State.EggEsp = false
                        State.StealZones = {}
                        State.StealRarities = {}
                        State.EspRarities = {}
                        State.SellRarities = {}
                        State.StealZoneCount = 0
                        State.StealRarityCount = 0
                        State.EspRarityCount = 0
                        State.SellRarityCount = 0
                        State.Priority = "Nearest"
                        State.TeleportZone = yf[1]
                        State.Status = "Idle"
                        State.Stolen = 0
                        State.Placed = 0
                        State.Opened = 0
                        State.Sold = 0
                        xo = {}
                    end
                    K3_16 = (K3_16 + 8) % 168
                end
            elseif K3_25 <= 5 then
                if K3_25 <= 4 then
                    if K3_16 * 72698919 + 1 + 5 >= K3_16 * 72698919 + 1 + 5 + 2 then
                        xc = setmetatable({}, { __mode = "k" })
                        xk = {}
                        xh = nil
                    else
                        xk = setmetatable({}, { __mode = "k" })
                        xh = {}
                        xc = nil
                    end
                    K3_16 = (K3_16 + 50) % 168
                else
                    local ND = bit32.rrotate(bit32.bxor(bit32.lrotate(K3_16, 2), string.byte(tostring(xA))), 19)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(ND, 2343131165), 10), 2774562350) == bit32.lrotate(ND, 10) then
                        yS = 0
                        yN = fns.fn49
                        xy.GetStatus = fn1150
                        xy.RarityValues = fn277
                        xy.ZoneValues = fn972
                        xy.Support = fn606
                        xV = fn301
                    else
                        yN = 0
                        yS = fns.fn49
                        xV.GetStatus = fn1150
                        xV.RarityValues = fn277
                        xV.ZoneValues = fn972
                        xV.Support = fn606
                        xy = fn301
                    end
                    K3_16 = (K3_16 + 29) % 168
                end
            else
                local Mi = bit32.rrotate(bit32.bxor(bit32.lrotate(K3_16, 16), string.byte(tostring(xq))), 18)
                if bit32.bxor(bit32.lrotate(bit32.bxor(Mi, 4145715420), 28), 3480332685) ~= bit32.lrotate(Mi, 28) then
                    x9 = fn829
                    xx = function(ce, ...)
                        local Ap
                        Ap = nil
                        local Aq = not xK or type(xK.GetEvent) ~= "function"
                        local Aq_3, Aq_4
                        if Aq then
                            return false, "Net unavailable"
                        end
                        Aq_3, Ap = pcall(xK.GetEvent, xK, ce)
                        local Ar = not Aq_3 or typeof(Ap) ~= "Instance"
                        local Ar_2
                        if Ar then
                            return false, "Event unavailable"
                        end
                        Aq_4, Ar_2 = pcall(function(...)
                            Ap:FireServer(...)
                        end, ...)
                        if not Aq_4 then
                            return false, tostring(Ar_2)
                        end
                        return true
                    end
                    yU = fn337
                else
                    xx = fn829
                    yU = function(ce, ...)
                        local Ap
                        Ap = nil
                        local Aq = not xK or type(xK.GetEvent) ~= "function"
                        local Aq_1, Aq_2
                        if Aq then
                            return false, "Net unavailable"
                        end
                        Aq_1, Ap = pcall(xK.GetEvent, xK, ce)
                        local Ar = not Aq_1 or typeof(Ap) ~= "Instance"
                        local Ar_1
                        if Ar then
                            return false, "Event unavailable"
                        end
                        Aq_2, Ar_1 = pcall(function(...)
                            Ap:FireServer(...)
                        end, ...)
                        if not Aq_2 then
                            return false, tostring(Ar_1)
                        end
                        return true
                    end
                    x9 = fn337
                end
                K3_16 = (K3_16 + 8) % 168
            end
        elseif K3_25 <= 9 then
            if K3_25 <= 8 then
                if K3_25 <= 7 then
                    if (K3_16 * 2 + 4) * 13 % 3 == ((K3_16 * 2 + 4) * 13 + 4) % 3 then
                        x_ = fn1010
                        xS = function(cx, cy, cz)
                            xS(cx)
                            local cB = {}
                            xo[cx] = cB
                            task.spawn(function()
                                local AA_2
                                while true do
                                    local Az = yR() and xo[cx] == cB
                                    local Az_2
                                    if Az then
                                        Az_2, AA_2 = pcall(cz)
                                        if not Az_2 then
                                            yN(tostring(AA_2))
                                        end
                                        task.wait(cy)
                                        continue
                                    end
                                    break
                                end
                            end)
                        end
                        xC = function(cQ)
                            yS += 1
                            local cS = yS
                            return cQ(function()
                                local AC = cS == yS
                                local AD = yR() and AC
                                return AD
                            end)
                        end
                    else
                        xS = fn1010
                        xC = function(cx, cy, cz)
                            xS(cx)
                            local cB = {}
                            xo[cx] = cB
                            task.spawn(function()
                                local AA_1
                                while true do
                                    local Az = yR() and xo[cx] == cB
                                    local Az_1
                                    if Az then
                                        Az_1, AA_1 = pcall(cz)
                                        if not Az_1 then
                                            yN(tostring(AA_1))
                                        end
                                        task.wait(cy)
                                        continue
                                    end
                                    break
                                end
                            end)
                        end
                        x_ = function(cQ)
                            yS += 1
                            local cS = yS
                            return cQ(function()
                                local AC = cS == yS
                                local AD = yR() and AC
                                return AD
                            end)
                        end
                    end
                    K3_16 = (K3_16 + 134) % 168
                else
                    K3_8 = {
                        "vois",
                        "gukeynuwv",
                        "phearrtdjpr",
                        "cyj",
                        "mwfegqckdx",
                        "psf",
                        "wdswacxvlr",
                        "kmstgi",
                        "mxbzjtpyvgb",
                        "usdyxou",
                        "iaxvbqish",
                        "bkrylvj"
                    }
                    local MA = K3_16
                    K3_29 = K3_8[MA % 12 + 1]
                    if K3_29:len() <= K3_29:gsub("(.)", "%1%1", MA % 3 % 2 + 1):len() then
                        xr = function(cY)
                            local AF
                            AF = nil
                            local AG_4
                            AG_4, AF = x9()
                            local AG_5 = not AF or typeof(cY) ~= "Vector3"
                            if AG_5 then
                                return false
                            end
                            local AG_6 = pcall(function()
                                AF.AssemblyLinearVelocity = Vector3.zero
                                AF.AssemblyAngularVelocity = Vector3.zero
                                AF.CFrame = CFrame.new(cY + Vector3.new(0, 4, 0))
                            end)
                            return AG_6
                        end
                        yx = fn568
                    else
                        yx = function(cY)
                            local AF
                            AF = nil
                            local AG_1
                            AG_1, AF = x9()
                            local AG_2 = not AF or typeof(cY) ~= "Vector3"
                            if AG_2 then
                                return false
                            end
                            local AG_3 = pcall(function()
                                AF.AssemblyLinearVelocity = Vector3.zero
                                AF.AssemblyAngularVelocity = Vector3.zero
                                AF.CFrame = CFrame.new(cY + Vector3.new(0, 4, 0))
                            end)
                            return AG_3
                        end
                        xr = fn568
                    end
                    K3_16 = (K3_16 + 134) % 168
                end
            else
                K3_8 = (vector.create((K3_16 * 5 + 6) % 11 + 1, (K3_16 * 8 + 12) % 13 + 1, (K3_16 * 5 + 1) % 17 + 1))
                K3_29 = (vector.create((K3_16 * 5 + 8) % 11 + 1, (K3_16 * 8 + 12) % 13 + 1, (K3_16 * 7 + 4) % 17 + 1))
                K3_18 = (vector.create((K3_16 * 2 + 1) % 11 + 1, (K3_16 * 4 + 5) % 13 + 1, (K3_16 * 4 + 8) % 17 + 1))
                if vector.dot(vector.cross(K3_8, K3_29), K3_18) == vector.dot(vector.cross(K3_29, K3_18), K3_8) then
                    x3 = fn820
                    xF = fn347
                    xt = fn785
                    xg = fns.fn5
                else
                    xg = fn820
                    xt = fn347
                    x3 = fn785
                    xF = fns.fn5
                end
                K3_16 = (K3_16 + 71) % 168
            end
        elseif K3_25 <= 10 then
            K3_8 = (vector.create((K3_16 * 4 + 6) % 11 + 1, (K3_16 * 11 + 10) % 13 + 1, (K3_16 * 14 + 12) % 17 + 1))
            K3_29 = (vector.create((K3_16 * 6 + 3) % 11 + 1, (K3_16 * 10 + 6) % 13 + 1, (K3_16 * 1 + 10) % 17 + 1))
            K3_18 = (vector.create((K3_16 * 6 + 8) % 11 + 1, (K3_16 * 5 + 7) % 13 + 1, (K3_16 * 6 + 5) % 17 + 1))
            K3_9 = (vector.create((K3_16 * 3 + 3) % 5 + 1, (K3_16 * 5 + 7) % 7 + 1, (K3_16 * 5 + 2) % 9 + 1))
            if vector.dot(vector.cross(K3_8, (vector.cross(K3_29, K3_18))), K3_9) == vector.dot(K3_29 * vector.dot(K3_8, K3_18) - K3_18 * vector.dot(K3_8, K3_29), K3_9) then
                yD = fn430
                x0 = fn676
                xz = fn731
            else
                xz = fn430
                yD = fn676
                x0 = fn731
            end
            K3_16 = (K3_16 + 8) % 168
        else
            local Ng = bit32.rrotate(bit32.bxor(bit32.lrotate(K3_16, 27), string.byte(tostring(xC))), 11)
            if bit32.bxor(bit32.lrotate(bit32.bxor(Ng, 372182479), 24), 3474337549) == bit32.lrotate(Ng, 24) then
                yL = fn548
            else
                xI = fn548
            end
            K3_16 = (K3_16 + 134) % 168
        end
    elseif K3_25 <= 16 then
        if K3_25 <= 14 then
            if K3_25 <= 13 then
                if K3_25 <= 12 then
                    if K3_16 * 132081827 + 11 + 3 <= K3_16 * 132081827 + 11 + 3 + 1 then
                        yn = fns.fn7
                        x4 = fn747
                        xL = fn1053
                        yH = function(ei)
                            local BW = not ei or not ei.Parent
                            local BW_12
                            if BW then
                                return false
                            elseif xf(fireproximityprompt) then
                                local BW_7 = pcall(fireproximityprompt, ei)
                                if BW_7 then
                                    return true
                                end
                                local BW_8 = pcall(fireproximityprompt, ei, 1)
                                if BW_8 then
                                    return true
                                end
                                local BW_9 = tonumber(ei.HoldDuration) or 0
                                pcall(function()
                                    ei:InputHoldBegin()
                                end)
                                if not BW_12 then
                                    return false
                                end
                                task.wait(BW_9 + 0.2)
                                pcall(function()
                                    ei:InputHoldEnd()
                                end)
                                return true
                            else
                                local BW_11 = tonumber(ei.HoldDuration) or 0
                                BW_12 = pcall(function()
                                    ei:InputHoldBegin()
                                end)
                                if not BW_12 then
                                    return false
                                end
                                task.wait(BW_11 + 0.2)
                                pcall(function()
                                    ei:InputHoldEnd()
                                end)
                                return true
                            end
                        end
                    else
                        xL = fns.fn7
                        yH = fn747
                        yn = fn1053
                        x4 = function(ei)
                            local BW = not ei or not ei.Parent
                            local BW_6
                            if BW then
                                return false
                            elseif xf(fireproximityprompt) then
                                local BW_1 = pcall(fireproximityprompt, ei)
                                if BW_1 then
                                    return true
                                end
                                local BW_2 = pcall(fireproximityprompt, ei, 1)
                                if BW_2 then
                                    return true
                                end
                                local BW_3 = tonumber(ei.HoldDuration) or 0
                                pcall(function()
                                    ei:InputHoldBegin()
                                end)
                                if not BW_6 then
                                    return false
                                end
                                task.wait(BW_3 + 0.2)
                                pcall(function()
                                    ei:InputHoldEnd()
                                end)
                                return true
                            else
                                local BW_5 = tonumber(ei.HoldDuration) or 0
                                BW_6 = pcall(function()
                                    ei:InputHoldBegin()
                                end)
                                if not BW_6 then
                                    return false
                                end
                                task.wait(BW_5 + 0.2)
                                pcall(function()
                                    ei:InputHoldEnd()
                                end)
                                return true
                            end
                        end
                    end
                    K3_16 = (K3_16 + 50) % 168
                else
                    if (((not xx or xx) and (not xx or K3_28) or (yH or not xP or not xP and xx)) and (yH or xP or (xx or not xx) or (not xP or yH or (xx or K3_28))) or (not xx and not yH and (yH and K3_28) or (xP or not xx or (yH or xx))) and (K3_28 and xP and (not K3_28 and yH) and ((yH or xP) and (xx or K3_28)))) and not (((not xx or xx) and (not xx or K3_28) or (yH or not xP or not xP and xx)) and (yH or xP or (xx or not xx) or (not xP or yH or (xx or K3_28))) or (not xx and not yH and (yH and K3_28) or (xP or not xx or (yH or xx))) and (K3_28 and xP and (not K3_28 and yH) and ((yH or xP) and (xx or K3_28)))) then
                        xI = fn886
                        x5 = fn561
                    else
                        x5 = fn886
                        xI = fn561
                    end
                    K3_16 = (K3_16 + 71) % 168
                end
            else
                local Mf = bit32.rrotate(bit32.bxor(bit32.lrotate(K3_16, 10), string.byte(tostring(ym))), 8)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Mf, 857698101), 301270360), (bit32.bxor(bit32.band(Mf, 3437269194), 4000342553))), 301270360), 4000342553) ~= Mf then
                    yQ = function(eB)
                        local B8_2
                        local B6_2
                        local B5_2
                        local B4 = xF()
                        local B4_9
                        if not B4 then
                            return nil
                        end
                        B6_2, B5_2 = nil, nil
                        for i, child in ipairs(B4:GetChildren()) do
                            local Cf = child
                            local B4_7 = Cf:IsA("Model") and Cf.Parent and not yn(Cf) and xz(Cf)
                            if B4_7 then
                                local B4_8 = xL(Cf)
                                local B7 = B4_8 and B4_8.Enabled ~= false
                                local B7_2
                                if B7 then
                                    B4_9, B7_2 = pcall(function()
                                        return Cf:GetPivot().Position
                                    end)
                                    if B4_9 then
                                        if State.Priority == "Rarest" then
                                            local B4_10 = ys[Cf:GetAttribute("Rarity")] or 0
                                            B8_2 = -B4_10
                                        elseif State.Priority == "Biggest" then
                                            local B4_11 = tonumber(Cf:GetAttribute("Size")) or 0
                                            B8_2 = -B4_11
                                        else
                                            B8_2 = (B7_2 - eB).Magnitude
                                        end
                                        if B5_2 == nil or B8_2 < B5_2 then
                                            B6_2, B5_2 = Cf, B8_2
                                        end
                                    end
                                end
                            end
                        end
                        return B6_2
                    end
                    xq = fn1198
                    xJ = fn259
                else
                    xq = function(eB)
                        local B8_1
                        local B6_1
                        local B5_1
                        local B4 = xF()
                        local B4_3
                        if not B4 then
                            return nil
                        end
                        B6_1, B5_1 = nil, nil
                        for i, child in ipairs(B4:GetChildren()) do
                            local Cf = child
                            local B4_1 = Cf:IsA("Model") and Cf.Parent and not yn(Cf) and xz(Cf)
                            if B4_1 then
                                local B4_2 = xL(Cf)
                                local B7 = B4_2 and B4_2.Enabled ~= false
                                local B7_1
                                if B7 then
                                    B4_3, B7_1 = pcall(function()
                                        return Cf:GetPivot().Position
                                    end)
                                    if B4_3 then
                                        if State.Priority == "Rarest" then
                                            local B4_4 = ys[Cf:GetAttribute("Rarity")] or 0
                                            B8_1 = -B4_4
                                        elseif State.Priority == "Biggest" then
                                            local B4_5 = tonumber(Cf:GetAttribute("Size")) or 0
                                            B8_1 = -B4_5
                                        else
                                            B8_1 = (B7_1 - eB).Magnitude
                                        end
                                        if B5_1 == nil or B8_1 < B5_1 then
                                            B6_1, B5_1 = Cf, B8_1
                                        end
                                    end
                                end
                            end
                        end
                        return B6_1
                    end
                    xJ = fn1198
                    yQ = fn259
                end
                K3_16 = (K3_16 + 29) % 168
            end
        elseif K3_25 <= 15 then
            if K3_16 * 70524655 + 11 + 2 >= K3_16 * 70524655 + 11 + 2 + 1 then
                yu = function()
                    local Cy
                    local CA_2
                    local Cz_2
                    if not State.AutoSteal then
                        return
                    end
                    Cz_2, CA_2 = x9()
                    if not CA_2 then
                        return
                    end
                    if xt() then
                        x_(function()
                            xJ()
                        end)
                        return
                    end
                    Cy = xq(CA_2.Position)
                    if not Cy then
                        yN("No matching eggs")
                        return
                    end
                    x_(function()
                        local Cw = yQ(Cy)
                        if Cw then
                            x4(Cy, x6)
                            State.Stolen = State.Stolen + 1
                            if xt() then
                                xJ()
                            end
                        else
                            x4(Cy, x8)
                            yN("Missed egg, retrying")
                        end
                    end)
                end
                yw = function(fV)
                    local CG_3
                    local CC = not fV or not fV:IsA("BasePart")
                    if CC then
                        return nil
                    end
                    local CC_2 = fV.Size.X * 0.5 - xY
                    local CD = fV.Size.Z * 0.5 - xY
                    if CC_2 <= 0 or CD <= 0 then
                        return fV.Position
                    end
                    local CE_2 = {}
                    local PenEggs = yB:FindFirstChild("PenEggs")
                    local CF_4
                    if PenEggs then
                        for i, child in ipairs(PenEggs:GetChildren()) do
                            local CO = child
                            if CO:IsA("Model") then
                                CF_4, CG_3 = pcall(function()
                                    return CO:GetPivot().Position
                                end)
                                if CF_4 then
                                    local CF_5 = fV.CFrame:PointToObjectSpace(CG_3)
                                    table.insert(CE_2, Vector2.new(CF_5.X, CF_5.Z))
                                end
                            end
                        end
                    end
                    local CF_6 = -CC_2
                    while CF_6 <= CC_2 do
                        local CG_4 = -CD
                        while CG_4 <= CD do
                            local CH = true
                            for i, v in ipairs(CE_2) do
                                if (v - Vector2.new(CF_6, CG_4)).Magnitude < 3.4 then
                                    CH = false
                                    break
                                end
                            end
                            if CH then
                                local CH_2 = fV.CFrame:PointToWorldSpace(Vector3.new(CF_6, fV.Size.Y * 0.5, CG_4))
                                return CH_2
                            end
                            CG_4 += x2
                        end
                        CF_6 += x2
                    end
                    return fV.Position
                end
                yj = function()
                    local C6, C7
                    if not State.AutoPlace then
                        return
                    end
                    C7 = yD()
                    if #C7 == 0 then
                        return
                    end
                    C6 = x3()
                    if not C6 then
                        yN("No plot assigned")
                        return
                    end
                    x_(function()
                        local CW
                        local CZ_3
                        local CY_5
                        xr(C6.Position)
                        task.wait(0.15)
                        CZ_3, CY_5, CW = x9()
                        for i, v in ipairs(C7) do
                            local C5 = v
                            local CY_6 = not yR() or not State.AutoPlace
                            if CY_6 then
                                break
                            else
                                local attr = C5:GetAttribute("EggId")
                                local CY_7 = attr ~= ""
                                local CZ_4 = type(attr) == "string" and CY_7
                                if CZ_4 then
                                    local CX = yj(C6)
                                    if not CX then
                                        yN("No free place spot")
                                        break
                                    end
                                    if CW then
                                        pcall(function()
                                            CW:EquipTool(C5)
                                        end)
                                    end
                                    task.wait(0.12)
                                    yN("Placing egg")
                                    local CY_8 = pcall(function()
                                        xx("Egg_Place", attr, CX.X, CX.Z)
                                    end)
                                    if CY_8 then
                                        State.Placed = State.Placed + 1
                                    end
                                    task.wait(0.25)
                                end
                            end
                        end
                    end)
                end
                ym = fns.fn164
                xN = function()
                    if not State.AutoOpen then
                        return
                    end
                    for i, v in ipairs(xN()) do
                        local DE = v
                        local Dw = not yR() or not State.AutoOpen
                        if Dw then
                            break
                        end
                        local Dw_3 = tonumber(DE.Remaining)
                        if Dw_3 ~= nil and Dw_3 <= 0 then
                            yN("Opening egg")
                            local Dw_4 = pcall(function()
                                xx("Egg_Open", DE.Id)
                            end)
                            if Dw_4 then
                                State.Opened = State.Opened + 1
                            end
                            task.wait(0.35)
                        end
                    end
                end
            else
                ym = function()
                    local Cy
                    local CA_1
                    local Cz_1
                    if not State.AutoSteal then
                        return
                    end
                    Cz_1, CA_1 = x9()
                    if not CA_1 then
                        return
                    end
                    if xt() then
                        x_(function()
                            xJ()
                        end)
                        return
                    end
                    Cy = xq(CA_1.Position)
                    if not Cy then
                        yN("No matching eggs")
                        return
                    end
                    x_(function()
                        local Cw = yQ(Cy)
                        if Cw then
                            x4(Cy, x6)
                            State.Stolen = State.Stolen + 1
                            if xt() then
                                xJ()
                            end
                        else
                            x4(Cy, x8)
                            yN("Missed egg, retrying")
                        end
                    end)
                end
                yj = function(fV)
                    local CG_1
                    local CC = not fV or not fV:IsA("BasePart")
                    if CC then
                        return nil
                    end
                    local CC_1 = fV.Size.X * 0.5 - xY
                    local CD = fV.Size.Z * 0.5 - xY
                    if CC_1 <= 0 or CD <= 0 then
                        return fV.Position
                    end
                    local CE_1 = {}
                    local PenEggs = yB:FindFirstChild("PenEggs")
                    local CF_1
                    if PenEggs then
                        for i, child in ipairs(PenEggs:GetChildren()) do
                            local CO = child
                            if CO:IsA("Model") then
                                CF_1, CG_1 = pcall(function()
                                    return CO:GetPivot().Position
                                end)
                                if CF_1 then
                                    local CF_2 = fV.CFrame:PointToObjectSpace(CG_1)
                                    table.insert(CE_1, Vector2.new(CF_2.X, CF_2.Z))
                                end
                            end
                        end
                    end
                    local CF_3 = -CC_1
                    while CF_3 <= CC_1 do
                        local CG_2 = -CD
                        while CG_2 <= CD do
                            local CH = true
                            for i, v in ipairs(CE_1) do
                                if (v - Vector2.new(CF_3, CG_2)).Magnitude < 3.4 then
                                    CH = false
                                    break
                                end
                            end
                            if CH then
                                local CH_1 = fV.CFrame:PointToWorldSpace(Vector3.new(CF_3, fV.Size.Y * 0.5, CG_2))
                                return CH_1
                            end
                            CG_2 += x2
                        end
                        CF_3 += x2
                    end
                    return fV.Position
                end
                yu = function()
                    local C6, C7
                    if not State.AutoPlace then
                        return
                    end
                    C7 = yD()
                    if #C7 == 0 then
                        return
                    end
                    C6 = x3()
                    if not C6 then
                        yN("No plot assigned")
                        return
                    end
                    x_(function()
                        local CW
                        local CZ_1
                        local CY_1
                        xr(C6.Position)
                        task.wait(0.15)
                        CZ_1, CY_1, CW = x9()
                        for i, v in ipairs(C7) do
                            local C5 = v
                            local CY_2 = not yR() or not State.AutoPlace
                            if CY_2 then
                                break
                            else
                                local attr = C5:GetAttribute("EggId")
                                local CY_3 = attr ~= ""
                                local CZ_2 = type(attr) == "string" and CY_3
                                if CZ_2 then
                                    local CX = yj(C6)
                                    if not CX then
                                        yN("No free place spot")
                                        break
                                    end
                                    if CW then
                                        pcall(function()
                                            CW:EquipTool(C5)
                                        end)
                                    end
                                    task.wait(0.12)
                                    yN("Placing egg")
                                    local CY_4 = pcall(function()
                                        xx("Egg_Place", attr, CX.X, CX.Z)
                                    end)
                                    if CY_4 then
                                        State.Placed = State.Placed + 1
                                    end
                                    task.wait(0.25)
                                end
                            end
                        end
                    end)
                end
                xN = fns.fn164
                yw = function()
                    if not State.AutoOpen then
                        return
                    end
                    for i, v in ipairs(xN()) do
                        local DE = v
                        local Dw = not yR() or not State.AutoOpen
                        if Dw then
                            break
                        end
                        local Dw_1 = tonumber(DE.Remaining)
                        if Dw_1 ~= nil and Dw_1 <= 0 then
                            yN("Opening egg")
                            local Dw_2 = pcall(function()
                                xx("Egg_Open", DE.Id)
                            end)
                            if Dw_2 then
                                State.Opened = State.Opened + 1
                            end
                            task.wait(0.35)
                        end
                    end
                end
            end
            K3_16 = (K3_16 + 155) % 168
        else
            K3_8 = (vector.create((K3_16 * 6 + 7) % 11 + 1, (K3_16 * 1 + 12) % 13 + 1, (K3_16 * 7 + 10) % 17 + 1))
            local No = vector.floor(K3_8) + vector.ceil(K3_8 * -1)
            if vector.dot(No, No) == 2 then
                xe = fns.fn58
                xD = function()
                    if not State.AutoBuyTrails or not yV then
                        return
                    end
                    local DG_2 = xV()
                    if not DG_2 then
                        return
                    end
                    local DH_11 = tonumber(DG_2.money) or 0
                    local DI = DH_11
                    local DH_12 = yV.GetOrder and yV.GetOrder()
                    local DK = DH_12 or {}
                    for i, v in ipairs(DK) do
                        local DR = v
                        local DH_14 = not yR() or not State.AutoBuyTrails
                        if DH_14 then
                            break
                        end
                        local DH_15 = yV.IsOwned and yV.IsOwned(DG_2, DR)
                        local DH_16 = yV.GetCashPrice and yV.GetCashPrice(DR)
                        local DK_2 = not DH_15
                        if DK_2 then
                            DK_2 = type(DH_16) == "number"
                        end
                        if DK_2 then
                            DK_2 = DH_16 > 0
                        end
                        if DK_2 then
                            DK_2 = DI >= DH_16
                        end
                        if DK_2 then
                            local DH_17 = yV.GetDisplayName and yV.GetDisplayName(DR)
                            local DJ_6 = DH_17 or DR
                            yN("Buying " .. tostring(DJ_6))
                            local DH_18 = pcall(function()
                                xx("Trail_Buy", DR)
                            end)
                            if DH_18 then
                                task.wait(0.4)
                                local DH_19 = (xV())
                                local DU = if DH_19 then 1 else 0
                                local DS = 828 * DU + 1165 * (1 - DU)
                                local DT = 2382 * DU + 1713 * (1 - DU)
                                if not ((DS * 822 + DT * 2767 + DS * DT) % 16777213 == 9243906) then
                                    DH_19 = DG_2
                                end
                                DG_2 = DH_19
                                local DH_20 = tonumber(DG_2.money) or DI
                                DI = DH_20
                            end
                        end
                    end
                end
            else
                xD = fns.fn58
                xe = function()
                    if not State.AutoBuyTrails or not yV then
                        return
                    end
                    local DG_1 = xV()
                    if not DG_1 then
                        return
                    end
                    local DH_1 = tonumber(DG_1.money) or 0
                    local DI = DH_1
                    local DH_2 = yV.GetOrder and yV.GetOrder()
                    local DK = DH_2 or {}
                    for i, v in ipairs(DK) do
                        local DR = v
                        local DH_4 = not yR() or not State.AutoBuyTrails
                        if DH_4 then
                            break
                        end
                        local DH_5 = yV.IsOwned and yV.IsOwned(DG_1, DR)
                        local DH_6 = yV.GetCashPrice and yV.GetCashPrice(DR)
                        local DK_1 = not DH_5
                        if DK_1 then
                            DK_1 = type(DH_6) == "number"
                        end
                        if DK_1 then
                            DK_1 = DH_6 > 0
                        end
                        if DK_1 then
                            DK_1 = DI >= DH_6
                        end
                        if DK_1 then
                            local DH_7 = yV.GetDisplayName and yV.GetDisplayName(DR)
                            local DJ_3 = DH_7 or DR
                            yN("Buying " .. tostring(DJ_3))
                            local DH_8 = pcall(function()
                                xx("Trail_Buy", DR)
                            end)
                            if DH_8 then
                                task.wait(0.4)
                                local DH_9 = (xV())
                                local DU = if DH_9 then 1 else 0
                                local DS = 828 * DU + 1165 * (1 - DU)
                                local DT = 2382 * DU + 1713 * (1 - DU)
                                if not ((DS * 822 + DT * 2767 + DS * DT) % 16777213 == 9243906) then
                                    DH_9 = DG_1
                                end
                                DG_1 = DH_9
                                local DH_10 = tonumber(DG_1.money) or DI
                                DI = DH_10
                            end
                        end
                    end
                end
            end
            K3_16 = (K3_16 + 50) % 168
        end
    elseif K3_25 <= 19 then
        if K3_25 <= 18 then
            if K3_25 <= 17 then
                local L4 = bit32.rrotate(bit32.bxor(bit32.lrotate(K3_16, 15), string.byte(tostring(yP))), 31)
                if bit32.bxor(bit32.lrotate(bit32.bxor(L4, 1768102333), 2), 2777442037) ~= bit32.lrotate(L4, 2) then
                    xT = fn1238
                    xm = function()
                        local DW
                        local D0_2
                        local DX = not yK
                        local DX_10
                        local DY = not State.AutoSell
                        local DY_12, DY_14
                        local D4 = if DY then 1 else 0
                        local D2 = 3816 * D4 + 1692 * (1 - D4)
                        local D3 = 1203 * D4 + 1516 * (1 - D4)
                        if not ((D2 * 1700 + D3 * 524 + D2 * D3) % 16777213 == 11708220) then
                            DY = DX
                        end
                        if DY then
                            return
                        end
                        local DX_6 = xV()
                        local DY_8 = not DX_6 or type(DX_6.Animals) ~= "table"
                        if DY_8 then
                            return
                        end
                        local DY_9 = type(DX_6.Placed) == "table" and DX_6.Placed
                        local DZ = {}
                        local DZ_10
                        local D_ = DY_9 or DZ
                        local D__5
                        if State.SellRarityCount > 0 then
                            for i, v in ipairs(DX_6.Animals) do
                                local Ea = v
                                local DZ_7 = not yR() or not State.AutoSell
                                if DZ_7 then
                                    return
                                end
                                local DZ_8 = type(Ea) == "table" and type(Ea.Id) == "string" and Ea.Id ~= "" and D_[Ea.Id] ~= nil
                                if DZ_8 then
                                    local DZ_9 = Ea.Rarity
                                    local D__4 = type(DZ_9) ~= "string" and xj and type(xj.GetRarity) == "function"
                                    if D__4 then
                                        D__5, D0_2 = pcall(xj.GetRarity, Ea.Name)
                                        if D__5 then
                                            DZ_9 = D0_2
                                        end
                                    end
                                    local D__6 = type(DZ_9) == "string" and State.SellRarities[DZ_9]
                                    if D__6 then
                                        pcall(function()
                                            xx("Pen_Remove", nil, Ea.Id)
                                        end)
                                        task.wait(0.15)
                                    end
                                end
                            end
                            local DY_11 = xV() or DX_6
                            DX_6 = DY_11
                        end
                        DZ_10, DY_12 = yK.QuoteAll(DX_6)
                        local DX_7 = type(DZ_10) ~= "table" or #DZ_10 == 0
                        if DX_7 then
                            return
                        end
                        DW = {}
                        for i, v in ipairs(DZ_10) do
                            local DX_8 = type(v) == "table" and type(v.Id) == "string"
                            if DX_8 then
                                local Rarity = v.Rarity
                                local DY_13 = State.SellRarityCount == 0
                                if not DY_13 then
                                    local DZ_11 = type(Rarity) == "string" and State.SellRarities[Rarity]
                                    DY_13 = DZ_11
                                end
                                if DY_13 then
                                    table.insert(DW, v.Id)
                                end
                            end
                        end
                        if #DW == 0 then
                            return
                        end
                        yN(string.format("Selling %d pets", #DW))
                        DX_10, DY_14 = pcall(function()
                            return xx("Sell_All", DW)
                        end)
                        if DX_10 and DY_14 then
                            State.Sold = State.Sold + #DW
                        end
                    end
                    yJ = fn263
                else
                    xm = fn1238
                    yJ = function()
                        local DW
                        local D0_1
                        local DX = not yK
                        local DX_5
                        local DY = not State.AutoSell
                        local DY_5, DY_7
                        local D4 = if DY then 1 else 0
                        local D2 = 3816 * D4 + 1692 * (1 - D4)
                        local D3 = 1203 * D4 + 1516 * (1 - D4)
                        if not ((D2 * 1700 + D3 * 524 + D2 * D3) % 16777213 == 11708220) then
                            DY = DX
                        end
                        if DY then
                            return
                        end
                        local DX_1 = xV()
                        local DY_1 = not DX_1 or type(DX_1.Animals) ~= "table"
                        if DY_1 then
                            return
                        end
                        local DY_2 = type(DX_1.Placed) == "table" and DX_1.Placed
                        local DZ = {}
                        local DZ_4
                        local D_ = DY_2 or DZ
                        local D__2
                        if State.SellRarityCount > 0 then
                            for i, v in ipairs(DX_1.Animals) do
                                local Ea = v
                                local DZ_1 = not yR() or not State.AutoSell
                                if DZ_1 then
                                    return
                                end
                                local DZ_2 = type(Ea) == "table" and type(Ea.Id) == "string" and Ea.Id ~= "" and D_[Ea.Id] ~= nil
                                if DZ_2 then
                                    local DZ_3 = Ea.Rarity
                                    local D__1 = type(DZ_3) ~= "string" and xj and type(xj.GetRarity) == "function"
                                    if D__1 then
                                        D__2, D0_1 = pcall(xj.GetRarity, Ea.Name)
                                        if D__2 then
                                            DZ_3 = D0_1
                                        end
                                    end
                                    local D__3 = type(DZ_3) == "string" and State.SellRarities[DZ_3]
                                    if D__3 then
                                        pcall(function()
                                            xx("Pen_Remove", nil, Ea.Id)
                                        end)
                                        task.wait(0.15)
                                    end
                                end
                            end
                            local DY_4 = xV() or DX_1
                            DX_1 = DY_4
                        end
                        DZ_4, DY_5 = yK.QuoteAll(DX_1)
                        local DX_2 = type(DZ_4) ~= "table" or #DZ_4 == 0
                        if DX_2 then
                            return
                        end
                        DW = {}
                        for i, v in ipairs(DZ_4) do
                            local DX_3 = type(v) == "table" and type(v.Id) == "string"
                            if DX_3 then
                                local Rarity = v.Rarity
                                local DY_6 = State.SellRarityCount == 0
                                if not DY_6 then
                                    local DZ_5 = type(Rarity) == "string" and State.SellRarities[Rarity]
                                    DY_6 = DZ_5
                                end
                                if DY_6 then
                                    table.insert(DW, v.Id)
                                end
                            end
                        end
                        if #DW == 0 then
                            return
                        end
                        yN(string.format("Selling %d pets", #DW))
                        DX_5, DY_7 = pcall(function()
                            return xx("Sell_All", DW)
                        end)
                        if DX_5 and DY_7 then
                            State.Sold = State.Sold + #DW
                        end
                    end
                    xT = fn263
                end
                K3_16 = (K3_16 + 50) % 168
            else
                local Mx = bit32.rrotate(bit32.bxor(bit32.lrotate(K3_16, 15), string.byte(tostring(State))), 22)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Mx, 3864786323), 2144947960), (bit32.bxor(bit32.band(Mx, 430180972), 3161637002))), 2144947960), 3161637002) == Mx then
                    yy = fns.fn248
                    xA = fn768
                    yp = fn1223
                    yb = function()
                        local EC
                        if not State.AutoTrain then
                            return
                        end
                        if yp() then
                            yN("On treadmill")
                            return
                        end
                        EC = xA()
                        if not EC then
                            yN("No treadmill")
                            return
                        end
                        x_(function()
                            yN("Entering treadmill")
                            xr(EC.Position)
                            task.wait(0.12)
                            local Ex = not yR() or not State.AutoTrain
                            if Ex then
                                return
                            end
                            yU("Training_Enter", EC)
                        end)
                    end
                    yP = fn704
                else
                    yP = fns.fn248
                    yp = fn768
                    xA = fn1223
                    yy = function()
                        local EC
                        if not State.AutoTrain then
                            return
                        end
                        if yp() then
                            yN("On treadmill")
                            return
                        end
                        EC = xA()
                        if not EC then
                            yN("No treadmill")
                            return
                        end
                        x_(function()
                            yN("Entering treadmill")
                            xr(EC.Position)
                            task.wait(0.12)
                            local Ex = not yR() or not State.AutoTrain
                            if Ex then
                                return
                            end
                            yU("Training_Enter", EC)
                        end)
                    end
                    yb = fn704
                end
                K3_16 = (K3_16 + 134) % 168
            end
        else
            K3_8 = (vector.create((K3_16 * 1 + 7) % 11 + 1, (K3_16 * 1 + 3) % 13 + 1, (K3_16 * 8 + 8) % 17 + 1))
            local NC = vector.floor(K3_8) + vector.ceil(K3_8 * -1)
            if vector.dot(NC, NC) == 2 then
                xP = function(jy)
                    local Map = yB:FindFirstChild("Map")
                    local EK_6
                    local EL = Map and Map:FindFirstChild("Spawns")
                    local EL_3
                    local EK_5 = EL
                    if EL then
                        EL = EK_5:FindFirstChild(jy)
                    end
                    local EJ = EL
                    if not EJ then
                        return nil
                    elseif EJ:IsA("BasePart") then
                        return EJ.Position
                    else
                        EK_6, EL_3 = pcall(function()
                            return EJ:GetPivot().Position
                        end)
                        if EK_6 then
                            return EL_3
                        end
                        local BasePart = EJ:FindFirstChildWhichIsA("BasePart", true)
                        return BasePart and BasePart.Position or nil
                    end
                end
                yd.TeleportToPen = fn630
                yd.TeleportToZone = fns.fn247
                xy = fn551
                ye = function()
                    for k, v in pairs(xh) do
                        local Fb = v
                        pcall(function()
                            if Fb.Destroy then
                                Fb:Destroy()
                            elseif Fb.Remove then
                                Fb:Remove()
                            else
                                Fb.Visible = false
                            end
                        end)
                        xh[k] = nil
                    end
                    if xc then
                        xc:Disconnect()
                        xc = nil
                    end
                end
            else
                yd = function(jy)
                    local Map = yB:FindFirstChild("Map")
                    local EK_2
                    local EL = Map and Map:FindFirstChild("Spawns")
                    local EL_1
                    local EK_1 = EL
                    if EL then
                        EL = EK_1:FindFirstChild(jy)
                    end
                    local EJ = EL
                    if not EJ then
                        return nil
                    elseif EJ:IsA("BasePart") then
                        return EJ.Position
                    else
                        EK_2, EL_1 = pcall(function()
                            return EJ:GetPivot().Position
                        end)
                        if EK_2 then
                            return EL_1
                        end
                        local BasePart = EJ:FindFirstChildWhichIsA("BasePart", true)
                        return BasePart and BasePart.Position or nil
                    end
                end
                xy.TeleportToPen = fn630
                xy.TeleportToZone = fns.fn247
                ye = fn551
                xP = function()
                    for k, v in pairs(xh) do
                        local Fb = v
                        pcall(function()
                            if Fb.Destroy then
                                Fb:Destroy()
                            elseif Fb.Remove then
                                Fb:Remove()
                            else
                                Fb.Visible = false
                            end
                        end)
                        xh[k] = nil
                    end
                    if xc then
                        xc:Disconnect()
                        xc = nil
                    end
                end
            end
            K3_16 = (K3_16 + 92) % 168
        end
    elseif K3_25 <= 20 then
        if K3_16 * 1318807 + 6 + 7 <= K3_16 * 1318807 + 6 + 7 + 2 then
            xn = fn1097
        else
            yd = fn1097
        end
        K3_16 = (K3_16 + 50) % 168
    else
        if K3_16 * 18578543 + 12 + 4 >= K3_16 * 18578543 + 12 + 4 + 5 then
            yP = function()
                local Fu_2
                local Ft_4
                local Fs_5, Fs_6
                if not State.EggEsp then
                    return
                end
                local CurrentCamera = yB.CurrentCamera
                if not CurrentCamera then
                    return
                end
                local Fq = xF()
                local Fr = {}
                if Fq then
                    for i, child in ipairs(Fq:GetChildren()) do
                        local Fo
                        local FC = child
                        local Fq_3 = FC:IsA("Model") and yL(FC)
                        if Fq_3 then
                            Fr[FC] = true
                            local Fq_4 = xn(FC)
                            if Fq_4 then
                                Fo = xg(FC)
                                Fs_5, Ft_4 = pcall(function()
                                    local Fi = Fo and Fo.Position
                                    local Fm = if Fi then 1 else 0
                                    local Fk = 624 * Fm + 351 * (1 - Fm)
                                    local Fl = 143 * Fm + 800 * (1 - Fm)
                                    if not ((Fk * 3895 + Fl * 1596 + Fk * Fl) % 16777213 == 2747940) then
                                        Fi = FC:GetPivot().Position
                                    end
                                    return Fi
                                end)
                                if Fs_5 then
                                    Fu_2, Fs_6 = CurrentCamera:WorldToViewportPoint(Ft_4)
                                    if Fs_6 and Fu_2.Z > 0 then
                                        local Fs_7 = FC:GetAttribute("Rarity") or "?"
                                        local Fs_8 = FC:GetAttribute("Animal") or FC.Name
                                        Fq_4.Text = string.format("%s · %s", tostring(Fs_8), tostring(Fs_7))
                                        Fq_4.Color = ye(Fs_7)
                                        Fq_4.Position = Vector2.new(Fu_2.X, Fu_2.Y - 18)
                                        Fq_4.Visible = true
                                    else
                                        Fq_4.Visible = false
                                    end
                                end
                            end
                        end
                    end
                end
                for k, v in pairs(xh) do
                    local FI = v
                    if not Fr[k] or not k.Parent then
                        pcall(function()
                            if FI.Destroy then
                                FI:Destroy()
                            elseif FI.Remove then
                                FI:Remove()
                            else
                                FI.Visible = false
                            end
                        end)
                        xh[k] = nil
                    end
                end
            end
        else
            yC = function()
                local Fu_1
                local Ft_1
                local Fs_1, Fs_2
                if not State.EggEsp then
                    return
                end
                local CurrentCamera = yB.CurrentCamera
                if not CurrentCamera then
                    return
                end
                local Fq = xF()
                local Fr = {}
                if Fq then
                    for i, child in ipairs(Fq:GetChildren()) do
                        local Fo
                        local FC = child
                        local Fq_1 = FC:IsA("Model") and yL(FC)
                        if Fq_1 then
                            Fr[FC] = true
                            local Fq_2 = xn(FC)
                            if Fq_2 then
                                Fo = xg(FC)
                                Fs_1, Ft_1 = pcall(function()
                                    local Fi = Fo and Fo.Position
                                    local Fm = if Fi then 1 else 0
                                    local Fk = 624 * Fm + 351 * (1 - Fm)
                                    local Fl = 143 * Fm + 800 * (1 - Fm)
                                    if not ((Fk * 3895 + Fl * 1596 + Fk * Fl) % 16777213 == 2747940) then
                                        Fi = FC:GetPivot().Position
                                    end
                                    return Fi
                                end)
                                if Fs_1 then
                                    Fu_1, Fs_2 = CurrentCamera:WorldToViewportPoint(Ft_1)
                                    if Fs_2 and Fu_1.Z > 0 then
                                        local Fs_3 = FC:GetAttribute("Rarity") or "?"
                                        local Fs_4 = FC:GetAttribute("Animal") or FC.Name
                                        Fq_2.Text = string.format("%s · %s", tostring(Fs_4), tostring(Fs_3))
                                        Fq_2.Color = ye(Fs_3)
                                        Fq_2.Position = Vector2.new(Fu_1.X, Fu_1.Y - 18)
                                        Fq_2.Visible = true
                                    else
                                        Fq_2.Visible = false
                                    end
                                end
                            end
                        end
                    end
                end
                for k, v in pairs(xh) do
                    local FI = v
                    if not Fr[k] or not k.Parent then
                        pcall(function()
                            if FI.Destroy then
                                FI:Destroy()
                            elseif FI.Remove then
                                FI:Remove()
                            else
                                FI.Visible = false
                            end
                        end)
                        xh[k] = nil
                    end
                end
            end
        end
        K3_16 = (K3_16 + 113) % 168
    end
until (K3_16 * 145 + 27) % 168 == 36
if not K3_28 then
    K3_25 = 6
    repeat
        K3_16 = {
            "wxeobtqpngt",
            "waobndwmvsp",
            "dgllbxhenkf",
            "kkueqdniyo",
            "uxneiwhp",
            "demnskwsqy",
            "fcxxa",
            "tutty",
            "mnokmbcnaij",
            "gjzk",
            "dtbe"
        }
        local L7 = K3_25
        K3_7 = K3_16[L7 % 11 + 1]
        if K3_7:len() <= K3_7:reverse():rep(L7 % 3 + 2):len() then
            xy.Unload()
            error(K3_17, 0)
        else
            K3_17.Unload()
            error(xy, 0)
        end
        K3_25 = (K3_25 + 5) % 8
    until (K3_25 * 7 + 1) % 8 == 6
end
