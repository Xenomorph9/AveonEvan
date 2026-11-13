local fns = {}
local E8_3, E8_7, E8_12, E8_16, E8_18, E8_20, E8_24, E8_29, E8_34, E8_40, E8_42
local un
local tn
local tM
local tt
local folder
local tg
local tY
local GetAutoSell
local tm
local t3
local s3
local tL
local us
local sL
local Pets
local Drops
local tE
local tl
local t2
local s8
local tQ
local GetAutoSellDrops
local ue
local tW
local tD
local s1
local tq
local s7
local Doors
local sP
local ud
local td
local sV
local Options
local tj
local s0
local PlayerGui
local Toggles
local Weapons2
local t6
local s6
local uv
local TeleportPoints
local tU
local GetAutoSellWeapon
local Races
local t_
local s_
local tH
local uo
local sH
local AttackEvent
local s5
local tN
local sN
local tb
local tT
local tZ
function fns.fn1()
    local At = sL("UpgradeMode", "All")
    if At == "Pets" or At == "All" then
        t6()
    end
    if At == "Weapons" or At == "All" then
        us()
    end
    if At == "Perks" or At == "All" then
        s_()
    end
end
function fns.fn21(cW)
    local wT = tn()
    local wU = cW and cW:FindFirstChild("HumanoidRootPart")
    local wU_3
    if not wT or not wU then
        return false
    end
    local wU_2 = wT.Position - wU.Position
    if wU_2.Magnitude < 0.1 then
        wU_3 = Vector3.new(0, 0, 4)
    else
        wU_3 = Vector3.new(wU_2.X, 0, wU_2.Z).Unit * 4
    end
    wT.AssemblyLinearVelocity = Vector3.zero
    wT.AssemblyAngularVelocity = Vector3.zero
    wT.CFrame = CFrame.new(wU.Position + wU_3 + Vector3.new(0, 2, 0), wU.Position)
    return true
end
function fns.fn31()
    local yQ = sL("SummonAmount", "1x")
    return yQ == "5x" and 5 or 1
end
function fns.fn80(cw)
    local wq = tQ[cw]
    if not wq then
        return {}
    end
    local wr = {}
    for k, v in wq do
        local wq_1 = Drops:FindFirstChild(v)
        if wq_1 then
            for i, child in wq_1:GetChildren() do
                if child:IsA("Model") then
                    local Humanoid = child:FindFirstChildOfClass("Humanoid")
                    local HumanoidRootPart = child:FindFirstChild("HumanoidRootPart")
                    if Humanoid and HumanoidRootPart and Humanoid.Health > 0 then
                        table.insert(wr, child)
                    end
                end
            end
        end
    end
    return wr
end
function fns.fn83(dR, dS)
    local Name = dS.Name
    local xo = tonumber(dS:GetAttribute("Level")) or 1
    local xo_1 = s0(dR, Name)
    return xo_1 * xo + tq(dR, Name)
end
function fns.fn125()
    local leaderstats = tN:FindFirstChild("leaderstats")
    local vU = leaderstats and leaderstats:FindFirstChild("Coins")
    local vT_1 = vU
    if vU then
        vU = vT_1.Value
    end
    local vT_2 = vU
    local vY = if vT_2 then 1 else 0
    local vW = 863 * vY + 3182 * (1 - vY)
    local vX = 1611 * vY + 2010 * (1 - vY)
    if not ((vW * 3530 + vX * 3850 + vW * vX) % 16777213 == 10639033) then
        vT_2 = 0
    end
    return vT_2
end
function fns.fn188(c8)
    if t2 and t2.Parent then
        local Humanoid = t2:FindFirstChildOfClass("Humanoid")
        local HumanoidRootPart = t2:FindFirstChild("HumanoidRootPart")
        if Humanoid and HumanoidRootPart and Humanoid.Health > 0 then
            local wZ_2 = tQ[c8]
            if wZ_2 then
                for k, v in wZ_2 do
                    if t2.Parent and t2.Parent.Name == v then
                        return t2
                    end
                end
            end
        end
    end
    t2 = select(1, tY(c8))
    return t2
end
function fns.fn194()
    local AO_1
    local AN_1
    local AM_1
    local AL_1
    local AK_1
    local AJ_1
    AJ_1, AK_1 = pcall(function()
        return GetAutoSell:InvokeServer()
    end)
    AL_1, AM_1 = pcall(function()
        return GetAutoSellWeapon:InvokeServer()
    end)
    AN_1, AO_1 = pcall(function()
        return GetAutoSellDrops:InvokeServer()
    end)
    local AP = AJ_1 and typeof(AK_1) == "table" and Options.AutoSellPets
    if AP then
        local AJ_2 = {}
        for k, v in tl do
            AJ_2[v] = AK_1[v] == true
        end
        Options.AutoSellPets:SetValue(AJ_2)
    end
    local AJ_3 = AL_1 and typeof(AM_1) == "table" and Options.AutoSellWeapons
    if AJ_3 then
        local AJ_4 = {}
        for k, v in tl do
            AJ_4[v] = AM_1[v] == true
        end
        Options.AutoSellWeapons:SetValue(AJ_4)
    end
    if AN_1 and Toggles.AutoSellDrops then
        Toggles.AutoSellDrops:SetValue(AO_1 == true)
    end
end
function fns.worker()
    while not sP.Unloaded do
        if tg("AutoSummon") then
            local EggSystem = PlayerGui:FindFirstChild("EggSystem")
            local EG = EggSystem
            if EG then
                local EH = EggSystem:GetAttribute("HatchingCount") or 0
                EG = EH
            end
            if (EG or 0) <= 0 then
                ud()
            end
        end
        task.wait(0.35)
    end
end
function fns.fn221()
    ue(tb, "Copied Discord invite to clipboard")
end
local function worker2()
    while not sP.Unloaded do
        if tg("AutoFarm") then
            local EJ = sL("FarmZone", tU[1])
            local EK = EJ ~= ""
            local EL = type(EJ) == "string" and EK
            if EL then
                tT()
                local EK_1 = tZ(EJ)
                if EK_1 then
                    local EL_1 = tn()
                    local HumanoidRootPart = EK_1:FindFirstChild("HumanoidRootPart")
                    local EN = sN()
                    if EL_1 and HumanoidRootPart then
                        local Magnitude = (HumanoidRootPart.Position - EL_1.Position).Magnitude
                        if Magnitude > math.max(5, EN * 0.5) then
                            s5(EK_1)
                        end
                    end
                else
                    t2 = nil
                    local EK_2 = tn()
                    local EL_2 = TeleportPoints:FindFirstChild(EJ)
                    if EK_2 and EL_2 then
                        local EM_3 = Vector3.new(EK_2.Position.X, 0, EK_2.Position.Z)
                        local EK_3 = Vector3.new(EL_2.Position.X, 0, EL_2.Position.Z)
                        if (EM_3 - EK_3).Magnitude > 60 then
                            tW(EJ)
                        end
                    end
                end
            end
        else
            t2 = nil
        end
        task.wait(0.15)
    end
end
local function fn275(bh)
    if sP.Unloaded then
        return false
    end
    local vw = Toggles[bh]
    return vw ~= nil and vw.Value == true
end
local function fn279()
    return tN.Character
end
local function fn381(i1)
    if s1[i1] then
        return
    end
    local Bj = i1:IsA("BasePart") and i1
    local Bk = Bj
    local Bv = if Bk then 1 else 0
    local Bt = 1575 * Bv + 3204 * (1 - Bv)
    local Bu = 3891 * Bv + 2 * (1 - Bv)
    if not ((Bt * 3813 + Bu * 3361 + Bt * Bu) % 16777213 == 8434238) then
        Bk = i1:FindFirstChildWhichIsA("BasePart", true)
    end
    local Bj_1 = Bk
    if not Bj_1 then
        return
    end
    local Bk_1 = sH(i1)
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "EggESP"
    billboardGui.AlwaysOnTop = true
    billboardGui.Size = UDim2.fromOffset(140, 40)
    billboardGui.StudsOffset = Vector3.new(0, 3, 0)
    billboardGui.Adornee = Bj_1
    billboardGui.Parent = folder
    local textLabel = Instance.new("TextLabel")
    textLabel.BackgroundTransparency = 1
    textLabel.Size = UDim2.fromScale(1, 1)
    textLabel.Font = Enum.Font.GothamBold
    textLabel.TextSize = 14
    textLabel.TextStrokeTransparency = 0.4
    local Bn = Bk_1 and Color3.fromRGB(255, 120, 180)
    local Bo = Bn or Color3.fromRGB(120, 220, 255)
    textLabel.TextColor3 = Bo
    local Bo_1 = Bk_1 and "Event Egg\n" .. i1.Name or i1.Name
    textLabel.Text = Bo_1
    textLabel.Parent = billboardGui
    local highlight = Instance.new("Highlight")
    highlight.FillTransparency = 0.65
    highlight.OutlineTransparency = 0.1
    local Bn_2 = Bk_1 and Color3.fromRGB(255, 80, 160)
    local Bk_2 = Bn_2 or Color3.fromRGB(80, 180, 255)
    highlight.FillColor = Bk_2
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    local Bk_3 = i1:IsA("Model") and i1
    local Bn_3 = Bk_3 or Bj_1
    highlight.Adornee = Bn_3
    highlight.Parent = folder
    s1[i1] = { Billboard = billboardGui, Highlight = highlight }
end
local function fn400()
    for k, v in s1 do
        if v.Billboard then
            v.Billboard:Destroy()
        end
        if v.Highlight then
            v.Highlight:Destroy()
        end
    end
    table.clear(s1)
end
local function fn416(a2, a3)
    if setclipboard then
        setclipboard(a2)
    elseif toclipboard then
        toclipboard(a2)
    end
    sP:Notify(a3)
end
local function fn430(bn, bo)
    local vz = Options[bn]
    if vz == nil then
        return bo
    end
    return vz.Value
end
local function fn442()
    local leaderstats = tN:FindFirstChild("leaderstats")
    local v_ = leaderstats and leaderstats:FindFirstChild("Level")
    local vZ_1 = v_
    if v_ then
        v_ = vZ_1.Value
    end
    local vZ_2 = v_
    local v3 = if vZ_2 then 1 else 0
    local v1 = 3408 * v3 + 914 * (1 - v3)
    local v2 = 1991 * v3 + 3663 * (1 - v3)
    if not ((v1 * 2310 + v2 * 3152 + v1 * v2) % 16777213 == 4156227) then
        vZ_2 = 0
    end
    return vZ_2
end
local function fn500()
    local Areas = tN:FindFirstChild("Areas")
    local zj = {}
    for i, child in Doors:GetChildren() do
        local zk = tonumber(child.Name)
        local Price = child:FindFirstChild("Price")
        local ProximityPrompt = child:FindFirstChildWhichIsA("ProximityPrompt", true)
        local zn = zk and Price
        if zn then
            local zo = not Areas or not Areas:FindFirstChild(child.Name)
            zn = zo
        end
        if zn then
            if not ProximityPrompt or ProximityPrompt.Enabled ~= false then
                table.insert(zj, { Door = child, Index = zk, Price = Price.Value })
            end
        end
    end
    table.sort(zj, function(go, gp)
        return go.Index < gp.Index
    end)
    return zj[1]
end
local function fn518(dl, dm)
    if dl == "Weapon" then
        local w8_1 = Weapons2:FindFirstChild(dm)
        local w9_1 = w8_1 and w8_1:FindFirstChild("Config")
        local w8_2 = w9_1
        if w9_1 then
            w9_1 = w8_2:FindFirstChild("Damage")
        end
        local w8_3 = w9_1
        if w8_3 then
            local w9_2 = tonumber(w8_3.Value) or 0
            return w9_2
        end
        local w8_4 = tm[dm]
        local w9_3 = w8_4
        if w9_3 then
            w9_3 = w8_4.UpgradePrice or 0
        end
        return w9_3 or 0
    end
    local w8_6 = Pets:FindFirstChild(dm)
    local w9_4 = w8_6 and w8_6:FindFirstChild("Config")
    local w8_7 = w9_4
    if w9_4 then
        w9_4 = w8_7:FindFirstChild("Damage")
    end
    local w8_8 = w9_4
    if w8_8 then
        local w9_5 = (tonumber(w8_8.Value))
        local xe_1 = if w9_5 then 1 else 0
        local xc_1 = 2937 * xe_1 + 1549 * (1 - xe_1)
        local xd_1 = 2215 * xe_1 + 1388 * (1 - xe_1)
        if not ((xc_1 * 4029 + xd_1 * 3233 + xc_1 * xd_1) % 16777213 == 8722510) then
            w9_5 = 0
        end
        return w9_5
    end
    local w8_9 = tD[dm]
    local w9_6 = w8_9
    if w9_6 then
        local xa_2 = w8_9.UpgradePrice
        local xe_2 = if xa_2 then 1 else 0
        local xc_2 = 601 * xe_2 + 1237 * (1 - xe_2)
        local xd_2 = 2004 * xe_2 + 2367 * (1 - xe_2)
        if not ((xc_2 * 922 + xd_2 * 1424 + xc_2 * xd_2) % 16777213 == 4612222) then
            xa_2 = 0
        end
        w9_6 = xa_2
    end
    return w9_6 or 0
end
local function worker4()
    while not sP.Unloaded do
        if tg("AutoBuyDoor") then
            un()
        end
        task.wait(1)
    end
end
local function fn527(jF)
    local DiscordGroup = jF:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = t_ })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = t_ })
end
local function fn552()
    local Values = tN:FindFirstChild("Values")
    local xI = Values and Values:FindFirstChild("MaxEquipPets")
    local xJ = Values
    if xJ then
        xJ = Values:FindFirstChild("MaxEquipPetsPerk")
    end
    local xH_1 = xI
    local xI_1 = xJ
    if xH_1 then
        xH_1 = xI.Value
    end
    local xJ_1 = xH_1
    local xO = if xJ_1 then 1 else 0
    local xM = 129 * xO + 3776 * (1 - xO)
    local xN = 2498 * xO + 676 * (1 - xO)
    if not ((xM * 2223 + xN * 2836 + xM * xN) % 16777213 == 7693337) then
        xJ_1 = 2
    end
    return xJ_1 + (xI_1 and xI_1.Value or 0)
end
local function fn564(bc, bd, be)
    return string.format("<b>%s</b> %s %s", bc, tL("-", "#5a6070"), tL(bd, be))
end
local function fn584()
    local vQ = tH()
    local vR = vQ and vQ:FindFirstChild("HumanoidRootPart")
    return vR
end
local function fn651(dI, dJ)
    local xg = dI == "Weapon" and tm[dJ] or tD[dJ]
    if not xg then
        return 0
    end
    local xg_1 = tonumber(xg.Chance) or 100
    local xg_2 = tonumber(xg.SellPrice) or 0
    local xg_3 = tonumber(xg.UpgradePrice) or 0
    return xg_2 * 10 + xg_3 + math.max(0, 100 - xg_1)
end
local function worker7()
    while not sP.Unloaded do
        if tg("AutoClass") then
            s6()
        end
        task.wait(1.5)
    end
end
local function onLoadFromGame()
    s8()
    sP:Notify("Loaded auto sell from game")
end
local function worker9()
    while not sP.Unloaded do
        if tg("AutoEquipBestEntity") then
            tt()
        end
        task.wait(3)
    end
end
local function worker5()
    while not sP.Unloaded do
        if tg("AutoUpgrade") then
            s7()
        end
        task.wait(1.5)
    end
end
local function fn924()
    local wf = tH()
    local wg = wf and wf:FindFirstChildOfClass("Tool")
    local wf_1 = wg
    if wg then
        wg = wf_1:FindFirstChild("Config")
    end
    local wf_2 = wg
    if wg then
        wg = wf_2:FindFirstChild("Range")
    end
    local wf_3 = wg
    if wg then
        wg = tonumber(wf_3.Value)
    end
    return wg or 15
end
local function onApplyAutoSell()
    uv()
    sP:Notify("Auto sell settings applied")
end
local function fn985(iZ)
    local Name = iZ.Name
    return Name ~= "BasicEgg" and Name ~= "BasicEgg2"
end
local function fn1019(aC, aD)
    local vs = Races[aC] and Races[aC].Chance or 999
    local vs_2 = Races[aD] and Races[aD].Chance or 999
    if vs == vs_2 then
        return aC < aD
    end
    return vs < vs_2
end
local function worker11()
    while not sP.Unloaded do
        s3()
        task.wait(0.5)
    end
end
local function fn1027(cK)
    local wJ_1
    local wI_1
    local wH = tn()
    if not wH then
        return nil
    end
    wI_1, wJ_1 = nil, nil
    for k, v in td(cK) do
        local HumanoidRootPart = v:FindFirstChild("HumanoidRootPart")
        if HumanoidRootPart then
            local Magnitude = (HumanoidRootPart.Position - wH.Position).Magnitude
            if not wJ_1 or Magnitude < wJ_1 then
                wI_1 = v
                wJ_1 = Magnitude
            end
        end
    end
    return wI_1, wJ_1
end
local function fn1053(bs)
    local vB = sL(bs, {})
    if typeof(vB) ~= "table" then
        return {}
    end
    local vC = {}
    for k, v in pairs(vB) do
        if v == true then
            vC[k] = true
        end
    end
    return vC
end
local function worker3()
    local EQ = false
    while not sP.Unloaded do
        local ER = (tg("AutoAttack"))
        local EW = if ER then 1 else 0
        local EU = 2176 * EW + 2582 * (1 - EW)
        local EV = 1681 * EW + 1205 * (1 - EW)
        if not ((EU * 234 + EV * 3222 + EU * EV) % 16777213 == 9583222) then
            ER = tg("AutoFarm")
        end
        if ER then
            tT()
            if not EQ then
                uo(true)
                EQ = true
            end
            pcall(function()
                AttackEvent:FireServer()
            end)
        elseif EQ then
            uo(false)
            EQ = false
        end
        task.wait(0.15)
    end
end
local function fn1134()
    local yN = sL("SummonPool", "Normal")
    return yN == "Premium" and "RANDOM2" or "RANDOM"
end
local function worker6()
    while not sP.Unloaded do
        if tg("AutoStats") then
            sV()
        end
        task.wait(0.5)
    end
end
local function fn1192(a9, ba)
    return string.format('<font color="%s">%s</font>', ba, a9)
end
local function worker8()
    while not sP.Unloaded do
        if tg("AutoEquipBestWeapon") then
            tM()
        end
        task.wait(3)
    end
end
local function worker10()
    while not sP.Unloaded do
        local E2 = tg("PickupRangeEnabled") or tg("AutoFarm")
        if E2 then
            local E2_1 = sL("PickupRange", 50)
            local E3 = tg("AutoFarm") and not tg("PickupRangeEnabled")
            if E3 then
                E2_1 = math.max(E2_1, 50)
            end
            tj(E2_1)
        end
        task.wait(0.15)
    end
end
local function fn1251()
    return t3
end
local function fn1258()
    local vN = tH()
    local vO = vN and vN:FindFirstChildOfClass("Humanoid")
    return vO
end
sH = nil
sL = nil
sN = nil
sP = nil
sV = nil
s_ = nil
s0 = nil
s1 = nil
s3 = nil
s5 = nil
s6 = nil
s7 = nil
s8 = nil
folder = nil
tb = nil
td = nil
tg = nil
tj = nil
tl = nil
tm = nil
tn = nil
Weapons2 = nil
tq = nil
Pets = nil
local sG, sI, UpgradeSkill, sK, sM, AutoRerollRace, sQ, SwitchRaceSlot, sS, sT, GetRaceData, sW, sX, sY, UnequipPets, s2, EquipWeapon, s9, EquipPet, te, tf, th, ti, GetData, UpgradePerks, UpgradeWeapon
tt = nil
TeleportPoints = nil
local tw
GetAutoSellDrops = nil
Drops = nil
GetAutoSellWeapon = nil
tD = nil
tE = nil
GetAutoSell = nil
tH = nil
PlayerGui = nil
tL = nil
tM = nil
tN = nil
Doors = nil
tQ = nil
tT = nil
tU = nil
tW = nil
tY = nil
tZ = nil
t_ = nil
t2 = nil
t3 = nil
AttackEvent = nil
t6 = nil
ud = nil
ue = nil
local UpgradePet, tz, tA, CurrencyDrops, Weapons, SetAutoSellDrops, Eggs, SetAutoSellWeapon, Workspace, SetAutoSell, tV, GiveCoins, t0, PurchaseDoor, t4, t7, RandomWeapon, t9, ua, Random, Skills, uf
Races = nil
Options = nil
un = nil
uo = nil
Toggles = nil
us = nil
uv = nil
local ug, uh, uk, ul, um, uq, Perks, ut, uu
ug = nil
uh = nil
uk = nil
ul = nil
um = nil
uq = nil
Perks = nil
ut = nil
uu = nil
sG, E8_40, ul, ug, ua, t7, t3, t0, tV, Workspace, tN, PlayerGui, tE = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local E8_9 = 32
repeat
    E8_24 = (E8_9 * 5 + 4) % 6 + 1
    if E8_24 <= 3 then
        if E8_24 <= 2 then
            if E8_24 <= 1 then
                E8_12 = (vector.create((E8_9 * 1 + 3) % 11 + 1, (E8_9 * 8 + 1) % 13 + 1, (E8_9 * 12 + 3) % 17 + 1))
                E8_42 = (vector.create((E8_9 * 3 + 2) % 11 + 1, (E8_9 * 9 + 3) % 13 + 1, (E8_9 * 3 + 8) % 17 + 1))
                local FO = vector.dot(E8_12, E8_42)
                if FO * FO <= vector.dot(E8_12, E8_12) * vector.dot(E8_42, E8_42) then
                    tN = sG.LocalPlayer
                    PlayerGui = tN:WaitForChild("PlayerGui")
                else
                    sG = PlayerGui.LocalPlayer
                    tN = sG:WaitForChild("PlayerGui")
                end
                E8_9 = (E8_9 + 5) % 48
            else
                if (E8_9 * 3 + 3) * 9 % 4 == ((E8_9 * 3 + 3) * 9 + 5) % 4 then
                    t7 = fn1251
                else
                    tE = fn1251
                end
                E8_9 = (E8_9 + 23) % 48
            end
        else
            E8_12 = {
                "lbgomxfev",
                "yhyegbha",
                "qrstej",
                "icln",
                "ysynfinc",
                "wybougge",
                "xofahq",
                "ndfnmoqvb",
                "vtngcxdm",
                "tbrcpipjdj",
                "rbhde",
                "ewotfwwt",
                "fmfkzm",
                "kdibnotq",
                "ciplhw"
            }
            if E8_12[(E8_9 * 7 + 61) % 15 + 1] <= E8_12[(E8_9 * 7 + 61) % 15 + 1] then
                sG = game:GetService("Players")
            else
                tN = game:GetService("Players")
            end
            E8_9 = (E8_9 + 5) % 48
        end
    elseif E8_24 <= 5 then
        if E8_24 <= 4 then
            E8_24 = { "pgzanhapouvd", "bhnraktc", "zhkl", "gtzh", "igzndh", "dmigpdo", "onejz", "dexichvdco", "nvyg" }
            if E8_24[(E8_9 * 75 + 70) % 9 + 1] < E8_24[(E8_9 * 75 + 70) % 9 + 1] then
                t7 = game:GetService("ReplicatedStorage")
                ug = game:GetService("RunService")
                ul = game:GetService("UserInputService")
                E8_40 = game:GetService("VirtualUser")
                ua = game:GetService("HttpService")
            else
                E8_40 = game:GetService("ReplicatedStorage")
                ul = game:GetService("RunService")
                ug = game:GetService("UserInputService")
                ua = game:GetService("VirtualUser")
                t7 = game:GetService("HttpService")
            end
            E8_9 = (E8_9 + 11) % 48
        else
            local GJ = bit32.rrotate(bit32.bxor(bit32.lrotate(E8_9, 16), string.byte(tostring(t3))), 19)
            if bit32.bxor(bit32.lrotate(bit32.bxor(GJ, 1930598791), 18), 1713228874) ~= bit32.lrotate(GJ, 18) then
                tV = game:GetService("CoreGui")
                t3 = game:GetService("GuiService")
                t0 = game:GetService("TeleportService")
            else
                t3 = game:GetService("CoreGui")
                t0 = game:GetService("GuiService")
                tV = game:GetService("TeleportService")
            end
            E8_9 = (E8_9 + 47) % 48
        end
    else
        E8_24 = {
            "nstsxjxqmtew",
            "ecsyk",
            "phzwywwbsmtc",
            "cvmzd",
            "layngihawmdh",
            "mvfx",
            "iuifdvwvyipe",
            "qojkqwqv"
        }
        if E8_24[(E8_9 * 48 + 17) % 8 + 1] <= E8_24[(E8_9 * 48 + 17) % 8 + 1] then
            Workspace = game:GetService("Workspace")
        else
            ul = game:GetService("Workspace")
        end
        E8_9 = (E8_9 + 47) % 48
    end
until (E8_9 * 25 + 6) % 48 == 32
if getgenv then
    tw, E8_24 = nil, nil
    E8_9 = 4
    repeat
        E8_12 = (E8_9 * 1 + 1) % 2 + 1
        if E8_12 <= 1 then
            if E8_9 * 81411465 + 4 + 4 <= E8_9 * 81411465 + 4 + 4 + 4 then
                E8_24 = tw
            else
                tw = E8_24
            end
            E8_9 = (E8_9 + 7) % 8
        else
            if E8_9 * 47152541 + 12 + 6 <= E8_9 * 47152541 + 12 + 6 + 5 then
                getgenv().gethui = tE
                tw = getgenv().__OuroborosBackroomsLib
            else
                getgenv().gethui = tw
                tE = getgenv().__OuroborosBackroomsLib
            end
            E8_9 = (E8_9 + 1) % 8
        end
    until (E8_9 * 7 + 3) % 8 == 7
    if E8_24 then
        E8_24 = tw.Unload
    end
    if E8_24 then
        pcall(function()
            tw:Unload()
        end)
    end
end
pcall(function()
    gethui = tE
end)
if setthreadidentity then
    setthreadidentity(8)
end
ti, tb, s2, sY, sT, sQ, sM, sI, uq, Random, RandomWeapon, AttackEvent, PurchaseDoor, GiveCoins, SetAutoSell, SetAutoSellWeapon, SetAutoSellDrops, GetAutoSell, GetAutoSellWeapon, GetAutoSellDrops, UpgradePet, UpgradeWeapon, UpgradePerks, GetData, EquipPet, EquipWeapon, UnequipPets, GetRaceData, SwitchRaceSlot, AutoRerollRace, UpgradeSkill, Perks, Races, Skills, E8_29, E8_16, Doors, Eggs, Weapons, CurrencyDrops, Drops, TeleportPoints, Pets, Weapons2, tl = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ti = "Backrooms Simulator"
tb = "https://discord.gg/ehKVq7pf7v"
s2 = "https://rscripts.net/@Ouroboros"
sY = "https://ouroboros-hub-rbx.web.app/"
sT = "#7fd47f"
sQ = "#6ec1ff"
sM = "#e8a34d"
sI = "#8b93a3"
uq = "#e05a5a"
E8_42 = E8_40:WaitForChild("Remotes")
E8_12 = E8_40:WaitForChild("RemotesStats")
Random = E8_42:WaitForChild("Random")
RandomWeapon = E8_42:WaitForChild("RandomWeapon")
AttackEvent = E8_42:WaitForChild("AttackEvent")
PurchaseDoor = E8_42:WaitForChild("PurchaseDoor")
GiveCoins = E8_42:WaitForChild("GiveCoins")
SetAutoSell = E8_42:WaitForChild("SetAutoSell")
if (not GiveCoins and not GetAutoSell or false) and (not GiveCoins and GetAutoSell or (GetAutoSell or GetAutoSell)) or not ((not GiveCoins and not GetAutoSell or false) and (not GiveCoins and GetAutoSell or (GetAutoSell or GetAutoSell))) then
    SetAutoSellWeapon = E8_42:WaitForChild("SetAutoSellWeapon")
else
    E8_42 = SetAutoSellWeapon:WaitForChild("SetAutoSellWeapon")
end
SetAutoSellDrops = E8_42:WaitForChild("SetAutoSellDrops")
GetAutoSell = E8_42:WaitForChild("GetAutoSell")
GetAutoSellWeapon = E8_42:WaitForChild("GetAutoSellWeapon")
GetAutoSellDrops = E8_42:WaitForChild("GetAutoSellDrops")
UpgradePet = E8_42:WaitForChild("UpgradePet")
UpgradeWeapon = E8_42:WaitForChild("UpgradeWeapon")
UpgradePerks = E8_42:WaitForChild("UpgradePerks")
GetData = E8_42:WaitForChild("GetData")
EquipPet = E8_42:WaitForChild("EquipPet")
EquipWeapon = E8_42:WaitForChild("EquipWeapon")
UnequipPets = E8_42:WaitForChild("UnequipPets")
GetRaceData = E8_42:WaitForChild("GetRaceData")
SwitchRaceSlot = E8_42:WaitForChild("SwitchRaceSlot")
AutoRerollRace = E8_42:WaitForChild("AutoRerollRace")
UpgradeSkill = E8_12:WaitForChild("UpgradeSkill")
Perks = require(E8_40:WaitForChild("Perks"))
local TeleportData = require(E8_40.Data:WaitForChild("TeleportData"))
Races = require(E8_40.Data:WaitForChild("Races"))
Skills = require(E8_12.Configuration:WaitForChild("Skills"))
local E8_13 = require(E8_40:WaitForChild("TowerShop"))
local E8_45 = require(E8_40:WaitForChild("TowerShop2"))
if (not GiveCoins or GiveCoins) and (E8_29 or GiveCoins) and (GiveCoins and GiveCoins or (E8_29 or not GiveCoins)) and (GiveCoins or GiveCoins or (GiveCoins or not GiveCoins) or (GiveCoins or E8_29 or GiveCoins and not GiveCoins)) or not ((not GiveCoins or GiveCoins) and (E8_29 or GiveCoins) and (GiveCoins and GiveCoins or (E8_29 or not GiveCoins)) and (GiveCoins or GiveCoins or (GiveCoins or not GiveCoins) or (GiveCoins or E8_29 or GiveCoins and not GiveCoins))) then
    E8_29 = require(E8_40:WaitForChild("WeaponShop"))
    E8_16 = require(E8_40:WaitForChild("WeaponShop2"))
else
    E8_40 = require(E8_16:WaitForChild("WeaponShop"))
    E8_29 = require(E8_16:WaitForChild("WeaponShop2"))
end
E8_24 = Workspace:WaitForChild("Main")
Doors = E8_24:WaitForChild("Doors")
Eggs = E8_24:WaitForChild("Eggs")
Weapons = E8_24:WaitForChild("Weapons")
CurrencyDrops = E8_24:WaitForChild("CurrencyDrops")
Drops = E8_24:WaitForChild("Drops")
TeleportPoints = Workspace:WaitForChild("TeleportPoints")
Pets = E8_40:WaitForChild("Pets")
Weapons2 = E8_40:WaitForChild("Weapons")
tl = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Godly", "Secret" }
if (not AutoRerollRace or E8_24) and (E8_24 and not E8_24) and (not E8_16 or E8_24 or (false or UnequipPets)) or sT and E8_24 and (E8_24 or AutoRerollRace) and ((false or E8_24) and (AutoRerollRace or UnequipPets)) or ((UnequipPets or sT or AutoRerollRace and not E8_24) and (not E8_24 or not E8_24 or (not E8_24 or AutoRerollRace)) or not UnequipPets and UnequipPets and (AutoRerollRace or not AutoRerollRace) and (E8_24 and not E8_24 and (not AutoRerollRace or E8_16))) or not ((not AutoRerollRace or E8_24) and (E8_24 and not E8_24) and (not E8_16 or E8_24 or (false or UnequipPets)) or sT and E8_24 and (E8_24 or AutoRerollRace) and ((false or E8_24) and (AutoRerollRace or UnequipPets)) or ((UnequipPets or sT or AutoRerollRace and not E8_24) and (not E8_24 or not E8_24 or (not E8_24 or AutoRerollRace)) or not UnequipPets and UnequipPets and (AutoRerollRace or not AutoRerollRace) and (E8_24 and not E8_24 and (not AutoRerollRace or E8_16)))) then
    E8_7 = { "Pets", "Weapons" }
    E8_20 = { "Normal", "Premium" }
    E8_34 = { "1x", "5x" }
    E8_3 = { "Pets", "Weapons", "Perks", "All" }
    E8_18 = { "Health", "Sword", "Gun", "Speed", "Critical Chance", "Critical Damage", "All" }
else
    E8_34 = { "Pets", "Weapons" }
    E8_18 = { "Normal", "Premium" }
    E8_7 = { "1x", "5x" }
    E8_20 = { "All", "Perks", "Pets", "Weapons" }
    E8_3 = { "Critical Damage", "Speed", "Health", "Gun", "Critical Chance", "Sword", "All" }
end
local E8_31 = { "1", "2", "3" }
local E8_2 = {}
for k in Races do
    table.insert(E8_2, k)
end
E8_9 = 3
repeat
    E8_40 = {
        "taclwk",
        "kfqmffhaw",
        "nqfhy",
        "sawjlzqlk",
        "mzyrhvwmhr",
        "kzxux",
        "ltgn",
        "nla",
        "apprkzvylu",
        "zyj",
        "efpul",
        "wdsl"
    }
    local Gx = E8_9
    E8_24 = E8_40[Gx % 12 + 1]
    if E8_24:len() <= E8_24:reverse():rep(Gx % 3 + 2):len() then
        table.sort(E8_2, fn1019)
    else
        table.sort(E8_2, fn1019)
    end
    E8_9 = (E8_9 + 7) % 8
until (E8_9 * 1 + 5) % 8 == 7
tQ = {}
tU = {}
for i, v in ipairs(TeleportData) do
    if v.Category == "Area" then
        table.insert(tU, v.Name)
        if v.RequiredDoor then
            tQ[v.Name] = { tostring(v.RequiredDoor) }
        else
            tQ[v.Name] = { "1", "2", "3" }
        end
    end
end
tD = {}
for k, v in E8_13 do
    tD[k] = v
end
for k, v in E8_45 do
    tD[k] = v
end
tm = {}
for k, v in E8_29 do
    tm[k] = v
end
for k, v in E8_16 do
    tm[k] = v
end
sP, sK, uu = nil, nil, nil
E8_40 = 1
repeat
    E8_24 = {
        "uewvpf",
        "ilpwn",
        "bngqx",
        "cdhy",
        "cvc",
        "sszlcgvrg",
        "jzip",
        "junc",
        "vxpoa",
        "vxotxjrta",
        "vwjzdrnab",
        "imrfikgv"
    }
    local GE = E8_40
    E8_12 = E8_24[GE % 12 + 1]
    if E8_12:len() <= E8_12:reverse():rep(GE % 3 + 2):len() then
        sP = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
        sK = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
        uu = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    else
        sK = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
        loadstring(game:HttpGet(sK .. "Library.lua"))()
        uu = loadstring(game:HttpGet(sK .. "addons/ThemeManager.lua"))()
        sP = loadstring(game:HttpGet(sK .. "addons/SaveManager.lua"))()
    end
    E8_40 = (E8_40 + 0) % 4
until (E8_40 * 3 + 1) % 4 == 0
if getgenv then
    getgenv().__OuroborosBackroomsLib = sP
end
Toggles, Options, t2, tf, folder, s1, te, ue, t_, tL, tz, tg, sL, t9, tH, tA, tn, sW, um, tW, sN, tT, td, tY, s5, uo, tZ, s0, tq, uk, tM, t4, tt, sV, s6, sS, ut, ud, th, uf, s9, un, tj, t6, us, s_, s7, uv, s8, sX, sH, uh, s3 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Toggles = sP.Toggles
Options = sP.Options
ue = fn416
t_ = fns.fn221
tL = fn1192
tz = fn564
tg = fn275
sL = fn430
t9 = fn1053
tH = fn279
tA = fn1258
tn = fn584
sW = fns.fn125
um = fn442
tW = function(bV)
    local wa = TeleportPoints:FindFirstChild(bV)
    local wb = tn()
    if not wa or not wb then
        return false
    end
    local wc_1 = wa.CFrame + Vector3.new(0, 3, 0)
    wb.AssemblyLinearVelocity = Vector3.zero
    wb.AssemblyAngularVelocity = Vector3.zero
    wb.CFrame = wc_1
    pcall(function()
        local PlayerScripts = tN:FindFirstChild("PlayerScripts")
        local v5 = PlayerScripts and PlayerScripts:FindFirstChild("LightingSystem")
        local v4_1 = v5
        if v5 then
            v5 = v4_1:FindFirstChild("ApplyTeleportLighting")
        end
        local v4_2 = v5
        if v5 then
            v5 = v4_2:IsA("BindableEvent")
        end
        if v5 then
            v4_2:Fire(bV)
        end
    end)
    return true
end
sN = fn924
tT = function()
    local wk = tH()
    if not wk then
        return false
    end
    local wp = if wk:FindFirstChildOfClass("Tool") then 1 else 0
    if wp == 1 then
        return true
    end
    local Backpack = tN:FindFirstChild("Backpack")
    if not Backpack then
        return false
    end
    local Tool = Backpack:FindFirstChildOfClass("Tool")
    if not Tool then
        return false
    end
    local wi = tA()
    if wi then
        pcall(function()
            wi:EquipTool(Tool)
        end)
    end
    return wk:FindFirstChildOfClass("Tool") ~= nil
end
td = fns.fn80
tY = fn1027
s5 = fns.fn21
uo = function(c2)
    pcall(function()
        if c2 then
            tN:SetAttribute("AFKAutoAttackRequest", true)
        else
            tN:SetAttribute("AFKAutoAttackRequest", nil)
        end
    end)
end
t2 = nil
tZ = fns.fn188
s0 = fn518
tq = fn651
uk = fns.fn83
tM = function()
    local xr, xs, attr
    local xv_1, xv_2
    local Weapons = tN:FindFirstChild("Weapons")
    local xu_4
    if not Weapons then
        return false
    end
    xs, xv_1 = nil, nil
    for i, child in Weapons:GetChildren() do
        local attr = child:GetAttribute("ID")
        if attr then
            local xu_2 = uk("Weapon", child)
            if not xv_1 or xu_2 > xv_1 then
                xs = child
                xv_1 = xu_2
            end
        end
    end
    if not xs then
        return false
    end
    local xu_3 = tonumber(xs:GetAttribute("Level")) or 1
    xr = xu_3
    attr = xs:GetAttribute("ID")
    xu_4, xv_2 = pcall(function()
        return EquipWeapon:InvokeServer(xs.Name, xr, attr)
    end)
    if xu_4 and xv_2 then
        tT()
        return true
    end
    return false
end
t4 = fn552
tt = function()
    local Pets = tN:FindFirstChild("Pets")
    if not Pets then
        return false
    end
    local xT = {}
    for i, child in Pets:GetChildren() do
        local attr = child:GetAttribute("ID")
        if attr then
            local insert = table.insert
            local xW_1 = uk("Pet", child)
            local xX = tonumber(child:GetAttribute("Level")) or 1
            insert(xT, { Pet = child, Score = xW_1, Id = attr, Level = xX })
        end
    end
    table.sort(xT, function(eu, ev)
        return eu.Score > ev.Score
    end)
    local xU_2 = t4()
    local xV_2 = {}
    local xW_2 = math.min(xU_2, #xT)
    local x6 = 1
    while x6 <= xW_2 do
        local x7 = x6
        xV_2[xT[x7].Id] = xT[x7]
        x6 += 1
    end
    for i, child in Pets:GetChildren() do
        local xR
        local ye = child
        local attr2 = ye:GetAttribute("ID")
        local attr = ye:GetAttribute("Equipped")
        local xU_3 = attr2
        local xW_3 = attr == true
        if xU_3 then
            xU_3 = xW_3
        end
        if xU_3 then
            xU_3 = not xV_2[attr2]
        end
        if xU_3 then
            local xS_2 = tonumber(ye:GetAttribute("Level")) or 1
            xR = xS_2
            pcall(function()
                UnequipPets:InvokeServer(ye.Name, xR, attr2)
            end)
            task.wait(0.1)
        end
    end
    for k, v in xT do
        local yl = v
        if xV_2[yl.Id] then
            local Pet = yl.Pet
            if Pet:GetAttribute("Equipped") ~= true then
                pcall(function()
                    EquipPet:InvokeServer(Pet.Name, yl.Level, yl.Id)
                end)
                task.wait(0.15)
            end
        end
    end
    return true
end
sV = function()
    local yq_1
    local Stats = tN:FindFirstChild("Stats")
    local Skills2 = tN:FindFirstChild("Skills")
    local yp = Stats and Stats:FindFirstChild("SkillPoints")
    if not yp or not Skills2 or yp.Value <= 0 then
        return
    end
    local yp_2 = sL("AutoStatTarget", "Sword")
    if yp_2 == "All" then
        yq_1 = { "Sword", "Gun", "Health", "Speed", "Critical Chance", "Critical Damage" }
    else
        yq_1 = { yp_2 }
    end
    for k, v in yq_1 do
        local yB = v
        if yp.Value <= 0 then
            return
        end
        local yp_3 = Skills2:FindFirstChild(yB)
        local yq_2 = Skills[yB]
        if yp_3 and yq_2 then
            local yr_2 = (yq_2.Limit or 0) - yp_3.Value
            if yr_2 > 0 then
                local ym = math.min(yp.Value, yr_2, 10)
                if ym > 0 then
                    pcall(function()
                        UpgradeSkill:FireServer(yB, ym)
                    end)
                    task.wait(0.15)
                end
            end
        end
    end
end
tf = false
s6 = function()
    local yC, yD
    local yG_1, yG_3
    if tf then
        return
    end
    local yE = t9("StopAtClass")
    yD = {}
    for k in yE do
        table.insert(yD, k)
    end
    if #yD == 0 then
        return
    end
    local yF = tonumber(sL("ClassSlot", "1")) or 1
    local yF_1, yF_4
    yC = yF
    tf = true
    pcall(function()
        SwitchRaceSlot:InvokeServer(yC)
    end)
    task.wait(0.2)
    yF_1, yG_1 = pcall(function()
        return GetRaceData:InvokeServer()
    end)
    local yH = yF_1 and typeof(yG_1) == "table" and yG_1.Slots and yG_1.Slots[yC]
    if yH then
        local Race = yG_1.Slots[yC].Race
        if Race and yE[Race] then
            tf = false
            return
        end
        if (yG_1.Slots[yC].Spins or 0) <= 0 then
            tf = false
            return
        end
    end
    yF_4, yG_3 = pcall(function()
        return AutoRerollRace:InvokeServer(yC, yD)
    end)
    tf = false
    local yH_2 = yF_4 and typeof(yG_3) == "table" and yG_3.Success and yG_3.NewRace and yE[yG_3.NewRace]
    if yH_2 then
        if Toggles.AutoClass then
            Toggles.AutoClass:SetValue(false)
        end
        sP:Notify("Got class: " .. tostring(yG_3.NewRace))
    end
end
sS = fn1134
ut = fns.fn31
ud = function()
    local yT, yU
    local yV = sL("SummonType", "Pets")
    yU = sS()
    yT = ut()
    if yV == "Weapons" then
        return pcall(function()
            RandomWeapon:InvokeServer(yT, yU, true)
        end)
    end
    return pcall(function()
        Random:InvokeServer(yT, yU, true)
    end)
end
th = function()
    local Areas = tN:FindFirstChild("Areas")
    if not Areas then
        return
    end
    for i, child in Doors:GetChildren() do
        local zh = child
        if Areas:FindFirstChild(zh.Name) then
            pcall(function()
                local ProximityPrompt = zh:FindFirstChildWhichIsA("ProximityPrompt", true)
                if ProximityPrompt then
                    ProximityPrompt.Enabled = false
                end
                for i, descendant in zh:GetDescendants() do
                    if descendant:IsA("BasePart") then
                        descendant.CanCollide = false
                        descendant.Transparency = 1
                    end
                end
                local y9 = if zh:IsA("BasePart") then 1 else 0
                if y9 == 1 then
                    zh.CanCollide = false
                    zh.Transparency = 1
                end
                zh:Destroy()
            end)
        end
    end
end
uf = fn500
s9 = function()
    local MainGui = PlayerGui:FindFirstChild("MainGui")
    local zy = MainGui and MainGui:FindFirstChild("PurchaseArea")
    if not zy or not zy.Visible then
        return false
    end
    local Buy = zy:FindFirstChild("Buy")
    if not Buy then
        return false
    elseif firesignal then
        pcall(firesignal, Buy.Activated)
        return true
    else
        return pcall(function()
            Buy:Activate()
        end)
    end
end
un = function()
    local zE_1
    th()
    local zC = uf()
    if not zC then
        return false
    elseif sW() < zC.Price then
        return false
    else
        local zD = tn()
        local zD_1
        if zD then
            zD.CFrame = zC.Door.CFrame + Vector3.new(0, 3, 5)
            task.wait(0.15)
        end
        local ProximityPrompt = zC.Door:FindFirstChildWhichIsA("ProximityPrompt", true)
        if ProximityPrompt then
            pcall(function()
                if fireproximityprompt then
                    fireproximityprompt(ProximityPrompt)
                else
                    ProximityPrompt:InputHoldBegin()
                    task.wait(0.05)
                    ProximityPrompt:InputHoldEnd()
                end
            end)
            task.wait(0.25)
            s9()
            task.wait(0.1)
        end
        zD_1, zE_1 = pcall(function()
            return PurchaseDoor:InvokeServer(zC.Door)
        end)
        if zD_1 and zE_1 == true then
            pcall(function()
                zC.Door:Destroy()
            end)
            return true
        end
        return false
    end
end
tj = function(gP)
    local zM = tn()
    if not zM then
        return
    end
    for i, child in CurrencyDrops:GetChildren() do
        local zL
        local zN = child:IsA("BasePart") and child:FindFirstChild("CanCollect") and child:FindFirstChild("ID")
        if zN then
            if (child.Position - zM.Position).Magnitude <= gP then
                zL = string.split(child.ID.Value, "|")
                pcall(function()
                    local zJ = #zL == 1 and zL[1] or zL
                    GiveCoins:FireServer(zJ)
                end)
                child:Destroy()
            end
        end
    end
end
t6 = function()
    local Pets = tN:FindFirstChild("Pets")
    if not Pets then
        return
    end
    for i, child in Pets:GetChildren() do
        local z4 = child
        local zX_1 = sP.Unloaded or not tg("AutoUpgrade")
        if zX_1 then
            return
        end
        local attr = z4:GetAttribute("ID")
        local zX_2 = z4:GetAttribute("Level") or 1
        local zV = zX_2
        local zX_3 = tD[z4.Name]
        if attr and zX_3 and zV < 40 and zX_3.UpgradePrice then
            local zY_1 = zX_3.UpgradePrice * zV
            if sW() >= zY_1 then
                pcall(function()
                    UpgradePet:InvokeServer(z4.Name, zV, attr)
                end)
                task.wait(0.15)
            end
        end
    end
end
us = function()
    local Weapons = tN:FindFirstChild("Weapons")
    if not Weapons then
        return
    end
    for i, child in Weapons:GetChildren() do
        local Af = child
        local z7_1 = sP.Unloaded or not tg("AutoUpgrade")
        if z7_1 then
            return
        end
        local attr = Af:GetAttribute("ID")
        local z7_2 = Af:GetAttribute("Level") or 1
        local z6 = z7_2
        local z7_3 = tm[Af.Name]
        if attr and z7_3 and z6 < 40 and z7_3.UpgradePrice then
            local z8_1 = z7_3.UpgradePrice * z6
            if sW() >= z8_1 then
                pcall(function()
                    UpgradeWeapon:InvokeServer(Af.Name, z6, attr)
                end)
                task.wait(0.15)
            end
        end
    end
end
s_ = function()
    local Ah_1
    local Ag_1, Ag_2
    Ag_1, Ah_1 = pcall(function()
        return GetData:InvokeServer()
    end)
    local Ai = not Ag_1 or typeof(Ah_1) ~= "table" or typeof(Ah_1.Perks) ~= "table"
    if Ai then
        return
    end
    local Ai_1 = um()
    local Aj = sW()
    for k, v in Perks.perkList do
        local Aq = k
        local Ak = sP.Unloaded or not tg("AutoUpgrade")
        if Ak then
            return
        end
        local Ak_2 = v[(Ah_1.Perks[Aq] or 0) + 1]
        if Ak_2 and Ai_1 >= Ak_2.Level and Aj >= Ak_2.Price then
            pcall(function()
                UpgradePerks:InvokeServer(Aq)
            end)
            task.wait(0.2)
            Ag_2, Ah_1 = pcall(function()
                return GetData:InvokeServer()
            end)
            local Ak_3 = not Ag_2 or typeof(Ah_1) ~= "table"
            if Ak_3 then
                return
            end
            Aj = sW()
            Ai_1 = um()
        end
    end
end
s7 = fns.fn1
uv = function()
    local AA = t9("AutoSellPets")
    local AB = t9("AutoSellWeapons")
    for k, v in tl do
        local AI = v
        pcall(function()
            SetAutoSell:InvokeServer(AI, AA[AI] == true)
        end)
        pcall(function()
            SetAutoSellWeapon:InvokeServer(AI, AB[AI] == true)
        end)
    end
    pcall(function()
        SetAutoSellDrops:InvokeServer(tg("AutoSellDrops"))
    end)
end
s8 = fns.fn194
folder = Instance.new("Folder")
folder.Name = "OuroborosEggESP"
folder.Parent = t3
s1 = {}
sX = fn400
sH = fn985
uh = fn381
s3 = function()
    local BF
    if not tg("EspEventEggs") then
        sX()
        return
    end
    BF = {}
    local function BG(jm)
        for i, child in jm:GetChildren() do
            local ProximityPrompt = child:FindFirstChildWhichIsA("ProximityPrompt", true)
            if ProximityPrompt and ProximityPrompt.ActionText == "Summon" then
                local Bw_1 = tg("EspAllEggs") or sH(child)
                if Bw_1 then
                    BF[child] = true
                    uh(child)
                end
            end
        end
    end
    BG(Eggs)
    BG(Weapons)
    for k, v in s1 do
        BG = not BF[k] or not k.Parent
        if BG then
            if v.Billboard then
                v.Billboard:Destroy()
            end
            if v.Highlight then
                v.Highlight:Destroy()
            end
            s1[k] = nil
        end
    end
end
E8_9 = sP:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = tb, Copyable = true }, "|", ti },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
te = {
    Info = E8_9:AddTab("Info", "info"),
    Main = E8_9:AddTab("Main", "gamepad-2"),
    Visuals = E8_9:AddTab("Visuals", "eye"),
    Player = E8_9:AddTab("Player", "person-standing"),
    Settings = E8_9:AddTab("Settings", "settings")
}
E8_24 = fn527
for k, v in te do
    if k ~= "Info" then
        E8_24(v)
    end
end
E8_9 = function()
    local CM
    local CN
    CM = nil
    CN = nil
    local Label, Label2, Label3, CR, CS
    local function CT()
        local BO = hookfunction ~= nil
        local BP = hookmetamethod ~= nil
        local BQ = getrawmetatable ~= nil
        local BR = setrawmetatable ~= nil
        local BS = getgc ~= nil
        local BT = getgenv ~= nil
        local BU = getreg ~= nil
        local BV = getconnections ~= nil
        local BW = firesignal ~= nil
        local BX = getcallbackvalue ~= nil
        local BY = setclipboard ~= nil
        local BZ = getcustomasset ~= nil
        local B_ = getnamecallmethod ~= nil
        local B0 = isexecutorclosure ~= nil
        local B1 = fireproximityprompt ~= nil
        local B2 = firetouchinterest ~= nil
        local B3 = WebSocket ~= nil
        local B4 = readfile ~= nil
        local B5 = writefile ~= nil
        local B6 = request
        local Ch = if B6 then 1 else 0
        local Cf = 298 * Ch + 2479 * (1 - Ch)
        local Cg = 3130 * Ch + 3176 * (1 - Ch)
        if not ((Cf * 934 + Cg * 4026 + Cf * Cg) % 16777213 == 13812452) then
            B6 = http_request
        end
        local B7 = B6 ~= nil
        local B9 = (debug and debug.getupvalues) ~= nil
        local Cb = (debug and debug.setupvalue) ~= nil
        local Cc = 0
        local Cd = { BO, BP, BQ, BR, BS, BT, BU, BV, BW, BX, BY, BZ, B_, B0, B1, B2, B3, B4, B5, B7, B9, Cb }
        for i, v in ipairs(Cd) do
            if v then
                Cc += 1
            end
        end
        local BO_1 = Cc / #Cd
        if BO_1 >= 0.9 then
            return tL("Full Support", sT)
        elseif BO_1 >= 0.6 then
            return tL("Half Support", sM)
        else
            return tL("Low Support", uq)
        end
    end
    CM = "Unknown"
    pcall(function()
        local Cs_1
        local Cr_1
        if identifyexecutor then
            Cs_1, Cr_1 = identifyexecutor()
            local Ct = Cs_1 ~= ""
            local Cu = type(Cs_1) == "string" and Ct
            if Cu then
                local Ct_1 = type(Cr_1) == "string" and Cr_1 ~= "" and Cs_1 .. " " .. Cr_1
                CM = Ct_1 or Cs_1
            end
        end
    end)
    local CU = CT()
    CN = os.clock()
    CR = function()
        local Cz = math.floor(os.clock() - CN)
        if Cz < 60 then
            return Cz .. "s"
        elseif Cz < 3600 then
            return string.format("%dm %ds", Cz // 60, Cz % 60)
        else
            return string.format("%dh %dm", Cz // 3600, Cz % 3600 // 60)
        end
    end
    local UserGroup = te.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = tN, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(tz("User", tN.DisplayName .. " @" .. tN.Name, sT), true)
    UserGroup:AddLabel(tz("UserId", tostring(tN.UserId), sQ), true)
    UserGroup:AddLabel(tz("Executor", CM .. "  " .. CU, sT), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(tz("Session", CR(), sM), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            ue(tN.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            ue("https://www.roblox.com/users/" .. tostring(tN.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = te.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(tz("Game", ti, sQ), true)
    Label2 = SessionGroup:AddLabel(tz("Players", "0/0", sT), true)
    CS = tostring(game.JobId)
    local CU_1 = #CS > 18 and string.sub(CS, 1, 18) .. "..."
    local CU_2 = CU_1 or CS
    SessionGroup:AddLabel(tz("Job", CU_2, sI), true)
    Label = SessionGroup:AddLabel(tz("Ping", "0 ms", sM), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            tV:Teleport(game.PlaceId, tN)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            ue(CS, "Copied Job ID")
        end
    })
    task.spawn(function()
        local CF_1
        local CE_1
        while true do
            task.wait(1)
            if sP.Unloaded then
                break
            end
            Label3:SetText(tz("Session", CR(), sM))
            Label2:SetText(tz("Players", #sG:GetPlayers() .. "/" .. tostring(sG.MaxPlayers), sT))
            CE_1, CF_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local CE_2 = CE_1 and CF_1 .. " ms" or "n/a"
            Label:SetText(tz("Ping", CE_2, sM))
        end
    end)
    local SocialsGroup = te.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = t_ })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            if setclipboard then
                setclipboard(s2)
            elseif toclipboard then
                toclipboard(s2)
            end
            sP:Notify("Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            ue(sY, "Copied website link")
        end
    })
end
E8_9()
E8_40 = te.Main:AddLeftGroupbox("Summon", "egg")
E8_40:AddToggle("AutoSummon", { Text = "Auto Summon", Default = false })
E8_40:AddDropdown("SummonType", { Text = "Summon Type", Values = E8_7, Default = 1 })
E8_40:AddDropdown("SummonPool", { Text = "Summon Pool", Values = E8_20, Default = 1 })
E8_40:AddDropdown("SummonAmount", { Text = "Summon Amount", Values = E8_34, Default = 1 })
E8_16 = te.Main:AddLeftGroupbox("Farm", "swords")
E8_16:AddToggle("AutoFarm", { Text = "Auto Farm", Default = false })
E8_16:AddDropdown("FarmZone", { Text = "Farm Zone", Values = tU, Default = 1 })
E8_16:AddToggle("AutoAttack", { Text = "Auto Attack", Default = false })
E8_16:AddToggle("AutoBuyDoor", { Text = "Auto Buy Next Door", Default = false })
E8_29 = te.Main:AddLeftGroupbox("Stats", "chart-column")
E8_29:AddToggle("AutoStats", { Text = "Auto Stats", Default = false })
E8_29:AddDropdown("AutoStatTarget", { Text = "Stat", Values = E8_18, Default = 2 })
E8_45 = te.Main:AddLeftGroupbox("Class", "users")
E8_45:AddToggle("AutoClass", { Text = "Auto Class", Default = false })
E8_45:AddDropdown("ClassSlot", { Text = "Slot", Values = E8_31, Default = 1 })
E8_45:AddDropdown("StopAtClass", { Text = "Stop At Class", Values = E8_2, Multi = true, Default = {} })
E8_13 = te.Main:AddRightGroupbox("Equip", "sword")
E8_13:AddToggle("AutoEquipBestWeapon", { Text = "Auto Equip Best Weapon", Default = false })
E8_13:AddToggle("AutoEquipBestEntity", { Text = "Auto Equip Best Entity", Default = false })
E8_42 = te.Main:AddRightGroupbox("Upgrade", "arrow-up")
E8_42:AddToggle("AutoUpgrade", { Text = "Auto Upgrade", Default = false })
E8_42:AddDropdown("UpgradeMode", { Text = "Upgrade Target", Values = E8_3, Default = 4 })
E8_12 = te.Main:AddRightGroupbox("Auto Sell", "badge-dollar-sign")
E8_12:AddDropdown("AutoSellPets", { Text = "Sell Pets", Values = tl, Multi = true, Default = {} })
E8_12:AddDropdown("AutoSellWeapons", { Text = "Sell Weapons", Values = tl, Multi = true, Default = {} })
E8_12:AddToggle("AutoSellDrops", { Text = "Sell Monster Drops", Default = false })
E8_12:AddButton({ Text = "Apply Auto Sell", Func = onApplyAutoSell })
E8_12:AddButton({ Text = "Load From Game", Func = onLoadFromGame })
E8_24 = te.Main:AddLeftGroupbox("Pickup", "magnet")
E8_24:AddToggle("PickupRangeEnabled", { Text = "Pickup Range", Default = false })
E8_24:AddSlider("PickupRange", { Text = "Range", Default = 50, Min = 12, Max = 200, Rounding = 0 })
local EggsGroup = te.Visuals:AddLeftGroupbox("Eggs", "egg")
EggsGroup:AddToggle("EspEventEggs", { Text = "ESP Event Eggs", Default = false })
EggsGroup:AddToggle("EspAllEggs", { Text = "ESP All Eggs", Default = false })
E8_24 = function()
    local MovementGroup = te.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = te.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    ul.Stepped:Connect(function()
        if sP.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local C__1 = tN.Character
            if C__1 then
                for i, descendant in ipairs(C__1:GetDescendants()) do
                    local C__2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if C__2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    ug.JumpRequest:Connect(function()
        if sP.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local Da_1 = tA()
            if Da_1 then
                Da_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    local CurrentCamera = Workspace.CurrentCamera
    ul.RenderStepped:Connect(function(lx)
        if sP.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local Dc_1 = tA()
            if Dc_1 then
                Dc_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local Dc_3 = tn()
            local Dd = tA()
            if Dc_3 and Dd then
                Dd.PlatformStand = true
                local Dd_1 = Vector3.zero
                if ug:IsKeyDown(Enum.KeyCode.W) then
                    Dd_1 += CurrentCamera.CFrame.LookVector
                end
                if ug:IsKeyDown(Enum.KeyCode.S) then
                    Dd_1 -= CurrentCamera.CFrame.LookVector
                end
                if ug:IsKeyDown(Enum.KeyCode.A) then
                    Dd_1 -= CurrentCamera.CFrame.RightVector
                end
                if ug:IsKeyDown(Enum.KeyCode.D) then
                    Dd_1 += CurrentCamera.CFrame.RightVector
                end
                if ug:IsKeyDown(Enum.KeyCode.Space) then
                    Dd_1 += Vector3.new(0, 1, 0)
                end
                local Dl = if ug:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                if Dl == 1 then
                    Dd_1 -= Vector3.new(0, 1, 0)
                end
                Dc_3.AssemblyLinearVelocity = Vector3.zero
                if Dd_1.Magnitude > 0 then
                    Dc_3.CFrame = Dc_3.CFrame + Dd_1.Unit * Options.FlySpeed.Value * lx
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local Dm = tA()
            if Dm then
                Dm.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local Do = tA()
            if Do then
                Do.WalkSpeed = 16
            end
        end
    end)
    local function lT(lU)
        pcall(function()
            t0:SetGameplayPausedNotificationEnabled(not lU)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = t3:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not lU
            end
        end)
        if not lU then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(tN, "GameplayPaused", false)
            else
                tN.GameplayPaused = false
            end
        end)
    end
    Toggles.AntiGameplayPause:OnChanged(function()
        lT(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not sP.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                lT(true)
            end
        end
    end)
    local function ma(mb)
        if not mb:IsA("ProximityPrompt") then
            return
        end
        mb.HoldDuration = 0
        mb.MaxActivationDistance = 50
        mb.RequiresLineOfSight = false
    end
    local connection
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in ipairs(Workspace:GetDescendants()) do
                pcall(ma, descendant)
            end
            connection = Workspace.DescendantAdded:Connect(function(mj)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(ma, mj)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    sP:OnUnload(function()
        lT(false)
        if connection then
            connection:Disconnect()
        end
    end)
end
E8_24()
E8_40 = function()
    local MenuGroup = te.Settings:AddLeftGroupbox("Menu")
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    sP.ToggleKeybind = Options.MenuKeybind
    local mt = 0
    local mu = tick()
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = MenuGroup:AddLabel("AFK triggers: 0")
    local function mw()
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        ua:CaptureController()
        ua:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        mt += 1
        mu = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. mt)
        end)
    end
    local connection = tN.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(mw)
        end
    end)
    task.spawn(function()
        while not sP.Unloaded do
            task.wait(2)
            local DO = Toggles.AntiAfk.Value and tick() - mu >= 60
            if DO then
                pcall(mw)
            end
        end
    end)
    MenuGroup:AddButton({
        Text = "Unload UI",
        Func = function()
            sP:Unload()
        end
    })
    sP:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
        pcall(function()
            tN:SetAttribute("AFKAutoAttackRequest", nil)
        end)
        sX()
        folder:Destroy()
    end)
    sK:SetLibrary(sP)
    sK:SetFolder("OuroborosHub")
    sK:SaveDefault("Evil Hello Kitty")
    sK:ApplyToTab(te.Settings)
    sK:LoadDefault()
    uu:SetLibrary(sP)
    uu:IgnoreThemeSettings()
    uu:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    uu:SetFolder("OuroborosHub/BackroomsSimulator")
    local m0 = uu:BuildConfigSection(te.Settings)
    uu:LoadAutoloadConfig()
    local function m1(m2, m3)
        local DS_1 = (m2 == "Toggle" and Toggles or Options)[m3]
        local DR_2 = type(DS_1) == "table" and DS_1.Type == m2
        return DR_2 and DS_1 or nil
    end
    local function m9(na, nb)
        local Type = nb.Type
        if Type == "Toggle" then
            return { idx = na, type = "Toggle", value = nb.Value == true }
        elseif Type == "Slider" then
            return { idx = na, type = "Slider", value = tostring(nb.Value) }
        elseif Type == "Dropdown" then
            return { idx = na, type = "Dropdown", multi = nb.Multi == true, value = nb.Value }
        elseif Type == "Input" then
            local DZ = nb.Value or ""
            return { idx = na, type = "Input", text = tostring(DZ) }
        elseif Type == "ColorPicker" then
            return { idx = na, type = "ColorPicker", value = nb.Value:ToHex(), transparency = nb.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = na,
                type = "KeyPicker",
                mode = nb.Mode,
                key = nb.Value,
                modifiers = nb.Modifiers,
                toggled = nb.Toggled
            }
        else
            return nil
        end
    end
    local function nd()
        local D1 = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local D2 = type(v) == "table" and type(v.Type) == "string" and not uu.Ignore[k]
                if D2 then
                    local D2_1 = m9(k, v)
                    if D2_1 then
                        D1[#D1 + 1] = D2_1
                    end
                end
            end
        end
        table.sort(D1, function(nl, nm)
            if nl.type ~= nm.type then
                return nl.type < nm.type
            end
            return nl.idx < nm.idx
        end)
        return { objects = D1 }
    end
    local function nn(no)
        local El
        El = nil
        local Em = type(no) ~= "table" or type(no.idx) ~= "string" or type(no.type) ~= "string" or uu.Ignore[no.idx]
        if Em then
            return false
        end
        El = m1(no.type, no.idx)
        if not El then
            return false
        end
        local Em_1 = pcall(function()
            if no.type == "Input" then
                if type(no.text) ~= "string" then
                    return
                end
                El:SetValue(no.text)
            elseif no.type == "ColorPicker" then
                El:SetValueRGB(Color3.fromHex(no.value), no.transparency)
            elseif no.type == "KeyPicker" then
                El:SetValue({ no.key, no.mode, no.modifiers })
                if no.mode == "Toggle" and no.toggled ~= nil then
                    El.Toggled = no.toggled
                    El:Update()
                end
            else
                El:SetValue(no.value)
            end
        end)
        return Em_1
    end
    m0:AddDivider()
    m0:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    m0:AddButton("Export Config to Clipboard", function()
        local Ep_1
        local Eo_1
        Eo_1, Ep_1 = pcall(t7.JSONEncode, t7, nd())
        if not Eo_1 then
            sP:Notify("Failed to encode the config")
            return
        end
        local Eo_2 = setclipboard or toclipboard
        local Eo_3 = type(Eo_2) ~= "function" or not pcall(Eo_2, Ep_1)
        if Eo_3 then
            sP:Notify("Your executor does not support copying to the clipboard")
            return
        end
        sP:Notify("Config copied to clipboard", 6)
    end)
    m0:AddButton("Import Config from Clipboard Text", function()
        local Eu_1
        local Es = Options.SaveManager_ImportSource.Value or ""
        local Es_1
        local Et = tostring(Es):match("^%s*(.-)%s*$")
        if Et == "" then
            sP:Notify("Paste an exported config into the box first")
            return
        end
        Es_1, Eu_1 = pcall(t7.JSONDecode, t7, Et)
        local Et_1 = not Es_1 or type(Eu_1) ~= "table"
        local Ey = if Et_1 then 1 else 0
        local Ew = 1667 * Ey + 3965 * (1 - Ey)
        local Ex = 2860 * Ey + 1484 * (1 - Ey)
        if not ((Ew * 3656 + Ex * 1686 + Ew * Ex) % 16777213 == 15684132) then
            Et_1 = type(Eu_1.objects) ~= "table"
        end
        if Et_1 then
            sP:Notify("That is not a valid exported config")
            return
        end
        local Es_2 = 0
        for i, v in ipairs(Eu_1.objects) do
            if nn(v) then
                Es_2 += 1
            end
        end
        if Es_2 == 0 then
            sP:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local Eu_2 = Es_2 == 1 and "" or "s"
        sP:Notify(("Imported %d setting%s"):format(Es_2, Eu_2), 6)
    end)
end
E8_40()
task.spawn(fns.worker)
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(worker6)
task.spawn(worker7)
task.spawn(worker8)
task.spawn(worker9)
task.spawn(worker10)
task.spawn(worker11)
task.defer(s8)
sP:Notify("Backrooms Simulator loaded")
