local ReplicatedStorage
local A0
local z3
local A6
local AL
local As
local A9
local AO
local Ap
local AR
local Ac
local LocalPlayer
local zU
local Af
local AB
local SmartCardFilterDropdown
local MutationFilterDropdown
local ThemeManager
local A2
local RarityFilterDropdown
local Library
local AK
local z5
local AN
local AH
local z8
local SaveManager
local AT
local Ae
local AW
local zT
local Ah
local onJoinDiscordForKeylessScripts
local zZ
local A4
local Aq
local A7
local z7
local Ba
local AS
local Ad
local Az
local PackFilterDropdown
local AC
local AY
local Aj
local Options
local Ag
local Am
local function fn50()
    local UpgradesGroup = Ac.Boosts:AddLeftGroupbox("Upgrades")
    UpgradesGroup:AddToggle("AutoUpgrade", {
        Text = "Auto Upgrade Selected",
        Default = false,
        Callback = function(ux)
            AC[14] = ux
        end
    })
    UpgradesGroup:AddDropdown("UpgradeFilter", {
        Text = "Upgrades To Buy",
        Values = AT,
        Multi = true,
        AllowNull = true,
        Default = {},
        Callback = function(uB)
            local Ql = uB or {}
            AC[57] = Ql
        end
    })
    local RewardsGroup = Ac.Boosts:AddRightGroupbox("Rewards")
    RewardsGroup:AddToggle("AutoPlaytime", {
        Text = "Auto Claim Playtime Rewards",
        Default = false,
        Callback = function(uE)
            AC[15] = uE
        end
    })
    local PotionsGroup = Ac.Boosts:AddLeftGroupbox("Potions")
    PotionsGroup:AddToggle("AutoPotion", {
        Text = "Auto Use Potions",
        Default = false,
        Callback = function(uH)
            AC[24] = uH
        end
    })
    PotionsGroup:AddDropdown("PotionFilter", {
        Text = "Potions To Use",
        Values = A0,
        Multi = true,
        AllowNull = true,
        Default = {},
        Searchable = true,
        Callback = function(uK)
            local Qo = uK or {}
            AC[52] = Qo
        end
    })
    PotionsGroup:AddSlider("PotionDelay", {
        Text = "Potion Check Delay (s)",
        Min = 5,
        Max = 120,
        Default = 15,
        Rounding = 0,
        Callback = function(uM)
            AC[49] = uM
        end
    })
end
local function fn129()
    local BossRaidGroup = Ac.Raid:AddLeftGroupbox("Boss Raid")
    BossRaidGroup:AddToggle("AutoRaid", {
        Text = "Auto Raid",
        Default = false,
        Callback = function(v8)
            AC[16] = v8
        end
    })
    BossRaidGroup:AddDropdown("RaidDifficulty", {
        Text = "Difficulty",
        Values = AL,
        Default = 1,
        Callback = function(wc)
            AC[40] = wc
        end
    })
    BossRaidGroup:AddToggle("AutoRaidEquip", {
        Text = "Equip Best Team",
        Default = true,
        Callback = function(we)
            AC[17] = we
        end
    })
    BossRaidGroup:AddToggle("AutoRaidPickupBest", {
        Text = "Pick Up Best Cards Before Raid",
        Default = false,
        Callback = function(wg)
            AC[18] = wg
            AK[2] = false
        end
    })
    BossRaidGroup:AddToggle("RaidPriority", {
        Text = "Raid Priority Over Tower",
        Default = true,
        Callback = function(wk)
            AC[19] = wk
        end
    })
    BossRaidGroup:AddSlider("RaidDelay", {
        Text = "Retry Delay (s)",
        Min = 1,
        Max = 30,
        Default = 5,
        Rounding = 1,
        Callback = function(wm)
            AC[39] = wm
        end
    })
end
local function fn325()
    local TraitsGroup = Ac.Rolls:AddLeftGroupbox("Traits")
    TraitsGroup:AddToggle("AutoTraitRoll", {
        Text = "Auto Roll Traits",
        Default = false,
        Callback = function(vh)
            AC[21] = vh
        end
    })
    TraitsGroup:AddDropdown("TraitTargets", {
        Text = "Stop On Trait",
        Values = A9,
        Multi = true,
        AllowNull = true,
        Default = {},
        Searchable = true,
        Callback = function(vl)
            local QB = vl or {}
            AC[59] = QB
        end
    })
    local RanksGroup = Ac.Rolls:AddRightGroupbox("Ranks")
    RanksGroup:AddToggle("AutoRankRoll", {
        Text = "Auto Roll Ranks",
        Default = false,
        Callback = function(vo)
            AC[22] = vo
        end
    })
    RanksGroup:AddDropdown("GradeTargets", {
        Text = "Stop On Grade",
        Values = A2,
        Multi = true,
        AllowNull = true,
        Default = {},
        Searchable = true,
        Callback = function(vr)
            local QD = {}
            local QE = vr
            local QI = if QE then 1 else 0
            local QG = 1315 * QI + 131 * (1 - QI)
            local QH = 109 * QI + 3103 * (1 - QI)
            if not ((QG * 3913 + QH * 2597 + QG * QH) % 16777213 == 5572003) then
                QE = QD
            end
            AC[60] = QE
        end
    })
    RanksGroup:AddDropdown("RankCurrency", {
        Text = "Roll With",
        Values = Az,
        Default = 1,
        Callback = function(vu)
            AC[45] = vu
        end
    })
    local SmartRollGroup = Ac.Rolls:AddRightGroupbox("Smart Roll")
    SmartRollGroup:AddToggle("AutoSmartRoll", {
        Text = "Auto Roll Cards To Targets",
        Default = false,
        Callback = function(vx)
            AC[23] = vx
        end
    })
    SmartCardFilterDropdown = SmartRollGroup:AddDropdown("SmartCardFilter", {
        Text = "Cards To Roll",
        Values = Aj(),
        Multi = true,
        AllowNull = true,
        Default = {},
        Searchable = true,
        Callback = function(vB)
            local QK = vB or {}
            AC[53] = QK
        end
    })
    SmartRollGroup:AddButton({ Text = "Refresh Cards", Func = AO })
    local TimingGroup = Ac.Rolls:AddLeftGroupbox("Timing")
    TimingGroup:AddSlider("RollDelay", {
        Text = "Roll Delay (s)",
        Min = 0,
        Max = 5,
        Default = 0,
        Rounding = 2,
        Callback = function(vF)
            AC[46] = vF
        end
    })
end
local function fn400()
    local SessionGroup = Ac.Settings:AddLeftGroupbox("Session")
    SessionGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    SessionGroup:AddToggle("AutoReconnect", {
        Text = "Auto Reconnect",
        Default = false,
        Callback = function(wr)
            AC[28] = wr
        end
    })
    SessionGroup:AddButton({
        Text = "Unload",
        Func = function()
            Library:Unload()
        end
    })
    local MenuGroup = Ac.Settings:AddRightGroupbox("Menu")
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    MenuGroup:AddSlider("UIScale", {
        Text = "UI Scale",
        Min = 50,
        Max = 150,
        Default = 100,
        Rounding = 0,
        Suffix = "%",
        Callback = function(wy)
            Library:SetDPIScale(wy)
        end
    })
    Library:OnUnload(function()
        AK[4]:Disconnect()
        AK[5]:Disconnect()
    end)
    ThemeManager:SetLibrary(Library)
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
    ThemeManager:SetFolder("OuroborosHub")
    SaveManager:SetFolder("OuroborosHub/AnimeCardFarm")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    SaveManager:BuildConfigSection(Ac.Settings)
    ThemeManager:ApplyToTab(Ac.Settings)
    ThemeManager:LoadDefault()
    SaveManager:LoadAutoloadConfig()
end
local function fn455()
    local te = Aj()
    AS(SmartCardFilterDropdown, te)
    AnimeCardFarmNotify("Cards Refreshed", ("Found %d card names in your inventory."):format(#te))
end
local function fn626()
    local CardSlotsGroup = Ac.Boxes:AddLeftGroupbox("Card Slots")
    CardSlotsGroup:AddToggle("AutoPlace", {
        Text = "Auto Place Packs",
        Default = false,
        Callback = function(t_)
            AC[10] = t_
        end
    })
    A6 = CardSlotsGroup:AddDropdown("PlaceFilter", {
        Text = "Packs To Place",
        Values = AR,
        Multi = true,
        AllowNull = true,
        Default = {},
        Searchable = true,
        Callback = function(t4)
            local Qc = t4 or {}
            AC[56] = Qc
        end
    })
    CardSlotsGroup:AddToggle("AutoOpen", {
        Text = "Auto Open Ready Cards",
        Default = false,
        Callback = function(t6)
            AC[8] = t6
        end
    })
    CardSlotsGroup:AddToggle("AutoPickup", {
        Text = "Auto Pick Up Ready Cards",
        Default = false,
        Callback = function(t8)
            AC[9] = t8
        end
    })
    local CardBoxesGroup = Ac.Boxes:AddRightGroupbox("Card Boxes")
    CardBoxesGroup:AddToggle("AutoCarry", {
        Text = "Auto Carry Filled Box",
        Default = false,
        Callback = function(ub)
            AC[7] = ub
        end
    })
    CardBoxesGroup:AddToggle("AutoSell", {
        Text = "Auto Sell Card Boxes",
        Default = false,
        Callback = function(ud)
            AC[11] = ud
        end
    })
    CardBoxesGroup:AddSlider("BoxDelay", {
        Text = "Box Delay (s)",
        Min = 0.1,
        Max = 30,
        Default = 0.5,
        Rounding = 1,
        Callback = function(uf)
            AC[33] = uf
        end
    })
    CardBoxesGroup:AddSlider("SellDelay", {
        Text = "Sell Delay (s)",
        Min = 0,
        Max = 10,
        Default = 0.2,
        Rounding = 1,
        Callback = function(uh)
            AC[35] = uh
        end
    })
    CardSlotsGroup:AddSlider("PickupDelay", {
        Text = "Pick Up Delay (s)",
        Min = 0,
        Max = 10,
        Default = 0.2,
        Rounding = 1,
        Callback = function(uj)
            AC[34] = uj
        end
    })
    local SellCardsGroup = Ac.Boxes:AddRightGroupbox("Sell Cards")
    SellCardsGroup:AddToggle("AutoSellCards", {
        Text = "Auto Sell Cards By Rarity",
        Default = false,
        Callback = function(um)
            AC[12] = um
        end
    })
    SellCardsGroup:AddDropdown("SellRarityFilter", {
        Text = "Rarities To Sell",
        Values = Ad,
        Multi = true,
        AllowNull = true,
        Default = {},
        Searchable = true,
        Callback = function(uq)
            local Qe = {}
            local Qf = uq
            local Qj = if Qf then 1 else 0
            local Qh = 852 * Qj + 1956 * (1 - Qj)
            local Qi = 1974 * Qj + 2416 * (1 - Qj)
            if not ((Qh * 3593 + Qi * 3603 + Qh * Qi) % 16777213 == 11855406) then
                Qf = Qe
            end
            AC[51] = Qf
        end
    })
    SellCardsGroup:AddSlider("SellCardDelay", {
        Text = "Card Sell Delay (s)",
        Min = 0.1,
        Max = 5,
        Default = 0.4,
        Rounding = 1,
        Callback = function(us)
            AC[36] = us
        end
    })
end
local function fn738()
    local Ca_2
    local B8 = Ah
    local B8_3
    local B9 = {}
    if B8 then
        B8 = type(Ah.Items) == "table"
    end
    if B8 then
        for k, v in pairs(Ah.Items) do
            local B8_1 = type(v) == "table" and v.Type == "consumable"
            if B8_1 then
                local B8_2 = #B9 + 1
                local Ca_1 = v.DisplayName or k
                local Cb = tostring(Ca_1)
                local Cc = tonumber(v.LayoutOrder) or 0
                B9[B8_2] = { Id = k, Name = Cb, Order = Cc }
            end
        end
        table.sort(B9, function(aw, ax)
            return aw.Order < ax.Order
        end)
    end
    if #B9 == 0 then
        for i, v in ipairs(zU) do
            B9[#B9 + 1] = v
        end
    end
    B8_3, Ca_2 = {}, {}
    for i, v in ipairs(B9) do
        B8_3[#B8_3 + 1] = v.Name
        Ca_2[v.Name] = v.Id
    end
    return B8_3, Ca_2
end
local function fn792(aK, aL)
    if aK.Rank == aL.Rank then
        return aK.Name < aL.Name
    end
    return aK.Rank < aL.Rank
end
local function fn898()
    local InfinityTowerGroup = Ac.Tower:AddLeftGroupbox("Infinity Tower")
    InfinityTowerGroup:AddToggle("AutoEquipBest", {
        Text = "Auto Equip Best",
        Default = false,
        Callback = function(vK)
            AC[4] = vK
        end
    })
    InfinityTowerGroup:AddToggle("AutoTower", {
        Text = "Auto Start Battles",
        Default = false,
        Callback = function(vN)
            AC[6] = vN
        end
    })
    InfinityTowerGroup:AddToggle("AutoPickupBest", {
        Text = "Pick Up Best Cards Before Battle",
        Default = false,
        Callback = function(vP)
            AC[25] = vP
            AK[1] = false
        end
    })
    InfinityTowerGroup:AddSlider("PickupBestCount", {
        Text = "Cards To Pick Up",
        Min = 1,
        Max = 4,
        Default = 4,
        Rounding = 0,
        Callback = function(vT)
            AC[31] = vT
        end
    })
    InfinityTowerGroup:AddToggle("PickupBestOnlyBetter", {
        Text = "Only If Better Than Inventory",
        Default = true,
        Callback = function(vV)
            AC[27] = vV
        end
    })
    InfinityTowerGroup:AddToggle("PickupBestReturn", {
        Text = "Return Cards After Battle Starts",
        Default = true,
        Callback = function(vX)
            AC[26] = vX
        end
    })
    InfinityTowerGroup:AddSlider("TowerDelay", {
        Text = "Retry Delay (s)",
        Min = 1,
        Max = 15,
        Default = 2,
        Rounding = 1,
        Callback = function(vZ)
            AC[30] = vZ
        end
    })
    local EquipBestGroup = Ac.Cards:AddRightGroupbox("Equip Best")
    EquipBestGroup:AddToggle("AutoEquipLoop", {
        Text = "Auto Equip Best Cards",
        Default = false,
        Callback = function(v1)
            AC[5] = v1
        end
    })
    EquipBestGroup:AddSlider("EquipDelay", {
        Text = "Equip Every (s)",
        Min = 1,
        Max = 600,
        Default = 60,
        Rounding = 0,
        Callback = function(v3)
            AC[32] = v3
        end
    })
end
local function fn936(aS, aT, aU)
    local CA_1
    local Cy = aS
    local Cy_1
    local Cz = {}
    if Cy then
        Cy = aS[aT]
    end
    if not Cy then
        return Cz
    end
    Cy_1, CA_1 = pcall(aS[aT])
    local CB = Cy_1 and type(CA_1) == "table"
    if not CB then
        return Cz
    end
    for i, v in ipairs(CA_1) do
        local Cy_2 = type(v) == "table" and v[aU]
        if Cy_2 then
            Cz[#Cz + 1] = tostring(v[aU])
        end
    end
    return Cz
end
local function fn942()
    local CardLevelsGroup = Ac.Cards:AddLeftGroupbox("Card Levels")
    CardLevelsGroup:AddToggle("AutoUpgradeCard", {
        Text = "Auto Upgrade Placed Cards",
        Default = false,
        Callback = function(uR)
            AC[20] = uR
        end
    })
    CardLevelsGroup:AddSlider("CardLevelTarget", {
        Text = "Stop At Level",
        Min = 2,
        Max = zT,
        Default = zT,
        Rounding = 0,
        Callback = function(uV)
            AC[41] = uV
        end
    })
    CardLevelsGroup:AddInput("MaxUpgradeCost", {
        Text = "Max Cost Per Upgrade",
        Default = "0",
        Numeric = true,
        Finished = true,
        Placeholder = "0 = no limit",
        Callback = function(uX)
            local Qq = tonumber(uX) or 0
            AC[42] = Qq
        end
    })
    CardLevelsGroup:AddInput("CashReserve", {
        Text = "Keep Cash Reserve",
        Default = "0",
        Numeric = true,
        Finished = true,
        Placeholder = "0",
        Callback = function(uZ)
            local Qs = (tonumber(uZ))
            local Qw = if Qs then 1 else 0
            local Qu = 2553 * Qw + 3368 * (1 - Qw)
            local Qv = 2870 * Qw + 502 * (1 - Qw)
            if not ((Qu * 1284 + Qv * 582 + Qu * Qv) % 16777213 == 12275502) then
                Qs = 0
            end
            AC[43] = Qs
        end
    })
    CardLevelsGroup:AddSlider("UpgradeCardDelay", {
        Text = "Upgrade Delay (s)",
        Min = 0.1,
        Max = 5,
        Default = 0.3,
        Rounding = 1,
        Callback = function(u0)
            AC[44] = u0
        end
    })
    local SlotsGroup = Ac.Cards:AddRightGroupbox("Slots")
    SlotsGroup:AddDropdown("UpgradeSlotFilter", {
        Text = "Slots To Upgrade",
        Values = AW,
        Multi = true,
        AllowNull = true,
        Default = {},
        Searchable = true,
        Callback = function(u4)
            local Qy = u4 or {}
            AC[58] = Qy
        end
    })
    local CraftingGroup = Ac.Cards:AddLeftGroupbox("Crafting")
    CraftingGroup:AddToggle("AutoCraft", {
        Text = "Auto Craft And Claim",
        Default = false,
        Callback = function(u7)
            AC[13] = u7
        end
    })
    CraftingGroup:AddDropdown("CraftRecipe", {
        Text = "Recipe",
        Values = AH,
        Default = 1,
        Searchable = true,
        Callback = function(va)
            AC[37] = va
        end
    })
    CraftingGroup:AddSlider("CraftDelay", {
        Text = "Craft Check Delay (s)",
        Min = 5,
        Max = 120,
        Default = 10,
        Rounding = 0,
        Callback = function(vc)
            AC[38] = vc
        end
    })
end
local function fn1018(P)
    local B6_1
    local Modules = ReplicatedStorage:FindFirstChild("Modules")
    local B5 = Modules and Modules:FindFirstChild(P)
    local B5_1
    if not B5 then
        return nil
    end
    B5_1, B6_1 = pcall(require, B5)
    local B4_2 = B5_1 and type(B6_1) == "table"
    if B4_2 then
        return B6_1
    end
    return nil
end
local function fn1130()
    local PV_1
    local PU_1
    PV_1, PU_1 = {}, {}
    for i, v in ipairs(AK[6]()) do
        Af(PV_1, PU_1, v:GetAttribute("CardName"))
    end
    return Am(PV_1)
end
local function fn1177()
    A4, AY, AR = Ba()
    AS(RarityFilterDropdown, A4)
    AS(MutationFilterDropdown, AY)
    AS(PackFilterDropdown, AR)
    AS(A6, AR)
    AnimeCardFarmNotify("Catalog Refreshed", ("Loaded %d rarities, %d mutations, %d packs."):format(#A4, #AY, #AR))
end
local function fn1266()
    local SpawnGroup = Ac.Farm:AddLeftGroupbox("Spawn")
    SpawnGroup:AddToggle("AutoSpawn", {
        Text = "Auto Spawn Pack",
        Default = false,
        Callback = function(tu)
            AC[1] = tu
        end
    })
    SpawnGroup:AddSlider("SpawnDelay", {
        Text = "Spawn Delay (s)",
        Min = 0.1,
        Max = 5,
        Default = 0.4,
        Rounding = 1,
        Callback = function(tx)
            AC[29] = tx
        end
    })
    SpawnGroup:AddToggle("AutoStopSpawn", {
        Text = "Auto Stop On Target",
        Default = false,
        Callback = function(tz)
            AC[2] = tz
        end
    })
    local AutoBuyGroup = Ac.Farm:AddLeftGroupbox("Auto Buy")
    AutoBuyGroup:AddToggle("AutoBuy", {
        Text = "Auto Buy Matching",
        Default = false,
        Callback = function(tC)
            AC[3] = tC
        end
    })
    local FiltersGroup = Ac.Farm:AddRightGroupbox("Filters")
    RarityFilterDropdown = FiltersGroup:AddDropdown("RarityFilter", {
        Text = "Rarity",
        Values = A4,
        Multi = true,
        AllowNull = true,
        Default = {},
        Searchable = true,
        Callback = function(tH)
            local P3 = tH or {}
            AC[50] = P3
        end
    })
    MutationFilterDropdown = FiltersGroup:AddDropdown("MutationFilter", {
        Text = "Mutation",
        Values = AY,
        Multi = true,
        AllowNull = true,
        Default = {},
        Searchable = true,
        Callback = function(tL)
            local P6 = tL or {}
            AC[54] = P6
        end
    })
    PackFilterDropdown = FiltersGroup:AddDropdown("PackFilter", {
        Text = "Pack",
        Values = AR,
        Multi = true,
        AllowNull = true,
        Default = {},
        Searchable = true,
        Callback = function(tP)
            local P9 = tP or {}
            AC[55] = P9
        end
    })
    FiltersGroup:AddToggle("UseMinRarity", {
        Text = "Use Minimum Rarity",
        Default = false,
        Callback = function(tR)
            AC[47] = tR
        end
    })
    FiltersGroup:AddDropdown("MinRarity", {
        Text = "Minimum Rarity",
        Values = Ad,
        Default = 1,
        Searchable = true,
        Callback = function(tU)
            AC[48] = tU
        end
    })
    FiltersGroup:AddButton({ Text = "Refresh Lists", Func = Ag })
end
zT = nil
zU = nil
PackFilterDropdown = nil
Options = nil
zZ = nil
MutationFilterDropdown = nil
RarityFilterDropdown = nil
z3 = nil
z5 = nil
z7 = nil
z8 = nil
SaveManager = nil
Ac = nil
Ad = nil
Ae = nil
Af = nil
Ag = nil
Ah = nil
Aj = nil
ThemeManager = nil
Am = nil
Library = nil
Ap = nil
Aq = nil
As = nil
LocalPlayer = nil
Az = nil
AB = nil
AC = nil
onJoinDiscordForKeylessScripts = nil
local zW, TraitRollRE, z0, ItemsRE, z4, PlayTimeRewardRE, z9, UpgradesRE, ConveyorRE, Ak, An, Remotes, At, Au, Av, Aw, Ax, AA, UserInputService, AF
AH = nil
AK = nil
AL = nil
AN = nil
AO = nil
AR = nil
AS = nil
AT = nil
AW = nil
AY = nil
SmartCardFilterDropdown = nil
A0 = nil
A2 = nil
ReplicatedStorage = nil
A4 = nil
A6 = nil
A7 = nil
A9 = nil
Ba = nil
local CardSlotRE, AI, GuiService, CardCraftRE, AP, TeleportService, AU, SellRE, VirtualUser, AZ, BossRaidRE, A5, GradeRollRE
local Bi_1
local Be_1
ReplicatedStorage, VirtualUser, TeleportService, GuiService, UserInputService, LocalPlayer, Remotes, ConveyorRE, UpgradesRE, PlayTimeRewardRE, ItemsRE, TraitRollRE, GradeRollRE, BossRaidRE, SellRE, CardCraftRE, CardSlotRE, AB, Av, An, Ae, z7, z3, zU, A5, AZ, AT, AL, Az, At, AP, AI, Ax, Ap, Ah, z9, z4, z0 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local Bb_6
ReplicatedStorage = game:GetService("ReplicatedStorage")
VirtualUser = game:GetService("VirtualUser")
TeleportService = game:GetService("TeleportService")
GuiService = game:GetService("GuiService")
UserInputService = game:GetService("UserInputService")
LocalPlayer = Players.LocalPlayer
Remotes = ReplicatedStorage:WaitForChild("Remotes")
ConveyorRE = Remotes:WaitForChild("ConveyorRE")
UpgradesRE = Remotes:WaitForChild("UpgradesRE")
PlayTimeRewardRE = Remotes:WaitForChild("PlayTimeRewardRE")
ItemsRE = Remotes:WaitForChild("ItemsRE")
TraitRollRE = Remotes:WaitForChild("TraitRollRE")
GradeRollRE = Remotes:WaitForChild("GradeRollRE")
BossRaidRE = Remotes:WaitForChild("BossRaidRE")
SellRE = Remotes:WaitForChild("SellRE")
CardCraftRE = Remotes:WaitForChild("CardCraftRE")
CardSlotRE = ReplicatedStorage:WaitForChild("CardSlotRE")
AB = "https://discord.gg/ehKVq7pf7v"
Av = "https://rscripts.net/@Ouroboros"
An = "Anime Card Farm"
Ae = {
    "Common",
    "Uncommon",
    "Rare",
    "Epic",
    "Legendary",
    "Mythic",
    "Secret",
    "Divine",
    "Transcendent",
    "Shadow",
    "Emperor",
    "Demon",
    "Manga",
    "Celestial",
    "Heavenly",
    "Corrupted",
    "Striker",
    "Sacred",
    "Paradox",
    "Founder",
    "Evolved",
    "Magic",
    "Oni",
    "Chaos",
    "Ruin",
    "Reborn",
    "Beast",
    "Nordic",
    "Hunter",
    "Soul",
    "Swordsman",
    "Gamer",
    "Revenge",
    "Chainsaw",
    "Eternity",
    "Academy",
    "Dynasty",
    "Grail",
    "Conquest",
    "Blaze",
    "Devour",
    "Raven",
    "Arcane",
    "Nightfall",
    "Evolution",
    "Limited",
    "VIP",
    "Mystery",
    "Event"
}
z7 = {
    "Normal",
    "Golden",
    "Venomous",
    "Diamond",
    "Rainbow",
    "Sakura",
    "Candy",
    "Blessed",
    "Radioactive",
    "Glitch",
    "Starfallen",
    "Admin",
    "Unknow"
}
z3 = {
    "Ice Pack",
    "Sand Pack",
    "Inferno Pack",
    "Lightning Pack",
    "Hightech Pack",
    "Dark Pack",
    "Eclipse Pack",
    "Isekai Pack",
    "Slayer Pack",
    "Monarch Pack",
    "Pirate King Pack",
    "Demon Pack",
    "Manga Pack",
    "Galaxy Pack",
    "Heaven Pack",
    "Void Pack",
    "Soccer Pack",
    "Empyrean Pack",
    "Bizarre Pack",
    "Titan Pack",
    "Evolved Pack",
    "Grimoire Pack",
    "Oni Pack",
    "Chaos Pack",
    "Ruin Pack",
    "Mage Pack",
    "Beast Pack",
    "Viking Pack",
    "Hunter Pack",
    "Soul Pack",
    "Swordsman Pack",
    "Gamer Pack",
    "Revenge Pack",
    "Chainsaw Pack",
    "Eternity Pack",
    "Academy Pack",
    "Dynasty Pack",
    "Grail Pack",
    "Conquest Pack",
    "Blaze Pack",
    "Devour Pack",
    "Raven Pack",
    "Arcane Pack",
    "Nightfall Pack",
    "Royal Pack",
    "Diamond Pack",
    "Summer Pack"
}
local Bf = {
    Common = 1,
    Uncommon = 2,
    Rare = 3,
    Epic = 4,
    Legendary = 5,
    Mythic = 6,
    Secret = 7,
    Divine = 8,
    Transcendent = 9,
    Shadow = 10,
    Emperor = 10,
    Demon = 11,
    Manga = 12,
    Celestial = 13,
    Heavenly = 14,
    Corrupted = 15,
    Striker = 16,
    Sacred = 17,
    Paradox = 18,
    Founder = 19,
    Evolved = 20,
    Magic = 21,
    Oni = 22,
    Chaos = 23,
    Ruin = 24,
    Reborn = 25,
    Beast = 26,
    Nordic = 27,
    Hunter = 28,
    Soul = 29,
    Swordsman = 30,
    Gamer = 31,
    Revenge = 32,
    Chainsaw = 33,
    Eternity = 34,
    Academy = 35,
    Dynasty = 36,
    Grail = 37,
    Conquest = 38,
    Blaze = 39,
    Devour = 40,
    Raven = 41,
    Arcane = 42,
    Nightfall = 43,
    Evolution = 99,
    Limited = 99,
    VIP = 99,
    Mystery = 99,
    Event = 99
}
if (not Az and false and 71 or (not Az or false) and (not LocalPlayer or not LocalPlayer) or ((not LocalPlayer) and (Az or Az) or (Az or LocalPlayer) and LocalPlayer)) and not (not Az and false and 71 or (not Az or false) and (not LocalPlayer or not LocalPlayer) or ((not LocalPlayer) and (Az or Az) or (Az or LocalPlayer) and LocalPlayer)) then
    AL = {
        { Id = "TimePotion1", Name = "Time I" },
        { Id = "MutationPotion1", Name = "Mutation I" },
        { Id = "ProductionPotion2", Name = "Production II" },
        { Id = "LuckPotion2", Name = "Luck II" },
        { Id = "LuckPotion3", Name = "Luck III" },
        { Id = "CashPotion3", Name = "Cash III" },
        { Id = "TimePotion3", Name = "Time III" },
        { Id = "LuckPotion1", Name = "Luck I" },
        { Id = "MutationPotion2", Name = "Mutation II" },
        { Id = "CashPotion1", Name = "Cash I" },
        { Id = "MutationPotion3", Name = "Mutation III" },
        { Id = "CashPotion2", Name = "Cash II" },
        { Id = "TimePotion2", Name = "Time II" },
        { Id = "ProductionPotion3", Name = "Production III" },
        { Id = "ProductionPotion1", Name = "Production I" }
    }
    zU = { Luck = true, Mutation = true, Cash = true, Production = true }
    AT = {
        ["Luck Boost"] = "luck",
        ["Time Boost"] = "time",
        ["Base Expansion"] = "base",
        ["Speed Boost"] = "speed",
        ["Cash Boost"] = "cash"
    }
    AZ = { "Base Expansion", "Time Boost", "Luck Boost", "Speed Boost", "Cash Boost" }
    A5 = { "Easy", "Medium", "Nightmare", "Hard" }
else
    zU = {
        { Id = "CashPotion1", Name = "Cash I" },
        { Id = "CashPotion2", Name = "Cash II" },
        { Id = "CashPotion3", Name = "Cash III" },
        { Id = "LuckPotion1", Name = "Luck I" },
        { Id = "LuckPotion2", Name = "Luck II" },
        { Id = "LuckPotion3", Name = "Luck III" },
        { Id = "MutationPotion1", Name = "Mutation I" },
        { Id = "MutationPotion2", Name = "Mutation II" },
        { Id = "MutationPotion3", Name = "Mutation III" },
        { Id = "ProductionPotion1", Name = "Production I" },
        { Id = "ProductionPotion2", Name = "Production II" },
        { Id = "ProductionPotion3", Name = "Production III" },
        { Id = "TimePotion1", Name = "Time I" },
        { Id = "TimePotion2", Name = "Time II" },
        { Id = "TimePotion3", Name = "Time III" }
    }
    A5 = { Cash = true, Luck = true, Mutation = true, Production = true }
    AZ = {
        ["Cash Boost"] = "cash",
        ["Luck Boost"] = "luck",
        ["Time Boost"] = "time",
        ["Speed Boost"] = "speed",
        ["Base Expansion"] = "base"
    }
    AT = { "Cash Boost", "Luck Boost", "Time Boost", "Speed Boost", "Base Expansion" }
    AL = { "Easy", "Medium", "Hard", "Nightmare" }
end
Az = { "Cash", "Gems", "Gems First" }
At = 12
AP = fn1018("CardsConfig")
AI = fn1018("CardCraftConfig")
local Bg = fn1018("TraitRollConfig")
Ax = fn1018("GradeRollConfig")
Ap = fn1018("ConveyorPacks")
Ah = fn1018("ItemsConfig")
z9 = fn1018("InfinityTowerConfig")
z4 = fn1018("RollSpeedGamepasses")
z0 = {}
for k, v in pairs(Bf) do
    z0[k] = v
end
local Bb_1 = Ap
if Bb_1 then
    local Bc_1 = 1
    repeat
        local SQ = bit32.rrotate(bit32.bxor(bit32.lrotate(Bc_1, 28), string.byte(tostring(Bc_1))), 15)
        if bit32.bxor(bit32.lrotate(bit32.bxor(SQ, 3752169044), 24), 1423943054) == bit32.lrotate(SQ, 24) then
            Bb_1 = type(Ap.RarityRank) == "table"
        else
            Ap = type(Bb_1.RarityRank) == "table"
        end
        Bc_1 = (Bc_1 + 6) % 8
    until (Bc_1 * 3 + 1) % 8 == 6
end
if Bb_1 then
    for k, v in pairs(Ap.RarityRank) do
        local Bb_2 = tostring(k)
        local Bc_2 = tonumber(v) or 99
        z0[Bb_2] = Bc_2
    end
end
local Bb_3 = AP
if Bb_3 then
    local Bc_3 = 4
    repeat
        local SS = bit32.rrotate(bit32.bxor(bit32.lrotate(Bc_3, 7), string.byte(tostring(Bc_3))), 28)
        if bit32.bxor(bit32.lrotate(bit32.bxor(SS, 3765519398), 20), 1114507028) ~= bit32.lrotate(SS, 20) then
            AP = type(Bb_3.Cards) == "table"
        else
            Bb_3 = type(AP.Cards) == "table"
        end
        Bc_3 = (Bc_3 + 7) % 8
    until (Bc_3 * 7 + 7) % 8 == 4
end
if Bb_3 then
    for k, v in pairs(AP.Cards) do
        local Bb_4 = type(v) == "table" and v.Rarity
        local Bc_4 = Bb_4
        if Bb_4 then
            Bb_4 = z0[tostring(Bc_4)] == nil
        end
        if Bb_4 then
            z0[tostring(Bc_4)] = 99
        end
    end
end
A0, AU, Be_1 = nil, nil, nil
local Bd = 6
local Bd_2, Bd_3
repeat
    if (Bd * 1 + 1) % 2 + 1 <= 1 then
        local Bc_6 = (vector.create((Bd * 6 + 4) % 11 + 1, (Bd * 2 + 8) % 13 + 1, (Bd * 7 + 6) % 17 + 1))
        local Bf_1 = (vector.create((Bd * 2 + 3) % 11 + 1, (Bd * 11 + 11) % 13 + 1, (Bd * 11 + 7) % 17 + 1))
        local S3 = vector.dot(Bc_6, Bf_1)
        if S3 * S3 >= vector.dot(Bc_6, Bc_6) * vector.dot(Bf_1, Bf_1) + 1 then
            A0 = {}
        else
            Be_1 = {}
        end
        Bd = (Bd + 3) % 16
    else
        if Bd * 11080249 + 6 + 2 <= Bd * 11080249 + 6 + 2 + 1 then
            A0, AU = fn738()
        else
            AU = fn738
            Bb_6, A0 = AU()
        end
        Bd = (Bd + 3) % 16
    end
until (Bd * 9 + 13) % 16 == 9
for k, v in pairs(z0) do
    local Bb_7 = #Be_1 + 1
    local Bc_7 = tostring(k)
    local Bd_1 = tonumber(v) or 0
    Be_1[Bb_7] = { Name = Bc_7, Rank = Bd_1 }
end
Ad = nil
local Bc_8 = 5
repeat
    local Bb_8 = {
        "thggpuedhwp",
        "xjtyojex",
        "jyafiftr",
        "rkxmdfyuo",
        "hybuhgqgah",
        "ltdy",
        "ijm",
        "fvisw",
        "lncfacljqgyh",
        "qoygnxdwhcec",
        "rpknfv",
        "aifaaxihz",
        "jubrd",
        "vquzmydmgq"
    }
    if Bb_8[(Bc_8 * 63 + 13) % 14 + 1] <= Bb_8[(Bc_8 * 63 + 13) % 14 + 1] then
        table.sort(Be_1, fn792)
        Ad = {}
    else
        table.sort(Ad, fn792)
        Be_1 = {}
    end
    Bc_8 = (Bc_8 + 3) % 8
until (Bc_8 * 7 + 0) % 8 == 0
for i, v in ipairs(Be_1) do
    Ad[#Ad + 1] = v.Name
end
local Bb_9 = AP
if Bb_9 then
    local Bc_9 = 2
    repeat
        local S8 = bit32.rrotate(bit32.bxor(bit32.lrotate(Bc_9, 22), string.byte(tostring(Bc_9))), 13)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(S8, 2591135365), 1684970838), (bit32.bxor(bit32.band(S8, 1703831930), 926518066))), 1684970838), 926518066) == S8 then
            Bb_9 = tonumber(AP.MAX_LEVEL)
        else
            AP = tonumber(Bb_9.MAX_LEVEL)
        end
        Bc_9 = (Bc_9 + 1) % 4
    until (Bc_9 * 3 + 1) % 4 == 2
end
local Bc_10 = Bb_9 or 50
zT, A9, A2, AW, Bd_2 = nil, nil, nil, nil, nil
zT = Bc_10
if (not A9 or AW or A9 and not zT) and (not AW and A9 or (not A9 or not A9)) and not ((not A9 or AW or A9 and not zT) and (not AW and A9 or (not A9 or not A9))) then
    A2 = fn936
else
    Bd_2 = fn936
end
A9 = Bd_2(Bg, "GetTraits", "Trait")
A2 = Bd_2(Ax, "GetGrades", "Grade")
AW = {}
local BY = 1
while BY <= 30 do
    local BZ = BY
    AW[BZ] = tostring(BZ)
    BY += 1
end
AH = Bd_2(AI, "GetRecipesSorted", "Id")
local Bb_10 = AH[1]
Aw = {}
AC = {
    [1] = false,
    [2] = false,
    [3] = false,
    [4] = false,
    [5] = false,
    [6] = false,
    [7] = false,
    [8] = false,
    [9] = false,
    [10] = false,
    [11] = false,
    [12] = false,
    [13] = false,
    [14] = false,
    [15] = false,
    [16] = false,
    [17] = true,
    [18] = false,
    [19] = true,
    [20] = false,
    [21] = false,
    [22] = false,
    [23] = false,
    [24] = false,
    [25] = false,
    [26] = true,
    [27] = true,
    [28] = false,
    [29] = 0.4,
    [30] = 2,
    [31] = 4,
    [32] = 60,
    [33] = 0.5,
    [34] = 0.2,
    [35] = 0.2,
    [36] = 0.4,
    [37] = Bb_10,
    [38] = 10,
    [39] = 5,
    [40] = "Easy",
    [41] = zT,
    [42] = 0,
    [43] = 0,
    [44] = 0.3,
    [45] = "Cash",
    [46] = 0,
    [47] = false,
    [48] = "Common",
    [49] = 15,
    [50] = {},
    [51] = {},
    [52] = {},
    [53] = {},
    [54] = {},
    [55] = {},
    [56] = {},
    [57] = {},
    [58] = {},
    [59] = {},
    [60] = {}
}
Library = nil
Af = function(bb, bc, bd)
    if bd == nil then
        return
    end
    bd = tostring(bd)
    if bd == "" or bc[bd] then
        return
    end
    bc[bd] = true
    bb[#bb + 1] = bd
end
A7 = function(bg)
    local CM_1
    local CL_1
    CL_1, CM_1 = {}, {}
    for i, v in ipairs(bg) do
        Af(CL_1, CM_1, v)
    end
    return CL_1, CM_1
end
Am = function(bn)
    table.sort(bn, function(bo, bq)
        return tostring(bo):lower() < tostring(bq):lower()
    end)
    return bn
end
zZ = function(bs, bt, bu, bv, bw, bx, by, bz)
    local CU = bs or ""
    bs = tostring(CU):lower()
    if type(bt) == "string" then
        if bs:find("rarity", 1, true) then
            Af(bu, bv, bt)
        elseif bs:find("mutation", 1, true) then
            Af(bw, bx, bt)
        else
            local CU_1 = bs:find("pack", 1, true) or bt:find(" Pack", 1, true) or bt:match("Pack$")
            if CU_1 then
                Af(by, bz, bt)
            end
        end
    end
end
z5 = function(bD, bE, bF, bG, bH, bI, bJ, bK, bL, bM)
    local CW = type(bD) ~= "table" or bK > 5 or bL[bD]
    if CW then
        return
    end
    bL[bD] = true
    local CW_1 = bM
    local C1 = if CW_1 then 1 else 0
    local C_ = 3066 * C1 + 2820 * (1 - C1)
    local C0 = 118 * C1 + 528 * (1 - C1)
    if not ((C_ * 762 + C0 * 515 + C_ * C0) % 16777213 == 2758850) then
        CW_1 = ""
    end
    bM = tostring(CW_1):lower()
    for k, v in pairs(bD) do
        local CW_2 = tostring(k)
        local CX = CW_2:lower()
        if type(v) == "string" then
            zZ(CX, v, bE, bF, bG, bH, bI, bJ)
        elseif type(v) == "table" then
            local CY = CX:find("rarit", 1, true) or bM:find("rarit", 1, true)
            if CY then
                Af(bE, bF, CW_2)
            else
                local CY_1 = CX:find("mutation", 1, true) or bM:find("mutation", 1, true)
                if CY_1 then
                    Af(bG, bH, CW_2)
                else
                    local CY_2 = CX:find("pack", 1, true) or bM:find("pack", 1, true)
                    if CY_2 then
                        Af(bI, bJ, CW_2)
                    end
                end
            end
            z5(v, bE, bF, bG, bH, bI, bJ, bK + 1, bL, CW_2)
        else
            zZ(CX, v, bE, bF, bG, bH, bI, bJ)
        end
    end
end
As = function(bW, bX, bY, bZ, b_, b0, b1)
    if not bW then
        return
    end
    for i, descendant in ipairs(bW:GetDescendants()) do
        if descendant:IsA("Tool") then
            Af(bX, bY, descendant:GetAttribute("Rarity"))
            Af(bZ, b_, descendant:GetAttribute("Mutation"))
            local C8 = descendant:GetAttribute("Pack") or descendant:GetAttribute("PackId")
            Af(b0, b1, C8)
            local C8_1 = descendant.Name:find(" Pack", 1, true) or descendant.Name:match("Pack$")
            if C8_1 then
                Af(b0, b1, descendant.Name)
            end
        end
    end
end
Aq = function()
    local Dl_1
    local Dk_1
    local Dj_1
    Dk_1, Dj_1, Dl_1 = {}, {}, {}
    if Ap then
        if type(Ap.RarityRank) == "table" then
            for k in pairs(Ap.RarityRank) do
                Dk_1[#Dk_1 + 1] = tostring(k)
            end
        end
        if type(Ap.Mutations) == "table" then
            for i, v in ipairs(Ap.Mutations) do
                local Dm_1 = type(v) == "table" and v.Name
                if Dm_1 then
                    Dj_1[#Dj_1 + 1] = tostring(v.Name)
                end
            end
        end
        if type(Ap.List) == "table" then
            for i, v in ipairs(Ap.List) do
                local Dm_2 = type(v) == "table"
                if Dm_2 then
                    Dm_2 = v.Id or v.AssetName
                end
                if Dm_2 then
                    local Dm_3 = #Dl_1 + 1
                    local Dn_2 = v.Id or v.AssetName
                    Dl_1[Dm_3] = tostring(Dn_2)
                end
            end
        end
    end
    if #Dk_1 == 0 then
        Dk_1 = Ae
    end
    if #Dj_1 == 0 then
        Dj_1 = z7
    end
    if #Dl_1 == 0 then
        Dl_1 = z3
    end
    return Dk_1, Dj_1, Dl_1
end
Ba = function()
    local DJ_1
    local DI_1
    local DH_1
    local DG_1
    local DE_1, DE_2
    local DD_1, DD_2
    local DF_1, DF_3
    DD_1, DE_1, DF_1 = Aq()
    DH_1, DG_1 = A7(DD_1)
    DI_1, DD_2 = A7(DE_1)
    DJ_1, DE_2 = A7(DF_1)
    As(LocalPlayer:FindFirstChild("Backpack"), DH_1, DG_1, DI_1, DD_2, DJ_1, DE_2)
    As(LocalPlayer.Character, DH_1, DG_1, DI_1, DD_2, DJ_1, DE_2)
    for i, descendant in ipairs(ReplicatedStorage:GetDescendants()) do
        if descendant:IsA("ModuleScript") then
            local DF_2 = descendant.Name:lower()
            local DK = DF_2:find("info", 1, true) or DF_2:find("data", 1, true) or DF_2:find("config", 1, true) or DF_2:find("list", 1, true)
            local DK_2
            local DK_1 = (DF_2:find("pack", 1, true))
            if not DK_1 then
                local DM = DF_2:find("card", 1, true) and DK
                DK_1 = DM
            end
            if not DK_1 then
                DK_1 = DF_2:find("rarit", 1, true)
            end
            if not DK_1 then
                DK_1 = DF_2:find("mutation", 1, true)
            end
            if DK_1 then
                DF_3, DK_2 = pcall(require, descendant)
                local DL_1 = DF_3 and type(DK_2) == "table"
                if DL_1 then
                    z5(DK_2, DH_1, DG_1, DI_1, DD_2, DJ_1, DE_2, 0, {}, descendant.Name)
                end
            end
        end
    end
    return Am(DH_1), Am(DI_1), Am(DJ_1)
end
A4, AY, AR = Ba()
AK = { [1] = false, [2] = false }
local function Bb_11()
    local Ph
    local OZ
    local Pk
    local Ok
    local N1
    local O4
    local Pq
    local N4
    local O7
    local Ot
    local N7
    local Ow
    local Pd
    local OS
    local Od
    local Pg
    local OY
    local Oj
    local O0
    local OI
    local Pp
    local O3
    local O6
    local Ps
    local OR
    local Pc
    local Oy
    local OU
    local Of
    local OX
    local OE
    local O_
    local OH
    local Po
    local O2
    local N2
    local O5
    local Pr
    local OK
    local O8
    local Ol
    local N8
    N1 = nil
    N2 = nil
    N4 = nil
    N7 = nil
    N8 = nil
    Od = nil
    Of = nil
    Oj = nil
    Ok = nil
    Ol = nil
    Ot = nil
    Ow = nil
    Oy = nil
    OE = nil
    OH = nil
    OI = nil
    OK = nil
    local N3, N5, N6, N9, Oa, Ob, Oc, Oe, Og, Oh, Oi, Om, On, Oo, Op, Oq, Or, Os, Ou, Ov, Ox, Oz, OA, OB, OC, OF, OG, OJ, OL, OM, ON, OO
    OR = nil
    OS = nil
    OU = nil
    OX = nil
    OY = nil
    OZ = nil
    O_ = nil
    O0 = nil
    O2 = nil
    O3 = nil
    O4 = nil
    O5 = nil
    O6 = nil
    O7 = nil
    O8 = nil
    Pc = nil
    Pd = nil
    Pg = nil
    Ph = nil
    Pk = nil
    Po = nil
    Pp = nil
    Pq = nil
    Pr = nil
    Ps = nil
    local OP, OQ, OT, OV, OW, O1, O9, Pa, Pb, Pe, Pf, Pi, Pj, Pl, Pm, Pn, Pt
    N2 = function(cT)
        return next(cT) == nil
    end
    O2 = tick()
    ON = tick()
    pcall(function()
        for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
            local D_ = v
            pcall(function()
                D_:Disable()
            end)
        end
    end)
    OQ = function()
        if not workspace.CurrentCamera then
            return
        end
        VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        task.wait(0.1)
        VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        ON = tick()
    end
    local connection2 = UserInputService.InputBegan:Connect(function()
        O2 = tick()
    end)
    local connection = UserInputService.InputChanged:Connect(function(c8)
        local UserInputType = c8.UserInputType
        if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
            O2 = tick()
        end
    end)
    OM = false
    OA = function()
        if not AC[28] or OM then
            return
        end
        OM = true
        if AnimeCardFarmNotify then
            AnimeCardFarmNotify("Auto Reconnect", "Disconnected. Rejoining the server.")
        end
        task.delay(2, function()
            pcall(function()
                TeleportService:Teleport(game.PlaceId, LocalPlayer)
            end)
        end)
    end
    GuiService.ErrorMessageChanged:Connect(function()
        if GuiService:GetErrorMessage() ~= "" then
            OA()
        end
    end)
    Oe = function(du)
        if AC[47] then
            local Eb_1 = du and z0[tostring(du)]
            local Eb_2 = z0[AC[48]]
            if not (Eb_1 and Eb_2) then
                return false
            end
            return Eb_1 >= Eb_2
        end
        local Eb_3 = (N2(AC[50]))
        if not Eb_3 then
            Eb_3 = du and AC[50][du]
        end
        return Eb_3 or false
    end
    Or = function(dG, dH, dI)
        local Ef = Oe(dG)
        local Eg = (N2(AC[54]))
        if not Eg then
            Eg = dH and AC[54][dH]
        end
        local Eg_1 = Eg or false
        local Eh_3 = (N2(AC[55]))
        if not Eh_3 then
            Eh_3 = dI and AC[55][dI]
        end
        return Ef and Eg_1 and (Eh_3 or false)
    end
    O1 = function()
        if AC[47] then
            return true
        end
        local Ek = N2(AC[50]) and N2(AC[54]) and N2(AC[55])
        return not Ek
    end
    N7 = function(dV)
        if not dV then
            return
        end
        local Ex = firesignal or fireSignal
        if Ex then
            pcall(Ex, dV.MouseButton1Click)
            return
        end
        local Ew = getconnections or get_signal_cons
        if Ew then
            pcall(function()
                for i, v in ipairs(Ew(dV.MouseButton1Click)) do
                    if v.Fire then
                        v:Fire()
                    end
                end
            end)
        end
    end
    OI = function()
        local PlotNumber = LocalPlayer:FindFirstChild("PlotNumber")
        if not PlotNumber or PlotNumber.Value == 0 then
            return nil
        end
        local MAP = workspace:FindFirstChild("MAP")
        local EF = MAP and MAP:FindFirstChild("Plots")
        local EE_2 = EF
        if EF then
            EF = EE_2:FindFirstChild(tostring(PlotNumber.Value))
        end
        local ED_1 = EF
        local EE_3 = ED_1 and ED_1:FindFirstChild("Plot_N0")
        return EE_3
    end
    N5 = function()
        local EK = OI()
        local EL = EK and EK:FindFirstChild("ButtonPart")
        local EK_1 = EL
        if EL then
            EL = EK_1:FindFirstChild("ClickDetector")
        end
        return EL
    end
    N9 = function()
        local EQ = OI()
        if not EQ then
            return nil
        end
        local BoxBaseModel = EQ:FindFirstChild("BoxBaseModel")
        local ES = BoxBaseModel and BoxBaseModel:FindFirstChild("ProxiBox")
        local ER_1 = ES or EQ:FindFirstChild("ProxiBox")
        local EQ_1 = ER_1
        if ER_1 then
            ER_1 = EQ_1:FindFirstChild("ProximityPrompt")
        end
        return ER_1
    end
    Pb = function()
        local EX = OI()
        local EY = EX and EX:FindFirstChild("SellPart")
        local EX_1 = EY
        if EY then
            EY = EX_1:FindFirstChild("ProximityPrompt")
        end
        return EX_1, EY
    end
    Pg = function(ex)
        local E_ = OI()
        local E0 = {}
        if not E_ then
            return E0
        end
        for i, descendant in ipairs(E_:GetDescendants()) do
            if descendant.Name:match("^CardSlot%d+$") then
                local E__1 = descendant:FindFirstChild("PromptHolder")
                local E1 = E__1 and E__1:FindFirstChild("ProximityPrompt")
                local E2 = E1
                if E1 then
                    E1 = E2.ActionText == ex
                end
                if E1 then
                    E0[#E0 + 1] = { part = E__1, prompt = E2 }
                end
            end
        end
        return E0
    end
    Oa = function()
        return Pg("Place")
    end
    Pa = function()
        local Character = LocalPlayer.Character
        local Backpack = LocalPlayer:FindFirstChild("Backpack")
        for i, v in ipairs({ Backpack, Character }) do
            if v then
                for i, child in ipairs(v:GetChildren()) do
                    local Fa_1 = child:IsA("Tool") and child:GetAttribute("Rarity") ~= nil
                    if Fa_1 then
                        local Fa_2 = N2(AC[56]) or AC[56][child.Name]
                        if Fa_2 then
                            return child
                        end
                    end
                end
            end
        end
        return nil
    end
    Pj = function()
        local Character = LocalPlayer.Character
        local Fq = Character and Character:FindFirstChildOfClass("Humanoid")
        if not Fq then
            return nil
        end
        local Fq_1 = Pa()
        if not Fq_1 then
            return nil
        end
        if Fq_1.Parent ~= Character then
            Fq:EquipTool(Fq_1)
        end
        return Fq_1
    end
    O6 = function()
        local Character = LocalPlayer.Character
        local Fx = Character and Character:FindFirstChild("HumanoidRootPart")
        return Character, Fx
    end
    Od = function(e6, e7)
        local FA_1
        local Fz_1
        Fz_1, FA_1 = O6()
        if not (FA_1 and e6 and e7 and fireproximityprompt) then
            return
        end
        FA_1.CFrame = e6.CFrame + Vector3.new(0, 3, 0)
        task.wait(0.18)
        pcall(fireproximityprompt, e7)
        task.wait(0.12)
    end
    N3 = function()
        local Character = LocalPlayer.Character
        local FJ = Character and Character:FindFirstChildOfClass("Humanoid")
        if not (Character and FJ) then
            return false
        end
        for i, child in ipairs(Character:GetChildren()) do
            local FI_1 = child:IsA("Tool") and child:GetAttribute("BoxValue") ~= nil
            if FI_1 then
                return true
            end
        end
        local Backpack = LocalPlayer:FindFirstChild("Backpack")
        if Backpack then
            for i, child in ipairs(Backpack:GetChildren()) do
                local FI_3 = child:IsA("Tool") and child:GetAttribute("BoxValue") ~= nil
                if FI_3 then
                    FJ:EquipTool(child)
                    return true
                end
            end
        end
        return false
    end
    Ob = function()
        local Character = LocalPlayer.Character
        local Backpack = LocalPlayer:FindFirstChild("Backpack")
        for i, v in ipairs({ Character, Backpack }) do
            if v then
                for i, child in ipairs(v:GetChildren()) do
                    local FY_1 = child:IsA("Tool") and child:GetAttribute("BoxValue") ~= nil
                    if FY_1 then
                        return true
                    end
                end
            end
        end
        return false
    end
    O3 = function()
        local Gc = {}
        for i, v in ipairs({ LocalPlayer:FindFirstChild("Backpack"), LocalPlayer.Character }) do
            if v then
                for i, child in ipairs(v:GetChildren()) do
                    local Gd = child:IsA("Tool") and child:GetAttribute("CardName") ~= nil
                    if Gd then
                        Gc[#Gc + 1] = child
                    end
                end
            end
        end
        return Gc
    end
    OE = function()
        local Character = LocalPlayer.Character
        local Gs = Character and Character:FindFirstChildOfClass("Humanoid")
        if not Gs then
            return nil
        end
        for i, v in ipairs(O3()) do
            if v.Parent ~= Character then
                Gs:EquipTool(v)
            end
            return v
        end
        return nil
    end
    Of = function()
        local GC_1
        local GB_1
        GB_1, GC_1 = O6()
        if not GC_1 then
            return
        end
        local CFrame = GC_1.CFrame
        for i, v in ipairs(Oa()) do
            if not OE() then
                break
            end
            Od(v.part, v.prompt)
        end
        GC_1.CFrame = CFrame
        if #Oa() > 0 then
            pcall(function()
                CardSlotRE:FireServer("EquipBest")
            end)
        end
    end
    N8 = 4
    Po = function(f3, f4, f5, f6, f7)
        local GQ_1
        local GP_1
        if not (z9 and f3) then
            return 0
        end
        local ComputeStats = z9.ComputeStats
        local GL = tostring(f3)
        local clamp = math.clamp
        local GN = (tonumber(f4))
        local GU = if GN then 1 else 0
        local GS = 507 * GU + 821 * (1 - GU)
        local GT = 3014 * GU + 2174 * (1 - GU)
        if not ((GS * 3417 + GT * 2456 + GS * GT) % 16777213 == 10662901) then
            GN = 1
        end
        local GO = clamp(GN, 1, zT)
        local GM_1 = f5 or "Normal"
        GP_1, GQ_1 = pcall(ComputeStats, GL, GO, tostring(GM_1), f6, f7)
        local GK_2 = GP_1 and tonumber(GQ_1)
        return GK_2 or 0
    end
    Pf = function()
        local GV = OI()
        local GW = {}
        if not GV then
            return GW
        end
        for i, descendant in ipairs(GV:GetDescendants()) do
            if descendant.Name:match("^CardSlot%d+$") then
                local UpgradePart = descendant:FindFirstChild("UpgradePart")
                local PromptHolder = descendant:FindFirstChild("PromptHolder")
                local GY = PromptHolder and PromptHolder:FindFirstChild("ProximityPrompt")
                local GZ = UpgradePart
                if GZ then
                    GZ = UpgradePart:GetAttribute("CardName")
                end
                local GY_1 = GZ
                if GZ then
                    GZ = GY
                end
                if GZ then
                    GZ = GY.ActionText == "Remove"
                end
                if GZ then
                    GW[#GW + 1] = {
                        part = PromptHolder,
                        prompt = GY,
                        damage = Po(GY_1, UpgradePart:GetAttribute("CardLevel"), UpgradePart:GetAttribute("CardMutation"), UpgradePart:GetAttribute("CardGrade"), UpgradePart:GetAttribute("CardTrait"))
                    }
                end
            end
        end
        return GW
    end
    OW = function()
        local G7 = {}
        for i, v in ipairs(O3()) do
            G7[#G7 + 1] = Po(v:GetAttribute("CardName"), v:GetAttribute("CardLevel"), v:GetAttribute("CardMutation"), v:GetAttribute("CardGrade"), v:GetAttribute("CardTrait"))
        end
        if #G7 < N8 then
            return 0
        end
        table.sort(G7, function(gB, gC)
            return gB > gC
        end)
        return G7[N8]
    end
    Ol = 0.35
    N6 = function(gF)
        local Hf, Hg, Hi, Hj, Hk, Hn
        local Hh = 26
        while true do
            local Hh_1 = 5414 - Hh
            do
                if Hh_1 < 5399 then
                    if Hh_1 < 5393 then
                        if Hh_1 < 5390 then
                            if Hh_1 < 5388 then
                                if Hh_1 < 2929 then
                                    break
                                elseif Hh_1 < 5386 then
                                    break
                                elseif Hh_1 < 5387 then
                                    return false
                                else
                                    Hh = 16
                                end
                            elseif Hh_1 < 5389 then
                                Hf = gF
                                Hh = if Hf then 23 else 19
                            elseif Hh_1 == 5389 then
                                return true
                            else
                                Hh = 5386
                                continue
                            end
                        elseif Hh_1 < 5391 then
                            Hh = if (Hi * 3017 + Hj * 782 + Hi * Hj) % 16777213 == 12495826 then 15 else 8
                        elseif Hh_1 < 5392 then
                            Hf = gF.part
                            Hh = 19
                        else
                            Hh = if os.clock() < Hg then 9 else 12
                        end
                    elseif Hh_1 < 5398 then
                        if Hh_1 < 5395 then
                            if Hh_1 < 5394 then
                                return #O3() > Hf
                            elseif Hh_1 == 5394 then
                                Od(gF.part, gF.prompt)
                                Hg = os.clock() + 1.25
                                Hh = 16
                            else
                                Hh = 5402
                                continue
                            end
                        elseif Hh_1 < 5396 then
                            Hk = if Hf then 1 else 0
                            Hi = 2498 * Hk + 3516 * (1 - Hk)
                            Hh = 6
                        elseif Hh_1 < 5397 then
                            if Hh_1 == 5396 then
                                Hh = if Hn <= 4 then 13 else 21
                            else
                                Hh = 5412
                                continue
                            end
                        else
                            Hh = if not gF.prompt.Parent then 14 else 2
                        end
                    elseif Hh_1 == 5398 then
                        Hh = 22
                    else
                        Hh = 5399
                        continue
                    end
                elseif Hh_1 < 5406 then
                    if Hh_1 < 5403 then
                        if Hh_1 < 5402 then
                            if Hh_1 < 5401 then
                                if Hh_1 < 5400 then
                                    if Hh_1 == 5399 then
                                        Hf = gF.prompt
                                        Hh = 8
                                    else
                                        Hh = 5394
                                        continue
                                    end
                                elseif Hh_1 == 5400 then
                                    return true
                                else
                                    Hh = 5394
                                    continue
                                end
                            elseif Hh_1 == 5401 then
                                Hh = 3
                            else
                                Hh = 5388
                                continue
                            end
                        elseif Hh_1 == 5402 then
                            Hh = 1
                        else
                            Hh = 5388
                            continue
                        end
                    elseif Hh_1 < 5404 then
                        if Hh_1 == 5403 then
                            Hf = #O3()
                            Hn = 1
                            Hh = 18
                        else
                            Hh = 5386
                            continue
                        end
                    elseif Hh_1 < 5405 then
                        if Hh_1 == 5404 then
                            Hn += 1
                            Hh = 18
                        else
                            Hh = 5407
                            continue
                        end
                    elseif Hh_1 == 5405 then
                        task.wait(0.05)
                        Hh = if #O3() > Hf then 25 else 17
                    else
                        Hh = 1480
                        continue
                    end
                elseif Hh_1 < 5413 then
                    if Hh_1 < 5409 then
                        if Hh_1 < 5407 then
                            Hh = if Hf then 4 else 0
                        elseif Hh_1 < 5408 then
                            break
                        elseif Hh_1 == 5408 then
                            Hj = 1512 * Hk + 576 * (1 - Hk)
                            Hh = 24
                        else
                            Hh = 5403
                            continue
                        end
                    elseif Hh_1 < 5411 then
                        if Hh_1 < 5410 then
                            if Hh_1 == 5409 then
                                return #O3() > Hf
                            end
                            Hh = 5403
                            continue
                        elseif Hh_1 == 5410 then
                            Hf = gF.prompt.Parent
                            Hh = 0
                        else
                            Hh = 5391
                            continue
                        end
                    elseif Hh_1 < 5412 then
                        Hh = if not gF.prompt.Parent then 5 else 20
                    elseif Hh_1 == 5412 then
                        Hh = 27
                    else
                        Hh = 5404
                        continue
                    end
                elseif Hh_1 < 5414 then
                    task.wait(Ol)
                    Hh = 10
                elseif Hh_1 < 10702 then
                    if Hh_1 == 5414 then
                        Hh = if not Hf then 28 else 11
                    else
                        Hh = 5411
                        continue
                    end
                else
                    break
                end
            end
        end
    end
    OT = function()
        local CFrame
        local Hq
        Hq = nil
        CFrame = nil
        local Ht_1
        local Hs = Pf()
        if #Hs == 0 then
            return 0
        end
        Ht_1, Hq = O6()
        if not Hq then
            return 0
        end
        table.sort(Hs, function(gT, gU)
            return gT.damage > gU.damage
        end)
        CFrame = Hq.CFrame
        local Ht_2 = 0
        local Hu = AC[27] and OW()
        local Hu_1 = Hu or 0
        for i, v in ipairs(Hs) do
            if Ht_2 >= AC[31] then
                break
            elseif v.damage <= Hu_1 then
                break
            else
                if N6(v) then
                    Ht_2 = Ht_2 + 1
                    if AC[27] then
                        Hu_1 = OW()
                    end
                end
                task.wait(math.max(AC[34], Ol))
            end
        end
        pcall(function()
            Hq.CFrame = CFrame
        end)
        return Ht_2
    end
    OF = function(g7)
        local attr = g7:GetAttribute("CardName")
        local HE = attr and AP and AP.Cards and AP.Cards[tostring(attr)]
        local HD_1 = HE
        if HE then
            HE = HD_1.Rarity
        end
        return HE
    end
    Og = function()
        local Character = LocalPlayer.Character
        local HH = Character and Character:FindFirstChildOfClass("Humanoid")
        if not HH then
            return
        end
        for i, v in ipairs(O3()) do
            if not AC[12] then
                return
            end
            local HH_1 = OF(v)
            local HJ = HH_1 and AC[51][tostring(HH_1)]
            if HJ then
                if v.Parent ~= Character then
                    HH:EquipTool(v)
                end
                task.wait(0.15)
                if v.Parent == Character then
                    pcall(function()
                        SellRE:FireServer("SellHand")
                    end)
                    task.wait(AC[36])
                end
            end
        end
    end
    O5 = false
    OU = nil
    OH = 0
    CardCraftRE.OnClientEvent:Connect(function(hx, hy)
        if type(hy) ~= "table" then
            return
        end
        local HR = hy
        if hx == "Started" or hx == "Claimed" then
            local HS_1 = type(hy.State) == "table" and hy.State
            HR = HS_1 or nil
        elseif hx ~= "State" then
            return
        end
        if not HR then
            return
        end
        O5 = HR.Active == true
        local HS_2 = tonumber(HR.ServerNow)
        if HS_2 then
            OH = HS_2 - os.clock()
        end
        local HS_3 = type(HR.Job) == "table" and HR.Job
        local HR_1 = HS_3 or nil
        local HS_4 = HR_1
        if HR_1 then
            HR_1 = tonumber(HS_4.ReadyAt)
        end
        OU = HR_1 or nil
    end)
    OC = function()
        pcall(function()
            CardCraftRE:FireServer("RequestState")
        end)
    end
    Pn = function()
        if not (O5 and OU) then
            return false
        end
        return os.clock() + OH >= OU
    end
    Ov = function(hQ)
        local H3_1
        local H2_1
        if not AI then
            return nil
        end
        H2_1, H3_1 = pcall(AI.GetRecipe, hQ)
        local H4 = H2_1 and type(H3_1) == "table" and type(H3_1.Requirements) == "table"
        if not H4 then
            return nil
        end
        local H2_2 = O3()
        local H4_1 = {}
        local H5 = {}
        for i, v in ipairs(H3_1.Requirements) do
            local H3_2 = tostring(v.CardName)
            local max = math.max
            local floor = math.floor
            local H8 = tonumber(v.Amount) or 1
            local H9 = max(1, floor(H8))
            local H6_1 = {}
            for i, v in ipairs(H2_2) do
                if #H6_1 >= H9 then
                    break
                end
                local H7_1 = not H5[v]
                if H7_1 ~= false then
                    H7_1 = tostring(v:GetAttribute("CardName")) == H3_2
                end
                if H7_1 then
                    H5[v] = true
                    H6_1[#H6_1 + 1] = v
                end
            end
            if #H6_1 < H9 then
                return nil
            end
            H4_1[i] = H6_1
        end
        return H4_1
    end
    Ot = function()
        return LocalPlayer:GetAttribute("InfinityTowerInBattle") == true
    end
    Pq = function()
        return LocalPlayer:GetAttribute("BossRaidInBattle") == true
    end
    OY = function()
        local Iq = Ot() or Pq()
        return Iq
    end
    N1 = false
    Pd = function(ij)
        local It_1
        local Is_1
        if N1 then
            return false
        end
        N1 = true
        It_1, Is_1 = pcall(ij)
        N1 = false
        local Iu = not It_1
        if Iu ~= false then
            Iu = AnimeCardFarmNotify
        end
        if Iu then
            AnimeCardFarmNotify("Battle Error", tostring(Is_1))
        end
        return It_1
    end
    Pi = function()
        local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
        local Ix = PlayerGui and PlayerGui:FindFirstChild("GuiMid")
        local Iw_1 = Ix
        if Ix then
            Ix = Iw_1:FindFirstChild("InfinityTower")
        end
        local Iw_2 = Ix
        if Ix then
            Ix = Iw_2:FindFirstChild("InfinityTowerFrame")
        end
        local Iw_3 = Ix
        if not Iw_3 then
            return nil
        end
        return Iw_3:FindFirstChild("EQUIPEBEST"), Iw_3:FindFirstChild("BATTLE")
    end
    O4 = function()
        local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
        local ID = PlayerGui and PlayerGui:FindFirstChild("InfinityTowerGui")
        local IC_1 = ID
        if ID then
            ID = IC_1:FindFirstChild("Handler")
        end
        local IC_2 = ID
        if ID then
            ID = IC_2:FindFirstChild("InfinityTowerFrame")
        end
        return ID
    end
    Pc = function()
        local IF = O4()
        local IG = IF and IF:FindFirstChild("Exit")
        return IG
    end
    Oi = function()
        local IL = O4()
        local IM = IL and IL:FindFirstChild("AutoReplay")
        return IM
    end
    OO = function()
        return AC[30]
    end
    Op = function()
        local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
        local IP = PlayerGui and PlayerGui:FindFirstChild("GuiMid")
        local IO_1 = IP
        if IP then
            IP = IO_1:FindFirstChild("InfinityTowerReward")
        end
        local IO_2 = IP
        if IP then
            IP = IO_2:FindFirstChild("InfinityTowerFrameReward")
        end
        local IO_3 = IP
        if IP then
            IP = IO_3:FindFirstChild("TOP")
        end
        local IO_4 = IP
        if IP then
            IP = IO_4:FindFirstChild("CLOSE")
        end
        return IP
    end
    OZ = function()
        local IS_1
        local IR_1
        IR_1, IS_1 = pcall(function()
            return require(ReplicatedStorage.Modules.GuiManager).isOpen("InfinityTowerReward")
        end)
        if IR_1 then
            return IS_1 == true
        end
        local IR_2 = Op()
        local IR_3 = IR_2 and IR_2.Parent and IR_2.Parent.Parent
        return IR_3 ~= nil and IR_3.Visible == true
    end
    Pk = function()
        if LocalPlayer:GetAttribute("InfinityTowerAutoReplay") ~= true then
            return
        end
        local IX = Oi()
        if not IX then
            return
        end
        N7(IX)
        local IY = 0
        while true do
            local IZ = LocalPlayer:GetAttribute("InfinityTowerAutoReplay") == true and IY < 1.5
            if IZ then
                task.wait(0.1)
                IY = IY + 0.1
                if LocalPlayer:GetAttribute("InfinityTowerAutoReplay") == true then
                    N7(IX)
                end
                continue
            end
            break
        end
    end
    O7 = function()
        if not OZ() then
            return false
        end
        local I0 = Op()
        if I0 then
            N7(I0)
        else
            pcall(function()
                require(ReplicatedStorage.Modules.GuiManager).close()
            end)
        end
        local I1 = 0
        while true do
            local I2 = OZ() and I1 < 2
            if I2 then
                task.wait(0.15)
                I1 = I1 + 0.15
                local I0_1 = Op()
                if I0_1 then
                    N7(I0_1)
                end
                continue
            end
            break
        end
        return not OZ()
    end
    Oz = function()
        Pk()
        local I4 = Ot()
        if I4 then
            local I5_1 = Pc()
            if I5_1 then
                N7(I5_1)
            end
        end
        local I5_2 = 0
        while true do
            local I6_1 = Ot() and I5_2 < 6
            if I6_1 then
                task.wait(0.2)
                I5_2 = I5_2 + 0.2
                Pk()
                if Ot() then
                    local I6_2 = Pc()
                    if I6_2 then
                        N7(I6_2)
                    end
                end
                continue
            end
            break
        end
        local I6_3 = I4 and not Ot()
        if I6_3 then
            task.wait(0.6)
        end
        local I5_3 = 0
        while I5_3 < 3 do
            if OZ() then
                O7()
            end
            local I4_1 = not Ot() and not OZ()
            if I4_1 then
                break
            end
            task.wait(0.2)
            I5_3 = I5_3 + 0.2
        end
        Pk()
        local Ja = if not Ot() then 1 else 0
        if Ja == 1 then
            task.wait(0.35)
        end
        local I4_2 = not Ot() and not OZ()
        return I4_2
    end
    OX = false
    Ps = false
    O8 = false
    OJ = function()
        pcall(function()
            BossRaidRE:FireServer("RequestState")
        end)
    end
    BossRaidRE.OnClientEvent:Connect(function(jI, jJ)
        if jI == "State" then
            if type(jJ) ~= "table" then
                return
            end
            Ps = jJ.Open == true
            O8 = jJ.AlreadyUsed == true
        elseif jI == "FightAccepted" then
            OX = false
        elseif jI == "FightRejected" then
            local Jb = type(jJ) == "table" and jJ.Reason
            local Jc = Jb or nil
            if Jc == "ALREADY_USED" then
                O8 = true
                OX = false
            else
                if Jc == "CLOSED" or Jc == "CLOSING" then
                    Ps = false
                    OX = false
                end
            end
        end
    end)
    local DisplayPopupBindable = Remotes:FindFirstChild("DisplayPopupBindable")
    local Px = DisplayPopupBindable and DisplayPopupBindable:IsA("BindableEvent")
    if Px then
        DisplayPopupBindable.Event:Connect(function(jS)
            if type(jS) ~= "string" then
                return
            end
            if jS:find("already fought the Boss", 1, true) then
                O8 = true
                OX = false
            elseif jS:find("Boss is closed", 1, true) then
                Ps = false
                OX = false
            end
        end)
    end
    OJ()
    OV = function()
        return Ps and not O8
    end
    Oh = function()
        local CashValue = LocalPlayer:FindFirstChild("CashValue")
        local Jn = CashValue and tonumber(CashValue.Value)
        return Jn or 0
    end
    OL = function()
        local GemsValue = LocalPlayer:FindFirstChild("GemsValue")
        local Jq = GemsValue and tonumber(GemsValue.Value)
        return Jq or 0
    end
    Pl = function()
        local TraitGemsValue = LocalPlayer:FindFirstChild("TraitGemsValue")
        local Jt = TraitGemsValue and tonumber(TraitGemsValue.Value)
        return Jt or 0
    end
    Os = function()
        local Jv = OI()
        local Jw = {}
        if not Jv then
            return Jw
        end
        for i, descendant in ipairs(Jv:GetDescendants()) do
            local Jv_1 = descendant.Name == "UpgradePart" and descendant.Parent and descendant.Parent.Name:match("^CardSlot%d+$")
            if Jv_1 then
                Jw[#Jw + 1] = descendant
            end
        end
        return Jw
    end
    Oc = function()
        local JE = Pq() or OX
        if JE then
            return true
        end
        if not (AC[19] and AC[16]) then
            return false
        end
        return OV()
    end
    Oj = function()
        local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
        local JH = PlayerGui and PlayerGui:FindFirstChild("GuiMid")
        local JG_1 = JH
        if JH then
            JH = JG_1:FindFirstChild("BossRaid")
        end
        return JH
    end
    OB = function()
        local JM = Oj()
        local JN = JM and JM:FindFirstChild("BossRaidFrame")
        if not JN then
            return nil
        end
        return JN:FindFirstChild("EQUIPEBEST"), JN:FindFirstChild("BATTLE")
    end
    OR = function(kz)
        local JS = Oj()
        local JT = JS and JS:FindFirstChild("DifficultyFrame")
        local JS_1 = JT
        if JT then
            JT = JS_1:FindFirstChild("ScrollingFrameDifficulty")
        end
        local JS_2 = JT
        if JT then
            JT = JS_2:FindFirstChild(kz)
        end
        local JS_3 = JT
        if JT then
            JT = JS_3:FindFirstChild("FrameButton")
        end
        return JT
    end
    Pe = function(kK)
        local JY = OR(kK)
        local JZ = JY and JY:FindFirstChild("Unselect")
        if not JZ then
            return false
        end
        return JZ.Visible == false
    end
    ConveyorRE.OnClientEvent:Connect(function(kQ, kR)
        if type(kR) ~= "table" then
            return
        end
        if kQ == "SpawnAndMoveToB" then
            local ItemId = kR.ItemId
            if ItemId then
                Aw[ItemId] = { Rarity = kR.Rarity, Mutation = kR.Mutation, Pack = kR.PackId }
            end
        elseif kQ == "PackAtB" then
            local ItemId = kR.ItemId
            local J1_1 = ItemId and Aw[ItemId]
            local J2_1 = J1_1
            if J1_1 then
                J1_1 = J2_1.Rarity
            end
            local J3 = J1_1 or kR.Rarity
            local J1_2 = J2_1
            if J1_2 then
                J1_2 = J2_1.Mutation
            end
            local J3_1 = J1_2 or kR.Mutation
            local J1_3 = J2_1
            if J1_3 then
                J1_3 = J2_1.Pack
            end
            local J2_2 = J1_3
            local Ka_1 = if J2_2 then 1 else 0
            local J8_1 = 3169 * Ka_1 + 3217 * (1 - Ka_1)
            local J9_1 = 3418 * Ka_1 + 1888 * (1 - Ka_1)
            if not ((J8_1 * 2078 + J9_1 * 1319 + J8_1 * J9_1) % 16777213 == 5147953) then
                J2_2 = kR.PackId
            end
            local J1_4 = J2_2
            local J2_3 = O1() and Or(J3, J3_1, J1_4)
            local J3_2 = ItemId
            if J3_2 then
                J3_2 = J2_3
            end
            if J3_2 then
                J3_2 = AC[3] or AC[2]
            end
            if J3_2 then
                ConveyorRE:FireServer("TryBuy", { ItemId = ItemId })
            end
            if J2_3 and AC[2] then
                AC[1] = false
                if Library and Library.Toggles and Library.Toggles.AutoSpawn then
                    Library.Toggles.AutoSpawn:SetValue(false)
                end
                if AnimeCardFarmNotify then
                    local J0_5 = J3 or "?"
                    local J2_5 = tostring(J0_5)
                    local J3_3 = J3_1 or "Normal"
                    local J4_1 = tostring(J3_3)
                    local J5_1 = J1_4 or "?"
                    AnimeCardFarmNotify("Auto Stop On Target", ("Bought target: %s | %s | %s"):format(J2_5, J4_1, tostring(J5_1)))
                end
            end
        else
            local J1_5 = kQ == "ReachedC" or kQ == "MoveToCAndDestroy"
            local J0_7 = kQ == "BoughtAndRemove"
            local J2_6 = J1_5
            local Ka_2 = if J2_6 then 1 else 0
            local J8_2 = 3391 * Ka_2 + 2034 * (1 - Ka_2)
            local J9_2 = 2172 * Ka_2 + 685 * (1 - Ka_2)
            if not ((J8_2 * 1798 + J9_2 * 3861 + J8_2 * J9_2) % 16777213 == 5071149) then
                J2_6 = J0_7
            end
            local J0_8 = kQ == "DestroyOrphanedPack"
            local J1_6 = J2_6
            local Ka_3 = if J1_6 then 1 else 0
            local J8_3 = 2407 * Ka_3 + 1104 * (1 - Ka_3)
            local J9_3 = 2927 * Ka_3 + 1630 * (1 - Ka_3)
            if not ((J8_3 * 34 + J9_3 * 3432 + J8_3 * J9_3) % 16777213 == 395378) then
                J1_6 = J0_8
            end
            if J1_6 then
                if kR.ItemId then
                    Aw[kR.ItemId] = nil
                end
            end
        end
    end)
    Pr, O9 = {}, {}
    O0 = function(lj)
        for k in pairs(A5) do
            local Kb = type(lj) == "table" and lj[k]
            local Kc = Kb
            if Kb then
                local Kd = tonumber(Kc.Remaining) or 0
                Kb = Kd > 0
            end
            if Kb then
                O9[k] = os.clock() + Kc.Remaining
            else
                O9[k] = nil
            end
        end
    end
    On = function(lp)
        local Kj = tostring(lp):match("^(%a+)Potion%d+$")
        if not (Kj and A5[Kj]) then
            return false
        end
        local Kk_1 = O9[Kj]
        local Kj_1 = Kk_1 ~= nil and Kk_1 > os.clock()
        return Kj_1
    end
    ItemsRE.OnClientEvent:Connect(function(lv, lw)
        if lv == "FullInventory" then
            if type(lw) ~= "table" then
                return
            end
            Pr = {}
            if type(lw.Items) == "table" then
                for k, v in pairs(lw.Items) do
                    Pr[k] = v
                end
            end
            O0(lw.Boosts)
        elseif lv == "ItemUpdate" then
            if type(lw) ~= "table" then
                return
            end
            local ItemId = lw.ItemId
            local Kq = lw.Quantity or 0
            Pr[ItemId] = Kq
        elseif lv == "BoostUpdate" then
            O0(lw)
        end
    end)
    pcall(function()
        ItemsRE:FireServer("Init")
    end)
    Oy = nil
    N4 = { DEBOUNCE = true, TOOL_BUSY = true, PAYMENT_FAILED = true, INTERNAL_ERROR = true }
    Ok = 0
    O_ = 0
    OK = nil
    Ph = function()
        local KC_1
        local KB = z4 and type(z4.ComputeMultiplier) == "function"
        local KB_1
        if KB then
            KB_1, KC_1 = pcall(z4.ComputeMultiplier, LocalPlayer)
            local KD = KB_1 and tonumber(KC_1)
            if KD then
                return math.max(1, tonumber(KC_1))
            end
            return 1
        end
        return 1
    end
    OS = function()
        return 0.7 / Ph()
    end
    Ow = function()
        local KI = OS() - (os.clock() - Ok)
        if KI > 0 then
            task.wait(KI)
        end
    end
    local function onOnClientEvent(lW, lX)
        if lW == "RollResult" then
            O_ = O_ + 1
            OK = "result"
            Oy = nil
        elseif lW == "RollFailed" then
            O_ = O_ + 1
            OK = "failed"
            local KK = type(lX) == "table"
            if KK then
                local KL_1 = lX.Reason or "UNKNOWN"
                KK = tostring(KL_1)
            end
            Oy = KK or "UNKNOWN"
        end
    end
    TraitRollRE.OnClientEvent:Connect(onOnClientEvent)
    GradeRollRE.OnClientEvent:Connect(onOnClientEvent)
    Oo = function(l4)
        local KN = os.clock() + 8
        while os.clock() < KN do
            if O_ ~= l4 then
                return OK, Oy
            end
            task.wait(0.03)
        end
        return nil, "TIMEOUT"
    end
    Ou = function(ma)
        local K__1
        local KZ_1
        local KP = tonumber(GradeRollRE:GetAttribute("CostGemsPerRoll")) or 1
        local KP_1 = OL()
        local KR = Oh()
        local KS = 0
        if Ax and ma then
            local GetRollCost = Ax.GetRollCost
            local KU = ma:GetAttribute("CardName") or ""
            local KV = tostring(KU)
            local KW = ma:GetAttribute("CardGrade") or "F"
            local KX = tostring(KW)
            local KY = ma:GetAttribute("CardMutation") or "Normal"
            KZ_1, K__1 = pcall(GetRollCost, KV, KX, tostring(KY))
            if KZ_1 then
                local KT_2 = tonumber(K__1) or 0
                KS = KT_2
            end
        end
        local KT_3 = KS <= 0 or KR >= KS
        local KS_1 = KP_1 >= KP
        local KP_2 = AC[45]
        if KP_2 == "Cash" then
            return KT_3 and "cash" or nil
        elseif KP_2 == "Gems" then
            return KS_1 and "gems" or nil
        elseif KS_1 then
            return "gems"
        elseif KT_3 then
            return "cash"
        else
            return nil
        end
    end
    Oq = function(mM)
        AC[23] = false
        if Library and Library.Toggles and Library.Toggles.AutoSmartRoll then
            Library.Toggles.AutoSmartRoll:SetValue(false)
        end
        AnimeCardFarmNotify("Auto Smart Roll", mM)
    end
    OG = function(mR, mS, mT)
        local Lk = not mR or N2(mT)
        if Lk then
            return false
        end
        local attr = mR:GetAttribute(mS)
        local Ll = attr and mT[tostring(attr)]
        return not Ll
    end
    Om = function(mZ)
        local Lq = tonumber(TraitRollRE:GetAttribute("CostGemsPerRoll")) or 1
        if Pl() < Lq then
            return "failed", "NOT_ENOUGH_GEMS"
        end
        Ow()
        local Lq_1 = O_
        Ok = os.clock()
        TraitRollRE:FireServer("RollTrait", { Tool = mZ })
        return Oo(Lq_1)
    end
    OP = function(m8)
        local Lt = Ou(m8)
        if not Lt then
            return "failed", "NOT_ENOUGH_CURRENCY"
        end
        Ow()
        local Lu = O_
        Ok = os.clock()
        GradeRollRE:FireServer("RollGrade", { Tool = m8, Currency = Lt })
        return Oo(Lu)
    end
    Pt = function(ni, nj, nk, nl)
        if ni == "result" then
            return "ok"
        elseif ni == "failed" then
            if N4[nj] then
                Ow()
                return "retry"
            end
            if nj == "NOT_ENOUGH_GEMS" or nj == "NOT_ENOUGH_CASH" or nj == "NOT_ENOUGH_CURRENCY" then
                nk(nl)
                return "stop"
            end
            if nj == "INVALID_TOOL" or nj == "TOOL_VANISHED" or nj == "NOT_A_CARD" then
                nk("Card disappeared. Equip a card and try again.")
                return "stop"
            end
            Ow()
            return "retry"
        else
            nk("No roll result came back.")
            return "stop"
        end
    end
    Pm = function(np, nq, nr, ns, nt, nu, nv)
        local LB_1
        while true do
            local LA = nv() and np and np.Parent and OG(np, nq, nr)
            local LA_1
            if LA then
                LB_1, LA_1 = ns(np)
                local LC = Pt(LB_1, LA_1, nt, nu)
                if LC == "stop" then
                    return false
                end
                if LC == "ok" and AC[46] > 0 then
                    task.wait(AC[46])
                end
                continue
            end
            break
        end
        return true
    end
    Ox = function(nE)
        if not fireclickdetector then
            if AnimeCardFarmNotify then
                AnimeCardFarmNotify("Auto Spawn", "fireclickdetector not supported by this executor")
            end
            return
        end
        pcall(fireclickdetector, nE)
    end
    task.spawn(function()
        while true do
            if Library and Library.Unloaded then
                break
            end
            if AC[1] then
                local LF_1 = N5()
                if LF_1 then
                    Ox(LF_1)
                end
                task.wait(AC[29])
            else
                task.wait(0.1)
            end
        end
    end)
    task.spawn(function()
        while true do
            if Library and Library.Unloaded then
                break
            end
            if AC[4] or AC[6] or AC[25] then
                local LP_2 = Oc() or Ot()
                if LP_2 or N1 then
                    task.wait(0.5)
                else
                    Pd(function()
                        local LI_1
                        local LH = Oc() or Ot()
                        local LH_1
                        if LH then
                            return
                        end
                        LH_1, LI_1 = Pi()
                        if AC[25] and not AK[1] and LI_1 then
                            OT()
                            AK[1] = true
                        end
                        if AC[4] and LH_1 then
                            N7(LH_1)
                            task.wait(0.35)
                        end
                        if AC[6] and LI_1 then
                            if Oc() then
                                return
                            end
                            N7(LI_1)
                        end
                    end)
                    task.wait(OO())
                end
            else
                task.wait(0.2)
            end
        end
    end)
    task.spawn(function()
        while true do
            if Library and Library.Unloaded then
                break
            end
            if AC[5] then
                pcall(function()
                    CardSlotRE:FireServer("EquipBest")
                end)
                local LS_1 = 0
                while AC[5] and LS_1 < AC[32] do
                    task.wait(1)
                    LS_1 = LS_1 + 1
                end
            else
                task.wait(0.5)
            end
        end
    end)
    task.spawn(function()
        local LV, LW, LX, LY, LZ, L_
        local L0 = 9
        while true do
            local L0_1 = 15426 - L0
            do
                if L0_1 < 15398 then
                    if L0_1 < 15384 then
                        if L0_1 < 15375 then
                            if L0_1 < 15373 then
                                if L0_1 < 15372 then
                                    if L0_1 < 12024 then
                                        break
                                    elseif L0_1 < 15369 then
                                        break
                                    elseif L0_1 < 15370 then
                                        if L0_1 == 15369 then
                                            LV = AC[10]
                                            L0 = 25
                                        else
                                            L0 = 15389
                                            continue
                                        end
                                    elseif L0_1 < 15371 then
                                        LW.CFrame = LV
                                        L0 = 27
                                    else
                                        Od(LY, LX)
                                        task.wait(AC[35])
                                        L0 = 6
                                    end
                                elseif L0_1 == 15372 then
                                    L0 = 45
                                else
                                    L0 = 15426
                                    continue
                                end
                            elseif L0_1 < 15374 then
                                if L0_1 == 15373 then
                                    L0 = 38
                                else
                                    L0 = 15378
                                    continue
                                end
                            elseif L0_1 == 15374 then
                                L_ = LX
                                L0 = 46
                            else
                                L0 = 15397
                                continue
                            end
                        elseif L0_1 < 15381 then
                            if L0_1 < 15378 then
                                if L0_1 < 15377 then
                                    if L0_1 < 15376 then
                                        LY, LX = Pb()
                                        LZ = 0
                                        L0 = 43
                                    else
                                        LV = AC[11]
                                        L0 = 11
                                    end
                                else
                                    LV = LW.CFrame
                                    L0 = if AC[9] then 3 else 7
                                end
                            elseif L0_1 < 15379 then
                                LV = AC[9]
                                L0 = 30
                            elseif L0_1 < 15380 then
                                L0 = if N1 then 26 else 16
                            else
                                L0 = if L_ then 28 else 29
                            end
                        elseif L0_1 < 15382 then
                            if L0_1 == 15381 then
                                L0 = 56
                            else
                                L0 = 15391
                                continue
                            end
                        elseif L0_1 < 15383 then
                            L0 = if AC[8] then 34 else 33
                        elseif L0_1 == 15383 then
                            L0 = 4
                        else
                            L0 = 15371
                            continue
                        end
                    elseif L0_1 < 15391 then
                        if L0_1 < 15388 then
                            if L0_1 < 15387 then
                                if L0_1 < 15385 then
                                    if L0_1 == 15384 then
                                        LY = LX.Parent
                                        L0 = 31
                                    else
                                        L0 = 15375
                                        continue
                                    end
                                elseif L0_1 < 15386 then
                                    L0 = if LV then 30 else 48
                                else
                                    break
                                end
                            elseif L0_1 == 15387 then
                                LV, LW = O6()
                                L0 = if LW then 49 else 27
                            else
                                L0 = 15407
                                continue
                            end
                        elseif L0_1 < 15389 then
                            L0 = 1
                        elseif L0_1 < 15390 then
                            if L0_1 == 15389 then
                                for i, v in ipairs(Oa()) do
                                    if Pj() then
                                        Od(v.part, v.prompt)
                                    else
                                        break
                                    end
                                end
                                L0 = 15
                            else
                                L0 = 15414
                                continue
                            end
                        else
                            L0 = 20
                        end
                    elseif L0_1 < 15395 then
                        if L0_1 < 15392 then
                            L_ = LZ < 60
                            L0 = 13
                        elseif L0_1 < 15394 then
                            if L0_1 < 15393 then
                                for i, v in ipairs(Pg("Open")) do
                                    Od(v.part, v.prompt)
                                end
                                L0 = 33
                            else
                                L0 = if AC[11] then 51 else 56
                            end
                        else
                            LV = AC[8]
                            L0 = 41
                        end
                    elseif L0_1 < 15396 then
                        LZ = LY
                        LY = LX
                        L0 = if LY then 0 else 8
                    elseif L0_1 < 15397 then
                        L0 = if LV then 25 else 57
                    else
                        L0 = if L_ then 35 else 13
                    end
                elseif L0_1 < 15409 then
                    if L0_1 < 15407 then
                        if L0_1 < 15406 then
                            if L0_1 < 15402 then
                                if L0_1 < 15399 then
                                    if L0_1 == 15398 then
                                        L_ = Ob()
                                        L0 = 29
                                    else
                                        L0 = 15396
                                        continue
                                    end
                                elseif L0_1 < 15401 then
                                    if L0_1 < 15400 then
                                        if L0_1 == 15399 then
                                            task.wait(AC[33])
                                            L0 = 53
                                        else
                                            L0 = 15372
                                            continue
                                        end
                                    elseif L0_1 == 15400 then
                                        task.wait(0.3)
                                        L0 = 38
                                    else
                                        L0 = 15369
                                        continue
                                    end
                                elseif L0_1 == 15401 then
                                    L0 = if LV then 11 else 50
                                else
                                    L0 = 15386
                                    continue
                                end
                            elseif L0_1 < 15404 then
                                if L0_1 < 15403 then
                                    Od(LZ, LX)
                                    L0 = 10
                                else
                                    LV = Library.Unloaded
                                    L0 = 22
                                end
                            elseif L0_1 < 15405 then
                                if L0_1 == 15404 then
                                    L0 = if LV then 5 else 47
                                else
                                    L0 = 15403
                                    continue
                                end
                            else
                                L0 = 40
                            end
                        elseif L0_1 == 15406 then
                            L0 = 14
                        else
                            L0 = 15422
                            continue
                        end
                    elseif L0_1 < 15408 then
                        if L0_1 == 15407 then
                            LZ = LZ + 1
                            L0 = if not N3() then 18 else 55
                        else
                            L0 = 15375
                            continue
                        end
                    elseif L0_1 == 15408 then
                        L0 = 45
                    else
                        L0 = 15394
                        continue
                    end
                elseif L0_1 < 15421 then
                    if L0_1 < 15415 then
                        if L0_1 < 15414 then
                            if L0_1 < 15411 then
                                if L0_1 < 15410 then
                                    L0 = 21
                                elseif L0_1 == 15410 then
                                    LV = AC[7]
                                    L0 = if LV then 41 else 32
                                else
                                    L0 = 15409
                                    continue
                                end
                            elseif L0_1 < 15412 then
                                L0 = if AC[7] then 12 else 44
                            elseif L0_1 < 15413 then
                                LV = Library
                                L0 = if LV then 23 else 22
                            else
                                L0 = if L_ then 19 else 54
                            end
                        else
                            LX = N9()
                            LY = LX
                            L0 = if LY then 42 else 31
                        end
                    elseif L0_1 < 15418 then
                        if L0_1 < 15416 then
                            if L0_1 == 15415 then
                                L0 = if LV then 39 else 2
                            else
                                L0 = 15410
                                continue
                            end
                        elseif L0_1 < 15417 then
                            L0 = 44
                        else
                            L0 = 36
                        end
                    elseif L0_1 < 15419 then
                        if L0_1 == 15418 then
                            L0 = if LY then 24 else 10
                        else
                            L0 = 15424
                            continue
                        end
                    elseif L0_1 < 15420 then
                        L0 = if AC[10] then 37 else 15
                    elseif L0_1 == 15420 then
                        L0 = 43
                    else
                        L0 = 15374
                        continue
                    end
                elseif L0_1 < 15424 then
                    if L0_1 < 15423 then
                        if L0_1 < 15422 then
                            L0 = 21
                        elseif L0_1 == 15422 then
                            L_ = LY
                            L0 = if L_ then 52 else 46
                        else
                            L0 = 15394
                            continue
                        end
                    elseif L0_1 == 15423 then
                        for i, v in ipairs(Pg("Remove")) do
                            Od(v.part, v.prompt)
                            task.wait(AC[34])
                        end
                        L0 = 7
                    else
                        L0 = 15375
                        continue
                    end
                elseif L0_1 < 15426 then
                    if L0_1 < 15425 then
                        if L0_1 == 15424 then
                            task.wait(0.2)
                            L0 = 53
                        else
                            L0 = 15400
                            continue
                        end
                    else
                        L0 = 36
                    end
                else
                    LY = LZ
                    L0 = 8
                end
            end
        end
    end)
    task.spawn(function()
        while true do
            if Library and Library.Unloaded then
                break
            end
            local Mh_1 = N1 or OY()
            if Mh_1 then
                task.wait(0.5)
            else
                local Mh_2 = AC[12] and not N2(AC[51])
                if Mh_2 then
                    Og()
                    task.wait(AC[36])
                else
                    task.wait(0.5)
                end
            end
        end
    end)
    OC()
    task.spawn(function()
        local Mn = false
        repeat
            if Library and Library.Unloaded then
                Mn = true
            else
                if AC[13] and AC[37] then
                    OC()
                    task.wait(0.5)
                    if O5 then
                        if Pn() then
                            pcall(function()
                                CardCraftRE:FireServer("Claim")
                            end)
                        end
                    else
                        local Mj = Ov(AC[37])
                        if Mj then
                            pcall(function()
                                CardCraftRE:FireServer("StartCraft", { RecipeId = AC[37], Selections = Mj })
                            end)
                        end
                    end
                    task.wait(AC[38])
                else
                    task.wait(1)
                end
            end
        until Mn
    end)
    LocalPlayer:GetAttributeChangedSignal("BossRaidInBattle"):Connect(function()
        if LocalPlayer:GetAttribute("BossRaidInBattle") ~= true then
            AK[2] = false
            OJ()
        end
    end)
    Pp = function()
        return (AC[25] or AC[18]) and AC[26]
    end
    local function Pw_2()
        if not Pp() then
            return
        end
        if not OY() then
            return
        end
        task.spawn(function()
            local Ms = 0
            while N1 and Ms < 60 do
                task.wait(0.1)
                Ms = Ms + 1
            end
            local Ms_1 = Pp() and OY()
            if Ms_1 then
                Pd(Of)
            end
        end)
    end
    LocalPlayer:GetAttributeChangedSignal("BossRaidInBattle"):Connect(Pw_2)
    LocalPlayer:GetAttributeChangedSignal("InfinityTowerInBattle"):Connect(Pw_2)
    LocalPlayer:GetAttributeChangedSignal("InfinityTowerInBattle"):Connect(function()
        if not Ot() then
            AK[1] = false
        end
    end)
    task.spawn(function()
        local MK = false
        repeat
            local MF
            if Library and Library.Unloaded then
                MK = true
            elseif AC[16] then
                if Pq() then
                    OX = false
                    task.wait(1)
                elseif N1 then
                    task.wait(0.25)
                else
                    local MG_1 = (OV())
                    if MG_1 then
                        local MH = AC[19] or not Ot()
                        MG_1 = MH
                    end
                    if MG_1 then
                        OX = true
                        MF = false
                        Pd(function()
                            local Mx = Ot()
                            local Mx_2
                            local My = Mx or OZ() or LocalPlayer:GetAttribute("InfinityTowerAutoReplay") == true
                            local My_2
                            if My then
                                if not Oz() then
                                    return
                                end
                                if Mx and AnimeCardFarmNotify then
                                    AnimeCardFarmNotify("Raid Priority", "Left the tower to run the raid.")
                                end
                            end
                            local Mx_1 = (Ot())
                            local ME = if Mx_1 then 1 else 0
                            local MC = 759 * ME + 3966 * (1 - ME)
                            local MD = 2651 * ME + 132 * (1 - ME)
                            if not ((MC * 222 + MD * 1598 + MC * MD) % 16777213 == 6416905) then
                                Mx_1 = Pq()
                            end
                            if Mx_1 then
                                return
                            end
                            Mx_2, My_2 = OB()
                            if AC[18] and not AK[2] and My_2 then
                                OT()
                                AK[2] = true
                            end
                            if not Pe(AC[40]) then
                                local Mz_2 = OR(AC[40])
                                if Mz_2 then
                                    N7(Mz_2)
                                    task.wait(0.25)
                                end
                            end
                            if AC[17] and Mx_2 then
                                N7(Mx_2)
                                task.wait(0.35)
                            end
                            if My_2 then
                                N7(My_2)
                            end
                            local Mx_3 = 0
                            while true do
                                local My_3 = Mx_3 < 4 and not Pq()
                                if My_3 then
                                    task.wait(0.25)
                                    Mx_3 = Mx_3 + 0.25
                                    continue
                                end
                                break
                            end
                            if Pq() then
                                MF = true
                                OX = false
                            else
                                AK[2] = false
                                OJ()
                            end
                        end)
                        local MG_2 = MF or Pq()
                        if MG_2 then
                            OX = false
                            task.wait(1)
                        elseif not OV() then
                            OX = false
                            task.wait(AC[39])
                        else
                            task.wait(math.min(1.5, AC[39]))
                        end
                    else
                        OX = false
                        if Ot() then
                            task.wait(1)
                        else
                            OJ()
                            task.wait(math.min(2, AC[39]))
                        end
                    end
                end
            else
                OX = false
                task.wait(0.3)
            end
        until MK
    end)
    task.spawn(function()
        while true do
            if Library and Library.Unloaded then
                break
            end
            if AC[20] then
                for i, v in ipairs(Os()) do
                    local MO_1 = tonumber(v:GetAttribute("SlotIndex"))
                    local MP = tonumber(v:GetAttribute("CardLevel")) or 1
                    local MP_1 = tonumber(v:GetAttribute("UpgradeCost")) or 0
                    local MP_2 = (N2(AC[58]))
                    if not MP_2 then
                        local MS_1 = MO_1 and AC[58][tostring(MO_1)]
                        MP_2 = MS_1
                    end
                    local MS_2 = MO_1
                    local MT = MP_2
                    if MS_2 then
                        MS_2 = MT
                    end
                    if MS_2 then
                        MS_2 = v:GetAttribute("IsActive") == true
                    end
                    if MS_2 then
                        MS_2 = v:GetAttribute("IsMaxLevel") ~= true
                    end
                    if MS_2 then
                        MS_2 = MP < AC[41]
                    end
                    if MS_2 then
                        MS_2 = AC[42] <= 0 or MP_1 <= AC[42]
                    end
                    if MS_2 then
                        MS_2 = Oh() - MP_1 >= AC[43]
                    end
                    if MS_2 then
                        CardSlotRE:FireServer("UpgradeCard", { SlotIndex = MO_1 })
                        task.wait(AC[44])
                    end
                end
                task.wait(AC[44])
            else
                task.wait(0.3)
            end
        end
    end)
    task.spawn(function()
        while true do
            if Library and Library.Unloaded then
                break
            end
            if AC[21] then
                local M0_1 = AC[59]
                if next(M0_1) ~= nil then
                    for i, v in ipairs(O3()) do
                        if v and v.Parent then
                            local attr = v:GetAttribute("CardTrait")
                            if not (attr and M0_1[attr]) then
                                TraitRollRE:FireServer("RollTrait", { Tool = v })
                            end
                        end
                    end
                end
            end
            if AC[22] then
                local M0_2 = AC[60]
                local M1_3 = string.lower(AC[45])
                if next(M0_2) ~= nil then
                    local M2_2 = { E = 1, D = 2, C = 3, B = 4, A = 5, S = 6, SS = 7, UR = 8, LR = 9, MR = 10 }
                    for i, v in ipairs(O3()) do
                        if v and v.Parent then
                            local attr = v:GetAttribute("CardGrade")
                            local M3_2 = attr and M2_2[attr] or 0
                            local M4_1 = 999
                            for k, v in pairs(M0_2) do
                                if v and M2_2[k] then
                                    if M2_2[k] < M4_1 then
                                        M4_1 = M2_2[k]
                                    end
                                end
                            end
                            if M4_1 ~= 999 and M3_2 < M4_1 then
                                GradeRollRE:FireServer("RollGrade", { Tool = v, Currency = M1_3 })
                            end
                        end
                    end
                end
            end
            task.wait(0.05)
        end
    end)
    task.spawn(function()
        local Ns_4
        local Nr_6
        while true do
            if Library and Library.Unloaded then
                break
            end
            if AC[23] then
                local Np_1 = N2(AC[59]) and N2(AC[60])
                if Np_1 then
                    Oq("Pick a target trait or grade first.")
                else
                    local Np_2 = false
                    local Nq = false
                    for i, v in ipairs(O3()) do
                        if not AC[23] then
                            break
                        end
                        if v and v.Parent then
                            local Nr_2 = tostring(v:GetAttribute("CardName"))
                            local Ns_1 = N2(AC[53]) or AC[53][Nr_2]
                            if Ns_1 then
                                if OG(v, "CardTrait", AC[59]) then
                                    Nq = true
                                    local Nr_3 = Pm(v, "CardTrait", AC[59], Om, Oq, "Not enough trait gems.", function()
                                        return AC[23]
                                    end)
                                    if not Nr_3 or not AC[23] then
                                        Np_2 = true
                                        break
                                    end
                                    local Nr_4 = AC[23] and v.Parent and OG(v, "CardGrade", AC[60])
                                    if Nr_6 then
                                        Nq = true
                                        Pm(v, "CardGrade", AC[60], OP, Oq, "Not enough cash or gems.", function()
                                            return AC[23]
                                        end)
                                        if Ns_4 then
                                            Np_2 = true
                                            break
                                        end
                                    end
                                else
                                    Nr_6 = AC[23] and v.Parent and OG(v, "CardGrade", AC[60])
                                    if Nr_6 then
                                        Nq = true
                                        local Nr_7 = Pm(v, "CardGrade", AC[60], OP, Oq, "Not enough cash or gems.", function()
                                            return AC[23]
                                        end)
                                        Ns_4 = not Nr_7 or not AC[23]
                                        if Ns_4 then
                                            Np_2 = true
                                            break
                                        end
                                    end
                                end
                            end
                        end
                    end
                    if AC[23] and not Nq and not Np_2 then
                        Oq("Every selected card already matches your targets.")
                    end
                end
                task.wait(0.05)
            else
                task.wait(0.2)
            end
        end
    end)
    task.spawn(function()
        while true do
            if Library and Library.Unloaded then
                break
            end
            local NB_1 = AC[24] and not N2(AC[52])
            if NB_1 then
                pcall(function()
                    ItemsRE:FireServer("Init")
                end)
                task.wait(0.5)
                for k in pairs(AC[52]) do
                    local NA = AU[k]
                    local NB_2 = NA and (Pr[NA] or 0) > 0 and not On(NA)
                    if NB_2 then
                        pcall(function()
                            ItemsRE:FireServer("UseItem", { ItemId = NA, Amount = 1 })
                        end)
                        task.wait(0.3)
                    end
                end
                task.wait(AC[49])
            else
                task.wait(1)
            end
        end
    end)
    task.spawn(function()
        while true do
            if Library and Library.Unloaded then
                break
            end
            local NJ_1 = AC[14] and not N2(AC[57])
            if NJ_1 then
                for k in pairs(AC[57]) do
                    local NI = AZ[k]
                    if NI then
                        pcall(function()
                            UpgradesRE:FireServer("BuyCash", { Id = NI })
                        end)
                    end
                end
                task.wait(0.5)
            else
                task.wait(0.3)
            end
        end
    end)
    task.spawn(function()
        while not (Library and Library.Unloaded) do
            if AC[15] then
                pcall(function()
                    PlayTimeRewardRE:FireServer("RequestState")
                end)
                for i = 1, At do
                    local NU = i
                    pcall(function()
                        PlayTimeRewardRE:FireServer("ClaimReward", { RewardIndex = NU })
                    end)
                end
                task.wait(30)
            else
                task.wait(1)
            end
        end
    end)
    AK[3] = Ot
    AK[4] = connection2
    AK[5] = connection
    AK[6] = O3
    task.spawn(function()
        while true do
            task.wait(2)
            if Library and Library.Unloaded then
                break
            end
            if Library and Library.Toggles and Library.Toggles.AntiAfk and Library.Toggles.AntiAfk.Value then
                local NY_2 = tick() - O2
                local NZ = tick() - ON
                if NY_2 >= 300 and NZ >= 60 then
                    pcall(OQ)
                else
                    if NY_2 < 300 and NZ >= 300 then
                        pcall(OQ)
                    end
                end
            end
        end
    end)
end
Bb_11()
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = AB, Copyable = true }, "|", An },
    Icon = 12645376577,
    Size = UDim2.fromOffset(920, 720),
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
Options = Library.Options
AnimeCardFarmNotify = function(rK, rL)
    Library:Notify({ Title = rK, Description = rL, Time = 4 })
end
AN = function(rO)
    if setclipboard then
        setclipboard(rO)
    elseif toclipboard then
        toclipboard(rO)
    end
end
onJoinDiscordForKeylessScripts = function()
    AN(AB)
    Library:Notify("Copied Discord invite to clipboard")
end
z8 = function(rU, rV)
    return string.format('<font color="%s">%s</font>', rV, rU)
end
zW = function(rX, rY, rZ)
    return string.format("<b>%s</b> %s %s", rX, '<font color="#5a6070">-</font>', z8(rY, rZ))
end
Ak = "#8b93a3"
AA = "#6ec1ff"
Au = "#e8a34d"
AF = "#7fd47f"
Ac = {
    Info = Window:AddTab("Info", "info"),
    Plot = Window:AddTab("Plot", "box"),
    Deck = Window:AddTab("Cards", "layers"),
    Battle = Window:AddTab("Battle", "swords"),
    Settings = Window:AddTab("Settings", "settings")
}
Ac.Farm = Ac.Plot:AddSubTab("Farm", "sprout")
Ac.Boxes = Ac.Plot:AddSubTab("Boxes", "archive")
Ac.Boosts = Ac.Plot:AddSubTab("Boosts", "trending-up")
Ac.Cards = Ac.Deck:AddSubTab("Cards", "layers")
Ac.Rolls = Ac.Deck:AddSubTab("Rolls", "dices")
Ac.Tower = Ac.Battle:AddSubTab("Tower", "swords")
Ac.Raid = Ac.Battle:AddSubTab("Raid", "skull")
local Bb_13 = { [Ac.Plot] = true, [Ac.Deck] = true, [Ac.Battle] = true }
local function Bc_11(r7)
    local DiscordGroup = r7:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onJoinDiscordForKeylessScripts })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onJoinDiscordForKeylessScripts })
end
for k, v in Ac do
    if not Bb_13[v] then
        Bc_11(v)
    end
end
RarityFilterDropdown, MutationFilterDropdown, PackFilterDropdown, A6, SmartCardFilterDropdown, AS, Aj, AO, Ag, Bi_1, Bd_3 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local function Bl()
    local PN
    PN = nil
    local Label, PM, PO
    PN = "Unknown"
    pcall(function()
        local PB_1
        local PA_1
        if identifyexecutor then
            PB_1, PA_1 = identifyexecutor()
            local PC = PB_1 ~= ""
            local PD = type(PB_1) == "string" and PC
            if PD then
                local PC_1 = type(PA_1) == "string" and PA_1 ~= "" and PB_1 .. " " .. PA_1
                PN = PC_1 or PB_1
            end
        end
    end)
    local AccountGroup = Ac.Info:AddLeftGroupbox("Account", "circle-user")
    AccountGroup:AddLabel(zW("User", LocalPlayer.Name, AF), true)
    AccountGroup:AddLabel('<b>Status</b> <font color="#5a6070">-</font> <font color="#7fd47f">Keyless</font>', true)
    AccountGroup:AddLabel(zW("Executor", PN, AF), true)
    local GameInfoGroup = Ac.Info:AddLeftGroupbox("Game Info", "gamepad-2")
    GameInfoGroup:AddLabel(z8(An .. " [" .. tostring(game.PlaceId) .. "]", AA), true)
    GameInfoGroup:AddLabel(zW("Place ID", tostring(game.PlaceId), AA), true)
    Label = GameInfoGroup:AddLabel('<b>Session time</b> <font color="#5a6070">-</font> <font color="#e8a34d">0s</font>', true)
    PM = tostring(game.JobId)
    local PQ = #PM > 18 and string.sub(PM, 1, 18) .. "..."
    local PQ_1 = PQ or PM
    GameInfoGroup:AddLabel(zW("Server", PQ_1, Ak), true)
    GameInfoGroup:AddButton({
        Text = "Copy join script (Job ID)",
        Func = function()
            AN(string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, PM))
            Library:Notify("Copied join script to clipboard")
        end
    })
    PO = os.clock()
    task.spawn(function()
        local PJ_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            local PI = math.floor(os.clock() - PO)
            if PI < 60 then
                PJ_1 = PI .. "s"
            elseif PI < 3600 then
                PJ_1 = string.format("%dm %ds", PI // 60, PI % 60)
            else
                PJ_1 = string.format("%dh %dm", PI // 3600, PI % 3600 // 60)
            end
            Label:SetText(zW("Session time", PJ_1, Au))
        end
    end)
    local ScriptsGroup = Ac.Info:AddRightGroupbox("Scripts", "package")
    ScriptsGroup:AddLabel('<font color="#8b93a3">Included in this hub</font>', true)
    ScriptsGroup:AddLabel('<font color="#6ec1ff">Anime Card Farm</font>', true)
    local FeaturesGroup = Ac.Info:AddRightGroupbox("Features", "list")
    FeaturesGroup:AddLabel('<font color="#6ec1ff">Pack Spawning and Buying</font>', true)
    FeaturesGroup:AddLabel('<font color="#6ec1ff">Card Slots and Boxes</font>', true)
    FeaturesGroup:AddLabel('<font color="#6ec1ff">Card Selling and Crafting</font>', true)
    FeaturesGroup:AddLabel('<font color="#e8a34d">Upgrades, Potions and Rewards</font>', true)
    FeaturesGroup:AddLabel('<font color="#e8a34d">Trait and Rank Rolling</font>', true)
    FeaturesGroup:AddLabel('<font color="#8b93a3">Infinity Tower and Boss Raid</font>', true)
    local SocialsGroup = Ac.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = onJoinDiscordForKeylessScripts })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            AN(Av)
            Library:Notify("Copied Rscripts profile to clipboard")
        end
    })
    local OuroborosHubGroup = Ac.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
    OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = onJoinDiscordForKeylessScripts })
    local FaqGroup = Ac.Info:AddRightGroupbox("FAQ", "circle-help")
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
Bl()
AS = function(s0, s1)
    if not s0 then
        return
    end
    pcall(function()
        s0:SetValues(s1)
    end)
end
Aj = fn1130
AO = fn455
Ag = fn1177
if (((not Ag or not Bd_3) and (not Bd_3 and not Ag) or (not Ag or Ag or not Ag and Bd_3)) and ((Ag or Bd_3) and (Ag or Bd_3) and (not Ag or not Ag or not Bd_3 and not Ag)) or ((Ag and not Ag or Ag and Bd_3) and (Ag and not Bd_3 and (not Bd_3 or Bd_3)) or (not Bd_3 and not Ag and (Ag or Ag) or (Bd_3 or Bd_3 or not Bd_3 and not Ag)))) and not (((not Ag or not Bd_3) and (not Bd_3 and not Ag) or (not Ag or Ag or not Ag and Bd_3)) and ((Ag or Bd_3) and (Ag or Bd_3) and (not Ag or not Ag or not Bd_3 and not Ag)) or ((Ag and not Ag or Ag and Bd_3) and (Ag and not Bd_3 and (not Bd_3 or Bd_3)) or (not Bd_3 and not Ag and (Ag or Ag) or (Bd_3 or Bd_3 or not Bd_3 and not Ag)))) then
    A6 = fn1266
else
    Bi_1 = fn1266
end
Bi_1()
fn626()
fn50()
fn942()
fn325()
fn898()
fn129()
fn400()
local function Bj()
    local QN
    local screenGui
    screenGui = nil
    QN = nil
    local QO = gethui and gethui()
    local QP = QO or game:GetService("CoreGui")
    QN = QP
    screenGui = Instance.new("ScreenGui")
    screenGui.Name = "AnimeCardFarmToggle"
    screenGui.ResetOnSpawn = false
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    screenGui.DisplayOrder = 9999
    pcall(function()
        screenGui.Parent = QN
    end)
    local imageButton = Instance.new("ImageButton")
    imageButton.Name = "ToggleButton"
    imageButton.Size = UDim2.fromOffset(46, 46)
    imageButton.Position = UDim2.new(0, 12, 0.4, 0)
    imageButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    imageButton.BackgroundTransparency = 0.2
    imageButton.AutoButtonColor = true
    imageButton.Image = "rbxassetid://18657887261"
    imageButton.ScaleType = Enum.ScaleType.Fit
    imageButton.Parent = screenGui
    local uICorner = Instance.new("UICorner")
    uICorner.CornerRadius = UDim.new(0, 10)
    uICorner.Parent = imageButton
    imageButton.MouseButton1Click:Connect(function()
        Library:Toggle()
    end)
    Library:OnUnload(function()
        screenGui:Destroy()
    end)
end
Bj()
AnimeCardFarmNotify("Anime Card Farm", "Loaded with Obsidian. Press RightShift to toggle the menu.")
