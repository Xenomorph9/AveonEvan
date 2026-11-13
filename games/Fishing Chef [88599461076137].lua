local zZ_1, zZ_6, zZ_8, zZ_10, zZ_15, zZ_17, zZ_22
local CookingConfig
local rl
local p_
local ql
local Library
local p2
local qo
local Options
local p5
local qr
local qQ
local qb
local qx
local qe
local qh
local qD
local rk
local qk
local LevelUp
local rn
local GetPlot
local qn
local p4
local p7
local qt
local qa
local qd
local qz
local rg
local qg
local qY
local rj
local q0
local qF
local qp
local q9
local Toggles
local p9
local rc
local qR
local qy
local qf
local qB
local qX
local function fn37()
    return p7[Options.FishLocation and Options.FishLocation.Value] or "starting_dock"
end
local function fn41()
    qg(q0, "Copied Discord invite to clipboard")
end
local function fn72(d2)
    local uA = qy.pendingBite
    if uA ~= nil then
        qy.pendingBite = nil
        return uA
    end
    local uB = os.clock()
    local uD = uB + (d2 or qx)
    while true do
        local uB_1 = os.clock() < uD and not Library.Unloaded
        if not uB_1 then
            return nil
        end
        uA = qy.pendingBite
        if uA ~= nil then
            break
        end
        task.wait(0.05)
    end
    qy.pendingBite = nil
    return uA
end
local function fn84()
    if tick() - qy.lastStallAt < qf then
        return false
    end
    local wa = qk()
    local wb = wa and wa:FindFirstChild("STALL")
    local wa_1 = wb
    if wb then
        wb = wa_1:FindFirstChild("LevelUpSign")
    end
    local wa_2 = wb
    if not wa_2 then
        return false
    elseif wa_2:GetAttribute("CanUpgrade") == false then
        return false
    else
        local attr = wa_2:GetAttribute("Cost")
        local wa_3 = type(attr) == "number" and p5() < attr
        if wa_3 then
            return false
        end
        local wa_4 = pcall(function()
            LevelUp:FireServer()
        end)
        if wa_4 then
            qy.lastStallAt = tick()
            task.wait(qf)
            qQ()
        end
        return wa_4
    end
end
local function fn112(aN)
    qF[#qF + 1] = aN
    return aN
end
local function autoUpgradeStallLoop()
    qQ()
    while not Library.Unloaded do
        local wu = false
        if Toggles.AutoUpgradeStall and Toggles.AutoUpgradeStall.Value then
            local wv_1 = qB() or wu
            wu = wv_1
        end
        local wv_2 = not wu
        if wv_2 ~= false then
            wv_2 = Toggles.AutoUpgradeTank
        end
        if wv_2 then
            wv_2 = Toggles.AutoUpgradeTank.Value
        end
        if wv_2 then
            local wv_3 = rl() or wu
            wu = wv_3
        end
        local wv_4 = not wu
        if wv_4 ~= false then
            wv_4 = Toggles.AutoBuyRod
        end
        if wv_4 then
            wv_4 = Toggles.AutoBuyRod.Value
        end
        if wv_4 then
            local wv_5 = qt() or wu
            wu = wv_5
        end
        local wv_6 = not wu
        if wv_6 ~= false then
            wv_6 = Toggles.AutoServe
        end
        if wv_6 then
            wv_6 = Toggles.AutoServe.Value
        end
        if wv_6 then
            local wv_7 = qp() or wu
            wu = wv_7
        end
        local wv_8 = not wu
        if wv_8 ~= false then
            wv_8 = Toggles.AutoCook
        end
        if wv_8 then
            wv_8 = Toggles.AutoCook.Value
        end
        if wv_8 then
            local wv_9 = qa()
            local ww_1 = wv_9 and qD(wv_9)
            if ww_1 then
                local wv_10 = rj() or wu
                wu = wv_10
            else
                if Toggles.AutoFish and Toggles.AutoFish.Value then
                    local wv_12 = qR() or wu
                    wu = wv_12
                end
            end
        else
            local wv_13 = not wu
            if wv_13 ~= false then
                wv_13 = Toggles.AutoFish
            end
            if wv_13 then
                wv_13 = Toggles.AutoFish.Value
            end
            if wv_13 then
                local wv_14 = qR() or wu
                wu = wv_14
            end
        end
        local wait = task.wait
        local wu_1 = wu and p9 or 0.35
        wait(wu_1)
    end
end
local function fn137()
    qy.castSpot = nil
end
local function fn138(bP)
    for i, v in ipairs(p2()) do
        local sU = type(v) == "table" and v.Name == bP
        if sU then
            return true
        end
    end
    return false
end
local function fn141()
    local Code = qr:FindFirstChild("Code")
    local so = Code and Code:FindFirstChild("Plots")
    if not so then
        return nil
    end
    return so:FindFirstChild(ql.Name)
end
local function fn174()
    local Character = ql.Character
    if Character then
        for i, child in Character:GetChildren() do
            local tI_1 = child:IsA("Tool") and child:GetAttribute("IsRod")
            if tI_1 then
                return child
            end
        end
    end
    local Backpack = ql:FindFirstChild("Backpack")
    if Backpack then
        for i, child in Backpack:GetChildren() do
            local tJ_1 = child:IsA("Tool") and child:GetAttribute("IsRod")
            if tJ_1 then
                return child
            end
        end
        for k, v in { "Plastic Rod", "Starter Rod" } do
            local tJ_2 = Backpack:FindFirstChild(v)
            local tK = tJ_2 and tJ_2:IsA("Tool")
            if tK then
                return tJ_2
            end
        end
    end
    return nil
end
local function fn207()
    if tick() - qy.lastTankAt < 1 then
        return false
    end
    local wd = qk()
    local we = wd and wd:FindFirstChild("FishTankSign")
    if not we then
        return false
    end
    local attr = we:GetAttribute("Cost")
    local wd_2 = type(attr) ~= "number" or p5() < attr
    if wd_2 then
        return false
    end
    local wd_3 = pcall(function()
        qX:FireServer()
    end)
    if wd_3 then
        qy.lastTankAt = tick()
        task.wait(0.75)
    end
    return wd_3
end
local function fn232()
    local uG_1
    local uF_1
    uF_1, uG_1 = pcall(function()
        return require(ql.PlayerScripts.Client.Controllers.FishingController.BiteMinigame)
    end)
    if uF_1 then
        return uG_1
    end
    return nil
end
local function fn233(aC, aD)
    return aC.Price < aD.Price
end
local function fn353()
    local vT = qk()
    local vU = vT and vT:FindFirstChild("STALL")
    local vT_1 = vU
    if vU then
        vU = vT_1:FindFirstChild("BoundingBox")
    end
    local vT_2 = vU
    local vU_1 = qY()
    if not vU_1 or not vT_2 then
        return false
    end
    local vV_1 = vT_2:IsA("BasePart") and vT_2
    local vW_1 = vV_1 or vT_2:FindFirstChildWhichIsA("BasePart")
    if not vW_1 then
        return false
    end
    vU_1.CFrame = vW_1.CFrame * CFrame.new(0, 3, -6)
    return true
end
local function fn380(aQ, aR)
    if setclipboard then
        setclipboard(aQ)
    elseif toclipboard then
        toclipboard(aQ)
    end
    Library:Notify(aR)
end
local function fn430()
    local s6_1
    local s5_1
    local s4_1
    s5_1, s4_1, s6_1 = pcall(function()
        return GetPlot:InvokeServer()
    end)
    local s4_2 = s5_1 and type(s6_1) == "number"
    if s4_2 then
        qy.stallLevel = s6_1
        return s6_1
    end
    return qy.stallLevel or 1
end
local function fn490(ca)
    if type(ca) ~= "string" then
        return ""
    end
    local tc = string.split(ca, "[")[1]
    local td = tc and tc:gsub("%s+$", "")
    return td or ca
end
local function fn508()
    local ui_1
    local ug = qz()
    local uh = qy.castSpot and qy.castSpot.zoneId == ug
    local uh_1
    if uh then
        return qy.castSpot
    end
    ui_1, uh_1 = qb(ug)
    local uj
    local uj_2
    local uk
    if ui_1 then
        local ul = uh_1 and math.max(uh_1.Size.X, uh_1.Size.Z) * 0.55
        local uh_2 = ul or 140
        for k, v in rg:GetTagged("FishingEnabled") do
            if v:IsA("BasePart") then
                local Magnitude = (v.Position - ui_1).Magnitude
                if Magnitude <= uh_2 and (not uk or Magnitude < uk) then
                    uk = Magnitude
                    uj = v
                end
            end
        end
    end
    if uj and ui_1 then
        local Position = uj.Position
        local uj_1 = Vector3.new(ui_1.X - Position.X, 0, ui_1.Z - Position.Z)
        if uj_1.Magnitude < 1 then
            uj_2 = Vector3.new(0, 0, -1)
        else
            uj_2 = uj_1.Unit
        end
        qy.castSpot = { stand = Position + uj_2 * 14 + Vector3.new(0, 3.5, 0), look = Position, zoneId = ug }
        return qy.castSpot
    elseif ui_1 then
        qy.castSpot = { stand = ui_1 + Vector3.new(0, 5, 0), look = ui_1 + Vector3.new(0, 0, 25), zoneId = ug }
        return qy.castSpot
    else
        local uh_6 = qY()
        if uh_6 then
            qy.castSpot = { stand = uh_6.Position, look = uh_6.Position + uh_6.CFrame.LookVector * 20, zoneId = ug }
        end
        return qy.castSpot
    end
end
local function fn514()
    local Code = qr:FindFirstChild("Code")
    local vI = Code and Code:FindFirstChild("ActiveNPCs")
    if not vI then
        return nil
    end
    for i, child in vI:GetChildren() do
        local Owner = child:FindFirstChild("Owner")
        local vI_1 = Owner and Owner.Value == ql.Name and child:GetAttribute("Arrived") and type(child:GetAttribute("Order")) == "string" and not child:GetAttribute("PendingFeed") and not child:GetAttribute("Despawn") and not child:GetAttribute("PlateDelivered")
        if vI_1 then
            local attr = child:GetAttribute("Order")
            if rk(attr) then
                return child, attr
            end
        end
    end
    return nil
end
local function fn535(ce, cf)
    local tf = CookingConfig[cf]
    if type(tf) ~= "table" then
        return false
    end
    local RequiredFish = tf.RequiredFish
    if type(RequiredFish) ~= "table" then
        return true
    end
    local tf_1 = p_(ce.Name)
    return RequiredFish[tf_1] == true
end
local function fn540(cl)
    for i, v in ipairs(qo()) do
        local ti = type(v) == "table" and v.ID ~= nil and rc(v, cl)
        if ti then
            return v
        end
    end
    return nil
end
local function fn552(b2)
    local s8 = CookingConfig[b2]
    if type(s8) ~= "table" then
        return false
    end
    local s9 = s8.StallLevel or 1
    local s9_1 = s8.PlayerLevel or 1
    if (qy.stallLevel or 1) < s9 then
        return false
    elseif rn() < s9_1 then
        return false
    else
        return true
    end
end
local function onOnClientEvent(d6)
    qy.pendingBite = d6
end
local function fn596()
    local Character = ql.Character
    local si = Character and Character:FindFirstChild("HumanoidRootPart")
    return si
end
local function fn626()
    local Character = ql.Character
    local sl = Character and Character:FindFirstChildOfClass("Humanoid")
    return sl
end
local function fn667()
    local leaderstats = ql:FindFirstChild("leaderstats")
    local sx = leaderstats and leaderstats:FindFirstChild("Level")
    local sw_1 = sx
    if sx then
        sx = sw_1.Value
    end
    return sx or 1
end
local function fn683()
    local uv = qh()
    local uw = qY()
    if not uv or not uw then
        return false
    end
    uw.CFrame = CFrame.lookAt(uv.stand, uv.look)
    return true
end
local function fn768(aX)
    local DiscordGroup = aX:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = p4 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = p4 })
end
local function fn800()
    local tr = Options.CookRecipe and Options.CookRecipe.Value or "Auto"
    if tr ~= "Auto" then
        local tv = if qd(tr) then 1 else 0
        if tv == 1 then
            return tr
        end
        return nil
    end
    if Toggles.AutoServe and Toggles.AutoServe.Value then
        local Code = qr:FindFirstChild("Code")
        local tr_1 = Code and Code:FindFirstChild("ActiveNPCs")
        if tr_1 then
            for i, child in tr_1:GetChildren() do
                local Owner = child:FindFirstChild("Owner")
                local tr_2 = Owner and Owner.Value == ql.Name and child:GetAttribute("Arrived") and not child:GetAttribute("PendingFeed") and not child:GetAttribute("Despawn") and not child:GetAttribute("PlateDelivered")
                if tr_2 then
                    local attr = child:GetAttribute("Order")
                    local tr_3 = type(attr) == "string" and qd(attr) and qD(attr)
                    if tr_3 then
                        return attr
                    end
                end
            end
        end
    end
    for i, v in ipairs(qn) do
        local tq_7 = qd(v) and qD(v)
        if tq_7 then
            return v
        end
    end
    return nil
end
local function fn839()
    local leaderstats = ql:FindFirstChild("leaderstats")
    local sr = leaderstats and leaderstats:FindFirstChild("Cash")
    local sq_1 = sr
    if sr then
        sr = sq_1.Value
    end
    return sr or 0
end
p_ = nil
p2 = nil
local p3
p4 = nil
p5 = nil
p7 = nil
p9 = nil
qa = nil
qb = nil
qd = nil
qe = nil
qf = nil
qg = nil
qh = nil
qk = nil
ql = nil
qn = nil
qo = nil
qp = nil
qr = nil
qt = nil
qx = nil
qy = nil
qz = nil
qB = nil
qD = nil
CookingConfig = nil
qF = nil
GetPlot = nil
Options = nil
local pZ, p0, p1, p6, p8, qc, qi, qj, qm, qq, qs, ZoneIndex, qv, qw, qA, qC, qG, qH, qI, qL
Toggles = nil
qQ = nil
qR = nil
qX = nil
qY = nil
q0 = nil
LevelUp = nil
Library = nil
q9 = nil
rc = nil
rg = nil
rj = nil
rk = nil
rl = nil
rn = nil
local qM, EquipRod, qP, qS, qT, qU, qV, qW, qZ, q_, q3, q4, StoreFood, q6, q7, q8, ra, RequestRestaurauntData, re, rf, rh, ri, rm
qM = nil
EquipRod = nil
qP = nil
qS = nil
qT = nil
qU = nil
qV = nil
qW = nil
qZ = nil
q_ = nil
q3 = nil
q4 = nil
StoreFood = nil
q6 = nil
q7 = nil
q8 = nil
ra = nil
RequestRestaurauntData = nil
re = nil
rf = nil
rh = nil
ri = nil
rm = nil
local rB
if not game:IsLoaded() then
    game.Loaded:Wait()
end
local function zZ_3(c)
    return c
end
local zZ_12 = cloneref or zZ_3
zZ_6, rg, q9, q6, q3, q_, qV, qP, qL, qH, qA, qw, qr, ql, zZ_15 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local zZ_20 = 60
repeat
    zZ_3 = (zZ_20 * 1 + 9) % 10 + 1
    if zZ_3 <= 5 then
        if zZ_3 <= 3 then
            if zZ_3 <= 2 then
                if zZ_3 <= 1 then
                    zZ_22 = (vector.create((zZ_20 * 1 + 5) % 11 + 1, (zZ_20 * 9 + 8) % 13 + 1, (zZ_20 * 4 + 12) % 17 + 1))
                    zZ_8 = (vector.create((zZ_20 * 3 + 2) % 11 + 1, (zZ_20 * 5 + 5) % 13 + 1, (zZ_20 * 12 + 12) % 17 + 1))
                    local BC = vector.cross(zZ_22, zZ_8)
                    local BD = vector.dot(zZ_22, zZ_8)
                    if vector.dot(BC, BC) + BD * BD == vector.dot(zZ_22, zZ_22) * vector.dot(zZ_8, zZ_8) then
                        rg = zZ_6(game:GetService("CollectionService"))
                    else
                        zZ_6 = rg(game:GetService("CollectionService"))
                    end
                    zZ_20 = (zZ_20 + 71) % 80
                else
                    local AX = bit32.rrotate(bit32.bxor(bit32.lrotate(zZ_20, 5), string.byte(tostring(zZ_15))), 2)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(AX, 1688725249), 16), 3875628199) == bit32.lrotate(AX, 16) then
                        q9 = zZ_6(game:GetService("CoreGui"))
                    else
                        zZ_6 = q9(game:GetService("CoreGui"))
                    end
                    zZ_20 = (zZ_20 + 61) % 80
                end
            else
                if zZ_20 * 9989601 + 13 + 4 >= zZ_20 * 9989601 + 13 + 4 + 1 then
                    zZ_6 = q6(game:GetService("GuiService"))
                    q_ = q6(game:GetService("HttpService"))
                    q3 = q6(game:GetService("Lighting"))
                else
                    q6 = zZ_6(game:GetService("GuiService"))
                    q3 = zZ_6(game:GetService("HttpService"))
                    q_ = zZ_6(game:GetService("Lighting"))
                end
                zZ_20 = (zZ_20 + 21) % 80
            end
        elseif zZ_3 <= 4 then
            zZ_22 = (vector.create((zZ_20 * 1 + 5) % 11 + 1, (zZ_20 * 2 + 5) % 13 + 1, (zZ_20 * 3 + 15) % 17 + 1))
            zZ_8 = (vector.create((zZ_20 * 5 + 9) % 11 + 1, (zZ_20 * 10 + 12) % 13 + 1, (zZ_20 * 5 + 4) % 17 + 1))
            zZ_17 = (vector.create((zZ_20 * 2 + 4) % 11 + 1, (zZ_20 * 5 + 13) % 13 + 1, (zZ_20 * 1 + 4) % 17 + 1))
            zZ_1 = (vector.create((zZ_20 * 3 + 3) % 5 + 1, (zZ_20 * 4 + 3) % 7 + 1, (zZ_20 * 3 + 4) % 9 + 1))
            if vector.dot(vector.cross(zZ_22, (vector.cross(zZ_8, zZ_17))), zZ_1) == vector.dot(zZ_8 * vector.dot(zZ_22, zZ_17) - zZ_17 * vector.dot(zZ_22, zZ_8), zZ_1) + 5 then
                zZ_6 = qV(game:GetService("Players"))
            else
                qV = zZ_6(game:GetService("Players"))
            end
            zZ_20 = (zZ_20 + 31) % 80
        else
            zZ_22 = {
                "oednjmfgtit",
                "rxivchgdtp",
                "seqsblapzq",
                "vlemgpvsws",
                "mduhzqtqb",
                "cxauxbbg",
                "pqj",
                "tcijlcmazi",
                "eeeaaighyhxq",
                "lpfex",
                "xehfnaqw",
                "cfhgwayvjqem",
                "vfxikhbnqslr",
                "ltrgqpgntbur",
                "zzqjqqyqohbi",
                "mbeox"
            }
            if zZ_22[(zZ_20 * 88 + 105) % 16 + 1] < zZ_22[(zZ_20 * 88 + 105) % 16 + 1] then
                zZ_6 = qP(game:GetService("ReplicatedStorage"))
            else
                qP = zZ_6(game:GetService("ReplicatedStorage"))
            end
            zZ_20 = (zZ_20 + 71) % 80
        end
    elseif zZ_3 <= 8 then
        if zZ_3 <= 7 then
            if zZ_3 <= 6 then
                zZ_22 = {
                    "pwyfs",
                    "mtlfoizqf",
                    "xtegcob",
                    "bsyrcz",
                    "vspuxhq",
                    "eolcqbcdrwf",
                    "wcshnra",
                    "htxdeffvznj",
                    "win"
                }
                if zZ_22[(zZ_20 * 34 + 5) % 9 + 1] <= zZ_22[(zZ_20 * 34 + 5) % 9 + 1] then
                    qL = zZ_6(game:GetService("RunService"))
                    qH = zZ_6(game:GetService("TeleportService"))
                    qA = zZ_6(game:GetService("UserInputService"))
                    qw = zZ_6(game:GetService("VirtualUser"))
                else
                    zZ_6 = qw(game:GetService("RunService"))
                    qL = qw(game:GetService("TeleportService"))
                    qH = qw(game:GetService("UserInputService"))
                    qA = qw(game:GetService("VirtualUser"))
                end
                zZ_20 = (zZ_20 + 61) % 80
            else
                local A_ = bit32.rrotate(bit32.bxor(bit32.lrotate(zZ_20, 29), string.byte(tostring(zZ_15))), 19)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(A_, 320375925), 3258688), (bit32.bxor(bit32.band(A_, 3974591370), 4039658919))), 3258688), 4039658919) == A_ then
                    qr = zZ_6(game:GetService("Workspace"))
                else
                    zZ_6 = qr(game:GetService("Workspace"))
                end
                zZ_20 = (zZ_20 + 51) % 80
            end
        else
            if ((not ql and not qA or not ql and not ql) and ((ql or not ql) and (ql and not qA)) or (q3 and not ql and (ql and qA) or (not q3 or qA) and (q3 or not q3))) and not ((not ql and not qA or not ql and not ql) and ((ql or not ql) and (ql and not qA)) or (q3 and not ql and (ql and qA) or (not q3 or qA) and (q3 or not q3))) then
                qV = ql.LocalPlayer
            else
                ql = qV.LocalPlayer
            end
            zZ_20 = (zZ_20 + 11) % 80
        end
    elseif zZ_3 <= 9 then
        if zZ_20 * 91077405 + 2 + 4 >= zZ_20 * 91077405 + 2 + 4 + 4 then
            ql = zZ_15:WaitForChild("PlayerGui")
        else
            zZ_15 = ql:WaitForChild("PlayerGui")
        end
        zZ_20 = (zZ_20 + 41) % 80
    else
        local AM = bit32.rrotate(bit32.bxor(bit32.lrotate(zZ_20, 16), string.byte(tostring(q3))), 17)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(AM, 1853361207), 3825763010), (bit32.bxor(bit32.band(AM, 2441606088), 1194915034))), 3825763010), 1194915034) ~= AM then
            zZ_12 = zZ_6
        else
            zZ_6 = zZ_12
        end
        zZ_20 = (zZ_20 + 51) % 80
    end
until (zZ_20 * 63 + 54) % 80 == 4
if setthreadidentity then
    setthreadidentity(8)
end
qe = function()
    return q9
end
zZ_3 = getgenv and getgenv()
zZ_12 = zZ_3 or nil
p6 = zZ_12
if p6 then
    p3, zZ_12 = nil, nil
    zZ_3 = 7
    repeat
        zZ_20 = (zZ_3 * 1 + 0) % 2 + 1
        if zZ_20 <= 1 then
            local A9 = bit32.rrotate(bit32.bxor(bit32.lrotate(zZ_3, 20), string.byte(tostring(p3))), 30)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(A9, 1505505375), 234678077), (bit32.bxor(bit32.band(A9, 2789461920), 2251122066))), 234678077), 2251122066) ~= A9 then
                p3 = zZ_12
            else
                zZ_12 = p3
            end
            zZ_3 = (zZ_3 + 3) % 16
        else
            zZ_20 = (vector.create((zZ_3 * 2 + 1) % 11 + 1, (zZ_3 * 1 + 1) % 13 + 1, (zZ_3 * 10 + 17) % 17 + 1))
            zZ_6 = (vector.create((zZ_3 * 1 + 9) % 11 + 1, (zZ_3 * 4 + 9) % 13 + 1, (zZ_3 * 10 + 8) % 17 + 1))
            zZ_22 = (vector.create((zZ_3 * 4 + 5) % 11 + 1, (zZ_3 * 6 + 3) % 13 + 1, (zZ_3 * 1 + 15) % 17 + 1))
            if vector.dot(vector.cross(zZ_20, zZ_6), zZ_22) == vector.dot(vector.cross(zZ_6, zZ_22), zZ_20) + 1 then
                p3.gethui = p6
                qe = p3.__OuroborosFishingChefLib
            else
                p6.gethui = qe
                p3 = p6.__OuroborosFishingChefLib
            end
            zZ_3 = (zZ_3 + 15) % 16
        end
    until (zZ_3 * 13 + 6) % 16 == 11
    if zZ_12 then
        zZ_12 = p3.Unload
    end
    if zZ_12 then
        pcall(function()
            p3:Unload()
        end)
    end
end
pcall(function()
    gethui = qe
end)
for k, v in { q9, zZ_15 } do
    for k, v2 in { "Obsidian", "ObsidianLoading" } do
        local rb = v:FindFirstChild(v2)
        while rb do
            pcall(function()
                rb:Destroy()
            end)
            rb = v:FindFirstChild(v2)
        end
    end
end
q4, q0, qW, qS, qM, qI, qC, qx, qs, qm, qi, qf, zZ_15, p9, zZ_6, zZ_20, zZ_12, zZ_3, p1, zZ_17, pZ, rm, ri, RequestRestaurauntData, q7, StoreFood, LevelUp, qX, qT, EquipRod, GetPlot, CookingConfig, zZ_8, ZoneIndex, qn, zZ_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
zZ_22 = 36
repeat
    zZ_10 = (zZ_22 * 10 + 14) % 21 + 1
    if zZ_10 <= 11 then
        if zZ_10 <= 6 then
            if zZ_10 <= 3 then
                if zZ_10 <= 2 then
                    if zZ_10 <= 1 then
                        local BU = bit32.rrotate(bit32.bxor(bit32.lrotate(zZ_22, 18), string.byte(tostring(zZ_6))), 5)
                        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(BU, 3040409953), 3430172687), (bit32.bxor(bit32.band(BU, 1254557342), 1156680107))), 3430172687), 1156680107) == BU then
                            qf = 2.6
                        else
                            qs = 2.6
                        end
                        zZ_22 = (zZ_22 + 82) % 168
                    else
                        local A4 = bit32.rrotate(bit32.bxor(bit32.lrotate(zZ_22, 5), string.byte(tostring(zZ_15))), 21)
                        if bit32.bxor(bit32.lrotate(bit32.bxor(A4, 2388833093), 8), 1655915918) == bit32.lrotate(A4, 8) then
                            zZ_15 = 3
                        else
                            q0 = 3
                        end
                        zZ_22 = (zZ_22 + 103) % 168
                    end
                else
                    local zZ_19_1 = {
                        "emboonqjoai",
                        "ngampfncemin",
                        "phislje",
                        "cbflmspfvxmk",
                        "icnobfnxyewg",
                        "cwor",
                        "sonn",
                        "gdbnneh",
                        "rxamspve",
                        "yxti",
                        "ikqi",
                        "lifb",
                        "axhxjh",
                        "wdjrddvaaqyu"
                    }
                    if zZ_19_1[(zZ_22 * 95 + 4) % 14 + 1] < zZ_19_1[(zZ_22 * 95 + 4) % 14 + 1] then
                        zZ_1 = 0.2
                    else
                        p9 = 0.2
                    end
                    zZ_22 = (zZ_22 + 124) % 168
                end
            elseif zZ_10 <= 5 then
                if zZ_10 <= 4 then
                    if (zZ_22 * 2 + 1) * 4 % 3 == ((zZ_22 * 2 + 1) * 4 + 1) % 3 then
                        qP = zZ_6:WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services")
                    else
                        zZ_6 = qP:WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services")
                    end
                    zZ_22 = (zZ_22 + 40) % 168
                else
                    local zZ_19_2 = { "xxvuhpgqsdj", "lfxvgofh", "fjvh", "noppbmurd", "vqin", "qyv", "cxuv" }
                    local AT = zZ_22
                    local zZ_5_1 = zZ_19_2[AT % 7 + 1]
                    if zZ_5_1:len() <= zZ_5_1:reverse():rep(AT % 3 + 2):len() then
                        zZ_20 = zZ_6:WaitForChild("Fish")
                    else
                        zZ_6 = zZ_20:WaitForChild("Fish")
                    end
                    zZ_22 = (zZ_22 + 124) % 168
                end
            else
                local zZ_19_3 = {
                    "yzceg",
                    "yxxv",
                    "ygtlklzmq",
                    "btsbnikghmn",
                    "sutnmbii",
                    "dnnpq",
                    "mtq",
                    "jeoapisuyqv",
                    "gkwjojqiz"
                }
                if zZ_19_3[(zZ_22 * 94 + 21) % 9 + 1] < zZ_19_3[(zZ_22 * 94 + 21) % 9 + 1] then
                    zZ_6 = zZ_12:WaitForChild("GameHandler")
                else
                    zZ_12 = zZ_6:WaitForChild("GameHandler")
                end
                zZ_22 = (zZ_22 + 40) % 168
            end
        elseif zZ_10 <= 9 then
            if zZ_10 <= 8 then
                if zZ_10 <= 7 then
                    local zZ_19_4 = {
                        "kubke",
                        "svq",
                        "jrtkjicdgua",
                        "cze",
                        "cqp",
                        "qiounhk",
                        "smfi",
                        "edkyaq",
                        "znuwxv",
                        "rhjxgfyoyd",
                        "srbit",
                        "rualxbo"
                    }
                    local BS = zZ_22
                    local zZ_5_2 = zZ_19_4[BS % 12 + 1]
                    if zZ_5_2:len() <= zZ_5_2:reverse():rep(BS % 3 + 2):len() then
                        zZ_3 = zZ_6:WaitForChild("PurchaseController")
                    else
                        zZ_6 = zZ_3:WaitForChild("PurchaseController")
                    end
                    zZ_22 = (zZ_22 + 124) % 168
                else
                    local zZ_19_5 = (vector.create((zZ_22 * 7 + 7) % 11 + 1, (zZ_22 * 8 + 5) % 13 + 1, (zZ_22 * 9 + 11) % 17 + 1))
                    local zZ_5_3 = (vector.create((zZ_22 * 3 + 3) % 11 + 1, (zZ_22 * 8 + 12) % 13 + 1, (zZ_22 * 14 + 15) % 17 + 1))
                    local zZ_14_1 = (vector.create((zZ_22 * 6 + 9) % 11 + 1, (zZ_22 * 4 + 3) % 13 + 1, (zZ_22 * 10 + 9) % 17 + 1))
                    rB = (vector.create((zZ_22 * 5 + 7) % 11 + 1, (zZ_22 * 8 + 1) % 13 + 1, (zZ_22 * 3 + 10) % 17 + 1))
                    if vector.dot(vector.cross(zZ_19_5, zZ_5_3), (vector.cross(zZ_14_1, rB))) == vector.dot(zZ_19_5, zZ_14_1) * vector.dot(zZ_5_3, rB) - vector.dot(zZ_19_5, rB) * vector.dot(zZ_5_3, zZ_14_1) then
                        p1 = zZ_20.RF:WaitForChild("CastRequest")
                        zZ_17 = zZ_20.RE:WaitForChild("CastResponse")
                    else
                        zZ_20 = zZ_17.RF:WaitForChild("CastRequest")
                        p1 = zZ_17.RE:WaitForChild("CastResponse")
                    end
                    zZ_22 = (zZ_22 + 19) % 168
                end
            else
                local zZ_19_6 = (vector.create((zZ_22 * 6 + 4) % 11 + 1, (zZ_22 * 6 + 9) % 13 + 1, (zZ_22 * 6 + 15) % 17 + 1))
                local zZ_5_4 = (vector.create((zZ_22 * 2 + 5) % 11 + 1, (zZ_22 * 6 + 11) % 13 + 1, (zZ_22 * 12 + 4) % 17 + 1))
                local BT = vector.dot(zZ_19_6, zZ_5_4)
                if BT * BT <= vector.dot(zZ_19_6, zZ_19_6) * vector.dot(zZ_5_4, zZ_5_4) then
                    pZ = zZ_20.RF:WaitForChild("MinigameResolved")
                    rm = zZ_20.RF:WaitForChild("StartCutSession")
                    ri = zZ_20.RF:WaitForChild("CutFish")
                    RequestRestaurauntData = zZ_20.RF:WaitForChild("RequestRestaurauntData")
                else
                    ri = RequestRestaurauntData.RF:WaitForChild("MinigameResolved")
                    zZ_20 = RequestRestaurauntData.RF:WaitForChild("StartCutSession")
                    rm = RequestRestaurauntData.RF:WaitForChild("CutFish")
                    pZ = RequestRestaurauntData.RF:WaitForChild("RequestRestaurauntData")
                end
                zZ_22 = (zZ_22 + 40) % 168
            end
        elseif zZ_10 <= 10 then
            local zZ_19_7 = {
                "fpfpxjgcs",
                "gzh",
                "stpvinggkm",
                "ilyzcdqaert",
                "vktzce",
                "hkeixqh",
                "ctygcrq",
                "zgxcmjs",
                "qqe"
            }
            local BO = zZ_22
            local zZ_5_5 = zZ_19_7[BO % 9 + 1]
            if zZ_5_5:len() >= zZ_5_5:gsub("(.)", "%1%1", BO % 3 % 2 + 1):len() then
                zZ_20 = StoreFood.RF:WaitForChild("Cook")
                q7 = StoreFood.RE:WaitForChild("StoreFood")
            else
                q7 = zZ_20.RF:WaitForChild("Cook")
                StoreFood = zZ_20.RE:WaitForChild("StoreFood")
            end
            zZ_22 = (zZ_22 + 19) % 168
        else
            local BB = bit32.rrotate(bit32.bxor(bit32.lrotate(zZ_22, 23), string.byte(tostring(StoreFood))), 14)
            if bit32.bxor(bit32.lrotate(bit32.bxor(BB, 3753876643), 26), 2407464562) == bit32.lrotate(BB, 26) then
                LevelUp = zZ_12.RE:WaitForChild("LevelUp")
                qX = zZ_12.RE:WaitForChild("UpgradeTank")
            else
                qX = LevelUp.RE:WaitForChild("LevelUp")
                zZ_12 = LevelUp.RE:WaitForChild("UpgradeTank")
            end
            zZ_22 = (zZ_22 + 61) % 168
        end
    elseif zZ_10 <= 16 then
        if zZ_10 <= 14 then
            if zZ_10 <= 13 then
                if zZ_10 <= 12 then
                    local zZ_19_8 = (vector.create((zZ_22 * 2 + 2) % 11 + 1, (zZ_22 * 9 + 9) % 13 + 1, (zZ_22 * 11 + 3) % 17 + 1))
                    local zZ_5_6 = (vector.create((zZ_22 * 5 + 6) % 11 + 1, (zZ_22 * 6 + 2) % 13 + 1, (zZ_22 * 2 + 6) % 17 + 1))
                    local Bq = vector.cross(zZ_19_8, zZ_5_6)
                    local Br = vector.dot(zZ_19_8, zZ_5_6)
                    if vector.dot(Bq, Bq) + Br * Br == vector.dot(zZ_19_8, zZ_19_8) * vector.dot(zZ_5_6, zZ_5_6) then
                        qT = zZ_3.RF:WaitForChild("BuyRod")
                        EquipRod = zZ_3.RE:WaitForChild("EquipRod")
                        GetPlot = zZ_12.RF:WaitForChild("GetPlot")
                    else
                        zZ_3 = GetPlot.RF:WaitForChild("BuyRod")
                        qT = GetPlot.RE:WaitForChild("EquipRod")
                        zZ_12 = EquipRod.RF:WaitForChild("GetPlot")
                    end
                    zZ_22 = (zZ_22 + 82) % 168
                else
                    local AY = bit32.rrotate(bit32.bxor(bit32.lrotate(zZ_22, 18), string.byte(tostring(zZ_20))), 21)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(AY, 4144785825), 2272218352), (bit32.bxor(bit32.band(AY, 150181470), 146506392))), 2272218352), 146506392) == AY then
                        CookingConfig = require(qP:WaitForChild("Modules"):WaitForChild("CookingConfig"))
                    else
                        qP = require(CookingConfig:WaitForChild("Modules"):WaitForChild("CookingConfig"))
                    end
                    zZ_22 = (zZ_22 + 19) % 168
                end
            else
                if zZ_22 * 14128057 + 5 + 7 <= zZ_22 * 14128057 + 5 + 7 + 2 then
                    zZ_8 = require(qP:WaitForChild("Shared"):WaitForChild("RodData"))[1]
                else
                    qP = require(zZ_8:WaitForChild("Shared"):WaitForChild("RodData"))[1]
                end
                zZ_22 = (zZ_22 + 145) % 168
            end
        elseif zZ_10 <= 15 then
            if RequestRestaurauntData and not zZ_17 and (not GetPlot or zZ_1) or (not zZ_1 and not zZ_1 or zZ_17 and not qS) or ((zZ_1 or RequestRestaurauntData) and (RequestRestaurauntData and zZ_17) or RequestRestaurauntData and not GetPlot and (not zZ_17 or zZ_1)) or (not GetPlot or GetPlot or (GetPlot or GetPlot)) and ((qS or GetPlot) and (zZ_17 and GetPlot)) and ((GetPlot or zZ_1 or (not RequestRestaurauntData or qS)) and (not GetPlot or not zZ_17 or (zZ_1 or RequestRestaurauntData))) or not (RequestRestaurauntData and not zZ_17 and (not GetPlot or zZ_1) or (not zZ_1 and not zZ_1 or zZ_17 and not qS) or ((zZ_1 or RequestRestaurauntData) and (RequestRestaurauntData and zZ_17) or RequestRestaurauntData and not GetPlot and (not zZ_17 or zZ_1)) or (not GetPlot or GetPlot or (GetPlot or GetPlot)) and ((qS or GetPlot) and (zZ_17 and GetPlot)) and ((GetPlot or zZ_1 or (not RequestRestaurauntData or qS)) and (not GetPlot or not zZ_17 or (zZ_1 or RequestRestaurauntData)))) then
                ZoneIndex = require(qP:WaitForChild("Shared"):WaitForChild("ZoneIndex"))
            else
                qP = require(ZoneIndex:WaitForChild("Shared"):WaitForChild("ZoneIndex"))
            end
            zZ_22 = (zZ_22 + 145) % 168
        else
            local zZ_19_9 = (vector.create((zZ_22 * 2 + 1) % 11 + 1, (zZ_22 * 9 + 9) % 13 + 1, (zZ_22 * 2 + 9) % 17 + 1))
            local zZ_5_7 = (vector.create((zZ_22 * 2 + 4) % 11 + 1, (zZ_22 * 4 + 5) % 13 + 1, (zZ_22 * 12 + 6) % 17 + 1))
            local zZ_14_2 = (vector.create((zZ_22 * 3 + 7) % 5 + 1, (zZ_22 * 5 + 7) % 7 + 1, (zZ_22 * 5 + 1) % 9 + 1))
            if math.abs((vector.angle(zZ_19_9, zZ_5_7, zZ_14_2))) - math.abs((vector.angle(zZ_5_7, zZ_19_9, zZ_14_2))) == 0 then
                qn = {
                    "Nigiri",
                    "Sushi",
                    "Sashimi",
                    "Takoyaki",
                    "Tempura Salmon",
                    "Tuna Croquette",
                    "Grilled Shark",
                    "Soy Glazed Eel",
                    "BBQ Angler Fish",
                    "Grilled Snapper",
                    "Shrimp Tempura"
                }
            else
                qf = {
                    "Nigiri",
                    "Grilled Shark",
                    "BBQ Angler Fish",
                    "Sushi",
                    "Takoyaki",
                    "Soy Glazed Eel",
                    "Tempura Salmon",
                    "Grilled Snapper",
                    "Sashimi",
                    "Shrimp Tempura",
                    "Tuna Croquette"
                }
            end
            zZ_22 = (zZ_22 + 166) % 168
        end
    elseif zZ_10 <= 19 then
        if zZ_10 <= 18 then
            if zZ_10 <= 17 then
                local zZ_19_10 = (vector.create((zZ_22 * 4 + 6) % 11 + 1, (zZ_22 * 10 + 3) % 13 + 1, (zZ_22 * 8 + 11) % 17 + 1))
                local zZ_5_8 = (vector.create((zZ_22 * 1 + 7) % 11 + 1, (zZ_22 * 8 + 5) % 13 + 1, (zZ_22 * 7 + 7) % 17 + 1))
                local zZ_14_3 = (vector.create((zZ_22 * 2 + 7) % 5 + 1, (zZ_22 * 3 + 5) % 7 + 1, (zZ_22 * 4 + 3) % 9 + 1))
                if math.abs((vector.angle(zZ_19_10, zZ_5_8, zZ_14_3))) - math.abs((vector.angle(zZ_5_8, zZ_19_10, zZ_14_3))) == 0 then
                    zZ_1 = { "Auto" }
                else
                    zZ_6 = { "Auto" }
                end
                zZ_22 = (zZ_22 + 82) % 168
            else
                local zZ_19_11 = (vector.create((zZ_22 * 5 + 9) % 11 + 1, (zZ_22 * 1 + 5) % 13 + 1, (zZ_22 * 10 + 6) % 17 + 1))
                local AL = vector.floor(zZ_19_11) + vector.ceil(zZ_19_11 * -1)
                if vector.dot(AL, AL) == 0 then
                    q4 = "Fishing Chef"
                else
                    zZ_20 = "Fishing Chef"
                end
                zZ_22 = (zZ_22 + 19) % 168
            end
        else
            local zZ_19_12 = (vector.create((zZ_22 * 4 + 8) % 11 + 1, (zZ_22 * 10 + 10) % 13 + 1, (zZ_22 * 13 + 12) % 17 + 1))
            local zZ_5_9 = (vector.create((zZ_22 * 5 + 4) % 11 + 1, (zZ_22 * 8 + 9) % 13 + 1, (zZ_22 * 14 + 4) % 17 + 1))
            local A7 = vector.cross(zZ_19_12, zZ_5_9)
            local A8 = vector.dot(zZ_19_12, zZ_5_9)
            if vector.dot(A7, A7) + A8 * A8 == vector.dot(zZ_19_12, zZ_19_12) * vector.dot(zZ_5_9, zZ_5_9) + 3 then
                qW = "https://discord.gg/ehKVq7pf7v"
                qS = "https://rscripts.net/@Ouroboros"
                q0 = "https://ouroboros-hub-rbx.web.app/"
            else
                q0 = "https://discord.gg/ehKVq7pf7v"
                qW = "https://rscripts.net/@Ouroboros"
                qS = "https://ouroboros-hub-rbx.web.app/"
            end
            zZ_22 = (zZ_22 + 103) % 168
        end
    elseif zZ_10 <= 20 then
        if (ZoneIndex and zZ_12 or (LevelUp or not ZoneIndex)) and ((not qi or qi) and (not zZ_12 and not LevelUp)) or not ((ZoneIndex and zZ_12 or (LevelUp or not ZoneIndex)) and ((not qi or qi) and (not zZ_12 and not LevelUp))) then
            qM = 0.9
            qI = 4.5
            qC = 1.2
            qx = 12
            qs = 4
        else
            qC = 0.9
            qM = 4.5
            qI = 1.2
            qs = 12
            qx = 4
        end
        zZ_22 = (zZ_22 + 124) % 168
    else
        if zZ_22 * 60199857 + 6 + 5 <= zZ_22 * 60199857 + 6 + 5 + 1 then
            qm = 1.5
            qi = 0.5
        else
            qi = 1.5
            qm = 0.5
        end
        zZ_22 = (zZ_22 + 61) % 168
    end
until (zZ_22 * 89 + 118) % 168 == 4
for i, v in ipairs(qn) do
    zZ_1[#zZ_1 + 1] = v
end
p7 = {}
zZ_3 = {}
for i, v in ipairs(ZoneIndex._ORDER) do
    zZ_12 = ZoneIndex[v]
    zZ_20 = type(zZ_12) == "table" and type(zZ_12.name) == "string" and not string.find(v, "DISABLED", 1, true)
    if zZ_20 then
        zZ_3[#zZ_3 + 1] = zZ_12.name
        p7[zZ_12.name] = v
    end
end
p0 = {}
for i, v in ipairs(zZ_8) do
    zZ_12 = type(v) == "table" and v.Category == "Shop" and type(v.Name) == "string" and type(v.Price) == "number" and v.Price > 0
    if zZ_12 then
        p0[#p0 + 1] = v
    end
end
Library, zZ_6, qU = nil, nil, nil
zZ_12 = 6
repeat
    zZ_15 = {
        "rpofdrkof",
        "dgkbva",
        "tonjsbdo",
        "ddwsdyzryk",
        "qnliiv",
        "umogfp",
        "cefjiydeqx",
        "urzgpebgwec",
        "utetx",
        "yhwrd",
        "xayedjyf"
    }
    local AZ = zZ_12
    zZ_22 = zZ_15[AZ % 11 + 1]
    if zZ_22:len() <= zZ_22:reverse():rep(AZ % 3 + 2):len() then
        table.sort(p0, fn233)
        Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
        zZ_6 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
        qU = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    else
        table.sort(Library, fn233)
        p0 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
        loadstring(game:HttpGet(p0 .. "Library.lua"))()
        qU = loadstring(game:HttpGet(p0 .. "addons/ThemeManager.lua"))()
        zZ_6 = loadstring(game:HttpGet(p0 .. "addons/SaveManager.lua"))()
    end
    zZ_12 = (zZ_12 + 3) % 8
until (zZ_12 * 5 + 4) % 8 == 1
if p6 then
    p6.__OuroborosFishingChefLib = Library
end
Toggles, Options, qF, qy, re, qv, qg, p4 = nil, nil, nil, nil, nil, nil, nil, nil
Toggles = Library.Toggles
Options = Library.Options
qF = {}
qy = {
    fishing = false,
    cooking = false,
    serving = false,
    lastFeedAt = 0,
    lastBuyAt = 0,
    lastStallAt = 0,
    lastTankAt = 0,
    castSpot = nil,
    pendingBite = nil,
    stallLevel = 1
}
qv = fn112
qg = fn380
p4 = fn41
zZ_12 = fn768
zZ_15 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = q0, Copyable = true }, "|", q4 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
zZ_15:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Radius = 24, Transparency = 0.3 })
re = {
    Info = zZ_15:AddTab("Info", "info"),
    Main = zZ_15:AddTab("Main", "fish"),
    Player = zZ_15:AddTab("Player", "person-standing"),
    Settings = zZ_15:AddTab("Settings", "settings")
}
zZ_12(re.Main)
zZ_12(re.Player)
zZ_12(re.Settings)
zZ_22 = re.Main:AddLeftGroupbox("Farm", "utensils")
zZ_22:AddToggle("AutoFish", { Text = "Auto Fish", Default = false })
zZ_12 = zZ_3[1] or "Starting Dock"
qY, qG, qk, p5, rn, qZ, qo, p2, rh, qQ, qd, p_, rc, qD, qa, qj, q8, qz, qb, qh, qq, p8, ra, qR, rj, rk, qc, rf, qp, qB, rl, qt = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
zZ_22:AddDropdown("FishLocation", { Text = "Fish Location", Values = zZ_3, Default = zZ_12 })
zZ_22:AddDivider("Kitchen")
zZ_22:AddToggle("AutoCook", { Text = "Auto Cook", Default = false })
zZ_22:AddDropdown("CookRecipe", { Text = "Cook Recipe", Values = zZ_1, Default = "Auto" })
zZ_22:AddToggle("AutoServe", { Text = "Auto Serve", Default = false })
Options.FishLocation:OnChanged(fn137)
local zZ_19_13 = re.Main:AddRightGroupbox("Upgrades", "arrow-up")
zZ_19_13:AddToggle("AutoUpgradeStall", { Text = "Auto Upgrade Stall", Default = false })
zZ_19_13:AddToggle("AutoUpgradeTank", { Text = "Auto Upgrade Fish Tank", Default = false })
zZ_19_13:AddToggle("AutoBuyRod", { Text = "Auto Buy Rod", Default = false })
qY = fn596
qG = fn626
qk = fn141
p5 = fn839
rn = fn667
qZ = function()
    local sz
    sz = nil
    local sA_1, sA_2
    sA_1, sz = pcall(require, qP.Packages.Knit)
    local sB = not sz
    local sB_1
    if not sA_1 or sB then
        return nil
    end
    sA_2, sB_1 = pcall(function()
        return sz.GetController("DataController")
    end)
    if sA_2 then
        return sB_1
    end
    return nil
end
qo = function()
    local sE
    sE = nil
    local sG_1
    local sF_1
    sE = qZ()
    if not sE then
        return {}
    end
    sF_1, sG_1 = pcall(function()
        return sE:GetData("Fish")
    end)
    local sH = sF_1 and type(sG_1) == "table"
    if sH then
        return sG_1
    end
    return {}
end
p2 = function()
    local sM
    sM = nil
    local sO_1
    local sN_1
    sM = qZ()
    if not sM then
        return {}
    end
    sN_1, sO_1 = pcall(function()
        return sM:GetData("Rods")
    end)
    local sP = sN_1 and type(sO_1) == "table"
    if sP then
        return sO_1
    end
    return {}
end
rh = fn138
qQ = fn430
qd = fn552
p_ = fn490
rc = fn535
qD = fn540
qa = fn800
qj = fn174
q8 = function(c1)
    local t1 = qG()
    if not t1 or not c1 then
        return false
    elseif c1.Parent == ql.Character then
        return true
    else
        pcall(function()
            t1:UnequipTools()
        end)
        task.wait(0.05)
        pcall(function()
            t1:EquipTool(c1)
        end)
        task.wait(0.1)
        return c1.Parent == ql.Character
    end
end
qz = fn37
qb = function(de)
    local t9
    local ua = ZoneIndex[de]
    local ua_2, ua_4, ua_6
    if type(ua) ~= "table" then
        return nil, nil
    end
    local Zones = qr:FindFirstChild("Zones")
    local ub_1, ub_3, ub_5
    local uc = Zones
    local uc_3
    if uc then
        local ud = (Zones:FindFirstChild(ua.name))
        if not ud then
            local ue = ua.folderName and Zones:FindFirstChild(ua.folderName)
            ud = ue
        end
        uc = ud
    end
    local t8 = uc
    if t8 then
        local BasePart = t8:FindFirstChildWhichIsA("BasePart", true)
        if BasePart then
            return BasePart.Position, BasePart
        end
        ua_2, ub_1 = pcall(function()
            return t8:GetPivot().Position
        end)
        if ua_2 and ub_1 then
            return ub_1, nil
        elseif de == "ice_biome" then
            local Map = qr:FindFirstChild("Map")
            local ub_2 = Map and Map:FindFirstChild("IceBiome")
            t9 = ub_2
            if t9 then
                ua_4, ub_3 = pcall(function()
                    return t9:GetPivot().Position
                end)
                if uc_3 then
                    return ub_3, nil
                end
                return nil, nil
            end
            return nil, nil
        else
            return nil, nil
        end
    elseif de == "ice_biome" then
        local Map = qr:FindFirstChild("Map")
        local ub_4 = Map and Map:FindFirstChild("IceBiome")
        t9 = ub_4
        if t9 then
            ua_6, ub_5 = pcall(function()
                return t9:GetPivot().Position
            end)
            uc_3 = ua_6 and ub_5
            if uc_3 then
                return ub_5, nil
            end
            return nil, nil
        end
        return nil, nil
    else
        return nil, nil
    end
end
qh = fn508
qq = fn683
p8 = fn72
qv(zZ_17.OnClientEvent:Connect(onOnClientEvent))
ra = fn232
qR = function()
    local uL, uM
    if qy.fishing or qy.cooking or qy.serving then
        return false
    end
    uL = ra()
    if uL and uL.InProgress then
        return false
    end
    qy.fishing = true
    uM = false
    pcall(function()
        qq()
        local uI = qj()
        local uJ = not uI or not q8(uI)
        if uJ then
            return
        end
        qy.pendingBite = nil
        local uI_1 = pcall(function()
            p1:InvokeServer(qM)
        end)
        if not uI_1 then
            return
        end
        local uI_2 = p8(qx)
        if not uI_2 then
            return
        end
        task.wait(qI + qC)
        if Library.Unloaded then
            return
        end
        uL = ra()
        if uL and uL.InProgress then
            local uI_4 = pcall(function()
                uL:End(true)
            end)
            uM = uI_4
        else
            local uI_5 = pcall(function()
                pZ:InvokeServer(true)
            end)
            uM = uI_5
        end
        task.wait(0.35)
    end)
    qy.fishing = false
    return uM
end
rj = function()
    local va, vb, vc
    local vd = qy.fishing or qy.cooking
    local vh = if vd then 1 else 0
    local vf = 50 * vh + 1733 * (1 - vh)
    local vg = 1249 * vh + 1741 * (1 - vh)
    if not ((vf * 2047 + vg * 3857 + vf * vg) % 16777213 == 4982193) then
        vd = qy.serving
    end
    if vd then
        return false
    end
    qQ()
    vb = qa()
    if not vb then
        return false
    end
    va = qD(vb)
    if not va then
        return false
    end
    qy.cooking = true
    vc = false
    pcall(function()
        local uP
        local uS_1, uS_2
        local uR_1, uR_2
        local uQ = qG()
        if uQ then
            pcall(function()
                uQ:UnequipTools()
            end)
        end
        rm:InvokeServer()
        task.wait(0.15)
        uR_1, uS_1 = pcall(function()
            return ri:InvokeServer(va.ID, qs)
        end)
        if not uR_1 or not uS_1 then
            return
        end
        task.wait(0.25)
        uR_2, uS_2 = pcall(function()
            return RequestRestaurauntData:InvokeServer()
        end)
        local uT_1 = not uR_2 or type(uS_2) ~= "table"
        if uT_1 then
            return
        end
        local uR_3 = p_(va.Name)
        uP = nil
        for i, v in ipairs(uS_2) do
            local uT_2 = type(v) == "table" and v.Name == "Fish Filet" and v.CF == uR_3 and v.Data == qs
            if uT_2 then
                uP = v
                break
            end
        end
        if not uP then
            for i, v in ipairs(uS_2) do
                local uS_3 = type(v) == "table" and v.Name == "Fish Filet" and v.CF == uR_3
                if uS_3 then
                    uP = v
                    break
                end
            end
        end
        if not uP then
            return
        end
        local uR_4 = pcall(function()
            q7:InvokeServer(vb, uP, qs)
        end)
        vc = uR_4
        task.wait(0.4)
    end)
    qy.cooking = false
    return vc
end
rk = function(fJ)
    local function vm(fL)
        if not fL:IsA("Tool") then
            return false
        end
        local vi = fL:GetAttribute("Food") == nil and fL:GetAttribute("IsDish") ~= true
        if vi then
            return false
        end
        local attr = fL:GetAttribute("Plate")
        local vj = attr == fJ
        local vk = type(attr) == "string" and vj
        if vk then
            return true
        end
        local vi_2 = type(fJ) == "string" and string.find(fL.Name, fJ, 1, true)
        if vi_2 then
            return true
        end
        return false
    end
    local Character = ql.Character
    if Character then
        for i, child in Character:GetChildren() do
            if vm(child) then
                return child
            end
        end
    end
    local Backpack = ql:FindFirstChild("Backpack")
    if Backpack then
        for i, child in Backpack:GetChildren() do
            if vm(child) then
                return child
            end
        end
    end
    return nil
end
qc = fn514
rf = fn353
qp = function()
    local v3, v4, v5
    local v6 = qy.fishing or qy.cooking or qy.serving
    local v6_1
    if v6 then
        return false
    elseif tick() - qy.lastFeedAt < qm then
        return false
    else
        v5, v6_1 = qc()
        if not v5 or not v6_1 then
            return false
        end
        v3 = rk(v6_1)
        if not v3 then
            return false
        end
        qy.serving = true
        v4 = false
        pcall(function()
            rf()
            if not q8(v3) then
                return
            end
            v5:SetAttribute("PendingFeed", true)
            StoreFood:FireServer(v5)
            qy.lastFeedAt = tick()
            v4 = true
            task.delay(qm, function()
                local vY = v5 and v5.Parent and not v5:GetAttribute("PlateDelivered")
                if vY then
                    v5:SetAttribute("PendingFeed", nil)
                end
            end)
            task.wait(0.45)
        end)
        qy.serving = false
        return v4
    end
end
qB = fn84
rl = fn207
qt = function()
    local wi_1
    local wn = if tick() - qy.lastBuyAt < qi then 1 else 0
    if wn == 1 then
        return false
    end
    local wg = p5()
    for i, v in ipairs(p0) do
        local wt = v
        local wh = not rh(wt.Name) and wg >= wt.Price
        local wh_1
        if wh then
            qy.lastBuyAt = tick()
            wh_1, wi_1 = pcall(function()
                return qT:InvokeServer(wt.Name)
            end)
            if wh_1 and wi_1 then
                pcall(function()
                    EquipRod:FireServer(wt.Name)
                end)
                task.wait(0.4)
                return true
            end
            task.wait(qi)
            return false
        end
    end
    return false
end
task.spawn(autoUpgradeStallLoop)
local function zZ_5_10()
    local xt
    local xr
    local xn
    local xu
    local xs
    local xo
    xn = nil
    xo = nil
    xr = nil
    xs = nil
    xt = nil
    xu = nil
    local Label3, xp, Label, xv, xw, Label2
    xu = function(hA, hB)
        return string.format('<font color="%s">%s</font>', hB, hA)
    end
    xw = function(hD, hE, hF)
        return string.format("<b>%s</b> %s %s", hD, xu("-", "#5a6070"), xu(hE, hF))
    end
    xs = "#e8a34d"
    xt = "#7fd47f"
    xn = "#e05a5a"
    local xz = "#8b93a3"
    local function xA()
        local wB = hookfunction ~= nil
        local wC = hookmetamethod ~= nil
        local wD = getrawmetatable ~= nil
        local wE = setrawmetatable ~= nil
        local wF = getgc ~= nil
        local wG = getgenv ~= nil
        local wH = getreg ~= nil
        local wI = getconnections ~= nil
        local wJ = firesignal ~= nil
        local wK = getcallbackvalue ~= nil
        local wL = setclipboard ~= nil
        local wM = getcustomasset ~= nil
        local wN = getnamecallmethod ~= nil
        local wO = isexecutorclosure ~= nil
        local wP = fireproximityprompt ~= nil
        local wQ = firetouchinterest ~= nil
        local wR = WebSocket ~= nil
        local wS = readfile ~= nil
        local wT = writefile ~= nil
        local wU = request
        local w4 = if wU then 1 else 0
        local w2 = 1227 * w4 + 1429 * (1 - w4)
        local w3 = 4080 * w4 + 1353 * (1 - w4)
        if not ((w2 * 78 + w3 * 1970 + w2 * w3) % 16777213 == 13139466) then
            wU = http_request
        end
        local wV = wU ~= nil
        local wX = (debug and debug.getupvalues) ~= nil
        local wZ = (debug and debug.setupvalue) ~= nil
        local w_ = 0
        local w0 = { wB, wC, wD, wE, wF, wG, wH, wI, wJ, wK, wL, wM, wN, wO, wP, wQ, wR, wS, wT, wV, wX, wZ }
        for i, v in ipairs(w0) do
            if v then
                w_ += 1
            end
        end
        local wB_1 = w_ / #w0
        if wB_1 >= 0.9 then
            return xu("Full Support", xt)
        elseif wB_1 >= 0.6 then
            return xu("Half Support", xs)
        else
            return xu("Low Support", xn)
        end
    end
    xo = "Unknown"
    pcall(function()
        local xc_1
        local xb_1
        if identifyexecutor then
            xc_1, xb_1 = identifyexecutor()
            local xd = xc_1 ~= ""
            local xe = type(xc_1) == "string" and xd
            if xe then
                local xd_1 = type(xb_1) == "string" and xb_1 ~= "" and xc_1 .. " " .. xb_1
                xo = xd_1 or xc_1
            end
        end
    end)
    local xB = xA()
    xr = os.clock()
    xv = function()
        local xg = math.floor(os.clock() - xr)
        if xg < 60 then
            return xg .. "s"
        elseif xg < 3600 then
            return string.format("%dm %ds", xg // 60, xg % 60)
        else
            return string.format("%dh %dm", xg // 3600, xg % 3600 // 60)
        end
    end
    local UserGroup = re.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = ql, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(xw("User", ql.DisplayName .. " @" .. ql.Name, xt), true)
    UserGroup:AddLabel(xw("UserId", tostring(ql.UserId), "#6ec1ff"), true)
    UserGroup:AddLabel(xw("Executor", xo .. "  " .. xB, xt), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(xw("Session", xv(), xs), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            qg(ql.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            qg("https://www.roblox.com/users/" .. tostring(ql.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = re.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(xw("Game", q4, "#6ec1ff"), true)
    Label2 = SessionGroup:AddLabel(xw("Players", "0/0", xt), true)
    xp = tostring(game.JobId)
    local xy = #xp > 18 and string.sub(xp, 1, 18) .. "..."
    local xB_1 = xy
    local xF = if xB_1 then 1 else 0
    local xD = 218 * xF + 4008 * (1 - xF)
    local xE = 1206 * xF + 2022 * (1 - xF)
    if not ((xD * 1077 + xE * 1852 + xD * xE) % 16777213 == 2731206) then
        xB_1 = xp
    end
    local xy_1 = xB_1
    SessionGroup:AddLabel(xw("Job", xy_1, xz), true)
    Label = SessionGroup:AddLabel(xw("Ping", "0 ms", xs), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            qH:Teleport(game.PlaceId, ql)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            qg(xp, "Copied Job ID")
        end
    })
    task.spawn(function()
        local xj_1
        local xi_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(xw("Session", xv(), xs))
            Label2:SetText(xw("Players", #qV:GetPlayers() .. "/" .. tostring(qV.MaxPlayers), xt))
            xi_1, xj_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local xi_2 = xi_1 and xj_1 .. " ms" or "n/a"
            Label:SetText(xw("Ping", xi_2, xs))
        end
    end)
    local SocialsGroup = re.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = p4 })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            qg(qW, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            qg(qS, "Copied website link")
        end
    })
end
zZ_10 = function()
    local connection
    local MovementGroup = re.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = re.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    qv(qL.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = ql.Character
            if Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    local xG_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if xG_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end))
    qv(qA.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local xO_1 = qG()
            if xO_1 then
                xO_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end))
    local jg = qr.CurrentCamera
    qv(qL.RenderStepped:Connect(function(jh)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local xQ_1 = qG()
            if xQ_1 then
                xQ_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local xQ_3 = qY()
            local xR = qG()
            if xQ_3 and xR then
                xR.PlatformStand = true
                local xR_1 = Vector3.zero
                local xS_1 = qr.CurrentCamera
                local xW = if xS_1 then 1 else 0
                local xU = 1465 * xW + 462 * (1 - xW)
                local xV = 3849 * xW + 899 * (1 - xW)
                if not ((xU * 259 + xV * 2770 + xU * xV) % 16777213 == 16679950) then
                    xS_1 = jg
                end
                jg = xS_1
                if qA:IsKeyDown(Enum.KeyCode.W) then
                    xR_1 += jg.CFrame.LookVector
                end
                if qA:IsKeyDown(Enum.KeyCode.S) then
                    xR_1 -= jg.CFrame.LookVector
                end
                if qA:IsKeyDown(Enum.KeyCode.A) then
                    xR_1 -= jg.CFrame.RightVector
                end
                if qA:IsKeyDown(Enum.KeyCode.D) then
                    xR_1 += jg.CFrame.RightVector
                end
                if qA:IsKeyDown(Enum.KeyCode.Space) then
                    xR_1 += Vector3.new(0, 1, 0)
                end
                if qA:IsKeyDown(Enum.KeyCode.LeftControl) then
                    xR_1 -= Vector3.new(0, 1, 0)
                end
                xQ_3.AssemblyLinearVelocity = Vector3.zero
                if xR_1.Magnitude > 0 then
                    xQ_3.CFrame = xQ_3.CFrame + xR_1.Unit * Options.FlySpeed.Value * jh
                end
            end
        end
    end))
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local xX = qG()
            if xX then
                xX.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local xZ = qG()
            if xZ then
                xZ.WalkSpeed = 16
            end
        end
    end)
    local function jE(jF)
        local x6 = if not jF:IsA("ProximityPrompt") then 1 else 0
        if x6 == 1 then
            return
        end
        jF.HoldDuration = 0
        jF.MaxActivationDistance = 50
        jF.RequiresLineOfSight = false
    end
    connection = nil
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in ipairs(qr:GetDescendants()) do
                pcall(jE, descendant)
            end
            connection = qr.DescendantAdded:Connect(function(jN)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(jE, jN)
                end
            end)
            qv(connection)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    Library:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
    end)
end
zZ_20 = function()
    local MenuGroup = re.Settings:AddLeftGroupbox("Menu", "logs")
    local jV = 0
    local jW = tick()
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = MenuGroup:AddLabel("AFK triggers: 0")
    local function jY()
        local CurrentCamera = qr.CurrentCamera
        if not CurrentCamera then
            return
        end
        qw:CaptureController()
        qw:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        jV += 1
        jW = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. jV)
        end)
    end
    local connection2 = ql.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(jY)
        end
    end)
    qv(connection2)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local ym = Toggles.AntiAfk.Value and tick() - jW >= 60
            if ym then
                pcall(jY)
            end
        end
    end)
    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3D", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FpsBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local function kl(km)
        pcall(function()
            q6:SetGameplayPausedNotificationEnabled(not km)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = q9:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not km
            end
        end)
        if not km then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(ql, "GameplayPaused", false)
            else
                ql.GameplayPaused = false
            end
        end)
    end
    Toggles.AntiGameplayPause:OnChanged(function()
        kl(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                kl(true)
            end
        end
    end)
    local kE = false
    local function kF()
        local JobId, PlaceId
        if kE then
            return
        end
        kE = true
        PlaceId, JobId = game.PlaceId, game.JobId
        local yv = pcall(function()
            qH:TeleportToPlaceInstance(PlaceId, JobId, ql)
        end)
        if not yv then
            pcall(function()
                qH:Teleport(PlaceId, ql)
            end)
        end
    end
    task.spawn(function()
        local RobloxPromptGui = q9:WaitForChild("RobloxPromptGui", 30)
        local yA = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        if not yA then
            return
        end
        qv(yA.ChildAdded:Connect(function(kY)
            if Library.Unloaded then
                return
            end
            if Toggles.AutoReconnect.Value and kY.Name == "ErrorPrompt" then
                kF()
            end
        end))
    end)
    qv(qH.TeleportInitFailed:Connect(function()
        if Toggles.AutoReconnect.Value then
            kE = false
            kF()
        end
    end))
    Toggles.Disable3D:OnChanged(function()
        pcall(function()
            qL:Set3dRenderingEnabled(not Toggles.Disable3D.Value)
        end)
    end)
    local ld = {
        ParticleEmitter = true,
        Trail = true,
        Smoke = true,
        Fire = true,
        Sparkles = true,
        Explosion = true,
        Beam = true
    }
    local function le(lf)
        if ld[lf.ClassName] then
            pcall(function()
                lf.Enabled = false
            end)
        end
    end
    local connection
    Toggles.FpsBoost:OnChanged(function()
        if Toggles.FpsBoost.Value then
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
            end)
            pcall(function()
                q_.GlobalShadows = false
            end)
            pcall(function()
                q_.FogEnd = 9000000000
            end)
            for i, descendant in ipairs(qr:GetDescendants()) do
                pcall(le, descendant)
            end
            connection = qr.DescendantAdded:Connect(function(lu)
                if Toggles.FpsBoost.Value then
                    pcall(le, lu)
                end
            end)
            qv(connection)
        else
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic
            end)
            pcall(function()
                q_.GlobalShadows = true
            end)
            if connection then
                connection:Disconnect()
                connection = nil
            end
        end
    end)
    local ScriptGroup = re.Settings:AddLeftGroupbox("Script", "terminal")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
    Library:OnUnload(function()
        if connection2 then
            connection2:Disconnect()
        end
        kl(false)
        pcall(function()
            qL:Set3dRenderingEnabled(true)
        end)
        if connection then
            connection:Disconnect()
        end
        for k, v in qF do
            local yT = v
            pcall(function()
                yT:Disconnect()
            end)
        end
        table.clear(qF)
        local yM = qG()
        if yM then
            yM.PlatformStand = false
            yM.WalkSpeed = 16
        end
        if p6 then
            p6.__OuroborosFishingChefLib = nil
        end
    end)
end
zZ_15 = function(lQ)
    local function lR(lS, lT)
        local yV_1 = (lS == "Toggle" and Toggles or Options)[lT]
        local yU_2 = type(yV_1) == "table" and yV_1.Type == lS
        local yU_3 = yU_2 and yV_1
        local y_ = if yU_3 then 1 else 0
        local yY = 26 * y_ + 265 * (1 - y_)
        local yZ = 394 * y_ + 1151 * (1 - y_)
        if not ((yY * 1641 + yZ * 1900 + yY * yZ) % 16777213 == 801510) then
            yU_3 = nil
        end
        return yU_3
    end
    local function l0(l1, l2)
        local Type = l2.Type
        if Type == "Toggle" then
            return { idx = l1, type = "Toggle", value = l2.Value == true }
        elseif Type == "Slider" then
            return { idx = l1, type = "Slider", value = tostring(l2.Value) }
        elseif Type == "Dropdown" then
            return { idx = l1, type = "Dropdown", multi = l2.Multi == true, value = l2.Value }
        elseif Type == "Input" then
            local y1 = l2.Value
            local y5 = if y1 then 1 else 0
            local y3 = 2443 * y5 + 3374 * (1 - y5)
            local y4 = 3097 * y5 + 3160 * (1 - y5)
            if not ((y3 * 3713 + y4 * 3245 + y3 * y4) % 16777213 == 9909382) then
                y1 = ""
            end
            return { idx = l1, type = "Input", text = tostring(y1) }
        elseif Type == "ColorPicker" then
            return { idx = l1, type = "ColorPicker", value = l2.Value:ToHex(), transparency = l2.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = l1,
                type = "KeyPicker",
                mode = l2.Mode,
                key = l2.Value,
                modifiers = l2.Modifiers,
                toggled = l2.Toggled
            }
        else
            return nil
        end
    end
    local function l4()
        local za = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local zb = type(v) == "table" and type(v.Type) == "string" and not qU.Ignore[k]
                if zb then
                    local zb_1 = l0(k, v)
                    if zb_1 then
                        za[#za + 1] = zb_1
                    end
                end
            end
        end
        table.sort(za, function(me, mf)
            if me.type ~= mf.type then
                return me.type < mf.type
            end
            return me.idx < mf.idx
        end)
        return { objects = za }
    end
    local function mg(mh)
        local zu
        zu = nil
        local zv = type(mh) ~= "table" or type(mh.idx) ~= "string" or type(mh.type) ~= "string" or qU.Ignore[mh.idx]
        if zv then
            return false
        end
        zu = lR(mh.type, mh.idx)
        if not zu then
            return false
        end
        local zv_1 = pcall(function()
            if mh.type == "Input" then
                if type(mh.text) ~= "string" then
                    return
                end
                zu:SetValue(mh.text)
            elseif mh.type == "ColorPicker" then
                zu:SetValueRGB(Color3.fromHex(mh.value), mh.transparency)
            elseif mh.type == "KeyPicker" then
                zu:SetValue({ mh.key, mh.mode, mh.modifiers })
                if mh.mode == "Toggle" and mh.toggled ~= nil then
                    zu.Toggled = mh.toggled
                    zu:Update()
                end
            else
                zu:SetValue(mh.value)
            end
        end)
        return zv_1
    end
    lQ:AddDivider()
    lQ:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    lQ:AddButton("Export Config to Clipboard", function()
        local zB_1
        local zA_1
        zA_1, zB_1 = pcall(q3.JSONEncode, q3, l4())
        if not zA_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local zA_2 = setclipboard or toclipboard
        local zA_3 = type(zA_2) ~= "function" or not pcall(zA_2, zB_1)
        if zA_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    lQ:AddButton("Import Config from Clipboard Text", function()
        local zJ_1
        local zH = Options.SaveManager_ImportSource.Value
        local zH_1
        local zN = if zH then 1 else 0
        local zL = 2105 * zN + 1584 * (1 - zN)
        local zM = 2749 * zN + 2922 * (1 - zN)
        if not ((zL * 3564 + zM * 2292 + zL * zM) % 16777213 == 2812360) then
            zH = ""
        end
        local zI = tostring(zH):match("^%s*(.-)%s*$")
        if zI == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        zH_1, zJ_1 = pcall(q3.JSONDecode, q3, zI)
        local zI_1 = not zH_1 or type(zJ_1) ~= "table"
        local zQ = if zI_1 then 1 else 0
        local zO = 1887 * zQ + 3725 * (1 - zQ)
        local zP = 1296 * zQ + 3260 * (1 - zQ)
        if not ((zO * 3524 + zP * 3715 + zO * zP) % 16777213 == 13909980) then
            zI_1 = type(zJ_1.objects) ~= "table"
        end
        if zI_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local zH_2 = 0
        for i, v in ipairs(zJ_1.objects) do
            if mg(v) then
                zH_2 += 1
            end
        end
        if zH_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local zJ_2 = zH_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(zH_2, zJ_2), 6)
    end)
end
zZ_5_10()
zZ_10()
zZ_20()
zZ_6:SetLibrary(Library)
zZ_6:SetFolder("OuroborosHub")
zZ_6:SaveDefault("Evil Hello Kitty")
zZ_6:ApplyToTab(re.Settings)
zZ_6:LoadDefault()
qU:SetLibrary(Library)
qU:IgnoreThemeSettings()
qU:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
qU:SetFolder("OuroborosHub/FishingChef")
local zZ_14_4 = qU:BuildConfigSection(re.Settings)
zZ_15(zZ_14_4)
qU:LoadAutoloadConfig()
rB = Toggles.HideUiOnStart and Toggles.HideUiOnStart.Value
if rB then
    Library:Toggle(false)
end
