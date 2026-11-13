local Jm_6, Jm_11
local wI
local wp
local RebirthServiceClient
local wO
local wv
local xc
local w_
local xH
local wH
local xo
local xN
local wN
local xu
local xb
local wT
local wA
local xh
local wZ
local w4
local xM
local wM
local xS
local wS
local PlayerDataClient
local wY
local wF
local xm
local w3
local RunService
local wL
local xs
local LocalPlayer
local Swords
local wy
local wX
local w2
local xK
local Ascension
local xr
local w8
local xQ
local wQ
local wx
local wW
local xD
local wD
local xk
local w1
local xJ
local Rarities
local wq
local State
local xP
local wP
local xw
local CombatClient
local xC
local wC
local xj
local function fn42(V)
    local yV = typeof(cloneref) == "function" and typeof(V) == "Instance"
    if yV then
        return cloneref(V)
    end
    return V
end
local function fn51(hR)
    local C5 = hR.inventory or {}
    local C5_1 = wZ(hR)
    local max = math.max
    local floor = math.floor
    local C8 = State.SalvageKeepCount or 1
    local C9 = max(1, floor(C8))
    local C6_1 = {}
    for k, v in pairs(C5) do
        local C4_2 = false
        if State.SalvageKeepEquipped and C5_1[k] then
            C4_2 = true
        else
            if State.SalvageKeepFavorites and v.favorite then
                C4_2 = true
            else
                if State.SalvageKeepLocked and v.locked then
                    C4_2 = true
                end
            end
        end
        local C7_4 = not C4_2
        if C7_4 ~= false then
            C7_4 = Swords.byId[v.id]
        end
        local C4_3 = C7_4 or nil
        local C7_5 = C4_3
        if C4_3 then
            C4_3 = wq(State.SalvageRarities, C7_5.rarity)
        end
        if C4_3 then
            local C4_4 = C6_1[v.id]
            if not C4_4 then
                C4_4 = {}
                C6_1[v.id] = C4_4
            end
            C4_4[#C4_4 + 1] = { uid = k, dps = w2(v), rank = xM(C7_5.rarity) }
        end
    end
    local C4_5 = {}
    if State.SalvageMode == "Duplicates" then
        for k, v in pairs(C6_1) do
            table.sort(v, function(ig, ih)
                return ig.dps > ih.dps
            end)
            local C5_2 = C9 + 1
            local C7_6 = #v
            local Dp = C5_2
            while Dp <= C7_6 do
                local Dq = Dp
                C4_5[#C4_5 + 1] = v[Dq].uid
                Dp += 1
            end
        end
    else
        for k, v in pairs(C6_1) do
            for i, v in ipairs(v) do
                C4_5[#C4_5 + 1] = v.uid
            end
        end
    end
    return C4_5
end
local function fn54(iy)
    wW("Salvaging")
    while true do
        local DP = wv() and w1.Salvage == iy and State.AutoSalvage
        if DP then
            local DP_1 = wI()
            local DR = DP_1 and "Salvaged" or "No Salvage"
            wW(DR)
            local DP_2 = DP_1 and 0.4 or 1
            if not xK(DP_2, "Salvage", iy) then
                return
            end
            continue
        end
        break
    end
    if w1.Salvage == iy then
        wW("Idle")
    end
end
local function fn70(fy)
    wW("Rebirth Check")
    while true do
        local BD = wv() and w1.Rebirth == fy and State.AutoRebirth
        if BD then
            local BD_1 = w8()
            if BD_1 then
                local BE = w4.cost(BD_1)
                local BF = BD_1.essence or 0
                local BF_1 = type(BE) == "number" and BF >= BE
                if BF_1 then
                    wW("Rebirthing")
                    pcall(function()
                        RebirthServiceClient:requestRebirth()
                    end)
                    if not xK(1.5, "Rebirth", fy) then
                        break
                    end
                    continue
                end
                wW("Need Essence")
                if not xK(1, "Rebirth", fy) then
                    return
                end
                continue
            end
            if not xK(0.5, "Rebirth", fy) then
                return
            end
            continue
        end
        if w1.Rebirth == fy then
            wW("Idle")
        end
        return
    end
    return
end
local function fn72(j8)
    State.AutoBestZone = j8 == true
    xo("BestZone", State.AutoBestZone, wF)
end
local function fn76(br, bs, bt)
    local y8 = os.clock() + br
    while true do
        local y9 = wv() and w1[bs] == bt and os.clock() < y8
        if y9 then
            task.wait(0.05)
            continue
        end
        break
    end
    local y8_1 = wv() and w1[bs] == bt
    return y8_1
end
local function fn86()
    return not wO.Unloaded
end
local function fn128(dq)
    local As_1
    local Ar_1
    local Aq_1
    local Ap_1
    local Ao = CombatClient:getEnemyModels()
    if type(Ao) ~= "table" then
        return nil, nil, nil
    end
    As_1, Ar_1, Aq_1, Ap_1 = nil, nil, nil, nil
    for k, v in pairs(Ao) do
        local Ao_1 = wT(v)
        if Ao_1 then
            local Magnitude = (Ao_1 - dq).Magnitude
            if not Ap_1 or Magnitude < Ap_1 then
                As_1 = k
                Ar_1 = Ao_1
                Aq_1 = v
                Ap_1 = Magnitude
            end
        end
    end
    return As_1, Ar_1, Aq_1
end
local function fn140(lc)
    State.SalvageKeepEquipped = lc == true
end
local function fn217(kg)
    State.AutoEquipBest = kg == true
    xo("Equip", State.AutoEquipBest, xk)
end
local function fn242(cc, cd)
    if type(cc) ~= "table" then
        return false
    end
    local zD = wQ(cd)
    return zD ~= nil and cc[zD] == true
end
local function fn250()
    local y_ = wM()
    local y0 = y_ and y_:FindFirstChild("HumanoidRootPart")
    return y0
end
local function fn261(df)
    if type(df) ~= "table" then
        return nil
    end
    local model = df.model
    local Ai_5
    local Aj = typeof(model) == "Instance" and model.Parent
    local Aj_4
    if Aj then
        if model:IsA("BasePart") then
            return model.Position
        end
        local Aj_1 = model:FindFirstChild("HumanoidRootPart") or model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart", true)
        if Aj_1 then
            return Aj_1.Position
        end
        local rig = df.rig
        if Aj_4 then
            local Aj_3 = rig:FindFirstChild("HumanoidRootPart") or rig.PrimaryPart or rig:FindFirstChildWhichIsA("BasePart", true)
            if Ai_5 then
                return Aj_3.Position
            end
            return nil
        end
        return nil
    end
    local rig = df.rig
    Aj_4 = typeof(rig) == "Instance" and rig.Parent
    if Aj_4 then
        local Aj_5 = rig:FindFirstChild("HumanoidRootPart") or rig.PrimaryPart or rig:FindFirstChildWhichIsA("BasePart", true)
        Ai_5 = Aj_5
        if Ai_5 then
            return Ai_5.Position
        end
        return nil
    end
    return nil
end
local function fn271(bQ)
    local zm_1
    local zl_1
    if type(Rarities.rankOf) == "function" then
        zl_1, zm_1 = pcall(Rarities.rankOf, bQ)
        local zn = zl_1 and type(zm_1) == "number"
        if zn then
            return zm_1
        end
        return 0
    end
    return 0
end
local function fn352()
    return xu[State.AuraCurrency] or "normal"
end
local function fn422(cq)
    local zP = cq
    local zQ = {}
    if zP then
        zP = cq.equipped
    end
    local zS = zP or {}
    for i, v in ipairs(zS) do
        zQ[v] = true
    end
    return zQ
end
local function fn432(j4)
    State.AutoUnlockZone = j4 == true
    xo("UnlockZone", State.AutoUnlockZone, xN)
end
local function fn466(kF)
    local EL = type(kF) == "string" and xm[kF]
    if EL then
        State.AuraStopAt = kF
    end
end
local function fn471(ko)
    State.AutoAscend = ko == true
    xo("Ascend", State.AutoAscend, xJ)
end
local function fn510(kZ)
    State.AscendRarities = xw(kZ)
end
local function fn527(kO)
    local EP = type(kO) == "string" and wA[kO] ~= nil
    if EP then
        State.TeleportZone = kO
    end
end
local function fn547(k1)
    State.AscendSkipEquipped = k1 == true
end
local function fn548(k8)
    State.SalvageKeepFavorites = k8 == true
end
local function fn576()
    wO.Unload()
end
local function fn596(k3)
    if k3 == "Duplicates" or k3 == "By Rarity" then
        State.SalvageMode = k3
    end
end
local function fn602(be)
    State.Status = be
end
local function fn608(kJ)
    local EN = type(kJ) == "string" and wS[kJ]
    if EN then
        State.RollDice = kJ
        if State.AutoRoll then
            wC()
        end
    end
end
local function fn631(kB)
    local EJ = type(kB) == "string" and xu[kB]
    if EJ then
        State.AuraCurrency = kB
    end
end
local function fn637(kc)
    State.AutoRebirth = kc == true
    xo("Rebirth", State.AutoRebirth, xc)
end
local function fn641(ci)
    local zG = {}
    if type(ci) ~= "table" then
        return zG
    end
    for k, v in pairs(ci) do
        if v == true and xb[k] then
            zG[k] = true
        else
            local zH_1 = type(v) == "string" and xb[v]
            if zH_1 then
                zG[v] = true
            end
        end
    end
    return zG
end
local function fn689()
    local y5 = wM()
    local y6 = y5 and y5:FindFirstChildOfClass("Humanoid")
    return y6
end
local function fn720(jh)
    wW("Claiming Quests")
    while true do
        local Ej = wv() and w1.Quests == jh and State.AutoClaimQuests
        if Ej then
            local Ej_1 = wN()
            local El = Ej_1 > 0 and "Claimed " .. Ej_1 or "No Quests"
            wW(El)
            local Ej_2 = Ej_1 > 0 and 0.5 or 1.25
            if not xK(Ej_2, "Quests", jh) then
                return
            end
            continue
        end
        break
    end
    if w1.Quests == jh then
        wW("Idle")
    end
end
local function fn777(jT)
    State.AutoRoll = jT == true
    xo("Roll", State.AutoRoll, xC)
end
local function fn789()
    if not PlayerDataClient.isReady() then
        return nil
    end
    return PlayerDataClient.get()
end
local function fn811(jX)
    State.AutoSkillTree = jX == true
    xo("SkillTree", State.AutoSkillTree, wL)
end
local function fn825(le)
    if type(le) == "number" then
        State.SalvageKeepCount = math.clamp(math.floor(le), 1, 20)
    end
end
local function fn851()
    return w_(State.TeleportZone)
end
local function fn857(k5)
    State.SalvageRarities = xw(k5)
end
local function fn860(kk)
    State.AutoAuraRoll = kk == true
    xo("Aura", State.AutoAuraRoll, wY)
end
local function fn887(bC)
    local zj_1
    local zi_1
    local zc = bC and Swords.byId[bC.id]
    if not zc then
        return 0
    end
    local zc_3 = 1 + ((bC.level or 1) - 1) * (wP.damagePerLevel or 0.3)
    local ze_1 = 1
    if wy(Ascension.multFor) then
        local multFor = Ascension.multFor
        local rarity = zc.rarity
        local zh_1 = bC.ascension or 0
        zi_1, zj_1 = pcall(multFor, rarity, zh_1)
        local zf_2 = zi_1 and type(zj_1) == "number"
        if zf_2 then
            ze_1 = zj_1
        end
    end
    return (zc.damage or 0) * zc_3 * ze_1 * (zc.attackSpeed or 1)
end
local function fn889(la)
    State.SalvageKeepLocked = la == true
end
local function fn906(kS)
    local ER = type(kS) == "string" and wA[kS] ~= nil
    if ER then
        State.FarmZone = kS
    end
end
local function fn907(lg)
    if type(lg) == "number" then
        State.FarmRadius = math.clamp(lg, 4, 18)
    end
end
local function fn916(j0)
    State.AutoFarm = j0 == true
    xo("Farm", State.AutoFarm, wx)
end
local function fn927(Y)
    return type(Y) == "function"
end
local function fn940(ks)
    State.AutoSalvage = ks == true
    xo("Salvage", State.AutoSalvage, xr)
end
local function fn963(li)
    if type(li) == "number" then
        State.FarmSpeed = math.clamp(li, 1, 12)
    end
end
local function fn977(b3)
    if type(b3) ~= "string" then
        return nil
    end
    local zu = Rarities.byId and Rarities.byId[b3]
    local zu_1 = type(zu) == "table" and type(zu.name) == "string"
    if zu_1 then
        return zu.name
    end
    for k, v in pairs(xb) do
        if v == b3 then
            return k
        end
    end
    return nil
end
local function fn1019()
    return LocalPlayer.Character
end
local function fn1056(kx)
    State.AutoClaimQuests = kx == true
    xo("Quests", State.AutoClaimQuests, xH)
end
local function fn1093()
    local Ct = xm[State.AuraStopAt] or "legendary"
    return xM(Ct)
end
local function fn1105(dF)
    local AE_3
    local Zones = xQ:FindFirstChild("Zones")
    local AD = Zones and Zones:FindFirstChild(tostring(dF))
    local AD_8
    if not AD then
        return nil
    end
    local SpawnPads = AD:FindFirstChild("SpawnPads")
    if SpawnPads then
        local AE_1 = Vector3.zero
        local AF = 0
        for i, child in ipairs(SpawnPads:GetChildren()) do
            local AG
            if child:IsA("BasePart") then
                AG = child.Position
            elseif child:IsA("Model") then
                local AD_2 = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart", true)
                local AH = AD_2
                if AD_2 then
                    AD_2 = AH.Position
                end
                AG = AD_2
            end
            if AG then
                AE_1 += AG
                AF += 1
            end
        end
        if AF > 0 then
            return AE_1 / AF
        end
        local Spawn = AD:FindFirstChild("Spawn")
        local AE_2 = Spawn and Spawn:IsA("BasePart")
        if AE_3 then
            return Spawn.Position
        end
        local Altar = AD:FindFirstChild("Altar")
        if Altar then
            local AC_2 = Altar.PrimaryPart or Altar:FindFirstChildWhichIsA("BasePart", true)
            if AD_8 then
                return AC_2.Position
            end
            return nil
        end
        return nil
    end
    local Spawn = AD:FindFirstChild("Spawn")
    AE_3 = Spawn and Spawn:IsA("BasePart")
    if AE_3 then
        return Spawn.Position
    end
    local Altar = AD:FindFirstChild("Altar")
    if Altar then
        local AC_3 = Altar.PrimaryPart or Altar:FindFirstChildWhichIsA("BasePart", true)
        AD_8 = AC_3
        if AD_8 then
            return AD_8.Position
        end
        return nil
    end
    return nil
end
local function fn1117()
    return xD()
end
local function fn1143(lk)
    if type(lk) == "number" then
        State.EquipBestDelay = math.clamp(lk, 1, 120)
    end
end
local function fn1200()
    gethui = w3
end
local function fn1223(ez)
    local Bi_1, Bi_2
    local Bh_2, Bh_3
    local Bk_6, Magnitude
    local Bj_6
    wW("Farming")
    local Be = 0
    local Bf = 0
    while true do
        local Bg = wv() and w1.Farm == ez and State.AutoFarm
        if Bg then
            local Bg_1 = wH()
            if not Bg_1 then
                wW("Waiting Character")
                if not xK(0.35, "Farm", ez) then
                    return
                end
                continue
            elseif os.clock() - Be >= 2.5 then
                xh(ez)
                Be = os.clock()
                local Bh_1 = not wv() or w1.Farm ~= ez or not State.AutoFarm
                if Bh_1 then
                    break
                end
                local Bg_2 = wH()
                if Bg_1 then
                    Bi_1, Bh_2 = xS(Bg_2.Position)
                    if not Bh_3 then
                        local Bj_1 = wA[State.FarmZone]
                        local Bk_1 = Bj_1 and wX(Bj_1)
                        if Bj_6 then
                            wp(Bg_2, Bk_1 + Vector3.new(0, 4, 0), Bk_1)
                            wW("Waiting Mobs")
                        else
                            wW("No Mobs")
                        end
                        if not xK(0.35, "Farm", ez) then
                            return
                        end
                    else
                        local Bj_3 = RunService.Heartbeat:Wait()
                        local Bk_2 = not wv() or w1.Farm ~= ez or not State.AutoFarm
                        if Bk_6 then
                            return
                        end
                        local Bg_3 = wH()
                        if Bg_3 then
                            Bf += Bj_3 * State.FarmSpeed
                            local Bj_4 = math.clamp(State.FarmRadius, 4, 18)
                            local Bk_3 = Vector3.new(math.cos(Bf) * Bj_4, 2.5, math.sin(Bf) * Bj_4)
                            local Bl_1 = Bh_2 + Bk_3
                            if Magnitude > 45 then
                                wp(Bg_3, Bh_2 + Vector3.new(0, 3, Bj_4), Bh_2)
                            else
                                wp(Bg_3, Bl_1, Bh_2)
                            end
                            xj(Bi_1, Bh_2)
                            wW("Orbiting Mob")
                        end
                    end
                end
                continue
            else
                if Bg_1 then
                    Bi_2, Bh_3 = xS(Bg_1.Position)
                    if not Bh_3 then
                        local Bj_5 = wA[State.FarmZone]
                        local Bk_5 = Bj_5 and wX(Bj_5)
                        Bj_6 = Bk_5
                        if Bj_6 then
                            wp(Bg_1, Bj_6 + Vector3.new(0, 4, 0), Bj_6)
                            wW("Waiting Mobs")
                        else
                            wW("No Mobs")
                        end
                        if not xK(0.35, "Farm", ez) then
                            return
                        end
                    else
                        local Bj_7 = RunService.Heartbeat:Wait()
                        Bk_6 = not wv() or w1.Farm ~= ez or not State.AutoFarm
                        if Bk_6 then
                            return
                        end
                        local Bg_4 = wH()
                        if Bg_4 then
                            Bf += Bj_7 * State.FarmSpeed
                            local Bj_8 = math.clamp(State.FarmRadius, 4, 18)
                            local Bk_7 = Vector3.new(math.cos(Bf) * Bj_8, 2.5, math.sin(Bf) * Bj_8)
                            local Bl_2 = Bh_3 + Bk_7
                            Magnitude = (Bg_4.Position - Bh_3).Magnitude
                            if Magnitude > 45 then
                                wp(Bg_4, Bh_3 + Vector3.new(0, 3, Bj_8), Bh_3)
                            else
                                wp(Bg_4, Bl_2, Bh_3)
                            end
                            xj(Bi_2, Bh_3)
                            wW("Orbiting Mob")
                        end
                    end
                end
                continue
            end
        else
            if w1.Farm == ez then
                wW("Idle")
            end
            return
        end
    end
    return
end
local function fn1234(hH)
    wW("Ascending")
    while true do
        local C0 = wv() and w1.Ascend == hH and State.AutoAscend
        if C0 then
            local C0_1 = wD()
            local C2 = C0_1 and "Ascended" or "No Ascend"
            wW(C2)
            local C0_2 = C0_1 and 0.35 or 1
            if not xK(C0_2, "Ascend", hH) then
                return
            end
            continue
        end
        break
    end
    if w1.Ascend == hH then
        wW("Idle")
    end
end
local function fn1237()
    return xs
end
local function fn1287(gk)
    wW("Equip Best")
    while true do
        local Cn = wv() and w1.Equip == gk and State.AutoEquipBest
        if Cn then
            local Cn_1 = xP()
            local Cn_2 = Cn_1 and "Equipped Best" or "Best Equipped"
            wW(Cn_2)
            local clamp = math.clamp
            local Co_1 = State.EquipBestDelay or 10
            local Cp = clamp(Co_1, 1, 120)
            if not xK(Cp, "Equip", gk) then
                break
            end
            continue
        end
        if w1.Equip == gk then
            wW("Idle")
        end
        return
    end
    return
end
wp = nil
wq = nil
wv = nil
CombatClient = nil
wx = nil
wy = nil
wA = nil
wC = nil
wD = nil
wF = nil
wH = nil
wI = nil
Rarities = nil
Ascension = nil
wL = nil
wM = nil
wN = nil
wO = nil
wP = nil
wQ = nil
Swords = nil
wS = nil
wT = nil
wW = nil
wX = nil
wY = nil
wZ = nil
w_ = nil
w1 = nil
w2 = nil
w3 = nil
w4 = nil
RebirthServiceClient = nil
State = nil
w8 = nil
LocalPlayer = nil
local Players, wr, AscensionServiceClient, wt, wu, wz, wB, wE, EquipServiceUtils, w0, w5, xa
xb = nil
xc = nil
xh = nil
xj = nil
xk = nil
xm = nil
xo = nil
xr = nil
xs = nil
xu = nil
xw = nil
PlayerDataClient = nil
xC = nil
xD = nil
xH = nil
xJ = nil
xK = nil
RunService = nil
xM = nil
xN = nil
xP = nil
xQ = nil
xS = nil
local xW, xY
local xd
local ZonesServiceClient
local xf
local xi
local xl
local xn
local xp
local xq
local xt
local xv
local xx
local HttpService
local MonetizationClient
local VirtualUser
local Dice
local UserInputService
local xG
local xI
local Quests
local QuestsServiceClient
local xZ, x_, x0, x1, x2, Codes, x5, x6
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, xW, RunService, UserInputService, VirtualUser, HttpService, xv, xs, xn, xi, LocalPlayer, Jm_11, w3 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (LocalPlayer and not xW or (not xW or not Jm_11)) and ((not xn or Jm_11) and (Jm_11 or not UserInputService)) and ((not xW or LocalPlayer) and (RunService or not LocalPlayer) or (not UserInputService or Jm_11) and (not LocalPlayer and not LocalPlayer)) or not ((LocalPlayer and not xW or (not xW or not Jm_11)) and ((not xn or Jm_11) and (Jm_11 or not UserInputService)) and ((not xW or LocalPlayer) and (RunService or not LocalPlayer) or (not UserInputService or Jm_11) and (not LocalPlayer and not LocalPlayer))) then
    Players = game:GetService("Players")
else
    w3 = game:GetService("Players")
end
xW = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
if (xi or xv) and (Jm_11 and not RunService) or (xv or not xi or RunService and not UserInputService) or not ((xi or xv) and (Jm_11 and not RunService) or (xv or not xi or RunService and not UserInputService)) then
    xv = game:GetService("GuiService")
    xs = game:GetService("CoreGui")
    xn = game:GetService("TeleportService")
    xi = game:GetService("Lighting")
else
    xn = game:GetService("GuiService")
    xi = game:GetService("CoreGui")
    xv = game:GetService("TeleportService")
    xs = game:GetService("Lighting")
end
local xV = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
Jm_11 = "OuroborosSwordRngX"
w3 = fn1237
if getgenv then
    getgenv().gethui = w3
end
wO, Jm_6, xQ, x1, x0, x_, PlayerDataClient, xx, xt, xp, xl, ZonesServiceClient, xa, RebirthServiceClient, w4, w0, EquipServiceUtils, Swords, wP, Ascension, Rarities, wE, wz, CombatClient, x2, AscensionServiceClient, wr, QuestsServiceClient, Quests, xI, Dice, MonetizationClient, Codes, xu, xq, xm, xf, xb, xd, xY, wy, wv = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local xX = 19
repeat
    local x4 = (xX * 5 + 19) % 22 + 1
    if x4 <= 11 then
        if x4 <= 6 then
            if x4 <= 3 then
                if x4 <= 2 then
                    if x4 <= 1 then
                        local KS = bit32.rrotate(bit32.bxor(bit32.lrotate(xX, 31), string.byte(tostring(xd))), 10)
                        if bit32.bxor(bit32.lrotate(bit32.bxor(KS, 4142105128), 12), 941789038) ~= bit32.lrotate(KS, 12) then
                            x_ = require(Codes.Codes)
                        else
                            Codes = require(x_.Codes)
                        end
                        xX = (xX + 75) % 88
                    else
                        if (xX * 3 + 1) * 17 % 4 == ((xX * 3 + 1) * 17 + 4) % 4 then
                            xu = { Gems = "normal", ["Lucky Dice"] = "golden", ["Ultra Dice"] = "ultra" }
                        else
                            wP = { ["Lucky Dice"] = "golden", Gems = "normal", ["Ultra Dice"] = "ultra" }
                        end
                        xX = (xX + 53) % 88
                    end
                else
                    local JS = bit32.rrotate(bit32.bxor(bit32.lrotate(xX, 8), string.byte(tostring(wO))), 20)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(JS, 1794351729), 3718395796), (bit32.bxor(bit32.band(JS, 2500615566), 2382634590))), 3718395796), 2382634590) ~= JS then
                        xQ = { "Mythical", "Celestial", "Divine", "Legendary", "Rare", "Epic" }
                    else
                        xq = { "Rare", "Epic", "Legendary", "Mythical", "Divine", "Celestial" }
                    end
                    xX = (xX + 31) % 88
                end
            elseif x4 <= 5 then
                if x4 <= 4 then
                    local JE = bit32.rrotate(bit32.bxor(bit32.lrotate(xX, 31), string.byte(tostring(xp))), 15)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(JE, 2984525545), 18), 4222011280) ~= bit32.lrotate(JE, 18) then
                        xb = {
                            Mythical = "mythical",
                            Rare = "rare",
                            Divine = "divine",
                            Legendary = "legendary",
                            Celestial = "celestial",
                            Epic = "epic"
                        }
                        xm = {}
                        xf = {}
                    else
                        xm = {
                            Rare = "rare",
                            Epic = "epic",
                            Legendary = "legendary",
                            Mythical = "mythical",
                            Divine = "divine",
                            Celestial = "celestial"
                        }
                        xf = {}
                        xb = {}
                    end
                    xX = (xX + 9) % 88
                else
                    x5 = {
                        "cxuuoln",
                        "gxcth",
                        "hqjjaicau",
                        "rfk",
                        "jfoyvbi",
                        "sqgejsma",
                        "xtz",
                        "pbrqck",
                        "auvvoe",
                        "gxiyntazq"
                    }
                    local KD = xX
                    x6 = x5[KD % 10 + 1]
                    if x6:len() >= x6:gsub("(.)", "%1%1", KD % 3 % 2 + 1):len() then
                        pcall(fn1200)
                        wO = function(u)
                            local yL
                            local yJ
                            local yK
                            yJ = nil
                            yK = nil
                            yL = nil
                            local yM = u ~= ""
                            local yN = type(u) == "string" and yM
                            assert(yN, "Atypical is required")
                            assert(type(getgenv) == "function", "getgenv is unavailable")
                            yJ = getgenv()
                            assert(type(yJ) == "table", "getgenv did not return a table")
                            local yM_2 = yJ[u]
                            if yM_2 ~= nil then
                                local yN_2 = type(yM_2) == "table" and type(yM_2.Unload) == "function"
                                assert(yN_2, "Namespace is occupied")
                                yM_2.Unload()
                                assert(yJ[u] == nil, "Previous instance did not release its namespace")
                            end
                            yK = {}
                            yL = { State = {}, Unloaded = false }
                            yL.Track = function(A)
                                assert(type(A) == "function", "Cleanup must be callable")
                                if yL.Unloaded then
                                    A()
                                else
                                    table.insert(yK, A)
                                end
                                return A
                            end
                            yL.Unload = function()
                                local yC_2
                                local yB_2
                                if yL.Unloaded then
                                    return
                                end
                                yL.Unloaded = true
                                local yz = {}
                                local yG = #yK
                                local yF = -1
                                while false and yG <= 1 or true and yG >= 1 do
                                    local yH = yG
                                    local yA_2 = table.remove(yK, yH)
                                    yB_2, yC_2 = pcall(yA_2)
                                    if not yB_2 then
                                        table.insert(yz, tostring(yC_2))
                                    end
                                    yG += yF
                                end
                                table.clear(yL.State)
                                if #yz > 0 then
                                    error("Cleanup incomplete: " .. table.concat(yz, "; "), 0)
                                end
                                if yJ[u] == yL then
                                    yJ[u] = nil
                                end
                            end
                            yJ[u] = yL
                            return yL
                        end
                        Jm_11 = wO(xd)
                    else
                        pcall(fn1200)
                        xZ = function(u)
                            local yL
                            local yJ
                            local yK
                            yJ = nil
                            yK = nil
                            yL = nil
                            local yM = u ~= ""
                            local yN = type(u) == "string" and yM
                            assert(yN, "Atypical is required")
                            assert(type(getgenv) == "function", "getgenv is unavailable")
                            yJ = getgenv()
                            assert(type(yJ) == "table", "getgenv did not return a table")
                            local yM_1 = yJ[u]
                            if yM_1 ~= nil then
                                local yN_1 = type(yM_1) == "table" and type(yM_1.Unload) == "function"
                                assert(yN_1, "Namespace is occupied")
                                yM_1.Unload()
                                assert(yJ[u] == nil, "Previous instance did not release its namespace")
                            end
                            yK = {}
                            yL = { State = {}, Unloaded = false }
                            yL.Track = function(A)
                                assert(type(A) == "function", "Cleanup must be callable")
                                if yL.Unloaded then
                                    A()
                                else
                                    table.insert(yK, A)
                                end
                                return A
                            end
                            yL.Unload = function()
                                local yC_1
                                local yB_1
                                if yL.Unloaded then
                                    return
                                end
                                yL.Unloaded = true
                                local yz = {}
                                local yG = #yK
                                local yF = -1
                                while false and yG <= 1 or true and yG >= 1 do
                                    local yH = yG
                                    local yA_1 = table.remove(yK, yH)
                                    yB_1, yC_1 = pcall(yA_1)
                                    if not yB_1 then
                                        table.insert(yz, tostring(yC_1))
                                    end
                                    yG += yF
                                end
                                table.clear(yL.State)
                                if #yz > 0 then
                                    error("Cleanup incomplete: " .. table.concat(yz, "; "), 0)
                                end
                                if yJ[u] == yL then
                                    yJ[u] = nil
                                end
                            end
                            yJ[u] = yL
                            return yL
                        end
                        xd = function(N, O)
                            local yT = type(N) == "table" and type(N.Track) == "function"
                            assert(yT, "FeatureAPI required")
                            local yT_1 = type(O) == "table" and type(O.OnUnload) == "function"
                            assert(yT_1, "UI library required")
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
                        wO = xZ(Jm_11)
                    end
                    xX = (xX + 9) % 88
                end
            else
                local KH = bit32.rrotate(bit32.bxor(bit32.lrotate(xX, 16), string.byte(tostring(CombatClient))), 26)
                if bit32.bxor(bit32.lrotate(bit32.bxor(KH, 1154133613), 24), 1833224878) == bit32.lrotate(KH, 24) then
                    xY = fn42
                else
                    xd = fn42
                end
                xX = (xX + 31) % 88
            end
        elseif x4 <= 9 then
            if x4 <= 8 then
                if x4 <= 7 then
                    x5 = { "tultj", "nkf", "vnhdmjwzpg", "dhegjnfsys", "vyxqi", "jnbzt", "qkvl" }
                    local JN = xX
                    x6 = x5[JN % 7 + 1]
                    if x6:len() <= x6:gsub("(.)", "%1%1", JN % 3 % 2 + 1):len() then
                        wy = fn927
                        wv = fn86
                    else
                        wv = fn927
                        wy = fn86
                    end
                    xX = (xX + 9) % 88
                else
                    local JC = bit32.rrotate(bit32.bxor(bit32.lrotate(xX, 1), string.byte(tostring(wE))), 1)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(JC, 2355130849), 2316861551), (bit32.bxor(bit32.band(JC, 1939836446), 4132051575))), 2316861551), 4132051575) == JC then
                        Jm_6 = xY(xW)
                    else
                        xW = Jm_6(xY)
                    end
                    xX = (xX + 31) % 88
                end
            else
                x5 = {
                    "yoefgwp",
                    "bvrgdmpb",
                    "oxwwk",
                    "ruvrruqfqau",
                    "kbwjr",
                    "vfnumkyfwv",
                    "wiedbtc",
                    "hjwnrdknjz",
                    "kpbjctg",
                    "gmzjjmbycu",
                    "dud",
                    "zjlze"
                }
                local JJ = xX
                x6 = x5[JJ % 12 + 1]
                if x6:len() <= x6:gsub("(.)", "%1%1", JJ % 3 % 2 + 1):len() then
                    xQ = xY(xV)
                else
                    xV = xQ(xY)
                end
                xX = (xX + 53) % 88
            end
        elseif x4 <= 10 then
            x5 = { "grimpxtn", "tkih", "iqjch", "ucbnpui", "qjtjhv", "rdlqcdv", "qtnosfa", "yofxr", "axgj" }
            local KQ = xX
            x6 = x5[KQ % 9 + 1]
            if x6:len() >= x6:reverse():rep(KQ % 3 + 2):len() then
                Jm_6 = x1:WaitForChild("Source")
            else
                x1 = Jm_6:WaitForChild("Source")
            end
            xX = (xX + 9) % 88
        else
            x5 = {
                "ndyvmu",
                "xneznrmgidmw",
                "nbs",
                "mcdbgtb",
                "pbcu",
                "edadhbckbzr",
                "ntyeyyuelgq",
                "hkzjza",
                "rkirqwtqjzc",
                "johsfp",
                "bfmhcnuc",
                "qell",
                "nmxmyc"
            }
            if x5[(xX * 72 + 85) % 13 + 1] < x5[(xX * 72 + 85) % 13 + 1] then
                x1 = x0:WaitForChild("Features")
            else
                x0 = x1:WaitForChild("Features")
            end
            xX = (xX + 31) % 88
        end
    elseif x4 <= 17 then
        if x4 <= 14 then
            if x4 <= 13 then
                if x4 <= 12 then
                    x5 = {
                        "xwpq",
                        "ypayg",
                        "jnjhphtppm",
                        "heowaofbvj",
                        "ncqiu",
                        "ewpynwmvxxi",
                        "yytyqyavgih",
                        "mkbhr",
                        "pmtc",
                        "pwknuypsn",
                        "assr",
                        "cgsgfiacjz"
                    }
                    if x5[(xX * 43 + 19) % 12 + 1] < x5[(xX * 43 + 19) % 12 + 1] then
                        x1 = x_:WaitForChild("Game"):WaitForChild("Items")
                    else
                        x_ = x1:WaitForChild("Game"):WaitForChild("Items")
                    end
                    xX = (xX + 75) % 88
                else
                    if (xX * 2 + 1) * 16 % 3 == ((xX * 2 + 1) * 16 + 6) % 3 then
                        PlayerDataClient = require(x0.PlayerData.PlayerDataClient)
                        xx = require(x0.Roll.RollServiceClient)
                        xt = require(x0.Upgrades.UpgradeServiceClient)
                        xp = require(x0.Skills.UpgradeServiceUtils)
                    else
                        xp = require(PlayerDataClient.PlayerData.PlayerDataClient)
                        x0 = require(PlayerDataClient.Roll.RollServiceClient)
                        xx = require(PlayerDataClient.Upgrades.UpgradeServiceClient)
                        xt = require(PlayerDataClient.Skills.UpgradeServiceUtils)
                    end
                    xX = (xX + 53) % 88
                end
            else
                if (wr and wr and (not Swords and xp) or xb and not wr and (Swords and wr) or (not wr and not xp or (xp or not w0) or x_ and x_ and (not x_ and Swords)) or ((Swords or not w0 or x_ and not wr) and ((wr or xp) and (w0 and not wr)) or Swords and not xb and (not w0 and xp) and ((not w0 or xb) and (xb or not xp)))) and not (wr and wr and (not Swords and xp) or xb and not wr and (Swords and wr) or (not wr and not xp or (xp or not w0) or x_ and x_ and (not x_ and Swords)) or ((Swords or not w0 or x_ and not wr) and ((wr or xp) and (w0 and not wr)) or Swords and not xb and (not w0 and xp) and ((not w0 or xb) and (xb or not xp)))) then
                    xa = require(ZonesServiceClient.Upgrades)
                    x0 = require(RebirthServiceClient.Zones.ZonesServiceClient)
                    x_ = require(RebirthServiceClient.Zones.ZonesServiceUtils)
                    xl = require(RebirthServiceClient.Rebirth.RebirthServiceClient)
                else
                    xl = require(x_.Upgrades)
                    ZonesServiceClient = require(x0.Zones.ZonesServiceClient)
                    xa = require(x0.Zones.ZonesServiceUtils)
                    RebirthServiceClient = require(x0.Rebirth.RebirthServiceClient)
                end
                xX = (xX + 31) % 88
            end
        elseif x4 <= 16 then
            if x4 <= 15 then
                local KU = bit32.rrotate(bit32.bxor(bit32.lrotate(xX, 20), string.byte(tostring(xx))), 28)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(KU, 3766039557), 69247724), (bit32.bxor(bit32.band(KU, 528927738), 2726702577))), 69247724), 2726702577) == KU then
                    w4 = require(x_.Rebirth)
                    w0 = require(x0.Equip.EquipServiceClient)
                    EquipServiceUtils = require(x0.Equip.EquipServiceUtils)
                    Swords = require(x_.Swords)
                else
                    x_ = require(EquipServiceUtils.Rebirth)
                    w4 = require(Swords.Equip.EquipServiceClient)
                    w0 = require(Swords.Equip.EquipServiceUtils)
                    x0 = require(EquipServiceUtils.Swords)
                end
                xX = (xX + 9) % 88
            else
                local JD = bit32.rrotate(bit32.bxor(bit32.lrotate(xX, 4), string.byte(tostring(RebirthServiceClient))), 17)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(JD, 621587411), 916953667), (bit32.bxor(bit32.band(JD, 3673379884), 3762926347))), 916953667), 3762926347) == JD then
                    wP = require(x_.Forge)
                    Ascension = require(x_.Ascension)
                else
                    x_ = require(Ascension.Forge)
                    wP = require(Ascension.Ascension)
                end
                xX = (xX + 75) % 88
            end
        else
            x5 = { "ncmdtve", "vywqy", "arqbdkjfkh", "uvgf", "jmd", "gctlh", "wjuyahar" }
            local KE = xX
            x6 = x5[KE % 7 + 1]
            if x6:len() >= x6:gsub("(.)", "%1%1", KE % 3 % 2 + 1):len() then
                x_ = require(Rarities.Rarities)
            else
                Rarities = require(x_.Rarities)
            end
            xX = (xX + 75) % 88
        end
    elseif x4 <= 20 then
        if x4 <= 19 then
            if x4 <= 18 then
                local JT = bit32.rrotate(bit32.bxor(bit32.lrotate(xX, 28), string.byte(tostring(xb))), 17)
                if bit32.bxor(bit32.lrotate(bit32.bxor(JT, 774633179), 12), 3211637474) == bit32.lrotate(JT, 12) then
                    wE = require(x0.Auras.AuraServiceClient)
                    wz = require(x_.Auras)
                    CombatClient = require(x0.Combat.CombatClient)
                else
                    x0 = require(x_.Auras.AuraServiceClient)
                    wE = require(CombatClient.Auras)
                    wz = require(x_.Combat.CombatClient)
                end
                xX = (xX + 75) % 88
            else
                local JU = bit32.rrotate(bit32.bxor(bit32.lrotate(xX, 12), string.byte(tostring(xb))), 21)
                if bit32.bxor(bit32.lrotate(bit32.bxor(JU, 3879444827), 0), 3879444827) ~= bit32.lrotate(JU, 0) then
                    wr = require(x0.Zones)
                    x_ = require(AscensionServiceClient.Ascension.AscensionServiceClient)
                    x2 = require(AscensionServiceClient.Forge.ForgeServiceClient)
                else
                    x2 = require(x_.Zones)
                    AscensionServiceClient = require(x0.Ascension.AscensionServiceClient)
                    wr = require(x0.Forge.ForgeServiceClient)
                end
                xX = (xX + 9) % 88
            end
        else
            x5 = (vector.create((xX * 6 + 4) % 11 + 1, (xX * 2 + 13) % 13 + 1, (xX * 11 + 4) % 17 + 1))
            x6 = (vector.create((xX * 3 + 8) % 11 + 1, (xX * 9 + 3) % 13 + 1, (xX * 4 + 14) % 17 + 1))
            local JO = vector.cross(x5, x6)
            local JP = vector.dot(x5, x6)
            if vector.dot(JO, JO) + JP * JP == vector.dot(x5, x5) * vector.dot(x6, x6) + 1 then
                xI = require(QuestsServiceClient.Quests.QuestsServiceClient)
                x_ = require(Quests.Quests)
                x0 = require(QuestsServiceClient.Dice.DiceServiceClient)
            else
                QuestsServiceClient = require(x0.Quests.QuestsServiceClient)
                Quests = require(x_.Quests)
                xI = require(x0.Dice.DiceServiceClient)
            end
            xX = (xX + 53) % 88
        end
    elseif x4 <= 21 then
        x4 = (vector.create((xX * 5 + 6) % 11 + 1, (xX * 4 + 2) % 13 + 1, (xX * 3 + 15) % 17 + 1))
        x5 = (vector.create((xX * 6 + 3) % 11 + 1, (xX * 4 + 2) % 13 + 1, (xX * 1 + 8) % 17 + 1))
        x6 = (vector.create((xX * 3 + 8) % 11 + 1, (xX * 10 + 7) % 13 + 1, (xX * 3 + 11) % 17 + 1))
        local x7 = (vector.create((xX * 7 + 5) % 11 + 1, (xX * 5 + 6) % 13 + 1, (xX * 13 + 4) % 17 + 1))
        if vector.dot(vector.cross(x4, x5), (vector.cross(x6, x7))) == vector.dot(x4, x6) * vector.dot(x5, x7) - vector.dot(x4, x7) * vector.dot(x5, x6) then
            Dice = require(x_.Dice)
        else
            x_ = require(Dice.Dice)
        end
        xX = (xX + 75) % 88
    else
        x4 = {
            "eho",
            "ocxwmub",
            "mibrx",
            "phcwssrq",
            "ets",
            "rjffawt",
            "tqjoxl",
            "tfoilplrbla",
            "mwdllbaucwv",
            "hgu",
            "scbscif"
        }
        if x4[(xX * 59 + 39) % 11 + 1] <= x4[(xX * 59 + 39) % 11 + 1] then
            MonetizationClient = require(x0.Monetization.MonetizationClient)
        else
            x0 = require(MonetizationClient.Monetization.MonetizationClient)
        end
        xX = (xX + 31) % 88
    end
until (xX * 63 + 31) % 88 == 62
Jm_6 = {}
Jm_11 = Rarities.order or Jm_6
for i, v in ipairs(Jm_11) do
    Jm_6 = type(v) == "table" and type(v.name) == "string" and type(v.id) == "string"
    if Jm_6 then
        xf[#xf + 1] = v.name
        xb[v.name] = v.id
    end
end
wS = {}
local wV = {}
Jm_6 = {}
Jm_11 = Dice.list
local yh = if Jm_11 then 1 else 0
local yf = 353 * yh + 1662 * (1 - yh)
local yg = 1700 * yh + 4012 * (1 - yh)
if not ((yf * 4092 + yg * 2860 + yf * yg) % 16777213 == 6906576) then
    Jm_11 = Jm_6
end
for i, v in ipairs(Jm_11) do
    Jm_6 = type(v) == "table" and type(v.name) == "string" and type(v.id) == "string"
    if Jm_6 then
        wV[#wV + 1] = v.name
        wS[v.name] = v.id
    end
end
if #wV == 0 then
    wV = { "Dice" }
    Jm_6 = Dice.DEFAULT or "Dice"
    wS.Dice = Jm_6
end
wA = {}
local wG = {}
Jm_6 = x2.zones
if Jm_6 then
    Jm_11 = 2
    repeat
        if (Jm_11 * 2 + 6) * 7 % 3 == ((Jm_11 * 2 + 6) * 7 + 0) % 3 then
            Jm_6 = x2.zones[0]
        else
            x2 = Jm_6.zones[0]
        end
        Jm_11 = (Jm_11 + 0) % 4
    until (Jm_11 * 3 + 3) % 4 == 1
end
xV = Jm_6
if Jm_6 then
    Jm_6 = xV.name
end
Jm_11 = Jm_6 or "Lobby"
Jm_6, xW = nil, nil
xV = 8
repeat
    xX = (xV * 1 + 0) % 2 + 1
    if xX <= 1 then
        if xV * 73559313 + 8 + 6 >= xV * 73559313 + 8 + 6 + 5 then
            Jm_11 = "0 - " .. Jm_6
        else
            Jm_6 = "0 - " .. Jm_11
        end
        xV = (xV + 9) % 16
    else
        if (Jm_6 and not Jm_6 and (xW and Jm_6) or (xV or not xV) and (not xW or not xW)) and (xW or xW or (Jm_6 or not Jm_6) or (not xW or not xW or xV and xW)) and (xV and xW and (Jm_6 or Jm_6) or (not xW and Jm_6 or (not xW or xW)) or (xW and not xW or (Jm_6 or Jm_6) or (Jm_6 or xV or not Jm_6 and Jm_6))) or not ((Jm_6 and not Jm_6 and (xW and Jm_6) or (xV or not xV) and (not xW or not xW)) and (xW or xW or (Jm_6 or not Jm_6) or (not xW or not xW or xV and xW)) and (xV and xW and (Jm_6 or Jm_6) or (not xW and Jm_6 or (not xW or xW)) or (xW and not xW or (Jm_6 or Jm_6) or (Jm_6 or xV or not Jm_6 and Jm_6)))) then
            wG[#wG + 1] = Jm_6
            wA[Jm_6] = 0
            xW = {}
        else
            Jm_6[#Jm_6 + 1] = wG
            xW[wG] = 0
            wA = {}
        end
        xV = (xV + 5) % 16
    end
until (xV * 13 + 8) % 16 == 6
if type(x2.zones) == "table" then
    for k, v in pairs(x2.zones) do
        Jm_6 = type(k) == "number" and k > 0 and type(v) == "table"
        if Jm_6 then
            xW[#xW + 1] = k
        end
    end
end
table.sort(xW)
for i, v in ipairs(xW) do
    Jm_6 = x2.zones[v]
    Jm_11 = tostring(v)
    xV = Jm_6.name or "Zone " .. v
    Jm_6 = Jm_11 .. " - " .. tostring(xV)
    wG[#wG + 1] = Jm_6
    wA[Jm_6] = v
end
local xg = {}
for k in pairs(Codes) do
    if type(k) == "string" then
        xg[#xg + 1] = k
    end
end
State = nil
table.sort(xg)
State = wO.State
State.Status = "Idle"
State.AutoRoll = false
State.AutoSkillTree = false
State.AutoFarm = false
State.AutoUnlockZone = false
State.AutoBestZone = false
State.AutoRebirth = false
State.AutoEquipBest = false
State.AutoAuraRoll = false
State.AutoAscend = false
State.AutoSalvage = false
State.AutoClaimQuests = false
State.AuraCurrency = "Gems"
State.AuraStopAt = "Legendary"
Jm_6 = wV[1] or "Dice"
State.RollDice = Jm_6
State.TeleportZone = wG[1]
Jm_6 = wG[2] or wG[1]
w1, xW, xX, wW, wM, wH, wt, xK, w8, w2, xM, xo, wQ, wq, xw, wZ, wC, xC, wL, wT, xS, wX, xh, wp, xj, wx, xN, wF, xc, xP, xk, wB, wu, xG, wY, wD, xJ, w5, wI, xr, wN, xH, w_, xD, xV = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Jm_11 = 50
repeat
    xY = (Jm_11 * 7 + 3) % 17 + 1
    if xY <= 9 then
        if xY <= 5 then
            if xY <= 3 then
                if xY <= 2 then
                    if xY <= 1 then
                        xZ = (vector.create((Jm_11 * 2 + 5) % 11 + 1, (Jm_11 * 6 + 11) % 13 + 1, (Jm_11 * 6 + 14) % 17 + 1))
                        x_ = (vector.create((Jm_11 * 7 + 9) % 11 + 1, (Jm_11 * 4 + 8) % 13 + 1, (Jm_11 * 4 + 5) % 17 + 1))
                        x0 = (vector.create((Jm_11 * 6 + 7) % 11 + 1, (Jm_11 * 2 + 11) % 13 + 1, (Jm_11 * 1 + 6) % 17 + 1))
                        if vector.dot(vector.cross(xZ, x_), x0) == vector.dot(vector.cross(x_, x0), xZ) + 1 then
                            wX = function(cF)
                                wW("Rolling")
                                wC()
                                local z7 = false
                                repeat
                                    local z4 = wv() and w1.Roll == cF and State.AutoRoll
                                    if z4 then
                                        wC()
                                        local networker = xx.networker
                                        local z4_2 = not networker or not wy(networker.fetch)
                                        if z4_2 then
                                            wW("Waiting Roll")
                                            if not xK(0.5, "Roll", cF) then
                                                return
                                            end
                                        else
                                            pcall(function()
                                                networker:fetch("roll")
                                            end)
                                            if not xK(0.05, "Roll", cF) then
                                                return
                                            end
                                        end
                                    else
                                        z7 = true
                                    end
                                until z7
                                if w1.Roll == cF then
                                    wW("Idle")
                                end
                            end
                            xS = function(cT)
                                wW("Buying Skills")
                                while true do
                                    local z8 = wv() and w1.SkillTree == cT and State.AutoSkillTree
                                    if z8 then
                                        local z8_2 = w8()
                                        local z9 = z8_2
                                        local z9_7
                                        local Aa = false
                                        if z9 then
                                            z9 = type(xl.byId) == "table"
                                        end
                                        if z9 then
                                            for k in pairs(xl.byId) do
                                                local Ah = k
                                                local z9_5 = not wv() or w1.SkillTree ~= cT or not State.AutoSkillTree
                                                if z9_5 then
                                                    break
                                                else
                                                    local z9_6 = xp.isNodeAvailable(z8_2, Ah)
                                                    local Ab = xp.canAfford(z8_2, Ah)
                                                    local Ab_2
                                                    if z9_6 and Ab then
                                                        z9_7, Ab_2 = pcall(function()
                                                            return xt:unlockUpgrade(Ah)
                                                        end)
                                                        if z9_7 and Ab_2 then
                                                            Aa = true
                                                            wW("Bought " .. tostring(Ah))
                                                            local z9_8 = w8() or z8_2
                                                            z8_2 = z9_8
                                                            if not xK(0.15, "SkillTree", cT) then
                                                                return
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                        if not Aa then
                                            wW("No Affordable Skills")
                                            if not xK(0.75, "SkillTree", cT) then
                                                return
                                            end
                                        end
                                        continue
                                    end
                                    break
                                end
                                if w1.SkillTree == cT then
                                    wW("Idle")
                                end
                            end
                            xC = fn261
                            wT = fn128
                            wL = fn1105
                        else
                            xC = function(cF)
                                wW("Rolling")
                                wC()
                                local z7 = false
                                repeat
                                    local z4 = wv() and w1.Roll == cF and State.AutoRoll
                                    if z4 then
                                        wC()
                                        local networker = xx.networker
                                        local z4_1 = not networker or not wy(networker.fetch)
                                        if z4_1 then
                                            wW("Waiting Roll")
                                            if not xK(0.5, "Roll", cF) then
                                                return
                                            end
                                        else
                                            pcall(function()
                                                networker:fetch("roll")
                                            end)
                                            if not xK(0.05, "Roll", cF) then
                                                return
                                            end
                                        end
                                    else
                                        z7 = true
                                    end
                                until z7
                                if w1.Roll == cF then
                                    wW("Idle")
                                end
                            end
                            wL = function(cT)
                                wW("Buying Skills")
                                while true do
                                    local z8 = wv() and w1.SkillTree == cT and State.AutoSkillTree
                                    if z8 then
                                        local z8_1 = w8()
                                        local z9 = z8_1
                                        local z9_3
                                        local Aa = false
                                        if z9 then
                                            z9 = type(xl.byId) == "table"
                                        end
                                        if z9 then
                                            for k in pairs(xl.byId) do
                                                local Ah = k
                                                local z9_1 = not wv() or w1.SkillTree ~= cT or not State.AutoSkillTree
                                                if z9_1 then
                                                    break
                                                else
                                                    local z9_2 = xp.isNodeAvailable(z8_1, Ah)
                                                    local Ab = xp.canAfford(z8_1, Ah)
                                                    local Ab_1
                                                    if z9_2 and Ab then
                                                        z9_3, Ab_1 = pcall(function()
                                                            return xt:unlockUpgrade(Ah)
                                                        end)
                                                        if z9_3 and Ab_1 then
                                                            Aa = true
                                                            wW("Bought " .. tostring(Ah))
                                                            local z9_4 = w8() or z8_1
                                                            z8_1 = z9_4
                                                            if not xK(0.15, "SkillTree", cT) then
                                                                return
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                        if not Aa then
                                            wW("No Affordable Skills")
                                            if not xK(0.75, "SkillTree", cT) then
                                                return
                                            end
                                        end
                                        continue
                                    end
                                    break
                                end
                                if w1.SkillTree == cT then
                                    wW("Idle")
                                end
                            end
                            wT = fn261
                            xS = fn128
                            wX = fn1105
                        end
                        Jm_11 = (Jm_11 + 107) % 136
                    else
                        xZ = {
                            "sogropihm",
                            "pxekmy",
                            "vebmodzyrpd",
                            "fznak",
                            "loz",
                            "mbgc",
                            "vejvsmutss",
                            "ffgaxwcntal",
                            "cwtjqwfrwh",
                            "wqraz",
                            "ycxvmzqur",
                            "cjuvdyhxzbt"
                        }
                        local JA = Jm_11
                        x_ = xZ[JA % 12 + 1]
                        if x_:len() >= x_:gsub("(.)", "%1%1", JA % 3 % 2 + 1):len() then
                            xN = function(dZ)
                                local AT = w8()
                                if not AT then
                                    return false
                                end
                                local AS = wA[State.FarmZone]
                                if AS == nil then
                                    AS = xa.maxZoneOf(AT)
                                end
                                if type(AS) ~= "number" then
                                    return false
                                elseif AS == 0 then
                                    return false
                                else
                                    if (AT.zone or 1) == AS then
                                        return true
                                    end
                                    local AU_3 = xa.travelState(AT, AS)
                                    if AU_3 ~= "unlocked" and AU_3 ~= "current" then
                                        wW("Farm Zone Locked")
                                        return false
                                    end
                                    wW("Travel Farm Zone")
                                    pcall(function()
                                        ZonesServiceClient:travel(AS)
                                    end)
                                    if not xK(2.2, "Farm", dZ) then
                                        return false
                                    end
                                    local AT_2 = w8()
                                    local AU_4 = AT_2
                                    if AU_4 then
                                        local AV_4 = AT_2.zone
                                        local A_ = if AV_4 then 1 else 0
                                        local AY = 2916 * A_ + 600 * (1 - A_)
                                        local AZ = 2987 * A_ + 1224 * (1 - A_)
                                        if not ((AY * 374 + AZ * 4033 + AY * AZ) % 16777213 == 5070034) then
                                            AV_4 = 1
                                        end
                                        AU_4 = AV_4 == AS
                                    end
                                    return AU_4
                                end
                            end
                            xj = function(ee, ef, eg)
                                pcall(function()
                                    ee.AssemblyLinearVelocity = Vector3.zero
                                    ee.AssemblyAngularVelocity = Vector3.zero
                                end)
                                local A0 = wt()
                                if A0 then
                                    pcall(function()
                                        A0:ChangeState(Enum.HumanoidStateType.Physics)
                                    end)
                                end
                                local A2 = eg or ef + Vector3.new(0, 0, -1)
                                ee.CFrame = CFrame.new(ef, A2)
                            end
                            xh = function(en, eo)
                                local A4 = w8()
                                if not A4 then
                                    return
                                end
                                local A6 = A4.equipped or {}
                                for i, v in ipairs(A6) do
                                    local Bd = v
                                    pcall(function()
                                        CombatClient:requestHit(Bd, en, eo)
                                    end)
                                end
                            end
                            wp = fn1223
                            wx = function(e_)
                                wW("Checking Zones")
                                local Bv = false
                                repeat
                                    local Br = wv() and w1.UnlockZone == e_ and State.AutoUnlockZone
                                    if Br then
                                        local Br_3 = w8()
                                        local Bs = Br_3 and xa.canAdvance(Br_3)
                                        if Bs then
                                            local Bs_2 = xa.advanceInfo(Br_3)
                                            local Bq = Bs_2 and Bs_2.nextId
                                            if Bq then
                                                wW("Unlocking Zone " .. tostring(Bq))
                                                pcall(function()
                                                    ZonesServiceClient:travel(Bq)
                                                end)
                                                if not xK(2, "UnlockZone", e_) then
                                                    return
                                                end
                                            elseif not xK(1, "UnlockZone", e_) then
                                                return
                                            end
                                        else
                                            wW("No Zone Unlock")
                                            if not xK(1, "UnlockZone", e_) then
                                                return
                                            end
                                        end
                                    else
                                        Bv = true
                                    end
                                until Bv
                                if w1.UnlockZone == e_ then
                                    wW("Idle")
                                end
                            end
                        else
                            xh = function(dZ)
                                local AT = w8()
                                if not AT then
                                    return false
                                end
                                local AS = wA[State.FarmZone]
                                if AS == nil then
                                    AS = xa.maxZoneOf(AT)
                                end
                                if type(AS) ~= "number" then
                                    return false
                                elseif AS == 0 then
                                    return false
                                else
                                    if (AT.zone or 1) == AS then
                                        return true
                                    end
                                    local AU_1 = xa.travelState(AT, AS)
                                    if AU_1 ~= "unlocked" and AU_1 ~= "current" then
                                        wW("Farm Zone Locked")
                                        return false
                                    end
                                    wW("Travel Farm Zone")
                                    pcall(function()
                                        ZonesServiceClient:travel(AS)
                                    end)
                                    if not xK(2.2, "Farm", dZ) then
                                        return false
                                    end
                                    local AT_1 = w8()
                                    local AU_2 = AT_1
                                    if AU_2 then
                                        local AV_2 = AT_1.zone
                                        local A_ = if AV_2 then 1 else 0
                                        local AY = 2916 * A_ + 600 * (1 - A_)
                                        local AZ = 2987 * A_ + 1224 * (1 - A_)
                                        if not ((AY * 374 + AZ * 4033 + AY * AZ) % 16777213 == 5070034) then
                                            AV_2 = 1
                                        end
                                        AU_2 = AV_2 == AS
                                    end
                                    return AU_2
                                end
                            end
                            wp = function(ee, ef, eg)
                                pcall(function()
                                    ee.AssemblyLinearVelocity = Vector3.zero
                                    ee.AssemblyAngularVelocity = Vector3.zero
                                end)
                                local A0 = wt()
                                if A0 then
                                    pcall(function()
                                        A0:ChangeState(Enum.HumanoidStateType.Physics)
                                    end)
                                end
                                local A2 = eg or ef + Vector3.new(0, 0, -1)
                                ee.CFrame = CFrame.new(ef, A2)
                            end
                            xj = function(en, eo)
                                local A4 = w8()
                                if not A4 then
                                    return
                                end
                                local A6 = A4.equipped or {}
                                for i, v in ipairs(A6) do
                                    local Bd = v
                                    pcall(function()
                                        CombatClient:requestHit(Bd, en, eo)
                                    end)
                                end
                            end
                            wx = fn1223
                            xN = function(e_)
                                wW("Checking Zones")
                                local Bv = false
                                repeat
                                    local Br = wv() and w1.UnlockZone == e_ and State.AutoUnlockZone
                                    if Br then
                                        local Br_1 = w8()
                                        local Bs = Br_1 and xa.canAdvance(Br_1)
                                        if Bs then
                                            local Bs_1 = xa.advanceInfo(Br_1)
                                            local Bq = Bs_1 and Bs_1.nextId
                                            if Bq then
                                                wW("Unlocking Zone " .. tostring(Bq))
                                                pcall(function()
                                                    ZonesServiceClient:travel(Bq)
                                                end)
                                                if not xK(2, "UnlockZone", e_) then
                                                    return
                                                end
                                            elseif not xK(1, "UnlockZone", e_) then
                                                return
                                            end
                                        else
                                            wW("No Zone Unlock")
                                            if not xK(1, "UnlockZone", e_) then
                                                return
                                            end
                                        end
                                    else
                                        Bv = true
                                    end
                                until Bv
                                if w1.UnlockZone == e_ then
                                    wW("Idle")
                                end
                            end
                        end
                        Jm_11 = (Jm_11 + 107) % 136
                    end
                else
                    if Jm_11 * 67371345 + 10 + 5 <= Jm_11 * 67371345 + 10 + 5 + 4 then
                        wF = function(fh)
                            wW("Best Zone")
                            local BC = false
                            repeat
                                local Bx = wv() and w1.BestZone == fh and State.AutoBestZone
                                if Bx then
                                    local Bx_4 = w8()
                                    if Bx_4 then
                                        local Bw = xa.maxZoneOf(Bx_4)
                                        if Bw and Bw ~= (Bx_4.zone or 1) and Bw ~= 0 then
                                            wW("Traveling Zone " .. tostring(Bw))
                                            pcall(function()
                                                ZonesServiceClient:travel(Bw)
                                            end)
                                            if not xK(2, "BestZone", fh) then
                                                return
                                            end
                                        else
                                            wW("At Best Zone")
                                            if not xK(1.25, "BestZone", fh) then
                                                return
                                            end
                                        end
                                    elseif not xK(0.5, "BestZone", fh) then
                                        return
                                    end
                                else
                                    BC = true
                                end
                            until BC
                            if w1.BestZone == fh then
                                wW("Idle")
                            end
                        end
                        xc = fn70
                        xP = function()
                            local BH = w8()
                            local BI = not BH or type(BH.inventory) ~= "table"
                            if BI then
                                return false
                            end
                            local BI_5 = EquipServiceUtils.getMaxSlots(BH)
                            local BJ = {}
                            for k, v in pairs(BH.inventory) do
                                BJ[#BJ + 1] = { uid = k, dps = w2(v) }
                            end
                            table.sort(BJ, function(fX, fY)
                                return fX.dps > fY.dps
                            end)
                            local BK = math.min(BI_5, #BJ)
                            local BI_6 = {}
                            local BX = 1
                            while BX <= BK do
                                local BY = BX
                                BI_6[BJ[BY].uid] = true
                                BX += 1
                            end
                            local BL = {}
                            local BM = {}
                            local BN = BH.equipped
                            local B1 = if BN then 1 else 0
                            local B_ = 514 * B1 + 582 * (1 - B1)
                            local B0 = 2135 * B1 + 1936 * (1 - B1)
                            if not ((B_ * 3782 + B0 * 4074 + B_ * B0) % 16777213 == 11739328) then
                                BN = BM
                            end
                            for i, v in ipairs(BN) do
                                BL[v] = true
                            end
                            local BH_2 = {}
                            local BM_2 = {}
                            for k in pairs(BL) do
                                if not BI_6[k] then
                                    BM_2[#BM_2 + 1] = k
                                end
                            end
                            local Cc = 1
                            while Cc <= BK do
                                local uid = BJ[Cc].uid
                                if not BL[uid] then
                                    BH_2[#BH_2 + 1] = uid
                                end
                                Cc += 1
                            end
                            if #BM_2 == 0 and #BH_2 == 0 then
                                return false
                            end
                            for i, v in ipairs(BM_2) do
                                local Ci = v
                                pcall(function()
                                    w0:requestUnequip(Ci)
                                end)
                            end
                            for i, v in ipairs(BH_2) do
                                local Cm = v
                                pcall(function()
                                    w0:requestEquip(Cm)
                                end)
                            end
                            return true
                        end
                        xk = fn1287
                    else
                        xk = function(fh)
                            wW("Best Zone")
                            local BC = false
                            repeat
                                local Bx = wv() and w1.BestZone == fh and State.AutoBestZone
                                if Bx then
                                    local Bx_1 = w8()
                                    if Bx_1 then
                                        local Bw = xa.maxZoneOf(Bx_1)
                                        if Bw and Bw ~= (Bx_1.zone or 1) and Bw ~= 0 then
                                            wW("Traveling Zone " .. tostring(Bw))
                                            pcall(function()
                                                ZonesServiceClient:travel(Bw)
                                            end)
                                            if not xK(2, "BestZone", fh) then
                                                return
                                            end
                                        else
                                            wW("At Best Zone")
                                            if not xK(1.25, "BestZone", fh) then
                                                return
                                            end
                                        end
                                    elseif not xK(0.5, "BestZone", fh) then
                                        return
                                    end
                                else
                                    BC = true
                                end
                            until BC
                            if w1.BestZone == fh then
                                wW("Idle")
                            end
                        end
                        wF = fn70
                        xc = function()
                            local BH = w8()
                            local BI = not BH or type(BH.inventory) ~= "table"
                            if BI then
                                return false
                            end
                            local BI_1 = EquipServiceUtils.getMaxSlots(BH)
                            local BJ = {}
                            for k, v in pairs(BH.inventory) do
                                BJ[#BJ + 1] = { uid = k, dps = w2(v) }
                            end
                            table.sort(BJ, function(fX, fY)
                                return fX.dps > fY.dps
                            end)
                            local BK = math.min(BI_1, #BJ)
                            local BI_2 = {}
                            local BX = 1
                            while BX <= BK do
                                local BY = BX
                                BI_2[BJ[BY].uid] = true
                                BX += 1
                            end
                            local BL = {}
                            local BM = {}
                            local BN = BH.equipped
                            local B1 = if BN then 1 else 0
                            local B_ = 514 * B1 + 582 * (1 - B1)
                            local B0 = 2135 * B1 + 1936 * (1 - B1)
                            if not ((B_ * 3782 + B0 * 4074 + B_ * B0) % 16777213 == 11739328) then
                                BN = BM
                            end
                            for i, v in ipairs(BN) do
                                BL[v] = true
                            end
                            local BH_1 = {}
                            local BM_1 = {}
                            for k in pairs(BL) do
                                if not BI_2[k] then
                                    BM_1[#BM_1 + 1] = k
                                end
                            end
                            local Cc = 1
                            while Cc <= BK do
                                local uid = BJ[Cc].uid
                                if not BL[uid] then
                                    BH_1[#BH_1 + 1] = uid
                                end
                                Cc += 1
                            end
                            if #BM_1 == 0 and #BH_1 == 0 then
                                return false
                            end
                            for i, v in ipairs(BM_1) do
                                local Ci = v
                                pcall(function()
                                    w0:requestUnequip(Ci)
                                end)
                            end
                            for i, v in ipairs(BH_1) do
                                local Cm = v
                                pcall(function()
                                    w0:requestEquip(Cm)
                                end)
                            end
                            return true
                        end
                        xP = fn1287
                    end
                    Jm_11 = (Jm_11 + 5) % 136
                end
            elseif xY <= 4 then
                xZ = {
                    "zehcub",
                    "gabogx",
                    "hfzp",
                    "mvbslcfve",
                    "lteuia",
                    "mrmaxwcgt",
                    "tqzd",
                    "nadvunhpq",
                    "shu",
                    "ciygp",
                    "obqe"
                }
                local KO = Jm_11
                x_ = xZ[KO % 11 + 1]
                if x_:len() >= x_:gsub("(.)", "%1%1", KO % 3 % 2 + 1):len() then
                    wu = fn352
                    xG = fn1093
                    wB = function(gD, gE)
                        local UIToggles = wO.UIToggles
                        local Cw = UIToggles and UIToggles[gD]
                        local Cx_2 = type(Cw) == "table" and wy(Cw.SetValue)
                        if Cx_2 then
                            pcall(function()
                                Cw:SetValue(gE)
                            end)
                        end
                    end
                else
                    wB = fn352
                    wu = fn1093
                    xG = function(gD, gE)
                        local UIToggles = wO.UIToggles
                        local Cw = UIToggles and UIToggles[gD]
                        local Cx_1 = type(Cw) == "table" and wy(Cw.SetValue)
                        if Cx_1 then
                            pcall(function()
                                Cw:SetValue(gE)
                            end)
                        end
                    end
                end
                Jm_11 = (Jm_11 + 107) % 136
            else
                if Jm_11 * 22227379 + 6 + 5 >= Jm_11 * 22227379 + 6 + 5 + 1 then
                    wI = function(gM)
                        local CC_3
                        wW("Aura Rolling")
                        local CI = false
                        repeat
                            local CA
                            local CB = wv() and w1.Aura == gM and State.AutoAuraRoll
                            local CB_7
                            if CB then
                                CA = wB()
                                CB_7, CC_3 = pcall(function()
                                    return wE:requestRoll(CA, "")
                                end)
                                local CD = CB_7 and type(CC_3) == "table" and CC_3.ok and type(CC_3.auraId) == "string"
                                if CD then
                                    local CB_8 = wz.byId[CC_3.auraId]
                                    local CD_4 = CB_8 and xM(CB_8.rarity)
                                    local CE = CD_4 or 0
                                    local CE_2 = wu()
                                    local CB_9 = CB_8 and CB_8.name or CC_3.auraId
                                    wW("Aura " .. tostring(CB_9))
                                    if CE > 0 and CE_2 > 0 and CE >= CE_2 then
                                        State.AutoAuraRoll = false
                                        w1.Aura = w1.Aura + 1
                                        wW("Stopped At " .. State.AuraStopAt)
                                        xG("AutoAuraRoll", false)
                                        return
                                    end
                                    if not xK(0.2, "Aura", gM) then
                                        return
                                    end
                                else
                                    local CB_11 = type(CC_3) == "table"
                                    if CB_11 then
                                        CB_11 = CC_3.reason or CC_3.err
                                    end
                                    if (CB_11 or nil) == "broke" then
                                        wW("Aura Broke")
                                    else
                                        wW("Aura Wait")
                                    end
                                    if not xK(0.75, "Aura", gM) then
                                        return
                                    end
                                end
                            else
                                CI = true
                            end
                        until CI
                        if w1.Aura == gM then
                            wW("Idle")
                        end
                    end
                else
                    wY = function(gM)
                        local CC_1
                        wW("Aura Rolling")
                        local CI = false
                        repeat
                            local CA
                            local CB = wv() and w1.Aura == gM and State.AutoAuraRoll
                            local CB_1
                            if CB then
                                CA = wB()
                                CB_1, CC_1 = pcall(function()
                                    return wE:requestRoll(CA, "")
                                end)
                                local CD = CB_1 and type(CC_1) == "table" and CC_1.ok and type(CC_1.auraId) == "string"
                                if CD then
                                    local CB_2 = wz.byId[CC_1.auraId]
                                    local CD_1 = CB_2 and xM(CB_2.rarity)
                                    local CE = CD_1 or 0
                                    local CE_1 = wu()
                                    local CB_3 = CB_2 and CB_2.name or CC_1.auraId
                                    wW("Aura " .. tostring(CB_3))
                                    if CE > 0 and CE_1 > 0 and CE >= CE_1 then
                                        State.AutoAuraRoll = false
                                        w1.Aura = w1.Aura + 1
                                        wW("Stopped At " .. State.AuraStopAt)
                                        xG("AutoAuraRoll", false)
                                        return
                                    end
                                    if not xK(0.2, "Aura", gM) then
                                        return
                                    end
                                else
                                    local CB_5 = type(CC_1) == "table"
                                    if CB_5 then
                                        CB_5 = CC_1.reason or CC_1.err
                                    end
                                    if (CB_5 or nil) == "broke" then
                                        wW("Aura Broke")
                                    else
                                        wW("Aura Wait")
                                    end
                                    if not xK(0.75, "Aura", gM) then
                                        return
                                    end
                                end
                            else
                                CI = true
                            end
                        until CI
                        if w1.Aura == gM then
                            wW("Idle")
                        end
                    end
                end
                Jm_11 = (Jm_11 + 5) % 136
            end
        elseif xY <= 7 then
            if xY <= 6 then
                xZ = (vector.create((Jm_11 * 7 + 6) % 11 + 1, (Jm_11 * 11 + 10) % 13 + 1, (Jm_11 * 3 + 13) % 17 + 1))
                x_ = (vector.create((Jm_11 * 4 + 3) % 11 + 1, (Jm_11 * 5 + 7) % 13 + 1, (Jm_11 * 11 + 6) % 17 + 1))
                x0 = (vector.create((Jm_11 * 2 + 5) % 5 + 1, (Jm_11 * 3 + 6) % 7 + 1, (Jm_11 * 2 + 7) % 9 + 1))
                if math.abs((vector.angle(xZ, x_, x0))) - math.abs((vector.angle(x_, xZ, x0))) == 5 then
                    xD = function()
                        local CK
                        local CL = w8()
                        local CL_10
                        local CM = not CL or type(CL.inventory) ~= "table"
                        local CM_4
                        if CM then
                            return false
                        end
                        local inventory = CL.inventory
                        local CN = wZ(CL)
                        local CL_6 = Ascension.COPIES_REQUIRED or 10
                        local CL_7 = Ascension.MAX_STARS or 3
                        local CP = {}
                        for k, v in pairs(inventory) do
                            local CL_8 = Swords.byId[v.id]
                            local CR = CL_8 and wq(State.AscendRarities, CL_8.rarity)
                            if CR then
                                local CR_3 = v.ascension or 0
                                local CR_4 = xM(CL_8.rarity)
                                local CL_9 = Ascension.countFor(inventory, k)
                                if CR_3 < CL_7 and CL_9 >= CL_6 then
                                    if not (State.AscendSkipEquipped and CN[k]) then
                                        CP[#CP + 1] = { uid = k, stars = CR_3, rank = CR_4, usable = CL_9 }
                                    end
                                end
                            end
                        end
                        table.sort(CP, function(hx, hy)
                            if hx.stars ~= hy.stars then
                                return hx.stars > hy.stars
                            elseif hx.rank ~= hy.rank then
                                return hx.rank > hy.rank
                            else
                                return hx.uid < hy.uid
                            end
                        end)
                        CK = CP[1]
                        if not CK then
                            return false
                        end
                        CL_10, CM_4 = pcall(function()
                            return AscensionServiceClient:ascend(CK.uid)
                        end)
                        local CN_2 = CL_10 and type(CM_4) == "table" and CM_4.ok == true
                        return CN_2
                    end
                else
                    wD = function()
                        local CK
                        local CL = w8()
                        local CL_5
                        local CM = not CL or type(CL.inventory) ~= "table"
                        local CM_2
                        if CM then
                            return false
                        end
                        local inventory = CL.inventory
                        local CN = wZ(CL)
                        local CL_1 = Ascension.COPIES_REQUIRED or 10
                        local CL_2 = Ascension.MAX_STARS or 3
                        local CP = {}
                        for k, v in pairs(inventory) do
                            local CL_3 = Swords.byId[v.id]
                            local CR = CL_3 and wq(State.AscendRarities, CL_3.rarity)
                            if CR then
                                local CR_1 = v.ascension or 0
                                local CR_2 = xM(CL_3.rarity)
                                local CL_4 = Ascension.countFor(inventory, k)
                                if CR_1 < CL_2 and CL_4 >= CL_1 then
                                    if not (State.AscendSkipEquipped and CN[k]) then
                                        CP[#CP + 1] = { uid = k, stars = CR_1, rank = CR_2, usable = CL_4 }
                                    end
                                end
                            end
                        end
                        table.sort(CP, function(hx, hy)
                            if hx.stars ~= hy.stars then
                                return hx.stars > hy.stars
                            elseif hx.rank ~= hy.rank then
                                return hx.rank > hy.rank
                            else
                                return hx.uid < hy.uid
                            end
                        end)
                        CK = CP[1]
                        if not CK then
                            return false
                        end
                        CL_5, CM_2 = pcall(function()
                            return AscensionServiceClient:ascend(CK.uid)
                        end)
                        local CN_1 = CL_5 and type(CM_2) == "table" and CM_2.ok == true
                        return CN_1
                    end
                end
                Jm_11 = (Jm_11 + 90) % 136
            else
                xZ = {
                    "vimrsozbh",
                    "gxi",
                    "liouhmxap",
                    "olihaseg",
                    "vrfu",
                    "fcabg",
                    "ltqkmx",
                    "iwzjmlfhqly",
                    "vgxkagot",
                    "mymoppbzy"
                }
                local KC = Jm_11
                x_ = xZ[KC % 10 + 1]
                if x_:len() <= x_:reverse():rep(KC % 3 + 2):len() then
                    xJ = fn1234
                    w5 = fn51
                    wI = function()
                        local DC
                        local DD = w8()
                        local DD_4
                        if not DD then
                            return false
                        end
                        local DE = w5(DD)
                        local DE_2
                        if #DE == 0 then
                            return false
                        end
                        DC = {}
                        local DD_3 = math.min(50, #DE)
                        local DJ = 1
                        while DJ <= DD_3 do
                            local DK = DJ
                            DC[DK] = DE[DK]
                            DJ += 1
                        end
                        DD_4, DE_2 = pcall(function()
                            return wr:requestSalvage({ uids = DC }, { silent = true })
                        end)
                        local DF = DD_4 and type(DE_2) == "table" and DE_2.ok == true
                        return DF
                    end
                else
                    wI = fn1234
                    xJ = fn51
                    w5 = function()
                        local DC
                        local DD = w8()
                        local DD_2
                        if not DD then
                            return false
                        end
                        local DE = w5(DD)
                        local DE_1
                        if #DE == 0 then
                            return false
                        end
                        DC = {}
                        local DD_1 = math.min(50, #DE)
                        local DJ = 1
                        while DJ <= DD_1 do
                            local DK = DJ
                            DC[DK] = DE[DK]
                            DJ += 1
                        end
                        DD_2, DE_1 = pcall(function()
                            return wr:requestSalvage({ uids = DC }, { silent = true })
                        end)
                        local DF = DD_2 and type(DE_1) == "table" and DE_1.ok == true
                        return DF
                    end
                end
                Jm_11 = (Jm_11 + 73) % 136
            end
        elseif xY <= 8 then
            local KN = bit32.rrotate(bit32.bxor(bit32.lrotate(Jm_11, 16), string.byte(tostring(xS))), 12)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(KN, 405208545), 2103951393), (bit32.bxor(bit32.band(KN, 3889758750), 182954638))), 2103951393), 182954638) == KN then
                xr = fn54
                wN = function()
                    local D1_14
                    local DX = w8()
                    local DY = not DX or type(DX.quests) ~= "table"
                    if DY then
                        return 0
                    end
                    local DY_2 = 0
                    local DZ = {}
                    local DZ_5
                    local D_ = DX.quests.mainClaimed or DZ
                    local D__10, D__11, D__14
                    local D0 = Quests.MAIN or {}
                    local D0_6
                    for i, v in ipairs(D0) do
                        local D9 = v
                        if not wv() then
                            break
                        elseif not D_[D9.id] then
                            local D__9 = Quests.progressOf(DX, D9, nil)
                            local D0_5 = type(D__9) == "number"
                            if D0_5 then
                                D0_5 = D__9 >= (D9.target or 1)
                            end
                            if D0_5 then
                                D__10, D0_6 = pcall(function()
                                    return QuestsServiceClient:claim(D9.id)
                                end)
                                local D1_9 = D__10 and type(D0_6) == "table" and D0_6.ok
                                if D1_9 then
                                    DY_2 += 1
                                end
                            end
                        end
                    end
                    local dailyWindow = DX.quests.dailyWindow
                    if type(dailyWindow) == "number" then
                        DZ_5, D__11 = pcall(function()
                            return Quests.dailyFor(dailyWindow)
                        end)
                        local D0_7 = {}
                        local D1_10 = DX.quests.dailyClaimed
                        local Ec = if D1_10 then 1 else 0
                        local Ea = 339 * Ec + 505 * (1 - Ec)
                        local Eb = 1645 * Ec + 392 * (1 - Ec)
                        if not ((Ea * 3728 + Eb * 1007 + Ea * Eb) % 16777213 == 3477962) then
                            D1_10 = D0_7
                        end
                        local D0_8 = D1_10
                        local D2 = DX.quests.dailyBase or {}
                        local D1_12 = DZ_5
                        if D1_12 then
                            D1_12 = type(D__11) == "table"
                        end
                        if D1_12 then
                            for i, v in ipairs(D__11) do
                                local Ei = v
                                if not wv() then
                                    break
                                elseif not D0_8[Ei.id] then
                                    local D__12 = D2[Ei.id]
                                    local D1_13 = Quests.progressOf(DX, Ei, D__12)
                                    local D__13 = type(D1_13) == "number"
                                    if D__13 then
                                        D__13 = D1_13 >= (Ei.target or 1)
                                    end
                                    if D__13 then
                                        D__14, D1_14 = pcall(function()
                                            return QuestsServiceClient:claim(Ei.id)
                                        end)
                                        local D2_4 = D__14 and type(D1_14) == "table" and D1_14.ok
                                        if D2_4 then
                                            DY_2 += 1
                                        end
                                    end
                                end
                            end
                        end
                    end
                    return DY_2
                end
            else
                wN = fn54
                xr = function()
                    local D1_7
                    local DX = w8()
                    local DY = not DX or type(DX.quests) ~= "table"
                    if DY then
                        return 0
                    end
                    local DY_1 = 0
                    local DZ = {}
                    local DZ_2
                    local D_ = DX.quests.mainClaimed or DZ
                    local D__3, D__4, D__7
                    local D0 = Quests.MAIN or {}
                    local D0_2
                    for i, v in ipairs(D0) do
                        local D9 = v
                        if not wv() then
                            break
                        elseif not D_[D9.id] then
                            local D__2 = Quests.progressOf(DX, D9, nil)
                            local D0_1 = type(D__2) == "number"
                            if D0_1 then
                                D0_1 = D__2 >= (D9.target or 1)
                            end
                            if D0_1 then
                                D__3, D0_2 = pcall(function()
                                    return QuestsServiceClient:claim(D9.id)
                                end)
                                local D1_2 = D__3 and type(D0_2) == "table" and D0_2.ok
                                if D1_2 then
                                    DY_1 += 1
                                end
                            end
                        end
                    end
                    local dailyWindow = DX.quests.dailyWindow
                    if type(dailyWindow) == "number" then
                        DZ_2, D__4 = pcall(function()
                            return Quests.dailyFor(dailyWindow)
                        end)
                        local D0_3 = {}
                        local D1_3 = DX.quests.dailyClaimed
                        local Ec = if D1_3 then 1 else 0
                        local Ea = 339 * Ec + 505 * (1 - Ec)
                        local Eb = 1645 * Ec + 392 * (1 - Ec)
                        if not ((Ea * 3728 + Eb * 1007 + Ea * Eb) % 16777213 == 3477962) then
                            D1_3 = D0_3
                        end
                        local D0_4 = D1_3
                        local D2 = DX.quests.dailyBase or {}
                        local D1_5 = DZ_2
                        if D1_5 then
                            D1_5 = type(D__4) == "table"
                        end
                        if D1_5 then
                            for i, v in ipairs(D__4) do
                                local Ei = v
                                if not wv() then
                                    break
                                elseif not D0_4[Ei.id] then
                                    local D__5 = D2[Ei.id]
                                    local D1_6 = Quests.progressOf(DX, Ei, D__5)
                                    local D__6 = type(D1_6) == "number"
                                    if D__6 then
                                        D__6 = D1_6 >= (Ei.target or 1)
                                    end
                                    if D__6 then
                                        D__7, D1_7 = pcall(function()
                                            return QuestsServiceClient:claim(Ei.id)
                                        end)
                                        local D2_2 = D__7 and type(D1_7) == "table" and D1_7.ok
                                        if D2_2 then
                                            DY_1 += 1
                                        end
                                    end
                                end
                            end
                        end
                    end
                    return DY_1
                end
            end
            Jm_11 = (Jm_11 + 22) % 136
        else
            xZ = {
                "eanxoicydoj",
                "cfrccq",
                "ecpxrhumxn",
                "trzlnsiqiivx",
                "ntocexxageox",
                "jwjjosr",
                "nftbjhfvxv",
                "ttwogjic",
                "mwfuhxcnbe",
                "hmvhvhomt",
                "txunbwgvyzul",
                "zboliep",
                "vtfme",
                "urkpvexppr",
                "mjqikgmkzie"
            }
            if xZ[(Jm_11 * 37 + 62) % 15 + 1] <= xZ[(Jm_11 * 37 + 62) % 15 + 1] then
                xH = fn720
            else
                wW = fn720
            end
            Jm_11 = (Jm_11 + 73) % 136
        end
    elseif xY <= 13 then
        if xY <= 11 then
            if xY <= 10 then
                xZ = (vector.create((Jm_11 * 6 + 9) % 11 + 1, (Jm_11 * 3 + 9) % 13 + 1, (Jm_11 * 7 + 16) % 17 + 1))
                x_ = (vector.create((Jm_11 * 1 + 5) % 11 + 1, (Jm_11 * 8 + 2) % 13 + 1, (Jm_11 * 9 + 11) % 17 + 1))
                local KF = vector.cross(xZ, x_)
                local KG = vector.dot(xZ, x_)
                if vector.dot(KF, KF) + KG * KG == vector.dot(xZ, xZ) * vector.dot(x_, x_) + 4 then
                    wZ = function(js)
                        local En
                        En = wA[js]
                        if En == nil then
                            return false, "Unknown zone"
                        end
                        local Eo = w8()
                        local Eo_4
                        if not Eo then
                            return false, "No data"
                        end
                        local Ep = xa.travelState(Eo, En)
                        local Ep_4
                        if En ~= 0 and Ep ~= "unlocked" and Ep ~= "current" then
                            return false, "Zone locked"
                        end
                        local Ep_3 = En == 0 and not xa.lobbyUnlocked(Eo)
                        if Ep_3 then
                            return false, "Lobby locked"
                        end
                        Eo_4, Ep_4 = pcall(function()
                            return ZonesServiceClient:travel(En)
                        end)
                        if not Eo_4 then
                            return false, "Travel failed"
                        end
                        local Eo_5 = type(Ep_4) == "table" and Ep_4.ok == false
                        if Eo_5 then
                            return false, Ep_4.err or "Travel failed"
                        end
                        return true
                    end
                else
                    w_ = function(js)
                        local En
                        En = wA[js]
                        if En == nil then
                            return false, "Unknown zone"
                        end
                        local Eo = w8()
                        local Eo_1
                        if not Eo then
                            return false, "No data"
                        end
                        local Ep = xa.travelState(Eo, En)
                        local Ep_2
                        if En ~= 0 and Ep ~= "unlocked" and Ep ~= "current" then
                            return false, "Zone locked"
                        end
                        local Ep_1 = En == 0 and not xa.lobbyUnlocked(Eo)
                        if Ep_1 then
                            return false, "Lobby locked"
                        end
                        Eo_1, Ep_2 = pcall(function()
                            return ZonesServiceClient:travel(En)
                        end)
                        if not Eo_1 then
                            return false, "Travel failed"
                        end
                        local Eo_2 = type(Ep_2) == "table" and Ep_2.ok == false
                        if Eo_2 then
                            return false, Ep_2.err or "Travel failed"
                        end
                        return true
                    end
                end
                Jm_11 = (Jm_11 + 56) % 136
            else
                xZ = {
                    "cwp",
                    "hzbbhpaectn",
                    "uzufhj",
                    "ijf",
                    "wks",
                    "pejbzn",
                    "jxvk",
                    "rxpbwyg",
                    "uoblwkyv",
                    "xmlpkbou",
                    "jkksi",
                    "hzdoncyqnpgv",
                    "nbqj",
                    "cwkdjyvquofn",
                    "jsuqsknl"
                }
                if xZ[(Jm_11 * 58 + 4) % 15 + 1] < xZ[(Jm_11 * 58 + 4) % 15 + 1] then
                    xM = function()
                        local EA_2
                        local Ez_2
                        local Ex = 0
                        local Ey = 0
                        for i, v in ipairs(xg) do
                            local EI = v
                            if not wv() then
                                break
                            else
                                Ez_2, EA_2 = pcall(function()
                                    return MonetizationClient:redeem(EI)
                                end)
                                local EB = Ez_2 and type(EA_2) == "table" and EA_2.ok
                                if EB then
                                    Ey += 1
                                else
                                    Ex += 1
                                end
                                task.wait(0.15)
                            end
                        end
                        return Ey, Ex
                    end
                else
                    xD = function()
                        local EA_1
                        local Ez_1
                        local Ex = 0
                        local Ey = 0
                        for i, v in ipairs(xg) do
                            local EI = v
                            if not wv() then
                                break
                            else
                                Ez_1, EA_1 = pcall(function()
                                    return MonetizationClient:redeem(EI)
                                end)
                                local EB = Ez_1 and type(EA_1) == "table" and EA_1.ok
                                if EB then
                                    Ey += 1
                                else
                                    Ex += 1
                                end
                                task.wait(0.15)
                            end
                        end
                        return Ey, Ex
                    end
                end
                Jm_11 = (Jm_11 + 39) % 136
            end
        elseif xY <= 12 then
            xZ = {
                "mxi",
                "ihugucjhv",
                "fywjhtnavir",
                "hyybomasj",
                "fjee",
                "erqmz",
                "viiawr",
                "ojwdekeozs",
                "aetz",
                "zmmdrt",
                "qiodtji",
                "swnzk",
                "apdw",
                "ddxxb"
            }
            if xZ[(Jm_11 * 79 + 72) % 14 + 1] < xZ[(Jm_11 * 79 + 72) % 14 + 1] then
                xV.SetAutoRoll = fn777
                xV.SetAutoSkillTree = fn811
                xV.SetAutoFarm = fn916
                xV.SetAutoUnlockZone = fn432
                xV.SetAutoBestZone = fn72
                xV.SetAutoRebirth = fn637
                xV.SetAutoEquipBest = fn217
                xV.SetAutoAuraRoll = fn860
                xV.SetAutoAscend = fn471
                xV.SetAutoSalvage = fn940
                xV.SetAutoClaimQuests = fn1056
                xV.SetAuraCurrency = fn631
                xV.SetAuraStopAt = fn466
                xV.SetRollDice = fn608
                xV.SetTeleportZone = fn527
                xV.SetFarmZone = fn906
                xV.TeleportSelectedZone = fn851
                xV.RedeemAllCodes = fn1117
                xV.SetAscendRarities = fn510
                xV.SetAscendSkipEquipped = fn547
                xV.SetSalvageMode = fn596
                xV.SetSalvageRarities = fn857
                xV.SetSalvageKeepFavorites = fn548
                xV.SetSalvageKeepLocked = fn889
                xV.SetSalvageKeepEquipped = fn140
                xV.SetSalvageKeepCount = fn825
                xV.SetFarmRadius = fn907
                xV.SetFarmSpeed = fn963
                xV.SetEquipBestDelay = fn1143
                wO = function()
                    local Library
                    local I1
                    I1 = nil
                    Library = nil
                    local IX, Options, IZ, I_, SaveManager, I2, Toggles, I5, I6, I7, ThemeManager
                    I7 = "Sword RNG X"
                    I1 = "https://discord.gg/synapsex"
                    IZ = "https://ouroboros-hub-rbx.web.app/"
                    I6 = "https://rscripts.net/@Ouroboros"
                    Library = assert(loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))(), "Library load failed")
                    ThemeManager = assert(loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))(), "ThemeManager load failed")
                    SaveManager = assert(loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))(), "SaveManager load failed")
                    Toggles, Options = Library.Toggles, Library.Options
                    wO.UIToggles = Toggles
                    xd(wO, Library)
                    I_ = function(lB, lC)
                        local E2
                        if type(setclipboard) == "function" then
                            E2 = setclipboard
                        elseif type(toclipboard) == "function" then
                            E2 = toclipboard
                        end
                        if not E2 then
                            Library:Notify("Clipboard unavailable")
                            return
                        end
                        local E3 = pcall(E2, tostring(lB))
                        if E3 then
                            local E2_2 = lC or "Copied"
                            Library:Notify(E2_2)
                        else
                            Library:Notify("Clipboard copy failed")
                        end
                    end
                    local Window = Library:CreateWindow({
                        Title = "Ouroboros",
                        Font = Enum.Font.BuilderSans,
                        Footer = { { Text = I1, Copyable = true }, "|", I7, "|", "v0.4" },
                        Icon = 132608042600488,
                        NotifySide = "Right",
                        ShowCustomCursor = false,
                        CornerRadius = 0,
                        SidebarCompacted = true,
                        TabSwipeFrom = "bottom",
                        Animations = { TabSwitch = true }
                    })
                    I5 = {}
                    I5[1] = Window:AddTab("Info", "info")
                    I5[4] = Window:AddTab("Main", "gamepad-2")
                    I5[2] = Window:AddTab("Player", "person-standing")
                    I5[3] = Window:AddTab("Settings", "settings")
                    local function I9_9(lJ)
                        local DiscordGroup = lJ:AddLeftGroupbox("Discord", "message-circle")
                        DiscordGroup:AddDiscordBox(nil, {
                            Banner = 95892854151512,
                            Avatar = 132608042600488,
                            Title = "Ouroboros Hub",
                            Subtitle = "Dupes, keyless scripts and updates",
                            Status = "online",
                            Accent = Color3.fromRGB(88, 101, 242),
                            Link = I1,
                            Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
                        })
                        return DiscordGroup
                    end
                    I2 = {
                        [1] = I5[4]:AddSubTab("Auto", "bot"),
                        [2] = I5[4]:AddSubTab("Inventory", "sword"),
                        [3] = I5[4]:AddSubTab("World", "map")
                    }
                    I9_9(I2[1])
                    I9_9(I2[2])
                    I9_9(I2[3])
                    I9_9(I5[2])
                    I9_9(I5[3])
                    local I9_10 = { name = "getgenv", ok = wy(getgenv) }
                    local Ja = wy(game.HttpGet)
                    local Jb = {}
                    local Ja_3 = { I9_10, { name = "HttpGet", ok = Ja } }
                    for i, v in ipairs(Ja_3) do
                        if not v.ok then
                            table.insert(Jb, v.name)
                        end
                    end
                    local I9_11 = #Jb == 0 and "(ready)"
                    local Ja_4 = I9_11 or "(missing " .. table.concat(Jb, ", ") .. ")"
                    IX = Ja_4
                    local function I9_12()
                        local me
                        local l9
                        local na
                        local function lV(lW)
                            return (tostring(lW):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
                        end
                        local function lX(lY, lZ)
                            return string.format('<font color="%s">%s</font>', lZ, lV(lY))
                        end
                        local function l0(l1, l2, l3)
                            return string.format("<b>%s</b> %s %s", l1, lX("-", "#5a6070"), lX(l2, l3))
                        end
                        local l5 = "#7fd47f"
                        l9 = "Unknown"
                        local l8 = "#8b93a3"
                        local l6 = "#6ec1ff"
                        local l7 = "#e8a34d"
                        pcall(function()
                            local E6_2
                            local E5_3
                            if type(identifyexecutor) == "function" then
                                E6_2, E5_3 = identifyexecutor()
                                local E7 = E6_2 ~= ""
                                local E8 = type(E6_2) == "string" and E7
                                if E8 then
                                    local E7_2 = type(E5_3) == "string" and E5_3 ~= "" and E6_2 .. " " .. E5_3
                                    l9 = E7_2 or E6_2
                                end
                            end
                        end)
                        me = os.clock()
                        local function mf()
                            local Fa = math.floor(os.clock() - me)
                            if Fa < 60 then
                                return Fa .. "s"
                            elseif Fa < 3600 then
                                return string.format("%dm %ds", Fa // 60, Fa % 60)
                            else
                                return string.format("%dh %dm", Fa // 3600, Fa % 3600 // 60)
                            end
                        end
                        local UserGroup = I5[1]:AddLeftGroupbox("User", "circle-user")
                        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
                        UserGroup:AddLabel(l0("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, l5), true)
                        UserGroup:AddLabel(l0("UserId", tostring(LocalPlayer.UserId), l6), true)
                        UserGroup:AddLabel(l0("Executor", l9 .. "  " .. IX, l5), true)
                        UserGroup:AddDivider()
                        local Label4 = UserGroup:AddLabel(l0("Session", mf(), l7), true)
                        UserGroup:AddDivider()
                        UserGroup:AddButton({
                            Text = "Copy Username",
                            Func = function()
                                I_(LocalPlayer.Name, "Copied username")
                            end
                        })
                        UserGroup:AddButton({
                            Text = "Copy Profile Link",
                            Func = function()
                                I_("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
                            end
                        })
                        local DiscordGroup = I5[1]:AddRightGroupbox("Discord", "message-circle")
                        DiscordGroup:AddDiscordBox(nil, {
                            Banner = 95892854151512,
                            Avatar = 132608042600488,
                            Title = "Ouroboros Hub",
                            Subtitle = "Dupes, keyless scripts and updates",
                            Status = "online",
                            Accent = Color3.fromRGB(88, 101, 242),
                            Link = I1,
                            Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
                        })
                        local SessionGroup = I5[1]:AddRightGroupbox("Session", "signal")
                        SessionGroup:AddLabel(l0("Game", I7, l5), true)
                        local Label3 = SessionGroup:AddLabel(l0("Players", tostring(#Players:GetPlayers()), l6), true)
                        local Label2 = SessionGroup:AddLabel(l0("Job", string.sub(game.JobId, 1, 12) .. "...", l8), true)
                        local Label = SessionGroup:AddLabel(l0("Ping", "--", l7), true)
                        SessionGroup:AddButton({
                            Text = "Rejoin Place",
                            Func = function()
                                pcall(function()
                                    xn:Teleport(game.PlaceId, LocalPlayer)
                                end)
                            end
                        })
                        SessionGroup:AddButton({
                            Text = "Copy Job ID",
                            Func = function()
                                I_(game.JobId, "Copied job id")
                            end
                        })
                        local SocialsGroup = I5[1]:AddLeftGroupbox("Socials", "share-2")
                        SocialsGroup:AddButton({
                            Text = "Copy RScripts Link",
                            Func = function()
                                I_(I6, "Copied RScripts link")
                            end
                        })
                        SocialsGroup:AddButton({
                            Text = "Copy Website Link",
                            Func = function()
                                I_(IZ, "Copied website link")
                            end
                        })
                        na = task.spawn(function()
                            while true do
                                local Fc = wv() and not Library.Unloaded
                                if Fc then
                                    pcall(function()
                                        Label4:SetText(l0("Session", mf(), l7))
                                        Label3:SetText(l0("Players", tostring(#Players:GetPlayers()), l6))
                                        Label2:SetText(l0("Job", string.sub(game.JobId, 1, 12) .. "...", l8))
                                        local m7 = LocalPlayer:GetNetworkPing()
                                        Label:SetText(l0("Ping", string.format("%dms", math.floor(m7 * 1000 + 0.5)), l7))
                                    end)
                                    task.wait(1)
                                    continue
                                end
                                break
                            end
                        end)
                        wO.Track(function()
                            if coroutine.status(na) ~= "dead" then
                                task.cancel(na)
                            end
                        end)
                    end
                    I9_12()
                    local function I9_13()
                        local nK
                        local AutomationGroup = I2[1]:AddRightGroupbox("Automation", "bot")
                        local Label = AutomationGroup:AddLabel("Status: Idle")
                        AutomationGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false, Callback = wO.SetAutoRoll })
                        AutomationGroup:AddDropdown("RollDice", { Text = "Use Dice", Values = wV, Default = 1, Callback = wO.SetRollDice })
                        AutomationGroup:AddToggle("AutoSkillTree", { Text = "Auto Skill Tree", Default = false, Callback = wO.SetAutoSkillTree })
                        AutomationGroup:AddToggle("AutoFarm", { Text = "Auto Farm Mobs", Default = false, Callback = wO.SetAutoFarm })
                        AutomationGroup:AddDropdown("FarmZone", { Text = "Farm Zone", Values = wG, Default = 2, Callback = wO.SetFarmZone })
                        AutomationGroup:AddSlider("FarmRadius", { Text = "Orbit Radius", Default = 8, Min = 4, Max = 18, Rounding = 0, Callback = wO.SetFarmRadius })
                        AutomationGroup:AddSlider("FarmSpeed", { Text = "Orbit Speed", Default = 4, Min = 1, Max = 12, Rounding = 0, Callback = wO.SetFarmSpeed })
                        AutomationGroup:AddToggle("AutoUnlockZone", { Text = "Auto Unlock Affordable Zone", Default = false, Callback = wO.SetAutoUnlockZone })
                        AutomationGroup:AddToggle("AutoBestZone", { Text = "Auto Go To Best Owned Zone", Default = false, Callback = wO.SetAutoBestZone })
                        AutomationGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false, Callback = wO.SetAutoRebirth })
                        AutomationGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best Swords", Default = false, Callback = wO.SetAutoEquipBest })
                        AutomationGroup:AddSlider("EquipBestDelay", {
                            Text = "Equip Best Delay",
                            Default = 10,
                            Min = 1,
                            Max = 120,
                            Rounding = 0,
                            Callback = wO.SetEquipBestDelay
                        })
                        AutomationGroup:AddToggle("AutoClaimQuests", { Text = "Auto Claim Quests", Default = false, Callback = wO.SetAutoClaimQuests })
                        AutomationGroup:AddDivider()
                        AutomationGroup:AddToggle("AutoAuraRoll", { Text = "Auto Roll Auras", Default = false, Callback = wO.SetAutoAuraRoll })
                        AutomationGroup:AddDropdown("AuraCurrency", {
                            Text = "Aura Currency",
                            Values = { "Gems", "Lucky Dice", "Ultra Dice" },
                            Default = 1,
                            Callback = wO.SetAuraCurrency
                        })
                        AutomationGroup:AddDropdown("AuraStopAt", { Text = "Stop at Aura", Values = xq, Default = 4, Callback = wO.SetAuraStopAt })
                        local AscendGroup = I2[2]:AddRightGroupbox("Ascend", "sparkles")
                        AscendGroup:AddToggle("AutoAscend", { Text = "Auto Ascend", Default = false, Callback = wO.SetAutoAscend })
                        AscendGroup:AddDropdown("AscendRarities", {
                            Text = "Ascend Rarities",
                            Values = xf,
                            Multi = true,
                            AllowNull = true,
                            Default = { "Common", "Uncommon", "Rare", "Epic", "Legendary" },
                            Callback = wO.SetAscendRarities
                        })
                        AscendGroup:AddToggle("AscendSkipEquipped", { Text = "Skip Equipped Targets", Default = true, Callback = wO.SetAscendSkipEquipped })
                        local SalvageGroup = I2[2]:AddRightGroupbox("Salvage", "trash-2")
                        SalvageGroup:AddToggle("AutoSalvage", { Text = "Auto Salvage", Default = false, Callback = wO.SetAutoSalvage })
                        SalvageGroup:AddDropdown("SalvageMode", {
                            Text = "Salvage Mode",
                            Values = { "Duplicates", "By Rarity" },
                            Default = 1,
                            Callback = wO.SetSalvageMode
                        })
                        SalvageGroup:AddDropdown("SalvageRarities", {
                            Text = "Salvage Rarities",
                            Values = xf,
                            Multi = true,
                            AllowNull = true,
                            Default = { "Common", "Uncommon", "Rare" },
                            Callback = wO.SetSalvageRarities
                        })
                        SalvageGroup:AddSlider("SalvageKeepCount", {
                            Text = "Keep Per Sword",
                            Default = 1,
                            Min = 1,
                            Max = 20,
                            Rounding = 0,
                            Callback = wO.SetSalvageKeepCount
                        })
                        SalvageGroup:AddToggle("SalvageKeepFavorites", { Text = "Keep Favorites", Default = true, Callback = wO.SetSalvageKeepFavorites })
                        SalvageGroup:AddToggle("SalvageKeepLocked", { Text = "Keep Locked", Default = true, Callback = wO.SetSalvageKeepLocked })
                        SalvageGroup:AddToggle("SalvageKeepEquipped", { Text = "Keep Equipped", Default = true, Callback = wO.SetSalvageKeepEquipped })
                        local ZonesGroup = I2[3]:AddRightGroupbox("Zones", "map-pin")
                        ZonesGroup:AddDropdown("TeleportZone", { Text = "Teleport Zone", Values = wG, Default = 1, Callback = wO.SetTeleportZone })
                        ZonesGroup:AddButton({
                            Text = "Teleport to Zone",
                            Func = function()
                                local Fg_2
                                local Ff_3
                                Ff_3, Fg_2 = wO.TeleportSelectedZone()
                                if Ff_3 then
                                    Library:Notify("Traveling to " .. tostring(State.TeleportZone), 4)
                                else
                                    local Ff_4 = Fg_2 or "Travel failed"
                                    Library:Notify(tostring(Ff_4), 5)
                                end
                            end
                        })
                        local CodesGroup = I2[3]:AddRightGroupbox("Codes", "ticket")
                        CodesGroup:AddButton({
                            Text = "Redeem Codes",
                            Func = function()
                                task.spawn(function()
                                    Library:Notify("Redeeming codes...", 3)
                                    local nA, nB = wO.RedeemAllCodes()
                                    Library:Notify(("Redeemed %d · skipped/failed %d"):format(nA, nB), 6)
                                end)
                            end
                        })
                        nK = task.spawn(function()
                            while true do
                                local Fi = wv() and not Library.Unloaded
                                if Fi then
                                    pcall(function()
                                        Label:SetText("Status: " .. tostring(State.Status))
                                    end)
                                    task.wait(0.35)
                                    continue
                                end
                                break
                            end
                        end)
                        wO.Track(function()
                            if coroutine.status(nK) ~= "dead" then
                                task.cancel(nK)
                            end
                        end)
                    end
                    I9_13()
                    local function I9_14()
                        local nQ
                        local MovementGroup = I5[2]:AddLeftGroupbox("Movement", "person-standing")
                        local FlightGroup = I5[2]:AddRightGroupbox("Flight", "plane")
                        nQ = {
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
                        local function nR()
                            local Fl = wt()
                            if not Fl then
                                return
                            end
                            if nQ[1] then
                                if nQ[8] == nil then
                                    nQ[8] = Fl.WalkSpeed
                                end
                                Fl.WalkSpeed = nQ[2]
                            elseif nQ[8] ~= nil then
                                Fl.WalkSpeed = nQ[8]
                                nQ[8] = nil
                            end
                        end
                        local function nX()
                            if nQ[9] then
                                pcall(function()
                                    nQ[9]:Destroy()
                                end)
                                nQ[9] = nil
                            end
                            local Fn = wt()
                            if Fn then
                                Fn.PlatformStand = false
                            end
                        end
                        local function n1()
                            nX()
                            local Fs = wH()
                            local Ft = wt()
                            if not Fs or not Ft then
                                return
                            end
                            Ft.PlatformStand = true
                            local bodyVelocity = Instance.new("BodyVelocity")
                            bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
                            bodyVelocity.Velocity = Vector3.zero
                            bodyVelocity.Parent = Fs
                            nQ[9] = bodyVelocity
                        end
                        local function ob()
                            for k, v in pairs(nQ[10]) do
                                if k and k.Parent then
                                    k.CanCollide = v
                                end
                            end
                            table.clear(nQ[10])
                        end
                        local function og()
                            for k, v in pairs(nQ[14]) do
                                if k and k.Parent then
                                    k.HoldDuration = v.HoldDuration
                                    k.MaxActivationDistance = v.MaxActivationDistance
                                    k.RequiresLineOfSight = v.RequiresLineOfSight
                                end
                            end
                            table.clear(nQ[14])
                        end
                        local function onDescendantAdded(on)
                            local FQ = if not on:IsA("ProximityPrompt") then 1 else 0
                            if FQ == 1 then
                                return
                            end
                            if not nQ[14][on] then
                                nQ[14][on] = {
                                    HoldDuration = on.HoldDuration,
                                    MaxActivationDistance = on.MaxActivationDistance,
                                    RequiresLineOfSight = on.RequiresLineOfSight
                                }
                            end
                            on.HoldDuration = 0
                            on.MaxActivationDistance = 50
                            on.RequiresLineOfSight = false
                        end
                        MovementGroup:AddToggle("WalkSpeedEnabled", {
                            Text = "WalkSpeed",
                            Default = false,
                            Callback = function(op)
                                nQ[1] = op
                                nR()
                            end
                        })
                        MovementGroup:AddSlider("WalkSpeed", {
                            Text = "Speed",
                            Default = 32,
                            Min = 16,
                            Max = 250,
                            Rounding = 0,
                            Callback = function(ou)
                                nQ[2] = ou
                                if nQ[1] then
                                    nR()
                                end
                            end
                        })
                        MovementGroup:AddToggle("InfJump", {
                            Text = "Infinite Jump",
                            Default = false,
                            Callback = function(ox)
                                nQ[6] = ox
                                if nQ[12] then
                                    nQ[12]:Disconnect()
                                    nQ[12] = nil
                                end
                                if ox then
                                    nQ[12] = UserInputService.JumpRequest:Connect(function()
                                        local FV = not wv() or not nQ[6]
                                        if FV then
                                            return
                                        end
                                        local FV_2 = wt()
                                        if FV_2 then
                                            FV_2:ChangeState(Enum.HumanoidStateType.Jumping)
                                        end
                                    end)
                                end
                            end
                        })
                        MovementGroup:AddToggle("NoClip", {
                            Text = "Noclip",
                            Default = false,
                            Callback = function(oK)
                                nQ[5] = oK
                                if nQ[11] then
                                    nQ[11]:Disconnect()
                                    nQ[11] = nil
                                end
                                if not oK then
                                    ob()
                                    return
                                end
                                nQ[11] = RunService.Stepped:Connect(function()
                                    local FY = not wv() or not nQ[5]
                                    if FY then
                                        return
                                    end
                                    local FY_2 = wM()
                                    if not FY_2 then
                                        return
                                    end
                                    for i, descendant in ipairs(FY_2:GetDescendants()) do
                                        if descendant:IsA("BasePart") then
                                            if nQ[10][descendant] == nil then
                                                nQ[10][descendant] = descendant.CanCollide
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
                            Callback = function(o0)
                                nQ[7] = o0
                                if nQ[13] then
                                    nQ[13]:Disconnect()
                                    nQ[13] = nil
                                end
                                if not o0 then
                                    og()
                                    return
                                end
                                for i, descendant in ipairs(xQ:GetDescendants()) do
                                    onDescendantAdded(descendant)
                                end
                                nQ[13] = xQ.DescendantAdded:Connect(onDescendantAdded)
                            end
                        })
                        FlightGroup:AddToggle("Fly", {
                            Text = "Fly",
                            Default = false,
                            Callback = function(o9)
                                nQ[3] = o9
                                if o9 then
                                    n1()
                                else
                                    nX()
                                end
                            end
                        })
                        FlightGroup:AddSlider("FlySpeed", {
                            Text = "Fly Speed",
                            Default = 60,
                            Min = 10,
                            Max = 400,
                            Rounding = 0,
                            Callback = function(pd)
                                nQ[4] = pd
                            end
                        })
                        local connection2 = RunService.RenderStepped:Connect(function()
                            local Gk = not wv() or not nQ[3] or not nQ[9]
                            if Gk then
                                return
                            end
                            local CurrentCamera = xQ.CurrentCamera
                            local Gl = wH()
                            if not CurrentCamera or not Gl then
                                return
                            end
                            if nQ[9].Parent ~= Gl then
                                n1()
                                if not nQ[9] then
                                    return
                                end
                            end
                            local Gl_2 = Vector3.zero
                            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                Gl_2 += CurrentCamera.CFrame.LookVector
                            end
                            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                Gl_2 -= CurrentCamera.CFrame.LookVector
                            end
                            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                                Gl_2 -= CurrentCamera.CFrame.RightVector
                            end
                            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                                Gl_2 += CurrentCamera.CFrame.RightVector
                            end
                            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                                Gl_2 += Vector3.yAxis
                            end
                            local Gk_4 = UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or UserInputService:IsKeyDown(Enum.KeyCode.C)
                            if Gk_4 then
                                Gl_2 -= Vector3.yAxis
                            end
                            if Gl_2.Magnitude > 0 then
                                nQ[9].Velocity = Gl_2.Unit * nQ[4]
                            else
                                nQ[9].Velocity = Vector3.zero
                            end
                        end)
                        local connection = LocalPlayer.CharacterAdded:Connect(function()
                            task.wait(0.15)
                            if not wv() then
                                return
                            end
                            nR()
                            if nQ[3] then
                                n1()
                            end
                        end)
                        wO.Track(function()
                            connection2:Disconnect()
                            connection:Disconnect()
                            if nQ[11] then
                                nQ[11]:Disconnect()
                            end
                            if nQ[12] then
                                nQ[12]:Disconnect()
                            end
                            if nQ[13] then
                                nQ[13]:Disconnect()
                            end
                            nX()
                            ob()
                            og()
                            if nQ[8] ~= nil then
                                local Gw = wt()
                                if Gw then
                                    Gw.WalkSpeed = nQ[8]
                                end
                            end
                        end)
                    end
                    I9_14()
                    local function I9_15()
                        local Hx, Hy, Hz, HA, HB, HC, HD, HE, HF, HG, Label, HI, HJ, HK
                        HI = {}
                        HC = {}
                        Hz = nil
                        HE = false
                        HA = 0
                        HK = 0
                        HF = os.clock()
                        local MenuGroup = I5[3]:AddLeftGroupbox("Menu", "logs")
                        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                        Label = MenuGroup:AddLabel("AFK triggers: 0")
                        Hx = function()
                            local CurrentCamera
                            CurrentCamera = xQ.CurrentCamera
                            local Gz = not CurrentCamera or not wy(VirtualUser.CaptureController) or not wy(VirtualUser.ClickButton2)
                            if Gz then
                                return false
                            end
                            local Gz_2 = pcall(function()
                                VirtualUser:CaptureController()
                                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
                            end)
                            if not Gz_2 then
                                return false
                            end
                            HA += 1
                            HF = os.clock()
                            pcall(function()
                                Label:SetText("AFK triggers: " .. HA)
                            end)
                            return true
                        end
                        HG = function(p9)
                            pcall(function()
                                xv:SetGameplayPausedNotificationEnabled(not p9)
                            end)
                            pcall(function()
                                local RobloxNetworkPauseNotificati = xs:FindFirstChild("RobloxNetworkPauseNotification")
                                if RobloxNetworkPauseNotificati then
                                    RobloxNetworkPauseNotificati.Enabled = not p9
                                end
                            end)
                            if not p9 then
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
                        HD = function(qp)
                            local GI = qp.ClassName == "ParticleEmitter" or qp.ClassName == "Trail" or qp.ClassName == "Smoke" or qp.ClassName == "Fire"
                            local GM = if GI then 1 else 0
                            local GK = 289 * GM + 156 * (1 - GM)
                            local GL = 553 * GM + 1312 * (1 - GM)
                            if not ((GK * 3448 + GL * 1421 + GK * GL) % 16777213 == 1942102) then
                                GI = qp.ClassName == "Sparkles"
                            end
                            if not GI then
                                GI = qp.ClassName == "Explosion"
                            end
                            if not GI then
                                GI = qp.ClassName == "Beam"
                            end
                            if GI then
                                if HI[qp] == nil then
                                    HI[qp] = qp.Enabled
                                end
                                pcall(function()
                                    qp.Enabled = false
                                end)
                            end
                        end
                        HB = function()
                            for k, v in pairs(HI) do
                                local GR = k
                                local GT = v
                                if GR.Parent then
                                    pcall(function()
                                        GR.Enabled = GT
                                    end)
                                end
                            end
                            table.clear(HI)
                            if Hz then
                                pcall(function()
                                    settings().Rendering.QualityLevel = Hz.Quality
                                end)
                                xi.GlobalShadows = Hz.Shadows
                                xi.FogEnd = Hz.Fog
                                Hz = nil
                            end
                        end
                        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
                        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
                        MenuGroup:AddToggle("Disable3D", {
                            Text = "Disable 3D Rendering",
                            Default = false,
                            Callback = function(qE)
                                pcall(function()
                                    RunService:Set3dRenderingEnabled(not qE)
                                end)
                            end
                        })
                        MenuGroup:AddToggle("FpsBoost", {
                            Text = "FPS Boost",
                            Default = false,
                            Callback = function(qJ)
                                if qJ then
                                    if not Hz then
                                        Hz = { Quality = settings().Rendering.QualityLevel, Shadows = xi.GlobalShadows, Fog = xi.FogEnd }
                                    end
                                    pcall(function()
                                        settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
                                    end)
                                    xi.GlobalShadows = false
                                    xi.FogEnd = 9000000000
                                    for i, descendant in ipairs(xQ:GetDescendants()) do
                                        pcall(HD, descendant)
                                    end
                                else
                                    HB()
                                end
                            end
                        })
                        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
                        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                        Library.ToggleKeybind = Options.MenuKeybind
                        HG(true)
                        local ScriptGroup = I5[3]:AddLeftGroupbox("Script", "terminal")
                        ScriptGroup:AddButton({
                            Text = "Unload Script",
                            Func = function()
                                Library:Unload()
                            end
                        })
                        Toggles.AntiGameplayPause:OnChanged(function()
                            HG(Toggles.AntiGameplayPause.Value)
                        end)
                        if Toggles.AntiGameplayPause.Value then
                            HG(true)
                        end
                        table.insert(HC, LocalPlayer.Idled:Connect(function()
                            if Toggles.AntiAfk.Value and not Library.Unloaded then
                                Hx()
                            end
                        end))
                        table.insert(HC, xQ.DescendantAdded:Connect(function(q1)
                            if Toggles.FpsBoost.Value then
                                HD(q1)
                            end
                        end))
                        Hy = function(q5)
                            if HE or Library.Unloaded or not Toggles.AutoReconnect.Value then
                                return
                            end
                            HE = true
                            local G5 = HK
                            local G6_3 = pcall(function()
                                if q5 then
                                    xn:Teleport(game.PlaceId, LocalPlayer)
                                else
                                    xn:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                                end
                            end)
                            if not G6_3 then
                                HE = false
                                if not q5 and G5 == HK then
                                    task.delay(1.5, function()
                                        if G5 == HK then
                                            Hy(true)
                                        end
                                    end)
                                end
                            end
                        end
                        table.insert(HC, xn.TeleportInitFailed:Connect(function(rn)
                            local Hg
                            if rn == LocalPlayer and HE then
                                HE = false
                                Hg = HK
                                task.delay(3, function()
                                    if Hg == HK then
                                        Hy(true)
                                    end
                                end)
                            end
                        end))
                        task.spawn(function()
                            local RobloxPromptGui = xs:WaitForChild("RobloxPromptGui", 30)
                            local Hl = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
                            if Library.Unloaded or not Hl then
                                return
                            end
                            table.insert(HC, Hl.ChildAdded:Connect(function(rC)
                                if rC.Name == "ErrorPrompt" then
                                    Hy(false)
                                end
                            end))
                        end)
                        HJ = task.spawn(function()
                            while not Library.Unloaded do
                                if Toggles.AntiGameplayPause.Value then
                                    HG(true)
                                end
                                local Ho = Toggles.AntiAfk.Value and os.clock() - HF >= 60
                                if Ho then
                                    Hx()
                                end
                                task.wait(1)
                            end
                        end)
                        wO.Track(function()
                            HK += 1
                            for i, v in ipairs(HC) do
                                v:Disconnect()
                            end
                            pcall(task.cancel, HJ)
                            HG(false)
                            HB()
                            pcall(function()
                                RunService:Set3dRenderingEnabled(true)
                            end)
                        end)
                    end
                    I9_15()
                    local function I9_16()
                        local IN, IO, IP, IQ
                        ThemeManager:SetLibrary(Library)
                        ThemeManager:SetFolder("MyScriptHub")
                        ThemeManager:SaveDefault("Evil Hello Kitty")
                        ThemeManager:ApplyToTab(I5[3])
                        SaveManager:SetLibrary(Library)
                        SaveManager:IgnoreThemeSettings()
                        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
                        SaveManager:SetFolder("OuroborosHub/SwordRngX")
                        local IR = SaveManager:BuildConfigSection(I5[3])
                        IN = function(r2, r3)
                            local HO_2 = (r2 == "Toggle" and Toggles or Options)[r3]
                            local HN_5 = type(HO_2) == "table" and HO_2.Type == r2
                            local HN_6 = HN_5 and HO_2
                            local HT = if HN_6 then 1 else 0
                            local HR = 1353 * HT + 3190 * (1 - HT)
                            local HS = 742 * HT + 659 * (1 - HT)
                            if not ((HR * 1112 + HS * 3294 + HR * HS) % 16777213 == 4952610) then
                                HN_6 = nil
                            end
                            return HN_6
                        end
                        IP = function(sc, sd)
                            local Type = sd.Type
                            if Type == "Toggle" then
                                return { idx = sc, type = "Toggle", value = sd.Value == true }
                            elseif Type == "Slider" then
                                return { idx = sc, type = "Slider", value = tostring(sd.Value) }
                            elseif Type == "Dropdown" then
                                return { idx = sc, type = "Dropdown", multi = sd.Multi == true, value = sd.Value }
                            elseif Type == "Input" then
                                local HV = sd.Value or ""
                                return { idx = sc, type = "Input", text = tostring(HV) }
                            elseif Type == "ColorPicker" then
                                return { idx = sc, type = "ColorPicker", value = sd.Value:ToHex(), transparency = sd.Transparency }
                            elseif Type == "KeyPicker" then
                                return {
                                    idx = sc,
                                    type = "KeyPicker",
                                    mode = sd.Mode,
                                    key = sd.Value,
                                    modifiers = sd.Modifiers,
                                    toggled = sd.Toggled
                                }
                            else
                                return nil
                            end
                        end
                        IO = function()
                            local H0 = {}
                            for i, v in ipairs({ Toggles, Options }) do
                                for k, v in pairs(v) do
                                    local H1 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                                    if H1 then
                                        local H1_2 = IP(k, v)
                                        if H1_2 then
                                            H0[#H0 + 1] = H1_2
                                        end
                                    end
                                end
                            end
                            table.sort(H0, function(sn, so)
                                if sn.type ~= so.type then
                                    return sn.type < so.type
                                end
                                return sn.idx < so.idx
                            end)
                            return { objects = H0 }
                        end
                        IQ = function(sq)
                            local In
                            In = nil
                            local Io = type(sq) ~= "table" or type(sq.idx) ~= "string" or type(sq.type) ~= "string" or SaveManager.Ignore[sq.idx]
                            if Io then
                                return false
                            end
                            In = IN(sq.type, sq.idx)
                            if not In then
                                return false
                            end
                            local Io_2 = pcall(function()
                                if sq.type == "Input" then
                                    if type(sq.text) ~= "string" then
                                        return
                                    end
                                    In:SetValue(sq.text)
                                elseif sq.type == "ColorPicker" then
                                    In:SetValueRGB(Color3.fromHex(sq.value), sq.transparency)
                                elseif sq.type == "KeyPicker" then
                                    In:SetValue({ sq.key, sq.mode, sq.modifiers })
                                    if sq.mode == "Toggle" and sq.toggled ~= nil then
                                        In.Toggled = sq.toggled
                                        In:Update()
                                    end
                                else
                                    In:SetValue(sq.value)
                                end
                            end)
                            return Io_2
                        end
                        IR:AddDivider()
                        IR:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
                        IR:AddButton("Export Config to Clipboard", function()
                            local Ir_2
                            local Iq_5
                            Iq_5, Ir_2 = pcall(HttpService.JSONEncode, HttpService, IO())
                            if Iq_5 then
                                local Iq_6 = wy(setclipboard) and setclipboard
                                local Is = Iq_6
                                if not Is then
                                    local Iq_7 = wy(toclipboard) and toclipboard
                                    Is = Iq_7 or nil
                                end
                                local Iq_8 = Is
                                local Is_2 = type(Iq_8) == "function" and pcall(Iq_8, Ir_2)
                                if Is_2 then
                                    Library:Notify("Config copied to clipboard", 6)
                                    return
                                end
                                Library:Notify("Your executor does not support copying to the clipboard")
                                return
                            end
                            Library:Notify("Failed to encode the config")
                        end)
                        IR:AddButton("Import Config from Clipboard Text", function()
                            local IA_3
                            local Iy = Options.SaveManager_ImportSource.Value or ""
                            local Iy_3
                            local Iz = tostring(Iy):match("^%s*(.-)%s*$")
                            if Iz == "" then
                                Library:Notify("Paste an exported config into the box first")
                                return
                            end
                            if #Iz > 262144 then
                                Library:Notify("That config is too large")
                                return
                            end
                            Iy_3, IA_3 = pcall(HttpService.JSONDecode, HttpService, Iz)
                            local Iz_3 = not Iy_3
                            local IE = if Iz_3 then 1 else 0
                            local IC = 1266 * IE + 486 * (1 - IE)
                            local ID = 1687 * IE + 2092 * (1 - IE)
                            if not ((IC * 908 + ID * 3697 + IC * ID) % 16777213 == 9522109) then
                                Iz_3 = type(IA_3) ~= "table"
                            end
                            if not Iz_3 then
                                Iz_3 = type(IA_3.objects) ~= "table"
                            end
                            if Iz_3 then
                                Library:Notify("That is not a valid exported config")
                                return
                            end
                            if #IA_3.objects > 2048 then
                                Library:Notify("That config has too many records")
                                return
                            end
                            local Iy_4 = 0
                            for i, v in ipairs(IA_3.objects) do
                                if IQ(v) then
                                    Iy_4 += 1
                                end
                            end
                            if Iy_4 == 0 then
                                Library:Notify("No settings in that config matched this script")
                                return
                            end
                            Options.SaveManager_ImportSource:SetValue("")
                            local IA_4 = Iy_4 == 1 and "" or "s"
                            Library:Notify(("Imported %d setting%s"):format(Iy_4, IA_4), 6)
                        end)
                        ThemeManager:LoadDefault()
                        SaveManager:LoadAutoloadConfig()
                        local function IR_3(sZ, s_)
                            if Toggles[sZ] then
                                s_(Toggles[sZ].Value)
                            end
                        end
                        local function IS(s2, s3)
                            if Options[s2] then
                                s3(Options[s2].Value)
                            end
                        end
                        IS("AuraCurrency", wO.SetAuraCurrency)
                        IS("AuraStopAt", wO.SetAuraStopAt)
                        IS("RollDice", wO.SetRollDice)
                        IS("TeleportZone", wO.SetTeleportZone)
                        IS("FarmZone", wO.SetFarmZone)
                        IS("AscendRarities", wO.SetAscendRarities)
                        IS("SalvageMode", wO.SetSalvageMode)
                        IS("SalvageRarities", wO.SetSalvageRarities)
                        IS("SalvageKeepCount", wO.SetSalvageKeepCount)
                        IS("FarmRadius", wO.SetFarmRadius)
                        IS("FarmSpeed", wO.SetFarmSpeed)
                        IS("EquipBestDelay", wO.SetEquipBestDelay)
                        IR_3("AutoRoll", wO.SetAutoRoll)
                        IR_3("AutoSkillTree", wO.SetAutoSkillTree)
                        IR_3("AutoFarm", wO.SetAutoFarm)
                        IR_3("AutoUnlockZone", wO.SetAutoUnlockZone)
                        IR_3("AutoBestZone", wO.SetAutoBestZone)
                        IR_3("AutoRebirth", wO.SetAutoRebirth)
                        IR_3("AutoEquipBest", wO.SetAutoEquipBest)
                        IR_3("AutoClaimQuests", wO.SetAutoClaimQuests)
                        IR_3("AutoAuraRoll", wO.SetAutoAuraRoll)
                        IR_3("AutoAscend", wO.SetAutoAscend)
                        IR_3("AscendSkipEquipped", wO.SetAscendSkipEquipped)
                        IR_3("AutoSalvage", wO.SetAutoSalvage)
                        IR_3("SalvageKeepFavorites", wO.SetSalvageKeepFavorites)
                        IR_3("SalvageKeepLocked", wO.SetSalvageKeepLocked)
                        IR_3("SalvageKeepEquipped", wO.SetSalvageKeepEquipped)
                        if Toggles.HideUiOnStart and Toggles.HideUiOnStart.Value then
                            pcall(function()
                                Library:Toggle(false)
                            end)
                        end
                    end
                    I9_16()
                end
            else
                wO.SetAutoRoll = fn777
                wO.SetAutoSkillTree = fn811
                wO.SetAutoFarm = fn916
                wO.SetAutoUnlockZone = fn432
                wO.SetAutoBestZone = fn72
                wO.SetAutoRebirth = fn637
                wO.SetAutoEquipBest = fn217
                wO.SetAutoAuraRoll = fn860
                wO.SetAutoAscend = fn471
                wO.SetAutoSalvage = fn940
                wO.SetAutoClaimQuests = fn1056
                wO.SetAuraCurrency = fn631
                wO.SetAuraStopAt = fn466
                wO.SetRollDice = fn608
                wO.SetTeleportZone = fn527
                wO.SetFarmZone = fn906
                wO.TeleportSelectedZone = fn851
                wO.RedeemAllCodes = fn1117
                wO.SetAscendRarities = fn510
                wO.SetAscendSkipEquipped = fn547
                wO.SetSalvageMode = fn596
                wO.SetSalvageRarities = fn857
                wO.SetSalvageKeepFavorites = fn548
                wO.SetSalvageKeepLocked = fn889
                wO.SetSalvageKeepEquipped = fn140
                wO.SetSalvageKeepCount = fn825
                wO.SetFarmRadius = fn907
                wO.SetFarmSpeed = fn963
                wO.SetEquipBestDelay = fn1143
                xV = function()
                    local Library
                    local I1
                    I1 = nil
                    Library = nil
                    local IX, Options, IZ, I_, SaveManager, I2, Toggles, I5, I6, I7, ThemeManager
                    I7 = "Sword RNG X"
                    I1 = "https://discord.gg/synapsex"
                    IZ = "https://ouroboros-hub-rbx.web.app/"
                    I6 = "https://rscripts.net/@Ouroboros"
                    Library = assert(loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))(), "Library load failed")
                    ThemeManager = assert(loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))(), "ThemeManager load failed")
                    SaveManager = assert(loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))(), "SaveManager load failed")
                    Toggles, Options = Library.Toggles, Library.Options
                    wO.UIToggles = Toggles
                    xd(wO, Library)
                    I_ = function(lB, lC)
                        local E2
                        if type(setclipboard) == "function" then
                            E2 = setclipboard
                        elseif type(toclipboard) == "function" then
                            E2 = toclipboard
                        end
                        if not E2 then
                            Library:Notify("Clipboard unavailable")
                            return
                        end
                        local E3 = pcall(E2, tostring(lB))
                        if E3 then
                            local E2_1 = lC or "Copied"
                            Library:Notify(E2_1)
                        else
                            Library:Notify("Clipboard copy failed")
                        end
                    end
                    local Window = Library:CreateWindow({
                        Title = "Ouroboros",
                        Font = Enum.Font.BuilderSans,
                        Footer = { { Text = I1, Copyable = true }, "|", I7, "|", "v0.4" },
                        Icon = 132608042600488,
                        NotifySide = "Right",
                        ShowCustomCursor = false,
                        CornerRadius = 0,
                        SidebarCompacted = true,
                        TabSwipeFrom = "bottom",
                        Animations = { TabSwitch = true }
                    })
                    I5 = {}
                    I5[1] = Window:AddTab("Info", "info")
                    I5[4] = Window:AddTab("Main", "gamepad-2")
                    I5[2] = Window:AddTab("Player", "person-standing")
                    I5[3] = Window:AddTab("Settings", "settings")
                    local function I9_1(lJ)
                        local DiscordGroup = lJ:AddLeftGroupbox("Discord", "message-circle")
                        DiscordGroup:AddDiscordBox(nil, {
                            Banner = 95892854151512,
                            Avatar = 132608042600488,
                            Title = "Ouroboros Hub",
                            Subtitle = "Dupes, keyless scripts and updates",
                            Status = "online",
                            Accent = Color3.fromRGB(88, 101, 242),
                            Link = I1,
                            Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
                        })
                        return DiscordGroup
                    end
                    I2 = {
                        [1] = I5[4]:AddSubTab("Auto", "bot"),
                        [2] = I5[4]:AddSubTab("Inventory", "sword"),
                        [3] = I5[4]:AddSubTab("World", "map")
                    }
                    I9_1(I2[1])
                    I9_1(I2[2])
                    I9_1(I2[3])
                    I9_1(I5[2])
                    I9_1(I5[3])
                    local I9_2 = { name = "getgenv", ok = wy(getgenv) }
                    local Ja = wy(game.HttpGet)
                    local Jb = {}
                    local Ja_1 = { I9_2, { name = "HttpGet", ok = Ja } }
                    for i, v in ipairs(Ja_1) do
                        if not v.ok then
                            table.insert(Jb, v.name)
                        end
                    end
                    local I9_3 = #Jb == 0 and "(ready)"
                    local Ja_2 = I9_3 or "(missing " .. table.concat(Jb, ", ") .. ")"
                    IX = Ja_2
                    local function I9_4()
                        local me
                        local l9
                        local na
                        local function lV(lW)
                            return (tostring(lW):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
                        end
                        local function lX(lY, lZ)
                            return string.format('<font color="%s">%s</font>', lZ, lV(lY))
                        end
                        local function l0(l1, l2, l3)
                            return string.format("<b>%s</b> %s %s", l1, lX("-", "#5a6070"), lX(l2, l3))
                        end
                        local l5 = "#7fd47f"
                        l9 = "Unknown"
                        local l8 = "#8b93a3"
                        local l6 = "#6ec1ff"
                        local l7 = "#e8a34d"
                        pcall(function()
                            local E6_1
                            local E5_1
                            if type(identifyexecutor) == "function" then
                                E6_1, E5_1 = identifyexecutor()
                                local E7 = E6_1 ~= ""
                                local E8 = type(E6_1) == "string" and E7
                                if E8 then
                                    local E7_1 = type(E5_1) == "string" and E5_1 ~= "" and E6_1 .. " " .. E5_1
                                    l9 = E7_1 or E6_1
                                end
                            end
                        end)
                        me = os.clock()
                        local function mf()
                            local Fa = math.floor(os.clock() - me)
                            if Fa < 60 then
                                return Fa .. "s"
                            elseif Fa < 3600 then
                                return string.format("%dm %ds", Fa // 60, Fa % 60)
                            else
                                return string.format("%dh %dm", Fa // 3600, Fa % 3600 // 60)
                            end
                        end
                        local UserGroup = I5[1]:AddLeftGroupbox("User", "circle-user")
                        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
                        UserGroup:AddLabel(l0("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, l5), true)
                        UserGroup:AddLabel(l0("UserId", tostring(LocalPlayer.UserId), l6), true)
                        UserGroup:AddLabel(l0("Executor", l9 .. "  " .. IX, l5), true)
                        UserGroup:AddDivider()
                        local Label4 = UserGroup:AddLabel(l0("Session", mf(), l7), true)
                        UserGroup:AddDivider()
                        UserGroup:AddButton({
                            Text = "Copy Username",
                            Func = function()
                                I_(LocalPlayer.Name, "Copied username")
                            end
                        })
                        UserGroup:AddButton({
                            Text = "Copy Profile Link",
                            Func = function()
                                I_("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
                            end
                        })
                        local DiscordGroup = I5[1]:AddRightGroupbox("Discord", "message-circle")
                        DiscordGroup:AddDiscordBox(nil, {
                            Banner = 95892854151512,
                            Avatar = 132608042600488,
                            Title = "Ouroboros Hub",
                            Subtitle = "Dupes, keyless scripts and updates",
                            Status = "online",
                            Accent = Color3.fromRGB(88, 101, 242),
                            Link = I1,
                            Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
                        })
                        local SessionGroup = I5[1]:AddRightGroupbox("Session", "signal")
                        SessionGroup:AddLabel(l0("Game", I7, l5), true)
                        local Label3 = SessionGroup:AddLabel(l0("Players", tostring(#Players:GetPlayers()), l6), true)
                        local Label2 = SessionGroup:AddLabel(l0("Job", string.sub(game.JobId, 1, 12) .. "...", l8), true)
                        local Label = SessionGroup:AddLabel(l0("Ping", "--", l7), true)
                        SessionGroup:AddButton({
                            Text = "Rejoin Place",
                            Func = function()
                                pcall(function()
                                    xn:Teleport(game.PlaceId, LocalPlayer)
                                end)
                            end
                        })
                        SessionGroup:AddButton({
                            Text = "Copy Job ID",
                            Func = function()
                                I_(game.JobId, "Copied job id")
                            end
                        })
                        local SocialsGroup = I5[1]:AddLeftGroupbox("Socials", "share-2")
                        SocialsGroup:AddButton({
                            Text = "Copy RScripts Link",
                            Func = function()
                                I_(I6, "Copied RScripts link")
                            end
                        })
                        SocialsGroup:AddButton({
                            Text = "Copy Website Link",
                            Func = function()
                                I_(IZ, "Copied website link")
                            end
                        })
                        na = task.spawn(function()
                            while true do
                                local Fc = wv() and not Library.Unloaded
                                if Fc then
                                    pcall(function()
                                        Label4:SetText(l0("Session", mf(), l7))
                                        Label3:SetText(l0("Players", tostring(#Players:GetPlayers()), l6))
                                        Label2:SetText(l0("Job", string.sub(game.JobId, 1, 12) .. "...", l8))
                                        local m7 = LocalPlayer:GetNetworkPing()
                                        Label:SetText(l0("Ping", string.format("%dms", math.floor(m7 * 1000 + 0.5)), l7))
                                    end)
                                    task.wait(1)
                                    continue
                                end
                                break
                            end
                        end)
                        wO.Track(function()
                            if coroutine.status(na) ~= "dead" then
                                task.cancel(na)
                            end
                        end)
                    end
                    I9_4()
                    local function I9_5()
                        local nK
                        local AutomationGroup = I2[1]:AddRightGroupbox("Automation", "bot")
                        local Label = AutomationGroup:AddLabel("Status: Idle")
                        AutomationGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false, Callback = wO.SetAutoRoll })
                        AutomationGroup:AddDropdown("RollDice", { Text = "Use Dice", Values = wV, Default = 1, Callback = wO.SetRollDice })
                        AutomationGroup:AddToggle("AutoSkillTree", { Text = "Auto Skill Tree", Default = false, Callback = wO.SetAutoSkillTree })
                        AutomationGroup:AddToggle("AutoFarm", { Text = "Auto Farm Mobs", Default = false, Callback = wO.SetAutoFarm })
                        AutomationGroup:AddDropdown("FarmZone", { Text = "Farm Zone", Values = wG, Default = 2, Callback = wO.SetFarmZone })
                        AutomationGroup:AddSlider("FarmRadius", { Text = "Orbit Radius", Default = 8, Min = 4, Max = 18, Rounding = 0, Callback = wO.SetFarmRadius })
                        AutomationGroup:AddSlider("FarmSpeed", { Text = "Orbit Speed", Default = 4, Min = 1, Max = 12, Rounding = 0, Callback = wO.SetFarmSpeed })
                        AutomationGroup:AddToggle("AutoUnlockZone", { Text = "Auto Unlock Affordable Zone", Default = false, Callback = wO.SetAutoUnlockZone })
                        AutomationGroup:AddToggle("AutoBestZone", { Text = "Auto Go To Best Owned Zone", Default = false, Callback = wO.SetAutoBestZone })
                        AutomationGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false, Callback = wO.SetAutoRebirth })
                        AutomationGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best Swords", Default = false, Callback = wO.SetAutoEquipBest })
                        AutomationGroup:AddSlider("EquipBestDelay", {
                            Text = "Equip Best Delay",
                            Default = 10,
                            Min = 1,
                            Max = 120,
                            Rounding = 0,
                            Callback = wO.SetEquipBestDelay
                        })
                        AutomationGroup:AddToggle("AutoClaimQuests", { Text = "Auto Claim Quests", Default = false, Callback = wO.SetAutoClaimQuests })
                        AutomationGroup:AddDivider()
                        AutomationGroup:AddToggle("AutoAuraRoll", { Text = "Auto Roll Auras", Default = false, Callback = wO.SetAutoAuraRoll })
                        AutomationGroup:AddDropdown("AuraCurrency", {
                            Text = "Aura Currency",
                            Values = { "Gems", "Lucky Dice", "Ultra Dice" },
                            Default = 1,
                            Callback = wO.SetAuraCurrency
                        })
                        AutomationGroup:AddDropdown("AuraStopAt", { Text = "Stop at Aura", Values = xq, Default = 4, Callback = wO.SetAuraStopAt })
                        local AscendGroup = I2[2]:AddRightGroupbox("Ascend", "sparkles")
                        AscendGroup:AddToggle("AutoAscend", { Text = "Auto Ascend", Default = false, Callback = wO.SetAutoAscend })
                        AscendGroup:AddDropdown("AscendRarities", {
                            Text = "Ascend Rarities",
                            Values = xf,
                            Multi = true,
                            AllowNull = true,
                            Default = { "Common", "Uncommon", "Rare", "Epic", "Legendary" },
                            Callback = wO.SetAscendRarities
                        })
                        AscendGroup:AddToggle("AscendSkipEquipped", { Text = "Skip Equipped Targets", Default = true, Callback = wO.SetAscendSkipEquipped })
                        local SalvageGroup = I2[2]:AddRightGroupbox("Salvage", "trash-2")
                        SalvageGroup:AddToggle("AutoSalvage", { Text = "Auto Salvage", Default = false, Callback = wO.SetAutoSalvage })
                        SalvageGroup:AddDropdown("SalvageMode", {
                            Text = "Salvage Mode",
                            Values = { "Duplicates", "By Rarity" },
                            Default = 1,
                            Callback = wO.SetSalvageMode
                        })
                        SalvageGroup:AddDropdown("SalvageRarities", {
                            Text = "Salvage Rarities",
                            Values = xf,
                            Multi = true,
                            AllowNull = true,
                            Default = { "Common", "Uncommon", "Rare" },
                            Callback = wO.SetSalvageRarities
                        })
                        SalvageGroup:AddSlider("SalvageKeepCount", {
                            Text = "Keep Per Sword",
                            Default = 1,
                            Min = 1,
                            Max = 20,
                            Rounding = 0,
                            Callback = wO.SetSalvageKeepCount
                        })
                        SalvageGroup:AddToggle("SalvageKeepFavorites", { Text = "Keep Favorites", Default = true, Callback = wO.SetSalvageKeepFavorites })
                        SalvageGroup:AddToggle("SalvageKeepLocked", { Text = "Keep Locked", Default = true, Callback = wO.SetSalvageKeepLocked })
                        SalvageGroup:AddToggle("SalvageKeepEquipped", { Text = "Keep Equipped", Default = true, Callback = wO.SetSalvageKeepEquipped })
                        local ZonesGroup = I2[3]:AddRightGroupbox("Zones", "map-pin")
                        ZonesGroup:AddDropdown("TeleportZone", { Text = "Teleport Zone", Values = wG, Default = 1, Callback = wO.SetTeleportZone })
                        ZonesGroup:AddButton({
                            Text = "Teleport to Zone",
                            Func = function()
                                local Fg_1
                                local Ff_1
                                Ff_1, Fg_1 = wO.TeleportSelectedZone()
                                if Ff_1 then
                                    Library:Notify("Traveling to " .. tostring(State.TeleportZone), 4)
                                else
                                    local Ff_2 = Fg_1 or "Travel failed"
                                    Library:Notify(tostring(Ff_2), 5)
                                end
                            end
                        })
                        local CodesGroup = I2[3]:AddRightGroupbox("Codes", "ticket")
                        CodesGroup:AddButton({
                            Text = "Redeem Codes",
                            Func = function()
                                task.spawn(function()
                                    Library:Notify("Redeeming codes...", 3)
                                    local nA, nB = wO.RedeemAllCodes()
                                    Library:Notify(("Redeemed %d · skipped/failed %d"):format(nA, nB), 6)
                                end)
                            end
                        })
                        nK = task.spawn(function()
                            while true do
                                local Fi = wv() and not Library.Unloaded
                                if Fi then
                                    pcall(function()
                                        Label:SetText("Status: " .. tostring(State.Status))
                                    end)
                                    task.wait(0.35)
                                    continue
                                end
                                break
                            end
                        end)
                        wO.Track(function()
                            if coroutine.status(nK) ~= "dead" then
                                task.cancel(nK)
                            end
                        end)
                    end
                    I9_5()
                    local function I9_6()
                        local nQ
                        local MovementGroup = I5[2]:AddLeftGroupbox("Movement", "person-standing")
                        local FlightGroup = I5[2]:AddRightGroupbox("Flight", "plane")
                        nQ = {
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
                        local function nR()
                            local Fl = wt()
                            if not Fl then
                                return
                            end
                            if nQ[1] then
                                if nQ[8] == nil then
                                    nQ[8] = Fl.WalkSpeed
                                end
                                Fl.WalkSpeed = nQ[2]
                            elseif nQ[8] ~= nil then
                                Fl.WalkSpeed = nQ[8]
                                nQ[8] = nil
                            end
                        end
                        local function nX()
                            if nQ[9] then
                                pcall(function()
                                    nQ[9]:Destroy()
                                end)
                                nQ[9] = nil
                            end
                            local Fn = wt()
                            if Fn then
                                Fn.PlatformStand = false
                            end
                        end
                        local function n1()
                            nX()
                            local Fs = wH()
                            local Ft = wt()
                            if not Fs or not Ft then
                                return
                            end
                            Ft.PlatformStand = true
                            local bodyVelocity = Instance.new("BodyVelocity")
                            bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
                            bodyVelocity.Velocity = Vector3.zero
                            bodyVelocity.Parent = Fs
                            nQ[9] = bodyVelocity
                        end
                        local function ob()
                            for k, v in pairs(nQ[10]) do
                                if k and k.Parent then
                                    k.CanCollide = v
                                end
                            end
                            table.clear(nQ[10])
                        end
                        local function og()
                            for k, v in pairs(nQ[14]) do
                                if k and k.Parent then
                                    k.HoldDuration = v.HoldDuration
                                    k.MaxActivationDistance = v.MaxActivationDistance
                                    k.RequiresLineOfSight = v.RequiresLineOfSight
                                end
                            end
                            table.clear(nQ[14])
                        end
                        local function onDescendantAdded(on)
                            local FQ = if not on:IsA("ProximityPrompt") then 1 else 0
                            if FQ == 1 then
                                return
                            end
                            if not nQ[14][on] then
                                nQ[14][on] = {
                                    HoldDuration = on.HoldDuration,
                                    MaxActivationDistance = on.MaxActivationDistance,
                                    RequiresLineOfSight = on.RequiresLineOfSight
                                }
                            end
                            on.HoldDuration = 0
                            on.MaxActivationDistance = 50
                            on.RequiresLineOfSight = false
                        end
                        MovementGroup:AddToggle("WalkSpeedEnabled", {
                            Text = "WalkSpeed",
                            Default = false,
                            Callback = function(op)
                                nQ[1] = op
                                nR()
                            end
                        })
                        MovementGroup:AddSlider("WalkSpeed", {
                            Text = "Speed",
                            Default = 32,
                            Min = 16,
                            Max = 250,
                            Rounding = 0,
                            Callback = function(ou)
                                nQ[2] = ou
                                if nQ[1] then
                                    nR()
                                end
                            end
                        })
                        MovementGroup:AddToggle("InfJump", {
                            Text = "Infinite Jump",
                            Default = false,
                            Callback = function(ox)
                                nQ[6] = ox
                                if nQ[12] then
                                    nQ[12]:Disconnect()
                                    nQ[12] = nil
                                end
                                if ox then
                                    nQ[12] = UserInputService.JumpRequest:Connect(function()
                                        local FV = not wv() or not nQ[6]
                                        if FV then
                                            return
                                        end
                                        local FV_1 = wt()
                                        if FV_1 then
                                            FV_1:ChangeState(Enum.HumanoidStateType.Jumping)
                                        end
                                    end)
                                end
                            end
                        })
                        MovementGroup:AddToggle("NoClip", {
                            Text = "Noclip",
                            Default = false,
                            Callback = function(oK)
                                nQ[5] = oK
                                if nQ[11] then
                                    nQ[11]:Disconnect()
                                    nQ[11] = nil
                                end
                                if not oK then
                                    ob()
                                    return
                                end
                                nQ[11] = RunService.Stepped:Connect(function()
                                    local FY = not wv() or not nQ[5]
                                    if FY then
                                        return
                                    end
                                    local FY_1 = wM()
                                    if not FY_1 then
                                        return
                                    end
                                    for i, descendant in ipairs(FY_1:GetDescendants()) do
                                        if descendant:IsA("BasePart") then
                                            if nQ[10][descendant] == nil then
                                                nQ[10][descendant] = descendant.CanCollide
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
                            Callback = function(o0)
                                nQ[7] = o0
                                if nQ[13] then
                                    nQ[13]:Disconnect()
                                    nQ[13] = nil
                                end
                                if not o0 then
                                    og()
                                    return
                                end
                                for i, descendant in ipairs(xQ:GetDescendants()) do
                                    onDescendantAdded(descendant)
                                end
                                nQ[13] = xQ.DescendantAdded:Connect(onDescendantAdded)
                            end
                        })
                        FlightGroup:AddToggle("Fly", {
                            Text = "Fly",
                            Default = false,
                            Callback = function(o9)
                                nQ[3] = o9
                                if o9 then
                                    n1()
                                else
                                    nX()
                                end
                            end
                        })
                        FlightGroup:AddSlider("FlySpeed", {
                            Text = "Fly Speed",
                            Default = 60,
                            Min = 10,
                            Max = 400,
                            Rounding = 0,
                            Callback = function(pd)
                                nQ[4] = pd
                            end
                        })
                        local connection2 = RunService.RenderStepped:Connect(function()
                            local Gk = not wv() or not nQ[3] or not nQ[9]
                            if Gk then
                                return
                            end
                            local CurrentCamera = xQ.CurrentCamera
                            local Gl = wH()
                            if not CurrentCamera or not Gl then
                                return
                            end
                            if nQ[9].Parent ~= Gl then
                                n1()
                                if not nQ[9] then
                                    return
                                end
                            end
                            local Gl_1 = Vector3.zero
                            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                Gl_1 += CurrentCamera.CFrame.LookVector
                            end
                            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                Gl_1 -= CurrentCamera.CFrame.LookVector
                            end
                            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                                Gl_1 -= CurrentCamera.CFrame.RightVector
                            end
                            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                                Gl_1 += CurrentCamera.CFrame.RightVector
                            end
                            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                                Gl_1 += Vector3.yAxis
                            end
                            local Gk_2 = UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or UserInputService:IsKeyDown(Enum.KeyCode.C)
                            if Gk_2 then
                                Gl_1 -= Vector3.yAxis
                            end
                            if Gl_1.Magnitude > 0 then
                                nQ[9].Velocity = Gl_1.Unit * nQ[4]
                            else
                                nQ[9].Velocity = Vector3.zero
                            end
                        end)
                        local connection = LocalPlayer.CharacterAdded:Connect(function()
                            task.wait(0.15)
                            if not wv() then
                                return
                            end
                            nR()
                            if nQ[3] then
                                n1()
                            end
                        end)
                        wO.Track(function()
                            connection2:Disconnect()
                            connection:Disconnect()
                            if nQ[11] then
                                nQ[11]:Disconnect()
                            end
                            if nQ[12] then
                                nQ[12]:Disconnect()
                            end
                            if nQ[13] then
                                nQ[13]:Disconnect()
                            end
                            nX()
                            ob()
                            og()
                            if nQ[8] ~= nil then
                                local Gw = wt()
                                if Gw then
                                    Gw.WalkSpeed = nQ[8]
                                end
                            end
                        end)
                    end
                    I9_6()
                    local function I9_7()
                        local Hx, Hy, Hz, HA, HB, HC, HD, HE, HF, HG, Label, HI, HJ, HK
                        HI = {}
                        HC = {}
                        Hz = nil
                        HE = false
                        HA = 0
                        HK = 0
                        HF = os.clock()
                        local MenuGroup = I5[3]:AddLeftGroupbox("Menu", "logs")
                        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                        Label = MenuGroup:AddLabel("AFK triggers: 0")
                        Hx = function()
                            local CurrentCamera
                            CurrentCamera = xQ.CurrentCamera
                            local Gz = not CurrentCamera or not wy(VirtualUser.CaptureController) or not wy(VirtualUser.ClickButton2)
                            if Gz then
                                return false
                            end
                            local Gz_1 = pcall(function()
                                VirtualUser:CaptureController()
                                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
                            end)
                            if not Gz_1 then
                                return false
                            end
                            HA += 1
                            HF = os.clock()
                            pcall(function()
                                Label:SetText("AFK triggers: " .. HA)
                            end)
                            return true
                        end
                        HG = function(p9)
                            pcall(function()
                                xv:SetGameplayPausedNotificationEnabled(not p9)
                            end)
                            pcall(function()
                                local RobloxNetworkPauseNotificati = xs:FindFirstChild("RobloxNetworkPauseNotification")
                                if RobloxNetworkPauseNotificati then
                                    RobloxNetworkPauseNotificati.Enabled = not p9
                                end
                            end)
                            if not p9 then
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
                        HD = function(qp)
                            local GI = qp.ClassName == "ParticleEmitter" or qp.ClassName == "Trail" or qp.ClassName == "Smoke" or qp.ClassName == "Fire"
                            local GM = if GI then 1 else 0
                            local GK = 289 * GM + 156 * (1 - GM)
                            local GL = 553 * GM + 1312 * (1 - GM)
                            if not ((GK * 3448 + GL * 1421 + GK * GL) % 16777213 == 1942102) then
                                GI = qp.ClassName == "Sparkles"
                            end
                            if not GI then
                                GI = qp.ClassName == "Explosion"
                            end
                            if not GI then
                                GI = qp.ClassName == "Beam"
                            end
                            if GI then
                                if HI[qp] == nil then
                                    HI[qp] = qp.Enabled
                                end
                                pcall(function()
                                    qp.Enabled = false
                                end)
                            end
                        end
                        HB = function()
                            for k, v in pairs(HI) do
                                local GR = k
                                local GT = v
                                if GR.Parent then
                                    pcall(function()
                                        GR.Enabled = GT
                                    end)
                                end
                            end
                            table.clear(HI)
                            if Hz then
                                pcall(function()
                                    settings().Rendering.QualityLevel = Hz.Quality
                                end)
                                xi.GlobalShadows = Hz.Shadows
                                xi.FogEnd = Hz.Fog
                                Hz = nil
                            end
                        end
                        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
                        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
                        MenuGroup:AddToggle("Disable3D", {
                            Text = "Disable 3D Rendering",
                            Default = false,
                            Callback = function(qE)
                                pcall(function()
                                    RunService:Set3dRenderingEnabled(not qE)
                                end)
                            end
                        })
                        MenuGroup:AddToggle("FpsBoost", {
                            Text = "FPS Boost",
                            Default = false,
                            Callback = function(qJ)
                                if qJ then
                                    if not Hz then
                                        Hz = { Quality = settings().Rendering.QualityLevel, Shadows = xi.GlobalShadows, Fog = xi.FogEnd }
                                    end
                                    pcall(function()
                                        settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
                                    end)
                                    xi.GlobalShadows = false
                                    xi.FogEnd = 9000000000
                                    for i, descendant in ipairs(xQ:GetDescendants()) do
                                        pcall(HD, descendant)
                                    end
                                else
                                    HB()
                                end
                            end
                        })
                        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
                        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                        Library.ToggleKeybind = Options.MenuKeybind
                        HG(true)
                        local ScriptGroup = I5[3]:AddLeftGroupbox("Script", "terminal")
                        ScriptGroup:AddButton({
                            Text = "Unload Script",
                            Func = function()
                                Library:Unload()
                            end
                        })
                        Toggles.AntiGameplayPause:OnChanged(function()
                            HG(Toggles.AntiGameplayPause.Value)
                        end)
                        if Toggles.AntiGameplayPause.Value then
                            HG(true)
                        end
                        table.insert(HC, LocalPlayer.Idled:Connect(function()
                            if Toggles.AntiAfk.Value and not Library.Unloaded then
                                Hx()
                            end
                        end))
                        table.insert(HC, xQ.DescendantAdded:Connect(function(q1)
                            if Toggles.FpsBoost.Value then
                                HD(q1)
                            end
                        end))
                        Hy = function(q5)
                            if HE or Library.Unloaded or not Toggles.AutoReconnect.Value then
                                return
                            end
                            HE = true
                            local G5 = HK
                            local G6_1 = pcall(function()
                                if q5 then
                                    xn:Teleport(game.PlaceId, LocalPlayer)
                                else
                                    xn:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                                end
                            end)
                            if not G6_1 then
                                HE = false
                                if not q5 and G5 == HK then
                                    task.delay(1.5, function()
                                        if G5 == HK then
                                            Hy(true)
                                        end
                                    end)
                                end
                            end
                        end
                        table.insert(HC, xn.TeleportInitFailed:Connect(function(rn)
                            local Hg
                            if rn == LocalPlayer and HE then
                                HE = false
                                Hg = HK
                                task.delay(3, function()
                                    if Hg == HK then
                                        Hy(true)
                                    end
                                end)
                            end
                        end))
                        task.spawn(function()
                            local RobloxPromptGui = xs:WaitForChild("RobloxPromptGui", 30)
                            local Hl = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
                            if Library.Unloaded or not Hl then
                                return
                            end
                            table.insert(HC, Hl.ChildAdded:Connect(function(rC)
                                if rC.Name == "ErrorPrompt" then
                                    Hy(false)
                                end
                            end))
                        end)
                        HJ = task.spawn(function()
                            while not Library.Unloaded do
                                if Toggles.AntiGameplayPause.Value then
                                    HG(true)
                                end
                                local Ho = Toggles.AntiAfk.Value and os.clock() - HF >= 60
                                if Ho then
                                    Hx()
                                end
                                task.wait(1)
                            end
                        end)
                        wO.Track(function()
                            HK += 1
                            for i, v in ipairs(HC) do
                                v:Disconnect()
                            end
                            pcall(task.cancel, HJ)
                            HG(false)
                            HB()
                            pcall(function()
                                RunService:Set3dRenderingEnabled(true)
                            end)
                        end)
                    end
                    I9_7()
                    local function I9_8()
                        local IN, IO, IP, IQ
                        ThemeManager:SetLibrary(Library)
                        ThemeManager:SetFolder("MyScriptHub")
                        ThemeManager:SaveDefault("Evil Hello Kitty")
                        ThemeManager:ApplyToTab(I5[3])
                        SaveManager:SetLibrary(Library)
                        SaveManager:IgnoreThemeSettings()
                        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
                        SaveManager:SetFolder("OuroborosHub/SwordRngX")
                        local IR = SaveManager:BuildConfigSection(I5[3])
                        IN = function(r2, r3)
                            local HO_1 = (r2 == "Toggle" and Toggles or Options)[r3]
                            local HN_2 = type(HO_1) == "table" and HO_1.Type == r2
                            local HN_3 = HN_2 and HO_1
                            local HT = if HN_3 then 1 else 0
                            local HR = 1353 * HT + 3190 * (1 - HT)
                            local HS = 742 * HT + 659 * (1 - HT)
                            if not ((HR * 1112 + HS * 3294 + HR * HS) % 16777213 == 4952610) then
                                HN_3 = nil
                            end
                            return HN_3
                        end
                        IP = function(sc, sd)
                            local Type = sd.Type
                            if Type == "Toggle" then
                                return { idx = sc, type = "Toggle", value = sd.Value == true }
                            elseif Type == "Slider" then
                                return { idx = sc, type = "Slider", value = tostring(sd.Value) }
                            elseif Type == "Dropdown" then
                                return { idx = sc, type = "Dropdown", multi = sd.Multi == true, value = sd.Value }
                            elseif Type == "Input" then
                                local HV = sd.Value or ""
                                return { idx = sc, type = "Input", text = tostring(HV) }
                            elseif Type == "ColorPicker" then
                                return { idx = sc, type = "ColorPicker", value = sd.Value:ToHex(), transparency = sd.Transparency }
                            elseif Type == "KeyPicker" then
                                return {
                                    idx = sc,
                                    type = "KeyPicker",
                                    mode = sd.Mode,
                                    key = sd.Value,
                                    modifiers = sd.Modifiers,
                                    toggled = sd.Toggled
                                }
                            else
                                return nil
                            end
                        end
                        IO = function()
                            local H0 = {}
                            for i, v in ipairs({ Toggles, Options }) do
                                for k, v in pairs(v) do
                                    local H1 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                                    if H1 then
                                        local H1_1 = IP(k, v)
                                        if H1_1 then
                                            H0[#H0 + 1] = H1_1
                                        end
                                    end
                                end
                            end
                            table.sort(H0, function(sn, so)
                                if sn.type ~= so.type then
                                    return sn.type < so.type
                                end
                                return sn.idx < so.idx
                            end)
                            return { objects = H0 }
                        end
                        IQ = function(sq)
                            local In
                            In = nil
                            local Io = type(sq) ~= "table" or type(sq.idx) ~= "string" or type(sq.type) ~= "string" or SaveManager.Ignore[sq.idx]
                            if Io then
                                return false
                            end
                            In = IN(sq.type, sq.idx)
                            if not In then
                                return false
                            end
                            local Io_1 = pcall(function()
                                if sq.type == "Input" then
                                    if type(sq.text) ~= "string" then
                                        return
                                    end
                                    In:SetValue(sq.text)
                                elseif sq.type == "ColorPicker" then
                                    In:SetValueRGB(Color3.fromHex(sq.value), sq.transparency)
                                elseif sq.type == "KeyPicker" then
                                    In:SetValue({ sq.key, sq.mode, sq.modifiers })
                                    if sq.mode == "Toggle" and sq.toggled ~= nil then
                                        In.Toggled = sq.toggled
                                        In:Update()
                                    end
                                else
                                    In:SetValue(sq.value)
                                end
                            end)
                            return Io_1
                        end
                        IR:AddDivider()
                        IR:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
                        IR:AddButton("Export Config to Clipboard", function()
                            local Ir_1
                            local Iq_1
                            Iq_1, Ir_1 = pcall(HttpService.JSONEncode, HttpService, IO())
                            if Iq_1 then
                                local Iq_2 = wy(setclipboard) and setclipboard
                                local Is = Iq_2
                                if not Is then
                                    local Iq_3 = wy(toclipboard) and toclipboard
                                    Is = Iq_3 or nil
                                end
                                local Iq_4 = Is
                                local Is_1 = type(Iq_4) == "function" and pcall(Iq_4, Ir_1)
                                if Is_1 then
                                    Library:Notify("Config copied to clipboard", 6)
                                    return
                                end
                                Library:Notify("Your executor does not support copying to the clipboard")
                                return
                            end
                            Library:Notify("Failed to encode the config")
                        end)
                        IR:AddButton("Import Config from Clipboard Text", function()
                            local IA_1
                            local Iy = Options.SaveManager_ImportSource.Value or ""
                            local Iy_1
                            local Iz = tostring(Iy):match("^%s*(.-)%s*$")
                            if Iz == "" then
                                Library:Notify("Paste an exported config into the box first")
                                return
                            end
                            if #Iz > 262144 then
                                Library:Notify("That config is too large")
                                return
                            end
                            Iy_1, IA_1 = pcall(HttpService.JSONDecode, HttpService, Iz)
                            local Iz_1 = not Iy_1
                            local IE = if Iz_1 then 1 else 0
                            local IC = 1266 * IE + 486 * (1 - IE)
                            local ID = 1687 * IE + 2092 * (1 - IE)
                            if not ((IC * 908 + ID * 3697 + IC * ID) % 16777213 == 9522109) then
                                Iz_1 = type(IA_1) ~= "table"
                            end
                            if not Iz_1 then
                                Iz_1 = type(IA_1.objects) ~= "table"
                            end
                            if Iz_1 then
                                Library:Notify("That is not a valid exported config")
                                return
                            end
                            if #IA_1.objects > 2048 then
                                Library:Notify("That config has too many records")
                                return
                            end
                            local Iy_2 = 0
                            for i, v in ipairs(IA_1.objects) do
                                if IQ(v) then
                                    Iy_2 += 1
                                end
                            end
                            if Iy_2 == 0 then
                                Library:Notify("No settings in that config matched this script")
                                return
                            end
                            Options.SaveManager_ImportSource:SetValue("")
                            local IA_2 = Iy_2 == 1 and "" or "s"
                            Library:Notify(("Imported %d setting%s"):format(Iy_2, IA_2), 6)
                        end)
                        ThemeManager:LoadDefault()
                        SaveManager:LoadAutoloadConfig()
                        local function IR_1(sZ, s_)
                            if Toggles[sZ] then
                                s_(Toggles[sZ].Value)
                            end
                        end
                        local function IS(s2, s3)
                            if Options[s2] then
                                s3(Options[s2].Value)
                            end
                        end
                        IS("AuraCurrency", wO.SetAuraCurrency)
                        IS("AuraStopAt", wO.SetAuraStopAt)
                        IS("RollDice", wO.SetRollDice)
                        IS("TeleportZone", wO.SetTeleportZone)
                        IS("FarmZone", wO.SetFarmZone)
                        IS("AscendRarities", wO.SetAscendRarities)
                        IS("SalvageMode", wO.SetSalvageMode)
                        IS("SalvageRarities", wO.SetSalvageRarities)
                        IS("SalvageKeepCount", wO.SetSalvageKeepCount)
                        IS("FarmRadius", wO.SetFarmRadius)
                        IS("FarmSpeed", wO.SetFarmSpeed)
                        IS("EquipBestDelay", wO.SetEquipBestDelay)
                        IR_1("AutoRoll", wO.SetAutoRoll)
                        IR_1("AutoSkillTree", wO.SetAutoSkillTree)
                        IR_1("AutoFarm", wO.SetAutoFarm)
                        IR_1("AutoUnlockZone", wO.SetAutoUnlockZone)
                        IR_1("AutoBestZone", wO.SetAutoBestZone)
                        IR_1("AutoRebirth", wO.SetAutoRebirth)
                        IR_1("AutoEquipBest", wO.SetAutoEquipBest)
                        IR_1("AutoClaimQuests", wO.SetAutoClaimQuests)
                        IR_1("AutoAuraRoll", wO.SetAutoAuraRoll)
                        IR_1("AutoAscend", wO.SetAutoAscend)
                        IR_1("AscendSkipEquipped", wO.SetAscendSkipEquipped)
                        IR_1("AutoSalvage", wO.SetAutoSalvage)
                        IR_1("SalvageKeepFavorites", wO.SetSalvageKeepFavorites)
                        IR_1("SalvageKeepLocked", wO.SetSalvageKeepLocked)
                        IR_1("SalvageKeepEquipped", wO.SetSalvageKeepEquipped)
                        if Toggles.HideUiOnStart and Toggles.HideUiOnStart.Value then
                            pcall(function()
                                Library:Toggle(false)
                            end)
                        end
                    end
                    I9_8()
                end
            end
            Jm_11 = (Jm_11 + 39) % 136
        else
            local JQ = bit32.rrotate(bit32.bxor(bit32.lrotate(Jm_11, 21), string.byte(tostring(wt))), 29)
            if bit32.bxor(bit32.lrotate(bit32.bxor(JQ, 1453154660), 10), 1971687770) ~= bit32.lrotate(JQ, 10) then
                xV, xW = pcall(xX)
            else
                xW, xX = pcall(xV)
            end
            Jm_11 = (Jm_11 + 90) % 136
        end
    elseif xY <= 15 then
        if xY <= 14 then
            xZ = {
                "fekshzknd",
                "onviga",
                "riaapca",
                "gqfzcpnfwp",
                "ohkduwh",
                "rflv",
                "cbwazsvmo",
                "fgzlp",
                "ejtracb",
                "isvtykhsned",
                "zsrmmqsrn",
                "tycxgwctx"
            }
            local JL = Jm_11
            x_ = xZ[JL % 12 + 1]
            if x_:len() <= x_:gsub("(.)", "%1%1", JL % 3 % 2 + 1):len() then
                State.FarmZone = Jm_6
                State.AscendRarities = { Common = true, Uncommon = true, Rare = true, Epic = true, Legendary = true }
                State.AscendSkipEquipped = true
                State.SalvageMode = "Duplicates"
                State.SalvageRarities = { Common = true, Uncommon = true, Rare = true }
                State.SalvageKeepFavorites = true
                State.SalvageKeepLocked = true
                State.SalvageKeepEquipped = true
                State.SalvageKeepCount = 1
                State.FarmRadius = 8
                State.FarmSpeed = 4
                State.EquipBestDelay = 10
                w1 = {
                    Roll = 0,
                    SkillTree = 0,
                    Farm = 0,
                    UnlockZone = 0,
                    BestZone = 0,
                    Rebirth = 0,
                    Equip = 0,
                    Aura = 0,
                    Ascend = 0,
                    Salvage = 0,
                    Quests = 0
                }
                wW = fn602
                wM = fn1019
                wH = fn250
            else
                State.FarmZone = State
                Jm_6.AscendRarities = { Uncommon = true, Rare = true, Legendary = true, Common = true, Epic = true }
                Jm_6.AscendSkipEquipped = true
                Jm_6.SalvageMode = "Duplicates"
                Jm_6.SalvageRarities = { Common = true, Rare = true, Uncommon = true }
                Jm_6.SalvageKeepFavorites = true
                Jm_6.SalvageKeepLocked = true
                Jm_6.SalvageKeepEquipped = true
                Jm_6.SalvageKeepCount = 1
                Jm_6.FarmRadius = 8
                Jm_6.FarmSpeed = 4
                Jm_6.EquipBestDelay = 10
                wH = {
                    SkillTree = 0,
                    Farm = 0,
                    Equip = 0,
                    Rebirth = 0,
                    Salvage = 0,
                    Roll = 0,
                    Ascend = 0,
                    BestZone = 0,
                    UnlockZone = 0,
                    Quests = 0,
                    Aura = 0
                }
                w1 = fn602
                wW = fn1019
                wM = fn250
            end
            Jm_11 = (Jm_11 + 5) % 136
        else
            xZ = (vector.create((Jm_11 * 4 + 3) % 11 + 1, (Jm_11 * 10 + 2) % 13 + 1, (Jm_11 * 3 + 3) % 17 + 1))
            x_ = (vector.create((Jm_11 * 6 + 6) % 11 + 1, (Jm_11 * 8 + 1) % 13 + 1, (Jm_11 * 6 + 3) % 17 + 1))
            local JX = vector.dot(xZ, x_)
            if JX * JX <= vector.dot(xZ, xZ) * vector.dot(x_, x_) then
                wt = fn689
                xK = fn76
                w8 = fn789
                w2 = fn887
            else
                xK = fn689
                w8 = fn76
                w2 = fn789
                wt = fn887
            end
            Jm_11 = (Jm_11 + 39) % 136
        end
    elseif xY <= 16 then
        if Jm_11 * 5043903 + 7 + 5 <= Jm_11 * 5043903 + 7 + 5 + 6 then
            xM = fn271
            xo = function(bW, bX, bY)
                local zs
                zs = nil
                w1[bW] += 1
                zs = w1[bW]
                if not bX then
                    return
                end
                task.spawn(function()
                    bY(zs)
                end)
            end
            wQ = fn977
            wq = fn242
        else
            wQ = fn271
            xM = function(bW, bX, bY)
                local zs
                zs = nil
                w1[bW] += 1
                zs = w1[bW]
                if not bX then
                    return
                end
                task.spawn(function()
                    bY(zs)
                end)
            end
            wq = fn977
            xo = fn242
        end
        Jm_11 = (Jm_11 + 22) % 136
    else
        xY = {
            "aibp",
            "cevywkhz",
            "imqennulx",
            "zwxvtypiba",
            "dpzxuctxnj",
            "xkqvgzbcaq",
            "fzqtbugtc",
            "ecftunhl",
            "trsuwccpwkv",
            "xbb",
            "hldom"
        }
        local KB = Jm_11
        xZ = xY[KB % 11 + 1]
        if xZ:len() <= xZ:gsub("(.)", "%1%1", KB % 3 % 2 + 1):len() then
            xw = fn641
            wZ = fn422
            wC = function()
                local z_
                z_ = wS[State.RollDice] or Dice.DEFAULT or "Dice"
                pcall(function()
                    xI:equip(z_)
                end)
            end
        else
            wC = fn641
            xw = fn422
            wZ = function()
                local z_
                z_ = wS[State.RollDice] or Dice.DEFAULT or "Dice"
                pcall(function()
                    xI:equip(z_)
                end)
            end
        end
        Jm_11 = (Jm_11 + 107) % 136
    end
until (Jm_11 * 101 + 6) % 136 == 58
if not xW then
    Jm_6 = 1
    repeat
        Jm_11 = (vector.create((Jm_6 * 4 + 6) % 11 + 1, (Jm_6 * 2 + 10) % 13 + 1, (Jm_6 * 11 + 3) % 17 + 1))
        xV = (vector.create((Jm_6 * 6 + 9) % 11 + 1, (Jm_6 * 3 + 9) % 13 + 1, (Jm_6 * 5 + 7) % 17 + 1))
        xW = (vector.create((Jm_6 * 2 + 1) % 5 + 1, (Jm_6 * 1 + 2) % 7 + 1, (Jm_6 * 2 + 7) % 9 + 1))
        if math.abs((vector.angle(Jm_11, xV, xW))) - math.abs((vector.angle(xV, Jm_11, xW))) == 1 then
            warn("[Ouroboros Sword RNG X] UI failed: ", xX)
            warn(debug.traceback())
            pcall(fn576)
        else
            warn("[Ouroboros Sword RNG X] UI failed: ", xX)
            warn(debug.traceback())
            pcall(fn576)
        end
        Jm_6 = (Jm_6 + 7) % 8
    until (Jm_6 * 7 + 4) % 8 == 4
end
