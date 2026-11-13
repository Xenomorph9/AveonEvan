local Network
local connection2
local hE
local hl
local hH
local Toggles
local ho
local hr
local hN
local VirtualUser
local BladesModule
local hb
local EquipmentModule
local hx
local he
local hA
local hh
local hD
local Options
local hk
local LocalPlayer
local UpgradeModule
local BoostsModule
local hq
local ht
local hP
local ha
local Label
local hS
local hd
local hz
local hg
local hC
local hj
local hF
local hm
local connection
local hp
local AreaModule
local DailyRewardModule
local hO
local hv
local Library
local PetsModule
local PlaytimeRewardModule
local hB
local function fn48()
    local jJ = hE()
    if not jJ then
        return
    end
    local jK = {}
    local jL = jJ.Equipment
    local jX = if jL then 1 else 0
    local jV = 2818 * jX + 2530 * (1 - jX)
    local jW = 3844 * jX + 2797 * (1 - jX)
    if not ((jV * 2318 + jW * 2515 + jV * jW) % 16777213 == 10254963) then
        jL = jK
    end
    local jK_1 = jL
    local jM = jJ.EquippedEquipment or {}
    local jJ_1 = 0
    for k, v in pairs(jM) do
        if k ~= "Blade" then
            jJ_1 += #v
        end
    end
    local max = math.max
    local jN = BoostsModule:GetBoost(LocalPlayer, "Max Blade Equip") or 3
    local jO = max(0, jN - jJ_1)
    local jJ_2 = {}
    for k, v in pairs(jK_1) do
        local jM_2 = EquipmentModule.Equipment[v.Name]
        if jM_2 and jM_2.EquipmentType == "Blade" and not v.Locked then
            local jM_3 = v.Count or 1
            local kb = 1
            while kb <= jM_3 do
                table.insert(jJ_2, { GUID = k, Entry = v })
                kb += 1
            end
        end
    end
    table.sort(jJ_2, function(bL, bM)
        return hv(bM.Entry) < hv(bL.Entry)
    end)
    local jM_4 = {}
    local jN_2 = 0
    local jQ = jM.Blade or {}
    for i, v in ipairs(jQ) do
        local jL_3 = jK_1[v]
        if jL_3 and jL_3.Locked then
            jN_2 += 1
        else
            local jL_4 = jM_4[v] or 0
            jM_4[v] = jL_4 + 1
        end
    end
    local jL_5 = {}
    local jK_2 = math.min(math.max(0, jO - jN_2), #jJ_2)
    local kk = 1
    while kk <= jK_2 do
        local GUID = jJ_2[kk].GUID
        local jN_3 = jL_5[GUID] or 0
        jL_5[GUID] = jN_3 + 1
        kk += 1
    end
    for k, v in pairs(jM_4) do
        local jK_4 = v - (jL_5[k] or 0)
        local kt_1 = 1
        while kt_1 <= jK_4 do
            Network:FireServer("UnequipEquipment", k)
            kt_1 += 1
        end
    end
    for k, v in pairs(jL_5) do
        local jK_5 = v - (jM_4[k] or 0)
        local kt_2 = 1
        while kt_2 <= jK_5 do
            Network:FireServer("EquipEquipment", k)
            kt_2 += 1
        end
    end
end
local function autoZoneTravelLoop()
    local mD_1
    local mC_1, mC_4
    while not Library.Unloaded do
        task.wait(0.25)
        local Character = LocalPlayer.Character
        local my_1
        local mz = Character and Character:FindFirstChild("HumanoidRootPart")
        local mA = Character
        if mA then
            mA = Character:FindFirstChildOfClass("Humanoid")
        end
        local mz_1 = mA
        if mz and mz_1 then
            local mA_2 = nil
            if Toggles.AutoZoneTravel.Value then
                mA_2 = hx()
                if mA_2 then
                    mC_1, mD_1 = ho(mz.Position, mA_2)
                    if not mD_1 or mD_1 > 200 then
                        local mC_3 = hB(mA_2)
                        if mC_3 then
                            Character:PivotTo(mC_3.CFrame + Vector3.new(0, 4, 0))
                            task.wait(0.5)
                        end
                    end
                end
            end
            if Toggles.AutoWalkFruits.Value then
                mC_4, my_1 = ho(mz.Position, mA_2)
                if mC_4 then
                    local Value = Options.FruitDistance.Value
                    local mD_2 = mC_4.Position
                    if Value > 0 and my_1 > 0 then
                        mD_2 += (mz.Position - mC_4.Position).Unit * Value
                    end
                    mz_1:MoveTo(mD_2)
                end
            end
        end
    end
end
local function fn73(cO, cP)
    local lH_1
    local lG_1
    lH_1, lG_1 = nil, nil
    for i, child in workspace.Breakables:GetChildren() do
        local PrimaryPart = child.PrimaryPart
        local lJ = PrimaryPart
        if lJ then
            local lK_1 = not cP or child:GetAttribute("Area") == cP
            lJ = lK_1
        end
        if lJ then
            local Magnitude = (PrimaryPart.Position - cO).Magnitude
            if not lG_1 or Magnitude < lG_1 then
                lH_1, lG_1 = PrimaryPart, Magnitude
            end
        end
    end
    return lH_1, lG_1
end
local function autoSpinLoop()
    while not Library.Unloaded do
        task.wait(0.5)
        if Toggles.AutoSpin.Value then
            local mu = hE()
            if mu and (mu.Rolls or 0) > 0 then
                pcall(function()
                    Network:FireServer("OpenEggs", "Basic Egg", 10)
                end)
            end
        end
    end
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local mV = tick() - hz
            local mW = tick() - ht
            if mV >= 300 and mW >= 60 then
                pcall(ha)
            else
                if mV < 300 and mW >= 300 then
                    pcall(ha)
                end
            end
        end
    end
end
local function fn139()
    return Network:Call("GetClientPlayerData")
end
local function fn155(aM)
    local iQ = PetsModule[aM.Name]
    if not iQ or not iQ.Damage then
        return 0
    end
    local MutationsConfig = PetsModule.MutationsConfig
    local iS = aM.Mutation and MutationsConfig and MutationsConfig[aM.Mutation]
    return iQ.Damage * (1 + ((aM.Level or 1) - 1) / 50) * (iS and iS.PowerMult or 1)
end
local function fn181()
    local kO = hE()
    if not kO then
        return
    end
    local kP = {}
    local Upgrades = UpgradeModule.Upgrades
    local kR = {}
    local kS = kO.Upgrades
    local kW = if kS then 1 else 0
    local kU = 3987 * kW + 863 * (1 - kW)
    local kV = 966 * kW + 668 * (1 - kW)
    if not ((kU * 1890 + kV * 3705 + kU * kV) % 16777213 == 14965902) then
        kS = kR
    end
    hl(Upgrades, true, kS, kP)
    table.sort(kP, function(cf, cg)
        return cf.Cost < cg.Cost
    end)
    for i, v in ipairs(kP) do
        if hr(kO, v.Currency) >= v.Cost then
            Network:FireServer("BuyUpgrade", v.Name)
            return
        end
    end
end
local function autoBuyUpgradesLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AutoBuyUpgrades.Value then
            pcall(hD)
        end
        if Toggles.AutoBuyZones.Value then
            pcall(hF)
        end
    end
end
local function onInputChanged(ev)
    local UserInputType = ev.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        hz = tick()
    end
end
local function fn223()
    local iD_1
    local iC_1
    if identifyexecutor then
        iD_1, iC_1 = identifyexecutor()
        local iE = iD_1 ~= ""
        local iF = type(iD_1) == "string" and iE
        if iF then
            local iE_1 = type(iC_1) == "string" and iC_1 ~= "" and iD_1 .. " " .. iC_1
            hb = iE_1 or iD_1
        end
    end
end
local function autoEquipPetsLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AutoEquipPets.Value then
            pcall(he)
        end
        if Toggles.AutoEquipBlades.Value then
            pcall(hm)
        end
    end
end
local function fn269()
    local jc = hE()
    if not jc then
        return
    end
    local jd = {}
    local je = jc.EquippedPets
    local jl = if je then 1 else 0
    local jj = 1995 * jl + 1958 * (1 - jl)
    local jk = 2609 * jl + 133 * (1 - jl)
    if not ((jj * 2118 + jk * 763 + jj * jk) % 16777213 == 11421032) then
        je = jd
    end
    local jd_1 = je
    local je_1 = BoostsModule:GetBoost(LocalPlayer, "Max Pet Equip")
    local jf = {}
    local jh = jc.Pets or {}
    for k, v in pairs(jh) do
        if not v.Locked then
            table.insert(jf, { GUID = k, Entry = v })
        end
    end
    table.sort(jf, function(bh, bi)
        return hg(bi.Entry) < hg(bh.Entry)
    end)
    local jc_1 = {}
    local jg_1 = math.min(je_1, #jf)
    local ju = 1
    while ju <= jg_1 do
        local jv = ju
        jc_1[jf[jv].GUID] = true
        ju += 1
    end
    local je_2 = {}
    for i, v in ipairs(jd_1) do
        je_2[v] = true
    end
    for i, v in ipairs(jd_1) do
        if not jc_1[v] then
            Network:FireServer("UnequipPet", v)
        end
    end
    for k in pairs(jc_1) do
        if not je_2[k] then
            Network:FireServer("EquipPet", k)
        end
    end
end
local function fn290()
    local lt_1
    local ls_1
    local lr = hE()
    if not lr then
        return nil
    end
    lt_1, ls_1 = nil, nil
    local lv = lr.UnlockedAreas or {}
    for i, v in ipairs(lv) do
        local lr_1 = AreaModule.Areas[v]
        local lu_1 = lr_1
        if lu_1 then
            lu_1 = not ls_1 or (lr_1.Order or 0) > ls_1
        end
        if lu_1 then
            lt_1, ls_1 = v, lr_1.Order or 0
        end
    end
    return lt_1
end
local function onRscripts()
    hd(hh)
    Library:Notify("Copied Rscripts profile to clipboard")
end
local function autoRebirthLoop()
    while not Library.Unloaded do
        task.wait(5)
        if Toggles.AutoRebirth.Value then
            pcall(function()
                Network:FireServer("Rebirth")
            end)
        end
        if Toggles.AutoBuySummerShop.Value then
            pcall(hA)
        end
        if Toggles.AutoPlaytimeRewards.Value then
            pcall(hj)
        end
        if Toggles.AutoDailyRewards.Value then
            pcall(hC)
        end
    end
end
local function fn343(cL)
    local lE = workspace.Teleports:FindFirstChild(cL) or workspace.AreaDoors:FindFirstChild(cL)
    return lE
end
local function fn365(aJ, aK)
    return aJ[aK or "Coins"] or 0
end
local function fn368()
    local mk = hE()
    if not mk then
        return
    end
    for k, v in pairs(Options.SummerOffers.Value) do
        local ml = v and hN[k]
        local mm = ml
        if ml then
            ml = hr(mk, mm.Offer.Currency) >= mm.Offer.Cost
        end
        if ml then
            Network:FireServer("PurchaseMerchantOffer", "SummerShop", mm.Index)
        end
    end
end
local function fn380(C)
    if setclipboard then
        setclipboard(C)
    elseif toclipboard then
        toclipboard(C)
    end
end
local function fn383()
    connection:Disconnect()
    connection2:Disconnect()
end
local function onUnload()
    Library:Unload()
end
local function fn443(aV)
    local iZ = EquipmentModule.Equipment[aV.Name]
    if not iZ or iZ.EquipmentType ~= "Blade" or not iZ.Blades then
        return 0
    end
    local i__1 = 0
    for i, v in ipairs(iZ.Blades) do
        local i0_1 = BladesModule[v] and BladesModule[v].Damage or 0
        i__1 += i0_1
    end
    local MutationsConfig = PetsModule.MutationsConfig
    local i0_2 = aV.Mutation and MutationsConfig and MutationsConfig[aV.Mutation]
    local iZ_3 = i0_2
    if i0_2 then
        local i1 = iZ_3.BladePowerMult
        local jb = if i1 then 1 else 0
        local i9 = 789 * jb + 1942 * (1 - jb)
        local ja = 2419 * jb + 3325 * (1 - jb)
        if not ((i9 * 2116 + ja * 1676 + i9 * ja) % 16777213 == 7632359) then
            i1 = iZ_3.PowerMult
        end
        i0_2 = i1 or 1
    end
    return i__1 * (i0_2 or 1)
end
local function worker()
    local iL_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local iK = math.floor(os.clock() - hP)
        if iK < 60 then
            iL_1 = iK .. "s"
        elseif iK < 3600 then
            iL_1 = string.format("%dm %ds", iK // 60, iK % 60)
        else
            iL_1 = string.format("%dh %dm", iK // 3600, iK % 3600 // 60)
        end
        Label:SetText(hp("Session time", iL_1, hO))
    end
end
local function fn476()
    hd(hk)
    Library:Notify("Copied Discord invite to clipboard")
end
local function fn479(L, M, N)
    return string.format("<b>%s</b> %s %s", L, hH("-", "#5a6070"), hH(M, N))
end
local function fn493()
    local l7 = hE()
    if not l7 then
        return
    end
    local l8 = l7.DaysPlayed or 0
    for k, v in pairs(DailyRewardModule.Rewards) do
        local l8_1 = v.Days <= l8
        if l8_1 then
            local mc = l7.DailyRewardsClaimed or {}
            l8_1 = not table.find(mc, k)
        end
        if l8_1 then
            Network:FireServer("ClaimDailyReward", k)
        end
    end
end
local function onInputBegan()
    hz = tick()
end
local function fn514(b5, b6, b7, b8)
    for k, v in pairs(b5) do
        local kE = b7[k] and true or false
        if v.Cost then
            if b6 and not kE then
                local insert = table.insert
                local Cost = v.Cost
                local kG = v.Currency or "Coins"
                insert(b8, { Name = k, Cost = Cost, Currency = kG })
            end
            if type(v.Connected) == "table" then
                hl(v.Connected, kE, b7, b8)
            end
        elseif type(v.Connected) == "table" then
            hl(v.Connected, b6, b7, b8)
        end
    end
end
local function fn520(W)
    local DiscordGroup = W:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = hS })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = hS })
end
local function onCopyJoinScript_JobID()
    local an = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, hq)
    hd(an)
    Library:Notify("Copied join script to clipboard")
end
local function fn546()
    local k5 = hE()
    if not k5 then
        return
    end
    local k6 = {}
    for k, v in pairs(AreaModule.Areas) do
        local k7 = v.Cost
        if k7 then
            local la = k5.UnlockedAreas or {}
            k7 = not table.find(la, k)
        end
        if k7 then
            table.insert(k6, { Name = k, Area = v })
        end
    end
    table.sort(k6, function(ct, cu)
        return (ct.Area.Order or 0) < (cu.Area.Order or 0)
    end)
    for i, v in ipairs(k6) do
        if hr(k5, v.Area.Cost.Currency) >= v.Area.Cost.Amount then
            Network:FireServer("PurchaseArea", v.Name)
            return
        end
    end
end
local function fn564()
    local lS = hE()
    if not lS then
        return
    end
    local lT = lS.PlaytimeRewardsTimePlayed or 0
    for k, v in pairs(PlaytimeRewardModule.Rewards) do
        local lT_1 = lT >= v.Time
        if lT_1 then
            local lX = lS.PlaytimeRewardsClaimed or {}
            lT_1 = not table.find(lX, k)
        end
        if lT_1 then
            Network:FireServer("ClaimPlaytimeReward", k)
        end
    end
end
local function fn577(I, J)
    return string.format('<font color="%s">%s</font>', J, I)
end
local function fn591()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    ht = tick()
end
ha = nil
hb = nil
PetsModule = nil
hd = nil
he = nil
Network = nil
hg = nil
hh = nil
connection2 = nil
hj = nil
hk = nil
hl = nil
hm = nil
LocalPlayer = nil
ho = nil
hp = nil
hq = nil
hr = nil
DailyRewardModule = nil
ht = nil
VirtualUser = nil
hv = nil
Label = nil
hx = nil
PlaytimeRewardModule = nil
hz = nil
hA = nil
hB = nil
hC = nil
hD = nil
hE = nil
hF = nil
Options = nil
hH = nil
connection = nil
UpgradeModule = nil
Toggles = nil
AreaModule = nil
BoostsModule = nil
hN = nil
hO = nil
hP = nil
BladesModule = nil
Library = nil
hS = nil
EquipmentModule = nil
local hZ_1
Library, Toggles, Options, VirtualUser, LocalPlayer, Network, PetsModule, EquipmentModule, BladesModule, BoostsModule, AreaModule, UpgradeModule, PlaytimeRewardModule, DailyRewardModule, hk, hh, hO, hd, hS, hH, hp, hZ_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local hU = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
local Players = game:GetService("Players")
local GameInfoGroup
VirtualUser = game:GetService("VirtualUser")
local UserInputService = game:GetService("UserInputService")
LocalPlayer = Players.LocalPlayer
local Services = require(game.ReplicatedStorage.CoreModules.Services)
local hW_1
Network = Services:GetService("Network")
PetsModule = Services:GetService("PetsModule")
EquipmentModule = Services:GetService("EquipmentModule")
BladesModule = Services:GetService("BladesModule")
BoostsModule = Services:GetService("BoostsModule")
AreaModule = Services:GetService("AreaModule")
UpgradeModule = Services:GetService("UpgradeModule")
local MerchantModule = Services:GetService("MerchantModule")
PlaytimeRewardModule = Services:GetService("PlaytimeRewardModule")
DailyRewardModule = Services:GetService("DailyRewardModule")
local h0 = "RNG vs Fruit"
hk = "https://discord.gg/ehKVq7pf7v"
hh = "https://rscripts.net/@Ouroboros"
hd = fn380
hS = fn476
hH = fn577
hp = fn479
local h_ = "#7fd47f"
local h2 = "#6ec1ff"
hO = "#e8a34d"
local h1 = "#8b93a3"
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = hk, Copyable = true }, "|", h0 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local h5 = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Settings = Window:AddTab("Settings", "settings")
}
if (hH or hU or (Network or Network) or hd and h2 and false or (not hd and h2 or not Network and not Network) and (Network or hH or (Network or not hd))) and (hd and false and (false or not hH) and ((not Network or h2) and (false or hH)) or (Network or not hd) and (hH or false) and (not hH and Network or (Network or h2))) or not ((hH or hU or (Network or Network) or hd and h2 and false or (not hd and h2 or not Network and not Network) and (Network or hH or (Network or not hd))) and (hd and false and (false or not hH) and ((not Network or h2) and (false or hH)) or (Network or not hd) and (hH or false) and (not hH and Network or (Network or h2)))) then
    h5.Farm = h5.Main:AddSubTab("Farm", "swords")
    h5.Progression = h5.Main:AddSubTab("Progression", "trending-up")
    h5.Shop = h5.Main:AddSubTab("Shop", "shopping-cart")
    h5.Rewards = h5.Main:AddSubTab("Rewards", "gift")
    hZ_1 = fn520
else
    hZ_1.Farm = hZ_1.Main:AddSubTab("Farm", "swords")
    hZ_1.Progression = hZ_1.Main:AddSubTab("Progression", "trending-up")
    hZ_1.Shop = hZ_1.Main:AddSubTab("Shop", "shopping-cart")
    hZ_1.Rewards = hZ_1.Main:AddSubTab("Rewards", "gift")
    h5 = fn520
end
for k, v in h5 do
    if v ~= h5.Main then
        hZ_1(v)
    end
end
hb, GameInfoGroup, Label, hq, hW_1 = nil, nil, nil, nil, nil
local hV = 5
repeat
    local hY_1 = (hV * 2 + 1) % 3 + 1
    if hY_1 <= 2 then
        if hY_1 <= 1 then
            local hY_2 = (vector.create((hV * 4 + 3) % 11 + 1, (hV * 7 + 4) % 13 + 1, (hV * 8 + 12) % 17 + 1))
            local hZ_2 = (vector.create((hV * 2 + 5) % 11 + 1, (hV * 6 + 5) % 13 + 1, (hV * 1 + 7) % 17 + 1))
            local nB = vector.cross(hY_2, hZ_2)
            local nC = vector.dot(hY_2, hZ_2)
            if vector.dot(nB, nB) + nC * nC == vector.dot(hY_2, hY_2) * vector.dot(hZ_2, hZ_2) + 1 then
                hW_1 = tostring(game.JobId)
            else
                hq = tostring(game.JobId)
            end
            hV = (hV + 20) % 24
        else
            local hY_3 = {
                "fsij",
                "jbajtsw",
                "duiemtnjaif",
                "mcdk",
                "uirotjdqvy",
                "vjvvtuvanrwe",
                "obupcwggrrtc",
                "tavkjygkmzes",
                "ffb",
                "gffpdwzahod"
            }
            if hY_3[(hV * 12 + 4) % 10 + 1] <= hY_3[(hV * 12 + 4) % 10 + 1] then
                hW_1 = #hq > 18
            else
                hq = #hW_1 > 18
            end
            hV = (hV + 20) % 24
        end
    else
        local hY_4 = (vector.create((hV * 4 + 4) % 11 + 1, (hV * 2 + 9) % 13 + 1, (hV * 14 + 4) % 17 + 1))
        local hZ_3 = (vector.create((hV * 3 + 2) % 11 + 1, (hV * 6 + 2) % 13 + 1, (hV * 2 + 7) % 17 + 1))
        local nH = vector.dot(hY_4, hZ_3)
        if nH * nH >= vector.dot(hY_4, hY_4) * vector.dot(hZ_3, hZ_3) + 1 then
            pcall(fn223)
            hp = (nil):AddLeftGroupbox("Account", "circle-user")
            hp:AddLabel(hb("User", nil, h2), true)
            hp:AddLabel(hb("Status", "Keyless", h2), true)
            hp:AddLabel(hb("Executor", "Unknown", h2), true)
            hH = (nil):AddLeftGroupbox("Game Info", "gamepad-2")
            hH:AddLabel(h5(Label .. " [" .. tostring(game.PlaceId) .. "]", GameInfoGroup), true)
            hH:AddLabel(hb("Place ID", tostring(game.PlaceId), GameInfoGroup), true)
            hO = hH:AddLabel(hb("Session time", "0s", LocalPlayer), true)
        else
            hb = "Unknown"
            pcall(fn223)
            local AccountGroup = h5.Info:AddLeftGroupbox("Account", "circle-user")
            AccountGroup:AddLabel(hp("User", LocalPlayer.Name, h_), true)
            AccountGroup:AddLabel(hp("Status", "Keyless", h_), true)
            AccountGroup:AddLabel(hp("Executor", hb, h_), true)
            GameInfoGroup = h5.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            GameInfoGroup:AddLabel(hH(h0 .. " [" .. tostring(game.PlaceId) .. "]", h2), true)
            GameInfoGroup:AddLabel(hp("Place ID", tostring(game.PlaceId), h2), true)
            Label = GameInfoGroup:AddLabel(hp("Session time", "0s", hO), true)
        end
        hV = (hV + 14) % 24
    end
until (hV * 17 + 12) % 24 == 7
if hW_1 then
    local hU_2 = 1
    repeat
        local hV_1 = (vector.create((hU_2 * 3 + 2) % 11 + 1, (hU_2 * 10 + 2) % 13 + 1, (hU_2 * 7 + 2) % 17 + 1))
        local hY_5 = (vector.create((hU_2 * 6 + 8) % 11 + 1, (hU_2 * 10 + 1) % 13 + 1, (hU_2 * 14 + 11) % 17 + 1))
        local hZ_4 = (vector.create((hU_2 * 3 + 5) % 11 + 1, (hU_2 * 4 + 2) % 13 + 1, (hU_2 * 11 + 17) % 17 + 1))
        local h__1 = (vector.create((hU_2 * 1 + 4) % 5 + 1, (hU_2 * 5 + 4) % 7 + 1, (hU_2 * 5 + 5) % 9 + 1))
        if vector.dot(vector.cross(hV_1, (vector.cross(hY_5, hZ_4))), h__1) == vector.dot(hY_5 * vector.dot(hV_1, hZ_4) - hZ_4 * vector.dot(hV_1, hY_5), h__1) then
            hW_1 = string.sub(hq, 1, 18) .. "..."
        else
            hq = string.sub(hW_1, 1, 18) .. "..."
        end
        hU_2 = (hU_2 + 0) % 4
    until (hU_2 * 3 + 0) % 4 == 3
end
local hU_3 = hW_1 or hq
hP, hN, hE, hr, hg, hv, he, hm, hl, hD, hF, hx, hB, ho, hj, hC = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
GameInfoGroup:AddLabel(hp("Server", hU_3, h1), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
hP = os.clock()
task.spawn(worker)
local ScriptsGroup = h5.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(hH("Included in this hub", h1), true)
ScriptsGroup:AddLabel(hH(h0, h2), true)
local FeaturesGroup = h5.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(hH("Auto Roll", h2), true)
FeaturesGroup:AddLabel(hH("Fruit Farming", h2), true)
FeaturesGroup:AddLabel(hH("Zones and Travel", hO), true)
FeaturesGroup:AddLabel(hH("Upgrades and Rebirth", hO), true)
FeaturesGroup:AddLabel(hH("Equipping", h1), true)
FeaturesGroup:AddLabel(hH("Shop and Rewards", h1), true)
local SocialsGroup = h5.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = hS })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = h5.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = hS })
local FaqGroup = h5.Info:AddRightGroupbox("FAQ", "circle-help")
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
hE = fn139
hr = fn365
hg = fn155
hv = fn443
he = fn269
if (hP and hx or hP and not hP) and (not hE and hP or hx and hE) or hC and hx and (hC or not hP) and (not hx and hE and (not hx and not hx)) or not ((hP and hx or hP and not hP) and (not hE and hP or hx and hE) or hC and hx and (hC or not hP) and (not hx and hE and (not hx and not hx))) then
    hm = fn48
    hl = fn514
    hD = fn181
else
    hD = fn48
    hm = fn514
    hl = fn181
end
hF = fn546
hx = fn290
hB = fn343
ho = fn73
hj = fn564
hC = fn493
hN = {}
local ia = {}
for i, v in ipairs(MerchantModule.Merchants.SummerShop.Offers) do
    hN[v.Name] = { Index = i, Offer = v }
    table.insert(ia, v.Name)
end
hz, ht, connection, connection2, hA, ha = nil, nil, nil, nil, nil, nil
hA = fn368
local RollingGroup = h5.Farm:AddLeftGroupbox("Rolling", "dices")
RollingGroup:AddToggle("AutoSpin", { Text = "Auto Spin", Default = false })
local MovementGroup = h5.Farm:AddRightGroupbox("Movement", "footprints")
MovementGroup:AddToggle("AutoWalkFruits", { Text = "Auto Walk Towards Fruits", Default = false })
MovementGroup:AddSlider("FruitDistance", { Text = "Fruit Distance", Default = 5, Min = 0, Max = 40, Rounding = 0, Suffix = " studs" })
MovementGroup:AddToggle("AutoZoneTravel", { Text = "Auto Go To Best Owned Zone", Default = false })
local UpgradesGroup = h5.Progression:AddRightGroupbox("Upgrades", "trending-up")
UpgradesGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Affordable Upgrades", Default = false })
UpgradesGroup:AddToggle("AutoBuyZones", { Text = "Auto Buy Zones", Default = false })
UpgradesGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local EquippingGroup = h5.Progression:AddLeftGroupbox("Equipping", "swords")
EquippingGroup:AddToggle("AutoEquipPets", { Text = "Auto Equip Best Pets", Default = false })
EquippingGroup:AddToggle("AutoEquipBlades", { Text = "Auto Equip Best Blades", Default = false })
local SummerShopGroup = h5.Shop:AddRightGroupbox("Summer Shop", "sun")
SummerShopGroup:AddDropdown("SummerOffers", { Values = ia, Default = {}, Multi = true, Text = "Summer Shop Offers" })
SummerShopGroup:AddToggle("AutoBuySummerShop", { Text = "Auto Buy Summer Shop", Default = false })
local RewardsGroup = h5.Rewards:AddRightGroupbox("Rewards", "gift")
RewardsGroup:AddToggle("AutoPlaytimeRewards", { Text = "Auto Claim Playtime Rewards", Default = false })
RewardsGroup:AddToggle("AutoDailyRewards", { Text = "Auto Claim Daily Rewards", Default = false })
task.spawn(autoSpinLoop)
task.spawn(autoZoneTravelLoop)
task.spawn(autoBuyUpgradesLoop)
task.spawn(autoEquipPetsLoop)
task.spawn(autoRebirthLoop)
local h__2 = h5.Settings:AddLeftGroupbox("Menu", "settings")
h__2:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
hz = tick()
ht = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local mP = v
        pcall(function()
            mP:Disable()
        end)
    end
end)
ha = fn591
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
h__2:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(antiAfkLoop)
h__2:AddButton("Unload", onUnload)
Library:OnUnload(fn383)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
ThemeManager:ApplyToTab(h5.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/rng-vs-fruit")
SaveManager:BuildConfigSection(h5.Settings)
SaveManager:LoadAutoloadConfig()
