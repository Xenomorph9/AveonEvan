local z7_7, z7_9, z7_13, z7_15, z7_16, z7_21, z7_23, z7_25, z7_27
local z7_3_1, z7_3_2, z7_3_4
local Options
local qH
local q2
local p2
local qK
local qo
local ql
local qN
local qr
local BossInteraction
local qT
local GetPlotCapacity
local qe
local qA
local qW
local pW
local pZ
local q1
local p1
local qJ
local p4
local qq
local qM
local p7
local qt
local qS
local Library
local qz
local qg
local pV
local qY
local qj
local qF
local pY
local qm
local RequestRebirth
local p0
local Toggles
local qp
local qL
local q0
local EggSettings
local qy
local qc
local pU
local qB
local qX
local pX
local function fn17(aE, aF)
    local sj = tonumber(aE.Price) or 0
    local sk = tonumber(aF.Price) or 0
    return sj < sk
end
local function fn105(d8)
    local uZ = qj()
    if not uZ or not d8 then
        return false
    elseif qq() then
        return qJ()
    else
        if not d8.Part or not d8.Part.Parent or not d8.Prompt or not d8.Prompt.Parent then
            return false
        end
        uZ.AssemblyLinearVelocity = Vector3.zero
        uZ.CFrame = d8.Part.CFrame + Vector3.new(0, 3, 0)
        qc(d8.Prompt)
        if not pZ(0.9) then
            qc(d8.Prompt)
            if not pZ(0.6) then
                return false
            end
            return qJ()
        end
        return qJ()
    end
end
local function fn108(e5, e6, e7)
    local vD = Options.SellRarityFilter and Options.SellRarityFilter.Value
    local vD_7, vD_9
    local vD_1 = Options.SellSpecificPets and Options.SellSpecificPets.Value
    local vD_2 = Options.SellMaxIncome and Options.SellMaxIncome.Value
    local vD_3 = type(vD_1) == "table" and next(vD_1)
    if vD_3 then
        if not vD_1[e5] then
            return false
        end
        if vD_7 then
            if not vD[e6] then
                return false
            end
            if vD_9 then
                if p7(e5, e7) > vD_2 then
                    return false
                end
                return true
            end
            return true
        end
        if vD_9 then
            if p7(e5, e7) > vD_2 then
                return false
            end
            return true
        end
        return true
    end
    vD_7 = type(vD) == "table" and next(vD)
    if vD_7 then
        if not vD[e6] then
            return false
        end
        if vD_9 then
            if p7(e5, e7) > vD_2 then
                return false
            end
            return true
        end
        return true
    end
    vD_9 = type(vD_2) == "number" and vD_2 > 0
    if vD_9 then
        if p7(e5, e7) > vD_2 then
            return false
        end
        return true
    end
    return true
end
local function autoStealLoop()
    while not Library.Unloaded do
        if Toggles.AutoSteal and Toggles.AutoSteal.Value then
            if qq() then
                qJ()
            else
                local wD_1 = qy(qF())
                if wD_1 then
                    p0(wD_1)
                end
            end
        end
        local wD_3 = Options.StealDelay and Options.StealDelay.Value or 0.1
        if wD_3 > 0 then
            task.wait(wD_3)
        else
            task.wait()
        end
    end
end
local function fn199(a6)
    local DiscordGroup = a6:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = qS })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = qS })
end
local function fn237()
    local Character = qt.Character
    local sA = Character and Character:GetAttribute("CarryingEgg") == true
    return sA
end
local function fn267(cZ)
    local tH = os.clock()
    local tJ = tH + (cZ or 0.85)
    while os.clock() < tJ do
        if qq() then
            return true
        end
        task.wait()
    end
    return qq()
end
local function fn279()
    local Character = qt.Character
    local sr = Character and Character:FindFirstChildOfClass("Humanoid")
    return sr
end
local function fn300(dr)
    if dr.PrimaryPart then
        return dr.PrimaryPart
    end
    return dr:FindFirstChildWhichIsA("BasePart", true)
end
local function fn329(du)
    local ActionText = du.ActionText
    if type(ActionText) ~= "string" then
        return nil
    end
    local t9 = string.match(ActionText, "^Collect%s+(.+)$")
    if t9 and t9 ~= "" then
        return t9
    end
    return nil
end
local function fn336(cS)
    local tB = not cS or not cS:IsA("ProximityPrompt")
    if tB then
        return
    end
    cS.HoldDuration = 0
    cS.RequiresLineOfSight = false
    if cS.MaxActivationDistance < 20 then
        cS.MaxActivationDistance = 20
    end
end
local function fn368()
    local uf = qj()
    if not uf then
        return {}
    end
    local Position = uf.Position
    local uf_1 = qY()
    local uf_2 = uf_1 and uf_1.Position or Position
    local uh_1 = {}
    for i, child in qm:GetChildren() do
        local Name = child.Name
        if string.match(Name, "^Zone%d+$") then
            for i, child in child:GetChildren() do
                local SpawnedEgg = child:FindFirstChild("SpawnedEgg")
                local uk = SpawnedEgg and SpawnedEgg:IsA("Model")
                if uk then
                    local uk_1 = p4(SpawnedEgg)
                    local ul = q2(SpawnedEgg)
                    local um = uk_1 and qT(uk_1)
                    local un = uk_1
                    if un then
                        un = ul
                    end
                    if un then
                        un = um
                    end
                    if un then
                        un = qX(Name, um)
                    end
                    if un then
                        local um_1 = #uh_1 + 1
                        local Magnitude2 = (ul.Position - Position).Magnitude
                        local Magnitude = (ul.Position - uf_2).Magnitude
                        local uq = pU[um] or 0
                        uh_1[um_1] = {
                            Egg = SpawnedEgg,
                            Prompt = uk_1,
                            Part = ul,
                            ZoneId = Name,
                            EggType = um,
                            Distance = Magnitude2,
                            SafeDistance = Magnitude,
                            RarityRank = uq
                        }
                    end
                end
            end
        end
    end
    return uh_1
end
local function autoPlaceEggLoop()
    while not Library.Unloaded do
        local wG = Toggles.AutoPlaceEgg and Toggles.AutoPlaceEgg.Value and not qq()
        if wG then
            qH()
        end
        if Toggles.AutoHatch and Toggles.AutoHatch.Value then
            pX()
        end
        local wait = task.wait
        local wI = Options.EggActionDelay and Options.EggActionDelay.Value or 0.4
        wait(wI)
    end
end
local function fn443(dm)
    for i, descendant in dm:GetDescendants() do
        if descendant:IsA("ProximityPrompt") then
            return descendant
        end
    end
    return nil
end
local function fn467()
    local Character = qt.Character
    if not Character then
        return nil
    end
    for i, child in Character:GetChildren() do
        if qA(child) then
            return child
        end
    end
    return nil
end
local function fn480(bR)
    local sJ = not bR or not bR:IsA("Tool")
    if sJ then
        return false
    end
    local attr = bR:GetAttribute("OriginalName")
    local sK = type(attr) == "string" and EggSettings[attr] ~= nil
    return sK
end
local function fn502(a_, a0)
    if setclipboard then
        setclipboard(a_)
    elseif toclipboard then
        toclipboard(a_)
    end
    Library:Notify(a0)
end
local function fn532()
    local tv = qj()
    local tw = not tv or not qq()
    if tw then
        return not qq()
    end
    local tv_1 = #ql()
    q0()
    local tw_1 = os.clock() + 2.5
    while true do
        if not (os.clock() < tw_1) then
            local tw_2 = not qq() or #ql() > tv_1
            return tw_2
        end
        if not qq() then
            return true
        end
        if #ql() > tv_1 then
            break
        end
        q0()
        task.wait()
    end
    return true
end
local function autoBuyTrailsLoop()
    while not Library.Unloaded do
        if Toggles.AutoBuyTrails and Toggles.AutoBuyTrails.Value then
            pcall(qp)
        end
        local wait = task.wait
        local wT = Options.TrailBuyDelay and Options.TrailBuyDelay.Value or 2
        wait(wT)
    end
end
local function fn564(bF)
    local sC = EggSettings[bF]
    local sD = sC and tonumber(sC.HatchTime)
    return sD or 5
end
local function fn579()
    local st = pW()
    local su = st and st:FindFirstChild("EggHatch")
    return su
end
local function fn592()
    local wu_1
    local wt_1
    wt_1, wu_1 = pcall(function()
        return qN:InvokeServer()
    end)
    local wv = not wt_1 or type(wu_1) ~= "table"
    if wv then
        return false
    end
    local wt_2 = tonumber(wu_1.Cost)
    if not wt_2 then
        return false
    end
    local wC = if qL() >= wt_2 then 1 else 0
    if wC == 1 then
        pcall(function()
            RequestRebirth:FireServer()
        end)
        return true
    end
    return false
end
local function fn638()
    return qz:FindFirstChild("Plot_" .. qt.Name)
end
local function fn671()
    local v6_1 = Options.SellMode and Options.SellMode.Value or "Inventory"
    if v6_1 == "Inventory" then
        return qB:FireServer("Inventory")
    elseif v6_1 == "Equipped" then
        return qB:FireServer("Equipped")
    else
        return p2()
    end
end
local function fn688()
    local tc_1
    local ta = qY()
    local ta_1
    if not ta then
        return 0, 0
    end
    local tb = 0
    for i, child in ta:GetChildren() do
        if child:IsA("Model") then
            tb += 1
        end
    end
    ta_1, tc_1 = pcall(function()
        return GetPlotCapacity:InvokeServer()
    end)
    if not ta_1 then
        tc_1 = 7
    end
    local ta_2 = tonumber(tc_1) or 7
    return tb, ta_2
end
local function fn781()
    local Character = qt.Character
    local so = Character and Character:FindFirstChild("HumanoidRootPart")
    return so
end
local function fn806(bK, bL)
    local sF = p1[bK]
    if not sF then
        return 0
    end
    local sG = tonumber(sF.Income) or 0
    local sG_1 = tonumber(bL) or 1
    return sG * 1.125 ^ math.max(sG_1 - 1, 0)
end
local function fn808()
    return qM
end
local function fn836(c2, c3)
    local tO = Options.StealZoneFilter and Options.StealZoneFilter.Value
    local tO_10, tO_13, tO_14
    local tP_4
    local tO_1 = Options.StealRarityFilter and Options.StealRarityFilter.Value
    local tO_2 = Options.StealSpecificEggs and Options.StealSpecificEggs.Value
    local tO_3 = type(tO) == "table" and next(tO)
    if tO_3 then
        local tO_4 = qo[c2]
        if not tO_4 or not tO[tO_4] then
            return false
        end
        if tO_10 then
            if not tO_2[c3] then
                return false
            end
            if tO_13 then
                local tO_7 = pY[c3]
                if not tO_14 then
                    return false
                end
                for k in tO_1 do
                    if tO_7[k] then
                        break
                    end
                end
                if not tP_4 then
                    return false
                end
                return true
            end
            return true
        end
        if tO_13 then
            local tO_9 = pY[c3]
            if not tO_14 then
                return false
            end
            for k in tO_1 do
                if tO_9[k] then
                    break
                end
            end
            if not tP_4 then
                return false
            end
            return true
        end
        return true
    end
    tO_10 = type(tO_2) == "table" and next(tO_2)
    if tO_10 then
        if not tO_2[c3] then
            return false
        end
        if tO_13 then
            local tO_12 = pY[c3]
            if not tO_14 then
                return false
            end
            for k in tO_1 do
                if tO_12[k] then
                    break
                end
            end
            if not tP_4 then
                return false
            end
            return true
        end
        return true
    end
    tO_13 = type(tO_1) == "table" and next(tO_1)
    if tO_13 then
        tO_14 = pY[c3]
        if not tO_14 then
            return false
        end
        tP_4 = false
        for k in tO_1 do
            if tO_14[k] then
                tP_4 = true
                break
            end
        end
        if not tP_4 then
            return false
        end
        return true
    end
    return true
end
local function autoSellLoop()
    while not Library.Unloaded do
        if Toggles.AutoSell and Toggles.AutoSell.Value then
            pcall(qK)
        end
        local wait = task.wait
        local wP = Options.SellDelay and Options.SellDelay.Value or 1
        wait(wP)
    end
end
local function fn864()
    local tn = qY()
    local to = qj()
    if not tn or not to then
        return false
    end
    to.CFrame = CFrame.new(tn.Position + Vector3.new(0, tn.Size.Y * 0.5 + 3, 0))
    return true
end
local function fn892(bX)
    local sM = not bX or not bX:IsA("Tool")
    if sM then
        return false
    end
    local sM_1 = bX:GetAttribute("OriginalName") or bX.Name
    local sM_2 = type(sM_1) == "string" and p1[sM_1] ~= nil
    return sM_2
end
local function fn907()
    local leaderstats = qt:FindFirstChild("leaderstats")
    local sx = leaderstats and leaderstats:FindFirstChild("Money")
    local sw_1 = sx
    if sx then
        sx = tonumber(sw_1.Value)
    end
    return sx or 0
end
local function fn908()
    pV(qe, "Copied Discord invite to clipboard")
end
local function autoRebirthLoop()
    while not Library.Unloaded do
        if Toggles.AutoRebirth and Toggles.AutoRebirth.Value then
            pcall(qg)
        end
        local wait = task.wait
        local wX = Options.RebirthDelay and Options.RebirthDelay.Value or 1
        wait(wX)
    end
end
local function autoEquipBestLoop()
    while not Library.Unloaded do
        local wL = Options.EquipBestDelay and Options.EquipBestDelay.Value or 10
        if Toggles.AutoEquipBest and Toggles.AutoEquipBest.Value then
            pcall(function()
                qW:FireServer()
            end)
        end
        task.wait(wL)
    end
end
local function fn993(e_, ...)
    local vz = getnamecallmethod()
    if vz == "FireServer" and e_ == BossInteraction then
        local vz_1 = ...
        if vz_1 == "PlayerCaught" then
            return
        end
        return q1(e_, ...)
    end
    return q1(e_, ...)
end
pU = nil
pV = nil
pW = nil
pX = nil
pY = nil
pZ = nil
Options = nil
p0 = nil
p1 = nil
p2 = nil
Toggles = nil
p4 = nil
p7 = nil
EggSettings = nil
qc = nil
Library = nil
qe = nil
qg = nil
qj = nil
ql = nil
qm = nil
local qn
qo = nil
qp = nil
qq = nil
qr = nil
qt = nil
BossInteraction = nil
GetPlotCapacity = nil
qy = nil
qz = nil
qA = nil
qB = nil
local pS, pT, p5, SaveManager, p8, qa, qb, qf, qh, qi, qk, qs, qv, qw, qC, qD, qE
qF = nil
qH = nil
RequestRebirth = nil
qJ = nil
qK = nil
qL = nil
qM = nil
qN = nil
qS = nil
qT = nil
qW = nil
qX = nil
qY = nil
q0 = nil
q1 = nil
q2 = nil
local qG, qO, qP, qQ, GetPlotPets, qZ, q_, q3, rg, ri, rj, rk
qG = nil
qO = nil
qP = nil
qQ = nil
GetPlotPets = nil
local qU
local qV
qZ = nil
q_ = nil
q3 = nil
local EggsGroup, rw
pS, z7_3_1, qZ, qU, qQ, qO, qM, qG, qC, qz, qw, qt, qr = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local z7_12 = 13
repeat
    z7_21 = (z7_12 * 3 + 1) % 4 + 1
    if z7_21 <= 2 then
        if z7_21 <= 1 then
            z7_13 = { "yunkugkbeq", "abpnosofhf", "xnjdk", "pgnbrjbnd", "zwjrl", "zsiqudgcnr", "yepned", "mfzufy" }
            if z7_13[(z7_12 * 10 + 15) % 8 + 1] < z7_13[(z7_12 * 10 + 15) % 8 + 1] then
                qC = game:GetService("Players")
            else
                pS = game:GetService("Players")
            end
            z7_12 = (z7_12 + 11) % 16
        else
            z7_13 = {
                "kjusclkb",
                "tvmqri",
                "gbunkfdr",
                "lptqu",
                "otgnzkybap",
                "cefpgugtt",
                "qkgklqtskqgq",
                "aynxyqlkm",
                "wfy",
                "bkraihvcr"
            }
            if z7_13[(z7_12 * 58 + 20) % 10 + 1] < z7_13[(z7_12 * 58 + 20) % 10 + 1] then
                qO = game:GetService("ReplicatedStorage")
                z7_3_1 = game:GetService("RunService")
                qZ = game:GetService("UserInputService")
                qU = game:GetService("VirtualUser")
                qQ = game:GetService("HttpService")
            else
                z7_3_1 = game:GetService("ReplicatedStorage")
                qZ = game:GetService("RunService")
                qU = game:GetService("UserInputService")
                qQ = game:GetService("VirtualUser")
                qO = game:GetService("HttpService")
            end
            z7_12 = (z7_12 + 11) % 16
        end
    elseif z7_21 <= 3 then
        if (z7_12 * 3 + 1) * 17 % 4 == ((z7_12 * 3 + 1) * 17 + 0) % 4 then
            qM = game:GetService("CoreGui")
            qG = game:GetService("GuiService")
            qC = game:GetService("TeleportService")
            qz = game:GetService("Workspace")
        else
            qz = game:GetService("CoreGui")
            qM = game:GetService("GuiService")
            qG = game:GetService("TeleportService")
            qC = game:GetService("Workspace")
        end
        z7_12 = (z7_12 + 7) % 16
    else
        if (z7_12 * 3 + 5) * 9 % 4 == ((z7_12 * 3 + 5) * 9 + 12) % 4 then
            qw = game:GetService("Lighting")
            qt = pS.LocalPlayer
            qr = fn808
        else
            qt = game:GetService("Lighting")
            pS = qr.LocalPlayer
            qw = fn808
        end
        z7_12 = (z7_12 + 11) % 16
    end
until (z7_12 * 9 + 12) % 16 == 9
if getgenv then
    qn, z7_21 = nil, nil
    z7_12 = 3
    repeat
        z7_13 = (z7_12 * 1 + 0) % 2 + 1
        if z7_13 <= 1 then
            z7_13 = (vector.create((z7_12 * 4 + 8) % 11 + 1, (z7_12 * 8 + 6) % 13 + 1, (z7_12 * 5 + 10) % 17 + 1))
            local z7_5_1 = (vector.create((z7_12 * 6 + 7) % 11 + 1, (z7_12 * 3 + 5) % 13 + 1, (z7_12 * 11 + 16) % 17 + 1))
            z7_23 = (vector.create((z7_12 * 1 + 2) % 5 + 1, (z7_12 * 2 + 5) % 7 + 1, (z7_12 * 2 + 7) % 9 + 1))
            if math.abs((vector.angle(z7_13, z7_5_1, z7_23))) - math.abs((vector.angle(z7_5_1, z7_13, z7_23))) == 2 then
                qn = z7_21
            else
                z7_21 = qn
            end
            z7_12 = (z7_12 + 1) % 16
        else
            if (not qn or qn) and (not qn and not z7_21) and (not qn and not qn or (not qn or not z7_21)) and (not z7_21 and z7_21 and (not z7_21 and not qn) or (z7_21 or not qn or (qn or not z7_21))) and not ((not qn or qn) and (not qn and not z7_21) and (not qn and not qn or (not qn or not z7_21)) and (not z7_21 and z7_21 and (not z7_21 and not qn) or (z7_21 or not qn or (qn or not z7_21)))) then
                getgenv().gethui = qn
                qr = getgenv().__OuroborosStealABabyEggLib
            else
                getgenv().gethui = qr
                qn = getgenv().__OuroborosStealABabyEggLib
            end
            z7_12 = (z7_12 + 11) % 16
        end
    until (z7_12 * 15 + 5) % 16 == 6
    if z7_21 then
        z7_21 = qn.Unload
    end
    if z7_21 then
        pcall(function()
            qn:Unload()
        end)
    end
end
pcall(function()
    gethui = qr
end)
if setthreadidentity then
    setthreadidentity(8)
end
qf, qe, qb, p8, z7_13, z7_21, z7_12, pT, z7_9, q_, qW, GetPlotPets, qP, qN, RequestRebirth, qD, qB, GetPlotCapacity, BossInteraction, z7_15, z7_25, z7_23, z7_16, qm, z7_27, z7_7 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local z7_5_2 = 14
repeat
    rg = (z7_5_2 * 1 + 11) % 13 + 1
    if rg <= 7 then
        if rg <= 4 then
            if rg <= 2 then
                if rg <= 1 then
                    local rh_1 = (vector.create((z7_5_2 * 1 + 4) % 11 + 1, (z7_5_2 * 10 + 10) % 13 + 1, (z7_5_2 * 8 + 17) % 17 + 1))
                    ri = (vector.create((z7_5_2 * 5 + 7) % 11 + 1, (z7_5_2 * 1 + 7) % 13 + 1, (z7_5_2 * 9 + 10) % 17 + 1))
                    rj = (vector.create((z7_5_2 * 7 + 4) % 11 + 1, (z7_5_2 * 6 + 8) % 13 + 1, (z7_5_2 * 12 + 4) % 17 + 1))
                    rk = (vector.create((z7_5_2 * 2 + 8) % 11 + 1, (z7_5_2 * 11 + 3) % 13 + 1, (z7_5_2 * 11 + 6) % 17 + 1))
                    if vector.dot(vector.cross(rh_1, ri), (vector.cross(rj, rk))) == vector.dot(rh_1, rj) * vector.dot(ri, rk) - vector.dot(rh_1, rk) * vector.dot(ri, rj) + 1 then
                        qb = "https://discord.gg/ehKVq7pf7v"
                        qe = "https://rscripts.net/@Ouroboros"
                    else
                        qe = "https://discord.gg/ehKVq7pf7v"
                        qb = "https://rscripts.net/@Ouroboros"
                    end
                    z7_5_2 = (z7_5_2 + 40) % 52
                else
                    local rh_2 = (vector.create((z7_5_2 * 5 + 6) % 11 + 1, (z7_5_2 * 7 + 9) % 13 + 1, (z7_5_2 * 10 + 2) % 17 + 1))
                    ri = (vector.create((z7_5_2 * 1 + 5) % 11 + 1, (z7_5_2 * 1 + 13) % 13 + 1, (z7_5_2 * 5 + 13) % 17 + 1))
                    local Bs = vector.dot(rh_2, ri)
                    if Bs * Bs <= vector.dot(rh_2, rh_2) * vector.dot(ri, ri) then
                        p8 = "https://ouroboros-hub-rbx.web.app/"
                    else
                        qm = "https://ouroboros-hub-rbx.web.app/"
                    end
                    z7_5_2 = (z7_5_2 + 1) % 52
                end
            elseif rg <= 3 then
                if (false or not z7_9 and false) and ("Steal a Baby Egg" or z7_9 and qW) or not ((false or not z7_9 and false) and ("Steal a Baby Egg" or z7_9 and qW)) then
                    z7_13 = z7_3_1:WaitForChild("Events")
                else
                    z7_3_1 = z7_13:WaitForChild("Events")
                end
                z7_5_2 = (z7_5_2 + 14) % 52
            else
                local rh_3 = { "uetlqf", "zeam", "yzydt", "gqbcdpnt", "kkrrriaqq", "hzi", "nlfigfsqe", "jcfrum", "hcz" }
                local Bc = z7_5_2
                ri = rh_3[Bc % 9 + 1]
                if ri:len() <= ri:gsub("(.)", "%1%1", Bc % 3 % 2 + 1):len() then
                    z7_21 = z7_3_1:WaitForChild("Modules")
                else
                    z7_3_1 = z7_21:WaitForChild("Modules")
                end
                z7_5_2 = (z7_5_2 + 27) % 52
            end
        elseif rg <= 6 then
            if rg <= 5 then
                if (z7_5_2 * 3 + 8) * 5 % 4 == ((z7_5_2 * 3 + 8) * 5 + 7) % 4 then
                    q_ = z7_12:WaitForChild("DropEgg")
                    z7_13 = z7_12:WaitForChild("RequestHatch")
                    pT = z7_12:WaitForChild("EggHatchAnim")
                    z7_9 = z7_12:WaitForChild("EggHatchAnimComplete")
                else
                    z7_12 = z7_13:WaitForChild("DropEgg")
                    pT = z7_13:WaitForChild("RequestHatch")
                    z7_9 = z7_13:WaitForChild("EggHatchAnim")
                    q_ = z7_13:WaitForChild("EggHatchAnimComplete")
                end
                z7_5_2 = (z7_5_2 + 14) % 52
            else
                if z7_5_2 * 114169229 + 7 + 4 <= z7_5_2 * 114169229 + 7 + 4 + 1 then
                    qW = z7_13:WaitForChild("EquipBestPets")
                    GetPlotPets = z7_13:WaitForChild("GetPlotPets")
                else
                    z7_13 = GetPlotPets:WaitForChild("EquipBestPets")
                    qW = GetPlotPets:WaitForChild("GetPlotPets")
                end
                z7_5_2 = (z7_5_2 + 1) % 52
            end
        else
            local rh_4 = (vector.create((z7_5_2 * 4 + 8) % 11 + 1, (z7_5_2 * 3 + 5) % 13 + 1, (z7_5_2 * 12 + 12) % 17 + 1))
            ri = (vector.create((z7_5_2 * 2 + 2) % 11 + 1, (z7_5_2 * 1 + 3) % 13 + 1, (z7_5_2 * 8 + 14) % 17 + 1))
            rj = (vector.create((z7_5_2 * 2 + 2) % 11 + 1, (z7_5_2 * 1 + 9) % 13 + 1, (z7_5_2 * 3 + 11) % 17 + 1))
            rk = (vector.create((z7_5_2 * 5 + 1) % 5 + 1, (z7_5_2 * 5 + 2) % 7 + 1, (z7_5_2 * 5 + 3) % 9 + 1))
            if vector.dot(vector.cross(rh_4, (vector.cross(ri, rj))), rk) == vector.dot(ri * vector.dot(rh_4, rj) - rj * vector.dot(rh_4, ri), rk) + 5 then
                qN = RequestRebirth:WaitForChild("UnequipPet")
                z7_13 = RequestRebirth:WaitForChild("GetRebirthInfo")
                qP = RequestRebirth:WaitForChild("RequestRebirth")
            else
                qP = z7_13:WaitForChild("UnequipPet")
                qN = z7_13:WaitForChild("GetRebirthInfo")
                RequestRebirth = z7_13:WaitForChild("RequestRebirth")
            end
            z7_5_2 = (z7_5_2 + 1) % 52
        end
    elseif rg <= 10 then
        if rg <= 9 then
            if rg <= 8 then
                local rh_5 = { "awzj", "nuwrqkd", "repmr", "kbhnrtum", "ablqcdlkeno", "vud", "lfzj", "bmjzkdpkfv" }
                local BN = z7_5_2
                ri = rh_5[BN % 8 + 1]
                if ri:len() <= ri:gsub("(.)", "%1%1", BN % 3 % 2 + 1):len() then
                    qD = z7_13:WaitForChild("TrailAction")
                    qB = z7_13:WaitForChild("RequestSell")
                    GetPlotCapacity = z7_13:WaitForChild("GetPlotCapacity")
                else
                    z7_13 = GetPlotCapacity:WaitForChild("TrailAction")
                    qD = GetPlotCapacity:WaitForChild("RequestSell")
                    qB = GetPlotCapacity:WaitForChild("GetPlotCapacity")
                end
                z7_5_2 = (z7_5_2 + 40) % 52
            else
                local rh_6 = {
                    "ijrqrxu",
                    "amjw",
                    "zvbnmlmhbjrw",
                    "ovjafgqosodg",
                    "ewddytmxc",
                    "zsnoqejifrun",
                    "gyxncco",
                    "iguxm",
                    "vuoyhvamfc",
                    "kwprlt",
                    "jpbats",
                    "kgqym",
                    "nnhqygwfoay",
                    "ztds",
                    "ynofs",
                    "fpcqiusyzrel"
                }
                if rh_6[(z7_5_2 * 7 + 68) % 16 + 1] < rh_6[(z7_5_2 * 7 + 68) % 16 + 1] then
                    z7_25 = z7_21:WaitForChild("BossInteraction")
                    z7_13 = require(BossInteraction:WaitForChild("EggConfigurations"))
                    z7_16 = require(BossInteraction:WaitForChild("ZoneConfigurations"))
                    z7_15 = require(BossInteraction:WaitForChild("AnimalConfigurations"))
                    z7_23 = require(BossInteraction:WaitForChild("TrailConfigurations"))
                else
                    BossInteraction = z7_13:WaitForChild("BossInteraction")
                    z7_15 = require(z7_21:WaitForChild("EggConfigurations"))
                    z7_25 = require(z7_21:WaitForChild("ZoneConfigurations"))
                    z7_23 = require(z7_21:WaitForChild("AnimalConfigurations"))
                    z7_16 = require(z7_21:WaitForChild("TrailConfigurations"))
                end
                z7_5_2 = (z7_5_2 + 14) % 52
            end
        else
            local A0 = bit32.rrotate(bit32.bxor(bit32.lrotate(z7_5_2, 20), string.byte(tostring(qe))), 25)
            if bit32.bxor(bit32.lrotate(bit32.bxor(A0, 2144178888), 4), 4242091143) ~= bit32.lrotate(A0, 4) then
                qz = qm:WaitForChild("Eggs")
            else
                qm = qz:WaitForChild("Eggs")
            end
            z7_5_2 = (z7_5_2 + 40) % 52
        end
    elseif rg <= 12 then
        if rg <= 11 then
            rg = { "pot", "zxgn", "xsdsrdiwz", "bxwxb", "hsyzoj", "nihld", "yezaci", "wbttg", "qzida" }
            local AE = z7_5_2
            local rh_7 = rg[AE % 9 + 1]
            if rh_7:len() <= rh_7:gsub("(.)", "%1%1", AE % 3 % 2 + 1):len() then
                z7_27 = {
                    "Common",
                    "Uncommon",
                    "Rare",
                    "Epic",
                    "Legendary",
                    "Mythical",
                    "Cosmic",
                    "Divine",
                    "Secret",
                    "Eternal",
                    "Hacker"
                }
            else
                qe = {
                    "Eternal",
                    "Rare",
                    "Cosmic",
                    "Epic",
                    "Common",
                    "Uncommon",
                    "Mythical",
                    "Legendary",
                    "Hacker",
                    "Secret",
                    "Divine"
                }
            end
            z7_5_2 = (z7_5_2 + 27) % 52
        else
            rg = {
                "wzfvwnwa",
                "rhemkvae",
                "racwgv",
                "mfj",
                "pnhur",
                "hhpgrngf",
                "xrzmitnxseu",
                "yzr",
                "kgiarww",
                "wgxlnzkr",
                "siwu",
                "zlhioisky"
            }
            local AQ = z7_5_2
            local rh_8 = rg[AQ % 12 + 1]
            if rh_8:len() <= rh_8:reverse():rep(AQ % 3 + 2):len() then
                z7_7 = {}
            else
                z7_16 = {}
            end
            z7_5_2 = (z7_5_2 + 14) % 52
        end
    else
        rg = (vector.create((z7_5_2 * 2 + 8) % 11 + 1, (z7_5_2 * 11 + 5) % 13 + 1, (z7_5_2 * 1 + 14) % 17 + 1))
        local Bd = vector.floor(rg) + vector.ceil(rg * -1)
        if vector.dot(Bd, Bd) == 2 then
            qP = "Steal a Baby Egg"
        else
            qf = "Steal a Baby Egg"
        end
        z7_5_2 = (z7_5_2 + 40) % 52
    end
until (z7_5_2 * 15 + 1) % 52 == 42
for k, v in z7_27 do
    z7_7[v] = k
end
EggSettings, z7_3_2, p1, pY, pU, z7_13, z7_21 = nil, nil, nil, nil, nil, nil, nil
z7_12 = 16
repeat
    local z7_5_3 = (z7_12 * 4 + 1) % 5 + 1
    if z7_5_3 <= 3 then
        if z7_5_3 <= 2 then
            if z7_5_3 <= 1 then
                rg = (vector.create((z7_12 * 2 + 7) % 11 + 1, (z7_12 * 11 + 3) % 13 + 1, (z7_12 * 9 + 12) % 17 + 1))
                local rh_9 = (vector.create((z7_12 * 3 + 2) % 11 + 1, (z7_12 * 8 + 5) % 13 + 1, (z7_12 * 12 + 15) % 17 + 1))
                ri = (vector.create((z7_12 * 6 + 6) % 11 + 1, (z7_12 * 11 + 6) % 13 + 1, (z7_12 * 5 + 12) % 17 + 1))
                if vector.dot(vector.cross(rg, rh_9), ri) == vector.dot(vector.cross(rh_9, ri), rg) + 2 then
                    z7_15 = EggSettings.EggSettings
                else
                    EggSettings = z7_15.EggSettings
                end
                z7_12 = (z7_12 + 14) % 20
            else
                if z7_12 * 84222065 + 11 + 7 <= z7_12 * 84222065 + 11 + 7 + 1 then
                    z7_3_2 = z7_15.EggDrops
                else
                    z7_15 = z7_3_2.EggDrops
                end
                z7_12 = (z7_12 + 4) % 20
            end
        else
            rg = (vector.create((z7_12 * 5 + 4) % 11 + 1, (z7_12 * 10 + 12) % 13 + 1, (z7_12 * 15 + 12) % 17 + 1))
            local rh_10 = (vector.create((z7_12 * 2 + 9) % 11 + 1, (z7_12 * 2 + 3) % 13 + 1, (z7_12 * 1 + 13) % 17 + 1))
            ri = (vector.create((z7_12 * 3 + 5) % 11 + 1, (z7_12 * 6 + 8) % 13 + 1, (z7_12 * 12 + 14) % 17 + 1))
            rj = (vector.create((z7_12 * 3 + 4) % 5 + 1, (z7_12 * 3 + 6) % 7 + 1, (z7_12 * 4 + 6) % 9 + 1))
            if vector.dot(vector.cross(rg, (vector.cross(rh_10, ri))), rj) == vector.dot(rh_10 * vector.dot(rg, ri) - ri * vector.dot(rg, rh_10), rj) then
                p1 = z7_23.Animals
                pY = {}
            else
                z7_23 = pY.Animals
                p1 = {}
            end
            z7_12 = (z7_12 + 4) % 20
        end
    elseif z7_5_3 <= 4 then
        local z7_5_4 = (vector.create((z7_12 * 5 + 1) % 11 + 1, (z7_12 * 8 + 1) % 13 + 1, (z7_12 * 5 + 7) % 17 + 1))
        local AG = vector.floor(z7_5_4) + vector.ceil(z7_5_4 * -1)
        if vector.dot(AG, AG) == 1 then
            z7_13 = {}
            pU = {}
        else
            pU = {}
            z7_13 = {}
        end
        z7_12 = (z7_12 + 9) % 20
    else
        if (not p1 and not p1 or (not pU or p1)) and (EggSettings or EggSettings or (not pU or not z7_21)) and (pU and z7_21 or z7_21 and EggSettings or (z7_21 and z7_21 or not p1 and not p1)) or not ((not p1 and not p1 or (not pU or p1)) and (EggSettings or EggSettings or (not pU or not z7_21)) and (pU and z7_21 or z7_21 and EggSettings or (z7_21 and z7_21 or not p1 and not p1))) then
            z7_21 = {}
        else
            z7_3_2 = {}
        end
        z7_12 = (z7_12 + 4) % 20
    end
until (z7_12 * 7 + 15) % 20 == 12
for k, v in z7_3_2 do
    z7_12 = 0
    local z7_3_3 = {}
    if type(v) == "table" then
        for k in v do
            local z7_5_5 = p1[k]
            z7_23 = z7_5_5 and type(z7_5_5.Rarity) == "string"
            if z7_23 then
                z7_3_3[z7_5_5.Rarity] = true
                z7_23 = z7_7[z7_5_5.Rarity] or 0
                local z7_5_6 = z7_23
                if z7_5_6 > z7_12 then
                    z7_12 = z7_5_6
                end
            end
        end
    end
    pY[k] = z7_3_3
    pU[k] = z7_12
end
for k in EggSettings do
    z7_13[#z7_13 + 1] = k
    z7_21[k] = k
end
table.sort(z7_13)
z7_21, z7_3_4, qo = nil, nil, nil
z7_12 = 14
repeat
    if (z7_12 * 1 + 0) % 2 + 1 <= 1 then
        local z7_5_8 = {
            "njtahit",
            "gwqtwrtrgzb",
            "pnudpb",
            "knjirlhzet",
            "snvdnfqw",
            "erls",
            "hdazlw",
            "xhdnx",
            "qeogapo",
            "nkwvwo",
            "hjquue",
            "hlscz"
        }
        local Ba = z7_12
        z7_23 = z7_5_8[Ba % 12 + 1]
        if z7_23:len() >= z7_23:reverse():rep(Ba % 3 + 2):len() then
            qo = {}
        else
            z7_21 = {}
        end
        z7_12 = (z7_12 + 7) % 16
    else
        local Az = bit32.rrotate(bit32.bxor(bit32.lrotate(z7_12, 29), string.byte(tostring(z7_21))), 13)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Az, 498278397), 13750404), (bit32.bxor(bit32.band(Az, 3796688898), 583588846))), 13750404), 583588846) == Az then
            z7_3_4 = {}
            qo = {}
        else
            qo = {}
            z7_3_4 = {}
        end
        z7_12 = (z7_12 + 9) % 16
    end
until (z7_12 * 5 + 15) % 16 == 5
local rZ = 1
while rZ <= 5 do
    z7_12 = "Zone" .. rZ
    local z7_5_9 = z7_25[z7_12]
    z7_23 = z7_5_9 and z7_5_9.DisplayName and z7_12 .. " - " .. z7_5_9.DisplayName
    z7_23 = z7_23 or z7_12
    z7_21[#z7_21 + 1] = z7_23
    z7_3_4[z7_23] = z7_12
    qo[z7_12] = z7_23
    rZ += 1
end
p5 = nil
z7_7 = {}
z7_15 = {}
p5 = {}
z7_12 = z7_16.Trails
if type(z7_12) == "table" then
    for k, v in z7_12 do
        z7_12 = type(v) == "table" and type(v.ID) == "string"
        if z7_12 then
            z7_12 = v.Name or v.ID
            local z7_3_5 = z7_12
            z7_7[#z7_7 + 1] = z7_3_5
            z7_15[z7_3_5] = v
            p5[#p5 + 1] = v
        end
    end
    z7_12 = 6
    repeat
        if z7_12 * 57563329 + 11 + 3 <= z7_12 * 57563329 + 11 + 3 + 1 then
            table.sort(p5, fn17)
        else
            table.sort(p5, fn17)
        end
        z7_12 = (z7_12 + 2) % 8
    until (z7_12 * 3 + 3) % 8 == 3
end
local z7_3_6 = {}
for k in p1 do
    z7_3_6[#z7_3_6 + 1] = k
end
table.sort(z7_3_6)
z7_15 = { "Nearest", "Rarest", "Furthest" }
z7_23 = { "Inventory", "Equipped", "Filtered" }
local z7_5_11 = {}
for k, v in z7_27 do
    z7_5_11[v] = true
end
z7_12 = {}
for k, v in z7_21 do
    z7_12[v] = true
end
z7_25 = {}
for k, v in z7_7 do
    z7_25[v] = true
end
Library, SaveManager = nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
if getgenv then
    getgenv().__OuroborosStealABabyEggLib = Library
end
Toggles, Options, qs, pV, qS, qj, qa, pW, qY, qL, qq, qk, p7, qV, qA, ql, q3, qv, qh, q0, qJ, qi, qc, pZ, qX, p4, q2, qT, qF, qy, p0, qH, pX = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Toggles = Library.Toggles
Options = Library.Options
pV = fn502
qS = fn908
ri = fn199
z7_16 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = qe, Copyable = true }, "|", qf },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
z7_16:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Radius = 24, Transparency = 0.3 })
qs = {
    Info = z7_16:AddTab("Info", "info"),
    Main = z7_16:AddTab("Main", "egg"),
    Player = z7_16:AddTab("Player", "person-standing"),
    Settings = z7_16:AddTab("Settings", "settings")
}
local rn = qs.Main:AddSubTab("Steal", "swords")
local rm = qs.Main:AddSubTab("Eggs", "egg")
local rl = qs.Main:AddSubTab("Pets", "paw-print")
rk = qs.Main:AddSubTab("Shop", "shopping-bag")
ri(rn)
ri(rm)
ri(rl)
ri(rk)
ri(qs.Player)
ri(qs.Settings)
qj = fn781
qa = fn279
pW = fn638
qY = fn579
qL = fn907
qq = fn237
qk = fn564
p7 = fn806
qV = fn480
if (qa and false or false and qh or (not q2 or false) and (qa and false) or (not q2 and qa or qy and not q2) and (qa or false or not q2 and qa)) and not (qa and false or false and qh or (not q2 or false) and (qa and false) or (not q2 and qa or qy and not q2) and (qa or false or not q2 and qa)) then
    ql = fn892
    qA = function()
        local b3 = {}
        local function b4(b5)
            if not b5 then
                return
            end
            for i, child in b5:GetChildren() do
                if qV(child) then
                    b3[#b3 + 1] = child
                end
            end
        end
        b4(qt:FindFirstChild("Backpack"))
        b4(qt.Character)
        return b3
    end
else
    qA = fn892
    ql = function()
        local b3 = {}
        local function b4(b5)
            if not b5 then
                return
            end
            for i, child in b5:GetChildren() do
                if qV(child) then
                    b3[#b3 + 1] = child
                end
            end
        end
        b4(qt:FindFirstChild("Backpack"))
        b4(qt.Character)
        return b3
    end
end
q3 = function()
    local cd = {}
    local function ce(cf)
        if not cf then
            return
        end
        for i, child in cf:GetChildren() do
            if qA(child) then
                cd[#cd + 1] = child
            end
        end
    end
    ce(qt:FindFirstChild("Backpack"))
    ce(qt.Character)
    return cd
end
qv = fn467
qh = fn688
q0 = fn864
qJ = fn532
qi = fn336
qc = function(cV)
    qi(cV)
    if fireproximityprompt then
        pcall(fireproximityprompt, cV)
        return
    end
    pcall(function()
        cV:InputHoldBegin()
        cV:InputHoldEnd()
    end)
end
if (qA and p0 or (p0 or qA)) and (p0 or not qA or (not p0 or not qA)) or not ((qA and p0 or (p0 or qA)) and (p0 or not qA or (not p0 or not qA))) then
    pZ = fn267
    qX = fn836
    p4 = fn443
    q2 = fn300
    qT = fn329
else
    p4 = fn267
    pZ = fn836
    qX = fn443
    qT = fn300
    q2 = fn329
end
qF = fn368
qy = function(dW)
    local uI
    uI = nil
    if #dW == 0 then
        return nil
    end
    local uK = Options.StealPriority and Options.StealPriority.Value
    local uT = if uK then 1 else 0
    local uR = 971 * uT + 3580 * (1 - uT)
    local uS = 3702 * uT + 229 * (1 - uT)
    if not ((uR * 3262 + uS * 3011 + uR * uS) % 16777213 == 1131553) then
        uK = "Nearest"
    end
    uI = uK
    if uI == "Furthest" then
        local uJ_1 = dW[1]
        local uK_1 = #dW
        local uW = 2
        while uW <= uK_1 do
            local uK_2 = dW[uW]
            if uK_2.SafeDistance > uJ_1.SafeDistance or uK_2.SafeDistance == uJ_1.SafeDistance and uK_2.RarityRank > uJ_1.RarityRank then
                uJ_1 = uK_2
            end
            uW += 1
        end
        return uJ_1
    end
    table.sort(dW, function(d4, d5)
        if uI == "Rarest" then
            if d4.RarityRank ~= d5.RarityRank then
                return d4.RarityRank > d5.RarityRank
            end
            return d4.Distance < d5.Distance
        elseif d4.Distance ~= d5.Distance then
            return d4.Distance < d5.Distance
        else
            return d4.RarityRank > d5.RarityRank
        end
    end)
    return dW[1]
end
p0 = fn105
qH = function()
    local u2 = qa()
    local u3 = qj()
    local u3_1, u3_2
    local u4 = not u3
    local u4_1, u4_2
    if not u2 or u4 then
        return false
    end
    u4_1, u3_1 = qh()
    if u4_1 >= u3_1 then
        return false
    end
    local u5_1 = ql()
    if #u5_1 == 0 then
        return false
    end
    local u6 = false
    for k, v in u5_1 do
        local vd = v
        if Library.Unloaded then
            break
        end
        u4_2, u3_2 = qh()
        if u4_2 >= u3_2 then
            break
        end
        q0()
        if vd.Parent == qt.Backpack then
            u2:EquipTool(vd)
            task.wait(0.2)
        end
        if vd.Parent == qt.Character then
            pcall(function()
                vd:Activate()
            end)
            u6 = true
            task.wait(0.35)
        end
    end
    return u6
end
pX = function()
    local ve = qY()
    if not ve then
        return false
    end
    local vf = qz:GetServerTimeNow()
    local vg = false
    for i, child in ve:GetChildren() do
        local vp = child
        if Library.Unloaded then
            break
        end
        local ve_1 = vp:IsA("Model") and vp:GetAttribute("IsEgg") == true
        if ve_1 then
            local ve_2 = vp:GetAttribute("OriginalName") or vp.Name
            local ve_3 = tonumber(vp:GetAttribute("HatchStartTime"))
            local vi = ve_3 and vf - ve_3 >= qk(ve_2)
            if vi then
                pcall(function()
                    pT:FireServer(vp)
                end)
                vg = true
                task.wait(0.15)
            end
        end
    end
    return vg
end
z7_9.OnClientEvent:Connect(function(eP, eQ, eR, eS, eT)
    if Library.Unloaded then
        return
    end
    local vq = eT ~= ""
    local vr = type(eT) == "string" and vq
    if vr then
        pcall(function()
            q_:FireServer(eT)
        end)
    end
end)
rj = hookmetamethod and getnamecallmethod and newcclosure
if rj then
    q1 = nil
    z7_16 = 1
    repeat
        if z7_16 * 20245413 + 10 + 5 >= z7_16 * 20245413 + 10 + 5 + 1 then
            q1 = hookmetamethod(game, "__namecall", newcclosure(fn993))
        else
            q1 = hookmetamethod(game, "__namecall", newcclosure(fn993))
        end
        z7_16 = (z7_16 + 2) % 4
    until (z7_16 * 3 + 2) % 4 == 3
end
EggsGroup, rw, qE, p2, qK, qp, qg, ri, rj = nil, nil, nil, nil, nil, nil, nil, nil, nil
qE = fn108
p2 = function()
    local vN_1
    local vM_1
    local vL = qa()
    if not vL then
        return false
    end
    vM_1, vN_1 = pcall(function()
        return GetPlotPets:InvokeServer()
    end)
    local vO = vM_1 and type(vN_1) == "table"
    if vO then
        for k, v in vN_1 do
            local vV = k
            if Library.Unloaded then
                break
            end
            local vM_2 = type(v) == "table" and v.IsEgg ~= true
            if vM_2 then
                local Name = v.Name
                local Rarity = v.Rarity
                local vO_1 = type(Name) == "string" and qE(Name, Rarity, v.Level)
                if vO_1 then
                    pcall(function()
                        qP:FireServer(vV)
                    end)
                    task.wait(0.15)
                end
            end
        end
    end
    local vM_4 = false
    for k, v in q3() do
        if Library.Unloaded then
            break
        end
        local vN_3 = v:GetAttribute("OriginalName") or v.Name
        local vN_4 = v:GetAttribute("Rarity")
        if type(vN_4) ~= "string" then
            local vP_1 = p1[vN_3]
            vN_4 = vP_1 and vP_1.Rarity
        end
        local vP_2 = v:GetAttribute("Level") or 1
        if qE(vN_3, vN_4, vP_2) then
            if v.Parent == qt.Backpack then
                vL:EquipTool(v)
                task.wait(0.12)
            end
            if qv() then
                pcall(function()
                    qB:FireServer("Equipped")
                end)
                vM_4 = true
                task.wait(0.2)
            end
        end
    end
    return vM_4
end
qK = fn671
qp = function()
    local wd = Options.TrailBuyFilter and Options.TrailBuyFilter.Value
    local Trails = qt:FindFirstChild("Trails")
    if not Trails then
        return
    end
    local Equipped = Trails:FindFirstChild("Equipped")
    local ID
    local wg = 0
    for k, v in p5 do
        local ws = v
        if Library.Unloaded then
            break
        else
            local wh_1 = ws.Name or ws.ID
            local wh_2 = type(wd) ~= "table" or not next(wd) or wd[wh_1]
            if wh_2 then
                local wh_3 = Trails:FindFirstChild(ws.ID) ~= nil
                local wi_2 = tonumber(ws.Price) or math.huge
                local wi_3 = tonumber(ws.SpeedBoost) or 0
                local wk = not wh_3
                if wk ~= false then
                    wk = qL() >= wi_2
                end
                if wk then
                    pcall(function()
                        qD:FireServer("BuyMoney", ws.ID)
                    end)
                    task.wait(0.25)
                    wh_3 = Trails:FindFirstChild(ws.ID) ~= nil
                end
                if wh_3 and wi_3 >= wg then
                    wg = wi_3
                    ID = ws.ID
                end
            end
        end
    end
    if ID and Equipped and Equipped.Value ~= ID then
        pcall(function()
            qD:FireServer("Equip", ID)
        end)
    end
end
qg = fn592
local AutoStealGroup = rn:AddLeftGroupbox("Auto Steal", "swords")
if ((not rw or qK or qK and false) and ((false or rw) and (false and not rw)) or (not qK and false or false and rw or rw and not qK and (rw and qK))) and (p2 and rw and (not rw and qK) and (rw and qK or qK and not qK) or (p2 and rw or false and not rw or (qK and not rw or (p2 or not qK)))) and not (((not rw or qK or qK and false) and ((false or rw) and (false and not rw)) or (not qK and false or false and rw or rw and not qK and (rw and qK))) and (p2 and rw and (not rw and qK) and (rw and qK or qK and not qK) or (p2 and rw or false and not rw or (qK and not rw or (p2 or not qK))))) then
    z7_15:AddToggle("AutoSteal", { Text = "Auto Steal Egg", Default = false })
    z7_15:AddDropdown("StealPriority", { Default = 1, Values = AutoStealGroup, Text = "Priority" })
    z7_15:AddDropdown("StealZoneFilter", { Values = rm, Text = "Zone Filter", Multi = true, Default = z7_27 })
    z7_15:AddDropdown("StealRarityFilter", { Text = "Rarity Filter", Multi = true, Default = z7_12, Values = EggsGroup })
    z7_15:AddDropdown("StealSpecificEggs", { Values = z7_21, Multi = true, Default = {}, Searchable = true, Text = "Specific Eggs" })
    z7_15:AddSlider("StealDelay", { Min = 0, Text = "Steal Delay", Max = 3, Default = 0.1, Rounding = 2 })
    z7_5_11:AddLeftGroupbox("Eggs", "egg")
else
    AutoStealGroup:AddToggle("AutoSteal", { Text = "Auto Steal Egg", Default = false })
    AutoStealGroup:AddDropdown("StealPriority", { Text = "Priority", Values = z7_15, Default = 1 })
    AutoStealGroup:AddDropdown("StealZoneFilter", { Text = "Zone Filter", Values = z7_21, Multi = true, Default = z7_12 })
    AutoStealGroup:AddDropdown("StealRarityFilter", { Text = "Rarity Filter", Values = z7_27, Multi = true, Default = z7_5_11 })
    AutoStealGroup:AddDropdown("StealSpecificEggs", { Text = "Specific Eggs", Values = z7_13, Multi = true, Default = {}, Searchable = true })
    AutoStealGroup:AddSlider("StealDelay", { Text = "Steal Delay", Default = 0.1, Min = 0, Max = 3, Rounding = 2 })
    EggsGroup = rm:AddLeftGroupbox("Eggs", "egg")
end
EggsGroup:AddToggle("AutoPlaceEgg", { Text = "Auto Place Egg", Default = false })
EggsGroup:AddToggle("AutoHatch", { Text = "Auto Hatch", Default = false })
EggsGroup:AddSlider("EggActionDelay", { Text = "Action Delay", Default = 0.4, Min = 0.1, Max = 3, Rounding = 2 })
local PetsGroup = rl:AddLeftGroupbox("Pets", "paw-print")
PetsGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
PetsGroup:AddSlider("EquipBestDelay", { Text = "Equip Delay", Default = 10, Min = 10, Max = 60, Rounding = 0 })
local SellGroup = rl:AddRightGroupbox("Sell", "badge-dollar-sign")
SellGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
SellGroup:AddDropdown("SellMode", { Text = "Sell Mode", Values = z7_23, Default = 1 })
SellGroup:AddDropdown("SellRarityFilter", { Text = "Sell Rarities", Values = z7_27, Multi = true, Default = z7_5_11 })
SellGroup:AddDropdown("SellSpecificPets", { Text = "Specific Pets", Values = z7_3_6, Multi = true, Default = {}, Searchable = true })
SellGroup:AddSlider("SellMaxIncome", { Text = "Max Sell Income", Default = 0, Min = 0, Max = 10000000, Rounding = 0 })
SellGroup:AddSlider("SellDelay", { Text = "Sell Delay", Default = 1, Min = 0.25, Max = 10, Rounding = 2 })
local TrailsGroup = rk:AddLeftGroupbox("Trails", "footprints")
TrailsGroup:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
TrailsGroup:AddDropdown("TrailBuyFilter", { Text = "Trails", Values = z7_7, Multi = true, Default = z7_25 })
TrailsGroup:AddSlider("TrailBuyDelay", { Text = "Buy Delay", Default = 2, Min = 0.5, Max = 15, Rounding = 2 })
local RebirthGroup = rk:AddRightGroupbox("Rebirth", "rotate-cw")
RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
RebirthGroup:AddSlider("RebirthDelay", { Text = "Rebirth Delay", Default = 1, Min = 0.5, Max = 10, Rounding = 2 })
task.spawn(autoStealLoop)
task.spawn(autoPlaceEggLoop)
task.spawn(autoEquipBestLoop)
task.spawn(autoSellLoop)
task.spawn(autoBuyTrailsLoop)
task.spawn(autoRebirthLoop)
local function rr()
    local xU
    local xV
    local x1
    local xY
    local xW
    local x2
    xU = nil
    xV = nil
    xW = nil
    xY = nil
    x1 = nil
    x2 = nil
    local Label, xX, xZ, Label2, Label3, x3
    xY = function(hk, hl)
        return string.format('<font color="%s">%s</font>', hl, hk)
    end
    xZ = function(hn, ho, hp)
        return string.format("<b>%s</b> %s %s", hn, xY("-", "#5a6070"), xY(ho, hp))
    end
    local x4 = "#8b93a3"
    xW = "#7fd47f"
    x1 = "#e05a5a"
    xU = "#e8a34d"
    local function x6()
        local wZ = hookfunction ~= nil
        local w_ = hookmetamethod ~= nil
        local w0 = getrawmetatable ~= nil
        local w1 = setrawmetatable ~= nil
        local w2 = getgc ~= nil
        local w3 = getgenv ~= nil
        local w4 = getreg ~= nil
        local w5 = getconnections ~= nil
        local w6 = firesignal ~= nil
        local w7 = getcallbackvalue ~= nil
        local w8 = setclipboard ~= nil
        local w9 = getcustomasset ~= nil
        local xa = getnamecallmethod ~= nil
        local xb = isexecutorclosure ~= nil
        local xc = fireproximityprompt ~= nil
        local xd = firetouchinterest ~= nil
        local xe = WebSocket ~= nil
        local xf = readfile ~= nil
        local xg = writefile ~= nil
        local xh = request
        local xs = if xh then 1 else 0
        local xq = 205 * xs + 3751 * (1 - xs)
        local xr = 294 * xs + 2083 * (1 - xs)
        if not ((xq * 2931 + xr * 663 + xq * xr) % 16777213 == 856047) then
            xh = http_request
        end
        local xi = xh ~= nil
        local xk = (debug and debug.getupvalues) ~= nil
        local xm = (debug and debug.setupvalue) ~= nil
        local xn = 0
        local xo = { wZ, w_, w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, xa, xb, xc, xd, xe, xf, xg, xi, xk, xm }
        for i, v in ipairs(xo) do
            if v then
                xn += 1
            end
        end
        local wZ_1 = xn / #xo
        if wZ_1 >= 0.9 then
            return xY("Full Support", xW)
        elseif wZ_1 >= 0.6 then
            return xY("Half Support", xU)
        else
            return xY("Low Support", x1)
        end
    end
    x2 = "Unknown"
    pcall(function()
        local xA_1
        local xz_1
        if identifyexecutor then
            xA_1, xz_1 = identifyexecutor()
            local xB = xA_1 ~= ""
            local xC = type(xA_1) == "string" and xB
            if xC then
                local xB_1 = type(xz_1) == "string" and xz_1 ~= "" and xA_1 .. " " .. xz_1
                x2 = xB_1 or xA_1
            end
        end
    end)
    local x7 = x6()
    xV = os.clock()
    xX = function()
        local xH = math.floor(os.clock() - xV)
        if xH < 60 then
            return xH .. "s"
        elseif xH < 3600 then
            return string.format("%dm %ds", xH // 60, xH % 60)
        else
            return string.format("%dh %dm", xH // 3600, xH % 3600 // 60)
        end
    end
    local UserGroup = qs.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = qt, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(xZ("User", qt.DisplayName .. " @" .. qt.Name, xW), true)
    UserGroup:AddLabel(xZ("UserId", tostring(qt.UserId), "#6ec1ff"), true)
    UserGroup:AddLabel(xZ("Executor", x2 .. "  " .. x7, xW), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(xZ("Session", xX(), xU), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            pV(qt.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            pV("https://www.roblox.com/users/" .. tostring(qt.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = qs.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(xZ("Game", qf, "#6ec1ff"), true)
    Label2 = SessionGroup:AddLabel(xZ("Players", "0/0", xW), true)
    x3 = tostring(game.JobId)
    local x5 = #x3 > 18 and string.sub(x3, 1, 18) .. "..."
    local x7_1 = x5 or x3
    SessionGroup:AddLabel(xZ("Job", x7_1, x4), true)
    Label = SessionGroup:AddLabel(xZ("Ping", "0 ms", xU), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            qC:Teleport(game.PlaceId, qt)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            pV(x3, "Copied Job ID")
        end
    })
    task.spawn(function()
        local xN_1
        local xM_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(xZ("Session", xX(), xU))
            Label2:SetText(xZ("Players", #pS:GetPlayers() .. "/" .. tostring(pS.MaxPlayers), xW))
            xM_1, xN_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local xM_2 = xM_1 and xN_1 .. " ms" or "n/a"
            Label:SetText(xZ("Ping", xM_2, xU))
        end
    end)
    local SocialsGroup = qs.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = qS })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            pV(qb, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            pV(p8, "Copied website link")
        end
    })
end
if qK and not SellGroup and (not qK and TrailsGroup) or RebirthGroup and qg and (qg and not rj) or not (qK and not SellGroup and (not qK and TrailsGroup) or RebirthGroup and qg and (qg and not rj)) then
    ri = function()
        local connection
        local MovementGroup = qs.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = qs.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        qZ.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            if Toggles.NoClip and Toggles.NoClip.Value then
                local Character = qt.Character
                if Character then
                    for i, descendant in ipairs(Character:GetDescendants()) do
                        local x9_2 = descendant:IsA("BasePart") and descendant.CanCollide
                        if x9_2 then
                            descendant.CanCollide = false
                        end
                    end
                end
            end
        end)
        qU.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            if Toggles.InfJump and Toggles.InfJump.Value then
                local yh_1 = qa()
                if yh_1 then
                    yh_1:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end
        end)
        local CurrentCamera = qz.CurrentCamera
        qZ.RenderStepped:Connect(function(i0)
            if Library.Unloaded then
                return
            end
            if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
                local ym_1 = qa()
                if ym_1 then
                    ym_1.WalkSpeed = Options.WalkSpeed.Value
                end
            end
            if Toggles.Fly and Toggles.Fly.Value then
                local ym_3 = qj()
                local yn = qa()
                if ym_3 and yn then
                    yn.PlatformStand = true
                    local yn_1 = Vector3.zero
                    if qU:IsKeyDown(Enum.KeyCode.W) then
                        yn_1 += CurrentCamera.CFrame.LookVector
                    end
                    if qU:IsKeyDown(Enum.KeyCode.S) then
                        yn_1 -= CurrentCamera.CFrame.LookVector
                    end
                    if qU:IsKeyDown(Enum.KeyCode.A) then
                        yn_1 -= CurrentCamera.CFrame.RightVector
                    end
                    if qU:IsKeyDown(Enum.KeyCode.D) then
                        yn_1 += CurrentCamera.CFrame.RightVector
                    end
                    if qU:IsKeyDown(Enum.KeyCode.Space) then
                        yn_1 += Vector3.new(0, 1, 0)
                    end
                    local ys = if qU:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                    if ys == 1 then
                        yn_1 -= Vector3.new(0, 1, 0)
                    end
                    ym_3.AssemblyLinearVelocity = Vector3.zero
                    if yn_1.Magnitude > 0 then
                        ym_3.CFrame = ym_3.CFrame + yn_1.Unit * Options.FlySpeed.Value * i0
                    end
                end
            end
        end)
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                local yt = qa()
                if yt then
                    yt.PlatformStand = false
                end
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                local yy = qa()
                if yy then
                    yy.WalkSpeed = 16
                end
            end
        end)
        local function jm(jn)
            if not jn:IsA("ProximityPrompt") then
                return
            end
            jn.HoldDuration = 0
            jn.MaxActivationDistance = 50
            jn.RequiresLineOfSight = false
        end
        connection = nil
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for i, descendant in ipairs(qz:GetDescendants()) do
                    pcall(jm, descendant)
                end
                connection = qz.DescendantAdded:Connect(function(jv)
                    if Toggles.InstantProximityPrompt.Value then
                        pcall(jm, jv)
                    end
                end)
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
end
rg = function()
    local MenuGroup = qs.Settings:AddLeftGroupbox("Menu", "logs")
    local jC = 0
    local jD = tick()
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = MenuGroup:AddLabel("AFK triggers: 0")
    local function jF()
        local CurrentCamera = qz.CurrentCamera
        if not CurrentCamera then
            return
        end
        qQ:CaptureController()
        qQ:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        jC += 1
        jD = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. jC)
        end)
    end
    local connection2 = qt.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(jF)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local yN = Toggles.AntiAfk.Value and tick() - jD >= 60
            if yN then
                pcall(jF)
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
    local function j1(j2)
        pcall(function()
            qG:SetGameplayPausedNotificationEnabled(not j2)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = qM:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not j2
            end
        end)
        if not j2 then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(qt, "GameplayPaused", false)
            else
                qt.GameplayPaused = false
            end
        end)
    end
    Toggles.AntiGameplayPause:OnChanged(function()
        j1(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                j1(true)
            end
        end
    end)
    local kj = false
    local function kk()
        local PlaceId, JobId
        if kj then
            return
        end
        kj = true
        PlaceId, JobId = game.PlaceId, game.JobId
        local yZ = pcall(function()
            qC:TeleportToPlaceInstance(PlaceId, JobId, qt)
        end)
        if not yZ then
            pcall(function()
                qC:Teleport(PlaceId, qt)
            end)
        end
    end
    task.spawn(function()
        local RobloxPromptGui = qM:WaitForChild("RobloxPromptGui", 30)
        local y6 = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        if not y6 then
            return
        end
        y6.ChildAdded:Connect(function(kD)
            if Library.Unloaded then
                return
            end
            if Toggles.AutoReconnect.Value and kD.Name == "ErrorPrompt" then
                kk()
            end
        end)
    end)
    qC.TeleportInitFailed:Connect(function()
        if Toggles.AutoReconnect.Value then
            kj = false
            kk()
        end
    end)
    Toggles.Disable3D:OnChanged(function()
        pcall(function()
            qZ:Set3dRenderingEnabled(not Toggles.Disable3D.Value)
        end)
    end)
    local kT = {
        ParticleEmitter = true,
        Trail = true,
        Smoke = true,
        Fire = true,
        Sparkles = true,
        Explosion = true,
        Beam = true
    }
    local function kU(kV)
        if kT[kV.ClassName] then
            pcall(function()
                kV.Enabled = false
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
                qw.GlobalShadows = false
            end)
            pcall(function()
                qw.FogEnd = 9000000000
            end)
            for i, descendant in ipairs(qz:GetDescendants()) do
                pcall(kU, descendant)
            end
            connection = qz.DescendantAdded:Connect(function(k9)
                if Toggles.FpsBoost.Value then
                    pcall(kU, k9)
                end
            end)
        else
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic
            end)
            pcall(function()
                qw.GlobalShadows = true
            end)
            if connection then
                connection:Disconnect()
                connection = nil
            end
        end
    end)
    local ScriptGroup = qs.Settings:AddLeftGroupbox("Script", "terminal")
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
        j1(false)
        pcall(function()
            qZ:Set3dRenderingEnabled(true)
        end)
        if connection then
            connection:Disconnect()
        end
        local zi = qj()
        if zi then
            zi.Anchored = false
        end
        local zi_1 = qa()
        if zi_1 then
            zi_1.PlatformStand = false
            zi_1.WalkSpeed = 16
        end
        if getgenv then
            getgenv().__OuroborosStealABabyEggLib = nil
        end
    end)
end
rj = function(lq)
    local function lr(ls, lt)
        local zl_1 = (ls == "Toggle" and Toggles or Options)[lt]
        local zk_2 = type(zl_1) == "table" and zl_1.Type == ls
        return zk_2 and zl_1 or nil
    end
    local function lB(lC, lD)
        local Type = lD.Type
        if Type == "Toggle" then
            return { idx = lC, type = "Toggle", value = lD.Value == true }
        elseif Type == "Slider" then
            return { idx = lC, type = "Slider", value = tostring(lD.Value) }
        elseif Type == "Dropdown" then
            return { idx = lC, type = "Dropdown", multi = lD.Multi == true, value = lD.Value }
        elseif Type == "Input" then
            local zp = lD.Value or ""
            return { idx = lC, type = "Input", text = tostring(zp) }
        elseif Type == "ColorPicker" then
            return { idx = lC, type = "ColorPicker", value = lD.Value:ToHex(), transparency = lD.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = lC,
                type = "KeyPicker",
                mode = lD.Mode,
                key = lD.Value,
                modifiers = lD.Modifiers,
                toggled = lD.Toggled
            }
        else
            return nil
        end
    end
    local function lF()
        local zs = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local zt = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if zt then
                    local zt_1 = lB(k, v)
                    if zt_1 then
                        zs[#zs + 1] = zt_1
                    end
                end
            end
        end
        table.sort(zs, function(lP, lQ)
            if lP.type ~= lQ.type then
                return lP.type < lQ.type
            end
            return lP.idx < lQ.idx
        end)
        return { objects = zs }
    end
    local function lR(lS)
        local zJ
        zJ = nil
        local zK = type(lS) ~= "table" or type(lS.idx) ~= "string" or type(lS.type) ~= "string" or SaveManager.Ignore[lS.idx]
        if zK then
            return false
        end
        zJ = lr(lS.type, lS.idx)
        if not zJ then
            return false
        end
        local zK_1 = pcall(function()
            if lS.type == "Input" then
                if type(lS.text) ~= "string" then
                    return
                end
                zJ:SetValue(lS.text)
            elseif lS.type == "ColorPicker" then
                zJ:SetValueRGB(Color3.fromHex(lS.value), lS.transparency)
            elseif lS.type == "KeyPicker" then
                zJ:SetValue({ lS.key, lS.mode, lS.modifiers })
                if lS.mode == "Toggle" and lS.toggled ~= nil then
                    zJ.Toggled = lS.toggled
                    zJ:Update()
                end
            else
                zJ:SetValue(lS.value)
            end
        end)
        return zK_1
    end
    lq:AddDivider()
    lq:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    lq:AddButton("Export Config to Clipboard", function()
        local zN_1
        local zM_1
        zM_1, zN_1 = pcall(qO.JSONEncode, qO, lF())
        if not zM_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local zM_2 = setclipboard
        local zS = if zM_2 then 1 else 0
        local zQ = 1135 * zS + 1511 * (1 - zS)
        local zR = 2126 * zS + 624 * (1 - zS)
        if not ((zQ * 3660 + zR * 2453 + zQ * zR) % 16777213 == 11782188) then
            zM_2 = toclipboard
        end
        local zO = zM_2
        local zM_3 = type(zO) ~= "function" or not pcall(zO, zN_1)
        if zM_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    lq:AddButton("Import Config from Clipboard Text", function()
        local zV_1
        local zT = Options.SaveManager_ImportSource.Value
        local zT_1
        local zZ = if zT then 1 else 0
        local zX = 2152 * zZ + 3629 * (1 - zZ)
        local zY = 1009 * zZ + 1359 * (1 - zZ)
        if not ((zX * 866 + zY * 2470 + zX * zY) % 16777213 == 6527230) then
            zT = ""
        end
        local zU = tostring(zT):match("^%s*(.-)%s*$")
        if zU == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        zT_1, zV_1 = pcall(qO.JSONDecode, qO, zU)
        local zU_1 = not zT_1 or type(zV_1) ~= "table" or type(zV_1.objects) ~= "table"
        if zU_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local zT_2 = 0
        for i, v in ipairs(zV_1.objects) do
            if lR(v) then
                zT_2 += 1
            end
        end
        if zT_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local zV_2 = zT_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(zT_2, zV_2), 6)
    end)
end
rr()
ri()
rg()
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(qs.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/StealABabyEgg")
z7_9 = SaveManager:BuildConfigSection(qs.Settings)
if (not EggsGroup and rw and (not ri or not rw) or (not ri or EggsGroup or EggsGroup and not ri)) and not (not EggsGroup and rw and (not ri or not rw) or (not ri or EggsGroup or EggsGroup and not ri)) then
    z7_9(Toggles)
    rw:LoadAutoloadConfig()
else
    rj(z7_9)
    SaveManager:LoadAutoloadConfig()
    rw = Toggles.HideUiOnStart
end
if rw then
    rw = Toggles.HideUiOnStart.Value
end
if rw then
    Library:Toggle(false)
end
