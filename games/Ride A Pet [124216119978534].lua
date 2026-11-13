local fns = {}
local az7_10, az7_11, az7_13, az7_14, az7_15, az7_17, az7_18, az7_19, az7_20, az7_21, az7_22, az7_23, az7_25, az7_27, az7_28, az7_29, az7_32, az7_34, az7_35, CollectionService, az7_39, az7_40, State, az7_42, az7_43, az7_44, az7_45, az7_46, az7_47, az7_49, az7_51, az7_52, az7_54, az7_56, az7_57, az7_58, az7_60, az7_61, az7_62, az7_63, az7_69
fns.az7_1 = nil
fns.az7_2 = nil
fns.az7_5 = nil
fns.az7_6 = nil
fns.az7_9 = nil
az7_10 = nil
az7_11 = nil
az7_13 = nil
az7_14 = nil
az7_15 = nil
az7_17 = nil
az7_18 = nil
az7_20 = nil
az7_21 = nil
az7_22 = nil
az7_23 = nil
az7_25 = nil
az7_27 = nil
az7_28 = nil
az7_29 = nil
az7_32 = nil
az7_34 = nil
az7_35 = nil
CollectionService = nil
az7_39 = nil
az7_40 = nil
State = nil
az7_42 = nil
az7_44 = nil
az7_45 = nil
az7_46 = nil
az7_47 = nil
az7_49 = nil
az7_51 = nil
az7_52 = nil
az7_54 = nil
az7_56 = nil
az7_57 = nil
az7_58 = nil
az7_60 = nil
az7_62 = nil
az7_63 = nil
local VU
local Vi
local Ui
local VH
local UH
local TH
local U5
local T5
local Vu
local TT
local Vh
local U4
local Vt
local Tt
local VS
local Workspace
local TS
local Vg
local Ug
local VF
local UF
local onChildRemoved
local T3
local Vs
local Us
local Ts
local VR
local UR
local TR
local connection
local Uf
local VE
local UE
local TE
local T2
local HttpService
local Ur
local VQ
local UQ
local TQ
local Ve
local Ue
local VD
local UD
local TD
local U1
local T1
local Vq
local Uq
local VP
local UP
local TP
local Vd
local VC
local UC
local TC
local U0
local T0
local Vp
local Up
local VO
local folder
local TO
local Uc
local LocalPlayer
local TB
local V_
local U_
local T_
local Vo
local Uo
local UN
local TN
local Vb
local UA
local TA
local VZ
local TZ
local Vn
local VM
local UM
local TM
local Va
local Ua
local Uz
local VY
function fns.fn20(zG)
    T5.PingUser = zG == true
end
function fns.fn38(hN, hO)
    return UN(hN, hO, State.PlaceRarities, State.PlaceEggs, State.PlaceMinKG)
end
function fns.fn45()
    local Basket = LocalPlayer:FindFirstChild("Basket")
    local X9 = Basket and #Basket:GetChildren()
    local X8_1 = X9
    local Yd = if X8_1 then 1 else 0
    local Yb = 307 * Yd + 123 * (1 - Yd)
    local Yc = 2816 * Yd + 196 * (1 - Yd)
    if not ((Yb * 2323 + Yc * 319 + Yb * Yc) % 16777213 == 2475977) then
        X8_1 = 0
    end
    return X8_1
end
function fns.fn47(pW)
    State.BuyGears = Vd(pW)
end
function fns.fn69(pJ)
    State.AutoHatchLuck = pJ == true
end
function fns.fn75()
    local aaM_1
    local aaJ = T2()
    local aaL = not aaJ or not az7_35
    local aaL_1
    if aaL then
        return nil
    end
    local aaK_1 = Vi()
    aaM_1, aaL_1 = nil, nil
    for i, child in ipairs(az7_35:GetChildren()) do
        local aaN = VC(child)
        local aaO = Vb.stealable(child, aaK_1) and az7_42(child)
        if aaO then
            local Magnitude = (aaN - aaJ.Position).Magnitude
            if not aaL_1 or Magnitude < aaL_1 then
                aaM_1, aaL_1 = child, Magnitude
            end
        end
    end
    return aaM_1
end
function fns.fn76()
    local ahr = fns.az7_1()
    local ahs = ahr and ahr:FindFirstChild("Baseplate")
    if not ahs then
        return false, "Your plot is not loaded"
    elseif not Ua(6) then
        return false, "Automation is moving your character"
    else
        local ahs_1 = VQ(ahs.Position + Vector3.new(0, 8, 0))
        TC()
        if not ahs_1 then
            return false, "Character is unavailable"
        end
        return true
    end
end
function fns.fn79(pL)
    State.AutoSell = pL == true
end
function fns.fn94()
    return az7_23()
end
function fns.fn107(cY, cZ, c_)
    local YJ = T2()
    if not YJ then
        return false
    end
    if math.abs(YJ.Position.Y - cY.Y) > 5 then
        az7_29(Vector3.new(YJ.Position.X, cY.Y, YJ.Position.Z), cZ, c_)
    end
    return az7_29(cY, cZ, c_)
end
function fns.fn110(jH, jI, jJ, jK)
    local aei = jH and az7_60 and az7_60[jH]
    local aej = aei
    if aei then
        aei = tonumber(aej.Income)
    end
    local aej_1 = aei or 0
    if aej_1 <= 0 then
        return 0
    end
    local aej_2 = Vo and tonumber(Vo.WeightStandardKG)
    local aek = aej_2
    local aes = if aek then 1 else 0
    local aeq = 1681 * aes + 2637 * (1 - aes)
    local aer = 1091 * aes + 1250 * (1 - aes)
    if not ((aeq * 851 + aer * 2241 + aeq * aer) % 16777213 == 5709433) then
        aek = 10
    end
    local aej_3 = aek
    if aej_3 <= 0 then
        aej_3 = 10
    end
    local aek_1 = (tonumber(jI))
    local aep = if aek_1 then 1 else 0
    local aen = 2230 * aep + 2174 * (1 - aep)
    local aeo = 163 * aep + 871 * (1 - aep)
    if not ((aen * 3039 + aeo * 1783 + aen * aeo) % 16777213 == 7431089) then
        aek_1 = aej_3
    end
    local ael = aek_1
    return math.floor(math.floor(aej_1 * (ael / aej_3)) * TZ(jJ, jK))
end
function fns.fn117(pf)
    State.PickupRarities = Vd(pf)
end
function fns.fn125(uM)
    State.FeedRarities = Vd(uM)
end
function fns.fn140()
    while Tt() do
        task.wait(0.5)
        local ad9 = Tt() and State.AutoPlace and VZ and VH() == 0 and V_()
        if ad9 then
            if VS() < az7_47 then
                UC()
            else
                T0("Ranch is full - 10 eggs already planted")
            end
        end
    end
end
function fns.fn156()
    local Basket = LocalPlayer:FindFirstChild("Basket")
    local arl
    if Basket then
        for i, child in ipairs(Basket:GetChildren()) do
            local ark_1 = tonumber(child:GetAttribute("BreakAt"))
            if ark_1 and (not arl or ark_1 < arl) then
                arl = ark_1
            end
        end
    end
    local ark_2 = arl and arl - Workspace:GetServerTimeNow()
    local arl_1 = ark_2
    local arx = if arl_1 then 1 else 0
    local arv = 1639 * arx + 954 * (1 - arx)
    local arw = 2350 * arx + 411 * (1 - arx)
    if not ((arv * 1491 + arw * 356 + arv * arw) % 16777213 == 7131999) then
        arl_1 = nil
    end
    return arl_1
end
function fns.fn173()
    local XG = Uf()
    local XH = XG and XG:FindFirstChildOfClass("Humanoid")
    return XH
end
function fns.fn178()
    local ari = not Tt() or not State.AutoPickup
    return ari
end
function fns.fn194(Es)
    local at7 = az7_17.GetStatus(Es)
    return at7, Es == "Pets" and State.PetStats or State.EggStats
end
function fns.fn228(zt)
    T5.EggNames = Vd(zt)
end
function fns.fn240(da, db)
    if not VQ(da) then
        return false
    end
    local YO = os.clock()
    local YQ = YO + (db or Ue)
    while true do
        local YO_1 = Tt() and os.clock() < YQ
        if YO_1 then
            task.wait(0.05)
            U5(da)
            continue
        end
        break
    end
    return Tt()
end
function fns.fn245()
    local Xe = {}
    if not az7_35 then
        table.insert(Xe, "ActiveEggs")
    end
    if not az7_28 then
        table.insert(Xe, "Remotes.Game")
    end
    if not VD or not az7_49 then
        table.insert(Xe, "GameData")
    end
    local Xk = if not TB(fireproximityprompt) then 1 else 0
    if Xk == 1 then
        table.insert(Xe, "fireproximityprompt (auto sell)")
    end
    local Xn = if not TB(getconnections) then 1 else 0
    if Xn == 1 then
        table.insert(Xe, "getconnections (auto equip best)")
    end
    return Xe
end
function fns.fn249(vN)
    local am9 = T5.Batches[vN]
    if not am9 then
        return
    end
    T5.Batches[vN] = nil
    if #am9.items == 0 then
        return
    end
    T5.Queued(T5.BatchPayload(vN, am9.items))
end
function fns.fn259(eE)
    if type(eE) == "number" then
        return math.max(eE, 0)
    end
    local lower = string.lower
    local Z7_1
    local gsub = string.gsub
    local Z8_1
    local Z9 = eE or ""
    local aaa = lower((gsub(tostring(Z9), "[%s,]", "")))
    Z8_1, Z7_1 = string.match(aaa, "^([%d%.]+)(%a*)$")
    local Z8_2 = tonumber(Z8_1)
    if not Z8_2 then
        return 0
    end
    local Z9_1 = ({ [""] = 1, k = 1000, m = 1000000, b = 1000000000, t = 1000000000000 })[Z7_1]
    return Z9_1 and Z8_2 * Z9_1 or 0
end
function fns.fn267(AE)
    State.AutoServerHop = AE == true
end
function fns.fn271()
    for i, v in ipairs(CollectionService:GetTagged("VolcanoTop")) do
        local arI_1 = v:IsA("BasePart") and v:IsDescendantOf(Workspace)
        if arI_1 then
            return v
        end
    end
    local Volcano = Workspace:FindFirstChild("Volcano")
    local arJ = Volcano and Volcano:FindFirstChild("VolcanoTop")
    local arI_3 = arJ
    if arJ then
        arJ = arI_3:IsA("BasePart")
    end
    return arJ and arI_3 or nil
end
function fns.fn287()
    local ath = az7_52(LocalPlayer, "Basket", 20)
    if not Tt() then
        return
    end
    if ath then
        table.insert(TO.Connections, ath.ChildAdded:Connect(function()
            local aAp = State
            aAp.Grabbed = aAp.Grabbed + 1
        end))
        table.insert(TO.Connections, ath.ChildRemoved:Connect(function(Dz)
            local as9 = tonumber(Dz:GetAttribute("BreakAt"))
            local ata = as9 and Workspace:GetServerTimeNow() >= as9 - 0.25
            if ata then
                local aAr = State
                aAr.Broke = aAr.Broke + 1
            else
                local aAq = State
                aAq.Delivered = aAq.Delivered + 1
            end
        end))
    end
    if VR then
        table.insert(TO.Connections, VR.OnClientEvent:Connect(function(DG)
            local atc = type(DG) == "table" and tonumber(DG.Owner) == LocalPlayer.UserId
            if atc then
                local aAs = State
                aAs.Hatched = aAs.Hatched + 1
            end
        end))
    end
end
function fns.fn306()
    if #T5.Connections > 0 then
        return
    end
    local Basket = LocalPlayer:FindFirstChild("Basket")
    if Basket then
        table.insert(T5.Connections, Basket.ChildAdded:Connect(function(yX)
            task.wait(0.2)
            pcall(T5.OnEggClaimed, yX)
        end))
    end
    if VR then
        table.insert(T5.Connections, VR.OnClientEvent:Connect(function(y_)
            pcall(T5.OnHatch, y_)
        end))
    end
    if UR then
        table.insert(T5.Connections, UR.OnClientEvent:Connect(function(y2)
            pcall(T5.OnLightning, y2)
        end))
    end
    local ap2_1 = az7_28 and az7_28:FindFirstChild("PrivateWeather")
    local ap3 = ap2_1
    if ap2_1 then
        ap2_1 = ap3:IsA("RemoteEvent")
    end
    if ap2_1 then
        table.insert(T5.Connections, ap3.OnClientEvent:Connect(function(y8, y9, za)
            local ap_ = type(y8) == "string" and tonumber(za)
            if ap_ then
                local ap__1 = type(y9) == "string" and y9
                local ap0 = ap__1 or nil
                T5.WeatherPrivate = { Type = y8, Variant = ap0, EndsAt = tonumber(za), Private = true }
            else
                T5.WeatherPrivate = nil
            end
            pcall(T5.SyncWeather)
        end))
    end
end
function fns.fn316()
    while Tt() do
        task.wait(0.5)
        local af1 = Tt() and State.AutoSell and az7_40 and TB(fireproximityprompt)
        if af1 then
            local af1_1 = az7_58()
            local af2 = af1_1 and af1_1:FindFirstChild("HumanoidRootPart")
            local af3 = af2
            if af2 then
                af2 = af3:FindFirstChildOfClass("ProximityPrompt")
            end
            local af4 = {}
            local af5 = af2
            for i, v in ipairs(UM()) do
                if az7_14.able(v) then
                    table.insert(af4, v)
                end
            end
            if af2 then
                af2 = #af4 > 0
            end
            if af2 then
                af2 = Ua(10)
            end
            if af2 then
                local af2_1 = af3.Position + Vector3.new(0, 0, 6)
                az7_14.snapTo(af2_1)
                task.wait(0.2)
                for i, v in ipairs(af4) do
                    local af3_1 = not Tt() or not State.AutoSell
                    if af3_1 then
                        break
                    end
                    local af3_2 = v.Parent and az7_14.able(v)
                    if af3_2 then
                        T0(string.format("Selling pets %d/%d", i, #af4), "Pets")
                        az7_14.one(af1_1, af5, af2_1, v)
                    end
                end
                pcall(function()
                    local af_ = TE()
                    if af_ then
                        af_:UnequipTools()
                    end
                end)
                TC()
            end
        end
    end
end
function fns.fn320(eX, eY)
    return UN(eX, eY, State.PickupRarities, State.PickupEggs, State.PickupMinKG)
end
function fns.fn337()
    return string.format("Sent: %d  |  Failed: %d", State.WebhookSent, State.WebhookFailed)
end
function fns.fn340()
    local amG = {}
    if T5.PingEveryone then
        table.insert(amG, "@everyone")
    end
    local amH = tostring(T5.PingId):match("%d+")
    if T5.PingUser and amH then
        table.insert(amG, ("<@%s>"):format(amH))
    end
    if #amG == 0 then
        return nil
    end
    return table.concat(amG, " ")
end
function fns.fn359(bn)
    bn = bn or "Eggs"
    local Xb_1 = State.StatusAt[bn]
    local Xc = not Xb_1 or os.clock() - Xb_1 > 4
    if Xc then
        return "Idle"
    end
    return State.Status[bn] or "Idle"
end
function fns.fn362(zq)
    T5.EggRarities = Vd(zq)
end
function fns.fn367()
    if Vq then
        return Vq
    end
    Vq = {}
    if az7_60 then
        for k, v in pairs(az7_60) do
            local ah1 = type(v) == "table" and tonumber(v.SampleSize)
            local ah2 = ah1 or nil
            local ah2_1 = type(v) == "table" and tonumber(v.Income)
            local ah3 = ah2_1 or nil
            local ah2_2 = ah2
            if ah2_2 then
                ah2_2 = ah2 > 0
            end
            if ah2_2 and ah3 then
                table.insert(Vq, { Name = k, Sample = ah2, Income = ah3 })
            end
        end
    end
    table.sort(Vq, function(qV, qW)
        if qV.Sample == qW.Sample then
            return qV.Name < qW.Name
        end
        return qV.Sample > qW.Sample
    end)
    return Vq
end
function fns.fn372(pD)
    State.AutoEquipBest = pD == true
end
function fns.fn381(oH)
    State.EspEggs = Vd(oH)
    TR()
end
function fns.fn386()
    local Basket = LocalPlayer:FindFirstChild("Basket")
    local acA = 0
    if Basket then
        for i, child in ipairs(Basket:GetChildren()) do
            local attr = child:GetAttribute("Egg")
            local acB = type(attr) == "string" and UQ(attr, child:GetAttribute("Weight"))
            if acB then
                acA += 1
            end
        end
    end
    return acA
end
function fns.fn415()
    local acV = fns.az7_1()
    local acW = {}
    if not acV then
        return acW
    end
    for i, v in ipairs({ "Eggs", "Pets" }) do
        local acX = acV:FindFirstChild(v)
        if acX then
            for i, child in ipairs(acX:GetChildren()) do
                local acX_1 = U1(child)
                if acX_1 then
                    table.insert(acW, acX_1.Position)
                end
            end
        end
    end
    return acW
end
function fns.fn430(pl)
    State.AutoVolcanoDip = pl == true
end
function fns.fn432()
    local at4_1, at4_2
    local at3_1, at3_2
    TO.connect()
    while Tt() do
        at3_1, at4_1 = pcall(TO.eggText)
        local at5 = at3_1 and type(at4_1) == "string"
        if at5 then
            State.EggStats = at4_1
        end
        at3_2, at4_2 = pcall(TO.petText)
        local at5_1 = at3_2 and type(at4_2) == "string"
        if at5_1 then
            State.PetStats = at4_2
        end
        task.wait(1)
    end
end
function fns.fn434()
    local ada = fns.az7_1()
    local adb = ada and ada:FindFirstChild("Baseplate")
    local ada_1 = {}
    if not adb then
        return ada_1
    end
    local adb_1 = az7_20()
    local add = math.min(adb.Size.X, adb.Size.Z) / 2 - az7_54
    local ade = adb.Position.Y + adb.Size.Y / 2 + 0.5
    local adk = -add
    local adj = Uz
    while true and adk <= add or false and adk >= add do
        local adl = adk
        local adp = -add
        local ado = Uz
        while true and adp <= add or false and adp >= add do
            local adq = adp
            local adf_2 = Vector3.new(adb.Position.X + adl, ade, adb.Position.Z + adq)
            local adg = true
            for i, v in ipairs(adb_1) do
                if (Vector2.new(v.X, v.Z) - Vector2.new(adf_2.X, adf_2.Z)).Magnitude < az7_62 then
                    adg = false
                    break
                end
            end
            if adg then
                table.insert(ada_1, adf_2)
            end
            adp += ado
        end
        adk += adj
    end
    return ada_1
end
function fns.fn451(bx)
    for k, v in pairs(bx) do
        if v then
            return true
        end
    end
    return false
end
function fns.fn454(u2)
    local amx_1
    local amw_1
    local amv_1, amv_2
    local amu = T5.Requester()
    if not amu then
        local aAO = State
        aAO.WebhookFailed = aAO.WebhookFailed + 1
        return false, "This executor has no HTTP request function"
    elseif not T5.ValidUrl(T5.Url) then
        local aAQ = State
        aAQ.WebhookFailed = aAQ.WebhookFailed + 1
        return false, "Enter a valid Discord webhook URL"
    else
        amv_1, amw_1 = pcall(HttpService.JSONEncode, HttpService, u2)
        if not amv_1 then
            local aAR = State
            aAR.WebhookFailed = aAR.WebhookFailed + 1
            return false, "Could not encode the message"
        end
        amv_2, amx_1 = pcall(amu, { Url = T5.Url, Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = amw_1 })
        if not amv_2 then
            local aAT = State
            aAT.WebhookFailed = aAT.WebhookFailed + 1
            return false, tostring(amx_1):sub(1, 60)
        end
        local amu_1 = type(amx_1) == "table" and tonumber(amx_1.StatusCode)
        local amu_2 = amu_1 or nil
        if amu_2 == 200 or amu_2 == 204 then
            local aAS = State
            aAS.WebhookSent = aAS.WebhookSent + 1
            return true
        else
            local aAP = State
            aAP.WebhookFailed = aAP.WebhookFailed + 1
            local amv_5 = amu_2 or "nothing"
            return false, "Discord replied " .. tostring(amv_5)
        end
    end
end
function fns.fn461(py)
    State.PlaceMinKG = Vs(py)
end
function fns.fn484()
    local abu_1
    local abt_1
    while Tt() do
        abt_1, abu_1 = pcall(VF)
        local abv = Tt() and abt_1 and type(abu_1) == "string"
        if abv then
            State.TrackerText = abu_1
        end
        task.wait(2)
    end
end
function fns.fn486(xR)
    local apc_1
    local apb_1
    local ao9 = Uc and TB(Uc.GradientFor)
    if ao9 then
        local GradientFor = Uc.GradientFor
        local apa = xR.Variant or xR.Type
        apb_1, apc_1 = pcall(GradientFor, apa)
        local ao9_2 = apb_1 and type(apc_1) == "table"
        if ao9_2 then
            apc_1 = apc_1.Color
        end
        local ao9_3 = apb_1 and typeof(apc_1) == "ColorSequence"
        if ao9_3 then
            local Value = apc_1.Keypoints[1].Value
            return math.floor(Value.R * 255) * 65536 + math.floor(Value.G * 255) * 256 + math.floor(Value.B * 255)
        end
        return T5.Kinds.Weather.Color
    end
    return T5.Kinds.Weather.Color
end
function fns.fn493()
    local XD = Uf()
    local XE = XD and XD:FindFirstChild("HumanoidRootPart")
    return XE
end
function fns.fn553(Y)
    local WV = typeof(cloneref) == "function" and typeof(Y) == "Instance"
    if WV then
        return cloneref(Y)
    end
    return Y
end
function fns.fn559(zX)
    State.AutoExecute = zX == true
    if not State.AutoExecute then
        return true
    elseif not az7_56() then
        return false, "queue_on_teleport is not supported by your executor"
    else
        return true
    end
end
function fns.fn578(e1)
    local attr = e1:GetAttribute("Position")
    if typeof(attr) == "Vector3" then
        return attr
    end
    return nil
end
function fns.fn586(ps)
    State.PlaceRarities = Vd(ps)
end
function fns.fn592()
    if State.AutoExecute then
        az7_56()
    end
end
function fns.fn598(zj)
    T5.Enabled = zj == true
    if T5.Enabled then
        T5.Connect()
    end
end
function fns.fn606()
    local XP = tonumber(VU("Cash")) or 0
    return XP
end
function fns.fn623()
    local asZ, as_, as0
    local as1 = 2
    while true do
        local as1_1 = 6089 - as1
        do
            if as1_1 < 6060 then
                if as1_1 < 6053 then
                    if as1_1 < 6049 then
                        if as1_1 < 6040 then
                            if as1_1 < 6036 then
                                if as1_1 < 6031 then
                                    if as1_1 < 1598 then
                                        break
                                    elseif as1_1 < 3308 then
                                        break
                                    elseif as1_1 < 6030 then
                                        break
                                    else
                                        as1 = if Ua(8) then 23 else 21
                                    end
                                elseif as1_1 < 6033 then
                                    if as1_1 < 6032 then
                                        if as1_1 == 6031 then
                                            as1 = if Ua(10) then 45 else 52
                                        else
                                            as1 = 6032
                                            continue
                                        end
                                    elseif as1_1 == 6032 then
                                        as1 = 5
                                    else
                                        as1 = 6038
                                        continue
                                    end
                                elseif as1_1 < 6034 then
                                    if as1_1 == 6033 then
                                        asZ = Ts.deliver()
                                        as1 = 29
                                    else
                                        as1 = 6051
                                        continue
                                    end
                                elseif as1_1 < 6035 then
                                    if as1_1 == 6034 then
                                        as1 = 43
                                    else
                                        as1 = 6032
                                        continue
                                    end
                                else
                                    as_ = VH() < TM()
                                    as1 = 22
                                end
                            elseif as1_1 < 6038 then
                                if as1_1 < 6037 then
                                    if as1_1 == 6036 then
                                        task.wait(0.2)
                                        asZ = (Tt())
                                        as1 = if asZ then 38 else 0
                                    else
                                        as1 = 6037
                                        continue
                                    end
                                elseif as1_1 == 6037 then
                                    as1 = 16
                                else
                                    as1 = 1598
                                    continue
                                end
                            elseif as1_1 < 6039 then
                                State.HopPending = true
                                as1 = 6
                            elseif as1_1 == 6039 then
                                as1 = if Tt() then 53 else 57
                            else
                                as1 = 6087
                                continue
                            end
                        elseif as1_1 < 6048 then
                            if as1_1 < 6044 then
                                if as1_1 < 6042 then
                                    if as1_1 < 6041 then
                                        if as1_1 == 6040 then
                                            as1 = 50
                                        else
                                            as1 = 6077
                                            continue
                                        end
                                    elseif as1_1 == 6041 then
                                        as_ = VM()
                                        as1 = if not as_ then 40 else 59
                                    else
                                        as1 = 6080
                                        continue
                                    end
                                elseif as1_1 < 6043 then
                                    if as1_1 == 6042 then
                                        asZ = os.clock() + State.ClaimDelay
                                        as1 = 1
                                    else
                                        as1 = 6089
                                        continue
                                    end
                                else
                                    asZ = false
                                    as1 = if VH() > 0 then 58 else 44
                                end
                            elseif as1_1 < 6046 then
                                if as1_1 < 6045 then
                                    if as1_1 == 6044 then
                                        asZ = Ts.deliver()
                                        TC()
                                        as1 = 52
                                    else
                                        as1 = 6030
                                        continue
                                    end
                                else
                                    as1 = if VH() < TM() then 48 else 18
                                end
                            elseif as1_1 < 6047 then
                                if as1_1 == 6046 then
                                    as1 = 4
                                else
                                    as1 = 6047
                                    continue
                                end
                            elseif as1_1 == 6047 then
                                as_ = not Ts.cancelled()
                                as1 = 27
                            else
                                as1 = 6056
                                continue
                            end
                        elseif as1_1 == 6048 then
                            as0 = not Ts.canChain()
                            as1 = 28
                        else
                            as1 = 6087
                            continue
                        end
                    elseif as1_1 < 6051 then
                        if as1_1 < 6050 then
                            if as1_1 == 6049 then
                                T0("No matching eggs spawned")
                                as1 = 19
                            else
                                as1 = 1382
                                continue
                            end
                        else
                            as1 = 35
                        end
                    elseif as1_1 < 6052 then
                        asZ = State.AutoPickup
                        as1 = 0
                    else
                        as0 = not Ts.grab(as_)
                        as1 = 24
                    end
                elseif as1_1 < 6057 then
                    if as1_1 < 6055 then
                        if as1_1 < 6054 then
                            if as1_1 == 6053 then
                                as1 = if as_ then 8 else 32
                            else
                                as1 = 15428
                                continue
                            end
                        elseif as1_1 == 6054 then
                            as_ = not Ts.cancelled()
                            as1 = if as_ then 54 else 22
                        else
                            as1 = 6057
                            continue
                        end
                    elseif as1_1 < 6056 then
                        as1 = 13
                    else
                        as1 = if State.HopAfterEgg then 51 else 6
                    end
                elseif as1_1 < 6059 then
                    if as1_1 < 6058 then
                        as1 = 55
                    elseif as1_1 == 6058 then
                        as_ = (Tt())
                        as1 = if as_ then 11 else 36
                    else
                        as1 = 6066
                        continue
                    end
                elseif as1_1 == 6059 then
                    as1 = 1
                else
                    as1 = 6057
                    continue
                end
            elseif as1_1 < 6077 then
                if as1_1 < 6066 then
                    if as1_1 < 6065 then
                        if as1_1 < 6063 then
                            if as1_1 < 6062 then
                                if as1_1 < 6061 then
                                    if as1_1 == 6060 then
                                        as1 = 17
                                    else
                                        as1 = 6066
                                        continue
                                    end
                                elseif as1_1 == 6061 then
                                    as1 = if as0 then 24 else 37
                                else
                                    as1 = 6038
                                    continue
                                end
                            else
                                as1 = if as_ then 56 else 29
                            end
                        elseif as1_1 < 6064 then
                            as_ = VH() > 0
                            as1 = if as_ then 42 else 27
                        else
                            as1 = 26
                        end
                    else
                        as1 = if as0 then 25 else 34
                    end
                elseif as1_1 < 6071 then
                    if as1_1 < 6068 then
                        if as1_1 < 6067 then
                            as1 = if Ts.grab(as_) then 33 else 17
                        elseif as1_1 == 6067 then
                            as1 = if as_ then 3 else 9
                        else
                            as1 = 6050
                            continue
                        end
                    elseif as1_1 < 6070 then
                        if as1_1 < 6069 then
                            as1 = 19
                        else
                            as1 = if as_ then 47 else 43
                        end
                    elseif as1_1 == 6070 then
                        as1 = 18
                    else
                        as1 = 6076
                        continue
                    end
                elseif as1_1 < 6074 then
                    if as1_1 < 6073 then
                        if as1_1 < 6072 then
                            as1 = 16
                        else
                            TC()
                            as1 = 21
                        end
                    else
                        as_ = asZ
                        as1 = if as_ then 7 else 20
                    end
                elseif as1_1 < 6075 then
                    if as1_1 == 6074 then
                        as1 = 49
                    else
                        as1 = 6071
                        continue
                    end
                elseif as1_1 < 6076 then
                    break
                elseif as1_1 == 6076 then
                    as1 = 39
                else
                    as1 = 6053
                    continue
                end
            elseif as1_1 < 6082 then
                if as1_1 < 6081 then
                    if as1_1 < 6079 then
                        if as1_1 < 6078 then
                            if as1_1 == 6077 then
                                as_ = az7_63
                                as1 = 10
                            else
                                as1 = 6033
                                continue
                            end
                        elseif as1_1 == 6078 then
                            as_ = os.clock() < asZ
                            as1 = 36
                        else
                            as1 = 1598
                            continue
                        end
                    elseif as1_1 < 6080 then
                        as1 = if as_ then 46 else 4
                    else
                        as1 = 26
                    end
                elseif as1_1 == 6081 then
                    T0("Egg claimed")
                    task.wait(0.1)
                    as1 = 30
                else
                    as1 = 6032
                    continue
                end
            elseif as1_1 < 6087 then
                if as1_1 < 6084 then
                    if as1_1 < 6083 then
                        as_ = State.ClaimDelay > 0
                        as1 = 20
                    else
                        as1 = 39
                    end
                elseif as1_1 < 6085 then
                    as1 = 14
                elseif as1_1 < 6086 then
                    as1 = 15
                elseif as1_1 == 6086 then
                    as_ = VM()
                    as0 = not as_
                    as1 = if as0 then 28 else 41
                else
                    as1 = 10266
                    continue
                end
            elseif as1_1 < 6089 then
                if as1_1 < 6088 then
                    as1 = 49
                else
                    as1 = 31
                end
            elseif as1_1 < 6464 then
                if as1_1 == 6089 then
                    as_ = asZ
                    as1 = if as_ then 12 else 10
                else
                    break
                end
            else
                break
            end
        end
    end
end
function fns.fn643()
    local Stalls = Workspace:FindFirstChild("Stalls")
    local acn = Stalls and Stalls:FindFirstChild("Sell")
    local acm_1 = acn
    if acn then
        acn = acm_1:FindFirstChild("Richie")
    end
    return acn or nil
end
function fns.fn650()
    local arE_1
    local arA = fns.az7_1()
    local arB = arA and arA:FindFirstChild("Baseplate")
    local arB_2
    local arB_1 = T2()
    if not arB or not arB_1 then
        return nil
    end
    local CFrame = arB.CFrame
    local arD_1 = CFrame:PointToObjectSpace(arB_1.Position)
    arE_1, arB_2 = arB.Size.X / 2, arB.Size.Z / 2
    local arF = math.min(6, arE_1, arB_2)
    local arG = CFrame:PointToWorldSpace(Vector3.new(math.clamp(arD_1.X, -arE_1 + arF, arE_1 - arF), 0, math.clamp(arD_1.Z, -arB_2 + arF, arB_2 - arF)))
    return Vector3.new(arG.X, arB.Position.Y + arB.Size.Y / 2 + 3, arG.Z)
end
function fns.fn651()
    local Y5 = {}
    if VD then
        for k, v in pairs(VD) do
            local Y6_1 = type(v) == "table" and type(v.Rarity) == "string"
            if Y6_1 then
                Y5[v.Rarity] = true
            end
        end
    end
    local Y6_2 = {}
    for i, v in ipairs(az7_51) do
        if Y5[v] then
            table.insert(Y6_2, v)
        end
    end
    for k in pairs(Y5) do
        if not table.find(Y6_2, k) then
            table.insert(Y6_2, k)
        end
    end
    return Y6_2
end
function fns.fn663(uv)
    State.AutoFeed = uv == true
end
function fns.fn673(ee, ef)
    local ZS = UA[ee]
    local ZT = ZS and ZS[ef]
    local ZS_1 = ZT
    if ZT then
        ZT = tonumber(ZS_1.Amount)
    end
    if ZT then
        ZS_1.Amount = math.max(ZS_1.Amount - 1, 0)
    end
end
function fns.fn688(pN)
    State.SellPets = Vd(pN)
end
function fns.fn701(zE)
    local aqj = type(zE) == "string" and zE
    local aqk = aqj or ""
    T5.PingId = aqk
end
function fns.fn726(fs)
    local aas = tonumber(fs:GetAttribute("DropEndsAt")) or 0
    return aas <= Workspace:GetServerTimeNow()
end
function fns.fn729()
    local Chance
    local att_1
    local atr_1
    local atq_1
    local atx_2
    atq_1, atr_1 = 0, 0
    local ats = TD()
    att_1, Chance = nil, nil
    local atv = {}
    local atw = Vi()
    local atw_1
    if az7_35 then
        for i, child in ipairs(az7_35:GetChildren()) do
            local attr = child:GetAttribute("Egg")
            if type(attr) == "string" then
                atq_1 += 1
                local aty_1 = Uq(child, atw)
                local atz = aty_1 and az7_45(attr, child:GetAttribute("Weight"))
                if atz then
                    atr_1 += 1
                end
                if aty_1 and ats and not atv[attr] then
                    atv[attr] = true
                    local aty_2 = {}
                    local atz_2 = az7_39(attr) or aty_2
                    for i, v in ipairs(atz_2) do
                        if v.Name == ats then
                            if not Chance or v.Chance > Chance then
                                att_1, Chance = attr, v.Chance
                            end
                            break
                        end
                    end
                end
            end
        end
    end
    local aty_4 = az7_27
    local atv_1 = 0
    if aty_4 then
        aty_4 = TB(az7_27.SecondsRemaining)
    end
    if aty_4 then
        atw_1, atx_2 = pcall(az7_27.SecondsRemaining)
        local aty_5 = atw_1 and tonumber(atx_2)
        atv_1 = aty_5 or 0
    end
    local format = string.format
    local atx_3 = tonumber(VU("Rebirths")) or 0
    local aty_6 = format("Rebirth %d", atx_3)
    if ats then
        if Vu(ats) then
            aty_6 ..= "  " .. ats .. " owned"
        else
            aty_6 ..= " needs " .. ats
            if att_1 then
                aty_6 ..= string.format("  Best egg %s (%.2f%%)", att_1, Chance * 100)
            else
                aty_6 ..= "  Best egg none spawned"
            end
        end
    end
    return table.concat({
        string.format("%d Grabbed  %d Placed  %d Hatched  %d Broke", State.Grabbed, State.Placed, State.Hatched, State.Broke),
        string.format("%d Spawned  %d Takeable  Cycle %s", atq_1, atr_1, TO.clock(atv_1)),
        string.format("Basket %d/%d", VH(), TM()),
        aty_6
    }, "\n")
end
function fns.fn730()
    local ala = {}
    if VD then
        for k, v in pairs(VD) do
            local alb = type(k) == "string" and type(v) == "table" and v.Premium ~= true
            if alb then
                table.insert(ala, k)
            end
        end
    end
    table.sort(ala, function(t0, t1)
        local ak3 = tonumber(VD[t0].Luck) or 0
        local ak3_1 = (tonumber(VD[t1].Luck))
        local ak9 = if ak3_1 then 1 else 0
        local ak7 = 3455 * ak9 + 3850 * (1 - ak9)
        local ak8 = 2765 * ak9 + 3435 * (1 - ak9)
        if not ((ak7 * 3810 + ak8 * 2193 + ak7 * ak8) % 16777213 == 12003057) then
            ak3_1 = 0
        end
        local ak5 = ak3_1
        if ak3 == ak5 then
            return t0 < t1
        end
        return ak3 < ak5
    end)
    return ala
end
function fns.fn731()
    local ab2 = tonumber(VU("Rebirths")) or 0
    local ab3 = az7_46
    if ab3 then
        ab3 = az7_46.RebirthRequirements
    end
    local ab2_1 = ab3
    local ab3_1 = type(ab2_1) ~= "table" or #ab2_1 == 0
    if ab3_1 then
        return nil
    end
    return ab2_1[math.clamp(ab2 + 1, 1, #ab2_1)]
end
function fns.fn742(aV, aW, aX)
    local W6 = aV and aV:FindFirstChild(aW)
    local W7 = W6
    if W6 then
        W6 = W7:IsA(aX)
    end
    if W6 then
        return W7
    end
    return nil
end
function fns.fn744(pZ)
    State.AutoBuyFood = pZ == true
end
function fns.fn754()
    local akN = {}
    if az7_60 then
        for k, v in pairs(az7_60) do
            local akO_1 = type(v) == "table" and type(v.Rarity) == "string"
            if akO_1 then
                akN[v.Rarity] = true
            end
        end
    end
    local akO_2 = {}
    for i, v in ipairs(az7_51) do
        if akN[v] then
            table.insert(akO_2, v)
        end
    end
    for k in pairs(akN) do
        if not table.find(akO_2, k) then
            table.insert(akO_2, k)
        end
    end
    return akO_2
end
function fns.fn762(pH)
    State.AutoRebirth = pH == true
end
function fns.fn765()
    local Basket = LocalPlayer:FindFirstChild("Basket")
    local arT = Workspace:GetServerTimeNow()
    local arU = 0
    if Basket then
        for i, child in ipairs(Basket:GetChildren()) do
            local arS_1 = tonumber(child:GetAttribute("VolcanoUntil"))
            local arV = child:GetAttribute("VolcanoDipped") ~= true and child:GetAttribute("Delivering") ~= true and not (arS_1 and arS_1 > arT)
            if arV then
                arU += 1
            end
        end
    end
    return arU
end
function fns.fn769()
    return LocalPlayer.Character
end
function fns.fn774(qA)
    local ahL = (tonumber(qA))
    local ahR = if ahL then 1 else 0
    local ahP = 2596 * ahR + 1605 * (1 - ahR)
    local ahQ = 1738 * ahR + 163 * (1 - ahR)
    if not ((ahP * 3193 + ahQ * 275 + ahP * ahQ) % 16777213 == 13278826) then
        ahL = 0
    end
    local ahM = ahL
    if ahM < 1000 then
        return string.format("%d", math.floor(ahM + 0.5))
    end
    local ahL_1 = 0
    while ahM >= 1000 and ahL_1 < #fns.az7_2 do
        ahM /= 1000
        ahL_1 += 1
    end
    return string.format("%.2f%s", ahM, fns.az7_2[ahL_1])
end
function fns.fn786(sr)
    local ajN = sr:GetAttribute("PetName") or sr.Name
    local ajN_1 = UH(State.FeedRarities) and State.FeedRarities[UF(ajN)] ~= true
    if ajN_1 then
        return false
    end
    local ajN_2 = State.FeedAboveAge
    if ajN_2 then
        local ajO_1 = tonumber(sr:GetAttribute("Age")) or 1
        ajN_2 = ajO_1 < State.FeedMinAge
    end
    if ajN_2 then
        return false
    end
    local ajN_3 = State.FeedAboveIncome and az7_25(sr) < State.FeedMinIncome
    if ajN_3 then
        return false
    end
    return true
end
function fns.fn792(hh)
    if not hh then
        return false
    end
    for i, v in ipairs(UM()) do
        if TH(v.Name) == hh then
            return true
        end
    end
    local ab6 = fns.az7_1()
    local ab7 = ab6 and ab6:FindFirstChild("Pets")
    if ab7 then
        for i, child in ipairs(ab7:GetChildren()) do
            local ab6_2 = child:GetAttribute("PetName") == hh or child.Name == hh
            if ab6_2 then
                return true
            end
        end
    end
    return false
end
function fns.fn795()
    local Ye = {}
    for i, v in ipairs({ LocalPlayer:FindFirstChildOfClass("Backpack"), Uf() }) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                local Yf = child:IsA("Tool") and child:HasTag("Egg")
                if Yf then
                    table.insert(Ye, child)
                end
            end
        end
    end
    return Ye
end
function fns.fn810(jW)
    local aet = jW:GetAttribute("PetName") or TH(jW.Name)
    return az7_21(aet, jW:GetAttribute("Weight"), jW:GetAttribute("Mutation"), jW:GetAttribute("SpawnMutation"))
end
function fns.fn812(em)
    local ZY = VD and VD[em]
    local ZZ = ZY
    if ZY then
        ZY = ZZ.Rarity
    end
    return ZY or "Common"
end
function fns.fn816()
    T5.LoadSeen()
    while Tt() do
        pcall(T5.SyncWeather)
        task.wait(1)
    end
end
function fns.fn826(nF)
    local agE = az7_46 and az7_46.RarityColors
    local agF = agE
    if agE then
        agE = agF[nF]
    end
    local agF_1 = agE
    if typeof(agF_1) == "Color3" then
        return agF_1
    end
    return Color3.fromRGB(255, 255, 255)
end
function fns.fn833(pB)
    State.AutoHatch = pB == true
end
function fns.fn840()
    local Basket = LocalPlayer:FindFirstChild("Basket")
    local ar4 = Workspace:GetServerTimeNow()
    if Basket then
        for i, child in ipairs(Basket:GetChildren()) do
            local ar3_1 = tonumber(child:GetAttribute("VolcanoUntil"))
            if ar3_1 and ar3_1 > ar4 then
                return true
            end
        end
    end
    return false
end
function fns.fn853()
    while Tt() do
        task.wait(1)
        local afa = Tt() and State.AutoEquipBest
        if afa then
            local afa_1 = TA()
            local afb = fns.az7_1()
            local afc = afb and afb:FindFirstChild("Baseplate")
            local afb_1 = afa_1
            if afb_1 then
                afb_1 = afc
            end
            if afb_1 then
                afb_1 = az7_34()
            end
            if afb_1 then
                afb_1 = Ua(10)
            end
            if afb_1 then
                T0("Equipping best pets", "Pets")
                local afb_2 = afc.Position + Vector3.new(0, 8, 0)
                local afc_1 = Us(afb_2, 0.5) and az7_18(afa_1)
                if afc_1 then
                    local afa_2 = os.clock() + 6
                    while true do
                        local afc_2 = Tt() and os.clock() < afa_2
                        if afc_2 then
                            task.wait(0.2)
                            U5(afb_2)
                            continue
                        end
                        break
                    end
                end
                TC()
            end
        end
    end
end
function fns.fn884()
    local abx = fns.az7_1()
    local aby = abx and abx:FindFirstChild("Eggs")
    local aby_4
    local abx_1 = {}
    local abB = not aby or not UE or not VD
    local abB_2
    if abB then
        return abx_1
    end
    for i, child in ipairs(aby:GetChildren()) do
        local attr = child:GetAttribute("EggKey")
        local EggData = child:FindFirstChild("EggData")
        local abA_1 = EggData and EggData:FindFirstChild("PlaceTime")
        local abA_2 = VD[child.Name]
        local abB_1 = attr and abA_1 and abA_2 and not child:HasTag("Hatching")
        if abB_1 then
            aby_4, abB_2 = pcall(UE.GrowthElapsed, abA_1.Value)
            local abz_3 = aby_4
            if abz_3 then
                abz_3 = (abA_2.GrowthTime or 0) - (abB_2 or 0) <= 0
            end
            if abz_3 then
                table.insert(abx_1, child)
            end
        end
    end
    return abx_1
end
function fns.fn888(zC)
    local aqh = tonumber(zC) or 0
    T5.MinIncome = math.max(aqh, 0)
end
function fns.fn898(rn)
    local aiH = VD and VD[rn]
    local aiI = aiH
    if aiH then
        aiH = tonumber(aiI.Luck)
    end
    local aiI_1 = aiH or 0
    local aiH_1 = aiI_1 * Vt()
    if aiH_1 <= 0 then
        return nil
    end
    local aiI_2 = 0
    local aiJ = {}
    for i, v in ipairs(az7_32()) do
        local aiK = math.min(1, aiH_1 / v.Sample)
        local aiL = aiK - aiI_2
        if aiL > 0 then
            table.insert(aiJ, { Name = v.Name, Chance = aiL })
        end
        aiI_2 = aiK
        if aiI_2 >= 1 then
            break
        end
    end
    table.sort(aiJ, function(ry, rz)
        return ry.Chance > rz.Chance
    end)
    return aiJ
end
function fns.fn906()
    local ait = {}
    local gmatch = string.gmatch
    local aiv = VU("OwnedPets") or ""
    for k in gmatch(tostring(aiv), "[^,]+") do
        local aiu_1 = string.match(k, "^%s*(.-)%s*$")
        if aiu_1 ~= "" then
            ait[aiu_1] = true
        end
    end
    return ait
end
function fns.fn923()
    local aot = if not TB(writefile) then 1 else 0
    if aot == 1 then
        return
    end
    local aop = Workspace:GetServerTimeNow()
    for k, v in pairs(T5.WeatherSeen) do
        if v <= aop then
            T5.WeatherSeen[k] = nil
        end
    end
    pcall(function()
        local aoe = TB(isfolder) and TB(makefolder)
        if aoe then
            for i, v in ipairs({ "OuroborosHub", "OuroborosHub/RideAPet" }) do
                if not isfolder(v) then
                    makefolder(v)
                end
            end
        end
        writefile(T5.WeatherFile, HttpService:JSONEncode(T5.WeatherSeen))
    end)
end
function fns.fn931(bs)
    local Xo = {}
    if type(bs) == "table" then
        for k, v in pairs(bs) do
            if type(k) == "string" then
                Xo[k] = v == true
            elseif type(v) == "string" then
                Xo[v] = true
            end
        end
    elseif type(bs) == "string" then
        Xo[bs] = true
    end
    return Xo
end
function fns.fn940()
    local afr_1
    local afp = not U_ or not TB(U_.GetPrice)
    local afp_2
    if afp then
        return nil
    end
    local afp_1 = tonumber(VU("HatchUpgrades")) or 0
    afp_2, afr_1 = pcall(U_.GetPrice, afp_1)
    local afq_1 = afp_2 and tonumber(afr_1)
    if afq_1 then
        return afr_1
    end
    return nil
end
function fns.fn941(es)
    local Z0 = tonumber(es) or 0
    return Z0
end
function fns.fn963(pb)
    State.AutoPickup = pb == true
end
function fns.fn971(oL)
    State.EggEsp = oL == true
    if State.EggEsp then
        az7_11()
    else
        TP()
    end
end
function fns.fn990(zw)
    T5.EggMutations = Vd(zw)
end
function fns.fn995()
    local aaW = fns.az7_1()
    local aaX = aaW and aaW:FindFirstChild("Eggs")
    local aaW_1 = aaX
    if aaX then
        aaX = #aaW_1:GetChildren()
    end
    return aaX or 0
end
function fns.fn996(xL)
    if not UH(T5.Weathers) then
        return true
    end
    local ao3 = T5.Weathers[xL.Type] == true
    local ao8 = if ao3 then 1 else 0
    local ao6 = 2185 * ao8 + 2159 * (1 - ao8)
    local ao7 = 2898 * ao8 + 1966 * (1 - ao8)
    if not ((ao6 * 186 + ao7 * 1845 + ao6 * ao7) % 16777213 == 12085350) then
        ao3 = xL.Variant ~= nil and T5.Weathers[xL.Variant] == true
    end
    return ao3
end
function fns.fn1016()
    local ajT = Vo and tonumber(Vo.MaxAge)
    local ajU = ajT or 100
    local ajT_1 = {}
    for i, v in ipairs(U4()) do
        local ajU_1 = (Up(v))
        if ajU_1 then
            local ajW_1 = tonumber(v:GetAttribute("Age")) or 1
            ajU_1 = ajW_1 < ajU
        end
        if ajU_1 then
            table.insert(ajT_1, v)
        end
    end
    if State.FeedBestOnly then
        local ajU_2 = nil
        for i, v in ipairs(ajT_1) do
            local ajV_1 = not ajU_2 or az7_25(v) > az7_25(ajU_2)
            if ajV_1 then
                ajU_2 = v
            end
        end
        return ajU_2 and { ajU_2 } or {}
    end
    table.sort(ajT_1, function(sQ, sR)
        return az7_25(sQ) > az7_25(sR)
    end)
    return ajT_1
end
function fns.fn1018(hA)
    local acs = TH(hA.Name)
    if not (State.SellUnlisted or State.SellPets[acs] == true) then
        return false
    end
    local act_1 = hA:GetAttribute("Favorited") == true
    if not act_1 then
        act_1 = (az7_14.Failed[hA] or 0) >= 2
    end
    if act_1 then
        return false
    end
    local act_2 = State.SellKeepMutated
    if act_2 then
        local acu_2 = hA:GetAttribute("Mutation") or hA:GetAttribute("SpawnMutation")
        act_2 = acu_2
    end
    if act_2 then
        return false
    end
    local act_3 = State.AutoRebirth and acs == TD()
    return not act_3
end
function fns.fn1021(eL, eM, eN, eO, eP)
    local aac = UH(eO) and eO[eL] ~= true
    if aac then
        return false
    end
    local aac_1 = UH(eN) and eN[az7_22(eL)] ~= true
    if aac_1 then
        return false
    end
    local aac_2 = eP > 0 and TN(eM) < eP
    if aac_2 then
        return false
    end
    return true
end
function fns.fn1025()
    while Tt() do
        task.wait(3)
        local afK = Tt() and State.AutoRebirth
        if afK and VE and Va then
            local afK_2 = tonumber(VU("Rebirths")) or 0
            local floor = math.floor
            local afM = Va.InitialCost or 0
            local afN = Va.CostMultiplier or 1
            local afO = floor(afM * afN ^ afK_2)
            local afK_4 = TD()
            local afL_2 = afO > 0 and fns.az7_9() >= afO and Vu(afK_4)
            if afL_2 then
                T0("Rebirthing", "Pets")
                pcall(function()
                    VE:FireServer()
                end)
                task.wait(4)
            end
        end
    end
end
function fns.fn1054()
    Ug = false
end
function fns.fn1101(AM)
    State.HopAfterEgg = AM == true
    if not State.HopAfterEgg then
        State.HopPending = false
    end
end
function fns.fn1116(zz)
    T5.Weathers = Vd(zz)
end
function fns.fn1121(oD)
    State.EspRarities = Vd(oD)
    TR()
end
function fns.fn1129()
    if not TB(TT) then
        return false
    end
    local aqm = 'if not game:IsLoaded() then game.Loaded:Wait() end local env = (getgenv and getgenv()) or _G if env.OuroborosAutoExecuted == game.JobId then return end env.OuroborosAutoExecuted = game.JobId task.wait(3) loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/Ouroboros/refs/heads/main/games/hirepostalkingfaggot.luau"))()'
    return (pcall(TT, aqm))
end
function fns.fn1144()
    return ("%s  |  Ride A Pet"):format(LocalPlayer.Name)
end
function fns.fn1155()
    return { "Random", "Least Populated", "Most Populated" }
end
function fns.fn1167(aq, ar)
    local W4_1
    local W2 = az7_52(aq, ar, 20)
    local W3 = not W2 or not W2:IsA("ModuleScript")
    local W3_1
    if W3 then
        return nil
    end
    W3_1, W4_1 = pcall(require, W2)
    return W3_1 and W4_1 or nil
end
function fns.fn1176(wS)
    return ("%s|%s|%d"):format(wS.Type, tostring(wS.Variant), math.floor(wS.EndsAt))
end
function fns.fn1183(g8)
    local ab0 = string.match(g8, "^(.-) %[") or g8
    return ab0
end
function fns.fn1187()
    local Zm = {}
    if az7_60 then
        for k in pairs(az7_60) do
            if type(k) == "string" then
                table.insert(Zm, k)
            end
        end
    end
    table.sort(Zm)
    return Zm
end
function fns.fn1200(pi)
    State.PickupEggs = Vd(pi)
end
function fns.fn1211(pq)
    State.AutoPlace = pq == true
end
function fns.fn1253(p0)
    State.BuyFood = Vd(p0)
end
function fns.fn1263(ab)
    return type(ab) == "function"
end
function fns.fn1269(jy, jz)
    local aec_1
    local aeb = not Ur
    local aeb_1
    local aeh = if aeb then 1 else 0
    local aef = 125 * aeh + 3862 * (1 - aeh)
    local aeg = 3130 * aeh + 222 * (1 - aeh)
    if not ((aef * 2405 + aeg * 1453 + aef * aeg) % 16777213 == 5239765) then
        aeb = not TB(Ur.CombinedFactor)
    end
    if aeb then
        return 1
    end
    aeb_1, aec_1 = pcall(Ur.CombinedFactor, jy, jz)
    local aed = aeb_1 and tonumber(aec_1)
    if aed then
        return aec_1
    end
    return 1
end
function fns.fn1292(xH)
    local ao0 = xH.Variant or xH.Type
    local ao1_1 = ao0:gsub("(%l)(%u)", "%1 %2")
    if xH.Type == "Storm" and xH.Variant then
        return ao1_1 .. " Storm"
    end
    return ao1_1
end
function fns.fn1293()
    local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
    local aex = PlayerGui and PlayerGui:FindFirstChild("Main")
    local aew_1 = aex
    if aex then
        aex = aew_1:FindFirstChild("PetsTracker")
    end
    local aew_2 = aex
    if aex then
        aex = aew_2:FindFirstChild("PlaceBest")
    end
    return aex or nil
end
function fns.fn1332()
    while Tt() do
        task.wait(1.5)
        if Tt() then
            local agz = State.AutoBuyGears and UH(State.BuyGears)
            local agz_1 = State.AutoBuyFood and UH(State.BuyFood)
            if (agz or agz_1) and Vp then
                pcall(function()
                    Vp:FireServer()
                end)
                task.wait(0.5)
            end
            local agz_3 = Tt() and agz
            if agz_3 then
                Vn("Gears", State.BuyGears)
            end
            local agz_4 = Tt() and agz_1
            if agz_4 then
                Vn("Food", State.BuyFood)
            end
        end
    end
end
function fns.fn1335(pU)
    State.AutoBuyGears = pU == true
end
function fns.fn1338(qG)
    local ahS = tonumber(qG)
    if not ahS or ahS <= 0 then
        return "?"
    end
    return "1 in " .. TQ(ahS)
end
function fns.fn1348()
    if folder or not az7_35 then
        return
    end
    folder = Instance.new("Folder")
    folder.Name = "OuroborosEggEsp"
    folder.Parent = Workspace
    for i, child in ipairs(az7_35:GetChildren()) do
        VO(child)
    end
    table.insert(az7_44, az7_35.ChildAdded:Connect(function(oq)
        if State.EggEsp then
            task.wait(0.2)
            VO(oq)
        end
    end))
    table.insert(az7_44, az7_35.ChildRemoved:Connect(onChildRemoved))
end
function fns.fn1365()
    local arf_3
    local function arb()
        local aq8 = VH() > 0 or Ug
        if not aq8 then
            local aq9 = State.AutoPickup and Vb.anyLeft()
            aq8 = aq9
        end
        return aq8
    end
    local arc = 0
    local ard = 0
    while Tt() do
        task.wait(1)
        if Tt() then
            local are = false
            local are_1
            if State.HopPending then
                are = true
            elseif State.AutoServerHop then
                ard += 1
                local max = math.max
                local arg_1 = tonumber(State.HopInterval) or 300
                are = ard >= max(arg_1, 1)
            else
                ard = 0
            end
            local arf_2 = are and os.clock() >= arc and not arb()
            if arf_2 then
                State.HopPending = false
                ard = 0
                are_1, arf_3 = pcall(az7_17.ServerHop)
                if are_1 and arf_3 then
                    arc = os.clock() + 15
                end
            end
        end
    end
end
function fns.fn1375()
    return not az7_17.Unloaded
end
function fns.fn1395()
    if not az7_35 then
        return false
    end
    local aaB = Vi()
    for i, child in ipairs(az7_35:GetChildren()) do
        if Vb.stealable(child, aaB) then
            return true
        end
    end
    return false
end
function fns.fn1400(pd)
    local ahp = tonumber(pd) or 0
    State.ClaimDelay = math.max(ahp, 0)
end
function fns.fn1410()
    local X2 = VU("EquippedEggBasket")
    local X3 = UP and X2 and UP[X2]
    local X2_1 = X3
    if X3 then
        X3 = X2_1.Capacity
    end
    local X2_2 = X3
    local X7 = if X2_2 then 1 else 0
    local X5 = 2889 * X7 + 3341 * (1 - X7)
    local X6 = 444 * X7 + 933 * (1 - X7)
    if not ((X5 * 3711 + X6 * 3172 + X5 * X6) % 16777213 == 13412163) then
        X2_2 = 1
    end
    local X3_1 = X2_2
    local X2_3 = tonumber(X3_1) or 1
    return X2_3
end
function fns.fn1444()
    local asW = Ts.timeLeft()
    return not asW or asW > 5
end
function fns.fn1456()
    return State.TrackerText
end
function fns.fn1474()
    if State.EggEsp then
        TP()
        az7_11()
    end
end
function fns.fn1508()
    connection:Disconnect()
end
function fns.fn1539(wa, wb)
    local anm = UH(T5.EggNames) and T5.EggNames[wa] ~= true
    if anm then
        return false
    end
    local anm_1 = UH(T5.EggRarities) and T5.EggRarities[az7_22(wa)] ~= true
    if anm_1 then
        return false
    end
    local anm_2 = UH(T5.EggMutations) and T5.EggMutations[wb or "None"] ~= true
    if anm_2 then
        return false
    end
    return true
end
function fns.fn1555()
    local ajb = fns.az7_1()
    local ajc = ajb and ajb:FindFirstChild("Pets")
    local ajb_1 = {}
    if ajc then
        for i, child in ipairs(ajc:GetChildren()) do
            if child:GetAttribute("PetKey") then
                table.insert(ajb_1, child)
            end
        end
    end
    return ajb_1
end
function fns.fn1560(dj, dk, dl, dm, dn)
    local YS = os.clock()
    local YU = YS + (dm or 2.5)
    local YS_1 = 0
    while true do
        local YT_1 = Tt() and os.clock() < YU
        if YT_1 then
            if dl() then
                return true
            end
            if os.clock() >= YS_1 then
                pcall(dk)
                local YT_2 = os.clock()
                YS_1 = YT_2 + (dn or 0.45)
            end
            if dj then
                U5(dj)
            end
            task.wait(0.1)
            continue
        end
        break
    end
    return dl()
end
function fns.fn1574()
    local Plots = Workspace:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    for i, child in ipairs(Plots:GetChildren()) do
        local Data = child:FindFirstChild("Data")
        local XS = Data and Data:FindFirstChild("Owner")
        local XR_2 = XS
        if XS then
            XS = XR_2.Value == LocalPlayer
        end
        if XS then
            return child
        end
    end
    return nil
end
function fns.fn1601()
    local ajp = {}
    for i, v in ipairs({ Uf(), LocalPlayer:FindFirstChildOfClass("Backpack") }) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                local ajq = child:IsA("Tool") and child:HasTag("Food") and Ui and Ui[child.Name]
                if ajq then
                    table.insert(ajp, child)
                end
            end
        end
    end
    table.sort(ajp, function(sd, se)
        local ajl = tonumber(Ui[sd.Name].XP) or 0
        local ajl_1 = tonumber(Ui[se.Name].XP) or 0
        if ajl == ajl_1 then
            return sd.Name < se.Name
        end
        return ajl > ajl_1
    end)
    return ajp
end
function fns.fn1636(bk, bl)
    bl = bl or "Eggs"
    State.Status[bl] = bk
    State.StatusAt[bl] = os.clock()
end
function fns.fn1653(u1)
    if type(u1) ~= "string" then
        return false
    end
    return string.match(u1, "^https://[%w%-%.]*discord[%w%-%.]*%.com/api/webhooks/%d+/[%w%-_]+$") ~= nil
end
function fns.fn1654(pF)
    State.AutoClaimIndex = pF == true
end
function fns.fn1672(pn)
    State.PickupMinKG = Vs(pn)
end
function fns.fn1680(pv)
    State.PlaceEggs = Vd(pv)
end
function fns.fn1681()
    if T5.Draining then
        return
    end
    T5.Draining = true
    task.spawn(function()
        while true do
            local amC = Tt() and #T5.Queue > 0
            if amC then
                local amC_1 = table.remove(T5.Queue, 1)
                T5.Post(amC_1)
                task.wait(1.2)
                continue
            end
            break
        end
        T5.Draining = false
    end)
end
function fns.fn1687(wi)
    local anu_1
    local ant_1
    local ans_1
    if not T5.Enabled or T5.Events.ClaimedEgg ~= true then
        return
    end
    local attr = wi:GetAttribute("Egg")
    if type(attr) ~= "string" then
        return
    end
    local anr = T1(wi:GetAttribute("Mutation"), wi:GetAttribute("SpawnMutation"))
    local anB = if not T5.WantsEgg(attr, anr) then 1 else 0
    if anB == 1 then
        return
    end
    anu_1, ans_1, ant_1 = T_(attr)
    local anv = { az7_22(attr) }
    if anr then
        table.insert(anv, anr)
    end
    if anu_1 then
        table.insert(anv, ("exp. $%s/s"):format(TQ(anu_1)))
    end
    if ans_1 then
        table.insert(anv, ("best %s (%s)"):format(ans_1.Name, VY(ans_1.Sample)))
    end
    local anw = {}
    if anu_1 then
        table.insert(anw, { name = "Expected", value = ("$%s/s"):format(TQ(anu_1)), inline = true })
    end
    if ans_1 then
        table.insert(anw, {
            name = "Best Roll",
            value = ("%s\n%s  ·  %.4f%%"):format(ans_1.Name, VY(ans_1.Sample), ans_1.Chance * 100),
            inline = true
        })
    end
    if ant_1 then
        table.insert(anw, { name = "Luck", value = TQ(ant_1), inline = true })
    end
    local Push = T5.Push
    local ant_2 = ("%s|%s"):format(attr, tostring(anr))
    local anx = anu_1 or 0
    Push("ClaimedEgg", {
        key = ant_2,
        rank = anx,
        line = ("› **%s**  ·  %s"):format(attr, table.concat(anv, "  ·  ")),
        fields = anw
    })
end
function fns.fn1695()
    local aoD_1
    local aoA = VP
    local aoA_1
    local aoB = {}
    if aoA then
        local aoC_1 = (VP:GetAttribute("WeatherSnapshotV2"))
        local aoI = if aoC_1 then 1 else 0
        local aoG = 2216 * aoI + 1692 * (1 - aoI)
        local aoH = 2674 * aoI + 3700 * (1 - aoI)
        if not ((aoG * 1853 + aoH * 711 + aoG * aoH) % 16777213 == 11933046) then
            aoC_1 = VP:GetAttribute("ActiveWeathers")
        end
        aoA = aoC_1
    end
    local aoC_2 = aoA
    aoA_1, aoD_1 = pcall(HttpService.JSONDecode, HttpService, aoC_2)
    local aoC_3 = aoA_1 and type(aoD_1) == "table"
    if aoC_3 then
        local aoA_2 = type(aoD_1.Weathers) == "table" and aoD_1.Weathers
        local aoC_4 = aoA_2 or aoD_1
        for k, v in pairs(aoC_4) do
            local aoA_4 = type(v) == "table" and type(v.Type) == "string" and tonumber(v.EndsAt)
            if aoA_4 then
                local insert = table.insert
                local Type = v.Type
                local aoD_2 = type(v.Variant) == "string" and v.Variant
                local aoE = aoD_2 or nil
                insert(aoB, { Type = Type, Variant = aoE, EndsAt = tonumber(v.EndsAt) })
            end
        end
    end
    local WeatherPrivate = T5.WeatherPrivate
    if WeatherPrivate then
        table.insert(aoB, WeatherPrivate)
    end
    local aoA_7 = Workspace:GetServerTimeNow()
    local aoC_6 = {}
    for i, v in ipairs(aoB) do
        if v.EndsAt > aoA_7 then
            aoC_6[T5.WeatherKey(v)] = v
        end
    end
    return aoC_6
end
function fns.fn1697()
    local abM = {}
    for i, v in ipairs({ LocalPlayer:FindFirstChildOfClass("Backpack"), Uf() }) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                local abN = child:IsA("Tool") and child:GetAttribute("PetKey")
                if abN then
                    table.insert(abM, child)
                end
            end
        end
    end
    return abM
end
function fns.fn1722(nR)
    if UD[nR] then
        return
    end
    local attr = nR:GetAttribute("Egg")
    local agK = VC(nR)
    local agL = type(attr) ~= "string" or not agK or not folder or not Uq(nR)
    if agL then
        return
    end
    local agL_1 = UH(State.EspEggs) and State.EspEggs[attr] ~= true
    if agL_1 then
        return
    end
    local agL_2 = UH(State.EspRarities) and State.EspRarities[az7_22(attr)] ~= true
    if agL_2 then
        return
    end
    local part = Instance.new("Part")
    part.Name = "EggMarker"
    part.Anchored = true
    part.CanCollide = false
    part.CanQuery = false
    part.CanTouch = false
    part.Transparency = 1
    part.Size = Vector3.new(1, 1, 1)
    part.CFrame = CFrame.new(agK + Vector3.new(0, 4, 0))
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "EggEsp"
    billboardGui.AlwaysOnTop = true
    billboardGui.Size = UDim2.new(0, 230, 0, 74)
    billboardGui.MaxDistance = math.huge
    billboardGui.Parent = part
    local textLabel = Instance.new("TextLabel")
    textLabel.BackgroundTransparency = 1
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.TextWrapped = true
    textLabel.Font = Enum.Font.GothamBold
    textLabel.TextSize = 14
    textLabel.TextStrokeTransparency = 0.4
    textLabel.TextColor3 = Uo(az7_22(attr))
    textLabel.Text = attr
    textLabel.Parent = billboardGui
    part.Parent = folder
    UD[nR] = { Part = part, Label = textLabel, Name = attr }
end
function fns.fn1723(ux)
    State.FeedFoods = Vd(ux)
end
function fns.fn1748(AG)
    local aqU = tonumber(AG) or 300
    State.HopInterval = math.max(aqU, 1)
end
function fns.fn1756(pQ)
    State.SellUnlisted = pQ == true
end
function fns.fn1761()
    local acK_1
    local acJ_1
    acK_1, acJ_1 = nil, nil
    for i, v in ipairs(Vg()) do
        local acL = T3(v:GetAttribute("Weight"))
        local acM = UQ(v.Name, v:GetAttribute("Weight")) and (not acJ_1 or acL > acJ_1)
        if acM then
            acK_1, acJ_1 = v, acL
        end
    end
    return acK_1
end
function fns.fn1802()
    local aak_1
    local aaj_1
    aaj_1, aak_1 = pcall(function()
        return HttpService:JSONDecode(LocalPlayer:GetAttribute("CollectedEggCycles"))
    end)
    local aal = aaj_1 and type(aak_1) == "table"
    return aal and aak_1 or {}
end
function fns.fn1807()
    gethui = fns.az7_5
end
function fns.fn1834(qY)
    local aih_1
    local aif = VD and VD[qY]
    local aig = aif
    local aig_2
    if aif then
        aif = tonumber(aig.Luck)
    end
    local aig_1 = aif or 0
    local aif_1 = aig_1 * Vt()
    if aif_1 <= 0 then
        return nil
    end
    aih_1, aig_2 = 0, 0
    local aii
    for i, v in ipairs(az7_32()) do
        local aij = math.min(1, aif_1 / v.Sample)
        local aik = aij - aig_2
        if aik > 0 then
            aih_1 += aik * v.Income
            local ail = not aii
            if ail ~= false then
                ail = aik >= 0.0001
            end
            if ail then
                aii = { Name = v.Name, Sample = v.Sample, Chance = aik }
            end
        end
        aig_2 = aij
        if aig_2 >= 1 then
            break
        end
    end
    return aih_1, aii, aif_1
end
function fns.fn1875(AI)
    local aqX = tonumber(AI) or 0
    State.HopMinPlayers = math.max(aqX, 0)
end
function fns.fn1888(uE)
    local al6 = tonumber(uE) or 0
    State.FeedMinIncome = math.max(al6, 0)
end
function fns.fn1959(v4, v5)
    local ang = {}
    local anh = type(v5) == "string" and Ur and Ur[v5]
    if anh then
        table.insert(ang, v5)
    end
    local anh_1 = type(v4) == "string" and Ur and Ur[v4]
    if anh_1 then
        table.insert(ang, v4)
    end
    if #ang == 0 then
        return nil
    end
    return table.concat(ang, " + ")
end
function fns.fn1963(cp)
    local Yt = os.clock()
    local Yv = Yt + (cp or 12)
    while true do
        local Yt_1 = Ug and Tt() and os.clock() < Yv
        if Yt_1 then
            task.wait(0.15)
            continue
        end
        break
    end
    local Yt_2 = not Tt() or Ug
    if Yt_2 then
        return false
    end
    Ug = true
    return true
end
function fns.fn1970()
    local ajE = UH(State.FeedFoods)
    for i, v in ipairs(az7_10()) do
        if not ajE or State.FeedFoods[v.Name] == true then
            return v
        end
    end
    return nil
end
function fns.fn1977(d6, d7)
    local ZJ = UA[d6]
    local ZK = ZJ and ZJ[d7]
    local ZJ_1 = ZK
    if ZK then
        ZK = tonumber(ZJ_1.Amount)
    end
    local ZJ_2 = ZK
    local ZR = if ZJ_2 then 1 else 0
    local ZP = 185 * ZR + 51 * (1 - ZR)
    local ZQ = 3773 * ZR + 2107 * (1 - ZR)
    if not ((ZP * 3571 + ZQ * 3732 + ZP * ZQ) % 16777213 == 15439476) then
        ZJ_2 = 0
    end
    return ZJ_2
end
function fns.fn1980(ox)
    State.EggEspPets = ox == true
end
function fns.fn1983(uG)
    State.FeedAboveAge = uG == true
end
function fns.fn1988(fu, fv)
    local attr = fu:GetAttribute("Egg")
    local aav = not VC(fu) or not Uq(fu, fv)
    if not aav then
        aav = (Vb.Failed[fu] or 0) >= Vb.MaxFails
    end
    if aav then
        return false
    end
    local aav_1 = VD and VD[attr]
    local aav_2 = type(aav_1) == "table" and aav_1.RequiresVolcano == true and LocalPlayer:GetAttribute("VolcanoValidated") ~= true
    if aav_2 then
        return false
    end
    return az7_45(attr, fu:GetAttribute("Weight"))
end
function fns.fn2004(AK)
    local aqZ = type(AK) == "string" and AK
    local aq_ = aqZ
    local aq3 = if aq_ then 1 else 0
    local aq1 = 3412 * aq3 + 1851 * (1 - aq3)
    local aq2 = 1367 * aq3 + 1258 * (1 - aq3)
    if not ((aq1 * 3653 + aq2 * 2139 + aq1 * aq2) % 16777213 == 3275040) then
        aq_ = "Random"
    end
    State.HopMode = aq_
end
function fns.fn2058(rj)
    local aiB = (tonumber(rj))
    local aiG = if aiB then 1 else 0
    local aiE = 3069 * aiG + 3851 * (1 - aiG)
    local aiF = 3347 * aiG + 1810 * (1 - aiG)
    if not ((aiE * 3917 + aiF * 3643 + aiE * aiF) % 16777213 == 931911) then
        aiB = 0
    end
    local aiC = aiB * 100
    if aiC >= 1 then
        return string.format("%.1f%%", aiC)
    elseif aiC >= 0.01 then
        return string.format("%.2f%%", aiC)
    else
        return "1 in " .. TQ(1 / math.max(rj, 1e-18))
    end
end
function fns.onOnClientEvent(d1)
    if type(d1) == "table" then
        UA = d1
    end
end
function fns.fn2068(bL)
    local SavedData = LocalPlayer:FindFirstChild("SavedData")
    local XN = SavedData and SavedData:FindFirstChild(bL)
    local XM_1 = XN
    if XN then
        XN = XM_1.Value
    end
    return XN or nil
end
function fns.fn2073()
    local asd = not State.AutoVolcanoDip
    local asl = if asd then 1 else 0
    local asj = 2261 * asl + 352 * (1 - asl)
    local ask = 2845 * asl + 3328 * (1 - asl)
    if not ((asj * 3723 + ask * 2372 + asj * ask) % 16777213 == 4821375) then
        asd = not az7_13
    end
    if not asd then
        asd = Ts.dippable() == 0
    end
    if asd then
        return
    end
    local asd_1 = Ts.volcanoTop()
    if not asd_1 then
        T0("Volcano is not loaded")
        return
    end
    local ase = asd_1.Position + Vector3.new(0, asd_1.Size.Y / 2 + 40, 0)
    local asd_2 = TM() + 2
    local asr = 1
    while asr <= asd_2 do
        local asd_3 = Ts.timeLeft()
        local asf = Ts.dippable()
        local asg = Ts.cancelled() or asf == 0
        if not asg then
            asg = asd_3 and asd_3 < 3
        end
        if asg then
            break
        end
        T0("Dipping egg in the volcano")
        local asd_4 = os.clock() + 3
        local asg_1 = os.clock() + 0.25
        while true do
            local ash_2 = not Ts.cancelled() and Ts.dippable() >= asf and os.clock() < asd_4
            if ash_2 then
                Ts.teleport(ase)
                if os.clock() >= asg_1 then
                    asg_1 = os.clock() + 0.4
                    pcall(function()
                        az7_13:FireServer()
                    end)
                end
                task.wait(0.1)
                continue
            end
            break
        end
        if Ts.dippable() >= asf then
            break
        end
        asr += 1
    end
    local asd_5 = os.clock() + 20
    while true do
        local ase_1 = not Ts.cancelled() and VH() > 0 and Ts.inFlight() and os.clock() < asd_5
        if ase_1 then
            T0("Egg in the volcano")
            task.wait(0.1)
            continue
        end
        break
    end
end
function fns.fn2090()
    local ahu = az7_58()
    local ahv = ahu and ahu:FindFirstChild("HumanoidRootPart")
    if not ahv then
        return false, "Seller is not loaded"
    elseif not Ua(6) then
        return false, "Automation is moving your character"
    else
        local ahv_1 = VQ(ahv.Position + Vector3.new(0, 0, 6))
        TC()
        if not ahv_1 then
            return false, "Character is unavailable"
        end
        return true
    end
end
function fns.fn2093(qt)
    local ahI = qt and az7_60 and az7_60[qt]
    local ahJ = ahI
    if ahI then
        ahI = type(ahJ.Rarity) == "string"
    end
    if ahI then
        ahI = ahJ.Rarity
    end
    return ahI or "Common"
end
function fns.fn2109(An)
    if #An == 0 then
        return nil
    elseif State.HopMode == "Least Populated" then
        table.sort(An, function(Ar, As)
            return Ar.playing < As.playing
        end)
        return An[1]
    elseif State.HopMode == "Most Populated" then
        table.sort(An, function(Ap, Aq)
            return Ap.playing > Aq.playing
        end)
        return An[1]
    else
        return An[math.random(1, #An)]
    end
end
function fns.fn2114(eu)
    local Z4_1
    local Z2 = T3(eu)
    local Z3 = Vo and TB(Vo.InflateEggWeight)
    local Z3_1
    if Z3 then
        Z3_1, Z4_1 = pcall(Vo.InflateEggWeight, Z2)
        local Z5 = Z3_1 and tonumber(Z4_1)
        if Z5 then
            return tonumber(Z4_1)
        end
        return Z2
    end
    return Z2
end
function fns.fn2162()
    local ahD_1
    local ahC_1
    local ahA = not U_ or not TB(U_.GetMultiplier)
    if ahA then
        return 1
    end
    local GetMultiplier = U_.GetMultiplier
    local ahB = tonumber(VU("HatchUpgrades")) or 0
    ahC_1, ahD_1 = pcall(GetMultiplier, ahB)
    local ahA_2 = ahC_1 and tonumber(ahD_1) and ahD_1 > 0
    if ahA_2 then
        return ahD_1
    end
    return 1
end
function fns.fn2180()
    local afI_1
    local afH_1
    while Tt() do
        task.wait(2)
        local afE = Tt() and State.AutoClaimIndex
        local afE_3
        local afF = afE and fns.az7_6
        local afF_2
        if afF and az7_57 then
            local afE_2 = VU("OwnedPets")
            local afF_1 = tonumber(VU("IndexRewardStage")) or 0
            afF_2, afH_1 = pcall(az7_57.DiscoveredCount, afE_2)
            afE_3, afI_1 = pcall(az7_57.StageAt, afF_1)
            local afG_1 = afF_2 and afE_3 and type(afI_1) == "table" and tonumber(afH_1)
            if afG_1 then
                afG_1 = afH_1 >= (afI_1.Goal or math.huge)
            end
            if afG_1 then
                T0("Claiming index reward")
                pcall(function()
                    fns.az7_6:FireServer()
                end)
                task.wait(1)
            end
        end
    end
end
function fns.fn2182(wx)
    if not T5.Enabled or T5.Events.HatchedPet ~= true then
        return
    end
    local anC_1 = type(wx) ~= "table" or tonumber(wx.Owner) ~= LocalPlayer.UserId
    if anC_1 then
        return
    end
    local PetName = wx.PetName
    if type(PetName) ~= "string" then
        return
    end
    local anD = az7_21(PetName, wx.Weight, wx.Mutation, wx.SpawnMutation)
    if anD < T5.MinIncome then
        return
    end
    local anE = T1(wx.Mutation, wx.SpawnMutation)
    local anF = { UF(PetName), ("$%s/s"):format(TQ(anD)) }
    if anE then
        table.insert(anF, anE)
    end
    local anG = az7_60 and az7_60[PetName]
    local anH = anG
    if anG then
        anG = tonumber(anH.SampleSize)
    end
    local anH_1 = anG
    if anH_1 then
        table.insert(anF, VY(anH_1))
    end
    local anG_1 = { name = "Income", value = ("$%s/s"):format(TQ(anD)), inline = true }
    local anI = tonumber(wx.Weight) or 0
    local anJ = { anG_1, { name = "Weight", value = ("%.2f KG"):format(anI), inline = true } }
    if anH_1 then
        table.insert(anJ, { name = "Odds", value = VY(anH_1), inline = true })
    end
    T5.Push("HatchedPet", {
        key = ("%s|%s"):format(PetName, tostring(anE)),
        rank = anD,
        line = ("› **%s**  ·  %s"):format(PetName, table.concat(anF, "  ·  ")),
        fields = anJ
    })
end
function fns.fn2186(Ds)
    local as4 = tonumber(Ds) or 0
    Ds = math.max(math.floor(as4), 0)
    if Ds >= 60 then
        return string.format("%dm %ds", Ds // 60, Ds % 60)
    end
    return Ds .. "s"
end
function fns.fn2198()
    local atT = U4()
    local atU = 0
    for i, v in ipairs(atT) do
        atU += az7_25(v)
    end
    local atV = tonumber(LocalPlayer:GetAttribute("MaxPets")) or tonumber(VU("MaxPets"))
    local atV_1 = atV or 5
    return table.concat({
        string.format("Ranch %d/%d  $%s/s", #atT, atV_1, TQ(atU)),
        string.format("Backpack %d  Sold %d  Fed %d", #UM(), State.Sold, State.Fed)
    }, "\n")
end
function fns.fn2219(uC)
    State.FeedAboveIncome = uC == true
end
function fns.fn2224(vj)
    table.insert(T5.Queue, vj)
    while #T5.Queue > 40 do
        table.remove(T5.Queue, 1)
    end
    T5.Drain()
end
function fns.fn2233()
    while Tt() do
        task.wait(0.4)
        local akr = Tt() and State.AutoFeed
        if akr and U0 then
            local akr_1 = Vh()
            if not akr_1 then
                T0("Auto feed - no matching food owned", "Pets")
            else
                local aks_1 = az7_15()
                if #aks_1 == 0 then
                    T0("Auto feed - no placed pet matches the filters", "Pets")
                else
                    for i, v in ipairs(aks_1) do
                        local aks_2 = not Tt() or not State.AutoFeed
                        if aks_2 then
                            break
                        end
                        local akr_2 = Vh()
                        if not akr_2 then
                            break
                        elseif v.Parent then
                            local aks_3 = v:GetAttribute("PetName") or v.Name
                            T0("Feeding " .. aks_3 .. " " .. akr_2.Name, "Pets")
                            if TS(v, akr_2) then
                                local aCJ = State
                                aCJ.Fed = aCJ.Fed + 1
                            end
                        end
                    end
                end
            end
        end
    end
end
function fns.fn2268(pS)
    State.SellKeepMutated = pS == true
end
function fns.fn2288(zh)
    local aqc = type(zh) == "string" and zh
    local aqd = aqc or ""
    T5.Url = aqd
end
function fns.fn2290()
    local alq = { "None" }
    if Ur then
        for k, v in pairs(Ur) do
            local alr = type(k) == "string" and type(v) == "table" and v.StatMultiplier
            if alr then
                table.insert(alq, k)
            end
        end
    end
    table.sort(alq, function(ua, ub)
        if ua == "None" or ub == "None" then
            return ua == "None"
        end
        local alj_1 = tonumber(Ur[ua].StatMultiplier) or 0
        local alj_2 = tonumber(Ur[ub].StatMultiplier) or 0
        if alj_1 == alj_2 then
            return ua < ub
        end
        return alj_1 < alj_2
    end)
    return alq
end
function fns.fn2297()
    return T5.Post({
        content = T5.Mention(),
        embeds = {
            {
                title = "Ouroboros Connected",
                description = T5.Rule .. "\n› Ride A Pet webhook is working\n" .. T5.Rule,
                color = T5.Kinds.ClaimedEgg.Color,
                footer = { text = T5.Footer() }
            }
        }
    })
end
function fns.fn2322(uI)
    local al9 = tonumber(uI) or 1
    local ama = Vo and tonumber(Vo.MaxAge)
    local amb = ama or 100
    State.FeedMinAge = math.clamp(al9, 1, amb)
end
function fns.fn2355()
    local an2_1
    local an1_1
    local an0 = Workspace:GetServerTimeNow()
    an1_1, an2_1 = pcall(function()
        local anZ = TB(isfile) and TB(readfile) and isfile(T5.WeatherFile)
        if anZ then
            return HttpService:JSONDecode(readfile(T5.WeatherFile))
        end
        return nil
    end)
    local an3 = an1_1 and type(an2_1) == "table"
    if an3 then
        for k, v in pairs(an2_1) do
            local an1_2 = type(k) == "string" and tonumber(v) and tonumber(v) > an0
            if an1_2 then
                T5.WeatherSeen[k] = tonumber(v)
            end
        end
    end
end
function fns.fn2394()
    local akE = {}
    if Ui then
        for k, v in pairs(Ui) do
            local akF = type(k) == "string" and type(v) == "table"
            if akF then
                table.insert(akE, k)
            end
        end
    end
    table.sort(akE, function(tH, tI)
        local akA = tonumber(Ui[tH].XP) or 0
        local akA_1 = tonumber(Ui[tI].XP) or 0
        if akA == akA_1 then
            return tH < tI
        end
        return akA < akA_1
    end)
    return akE
end
function fns.fn2410(fc, fd)
    local attr3 = fc:GetAttribute("Egg")
    local attr2 = fc:GetAttribute("PrivateTo")
    local aap = type(attr3) ~= "string"
    if not aap then
        aap = attr2 ~= nil and attr2 ~= LocalPlayer.UserId
    end
    if aap then
        return false
    elseif fc:GetAttribute("AdminSpawn") == true then
        return true
    else
        local aao_1 = tonumber(fc:GetAttribute("Cycle"))
        local aap_1 = fd or Vi()
        local aaq_2 = tonumber(aap_1[attr3])
        if aao_1 and aaq_2 then
            return aao_1 > aaq_2
        end
        local attr = LocalPlayer:GetAttribute("CollectedEggs")
        local aap_3 = type(attr) == "string" and string.find(attr, attr3 .. ",", 1, true)
        return not aap_3
    end
end
function fns.fn2413(uA)
    State.FeedBestOnly = uA == true
end
function fns.fn2430()
    local aa9_2
    local aa7_4
    if not az7_35 or not VD then
        return "Egg tracker unavailable"
    end
    local aa5_1 = {}
    local aa6_1 = Vi()
    for i, child in ipairs(az7_35:GetChildren()) do
        local attr = child:GetAttribute("Egg")
        local aa8_1 = attr and VD[attr]
        local aa9_1 = aa8_1
        if aa8_1 then
            aa8_1 = aa9_1.MaxAmount ~= nil
        end
        if aa8_1 then
            aa8_1 = Uq(child, aa6_1)
        end
        if aa8_1 then
            local aa8_2 = aa5_1[attr] or 0
            aa5_1[attr] = aa8_2 + 1
        end
    end
    local aa7_2 = {}
    for k in pairs(aa5_1) do
        table.insert(aa7_2, k)
    end
    table.sort(aa7_2, function(gj, gk)
        local aaZ = VD[gj].Luck
        local aa4 = if aaZ then 1 else 0
        local aa2 = 788 * aa4 + 1600 * (1 - aa4)
        local aa3 = 3170 * aa4 + 2674 * (1 - aa4)
        if not ((aa2 * 3388 + aa3 * 596 + aa2 * aa3) % 16777213 == 7057024) then
            aaZ = 0
        end
        local aa_ = aaZ
        local aaZ_1 = VD[gk].Luck or 0
        if aa_ == aaZ_1 then
            return gj < gk
        end
        return aa_ > aaZ_1
    end)
    local aa6_2 = 0
    local aa8_3 = {}
    for i, v in ipairs(aa7_2) do
        aa6_2 += aa5_1[v]
        if #aa8_3 < 10 then
            table.insert(aa8_3, string.format("%s x%d", v, aa5_1[v]))
        end
    end
    local aa7_3 = az7_27
    local aa5_2 = 0
    if aa7_3 then
        aa7_3 = TB(az7_27.SecondsRemaining)
    end
    if aa7_3 then
        aa7_4, aa9_2 = pcall(az7_27.SecondsRemaining)
        local aba = aa7_4 and tonumber(aa9_2)
        if aba then
            aa5_2 = math.max(math.ceil(aa9_2), 0)
        end
    end
    local aa7_5 = string.format("Eggs in world: %d  |  Resets in %d:%02d", aa6_2, aa5_2 // 60, aa5_2 % 60)
    if #aa8_3 == 0 then
        return aa7_5 .. "\nNo tracked eggs spawned"
    end
    return aa7_5 .. "\n" .. table.concat(aa8_3, "\n")
end
function fns.fn2441()
    return Ve
end
function fns.fn2451(zI)
    T5.PingEveryone = zI == true
end
function fns.fn2490()
    local aeP = fns.az7_1()
    local aeQ = aeP and aeP:FindFirstChild("Pets")
    if not aeQ then
        return false
    end
    local aeQ_1 = tonumber(LocalPlayer:GetAttribute("MaxPets")) or tonumber(VU("MaxPets"))
    local aeR = aeQ_1 or 5
    local aeS
    for i, v in ipairs(UM()) do
        local aeR_1 = State.AutoSell and az7_14.able(v)
        if not aeR_1 then
            local aeR_2 = az7_25(v)
            if not aeS or aeR_2 > aeS then
                aeS = aeR_2
            end
        end
    end
    if not aeS then
        return false
    end
    local aeR_3 = 0
    local aeT_2 = nil
    for i, child in ipairs(aeQ:GetChildren()) do
        if child:GetAttribute("PetKey") then
            aeR_3 += 1
            local aeP_2 = az7_25(child)
            if not aeT_2 or aeP_2 < aeT_2 then
                aeT_2 = aeP_2
            end
        end
    end
    if aeR_3 < aeR then
        return true
    end
    return aeT_2 ~= nil and aeS > aeT_2
end
function fns.fn2497()
    local apF = T5.ReadWeathers()
    local apG = T5.Enabled and T5.ValidUrl(T5.Url)
    local apH = false
    for k, v in pairs(apF) do
        T5.WeatherActive[k] = v
        local apG_1 = apG and T5.Events.Weather == true and not T5.WeatherSeen[k] and T5.WantsWeather(v)
        if apG_1 then
            T5.WeatherSeen[k] = v.EndsAt
            apH = true
            T5.Queued(T5.WeatherPayload(v, false))
        end
    end
    for k, v in pairs(T5.WeatherActive) do
        if not apF[k] then
            T5.WeatherActive[k] = nil
            local apG_2 = apG and T5.Events.WeatherEnded == true and T5.WantsWeather(v)
            if apG_2 then
                T5.Queued(T5.WeatherPayload(v, true))
            end
        end
    end
    if apH then
        T5.SaveSeen()
    end
end
function fns.fn2516(c4)
    local YL = T2()
    if YL and (YL.Position - c4).Magnitude > 12 then
        az7_29(c4)
    end
end
function fns.fn2518(wJ)
    if not T5.Enabled or T5.Events.Lightning ~= true then
        return
    end
    local anR_1 = type(wJ) ~= "table" or tonumber(wJ.Owner) ~= LocalPlayer.UserId
    if anR_1 then
        return
    end
    local Mutation = wJ.Mutation
    local anS = type(Mutation) ~= "string" or not Ur or not Ur[Mutation]
    if anS then
        return
    end
    local anT = wJ.Kind == "NestEgg" and "Planted egg"
    local anY = if anT then 1 else 0
    local anW = 1009 * anY + 346 * (1 - anY)
    local anX = 55 * anY + 1087 * (1 - anY)
    if not ((anW * 1501 + anX * 3842 + anW * anX) % 16777213 == 1781314) then
        anT = wJ.Kind == "Ridden" and "Ridden pet" or "Pet"
    end
    local anS_3 = anT
    local anT_1 = TZ(Mutation, nil)
    local anU_2 = { anS_3, ("x%.10g stats"):format(anT_1) }
    if type(wJ.Variant) == "string" then
        table.insert(anU_2, wJ.Variant .. " storm")
    end
    T5.Push("Lightning", {
        key = ("%s|%s|%s"):format(Mutation, anS_3, tostring(wJ.Variant)),
        rank = anT_1,
        line = ("› **%s**  ·  %s"):format(Mutation, table.concat(anU_2, "  ·  ")),
        fields = {
            { name = "Mutation", value = Mutation, inline = true },
            { name = "Multiplier", value = ("x%.10g"):format(anT_1), inline = true },
            { name = "Struck", value = anS_3, inline = true }
        }
    })
end
function fns.onOnTeleport(z1)
    if z1 == Enum.TeleportState.Started then
        az7_17.QueueAutoExecute()
    end
end
Ts = nil
Tt = nil
az7_63 = nil
az7_45 = nil
az7_28 = nil
az7_14 = nil
TA = nil
TB = nil
TC = nil
TD = nil
TE = nil
onChildRemoved = nil
TH = nil
az7_56 = nil
az7_39 = nil
az7_23 = nil
TM = nil
TN = nil
TO = nil
TP = nil
TQ = nil
TR = nil
TS = nil
TT = nil
az7_47 = nil
az7_17 = nil
fns.az7_2 = nil
TZ = nil
T_ = nil
T0 = nil
T1 = nil
T2 = nil
T3 = nil
T5 = nil
az7_58 = nil
State = nil
az7_25 = nil
az7_10 = nil
Ua = nil
Uc = nil
local Players, Tu, Tz, TG, TL, TU, T4, Ub, Ud
Ue = nil
Uf = nil
Ug = nil
Ui = nil
az7_51 = nil
az7_34 = nil
az7_20 = nil
fns.az7_5 = nil
Uo = nil
Up = nil
Uq = nil
Ur = nil
Us = nil
az7_62 = nil
az7_44 = nil
az7_27 = nil
az7_13 = nil
Uz = nil
UA = nil
LocalPlayer = nil
UC = nil
UD = nil
UE = nil
UF = nil
UH = nil
az7_54 = nil
CollectionService = nil
az7_22 = nil
UM = nil
UN = nil
folder = nil
UP = nil
UQ = nil
UR = nil
Workspace = nil
az7_46 = nil
fns.az7_1 = nil
U_ = nil
U0 = nil
U1 = nil
local Uh, Un, Ut, UG, UL, UT, UU, UW, UX
U4 = nil
U5 = nil
az7_57 = nil
az7_40 = nil
fns.az7_9 = nil
Va = nil
Vb = nil
Vd = nil
Ve = nil
connection = nil
Vg = nil
Vh = nil
Vi = nil
az7_49 = nil
az7_32 = nil
az7_18 = nil
Vn = nil
Vo = nil
Vp = nil
Vq = nil
HttpService = nil
Vs = nil
Vt = nil
Vu = nil
az7_60 = nil
az7_42 = nil
az7_11 = nil
VC = nil
VD = nil
VE = nil
VF = nil
VH = nil
az7_52 = nil
az7_35 = nil
az7_21 = nil
fns.az7_6 = nil
VM = nil
VO = nil
VP = nil
local U2, Lighting, TeleportService, Vc, GuiService, Vx, VirtualUser, VA, VB, UserInputService, RunService
VQ = nil
VR = nil
VS = nil
VU = nil
az7_29 = nil
az7_15 = nil
VY = nil
VZ = nil
V_ = nil
local VT, VV
VT = nil
VV = nil
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, Ve, TeleportService, Lighting, Workspace, CollectionService, LocalPlayer, az7_19, fns.az7_5 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local az7_4 = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
Ve = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
game:GetService("TweenService")
Workspace = game:GetService("Workspace")
CollectionService = game:GetService("CollectionService")
LocalPlayer = Players.LocalPlayer
if (az7_19 or RunService or az7_19 and RunService) and (CollectionService and az7_19 and (RunService or az7_19)) and not ((az7_19 or RunService or az7_19 and RunService) and (CollectionService and az7_19 and (RunService or az7_19))) then
    Ve = "OuroborosRideAPet"
else
    az7_19 = "OuroborosRideAPet"
end
fns.az7_5 = fns.fn2441
if getgenv then
    getgenv().gethui = fns.az7_5
end
az7_17, az7_28, az7_61, VP, az7_35, VD, az7_60, Vo, az7_49, Va, az7_57, U_, az7_46, UP, UE, az7_27, Ur, Ui, Uc, az7_63, VZ, VR, fns.az7_6, VE, Vx, Vp, az7_43, Vc, az7_40, U0, UW, UR, UG, az7_13, Ut, az7_51, Ue, State, Ug, Tu, UA, UL, TB, Tt, az7_52, T0, Vd, UH, Uf, T2, TE, VU, fns.az7_9, fns.az7_1, TM, VH, Vg, Ua, TC, az7_29, VQ, U5, Us, Tz, U1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fns.fn1807)
function fns.az7_38(v)
    local WM
    local WO
    local WN
    WM = nil
    WN = nil
    WO = nil
    local WP = v ~= ""
    local WQ = type(v) == "string" and WP
    assert(WQ, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    WM = getgenv()
    assert(type(WM) == "table", "getgenv did not return a table")
    local WP_1 = WM[v]
    if WP_1 ~= nil then
        local WQ_1 = type(WP_1) == "table" and type(WP_1.Unload) == "function"
        assert(WQ_1, "Namespace is occupied")
        WP_1.Unload()
        assert(WM[v] == nil, "Previous instance did not release its namespace")
    end
    WN = {}
    WO = { State = {}, Unloaded = false }
    WO.Track = function(D)
        assert(type(D) == "function", "Cleanup must be callable")
        if WO.Unloaded then
            D()
        else
            table.insert(WN, D)
        end
        return D
    end
    WO.Unload = function()
        local Wz_1
        local Wy_1
        if WO.Unloaded then
            return
        end
        WO.Unloaded = true
        local Ww = {}
        local WG = #WN
        local WF = -1
        while false and WG <= 1 or true and WG >= 1 do
            local WH = WG
            local Wx_1 = table.remove(WN, WH)
            Wy_1, Wz_1 = pcall(Wx_1)
            if not Wy_1 then
                table.insert(Ww, tostring(Wz_1))
            end
            WG += WF
        end
        table.clear(WO.State)
        if #Ww > 0 then
            error("Cleanup incomplete: " .. table.concat(Ww, "; "), 0)
        end
        if WM[v] == WO then
            WM[v] = nil
        end
    end
    WM[v] = WO
    return WO
end
UL = function(Q, R)
    local WT = type(Q) == "table" and type(Q.Track) == "function"
    assert(WT, "FeatureAPI required")
    local WT_1 = type(R) == "table" and type(R.OnUnload) == "function"
    assert(WT_1, "UI library required")
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
az7_17 = fns.az7_38(az7_19)
local az7_55 = fns.fn553
TB = fns.fn1263
Tt = fns.fn1375
local az7_68 = az7_55(az7_4)
az7_52 = function(ag, ah, ai)
    local W__1
    if not ag then
        return nil
    end
    local WZ = ag:FindFirstChild(ah)
    local WZ_1
    if WZ then
        return WZ
    end
    WZ_1, W__1 = pcall(function()
        local WX = ai or 15
        return ag:WaitForChild(ah, WX)
    end)
    return WZ_1 and W__1 or nil
end
local az7_73 = fns.fn1167
local az7_66 = az7_52(az7_68, "GameData", 30)
local az7_71 = az7_52(az7_68, "GameServices", 30)
local az7_33 = az7_52(az7_68, "Remotes", 30)
az7_28 = az7_52(az7_33, "Game", 30)
local autoReconnectLoop = az7_52(az7_28, "Plot", 20)
if VE and VQ and (TC and az7_68) or not VE and not az7_13 and (TC and not az7_68) or not (VE and VQ and (TC and az7_68) or not VE and not az7_13 and (TC and not az7_68)) then
    az7_61 = az7_52(az7_52(az7_68, "Dialogue", 30), "Remotes", 20)
else
    az7_52 = az7_68(az7_68(az7_61, "Dialogue", 30), "Remotes", 20)
end
VP = az7_52(az7_68, "ServerData", 30)
az7_35 = az7_52(VP, "ActiveEggs", 30)
VD = az7_73(az7_66, "Eggs")
az7_60 = az7_73(az7_66, "Pets")
Vo = az7_73(az7_71, "PetAging")
az7_49 = az7_73(az7_66, "Shop")
if not U_ and U_ and (not az7_27 and TC) or (az7_27 and TC or (not az7_27 or U_)) or not (not U_ and U_ and (not az7_27 and TC) or (az7_27 and TC or (not az7_27 or U_))) then
    Va = az7_73(az7_66, "Rebirths")
else
    az7_66 = Va(az7_73, "Rebirths")
end
az7_57 = az7_73(az7_66, "IndexRewards")
U_ = az7_73(az7_66, "HatchLuck")
az7_46 = az7_73(az7_66, "General")
UP = az7_73(az7_66, "EggBaskets")
UE = az7_73(az7_71, "DayNight")
az7_27 = az7_73(az7_71, "EggCycle")
Ur = az7_73(az7_66, "Mutations")
Ui = az7_73(az7_66, "Foods")
Uc = az7_73(az7_66, "Weather")
local az7_24 = fns.fn742
az7_63 = az7_24(az7_28, "EggPickup", "RemoteEvent")
VZ = az7_24(az7_28, "EggPlaced", "RemoteEvent")
VR = az7_24(az7_28, "Hatch", "RemoteEvent")
fns.az7_6 = az7_24(az7_28, "ClaimIndexReward", "RemoteEvent")
VE = az7_24(az7_28, "Rebirth", "RemoteEvent")
Vx = az7_24(az7_28, "BuyWithCash", "RemoteEvent")
Vp = az7_24(az7_28, "ShopStock", "RemoteEvent")
if ((autoReconnectLoop and not UG or not UG and not autoReconnectLoop or (not UG or not UG or autoReconnectLoop and not autoReconnectLoop)) and (UG or UG or (not UG or UG) or not autoReconnectLoop and not autoReconnectLoop and (autoReconnectLoop or autoReconnectLoop)) or (not autoReconnectLoop or not autoReconnectLoop) and (not autoReconnectLoop and not UG) and (autoReconnectLoop and not UG or UG and UG) and (UG and UG and (not autoReconnectLoop and autoReconnectLoop) and ((autoReconnectLoop or autoReconnectLoop) and (UG and not autoReconnectLoop)))) and not ((autoReconnectLoop and not UG or not UG and not autoReconnectLoop or (not UG or not UG or autoReconnectLoop and not autoReconnectLoop)) and (UG or UG or (not UG or UG) or not autoReconnectLoop and not autoReconnectLoop and (autoReconnectLoop or autoReconnectLoop)) or (not autoReconnectLoop or not autoReconnectLoop) and (not autoReconnectLoop and not UG) and (autoReconnectLoop and not UG or UG and UG) and (UG and UG and (not autoReconnectLoop and autoReconnectLoop) and ((autoReconnectLoop or autoReconnectLoop) and (UG and not autoReconnectLoop)))) then
    az7_28 = az7_43(az7_24, "Restock", "RemoteEvent")
else
    az7_43 = az7_24(az7_28, "Restock", "RemoteEvent")
end
Vc = az7_24(autoReconnectLoop, "Upgrades", "RemoteEvent")
az7_40 = az7_24(az7_61, "DialogueSelect", "RemoteEvent")
U0 = az7_24(az7_28, "FeedPet", "RemoteEvent")
UW = az7_24(az7_28, "PetFed", "RemoteEvent")
UR = az7_24(az7_28, "LightningStrike", "RemoteEvent")
UG = az7_24(az7_28, "EggArrivalClaim", "RemoteEvent")
az7_13 = az7_24(az7_52(az7_52(az7_68, "packages", 20), "Net", 20), "RE/VolcanoDip", "RemoteEvent")
Ut = "I would like to sell this"
az7_51 = { "Common", "Rare", "Epic", "Legendary", "Mythic", "Divine", "Ethereal" }
Ue = 0.3
State = az7_17.State
State.Status = {}
State.StatusAt = {}
State.AutoPickup = false
State.ClaimDelay = 0.5
State.Grabbed = 0
State.Delivered = 0
State.Placed = 0
State.Hatched = 0
State.Broke = 0
State.Sold = 0
State.Fed = 0
State.EggStats = ""
State.PetStats = ""
State.PickupRarities = {}
State.PickupEggs = {}
State.PickupMinKG = 0
State.AutoPlace = false
State.PlaceRarities = {}
State.PlaceEggs = {}
State.PlaceMinKG = 0
State.AutoHatch = false
State.AutoEquipBest = false
State.AutoClaimIndex = false
State.AutoRebirth = false
State.AutoHatchLuck = false
State.AutoSell = false
State.SellPets = {}
State.SellUnlisted = false
State.SellKeepMutated = true
State.AutoBuyGears = false
State.BuyGears = {}
State.AutoBuyFood = false
State.BuyFood = {}
State.EggEsp = false
State.EggEspPets = true
State.EspRarities = {}
State.EspEggs = {}
State.AutoFeed = false
State.FeedFoods = {}
State.FeedBestOnly = false
State.FeedAboveIncome = false
State.FeedMinIncome = 0
State.FeedAboveAge = false
State.FeedMinAge = 1
State.FeedRarities = {}
State.WebhookSent = 0
State.WebhookFailed = 0
State.AutoExecute = false
State.AutoServerHop = false
State.HopInterval = 300
State.AutoVolcanoDip = false
State.HopMinPlayers = 1
State.HopMode = "Random"
State.HopAfterEgg = false
State.HopPending = false
T0 = fns.fn1636
az7_17.GetStatus = fns.fn359
az7_17.Support = fns.fn245
Vd = fns.fn931
UH = fns.fn451
Uf = fns.fn769
T2 = fns.fn493
if (false or (Ue or U_)) and (not az7_52 and U_ and (not VP or Ue)) and (not az7_52 and U_ or Ue and not az7_52 or (not VR or Ue or (false or U_))) and not ((false or (Ue or U_)) and (not az7_52 and U_ and (not VP or Ue)) and (not az7_52 and U_ or Ue and not az7_52 or (not VR or Ue or (false or U_)))) then
    fns.az7_9 = fns.fn173
    TE = fns.fn2068
    VU = fns.fn606
else
    TE = fns.fn173
    VU = fns.fn2068
    fns.az7_9 = fns.fn606
end
fns.az7_1 = fns.fn1574
TM = fns.fn1410
VH = fns.fn45
Vg = fns.fn795
Ug = false
Ua = fns.fn1963
TC = fns.fn1054
Tu = 250
az7_29 = function(cy, cz, cA)
    local Yy = T2()
    if not Yy then
        return false
    end
    local max = math.max
    local YC = tonumber(cz) or Tu
    cz = max(YC, 1)
    local YB_1 = TE()
    local YC_1 = YB_1 and YB_1.PlatformStand
    if YB_1 then
        YB_1.PlatformStand = true
    end
    local YC_2 = os.clock() + (cy - Yy.Position).Magnitude / cz + 10
    local YE = false
    local YI = false
    repeat
        local YA
        local YF_1 = Tt() and os.clock() < YC_2
        if YF_1 then
            Yy = T2()
            if not Yy then
                YI = true
            else
                local Yx = cy - Yy.Position
                local Magnitude = Yx.Magnitude
                if Magnitude <= 2 then
                    YE = true
                    YI = true
                else
                    local YF_2 = cA and not cA()
                    if YF_2 then
                        YI = true
                    else
                        YA = RunService.RenderStepped:Wait()
                        pcall(function()
                            Yy.CFrame = CFrame.new(Yy.Position + Yx.Unit * math.min(Magnitude, cz * YA))
                            Yy.AssemblyLinearVelocity = Vector3.zero
                        end)
                    end
                end
            end
        else
            YI = true
        end
    until YI
    if YB_1 and YB_1.Parent then
        local YC_3 = YC_1 or false
        YB_1.PlatformStand = YC_3
    end
    return YE
end
VQ = fns.fn107
U5 = fns.fn2516
Us = fns.fn240
Tz = fns.fn1560
U1 = function(dw)
    local Y0_1
    local Y__1
    Y__1, Y0_1 = pcall(function()
        return dw:GetPivot()
    end)
    if Y__1 then
        return Y0_1
    end
    return nil
end
az7_17.EggRarityValues = fns.fn651
az7_17.PetValues = fns.fn1187
az7_17.ShopValues = function(dN)
    local Zw
    Zw = nil
    local Zx = az7_49
    local Zy = {}
    if Zx then
        Zx = az7_49.Categories
    end
    if Zx then
        Zx = az7_49.Categories[dN]
    end
    Zw = Zx
    if Zw then
        for k in pairs(Zw) do
            table.insert(Zy, k)
        end
    end
    table.sort(Zy, function(dT, dU)
        local Zs = Zw[dT].Price or 0
        local Zs_1 = Zw[dU].Price or 0
        if Zs == Zs_1 then
            return dT < dU
        end
        return Zs < Zs_1
    end)
    return Zy
end
UA = {}
local az7_26 = az7_43
if az7_26 then
    autoReconnectLoop = 3
    repeat
        az7_33 = (vector.create((autoReconnectLoop * 1 + 4) % 11 + 1, (autoReconnectLoop * 9 + 12) % 13 + 1, (autoReconnectLoop * 9 + 5) % 17 + 1))
        local aFU = vector.floor(az7_33) + vector.ceil(az7_33 * -1)
        if vector.dot(aFU, aFU) == 0 then
            az7_26 = az7_43.OnClientEvent:Connect(fns.onOnClientEvent)
        else
            az7_43 = az7_26.OnClientEvent:Connect(fns.onOnClientEvent)
        end
        autoReconnectLoop = (autoReconnectLoop + 1) % 4
    until (autoReconnectLoop * 3 + 3) % 4 == 3
end
local az7_30 = az7_26
if az7_30 then
    az7_17.Track(function()
        az7_30:Disconnect()
    end)
end
Vb, az7_47, az7_14, az7_54, Uz, az7_62, UU, folder, UD, az7_44, VB, fns.az7_2, Vq, TU, Uh, Ub, T5, az7_33, TG, VA, az7_22, T3, TN, Vs, UN, az7_45, VC, Vi, Uq, az7_42, VM, az7_23, VS, VF, T4, UM, TH, TD, Vu, az7_58, UQ, Ud, V_, az7_20, VT, TL, UC, TZ, az7_21, az7_25, TA, az7_18, az7_34, UT, Vn, Uo, onChildRemoved, VO, TP, az7_11, TR, Vt, UF, TQ, VY, az7_32, T_, UX, Un, az7_39, U4, az7_10, Vh, Up, az7_15, TS, T1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
TG = fns.fn1977
VA = fns.fn673
az7_22 = fns.fn812
T3 = fns.fn941
TN = fns.fn2114
Vs = fns.fn259
UN = fns.fn1021
az7_45 = fns.fn320
VC = fns.fn578
Vi = fns.fn1802
Uq = fns.fn2410
az7_42 = fns.fn726
Vb = { Failed = setmetatable({}, { __mode = "k" }), MaxFails = 3 }
Vb.stealable = fns.fn1988
Vb.anyLeft = fns.fn1395
VM = fns.fn75
az7_47 = 10
az7_23 = fns.fn995
VS = fns.fn94
VF = fns.fn2430
State.TrackerText = "Loading egg tracker"
az7_17.WorldEggSummary = fns.fn1456
fns.az7_38 = fns.fn484
T4 = fns.fn884
UM = fns.fn1697
if (fns.az7_2 or Vt or (Vt or not Vt)) and (fns.az7_2 and false or not fns.az7_2 and not T1) and not ((fns.az7_2 or Vt or (Vt or not Vt)) and (fns.az7_2 and false or not fns.az7_2 and not T1)) then
    TD = fns.fn1183
    az7_58 = fns.fn731
    TH = fns.fn792
    Vu = fns.fn643
else
    TH = fns.fn1183
    TD = fns.fn731
    Vu = fns.fn792
    az7_58 = fns.fn643
end
az7_14 = { Failed = setmetatable({}, { __mode = "k" }) }
az7_14.able = fns.fn1018
UQ = fns.fn38
Ud = fns.fn386
V_ = fns.fn1761
az7_54 = 8
Uz = 12
az7_62 = 7
az7_20 = fns.fn415
VT = fns.fn434
TL = function(iM)
    local ady = TE()
    local adz = Uf()
    local adA = not adz
    local adB = not ady
    local adH = if adB then 1 else 0
    local adF = 3473 * adH + 121 * (1 - adH)
    local adG = 3655 * adH + 1265 * (1 - adH)
    if not ((adF * 3497 + adG * 45 + adF * adG) % 16777213 == 8226158) then
        adB = adA
    end
    if adB or not iM then
        return false
    end
    if iM.Parent ~= adz then
        pcall(function()
            ady:UnequipTools()
        end)
        task.wait(0.15)
    end
    for i, child in ipairs(adz:GetChildren()) do
        local adA_2 = child ~= iM
        local adB_1 = child:IsA("Tool") and adA_2
        if adB_1 then
            pcall(function()
                ady:UnequipTools()
            end)
            task.wait(0.15)
            break
        end
    end
    if iM.Parent ~= adz then
        pcall(function()
            ady:EquipTool(iM)
        end)
    end
    local adA_3 = os.clock() + 1.5
    while true do
        local adB_2 = Tt() and os.clock() < adA_3
        if not adB_2 then
            return false
        end
        local adB_3 = iM.Parent == adz
        if adB_3 then
            for i, child in ipairs(adz:GetChildren()) do
                local adC_1 = child ~= iM
                local adD = child:IsA("Tool") and adC_1
                if adD then
                    adB_3 = false
                    break
                end
            end
        end
        if adB_3 then
            break
        end
        task.wait(0.05)
    end
    return true
end
UC = function()
    if not VZ then
        return false
    end
    local adY = VT()
    if #adY == 0 then
        T0("No clear spot left on your ranch")
        return false
    elseif Ud() == 0 then
        local adZ_1 = V_()
        local ad__1 = not adZ_1 or not TL(adZ_1)
        if ad__1 then
            return false
        end
        T0("Planting an egg on your ranch")
        local adZ_2 = math.min(#adY, 6)
        for i = 1, adZ_2 do
            local adX
            if not Tt() then
                return false
            end
            adX = adY[i]
            local adZ_3 = az7_23()
            pcall(function()
                VZ:FireServer({ PlantPosition = adX })
            end)
            local ad__2 = os.clock() + 1.5
            while true do
                local ad0_1 = Tt() and os.clock() < ad__2
                if ad0_1 then
                    if az7_23() > adZ_3 then
                        local aCV = State
                        aCV.Placed = aCV.Placed + 1
                        return true
                    end
                    task.wait(0.1)
                    continue
                end
                break
            end
        end
        return false
    else
        T0("Planting an egg on your ranch")
        local adZ_4 = math.min(#adY, 6)
        for i = 1, adZ_4 do
            local adX
            if not Tt() then
                return false
            end
            adX = adY[i]
            local adZ_5 = az7_23()
            pcall(function()
                VZ:FireServer({ PlantPosition = adX })
            end)
            local ad__3 = os.clock() + 1.5
            while true do
                local ad0_2 = Tt() and os.clock() < ad__3
                if ad0_2 then
                    if az7_23() > adZ_5 then
                        local aCV = State
                        aCV.Placed = aCV.Placed + 1
                        return true
                    end
                    task.wait(0.1)
                    continue
                end
                break
            end
        end
        return false
    end
end
TZ = fns.fn1269
az7_21 = fns.fn110
az7_25 = fns.fn810
TA = fns.fn1293
az7_18 = function(j9)
    local aeD_1
    local aeC_1
    if not TB(getconnections) then
        return false
    end
    aeC_1, aeD_1 = pcall(getconnections, j9.Activated)
    local aeE = not aeC_1 or type(aeD_1) ~= "table"
    local aeI = if aeE then 1 else 0
    local aeG = 364 * aeI + 2 * (1 - aeI)
    local aeH = 2939 * aeI + 3023 * (1 - aeI)
    if not ((aeG * 3454 + aeH * 915 + aeG * aeH) % 16777213 == 5016237) then
        aeE = #aeD_1 == 0
    end
    if aeE then
        return false
    end
    for i, v in ipairs(aeD_1) do
        local aeO = v
        pcall(function()
            aeO:Fire()
        end)
    end
    return true
end
az7_34 = fns.fn2490
az7_71 = fns.fn853
az7_66 = function()
    while Tt() do
        task.wait(0.5)
        local afg = Tt() and State.AutoHatch
        if afg and VR then
            for i, v in ipairs(T4()) do
                local afo = v
                local afg_1 = not Tt() or not State.AutoHatch
                if afg_1 then
                    break
                else
                    local afg_2 = U1(afo)
                    local attr = afo:GetAttribute("EggKey")
                    local afh_1 = afg_2 and attr and Ua(8)
                    if afh_1 then
                        T0("Hatching " .. afo.Name)
                        local afh_2 = afg_2.Position + Vector3.new(0, 4, 8)
                        local afg_3 = Us(afh_2) and afo.Parent
                        if afg_3 then
                            Tz(afh_2, function()
                                VR:FireServer({ EggKey = attr })
                            end, function()
                                return afo.Parent == nil
                            end, 3, 0.6)
                        end
                        TC()
                    end
                end
            end
        end
    end
end
UT = fns.fn940
az7_4 = function()
    while Tt() do
        task.wait(1)
        local afv = Tt() and State.AutoHatchLuck
        if afv and Vc then
            local afv_1 = 0
            for i = 1, 25 do
                local afu
                local afw_1 = not Tt() or not State.AutoHatchLuck
                if afw_1 then
                    break
                else
                    local afw_2 = UT()
                    local afx = not afw_2 or fns.az7_9() < afw_2
                    if afx then
                        break
                    else
                        local afx_1 = tonumber(VU("HatchUpgrades")) or 0
                        afu = fns.az7_9() >= afw_2 * 3
                        T0("Upgrading hatch luck")
                        pcall(function()
                            if afu then
                                Vc:FireServer("Max")
                            else
                                Vc:FireServer()
                            end
                        end)
                        task.wait(0.35)
                        local afw_3 = tonumber(VU("HatchUpgrades")) or 0
                        if afw_3 == afx_1 then
                            afv_1 += 1
                            if afv_1 >= 3 then
                                break
                            end
                        else
                            afv_1 = 0
                        end
                    end
                end
            end
        end
    end
end
az7_55 = fns.fn2180
az7_73 = fns.fn1025
az7_14.snapTo = function(me)
    local afQ
    afQ = nil
    afQ = T2()
    if not afQ then
        return false
    end
    pcall(function()
        afQ.CFrame = CFrame.new(me)
        afQ.AssemblyLinearVelocity = Vector3.zero
    end)
    return true
end
az7_14.one = function(mj, mk, ml, mm)
    local afS = TE()
    local afT = Uf()
    local afU = not afS or not afT or not mm.Parent
    local afU_5
    if afU then
        return false
    end
    local afU_1 = T2()
    if afU_1 and (afU_1.Position - ml).Magnitude > 8 then
        az7_14.snapTo(ml)
    end
    if mm.Parent ~= afT then
        pcall(function()
            afS:EquipTool(mm)
        end)
        local afU_2 = os.clock() + 1
        while true do
            local afV_1 = Tt() and mm.Parent and mm.Parent ~= afT and os.clock() < afU_2
            if afV_1 then
                task.wait()
                continue
            end
            break
        end
        if mm.Parent ~= afT then
            return false
        end
        pcall(fireproximityprompt, mk)
        pcall(function()
            az7_40:FireServer(mj, Ut)
        end)
        local afT_1 = os.clock() + 3
        while true do
            local afU_3 = Tt() and mm.Parent and os.clock() < afT_1
            if afU_5 then
                task.wait()
                continue
            end
            break
        end
        if mm.Parent == nil then
            local aFE = State
            aFE.Sold = aFE.Sold + 1
            return true
        end
        local Failed = az7_14.Failed
        local afU_4 = az7_14.Failed[mm] or 0
        Failed[mm] = afU_4 + 1
        return false
    end
    pcall(fireproximityprompt, mk)
    pcall(function()
        az7_40:FireServer(mj, Ut)
    end)
    local afT_3 = os.clock() + 3
    while true do
        afU_5 = Tt() and mm.Parent and os.clock() < afT_3
        if afU_5 then
            task.wait()
            continue
        end
        break
    end
    if mm.Parent == nil then
        local aFE = State
        aFE.Sold = aFE.Sold + 1
        return true
    end
    local Failed = az7_14.Failed
    local afU_6 = az7_14.Failed[mm] or 0
    Failed[mm] = afU_6 + 1
    return false
end
az7_68 = fns.fn316
Vn = function(m7, m8)
    local agm = az7_49 and az7_49.Categories and az7_49.Categories[m7]
    if not agm or not Vx then
        return
    end
    for k, v in pairs(agm) do
        local agw = k
        if not Tt() then
            return
        end
        if m8[agw] == true then
            local agm_2 = tonumber(v.Price) or 0
            local agm_3 = TG(m7, agw) > 0 and fns.az7_9() >= agm_2
            if agm_3 then
                T0("Buying " .. agw)
                pcall(function()
                    Vx:FireServer(m7, agw)
                end)
                VA(m7, agw)
                task.wait(0.25)
            end
        end
    end
end
az7_19 = fns.fn1332
folder = nil
UD = {}
az7_44 = {}
Uo = fns.fn826
onChildRemoved = function(nM)
    local agH = UD[nM]
    if agH then
        UD[nM] = nil
        pcall(function()
            agH.Part:Destroy()
        end)
    end
end
VO = fns.fn1722
TP = function()
    for i, v in ipairs(az7_44) do
        local agU = v
        pcall(function()
            agU:Disconnect()
        end)
    end
    table.clear(az7_44)
    for k in pairs(UD) do
        onChildRemoved(k)
    end
    table.clear(UD)
    if folder then
        pcall(function()
            folder:Destroy()
        end)
        folder = nil
    end
end
az7_11 = fns.fn1348
az7_17.SetEggEspPets = fns.fn1980
TR = fns.fn1474
az7_17.SetEspRarities = fns.fn1121
az7_17.SetEspEggs = fns.fn381
az7_17.SetEggEsp = fns.fn971
az7_17.Track(TP)
az7_24 = function()
    local ahe_1
    while Tt() do
        task.wait(0.5)
        local ahb = Tt() and State.EggEsp
        if ahb then
            local ahb_1 = T2()
            local ahc = Vi()
            for k, v in pairs(UD) do
                local aha
                local ahn = v
                local ahd = not k.Parent or not ahn.Part.Parent or not Uq(k, ahc)
                local ahd_3
                if ahd then
                    onChildRemoved(k)
                elseif ahb_1 then
                    local ahd_1 = math.floor((ahn.Part.Position - ahb_1.Position).Magnitude)
                    aha = string.format("%s\n%s  %dm", ahn.Name, az7_22(ahn.Name), ahd_1)
                    if State.EggEspPets and UU then
                        ahd_3, ahe_1 = pcall(UU, ahn.Name)
                        local ahf = ahd_3 and type(ahe_1) == "string"
                        if ahf and ahe_1 ~= "" then
                            aha ..= "\n" .. ahe_1
                        end
                    end
                    pcall(function()
                        ahn.Label.Text = aha
                    end)
                end
            end
        end
    end
end
az7_17.SetAutoPickup = fns.fn963
az7_17.SetClaimDelay = fns.fn1400
az7_17.SetPickupRarities = fns.fn117
az7_17.SetPickupEggs = fns.fn1200
az7_17.SetAutoVolcanoDip = fns.fn430
az7_17.SetPickupMinKG = fns.fn1672
az7_17.SetAutoPlace = fns.fn1211
az7_17.SetPlaceRarities = fns.fn586
az7_17.SetPlaceEggs = fns.fn1680
az7_17.SetPlaceMinKG = fns.fn461
az7_17.SetAutoHatch = fns.fn833
az7_17.SetAutoEquipBest = fns.fn372
az7_17.SetAutoClaimIndex = fns.fn1654
az7_17.SetAutoRebirth = fns.fn762
az7_17.SetAutoHatchLuck = fns.fn69
az7_17.SetAutoSell = fns.fn79
az7_17.SetSellPets = fns.fn688
az7_17.SetSellUnlisted = fns.fn1756
az7_17.SetSellKeepMutated = fns.fn2268
az7_17.SetAutoBuyGears = fns.fn1335
az7_17.SetBuyGears = fns.fn47
az7_17.SetAutoBuyFood = fns.fn744
az7_17.SetBuyFood = fns.fn1253
az7_17.TeleportToPlot = fns.fn76
az7_17.TeleportToSeller = fns.fn2090
VB = 1.6
Vt = fns.fn2162
UF = fns.fn2093
fns.az7_2 = { "K", "M", "B", "T", "Qa", "Qi", "Sx", "Sp" }
TQ = fns.fn774
VY = fns.fn1338
az7_32 = fns.fn367
T_ = fns.fn1834
UX = fns.fn906
Un = fns.fn2058
TU = {}
az7_39 = fns.fn898
UU = function(rA)
    local aiZ
    aiZ = nil
    local ai_ = tonumber(VU("HatchUpgrades")) or 0
    aiZ = UX()
    local ai__1 = table.concat((function()
        local aiT = {}
        for k in pairs(aiZ) do
            table.insert(aiT, k)
        end
        table.sort(aiT)
        return aiT
    end)(), ",")
    local ai1 = rA .. "|" .. ai_ .. "|" .. ai__1
    local ai__2 = TU[ai1]
    if ai__2 then
        return ai__2
    end
    local ai__3 = az7_39(rA)
    if not ai__3 or #ai__3 == 0 then
        return ""
    end
    local ai0_2 = {}
    local ai2 = ai__3[1]
    table.insert(ai0_2, string.format("Likely: %s %s", ai2.Name, Un(ai2.Chance)))
    local ai3
    for i, v in ipairs(ai__3) do
        if not aiZ[v.Name] then
            ai3 = v
            break
        end
    end
    if ai3 then
        table.insert(ai0_2, string.format("New: %s %s", ai3.Name, Un(ai3.Chance)))
    else
        table.insert(ai0_2, "New: none - index covered")
    end
    local ai__4 = table.concat(ai0_2, "\n")
    table.clear(TU)
    TU[ai1] = ai__4
    return ai__4
end
U4 = fns.fn1555
az7_10 = fns.fn1601
Vh = fns.fn1970
Up = fns.fn786
az7_15 = fns.fn1016
TS = function(sU, sV)
    local attr
    attr = nil
    local Name
    attr = sU:GetAttribute("PetKey")
    local akj = TE()
    local akk = not attr or not akj
    local akq = if akk then 1 else 0
    local ako = 797 * akq + 118 * (1 - akq)
    local akp = 942 * akq + 3275 * (1 - akq)
    if not ((ako * 2272 + akp * 110 + ako * akp) % 16777213 == 2665178) then
        akk = not sV
    end
    if not akk then
        akk = not sV.Parent
    end
    if akk then
        return false
    end
    local akq_1 = if sV.Parent ~= Uf() then 1 else 0
    if akq_1 == 1 then
        pcall(function()
            akj:EquipTool(sV)
        end)
        task.wait(0.2)
    end
    if sV.Parent ~= Uf() then
        return false
    end
    Name = sV.Name
    local akk_1 = UW
    local akg = false
    if akk_1 then
        akk_1 = UW.OnClientEvent:Connect(function(ta)
            local ake = type(ta) == "table" and ta.PetKey == attr
            if ake then
                akg = true
            end
        end)
    end
    local akl = akk_1
    pcall(function()
        U0:FireServer(attr, Name)
    end)
    local akk_2 = os.clock() + VB
    while true do
        local akm = Tt() and not akg and os.clock() < akk_2
        if akm then
            task.wait(0.1)
            continue
        end
        break
    end
    if akl then
        akl:Disconnect()
    end
    return akg
end
az7_61 = fns.fn2233
az7_17.FoodValues = fns.fn2394
az7_17.PetRarityValues = fns.fn754
az7_17.EggNameValues = fns.fn730
az7_17.MutationValues = fns.fn2290
az7_17.WeatherValues = function()
    local alC
    alC = nil
    local alD = Uc
    local alD_2
    local alE = { "Storm" }
    if alD then
        alD = type(Uc.Data) == "table"
    end
    if alD then
        alD = Uc.Data
    end
    local alG = alD or {}
    local alG_2
    local alD_1 = Uc
    if alD_1 then
        alD_1 = type(Uc.StormRarity) == "table"
    end
    if alD_1 then
        alD_1 = Uc.StormRarity
    end
    alC = alD_1 or {}
    alD_2, alG_2 = {}, {}
    for k in pairs(alG) do
        if type(k) == "string" then
            local insert = table.insert
            local alI = alC[k] and alD_2 or alG_2
            insert(alI, k)
        end
    end
    table.sort(alD_2, function(uo, up)
        local alz = tonumber(alC[uo]) or 0
        local alA = tonumber(alC[up]) or 0
        return alz < alA
    end)
    table.sort(alG_2)
    for i, v in ipairs({ alD_2, alG_2 }) do
        for i, v in ipairs(v) do
            table.insert(alE, v)
        end
    end
    return alE
end
az7_17.SetAutoFeed = fns.fn663
az7_17.SetFeedFoods = fns.fn1723
az7_17.SetFeedBestOnly = fns.fn2413
az7_17.SetFeedAboveIncome = fns.fn2219
az7_17.SetFeedMinIncome = fns.fn1888
az7_17.SetFeedAboveAge = fns.fn1983
az7_17.SetFeedMinAge = fns.fn2322
az7_17.SetFeedRarities = fns.fn125
Uh = 3
Ub = 15
T5 = {
    Url = "",
    Enabled = false,
    PingId = "",
    PingUser = false,
    PingEveryone = false,
    Events = { ClaimedEgg = false, HatchedPet = false, Lightning = false, Weather = false, WeatherEnded = false },
    EggRarities = {},
    EggNames = {},
    EggMutations = {},
    Weathers = {},
    WeatherSeen = {},
    WeatherActive = {},
    WeatherPrivate = nil,
    WeatherFile = "OuroborosHub/RideAPet/weather-seen.json",
    MinIncome = 0,
    Queue = {},
    Batches = {},
    Draining = false,
    Connections = {}
}
T5.Rule = "────────────────────────"
T5.Kinds = {
    ClaimedEgg = { Title = "Egg Claimed", Plural = "%d Eggs Claimed", Color = 16758465 },
    HatchedPet = { Title = "Pet Hatched", Plural = "%d Pets Hatched", Color = 5814783 },
    Lightning = { Title = "Lightning Mutation", Plural = "%d Lightning Mutations", Color = 16776960 },
    Weather = { Title = "Weather Started", Plural = "%d Weather Events", Color = 7000063 }
}
T5.Requester = function()
    local amh_1
    local amg_1
    local amm = if TB(request) then 1 else 0
    if amm == 1 then
        return request
    elseif TB(http_request) then
        return http_request
    else
        for i, v in ipairs({ "syn", "http", "fluxus" }) do
            local ams = v
            amg_1, amh_1 = pcall(function()
                local amd = getgenv and getgenv()[ams]
                local ame = amd or nil
                local ame_1 = type(ame) == "table" and ame.request
                return ame_1 or nil
            end)
            local ami = amg_1 and TB(amh_1)
            if ami then
                return amh_1
            end
        end
        return nil
    end
end
T5.ValidUrl = fns.fn1653
T5.Post = fns.fn454
T5.Drain = fns.fn1681
T5.Queued = fns.fn2224
T5.Mention = fns.fn340
T5.Footer = fns.fn1144
T5.BatchPayload = function(vp, vq)
    local amQ
    amQ = nil
    local amU_1
    local amT_2
    local amS_1
    local amR = T5.Kinds[vp]
    amQ, amS_1 = {}, {}
    for i, v in ipairs(vq) do
        local amT_1 = amQ[v.key]
        if not amT_1 then
            amT_1 = { count = 0, item = v }
            amQ[v.key] = amT_1
            table.insert(amS_1, v.key)
        end
        amT_1.count = amT_1.count + 1
    end
    table.sort(amS_1, function(vy, vz)
        local item2
        local item
        item, item2 = amQ[vy].item, amQ[vz].item
        if item.rank ~= item2.rank then
            return item.rank > item2.rank
        end
        return vy < vz
    end)
    amU_1, amT_2 = {}, 0
    for i, v in ipairs(amS_1) do
        if amT_2 >= 18 then
            table.insert(amU_1, ("› *and %d more*"):format(#amS_1 - amT_2))
            break
        end
        local amV_1 = amQ[v]
        local amW_1 = amV_1.item.line
        if amV_1.count > 1 then
            amW_1 ..= ("   ×%d"):format(amV_1.count)
        end
        table.insert(amU_1, amW_1)
        amT_2 += 1
    end
    local amV_2 = {}
    local amS_2 = #vq == 1 and type(vq[1].fields) == "table"
    if amS_2 then
        amV_2 = vq[1].fields
    end
    local amS_3 = T5.Mention()
    local amT_3 = #vq == 1 and amR.Title
    local amW_2 = amT_3 or amR.Plural:format(#vq)
    return {
        content = amS_3,
        embeds = {
            {
                title = amW_2,
                description = T5.Rule .. "\n" .. table.concat(amU_1, "\n") .. "\n" .. T5.Rule,
                color = amR.Color,
                fields = amV_2,
                footer = { text = T5.Footer() }
            }
        }
    }
end
T5.Flush = fns.fn249
T5.Push = function(vQ, vR)
    if not T5.Kinds[vQ] then
        return
    end
    local ane = T5.Batches[vQ]
    if not ane then
        ane = { items = {}, start = os.clock(), last = os.clock() }
        T5.Batches[vQ] = ane
        task.spawn(function()
            while true do
                if Tt() then
                    task.wait(0.25)
                    if T5.Batches[vQ] ~= ane then
                        break
                    end
                    local anb = os.clock() - ane.last >= Uh or os.clock() - ane.start >= Ub
                    if anb then
                        T5.Flush(vQ)
                        return
                    end
                    continue
                end
                T5.Flush(vQ)
                return
            end
            return
        end)
    end
    table.insert(ane.items, vR)
    ane.last = os.clock()
    while #ane.items > 200 do
        table.remove(ane.items, 1)
    end
end
T1 = fns.fn1959
T5.WantsEgg = fns.fn1539
T5.OnEggClaimed = fns.fn1687
T5.OnHatch = fns.fn2182
T5.OnLightning = fns.fn2518
T5.WeatherKey = fns.fn1176
T5.LoadSeen = fns.fn2355
T5.SaveSeen = fns.fn923
T5.ReadWeathers = fns.fn1695
T5.WeatherLabel = fns.fn1292
T5.WantsWeather = fns.fn996
T5.WeatherColor = fns.fn486
T5.WeatherPayload = function(x1, x2)
    local apr_1
    local apq_2
    local apo_2
    local app_2
    local apl = Uc and type(Uc.Data) == "table" and Uc.Data
    local apn = apl or {}
    local apn_2
    local apm_2 = apn[x1.Variant or ""] or apn[x1.Type] or {}
    local apm_3 = T5.WeatherLabel(x1)
    if x2 then
        local apo_1 = type(apm_2.EndHeadline) == "string" and apm_2.EndHeadline
        apn_2 = apo_1 or apm_3 .. " Has Ended"
    else
        apo_2, app_2 = pcall(Uc.HeadlineFor, x1.Type, x1.Variant)
        local apq_1 = apo_2 and type(app_2) == "string"
        local app_3 = apq_1 and app_2
        if not app_3 then
            local apo_4 = type(apm_2.Headline) == "string" and apm_2.Headline
            app_3 = apo_4
        end
        if not app_3 then
            app_3 = apm_3 .. " Has Begun"
        end
        apn_2 = app_3
    end
    local apo_5 = { ("› **%s**"):format(apm_3) }
    if type(apm_2.Description) == "string" then
        table.insert(apo_5, "› " .. apm_2.Description)
    end
    local apl_4 = {}
    if not x2 then
        table.insert(apl_4, { name = "Ends", value = ("<t:%d:R>"):format(math.floor(x1.EndsAt)), inline = true })
        local function apm_4(yl)
            local api_1
            local aph = Uc and TB(Uc[yl])
            local aph_1
            if aph then
                aph_1, api_1 = pcall(Uc[yl], x1.Type, x1.Variant)
                local apj = aph_1 and tonumber(api_1) and tonumber(api_1) ~= 1
                if apj then
                    return ("x%.10g"):format(tonumber(api_1))
                end
                return nil
            end
            return nil
        end
        local app_4 = apm_4("LuckMultiplierFor")
        if app_4 then
            table.insert(apl_4, { name = "Hatch Luck", value = app_4, inline = true })
        end
        local app_5 = apm_4("MutationMultiplierFor")
        if app_5 then
            table.insert(apl_4, { name = "Mutation Odds", value = app_5, inline = true })
        end
        local apm_5 = Ur and TB(Ur.ForWeather)
        if apm_5 then
            local ForWeather = Ur.ForWeather
            local app_6 = x1.Variant or x1.Type
            apq_2, apr_1 = pcall(ForWeather, app_6)
            local apm_7 = apq_2 and type(apr_1) == "string"
            if apm_7 then
                table.insert(apl_4, { name = "Grants", value = apr_1 .. " Mutation", inline = true })
            end
        end
        local apm_8 = Uc and type(Uc.StormRarity) == "table" and Uc.StormRarity
        local app_7 = apm_8 or nil
        local apm_9 = app_7
        if app_7 then
            app_7 = x1.Variant
        end
        if app_7 then
            app_7 = tonumber(apm_9[x1.Variant])
        end
        if app_7 then
            local app_8 = 0
            for k, v in pairs(apm_9) do
                local apq_3 = tonumber(v) or 0
                app_8 += apq_3
            end
            if app_8 > 0 then
                table.insert(apl_4, { name = "Storm Odds", value = ("%.3g%%"):format(apm_9[x1.Variant] / app_8 * 100), inline = true })
            end
        end
        if x1.Private then
            table.insert(apl_4, { name = "Scope", value = "Only you", inline = true })
        end
    end
    local apm_10 = T5.Mention()
    local app_9 = T5.Rule .. "\n" .. table.concat(apo_5, "\n") .. "\n" .. T5.Rule
    local apr_2 = x2 and 9807270
    local apE = if apr_2 then 1 else 0
    local apC = 1381 * apE + 1828 * (1 - apE)
    local apD = 2537 * apE + 3121 * (1 - apE)
    if not ((apC * 1804 + apD * 87 + apC * apD) % 16777213 == 6215640) then
        apr_2 = T5.WeatherColor(x1)
    end
    return {
        content = apm_10,
        embeds = {
            {
                title = apn_2,
                description = app_9,
                color = apr_2,
                fields = apl_4,
                footer = { text = T5.Footer() },
                timestamp = DateTime.now():ToIsoDate()
            }
        }
    }
end
T5.SyncWeather = fns.fn2497
T5.WeatherWorker = fns.fn816
T5.Connect = fns.fn306
T5.Disconnect = function()
    for i, v in ipairs(T5.Connections) do
        local aqb = v
        pcall(function()
            aqb:Disconnect()
        end)
    end
    table.clear(T5.Connections)
    table.clear(T5.Queue)
    table.clear(T5.Batches)
end
az7_17.Track(T5.Disconnect)
T5.Connect()
az7_17.SetWebhookUrl = fns.fn2288
az7_17.SetWebhookEnabled = fns.fn598
az7_17.SetWebhookEvent = function(zl)
    return function(zm)
        T5.Events[zl] = zm == true
    end
end
az7_17.SetWebhookEggRarities = fns.fn362
az7_17.SetWebhookEggNames = fns.fn228
az7_17.SetWebhookEggMutations = fns.fn990
az7_17.SetWebhookWeathers = fns.fn1116
az7_17.SetWebhookMinIncome = fns.fn888
az7_17.SetWebhookPingId = fns.fn701
az7_17.SetWebhookPingUser = fns.fn20
az7_17.SetWebhookPingEveryone = fns.fn2451
az7_17.WebhookStatus = fns.fn337
az7_17.TestWebhook = fns.fn2297
if (not az7_33 or az7_33 or (az7_25 or az7_24)) and (not az7_25 and not az7_25 and false) or not ((not az7_33 or az7_33 or (az7_25 or az7_24)) and (not az7_25 and not az7_25 and false)) then
    az7_33 = (TB(queue_on_teleport))
else
    TB = (az7_33(queue_on_teleport))
end
if az7_33 then
    az7_33 = queue_on_teleport
end
autoReconnectLoop = az7_33
if not autoReconnectLoop then
    az7_33 = TB(queueonteleport) and queueonteleport
    autoReconnectLoop = az7_33
end
TT, connection, Ts, TO, az7_69, az7_56, U2, VV = nil, nil, nil, nil, nil, nil, nil, nil
TT = autoReconnectLoop
az7_56 = fns.fn1129
az7_17.SetAutoExecute = fns.fn559
az7_17.QueueAutoExecute = fns.fn592
connection = LocalPlayer.OnTeleport:Connect(fns.onOnTeleport)
az7_17.Track(fns.fn1508)
az7_17.HopModeValues = fns.fn1155
U2 = function()
    local aqx_1
    local aqt_1
    local nextPageCursor
    aqt_1, nextPageCursor = {}, nil
    local max = math.max
    local aqu_1, aqu_2
    local aqv = tonumber(State.HopMinPlayers) or 0
    local aqv_1
    local aqw = max(aqv, 0)
    for i = 1, 5 do
        local aqr
        aqr = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Asc&limit=100", game.PlaceId)
        if nextPageCursor then
            aqr ..= "&cursor=" .. nextPageCursor
        end
        aqu_1, aqv_1 = pcall(function()
            return game:HttpGet(aqr)
        end)
        if not aqu_1 then
            break
        end
        aqu_2, aqx_1 = pcall(HttpService.JSONDecode, HttpService, aqv_1)
        local aqv_2 = not aqu_2 or type(aqx_1) ~= "table" or type(aqx_1.data) ~= "table"
        if aqv_2 then
            break
        end
        for i, v in ipairs(aqx_1.data) do
            local aqu_3 = type(v) == "table" and type(v.id) == "string" and v.id ~= game.JobId and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.playing >= aqw
            if aqu_3 then
                table.insert(aqt_1, v)
            end
        end
        nextPageCursor = aqx_1.nextPageCursor
        if type(nextPageCursor) ~= "string" then
            break
        end
    end
    return aqt_1
end
VV = fns.fn2109
az7_17.ServerHop = function()
    local aqQ
    T0("Looking for another server")
    aqQ = VV(U2())
    if not aqQ then
        T0("No other server available")
        return false, "No other server is available to hop to"
    end
    az7_17.QueueAutoExecute()
    T0("Hopping servers")
    local aqR = pcall(function()
        TeleportService:TeleportToPlaceInstance(game.PlaceId, aqQ.id, LocalPlayer)
    end)
    if not aqR then
        T0("Server hop failed")
        return false, "The teleport was rejected"
    end
    return true
end
az7_17.SetAutoServerHop = fns.fn267
az7_17.SetHopInterval = fns.fn1748
az7_17.SetHopMinPlayers = fns.fn1875
az7_17.SetHopMode = fns.fn2004
az7_17.SetHopAfterEgg = fns.fn1101
Ts = {}
Ts.cancelled = fns.fn178
Ts.timeLeft = fns.fn156
Ts.teleport = function(Bn)
    local ary
    ary = nil
    ary = T2()
    if not ary then
        return false
    end
    pcall(function()
        ary.CFrame = CFrame.new(Bn)
        ary.AssemblyLinearVelocity = Vector3.zero
    end)
    return true
end
Ts.home = fns.fn650
Ts.volcanoTop = fns.fn271
Ts.dippable = fns.fn765
Ts.inFlight = fns.fn840
Ts.dip = fns.fn2073
Ts.deliver = function()
    Ts.dip()
    local asw = Ts.cancelled() or Ts.inFlight()
    if asw then
        return false
    end
    local asw_1 = Ts.home()
    if not asw_1 then
        T0("Your plot is not loaded")
        return false
    end
    local asx = os.clock() + 4
    local asy = os.clock() + 0.3
    local asG = false
    repeat
        local asz = not Ts.cancelled() and VH() > 0 and os.clock() < asx
        if asz then
            T0("Claiming at plot")
            Ts.teleport(asw_1)
            local asv = T2()
            local Basket = LocalPlayer:FindFirstChild("Basket")
            local asA = UG and asv and Basket and os.clock() >= asy
            if asA then
                asy = os.clock() + 1
                local asu = {}
                for i, child in ipairs(Basket:GetChildren()) do
                    if not child:GetAttribute("Delivering") then
                        table.insert(asu, child.Name)
                    end
                end
                if #asu > 0 then
                    pcall(function()
                        UG:FireServer(Workspace:GetServerTimeNow(), asv.Position, asu)
                    end)
                end
            end
            task.wait(0.1)
        else
            asG = true
        end
    until asG
    return VH() == 0
end
Ts.grab = function(CL)
    local asN = tostring(CL:GetAttribute("Egg"))
    local asO = VC(CL)
    local asP = not az7_63
    local asQ = not asO
    local asV = if asQ then 1 else 0
    local asT = 3777 * asV + 550 * (1 - asV)
    local asU = 693 * asV + 2864 * (1 - asV)
    if not ((asT * 3951 + asU * 1997 + asT * asU) % 16777213 == 2147096) then
        asQ = asP
    end
    if asQ then
        return false
    end
    local asP_1 = asO + Vector3.new(0, 3, 0)
    local asO_1 = VH()
    T0("Grabbing " .. asN)
    local asN_1 = os.clock() + 2
    local asQ_1 = 0
    while true do
        local asR = not Ts.cancelled() and VH() <= asO_1 and os.clock() < asN_1
        if asR then
            if not CL.Parent then
                asN_1 = math.min(asN_1, os.clock() + 0.3)
            end
            if not Ts.teleport(asP_1) then
                break
            end
            local asR_1 = CL.Parent and os.clock() >= asQ_1
            if asR_1 then
                asQ_1 = os.clock() + 0.1
                pcall(function()
                    az7_63:FireServer(CL.Name)
                end)
            end
            RunService.Heartbeat:Wait()
            continue
        end
        break
    end
    if VH() > asO_1 then
        return true
    end
    local asN_2 = CL.Parent and not Ts.cancelled()
    if asN_2 then
        local Failed = Vb.Failed
        local asO_2 = Vb.Failed[CL]
        local asV_1 = if asO_2 then 1 else 0
        local asT_1 = 2969 * asV_1 + 2254 * (1 - asV_1)
        local asU_1 = 1549 * asV_1 + 765 * (1 - asV_1)
        if not ((asT_1 * 1311 + asU_1 * 2546 + asT_1 * asU_1) % 16777213 == 12435094) then
            asO_2 = 0
        end
        Failed[CL] = asO_2 + 1
    end
    return false
end
Ts.canChain = fns.fn1444
az7_43 = fns.fn623
TO = { Connections = {} }
TO.clock = fns.fn2186
TO.connect = fns.fn287
az7_17.Track(function()
    for i, v in ipairs(TO.Connections) do
        local atp = v
        pcall(function()
            atp:Disconnect()
        end)
    end
    table.clear(TO.Connections)
end)
TO.eggText = fns.fn729
TO.petText = fns.fn2198
az7_26 = fns.fn432
if (not connection or Ts) and (false or U2) and (false or (connection or false)) and (false and not Ts or not VV and not VV or (not VV or Ts or (connection or connection))) and ((not connection or Ts or VV and not Ts or (not connection or Ts) and false) and (connection and connection and (Ts and false) or not VV and U2 and false)) and not ((not connection or Ts) and (false or U2) and (false or (connection or false)) and (false and not Ts or not VV and not VV or (not VV or Ts or (connection or connection))) and ((not connection or Ts or VV and not Ts or (not connection or Ts) and false) and (connection and connection and (Ts and false) or not VV and U2 and false))) then
    az7_66.StatusText = fns.fn194
else
    az7_17.StatusText = fns.fn194
    az7_69 = {
        az7_43,
        fns.fn140,
        az7_71,
        az7_66,
        az7_4,
        az7_55,
        az7_73,
        az7_68,
        az7_19,
        az7_24,
        az7_61,
        fns.az7_38,
        fns.fn1365,
        az7_26,
        T5.WeatherWorker
    }
end
autoReconnectLoop = #az7_69
for i = 1, autoReconnectLoop do
    local UZ
    autoReconnectLoop = az7_69[i]
    assert(type(autoReconnectLoop) == "function", "Worker " .. i .. " is missing")
    UZ = task.spawn(autoReconnectLoop)
    az7_17.Track(function()
        if coroutine.status(UZ) ~= "dead" then
            pcall(task.cancel, UZ)
        end
    end)
end
autoReconnectLoop = function()
    local EE = "v0.20"
    local EG = "https://rscripts.net/@Ouroboros"
    local EF = "https://discord.gg/synapsex"
    local ED = "Ride A Pet"
    local EH = "https://ouroboros-hub-rbx.web.app/"
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    local Toggles = Library.Toggles
    local Options = Library.Options
    UL(az7_17, Library)
    local function EQ(ER, ES)
        local auf = TB(setclipboard) and setclipboard
        local aug = auf
        if not aug then
            local auf_1 = TB(toclipboard) and toclipboard
            aug = auf_1 or nil
        end
        local auf_2 = aug
        if not auf_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local aug_1 = pcall(auf_2, ER)
        if aug_1 then
            Library:Notify(ES)
        else
            Library:Notify("Failed to copy")
        end
    end
    local function onDiscord()
        EQ(EF, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = EF, Copyable = true }, "|", ED, "|", EE },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    local E4 = {
        [1] = Window:AddTab("Info", "info"),
        [2] = Window:AddTab("Main", "gamepad-2"),
        [3] = Window:AddTab("Player", "person-standing"),
        [4] = Window:AddTab("Settings", "settings")
    }
    local E5 = {
        [1] = E4[2]:AddSubTab("Farm", "egg"),
        [2] = E4[2]:AddSubTab("Shop", "shopping-cart"),
        [3] = E4[2]:AddSubTab("Webhook", "webhook")
    }
    local function E6(E7)
        local DiscordGroup = E7:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    E6(E5[1])
    E6(E5[2])
    E6(E5[3])
    E6(E4[3])
    E6(E4[4])
    local function Fa()
        local Gs
        local FV
        local function Fb(Fc)
            return (tostring(Fc):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"))
        end
        local function Fd(Fe)
            local aum = Fe and Fe.TextLabel
            if not aum then
                return Fe
            end
            aum.TextColor3 = Color3.new(1, 1, 1)
            local uIGradient = Instance.new("UIGradient")
            uIGradient.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 105, 180)),
                ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 192, 203)),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 105, 180))
            })
            uIGradient.Parent = aum
            return Fe
        end
        local function Fi(Fj)
            local auq_1
            local aup_1
            aup_1, auq_1 = az7_17.StatusText(Fj)
            local aur = string.format("<b>%s:</b> %s", Fj, Fb(aup_1))
            if auq_1 ~= "" then
                aur ..= "\n" .. Fb(auq_1)
            end
            return aur
        end
        local StatusGroup = E5[1]:AddLeftGroupbox("Status", "list")
        local Fs = Fd(StatusGroup:AddLabel(Fi("Eggs"), true))
        StatusGroup:AddDivider()
        local Ft = Fd(StatusGroup:AddLabel(Fi("Pets"), true))
        local AutoEggsGroup = E5[1]:AddRightGroupbox("Auto Eggs", "egg")
        AutoEggsGroup:AddToggle("AutoPickup", { Text = "Auto Steal", Default = false, Callback = az7_17.SetAutoPickup })
        AutoEggsGroup:AddDropdown("PickupRarities", {
            Text = "Rarity Filter",
            Values = az7_17.EggRarityValues(),
            Default = nil,
            Multi = true,
            AllowNull = true,
            Callback = az7_17.SetPickupRarities
        })
        AutoEggsGroup:AddDropdown("PickupEggs", {
            Text = "Egg Filter",
            Values = az7_17.EggNameValues(),
            Default = nil,
            Multi = true,
            AllowNull = true,
            Tooltip = "Pick exact eggs to collect. Leave empty to use the rarity filter alone.",
            Callback = az7_17.SetPickupEggs
        })
        AutoEggsGroup:AddInput("PickupMinKG", {
            Text = "Minimum Egg KG",
            Default = "0",
            Finished = false,
            Placeholder = "e.g. 500, 25k, 1.5m",
            Tooltip = "Only steal eggs at least this heavy, in the same KG the game shows. Accepts k, m, b suffixes. 0 collects any size.",
            Callback = az7_17.SetPickupMinKG
        })
        AutoEggsGroup:AddToggle("AutoVolcanoDip", {
            Text = "Auto Volcano Dip",
            Default = false,
            Tooltip = "Tosses every stolen egg into the volcano before banking it, for a 15% chance at the Magma mutation. Adds about 8 seconds per trip.",
            Callback = az7_17.SetAutoVolcanoDip
        })
        AutoEggsGroup:AddSlider("ClaimDelay", {
            Text = "Claim Delay",
            Default = 0.5,
            Min = 0,
            Max = 5,
            Rounding = 1,
            Suffix = " s",
            HideMax = true,
            Tooltip = "Pause after a successful claim before the next grab",
            Callback = az7_17.SetClaimDelay
        })
        AutoEggsGroup:AddDivider()
        AutoEggsGroup:AddToggle("AutoPlace", { Text = "Auto Place Eggs", Default = false, Callback = az7_17.SetAutoPlace })
        AutoEggsGroup:AddDropdown("PlaceRarities", {
            Text = "Place Rarity Filter",
            Values = az7_17.EggRarityValues(),
            Default = nil,
            Multi = true,
            AllowNull = true,
            Callback = az7_17.SetPlaceRarities
        })
        AutoEggsGroup:AddDropdown("PlaceEggs", {
            Text = "Place Egg Filter",
            Values = az7_17.EggNameValues(),
            Default = nil,
            Multi = true,
            AllowNull = true,
            Tooltip = "Only these eggs get planted on your ranch. Anything else is left in storage.",
            Callback = az7_17.SetPlaceEggs
        })
        AutoEggsGroup:AddInput("PlaceMinKG", {
            Text = "Minimum Place KG",
            Default = "0",
            Finished = false,
            Placeholder = "e.g. 500, 25k, 1.5m",
            Tooltip = "Only 10 eggs can be planted at once, so spend the room on eggs at least this heavy. Accepts k, m, b suffixes.",
            Callback = az7_17.SetPlaceMinKG
        })
        AutoEggsGroup:AddToggle("AutoHatch", { Text = "Auto Hatch", Default = false, Callback = az7_17.SetAutoHatch })
        AutoEggsGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false, Callback = az7_17.SetAutoEquipBest })
        local EggTrackerGroup = E5[1]:AddRightGroupbox("Egg Tracker", "search")
        local Fw = Fd(EggTrackerGroup:AddLabel(Fb("Loading egg tracker"), true))
        local Fx, Fy, Fz
        FV = task.spawn(function()
            local auy = false
            repeat
                if not Library.Unloaded then
                    task.wait(0.25)
                    if Library.Unloaded then
                        auy = true
                    else
                        local auu = Fi("Eggs")
                        if auu ~= Fx then
                            Fx = auu
                            pcall(function()
                                Fs:SetText(auu)
                            end)
                        end
                        local auv = Fi("Pets")
                        if auv ~= Fy then
                            Fy = auv
                            pcall(function()
                                Ft:SetText(auv)
                            end)
                        end
                        local aut = az7_17.WorldEggSummary()
                        if aut ~= Fz then
                            Fz = aut
                            pcall(function()
                                Fw:SetText(Fb(aut))
                            end)
                        end
                    end
                else
                    auy = true
                end
            until auy
        end)
        az7_17.Track(function()
            local auC = if coroutine.status(FV) ~= "dead" then 1 else 0
            if auC == 1 then
                pcall(task.cancel, FV)
            end
        end)
        local FeedsGroup = E5[1]:AddRightGroupbox("Feeds", "beef")
        FeedsGroup:AddToggle("AutoFeed", {
            Text = "Auto Feed Pets",
            Default = false,
            Tooltip = "Feeds the pets placed on your ranch. Food is spent from your backpack.",
            Callback = az7_17.SetAutoFeed
        })
        FeedsGroup:AddDropdown("FeedFoods", {
            Text = "Food Filter",
            Values = az7_17.FoodValues(),
            Default = nil,
            Multi = true,
            AllowNull = true,
            Tooltip = "Leave empty to use whichever food you are carrying",
            Callback = az7_17.SetFeedFoods
        })
        FeedsGroup:AddToggle("FeedBestOnly", {
            Text = "Auto Feed Best Pet",
            Default = false,
            Tooltip = "Pours every bite into your highest earning placed pet",
            Callback = az7_17.SetFeedBestOnly
        })
        FeedsGroup:AddToggle("FeedAboveIncome", { Text = "Auto Feed Above $/s", Default = false, Callback = az7_17.SetFeedAboveIncome })
        FeedsGroup:AddInput("FeedMinIncome", {
            Text = "Minimum $/s",
            Default = "0",
            Numeric = true,
            Finished = true,
            Callback = az7_17.SetFeedMinIncome
        })
        FeedsGroup:AddToggle("FeedAboveAge", { Text = "Auto Feed Above Age", Default = false, Callback = az7_17.SetFeedAboveAge })
        FeedsGroup:AddSlider("FeedMinAge", {
            Text = "Minimum Age",
            Default = 1,
            Min = 1,
            Max = 100,
            Rounding = 0,
            Callback = az7_17.SetFeedMinAge
        })
        FeedsGroup:AddDropdown("FeedRarities", {
            Text = "Rarity Filter",
            Values = az7_17.PetRarityValues(),
            Default = nil,
            Multi = true,
            AllowNull = true,
            Callback = az7_17.SetFeedRarities
        })
        local ProgressionGroup = E5[1]:AddLeftGroupbox("Progression", "trending-up")
        ProgressionGroup:AddToggle("AutoHatchLuck", { Text = "Auto Hatch Luck", Default = false, Callback = az7_17.SetAutoHatchLuck })
        ProgressionGroup:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false, Callback = az7_17.SetAutoClaimIndex })
        ProgressionGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false, Callback = az7_17.SetAutoRebirth })
        local AutoSellGroup = E5[1]:AddLeftGroupbox("Auto Sell", "coins")
        AutoSellGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false, Callback = az7_17.SetAutoSell })
        AutoSellGroup:AddDropdown("SellPets", {
            Text = "Sell Filter",
            Values = az7_17.PetValues(),
            Default = nil,
            Multi = true,
            AllowNull = true,
            Callback = az7_17.SetSellPets
        })
        AutoSellGroup:AddToggle("SellUnlisted", { Text = "Sell All Pets", Default = false, Callback = az7_17.SetSellUnlisted })
        AutoSellGroup:AddToggle("SellKeepMutated", {
            Text = "Keep Mutated Pets",
            Default = true,
            Tooltip = "Never sells a pet with a mutation, such as Magma. Favorited pets are always kept.",
            Callback = az7_17.SetSellKeepMutated
        })
        AutoSellGroup:AddDivider()
        AutoSellGroup:AddButton({
            Text = "Teleport to Seller",
            Func = function()
                local auE_1
                local auD_1
                auD_1, auE_1 = az7_17.TeleportToSeller()
                if not auD_1 then
                    Library:Notify(tostring(auE_1))
                end
            end
        })
        AutoSellGroup:AddButton({
            Text = "Teleport to Plot",
            Func = function()
                local auH_1
                local auG_1
                auG_1, auH_1 = az7_17.TeleportToPlot()
                if not auG_1 then
                    Library:Notify(tostring(auH_1))
                end
            end
        })
        local GearsGroup = E5[2]:AddRightGroupbox("Gears", "radar")
        GearsGroup:AddToggle("AutoBuyGears", { Text = "Auto Buy Gears", Default = false, Callback = az7_17.SetAutoBuyGears })
        GearsGroup:AddDropdown("BuyGears", {
            Text = "Gear Filter",
            Values = az7_17.ShopValues("Gears"),
            Default = nil,
            Multi = true,
            AllowNull = true,
            Callback = az7_17.SetBuyGears
        })
        local FoodGroup = E5[2]:AddLeftGroupbox("Food", "apple")
        FoodGroup:AddToggle("AutoBuyFood", { Text = "Auto Buy Food", Default = false, Callback = az7_17.SetAutoBuyFood })
        FoodGroup:AddDropdown("BuyFood", {
            Text = "Food Filter",
            Values = az7_17.ShopValues("Food"),
            Default = nil,
            Multi = true,
            AllowNull = true,
            Callback = az7_17.SetBuyFood
        })
        local EspGroup = E5[2]:AddRightGroupbox("ESP", "eye")
        EspGroup:AddToggle("EggEsp", { Text = "Egg ESP", Default = false, Callback = az7_17.SetEggEsp })
        EspGroup:AddToggle("EggEspPets", {
            Text = "Show Pet Odds",
            Default = true,
            Tooltip = "Adds the likeliest pet and the best pet you are still missing from the index, with its real chance at your current hatch luck.",
            Callback = az7_17.SetEggEspPets
        })
        EspGroup:AddDropdown("EspRarities", {
            Text = "ESP Rarity Filter",
            Values = az7_17.EggRarityValues(),
            Default = nil,
            Multi = true,
            AllowNull = true,
            Callback = az7_17.SetEspRarities
        })
        EspGroup:AddDropdown("EspEggs", {
            Text = "ESP Egg Filter",
            Values = az7_17.EggNameValues(),
            Default = nil,
            Multi = true,
            AllowNull = true,
            Tooltip = "Only show these eggs. Leave empty to use the rarity filter alone.",
            Callback = az7_17.SetEspEggs
        })
        local DiscordWebhookGroup = E5[3]:AddLeftGroupbox("Discord Webhook", "webhook")
        DiscordWebhookGroup:AddInput("WebhookUrl", {
            Text = "Webhook URL",
            Default = "",
            AllowEmpty = true,
            Finished = true,
            Callback = az7_17.SetWebhookUrl
        })
        DiscordWebhookGroup:AddToggle("WebhookEnabled", { Text = "Send Webhooks", Default = false, Callback = az7_17.SetWebhookEnabled })
        local Gb = Fd(DiscordWebhookGroup:AddLabel(Fb(az7_17.WebhookStatus()), true))
        DiscordWebhookGroup:AddDivider()
        DiscordWebhookGroup:AddButton({
            Text = "Send Test Message",
            Func = function()
                local auK_1
                local auJ_1
                auJ_1, auK_1 = az7_17.TestWebhook()
                local auL = auJ_1 and "Test message delivered"
                local auJ_2 = auL or tostring(auK_1)
                Library:Notify(auJ_2)
            end
        })
        DiscordWebhookGroup:AddDivider()
        DiscordWebhookGroup:AddInput("WebhookPingId", {
            Text = "Discord User ID",
            Default = "",
            AllowEmpty = true,
            Numeric = true,
            Finished = true,
            Callback = az7_17.SetWebhookPingId
        })
        DiscordWebhookGroup:AddToggle("WebhookPingUser", { Text = "Ping That User", Default = false, Callback = az7_17.SetWebhookPingUser })
        DiscordWebhookGroup:AddToggle("WebhookPingEveryone", { Text = "Ping @everyone", Default = false, Callback = az7_17.SetWebhookPingEveryone })
        local EventsGroup = E5[3]:AddRightGroupbox("Events", "bell")
        EventsGroup:AddToggle("WebhookClaimedEggs", {
            Text = "Claimed Eggs",
            Default = false,
            Tooltip = "Posts each egg you pick up with its expected income and best realistic roll",
            Callback = az7_17.SetWebhookEvent("ClaimedEgg")
        })
        EventsGroup:AddDropdown("WebhookEggRarities", {
            Text = "Rarity Filter",
            Values = az7_17.EggRarityValues(),
            Default = nil,
            Multi = true,
            AllowNull = true,
            Callback = az7_17.SetWebhookEggRarities
        })
        EventsGroup:AddDropdown("WebhookEggNames", {
            Text = "Egg Filter",
            Values = az7_17.EggNameValues(),
            Default = nil,
            Multi = true,
            AllowNull = true,
            Callback = az7_17.SetWebhookEggNames
        })
        EventsGroup:AddDropdown("WebhookEggMutations", {
            Text = "Mutation Filter",
            Values = az7_17.MutationValues(),
            Default = nil,
            Multi = true,
            AllowNull = true,
            Callback = az7_17.SetWebhookEggMutations
        })
        EventsGroup:AddDivider()
        EventsGroup:AddToggle("WebhookHatchedPets", {
            Text = "Hatched Pets",
            Default = false,
            Tooltip = "Posts each pet you hatch with its real income per second",
            Callback = az7_17.SetWebhookEvent("HatchedPet")
        })
        EventsGroup:AddInput("WebhookMinIncome", {
            Text = "Minimum $/s",
            Default = "0",
            Numeric = true,
            Finished = true,
            Callback = az7_17.SetWebhookMinIncome
        })
        EventsGroup:AddDivider()
        EventsGroup:AddToggle("WebhookLightning", {
            Text = "Lightning Mutations",
            Default = false,
            Tooltip = "Posts when a storm strikes one of your pets or planted eggs",
            Callback = az7_17.SetWebhookEvent("Lightning")
        })
        EventsGroup:AddDivider()
        EventsGroup:AddToggle("WebhookWeather", {
            Text = "Weather Started",
            Default = false,
            Tooltip = "Posts each weather once with its effects and a live countdown, including weather already running when you join. Server hops do not repost it.",
            Callback = az7_17.SetWebhookEvent("Weather")
        })
        EventsGroup:AddToggle("WebhookWeatherEnded", { Text = "Weather Ended", Default = false, Callback = az7_17.SetWebhookEvent("WeatherEnded") })
        EventsGroup:AddDropdown("WebhookWeathers", {
            Text = "Weather Filter",
            Values = az7_17.WeatherValues(),
            Default = nil,
            Multi = true,
            AllowNull = true,
            Callback = az7_17.SetWebhookWeathers
        })
        local Gi
        Gs = task.spawn(function()
            local auT = false
            repeat
                if not Library.Unloaded then
                    task.wait(1)
                    if Library.Unloaded then
                        auT = true
                    else
                        local auQ = az7_17.WebhookStatus()
                        if auQ ~= Gi then
                            Gi = auQ
                            pcall(function()
                                Gb:SetText(Fb(auQ))
                            end)
                        end
                    end
                else
                    auT = true
                end
            until auT
        end)
        az7_17.Track(function()
            if coroutine.status(Gs) ~= "dead" then
                pcall(task.cancel, Gs)
            end
        end)
    end
    Fa()
    local function Gu()
        local avb
        local avg
        local avl
        local avh
        avb = nil
        avg = nil
        avh = nil
        avl = nil
        local au9, Label2, Label3, avd, ave, Label, avi, avj, avk
        avl = function(Gw)
            return (tostring(Gw):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        avh = function(Gy, Gz)
            return string.format('<font color="%s">%s</font>', Gz, avl(Gy))
        end
        au9 = function(GC, GD, GE)
            return string.format("<b>%s</b> %s %s", GC, avh("-", "#5a6070"), avh(GD, GE))
        end
        ave = "#e8a34d"
        local avm = "#8b93a3"
        avk = "#7fd47f"
        local avn = "#6ec1ff"
        local avo = az7_17.Support()
        local avp = #avo == 0 and "ready"
        local avq = avp or "limited: " .. table.concat(avo, ", ")
        avi = "Unknown"
        pcall(function()
            local auW_1
            local auV_1
            if TB(identifyexecutor) then
                auW_1, auV_1 = identifyexecutor()
                local auX = auW_1 ~= ""
                local auY = type(auW_1) == "string" and auX
                if auY then
                    local auX_1 = type(auV_1) == "string" and auV_1 ~= "" and auW_1 .. " " .. auV_1
                    avi = auX_1 or auW_1
                end
            end
        end)
        avb = os.clock()
        avj = function()
            local au2 = math.floor(os.clock() - avb)
            if au2 < 60 then
                return au2 .. "s"
            elseif au2 < 3600 then
                return string.format("%dm %ds", au2 // 60, au2 % 60)
            else
                return string.format("%dh %dm", au2 // 3600, au2 % 3600 // 60)
            end
        end
        local UserGroup = E4[1]:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(au9("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, avk), true)
        UserGroup:AddLabel(au9("UserId", tostring(LocalPlayer.UserId), avn), true)
        UserGroup:AddLabel(au9("Executor", avi .. "  " .. avq, avk), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(au9("Session", avj(), ave), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                EQ(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                EQ("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = E4[1]:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(au9("Game", ED, avn), true)
        Label2 = SessionGroup:AddLabel(au9("Players", "0/0", avk), true)
        avd = tostring(game.JobId)
        local avn_1 = #avd > 18 and string.sub(avd, 1, 18) .. "..."
        local avp_2 = avn_1 or avd
        SessionGroup:AddLabel(au9("Job", avp_2, avm), true)
        Label = SessionGroup:AddLabel(au9("Ping", "0 ms", ave), true)
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
                EQ(avd, "Copied Job ID")
            end
        })
        avg = task.spawn(function()
            local au5_1
            local au4_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(au9("Session", avj(), ave))
                Label2:SetText(au9("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), avk))
                au4_1, au5_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local au4_2 = au4_1 and au5_1 .. " ms" or "n/a"
                Label:SetText(au9("Ping", au4_2, ave))
            end
        end)
        az7_17.Track(function()
            if coroutine.status(avg) ~= "dead" then
                pcall(task.cancel, avg)
            end
        end)
        local SocialsGroup = E4[1]:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                EQ(EG, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                EQ(EH, "Copied website link")
            end
        })
    end
    Gu()
    local function HK()
        local H0
        local HZ
        local H_
        local HY
        local MovementGroup = E4[3]:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = true })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local ServerHopGroup = E4[3]:AddLeftGroupbox("Server Hop", "server")
        ServerHopGroup:AddToggle("AutoServerHop", { Text = "Auto Server Hop", Default = false, Callback = az7_17.SetAutoServerHop })
        ServerHopGroup:AddSlider("HopInterval", {
            Text = "Hop Interval (s)",
            Default = 300,
            Min = 1,
            Max = 3600,
            Rounding = 0,
            Callback = az7_17.SetHopInterval
        })
        ServerHopGroup:AddToggle("HopAfterEgg", {
            Text = "Hop After Egg Collected",
            Default = false,
            Tooltip = "After an egg is grabbed, keeps collecting every selected egg in this server, banks them, then hops.",
            Callback = az7_17.SetHopAfterEgg
        })
        ServerHopGroup:AddDropdown("HopMode", {
            Text = "Server Choice",
            Values = az7_17.HopModeValues(),
            Default = "Random",
            Callback = az7_17.SetHopMode
        })
        ServerHopGroup:AddSlider("HopMinPlayers", {
            Text = "Minimum Players",
            Default = 1,
            Min = 0,
            Max = 30,
            Rounding = 0,
            Callback = az7_17.SetHopMinPlayers
        })
        ServerHopGroup:AddDivider()
        ServerHopGroup:AddButton({
            Text = "Hop Now",
            Func = function()
                task.spawn(function()
                    local avt_1
                    local avs_1
                    avs_1, avt_1 = az7_17.ServerHop()
                    if not avs_1 then
                        Library:Notify(tostring(avt_1))
                    end
                end)
            end
        })
        local FlyGroup = E4[3]:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        H_ = {}
        HY = {}
        local HX = {}
        H0 = {}
        HZ = {}
        local function H1()
            for k, v in HY do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(HY)
        end
        local function H5()
            for k, v in HZ do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(HZ)
        end
        local function H9()
            for k, v in H_ do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(H_)
        end
        local function Id(Ie)
            if not Ie:IsA("ProximityPrompt") then
                return
            end
            if H0[Ie] == nil then
                H0[Ie] = {
                    HoldDuration = Ie.HoldDuration,
                    MaxActivationDistance = Ie.MaxActivationDistance,
                    RequiresLineOfSight = Ie.RequiresLineOfSight
                }
            end
            Ie.HoldDuration = 0
            Ie.MaxActivationDistance = 50
            Ie.RequiresLineOfSight = false
        end
        local function Ig()
            for k, v in H0 do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(H0)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                H9()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                H5()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                H1()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                    pcall(Id, v)
                end
            else
                Ig()
            end
        end)
        table.insert(HX, Workspace.DescendantAdded:Connect(function(Iz)
            if Toggles.InstantProximityPrompt.Value then
                Id(Iz)
            end
        end))
        table.insert(HX, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if HY[v] == nil then
                        HY[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(HX, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local awo = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and awo then
                awo:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(HX, RunService.RenderStepped:Connect(function(IU)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local awu = Character and Character:FindFirstChildOfClass("Humanoid")
            local awv = Character
            if awv then
                awv = Character:FindFirstChild("HumanoidRootPart")
            end
            local awt_1 = awv
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and awu then
                if HZ[awu] == nil then
                    HZ[awu] = awu.WalkSpeed
                end
                awu.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and awt_1 and awu and CurrentCamera then
                if H_[awu] == nil then
                    H_[awu] = awu.PlatformStand
                end
                awu.PlatformStand = true
                local awv_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    local awB = if UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
                    if awB == 1 then
                        awv_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        awv_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        awv_4 -= CurrentCamera.CFrame.RightVector
                    end
                    local awH = if UserInputService:IsKeyDown(Enum.KeyCode.D) then 1 else 0
                    if awH == 1 then
                        awv_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        awv_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        awv_4 -= Vector3.new(0, 1, 0)
                    end
                end
                awt_1.AssemblyLinearVelocity = Vector3.zero
                if awv_4.Magnitude > 0 then
                    awt_1.CFrame = awt_1.CFrame + awv_4.Unit * Options.FlySpeed.Value * IU
                end
            end
        end))
        az7_17.Track(function()
            for k, v in HX do
                v:Disconnect()
            end
            H1()
            H5()
            H9()
            Ig()
        end)
    end
    HK()
    local function I9()
        local aye, ayf, ayg, ayh, ayi, ayj, Label, ayl, aym, ayn, ayo, ayp, ayq, ayr, ays, ayt, ayu, ayv, ayw
        ayn = {}
        aye = {}
        ayt = nil
        ayo = 0
        ayg = false
        ayw = 0
        ayi = os.clock()
        local MenuGroup = E4[4]:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        ays = {}
        ayf = function(Jm)
            local awP = not Jm:IsA("LocalScript") and not Jm:IsA("Script")
            if awP then
                return false
            end
            return string.find(string.lower(Jm.Name), "afk", 1, true) ~= nil
        end
        ayh = function(Jp)
            local awR = not ayf(Jp) or ays[Jp] ~= nil
            if awR then
                return
            end
            ays[Jp] = Jp.Disabled
            pcall(function()
                Jp.Disabled = true
            end)
        end
        ayl = function()
            for k, v in ays do
                local awX = k
                local awZ = v
                if awX.Parent then
                    pcall(function()
                        awX.Disabled = awZ
                    end)
                end
            end
            table.clear(ays)
        end
        ayp = function(JB)
            if not JB then
                ayl()
                return
            end
            local PlayerScripts = LocalPlayer:FindFirstChild("PlayerScripts")
            if not PlayerScripts then
                return
            end
            for i, descendant in ipairs(PlayerScripts:GetDescendants()) do
                ayh(descendant)
            end
        end
        ayu = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local aw8 = not CurrentCamera or not TB(VirtualUser.CaptureController)
            local axc = if aw8 then 1 else 0
            local axa = 3572 * axc + 230 * (1 - axc)
            local axb = 2095 * axc + 160 * (1 - axc)
            if not ((axa * 1571 + axb * 3793 + axa * axb) % 16777213 == 4264074) then
                aw8 = not TB(VirtualUser.ClickButton2)
            end
            if aw8 then
                return false
            end
            local aw8_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not aw8_1 then
                return false
            end
            ayw += 1
            ayi = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. ayw)
            end)
            return true
        end
        aym = function(J1)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not J1)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = Ve:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not J1
                end
            end)
            if not J1 then
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
        ayv = function(Kg)
            if Kg.ClassName == "ParticleEmitter" or Kg.ClassName == "Trail" or Kg.ClassName == "Smoke" or Kg.ClassName == "Fire" or Kg.ClassName == "Sparkles" or Kg.ClassName == "Explosion" or Kg.ClassName == "Beam" then
                if ayn[Kg] == nil then
                    ayn[Kg] = Kg.Enabled
                end
                pcall(function()
                    Kg.Enabled = false
                end)
            end
        end
        ayr = function()
            for k, v in ayn do
                local axn = k
                local axp = v
                if axn.Parent then
                    pcall(function()
                        axn.Enabled = axp
                    end)
                end
            end
            table.clear(ayn)
            if ayt then
                pcall(function()
                    settings().Rendering.QualityLevel = ayt.Quality
                end)
                Lighting.GlobalShadows = ayt.Shadows
                Lighting.FogEnd = ayt.Fog
                ayt = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(Kv)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not Kv)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(KA)
                if KA then
                    if not ayt then
                        ayt = {
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
                        pcall(ayv, v)
                    end
                else
                    ayr()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddToggle("AutoExecute", {
            Text = "Auto Execute",
            Default = false,
            Tooltip = "Re-runs this script after a server hop, rejoin or teleport.",
            Callback = function(KI)
                local axB_1
                local axA_1
                axA_1, axB_1 = az7_17.SetAutoExecute(KI)
                if not axA_1 then
                    Library:Notify(tostring(axB_1))
                end
            end
        })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        aym(true)
        local ScriptGroup = E4[4]:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiAfk:OnChanged(function()
            ayp(Toggles.AntiAfk.Value)
        end)
        ayp(Toggles.AntiAfk.Value)
        local PlayerScripts = LocalPlayer:FindFirstChild("PlayerScripts")
        if PlayerScripts then
            table.insert(aye, PlayerScripts.DescendantAdded:Connect(function(KW)
                if Toggles.AntiAfk.Value and not Library.Unloaded then
                    ayh(KW)
                end
            end))
        end
        Toggles.AntiGameplayPause:OnChanged(function()
            aym(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            aym(true)
        end
        table.insert(aye, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                ayu()
            end
        end))
        table.insert(aye, Workspace.DescendantAdded:Connect(function(K6)
            if Toggles.FpsBoost.Value then
                ayv(K6)
            end
        end))
        ayq = function(La)
            local axO = ayg
            local axT = if axO then 1 else 0
            local axR = 618 * axT + 3610 * (1 - axT)
            local axS = 3218 * axT + 1307 * (1 - axT)
            if not ((axR * 2420 + axS * 2169 + axR * axS) % 16777213 == 10464126) then
                axO = Library.Unloaded
            end
            if not axO then
                axO = not Toggles.AutoReconnect.Value
            end
            if axO then
                return
            end
            ayg = true
            local axN = ayo
            local axO_1 = pcall(function()
                if La then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not axO_1 then
                ayg = false
                if not La and axN == ayo then
                    task.delay(1.5, function()
                        if axN == ayo then
                            ayq(true)
                        end
                    end)
                end
            end
        end
        table.insert(aye, TeleportService.TeleportInitFailed:Connect(function(Ls)
            local axY
            if Ls == LocalPlayer and ayg then
                ayg = false
                axY = ayo
                task.delay(3, function()
                    if axY == ayo then
                        ayq(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = Ve:WaitForChild("RobloxPromptGui", 30)
            local ax2 = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not ax2 then
                return
            end
            table.insert(aye, ax2.ChildAdded:Connect(function(LH)
                if LH.Name == "ErrorPrompt" then
                    ayq(false)
                end
            end))
        end)
        ayj = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    aym(true)
                end
                local ax5 = Toggles.AntiAfk.Value and os.clock() - ayi >= 60
                if ax5 then
                    ayu()
                end
                task.wait(1)
            end
        end)
        az7_17.Track(function()
            ayo += 1
            for k, v in aye do
                v:Disconnect()
            end
            pcall(task.cancel, ayj)
            aym(false)
            ayl()
            ayr()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    I9()
    local function L0()
        local azl, azm, azn, azo
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("MyScriptHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(E4[4])
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/RideAPet")
        local azp = SaveManager:BuildConfigSection(E4[4])
        azo = function(L7, L8)
            local ayA_1 = (L7 == "Toggle" and Toggles or Options)[L8]
            local ayz_2 = type(ayA_1) == "table" and ayA_1.Type == L7
            return ayz_2 and ayA_1 or nil
        end
        azm = function(Mh, Mi)
            local Type = Mi.Type
            if Type == "Toggle" then
                return { idx = Mh, type = "Toggle", value = Mi.Value == true }
            elseif Type == "Slider" then
                return { idx = Mh, type = "Slider", value = tostring(Mi.Value) }
            elseif Type == "Dropdown" then
                return { idx = Mh, type = "Dropdown", multi = Mi.Multi == true, value = Mi.Value }
            elseif Type == "Input" then
                local ayH = Mi.Value or ""
                return { idx = Mh, type = "Input", text = tostring(ayH) }
            elseif Type == "ColorPicker" then
                return { idx = Mh, type = "ColorPicker", value = Mi.Value:ToHex(), transparency = Mi.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = Mh,
                    type = "KeyPicker",
                    mode = Mi.Mode,
                    key = Mi.Value,
                    modifiers = Mi.Modifiers,
                    toggled = Mi.Toggled
                }
            else
                return nil
            end
        end
        azl = function()
            local ayK = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local ayL = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if ayL then
                        local ayL_1 = azm(k, v)
                        if ayL_1 then
                            ayK[#ayK + 1] = ayL_1
                        end
                    end
                end
            end
            table.sort(ayK, function(Ms, Mt)
                if Ms.type ~= Mt.type then
                    return Ms.type < Mt.type
                end
                return Ms.idx < Mt.idx
            end)
            return { objects = ayK }
        end
        azn = function(Mv)
            local ay0
            ay0 = nil
            local ay1 = type(Mv) ~= "table" or type(Mv.idx) ~= "string" or type(Mv.type) ~= "string" or SaveManager.Ignore[Mv.idx]
            if ay1 then
                return false
            end
            ay0 = azo(Mv.type, Mv.idx)
            if not ay0 then
                return false
            end
            local ay1_1 = pcall(function()
                if Mv.type == "Input" then
                    if type(Mv.text) ~= "string" then
                        return
                    end
                    ay0:SetValue(Mv.text)
                elseif Mv.type == "ColorPicker" then
                    ay0:SetValueRGB(Color3.fromHex(Mv.value), Mv.transparency)
                elseif Mv.type == "KeyPicker" then
                    ay0:SetValue({ Mv.key, Mv.mode, Mv.modifiers })
                    if Mv.mode == "Toggle" and Mv.toggled ~= nil then
                        ay0.Toggled = Mv.toggled
                        ay0:Update()
                    end
                else
                    ay0:SetValue(Mv.value)
                end
            end)
            return ay1_1
        end
        azp:AddDivider()
        azp:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", AllowEmpty = true })
        azp:AddButton("Export Config to Clipboard", function()
            local ay4_1
            local ay3_1
            ay3_1, ay4_1 = pcall(HttpService.JSONEncode, HttpService, azl())
            if ay3_1 then
                local ay3_2 = TB(setclipboard) and setclipboard
                local ay5 = ay3_2
                if not ay5 then
                    local ay3_3 = TB(toclipboard) and toclipboard
                    ay5 = ay3_3 or nil
                end
                local ay3_4 = ay5
                local ay5_1 = type(ay3_4) == "function" and pcall(ay3_4, ay4_1)
                if ay5_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        azp:AddButton("Import Config from Clipboard Text", function()
            local aza_1
            local ay8 = Options.SaveManager_ImportSource.Value or ""
            local ay8_1
            local ay9 = tostring(ay8):match("^%s*(.-)%s*$")
            if ay9 == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #ay9 > 262144 then
                Library:Notify("That config is too large")
                return
            end
            ay8_1, aza_1 = pcall(HttpService.JSONDecode, HttpService, ay9)
            local ay9_1 = not ay8_1 or type(aza_1) ~= "table" or type(aza_1.objects) ~= "table"
            if ay9_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #aza_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local ay8_2 = 0
            for i, v in ipairs(aza_1.objects) do
                if azn(v) then
                    ay8_2 += 1
                end
            end
            if ay8_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local aza_2 = ay8_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(ay8_2, aza_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.PickupRarities then
            az7_17.SetPickupRarities(Options.PickupRarities.Value)
        end
        if Options.PlaceRarities then
            az7_17.SetPlaceRarities(Options.PlaceRarities.Value)
        end
        if Options.PickupEggs then
            az7_17.SetPickupEggs(Options.PickupEggs.Value)
        end
        if Options.PlaceEggs then
            az7_17.SetPlaceEggs(Options.PlaceEggs.Value)
        end
        if Options.PickupMinKG then
            az7_17.SetPickupMinKG(Options.PickupMinKG.Value)
        end
        if Toggles.AutoVolcanoDip then
            az7_17.SetAutoVolcanoDip(Toggles.AutoVolcanoDip.Value)
        end
        if Options.ClaimDelay then
            az7_17.SetClaimDelay(Options.ClaimDelay.Value)
        end
        if Options.PlaceMinKG then
            az7_17.SetPlaceMinKG(Options.PlaceMinKG.Value)
        end
        if Options.HopMode then
            az7_17.SetHopMode(Options.HopMode.Value)
        end
        if Options.HopInterval then
            az7_17.SetHopInterval(Options.HopInterval.Value)
        end
        if Options.HopMinPlayers then
            az7_17.SetHopMinPlayers(Options.HopMinPlayers.Value)
        end
        if Toggles.HopAfterEgg then
            az7_17.SetHopAfterEgg(Toggles.HopAfterEgg.Value)
        end
        if Toggles.AutoServerHop then
            az7_17.SetAutoServerHop(Toggles.AutoServerHop.Value)
        end
        if Toggles.AutoExecute and Toggles.AutoExecute.Value then
            az7_17.SetAutoExecute(true)
        end
        if Options.SellPets then
            az7_17.SetSellPets(Options.SellPets.Value)
        end
        if Options.BuyGears then
            az7_17.SetBuyGears(Options.BuyGears.Value)
        end
        if Options.BuyFood then
            az7_17.SetBuyFood(Options.BuyFood.Value)
        end
        if Toggles.SellUnlisted then
            az7_17.SetSellUnlisted(Toggles.SellUnlisted.Value)
        end
        if Toggles.SellKeepMutated then
            az7_17.SetSellKeepMutated(Toggles.SellKeepMutated.Value)
        end
        if Toggles.AutoPlace then
            az7_17.SetAutoPlace(Toggles.AutoPlace.Value)
        end
        if Toggles.AutoHatch then
            az7_17.SetAutoHatch(Toggles.AutoHatch.Value)
        end
        if Toggles.AutoEquipBest then
            az7_17.SetAutoEquipBest(Toggles.AutoEquipBest.Value)
        end
        if Toggles.AutoHatchLuck then
            az7_17.SetAutoHatchLuck(Toggles.AutoHatchLuck.Value)
        end
        if Toggles.AutoClaimIndex then
            az7_17.SetAutoClaimIndex(Toggles.AutoClaimIndex.Value)
        end
        if Toggles.AutoRebirth then
            az7_17.SetAutoRebirth(Toggles.AutoRebirth.Value)
        end
        if Toggles.AutoSell then
            az7_17.SetAutoSell(Toggles.AutoSell.Value)
        end
        if Toggles.AutoBuyGears then
            az7_17.SetAutoBuyGears(Toggles.AutoBuyGears.Value)
        end
        if Toggles.AutoBuyFood then
            az7_17.SetAutoBuyFood(Toggles.AutoBuyFood.Value)
        end
        if Options.EspRarities then
            az7_17.SetEspRarities(Options.EspRarities.Value)
        end
        if Options.EspEggs then
            az7_17.SetEspEggs(Options.EspEggs.Value)
        end
        if Toggles.EggEspPets then
            az7_17.SetEggEspPets(Toggles.EggEspPets.Value)
        end
        if Toggles.EggEsp then
            az7_17.SetEggEsp(Toggles.EggEsp.Value)
        end
        if Options.FeedFoods then
            az7_17.SetFeedFoods(Options.FeedFoods.Value)
        end
        if Options.FeedRarities then
            az7_17.SetFeedRarities(Options.FeedRarities.Value)
        end
        if Options.FeedMinIncome then
            az7_17.SetFeedMinIncome(Options.FeedMinIncome.Value)
        end
        if Options.FeedMinAge then
            az7_17.SetFeedMinAge(Options.FeedMinAge.Value)
        end
        if Toggles.FeedBestOnly then
            az7_17.SetFeedBestOnly(Toggles.FeedBestOnly.Value)
        end
        if Toggles.FeedAboveIncome then
            az7_17.SetFeedAboveIncome(Toggles.FeedAboveIncome.Value)
        end
        if Toggles.FeedAboveAge then
            az7_17.SetFeedAboveAge(Toggles.FeedAboveAge.Value)
        end
        if Toggles.AutoFeed then
            az7_17.SetAutoFeed(Toggles.AutoFeed.Value)
        end
        if Options.WebhookUrl then
            az7_17.SetWebhookUrl(Options.WebhookUrl.Value)
        end
        if Options.WebhookPingId then
            az7_17.SetWebhookPingId(Options.WebhookPingId.Value)
        end
        if Options.WebhookEggRarities then
            az7_17.SetWebhookEggRarities(Options.WebhookEggRarities.Value)
        end
        if Options.WebhookEggNames then
            az7_17.SetWebhookEggNames(Options.WebhookEggNames.Value)
        end
        if Options.WebhookEggMutations then
            az7_17.SetWebhookEggMutations(Options.WebhookEggMutations.Value)
        end
        if Options.WebhookWeathers then
            az7_17.SetWebhookWeathers(Options.WebhookWeathers.Value)
        end
        if Options.WebhookMinIncome then
            az7_17.SetWebhookMinIncome(Options.WebhookMinIncome.Value)
        end
        if Toggles.WebhookPingUser then
            az7_17.SetWebhookPingUser(Toggles.WebhookPingUser.Value)
        end
        if Toggles.WebhookPingEveryone then
            az7_17.SetWebhookPingEveryone(Toggles.WebhookPingEveryone.Value)
        end
        if Toggles.WebhookClaimedEggs then
            az7_17.SetWebhookEvent("ClaimedEgg")(Toggles.WebhookClaimedEggs.Value)
        end
        if Toggles.WebhookHatchedPets then
            az7_17.SetWebhookEvent("HatchedPet")(Toggles.WebhookHatchedPets.Value)
        end
        if Toggles.WebhookLightning then
            az7_17.SetWebhookEvent("Lightning")(Toggles.WebhookLightning.Value)
        end
        if Toggles.WebhookWeather then
            az7_17.SetWebhookEvent("Weather")(Toggles.WebhookWeather.Value)
        end
        if Toggles.WebhookWeatherEnded then
            az7_17.SetWebhookEvent("WeatherEnded")(Toggles.WebhookWeatherEnded.Value)
        end
        if Toggles.WebhookEnabled then
            az7_17.SetWebhookEnabled(Toggles.WebhookEnabled.Value)
        end
        if Toggles.AutoPickup then
            az7_17.SetAutoPickup(Toggles.AutoPickup.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    L0()
end
autoReconnectLoop()
