local p9
local qc
local pR
local pU
local pX
local pE
local HideCardAnimations
local pH
local p2
local pK
local pN
local p8
local pQ
local Workspace
local pT
local qe
local BattleSpeedMultiplier
local pZ
local qk
local pG
local qn
local pJ
local pM
local LocalPlayer
local pP
local qa
local pS
local pV
local qj
local pF
local qm
local pI
local p3
local p6
local pO
local function fn3(m)
    local q6 = typeof(cloneref) == "function" and typeof(m) == "Instance"
    if q6 then
        return cloneref(m)
    end
    return m
end
local function fn18()
    if not qe then
        return
    end
    _G.HideCardAnimations = HideCardAnimations
    _G.BattleSpeedMultiplier = BattleSpeedMultiplier
    qe = false
end
local function worker()
    while not pM.Unloaded do
        if pM.Flags.AutoRoll then
            pM.Roll()
            task.wait(math.max(0.05, pT))
        else
            task.wait(0.25)
        end
    end
end
local function fn130(cI, cJ, cK)
    local sQ = 0
    if type(cI.Inventory) == "table" then
        for k, v in cI.Inventory do
            local sR = type(v) == "table" and v.Name == cJ
            if sR then
                if not cK or (v.Variant or "Normal") == cK then
                    local sR_2 = tonumber(v.Count) or 1
                    sQ += sR_2
                end
            end
        end
    end
    return sQ
end
local function fn144(aZ)
    local rz = { qc }
    local rA = pO[aZ]
    if rA then
        for k, v in rA.Npcs do
            table.insert(rz, v.Label)
        end
    end
    return rz
end
local function fn154(a6, a7)
    if not a6 then
        return nil
    elseif a7 == qc then
        local rI = a6.Npcs[p9]
        if not rI then
            p9 = 1
            rI = a6.Npcs[1]
        end
        return rI
    else
        for k, v in a6.Npcs do
            if v.Label == a7 then
                return v
            end
        end
        return a6.Npcs[1]
    end
end
local function fn180()
    return _G.PlayerInTower == true or _G.AutoTowerActive == true or _G.TowerChallengeActive == true or _G.BossTowerActive == true
end
local function worker7()
    while not pM.Unloaded do
        if pM.Flags.AutoPacks then
            pM.UsePacks()
        end
        task.wait(1.5)
    end
end
local function worker2()
    while not pM.Unloaded do
        if pM.Flags.AutoEquipBest then
            pM.EquipBest()
            task.wait(4)
        else
            task.wait(0.5)
        end
    end
end
local function worker3()
    while not pM.Unloaded do
        if pM.Flags.AutoStats then
            pM.UpgradeStats()
        end
        task.wait(0.6)
    end
end
local function fn229()
    return { Zones = pR, Shop = pK, Packs = pF, Recipes = qn, Stats = p3, Towers = pZ, DefaultZone = pR[1] }
end
local function fn334()
    local rV = qk() or pP()
    local rZ = if rV then 1 else 0
    local rX = 4091 * rZ + 2588 * (1 - rZ)
    local rY = 618 * rZ + 739 * (1 - rZ)
    if not ((rX * 2995 + rY * 921 + rX * rY) % 16777213 == 15349961) then
        rV = _G.TutorialActive == true
    end
    if not rV then
        rV = _G.SplitActive == true
    end
    return rV
end
local function worker4()
    while not pM.Unloaded do
        if pM.Flags.AutoMissions then
            pM.ClaimMissions()
        end
        task.wait(2)
    end
end
local function fn368()
    if qe then
        return
    end
    HideCardAnimations = _G.HideCardAnimations
    BattleSpeedMultiplier = _G.BattleSpeedMultiplier
    _G.HideCardAnimations = true
    _G.BattleSpeedMultiplier = 99
    qe = true
end
local function worker8()
    while not pM.Unloaded do
        pI()
        local vi = pM.Flags.AutoBattle and not pG()
        if vi then
            pM.StartSelectedBattle()
            local vi_1 = os.clock()
            while true do
                local vj = not pM.Unloaded and pM.Flags.AutoBattle and not qk() and os.clock() - vi_1 < 6
                if vj then
                    task.wait(0.25)
                    continue
                end
                break
            end
            while true do
                local vi_2 = not pM.Unloaded and pM.Flags.AutoBattle and qk()
                if vi_2 then
                    task.wait(0.35)
                    continue
                end
                break
            end
            task.wait(0.8)
        else
            task.wait(0.35)
        end
    end
end
local function fn380(b2)
    local si = not b2
    local sm = if si then 1 else 0
    local sk = 877 * sm + 2063 * (1 - sm)
    local sl = 1197 * sm + 3958 * (1 - sm)
    if not ((sk * 1527 + sl * 2056 + sk * sl) % 16777213 == 4849980) then
        si = not b2:IsA("ProximityPrompt")
    end
    if si then
        return
    end
    b2.HoldDuration = 0
    b2.RequiresLineOfSight = false
    if typeof(fireproximityprompt) == "function" then
        pcall(fireproximityprompt, b2)
        return
    end
    if typeof(firesignal) == "function" then
        pcall(firesignal, b2.Triggered, LocalPlayer)
    end
end
local function fn416(cd)
    local su = cd or "Normal"
    if su == "Normal" then
        return 1
    elseif qm.GetVariantInfo then
        local su_1 = qm.GetVariantInfo(su)
        local sv_1 = type(su_1) == "table" and tonumber(su_1.Multiplier)
        if sv_1 then
            return su_1.Multiplier
        end
        return 1
    else
        return 1
    end
end
local function fn421(cB, cC, cD)
    local Name = cB.Name
    local sJ = cB.Rarity or "Common"
    local sK = cB.Variant
    local sP = if sK then 1 else 0
    local sN = 3211 * sP + 2611 * (1 - sP)
    local sO = 1695 * sP + 3816 * (1 - sP)
    if not ((sN * 3719 + sO * 1741 + sN * sO) % 16777213 == 3558136) then
        sK = "Normal"
    end
    local sL = (("%*|%*|%*"):format(Name, sJ, sK))
    if cC and cC[sL] == "Brainrot Overload" then
        return 2
    end
    if cD and cD[sL] == "Corrupted Brainrot Overlord" then
        return 2
    end
    return 1
end
local function fn436(C, D)
    local connection = C:Connect(D)
    table.insert(pQ, connection)
    return connection
end
local function worker6()
    while not pM.Unloaded do
        if pM.Flags.AutoCraft then
            pM.CraftGear()
        end
        task.wait(1.2)
    end
end
local function fn524()
    if pM.Unloaded then
        return
    end
    pM.Unloaded = true
    for k in pM.Flags do
        pM.Flags[k] = false
    end
    pV()
    for k, v in pQ do
        v:Disconnect()
    end
    table.clear(pQ)
    if getgenv()[p2] == pM then
        getgenv()[p2] = nil
    end
end
local function fn558(bP, bQ)
    if not bQ then
        return nil
    end
    local r6 = bP and bP.Folder and Workspace:FindFirstChild(bP.Folder)
    if r6 then
        local r6_1 = r6:FindFirstChild(bQ.ModelName, true)
        if r6_1 then
            return r6_1
        end
        return Workspace:FindFirstChild(bQ.ModelName, true)
    end
    return Workspace:FindFirstChild(bQ.ModelName, true)
end
local function fn592()
    local uI_1
    local uH_1
    uH_1, uI_1 = pcall(function()
        return pU.GetTowerAttempts:InvokeServer()
    end)
    if not uH_1 then
        return 1
    elseif type(uI_1) == "number" then
        return uI_1
    elseif type(uI_1) == "table" then
        local uH_2 = uI_1.attempts or uI_1.remaining or uI_1.used and uI_1.limit and uI_1.limit - uI_1.used
        local uI_2 = tonumber(uH_2) or 1
        return uI_2
    else
        return 1
    end
end
local function fn598(S)
    if S == "Lobby" then
        return 0
    end
    local q8 = tonumber(string.match(S, "^World(%d+)$"))
    if q8 then
        return q8
    elseif S == "RaidWorld" then
        return 101
    elseif S == "RaidWorld2" then
        return 102
    elseif S == "RaidWorld3" then
        return 103
    elseif S == "GlobalBossWorld" then
        return 104
    else
        return 200
    end
end
local function fn608()
    if pM.Flags.AutoBattle or pM.Flags.AutoTowers then
        qa()
    else
        pV()
    end
end
local function fn627()
    local rR_1
    local rQ = _G.GUIManager and type(_G.GUIManager.IsBattleActive) == "function"
    local rQ_1
    if rQ then
        rQ_1, rR_1 = pcall(_G.GUIManager.IsBattleActive)
        if rQ_1 then
            return rR_1 == true
        end
        local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
        local rR_2 = PlayerGui and PlayerGui:FindFirstChild("BattleGui")
        return rR_2 ~= nil and rR_2.Enabled == true
    end
    local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
    local rR_4 = PlayerGui and PlayerGui:FindFirstChild("BattleGui")
    return rR_4 ~= nil and rR_4.Enabled == true
end
local function fn642(ck, cl, cm, cn)
    local Name = cl.Name
    local sA_2, sA_4
    local sB = cl.Rarity or "Common"
    local sC = cl.Variant or "Normal"
    local sC_1, sC_2
    local sD = (("%*|%*|%*"):format(Name, sB, sC))
    local sA_1 = cm and cm[sD]
    local sB_1 = sA_1
    if sA_1 then
        sA_1 = sB_1 ~= "None"
    end
    if sA_1 then
        sA_1 = pX.ApplyTraitBoosts
    end
    if sA_1 then
        sA_2, sC_1 = pX.ApplyTraitBoosts(ck, ck, sB_1)
        if type(sC_1) == "number" then
            ck = sC_1
        end
    end
    local sA_3 = cn and cn[sD]
    local sB_2 = sA_3
    if sA_3 then
        sA_3 = sB_2 ~= "None"
    end
    if sA_3 then
        sA_3 = pX.ApplyTraitBoosts
    end
    if sA_3 then
        sA_4, sC_2 = pX.ApplyTraitBoosts(ck, ck, sB_2)
        if type(sC_2) == "number" then
            ck = sC_2
        end
    end
    return ck
end
local function fn786(am, an)
    return qj(am.Id) < qj(an.Id)
end
local function fn789(aR, aS)
    local rq = type(aR) == "table" and aR[aS] == true
    return rq
end
local function fn821(cQ)
    return pN(cQ)
end
local function fn832(V)
    local ra = {}
    local rb = {}
    local rd = V.NPCs or {}
    for k, v in rd do
        local rc_1 = type(v) == "table" and not v.IsTutorial
        if rc_1 then
            local rc_2 = v.DisplayName or v.ModelName or v.NPCID
            local rd_1 = rc_2
            if type(rd_1) == "string" then
                if ra[rc_2] then
                    local re_1 = v.NPCID or v.ModelName
                    rc_2 = (("%* (%*)"):format(rd_1, re_1))
                end
                ra[rd_1] = true
                local insert = table.insert
                local re_2 = v.ModelName or v.NPCID
                insert(rb, { Label = rc_2, ModelName = re_2, NPCID = v.NPCID, Boss = v.IsBoss == true })
            end
        end
    end
    return rb
end
local function fn863(aH)
    local rn_1
    local rm = not aH
    local rm_1
    if rm ~= false then
        rm = pJ
    end
    if rm then
        rm = os.clock() - pE < 0.45
    end
    if rm then
        return pJ
    end
    rm_1, rn_1 = pcall(function()
        return pU.GetData:InvokeServer()
    end)
    local ro = rm_1 and type(rn_1) == "table"
    if ro then
        pJ = rn_1
        pE = os.clock()
        return rn_1
    end
    return pJ
end
local function worker9()
    while not pM.Unloaded do
        pI()
        local vl = pM.Flags.AutoTowers and not pG()
        if vl then
            pM.StartSelectedTower()
            local vl_1 = os.clock()
            while true do
                local vm = not pM.Unloaded and pM.Flags.AutoTowers and not pP() and os.clock() - vl_1 < 5
                if vm then
                    task.wait(0.3)
                    continue
                end
                break
            end
            while true do
                local vl_2 = not pM.Unloaded and pM.Flags.AutoTowers and pP()
                if vl_2 then
                    task.wait(0.6)
                    continue
                end
                break
            end
            task.wait(1)
        else
            task.wait(0.5)
        end
    end
end
local function fn928()
    local so_1
    local sn = not pS or not pS:IsA("BindableFunction")
    local sn_1
    if sn then
        return 0, 0
    end
    sn_1, so_1 = pcall(function()
        return pS:Invoke()
    end)
    local sp = sn_1 and type(so_1) == "table"
    if sp then
        local sn_2 = so_1.Luck or 0
        local sp_1 = so_1.Speed
        local st = if sp_1 then 1 else 0
        local sr = 713 * st + 3000 * (1 - st)
        local ss = 3057 * st + 1699 * (1 - st)
        if not ((sr * 188 + ss * 3014 + sr * ss) % 16777213 == 11527483) then
            sp_1 = 0
        end
        return sn_2, sp_1
    end
    return 0, 0
end
local function worker5()
    while not pM.Unloaded do
        if pM.Flags.AutoShop then
            pM.BuyShop()
        end
        task.wait(1.2)
    end
end
local function fn961()
    if pG() then
        return
    end
    local Tower = pM.Config.Tower
    local uS = Tower == "Auto Hardcore"
    local uT = (Tower == "Auto Tower" or uS) and pH() <= 0
    if uT then
        return
    end
    local uS_1 = p6.Config and p6.Config.TowerEntrancePosition
    if typeof(uS_1) == "Vector3" then
        p8(uS_1)
        task.wait(0.4)
    end
    local uS_2 = Tower == "Challenge" and type(_G.StartChallengeTowerRun) == "function"
    if uS_2 then
        pcall(_G.StartChallengeTowerRun)
        return
    end
    local uS_3 = Tower == "Boss Tower" and type(_G.StartBossTowerRun) == "function"
    if uS_3 then
        pcall(_G.StartBossTowerRun)
        return
    end
    local uS_4 = Tower == "Cosmic Boss" and type(_G.StartBossTowerRun) == "function"
    if uS_4 then
        pcall(_G.StartBossTowerRun, "Cosmic")
        return
    end
    if Tower == "Tower" then
        pcall(function()
            pU.StartTower:FireServer()
        end)
    elseif Tower == "Auto Tower" then
        pcall(function()
            pU.StartAutoTower:FireServer(false)
        end)
    elseif Tower == "Hardcore" then
        pcall(function()
            pU.StartHardcore:FireServer()
        end)
    elseif Tower == "Auto Hardcore" then
        pcall(function()
            pU.StartAutoTower:FireServer(true)
        end)
    elseif Tower == "Challenge" then
        pcall(function()
            pU.StartChallenge:FireServer()
        end)
    elseif Tower == "Boss Tower" then
        pcall(function()
            pU.StartBoss:FireServer()
        end)
    elseif Tower == "Cosmic Boss" then
        pcall(function()
            pU.StartBoss:FireServer("Cosmic")
        end)
    end
end
local function fn997(aV)
    if type(aV) ~= "table" then
        return false
    end
    for k, v in aV do
        if v == true then
            return true
        end
    end
    return false
end
pE = nil
pF = nil
pG = nil
pH = nil
pI = nil
pJ = nil
pK = nil
pM = nil
pN = nil
pO = nil
pP = nil
pQ = nil
pR = nil
pS = nil
pT = nil
pU = nil
pV = nil
pX = nil
pZ = nil
p2 = nil
p3 = nil
p6 = nil
LocalPlayer = nil
p8 = nil
p9 = nil
qa = nil
Workspace = nil
qc = nil
qe = nil
BattleSpeedMultiplier = nil
qj = nil
qk = nil
HideCardAnimations = nil
qm = nil
qn = nil
local Players, pC, pD, pL, pW, pY, p_, p0, p1, p4, p5, qd, RunService, qg, qi
Players, RunService, Workspace, LocalPlayer, p2 = nil, nil, nil, nil, nil
Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local qr_1
RunService = game:GetService("RunService")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
p2 = "OuroborosBrainrotCardBattles"
local qq = getgenv()[p2]
local qq_1, qq_2
if qq and qq.Unload then
    qq.Unload()
end
qm, qd, p6, pX, pU, pS = nil, nil, nil, nil, nil, nil
local qo = fn3(ReplicatedStorage)
local qu = require(fn3(qo:WaitForChild("WorldData")))
qm = require(fn3(qo:WaitForChild("CardData")))
local qv = require(fn3(qo:WaitForChild("ShopData")))
qd = require(fn3(qo:WaitForChild("CardCraftingData")))
local qw = require(fn3(qo:WaitForChild("ItemData")))
p6 = require(fn3(qo:WaitForChild("TowerData")))
local qt = require(fn3(qo:WaitForChild("RollingConfig")))
if ((qd and pX and (not pX and not pX) or fn3 and fn3 and (pX and not qd)) and (qd or fn3 or (pX or not qd) or (qd or fn3) and (false and pX)) or (qd or pX or (not pX or pX)) and (false or pX or (fn3 or pX)) and ((not qd or qd or (not qd or pX)) and (false and not pX and (false and not qd)))) and not ((qd and pX and (not pX and not pX) or fn3 and fn3 and (pX and not qd)) and (qd or fn3 or (pX or not qd) or (qd or fn3) and (false and pX)) or (qd or pX or (not pX or pX)) and (false or pX or (fn3 or pX)) and ((not qd or qd or (not qd or pX)) and (false and not pX and (false and not qd)))) then
    qo = require(pX(fn3:WaitForChild("TraitData")))
else
    pX = require(fn3(qo:WaitForChild("TraitData")))
end
pU = {
    Roll = fn3(qo:WaitForChild("RollEvent")),
    GetData = fn3(qo:WaitForChild("GetDataEvent")),
    SaveDeck = fn3(qo:WaitForChild("SavePlayerDeckEvent")),
    UpgradeStat = fn3(qo:WaitForChild("UpgradeStatFunction")),
    GetStats = fn3(qo:WaitForChild("GetPlayerStatsFunction")),
    ClaimChallenge = fn3(qo:WaitForChild("ClaimChallengeEvent")),
    GetChallenges = fn3(qo:WaitForChild("GetChallengesFunction")),
    BuyShop = fn3(qo:WaitForChild("PurchaseShopItemEvent")),
    GetShop = fn3(qo:WaitForChild("GetShopInventoryFunction")),
    Craft = fn3(qo:WaitForChild("CraftCardEvent")),
    UsePack = fn3(qo:WaitForChild("UseRollPackEvent")),
    AutoBattle = fn3(qo:WaitForChild("AutoBattleRequestEvent")),
    StartTower = fn3(qo:WaitForChild("StartTowerEvent")),
    StartAutoTower = fn3(qo:WaitForChild("StartAutoTowerEvent")),
    StartHardcore = fn3(qo:WaitForChild("StartHardcoreTowerEvent")),
    StartChallenge = fn3(qo:WaitForChild("StartChallengeTowerEvent")),
    StartBoss = fn3(qo:WaitForChild("StartBossTowerEvent")),
    GetTowerAttempts = fn3(qo:WaitForChild("GetAutoTowerAttemptsFunction"))
}
pS = qo:FindFirstChild("GetCurrentPotionEffects")
if pS then
    pS = fn3(pS)
end
pQ, qc, qr_1, p3, pZ, qq_1 = nil, nil, nil, nil, nil, nil
local qp_1 = 3
repeat
    local qs_1 = (qp_1 * 1 + 2) % 3 + 1
    if qs_1 <= 2 then
        if qs_1 <= 1 then
            local qs_2 = { "yfqv", "higabhvzp", "skjcv", "cskbqmawe", "ysmktemfv", "kkc", "dro", "alnel" }
            local Bo = qp_1
            local qx_1 = qs_2[Bo % 8 + 1]
            if qx_1:len() >= qx_1:gsub("(.)", "%1%1", Bo % 3 % 2 + 1):len() then
                pZ = { "ShinyChance", "Luck", "BossChance", "Speed" }
                p3 = { "Challenge", "Boss Tower", "Hardcore", "Tower", "Cosmic Boss", "Auto Tower", "Auto Hardcore" }
            else
                p3 = { "Luck", "Speed", "ShinyChance", "BossChance" }
                pZ = { "Tower", "Auto Tower", "Hardcore", "Auto Hardcore", "Challenge", "Boss Tower", "Cosmic Boss" }
            end
            qp_1 = (qp_1 + 7) % 12
        else
            local qs_3 = {
                "yxn",
                "jiaqft",
                "xahwcodoyese",
                "duaigc",
                "mvrurubaxdu",
                "qwwsv",
                "wzmsrhsoitb",
                "fwydvlayn",
                "yyhsamevxkad",
                "tsqqkw",
                "hvftmaxqb"
            }
            if qs_3[(qp_1 * 54 + 26) % 11 + 1] <= qs_3[(qp_1 * 54 + 26) % 11 + 1] then
                qq_1 = qt.Gameplay
            else
                qt = qq_1.Gameplay
            end
            qp_1 = (qp_1 + 1) % 12
        end
    else
        if (qp_1 * 1 + 1) * 5 % 4 == ((qp_1 * 1 + 1) * 5 + 0) % 4 then
            pQ = {}
            qc = "All Mobs"
            qr_1 = { TestWorld = true, WishingGrove = true }
        else
            qr_1 = {}
            pQ = fn436
            qc = { TestWorld = true, WishingGrove = true }
        end
        qp_1 = (qp_1 + 1) % 12
    end
until (qp_1 * 7 + 9) % 12 == 9
if qq_1 then
    local qo_1 = 2
    repeat
        local qp_2 = {
            "frxrl",
            "fugra",
            "fzcrmpoccvc",
            "jbqfrd",
            "kpdbrdifi",
            "lrko",
            "lgeymbm",
            "mcx",
            "siz",
            "tykbq",
            "uun",
            "xafbqh"
        }
        local A6 = qo_1
        local qs_4 = qp_2[A6 % 12 + 1]
        if qs_4:len() <= qs_4:reverse():rep(A6 % 3 + 2):len() then
            qq_1 = tonumber(qt.Gameplay.RollCooldown)
        else
            qt = tonumber(qq_1.Gameplay.RollCooldown)
        end
        qo_1 = (qo_1 + 1) % 8
    until (qo_1 * 5 + 5) % 8 == 4
end
local qo_2 = qq_1 or 0.05
pT, pR, pO, pK, pF, qn, qj, qq_2 = nil, nil, nil, nil, nil, nil, nil, nil
local qp_3 = 1
repeat
    local qs_5 = (qp_3 * 1 + 2) % 3 + 1
    if qs_5 <= 2 then
        if qs_5 <= 1 then
            local qs_6 = { "xdfuxvfx", "sqdmdt", "bkkbln", "qtn", "hlbgpxoyplr", "ltkaudxz", "rztfyg", "necghep" }
            local Bp = qp_3
            local qt_1 = qs_6[Bp % 8 + 1]
            if qt_1:len() <= qt_1:gsub("(.)", "%1%1", Bp % 3 % 2 + 1):len() then
                pT = qo_2
                pR = {}
                pO = {}
            else
                pO = pR
                pT = {}
                qo_2 = {}
            end
            qp_3 = (qp_3 + 4) % 12
        else
            local qs_7 = (vector.create((qp_3 * 5 + 4) % 11 + 1, (qp_3 * 9 + 5) % 13 + 1, (qp_3 * 7 + 2) % 17 + 1))
            local qt_2 = (vector.create((qp_3 * 1 + 1) % 11 + 1, (qp_3 * 2 + 11) % 13 + 1, (qp_3 * 6 + 16) % 17 + 1))
            local qx_2 = (vector.create((qp_3 * 7 + 3) % 11 + 1, (qp_3 * 5 + 2) % 13 + 1, (qp_3 * 4 + 15) % 17 + 1))
            local qy = (vector.create((qp_3 * 5 + 6) % 11 + 1, (qp_3 * 2 + 12) % 13 + 1, (qp_3 * 7 + 2) % 17 + 1))
            if vector.dot(vector.cross(qs_7, qt_2), (vector.cross(qx_2, qy))) == vector.dot(qs_7, qx_2) * vector.dot(qt_2, qy) - vector.dot(qs_7, qy) * vector.dot(qt_2, qx_2) + 5 then
                qj = {}
                qn = {}
                pF = {}
                pK = fn598
            else
                pK = {}
                pF = {}
                qn = {}
                qj = fn598
            end
            qp_3 = (qp_3 + 4) % 12
        end
    else
        local qs_8 = (vector.create((qp_3 * 2 + 7) % 11 + 1, (qp_3 * 1 + 7) % 13 + 1, (qp_3 * 12 + 9) % 17 + 1))
        local qt_3 = (vector.create((qp_3 * 5 + 9) % 11 + 1, (qp_3 * 9 + 11) % 13 + 1, (qp_3 * 3 + 2) % 17 + 1))
        local qx_3 = (vector.create((qp_3 * 1 + 1) % 5 + 1, (qp_3 * 2 + 7) % 7 + 1, (qp_3 * 3 + 5) % 9 + 1))
        if math.abs((vector.angle(qs_8, qt_3, qx_3))) - math.abs((vector.angle(qt_3, qs_8, qx_3))) == 2 then
            pO = fn832
        else
            qq_2 = fn832
        end
        qp_3 = (qp_3 + 10) % 12
    end
until (qp_3 * 1 + 10) % 12 == 5
local qs_9 = {}
for k, v in qu.Worlds do
    local qo_3 = type(v) == "table" and v.WorldID and not qr_1[v.WorldID]
    if qo_3 then
        local qo_4 = qq_2(v)
        if #qo_4 > 0 then
            local insert = table.insert
            local qt_4 = v.WorldName or v.WorldID
            insert(qs_9, { Label = qt_4, Id = v.WorldID, Folder = v.WorldFolder, Spawn = v.SpawnPoint, Npcs = qo_4 })
        end
    end
end
local qu_1 = 4
repeat
    local BA = bit32.rrotate(bit32.bxor(bit32.lrotate(qu_1, 16), string.byte(tostring(qu_1))), 10)
    if bit32.bxor(bit32.lrotate(bit32.bxor(BA, 3376308955), 16), 1658571070) ~= bit32.lrotate(BA, 16) then
        table.sort(qs_9, fn786)
    else
        table.sort(qs_9, fn786)
    end
    qu_1 = (qu_1 + 3) % 8
until (qu_1 * 5 + 4) % 8 == 7
for k, v in qs_9 do
    table.insert(pR, v.Label)
    pO[v.Label] = v
end
if type(qv.Items) == "table" then
    for k, v in qv.Items do
        local qo_5 = v.Name or v.ItemName
        if type(qo_5) == "string" then
            table.insert(pK, qo_5)
        end
    end
    table.sort(pK)
end
if type(qw.Items) == "table" then
    for k, v in qw.Items do
        local qo_6 = v.Type == "RollPack" and type(v.Name) == "string"
        if qo_6 then
            table.insert(pF, v.Name)
        end
    end
end
if type(qd.Recipes) == "table" then
    for k in qd.Recipes do
        table.insert(qn, tostring(k))
    end
    table.sort(qn)
end
pM, pJ, pE, HideCardAnimations, BattleSpeedMultiplier, qe, p9, p5, qg, pY, pN, p1, qk, pP, pG, qa, pV, pI, p8, pC, pW, qi, p0, pD, p_, pL, p4, pH = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pM = {}
getgenv()[p2] = pM
pM.Unloaded = false
pM.Flags = {
    AutoRoll = false,
    AutoEquipBest = false,
    AutoStats = false,
    AutoMissions = false,
    AutoShop = false,
    AutoCraft = false,
    AutoPacks = false,
    AutoBattle = false,
    AutoTowers = false
}
pM.Config = {
    Zone = pR[1],
    Mob = qc,
    Stats = { Luck = true },
    Shop = {},
    Craft = {},
    Packs = {},
    Tower = "Auto Tower"
}
pE = 0
qe = false
p9 = 1
p5 = fn863
qg = fn789
pY = fn997
pN = fn144
p1 = fn154
qk = fn627
pP = fn180
pG = fn334
qa = fn368
pV = fn18
pI = fn608
p8 = function(bG)
    local Character = LocalPlayer.Character
    local r4 = Character and Character:FindFirstChild("HumanoidRootPart")
    local r4_1 = not r4 or typeof(bG) ~= "Vector3"
    if r4_1 then
        return false
    end
    pcall(function()
        LocalPlayer:RequestStreamAroundAsync(bG)
    end)
    r4.CFrame = CFrame.new(bG + Vector3.new(0, 5, 0))
    return true
end
pC = fn558
pW = function(bW)
    local sd_1
    local sc_1
    if not bW then
        return nil
    end
    local sh = if bW:IsA("Model") then 1 else 0
    if sh == 1 then
        sc_1, sd_1 = pcall(function()
            return bW:GetPivot()
        end)
        if sc_1 then
            return sd_1.Position
        end
        local BasePart = bW:FindFirstChildWhichIsA("BasePart", true)
        return BasePart and BasePart.Position
    end
    local BasePart = bW:FindFirstChildWhichIsA("BasePart", true)
    return BasePart and BasePart.Position
end
if (not BattleSpeedMultiplier and pN or p8 and not BattleSpeedMultiplier or (pY or false) and (not BattleSpeedMultiplier or not pN) or (not pY and pN or (pY or pN) or pY and pN and (pY and false))) and ((BattleSpeedMultiplier and pN and (false and BattleSpeedMultiplier) or (BattleSpeedMultiplier or pY or p8 and not pY)) and ((not pY or not pY or (not pY or not pN)) and (not pY or pY or (p8 or BattleSpeedMultiplier)))) and not ((not BattleSpeedMultiplier and pN or p8 and not BattleSpeedMultiplier or (pY or false) and (not BattleSpeedMultiplier or not pN) or (not pY and pN or (pY or pN) or pY and pN and (pY and false))) and ((BattleSpeedMultiplier and pN and (false and BattleSpeedMultiplier) or (BattleSpeedMultiplier or pY or p8 and not pY)) and ((not pY or not pY or (not pY or not pN)) and (not pY or pY or (p8 or BattleSpeedMultiplier))))) then
    p_ = fn380
    qi = fn928
    p0 = fn416
    pD = fn642
else
    qi = fn380
    p0 = fn928
    pD = fn416
    p_ = fn642
end
pL = fn421
p4 = fn130
pM.MobsFor = fn821
pM.Catalog = fn229
pM.Roll = function()
    local s_, s0
    if pG() then
        return
    end
    s0, s_ = p0()
    pcall(function()
        pU.Roll:FireServer(s0, s_, true)
    end)
end
pM.EquipBest = function()
    local s2
    local s3 = p5(true)
    local s4 = not s3 or type(s3.Inventory) ~= "table"
    if s4 then
        return
    end
    local CardTraits = s3.CardTraits
    local CorruptedCardTraits = s3.CorruptedCardTraits
    local s6 = {}
    for k, v in s3.Inventory do
        local s3_1 = type(v) == "table" and v.Name and not v.Hidden and not v.Listed
        if s3_1 then
            local s3_2 = qm.GetByName and qm.GetByName(v.Name)
            local s7_1 = s3_2
            if s3_2 then
                s3_2 = tonumber(s7_1.Power)
            end
            local s8 = s3_2 or 0
            local s3_3 = s8 * pD(v.Variant)
            local ta_1 = {
                Name = v.Name,
                Variant = v.Variant or "Normal",
                Rarity = v.Rarity or s7_1 and s7_1.Rarity or "Common"
            }
            ta_1.Power = p_(s3_3, ta_1, CardTraits, CorruptedCardTraits)
            table.insert(s6, ta_1)
        end
    end
    table.sort(s6, function(dq, dr)
        return dq.Power > dr.Power
    end)
    local s3_4 = {}
    s2 = {}
    for k, v in s6 do
        if #s2 >= 4 then
            break
        end
        local s6_1 = s3_4[v.Name] or 0
        if s6_1 < pL(v, CardTraits, CorruptedCardTraits) then
            s3_4[v.Name] = s6_1 + 1
            table.insert(s2, { Name = v.Name, Variant = v.Variant })
        end
    end
    pcall(function()
        pU.SaveDeck:FireServer(s2, 1)
    end)
end
pM.UpgradeStats = function()
    local tr_1
    local tq_1, tq_3
    if not pY(pM.Config.Stats) then
        return
    end
    tq_1, tr_1 = pcall(function()
        return pU.GetStats:InvokeServer()
    end)
    local ts = not tq_1 or type(tr_1) ~= "table"
    local ts_1
    if ts then
        return
    end
    local tq_2 = tonumber(tr_1.StatPoints) or 0
    local tr_2 = tq_2
    if tr_2 <= 0 then
        return
    end
    for k, v in p3 do
        local tp
        local tA = v
        if tr_2 <= 0 then
            break
        elseif qg(pM.Config.Stats, tA) then
            tp = tr_2
            tq_3, ts_1 = pcall(function()
                return pU.UpgradeStat:InvokeServer(tA, tp)
            end)
            if tq_3 and ts_1 then
                tr_2 = 0
            end
        end
    end
end
pM.ClaimMissions = function()
    local tC_1
    local tB_1
    tB_1, tC_1 = pcall(function()
        return pU.GetChallenges:InvokeServer()
    end)
    local tD = not tB_1 or type(tC_1) ~= "table"
    if tD then
        return
    end
    for k, v in { "Daily", "Weekly", "Monthly" } do
        local tK = v
        local tB_2 = tC_1[tK]
        if type(tB_2) == "table" then
            for k, v in tB_2 do
                local tQ = v
                local tB_3 = type(tQ) == "table" and tQ.IsComplete and not tQ.IsClaimed and tonumber(tQ.Index)
                if tB_3 then
                    pcall(function()
                        pU.ClaimChallenge:FireServer(tK, tQ.Index)
                    end)
                    task.wait(0.35)
                end
            end
        end
    end
end
pM.BuyShop = function()
    local tT_1
    local tY = if not pY(pM.Config.Shop) then 1 else 0
    if tY == 1 then
        return
    end
    local tR = p5()
    local tR_2
    local tS = tR and tonumber(tR.Gold)
    local tS_1 = tS or 0
    tR_2, tT_1 = pcall(function()
        return pU.GetShop:InvokeServer()
    end)
    local tU = not tR_2 or type(tT_1) ~= "table"
    if tU then
        return
    end
    for k, v in tT_1 do
        local t3 = v
        local tR_3 = type(t3) == "table" and qg(pM.Config.Shop, t3.ItemName)
        if tR_3 then
            local tR_4 = tonumber(t3.Stock) or 0
            local tR_5 = tonumber(t3.Price) or 0
            if tR_4 > 0 and tS_1 >= tR_5 then
                pcall(function()
                    pU.BuyShop:FireServer(t3.ItemName)
                end)
                tS_1 -= tR_5
                task.wait(0.25)
            end
        end
    end
end
pM.CraftGear = function()
    if not pY(pM.Config.Craft) then
        return
    end
    local t4 = p5()
    if not t4 then
        return
    end
    for k, v in qd.Recipes do
        local ud = k
        local uo = if qg(pM.Config.Craft, ud) then 1 else 0
        if uo == 1 then
            local t5 = true
            if type(v.Materials) == "table" then
                for k, v in v.Materials do
                    local t6 = type(v) == "table"
                    if t6 then
                        local t7 = p4(t4, v.CardName, v.Variant)
                        local t8 = tonumber(v.Amount) or 1
                        t6 = t7 < t8
                    end
                    if t6 then
                        t5 = false
                        break
                    end
                end
            end
            if t5 then
                pcall(function()
                    pU.Craft:FireServer(ud)
                end)
                task.wait(0.35)
                local t5_1 = p5(true) or t4
                t4 = t5_1
            end
        end
    end
end
pM.UsePacks = function()
    local uq = not pY(pM.Config.Packs) or pG()
    if uq then
        return
    end
    local uq_1 = p5()
    local ur = not uq_1 or type(uq_1.ItemCounts) ~= "table"
    if ur then
        return
    end
    for k, v in pF do
        local uy = v
        if qg(pM.Config.Packs, uy) then
            local ur_1 = tonumber(uq_1.ItemCounts[uy]) or 0
            local up = ur_1
            if up > 0 then
                pcall(function()
                    pU.UsePack:FireServer(uy, up)
                end)
                task.wait(0.5)
            end
        end
    end
end
pM.StartSelectedBattle = function()
    local uz
    local uG = if pG() then 1 else 0
    if uG == 1 then
        return
    end
    local uA = pO[pM.Config.Zone]
    uz = p1(uA, pM.Config.Mob)
    if not uA or not uz then
        return
    end
    if pM.Config.Mob == qc then
        p9 += 1
        if p9 > #uA.Npcs then
            p9 = 1
        end
    end
    if typeof(uA.Spawn) == "Vector3" then
        p8(uA.Spawn)
        task.wait(0.35)
    end
    local uB_1 = pC(uA, uz)
    local uA_1 = pW(uB_1)
    if uA_1 then
        p8(uA_1)
        task.wait(0.2)
    end
    pcall(function()
        pU.AutoBattle:FireServer(uz.ModelName)
    end)
    if uB_1 then
        local BattlePrompt = uB_1:FindFirstChild("BattlePrompt", true)
        if BattlePrompt then
            qi(BattlePrompt)
        end
    end
end
pH = fn592
pM.StartSelectedTower = fn961
pM.Unload = fn524
task.spawn(worker)
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(worker6)
task.spawn(worker7)
task.spawn(worker8)
task.spawn(worker9)
local function qo_7()
    local Library
    local Unload
    local gj = "https://ouroboros-hub-rbx.web.app/"
    local gi = "https://rscripts.net/@Ouroboros"
    local TeleportService = game:GetService("TeleportService")
    local gh = "https://discord.gg/ehKVq7pf7v"
    local HttpService = game:GetService("HttpService")
    local UserInputService = game:GetService("UserInputService")
    local gg = "Brainrot Card Battles"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    local Toggles = Library.Toggles
    local Options = Library.Options
    Unload = pM.Unload
    pM.Unload = function()
        if not Library.Unloaded then
            Library:Unload()
        else
            Unload()
        end
    end
    Library:OnUnload(Unload)
    local function gu(gv, gw)
        if setclipboard then
            setclipboard(gv)
        elseif toclipboard then
            toclipboard(gv)
        end
        Library:Notify(gw)
    end
    local function onDiscord()
        gu(gh, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = gh, Copyable = true }, "|", gg },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Radius = 24, Transparency = 0.3 })
    local gC = {
        [1] = Window:AddTab("Info", "info"),
        [2] = Window:AddTab("Main", "gamepad-2"),
        [3] = Window:AddTab("Player", "person-standing"),
        [4] = Window:AddTab("Settings", "settings")
    }
    local gD = gC[2]:AddSubTab("Cards", "layers")
    local gE = gC[2]:AddSubTab("Battle", "swords")
    local function gF(gG)
        local DiscordGroup = gG:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    gF(gD)
    gF(gE)
    gF(gC[3])
    gF(gC[4])
    local gJ = pM.Catalog()
    local function gK()
        local RollGroup = gD:AddLeftGroupbox("Roll", "dices")
        RollGroup:AddToggle("AutoRoll", {
            Text = "Auto Roll",
            Default = false,
            Callback = function(gN)
                pM.Flags.AutoRoll = gN
            end
        })
        local DeckGroup = gD:AddLeftGroupbox("Deck", "layout-grid")
        DeckGroup:AddToggle("AutoEquipBest", {
            Text = "Auto Equip Best",
            Default = false,
            Callback = function(gR)
                pM.Flags.AutoEquipBest = gR
                if gR then
                    task.spawn(pM.EquipBest)
                end
            end
        })
        local StatsGroup = gD:AddLeftGroupbox("Stats", "chart-no-axes-column")
        StatsGroup:AddToggle("AutoStats", {
            Text = "Auto Stats",
            Default = false,
            Callback = function(gU)
                pM.Flags.AutoStats = gU
            end
        })
        StatsGroup:AddDropdown("StatTargets", {
            Text = "Stats",
            Values = gJ.Stats,
            Default = { "Luck" },
            Multi = true,
            Callback = function(gX)
                pM.Config.Stats = gX
            end
        })
        local MissionsGroup = gD:AddLeftGroupbox("Missions", "clipboard-check")
        MissionsGroup:AddToggle("AutoMissions", {
            Text = "Auto Claim Missions",
            Default = false,
            Callback = function(g_)
                pM.Flags.AutoMissions = g_
            end
        })
        local CoinShopGroup = gD:AddRightGroupbox("Coin Shop", "store")
        CoinShopGroup:AddToggle("AutoShop", {
            Text = "Auto Coin Shop",
            Default = false,
            Callback = function(g2)
                pM.Flags.AutoShop = g2
            end
        })
        CoinShopGroup:AddDropdown("ShopItems", {
            Text = "Items",
            Values = gJ.Shop,
            Default = {},
            Multi = true,
            SelectAllButtons = true,
            Expandable = true,
            Searchable = true,
            Callback = function(g4)
                pM.Config.Shop = g4
            end
        })
        local CraftGroup = gD:AddRightGroupbox("Craft", "hammer")
        CraftGroup:AddToggle("AutoCraft", {
            Text = "Auto Craft Gear",
            Default = false,
            Callback = function(g7)
                pM.Flags.AutoCraft = g7
            end
        })
        CraftGroup:AddDropdown("CraftRecipes", {
            Text = "Recipes",
            Values = gJ.Recipes,
            Default = {},
            Multi = true,
            SelectAllButtons = true,
            Searchable = true,
            Callback = function(g9)
                pM.Config.Craft = g9
            end
        })
        local PacksGroup = gD:AddRightGroupbox("Packs", "package")
        PacksGroup:AddToggle("AutoPacks", {
            Text = "Auto Use Packs",
            Default = false,
            Callback = function(hc)
                pM.Flags.AutoPacks = hc
            end
        })
        PacksGroup:AddDropdown("PackItems", {
            Text = "Backpack Packs",
            Values = gJ.Packs,
            Default = {},
            Multi = true,
            SelectAllButtons = true,
            Callback = function(he)
                pM.Config.Packs = he
            end
        })
    end
    local function hg()
        local BattleGroup = gE:AddLeftGroupbox("Battle", "swords")
        BattleGroup:AddToggle("AutoBattle", {
            Text = "Auto Battle",
            Default = false,
            Callback = function(hj)
                pM.Flags.AutoBattle = hj
                pI()
            end
        })
        BattleGroup:AddDropdown("BattleZone", {
            Text = "Zone",
            Values = gJ.Zones,
            Default = gJ.DefaultZone,
            Searchable = true,
            Callback = function(hq)
                pM.Config.Zone = hq
                local vu = pM.MobsFor(hq)
                if Options.BattleMob then
                    Options.BattleMob:SetValues(vu)
                    Options.BattleMob:SetValue(qc)
                end
                pM.Config.Mob = qc
                p9 = 1
            end
        })
        BattleGroup:AddDropdown("BattleMob", {
            Text = "Mob",
            Values = pM.MobsFor(gJ.DefaultZone),
            Default = qc,
            Searchable = true,
            Callback = function(hB)
                pM.Config.Mob = hB
                p9 = 1
            end
        })
        local TowersGroup = gE:AddRightGroupbox("Towers", "castle")
        TowersGroup:AddToggle("AutoTowers", {
            Text = "Auto Towers",
            Default = false,
            Callback = function(hF)
                pM.Flags.AutoTowers = hF
                pI()
            end
        })
        TowersGroup:AddDropdown("TowerMode", {
            Text = "Tower",
            Values = gJ.Towers,
            Default = "Auto Tower",
            Callback = function(hI)
                pM.Config.Tower = hI
            end
        })
    end
    gK()
    hg()
    local function hK()
        local wt
        local wr
        local wn
        local wl
        local wu
        local wq
        wl = nil
        wn = nil
        wq = nil
        wr = nil
        wt = nil
        wu = nil
        local wk, Label, wo, wp, Label3, Label2
        wn = function(hM, hN)
            return string.format('<font color="%s">%s</font>', hN, hM)
        end
        wp = function(hP, hQ, hR)
            return string.format("<b>%s</b> %s %s", hP, wn("-", "#5a6070"), wn(hQ, hR))
        end
        wt = "#e8a34d"
        local wx = "#8b93a3"
        wl = "#7fd47f"
        wq = "#e05a5a"
        local function wy()
            local vw = hookfunction ~= nil
            local vx = hookmetamethod ~= nil
            local vy = getrawmetatable ~= nil
            local vz = setrawmetatable ~= nil
            local vA = getgc ~= nil
            local vB = getgenv ~= nil
            local vC = getreg ~= nil
            local vD = getconnections ~= nil
            local vE = firesignal ~= nil
            local vF = getcallbackvalue ~= nil
            local vG = setclipboard ~= nil
            local vH = getcustomasset ~= nil
            local vI = getnamecallmethod ~= nil
            local vJ = isexecutorclosure ~= nil
            local vK = fireproximityprompt ~= nil
            local vL = firetouchinterest ~= nil
            local vM = WebSocket ~= nil
            local vN = readfile ~= nil
            local vO = writefile ~= nil
            local vQ = (request or http_request) ~= nil
            local vS = (debug and debug.getupvalues) ~= nil
            local vU = (debug and debug.setupvalue) ~= nil
            local vV = 0
            local vW = { vw, vx, vy, vz, vA, vB, vC, vD, vE, vF, vG, vH, vI, vJ, vK, vL, vM, vN, vO, vQ, vS, vU }
            for i, v in ipairs(vW) do
                if v then
                    vV += 1
                end
            end
            local vw_1 = vV / #vW
            if vw_1 >= 0.9 then
                return wn("Full Support", wl)
            elseif vw_1 >= 0.6 then
                return wn("Half Support", wt)
            else
                return wn("Low Support", wq)
            end
        end
        wr = "Unknown"
        pcall(function()
            local v7_1
            local v6_1
            if identifyexecutor then
                v7_1, v6_1 = identifyexecutor()
                local v8 = v7_1 ~= ""
                local v9 = type(v7_1) == "string" and v8
                if v9 then
                    local v8_1 = type(v6_1) == "string" and v6_1 ~= "" and v7_1 .. " " .. v6_1
                    wr = v8_1 or v7_1
                end
            end
        end)
        local wz = wy()
        wu = os.clock()
        wo = function()
            local we = math.floor(os.clock() - wu)
            if we < 60 then
                return we .. "s"
            elseif we < 3600 then
                return string.format("%dm %ds", we // 60, we % 60)
            else
                return string.format("%dh %dm", we // 3600, we % 3600 // 60)
            end
        end
        local UserGroup = gC[1]:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(wp("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, wl), true)
        UserGroup:AddLabel(wp("UserId", tostring(LocalPlayer.UserId), "#6ec1ff"), true)
        UserGroup:AddLabel(wp("Executor", wr .. "  " .. wz, wl), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(wp("Session", wo(), wt), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                gu(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                gu("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = gC[1]:AddRightGroupbox("Session", "signal")
        SessionGroup:AddDivider("Server")
        SessionGroup:AddLabel(wp("Game", gg, "#6ec1ff"), true)
        Label2 = SessionGroup:AddLabel(wp("Players", "0/0", wl), true)
        wk = tostring(game.JobId)
        local ww = #wk > 18 and string.sub(wk, 1, 18) .. "..."
        local wz_1 = ww or wk
        SessionGroup:AddLabel(wp("Job", wz_1, wx), true)
        Label = SessionGroup:AddLabel(wp("Ping", "0 ms", wt), true)
        SessionGroup:AddDivider()
        SessionGroup:AddButton({
            Text = "Rejoin Server",
            Func = function()
                TeleportService:Teleport(game.PlaceId, LocalPlayer)
            end
        })
        SessionGroup:AddButton({
            Text = "Copy Job ID",
            Func = function()
                gu(wk, "Copied Job ID")
            end
        })
        task.spawn(function()
            local wh_1
            local wg_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(wp("Session", wo(), wt))
                Label2:SetText(wp("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), wl))
                wg_1, wh_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local wg_2 = wg_1 and wh_1 .. " ms" or "n/a"
                Label:SetText(wp("Ping", wg_2, wt))
            end
        end)
        local SocialsGroup = gC[1]:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                gu(gi, "Copied Rscripts profile to clipboard")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                gu(gj, "Copied website link")
            end
        })
    end
    hK()
    local function i5()
        local i8
        local i6
        local i7
        local i9
        i6 = {}
        i8 = {}
        i9 = {}
        i7 = {}
        local function ja()
            for k, v in i6 do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(i6)
        end
        local function je()
            for k, v in i7 do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(i7)
        end
        local function ji()
            for k, v in i8 do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(i8)
        end
        local function jm()
            for k, v in i9 do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(i9)
        end
        local function jq(jr)
            if not jr:IsA("ProximityPrompt") then
                return
            end
            if i9[jr] == nil then
                i9[jr] = {
                    HoldDuration = jr.HoldDuration,
                    MaxActivationDistance = jr.MaxActivationDistance,
                    RequiresLineOfSight = jr.RequiresLineOfSight
                }
            end
            jr.HoldDuration = 0
            jr.MaxActivationDistance = 50
            jr.RequiresLineOfSight = false
        end
        local MovementGroup = gC[3]:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", {
            Text = "NoClip",
            Default = false,
            Callback = function(jv)
                if not jv then
                    ja()
                end
            end
        })
        MovementGroup:AddToggle("InstantProximityPrompt", {
            Text = "Instant ProximityPrompt",
            Default = false,
            Callback = function(jx)
                if jx then
                    for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                        jq(v)
                    end
                else
                    jm()
                end
            end
        })
        local FlyGroup = gC[3]:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", {
            Text = "Fly",
            Default = false,
            Callback = function(jG)
                if not jG then
                    ji()
                end
            end
        })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                je()
            end
        end)
        table.insert(pQ, Workspace.DescendantAdded:Connect(function(jN)
            if Toggles.InstantProximityPrompt.Value then
                jq(jN)
            end
        end))
        table.insert(pQ, RunService.Stepped:Connect(function()
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if i6[v] == nil then
                        i6[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(pQ, UserInputService.JumpRequest:Connect(function()
            local Character = LocalPlayer.Character
            local xD = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and xD then
                xD:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(pQ, RunService.RenderStepped:Connect(function(j4)
            local Character = LocalPlayer.Character
            local xJ = Character and Character:FindFirstChildOfClass("Humanoid")
            local xK = Character
            if xK then
                xK = Character:FindFirstChild("HumanoidRootPart")
            end
            local xI_1 = xK
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and xJ then
                if i7[xJ] == nil then
                    i7[xJ] = xJ.WalkSpeed
                end
                xJ.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and xI_1 and xJ and CurrentCamera then
                if i8[xJ] == nil then
                    i8[xJ] = xJ.PlatformStand
                end
                xJ.PlatformStand = true
                local xK_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        xK_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        xK_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        xK_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        xK_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        xK_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        xK_4 -= Vector3.new(0, 1, 0)
                    end
                end
                xI_1.AssemblyLinearVelocity = Vector3.zero
                if xK_4.Magnitude > 0 then
                    xI_1.CFrame = xI_1.CFrame + xK_4.Unit * Options.FlySpeed.Value * j4
                end
            end
        end))
        Library:OnUnload(function()
            ja()
            je()
            ji()
            jm()
        end)
    end
    i5()
    local function kj()
        local ko
        local k_
        local Lighting = game:GetService("Lighting")
        local VirtualUser = game:GetService("VirtualUser")
        ko = {}
        local CoreGui = game:GetService("CoreGui")
        local GuiService = game:GetService("GuiService")
        local kp
        local kr = 0
        local kq = false
        local ks = os.clock()
        local MenuGroup = gC[4]:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        local Label = MenuGroup:AddLabel("AFK triggers: 0")
        local function kx()
            local CurrentCamera = Workspace.CurrentCamera
            if not CurrentCamera then
                return
            end
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.zero, CurrentCamera.CFrame)
            kr += 1
            ks = os.clock()
            Label:SetText("AFK triggers: " .. kr)
        end
        local function onAntiGameplayPause(kG)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not kG)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not kG
                end
            end)
            if kG then
                pcall(function()
                    if sethiddenproperty then
                        sethiddenproperty(LocalPlayer, "GameplayPaused", false)
                    else
                        LocalPlayer.GameplayPaused = false
                    end
                end)
            end
        end
        local function kR()
            for k, v in ko do
                local x0 = k
                local x2 = v
                if x0.Parent then
                    pcall(function()
                        x0.Enabled = x2
                    end)
                end
            end
            table.clear(ko)
            if kp then
                pcall(function()
                    settings().Rendering.QualityLevel = kp.Quality
                end)
                Lighting.GlobalShadows = kp.Shadows
                Lighting.FogEnd = kp.Fog
                kp = nil
            end
        end
        k_ = { ParticleEmitter = true, Trail = true, Smoke = true, Fire = true, Sparkles = true, Beam = true }
        local function k0(k1)
            if k_[k1.ClassName] then
                if ko[k1] == nil then
                    ko[k1] = k1.Enabled
                end
                k1.Enabled = false
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true, Callback = onAntiGameplayPause })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(k4)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not k4)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(k9)
                if k9 then
                    if not kp then
                        kp = {
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
                    for i, descendant in Workspace:GetDescendants() do
                        pcall(k0, descendant)
                    end
                else
                    kR()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        local ScriptGroup = gC[4]:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        table.insert(pQ, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value then
                pcall(kx)
            end
        end))
        table.insert(pQ, Workspace.DescendantAdded:Connect(function(lp)
            if Toggles.FpsBoost.Value then
                k0(lp)
            end
        end))
        local function ls(lt)
            if kq or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            kq = true
            local yh_1 = pcall(function()
                if lt then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not yh_1 then
                kq = false
                if not lt then
                    ls(true)
                end
            end
        end
        table.insert(pQ, TeleportService.TeleportInitFailed:Connect(function(lG)
            if lG == LocalPlayer and kq then
                kq = false
                task.delay(3, function()
                    ls(true)
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local yq = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            local yq_1 = not yq
            local yr = Library.Unloaded
            local yv = if yr then 1 else 0
            local yt = 2809 * yv + 3647 * (1 - yv)
            local yu = 1203 * yv + 1265 * (1 - yv)
            if not ((yt * 2588 + yu * 3784 + yt * yu) % 16777213 == 15201071) then
                yr = yq_1
            end
            if yr then
                return
            end
            table.insert(pQ, yq.ChildAdded:Connect(function(lR)
                if lR.Name == "ErrorPrompt" then
                    ls(false)
                end
            end))
        end)
        task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    onAntiGameplayPause(true)
                end
                local yw = Toggles.AntiAfk.Value and os.clock() - ks >= 60
                if yw then
                    pcall(kx)
                end
                task.wait(1)
            end
        end)
        Library:OnUnload(function()
            onAntiGameplayPause(false)
            kR()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    kj()
    local function l3()
        local zm, zn, zo, zp
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(gC[4])
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/BrainrotCardBattles")
        local zq = SaveManager:BuildConfigSection(gC[4])
        zo = function(ma, mb)
            local yz_1 = (ma == "Toggle" and Toggles or Options)[mb]
            local yy_2 = type(yz_1) == "table" and yz_1.Type == ma
            return yy_2 and yz_1 or nil
        end
        zm = function(mk, ml)
            local Type = ml.Type
            if Type == "Toggle" then
                return { idx = mk, type = "Toggle", value = ml.Value == true }
            elseif Type == "Slider" then
                return { idx = mk, type = "Slider", value = tostring(ml.Value) }
            elseif Type == "Dropdown" then
                return { idx = mk, type = "Dropdown", multi = ml.Multi == true, value = ml.Value }
            elseif Type == "Input" then
                local yD = ml.Value or ""
                return { idx = mk, type = "Input", text = tostring(yD) }
            elseif Type == "ColorPicker" then
                return { idx = mk, type = "ColorPicker", value = ml.Value:ToHex(), transparency = ml.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = mk,
                    type = "KeyPicker",
                    mode = ml.Mode,
                    key = ml.Value,
                    modifiers = ml.Modifiers,
                    toggled = ml.Toggled
                }
            else
                return nil
            end
        end
        zp = function()
            local yG = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local yH = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if yH then
                        local yH_1 = zm(k, v)
                        if yH_1 then
                            yG[#yG + 1] = yH_1
                        end
                    end
                end
            end
            table.sort(yG, function(mv, mw)
                if mv.type ~= mw.type then
                    return mv.type < mw.type
                end
                return mv.idx < mw.idx
            end)
            return { objects = yG }
        end
        zn = function(my)
            local y_
            y_ = nil
            local y0 = type(my) ~= "table" or type(my.idx) ~= "string" or type(my.type) ~= "string" or SaveManager.Ignore[my.idx]
            if y0 then
                return false
            end
            y_ = zo(my.type, my.idx)
            if not y_ then
                return false
            end
            local y0_1 = pcall(function()
                if my.type == "Input" then
                    if type(my.text) ~= "string" then
                        return
                    end
                    y_:SetValue(my.text)
                elseif my.type == "ColorPicker" then
                    y_:SetValueRGB(Color3.fromHex(my.value), my.transparency)
                elseif my.type == "KeyPicker" then
                    y_:SetValue({ my.key, my.mode, my.modifiers })
                    if my.mode == "Toggle" and my.toggled ~= nil then
                        y_.Toggled = my.toggled
                        y_:Update()
                    end
                else
                    y_:SetValue(my.value)
                end
            end)
            return y0_1
        end
        zq:AddDivider()
        zq:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        zq:AddButton("Export Config to Clipboard", function()
            local y6_1
            local y5_1
            y5_1, y6_1 = pcall(HttpService.JSONEncode, HttpService, zp())
            if not y5_1 then
                Library:Notify("Failed to encode the config")
                return
            end
            local y5_2 = setclipboard or toclipboard
            local y5_3 = type(y5_2) ~= "function"
            local zb = if y5_3 then 1 else 0
            local y9 = 3668 * zb + 3000 * (1 - zb)
            local za = 3774 * zb + 3549 * (1 - zb)
            if not ((y9 * 1405 + za * 1454 + y9 * za) % 16777213 == 7706755) then
                y5_3 = not pcall(y5_2, y6_1)
            end
            if y5_3 then
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Config copied to clipboard", 6)
        end)
        zq:AddButton("Import Config from Clipboard Text", function()
            local ze_1
            local zc = Options.SaveManager_ImportSource.Value or ""
            local zc_1
            local zd = tostring(zc):match("^%s*(.-)%s*$")
            if zd == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            zc_1, ze_1 = pcall(HttpService.JSONDecode, HttpService, zd)
            local zd_1 = not zc_1 or type(ze_1) ~= "table" or type(ze_1.objects) ~= "table"
            if zd_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            local zc_2 = 0
            for i, v in ipairs(ze_1.objects) do
                if zn(v) then
                    zc_2 += 1
                end
            end
            if zc_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local ze_2 = zc_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(zc_2, ze_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        pM.Flags.AutoRoll = Toggles.AutoRoll.Value
        pM.Flags.AutoEquipBest = Toggles.AutoEquipBest.Value
        pM.Flags.AutoStats = Toggles.AutoStats.Value
        pM.Flags.AutoMissions = Toggles.AutoMissions.Value
        pM.Flags.AutoShop = Toggles.AutoShop.Value
        pM.Flags.AutoCraft = Toggles.AutoCraft.Value
        pM.Flags.AutoPacks = Toggles.AutoPacks.Value
        pM.Flags.AutoBattle = Toggles.AutoBattle.Value
        pM.Flags.AutoTowers = Toggles.AutoTowers.Value
        pM.Config.Zone = Options.BattleZone.Value
        pM.Config.Mob = Options.BattleMob.Value
        pM.Config.Stats = Options.StatTargets.Value
        pM.Config.Shop = Options.ShopItems.Value
        pM.Config.Craft = Options.CraftRecipes.Value
        pM.Config.Packs = Options.PackItems.Value
        pM.Config.Tower = Options.TowerMode.Value
        if Options.BattleMob and Options.BattleZone then
            Options.BattleMob:SetValues(pM.MobsFor(Options.BattleZone.Value))
            local zq_2 = pM.MobsFor(Options.BattleZone.Value)
            local Value = Options.BattleMob.Value
            local zs = false
            for k, v in zq_2 do
                if v == Value then
                    zs = true
                    break
                end
            end
            if not zs then
                Options.BattleMob:SetValue(qc)
                pM.Config.Mob = qc
            end
        end
        pI()
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    l3()
end
qo_7()
