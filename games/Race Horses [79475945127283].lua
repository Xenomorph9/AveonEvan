local uu
local tQ
local ux
local ue
local uA
local tW
local uD
local tD
local tZ
local uk
local tG
local t1
local un
local tJ
local t4
local uw
local ua
local ud
local uz
local uC
local tY
local LocalPlayer
local t0
local um
local tI
local t3
local t6
local us
local tO
local uv
local uc
local tU
local uf
local tE
local tH
local uo
local t2
local CoreGui
local State
local t8
local function fn55()
    local wp = 0
    for k in pairs(t1()) do
        wp += 1
    end
    return wp
end
local function fn75(V)
    local vu = typeof(cloneref) == "function" and typeof(V) == "Instance"
    if vu then
        return cloneref(V)
    end
    return V
end
local function fn110()
    return not uf.Unloaded
end
local function fn229(az)
    local vO_2
    local vN = os.clock() + 8
    local vN_2
    while true do
        local vO_1 = State.MoveBusy and tJ() and os.clock() < vN
        if vO_1 then
            task.wait(0.1)
            continue
        end
        break
    end
    local vN_1 = State.MoveBusy or not tJ()
    if vN_1 then
        return false
    end
    State.MoveBusy = true
    vN_2, vO_2 = pcall(az)
    State.MoveBusy = false
    if not vN_2 then
        warn("[Ouroboros] movement error: " .. tostring(vO_2))
        return false
    end
    return vO_2
end
local function fn246(gm)
    local Az = t1()
    local AA = type(gm) == "table" and next(gm) ~= nil
    local AA_3
    local AA_1 = AA and gm or Az
    local AB_1 = {}
    local AC_2
    for k in pairs(AA_1) do
        local AA_2 = Az[k]
        local AC_1 = type(AA_2) == "table"
        if AC_1 then
            local AD_1 = tonumber(AA_2.CanRaceAt) or 0
            AC_1 = AD_1 <= os.time()
        end
        if AC_1 then
            table.insert(AB_1, k)
        end
    end
    if #AB_1 == 0 then
        return nil
    elseif tD.priority == "Random Horse" then
        return AB_1[math.random(1, #AB_1)]
    else
        AC_2, AA_3 = nil, nil
        for i, v in ipairs(AB_1) do
            local AB_2 = tonumber(Az[v].Multiplier) or 0
            local AD_2 = not AA_3
            if not AD_2 then
                AD_2 = AB_2 > AA_3
            end
            if AD_2 then
                AC_2, AA_3 = v, AB_2
            end
        end
        return AC_2
    end
end
local function fn297(a_)
    if not table.find(tG.missing, a_) then
        table.insert(tG.missing, a_)
    end
end
local function fn311()
    local zA = t2(um)
    local zB = type(zA) == "table" and zA
    return zB or {}
end
local function fn345()
    gethui = ux
end
local function fn347()
    local Character = LocalPlayer.Character
    local vF = Character and Character:FindFirstChild("HumanoidRootPart")
    return vF or nil
end
local function fn351(ai)
    local format = string.format
    local floor = math.floor
    local vB = tonumber(ai) or 0
    local vC = format("%d", floor(vB))
    local vz_1 = vC:reverse():gsub("(%d%d%d)", "%1,")
    local vA_1 = vz_1:reverse()
    return (vA_1:gsub("^,", ""))
end
local function fn357()
    local Modules = uA:FindFirstChild("Modules")
    if not Modules then
        uD("Modules")
        return
    end
    local Core = Modules:FindFirstChild("Core")
    local Shop = Modules:FindFirstChild("Shop")
    local v0_1 = Core and t6(Core:FindFirstChild("MailService"))
    local v3 = v0_1 or nil
    tG.Mail = v3
    local v0_2 = Core and t6(Core:FindFirstChild("DataCache"))
    local v1_1 = v0_2 or nil
    tG.Data = v1_1
    local v0_3 = Shop and Shop:FindFirstChild("Categories")
    local v1_2 = v0_3 or nil
    local v0_4 = v1_2
    if v1_2 then
        v1_2 = t6(v0_4:FindFirstChild("Eggs"))
    end
    local v0_5 = v1_2 or nil
    tG.EggShop = v0_5
    local v0_6 = not tG.Mail or not tW(tG.Mail.Call) or not tW(tG.Mail.FireServer)
    if v0_6 then
        uD("MailService")
    end
    local v0_7 = not tG.Data or not tW(tG.Data.Get)
    if v0_7 then
        uD("DataCache")
    end
    local v0_8 = not tG.EggShop or not tW(tG.EggShop.GetItems)
    if v0_8 then
        uD("Egg shop")
    end
    tG.ready = #tG.missing == 0
end
local function fn377()
    local yc = us("StableUpgrade")
    if yc and yc.Success and yc.Value == true then
        State.UpgradeStatus = "Upgraded, stable holds " .. tostring(uu())
        return
    end
    State.UpgradeStatus = "Requirements not met"
end
local function fn401()
    local zr = {}
    for k, v in pairs(t1()) do
        local zs = type(v) == "table" and type(v.Name) == "string" and not table.find(zr, v.Name)
        if zs then
            table.insert(zr, v.Name)
        end
    end
    table.sort(zr)
    return zr
end
local function fn410(aU)
    local vX_1
    local vW_1
    if not aU then
        return nil
    end
    vW_1, vX_1 = pcall(require, aU)
    local vY = vW_1 and type(vX_1) == "table"
    if vY then
        return vX_1
    end
    return nil
end
local function fn423(c2)
    c2.stopped = true
    local xC = c2.generation or 0
    c2.generation = xC + 1
end
local function fn487()
    local wn = tE({ "Inventory", "Horses" }, nil)
    if type(wn) ~= "table" then
        return {}
    end
    return wn
end
local function fn557()
    local wv = tonumber(tE({ "Stable", "MaxHorses" }, 0)) or 0
    return wv
end
local function fn598()
    local wx = tonumber(tE("Cash", 0)) or 0
    return wx
end
local function fn623()
    local Ae = tO(uz.rarities)
    if not next(Ae) then
        State.SellStatus = "No rarity selected"
        return
    end
    local Af = t1()
    local Ag = 0
    local Ah = {}
    for k, v in pairs(Af) do
        Ag += 1
        local Af_1 = type(v) == "table" and Ae[tostring(v.Rarity)]
        if Af_1 then
            local Ai = tonumber(v.Level) or 0
            Af_1 = Ai <= uz.maxLevel
        end
        if Af_1 then
            table.insert(Ah, { uid = k, horse = v })
        end
    end
    local Ae_1 = math.max(1, uz.keep)
    if Ag <= Ae_1 then
        State.SellStatus = "Keeping " .. Ag .. " horse(s)"
        return
    end
    if #Ah == 0 then
        State.SellStatus = "Nothing matches filters"
        return
    end
    table.sort(Ah, function(gd, ge)
        local z8 = (tonumber(gd.horse.Multiplier))
        local Ad = if z8 then 1 else 0
        local Ab = 428 * Ad + 1932 * (1 - Ad)
        local Ac = 2680 * Ad + 3471 * (1 - Ad)
        if not ((Ab * 2585 + Ac * 128 + Ab * Ac) % 16777213 == 2596460) then
            z8 = 0
        end
        local z9 = tonumber(ge.horse.Multiplier) or 0
        return z8 < z9
    end)
    local Af_2 = 0
    for i, v in ipairs(Ah) do
        local Ah_1 = not tJ() or uz.stopped or Ag - Af_2 <= Ae_1
        if Ah_1 then
            break
        elseif t0("SellHorse", v.uid) then
            Af_2 += 1
            task.wait(0.6)
        end
    end
    local Af_3 = Af_2 > 0 and "Sold " .. Af_2 .. " horse(s)" or "Sell rejected"
    State.SellStatus = Af_3
end
local function fn685(hx)
    if hx then
        tD.stopped = false
        ue()
        if t3.signup then
            State.RaceStatus = "Waiting for next race"
        end
    else
        tD.stopped = true
        uC()
        State.RaceStatus = "Idle"
    end
end
local function fn693(cL)
    local xl = {}
    if type(cL) ~= "table" then
        return xl
    end
    for k, v in pairs(cL) do
        if v == true then
            xl[k] = true
        elseif type(v) == "string" then
            xl[v] = true
        end
    end
    return xl
end
local function fn843()
    for i, v in ipairs({ uc, t8, t4, tZ, tU, tQ, tI, uz }) do
        un(v)
    end
    tD.stopped = true
    uC()
end
local function fn873(Y)
    return type(Y) == "function"
end
local function fn898()
    local zj = {}
    for i, v in ipairs(ua("Horse")) do
        if v:GetAttribute("HorseOwner") == LocalPlayer.UserId then
            table.insert(zj, v)
        end
    end
    return zj
end
local function fn939()
    local yD = 0
    for i, v in ipairs(ua("HatchEgg")) do
        if v:GetAttribute("Owner") == LocalPlayer.UserId then
            yD += 1
        end
    end
    return yD
end
local function fn943()
    return CoreGui
end
local function fn991()
    local wU = us("GetBaseBounds")
    local wV = not wU or not wU.Success
    local wZ = if wV then 1 else 0
    local wX = 2514 * wZ + 2452 * (1 - wZ)
    local wY = 454 * wZ + 4050 * (1 - wZ)
    if not ((wX * 3282 + wY * 1596 + wX * wY) % 16777213 == 10116888) then
        wV = type(wU.Value) ~= "table"
    end
    if wV then
        return nil
    end
    local Base = wU.Value.Base
    local wU_1 = typeof(Base) == "Instance" and Base:IsA("BasePart")
    if wU_1 then
        return Base
    end
    return nil
end
local function fn1075()
    if t3.signup then
        return
    end
    local Be = not tG.Mail or not tW(tG.Mail.Bind)
    if Be then
        State.RaceStatus = "Race binding unavailable"
        return
    end
    local Be_1 = pcall(function()
        t3.signup = tG.Mail:Bind("InquireSignup", function()
            local A_ = not tJ() or tD.stopped
            if A_ then
                return
            end
            State.RaceStatus = "Signing up"
            t0("RequestSignup")
        end)
        t3.select = tG.Mail:Bind("HorseSelect", function(gY)
            local A1 = not tJ() or tD.stopped
            if A1 then
                return
            end
            local A1_1 = tY(gY)
            if not A1_1 then
                State.RaceStatus = "All horses on cooldown"
                return
            end
            local A2 = us("RequestEnterHorse", A1_1)
            if A2 and A2.Success and A2.Value == true then
                local A2_1 = t1()[A1_1]
                local A2_2 = A2_1 and A2_1.Name or A1_1
                State.RaceStatus = "Entered " .. tostring(A2_2)
            else
                State.RaceStatus = "Entry rejected"
            end
        end)
    end)
    if not Be_1 then
        uC()
        State.RaceStatus = "Race binding failed"
    end
end
local function fn1093(b9, ca)
    local wN = typeof(b9) ~= "Instance"
    local wN_3
    local wT = if wN then 1 else 0
    local wR = 4055 * wT + 2523 * (1 - wT)
    local wS = 966 * wT + 1062 * (1 - wT)
    if not ((wR * 2358 + wS * 2710 + wR * wS) % 16777213 == 16096680) then
        wN = not b9:IsDescendantOf(uv)
    end
    if wN then
        return false
    end
    local wN_1 = ud(b9)
    if not wN_1 then
        return false
    end
    local wO = tH()
    if not wO then
        return false
    elseif (wO.Position - wN_1).Magnitude > 35 then
        local wO_1 = wN_1 + Vector3.new(0, 0, 6)
        local wP = ca or 5
        local wT_1 = if not uo(wO_1, wP) then 1 else 0
        if wT_1 == 1 then
            return false
        end
        task.wait(0.35)
        local wN_2 = not tJ() or not b9:IsDescendantOf(uv)
        if wN_3 then
            return false
        end
        return t0("Interact", b9)
    else
        wN_3 = not tJ() or not b9:IsDescendantOf(uv)
        if wN_3 then
            return false
        end
        return t0("Interact", b9)
    end
end
local function fn1100()
    local yj_1
    local yi_1
    if not tG.EggShop then
        return {}
    end
    yi_1, yj_1 = pcall(function()
        return tG.EggShop:GetItems()
    end)
    local yk = not yi_1 or type(yj_1) ~= "table"
    if yk then
        return {}
    end
    return yj_1
end
local function fn1128()
    local yp = tO(tZ.rarities)
    if not next(yp) then
        State.BuyStatus = "No rarity selected"
        return
    end
    local yq = uw()
    if #yq == 0 then
        State.BuyStatus = "Egg shop unavailable"
        return
    end
    local yr = 0
    for i, v in ipairs(yq) do
        local yq_1 = not tJ() or tZ.stopped
        if yq_1 then
            break
        else
            local yq_2 = tonumber(v.Price)
            local ys = v.Rarity and yp[v.Rarity] and not v.OffSale and yq_2 and yq_2 <= uk()
            if ys then
                local yq_3 = us("PurchaseItem", "Eggs", i)
                if yq_3 and yq_3.Success then
                    yr += 1
                end
                task.wait(0.3)
            end
        end
    end
    local yq_4 = yr > 0 and "Bought " .. yr .. " egg(s)" or "Out of stock or cash"
    State.BuyStatus = yq_4
end
local function fn1129(cB)
    local Character = LocalPlayer.Character
    local Backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
    for i, v in ipairs({ Character, Backpack }) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                local w6_1 = child:IsA("Tool") and cB(child)
                if w6_1 then
                    return child
                end
            end
        end
    end
    return nil
end
tD = nil
tE = nil
LocalPlayer = nil
tG = nil
tH = nil
tI = nil
tJ = nil
tO = nil
tQ = nil
tU = nil
tW = nil
tY = nil
tZ = nil
t0 = nil
t1 = nil
t2 = nil
t3 = nil
t4 = nil
CoreGui = nil
t6 = nil
t8 = nil
ua = nil
uc = nil
ud = nil
ue = nil
uf = nil
uk = nil
um = nil
un = nil
uo = nil
local Players, tK, Workspace, tM, tN, tP, tR, Lighting, tT, tV, CollectionService, TeleportService, t7, GuiService, ub, ug, uh, ui, uj, ul
State = nil
us = nil
uu = nil
uv = nil
uw = nil
ux = nil
uz = nil
uA = nil
uC = nil
uD = nil
local up, uq, ut, uy, uB
local uV_1
local uU_1
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, ut, up, uj, ug, GuiService, CoreGui, TeleportService, CollectionService, Lighting, Workspace, LocalPlayer, ux = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
if ((CoreGui or ux) and (not CoreGui or not CoreGui) or ux and up and (not ux and ux)) and (not CoreGui and uj and (not up or LocalPlayer) and (not uj or not up or (not CoreGui or not uj))) and (((not LocalPlayer or not up) and (not ux or ux) or (not LocalPlayer or not up) and (not ux and not uj)) and (not CoreGui and not ux and (not ux or CoreGui) or (not uj and not LocalPlayer or (ux or not LocalPlayer)))) or not (((CoreGui or ux) and (not CoreGui or not CoreGui) or ux and up and (not ux and ux)) and (not CoreGui and uj and (not up or LocalPlayer) and (not uj or not up or (not CoreGui or not uj))) and (((not LocalPlayer or not up) and (not ux or ux) or (not LocalPlayer or not up) and (not ux and not uj)) and (not CoreGui and not ux and (not ux or CoreGui) or (not uj and not LocalPlayer or (ux or not LocalPlayer))))) then
    ut = game:GetService("RunService")
    up = game:GetService("UserInputService")
    uj = game:GetService("VirtualUser")
    ug = game:GetService("HttpService")
else
    up = game:GetService("RunService")
    ut = game:GetService("UserInputService")
    ug = game:GetService("VirtualUser")
    uj = game:GetService("HttpService")
end
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
CollectionService = game:GetService("CollectionService")
Lighting = game:GetService("Lighting")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local uG = "OuroborosRaceHorses"
ux = fn943
if getgenv then
    getgenv().gethui = ux
end
uf, uA, uv, State, ul, uh, ub, tG, uc, t8, t4, tZ, tU, tQ, tI, tD, uz, t3, tM, tW, tJ, t7, tH, uo, tK, t2, t6, uD, t0, us, tE, t1, tP, uu, uk, ua, ud, tR, tN, ui, uB, tO, uq, un, uw, uy, tT, um, tV, tY, uC, ue = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn345)
local function uP(u)
    local vg
    local vh
    local vf
    vf = nil
    vg = nil
    vh = nil
    local vi = u ~= ""
    local vj = type(u) == "string" and vi
    assert(vj, "Namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    vg = getgenv()
    assert(type(vg) == "table", "getgenv did not return a table")
    local vi_1 = vg[u]
    if vi_1 ~= nil then
        local vj_1 = type(vi_1) == "table" and type(vi_1.Unload) == "function"
        assert(vj_1, "Namespace is occupied")
        vi_1.Unload()
        assert(vg[u] == nil, "Previous instance did not release its namespace")
    end
    vh = {}
    vf = { State = {}, Unloaded = false }
    vf.Track = function(A)
        assert(type(A) == "function", "Cleanup must be callable")
        if vf.Unloaded then
            A()
        else
            table.insert(vh, A)
        end
        return A
    end
    vf.Unload = function()
        local u8_1
        local u7_1
        if vf.Unloaded then
            return
        end
        vf.Unloaded = true
        local u5 = {}
        local vc = #vh
        local vb = -1
        while false and vc <= 1 or true and vc >= 1 do
            local vd = vc
            local u6_1 = table.remove(vh, vd)
            u7_1, u8_1 = pcall(u6_1)
            if not u7_1 then
                table.insert(u5, tostring(u8_1))
            end
            vc += vb
        end
        table.clear(vf.State)
        if #u5 > 0 then
            error("Cleanup incomplete: " .. table.concat(u5, "; "), 0)
        end
        if vg[u] == vf then
            vg[u] = nil
        end
    end
    vg[u] = vf
    return vf
end
tM = function(N, O)
    local vp = type(N) == "table" and type(N.Track) == "function"
    assert(vp, "FeatureAPI required")
    local vp_1 = type(O) == "table" and type(O.OnUnload) == "function"
    assert(vp_1, "UI library required")
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
uf = uP(uG)
tW = fn873
tJ = fn110
uA = fn75(ReplicatedStorage)
uv = fn75(Workspace)
State = uf.State
State.CollectStatus = "Idle"
State.AppleStatus = "Idle"
State.UpgradeStatus = "Idle"
State.BuyStatus = "Idle"
State.PlaceStatus = "Idle"
State.HatchStatus = "Idle"
State.FeedStatus = "Idle"
State.RaceStatus = "Idle"
State.SellStatus = "Idle"
State.MoveBusy = false
ul = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic" }
uh = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Exotic" }
ub = { "Apple", "Carrot", "Beetroot", "Melon", "Pumpkin", "Golden Apple", "Taco" }
t7 = fn351
tH = fn347
uo = function(ar, as)
    local vL
    vL = nil
    if typeof(ar) ~= "Vector3" then
        return false
    end
    vL = tH()
    if not vL then
        return false
    end
    return (pcall(function()
        local vJ = as or 5
        vL.CFrame = CFrame.new(ar + Vector3.new(0, vJ, 0))
        vL.AssemblyLinearVelocity = Vector3.zero
    end))
end
tK = fn229
t2 = function(aI, ...)
    local vQ
    local vS
    local vR
    vQ = nil
    vR = nil
    vS = nil
    vS = table.pack(...)
    vQ = false
    vR = nil
    task.spawn(function()
        vR = table.pack(pcall(aI, table.unpack(vS, 1, vS.n)))
        vQ = true
    end)
    local vT = os.clock() + 15
    while true do
        local vU = not vQ and os.clock() < vT
        if vU then
            task.wait()
            continue
        end
        break
    end
    if not vQ or not vR[1] then
        return nil
    end
    return table.unpack(vR, 2, vR.n)
end
t6 = fn410
tG = { ready = false, missing = {} }
if (not tU or uu) and (not tU and not t6) or tP and t6 and (t6 or tU) or not ((not tU or uu) and (not tU and not t6) or tP and t6 and (t6 or tU)) then
    uD = fn297
    t2(fn357)
    t0 = function(bj, ...)
        local v8
        if not tG.Mail then
            return false
        end
        v8 = table.pack(...)
        return (pcall(function()
            tG.Mail:FireServer(bj, table.unpack(v8, 1, v8.n))
        end))
    end
    us = function(bq, ...)
        local wa
        local wc_2
        local wb_2
        if not tG.Mail then
            return nil
        end
        wa = table.pack(...)
        wb_2, wc_2 = pcall(function()
            return tG.Mail:Call(bq, table.unpack(wa, 1, wa.n))
        end)
        local wd = not wb_2
        local wh = if wd then 1 else 0
        local wf = 1440 * wh + 1051 * (1 - wh)
        local wg = 2393 * wh + 312 * (1 - wh)
        if not ((wf * 3533 + wg * 3153 + wf * wg) % 16777213 == 16078569) then
            wd = type(wc_2) ~= "table"
        end
        if wd then
            return nil
        end
        return wc_2
    end
else
    t0 = fn357
    uD(t0)
    us = function(bj, ...)
        local v8
        if not tG.Mail then
            return false
        end
        v8 = table.pack(...)
        return (pcall(function()
            tG.Mail:FireServer(bj, table.unpack(v8, 1, v8.n))
        end))
    end
    t2 = function(bq, ...)
        local wa
        local wc_1
        local wb_1
        if not tG.Mail then
            return nil
        end
        wa = table.pack(...)
        wb_1, wc_1 = pcall(function()
            return tG.Mail:Call(bq, table.unpack(wa, 1, wa.n))
        end)
        local wd = not wb_1
        local wh = if wd then 1 else 0
        local wf = 1440 * wh + 1051 * (1 - wh)
        local wg = 2393 * wh + 312 * (1 - wh)
        if not ((wf * 3533 + wg * 3153 + wf * wg) % 16777213 == 16078569) then
            wd = type(wc_1) ~= "table"
        end
        if wd then
            return nil
        end
        return wc_1
    end
end
tE = function(bA, bB)
    local wj_1
    local wi_1
    if not tG.Data then
        return bB
    end
    wi_1, wj_1 = pcall(function()
        return tG.Data:Get(bA, true)
    end)
    if not wi_1 or wj_1 == nil then
        return bB
    end
    return wj_1
end
t1 = fn487
tP = fn55
uu = fn557
uk = fn598
ua = function(bT)
    local bU = {}
    pcall(function()
        for i, v in ipairs(CollectionService:GetTagged("Interaction")) do
            local wz = v:IsDescendantOf(uv) and v:GetAttribute("InteractType") == bT
            if wz then
                table.insert(bU, v)
            end
        end
    end)
    return bU
end
ud = function(b4)
    local wI_1
    local wH_1
    if typeof(b4) ~= "Instance" then
        return nil
    end
    local wM = if b4:IsA("BasePart") then 1 else 0
    if wM == 1 then
        return b4.Position
    elseif b4:IsA("Model") then
        wH_1, wI_1 = pcall(function()
            return b4:GetPivot()
        end)
        if wH_1 then
            return wI_1.Position
        end
        return nil
    else
        return nil
    end
end
tR = fn1093
tN = fn991
ui = function(cs)
    local w0 = typeof(cs) ~= "Instance" or not cs:IsA("Tool")
    if w0 then
        return false
    end
    local Character = LocalPlayer.Character
    local w1 = Character and Character:FindFirstChildOfClass("Humanoid")
    local w_ = w1
    if not w_ then
        return false
    elseif cs.Parent == Character then
        return true
    else
        pcall(function()
            w_:EquipTool(cs)
        end)
        task.wait(0.25)
        return cs.Parent == Character
    end
end
uB = fn1129
tO = fn693
uq = function(cQ, cR)
    local generation
    local xA = cQ.generation or 0
    cQ.generation = xA + 1
    cQ.stopped = false
    generation = cQ.generation
    task.spawn(function()
        local xx_1
        while true do
            local xw = tJ() and not cQ.stopped and cQ.generation == generation
            local xw_1
            if xw then
                xw_1, xx_1 = pcall(cR)
                if not xw_1 then
                    warn("[Ouroboros] loop error: " .. tostring(xx_1))
                end
                local xw_2 = not tJ() or cQ.stopped or cQ.generation ~= generation
                if xw_2 then
                    break
                end
                task.wait(cQ.interval)
                continue
            end
            break
        end
    end)
end
un = fn423
uc = { interval = 5 }
t8 = { interval = 1.2 }
t4 = { interval = 10 }
tZ = { interval = 4, rarities = { "Common" } }
tU = { interval = 2.5, rarities = { "Common" }, maxEggs = 3 }
tQ = { interval = 2, needRoom = true }
tI = { interval = 1.5, fruits = { "Apple" }, keep = 0, horses = {} }
tD = { interval = 5, priority = "Best Horse" }
uz = { interval = 8, rarities = {}, maxLevel = 5, keep = 1 }
local function uR()
    local xN, xO
    xO = {}
    for i, v in ipairs(ua("StableSign")) do
        if v:GetAttribute("InteractOwner") == LocalPlayer.UserId then
            table.insert(xO, v)
        end
    end
    if #xO == 0 then
        State.CollectStatus = "No owned stable sign"
        return
    end
    xN = 0
    tK(function()
        for i, v in ipairs(xO) do
            local xE = not tJ() or uc.stopped
            if xE then
                break
            else
                local xE_1 = tonumber(v:GetAttribute("StoredCash")) or 0
                local xE_2 = xE_1 > 0 and tR(v)
                if xE_2 then
                    xN += xE_1
                    task.wait(0.35)
                end
            end
        end
    end)
    local xP = xN > 0 and "Collected $" .. t7(xN)
    local xQ = xP or "Waiting for cash"
    State.CollectStatus = xQ
end
local function uT()
    local x0
    local x2_1
    local x1 = tH()
    if not x1 then
        State.AppleStatus = "No character"
        return
    end
    x0, x2_1 = nil, nil
    for i, v in ipairs(ua("Tree")) do
        local x3_1 = tonumber(v:GetAttribute("Fruit")) or 0
        if x3_1 > 0 then
            local x3_2 = ud(v)
            if x3_2 then
                local Magnitude = (x3_2 - x1.Position).Magnitude
                if not x2_1 or Magnitude < x2_1 then
                    x0, x2_1 = v, Magnitude
                end
            end
        end
    end
    if not x0 then
        State.AppleStatus = "No ripe trees"
        return
    end
    local x1_1 = x0:GetAttribute("FruitType") or "Fruit"
    local x2_2 = tostring(x1_1)
    local x1_2 = tK(function()
        return tR(x0)
    end)
    local x1_3 = x1_2 and "Picked " .. x2_2 or "Pick failed"
    State.AppleStatus = x1_3
end
uw = fn1100
uy = fn939
local function uK()
    local yY
    yY = nil
    local yX, yZ
    yY = tO(tU.rarities)
    if not next(yY) then
        State.PlaceStatus = "No rarity selected"
        return
    end
    if uy() >= math.max(1, tU.maxEggs) then
        State.PlaceStatus = "Placed limit reached"
        return
    end
    yZ = uB(function(es)
        local yL = es.Name == "Egg" and yY[tostring(es:GetAttribute("Name"))] == true
        return yL
    end)
    if not yZ then
        State.PlaceStatus = "No matching egg held"
        return
    end
    yX = tN()
    if not yX then
        State.PlaceStatus = "Base bounds unavailable"
        return
    end
    local y_ = tostring(yZ:GetAttribute("Name"))
    local y0 = tK(function()
        if not ui(yZ) then
            return false
        end
        local yN = yX.Size * 0.5
        local yO = math.max(0, yN.X - 4)
        local yP = math.max(0, yN.Z - 4)
        local yU = 1
        while yU <= 6 do
            local yN_1 = not tJ() or tU.stopped
            if yN_1 then
                return false
            end
            local yN_2 = yX.CFrame * CFrame.new((math.random() * 2 - 1) * yO, 0, (math.random() * 2 - 1) * yP)
            local yQ = CFrame.new(yN_2.X, yX.Position.Y + yX.Size.Y + 1.5, yN_2.Z)
            local yN_3 = us("RequestPlace", yQ)
            if yN_3 and yN_3.Success then
                return true
            end
            task.wait(0.25)
            yU += 1
        end
        return false
    end)
    local y__1 = y0 and "Placed " .. y_ .. " egg" or "Placement rejected"
    State.PlaceStatus = y__1
end
local function uO()
    local y6
    if tQ.needRoom then
        local y7_1 = uu()
        local y8_1 = y7_1 > 0 and tP() >= y7_1
        if y8_1 then
            State.HatchStatus = "Stable full (" .. tP() .. "/" .. y7_1 .. ")"
            return
        end
    end
    y6 = nil
    for i, v in ipairs(ua("HatchEgg")) do
        local y7_2 = v:GetAttribute("Owner") == LocalPlayer.UserId and v:GetAttribute("Ready") == true
        if y7_2 then
            y6 = v
            break
        end
    end
    if not y6 then
        State.HatchStatus = "No ready egg"
        return
    end
    local y7_3 = tK(function()
        return tR(y6)
    end)
    local y7_4 = y7_3 and "Hatched an egg" or "Hatch failed"
    State.HatchStatus = y7_4
end
tT = fn898
um = fn401
tV = fn311
local function uS()
    local zS
    local zP
    zP = nil
    zS = nil
    local zQ, zR
    zP = tO(tI.fruits)
    if not next(zP) then
        State.FeedStatus = "No fruit selected"
        return
    end
    zR = tT()
    local zT = tO(tI.horses)
    if next(zT) then
        local zU_1 = {}
        for i, v in ipairs(zR) do
            if zT[v.Name] then
                table.insert(zU_1, v)
            end
        end
        zR = zU_1
        if #zR == 0 then
            State.FeedStatus = "Chosen horse not spawned"
            return
        end
    end
    if #zR == 0 then
        State.FeedStatus = "No owned horse spawned"
        return
    end
    zS = math.max(0, tI.keep)
    zQ = uB(function(fF)
        if not zP[fF.Name] then
            return false
        end
        local zE = tonumber(fF:GetAttribute("Quantity"))
        return zE == nil or zE > zS
    end)
    if not zQ then
        State.FeedStatus = "No spare fruit"
        return
    end
    local Name = zQ.Name
    local zU_2 = tK(function()
        if not ui(zQ) then
            return false
        end
        for i, v in ipairs(zR) do
            local zH = not tJ() or tI.stopped
            if zH then
                break
            elseif tR(v) then
                return true
            end
        end
        return false
    end)
    local zT_2 = zU_2 and "Fed " .. Name
    local zZ = if zT_2 then 1 else 0
    local zX = 3124 * zZ + 3947 * (1 - zZ)
    local zY = 1731 * zZ + 3385 * (1 - zZ)
    if not ((zX * 705 + zY * 1178 + zX * zY) % 16777213 == 9649182) then
        zT_2 = "Feed failed"
    end
    State.FeedStatus = zT_2
end
t3 = { signup = nil, select = nil }
tY = fn246
uC = function()
    for k, v in pairs(t3) do
        local AZ = v
        if AZ then
            pcall(function()
                AZ:Disconnect()
            end)
            t3[k] = nil
        end
    end
end
ue = fn1075
local function uH(hi, hj, hk, hl)
    hi.SetEnabled = function(hm)
        if hm then
            uq(hi, hj)
        else
            un(hi)
            State[hl] = hk
        end
    end
end
uH(uc, uR, "Idle", "CollectStatus")
uH(t8, uT, "Idle", "AppleStatus")
uH(t4, fn377, "Idle", "UpgradeStatus")
uH(tZ, fn1128, "Idle", "BuyStatus")
uH(tU, uK, "Idle", "PlaceStatus")
uH(tQ, uO, "Idle", "HatchStatus")
uH(tI, uS, "Idle", "FeedStatus")
uH(uz, fn623, "Idle", "SellStatus")
tD.SetEnabled = fn685
uf.Track(fn843)
local function uN()
    local FP
    local FL
    local FN
    local FO
    FL = nil
    FN = nil
    FO = nil
    FP = nil
    local FM, SaveManager, FR, FS, FT, FU, ThemeManager, Options, onDiscord, FY, FZ, F_, F0, Library, Toggles
    local F3 = "v0.2"
    FP = "https://discord.gg/synapsex"
    FU = "https://ouroboros-hub-rbx.web.app/"
    F0 = "https://rscripts.net/@Ouroboros"
    F_ = "Race Horses"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    tM(uf, Library)
    local F4 = #tG.missing > 0 and "missing: " .. table.concat(tG.missing, ", ")
    local F5 = F4 or "bindings ready"
    local F4_1 = {}
    if tW(getgenv) then
        table.insert(F4_1, "getgenv")
    end
    local F5_1 = tW(setclipboard) or tW(toclipboard)
    if F5_1 then
        table.insert(F4_1, "clipboard")
    end
    local F5_2 = #F4_1 > 0 and table.concat(F4_1, "+")
    FT = (F5_2 or "basic") .. " | " .. F5
    FO = function(ic, id)
        local Bs = tW(setclipboard) and setclipboard
        local Bt = Bs
        if not Bt then
            local Bs_1 = tW(toclipboard) and toclipboard
            Bt = Bs_1 or nil
        end
        local Bs_2 = Bt
        if not Bs_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local Bt_1 = pcall(Bs_2, ic)
        if Bt_1 then
            Library:Notify(id)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        FO(FP, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = FP, Copyable = true }, "|", F_, "|", F3 },
        Icon = 132608042600488,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    FR = {
        [1] = Window:AddTab("Info", "info"),
        [2] = Window:AddTab("Main", "gamepad-2"),
        [3] = Window:AddTab("Player", "person-standing"),
        [4] = Window:AddTab("Settings", "settings")
    }
    FM = FR[2]:AddSubTab("Stable", "warehouse")
    FY = FR[2]:AddSubTab("Eggs", "egg")
    FS = FR[2]:AddSubTab("Horses", "rabbit")
    FN = function(iv)
        iv:AddDiscordBox(nil, {
            Banner = 95892854151512,
            Avatar = 132608042600488,
            Title = "Ouroboros Hub",
            Subtitle = "Dupes, keyless scripts and updates",
            Status = "online",
            Accent = Color3.fromRGB(88, 101, 242),
            Link = FP,
            Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
        })
        return iv
    end
    local function F3_1(iy)
        return FN(iy:AddLeftGroupbox("Discord", "message-circle"))
    end
    F3_1(FM)
    F3_1(FY)
    F3_1(FS)
    F3_1(FR[3])
    F3_1(FR[4])
    local function F3_2()
        local BR
        local BP
        local BW
        local BS
        local BZ
        BP = nil
        BR = nil
        BS = nil
        BW = nil
        BZ = nil
        local BO, Label, Label3, BU, BV, Label2, BY, B_
        BZ = function(iC)
            return (tostring(iC):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        BW = function(iE, iF)
            return string.format('<font color="%s">%s</font>', iF, BZ(iE))
        end
        BO = function(iI, iJ, iK)
            return string.format("<b>%s</b> %s %s", iI, BW("-", "#5a6070"), BW(iJ, iK))
        end
        BS = "Unknown"
        BY = "#7fd47f"
        local B1 = "#8b93a3"
        BV = "#e8a34d"
        pcall(function()
            local Bx_1
            local Bw_1
            if type(identifyexecutor) == "function" then
                Bx_1, Bw_1 = identifyexecutor()
                local By = Bx_1 ~= ""
                local Bz = type(Bx_1) == "string" and By
                if Bz then
                    local By_1 = type(Bw_1) == "string" and Bw_1 ~= "" and Bx_1 .. " " .. Bw_1
                    BS = By_1 or Bx_1
                end
            end
        end)
        BP = os.clock()
        BU = function()
            local BH = math.floor(os.clock() - BP)
            if BH < 60 then
                return BH .. "s"
            elseif BH < 3600 then
                return string.format("%dm %ds", BH // 60, BH % 60)
            else
                return string.format("%dh %dm", BH // 3600, BH % 3600 // 60)
            end
        end
        local UserGroup = FR[1]:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(BO("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, BY), true)
        UserGroup:AddLabel(BO("UserId", tostring(LocalPlayer.UserId), "#6ec1ff"), true)
        UserGroup:AddLabel(BO("Executor", BS .. "  " .. FT, BY), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(BO("Session", BU(), BV), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                FO(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                FO("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        FN(FR[1]:AddRightGroupbox("Discord", "message-circle"))
        local SessionGroup = FR[1]:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(BO("Game", F_, "#6ec1ff"), true)
        Label2 = SessionGroup:AddLabel(BO("Players", "0/0", BY), true)
        B_ = tostring(game.JobId)
        local B0 = #B_ > 18 and string.sub(B_, 1, 18) .. "..."
        local B0_1 = B0 or B_
        SessionGroup:AddLabel(BO("Job", B0_1, B1), true)
        Label = SessionGroup:AddLabel(BO("Ping", "0 ms", BV), true)
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
                FO(B_, "Copied Job ID")
            end
        })
        BR = task.spawn(function()
            local BK_1
            local BJ_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(BO("Session", BU(), BV))
                Label2:SetText(BO("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), BY))
                BJ_1, BK_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local BJ_2 = BJ_1 and BK_1 .. " ms" or "n/a"
                Label:SetText(BO("Ping", BJ_2, BV))
            end
        end)
        uf.Track(function()
            if coroutine.status(BR) ~= "dead" then
                task.cancel(BR)
            end
        end)
        local SocialsGroup = FR[1]:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                FO(F0, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                FO(FU, "Copied website link")
            end
        })
    end
    F3_2()
    FL = {}
    FZ = function(jP, jQ)
        table.insert(FL, { label = jP, key = jQ })
    end
    local function F3_3()
        local lu
        local StableGroup = FM:AddRightGroupbox("Stable", "coins")
        FZ(StableGroup:AddLabel(State.CollectStatus, true), "CollectStatus")
        StableGroup:AddToggle("AutoCollect", {
            Text = "Auto Collect",
            Default = false,
            Callback = function(jY)
                uc.SetEnabled(jY)
            end
        })
        StableGroup:AddDivider()
        FZ(StableGroup:AddLabel(State.UpgradeStatus, true), "UpgradeStatus")
        StableGroup:AddToggle("AutoUpgradeStable", {
            Text = "Auto Upgrade Stable",
            Default = false,
            Callback = function(j1)
                t4.SetEnabled(j1)
            end
        })
        local OrchardGroup = FM:AddRightGroupbox("Orchard", "apple")
        FZ(OrchardGroup:AddLabel(State.AppleStatus, true), "AppleStatus")
        OrchardGroup:AddToggle("AutoApples", {
            Text = "Auto Pick Apples",
            Default = false,
            Callback = function(j6)
                t8.SetEnabled(j6)
            end
        })
        local EggShopGroup = FY:AddRightGroupbox("Egg Shop", "shopping-cart")
        FZ(EggShopGroup:AddLabel(State.BuyStatus, true), "BuyStatus")
        EggShopGroup:AddToggle("AutoBuyEggs", {
            Text = "Auto Buy Eggs",
            Default = false,
            Callback = function(kc)
                tZ.SetEnabled(kc)
            end
        })
        EggShopGroup:AddDropdown("BuyEggRarities", {
            Text = "Egg rarities to buy",
            Values = ul,
            Default = { "Common" },
            Multi = true,
            Callback = function(ki)
                tZ.rarities = ki
            end
        })
        local PlacementGroup = FY:AddLeftGroupbox("Placement", "map-pin")
        FZ(PlacementGroup:AddLabel(State.PlaceStatus, true), "PlaceStatus")
        PlacementGroup:AddToggle("AutoPlaceEggs", {
            Text = "Auto Place Eggs",
            Default = false,
            Callback = function(kl)
                tU.SetEnabled(kl)
            end
        })
        PlacementGroup:AddDropdown("PlaceEggRarities", {
            Text = "Egg rarities to place",
            Values = ul,
            Default = { "Common" },
            Multi = true,
            Callback = function(kp)
                tU.rarities = kp
            end
        })
        PlacementGroup:AddSlider("MaxPlacedEggs", {
            Text = "Max eggs placed at once",
            Default = 3,
            Min = 1,
            Max = 10,
            Rounding = 0,
            Callback = function(kr)
                tU.maxEggs = kr
            end
        })
        local HatchingGroup = FY:AddLeftGroupbox("Hatching", "sparkles")
        FZ(HatchingGroup:AddLabel(State.HatchStatus, true), "HatchStatus")
        HatchingGroup:AddToggle("AutoHatchEggs", {
            Text = "Auto Hatch Eggs",
            Default = false,
            Callback = function(kv)
                tQ.SetEnabled(kv)
            end
        })
        HatchingGroup:AddToggle("HatchOnlyWithRoom", {
            Text = "Only hatch when the stable has room",
            Default = true,
            Callback = function(kz)
                tQ.needRoom = kz
            end
        })
        local FeedingGroup = FS:AddRightGroupbox("Feeding", "carrot")
        FZ(FeedingGroup:AddLabel(State.FeedStatus, true), "FeedStatus")
        FeedingGroup:AddToggle("AutoFeedHorses", {
            Text = "Auto Feed Horses",
            Default = false,
            Callback = function(kD)
                tI.SetEnabled(kD)
            end
        })
        FeedingGroup:AddDropdown("FeedFruits", {
            Text = "Fruit to feed",
            Values = ub,
            Default = { "Apple" },
            Multi = true,
            Callback = function(kJ)
                tI.fruits = kJ
            end
        })
        local FeedHorsesDropdown = FeedingGroup:AddDropdown("FeedHorses", {
            Text = "Horses to feed (empty feeds all)",
            Values = tV(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Callback = function(kN)
                tI.horses = kN
            end
        })
        FeedingGroup:AddSlider("FeedKeep", {
            Text = "Keep this many of each fruit",
            Default = 0,
            Min = 0,
            Max = 20,
            Rounding = 0,
            Callback = function(kQ)
                tI.keep = kQ
            end
        })
        local RacingGroup = FS:AddRightGroupbox("Racing", "flag")
        FZ(RacingGroup:AddLabel(State.RaceStatus, true), "RaceStatus")
        RacingGroup:AddToggle("AutoRace", {
            Text = "Auto Race",
            Default = false,
            Callback = function(kT)
                tD.SetEnabled(kT)
            end
        })
        RacingGroup:AddDropdown("RacePriority", {
            Text = "Race priority",
            Values = { "Best Horse", "Random Horse" },
            Default = "Best Horse",
            Multi = false,
            Callback = function(kX)
                tD.priority = kX
            end
        })
        local SellingGroup = FS:AddLeftGroupbox("Selling", "hand-coins")
        FZ(SellingGroup:AddLabel(State.SellStatus, true), "SellStatus")
        SellingGroup:AddToggle("AutoSellHorses", {
            Text = "Auto Sell",
            Default = false,
            Callback = function(k_)
                uz.SetEnabled(k_)
            end
        })
        SellingGroup:AddDropdown("SellRarities", {
            Text = "Horse rarities to sell",
            Values = uh,
            Default = {},
            Multi = true,
            Callback = function(k5)
                uz.rarities = k5
            end
        })
        SellingGroup:AddSlider("SellMaxLevel", {
            Text = "Only sell up to level",
            Default = 5,
            Min = 1,
            Max = 100,
            Rounding = 0,
            Callback = function(k7)
                uz.maxLevel = k7
            end
        })
        SellingGroup:AddSlider("SellKeep", {
            Text = "Always keep this many horses",
            Default = 1,
            Min = 1,
            Max = 20,
            Rounding = 0,
            Callback = function(k9)
                uz.keep = k9
            end
        })
        local ld = table.concat(um(), "\x00")
        lu = task.spawn(function()
            local B9 = false
            repeat
                task.wait(0.5)
                if Library.Unloaded then
                    B9 = true
                else
                    for i, v in ipairs(FL) do
                        local Cf = v
                        pcall(function()
                            Cf.label:SetText(tostring(State[Cf.key]))
                        end)
                    end
                    local B5 = tV()
                    local B6 = table.concat(B5, "\x00")
                    if B6 ~= ld then
                        ld = B6
                        pcall(function()
                            FeedHorsesDropdown:SetValues(B5)
                        end)
                    end
                end
            until B9
        end)
        uf.Track(function()
            if coroutine.status(lu) ~= "dead" then
                task.cancel(lu)
            end
        end)
    end
    F3_3()
    local function F3_4()
        local lD
        local lE
        local lC
        local lF
        local MovementGroup = FR[3]:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = FR[3]:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        lD = {}
        lF = {}
        local lB = {}
        lE = {}
        lC = {}
        local function lG()
            for k, v in lC do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(lC)
        end
        local function lK()
            for k, v in lD do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(lD)
        end
        local function lO()
            for k, v in lE do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(lE)
        end
        local function lS(lT)
            if not lT:IsA("ProximityPrompt") then
                return
            end
            if lF[lT] == nil then
                lF[lT] = {
                    HoldDuration = lT.HoldDuration,
                    MaxActivationDistance = lT.MaxActivationDistance,
                    RequiresLineOfSight = lT.RequiresLineOfSight
                }
            end
            lT.HoldDuration = 0
            lT.MaxActivationDistance = 50
            lT.RequiresLineOfSight = false
        end
        local function lV()
            for k, v in lF do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(lF)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                lO()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                lK()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                lG()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                    pcall(lS, v)
                end
            else
                lV()
            end
        end)
        table.insert(lB, Workspace.DescendantAdded:Connect(function(md)
            if Toggles.InstantProximityPrompt.Value then
                lS(md)
            end
        end))
        table.insert(lB, ut.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if lC[v] == nil then
                        lC[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(lB, up.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Da = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and Da then
                Da:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(lB, ut.RenderStepped:Connect(function(mz)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Dg = Character and Character:FindFirstChildOfClass("Humanoid")
            local Dh = Character
            if Dh then
                Dh = Character:FindFirstChild("HumanoidRootPart")
            end
            local Df_1 = Dh
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and Dg then
                if lD[Dg] == nil then
                    lD[Dg] = Dg.WalkSpeed
                end
                Dg.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and Df_1 and Dg and CurrentCamera then
                if lE[Dg] == nil then
                    lE[Dg] = Dg.PlatformStand
                end
                Dg.PlatformStand = true
                local Dh_4 = Vector3.zero
                if not up:GetFocusedTextBox() then
                    if up:IsKeyDown(Enum.KeyCode.W) then
                        Dh_4 += CurrentCamera.CFrame.LookVector
                    end
                    if up:IsKeyDown(Enum.KeyCode.S) then
                        Dh_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if up:IsKeyDown(Enum.KeyCode.A) then
                        Dh_4 -= CurrentCamera.CFrame.RightVector
                    end
                    local Dn = if up:IsKeyDown(Enum.KeyCode.D) then 1 else 0
                    if Dn == 1 then
                        Dh_4 += CurrentCamera.CFrame.RightVector
                    end
                    if up:IsKeyDown(Enum.KeyCode.Space) then
                        Dh_4 += Vector3.new(0, 1, 0)
                    end
                    local Dn_1 = if up:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                    if Dn_1 == 1 then
                        Dh_4 -= Vector3.new(0, 1, 0)
                    end
                end
                Df_1.AssemblyLinearVelocity = Vector3.zero
                if Dh_4.Magnitude > 0 then
                    Df_1.CFrame = Df_1.CFrame + Dh_4.Unit * Options.FlySpeed.Value * mz
                end
            end
        end))
        uf.Track(function()
            for k, v in lB do
                v:Disconnect()
            end
            lG()
            lK()
            lO()
            lV()
        end)
    end
    F3_4()
    local function F3_5()
        local Eu, Ev, Ew, Ex, Label, Ez, EA, EB, EC, ED, EE, EF, EG, EH
        Ez = {}
        EH = {}
        EE = nil
        EF = 0
        Ev = false
        EB = 0
        Ew = os.clock()
        local MenuGroup = FR[4]:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        EC = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local Dw = not CurrentCamera or not tW(uj.CaptureController) or not tW(uj.ClickButton2)
            if Dw then
                return false
            end
            local Dw_1 = pcall(function()
                uj:CaptureController()
                uj:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not Dw_1 then
                return false
            end
            EF += 1
            Ew = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. EF)
            end)
            return true
        end
        Ex = function(ni)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not ni)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not ni
                end
            end)
            if not ni then
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
        Eu = function(ny)
            if ny.ClassName == "ParticleEmitter" or ny.ClassName == "Trail" or ny.ClassName == "Smoke" or ny.ClassName == "Fire" or ny.ClassName == "Sparkles" or ny.ClassName == "Explosion" or ny.ClassName == "Beam" then
                if Ez[ny] == nil then
                    Ez[ny] = ny.Enabled
                end
                pcall(function()
                    ny.Enabled = false
                end)
            end
        end
        EG = function()
            for k, v in Ez do
                local DL = k
                local DN = v
                if DL.Parent then
                    pcall(function()
                        DL.Enabled = DN
                    end)
                end
            end
            table.clear(Ez)
            if EE then
                pcall(function()
                    settings().Rendering.QualityLevel = EE.Quality
                end)
                Lighting.GlobalShadows = EE.Shadows
                Lighting.FogEnd = EE.Fog
                EE = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(nN)
                pcall(function()
                    ut:Set3dRenderingEnabled(not nN)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(nS)
                if nS then
                    if not EE then
                        EE = {
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
                        pcall(Eu, v)
                    end
                else
                    EG()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        Ex(true)
        local ScriptGroup = FR[4]:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            Ex(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            Ex(true)
        end
        table.insert(EH, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                EC()
            end
        end))
        table.insert(EH, Workspace.DescendantAdded:Connect(function(oa)
            if Toggles.FpsBoost.Value then
                Eu(oa)
            end
        end))
        ED = function(oe)
            local D0 = Ev
            local D5 = if D0 then 1 else 0
            local D3 = 2646 * D5 + 3854 * (1 - D5)
            local D4 = 3163 * D5 + 898 * (1 - D5)
            if not ((D3 * 2640 + D4 * 841 + D3 * D4) % 16777213 == 1237608) then
                D0 = Library.Unloaded
            end
            if not D0 then
                D0 = not Toggles.AutoReconnect.Value
            end
            if D0 then
                return
            end
            Ev = true
            local D_ = EB
            local D0_1 = pcall(function()
                if oe then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not D0_1 then
                Ev = false
                if not oe and D_ == EB then
                    task.delay(1.5, function()
                        if D_ == EB then
                            ED(true)
                        end
                    end)
                end
            end
        end
        table.insert(EH, TeleportService.TeleportInitFailed:Connect(function(oz)
            local D7
            if oz == LocalPlayer and Ev then
                Ev = false
                D7 = EB
                task.delay(3, function()
                    if D7 == EB then
                        ED(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local Ei = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not Ei then
                return
            end
            table.insert(EH, Ei.ChildAdded:Connect(function(oO)
                if oO.Name == "ErrorPrompt" then
                    ED(false)
                end
            end))
        end)
        EA = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    Ex(true)
                end
                local El = Toggles.AntiAfk.Value and os.clock() - Ew >= 60
                if El then
                    EC()
                end
                task.wait(1)
            end
        end)
        uf.Track(function()
            EB += 1
            for k, v in EH do
                v:Disconnect()
            end
            pcall(task.cancel, EA)
            Ex(false)
            EG()
            pcall(function()
                ut:Set3dRenderingEnabled(true)
            end)
        end)
    end
    F3_5()
    local function F3_6()
        local Fu
        Fu = nil
        local Fv, Fw
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(FR[4])
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/RaceHorses")
        local Fx = SaveManager:BuildConfigSection(FR[4])
        Fu = function(pe, pf)
            local EL_1 = (pe == "Toggle" and Toggles or Options)[pf]
            local EK_2 = type(EL_1) == "table" and EL_1.Type == pe
            return EK_2 and EL_1 or nil
        end
        Fw = function(po, pp)
            local Type = pp.Type
            if Type == "Toggle" then
                return { idx = po, type = "Toggle", value = pp.Value == true }
            elseif Type == "Slider" then
                return { idx = po, type = "Slider", value = tostring(pp.Value) }
            elseif Type == "Dropdown" then
                return { idx = po, type = "Dropdown", multi = pp.Multi == true, value = pp.Value }
            elseif Type == "Input" then
                local ES_1 = pp.Value or ""
                return { idx = po, type = "Input", text = tostring(ES_1) }
            elseif Type == "ColorPicker" then
                return { idx = po, type = "ColorPicker", value = pp.Value:ToHex(), transparency = pp.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = po,
                    type = "KeyPicker",
                    key = pp.Value,
                    mode = pp.Mode,
                    syncToggleState = pp.SyncToggleState or nil
                }
            else
                return nil
            end
        end
        Fv = function(ps)
            local EV = type(ps) ~= "table" or type(ps.idx) ~= "string" or type(ps.type) ~= "string"
            if EV then
                return false
            end
            local EV_1 = Fu(ps.type, ps.idx)
            if not EV_1 then
                return false
            end
            local EW = ps.type == "Toggle" and type(ps.value) == "boolean"
            if EW then
                EV_1:SetValue(ps.value)
                return true
            elseif ps.type == "Slider" then
                local EW_1 = tonumber(ps.value)
                if EW_1 then
                    EV_1:SetValue(EW_1)
                    return true
                end
                return false
            elseif ps.type == "Dropdown" then
                EV_1:SetValue(ps.value)
                return true
            else
                local EW_2 = ps.type == "Input" and type(ps.text) == "string"
                if EW_2 then
                    EV_1:SetValue(ps.text)
                    return true
                end
                local EW_3 = ps.type == "ColorPicker" and type(ps.value) == "string"
                if EW_3 then
                    EV_1:SetValueRGB(Color3.fromHex(ps.value))
                    if type(ps.transparency) == "number" then
                        EV_1:SetTransparency(ps.transparency)
                    end
                    return true
                end
                local EW_4 = ps.type == "KeyPicker" and type(ps.key) == "string"
                if EW_4 then
                    local key = ps.key
                    local EX = ps.mode or "Toggle"
                    EV_1:SetValue({ key, EX })
                    return true
                end
                return false
            end
        end
        Fx:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Default = "", Finished = true, AllowEmpty = true })
        Fx:AddButton({
            Text = "Export Config to Clipboard",
            Func = function()
                local E3_2
                local E2_4
                local E1 = {}
                for k, v in Toggles do
                    if k ~= "MenuKeybind" then
                        local E2_1 = Fw(k, v)
                        if E2_1 then
                            table.insert(E1, E2_1)
                        end
                    end
                end
                for k, v in Options do
                    if k ~= "MenuKeybind" and k ~= "SaveManager_ImportSource" then
                        local E2_3 = Fw(k, v)
                        if E2_3 then
                            table.insert(E1, E2_3)
                        end
                    end
                end
                table.sort(E1, function(pH, pI)
                    return pH.idx < pI.idx
                end)
                E2_4, E3_2 = pcall(ug.JSONEncode, ug, { objects = E1 })
                if not E2_4 then
                    Library:Notify("Failed to encode config")
                    return
                end
                FO(E3_2, "Copied config to clipboard")
            end
        })
        Fx:AddButton({
            Text = "Import Config from Clipboard Text",
            Func = function()
                local Fi = Options.SaveManager_ImportSource and Options.SaveManager_ImportSource.Value or ""
                local Fi_2
                local Fi_1 = Fi == ""
                local Fj = type(Fi) ~= "string" or Fi_1
                local Fj_1
                if Fj then
                    Library:Notify("Paste a config first")
                    return
                end
                if #Fi > 262144 then
                    Library:Notify("That config is too large")
                    return
                end
                Fi_2, Fj_1 = pcall(ug.JSONDecode, ug, Fi)
                local Fh_2 = not Fi_2 or type(Fj_1) ~= "table" or type(Fj_1.objects) ~= "table"
                if Fh_2 then
                    Library:Notify("That is not a valid exported config")
                    return
                end
                if #Fj_1.objects > 2048 then
                    Library:Notify("That config has too many records")
                    return
                end
                local Fh_3 = 0
                for i, v in ipairs(Fj_1.objects) do
                    if Fv(v) then
                        Fh_3 += 1
                    end
                end
                if Fh_3 == 0 then
                    Library:Notify("No settings in that config matched this script")
                    return
                end
                Options.SaveManager_ImportSource:SetValue("")
                local Fj_2 = Fh_3 == 1 and "" or "s"
                Library:Notify(("Imported %d setting%s"):format(Fh_3, Fj_2), 6)
            end
        })
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        local Fx_1 = {
            {
                "BuyEggRarities",
                function(p2)
                    tZ.rarities = p2
                end
            },
            {
                "PlaceEggRarities",
                function(p5)
                    tU.rarities = p5
                end
            },
            {
                "MaxPlacedEggs",
                function(p8)
                    tU.maxEggs = p8
                end
            },
            {
                "FeedFruits",
                function(qa)
                    tI.fruits = qa
                end
            },
            {
                "FeedHorses",
                function(qd)
                    tI.horses = qd
                end
            },
            {
                "FeedKeep",
                function(qf)
                    tI.keep = qf
                end
            },
            {
                "RacePriority",
                function(qh)
                    tD.priority = qh
                end
            },
            {
                "SellRarities",
                function(qk)
                    uz.rarities = qk
                end
            },
            {
                "SellMaxLevel",
                function(qn)
                    uz.maxLevel = qn
                end
            },
            {
                "SellKeep",
                function(qp)
                    uz.keep = qp
                end
            }
        }
        for i, v in ipairs(Fx_1) do
            local Fx_2 = Options[v[1]]
            if Fx_2 then
                v[2](Fx_2.Value)
            end
        end
        if Toggles.HatchOnlyWithRoom then
            tQ.needRoom = Toggles.HatchOnlyWithRoom.Value
        end
        local Fx_3 = {
            { "AutoCollect", uc },
            { "AutoUpgradeStable", t4 },
            { "AutoApples", t8 },
            { "AutoBuyEggs", tZ },
            { "AutoPlaceEggs", tU },
            { "AutoHatchEggs", tQ },
            { "AutoFeedHorses", tI },
            { "AutoRace", tD },
            { "AutoSellHorses", uz }
        }
        for i, v in ipairs(Fx_3) do
            local Fx_4 = Toggles[v[1]]
            if Fx_4 then
                v[2].SetEnabled(Fx_4.Value)
            end
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    F3_6()
end
uU_1, uV_1 = pcall(uN)
if not uU_1 then
    local uE_1 = 3
    repeat
        local uF_1 = { "amfvkv", "qgbeuuak", "hgcz", "mjfumqkmlm", "lsgotdds", "nyswpk", "nmljnfxrd" }
        local HQ = uE_1
        local uG_1 = uF_1[HQ % 7 + 1]
        if uG_1:len() >= uG_1:reverse():rep(HQ % 3 + 2):len() then
            pcall(uV_1.Unload)
            error(uf, 0)
        else
            pcall(uf.Unload)
            error(uV_1, 0)
        end
        uE_1 = (uE_1 + 1) % 4
    until (uE_1 * 3 + 1) % 4 == 1
end
