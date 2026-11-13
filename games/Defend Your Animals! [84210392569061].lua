local fns = {}
local Sp_13, Sp_14, Sp_15, Sp_16, Sp_17, Sp_18, Sp_19, Sp_20, Sp_22, Animal_Remove, Sp_25, Sp_26, Sp_28, Sp_29, Research_Sync, Sp_31, Sp_32, Sp_34, Sp_35, Sp_36, Sp_37, Sp_39, Sp_41, Animal_Clear, Sp_44, Sp_45, uid, Sp_48, Sp_50, Sp_54, Sp_57, Sp_60, Sp_63, Sp_64, Weapon_Sync, Sp_70, Sp_71, Sp_73, Sp_74, Sp_77, Sp_80, Sp_83, Sp_84
fns.Sp_3 = nil
fns.Sp_4 = nil
fns.Sp_7 = nil
fns.Sp_10 = nil
fns.Sp_11 = nil
fns.Sp_12 = nil
Sp_13 = nil
Sp_14 = nil
Sp_16 = nil
Sp_18 = nil
Sp_19 = nil
Sp_20 = nil
Sp_22 = nil
Sp_25 = nil
Sp_26 = nil
Sp_28 = nil
Research_Sync = nil
Sp_31 = nil
Sp_32 = nil
Sp_34 = nil
Sp_36 = nil
Sp_39 = nil
Sp_41 = nil
Sp_44 = nil
Sp_45 = nil
uid = nil
local AY
local Ag
local zY
local AF
local Am
local A3
local z3
local Bs
local BR
local Options
local AR
local BX
local Af
local AE
local Bl
local Al
local A2
local BK
local Br
local Ar
local Weapon_Request
local z8
local Bx
local zQ
local Toggles
local BW
local zW
local B1
local LocalPlayer
local Bq
local A7
local z7
local BP
local BV
local BC
local M_Animals
local z0
local Library
local z6
local AO
local zO
local Bv
function fns.fn27(ft, fu)
    local Hc = os.clock()
    local He = Hc + (fu or 1.25)
    while true do
        if not (os.clock() < He) then
            return #Ar()
        end
        if Library.Unloaded then
            break
        end
        local Hc_1 = #Ar()
        if Hc_1 > ft then
            return Hc_1
        end
        task.wait(0.05)
    end
    return #Ar()
end
function fns.onOnClientEvent4(cy, cz, cA, cB, cC, cD, cE)
    local Ed = fns.Sp_3[cy]
    if not Ed then
        return
    end
    if cz ~= nil then
        Ed.Hunger = cz
    end
    if cA ~= nil then
        Ed.Accrued = cA
    end
    if cB ~= nil then
        Ed.Accrue_Since = cB
    end
    if cC ~= nil then
        Ed.Happiness = cC
    end
    if cD ~= nil then
        Ed.Mood = cD
    end
    if cE ~= nil then
        Ed.Memory = cE
    end
end
function fns.fn41(gi)
    for k, v in fns.Sp_3 do
        if v.Owner == LocalPlayer.UserId then
            gi(k, v)
        end
    end
end
function fns.fn69()
    local Fb_1
    local Fa_1
    for k, v in getconnections(Sp_44.OnClientEvent) do
        local Function = v.Function
        if type(Function) == "function" then
            local Fm = 1
            while Fm <= 25 do
                local Fn = Fm
                Fa_1, Fb_1 = pcall(debug.getupvalue, Function, Fn)
                local Fc = Fa_1 and type(Fb_1) == "table"
                if Fc then
                    for k, v in Fb_1 do
                        local Fa_2 = type(v) == "table" and type(v.Data) == "table" and v.Data.Uid ~= nil
                        if Fa_2 then
                            local Fa_3 = v.Data.Uid or k
                            z7[Fa_3] = v.Data
                        else
                            local Fa_4 = type(v) == "table" and v.Model and type(k) == "number"
                            if Fa_4 then
                                local Fb_2 = v.Data or { Uid = k }
                                z7[k] = Fb_2
                            end
                        end
                    end
                end
                Fm += 1
            end
        end
    end
end
function fns.fn101()
    Weapon_Request:FireServer()
end
function fns.fn161(b8, b9)
    if not next(b9) then
        return false
    end
    return b9[b8] == true
end
function fns.fn164(a7, a8)
    return string.format('<font color="%s">%s</font>', a8, a7)
end
function fns.fn193(kH)
    local K3 = Ag.Defense[kH]
    local K4 = K3
    if K4 then
        local K5 = K3.Name
        local K9 = if K5 then 1 else 0
        local K7 = 2727 * K9 + 2670 * (1 - K9)
        local K8 = 2846 * K9 + 711 * (1 - K9)
        if not ((K7 * 3048 + K8 * 2290 + K7 * K8) % 16777213 == 5813065) then
            K5 = kH
        end
        K4 = K5
    end
    return K4 or kH
end
function fns.fn195(bw)
    local Du = {}
    if type(bw) == "table" then
        for k, v in bw do
            if v then
                Du[k] = true
            end
        end
    end
    return Du
end
function fns.onOnClientEvent12(c7, c8, c9)
    local EF = type(c7) == "table" and c7
    BX = EF or {}
    local EF_1 = type(c8) == "table" and c8
    BP = EF_1 or {}
    if type(c9) == "number" then
        BK = c9 - os.time()
    end
end
function fns.fn293()
    local NM_1
    local NL_1
    NM_1, NL_1 = nil, -1
    for k in zO do
        local NN = z6.Get and z6.Get(k)
        local NO = NN or z6.List[k]
        local NN_1 = NO
        if NO then
            NO = NN_1.Damage or 0
        end
        local NN_2 = NO or 0
        if NN_2 > NL_1 then
            NL_1 = NN_2
            NM_1 = k
        end
    end
    return NM_1
end
function fns.fn316(fB)
    local Hg = Am.Eggs[fB]
    local Hh = Hg
    if Hh then
        local Hi = Hg.Name
        local Hm = if Hi then 1 else 0
        local Hk = 545 * Hm + 1730 * (1 - Hm)
        local Hl = 3187 * Hm + 471 * (1 - Hm)
        if not ((Hk * 246 + Hl * 2474 + Hk * Hl) % 16777213 == 9755623) then
            Hi = fB
        end
        Hh = Hi
    end
    return Hh or fB
end
function fns.fn394(ba, bb, bc)
    return string.format("<b>%s</b> %s %s", ba, BC("-", "#5a6070"), BC(bb, bc))
end
function fns.fn421()
    z3(AE, "Copied Discord invite to clipboard")
end
function fns.fn425()
    Sp_16(Toggles.DisableMoneyParticles.Value)
end
function fns.fn438()
    local Fv = {}
    local Egg_Render = workspace:FindFirstChild("Egg_Render")
    if not Egg_Render then
        return Fv
    end
    for i, child in Egg_Render:GetChildren() do
        if child:GetAttribute("Egg_Owner") == LocalPlayer.UserId then
            Fv[#Fv + 1] = child
        end
    end
    return Fv
end
function fns.fn440(e_, e0, e1)
    if #e1 == 0 then
        return 0
    end
    local GK = math.huge
    for k, v in e1 do
        local GL = e_ - v.gx
        local GM = e0 - v.gz
        local GN = math.sqrt(GL * GL + GM * GM)
        if GN < GK then
            GK = GN
        end
    end
    return GK
end
function fns.worker3()
    while not Library.Unloaded do
        pcall(A7)
        task.wait(0.03)
    end
end
function fns.fn457()
    local Character = LocalPlayer.Character
    local DG = Character and Character:FindFirstChild("HumanoidRootPart")
    return DG
end
function fns.fn505()
    if Toggles.AutoFarm.Value then
        Br()
    end
end
function fns.onOnClientEvent13(dd, de)
    local EM = type(dd) == "string" and type(de) == "table"
    if EM then
        Bx[dd] = de
    else
        local EM_1 = type(de) == "string" and type(dd) == "table"
        if EM_1 then
            Bx[de] = dd
        end
    end
end
function fns.fn521(b3)
    local D0 = M_Animals[b3]
    return D0 and D0.Rarity or "Common"
end
function fns.fn583()
    local Gp = {}
    for k, v in Ar() do
        local attr2 = v:GetAttribute("GX")
        local attr = v:GetAttribute("GZ")
        local Gs = type(attr2) == "number" and type(attr) == "number"
        if Gs then
            Gp[#Gp + 1] = { gx = attr2, gz = attr }
        end
    end
    return Gp
end
function fns.fn616(br)
    local Dr = Toggles[br]
    return Dr ~= nil and Dr.Value == true
end
function fns.onOnClientEvent5(cH, cI)
    local Ei = fns.Sp_3[cH]
    if Ei and cI ~= nil then
        Ei.Health = cI
    end
end
function fns.fn655(hc)
    local ID = #hc
    local IC = -1
    while false and ID <= 2 or true and ID >= 2 do
        local IE = ID
        local Iy_1 = math.random(IE)
        hc[IE], hc[Iy_1] = hc[Iy_1], hc[IE]
        ID += IC
    end
end
function fns.fn676()
    local Ku = fns.Sp_7()
    local Kv = {}
    if not Ku then
        return Kv
    end
    local Builds = Ku:FindFirstChild("Builds")
    if not Builds then
        return Kv
    end
    for i, child in Builds:GetChildren() do
        local attr = child:GetAttribute("BuildId")
        local Kw_1 = attr and Ag.Farms[attr]
        local Ku_2 = Kw_1
        if Kw_1 then
            Kw_1 = Ku_2.Type == "Trough"
        end
        if Kw_1 then
            Kv[#Kv + 1] = child
        end
    end
    return Kv
end
function fns.onOnClientEvent10(c_, c0)
    if type(c_) == "table" then
        z0 = c_
    end
    if type(c0) == "number" then
        fns.Sp_4 = c0
    end
end
function fns.fn723()
    local On_1
    local Om_1
    local Ol_1
    local Ok_1
    local Og = AO()
    local Og_1
    if not Og then
        return
    end
    local UserId = LocalPlayer.UserId
    local Oj = Options.AutoFarmRange and Options.AutoFarmRange.Value or 120
    local Oj_1
    Om_1, Ol_1, Ok_1, Oj_1 = nil, Oj, nil, nil
    local Position = Og.Position
    for k, v in z7 do
        if v.Owner == UserId then
            Og_1, On_1 = AR(k, v)
            if On_1 then
                local Magnitude = (On_1.Position - Position).Magnitude
                if Magnitude < Ol_1 then
                    Ol_1 = Magnitude
                    Om_1 = On_1
                    Ok_1 = k
                    Oj_1 = v
                end
            end
        end
    end
    if Om_1 then
        return { part = Om_1, uid = Ok_1, data = Oj_1, dist = Ol_1 }
    end
end
function fns.fn743()
    if not Sp_45("StopRaidAtWave") then
        return
    end
    local M_ = A2()
    if not M_ then
        return
    end
    local Raid_Active = M_:FindFirstChild("Raid_Active")
    local Raid_Wave = M_:FindFirstChild("Raid_Wave")
    local M__1 = not Raid_Active or not Raid_Active.Value
    local M0_1 = not Raid_Wave
    local M2 = M__1
    local M6 = if M2 then 1 else 0
    local M4 = 307 * M6 + 3760 * (1 - M6)
    local M5 = 1835 * M6 + 794 * (1 - M6)
    if not ((M4 * 3569 + M5 * 3503 + M4 * M5) % 16777213 == 8087033) then
        M2 = M0_1
    end
    if M2 then
        return
    end
    local M0_2 = Options.StopRaidWave and Options.StopRaidWave.Value or 10
    local M0_3 = tonumber(Raid_Wave.Value) or 0
    if M0_3 < M0_2 then
        return
    end
    local M__4 = os.clock()
    if M__4 - Bs < 1 then
        return
    end
    Bs = M__4
    pcall(function()
        Sp_13:FireServer()
    end)
end
function fns.fn754(bl)
    local DiscordGroup = bl:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = Sp_31 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = Sp_31 })
end
function fns.fn758()
    local Stats = LocalPlayer:FindFirstChild("Stats")
    local DJ = Stats and Stats:FindFirstChild("Money")
    if DJ then
        local DJ_1 = tonumber(DJ.Value) or 0
        return DJ_1
    end
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local DJ_2 = leaderstats and leaderstats:FindFirstChild("Money")
    local DI_3 = DJ_2
    if DJ_2 then
        local DK = (tonumber(DI_3.Value))
        local DO_1 = if DK then 1 else 0
        local DM_1 = 3287 * DO_1 + 2554 * (1 - DO_1)
        local DN_1 = 680 * DO_1 + 991 * (1 - DO_1)
        if not ((DM_1 * 1529 + DN_1 * 1660 + DM_1 * DN_1) % 16777213 == 8389783) then
            DK = 0
        end
        DJ_2 = DK
    end
    local DI_4 = DJ_2
    local DO_2 = if DI_4 then 1 else 0
    local DM_2 = 510 * DO_2 + 1633 * (1 - DO_2)
    local DN_2 = 2909 * DO_2 + 2835 * (1 - DO_2)
    if not ((DM_2 * 2917 + DN_2 * 653 + DM_2 * DN_2) % 16777213 == 4870837) then
        DI_4 = 0
    end
    return DI_4
end
function fns.fn759()
    Research_Sync:FireServer()
end
function fns.fn778(eQ, eR, eS)
    for k, v in eS do
        local GB = eQ - v.gx
        local GC = eR - v.gz
        if GB * GB + GC * GC < 56.2499 then
            return true
        end
    end
    return false
end
function fns.fn798(a0, a1)
    if setclipboard then
        setclipboard(a0)
    elseif toclipboard then
        toclipboard(a0)
    end
    Library:Notify(a1)
end
function fns.worker()
    while not Library.Unloaded do
        pcall(zY)
        pcall(AY)
        pcall(Sp_22)
        pcall(zQ)
        pcall(Sp_39)
        pcall(z8)
        pcall(fns.Sp_10)
        pcall(zW)
        pcall(Sp_20)
        pcall(AF)
        pcall(Sp_18)
        pcall(Bl)
        pcall(Af, "AutoBuyBlocks", "BuyBlocks", Sp_34)
        pcall(Af, "AutoBuyDefense", "BuyDefense", BR)
        pcall(Af, "AutoBuyFarm", "BuyFarms", Sp_25)
        pcall(BW)
        pcall(Sp_28)
        task.wait(0.45)
    end
end
function fns.onOnClientEvent9(cW)
    if cW == nil then
        table.clear(z7)
        return
    end
    for k, v in z7 do
        if v.Owner == cW then
            z7[k] = nil
        end
    end
end
function fns.fn808(kM)
    local La = kM.Stats and kM.Stats:FindFirstChild("Amount")
    local Lb = La
    if La then
        local Lc = tonumber(Lb.Value) or 1
        La = Lc
    end
    local Lb_1 = La
    local Lg = if Lb_1 then 1 else 0
    local Le = 3037 * Lg + 226 * (1 - Lg)
    local Lf = 1124 * Lg + 721 * (1 - Lg)
    if not ((Le * 4064 + Lf * 653 + Le * Lf) % 16777213 == 16489928) then
        Lb_1 = 1
    end
    return Lb_1
end
function fns.fn831(ep)
    local Ga_1
    local F9_1
    local F8_1
    local F7_1
    local Primary = ep:FindFirstChild("Primary")
    local F4 = Primary and Primary:FindFirstChild("Floor_Animals")
    local F4_1 = Sp_19.Get_Pivot(ep)
    if not F4 or not F4_1 then
        return
    end
    local F5_1 = F4.Size.X / 2
    local F6_1 = F4.Size.Z / 2
    F8_1, F7_1 = math.huge, -math.huge
    Ga_1, F9_1 = math.huge, -math.huge
    for k, v in { -F5_1, F5_1 } do
        for k, v2 in { -F6_1, F6_1 } do
            local F5_2 = F4.CFrame * Vector3.new(v, 0, v2)
            local Gb = F4_1.CFrame:PointToObjectSpace(F5_2)
            F8_1 = math.min(F8_1, Gb.X)
            F7_1 = math.max(F7_1, Gb.X)
            Ga_1 = math.min(Ga_1, Gb.Z)
            F9_1 = math.max(F9_1, Gb.Z)
        end
    end
    return {
        MinX = Sp_19.Snap_Step(F8_1 + Bv, Bv),
        MaxX = Sp_19.Snap_Step(F7_1 - Bv, Bv),
        MinZ = Sp_19.Snap_Step(Ga_1 + Bv, Bv),
        MaxZ = Sp_19.Snap_Step(F9_1 - Bv, Bv)
    }
end
function fns.worker2()
    while not Library.Unloaded do
        pcall(Sp_14)
        task.wait(0.1)
    end
end
function fns.fn942(cn)
    Bq[#Bq + 1] = cn
    return cn
end
function fns.onOnClientEvent(cp)
    local D4 = type(cp) ~= "table" or cp.Uid == nil
    if D4 then
        return
    end
    fns.Sp_3[cp.Uid] = cp
end
function fns.fn1043()
    local EQ_1
    local EP_1
    for k, v in getconnections(A3.OnClientEvent) do
        local Function = v.Function
        if type(Function) == "function" then
            local E0 = 1
            while E0 <= 20 do
                local E1 = E0
                EP_1, EQ_1 = pcall(debug.getupvalue, Function, E1)
                local ER = EP_1 and type(EQ_1) == "table"
                if ER then
                    for k, v in EQ_1 do
                        local EP_2 = type(v) == "table" and type(v.Data) == "table" and v.Data.Uid ~= nil
                        if EP_2 then
                            local EP_3 = v.Data.Uid or k
                            fns.Sp_3[EP_3] = v.Data
                        end
                    end
                end
                E0 += 1
            end
        end
    end
end
function fns.onOnClientEvent7(cR)
    local Er = type(cR) ~= "table" or cR.Uid == nil
    if Er then
        return
    end
    z7[cR.Uid] = cR
end
function fns.fn1088()
    local Stats = LocalPlayer:FindFirstChild("Stats")
    local DQ = Stats and Stats:FindFirstChild("Tycoon")
    local DP_1 = DQ
    if DQ then
        DQ = DP_1.Value
    end
    local DP_2 = DQ
    if DQ then
        DQ = DP_2.Parent
    end
    if DQ then
        return DP_2
    end
end
function fns.onOnClientEvent3(cu)
    for k, v in fns.Sp_3 do
        if v.Owner == cu then
            fns.Sp_3[k] = nil
        end
    end
end
function fns.fn1126()
    if not Toggles.AutoFarm.Value then
        Sp_41()
        Br()
    end
end
function fns.onOnClientEvent6(cL, cM, cN, cO)
    local Ep = fns.Sp_3[cL]
    if not Ep then
        return
    end
    if cN ~= nil then
        Ep.Accrued = cN
    end
    if cO ~= nil then
        Ep.Accrue_Since = cO
    end
end
function fns.fn1172()
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        return
    end
    local Oc_1 = Sp_32()
    if not Oc_1 then
        return
    end
    if Sp_45("AutoFarm") then
        local Oe = Options.AutoFarmWalkSpeed and Options.AutoFarmWalkSpeed.Value or 24
        Oc_1.WalkSpeed = Oe
    else
        Oc_1.WalkSpeed = 16
    end
end
function fns.onOnClientEvent11(c3, c4)
    if type(c3) == "table" then
        zO = c3
    end
    if type(c4) == "string" then
        B1 = c4
    end
end
function fns.fn1204(oI, oJ)
    if oJ._part and oJ._part.Parent and oJ._model and oJ._model.Parent then
        return oJ._model, oJ._part
    end
    local Enemy_Render = workspace:FindFirstChild("Enemy_Render")
    if not Enemy_Render then
        return
    end
    local N9 = oJ.Model or oJ.Id
    if type(N9) ~= "string" then
        return
    end
    local N9_1 = Enemy_Render:FindFirstChild(N9 .. "_" .. tostring(oI))
    if not N9_1 then
        return
    end
    local N8_2 = N9_1:FindFirstChild("Main") or N9_1.PrimaryPart or N9_1:FindFirstChild("HumanoidRootPart") or N9_1:FindFirstChildWhichIsA("BasePart")
    if not N8_2 then
        return
    end
    oJ._model = N9_1
    oJ._part = N8_2
    return N9_1, N8_2
end
function fns.fn1239(aQ, aR)
    if aQ.price ~= aR.price then
        return aQ.price < aR.price
    end
    return aQ.name < aR.name
end
function fns.fn1276()
    local Mo = {}
    for k, v in BV do
        local Mp = type(v) == "table" and v.id and v.id ~= "start"
        if Mp then
            Mo[#Mo + 1] = v
        end
    end
    table.sort(Mo, function(l4, l5)
        return (l4.price or 0) < (l5.price or 0)
    end)
    return Mo
end
function fns.fn1301(kR, kS)
    local Lk_1
    local Lh = Sp_19.Get_Bounds(kR)
    if type(Lh) ~= "table" then
        return
    end
    local Li = Sp_19.GRID or 4
    local Li_1
    Lk_1, Li_1 = nil, math.huge
    local MinX = Lh.MinX
    local MaxX = Lh.MaxX
    local Lt = MinX
    while Li > 0 and Lt <= MaxX or Li <= 0 and Lt >= MaxX do
        local Lu = Lt
        local MinZ = Lh.MinZ
        local MaxZ = Lh.MaxZ
        local Ly = MinZ
        while Li > 0 and Ly <= MaxZ or Li <= 0 and Ly >= MaxZ do
            local Lz = Ly
            local Ll_2 = string.format("%s:%s", tostring(Lu), tostring(Lz))
            local Lm_2 = not kS[Ll_2]
            if Lm_2 ~= false then
                Lm_2 = not Sp_19.Is_Cell_Occupied(kR, Lu, Lz, 0)
            end
            if Lm_2 then
                local Lm_3 = Lz * 1000 + math.abs(Lu)
                if Lm_3 < Li_1 then
                    Li_1 = Lm_3
                    Lk_1 = { gx = Lu, gz = Lz, key = Ll_2 }
                end
            end
            Ly += Li
        end
        Lt += Li
    end
    return Lk_1
end
function fns.onOnClientEvent8(cU)
    z7[cU] = nil
end
function fns.fn1349()
    local Character = LocalPlayer.Character
    local DD = Character and Character:FindFirstChildOfClass("Humanoid")
    return DD
end
function fns.fn1356()
    local Character = LocalPlayer.Character
    if not Character then
        return
    end
    for i, child in Character:GetChildren() do
        local H6_1 = child:IsA("Tool") and child:FindFirstChild("Stats")
        if H6_1 then
            local Food_Name = child.Stats:FindFirstChild("Food_Name")
            if Food_Name and Sp_26[Food_Name.Value] then
                return child
            end
        end
    end
end
function fns.fn1365(as)
    local C4_1
    local C3_1
    C4_1, C3_1 = {}, {}
    local C5 = {}
    for k, v in as do
        local C6 = v.Name or k
        local C6_1 = #C5 + 1
        local C8 = v.Price or 0
        C5[C6_1] = { id = k, name = C6, price = C8 }
    end
    table.sort(C5, function(az, aA)
        if az.price ~= aA.price then
            return az.price < aA.price
        end
        return az.name < aA.name
    end)
    for k, v in C5 do
        C4_1[#C4_1 + 1] = v.name
        C3_1[v.name] = v.id
    end
    return C4_1, C3_1
end
function fns.onOnClientEvent2(cs)
    fns.Sp_3[cs] = nil
end
function fns.fn1459()
    fns.Sp_12 = nil
    uid = nil
end
function fns.fn1462()
    local Stats = LocalPlayer:FindFirstChild("Stats")
    local DW = Stats and Stats:FindFirstChild("Gameplay")
    return DW
end
function fns.fn1493(e9, fa)
    local G0_1
    local GV = fns.Sp_11(e9)
    if not GV then
        return
    end
    local GW = (GV.MinX + GV.MaxX) / 2
    local GX = (GV.MinZ + GV.MaxZ) / 2
    local GY
    local MinX = GV.MinX
    local MaxX = GV.MaxX
    local G4 = MinX
    local G3 = Bv
    while true and G4 <= MaxX or false and G4 >= MaxX do
        local G5 = G4
        local MinZ = GV.MinZ
        local G__1 = GV.MaxZ
        local G9 = MinZ
        local G8 = Bv
        while true and G9 <= G__1 or false and G9 >= G__1 do
            local Ha = G9
            if not Sp_36(G5, Ha, fa) then
                local GZ_2 = Sp_19.Get_Place_CFrame(e9, G5, Ha, 0, 0, "Floor_Animals", true)
                if GZ_2 then
                    local GZ_3 = Al(G5, Ha, fa)
                    local G__2 = math.abs(G5 - GW) + math.abs(Ha - GX)
                    if #fa == 0 then
                        G0_1 = G__2
                    else
                        G0_1 = GZ_3 + G__2 * 0.01
                    end
                    if not GY or G0_1 < GY.score then
                        GY = { gx = G5, gz = Ha, score = G0_1 }
                    end
                end
            end
            G9 += G8
        end
        G4 += G3
    end
    return GY
end
Sp_19 = nil
zO = nil
zQ = nil
Sp_45 = nil
fns.Sp_4 = nil
zW = nil
zY = nil
z0 = nil
z3 = nil
Sp_16 = nil
z6 = nil
z7 = nil
z8 = nil
Options = nil
Sp_39 = nil
Sp_26 = nil
fns.Sp_3 = nil
Toggles = nil
Af = nil
Ag = nil
Research_Sync = nil
M_Animals = nil
Al = nil
Am = nil
Sp_13 = nil
Library = nil
Ar = nil
local Players, Weapon_Buy, zR, zT, zV, zX, zZ, M_Upgrades, Sell_Request, z2, z4, Ad, SaveManager, Ak, An, Aq, As, Trough_Fill, Window, Av, Aw, Ax, Ay
Sp_28 = nil
AE = nil
AF = nil
fns.Sp_10 = nil
Sp_18 = nil
AO = nil
AR = nil
Sp_22 = nil
AY = nil
Sp_32 = nil
LocalPlayer = nil
A2 = nil
A3 = nil
Sp_36 = nil
Sp_14 = nil
A7 = nil
Bl = nil
local Az, AB, AC, AD, AG, AI, AJ, AK, AL, AM, AP, AQ, AS, AU, AV, AW, AX, A_, A0, A6, A8, Lighting, Ba, Bb, Bc, Bd, Be, connection2, CoreGui, Bh, Bi, Bj, Bk
fns.Sp_11 = nil
Bq = nil
Br = nil
Bs = nil
Bv = nil
Bx = nil
Sp_44 = nil
Sp_25 = nil
BC = nil
BK = nil
BP = nil
Weapon_Request = nil
BR = nil
Sp_41 = nil
Sp_20 = nil
BV = nil
BW = nil
BX = nil
uid = nil
Sp_31 = nil
fns.Sp_7 = nil
B1 = nil
Sp_34 = nil
fns.Sp_12 = nil
local connection, GuiService, Burst, HttpService, By, BB, BD, BE, BF, BG, VirtualUser, BJ, Combat_Swing, BM, UserInputService, BO, RunService, M_Collect_FX, B2, B3
connection = nil
GuiService = nil
local Bp
Burst = nil
HttpService = nil
local Animal_Feed
By = nil
BB = nil
BD = nil
BE = nil
BF = nil
BG = nil
VirtualUser = nil
BJ = nil
Combat_Swing = nil
BM = nil
UserInputService = nil
BO = nil
RunService = nil
M_Collect_FX = nil
B2 = nil
B3 = nil
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Lighting, LocalPlayer = nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local Sp_51 = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Lighting = game:GetService("Lighting")
LocalPlayer = Players.LocalPlayer
LocalPlayer:WaitForChild("PlayerGui")
local Sp_61 = getgenv and getgenv()
local Sp_81 = Sp_61
local Sp_27 = if Sp_81 then 1 else 0
local Sp_56 = 2048 * Sp_27 + 2386 * (1 - Sp_27)
local Sp_46 = 336 * Sp_27 + 766 * (1 - Sp_27)
if not ((Sp_56 * 1321 + Sp_46 * 3703 + Sp_56 * Sp_46) % 16777213 == 4637744) then
    Sp_81 = _G
end
AP = Sp_81
if AP.__Ouroboros_DefendYourAnimals then
    return
end
AK, AE, Ax, Sp_81, Am, M_Animals, Ag, Sp_26, z6, M_Upgrades, zT, Sp_19, M_Collect_FX, BV, BO, BJ, Animal_Feed, Bp, Bi, Ba, A3, Animal_Remove, Animal_Clear, Sp_54, Sp_64, Sp_74, AG, Az, Trough_Fill, Sp_13, Ak, Research_Sync, Ad, Sp_84, Sell_Request, Sp_17, Weapon_Buy, B2, Weapon_Sync, Weapon_Request, Combat_Swing, Sp_44, Sp_77, fns.Sp_5, Sp_29, Sp_48, fns.Sp_9, AW, AU, Sp_80, Sp_34, Sp_50, BR, Sp_60, Sp_25, Sp_57, Sp_70, A6, Sp_71 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Sp_61 = 12
repeat
    Sp_35 = (Sp_61 * 3 + 14) % 23 + 1
    if Sp_35 <= 12 then
        if Sp_35 <= 6 then
            if Sp_35 <= 3 then
                if Sp_35 <= 2 then
                    if Sp_35 <= 1 then
                        if ((not Am or Am) and (not Sp_17 or Sp_71) or (not Am or not Am) and (not Sp_17 or not Ad) or (not Sp_17 and not Ad or (not Sp_17 or not Sp_17) or (Weapon_Sync or not Sp_60) and (not Sp_60 and not Sp_17))) and (Ad or Sp_71 or (not Ad or not Ad) or (not Am or not Sp_60 or Am and Ad) or (not Weapon_Sync and not Ad or (not Ad or not Sp_71)) and (not Sp_60 and not Am or Sp_71 and Weapon_Sync)) and not (((not Am or Am) and (not Sp_17 or Sp_71) or (not Am or not Am) and (not Sp_17 or not Ad) or (not Sp_17 and not Ad or (not Sp_17 or not Sp_17) or (Weapon_Sync or not Sp_60) and (not Sp_60 and not Sp_17))) and (Ad or Sp_71 or (not Ad or not Ad) or (not Am or not Sp_60 or Am and Ad) or (not Weapon_Sync and not Ad or (not Ad or not Sp_71)) and (not Sp_60 and not Am or Sp_71 and Weapon_Sync))) then
                            Sp_48 = { Hard = "HARD", Easy = "EASY", Medium = "MEDIUM" }
                        else
                            AW = { Easy = "EASY", Medium = "MEDIUM", Hard = "HARD" }
                        end
                        Sp_61 = (Sp_61 + 100) % 184
                    else
                        Sp_15 = (vector.create((Sp_61 * 3 + 4) % 11 + 1, (Sp_61 * 3 + 9) % 13 + 1, (Sp_61 * 12 + 13) % 17 + 1))
                        Sp_83 = (vector.create((Sp_61 * 6 + 9) % 11 + 1, (Sp_61 * 7 + 1) % 13 + 1, (Sp_61 * 2 + 12) % 17 + 1))
                        Sp_73 = (vector.create((Sp_61 * 2 + 7) % 11 + 1, (Sp_61 * 1 + 11) % 13 + 1, (Sp_61 * 6 + 17) % 17 + 1))
                        Sp_63 = (vector.create((Sp_61 * 3 + 1) % 5 + 1, (Sp_61 * 5 + 2) % 7 + 1, (Sp_61 * 1 + 3) % 9 + 1))
                        if vector.dot(vector.cross(Sp_15, (vector.cross(Sp_83, Sp_73))), Sp_63) == vector.dot(Sp_83 * vector.dot(Sp_15, Sp_73) - Sp_73 * vector.dot(Sp_15, Sp_83), Sp_63) + 1 then
                            BJ = { "Defense", "Animals", "Foods", "Blocks" }
                        else
                            AU = { "Animals", "Blocks", "Defense", "Foods" }
                        end
                        Sp_61 = (Sp_61 + 77) % 184
                    end
                else
                    Sp_15 = (vector.create((Sp_61 * 1 + 1) % 11 + 1, (Sp_61 * 5 + 12) % 13 + 1, (Sp_61 * 3 + 3) % 17 + 1))
                    Sp_83 = (vector.create((Sp_61 * 2 + 4) % 11 + 1, (Sp_61 * 7 + 9) % 13 + 1, (Sp_61 * 4 + 5) % 17 + 1))
                    Sp_73 = (vector.create((Sp_61 * 7 + 5) % 11 + 1, (Sp_61 * 8 + 6) % 13 + 1, (Sp_61 * 7 + 12) % 17 + 1))
                    Sp_63 = (vector.create((Sp_61 * 4 + 6) % 5 + 1, (Sp_61 * 1 + 6) % 7 + 1, (Sp_61 * 3 + 5) % 9 + 1))
                    if vector.dot(vector.cross(Sp_15, (vector.cross(Sp_83, Sp_73))), Sp_63) == vector.dot(Sp_83 * vector.dot(Sp_15, Sp_73) - Sp_73 * vector.dot(Sp_15, Sp_83), Sp_63) + 5 then
                        Ag = fns.fn1365
                        Am, BR = Ag(Sp_71.Blocks)
                        Sp_25, Sp_80 = Ag(Sp_71.Defense)
                        Sp_57, Sp_37 = Ag(Sp_71.Farms)
                        Sp_50, Sp_34 = Ag(Sp_60.Eggs)
                    else
                        Sp_71 = fns.fn1365
                        Sp_80, Sp_34 = Sp_71(Ag.Blocks)
                        Sp_50, BR = Sp_71(Ag.Defense)
                        Sp_60, Sp_25 = Sp_71(Ag.Farms)
                        Sp_57, Sp_37 = Sp_71(Am.Eggs)
                    end
                    Sp_61 = (Sp_61 + 31) % 184
                end
            elseif Sp_35 <= 5 then
                if Sp_35 <= 4 then
                    Sp_15 = (vector.create((Sp_61 * 4 + 1) % 11 + 1, (Sp_61 * 9 + 6) % 13 + 1, (Sp_61 * 11 + 3) % 17 + 1))
                    Sp_83 = (vector.create((Sp_61 * 3 + 9) % 11 + 1, (Sp_61 * 7 + 3) % 13 + 1, (Sp_61 * 9 + 17) % 17 + 1))
                    local WN = vector.cross(Sp_15, Sp_83)
                    local WO = vector.dot(Sp_15, Sp_83)
                    if vector.dot(WN, WN) + WO * WO == vector.dot(Sp_15, Sp_15) * vector.dot(Sp_83, Sp_83) + 5 then
                        A6, Sp_70 = {}, {}
                    else
                        Sp_70, A6 = {}, {}
                    end
                    Sp_61 = (Sp_61 + 123) % 184
                else
                    Sp_15 = (vector.create((Sp_61 * 1 + 4) % 11 + 1, (Sp_61 * 2 + 12) % 13 + 1, (Sp_61 * 8 + 12) % 17 + 1))
                    Sp_83 = (vector.create((Sp_61 * 1 + 9) % 11 + 1, (Sp_61 * 7 + 6) % 13 + 1, (Sp_61 * 1 + 9) % 17 + 1))
                    Sp_73 = (vector.create((Sp_61 * 4 + 4) % 11 + 1, (Sp_61 * 5 + 12) % 13 + 1, (Sp_61 * 4 + 12) % 17 + 1))
                    Sp_63 = (vector.create((Sp_61 * 3 + 2) % 11 + 1, (Sp_61 * 3 + 8) % 13 + 1, (Sp_61 * 2 + 2) % 17 + 1))
                    if vector.dot(vector.cross(Sp_15, Sp_83), (vector.cross(Sp_73, Sp_63))) == vector.dot(Sp_15, Sp_73) * vector.dot(Sp_83, Sp_63) - vector.dot(Sp_15, Sp_63) * vector.dot(Sp_83, Sp_73) then
                        AP.__Ouroboros_DefendYourAnimals = true
                        AK = "Defend Your Animals!"
                        AE = "https://discord.gg/ehKVq7pf7v"
                        Ax = "https://rscripts.net/@Ouroboros"
                    else
                        Ax.__Ouroboros_DefendYourAnimals = true
                        AP = "Defend Your Animals!"
                        AK = "https://discord.gg/ehKVq7pf7v"
                        AE = "https://rscripts.net/@Ouroboros"
                    end
                    Sp_61 = (Sp_61 + 169) % 184
                end
            else
                if (Sp_61 * 2 + 9) * 4 % 3 == ((Sp_61 * 2 + 9) * 4 + 8) % 3 then
                    Sp_51 = Sp_81:WaitForChild("Remotes")
                else
                    Sp_81 = Sp_51:WaitForChild("Remotes")
                end
                Sp_61 = (Sp_61 + 169) % 184
            end
        elseif Sp_35 <= 9 then
            if Sp_35 <= 8 then
                if Sp_35 <= 7 then
                    Sp_15 = {
                        "gewqipnyiae",
                        "joffbqjfx",
                        "aonjewy",
                        "grdkl",
                        "gshlvq",
                        "vac",
                        "oemapbox",
                        "ioewkwg",
                        "hwzmpyxl",
                        "qwmbmafoub",
                        "qjsg"
                    }
                    local Vn = Sp_61
                    Sp_83 = Sp_15[Vn % 11 + 1]
                    if Sp_83:len() >= Sp_83:gsub("(.)", "%1%1", Vn % 3 % 2 + 1):len() then
                        Sp_51 = require(Am:WaitForChild("M_Eggs"))
                    else
                        Am = require(Sp_51:WaitForChild("M_Eggs"))
                    end
                    Sp_61 = (Sp_61 + 31) % 184
                else
                    Sp_15 = {
                        "rtqmzqbz",
                        "uzfkoo",
                        "ncftezzxz",
                        "qskonnyc",
                        "nmfunre",
                        "whexmeaczmf",
                        "whikzjwg",
                        "tyvsp",
                        "ytocwds",
                        "ebd",
                        "wbr",
                        "qkurj"
                    }
                    local Td = Sp_61
                    Sp_83 = Sp_15[Td % 12 + 1]
                    if Sp_83:len() >= Sp_83:gsub("(.)", "%1%1", Td % 3 % 2 + 1):len() then
                        Sp_51 = require(M_Animals:WaitForChild("M_Animals"))
                    else
                        M_Animals = require(Sp_51:WaitForChild("M_Animals"))
                    end
                    Sp_61 = (Sp_61 + 54) % 184
                end
            else
                Sp_15 = {
                    "gwqbdezmbycl",
                    "rufrnku",
                    "abtqtmudwzg",
                    "ywmtdttowq",
                    "ujhucbybf",
                    "ouaw",
                    "cyzykltpdi",
                    "taneapmu",
                    "nlvmvqha",
                    "bwjsxcw",
                    "vbmnqarznz",
                    "kncaefwr",
                    "cwpvaqsi",
                    "qzjohrzs"
                }
                if Sp_15[(Sp_61 * 36 + 79) % 14 + 1] < Sp_15[(Sp_61 * 36 + 79) % 14 + 1] then
                    Sp_51 = require(Ag:WaitForChild("M_Builds"))
                else
                    Ag = require(Sp_51:WaitForChild("M_Builds"))
                end
                Sp_61 = (Sp_61 + 100) % 184
            end
        elseif Sp_35 <= 11 then
            if Sp_35 <= 10 then
                if (Sp_61 * 1 + 9) * 17 % 4 == ((Sp_61 * 1 + 9) * 17 + 12) % 4 then
                    Sp_26 = require(Sp_51:WaitForChild("M_Foods"))
                    z6 = require(Sp_51:WaitForChild("M_Weapons"))
                    M_Upgrades = require(Sp_51:WaitForChild("M_Upgrades"))
                else
                    Sp_51 = require(M_Upgrades:WaitForChild("M_Foods"))
                    Sp_26 = require(M_Upgrades:WaitForChild("M_Weapons"))
                    z6 = require(M_Upgrades:WaitForChild("M_Upgrades"))
                end
                Sp_61 = (Sp_61 + 100) % 184
            else
                if Sp_61 * 129581423 + 8 + 1 <= Sp_61 * 129581423 + 8 + 1 + 5 then
                    zT = require(Sp_51:WaitForChild("M_Modes"))
                    Sp_19 = require(Sp_51:WaitForChild("M_Place_Utils"))
                    M_Collect_FX = require(Sp_51:WaitForChild("M_Collect_FX"))
                    BV = require(Sp_51:WaitForChild("Upgrades_Storages"):WaitForChild("UpgradeTreeData"))
                else
                    Sp_51 = require(M_Collect_FX:WaitForChild("M_Modes"))
                    BV = require(M_Collect_FX:WaitForChild("M_Place_Utils"))
                    Sp_19 = require(M_Collect_FX:WaitForChild("M_Collect_FX"))
                    zT = require(M_Collect_FX:WaitForChild("Upgrades_Storages"):WaitForChild("UpgradeTreeData"))
                end
                Sp_61 = (Sp_61 + 31) % 184
            end
        else
            Sp_15 = {
                "xgvexpb",
                "pyg",
                "fezpu",
                "ktljmsa",
                "emmdvjdyn",
                "bwqbsxeotat",
                "cyxuy",
                "tnk",
                "aauuv",
                "ytjg",
                "oxbnqcbq",
                "cdbigr"
            }
            local VX = Sp_61
            Sp_83 = Sp_15[VX % 12 + 1]
            if Sp_83:len() <= Sp_83:reverse():rep(VX % 3 + 2):len() then
                BO = Sp_81:WaitForChild("Egg_Hatch")
                BJ = Sp_81:WaitForChild("Egg_Place")
            else
                Sp_81 = BJ:WaitForChild("Egg_Hatch")
                BO = BJ:WaitForChild("Egg_Place")
            end
            Sp_61 = (Sp_61 + 31) % 184
        end
    elseif Sp_35 <= 18 then
        if Sp_35 <= 15 then
            if Sp_35 <= 14 then
                if Sp_35 <= 13 then
                    local WM = bit32.rrotate(bit32.bxor(bit32.lrotate(Sp_61, 12), string.byte(tostring(Sp_64))), 24)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(WM, 1994982835), 30), 3719971180) ~= bit32.lrotate(WM, 30) then
                        Sp_81 = Animal_Feed:WaitForChild("Animal_Feed")
                        Bi = Animal_Feed:WaitForChild("Animal_Pickup")
                        Bp = Animal_Feed:WaitForChild("Animal_Upgrade")
                    else
                        Animal_Feed = Sp_81:WaitForChild("Animal_Feed")
                        Bp = Sp_81:WaitForChild("Animal_Pickup")
                        Bi = Sp_81:WaitForChild("Animal_Upgrade")
                    end
                    Sp_61 = (Sp_61 + 31) % 184
                else
                    Sp_15 = (vector.create((Sp_61 * 1 + 1) % 11 + 1, (Sp_61 * 9 + 9) % 13 + 1, (Sp_61 * 14 + 9) % 17 + 1))
                    Sp_83 = (vector.create((Sp_61 * 5 + 5) % 11 + 1, (Sp_61 * 2 + 5) % 13 + 1, (Sp_61 * 13 + 5) % 17 + 1))
                    local W5 = vector.dot(Sp_15, Sp_83)
                    if W5 * W5 <= vector.dot(Sp_15, Sp_15) * vector.dot(Sp_83, Sp_83) then
                        Ba = Sp_81:WaitForChild("Animal_Claim")
                        A3 = Sp_81:WaitForChild("Animal_Spawn")
                        Animal_Remove = Sp_81:WaitForChild("Animal_Remove")
                    else
                        Sp_81 = Animal_Remove:WaitForChild("Animal_Claim")
                        Ba = Animal_Remove:WaitForChild("Animal_Spawn")
                        A3 = Animal_Remove:WaitForChild("Animal_Remove")
                    end
                    Sp_61 = (Sp_61 + 100) % 184
                end
            else
                local U8 = bit32.rrotate(bit32.bxor(bit32.lrotate(Sp_61, 21), string.byte(tostring(Sp_57))), 9)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(U8, 3473135211), 684068988), (bit32.bxor(bit32.band(U8, 821832084), 4135397597))), 684068988), 4135397597) ~= U8 then
                    Sp_54 = Animal_Clear:WaitForChild("Animal_Clear")
                    Sp_64 = Animal_Clear:WaitForChild("Animal_Hunger")
                    Sp_81 = Animal_Clear:WaitForChild("Animal_Health")
                else
                    Animal_Clear = Sp_81:WaitForChild("Animal_Clear")
                    Sp_54 = Sp_81:WaitForChild("Animal_Hunger")
                    Sp_64 = Sp_81:WaitForChild("Animal_Health")
                end
                Sp_61 = (Sp_61 + 54) % 184
            end
        elseif Sp_35 <= 17 then
            if Sp_35 <= 16 then
                Sp_15 = (vector.create((Sp_61 * 7 + 6) % 11 + 1, (Sp_61 * 3 + 6) % 13 + 1, (Sp_61 * 2 + 2) % 17 + 1))
                Sp_83 = (vector.create((Sp_61 * 2 + 7) % 11 + 1, (Sp_61 * 5 + 5) % 13 + 1, (Sp_61 * 12 + 12) % 17 + 1))
                Sp_73 = (vector.create((Sp_61 * 1 + 5) % 5 + 1, (Sp_61 * 4 + 6) % 7 + 1, (Sp_61 * 1 + 5) % 9 + 1))
                if math.abs((vector.angle(Sp_15, Sp_83, Sp_73))) - math.abs((vector.angle(Sp_83, Sp_15, Sp_73))) == 1 then
                    AG = Trough_Fill:WaitForChild("Animal_Claimed")
                    Sp_74 = Trough_Fill:WaitForChild("Build_Place")
                    Sp_81 = Trough_Fill:WaitForChild("Build_Upgrade")
                    Az = Trough_Fill:WaitForChild("Trough_Fill")
                else
                    Sp_74 = Sp_81:WaitForChild("Animal_Claimed")
                    AG = Sp_81:WaitForChild("Build_Place")
                    Az = Sp_81:WaitForChild("Build_Upgrade")
                    Trough_Fill = Sp_81:WaitForChild("Trough_Fill")
                end
                Sp_61 = (Sp_61 + 169) % 184
            else
                Sp_15 = {
                    "tjteal",
                    "fbsthnlns",
                    "ctrgxfphnwqg",
                    "iyskdoz",
                    "ttbhbmjvqjht",
                    "pgt",
                    "jkibd",
                    "xrzgu",
                    "aiqet",
                    "yum",
                    "fqtriagxcp",
                    "iameneh",
                    "cnhhy",
                    "mjbluojtdphv"
                }
                if Sp_15[(Sp_61 * 14 + 96) % 14 + 1] <= Sp_15[(Sp_61 * 14 + 96) % 14 + 1] then
                    Sp_13 = Sp_81:WaitForChild("Raid_Toggle")
                    Ak = Sp_81:WaitForChild("Research_Buy")
                    Research_Sync = Sp_81:WaitForChild("Research_Sync")
                else
                    Sp_81 = Research_Sync:WaitForChild("Raid_Toggle")
                    Sp_13 = Research_Sync:WaitForChild("Research_Buy")
                    Ak = Research_Sync:WaitForChild("Research_Sync")
                end
                Sp_61 = (Sp_61 + 8) % 184
            end
        else
            if (BO and not Sp_54 and (BO and Animal_Remove) or Sp_54 and Sp_54 and (Combat_Swing and Am)) and (Sp_54 and not Sp_54 and (not Am or not Ba) or (Sp_54 or not Ba or Am and Am)) and (((not Am or not Ba) and (not Ba and not Ba) or (Combat_Swing or not Am or (not Sp_54 or not Sp_54))) and ((not Ba and not Am or not Animal_Remove and Am) and (not Am and Animal_Remove or Animal_Remove and Animal_Remove))) or not ((BO and not Sp_54 and (BO and Animal_Remove) or Sp_54 and Sp_54 and (Combat_Swing and Am)) and (Sp_54 and not Sp_54 and (not Am or not Ba) or (Sp_54 or not Ba or Am and Am)) and (((not Am or not Ba) and (not Ba and not Ba) or (Combat_Swing or not Am or (not Sp_54 or not Sp_54))) and ((not Ba and not Am or not Animal_Remove and Am) and (not Am and Animal_Remove or Animal_Remove and Animal_Remove)))) then
                Ad = Sp_81:WaitForChild("Shop_Buy")
                Sp_84 = Sp_81:WaitForChild("Shop_Update")
                Sell_Request = Sp_81:WaitForChild("Sell_Request")
            else
                Sp_81 = Sell_Request:WaitForChild("Shop_Buy")
                Ad = Sell_Request:WaitForChild("Shop_Update")
                Sp_84 = Sell_Request:WaitForChild("Sell_Request")
            end
            Sp_61 = (Sp_61 + 123) % 184
        end
    elseif Sp_35 <= 21 then
        if Sp_35 <= 20 then
            if Sp_35 <= 19 then
                Sp_15 = {
                    "omoatjgw",
                    "vuhqpitzjk",
                    "qrsyfwf",
                    "lzpfb",
                    "sadp",
                    "cnkzleavphjv",
                    "qtpviudjrvmj",
                    "yok",
                    "rhywavngv",
                    "chg",
                    "qmvijpejjpb",
                    "lef",
                    "bck"
                }
                if Sp_15[(Sp_61 * 54 + 99) % 13 + 1] <= Sp_15[(Sp_61 * 54 + 99) % 13 + 1] then
                    Sp_17 = Sp_81:WaitForChild("Sell_Update")
                    Weapon_Buy = Sp_81:WaitForChild("Weapon_Buy")
                else
                    Sp_81 = Weapon_Buy:WaitForChild("Sell_Update")
                    Sp_17 = Weapon_Buy:WaitForChild("Weapon_Buy")
                end
                Sp_61 = (Sp_61 + 100) % 184
            else
                if (z6 or AU or (AU or not AU)) and (not AU or z6 or z6 and Sp_48) and (z6 or z6 or not z6 and Sp_48 or (AU or z6 or z6 and Sp_48)) or not ((z6 or AU or (AU or not AU)) and (not AU or z6 or z6 and Sp_48) and (z6 or z6 or not z6 and Sp_48 or (AU or z6 or z6 and Sp_48))) then
                    B2 = Sp_81:WaitForChild("Weapon_Equip")
                    Weapon_Sync = Sp_81:WaitForChild("Weapon_Sync")
                else
                    Sp_81 = Weapon_Sync:WaitForChild("Weapon_Equip")
                    B2 = Weapon_Sync:WaitForChild("Weapon_Sync")
                end
                Sp_61 = (Sp_61 + 31) % 184
            end
        else
            local VW = bit32.rrotate(bit32.bxor(bit32.lrotate(Sp_61, 22), string.byte(tostring(zT))), 8)
            if bit32.bxor(bit32.lrotate(bit32.bxor(VW, 3900889167), 16), 3629115522) ~= bit32.lrotate(VW, 16) then
                Sp_81 = Weapon_Request:WaitForChild("Weapon_Request")
            else
                Weapon_Request = Sp_81:WaitForChild("Weapon_Request")
            end
            Sp_61 = (Sp_61 + 8) % 184
        end
    elseif Sp_35 <= 22 then
        Sp_35 = {
            "yrong",
            "jznpwjxikv",
            "drvxlkelx",
            "yuxvsvgirrt",
            "fylyvmr",
            "liahh",
            "uriilx",
            "ycprw",
            "fclosdka",
            "auikeui",
            "zbckzi",
            "poagnrsim"
        }
        local Wh = Sp_61
        Sp_15 = Sp_35[Wh % 12 + 1]
        if Sp_15:len() >= Sp_15:gsub("(.)", "%1%1", Wh % 3 % 2 + 1):len() then
            Sp_81 = Combat_Swing:WaitForChild("Combat_Swing")
            Sp_29 = Combat_Swing:WaitForChild("Enemy_Spawn")
            Sp_44 = Combat_Swing:WaitForChild("Enemy_Remove")
            Sp_77 = Combat_Swing:WaitForChild("Enemy_Clear")
            fns.Sp_5 = { "Uncommon", "Legendary", "Common", "Mythic", "Rare", "Secret", "Epic" }
        else
            Combat_Swing = Sp_81:WaitForChild("Combat_Swing")
            Sp_44 = Sp_81:WaitForChild("Enemy_Spawn")
            Sp_77 = Sp_81:WaitForChild("Enemy_Remove")
            fns.Sp_5 = Sp_81:WaitForChild("Enemy_Clear")
            Sp_29 = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Secret" }
        end
        Sp_61 = (Sp_61 + 8) % 184
    else
        Sp_35 = { "tzl", "vcgw", "whzpvtskov", "clywge", "jcco", "lki", "xzhm", "emgbpphg" }
        local U4 = Sp_61
        Sp_15 = Sp_35[U4 % 8 + 1]
        if Sp_15:len() <= Sp_15:gsub("(.)", "%1%1", U4 % 3 % 2 + 1):len() then
            Sp_48 = { "Hungry Pets", "Random", "Best Earning" }
            fns.Sp_9 = { "Easy", "Medium", "Hard" }
        else
            fns.Sp_9 = { "Random", "Hungry Pets", "Best Earning" }
            Sp_48 = { "Medium", "Hard", "Easy" }
        end
        Sp_61 = (Sp_61 + 54) % 184
    end
until (Sp_61 * 129 + 86) % 184 == 24
Sp_35 = {}
for k, v in z6.List do
    Sp_81 = #Sp_35 + 1
    Sp_71 = v.Name or k
    Sp_61 = v.Price or 0
    Sp_35[Sp_81] = { id = k, name = Sp_71, price = Sp_61 }
end
table.sort(Sp_35, fns.fn1239)
for k, v in Sp_35 do
    Sp_70[#Sp_70 + 1] = v.name
    A6[v.name] = v.id
end
Library, SaveManager, Toggles, Options, AS, AM, AI, AC, Window, Aq, z3, Sp_31, BC, Be = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
Sp_51 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
z3 = fns.fn798
Sp_31 = fns.fn421
BC = fns.fn164
Be = fns.fn394
AS = "#7fd47f"
AM = "#6ec1ff"
AI = "#e8a34d"
AC = "#8b93a3"
Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = AE, Copyable = true }, "|", AK },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
Aq = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
Sp_61 = fns.fn754
for k, v in Aq do
    if k ~= "Main" then
        Sp_61(v)
    end
end
fns.Sp_3, z7, z0, fns.Sp_4, zO, B1, BX, BP, BK, Bx, Bq, Bv, BG, Burst, connection, connection2, A8, Bk, Bc, Bs, z4, zX, zR, fns.Sp_12, uid, Sp_37, Sp_45, BE, Sp_32, AO, As, fns.Sp_7, A2, AQ, An, Bj, Ar, zY, Av, fns.Sp_11, B3, Sp_36, Al, BM, z2, BB, AY, BF, AX, zZ, Bh, Ay, Bd, Sp_22, zQ, Sp_39, A0, Aw, Sp_16, z8, Bb, fns.Sp_10, AV, zW, AB, BD, A_, AJ, Sp_20, AF, zV, Sp_14, Sp_18, Bl, Af, BW, By, Sp_28, AR, Sp_41, Br, AL, A7 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Sp_45 = fns.fn616
BE = fns.fn195
Sp_32 = fns.fn1349
AO = fns.fn457
As = fns.fn758
fns.Sp_7 = fns.fn1088
if not Burst and B1 or not BD and not Burst or (z2 or z2 or (not BD or not Burst)) or not BD and not Burst and (BD and not B1) and ((BD or Burst) and (BD and not BD)) or ((B1 or B1) and (not B1 and Burst) or not B1 and B1 and (not z2 and Burst) or (z2 or z2) and (not Burst or BD) and (B1 and not Burst or (not BD or B1))) or not (not Burst and B1 or not BD and not Burst or (z2 or z2 or (not BD or not Burst)) or not BD and not Burst and (BD and not B1) and ((BD or Burst) and (BD and not BD)) or ((B1 or B1) and (not B1 and Burst) or not B1 and B1 and (not z2 and Burst) or (z2 or z2) and (not Burst or BD) and (B1 and not Burst or (not BD or B1)))) then
    A2 = fns.fn1462
    AQ = fns.fn521
    An = fns.fn161
    fns.Sp_3 = {}
    z7 = {}
else
    z7 = fns.fn1462
    fns.Sp_3 = fns.fn521
    A2 = fns.fn161
    An = {}
    AQ = {}
end
z0 = {}
fns.Sp_4 = 0
zO = {}
B1 = nil
BX = {}
BP = {}
BK = 0
Bx = {}
Bq = {}
Bj = fns.fn942
Bj(A3.OnClientEvent:Connect(fns.onOnClientEvent))
Bj(Animal_Remove.OnClientEvent:Connect(fns.onOnClientEvent2))
Bj(Animal_Clear.OnClientEvent:Connect(fns.onOnClientEvent3))
Bj(Sp_54.OnClientEvent:Connect(fns.onOnClientEvent4))
Bj(Sp_64.OnClientEvent:Connect(fns.onOnClientEvent5))
Bj(Sp_74.OnClientEvent:Connect(fns.onOnClientEvent6))
Bj(Sp_44.OnClientEvent:Connect(fns.onOnClientEvent7))
Bj(Sp_77.OnClientEvent:Connect(fns.onOnClientEvent8))
Bj(fns.Sp_5.OnClientEvent:Connect(fns.onOnClientEvent9))
Bj(Sp_84.OnClientEvent:Connect(fns.onOnClientEvent10))
Bj(Weapon_Sync.OnClientEvent:Connect(fns.onOnClientEvent11))
Bj(Research_Sync.OnClientEvent:Connect(fns.onOnClientEvent12))
Bj(Sp_17.OnClientEvent:Connect(fns.onOnClientEvent13))
pcall(fns.fn101)
pcall(fns.fn759)
pcall(fns.fn1043)
pcall(fns.fn69)
Ar = fns.fn438
zY = function()
    if not Sp_45("AutoHatchEggs") then
        return
    end
    local FH = os.time()
    for k, v in Ar() do
        local FI = Library.Unloaded or not Sp_45("AutoHatchEggs")
        if FI then
            return
        end
        local attr4 = v:GetAttribute("Egg_Hatch_At")
        local attr3 = v:GetAttribute("Egg_Index")
        local attr2 = v:GetAttribute("GX")
        local attr = v:GetAttribute("GZ")
        local FJ = type(attr4) == "number" and attr4 <= FH
        if FJ and attr3 ~= nil and attr2 ~= nil and attr ~= nil then
            pcall(function()
                BO:FireServer(attr3, attr2, attr)
            end)
            task.wait(0.15)
        end
    end
end
Av = function()
    local ea = {}
    local function eb(ec)
        if not ec then
            return
        end
        for i, child in ec:GetChildren() do
            local FS = child:IsA("Tool") and child:FindFirstChild("Stats")
            if FS then
                local Egg_Name = child.Stats:FindFirstChild("Egg_Name")
                if Egg_Name and Am.Eggs[Egg_Name.Value] then
                    ea[#ea + 1] = child
                end
            end
        end
    end
    eb(LocalPlayer:FindFirstChild("Backpack"))
    eb(LocalPlayer.Character)
    return ea
end
Bv = 0.5
fns.Sp_11 = fns.fn831
B3 = fns.fn583
Sp_36 = fns.fn778
Al = fns.fn440
BM = fns.fn1493
z2 = fns.fn27
BB = fns.fn316
AY = function()
    if not Sp_45("AutoPlaceEggs") then
        return
    end
    local Hp = Options.PlaceEggTypes and Options.PlaceEggTypes.Value
    local Hq = BE(Hp)
    if not next(Hq) then
        return
    end
    local Hp_1 = fns.Sp_7()
    if not Hp_1 then
        return
    end
    local Hr = #Ar()
    local Hs = Am.Place_Limit
    local HC = if Hs then 1 else 0
    local HA = 4043 * HC + 1798 * (1 - HC)
    local HB = 3385 * HC + 2914 * (1 - HC)
    if not ((HA * 1810 + HB * 3056 + HA * HB) % 16777213 == 14570732) then
        Hs = 6
    end
    local Ht = Hs
    local Hu = Options.PlaceEggLimit and Options.PlaceEggLimit.Value
    local HF = if Hu then 1 else 0
    local HD = 833 * HF + 2967 * (1 - HF)
    local HE = 439 * HF + 2121 * (1 - HF)
    if not ((HD * 3015 + HE * 1520 + HD * HE) % 16777213 == 3544462) then
        Hu = Ht
    end
    local Hs_2 = Hu
    if Hs_2 > Ht then
        Hs_2 = Ht
    end
    if Hr >= Hs_2 then
        return
    end
    local Ht_1 = Av()
    if #Ht_1 == 0 then
        return
    end
    local Ho = Sp_32()
    if not Ho then
        return
    end
    local Hu_1 = B3()
    local Hv = Hs_2 - Hr
    local Hw = Options.PlaceEggCap and Options.PlaceEggCap.Value or 2
    local Hs_4 = 0
    for k, v in Ht_1 do
        local HO = v
        local Ht_2 = Library.Unloaded or not Sp_45("AutoPlaceEggs") or Hv <= 0 or Hs_4 >= Hw
        if Ht_2 then
            return
        end
        local Value = HO.Stats.Egg_Name.Value
        if not not Hq[BB(Value)] then
            local Amount = HO.Stats:FindFirstChild("Amount")
            local Hw_1 = Amount
            if Hw_1 then
                local Hy_1 = tonumber(Amount.Value) or 1
                Hw_1 = Hy_1
            end
            local Hw_2 = Hw_1 or 1
            local HQ = false
            repeat
                local Hn
                if Hw_2 > 0 and Hv > 0 and Hs_4 < Hw then
                    local Ht_7 = Library.Unloaded or not Sp_45("AutoPlaceEggs")
                    if Ht_7 then
                        return
                    end
                    Hn = BM(Hp_1, Hu_1)
                    if not Hn then
                        return
                    end
                    local Ht_8 = #Ar()
                    pcall(function()
                        Ho:EquipTool(HO)
                    end)
                    task.wait(0.1)
                    pcall(function()
                        BJ:FireServer(Hn.gx, Hn.gz)
                    end)
                    local Hy_2 = z2(Ht_8, 1.25)
                    if Hy_2 > Ht_8 then
                        Hu_1[#Hu_1 + 1] = { gx = Hn.gx, gz = Hn.gz }
                        Hw_2 -= 1
                        Hv -= 1
                        Hs_4 += 1
                    else
                        Hu_1[#Hu_1 + 1] = { gx = Hn.gx, gz = Hn.gz }
                        task.wait(0.15)
                    end
                else
                    HQ = true
                end
            until HQ
        end
    end
end
BF = fns.fn41
AX = function()
    local go = {}
    local function gp(gq)
        if not gq then
            return
        end
        for i, child in gq:GetChildren() do
            local HY = child:IsA("Tool") and child:FindFirstChild("Stats")
            if HY then
                local Food_Name = child.Stats:FindFirstChild("Food_Name")
                if Food_Name and Sp_26[Food_Name.Value] then
                    go[#go + 1] = child
                end
            end
        end
    end
    gp(LocalPlayer:FindFirstChild("Backpack"))
    gp(LocalPlayer.Character)
    return go
end
zZ = fns.fn1356
if (not Sp_22 or not Sp_22) and (not Sp_22 and not Sp_22) and (Sp_22 and Sp_22 or not zQ and not Sp_22) and not ((not Sp_22 or not Sp_22) and (not Sp_22 and not Sp_22) and (Sp_22 and Sp_22 or not zQ and not Sp_22)) then
    zQ = function()
        local Ii
        local Ij
        Ii = nil
        Ij = nil
        local Ik = zZ()
        if Ik then
            return Ik
        end
        Ii = AX()
        if #Ii == 0 then
            return
        end
        Ij = Sp_32()
        if not Ij then
            return
        end
        pcall(function()
            Ij:EquipTool(Ii[1])
        end)
        task.wait(0.12)
        return zZ()
    end
    Bd = function(gW)
        local Ir, Is, It
        local Iu = M_Animals[gW.Id]
        local Iu_3 = Iu and (Iu.MoneyPerSec or 0) or 0
        Ir = 1
        pcall(function()
            local Mult_Of = Am.Mult_Of
            local In = gW.Variant or "Normal"
            local Im_2 = Mult_Of(In) or 1
            Ir = Im_2
        end)
        local Iu_4 = tonumber(gW.Lv) or 1
        Is = 1
        It = Iu_4
        pcall(function()
            local Ip = M_Upgrades.Animal_Multiplier(It) or 1
            Is = Ip
        end)
        return Iu_3 * Ir * Is
    end
    Ay = fns.fn655
    Bh = function()
        local IP, IQ
        if not Sp_45("AutoFeedAnimals") then
            return
        end
        local IR = Options.FeedRarities and Options.FeedRarities.Value
        IQ = BE(IR)
        if not next(IQ) then
            return
        end
        IP = {}
        BF(function(hn, ho)
            local IM = if An(AQ(ho.Id), IQ) then 1 else 0
            if IM == 1 then
                local IG = tonumber(ho.Hunger) or 0
                local IG_3 = tonumber(ho.MaxHunger) or 1
                local IG_4 = IG / math.max(IG_3, 1)
                if IG_4 < 0.85 then
                    IP[#IP + 1] = { uid = hn, data = ho, ratio = IG_4, earning = Ay(ho) }
                end
            end
        end)
        if #IP == 0 then
            return
        end
        local IR_6 = Options.FeedPriority and Options.FeedPriority.Value or "Hungry Pets"
        if IR_6 == "Random" then
            Bd(IP)
        elseif IR_6 == "Best Earning" then
            table.sort(IP, function(hG, hH)
                if hG.earning ~= hH.earning then
                    return hG.earning > hH.earning
                end
                return hG.ratio < hH.ratio
            end)
        else
            table.sort(IP, function(hE, hF)
                if hE.ratio ~= hF.ratio then
                    return hE.ratio < hF.ratio
                end
                return hE.earning > hF.earning
            end)
        end
        if not Bh() then
            return
        end
        for k, v in IP do
            local I1 = v
            local IR_7 = Library.Unloaded or not Sp_45("AutoFeedAnimals")
            if IR_7 then
                return
            end
            local IR_8 = not zZ() and not Bh()
            if IR_8 then
                return
            end
            pcall(function()
                Animal_Feed:FireServer(I1.uid)
            end)
            task.wait(0.1)
        end
    end
    Sp_22 = function()
        local I7
        if not Sp_45("AutoRemovePets") then
            return
        end
        local I8 = Options.RemoveRarities and Options.RemoveRarities.Value
        I7 = BE(I8)
        if not next(I7) then
            return
        end
        BF(function(h_, h0)
            local I2 = Library.Unloaded or not Sp_45("AutoRemovePets")
            if I2 then
                return
            end
            if An(AQ(h0.Id), I7) then
                pcall(function()
                    Bp:FireServer(h_)
                end)
                task.wait(0.12)
            end
        end)
    end
else
    Bh = function()
        local Ii
        local Ij
        Ii = nil
        Ij = nil
        local Ik = zZ()
        if Ik then
            return Ik
        end
        Ii = AX()
        if #Ii == 0 then
            return
        end
        Ij = Sp_32()
        if not Ij then
            return
        end
        pcall(function()
            Ij:EquipTool(Ii[1])
        end)
        task.wait(0.12)
        return zZ()
    end
    Ay = function(gW)
        local Ir, Is, It
        local Iu = M_Animals[gW.Id]
        local Iu_1 = Iu and (Iu.MoneyPerSec or 0) or 0
        Ir = 1
        pcall(function()
            local Mult_Of = Am.Mult_Of
            local In = gW.Variant or "Normal"
            local Im_1 = Mult_Of(In) or 1
            Ir = Im_1
        end)
        local Iu_2 = tonumber(gW.Lv) or 1
        Is = 1
        It = Iu_2
        pcall(function()
            local Ip = M_Upgrades.Animal_Multiplier(It) or 1
            Is = Ip
        end)
        return Iu_1 * Ir * Is
    end
    Bd = fns.fn655
    Sp_22 = function()
        local IP, IQ
        if not Sp_45("AutoFeedAnimals") then
            return
        end
        local IR = Options.FeedRarities and Options.FeedRarities.Value
        IQ = BE(IR)
        if not next(IQ) then
            return
        end
        IP = {}
        BF(function(hn, ho)
            local IM = if An(AQ(ho.Id), IQ) then 1 else 0
            if IM == 1 then
                local IG = tonumber(ho.Hunger) or 0
                local IG_1 = tonumber(ho.MaxHunger) or 1
                local IG_2 = IG / math.max(IG_1, 1)
                if IG_2 < 0.85 then
                    IP[#IP + 1] = { uid = hn, data = ho, ratio = IG_2, earning = Ay(ho) }
                end
            end
        end)
        if #IP == 0 then
            return
        end
        local IR_2 = Options.FeedPriority and Options.FeedPriority.Value or "Hungry Pets"
        if IR_2 == "Random" then
            Bd(IP)
        elseif IR_2 == "Best Earning" then
            table.sort(IP, function(hG, hH)
                if hG.earning ~= hH.earning then
                    return hG.earning > hH.earning
                end
                return hG.ratio < hH.ratio
            end)
        else
            table.sort(IP, function(hE, hF)
                if hE.ratio ~= hF.ratio then
                    return hE.ratio < hF.ratio
                end
                return hE.earning > hF.earning
            end)
        end
        if not Bh() then
            return
        end
        for k, v in IP do
            local I1 = v
            local IR_3 = Library.Unloaded or not Sp_45("AutoFeedAnimals")
            if IR_3 then
                return
            end
            local IR_4 = not zZ() and not Bh()
            if IR_4 then
                return
            end
            pcall(function()
                Animal_Feed:FireServer(I1.uid)
            end)
            task.wait(0.1)
        end
    end
    zQ = function()
        local I7
        if not Sp_45("AutoRemovePets") then
            return
        end
        local I8 = Options.RemoveRarities and Options.RemoveRarities.Value
        I7 = BE(I8)
        if not next(I7) then
            return
        end
        BF(function(h_, h0)
            local I2 = Library.Unloaded or not Sp_45("AutoRemovePets")
            if I2 then
                return
            end
            if An(AQ(h0.Id), I7) then
                pcall(function()
                    Bp:FireServer(h_)
                end)
                task.wait(0.12)
            end
        end)
    end
end
Sp_39 = function()
    local Jh, Ji, Jj
    if not Sp_45("AutoUpgradeAnimals") then
        return
    end
    local Jk = Options.UpgradeRarities and Options.UpgradeRarities.Value
    Jj = BE(Jk)
    if not next(Jj) then
        return
    end
    local Jk_1 = Options.UpgradeMaxLevel and Options.UpgradeMaxLevel.Value
    local Jl = Jk_1 or M_Upgrades.Max_Level()
    Ji = Jl
    Ji = math.min(Ji, M_Upgrades.Max_Level())
    Jh = {}
    BF(function(it, iu)
        if An(AQ(iu.Id), Jj) then
            local Jd = tonumber(iu.Lv) or 1
            if Jd < Ji then
                Jh[#Jh + 1] = { uid = it, level = Jd, earning = Ay(iu) }
            end
        end
    end)
    table.sort(Jh, function(iw, ix)
        if iw.earning ~= ix.earning then
            return iw.earning > ix.earning
        end
        return iw.level < ix.level
    end)
    for k, v in Jh do
        local Js = v
        local Jk_2 = Library.Unloaded or not Sp_45("AutoUpgradeAnimals")
        if Jk_2 then
            return
        end
        pcall(function()
            Bi:FireServer(Js.uid)
        end)
        task.wait(0.1)
    end
end
BG = false
Burst = M_Collect_FX.Burst
connection = nil
connection2 = nil
A8 = false
A0 = function()
    local CurrentCamera = workspace.CurrentCamera
    local Ju = CurrentCamera and CurrentCamera:FindFirstChild("Collect_FX")
    if not Ju then
        return
    end
    for i, child in Ju:GetChildren() do
        local JH = child
        pcall(function()
            JH:Destroy()
        end)
    end
end
Aw = function(iS)
    if connection then
        connection:Disconnect()
        connection = nil
    end
    if not iS then
        return
    end
    A0()
    connection = iS.ChildAdded:Connect(function(iV)
        pcall(function()
            iV:Destroy()
        end)
    end)
end
Sp_16 = function(iY)
    local JP
    if BG == iY then
        if iY then
            A0()
        end
        return
    end
    BG = iY
    if connection2 then
        connection2:Disconnect()
        connection2 = nil
    end
    if connection then
        connection:Disconnect()
        connection = nil
    end
    if iY then
        if hookfunction and not A8 then
            pcall(function()
                hookfunction(Burst, function() end)
                A8 = true
            end)
        end
        pcall(function()
            M_Collect_FX.Burst = function() end
        end)
        JP = function(jb)
            if not jb then
                return
            end
            Aw(jb:FindFirstChild("Collect_FX"))
            connection2 = jb.ChildAdded:Connect(function(jf)
                if jf.Name == "Collect_FX" then
                    Aw(jf)
                end
            end)
        end
        JP(workspace.CurrentCamera)
        Bj(workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
            if not BG then
                return
            end
            if connection2 then
                connection2:Disconnect()
                connection2 = nil
            end
            JP(workspace.CurrentCamera)
        end))
    else
        pcall(function()
            M_Collect_FX.Burst = Burst
        end)
    end
end
z8 = function()
    if not Sp_45("AutoClaimIncome") then
        return
    end
    local UserId = LocalPlayer.UserId
    for k, v in fns.Sp_3 do
        local J2 = k
        local JX = v.Owner == UserId
        if JX then
            local JY = tonumber(v.Accrued) or 0
            JX = JY > 0
        end
        if JX then
            pcall(function()
                Ba:FireServer(J2)
            end)
        end
    end
end
if (not Bj or false or (false or Sp_37)) and ((not fns.Sp_7 or Bj) and (not Sp_37 and not Sp_37)) and (not Sp_37 and not Sp_37 or (Bh or false) or (not Bq and not Bh or (A7 or not Sp_37))) or not ((not Bj or false or (false or Sp_37)) and ((not fns.Sp_7 or Bj) and (not Sp_37 and not Sp_37)) and (not Sp_37 and not Sp_37 or (Bh or false) or (not Bq and not Bh or (A7 or not Sp_37)))) then
    Bb = function()
        for k, v in AU do
            local Kb = v
            pcall(function()
                Sell_Request:FireServer("List", Kb)
            end)
            task.wait(0.05)
        end
    end
    fns.Sp_10 = function()
        if not Sp_45("AutoSell") then
            return
        end
        local Ke = Options.SellRarities and Options.SellRarities.Value
        local Kf = BE(Ke)
        if not next(Kf) then
            return
        end
        Bb()
        task.wait(0.2)
        for k, v in AU do
            local Kn = v
            local Ke_4 = Bx[Kn]
            if type(Ke_4) == "table" then
                for k, v in Ke_4 do
                    local Kt = v
                    local Ke_5 = Library.Unloaded or not Sp_45("AutoSell")
                    if Ke_5 then
                        return
                    end
                    local Rarity = Kt.Rarity
                    local Kg = type(Rarity) == "string" and Rarity ~= "" and Kf[Rarity]
                    if Kg then
                        pcall(function()
                            local Kc = Kt.Category or Kn
                            Sell_Request:FireServer("Sell", Kc, Kt.Key)
                        end)
                        task.wait(0.08)
                    end
                end
            end
        end
    end
    AV = fns.fn676
    zW = function()
        local KH
        local KI
        KH = nil
        KI = nil
        if not Sp_45("AutoFillTrough") then
            return
        end
        KI = AX()
        if #KI == 0 then
            return
        end
        local KJ = AV()
        if #KJ == 0 then
            return
        end
        KH = Sp_32()
        if not KH then
            return
        end
        pcall(function()
            KH:EquipTool(KI[1])
        end)
        task.wait(0.08)
        for k, v in KJ do
            local KT = v
            local KJ_2 = Library.Unloaded or not Sp_45("AutoFillTrough")
            if KJ_2 then
                return
            end
            pcall(function()
                Trough_Fill:FireServer(KT)
            end)
            task.wait(0.15)
        end
    end
else
    AV = function()
        for k, v in AU do
            local Kb = v
            pcall(function()
                Sell_Request:FireServer("List", Kb)
            end)
            task.wait(0.05)
        end
    end
    Bb = function()
        if not Sp_45("AutoSell") then
            return
        end
        local Ke = Options.SellRarities and Options.SellRarities.Value
        local Kf = BE(Ke)
        if not next(Kf) then
            return
        end
        Bb()
        task.wait(0.2)
        for k, v in AU do
            local Kn = v
            local Ke_1 = Bx[Kn]
            if type(Ke_1) == "table" then
                for k, v in Ke_1 do
                    local Kt = v
                    local Ke_2 = Library.Unloaded or not Sp_45("AutoSell")
                    if Ke_2 then
                        return
                    end
                    local Rarity = Kt.Rarity
                    local Kg = type(Rarity) == "string" and Rarity ~= "" and Kf[Rarity]
                    if Kg then
                        pcall(function()
                            local Kc = Kt.Category or Kn
                            Sell_Request:FireServer("Sell", Kc, Kt.Key)
                        end)
                        task.wait(0.08)
                    end
                end
            end
        end
    end
    zW = fns.fn676
    fns.Sp_10 = function()
        local KH
        local KI
        KH = nil
        KI = nil
        if not Sp_45("AutoFillTrough") then
            return
        end
        KI = AX()
        if #KI == 0 then
            return
        end
        local KJ = AV()
        if #KJ == 0 then
            return
        end
        KH = Sp_32()
        if not KH then
            return
        end
        pcall(function()
            KH:EquipTool(KI[1])
        end)
        task.wait(0.08)
        for k, v in KJ do
            local KT = v
            local KJ_1 = Library.Unloaded or not Sp_45("AutoFillTrough")
            if KJ_1 then
                return
            end
            pcall(function()
                Trough_Fill:FireServer(KT)
            end)
            task.wait(0.15)
        end
    end
end
AB = function()
    local ks = {}
    local function kt(kv)
        if not kv then
            return
        end
        for i, child in kv:GetChildren() do
            local KU = child:IsA("Tool") and child:FindFirstChild("Stats")
            if KU then
                local Build_Name = child.Stats:FindFirstChild("Build_Name")
                local Type = child.Stats:FindFirstChild("Type")
                if Build_Name and Type and Type.Value == "Defense" and Ag.Defense[Build_Name.Value] then
                    ks[#ks + 1] = child
                end
            end
        end
    end
    kt(LocalPlayer:FindFirstChild("Backpack"))
    kt(LocalPlayer.Character)
    return ks
end
BD = fns.fn193
A_ = fns.fn808
AJ = fns.fn1301
Sp_20 = function()
    local LK, LL, LM
    local LQ = if not Sp_45("AutoPlaceTower") then 1 else 0
    if LQ == 1 then
        return
    end
    local LE = Options.PlaceTowerTypes and Options.PlaceTowerTypes.Value
    local LF = BE(LE)
    if not next(LF) then
        return
    end
    local LE_1 = fns.Sp_7()
    if not LE_1 then
        return
    end
    local LB = Sp_32()
    if not LB then
        return
    end
    local LH = Options.PlaceTowerCap and Options.PlaceTowerCap.Value or 3
    local LH_1 = {}
    local LI = 0
    local LJ = AB()
    for k, v in LJ do
        local LZ = v
        local LJ_1 = Library.Unloaded or not Sp_45("AutoPlaceTower") or LI >= LH
        if LJ_1 then
            return
        end
        if not not LZ.Parent then
            local Value = LZ.Stats.Build_Name.Value
            if LF[BD(Value)] then
                local L0 = false
                repeat
                    local LC
                    local L_ = 15
                    while true do
                        if L_ < 15 then
                            if L_ < 7 then
                                if L_ < 3 then
                                    if L_ < 1 then
                                        LJ_1 = A_(LZ) > 0
                                        L_ = 27
                                    elseif L_ < 2 then
                                        L_ = if LM then 5 else 17
                                    else
                                        return
                                    end
                                elseif L_ < 5 then
                                    if L_ < 4 then
                                        LL = true
                                        L_ = 12
                                    else
                                        LJ_1 = not Sp_45("AutoPlaceTower")
                                        L_ = 26
                                    end
                                elseif L_ < 6 then
                                    LL = true
                                    L_ = 12
                                else
                                    break
                                end
                            elseif L_ < 11 then
                                if L_ < 9 then
                                    if L_ < 8 then
                                        L_ = 30
                                    else
                                        LH_1[LC.key] = true
                                        task.wait(0.05)
                                        L_ = 28
                                    end
                                elseif L_ < 10 then
                                    L_ = 25
                                else
                                    LJ_1 = A_(LZ)
                                    pcall(function()
                                        LB:EquipTool(LZ)
                                    end)
                                    task.wait(0.08)
                                    pcall(function()
                                        AG:FireServer(Value, LC.gx, LC.gz, 0, 0)
                                    end)
                                    LK = os.clock() + 0.9
                                    LL = false
                                    L_ = 9
                                end
                            elseif L_ < 13 then
                                if L_ < 12 then
                                    LI += 1
                                    L_ = 28
                                else
                                    L_ = if LL then 11 else 8
                                end
                            elseif L_ < 14 then
                                LJ_1 = LZ.Parent
                                L_ = 14
                            else
                                L_ = if LJ_1 then 0 else 27
                            end
                        elseif L_ < 23 then
                            if L_ < 19 then
                                if L_ < 17 then
                                    if L_ < 16 then
                                        LJ_1 = LI < LH
                                        L_ = if LJ_1 then 13 else 14
                                    else
                                        task.wait(0.05)
                                        L_ = 18
                                    end
                                elseif L_ < 18 then
                                    L_ = if Sp_19.Is_Cell_Occupied(LE_1, LC.gx, LC.gz, 0) then 3 else 16
                                else
                                    L_ = 9
                                end
                            elseif L_ < 21 then
                                if L_ < 20 then
                                    LC = AJ(LE_1, LH_1)
                                    L_ = if not LC then 2 else 10
                                else
                                    L_ = 6
                                end
                            elseif L_ < 22 then
                                L_ = 12
                            else
                                LJ_1 = Library.Unloaded
                                L_ = if LJ_1 then 26 else 4
                            end
                        elseif L_ < 27 then
                            if L_ < 25 then
                                if L_ < 24 then
                                    LM = A_(LZ) < LJ_1
                                    L_ = 1
                                else
                                    LM = not LZ.Parent
                                    L_ = if LM then 1 else 23
                                end
                            elseif L_ < 26 then
                                L_ = if os.clock() < LK then 24 else 21
                            else
                                L_ = if LJ_1 then 29 else 19
                            end
                        elseif L_ < 29 then
                            if L_ < 28 then
                                L_ = if LJ_1 then 22 else 7
                            else
                                L_ = 20
                            end
                        elseif L_ < 30 then
                            return
                        else
                            L0 = true
                            L_ = 6
                        end
                    end
                until L0
            end
        end
    end
end
AF = function()
    if not Sp_45("AutoUpgradeTowers") then
        return
    end
    local L4 = Options.UpgradeTowerTypes and Options.UpgradeTowerTypes.Value
    local L5 = BE(L4)
    if not next(L5) then
        return
    end
    local L4_1 = fns.Sp_7()
    if not L4_1 then
        return
    end
    local Builds = L4_1:FindFirstChild("Builds")
    if not Builds then
        return
    end
    local L4_2 = M_Upgrades.Max_Level()
    local L7_1 = Options.UpgradeTowerMaxLevel and Options.UpgradeTowerMaxLevel.Value or L4_2
    if L7_1 > L4_2 then
        L7_1 = L4_2
    end
    local L8_1 = Options.UpgradeTowerCap and Options.UpgradeTowerCap.Value or 8
    local L4_4 = 0
    for i, child in Builds:GetChildren() do
        local L6_1 = Library.Unloaded or not Sp_45("AutoUpgradeTowers") or L4_4 >= L8_1
        if L6_1 then
            return
        end
        local attr3 = child:GetAttribute("BuildId")
        local L8_2 = attr3 and Ag.Defense[attr3] and L5[BD(attr3)]
        if L8_2 then
            local L6_3 = child:GetAttribute("Lv") or child:GetAttribute("Level")
            local L8_3 = tonumber(L6_3) or 1
            local attr2 = child:GetAttribute("GX")
            local attr = child:GetAttribute("GZ")
            local L8_4 = child:GetAttribute("GY") or 0
            local L3 = L8_4
            if L8_3 < L7_1 and attr2 ~= nil and attr ~= nil then
                pcall(function()
                    Az:FireServer(attr2, attr, L3)
                end)
                L4_4 += 1
                task.wait(0.1)
            end
        end
    end
end
zV = fns.fn1276
Bk = 0
Bc = 0
Sp_14 = function()
    local MG = if not Sp_45("AutoResearch") then 1 else 0
    if MG == 1 then
        return
    end
    local My = os.clock()
    if My - Bk >= 0.35 then
        Bk = My
        pcall(function()
            Research_Sync:FireServer()
        end)
    end
    local Mz = os.time() + BK
    for k, v in BP do
        local MA_1 = type(v) == "number" and v <= Mz
        if MA_1 then
            BX[k] = true
            BP[k] = nil
        end
    end
    if next(BP) then
        return
    end
    if My - Bc < 0.05 then
        return
    end
    local MA_2 = As()
    for k, v in zV() do
        local MB = Library.Unloaded or not Sp_45("AutoResearch")
        if MB then
            return
        end
        local id = v.id
        if not (BX[id] or BP[id]) then
            local parent = v.parent
            if not (parent and parent ~= "start" and not BX[parent]) then
                local MB_3 = tonumber(v.price) or 0
                if MA_2 >= MB_3 then
                    Bc = My
                    pcall(function()
                        Ak:FireServer(id)
                    end)
                    local MB_4 = type(v.time) == "number" and v.time > 0
                    if MB_4 then
                        BP[id] = Mz + v.time
                    else
                        BX[id] = true
                    end
                    Bk = 0
                    return
                end
            end
        end
    end
end
Sp_18 = function()
    local MT
    local MZ = if not Sp_45("AutoStartRaid") then 1 else 0
    if MZ == 1 then
        return
    end
    local MU = A2()
    local MV = MU and MU:FindFirstChild("Raid_Active")
    local MU_1 = MV
    if MV then
        MV = MU_1.Value
    end
    if MV then
        return
    end
    MT = AW[Options.RaidDifficulty and Options.RaidDifficulty.Value or "Easy"] or "EASY"
    local MU_4 = zT.Is_Unlocked and not zT.Is_Unlocked(MT)
    if MU_4 then
        return
    end
    pcall(function()
        Sp_13:FireServer(MT)
    end)
end
Bs = 0
Bl = fns.fn743
Af = function(m8, m9, na)
    local Ng = if not Sp_45(m8) then 1 else 0
    if Ng == 1 then
        return
    end
    local M7 = Options[m9] and Options[m9].Value
    local M8 = BE(M7)
    if not next(M8) then
        return
    end
    local M7_1 = As()
    local M9 = {}
    for k in M8 do
        local M8_1 = na[k]
        if M8_1 then
            local Na_1 = Ag.Blocks[M8_1] or Ag.Defense[M8_1] or Ag.Farms[M8_1]
            local Na_2 = #M9 + 1
            local Nb_1 = Na_1 and Na_1.Price or 0
            M9[Na_2] = { id = M8_1, price = Nb_1 }
        end
    end
    table.sort(M9, function(np, nq)
        return np.price < nq.price
    end)
    for k, v in M9 do
        local Nq = v
        local M8_2 = Library.Unloaded or not Sp_45(m8)
        if M8_2 then
            return
        end
        local M8_3 = z0[Nq.id]
        local M9_1 = M8_3 == nil
        if not M9_1 then
            local Na_3 = type(M8_3) == "number" and M8_3 > 0
            M9_1 = Na_3
        end
        if M9_1 then
            if M7_1 >= Nq.price then
                pcall(function()
                    Ad:FireServer(Nq.id)
                end)
                task.wait(0.12)
                M7_1 = As()
            end
        end
    end
end
BW = function()
    if not Sp_45("AutoBuyWeapon") then
        return
    end
    local Nr = Options.BuyWeapons and Options.BuyWeapons.Value
    local Ns = BE(Nr)
    if not next(Ns) then
        return
    end
    local Nr_1 = As()
    local Nt = {}
    for k in Ns do
        local Ns_1 = A6[k]
        if Ns_1 then
            local Nu = z6.List[Ns_1]
            local Nv = #Nt + 1
            local Nu_1 = Nu and Nu.Price or 0
            Nt[Nv] = { id = Ns_1, price = Nu_1 }
        end
    end
    table.sort(Nt, function(nS, nT)
        return nS.price < nT.price
    end)
    for k, v in Nt do
        local NK = v
        local Ns_2 = Library.Unloaded or not Sp_45("AutoBuyWeapon")
        if Ns_2 then
            return
        end
        if not zO[NK.id] and Nr_1 >= NK.price and NK.price > 0 then
            pcall(function()
                Weapon_Buy:FireServer(NK.id)
            end)
            task.wait(0.15)
            Nr_1 = As()
        end
    end
    pcall(function()
        Weapon_Request:FireServer()
    end)
end
By = fns.fn293
Sp_28 = function()
    local N4
    N4 = nil
    if not Sp_45("AutoEquipBestWeapon") then
        return
    end
    N4 = By()
    if not N4 then
        return
    end
    if B1 ~= N4 then
        pcall(function()
            B2:FireServer(N4)
        end)
        task.wait(0.1)
    end
    local N2 = Sp_32()
    if not N2 then
        return
    end
    local function N5(ou)
        if not ou then
            return
        end
        for i, child in ou:GetChildren() do
            local NV = child:IsA("Tool") and child:GetAttribute("Weapon_Id") == N4
            if NV then
                return child
            end
        end
    end
    local N6 = N5(LocalPlayer.Character) or N5(LocalPlayer:FindFirstChild("Backpack"))
    local N3 = N6
    N5 = N3 and N3.Parent ~= LocalPlayer.Character
    if N5 then
        pcall(function()
            N2:EquipTool(N3)
        end)
    end
end
AR = fns.fn1204
z4 = 0
zX = 0
zR = 0
fns.Sp_12 = nil
uid = nil
Sp_41 = fns.fn1459
Br = fns.fn1172
AL = fns.fn723
A7 = function()
    if not Sp_45("AutoFarm") then
        Sp_41()
        return
    end
    local Oz = Sp_32()
    local OA = AO()
    if not Oz or not OA then
        return
    end
    Br()
    local OB_1 = os.clock()
    if OB_1 - zX >= 0.25 then
        zX = OB_1
        fns.Sp_12 = AL()
    elseif fns.Sp_12 then
        if not z7[fns.Sp_12.uid] or not fns.Sp_12.part.Parent then
            Sp_41()
            zX = 0
        end
    end
    local OC_2 = fns.Sp_12
    local OD_2 = not OC_2
    local OH = if OD_2 then 1 else 0
    local OF = 1332 * OH + 2743 * (1 - OH)
    local OG = 3137 * OH + 739 * (1 - OH)
    if not ((OF * 1861 + OG * 1172 + OF * OG) % 16777213 == 10333900) then
        OD_2 = not OC_2.part.Parent
    end
    if OD_2 then
        return
    end
    local Position = OC_2.part.Position
    local Magnitude = (Position - OA.Position).Magnitude
    if Magnitude > 6 then
        if uid ~= OC_2.uid or OB_1 - zR >= 0.2 then
            uid = OC_2.uid
            zR = OB_1
            pcall(function()
                Oz:MoveTo(Position)
            end)
        end
    end
    if Magnitude <= 14 and OB_1 - z4 >= 0.05 then
        z4 = OB_1
        pcall(function()
            Combat_Swing:FireServer()
        end)
    end
end
Sp_71 = Aq.Main:AddSubTab("Eggs", "egg")
Sp_37 = Aq.Main:AddSubTab("Animals", "paw-print")
Sp_35 = Aq.Main:AddSubTab("Build", "hammer")
Sp_15 = Aq.Main:AddSubTab("Combat", "swords")
Sp_83 = Aq.Main:AddSubTab("Shop", "shopping-cart")
Sp_61(Sp_71)
Sp_63 = Sp_71:AddLeftGroupbox("Eggs", "egg")
Sp_63:AddToggle("AutoHatchEggs", { Text = "Auto Hatch Eggs", Default = false })
Sp_63:AddToggle("AutoPlaceEggs", { Text = "Auto Place Eggs", Default = false })
Sp_63:AddDropdown("PlaceEggTypes", { Text = "Place Eggs", Values = Sp_57, Multi = true, Default = {} })
Sp_81 = Am.Place_Limit or 6
Sp_71 = Am.Place_Limit or 6
Sp_63:AddSlider("PlaceEggLimit", { Text = "Egg Place Limit", Default = Sp_81, Min = 1, Max = Sp_71, Rounding = 0 })
Sp_63:AddSlider("PlaceEggCap", { Text = "Place Per Cycle", Default = 2, Min = 1, Max = 6, Rounding = 0 })
Sp_61(Sp_37)
Sp_74 = Sp_37:AddLeftGroupbox("Animals", "paw-print")
Sp_74:AddToggle("AutoFeedAnimals", { Text = "Auto Feed Animals", Default = false })
Sp_74:AddDropdown("FeedPriority", { Text = "Feed Priority", Values = Sp_48, Default = "Hungry Pets" })
Sp_74:AddDropdown("FeedRarities", { Text = "Feed Rarities", Values = Sp_29, Multi = true, Default = {} })
Sp_74:AddToggle("AutoRemovePets", { Text = "Auto Remove Pets", Default = false })
Sp_74:AddDropdown("RemoveRarities", { Text = "Remove Rarities", Values = Sp_29, Multi = true, Default = {} })
Sp_74:AddToggle("AutoUpgradeAnimals", { Text = "Auto Upgrade Pets", Default = false })
Sp_74:AddDropdown("UpgradeRarities", { Text = "Upgrade Rarities", Values = Sp_29, Multi = true, Default = {} })
Sp_74:AddSlider("UpgradeMaxLevel", { Text = "Upgrade Max Level", Default = 5, Min = 1, Max = 10, Rounding = 0 })
Sp_74:AddToggle("AutoClaimIncome", { Text = "Auto Claim Animal Income", Default = false })
Sp_74:AddToggle("DisableMoneyParticles", { Text = "Disable Money Particles", Default = true })
Toggles.DisableMoneyParticles:OnChanged(fns.fn425)
Toggles.AutoClaimIncome:OnChanged(function()
    if not Toggles.AutoClaimIncome.Value then
        return
    end
    local OI = Library.Dialogues and Library.Dialogues.ClaimIncomeProximity
    if OI then
        pcall(function()
            OI:Dismiss()
        end)
    end
    Window:AddDialog("ClaimIncomeProximity", {
        Title = "Auto Claim Income",
        Description = "You have to be in proxomity to collect cash, I didn't make it teleport because that would be annoying, use context clues\n\nTip: hold out food to make all animals come close to you",
        AutoDismiss = true,
        OutsideClickDismiss = true,
        FooterButtons = { { Id = "ok", Title = "Got it", Variant = "Primary", Order = 1 } }
    })
end)
if Toggles.DisableMoneyParticles.Value then
    Sp_16(true)
end
Sp_71 = Sp_37:AddRightGroupbox("Sell", "badge-dollar-sign")
Sp_71:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
Sp_71:AddDropdown("SellRarities", { Text = "Sell Rarities", Values = Sp_29, Multi = true, Default = {} })
Sp_71:AddToggle("AutoFillTrough", { Text = "Auto Fill Trough", Default = false })
Sp_74, Sp_84 = nil, nil
Sp_61(Sp_35)
Sp_64 = Sp_35:AddLeftGroupbox("Towers", "tower-control")
if not Sp_74 and Sp_64 and (not Sp_84 and not Sp_74) and ((not Sp_64 or Sp_64) and (Sp_84 and Sp_84)) or (not Sp_74 or not Sp_74) and (Sp_64 and not Sp_74) and ((Sp_74 or Sp_64) and (not Sp_84 and not Sp_84)) or (not Sp_64 or Sp_84) and (Sp_64 or not Sp_74) and (Sp_64 and Sp_64 and (Sp_64 or not Sp_64)) and ((not Sp_74 or Sp_74) and (Sp_74 or not Sp_74) and (not Sp_84 and Sp_74 or not Sp_84 and Sp_84)) or not (not Sp_74 and Sp_64 and (not Sp_84 and not Sp_74) and ((not Sp_64 or Sp_64) and (Sp_84 and Sp_84)) or (not Sp_74 or not Sp_74) and (Sp_64 and not Sp_74) and ((Sp_74 or Sp_64) and (not Sp_84 and not Sp_84)) or (not Sp_64 or Sp_84) and (Sp_64 or not Sp_74) and (Sp_64 and Sp_64 and (Sp_64 or not Sp_64)) and ((not Sp_74 or Sp_74) and (Sp_74 or not Sp_74) and (not Sp_84 and Sp_74 or not Sp_84 and Sp_84))) then
    Sp_64:AddToggle("AutoPlaceTower", { Text = "Auto Place Tower", Default = false })
    Sp_64:AddDropdown("PlaceTowerTypes", { Text = "Place Towers", Values = Sp_50, Multi = true, Default = {} })
    Sp_64:AddSlider("PlaceTowerCap", { Text = "Place Per Cycle", Default = 3, Min = 1, Max = 20, Rounding = 0 })
    Sp_64:AddToggle("AutoUpgradeTowers", { Text = "Auto Upgrade Towers", Default = false })
    Sp_64:AddDropdown("UpgradeTowerTypes", { Text = "Upgrade Towers", Values = Sp_50, Multi = true, Default = {} })
    Sp_64:AddSlider("UpgradeTowerMaxLevel", { Text = "Max Tower Level", Default = 5, Min = 1, Max = 5, Rounding = 0 })
    Sp_64:AddSlider("UpgradeTowerCap", { Text = "Upgrade Per Cycle", Default = 8, Min = 1, Max = 30, Rounding = 0 })
    Sp_74 = Sp_35:AddRightGroupbox("Research", "flask-conical")
else
    Sp_50:AddToggle("AutoPlaceTower", { Text = "Auto Place Tower", Default = false })
    Sp_50:AddDropdown("PlaceTowerTypes", { Default = {}, Text = "Place Towers", Values = Sp_64, Multi = true })
    Sp_50:AddSlider("PlaceTowerCap", { Default = 3, Text = "Place Per Cycle", Max = 20, Rounding = 0, Min = 1 })
    Sp_50:AddToggle("AutoUpgradeTowers", { Text = "Auto Upgrade Towers", Default = false })
    Sp_50:AddDropdown("UpgradeTowerTypes", { Default = {}, Multi = true, Text = "Upgrade Towers", Values = Sp_64 })
    Sp_50:AddSlider("UpgradeTowerMaxLevel", { Min = 1, Max = 5, Text = "Max Tower Level", Default = 5, Rounding = 0 })
    Sp_50:AddSlider("UpgradeTowerCap", { Max = 30, Rounding = 0, Min = 1, Default = 8, Text = "Upgrade Per Cycle" })
    Sp_35 = Sp_74:AddRightGroupbox("Research", "flask-conical")
end
Sp_74:AddToggle("AutoResearch", { Text = "Auto Upgrade Research", Default = false })
Sp_84 = Sp_35:AddRightGroupbox("Raid", "skull")
if ((Sp_64 and false or not Sp_74 and Sp_84 or (Sp_84 and not Sp_84 or Sp_74 and Sp_84)) and (not Sp_64 and false and (Sp_74 and not Sp_64) or not Sp_74 and not Sp_64 and (not Sp_74 and false)) or ((not Sp_84 or Sp_84 or 4) and (not Sp_64 or not Sp_64 or not Sp_84 and false) or (Sp_84 or Sp_84 or false) and (not Sp_64 and 4 and (not Sp_64 and not Sp_64)))) and not ((Sp_64 and false or not Sp_74 and Sp_84 or (Sp_84 and not Sp_84 or Sp_74 and Sp_84)) and (not Sp_64 and false and (Sp_74 and not Sp_64) or not Sp_74 and not Sp_64 and (not Sp_74 and false)) or ((not Sp_84 or Sp_84 or 4) and (not Sp_64 or not Sp_64 or not Sp_84 and false) or (Sp_84 or Sp_84 or false) and (not Sp_64 and 4 and (not Sp_64 and not Sp_64)))) then
    fns.Sp_9:AddToggle("AutoStartRaid", { Text = "Auto Start Raid", Default = false })
    fns.Sp_9:AddDropdown("RaidDifficulty", { Values = Sp_84, Text = "Raid Difficulty", Default = "Easy" })
    fns.Sp_9:AddToggle("StopRaidAtWave", { Text = "Stop Raid at Wave", Default = false })
    fns.Sp_9:AddSlider("StopRaidWave", { Default = 10, Min = 1, Text = "Stop at Wave", Rounding = 0, Max = 100 })
else
    Sp_84:AddToggle("AutoStartRaid", { Text = "Auto Start Raid", Default = false })
    Sp_84:AddDropdown("RaidDifficulty", { Text = "Raid Difficulty", Values = fns.Sp_9, Default = "Easy" })
    Sp_84:AddToggle("StopRaidAtWave", { Text = "Stop Raid at Wave", Default = false })
    Sp_84:AddSlider("StopRaidWave", { Text = "Stop at Wave", Default = 10, Min = 1, Max = 100, Rounding = 0 })
end
Sp_61(Sp_15)
Sp_71 = Sp_15:AddLeftGroupbox("Combat", "swords")
Sp_71:AddToggle("AutoFarm", { Text = "Auto Farm", Default = false })
Sp_71:AddSlider("AutoFarmRange", { Text = "Auto Farm Range", Default = 120, Min = 20, Max = 300, Rounding = 0 })
Sp_71:AddSlider("AutoFarmWalkSpeed", { Text = "Auto Farm WalkSpeed", Default = 24, Min = 16, Max = 100, Rounding = 0 })
Sp_71:AddToggle("AutoEquipBestWeapon", { Text = "Auto Equip Best Weapon", Default = false })
Toggles.AutoFarm:OnChanged(fns.fn1126)
Options.AutoFarmWalkSpeed:OnChanged(fns.fn505)
Sp_61(Sp_83)
Sp_37 = Sp_83:AddLeftGroupbox("Buy", "shopping-cart")
Sp_37:AddToggle("AutoBuyBlocks", { Text = "Auto Buy Blocks", Default = false })
Sp_37:AddDropdown("BuyBlocks", { Text = "Blocks", Values = Sp_80, Multi = true, Default = {} })
Sp_37:AddToggle("AutoBuyDefense", { Text = "Auto Buy Defense", Default = false })
Sp_37:AddDropdown("BuyDefense", { Text = "Defense", Values = Sp_50, Multi = true, Default = {} })
Sp_37:AddToggle("AutoBuyFarm", { Text = "Auto Buy Farm", Default = false })
Sp_37:AddDropdown("BuyFarms", { Text = "Farm", Values = Sp_60, Multi = true, Default = {} })
Sp_37:AddToggle("AutoBuyWeapon", { Text = "Auto Buy Weapon", Default = false })
Sp_37:AddDropdown("BuyWeapons", { Text = "Weapons", Values = Sp_70, Multi = true, Default = {} })
AD = nil
Sp_74 = function()
    local O7
    O7 = nil
    local Label, O4, O5, O6
    O7 = "Unknown"
    pcall(function()
        local OO_1
        local ON_1
        if identifyexecutor then
            OO_1, ON_1 = identifyexecutor()
            local OP = OO_1 ~= ""
            local OQ = type(OO_1) == "string" and OP
            if OQ then
                local OP_1 = type(ON_1) == "string" and ON_1 ~= "" and OO_1 .. " " .. ON_1
                O7 = OP_1 or OO_1
            end
        end
    end)
    local AccountGroup = Aq.Info:AddLeftGroupbox("Account", "circle-user")
    AccountGroup:AddLabel(Be("User", LocalPlayer.Name, AS), true)
    AccountGroup:AddLabel(Be("Status", "Keyless", AS), true)
    AccountGroup:AddLabel(Be("Executor", O7, AS), true)
    local GameInfoGroup = Aq.Info:AddLeftGroupbox("Game Info", "gamepad-2")
    GameInfoGroup:AddLabel(BC(AK .. " [" .. tostring(game.PlaceId) .. "]", AM), true)
    GameInfoGroup:AddLabel(Be("Place ID", tostring(game.PlaceId), AM), true)
    Label = GameInfoGroup:AddLabel(Be("Session time", "0s", AI), true)
    O6 = tostring(game.JobId)
    local O9 = #O6 > 18 and string.sub(O6, 1, 18) .. "..."
    local Pa = O9
    local Pe = if Pa then 1 else 0
    local Pc = 854 * Pe + 3262 * (1 - Pe)
    local Pd = 2858 * Pe + 1361 * (1 - Pe)
    if not ((Pc * 1660 + Pd * 853 + Pc * Pd) % 16777213 == 6296246) then
        Pa = O6
    end
    local O9_1 = Pa
    GameInfoGroup:AddLabel(Be("Server", O9_1, AC), true)
    GameInfoGroup:AddButton({
        Text = "Copy join script (Job ID)",
        Func = function()
            local OV = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, O6)
            if setclipboard then
                setclipboard(OV)
            elseif toclipboard then
                toclipboard(OV)
            end
            Library:Notify("Copied join script to clipboard")
        end
    })
    O5 = os.clock()
    task.spawn(function()
        local OY_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            local OX = math.floor(os.clock() - O5)
            if OX < 60 then
                OY_1 = OX .. "s"
            elseif OX < 3600 then
                OY_1 = string.format("%dm %ds", OX // 60, OX % 60)
            else
                OY_1 = string.format("%dh %dm", OX // 3600, OX % 3600 // 60)
            end
            Label:SetText(Be("Session time", OY_1, AI))
        end
    end)
    local ScriptsGroup = Aq.Info:AddRightGroupbox("Scripts", "package")
    ScriptsGroup:AddLabel(BC("Included in this hub", AC), true)
    ScriptsGroup:AddLabel(BC(AK, AM), true)
    local FeaturesGroup = Aq.Info:AddRightGroupbox("Features", "list")
    FeaturesGroup:AddLabel(BC("Eggs", AM), true)
    FeaturesGroup:AddLabel(BC("Animals", AI), true)
    FeaturesGroup:AddLabel(BC("Towers & Research", AC), true)
    FeaturesGroup:AddLabel(BC("Auto Farm", AM), true)
    FeaturesGroup:AddLabel(BC("Shop", AI), true)
    local SocialsGroup = Aq.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = Sp_31 })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            if setclipboard then
                setclipboard(Ax)
            elseif toclipboard then
                toclipboard(Ax)
            end
            Library:Notify("Copied Rscripts profile to clipboard")
        end
    })
    local OuroborosHubGroup = Aq.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
    OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = Sp_31 })
    O4 = {
        [1] = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w",
        [2] = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99",
        [3] = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
        [4] = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
        [5] = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp",
        [6] = "https://paypal.me/TheTruckerGOD",
        [7] = "https://venmo.com/u/miserablemusic"
    }
    local DonationsGroup = Aq.Info:AddRightGroupbox("Donations", "heart")
    DonationsGroup:AddLabel(BC("All donations are optional but appreciated.", AI), true)
    DonationsGroup:AddLabel(BC("If you donate you get a special role, just PING after you donate.", AS), true)
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(BC("LTC / Litecoin", "#345d9d"), true)
    DonationsGroup:AddButton({
        Text = "Copy Litecoin Address",
        Func = function()
            z3(O4[1], "Copied Litecoin address")
        end
    })
    DonationsGroup:AddLabel(BC("BTC / Bitcoin", "#f7931a"), true)
    DonationsGroup:AddButton({
        Text = "Copy Bitcoin Address",
        Func = function()
            z3(O4[2], "Copied Bitcoin address")
        end
    })
    DonationsGroup:AddLabel(BC("ETH / Ethereum", "#627eea"), true)
    DonationsGroup:AddButton({
        Text = "Copy Ethereum Address",
        Func = function()
            z3(O4[3], "Copied Ethereum address")
        end
    })
    DonationsGroup:AddLabel(BC("USDT", "#26a17b"), true)
    DonationsGroup:AddButton({
        Text = "Copy USDT Address",
        Func = function()
            z3(O4[4], "Copied USDT address")
        end
    })
    DonationsGroup:AddLabel(BC("Solana", "#14f195"), true)
    DonationsGroup:AddButton({
        Text = "Copy Solana Address",
        Func = function()
            z3(O4[5], "Copied Solana address")
        end
    })
    DonationsGroup:AddLabel(BC("PayPal", "#0070ba"), true)
    DonationsGroup:AddButton({
        Text = "Copy PayPal Link",
        Func = function()
            z3(O4[6], "Copied PayPal link")
        end
    })
    DonationsGroup:AddLabel(BC("Venmo", "#008cff"), true)
    DonationsGroup:AddButton({
        Text = "Copy Venmo Link",
        Func = function()
            z3(O4[7], "Copied Venmo link")
        end
    })
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(BC("Don't have any of the listed currencies but still wanna donate?", AC), true)
    DonationsGroup:AddLabel(BC("DM me and we'll work something out.", AM), true)
    local FaqGroup = Aq.Info:AddRightGroupbox("FAQ", "circle-help")
    FaqGroup:AddLabel("Where do I get a good config?", true)
    FaqGroup:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
    FaqGroup:AddLabel("How do I import / export configs?", true)
    FaqGroup:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
    FaqGroup:AddLabel("How do I report bugs?", true)
    FaqGroup:AddLabel("Join the Discord and post it in the bugs channel.", true)
    FaqGroup:AddLabel("How do I make suggestions?", true)
    FaqGroup:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
    FaqGroup:AddLabel("How do I get help or updates?", true)
    FaqGroup:AddLabel("Join the Discord, updates and support are posted there first.", true)
end
Sp_74()
Sp_81 = function()
    local Q2
    local connection
    local QZ
    local Q6
    QZ = nil
    connection = nil
    Q2 = nil
    Q6 = nil
    local Q_, connection2, Q3, CurrentCamera, Q5, Q7, Q8, Q9
    local MovementGroup = Aq.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = Aq.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local PerformanceGroup = Aq.Player:AddRightGroupbox("Performance", "gauge")
    PerformanceGroup:AddToggle("BoostFps", { Text = "Boost FPS", Default = false })
    Q5 = {}
    connection2 = nil
    Q8 = setmetatable({}, { __mode = "k" })
    Q2 = function(ra, rb, rc)
        local Ph_1
        local Pg_1
        local Pf = Q8[ra]
        if not Pf then
            Pf = {}
            Q8[ra] = Pf
        end
        if Pf[rb] == nil then
            Pg_1, Ph_1 = pcall(function()
                return ra[rb]
            end)
            if not Pg_1 then
                return
            end
            Pf[rb] = Ph_1
        end
        pcall(function()
            ra[rb] = rc
        end)
    end
    Q9 = function(rm)
        if rm:IsA("BasePart") then
            Q2(rm, "CastShadow", false)
            Q2(rm, "Reflectance", 0)
            Q2(rm, "Material", Enum.Material.SmoothPlastic)
            if rm:IsA("MeshPart") then
                Q2(rm, "TextureID", "")
            end
        else
            local Pj = rm:IsA("Decal") or rm:IsA("Texture")
            if Pj then
                Q2(rm, "Transparency", 1)
            elseif rm:IsA("SpecialMesh") then
                Q2(rm, "TextureId", "")
            else
                local Pj_1 = rm:IsA("ParticleEmitter") or rm:IsA("Trail") or rm:IsA("Beam") or rm:IsA("Smoke") or rm:IsA("Fire") or rm:IsA("Sparkles")
                local Pn = if Pj_1 then 1 else 0
                local Pl = 525 * Pn + 1405 * (1 - Pn)
                local Pm = 25 * Pn + 1574 * (1 - Pn)
                if not ((Pl * 1130 + Pm * 3924 + Pl * Pm) % 16777213 == 704475) then
                    Pj_1 = rm:IsA("PointLight")
                end
                if not Pj_1 then
                    Pj_1 = rm:IsA("SpotLight")
                end
                if not Pj_1 then
                    Pj_1 = rm:IsA("SurfaceLight")
                end
                if not Pj_1 then
                    Pj_1 = rm:IsA("PostEffect")
                end
                if Pj_1 then
                    Q2(rm, "Enabled", false)
                elseif rm:IsA("Atmosphere") then
                    Q2(rm, "Density", 0)
                end
            end
        end
    end
    Q7 = function(rr)
        if not rr then
            for k, v in Q5 do
                local Px = k
                local Pz = v
                if Px and Pz and Px.Parent == nil and Pz.Parent then
                    pcall(function()
                        Px.Parent = Pz
                    end)
                end
            end
            table.clear(Q5)
            return
        end
        for i, player in Players:GetPlayers() do
            if player ~= LocalPlayer then
                local Character = player.Character
                if Character and Character.Parent and not Q5[Character] then
                    Q5[Character] = Character.Parent
                    pcall(function()
                        Character.Parent = nil
                    end)
                end
            end
        end
    end
    QZ = function()
        if connection2 then
            connection2:Disconnect()
            connection2 = nil
        end
        Q7(false)
        for k, v in Q8 do
            local PK = k
            for k, v in v do
                local PQ = k
                local PS = v
                pcall(function()
                    PK[PQ] = PS
                end)
            end
        end
        table.clear(Q8)
    end
    Q_ = function(rT)
        QZ()
        if not rT then
            return
        end
        local Rendering = settings().Rendering
        Q2(Rendering, "QualityLevel", Enum.QualityLevel.Level01)
        pcall(function()
            UserSettings():GetService("UserGameSettings").SavedQualityLevel = Enum.SavedQualitySetting.QualityLevel1
        end)
        Q2(Lighting, "GlobalShadows", false)
        Q2(Lighting, "EnvironmentDiffuseScale", 0)
        Q2(Lighting, "EnvironmentSpecularScale", 0)
        Q2(Lighting, "FogEnd", 1000000)
        Q2(Lighting, "Brightness", 1)
        local Terrain = workspace.Terrain
        Q2(Terrain, "Decoration", false)
        Q2(Terrain, "WaterWaveSize", 0)
        Q2(Terrain, "WaterWaveSpeed", 0)
        Q2(Terrain, "WaterReflectance", 0)
        Q2(Terrain, "WaterTransparency", 1)
        Q7(true)
        task.spawn(function()
            local descendants = workspace:GetDescendants()
            for k, v in descendants do
                if Library.Unloaded or not (Toggles.BoostFps and Toggles.BoostFps.Value) then
                    return
                end
                Q9(v)
                if k % 400 == 0 then
                    task.wait()
                end
            end
            for i, descendant in Lighting:GetDescendants() do
                Q9(descendant)
            end
        end)
        connection2 = game.DescendantAdded:Connect(function(si)
            if not (Toggles.BoostFps and Toggles.BoostFps.Value) then
                return
            end
            Q9(si)
            if si:IsA("Model") then
                local P7_1 = Players:GetPlayerFromCharacter(si)
                if P7_1 and P7_1 ~= LocalPlayer then
                    Q7(true)
                end
            end
        end)
    end
    Toggles.BoostFps:OnChanged(function()
        Q_(Toggles.BoostFps.Value)
    end)
    if Toggles.BoostFps.Value then
        Q_(true)
    end
    Bj(RunService.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local Qg_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if Qg_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end))
    Bj(UserInputService.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local Qu_1 = Sp_32()
            if Qu_1 then
                Qu_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end))
    CurrentCamera = workspace.CurrentCamera
    Bj(RunService.RenderStepped:Connect(function(sM)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local Qw_1 = Sp_32()
            if Qw_1 then
                Qw_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local Qw_3 = AO()
            local Qx = Sp_32()
            if Qw_3 and Qx then
                Qx.PlatformStand = true
                local Qx_1 = Vector3.zero
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    Qx_1 += CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    Qx_1 -= CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    Qx_1 -= CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    Qx_1 += CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    Qx_1 += Vector3.new(0, 1, 0)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    Qx_1 -= Vector3.new(0, 1, 0)
                end
                Qw_3.AssemblyLinearVelocity = Vector3.zero
                if Qx_1.Magnitude > 0 then
                    Qw_3.CFrame = Qw_3.CFrame + Qx_1.Unit * Options.FlySpeed.Value * sM
                end
            end
        end
    end))
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local QD = Sp_32()
            if QD then
                QD.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local QI = Sp_32()
            if QI then
                QI.WalkSpeed = 16
            end
        end
    end)
    Q6 = function(s8)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not s8)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not s8
            end
        end)
        if not s8 then
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
    Toggles.AntiGameplayPause:OnChanged(function()
        Q6(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                Q6(true)
            end
        end
    end)
    Q3 = function(tq)
        if not tq:IsA("ProximityPrompt") then
            return
        end
        tq.HoldDuration = 0
        tq.MaxActivationDistance = 50
        tq.RequiresLineOfSight = false
    end
    connection = nil
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in workspace:GetDescendants() do
                pcall(Q3, descendant)
            end
            connection = workspace.DescendantAdded:Connect(function(tx)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(Q3, tx)
                end
            end)
            Bj(connection)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    Library:OnUnload(function()
        Q6(false)
        QZ()
        if connection then
            connection:Disconnect()
        end
    end)
end
Sp_81()
Sp_64 = function()
    local MenuGroup = Aq.Settings:AddLeftGroupbox("Menu")
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local tJ = 0
    local tK = tick()
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = MenuGroup:AddLabel("AFK triggers: 0")
    local function tM()
        if not workspace.CurrentCamera then
            return
        end
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        tJ += 1
        tK = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. tJ)
        end)
    end
    local connection = LocalPlayer.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(tM)
        end
    end)
    Bj(connection)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local Rf = Toggles.AntiAfk.Value and tick() - tK >= 60
            if Rf then
                pcall(tM)
            end
        end
    end)
    MenuGroup:AddButton({
        Text = "Unload UI",
        Func = function()
            Library:Unload()
        end
    })
end
Sp_64()
Sp_51:SetLibrary(Library)
Sp_51:SetFolder("MyScriptHub")
Sp_51:SaveDefault("Evil Hello Kitty")
Sp_51:ApplyToTab(Aq.Settings)
Sp_51:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/DefendYourAnimals")
AD = SaveManager:BuildConfigSection(Aq.Settings)
SaveManager:LoadAutoloadConfig()
Sp_71 = function()
    local function t8(t9, ua)
        local Ri_1 = (t9 == "Toggle" and Toggles or Options)[ua]
        local Rh_2 = type(Ri_1) == "table" and Ri_1.Type == t9
        return Rh_2 and Ri_1 or nil
    end
    local function ui(uj, uk)
        local Type = uk.Type
        if Type == "Toggle" then
            return { idx = uj, type = "Toggle", value = uk.Value == true }
        elseif Type == "Slider" then
            return { idx = uj, type = "Slider", value = tostring(uk.Value) }
        elseif Type == "Dropdown" then
            return { idx = uj, type = "Dropdown", multi = uk.Multi == true, value = uk.Value }
        elseif Type == "Input" then
            local Rm = uk.Value or ""
            return { idx = uj, type = "Input", text = tostring(Rm) }
        elseif Type == "ColorPicker" then
            return { idx = uj, type = "ColorPicker", value = uk.Value:ToHex(), transparency = uk.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = uj,
                type = "KeyPicker",
                mode = uk.Mode,
                key = uk.Value,
                modifiers = uk.Modifiers,
                toggled = uk.Toggled
            }
        else
            return nil
        end
    end
    local function um()
        local Rs = {}
        for k, v in { Toggles, Options } do
            for k, v in v do
                local Rt = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if Rt then
                    local Rt_1 = ui(k, v)
                    if Rt_1 then
                        Rs[#Rs + 1] = Rt_1
                    end
                end
            end
        end
        table.sort(Rs, function(uw, ux)
            if uw.type ~= ux.type then
                return uw.type < ux.type
            end
            return uw.idx < ux.idx
        end)
        return { objects = Rs }
    end
    local function uy(uz)
        local RJ
        RJ = nil
        local RK = type(uz) ~= "table" or type(uz.idx) ~= "string" or type(uz.type) ~= "string" or SaveManager.Ignore[uz.idx]
        if RK then
            return false
        end
        RJ = t8(uz.type, uz.idx)
        if not RJ then
            return false
        end
        local RK_1 = pcall(function()
            if uz.type == "Input" then
                if type(uz.text) ~= "string" then
                    return
                end
                RJ:SetValue(uz.text)
            elseif uz.type == "ColorPicker" then
                RJ:SetValueRGB(Color3.fromHex(uz.value), uz.transparency)
            elseif uz.type == "KeyPicker" then
                RJ:SetValue({ uz.key, uz.mode, uz.modifiers })
                if uz.mode == "Toggle" and uz.toggled ~= nil then
                    RJ.Toggled = uz.toggled
                    RJ:Update()
                end
            else
                RJ:SetValue(uz.value)
            end
        end)
        return RK_1
    end
    AD:AddDivider()
    AD:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    AD:AddButton("Export Config to Clipboard", function()
        local RN_1
        local RM_1
        RM_1, RN_1 = pcall(HttpService.JSONEncode, HttpService, um())
        if not RM_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local RM_2 = setclipboard or toclipboard
        local RM_3 = type(RM_2) ~= "function"
        local RS = if RM_3 then 1 else 0
        local RQ = 2642 * RS + 3912 * (1 - RS)
        local RR = 768 * RS + 379 * (1 - RS)
        if not ((RQ * 891 + RR * 617 + RQ * RR) % 16777213 == 4856934) then
            RM_3 = not pcall(RM_2, RN_1)
        end
        if RM_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    AD:AddButton("Import Config from Clipboard Text", function()
        local RV_1
        local RT = Options.SaveManager_ImportSource.Value or ""
        local RT_1
        local RU = tostring(RT):match("^%s*(.-)%s*$")
        if RU == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        RT_1, RV_1 = pcall(HttpService.JSONDecode, HttpService, RU)
        local RU_1 = not RT_1 or type(RV_1) ~= "table"
        local RZ = if RU_1 then 1 else 0
        local RX = 3678 * RZ + 1956 * (1 - RZ)
        local RY = 1215 * RZ + 3464 * (1 - RZ)
        if not ((RX * 2946 + RY * 1749 + RX * RY) % 16777213 == 651980) then
            RU_1 = type(RV_1.objects) ~= "table"
        end
        if RU_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local RT_2 = 0
        for k, v in RV_1.objects do
            if uy(v) then
                RT_2 += 1
            end
        end
        if RT_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local RV_2 = RT_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(RT_2, RV_2), 6)
    end)
end
Sp_71()
task.spawn(fns.worker)
task.spawn(fns.worker2)
task.spawn(fns.worker3)
Library:OnUnload(function()
    Sp_16(false)
    for k, v in Bq do
        local Sh = v
        pcall(function()
            Sh:Disconnect()
        end)
    end
    table.clear(Bq)
    AP.__Ouroboros_DefendYourAnimals = nil
end)
