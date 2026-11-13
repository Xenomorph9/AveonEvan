local l3
local mL
local UpgradeShopConfig
local l6
local mO
local ms
local Options
local mv
local lR
local my
local Library
local CollectionService
local mf
local mB
local lX
local WeaponShopConfig
local lE
local ml
local TeleportConfig
local lH
local mo
local l2
local mr
local l5
local lN
local l8
local mu
local LocalPlayer
local Toggles
local me
local CombatConfig
local lD
local mG
local lG
local mn
local mJ
local l4
local RebirthConfig
local lJ
local PlotUpgradeState
local lM
local lP
local mw
local PlotConfig
local mz
local mg
local lC
local RebirthState
local mj
local mF
local l0
local BigNum
local lI
local function fn26()
    if l8() then
        mo()
    end
end
local function fn71()
    local Character = LocalPlayer.Character
    local nJ = Character and Character:FindFirstChildOfClass("Humanoid")
    return nJ
end
local function fn79(ef)
    local p1 = Options.UpgradeSelection and Options.UpgradeSelection.Value
    local p2 = ml(p1)
    if next(p2) == nil then
        return
    end
    local p1_1 = ef and ef.Plot
    if type(p1_1) ~= "table" then
        return
    end
    local p1_2 = ef and ef.Stats and ef.Stats.Coins
    for k, v in l2 do
        if p2[v] then
            local p1_3 = lX[v]
            local p5 = PlotUpgradeState.GetUpgradeState(p1_1, p1_3)
            local p6 = type(p5) == "table" and p5.isMaxed ~= true and lC(p1_2, p5.cost)
            if p6 then
                mn(UpgradeShopConfig.Mutations.BuyUpgrade, { upgradeId = p1_3 })
                return
            end
        end
    end
end
local function fn80(dF)
    local pq_1
    local pp_1
    pp_1, pq_1 = pcall(RebirthState.BuildPanelState, dF)
    local pr = not pp_1 or type(pq_1) ~= "table" or pq_1.canRebirth ~= true
    if pr then
        return
    end
    mn(RebirthConfig.Mutations.PerformRebirth, { skipRequirements = false, ignoreRequirements = false })
end
local function fn149()
    local qP = hookfunction ~= nil
    local qQ = hookmetamethod ~= nil
    local qR = getrawmetatable ~= nil
    local qS = setrawmetatable ~= nil
    local qT = getgc ~= nil
    local qU = getgenv ~= nil
    local qV = getreg ~= nil
    local qW = getconnections ~= nil
    local qX = firesignal ~= nil
    local qY = getcallbackvalue ~= nil
    local qZ = setclipboard ~= nil
    local q_ = getcustomasset ~= nil
    local q0 = getnamecallmethod ~= nil
    local q1 = isexecutorclosure ~= nil
    local q2 = fireproximityprompt ~= nil
    local q3 = firetouchinterest ~= nil
    local q4 = WebSocket ~= nil
    local q5 = readfile ~= nil
    local q6 = writefile ~= nil
    local q8 = (request or http_request) ~= nil
    local ra = (debug and debug.getupvalues) ~= nil
    local rc = (debug and debug.setupvalue) ~= nil
    local rd = 0
    local re = { qP, qQ, qR, qS, qT, qU, qV, qW, qX, qY, qZ, q_, q0, q1, q2, q3, q4, q5, q6, q8, ra, rc }
    for i, v in ipairs(re) do
        if v then
            rd += 1
        end
    end
    local qP_1 = rd / #re
    if qP_1 >= 0.9 then
        return lI("Full Support", me)
    elseif qP_1 >= 0.6 then
        return lI("Half Support", l0)
    else
        return lI("Low Support", lP)
    end
end
local function fn156(P, Q)
    local nl_1
    local nk_1
    nk_1, nl_1 = pcall(BigNum.compare, P.price, Q.price)
    if nk_1 then
        return nl_1 < 0
    end
    local nk_2 = tonumber(P.price) or 0
    local nl_2 = tonumber(Q.price) or 0
    return nk_2 < nl_2
end
local function fn188(af, ag)
    if setclipboard then
        setclipboard(af)
    elseif toclipboard then
        toclipboard(af)
    end
    Library:Notify(ag)
end
local function fn196(cI)
    local oU_1
    local WallCollision = cI:FindFirstChild("WallCollision", true)
    local oV = WallCollision and WallCollision:IsA("BasePart")
    if oV then
        oU_1 = WallCollision.Position
    else
        oU_1 = cI:GetPivot().Position
    end
    local oT_1 = Vector3.new(oU_1.X - 10, oU_1.Y + 3, oU_1.Z)
    return CFrame.lookAt(oT_1, Vector3.new(oU_1.X, oT_1.Y, oU_1.Z))
end
local function worker2()
    while not Library.Unloaded do
        local qN = lE("AutoCollectCharacters") or lE("AutoSell")
        if qN then
            pcall(mG)
        else
            if mv.autoCollectArmed or mv.autoSellArmed then
                l3()
            end
        end
        if lE("AutoEquipBest") then
            pcall(lN)
        end
        local qN_2 = lE("AutoCollectMoney") or lE("AutoRebirth") or lE("AutoBuyWeapons") or lE("AutoBestWeapon") or lE("AutoBuyUpgrades")
        if qN_2 then
            local qN_3 = lG()
            if qN_3 then
                if lE("AutoCollectMoney") then
                    pcall(mL, qN_3)
                end
                if lE("AutoRebirth") then
                    pcall(mu, qN_3)
                end
                if lE("AutoBuyWeapons") then
                    pcall(lH, qN_3)
                end
                if lE("AutoBestWeapon") then
                    pcall(mB, qN_3)
                end
                if lE("AutoBuyUpgrades") then
                    pcall(mz, qN_3)
                end
            end
        end
        if lE("AutoBestBiome") then
            pcall(lM)
        end
        task.wait(0.4)
    end
end
local function fn326()
    local qA = lE("AutoCollectCharacters") or lE("AutoSell")
    return qA
end
local function fn330(az)
    if Library.Unloaded then
        return false
    end
    local np = Toggles[az]
    return np ~= nil and np.Value == true
end
local function fn401()
    ms(mO, "Copied Discord invite to clipboard")
end
local function fn405()
    local nS_1
    local nR_1
    nR_1, nS_1 = pcall(function()
        return mr.RequestBootstrap:InvokeServer()
    end)
    local nT = not nR_1 or type(nS_1) ~= "table"
    if nT then
        return nil
    elseif type(nS_1.snapshot) == "table" then
        return nS_1.snapshot
    else
        return nS_1
    end
end
local function fn407(bL, bM)
    local n9 = Options[bL]
    local oa = n9 and n9.Value
    local n9_1 = ml(oa)
    local oa_1 = next(n9_1) == nil and bM
    if oa_1 then
        for k, v in mj do
            n9_1[v] = true
        end
    end
    return n9_1
end
local function fn420(ab)
    if ab then
        lD[#lD + 1] = ab
    end
    return ab
end
local function fn447(bW)
    local oi = lE("AutoCollectCharacters")
    local oj = lE("AutoSell")
    local ol = oj and lJ("SellRarities", false)[bW]
    if ol then
        return true
    end
    local oj_1 = oi and not lJ("CollectRarities", true)[bW]
    if oj_1 then
        return true
    end
    return false
end
local function fn452()
    pcall(function()
        mr.RequestAction:InvokeServer(TeleportConfig.Actions.EquipBest)
    end)
end
local function fn518()
    local oZ_1
    local oY_1
    local oX = mg()
    if not oX then
        oY_1, oZ_1 = pcall(function()
            return mr.RequestState:InvokeServer()
        end)
        local o_ = oY_1 and type(oZ_1) == "table"
        if o_ then
            local oY_2 = oZ_1.state
            local o3_1 = if oY_2 then 1 else 0
            local o1_1 = 1357 * o3_1 + 1800 * (1 - o3_1)
            local o2_1 = 1005 * o3_1 + 2228 * (1 - o3_1)
            if not ((o1_1 * 3898 + o2_1 * 2327 + o1_1 * o2_1) % 16777213 == 8992006) then
                oY_2 = oZ_1
            end
            o_ = oY_2
        end
        local oY_3 = o_
        local o3_2 = if oY_3 then 1 else 0
        local o1_2 = 2166 * o3_2 + 1790 * (1 - o3_2)
        local o2_2 = 3461 * o3_2 + 2450 * (1 - o3_2)
        if not ((o1_2 * 3524 + o2_2 * 1642 + o1_2 * o2_2) % 16777213 == 4035259) then
            oY_3 = nil
        end
        local oZ_2 = oY_3
        local oY_4 = type(oZ_2) == "table" and oZ_2.Completed == true
        if oY_4 then
            pcall(function()
                mr.RequestAction:InvokeServer(TeleportConfig.Actions.ResetBiome)
            end)
            pcall(function()
                mr.RequestAction:InvokeServer(TeleportConfig.Actions.TeleportToWalls)
            end)
        else
            pcall(function()
                mr.RequestAction:InvokeServer(TeleportConfig.Actions.TeleportToWalls)
            end)
        end
        return
    end
    local oY_5 = my()
    local oZ_3 = l6(oX)
    if not oY_5 or (oY_5.Position - oZ_3.Position).Magnitude > 16 then
        mf(oZ_3)
    end
    mw(true)
    pcall(function()
        mr.RequestPrimaryAttack:FireServer()
    end)
end
local function fn535(ap, aq, ar)
    return string.format("<b>%s</b> %s %s", ap, lI("-", "#5a6070"), lI(aq, ar))
end
local function fn549(am, an)
    return string.format('<font color="%s">%s</font>', an, am)
end
local function fn550()
    if not mJ() then
        mw(false)
    end
end
local function fn553(dp)
    local pg = dp and dp.Plot and dp.Plot.UnitSlots
    if type(pg) ~= "table" then
        return
    end
    for k, v in pg do
        local pg_1 = type(v) == "table" and type(v.UnitId) == "string" and v.UnitId ~= "" and l5(v.StoredCash)
        if pg_1 then
            mn(PlotConfig.Mutations.CollectUnitIncome, { slotId = v.SlotId })
        end
    end
end
local function fn583(aF)
    local nv = {}
    if type(aF) == "table" then
        for k, v in aF do
            local nw_1 = v == true and type(k) == "string"
            if nw_1 then
                nv[k] = true
            elseif type(v) == "string" then
                nv[v] = true
            end
        end
    else
        local nw_2 = aF ~= ""
        local nx = type(aF) == "string" and nw_2
        if nx then
            nv[aF] = true
        end
    end
    return nv
end
local function fn586(aT)
    local Character = LocalPlayer.Character
    if not Character then
        return
    end
    if Character.PrimaryPart then
        Character:PivotTo(aT)
    else
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
        if HumanoidRootPart then
            HumanoidRootPart.CFrame = aT
        end
    end
end
local function fn595()
    local UserId = LocalPlayer.UserId
    local oH = math.huge
    local oI
    for i, v in ipairs(CollectionService:GetTagged(CombatConfig.TargetTagName)) do
        local oJ = v.Parent and v:GetAttribute(CombatConfig.Attributes.TargetId) == "BiomeWall"
        if oJ then
            local attr2 = v:GetAttribute(CombatConfig.Attributes.OwnerUserId)
            local attr = v:GetAttribute(CombatConfig.Attributes.CurrentHealth)
            local oL = attr2 == UserId and type(attr) == "number" and attr > 0
            if oL then
                local oJ_2 = tonumber(v:GetAttribute("BiomeWallSequenceIndex")) or math.huge
                if oJ_2 < oH then
                    oH = oJ_2
                    oI = v
                end
            end
        end
    end
    return oI
end
local function worker()
    while not Library.Unloaded do
        if lE("AutoAttackWalls") then
            pcall(mF)
        elseif lE("AutoAttack") then
            mw(true)
            pcall(function()
                mr.RequestPrimaryAttack:FireServer()
            end)
        elseif mv.autoAttackArmed then
            mw(false)
        end
        task.wait(0.08)
    end
end
local function fn636(dN)
    local pt = dN
    local pu = {}
    if pt then
        pt = dN.Weapons
    end
    if pt then
        pt = dN.Weapons.OwnedWeaponIds
    end
    local pv = pt
    if type(pv) == "table" then
        for k, v in pv do
            pu[v] = true
        end
    end
    local pt_1 = dN and dN.Stats and dN.Stats.Coins
    for k, v in lR do
        local pt_2 = not pu[v.id]
        if pt_2 ~= false then
            pt_2 = lC(pt_1, v.price)
        end
        if pt_2 then
            mn(WeaponShopConfig.Actions.AcquireWeapon, { weaponId = v.id, mode = WeaponShopConfig.Modes.Normal })
            return
        end
    end
end
local function fn675()
    local qt = lE("AutoAttack") or lE("AutoAttackWalls")
    return qt
end
local function fn677(d2)
    local pM = d2 and d2.Weapons
    if type(pM) ~= "table" then
        return
    end
    local pM_1 = {}
    if type(pM.OwnedWeaponIds) == "table" then
        for k, v in pM.OwnedWeaponIds do
            pM_1[v] = true
        end
    end
    local EquippedWeaponId = pM.EquippedWeaponId
    local pN_1 = #lR
    local pZ = pN_1
    local pY = -1
    while true do
        if false and pZ <= 1 or true and pZ >= 1 then
            pN_1 = lR[pZ]
            if pM_1[pN_1.id] then
                break
            end
            pZ += pY
            continue
        end
        return
    end
    if pN_1.id ~= EquippedWeaponId then
        mn(WeaponShopConfig.Actions.SetEquippedWeapon, { weaponId = pN_1.id })
    end
    return
end
local function fn679()
    local Character = LocalPlayer.Character
    local nM = Character and Character:FindFirstChild("HumanoidRootPart")
    return nM
end
local function fn689()
    local qF = if not l8() then 1 else 0
    if qF == 1 then
        l3()
    end
end
local function fn729(eU)
    local DiscordGroup = eU:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = l4 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = l4 })
end
local function fn743()
    if l8() then
        mo()
    end
end
local function fn752()
    local qz = if not mJ() then 1 else 0
    if qz == 1 then
        mw(false)
    end
end
local function fn811()
    local qJ = if not l8() then 1 else 0
    if qJ == 1 then
        l3()
    end
end
WeaponShopConfig = nil
lC = nil
lD = nil
lE = nil
lG = nil
lH = nil
lI = nil
lJ = nil
UpgradeShopConfig = nil
lM = nil
lN = nil
Options = nil
lP = nil
LocalPlayer = nil
lR = nil
PlotConfig = nil
Toggles = nil
CollectionService = nil
lX = nil
RebirthState = nil
l0 = nil
l2 = nil
l3 = nil
l4 = nil
l5 = nil
l6 = nil
PlotUpgradeState = nil
l8 = nil
Library = nil
me = nil
mf = nil
mg = nil
mj = nil
ml = nil
BigNum = nil
local Players, lF, lK, lV, lW, SaveManager, l_, Workspace, l9, CoreGui, BiomeCatalog, TeleportService, GuiService, mi, mk
mn = nil
mo = nil
mr = nil
ms = nil
mu = nil
mv = nil
mw = nil
my = nil
mz = nil
CombatConfig = nil
mB = nil
mF = nil
mG = nil
TeleportConfig = nil
mJ = nil
mL = nil
RebirthConfig = nil
mO = nil
local mp, HttpService, VirtualUser, UserInputService, mC, mD, RunService, mI, mK, mN
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, TeleportService, CoreGui, Workspace, CollectionService, LocalPlayer, lF, mO, mK, mC, BigNum, BiomeCatalog, PlotUpgradeState, RebirthState, PlotConfig, UpgradeShopConfig, WeaponShopConfig, RebirthConfig, TeleportConfig, CombatConfig, mr, mj = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
TeleportService = game:GetService("TeleportService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
CollectionService = game:GetService("CollectionService")
LocalPlayer = Players.LocalPlayer
lF = "+1 SMASH Walls For Anime Characters!"
mO = "https://discord.gg/ehKVq7pf7v"
mK = "https://rscripts.net/@Ouroboros"
mC = "https://ouroboros-hub-rbx.web.app/"
local Shared = ReplicatedStorage:WaitForChild("Shared")
local Window
local Network = ReplicatedStorage:WaitForChild("Network")
BigNum = require(Shared.core.util.BigNum)
local WeaponCatalog = require(Shared.features.Combat.Config.WeaponCatalog)
BiomeCatalog = require(Shared.features.Biomes.Config.BiomeCatalog)
PlotUpgradeState = require(Shared.features.Plot.State.PlotUpgradeState)
RebirthState = require(Shared.features.Rebirth.Util.RebirthState)
PlotConfig = require(Shared.features.Plot.Config.PlotConfig)
UpgradeShopConfig = require(Shared.features.Plot.Config.UpgradeShopConfig)
WeaponShopConfig = require(Shared.features.Combat.Config.WeaponShopConfig)
RebirthConfig = require(Shared.features.Rebirth.Config.RebirthConfig)
TeleportConfig = require(Shared.features.Teleport.Config.TeleportConfig)
CombatConfig = require(Shared.features.Combat.Config.CombatConfig)
local RarityConfig = require(Shared.features.Plot.Config.RarityConfig)
mr = {
    RequestPrimaryAttack = Network.Combat.RequestPrimaryAttack,
    SetAutoAttackEnabled = Network.Combat.SetAutoAttackEnabled,
    DispatchMutation = Network.Data.DispatchMutation,
    RequestBootstrap = Network.Data.RequestBootstrap,
    RequestCollectUnit = Network.Biomes.RequestCollectUnit,
    RequestState = Network.Biomes.RequestState,
    RequestBiomeMenu = Network.Biomes.RequestBiomeMenu,
    EquipBiome = Network.Biomes.EquipBiome,
    RequestAction = Network.Teleport.RequestAction,
    SetFeature = Network.AutoFarm.SetFeature,
    SetAutoSellRarity = Network.AutoFarm.SetAutoSellRarity
}
mj = {}
for k, v in RarityConfig.Order do
    mj[#mj + 1] = v
end
l2, lX, lR = nil, nil, nil
local mP_1 = 7
repeat
    local ue = bit32.rrotate(bit32.bxor(bit32.lrotate(mP_1, 28), string.byte(tostring(l2))), 22)
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(ue, 488757417), 1221386550), (bit32.bxor(bit32.band(ue, 3806209878), 1451822573))), 1221386550), 1451822573) == ue then
        l2 = { "Damage", "Attack Speed", "Offline Earnings" }
        lX = { Damage = "Damage", ["Attack Speed"] = "AttackSpeed", ["Offline Earnings"] = "OfflineEarnings" }
        lR = {}
    else
        lR = { "Offline Earnings", "Damage", "Attack Speed" }
        l2 = { Damage = "Damage", ["Offline Earnings"] = "OfflineEarnings", ["Attack Speed"] = "AttackSpeed" }
        lX = {}
    end
    mP_1 = (mP_1 + 7) % 8
until (mP_1 * 1 + 4) % 8 == 2
for k, v in WeaponCatalog.List() do
    if WeaponCatalog.SupportsShopMode(v.id, "Normal") then
        lR[#lR + 1] = { id = v.id, name = v.displayName, price = WeaponCatalog.GetShopPrice(v.id, "Normal") }
    end
end
Library, SaveManager, Toggles, Options, lD, mv, me, l9, l0, lV, lP, Window, mp, mN, ms, l4, lI, mD, lE, ml, lK, my, mf, lG, mn, lC, l5, mw, l_, mk, lJ, lW, mo, l3, mg, l6, mF, mG, mL, lN, mu, lH, mB, mz, lM = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(lR, fn156)
local mP_2 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
lD = {}
mN = fn420
mv = {
    autoAttackArmed = false,
    autoCollectArmed = false,
    autoSellArmed = false,
    syncedSellRarities = {}
}
ms = fn188
l4 = fn401
lI = fn549
mD = fn535
me = "#7fd47f"
l9 = "#6ec1ff"
l0 = "#e8a34d"
lV = "#8b93a3"
lP = "#e05a5a"
lE = fn330
ml = fn583
lK = fn71
my = fn679
mf = fn586
lG = fn405
mn = function(a3, a4)
    return pcall(function()
        return mr.DispatchMutation:InvokeServer({ name = a3, payload = a4 })
    end)
end
lC = function(ba, bb)
    local nZ_1
    local nY_1
    nY_1, nZ_1 = pcall(function()
        return BigNum.compare(ba, bb) >= 0
    end)
    if nY_1 then
        return nZ_1
    end
    local nY_2 = tonumber(ba) or 0
    local nZ_2 = tonumber(bb) or 0
    return nY_2 >= nZ_2
end
if (lN and not SaveManager or false and not lN or (lN and SaveManager or lN and mg)) and not (lN and not SaveManager or false and not lN or (lN and SaveManager or lN and mg)) then
    mw = function(bj)
        local n1_2
        local n0_3
        n0_3, n1_2 = pcall(function()
            return BigNum.compare(bj, 0) > 0
        end)
        if n0_3 then
            return n1_2
        end
        local n0_4 = tonumber(bj) or 0
        return n0_4 > 0
    end
    l5 = function(bq)
        if mv.autoAttackArmed == bq then
            return
        end
        mv.autoAttackArmed = bq
        pcall(function()
            mr.SetAutoAttackEnabled:FireServer(bq)
        end)
    end
else
    l5 = function(bj)
        local n1_1
        local n0_1
        n0_1, n1_1 = pcall(function()
            return BigNum.compare(bj, 0) > 0
        end)
        if n0_1 then
            return n1_1
        end
        local n0_2 = tonumber(bj) or 0
        return n0_2 > 0
    end
    mw = function(bq)
        if mv.autoAttackArmed == bq then
            return
        end
        mv.autoAttackArmed = bq
        pcall(function()
            mr.SetAutoAttackEnabled:FireServer(bq)
        end)
    end
end
l_ = function(bw)
    if mv.autoCollectArmed == bw then
        return
    end
    mv.autoCollectArmed = bw
    pcall(function()
        LocalPlayer:SetAttribute("AutoFarmAutoCollectEnabled", bw)
    end)
    pcall(function()
        mr.SetFeature:InvokeServer("AutoCollect", bw)
    end)
end
mk = function(bF)
    if mv.autoSellArmed == bF then
        return
    end
    mv.autoSellArmed = bF
    pcall(function()
        mr.SetFeature:InvokeServer("AutoSell", bF)
    end)
end
lJ = fn407
lW = fn447
mo = function()
    local oo = lE("AutoCollectCharacters")
    local op = false
    for k, v in mj do
        local oy = v
        local on = lW(oy)
        if on then
            op = true
        end
        if mv.syncedSellRarities[oy] ~= on then
            mv.syncedSellRarities[oy] = on
            pcall(function()
                mr.SetAutoSellRarity:InvokeServer(oy, on)
            end)
        end
    end
    l_(oo)
    mk(op)
end
if mg and false or false and mg or (not l4 or false) and (mg and not mg) or not (mg and false or false and mg or (not l4 or false) and (mg and not mg)) then
    l3 = function()
        l_(false)
        mk(false)
        for k, v in mj do
            local oF = v
            if mv.syncedSellRarities[oF] ~= false then
                mv.syncedSellRarities[oF] = false
                pcall(function()
                    mr.SetAutoSellRarity:InvokeServer(oF, false)
                end)
            end
        end
    end
    mg = fn595
    l6 = fn196
    mF = fn518
    mG = function()
        local o5_3
        local o4_3
        mo()
        o4_3, o5_3 = pcall(function()
            return mr.RequestState:InvokeServer()
        end)
        local o6 = o4_3
        local o4_4 = 6
        if o6 then
            o6 = type(o5_3) == "table"
        end
        if o6 then
            local o6_3 = o5_3.state
            local pb = if o6_3 then 1 else 0
            local o9 = 372 * pb + 987 * (1 - pb)
            local pa = 1627 * pb + 3699 * (1 - pb)
            if not ((o9 * 1966 + pa * 1863 + o9 * pa) % 16777213 == 4367697) then
                o6_3 = o5_3
            end
            local o5_4 = o6_3
            if type(o5_4) == "table" then
                local max = math.max
                local o7 = tonumber(o5_4.PartsPerRun) or o4_4
                o4_4 = max(1, o7)
            end
        end
        for i = 1, o4_4 do
            local pf = i
            pcall(function()
                mr.RequestCollectUnit:InvokeServer(pf, true)
            end)
        end
    end
else
    mg = function()
        l_(false)
        mk(false)
        for k, v in mj do
            local oF = v
            if mv.syncedSellRarities[oF] ~= false then
                mv.syncedSellRarities[oF] = false
                pcall(function()
                    mr.SetAutoSellRarity:InvokeServer(oF, false)
                end)
            end
        end
    end
    mF = fn595
    mG = fn196
    l3 = fn518
    l6 = function()
        local o5_1
        local o4_1
        mo()
        o4_1, o5_1 = pcall(function()
            return mr.RequestState:InvokeServer()
        end)
        local o6 = o4_1
        local o4_2 = 6
        if o6 then
            o6 = type(o5_1) == "table"
        end
        if o6 then
            local o6_1 = o5_1.state
            local pb = if o6_1 then 1 else 0
            local o9 = 372 * pb + 987 * (1 - pb)
            local pa = 1627 * pb + 3699 * (1 - pb)
            if not ((o9 * 1966 + pa * 1863 + o9 * pa) % 16777213 == 4367697) then
                o6_1 = o5_1
            end
            local o5_2 = o6_1
            if type(o5_2) == "table" then
                local max = math.max
                local o7 = tonumber(o5_2.PartsPerRun) or o4_2
                o4_2 = max(1, o7)
            end
        end
        for i = 1, o4_2 do
            local pf = i
            pcall(function()
                mr.RequestCollectUnit:InvokeServer(pf, true)
            end)
        end
    end
end
mL = fn553
lN = fn452
mu = fn80
lH = fn636
mB = fn677
mz = fn79
lM = function()
    local qg_1
    local qf_1
    qf_1, qg_1 = pcall(function()
        return mr.RequestBiomeMenu:InvokeServer()
    end)
    local qh = not qf_1 or type(qg_1) ~= "table" or type(qg_1.locations) ~= "table"
    if qh then
        return
    end
    local qf_2 = -1
    local qe
    for k, v in qg_1.locations do
        local qh_1 = type(v) == "table" and v.owned == true
        if qh_1 then
            local qh_2 = BiomeCatalog.Get(v.id)
            local qi = qh_2 and tonumber(qh_2.order)
            local qh_3 = qi or 0
            if qh_3 > qf_2 then
                qf_2 = qh_3
                qe = v
            end
        end
    end
    if qe and qe.equipped ~= true and qe.id ~= qg_1.equippedLocationId then
        pcall(function()
            mr.EquipBiome:InvokeServer(qe.id)
        end)
    end
end
if (mP_2 or not lD) and (lD and false) or (not lD and false or (not lD or false)) or not ((mP_2 or not lD) and (lD and false) or (not lD and false or (not lD or false))) then
    Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = mO, Copyable = true }, "|", lF },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
else
    lF = mO:CreateWindow({
        NotifySide = "Right",
        Font = Enum.Font.BuilderSans,
        Icon = 78539693571783,
        ShowCustomCursor = false,
        TabSwipeFrom = "bottom",
        CornerRadius = 0,
        Title = "Ouroboros",
        Animations = { TabSwitch = true },
        Footer = { Window, { Text = Library, Copyable = true }, "|" }
    })
end
mp = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "swords"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in mp do
    if k ~= "Info" then
        fn729(v)
    end
end
mI, mJ, l8, mi = nil, nil, nil, nil
local FarmGroup = mp.Main:AddLeftGroupbox("Farm", "swords")
FarmGroup:AddToggle("AutoAttack", { Text = "Auto Attack", Default = false })
FarmGroup:AddToggle("AutoAttackWalls", { Text = "Auto Attack Walls", Default = false })
FarmGroup:AddToggle("AutoCollectCharacters", { Text = "Auto Collect Characters", Default = false })
FarmGroup:AddDropdown("CollectRarities", {
    Text = "Collect Rarities",
    Values = mj,
    Default = mj,
    Multi = true,
    SelectAllButtons = true,
    Expandable = true
})
FarmGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
FarmGroup:AddDropdown("SellRarities", {
    Text = "Sell Rarities",
    Values = mj,
    Default = {},
    Multi = true,
    AllowNull = true,
    SelectAllButtons = true,
    Expandable = true
})
FarmGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
FarmGroup:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
local ProgressGroup = mp.Main:AddRightGroupbox("Progress", "trending-up")
ProgressGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
ProgressGroup:AddToggle("AutoBuyWeapons", { Text = "Auto Buy Weapons", Default = false })
ProgressGroup:AddToggle("AutoBestWeapon", { Text = "Auto Best Weapon", Default = false })
ProgressGroup:AddDivider("Upgrades")
ProgressGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
ProgressGroup:AddDropdown("UpgradeSelection", { Text = "Upgrades", Values = l2, Default = l2, Multi = true })
ProgressGroup:AddToggle("AutoBestBiome", { Text = "Auto Best Biome", Default = false })
mJ = fn675
Toggles.AutoAttack:OnChanged(fn550)
Toggles.AutoAttackWalls:OnChanged(fn752)
l8 = fn326
Toggles.AutoCollectCharacters:OnChanged(fn689)
Toggles.AutoSell:OnChanged(fn811)
Options.CollectRarities:OnChanged(fn26)
Options.SellRarities:OnChanged(fn743)
task.spawn(worker)
task.spawn(worker2)
mi = fn149
local function mU_1()
    local rJ
    local rG
    rG = nil
    rJ = nil
    local rE, rF, Label, Label2, Label3
    rG = "Unknown"
    pcall(function()
        local rn_1
        local rm_1
        if identifyexecutor then
            rn_1, rm_1 = identifyexecutor()
            local ro = rn_1 ~= ""
            local rp = type(rn_1) == "string" and ro
            if rp then
                local ro_1 = type(rm_1) == "string" and rm_1 ~= "" and rn_1 .. " " .. rm_1
                rG = ro_1 or rn_1
            end
        end
    end)
    local rL = mi()
    rJ = os.clock()
    rF = function()
        local rx = math.floor(os.clock() - rJ)
        if rx < 60 then
            return rx .. "s"
        elseif rx < 3600 then
            return string.format("%dm %ds", rx // 60, rx % 60)
        else
            return string.format("%dh %dm", rx // 3600, rx % 3600 // 60)
        end
    end
    local UserGroup = mp.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(mD("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, me), true)
    UserGroup:AddLabel(mD("UserId", tostring(LocalPlayer.UserId), l9), true)
    UserGroup:AddLabel(mD("Executor", rG .. "  " .. rL, me), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(mD("Session", rF(), l0), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            ms(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            ms("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = mp.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(mD("Game", lF, l9), true)
    Label2 = SessionGroup:AddLabel(mD("Players", "0/0", me), true)
    rE = tostring(game.JobId)
    local rM_1 = #rE > 18 and string.sub(rE, 1, 18) .. "..."
    local rM_2 = rM_1 or rE
    SessionGroup:AddLabel(mD("Job", rM_2, lV), true)
    Label = SessionGroup:AddLabel(mD("Ping", "0 ms", l0), true)
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
            ms(rE, "Copied Job ID")
        end
    })
    task.spawn(function()
        local rA_1
        local rz_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(mD("Session", rF(), l0))
            Label2:SetText(mD("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), me))
            rz_1, rA_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local rz_2 = rz_1 and rA_1 .. " ms" or "n/a"
            Label:SetText(mD("Ping", rz_2, l0))
        end
    end)
    local SocialsGroup = mp.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = l4 })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            if setclipboard then
                setclipboard(mK)
            elseif toclipboard then
                toclipboard(mK)
            end
            Library:Notify("Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            ms(mC, "Copied website link")
        end
    })
end
mU_1()
local function mV()
    local MovementGroup = mp.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = mp.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    mN(RunService.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    local rP_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if rP_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end))
    mN(UserInputService.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local rX_1 = lK()
            if rX_1 then
                rX_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end))
    local CurrentCamera = Workspace.CurrentCamera
    mN(RunService.RenderStepped:Connect(function(he)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local rZ_1 = lK()
            if rZ_1 then
                rZ_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local rZ_3 = my()
            local r_ = lK()
            if rZ_3 and r_ then
                r_.PlatformStand = true
                local r__1 = Vector3.zero
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    r__1 = r__1 + CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    r__1 = r__1 - CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    r__1 = r__1 - CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    r__1 = r__1 + CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    r__1 = r__1 + Vector3.new(0, 1, 0)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    r__1 = r__1 - Vector3.new(0, 1, 0)
                end
                rZ_3.Velocity = Vector3.zero
                if r__1.Magnitude > 0 then
                    rZ_3.CFrame = rZ_3.CFrame + r__1.Unit * Options.FlySpeed.Value * he
                end
            end
        end
    end))
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local r5 = lK()
            if r5 then
                r5.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local r7 = lK()
            if r7 then
                r7.WalkSpeed = 16
            end
        end
    end)
    local function hA(hB)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not hB)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not hB
            end
        end)
        if not hB then
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
        hA(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                hA(true)
            end
        end
    end)
    local function hS(hT)
        if not hT:IsA("ProximityPrompt") then
            return
        end
        hT.HoldDuration = 0
        hT.MaxActivationDistance = 50
        hT.RequiresLineOfSight = false
    end
    local connection
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in ipairs(Workspace:GetDescendants()) do
                pcall(hS, descendant)
            end
            connection = Workspace.DescendantAdded:Connect(function(h0)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(hS, h0)
                end
            end)
            mN(connection)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    Library:OnUnload(function()
        hA(false)
        if connection then
            connection:Disconnect()
        end
    end)
end
mV()
local function mQ_2()
    local MenuGroup = mp.Settings:AddLeftGroupbox("Menu")
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local ib = 0
    local ic = tick()
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = MenuGroup:AddLabel("AFK triggers: 0")
    local function ig()
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        ib = ib + 1
        ic = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. ib)
        end)
    end
    local connection = LocalPlayer.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(ig)
        end
    end)
    mN(connection)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local sx = Toggles.AntiAfk.Value and tick() - ic >= 60
            if sx then
                pcall(ig)
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
mQ_2()
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("MyScriptHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(mp.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/Plus1SmashWallsForAnimeCharacters")
mI = SaveManager:BuildConfigSection(mp.Settings)
SaveManager:LoadAutoloadConfig()
local function mW()
    local function iG(iH, iI)
        local sA = iH == "Toggle" and Toggles
        local sF = if sA then 1 else 0
        local sD = 2896 * sF + 2015 * (1 - sF)
        local sE = 770 * sF + 475 * (1 - sF)
        if not ((sD * 2204 + sE * 611 + sD * sE) % 16777213 == 9083174) then
            sA = Options
        end
        local sA_1 = sA[iI]
        local sz_2 = type(sA_1) == "table" and sA_1.Type == iH
        return sz_2 and sA_1 or nil
    end
    local function iQ(iR, iS)
        local Type = iS.Type
        if Type == "Toggle" then
            return { idx = iR, type = "Toggle", value = iS.Value == true }
        elseif Type == "Slider" then
            return { idx = iR, type = "Slider", value = tostring(iS.Value) }
        elseif Type == "Dropdown" then
            return { idx = iR, type = "Dropdown", multi = iS.Multi == true, value = iS.Value }
        elseif Type == "Input" then
            local sH = iS.Value
            local sL = if sH then 1 else 0
            local sJ = 250 * sL + 890 * (1 - sL)
            local sK = 3493 * sL + 841 * (1 - sL)
            if not ((sJ * 1125 + sK * 3718 + sJ * sK) % 16777213 == 14141474) then
                sH = ""
            end
            return { idx = iR, type = "Input", text = tostring(sH) }
        elseif Type == "ColorPicker" then
            return { idx = iR, type = "ColorPicker", value = iS.Value:ToHex(), transparency = iS.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = iR,
                type = "KeyPicker",
                mode = iS.Mode,
                key = iS.Value,
                modifiers = iS.Modifiers,
                toggled = iS.Toggled
            }
        else
            return nil
        end
    end
    local function iU()
        local sN = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local sO = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if sO then
                    local sO_1 = iQ(k, v)
                    if sO_1 then
                        sN[#sN + 1] = sO_1
                    end
                end
            end
        end
        table.sort(sN, function(i3, i4)
            if i3.type ~= i4.type then
                return i3.type < i4.type
            end
            return i3.idx < i4.idx
        end)
        return { objects = sN }
    end
    local function i5(i6)
        local s6
        s6 = nil
        local s7 = type(i6) ~= "table" or type(i6.idx) ~= "string" or type(i6.type) ~= "string" or SaveManager.Ignore[i6.idx]
        if s7 then
            return false
        end
        s6 = iG(i6.type, i6.idx)
        if not s6 then
            return false
        end
        local s7_1 = pcall(function()
            if i6.type == "Input" then
                if type(i6.text) ~= "string" then
                    return
                end
                s6:SetValue(i6.text)
            elseif i6.type == "ColorPicker" then
                s6:SetValueRGB(Color3.fromHex(i6.value), i6.transparency)
            elseif i6.type == "KeyPicker" then
                s6:SetValue({ i6.key, i6.mode, i6.modifiers })
                if i6.mode == "Toggle" and i6.toggled ~= nil then
                    s6.Toggled = i6.toggled
                    s6:Update()
                end
            else
                s6:SetValue(i6.value)
            end
        end)
        return s7_1
    end
    mI:AddDivider()
    mI:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    mI:AddButton("Export Config to Clipboard", function()
        local td_1
        local tc_1
        tc_1, td_1 = pcall(HttpService.JSONEncode, HttpService, iU())
        if not tc_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local tc_2 = setclipboard or toclipboard
        local tc_3 = type(tc_2) ~= "function" or not pcall(tc_2, td_1)
        if tc_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    mI:AddButton("Import Config from Clipboard Text", function()
        local ti_1
        local tg = Options.SaveManager_ImportSource.Value or ""
        local tg_1
        local th = tostring(tg):match("^%s*(.-)%s*$")
        if th == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        tg_1, ti_1 = pcall(HttpService.JSONDecode, HttpService, th)
        local th_1 = not tg_1 or type(ti_1) ~= "table" or type(ti_1.objects) ~= "table"
        if th_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local tg_2 = 0
        for i, v in ipairs(ti_1.objects) do
            if i5(v) then
                tg_2 += 1
            end
        end
        if tg_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local ti_2 = tg_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(tg_2, ti_2), 6)
    end)
end
mW()
Library:OnUnload(function()
    mw(false)
    l3()
    for k, v in lD do
        local tz = v
        pcall(function()
            tz:Disconnect()
        end)
    end
    table.clear(lD)
end)
