local LE = getgenv and getgenv().OuroborosHubAnimeSquadron
if LE then
    return
end
if getgenv then
    getgenv().OuroborosHubAnimeSquadron = true
end
if not game:IsLoaded() then
    game.Loaded:Wait()
end
local loader = (function(...)
    local HttpService
    local Pi
    local ReplicatedStorage
    ReplicatedStorage = nil
    Pi = nil
    HttpService = nil
    local Pk
    local VirtualUser = game:GetService("VirtualUser")
    local Pl_2
    ReplicatedStorage = game:GetService("ReplicatedStorage")
    Pi = {}
    local UserInputService = game:GetService("UserInputService")
    local Pm_2
    local Players = game:GetService("Players")
    local TweenService = game:GetService("TweenService")
    HttpService = game:GetService("HttpService")
    Pi._Players = Players
    Pi._ReplicatedStorage = ReplicatedStorage
    Pi._VirtualUser = VirtualUser
    Pi._HttpService = HttpService
    Pi._UserInputService = UserInputService
    Pi._TweenService = TweenService
    while not Players.LocalPlayer do
        Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
    end
    Pi.LocalPlayer = Players.LocalPlayer
    Pi.Remotes = ReplicatedStorage:WaitForChild("Remotes")
    Pk = function(o)
        if game.HttpGet then
            return game:HttpGet(o)
        end
        local LM = syn and syn.request
        if not LM then
            LM = http and http.request
        end
        if not LM then
            LM = http_request
        end
        if not LM then
            LM = request
        end
        local LL_2 = LM
        if LL_2 then
            local LM_1 = LL_2({ Url = o, Method = "GET" })
            return LM_1 and LM_1.Body
        end
    end
    local function Pl_1(A)
        local LQ_1
        local LP_1
        local LO
        local LV = 1
        while LV <= 8 do
            LP_1, LQ_1 = pcall(function()
                return loadstring(Pk(A))()
            end)
            if LP_1 and LQ_1 then
                LO = LQ_1
                break
            end
            task.wait(0.5)
            LV += 1
        end
        return LO
    end
    local Library = Pl_1("https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/Library.lua")
    local SaveManager = Pl_1("https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/addons/SaveManager.lua")
    local ThemeManager = Pl_1("https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/addons/ThemeManager.lua")
    Pi.Library = Library
    Pi.SaveManager = SaveManager
    Pi.ThemeManager = ThemeManager
    Pi.Options = Library.Options
    Pi.Toggles = Library.Toggles
    Pi.LoaderUrl = "https://raw.githubusercontent.com/joustingmatch/Ouroboros/main/loader.lua"
    Pi.JoinDelay = 3
    Pi.BaseFolder = "OuroborosHub/Anime Squadron"
    pcall(function()
        if makefolder and isfolder then
            for i, v in ipairs({
                "OuroborosHub",
                Pi.BaseFolder,
                Pi.BaseFolder .. "/Macros",
                Pi.BaseFolder .. "/Settings",
                Pi.BaseFolder .. "/Challenges"
            }) do
                if not isfolder(v) then
                    makefolder(v)
                end
            end
        end
    end)
    Pi.ResetFile = Pi.BaseFolder .. "/Challenges/resets.json"
    Pi.MatFarmConfigFile = Pi.BaseFolder .. "/Settings/materialconfig.json"
    Pi.AwakenConfigFile = Pi.BaseFolder .. "/Settings/awakenconfig.json"
    Pi.CraftConfigFile = Pi.BaseFolder .. "/Settings/craftconfig.json"
    Pi.DailyPeriod = 86400
    Pi.RegularPeriod = 1800
    Pi.TraitCapFile = Pi.BaseFolder .. "/Challenges/trait_caps.json"
    Pi.TraitGamemodes = {
        { mode = "Challenge", world = "Katakara Bridge", act = 1 },
        { mode = "Challenge", world = "The Hero Hunter", act = 1 },
        { mode = "Raid", world = "GT City", act = 4 },
        { mode = "Raid", world = "Eclipse (Before)", act = 4 },
        { mode = "Invasion", world = "The Lava Continent", act = 4 }
    }
    Pi.TraitCaps = {}
    Pi.InfiniteStage = { world = "Tree Hideout", act = 1, difficulty = "Hard" }
    Pi.HeroHunterStage = { world = "The Hero Hunter", act = 1 }
    Pi.UltimateEvilStage = { world = "GT City", act = 4 }
    Pi.KatakaraStage = { world = "Katakara Bridge", act = 1 }
    Pi.EclipseStage = { world = "Eclipse (Before)", act = 4 }
    Pi.InfinityTrainStage = { world = "Infinity Train", act = 4 }
    Pi.LavaContinentStage = { world = "The Lava Continent", act = 4 }
    Pi.Modes = { "Story", "Squadron", "Raid", "Invasion", "Infinite" }
    Pi.FallbackWorlds = {
        "Marine Lobby",
        "Ninja Village",
        "Katakara Wasteland",
        "GT City",
        "Katakara Bridge",
        "Eclipse",
        "Eclipse (Before)",
        "The Ice Continent",
        "The Lava Continent",
        "Infinity Train",
        "Cosmic Throne Hall"
    }
    Pi.FallbackItems = {
        "Aetherium Shard",
        "Androids Belt",
        "Apostle Iron",
        "Baras Coins",
        "Baras Eye",
        "Beast Core",
        "Beastblood Catalyst",
        "Bebys Armor",
        "Behelit",
        "Binding Cloth",
        "Bisento",
        "Black Sun Amber",
        "Bounty Tickets",
        "Bralus Remote",
        "Brand Ash",
        "Brand of Sacrifice",
        "Capsule",
        "Caskas Sword",
        "Cavalry Saber",
        "Chakra Fragment",
        "Currentbinder Rope",
        "Depthglass Bottle",
        "Divine Ember",
        "Dragon Slayer (Evo)",
        "Dragonballs",
        "Eclipse Godstone",
        "Eclipse Stone",
        "Freezers Ship",
        "Fuin Script Paper",
        "Fusion Cloth",
        "Fusion Core",
        "Gacha Bag",
        "Galaxy Shard",
        "Gems",
        "Genjutsu Fog Vial",
        "Gold",
        "Grief Lotus Core",
        "Gryphon",
        "Gunbai",
        "Headband",
        "Healing Bug",
        "Hogyoku Orb",
        "Hunters Cloth",
        "Karashi's Book",
        "Ki Crystal",
        "Ki Resonant Crystal",
        "King's Haki Residue",
        "Limitbreak Obsidian",
        "Meat",
        "Monarch Daggers",
        "Moonlit Silver",
        "Moonveil Ore",
        "Narutomaki",
        "Omega Coins",
        "Pelli",
        "Perfect Cubes",
        "Power Pole",
        "Primal Core",
        "Reroll Cubes",
        "Scouter",
        "Senzu",
        "Shinobi Bone",
        "Shuriken",
        "Spirit Quartz",
        "Stellar Ki Quartz",
        "Stormheart Core",
        "Stormwake Sailcloth",
        "Straw Hat",
        "Sword Of Resonance",
        "Trait Shards",
        "Voidsteel Fragment",
        "White Behelit",
        "XP",
        "Zeni",
        "Zenith Stone",
        "Zenkai Ore"
    }
    Pi.FallbackModeData = {
        Story = {
            ["GT City"] = 10,
            ["Marine Lobby"] = 10,
            ["Ninja Village"] = 10,
            ["Eclipse (Before)"] = 10,
            ["The Ice Continent"] = 10
        },
        Squadron = {
            ["GT City"] = 3,
            ["Marine Lobby"] = 3,
            ["Ninja Village"] = 4,
            ["Eclipse (Before)"] = 4,
            ["The Ice Continent"] = 4
        },
        Raid = { ["GT City"] = 4, ["Eclipse (Before)"] = 4 },
        Invasion = { ["The Lava Continent"] = 4 },
        Infinite = { ["Tree Hideout"] = 1 }
    }
    Pl_2, Pm_2 = pcall(function()
        return require(Pi.LocalPlayer.PlayerScripts.Client.Utility)
    end)
    local Pl_3 = Pl_2 and Pm_2 or nil
    Pi.Utility = Pl_3
    Pi.remote = function(S, T)
        local L5 = Pi.Remotes:FindFirstChild(S)
        local L6 = L5 and L5:FindFirstChild(T)
        return L6
    end
    Pi.childrenNames = function(X, Y, Z)
        local L8 = ReplicatedStorage:FindFirstChild(Y)
        if not L8 then
            return Z
        end
        local L9 = {}
        for i, child in ipairs(L8:GetChildren()) do
            table.insert(L9, child.Name)
        end
        if #L9 == 0 then
            return Z
        end
        table.sort(L9)
        return L9
    end
    Pi.itemNames = function(af, ag, ah)
        local Mm_1
        local Ml_1
        local Mk = ReplicatedStorage:FindFirstChild(ag)
        if not Mk then
            return ah
        end
        Ml_1, Mm_1 = {}, {}
        for i, descendant in ipairs(Mk:GetDescendants()) do
            local Mk_1 = descendant.Name ~= "data" and descendant:FindFirstChild("data") and not Ml_1[descendant.Name]
            if Mk_1 then
                Ml_1[descendant.Name] = true
                table.insert(Mm_1, descendant.Name)
            end
        end
        if #Mm_1 == 0 then
            return ah
        end
        table.sort(Mm_1)
        return Mm_1
    end
    Pi.buildModeData = function()
        local Mu_1
        local Mv_1
        Mu_1, Mv_1 = pcall(function()
            return require(Pi.LocalPlayer.PlayerScripts.Client.Play.Worlds)
        end)
        local Mw = not Mu_1 or type(Mv_1) ~= "table"
        if Mw then
            return Pi.FallbackModeData
        end
        local Mu_2 = { Story = {}, Squadron = {}, Raid = {}, Invasion = {}, Infinite = {} }
        for k, v in pairs(Mv_1) do
            local Mv_2 = type(v) == "table" and v.name and v.Rewards
            if Mv_2 then
                for k, v2 in pairs(v.Rewards) do
                    local Mv_3 = Mu_2[k] and type(v2) == "table"
                    if Mv_3 then
                        local Mv_4 = v2.Normal or v2.Hard
                        local Mv_5 = Mu_2[k]
                        local name = v.name
                        local My = type(Mv_4) == "table" and #Mv_4
                        local Mw_2 = My or 1
                        Mv_5[name] = Mw_2
                    end
                end
            end
        end
        for i, v in ipairs(Pi.Modes) do
            if not next(Mu_2[v]) then
                Mu_2[v] = Pi.FallbackModeData[v]
            end
        end
        return Mu_2
    end
    Pi.buildWorldRewards = function()
        local MU_1
        local MT_1
        MT_1, MU_1 = pcall(function()
            return require(Pi.LocalPlayer.PlayerScripts.Client.Play.Worlds)
        end)
        local MV = not MT_1 or type(MU_1) ~= "table"
        if MV then
            return {}
        end
        local MT_2 = {}
        for k, v in pairs(MU_1) do
            local MU_2 = type(v) == "table" and v.name and v.Rewards
            if MU_2 then
                MT_2[v.name] = v.Rewards
            end
        end
        return MT_2
    end
    Pi.WorldNames = Pi:childrenNames("Worlds", Pi.FallbackWorlds)
    Pi.ItemNames = Pi:itemNames("Items", Pi.FallbackItems)
    Pi.ModeData = Pi:buildModeData()
    Pi.WorldRewards = Pi:buildWorldRewards()
    Pi.stagesFor = function(aR, aS)
        local M5_1
        local M3 = Pi.ModeData[aS] or {}
        local M3_1
        local M2_1 = {}
        for k in pairs(M3) do
            table.insert(M2_1, k)
        end
        table.sort(M2_1)
        M3_1, M5_1 = {}, {}
        for i, v in ipairs(M2_1) do
            local M2_2 = M3[v] or 1
            local Nk = 1
            while Nk <= M2_2 do
                local Nl = Nk
                local M2_3 = v .. " - Act " .. Nl
                table.insert(M3_1, M2_3)
                M5_1[M2_3] = { world = v, act = Nl }
                Nk += 1
            end
        end
        if #M3_1 == 0 then
            table.insert(M3_1, "N/A")
        end
        return M3_1, M5_1
    end
    Pi.stageMaterials = function(a3, a4, a5, a6, a7)
        local Nn = Pi.WorldRewards[a5]
        local No = not Nn or type(Nn[a4]) ~= "table"
        if No then
            return Pi.ItemNames
        end
        local No_1 = Nn[a4][a6] or Nn[a4].Normal or Nn[a4].Hard
        if type(No_1) ~= "table" then
            return Pi.ItemNames
        end
        local No_2 = No_1[a7]
        if type(No_2) ~= "table" then
            return Pi.ItemNames
        end
        local Nn_2 = {}
        for k in pairs(No_2) do
            table.insert(Nn_2, k)
        end
        if #Nn_2 == 0 then
            return Pi.ItemNames
        end
        table.sort(Nn_2)
        return Nn_2
    end
    Pi.itemCount = function(bg, bh)
        local Nx = Pi.Utility and Pi.Utility.data
        if not Nx then
            return 0
        end
        local Nz = Nx.stats and Nx.stats[bh]
        local ND = if Nz then 1 else 0
        local NB = 544 * ND + 943 * (1 - ND)
        local NC = 978 * ND + 3353 * (1 - ND)
        if not ((NB * 2751 + NC * 2270 + NB * NC) % 16777213 == 4248636) then
            Nz = Nx.items and Nx.items[bh]
        end
        return Nz or 0
    end
    Pi.readResets = function()
        local NH_1
        local NG_1
        NG_1, NH_1 = pcall(function()
            local NE = isfile and isfile(Pi.ResetFile)
            if NE then
                return HttpService:JSONDecode(readfile(Pi.ResetFile))
            end
        end)
        local NI = NG_1 and type(NH_1) == "table"
        if NI then
            return NH_1
        end
        return {}
    end
    Pi.writeResets = function(by, bz)
        pcall(function()
            if writefile then
                writefile(Pi.ResetFile, HttpService:JSONEncode(bz))
            end
        end)
    end
    Pi.windowIndex = function(bF, bG, bH, bI)
        local NL_1 = bH and bH % bI or 0
        return math.floor((bG - NL_1) / bI)
    end
    Pi.traitCapKey = function(bL, bM, bN, bO)
        return (string.lower(bM .. " " .. bN .. " " .. tostring(bO) .. " Trait Shards"):gsub(" ", "_"))
    end
    Pi.loadTraitCaps = function()
        local NX_1
        local NW_1
        NW_1, NX_1 = pcall(function()
            local NR = isfile and isfile(Pi.TraitCapFile)
            if NR then
                return Pi._HttpService:JSONDecode(readfile(Pi.TraitCapFile))
            end
        end)
        local NY = NW_1 and type(NX_1) == "table"
        if NY then
            Pi.TraitCaps = NX_1
        end
    end
    Pi.refreshTraitCaps = function()
        local N8_1
        local N7_1
        N7_1, N8_1 = pcall(function()
            return require(Pi.LocalPlayer.PlayerScripts.Client.Play.Worlds)
        end)
        local N9 = not N7_1
        local Od = if N9 then 1 else 0
        local Ob = 558 * Od + 771 * (1 - Od)
        local Oc = 2998 * Od + 3817 * (1 - Od)
        if not ((Ob * 2273 + Oc * 2766 + Ob * Oc) % 16777213 == 11233686) then
            N9 = type(N8_1) ~= "table"
        end
        if N9 then
            return
        end
        local N6 = {}
        for i, v in ipairs(Pi.TraitGamemodes) do
            local N7_2 = nil
            for k, v2 in pairs(N8_1) do
                local N9_1 = type(v2) == "table" and v2.name == v.world
                if N9_1 then
                    N7_2 = k
                    break
                end
            end
            local N9_2 = N7_2 ~= nil and N8_1[N7_2]
            local N7_3 = N9_2
            if N9_2 then
                N9_2 = type(N7_3.Rewards) == "table"
            end
            if N9_2 then
                N9_2 = N7_3.Rewards[v.mode]
            end
            local N7_4 = N9_2
            if type(N7_4) == "table" then
                for k, v2 in pairs(N7_4) do
                    local N7_5 = type(v2) == "table" and v2[v.act]
                    local N7_6 = type(N7_5) == "table" and N7_5["Trait Shards"]
                    local N7_7 = type(N7_6) == "table" and N7_6.cap
                    if N7_7 then
                        N6[Pi:traitCapKey(v.mode, v.world, v.act)] = N7_6.cap
                        break
                    end
                end
            end
        end
        if next(N6) then
            Pi.TraitCaps = N6
            pcall(function()
                if writefile then
                    writefile(Pi.TraitCapFile, Pi._HttpService:JSONEncode(N6))
                end
            end)
        end
    end
    Pi.traitStageMaxed = function(cl, cm, cn, co)
        if not (cm and cn and co) then
            return false
        end
        local Ow_1 = Pi:traitCapKey(cm, cn, co)
        local Ox_1 = Pi.TraitCaps[Ow_1]
        if not Ox_1 then
            return false
        end
        local Oy = Pi.Utility and Pi.Utility.data and Pi.Utility.data.caps
        local Oz = Oy
        if Oy then
            Oy = Oz[Ow_1]
        end
        return (Oy or 0) >= Ox_1
    end
    Pi:loadTraitCaps()
    pcall(function()
        Pi:refreshTraitCaps()
    end)
    Pi.dailyChallengeDone = function()
        local OE = Pi.Utility and Pi.Utility.data and Pi.Utility.data.seeds
        local OF = OE
        if OE then
            OE = OF.daily_challenges
        end
        local OG = OE
        if type(OG) ~= "table" then
            return false
        end
        local daily = OF.daily
        for i, v in ipairs(OG) do
            if tostring(v) == tostring(daily) then
                return true
            end
        end
        return false
    end
    Pi.regularChallengeDone = function()
        local OR = Pi.Utility and Pi.Utility.data and Pi.Utility.data.seeds
        local OS = OR
        if OR then
            OR = OS.daily_challenges
        end
        local OT = OR
        if type(OT) ~= "table" then
            return false
        end
        local hourly = OS.hourly
        for i, v in ipairs(OT) do
            if tostring(v) == tostring(hourly) then
                return true
            end
        end
        return false
    end
    Pi.sortedChapters = function(cO, cP)
        local O6 = {}
        local O8 = Pi.ModeData[cP] or {}
        for k in pairs(O8) do
            table.insert(O6, k)
        end
        table.sort(O6)
        if #O6 == 0 then
            table.insert(O6, "N/A")
        end
        return O6
    end
    Pi.difficultiesFor = function(cT, cU)
        if cU == "Infinite" then
            return { "Hard" }
        end
        return { "Normal", "Hard" }
    end
    Pi.fireRemote = function(cV, cW, cX)
        local Pf = Pi.remote(cW, cX)
        if Pf then
            Pf:FireServer()
        end
    end
    Pi.Resets = Pi:readResets()
    Pi.startNow = workspace:GetServerTimeNow()
    Pi.lastDailyWindow = Pi:windowIndex(Pi.startNow, Pi.Resets.dailyEpoch, Pi.DailyPeriod) - 1
    Pi.lastRegularWindow = Pi:windowIndex(Pi.startNow, Pi.Resets.regularEpoch, Pi.RegularPeriod) - 1
    return Pi
end)()
if not loader then
    error("AnimeSquadron: core failed to load", 0)
end
if not (loader.Library and loader.SaveManager and loader.ThemeManager) then
    error("AnimeSquadron: failed to fetch UI library (network/executor issue), please retry", 0)
end
local LF_1 = 3
repeat
    local LG = {
        "iozohn",
        "kvznuywbc",
        "iiixujuvz",
        "vjvkvpngihh",
        "lbdcrcrhi",
        "laygy",
        "lmgzfm",
        "nhmrorubllxp"
    }
    if LG[(LF_1 * 30 + 30) % 8 + 1] < LG[(LF_1 * 30 + 30) % 8 + 1] then
        (function(...)
            local Pv = ...
            local Library = Pv.Library
            local Window = Library:CreateWindow({
                Title = "Anime Squadron",
                Icon = "rbxthumb://type=Asset&id=774125543&w=150&h=150",
                Footer = "Ouroboros Hub",
                Center = true,
                AutoShow = true,
                Resizable = true,
                EnableSidebarResize = true,
                ShowCustomCursor = false,
                Size = UDim2.fromOffset(960, 720)
            })
            Pv.Window = Window
            local Px = {
                Main = Window:AddTab("Main", "swords"),
                Gameplay = Window:AddTab("Gameplay", "gamepad-2"),
                Macro = Window:AddTab("Macro", "list-video"),
                Shop = Window:AddTab("Shop", "shopping-cart"),
                Webhook = Window:AddTab("Webhook", "webhook"),
                Bounty = Window:AddTab("Bounty", "target"),
                Data = Window:AddTab("Data", "database"),
                Settings = Window:AddTab("Settings", "settings")
            }
            Pv.Tabs = Px
            local Pu = "https://discord.gg/ehKVq7pf7v"
            for k, v in pairs(Px) do
                v:AddLeftGroupbox("Discord"):AddButton("Join Discord for Dupes & Keyless Scripts", function()
                    local Pq = setclipboard or toclipboard
                    if not Pq then
                        Pq = syn and syn.write_clipboard
                    end
                    local Pr_4 = Pq
                    if Pr_4 then
                        Pr_4(Pu)
                    end
                    Library:Notify({ Title = "Ouroboros Hub", Description = "Discord link copied to clipboard!", Time = 3 })
                end)
                if v == Px.Main then
                    local MasterControlGroup = v:AddLeftGroupbox("Master Control")
                    MasterControlGroup:AddToggle("MasterStartMap", {
                        Text = '<font color="#FF3333">Enable Start Map</font>',
                        Default = false,
                        Tooltip = "When OFF: The script stays in the Lobby and pauses all auto-joining. Configure your settings safely, then turn ON to start matches."
                    })
                    MasterControlGroup:AddSlider("DelayStartRoom", {
                        Text = "Delay Start Match",
                        Min = 0,
                        Max = 30,
                        Default = 0,
                        Rounding = 0,
                        Suffix = "s",
                        Tooltip = "Wait this many seconds after creating a room before starting the match (useful for playing with friends or alts)."
                    })
                end
            end
        end)(loader);
        (function(...)
            local dh = ...
            local Tabs = dh.Tabs
            local function dj()
                local PF
                PF = nil
                local Remotes = dh.Remotes
                local PG_4
                local PH = Remotes
                local PH_2
                if PH then
                    local PI_3 = Remotes:FindFirstChild("Player") or Remotes:FindFirstChild("Players")
                    PH = PI_3
                end
                local PG_3 = PH
                if PH then
                    PH = PG_3:FindFirstChild("get")
                end
                PF = PH
                if not PF then
                    return nil
                end
                PG_4, PH_2 = pcall(function()
                    return PF:InvokeServer()
                end)
                local PI_4 = PG_4 and type(PH_2) == "table"
                if PI_4 then
                    return PH_2
                end
                return nil
            end
            local function dx(dy)
                local PK = {}
                if type(dy) == "table" then
                    for k, v in pairs(dy) do
                        local PL = type(v) == "table" and v.name
                        if PL then
                            local name = v.name
                            local PM = PK[v.name] or 0
                            PK[name] = PM + 1
                        end
                    end
                end
                return PK
            end
            local function dD(dE, dF)
                local PU = {}
                for k, v in pairs(dE) do
                    local PV_4 = type(v) == "number" and (dF or v > 0)
                    if PV_4 then
                        table.insert(PU, k)
                    end
                end
                table.sort(PU)
                local PV_5 = {}
                for i, v in ipairs(PU) do
                    table.insert(PV_5, v .. ": " .. tostring(dE[v]))
                end
                local PU_2 = #PV_5 > 0 and table.concat(PV_5, "\n")
                return PU_2 or "Empty."
            end
            local ItemsGroup = Tabs.Data:AddLeftGroupbox("Items")
            local Label3 = ItemsGroup:AddLabel("Loading...", true)
            local GearsGroup = Tabs.Data:AddLeftGroupbox("Gears")
            local Label2 = GearsGroup:AddLabel("Loading...", true)
            local UnitsGroup = Tabs.Data:AddRightGroupbox("Units")
            local Label = UnitsGroup:AddLabel("Loading...", true)
            local function onRefresh()
                local P9 = dj()
                if not P9 then
                    Label3:SetText("Unavailable.")
                    Label2:SetText("Unavailable.")
                    Label:SetText("Unavailable.")
                    return
                end
                local Qa = {}
                if type(P9.items) == "table" then
                    for k, v in pairs(P9.items) do
                        Qa[k] = v
                    end
                end
                local Qb = type(P9.stats) == "table" and P9.stats["Trait Shards"]
                if Qb then
                    Qa["Trait Shards"] = P9.stats["Trait Shards"]
                end
                Label3:SetText(dD(Qa, false))
                Label2:SetText(dD(dx(P9.gear), true))
                Label:SetText(dD(dx(P9.characters), true))
            end
            ItemsGroup:AddButton("Refresh", onRefresh)
            task.spawn(function()
                while true do
                    pcall(onRefresh)
                    task.wait(5)
                end
            end)
        end)(loader);
        (function(...)
            local RB
            local remote
            local Rx
            local Label
            local Rt
            local LocalPlayer
            local Rw
            local RD
            local Toggles
            local _Players
            local Library
            local Ry
            local Options
            Rt = nil
            Options = nil
            _Players = nil
            Rw = nil
            Rx = nil
            Ry = nil
            Toggles = nil
            LocalPlayer = nil
            RB = nil
            Library = nil
            RD = nil
            Label = nil
            remote = nil
            Ry = ...
            Library = Ry.Library
            Options = Ry.Options
            Toggles = Ry.Toggles
            local Tabs = Ry.Tabs
            _Players = Ry._Players
            LocalPlayer = Ry.LocalPlayer
            remote = Ry.remote
            Rw = false
            RB = function(ee, ef, eg)
                local Qn_2
                if Toggles.MasterStartMap and not Toggles.MasterStartMap.Value then
                    return false
                end
                local Qk_7 = eg and not eg()
                if Qk_7 then
                    return false
                end
                local Qk_8 = remote("Play", "create_room")
                local Ql = remote("Play", "start")
                local Qm = Qk_8 and Ql
                local Qm_4
                if not Qm then
                    if not Rw then
                        Rw = true
                        Library:Notify({ Title = "Auto Join", Description = "Joining is only available from the lobby.", Time = 3 })
                    end
                    return false
                end
                Rw = false
                local Qm_3 = Toggles.OnlyFriends.Value or nil
                ee.only_friends = Qm_3
                Qm_4, Qn_2 = Qk_8:InvokeServer(ee)
                if not Qm_4 then
                    Library:Notify({ Title = "Auto Join", Description = tostring(Qn_2), Time = 4 })
                    return false
                elseif ef then
                    local Qk_9 = remote("Matchmaking", "find_match")
                    if not Qk_9 then
                        return false
                    end
                    return Qk_9:InvokeServer(ee) == true
                else
                    if Options.DelayStartRoom and Options.DelayStartRoom.Value > 0 then
                        task.wait(Options.DelayStartRoom.Value)
                    end
                    local Qk_11 = eg and not eg()
                    if Qk_11 then
                        return false
                    end
                    if Toggles.MasterStartMap and not Toggles.MasterStartMap.Value then
                        return false
                    end
                    return Ql:InvokeServer() == true
                end
            end
            Ry.joinRoom = RB
            local AutoJoinMapGroup = Tabs.Main:AddLeftGroupbox("Auto Join Map")
            AutoJoinMapGroup:AddDropdown("Mode", { Text = "Mode", Values = Ry.Modes, Default = 1 })
            AutoJoinMapGroup:AddDropdown("Chapter", { Text = "Chapter", Values = Ry:sortedChapters("Story"), Default = 1 })
            AutoJoinMapGroup:AddDropdown("Act", { Text = "Act", Values = { "1" }, Default = 1 })
            AutoJoinMapGroup:AddDropdown("Difficulty", { Text = "Difficulty", Values = Ry:difficultiesFor("Story"), Default = 1 })
            local function RI()
                local Qp_2 = (Ry.ModeData[Options.Mode.Value] or {})[Options.Chapter.Value]
                local Qv = if Qp_2 then 1 else 0
                local Qt = 1883 * Qv + 3704 * (1 - Qv)
                local Qu = 3001 * Qv + 722 * (1 - Qv)
                if not ((Qt * 3106 + Qu * 434 + Qt * Qu) % 16777213 == 12801915) then
                    Qp_2 = 1
                end
                local Qq_2 = {}
                local Qr = Qp_2
                local Qy = 1
                while Qy <= Qr do
                    local Qz = Qy
                    table.insert(Qq_2, tostring(Qz))
                    Qy += 1
                end
                Options.Act:SetValues(Qq_2)
                if table.find(Qq_2, Options.Act.Value) then
                    Options.Act:SetValue(Options.Act.Value)
                else
                    Options.Act:SetValue(Qq_2[1])
                end
            end
            local function RJ()
                local Value = Options.Mode.Value
                local QC = Ry:sortedChapters(Value)
                Options.Chapter:SetValues(QC)
                if table.find(QC, Options.Chapter.Value) then
                    Options.Chapter:SetValue(Options.Chapter.Value)
                else
                    Options.Chapter:SetValue(QC[1])
                end
                local QC_2 = Ry:difficultiesFor(Value)
                Options.Difficulty:SetValues(QC_2)
                if table.find(QC_2, Options.Difficulty.Value) then
                    Options.Difficulty:SetValue(Options.Difficulty.Value)
                else
                    Options.Difficulty:SetValue(QC_2[1])
                end
            end
            Options.Mode:OnChanged(RJ)
            Options.Chapter:OnChanged(RI)
            RJ()
            RI = function()
                local Value2 = Options.Mode.Value
                local QH = Toggles.AutoMatchmake and Toggles.AutoMatchmake.Value
                local function QI()
                    return Toggles.AutoJoin and Toggles.AutoJoin.Value
                end
                if Value2 == "Infinite" then
                    return RB({
                        world = Ry.InfiniteStage.world,
                        act = Ry.InfiniteStage.act,
                        mode = "Infinite",
                        difficulty = Ry.InfiniteStage.difficulty
                    }, QH, QI)
                end
                local Value = Options.Chapter.Value
                local QK = tonumber(Options.Act.Value) or 1
                return RB({ world = Value, act = QK, mode = Value2, difficulty = Options.Difficulty.Value }, QH, QI)
            end
            Ry.attemptAutoJoinMap = RI
            AutoJoinMapGroup:AddToggle("AutoJoin", { Text = "Auto Join Map", Default = false })
            AutoJoinMapGroup:AddToggle("AutoMatchmake", { Text = "Auto Matchmake", Default = false })
            AutoJoinMapGroup:AddToggle("OnlyFriends", { Text = "Only Friends", Default = false })
            Rx = {}
            local RH_3 = remote("Play", "update_lobby")
            if RH_3 then
                RH_3.OnClientEvent:Connect(function(eR)
                    Rx = eR or {}
                end)
            end
            RD = function()
                local QP = {}
                for i, player in ipairs(_Players:GetPlayers()) do
                    if player ~= LocalPlayer then
                        table.insert(QP, player.Name)
                    end
                end
                table.sort(QP)
                return QP
            end
            Rt = function(e_)
                for k, v in pairs(Rx) do
                    if type(v.players) == "table" then
                        for i, v in ipairs(v.players) do
                            if v.Name == e_ then
                                return k
                            end
                        end
                    end
                end
            end
            local JoinPlayerGroup = Tabs.Main:AddLeftGroupbox("Join Player")
            Label = JoinPlayerGroup:AddLabel("Player: None")
            JoinPlayerGroup:AddDropdown("TargetPlayer", { Text = "Join Player", Values = RD(), AllowNull = true, Multi = false })
            Options.TargetPlayer:OnChanged(function()
                local Rc = Options.TargetPlayer.Value
                local Rg = if Rc then 1 else 0
                local Re = 2227 * Rg + 2473 * (1 - Rg)
                local Rf = 3472 * Rg + 81 * (1 - Rg)
                if not ((Re * 2664 + Rf * 411 + Re * Rf) % 16777213 == 15091864) then
                    Rc = "None"
                end
                Label:SetText("Player: " .. Rc)
            end)
            JoinPlayerGroup:AddButton("Refresh Player List", function()
                Options.TargetPlayer:SetValues(RD())
            end)
            JoinPlayerGroup:AddButton("Clear Target", function()
                Options.TargetPlayer:SetValue(nil)
            end)
            JoinPlayerGroup:AddToggle("AutoJoinPlayer", {
                Text = "Auto Join Player",
                Default = false,
                Callback = function(fc)
                    if not fc then
                        return
                    end
                    task.spawn(function()
                        local Rl_2
                        local JoinDelay = Ry.JoinDelay
                        local Rh_5
                        local Rp = JoinDelay
                        local Ro = -1
                        while true do
                            if false and Rp <= 1 or true and Rp >= 1 then
                                if not Toggles.AutoJoinPlayer.Value then
                                    break
                                end
                                task.wait(1)
                                Rp += Ro
                                continue
                            end
                            while Toggles.AutoJoinPlayer.Value do
                                local Value = Options.TargetPlayer.Value
                                local Ri = false
                                local Rj = remote("Play", "join")
                                if Value and Rj then
                                    local Rk_2 = Rt(Value)
                                    if Rk_2 then
                                        Rh_5, Rl_2 = Rj:InvokeServer(Rk_2)
                                        if Rh_5 then
                                            Ri = true
                                        else
                                            Library:Notify({ Title = "Join Player", Description = tostring(Rl_2), Time = 4 })
                                        end
                                    end
                                end
                                local wait = task.wait
                                local Ri_2 = Ri and 10 or 4
                                wait(Ri_2)
                            end
                            return
                        end
                        return
                    end)
                end
            })
        end)(loader);
        (function(...)
            local Sk
            local Toggles
            local remote
            local Sq
            local Sm
            local Sp
            local Options
            local Library
            Sk = nil
            Options = nil
            Sm = nil
            remote = nil
            Library = nil
            Sp = nil
            Sq = nil
            Toggles = nil
            Sq = ...
            Library = Sq.Library
            Options = Sq.Options
            Toggles = Sq.Toggles
            local Tabs = Sq.Tabs
            remote = Sq.remote
            Sk = { [1] = "Cosmic Throne Hall", [2] = 1, [3] = "Event", [4] = "Normal" }
            local BorosEventGroup = Tabs.Main:AddLeftGroupbox("Boros Event")
            BorosEventGroup:AddToggle("BorosMatchmake", { Text = "Auto Matchmake", Default = false })
            BorosEventGroup:AddToggle("BorosLeaveLowPlayers", { Text = "Auto Leave if Players Less Than", Default = false })
            BorosEventGroup:AddInput("BorosMinPlayers", { Text = "Min Players", Numeric = true, Default = "2", Finished = true })
            BorosEventGroup:AddToggle("BorosLeaveOnFail", { Text = "Auto Leave on Fail", Default = false })
            Sp = 0
            Sm = function()
                if Toggles.MasterStartMap and not Toggles.MasterStartMap.Value then
                    return false
                end
                local RL_5 = remote("Play", "create_room")
                local RM = remote("Play", "start")
                local RN = RL_5 and RM
                local RN_5
                if not RN then
                    Library:Notify({ Title = "Boros Event", Description = "Joining is only available from the lobby.", Time = 3 })
                    return false
                end
                local RN_4 = Sk[1]
                local RO = Sk[2]
                local RO_2
                local RR_2 = {
                    world = RN_4,
                    act = RO,
                    mode = Sk[3],
                    difficulty = Sk[4],
                    only_friends = Toggles.OnlyFriends and Toggles.OnlyFriends.Value or nil
                }
                RN_5, RO_2 = RL_5:InvokeServer(RR_2)
                if not RN_5 then
                    Library:Notify({ Title = "Boros Event", Description = tostring(RO_2), Time = 4 })
                    return false
                end
                if Toggles.BorosMatchmake and Toggles.BorosMatchmake.Value then
                    local RL_7 = remote("Matchmaking", "find_match")
                    if not RL_7 then
                        return false
                    end
                    local RN_6 = RL_7:InvokeServer(RR_2) == true
                    if RN_6 then
                        Sp = os.clock() + 3
                    end
                    return RN_6
                end
                if Options.DelayStartRoom and Options.DelayStartRoom.Value > 0 then
                    task.wait(Options.DelayStartRoom.Value)
                end
                return RM:InvokeServer() == true
            end
            BorosEventGroup:AddToggle("AutoJoinBoros", {
                Text = "Auto Join Boros Event",
                Default = false,
                Callback = function(fV)
                    if not fV then
                        return
                    end
                    task.spawn(function()
                        local R2 = Sq.JoinDelay
                        local R1 = -1
                        while false and R2 <= 1 or true and R2 >= 1 do
                            local R3 = R2
                            if not Toggles.AutoJoinBoros.Value then
                                return
                            end
                            Library:Notify({ Title = "Boros Event", Description = "Joining in " .. R3 .. "s...", Time = 1 })
                            task.wait(1)
                            R2 += R1
                        end
                        while Toggles.AutoJoinBoros.Value do
                            local RX_3 = Sm()
                            local RX_4 = RX_3 and 10 or 4
                            task.wait(RX_4)
                        end
                    end)
                end
            })
            local Ss_3 = remote("Play", "setup_players")
            if Ss_3 then
                Ss_3.OnClientEvent:Connect(function(fZ)
                    if not (Toggles.BorosLeaveLowPlayers and Toggles.BorosLeaveLowPlayers.Value) then
                        return
                    end
                    if os.clock() < Sp then
                        return
                    end
                    local R6_4 = fZ and fZ.players
                    if type(R6_4) ~= "table" then
                        return
                    end
                    local R6_5 = tonumber(Options.BorosMinPlayers.Value)
                    if R6_5 and #R6_4 < R6_5 then
                        local R6_6 = remote("Play", "leave")
                        if R6_6 then
                            R6_6:FireServer()
                        end
                    end
                end)
            end
            local Ss_4 = remote("Game", "ending")
            if Ss_4 then
                Ss_4.OnClientEvent:Connect(function(ga, gb)
                    if Toggles.BorosLeaveOnFail and Toggles.BorosLeaveOnFail.Value and gb == false then
                        Sq:fireRemote("Players", "teleport")
                    end
                end)
            end
        end)(loader);
        (function(...)
            local Tg
            local Tc
            local Library
            local Options
            local Toggles
            local Td
            local Tb
            Library = nil
            Tb = nil
            Tc = nil
            Td = nil
            Toggles = nil
            Tg = nil
            Options = nil
            local remote, Te
            Tc = ...
            Library = Tc.Library
            Options = Tc.Options
            Toggles = Tc.Toggles
            local Tabs = Tc.Tabs
            remote = Tc.remote
            local ChallengeConfigurationGroup = Tabs.Main:AddLeftGroupbox("Challenge Configuration")
            ChallengeConfigurationGroup:AddDropdown("IgnoreDailyMap", {
                Text = "Ignore Daily Map",
                Values = Tc.WorldNames,
                Default = {},
                Multi = true,
                Searchable = true,
                AllowNull = true
            })
            ChallengeConfigurationGroup:AddDropdown("IgnoreChallengeMap", {
                Text = "Ignore Challenge Map",
                Values = Tc.WorldNames,
                Default = {},
                Multi = true,
                Searchable = true,
                AllowNull = true
            })
            ChallengeConfigurationGroup:AddDropdown("RewardFilter", {
                Text = "Challenge Reward Filter",
                Values = Tc.ItemNames,
                Default = {},
                Multi = true,
                Searchable = true,
                AllowNull = true
            })
            ChallengeConfigurationGroup:AddToggle("AutoDaily", { Text = "Auto Daily", Default = false })
            ChallengeConfigurationGroup:AddToggle("AutoChallenge", { Text = "Auto Challenge", Default = false })
            ChallengeConfigurationGroup:AddToggle("AutoHeroHunter", { Text = "Auto Hero Hunter", Default = false })
            ChallengeConfigurationGroup:AddDropdown("HeroHunterDifficulty", { Text = "Hero Hunter Difficulty", Values = { "Normal", "Hard" }, Default = 1 })
            ChallengeConfigurationGroup:AddToggle("AutoKatakara", { Text = "Auto Katakara Bridge", Default = false })
            ChallengeConfigurationGroup:AddDropdown("KatakaraDifficulty", { Text = "Katakara Bridge Difficulty", Values = { "Normal", "Hard" }, Default = 1 })
            ChallengeConfigurationGroup:AddToggle("AutoUltimateEvil", { Text = "Auto Ultimate Evil", Default = false })
            ChallengeConfigurationGroup:AddDropdown("UltimateEvilDifficulty", { Text = "Ultimate Evil Difficulty", Values = { "Normal", "Hard" }, Default = 1 })
            ChallengeConfigurationGroup:AddToggle("AutoEclipse", { Text = "Auto Eclipse", Default = false })
            ChallengeConfigurationGroup:AddDropdown("EclipseDifficulty", { Text = "Eclipse Difficulty", Values = { "Normal", "Hard" }, Default = 1 })
            ChallengeConfigurationGroup:AddToggle("AutoInfinityTrain", { Text = "Auto Infinity Train", Default = false })
            ChallengeConfigurationGroup:AddDropdown("InfinityTrainDifficulty", { Text = "Infinity Train Difficulty", Values = { "Normal", "Hard" }, Default = 1 })
            ChallengeConfigurationGroup:AddToggle("AutoLavaContinent", { Text = "Auto Lava Continent", Default = false })
            ChallengeConfigurationGroup:AddDropdown("LavaContinentDifficulty", { Text = "Lava Continent Difficulty", Values = { "Normal", "Hard" }, Default = 1 })
            ChallengeConfigurationGroup:AddToggle("SkipTraitMaxed", { Text = "Skip if Trait Daily Is Maxed", Default = false })
            Te = function(gn)
                local Value = Options.RewardFilter.Value
                local Sw = false
                for k in pairs(Value) do
                    Sw = true
                    break
                end
                if not Sw then
                    return true
                end
                local Sx = gn or {}
                for k in pairs(Sx) do
                    if Value[k] then
                        return true
                    end
                end
                return false
            end
            Tg = function()
                local SH = Toggles.AutoDaily.Value
                local SM = if SH then 1 else 0
                local SK = 1373 * SM + 2818 * (1 - SM)
                local SL = 840 * SM + 2883 * (1 - SM)
                if not ((SK * 733 + SL * 1316 + SK * SL) % 16777213 == 3265169) then
                    SH = Toggles.AutoChallenge.Value
                end
                if not SH then
                    SH = Toggles.AutoHeroHunter.Value
                end
                if not SH then
                    SH = Toggles.AutoKatakara.Value
                end
                if not SH then
                    SH = Toggles.AutoUltimateEvil.Value
                end
                if not SH then
                    SH = Toggles.AutoEclipse.Value
                end
                if not SH then
                    SH = Toggles.AutoInfinityTrain.Value
                end
                if not SH then
                    SH = Toggles.AutoLavaContinent.Value
                end
                if not SH then
                    SH = Toggles.AutoJoin and Toggles.AutoJoin.Value
                end
                return SH
            end
            Tb = function()
                local SN
                local SO, SP, SQ, SR, SS
                local ST = 55
                while true do
                    local ST_2 = 8150 - ST
                    do
                        if ST_2 < 8102 then
                            if ST_2 < 8075 then
                                if ST_2 < 8061 then
                                    if ST_2 < 8054 then
                                        if ST_2 < 8051 then
                                            break
                                        elseif ST_2 < 8052 then
                                            if ST_2 == 8051 then
                                                ST = if Tc.joinRoom({
                                                    world = Tc.EclipseStage.world,
                                                    act = Tc.EclipseStage.act,
                                                    mode = "Raid",
                                                    difficulty = Options.EclipseDifficulty.Value
                                                }) then 30 else 65
                                            else
                                                ST = 8128
                                                continue
                                            end
                                        elseif ST_2 < 8053 then
                                            if ST_2 == 8052 then
                                                ST = if SP then 10 else 94
                                            else
                                                ST = 8117
                                                continue
                                            end
                                        else
                                            return false
                                        end
                                    elseif ST_2 < 8057 then
                                        if ST_2 < 8055 then
                                            if ST_2 == 8054 then
                                                ST = 58
                                            else
                                                ST = 8064
                                                continue
                                            end
                                        elseif ST_2 < 8056 then
                                            ST = if not SO then 97 else 13
                                        elseif ST_2 == 8056 then
                                            ST = if SP then 90 else 6
                                        else
                                            ST = 8089
                                            continue
                                        end
                                    elseif ST_2 < 8059 then
                                        if ST_2 < 8058 then
                                            if ST_2 == 8057 then
                                                ST = if SR then 51 else 52
                                            else
                                                ST = 8084
                                                continue
                                            end
                                        else
                                            ST = if Toggles.AutoKatakara.Value then 75 else 29
                                        end
                                    elseif ST_2 < 8060 then
                                        SO = Toggles.AutoJoin.Value
                                        ST = 71
                                    elseif ST_2 == 8060 then
                                        SP = SO["1d"]
                                        SQ = not Options.IgnoreDailyMap.Value[SP.world]
                                        ST = if SQ then 62 else 12
                                    else
                                        ST = 8088
                                        continue
                                    end
                                elseif ST_2 < 8068 then
                                    if ST_2 < 8064 then
                                        if ST_2 < 8062 then
                                            return Tc.attemptAutoJoinMap()
                                        elseif ST_2 < 8063 then
                                            ST = if SO({ world = SQ, act = SR, mode = "Challenge", difficulty = "30m" }) then 50 else 57
                                        elseif ST_2 == 8063 then
                                            ST = 84
                                        else
                                            ST = 8053
                                            continue
                                        end
                                    elseif ST_2 < 8066 then
                                        if ST_2 < 8065 then
                                            if ST_2 == 8064 then
                                                SO = Toggles.SkipTraitMaxed.Value
                                                ST = if SO then 54 else 8
                                            else
                                                ST = 8100
                                                continue
                                            end
                                        elseif ST_2 == 8065 then
                                            SO = Toggles.SkipTraitMaxed.Value
                                            ST = if SO then 56 else 23
                                        else
                                            ST = 8056
                                            continue
                                        end
                                    elseif ST_2 < 8067 then
                                        ST = 29
                                    else
                                        SO = Toggles.AutoJoin
                                        ST = if SO then 91 else 71
                                    end
                                elseif ST_2 < 8071 then
                                    if ST_2 < 8069 then
                                        ST = if Toggles.AutoInfinityTrain.Value then 25 else 24
                                    elseif ST_2 < 8070 then
                                        if ST_2 == 8069 then
                                            ST = if SO then 89 else 67
                                        else
                                            ST = 7766
                                            continue
                                        end
                                    else
                                        return true
                                    end
                                elseif ST_2 < 8073 then
                                    if ST_2 < 8072 then
                                        if ST_2 == 8071 then
                                            ST = if Tc.joinRoom({
                                                world = Tc.HeroHunterStage.world,
                                                act = Tc.HeroHunterStage.act,
                                                mode = "Challenge",
                                                difficulty = Options.HeroHunterDifficulty.Value
                                            }) then 45 else 40
                                        else
                                            ST = 8133
                                            continue
                                        end
                                    elseif ST_2 == 8072 then
                                        return true
                                    else
                                        ST = 8131
                                        continue
                                    end
                                elseif ST_2 < 8074 then
                                    if ST_2 == 8073 then
                                        SQ = Tc.joinRoom
                                        SR = SP.world
                                        SS = (tonumber(SP.act))
                                        ST = if SS then 61 else 73
                                    else
                                        ST = 8070
                                        continue
                                    end
                                else
                                    SO = Tc.joinRoom
                                    SQ = SP.world
                                    SR = (tonumber(SP.act))
                                    ST = if SR then 88 else 27
                                end
                            elseif ST_2 < 8088 then
                                if ST_2 < 8081 then
                                    if ST_2 < 8078 then
                                        if ST_2 < 8076 then
                                            if ST_2 == 8075 then
                                                SO = Toggles.SkipTraitMaxed.Value
                                                ST = if SO then 41 else 22
                                            else
                                                ST = 8062
                                                continue
                                            end
                                        elseif ST_2 < 8077 then
                                            ST = if SP then 33 else 34
                                        else
                                            SS = 1
                                            ST = 61
                                        end
                                    elseif ST_2 < 8079 then
                                        ST = if not SO then 26 else 96
                                    elseif ST_2 < 8080 then
                                        if ST_2 == 8079 then
                                            ST = if SO then 70 else 81
                                        else
                                            ST = 11512
                                            continue
                                        end
                                    elseif ST_2 == 8080 then
                                        SO = type(Tc.attemptAutoJoinMap) == "function"
                                        ST = 81
                                    else
                                        ST = 8121
                                        continue
                                    end
                                elseif ST_2 < 8084 then
                                    if ST_2 < 8082 then
                                        if ST_2 == 8081 then
                                            ST = if Tc.joinRoom({
                                                world = Tc.LavaContinentStage.world,
                                                act = Tc.LavaContinentStage.act,
                                                mode = "Invasion",
                                                difficulty = Options.LavaContinentDifficulty.Value
                                            }) then 49 else 43
                                        else
                                            ST = 8095
                                            continue
                                        end
                                    elseif ST_2 < 8083 then
                                        if ST_2 == 8082 then
                                            ST = 38
                                        else
                                            ST = 8110
                                            continue
                                        end
                                    else
                                        return false
                                    end
                                elseif ST_2 < 8086 then
                                    if ST_2 < 8085 then
                                        if ST_2 == 8084 then
                                            SR = type(SQ) == "table"
                                            ST = 93
                                        else
                                            ST = 8090
                                            continue
                                        end
                                    elseif ST_2 == 8085 then
                                        ST = 31
                                    else
                                        ST = 8126
                                        continue
                                    end
                                elseif ST_2 < 8087 then
                                    ST = if Tc.joinRoom({
                                        world = Tc.InfinityTrainStage.world,
                                        act = Tc.InfinityTrainStage.act,
                                        mode = "Raid",
                                        difficulty = Options.InfinityTrainDifficulty.Value
                                    }) then 80 else 4
                                elseif ST_2 == 8087 then
                                    local SW_5 = if SP then 1 else 0
                                    local SU_5 = 3652 * SW_5 + 669 * (1 - SW_5)
                                    local SV_5 = 481 * SW_5 + 102 * (1 - SW_5)
                                    ST = if (SU_5 * 3849 + SV_5 * 3899 + SU_5 * SV_5) % 16777213 == 911366 then 5 else 15
                                else
                                    ST = 8119
                                    continue
                                end
                            elseif ST_2 < 8095 then
                                if ST_2 < 8091 then
                                    if ST_2 < 8089 then
                                        SQ = Te(SP.rewards)
                                        ST = 12
                                    elseif ST_2 < 8090 then
                                        ST = if SQ({ world = SR, act = SS, mode = "Challenge", difficulty = "1d" }) then 78 else 28
                                    elseif ST_2 == 8090 then
                                        SO = Toggles.SkipTraitMaxed.Value
                                        local SW_6 = if SO then 1 else 0
                                        local SU_6 = 3936 * SW_6 + 2116 * (1 - SW_6)
                                        local SV_6 = 3439 * SW_6 + 3946 * (1 - SW_6)
                                        ST = if (SU_6 * 950 + SV_6 * 212 + SU_6 * SV_6) % 16777213 == 1226959 then 19 else 7
                                    else
                                        ST = 8057
                                        continue
                                    end
                                elseif ST_2 < 8093 then
                                    if ST_2 < 8092 then
                                        if ST_2 == 8091 then
                                            ST = if Tc.joinRoom({
                                                world = Tc.KatakaraStage.world,
                                                act = Tc.KatakaraStage.act,
                                                mode = "Challenge",
                                                difficulty = Options.KatakaraDifficulty.Value
                                            }) then 35 else 87
                                        else
                                            ST = 15432
                                            continue
                                        end
                                    else
                                        ST = if Toggles.AutoEclipse.Value then 60 else 82
                                    end
                                elseif ST_2 < 8094 then
                                    if ST_2 == 8093 then
                                        ST = 68
                                    else
                                        ST = 8111
                                        continue
                                    end
                                elseif ST_2 == 8094 then
                                    SO = Tc:traitStageMaxed("Challenge", Tc.HeroHunterStage.world, Tc.HeroHunterStage.act)
                                    ST = 23
                                else
                                    ST = 8063
                                    continue
                                end
                            elseif ST_2 < 8098 then
                                if ST_2 < 8096 then
                                    if ST_2 == 8095 then
                                        SO = Toggles.MasterStartMap
                                        ST = if SO then 1 else 95
                                    else
                                        ST = 8057
                                        continue
                                    end
                                elseif ST_2 < 8097 then
                                    if ST_2 == 8096 then
                                        SO = Tc:traitStageMaxed("Invasion", Tc.LavaContinentStage.world, Tc.LavaContinentStage.act)
                                        ST = 8
                                    else
                                        ST = 8128
                                        continue
                                    end
                                else
                                    SQ = os.clock() - Tc.ChallengeDataTime > 30
                                    ST = 14
                                end
                            elseif ST_2 < 8100 then
                                if ST_2 < 8099 then
                                    ST = 34
                                elseif ST_2 == 8099 then
                                    Tc.ChallengeDataCache = SQ
                                    Tc.ChallengeDataTime = os.clock()
                                    SO = SQ
                                    ST = 52
                                else
                                    ST = 8094
                                    continue
                                end
                            elseif ST_2 < 8101 then
                                return true
                            elseif ST_2 == 8101 then
                                return true
                            else
                                ST = 8108
                                continue
                            end
                        elseif ST_2 < 8129 then
                            if ST_2 < 8115 then
                                if ST_2 < 8108 then
                                    if ST_2 < 8105 then
                                        if ST_2 < 8103 then
                                            if ST_2 == 8102 then
                                                SP = Toggles.AutoDaily.Value
                                                ST = if SP then 42 else 98
                                            else
                                                ST = 8059
                                                continue
                                            end
                                        elseif ST_2 < 8104 then
                                            SQ = not Tc.ChallengeDataTime
                                            ST = if SQ then 14 else 53
                                        elseif ST_2 == 8104 then
                                            ST = 92
                                        else
                                            ST = 10948
                                            continue
                                        end
                                    elseif ST_2 < 8106 then
                                        return true
                                    elseif ST_2 < 8107 then
                                        if ST_2 == 8106 then
                                            ST = if not SO then 64 else 11
                                        else
                                            ST = 8141
                                            continue
                                        end
                                    elseif ST_2 == 8107 then
                                        ST = 21
                                    else
                                        ST = 8059
                                        continue
                                    end
                                elseif ST_2 < 8111 then
                                    if ST_2 < 8109 then
                                        if ST_2 == 8108 then
                                            SP = SO["1d"]
                                            ST = 98
                                        else
                                            ST = 8065
                                            continue
                                        end
                                    elseif ST_2 < 8110 then
                                        SO = Tc:traitStageMaxed("Challenge", Tc.KatakaraStage.world, Tc.KatakaraStage.act)
                                        ST = 22
                                    elseif ST_2 == 8110 then
                                        ST = 46
                                    else
                                        ST = 8079
                                        continue
                                    end
                                elseif ST_2 < 8113 then
                                    if ST_2 < 8112 then
                                        if ST_2 == 8111 then
                                            ST = if SO then 76 else 68
                                        else
                                            ST = 12289
                                            continue
                                        end
                                    else
                                        ST = if Toggles.AutoHeroHunter.Value then 85 else 92
                                    end
                                elseif ST_2 < 8114 then
                                    SO = Toggles.SkipTraitMaxed.Value
                                    ST = if SO then 20 else 72
                                else
                                    SP = SO["30m"]
                                    ST = 63
                                end
                            elseif ST_2 < 8122 then
                                if ST_2 < 8118 then
                                    if ST_2 < 8116 then
                                        return true
                                    elseif ST_2 < 8117 then
                                        if ST_2 == 8116 then
                                            ST = if type(SO) ~= "table" then 3 else 48
                                        else
                                            ST = 8071
                                            continue
                                        end
                                    elseif ST_2 == 8117 then
                                        SP, SQ = pcall(function()
                                            return SN:InvokeServer()
                                        end)
                                        SR = SP
                                        local SW_7 = if SR then 1 else 0
                                        local SU_7 = 762 * SW_7 + 1358 * (1 - SW_7)
                                        local SV_7 = 1038 * SW_7 + 2379 * (1 - SW_7)
                                        ST = if (SU_7 * 2175 + SV_7 * 3022 + SU_7 * SV_7) % 16777213 == 5585142 then 66 else 93
                                    else
                                        ST = 8135
                                        continue
                                    end
                                elseif ST_2 < 8120 then
                                    if ST_2 < 8119 then
                                        if ST_2 == 8118 then
                                            SO = Te(SP.rewards)
                                            ST = 39
                                        else
                                            ST = 8100
                                            continue
                                        end
                                    else
                                        ST = 82
                                    end
                                elseif ST_2 < 8121 then
                                    if ST_2 == 8120 then
                                        return true
                                    end
                                    ST = 8065
                                    continue
                                else
                                    ST = if Toggles.AutoUltimateEvil.Value then 37 else 58
                                end
                            elseif ST_2 < 8125 then
                                if ST_2 < 8123 then
                                    if ST_2 == 8122 then
                                        ST = 0
                                    else
                                        ST = 8097
                                        continue
                                    end
                                elseif ST_2 < 8124 then
                                    SR = 1
                                    ST = 88
                                else
                                    ST = if Tc.joinRoom({
                                        world = Tc.UltimateEvilStage.world,
                                        act = Tc.UltimateEvilStage.act,
                                        mode = "Raid",
                                        difficulty = Options.UltimateEvilDifficulty.Value
                                    }) then 17 else 9
                                end
                            elseif ST_2 < 8127 then
                                if ST_2 < 8126 then
                                    if ST_2 == 8125 then
                                        SO = Toggles.SkipTraitMaxed.Value
                                        ST = if SO then 16 else 44
                                    else
                                        ST = 8068
                                        continue
                                    end
                                else
                                    ST = if Toggles.AutoLavaContinent.Value then 86 else 83
                                end
                            elseif ST_2 < 8128 then
                                ST = if not SO then 79 else 46
                            elseif ST_2 == 8128 then
                                ST = if not SO then 59 else 84
                            else
                                ST = 8056
                                continue
                            end
                        elseif ST_2 < 8142 then
                            if ST_2 < 8135 then
                                if ST_2 < 8132 then
                                    if ST_2 < 8130 then
                                        if ST_2 == 8129 then
                                            ST = 83
                                        else
                                            ST = 8127
                                            continue
                                        end
                                    elseif ST_2 < 8131 then
                                        SO = Tc:traitStageMaxed("Raid", Tc.UltimateEvilStage.world, Tc.UltimateEvilStage.act)
                                        ST = 72
                                    else
                                        SO = Tc:traitStageMaxed("Raid", Tc.EclipseStage.world, Tc.EclipseStage.act)
                                        ST = 7
                                    end
                                elseif ST_2 < 8133 then
                                    SP = SO["30m"]
                                    SO = not Options.IgnoreChallengeMap.Value[SP.world]
                                    ST = if SO then 32 else 39
                                elseif ST_2 < 8134 then
                                    return true
                                else
                                    SO = Tc:traitStageMaxed("Raid", Tc.InfinityTrainStage.world, Tc.InfinityTrainStage.act)
                                    ST = 44
                                end
                            elseif ST_2 < 8138 then
                                if ST_2 < 8136 then
                                    if ST_2 == 8135 then
                                        ST = if SP then 18 else 38
                                    else
                                        ST = 8076
                                        continue
                                    end
                                elseif ST_2 < 8137 then
                                    SP = SQ
                                    ST = 74
                                else
                                    SN = remote("Play", "get_challenges")
                                    SO = Tc.ChallengeDataCache
                                    SP = SN
                                    ST = if SP then 47 else 74
                                end
                            elseif ST_2 < 8140 then
                                if ST_2 < 8139 then
                                    ST = if SQ then 77 else 0
                                else
                                    ST = 24
                                end
                            elseif ST_2 < 8141 then
                                if ST_2 == 8140 then
                                    SP = not Tc:dailyChallengeDone()
                                    ST = 94
                                else
                                    ST = 8086
                                    continue
                                end
                            elseif ST_2 == 8141 then
                                ST = 96
                            else
                                ST = 8131
                                continue
                            end
                        elseif ST_2 < 8149 then
                            if ST_2 < 8145 then
                                if ST_2 < 8143 then
                                    ST = if not SO then 69 else 21
                                elseif ST_2 < 8144 then
                                    ST = if not SO then 99 else 31
                                else
                                    SP = Toggles.AutoChallenge.Value
                                    local SW_8 = if SP then 1 else 0
                                    local SU_8 = 2013 * SW_8 + 4094 * (1 - SW_8)
                                    local SV_8 = 3684 * SW_8 + 2988 * (1 - SW_8)
                                    ST = if (SU_8 * 1371 + SV_8 * 36 + SU_8 * SV_8) % 16777213 == 10308339 then 36 else 63
                                end
                            elseif ST_2 < 8147 then
                                if ST_2 < 8146 then
                                    SP = not Tc:regularChallengeDone()
                                    ST = 15
                                else
                                    ST = 11
                                end
                            elseif ST_2 < 8148 then
                                SO = {}
                                ST = 48
                            else
                                break
                            end
                        elseif ST_2 < 11512 then
                            if ST_2 < 8150 then
                                SO = Toggles.MasterStartMap.Value
                                ST = 95
                            elseif ST_2 < 10948 then
                                if ST_2 == 8150 then
                                    ST = 6
                                else
                                    break
                                end
                            else
                                break
                            end
                        else
                            break
                        end
                    end
                end
            end
            Td = false
            local function S9()
                if Td then
                    return
                end
                Td = true
                task.spawn(function()
                    local JoinDelay = Tc.JoinDelay
                    local SY_7
                    local S3 = JoinDelay
                    local S2 = -1
                    while false and S3 <= 1 or true and S3 >= 1 do
                        local S4 = S3
                        if not Tg() then
                            Td = false
                            return
                        end
                        if Toggles.MasterStartMap and Toggles.MasterStartMap.Value and true then
                            Library:Notify({ Title = "Matchmaking", Description = "Joining in " .. S4 .. "s...", Time = 1 })
                        end
                        task.wait(1)
                        S3 += S2
                    end
                    while true do
                        local SX = (Tg())
                        local SX_3
                        if SX then
                            SX = Toggles.MasterStartMap and Toggles.MasterStartMap.Value
                        end
                        if SX then
                            SX_3, SY_7 = pcall(Tb)
                            if not SX_3 then
                                warn("challengeCycle error:", SY_7)
                                SY_7 = false
                            end
                            local wait = task.wait
                            local SY_8 = SY_7 and 10 or 4
                            wait(SY_8)
                            continue
                        end
                        break
                    end
                    Td = false
                end)
            end
            for i, v in ipairs({
                "MasterStartMap",
                "AutoDaily",
                "AutoChallenge",
                "AutoHeroHunter",
                "AutoKatakara",
                "AutoUltimateEvil",
                "AutoEclipse",
                "AutoInfinityTrain",
                "AutoLavaContinent",
                "AutoJoin"
            }) do
                local Tq = v
                if Toggles[Tq] then
                    Toggles[Tq]:OnChanged(function()
                        if Toggles[Tq].Value then
                            S9()
                        end
                    end)
                end
            end
        end)(loader);
        (function(...)
            local agc
            local afU
            local Label4
            local agi
            local af_
            local agH
            local afH
            local af5
            local agh
            local agG
            local Library
            local LocalPlayer2
            local Label
            local afS
            local agg
            local afY
            local agF
            local afF
            local remote
            local af3
            local agL
            local afL
            local ags
            local af9
            local afR
            local agy
            local afX
            local agE
            local agl
            local afK
            local agr
            local _HttpService
            local agx
            local age
            local afW
            local agD
            local Toggles
            local agJ
            local afJ
            local agq
            local af7
            local Options
            local agw
            local agd
            local afV
            local agj
            local af0
            local agI
            local afI
            local af6
            local afO
            local agv
            Toggles = nil
            afF = nil
            afH = nil
            afI = nil
            afJ = nil
            afK = nil
            afL = nil
            afO = nil
            Options = nil
            afR = nil
            afS = nil
            afU = nil
            afV = nil
            afW = nil
            afX = nil
            afY = nil
            local afZ
            af_ = nil
            af0 = nil
            af3 = nil
            Library = nil
            af5 = nil
            af6 = nil
            af7 = nil
            _HttpService = nil
            af9 = nil
            Label = nil
            local agb
            agc = nil
            agd = nil
            age = nil
            agg = nil
            agh = nil
            agi = nil
            agj = nil
            agl = nil
            remote = nil
            local ago
            local autoMaxSpeedLoop, afG, afM, afN, afQ, afT, af1, af2, agf, Label3, Label2, agp
            agq = nil
            agr = nil
            ags = nil
            LocalPlayer2 = nil
            agv = nil
            agw = nil
            agx = nil
            agy = nil
            Label4 = nil
            agD = nil
            agE = nil
            agF = nil
            agG = nil
            agH = nil
            agI = nil
            agJ = nil
            agL = nil
            local agz, agA, agC, agK
            agi = ...
            Library = agi.Library
            Options = agi.Options
            Toggles = agi.Toggles
            local Tabs = agi.Tabs
            local agM_4
            LocalPlayer2 = agi.LocalPlayer
            remote = agi.remote
            _HttpService = agi._HttpService
            local IngameConfigurationGroup = Tabs.Main:AddRightGroupbox("Ingame Configuration")
            IngameConfigurationGroup:AddToggle("AutoReplay", { Text = "Auto Replay", Default = false })
            IngameConfigurationGroup:AddToggle("AutoNext", { Text = "Auto Next", Default = false })
            IngameConfigurationGroup:AddToggle("AutoLeave", { Text = "Auto Leave", Default = false })
            IngameConfigurationGroup:AddToggle("AutoLeaveChallenge", { Text = "Auto Leave (Challenge)", Default = false })
            IngameConfigurationGroup:AddToggle("ReplayChallenge", { Text = "Replay (Challenge)", Default = false })
            IngameConfigurationGroup:AddToggle("LeaveTraitPity", { Text = "Leave on Daily Trait Pity", Default = false })
            IngameConfigurationGroup:AddToggle("LeaveForDaily", { Text = "Go back to lobby for Daily Challenge", Default = false })
            IngameConfigurationGroup:AddToggle("LeaveForRegular", { Text = "Go back to lobby after XX:30 for Challenge", Default = false })
            IngameConfigurationGroup:AddToggle("LeaveAfterMinutes", { Text = "Go Back to Lobby After X Minutes", Default = false })
            IngameConfigurationGroup:AddInput("LeaveMinutes", { Text = "Minutes", Numeric = true, Default = "30", Finished = true })
            IngameConfigurationGroup:AddToggle("LeaveAfterMatches", { Text = "Go Back to Lobby After X Matches", Default = false })
            IngameConfigurationGroup:AddInput("LeaveMatches", { Text = "Matches", Numeric = true, Default = "10", Finished = true })
            IngameConfigurationGroup:AddToggle("Retreat", { Text = "Retreat", Default = false })
            IngameConfigurationGroup:AddInput("RetreatSeconds", { Text = "Retreat Seconds", Numeric = true, Default = "30", Finished = true })
            IngameConfigurationGroup:AddLabel("Retreat: if the base health gets stuck at 0 for more than 20 seconds, goes back to the lobby after the set seconds on top of that.", true)
            IngameConfigurationGroup:AddToggle("AutoVoteStart", { Text = "Auto Start (Vote Skip)", Default = false })
            IngameConfigurationGroup:AddToggle("AutoMaxSpeed", { Text = "Auto Set Max Speed", Default = false })
            IngameConfigurationGroup:AddSlider("MaxSpeed", { Text = "Speed", Min = 1, Max = 3, Default = 3, Rounding = 0, Suffix = "x" })
            autoMaxSpeedLoop = function()
                if not Toggles.AutoMaxSpeed then
                    return
                end
                if not Toggles.AutoMaxSpeed.Value then
                    return
                end
                local Tr = remote("Game", "change_speed")
                if Tr then
                    Tr:InvokeServer(Options.MaxSpeed.Value)
                end
            end
            Toggles.AutoMaxSpeed:OnChanged(autoMaxSpeedLoop)
            Options.MaxSpeed:OnChanged(autoMaxSpeedLoop)
            afI = nil
            afX = 0
            Toggles.LeaveAfterMatches:OnChanged(function()
                if Toggles.LeaveAfterMatches.Value then
                    afX = 0
                end
            end)
            local function agN_5()
                if Toggles.LeaveAfterMinutes.Value then
                    local Tx = tonumber(Options.LeaveMinutes.Value)
                    local Ty = Tx and Tx > 0
                    local Tz = Ty and os.clock() + Tx * 60
                    afI = Tz or nil
                else
                    afI = nil
                end
            end
            Toggles.LeaveAfterMinutes:OnChanged(agN_5)
            Options.LeaveMinutes:OnChanged(agN_5)
            task.spawn(function()
                while true do
                    task.wait(1)
                    if not Toggles.LeaveAfterMinutes then
                        break
                    end
                    local TE = Toggles.LeaveAfterMinutes.Value and afI and os.clock() >= afI
                    if TE then
                        local TE_3 = tonumber(Options.LeaveMinutes.Value)
                        local TF = TE_3 and TE_3 > 0
                        local TG = TF and os.clock() + TE_3 * 60
                        afI = TG or nil
                        agi:fireRemote("Players", "teleport")
                    end
                end
            end)
            afU = nil
            afH = function()
                local TJ_3
                local TI_3
                TI_3, TJ_3 = pcall(function()
                    return require(LocalPlayer2.PlayerScripts.Client.Characters)
                end)
                local TK = not TI_3 or type(TJ_3) ~= "table" or type(TJ_3.all) ~= "table"
                if TK then
                    return nil
                end
                local TI_4 = TJ_3.all[-1]
                if not TI_4 then
                    return nil
                end
                return TI_4.last_health or TI_4.max_health
            end
            task.spawn(function()
                while true do
                    task.wait(1)
                    if not Toggles.Retreat then
                        break
                    end
                    local TM
                    local TN = Toggles.Retreat.Value and remote("Play", "create_room") == nil
                    if TN then
                        TM = afH()
                    end
                    if TM and TM <= 0 then
                        local TM_3 = afU or os.clock()
                        afU = TM_3
                        local TM_4 = tonumber(Options.RetreatSeconds.Value)
                        if not TM_4 or TM_4 <= 0 then
                            TM_4 = 30
                        end
                        if os.clock() - afU >= 20 + TM_4 then
                            afU = nil
                            agi:fireRemote("Players", "teleport")
                        end
                    else
                        afU = nil
                    end
                end
            end)
            local PerformanceGroup = Tabs.Main:AddRightGroupbox("Performance")
            PerformanceGroup:AddToggle("FPSBoost", { Text = "FPS Boost", Default = false })
            PerformanceGroup:AddInput("FPSCap", { Text = "FPS Cap", Numeric = true, Default = "60", Finished = true })
            agx = {
                ParticleEmitter = true,
                Trail = true,
                Beam = true,
                Smoke = true,
                Fire = true,
                Sparkles = true,
                BloomEffect = true,
                BlurEffect = true,
                SunRaysEffect = true,
                DepthOfFieldEffect = true
            }
            age = {}
            agq = false
            af2 = function(ig)
                if agx[ig.ClassName] then
                    ig.Enabled = false
                elseif ig:IsA("MeshPart") then
                    ig.Material = Enum.Material.SmoothPlastic
                    ig.Reflectance = 0
                    ig.CastShadow = false
                    ig.TextureID = ""
                elseif ig:IsA("BasePart") then
                    ig.Material = Enum.Material.SmoothPlastic
                    ig.Reflectance = 0
                    ig.CastShadow = false
                elseif ig:IsA("SpecialMesh") then
                    ig.TextureId = ""
                elseif ig:IsA("Decal") then
                    ig.Transparency = 1
                end
            end
            agy = function()
                local Lighting
                Lighting = nil
                if agq then
                    return
                end
                agq = true
                Lighting = game:GetService("Lighting")
                pcall(function()
                    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
                end)
                pcall(function()
                    UserSettings():GetService("UserGameSettings").SavedQualityLevel = Enum.SavedQualitySetting.QualityLevel1
                end)
                pcall(function()
                    Lighting.GlobalShadows = false
                end)
                for i, child in ipairs(Lighting:GetChildren()) do
                    local TZ = child
                    if agx[TZ.ClassName] then
                        pcall(function()
                            TZ.Enabled = false
                        end)
                    end
                end
                local Terrain = workspace:FindFirstChildOfClass("Terrain")
                if Terrain then
                    pcall(function()
                        Terrain.WaterWaveSize = 0
                        Terrain.WaterWaveSpeed = 0
                        Terrain.WaterReflectance = 0
                    end)
                end
                for i, descendant in ipairs(workspace:GetDescendants()) do
                    pcall(af2, descendant)
                end
                table.insert(age, workspace.DescendantAdded:Connect(function(ix)
                    if agq then
                        pcall(af2, ix)
                    end
                end))
            end
            afJ = function()
                agq = false
                for i, v in ipairs(age) do
                    v:Disconnect()
                end
                table.clear(age)
            end
            Toggles.FPSBoost:OnChanged(function()
                if Toggles.FPSBoost.Value then
                    agy()
                else
                    afJ()
                end
            end)
            Options.FPSCap:OnChanged(function()
                if setfpscap then
                    local Ug = tonumber(Options.FPSCap.Value)
                    if Ug then
                        pcall(setfpscap, math.floor(Ug))
                    end
                end
            end)
            local LobbyMiscGroup = Tabs.Main:AddRightGroupbox("Lobby Misc")
            LobbyMiscGroup:AddToggle("AutoDiscovery", { Text = "Auto Discovery", Default = false })
            LobbyMiscGroup:AddToggle("AutoQuest", { Text = "Auto Quest", Default = false })
            LobbyMiscGroup:AddToggle("AutoLevelMilestone", { Text = "Auto Level Milestone Claim", Default = false })
            LobbyMiscGroup:AddButton("Redeem Codes", function()
                local Uu
                Uu = remote("Codes", "use")
                if not Uu then
                    Library:Notify({ Title = "Codes", Description = "Codes are only available in the lobby.", Time = 3 })
                    return
                end
                task.spawn(function()
                    local Uj_2
                    local Ui_4
                    Ui_4, Uj_2 = pcall(function()
                        return game:HttpGet("https://www.eurogamer.net/anime-squadron-codes")
                    end)
                    local Uk = not Ui_4
                    local Up = if Uk then 1 else 0
                    local Un = 2539 * Up + 577 * (1 - Up)
                    local Uo = 4069 * Up + 1144 * (1 - Up)
                    if not ((Un * 2990 + Uo * 1645 + Un * Uo) % 16777213 == 7839093) then
                        Uk = type(Uj_2) ~= "string"
                    end
                    if Uk then
                        Library:Notify({ Title = "Codes", Description = "Failed to fetch codes.", Time = 4 })
                        return
                    end
                    local Ui_5 = string.find(Uj_2, '<ul class="working">', 1, true)
                    local Uk_4 = Ui_5 and string.find(Uj_2, "</ul>", Ui_5, true)
                    if not (Ui_5 and Uk_4) then
                        Library:Notify({ Title = "Codes", Description = "Could not parse codes.", Time = 4 })
                        return
                    end
                    local Uk_6 = string.sub(Uj_2, Ui_5, Uk_4)
                    local Ui_6 = 0
                    for k in string.gmatch(Uk_6, "<strong>(.-)</strong>") do
                        local Ut = k
                        Ut = Ut:gsub("^%s+", ""):gsub("%s+$", "")
                        if Ut ~= "" then
                            Ui_6 = Ui_6 + 1
                            pcall(function()
                                Uu:InvokeServer(Ut)
                            end)
                            task.wait(0.4)
                        end
                    end
                    Library:Notify({ Title = "Codes", Description = "Attempted " .. Ui_6 .. " codes.", Time = 4 })
                end)
            end)
            agz = function()
                local Uw
                Uw = nil
                local Uy_3
                local Ux = remote("Player", "get") or remote("Players", "get")
                local Ux_3
                Uw = Ux
                if not Uw then
                    return nil
                end
                Ux_3, Uy_3 = pcall(function()
                    return Uw:InvokeServer()
                end)
                local Uz = Ux_3 and type(Uy_3) == "table"
                return Uz and Uy_3 or nil
            end
            agp = function()
                local UB = remote("Level_Milestones", "claim")
                if not UB then
                    return
                end
                local UC = agz()
                if not (UC and UC.stats) then
                    return
                end
                local UE = UC.level_milestones or {}
                local UE_3 = UC.stats.level or 0
                for i = 5, 100, 5 do
                    local UM = i
                    local UE_4 = UM <= UE_3 and not table.find(UE, UM)
                    if UE_4 then
                        pcall(function()
                            UB:InvokeServer(UM)
                        end)
                        task.wait(0.2)
                    end
                end
            end
            task.spawn(function()
                local UR = false
                repeat
                    task.wait(5)
                    if not Toggles.AutoDiscovery then
                        UR = true
                    else
                        if Toggles.AutoDiscovery.Value then
                            local UO = remote("Characters", "claim_all_index")
                            if UO then
                                pcall(function()
                                    UO:InvokeServer()
                                end)
                            end
                        end
                        if Toggles.AutoQuest.Value then
                            local UN = remote("Quests", "claim_all")
                            if UN then
                                pcall(function()
                                    UN:InvokeServer()
                                end)
                            end
                        end
                        if Toggles.AutoLevelMilestone.Value then
                            agp()
                        end
                    end
                until UR
            end)
            local MaterialFarmGroup = Tabs.Main:AddRightGroupbox("Material Farm")
            local function agO()
                local UX_2
                local UV = isfile
                local UV_2
                local UW = {
                    Queue = {},
                    QueueIndex = 1,
                    Difficulty = "Hard",
                    Targets = {},
                    AutoLobby = true,
                    Active = false,
                    Target = nil
                }
                if UV then
                    UV = isfile(agi.MatFarmConfigFile)
                end
                if UV then
                    UV_2, UX_2 = pcall(function()
                        return _HttpService:JSONDecode(readfile(agi.MatFarmConfigFile))
                    end)
                    local UY = UV_2 and type(UX_2) == "table"
                    if UY then
                        if type(UX_2.Difficulty) == "string" then
                            UW.Difficulty = UX_2.Difficulty
                        end
                        if type(UX_2.Queue) == "table" then
                            for i, v in ipairs(UX_2.Queue) do
                                if type(v) == "string" then
                                    table.insert(UW.Queue, v)
                                end
                            end
                        end
                        if type(UX_2.QueueIndex) == "number" then
                            UW.QueueIndex = UX_2.QueueIndex
                        end
                        if type(UX_2.Targets) == "table" then
                            UW.Targets = UX_2.Targets
                        end
                        if type(UX_2.AutoLobby) == "boolean" then
                            UW.AutoLobby = UX_2.AutoLobby
                        end
                    end
                end
                return UW
            end
            agh = function()
                if not writefile then
                    return false
                end
                pcall(function()
                    local jH = {
                        Difficulty = agi.MatFarmConfig.Difficulty,
                        Queue = agi.MatFarmConfig.Queue,
                        QueueIndex = agi.MatFarmConfig.QueueIndex,
                        Targets = agi.MatFarmConfig.Targets,
                        AutoLobby = agi.MatFarmConfig.AutoLobby
                    }
                    writefile(agi.MatFarmConfigFile, _HttpService:JSONEncode(jH))
                end)
            end
            agi.MatFarmConfig = agO()
            agj = nil
            af6 = function()
                return agi:windowIndex(workspace:GetServerTimeNow(), agi.Resets.regularEpoch, agi.RegularPeriod)
            end
            agi.regularChallengeLobbyReturn = function()
                if not Toggles.LeaveForRegular.Value then
                    return false
                end
                local U9 = af6()
                if agj and U9 > agj then
                    agj = U9
                    return true
                end
                agj = U9
                return false
            end
            Toggles.LeaveForRegular:OnChanged(function()
                if Toggles.LeaveForRegular.Value then
                    agj = af6()
                end
            end)
            task.spawn(function()
                while true do
                    task.wait(5)
                    if not Toggles.LeaveForRegular then
                        break
                    end
                    if Toggles.LeaveForRegular.Value then
                        if agi.remote("Play", "create_room") then
                            agj = af6()
                        elseif agi.regularChallengeLobbyReturn() then
                            agi:fireRemote("Players", "teleport")
                        end
                    end
                end
            end)
            local agO_10 = remote("Game", "ending")
            if agO_10 then
                agO_10.OnClientEvent:Connect(function(j_, j0)
                    if not Toggles.LeaveAfterMatches then
                        return
                    end
                    j_ = j_ or {}
                    local difficulty = j_.difficulty
                    local VE_2 = j_.mode == "Challenge"
                    local VF = difficulty == "1d"
                    local VG = difficulty == "30m"
                    task.defer(autoMaxSpeedLoop)
                    if agi.onMatchSummary then
                        task.spawn(function()
                            agi.onMatchSummary(j_, j0)
                        end)
                    end
                    local VD_15 = Toggles.AutoAwaken.Value
                    local VP = if VD_15 then 1 else 0
                    local VN = 3898 * VP + 118 * (1 - VP)
                    local VO = 1279 * VP + 3126 * (1 - VP)
                    if not ((VN * 14 + VO * 3367 + VN * VO) % 16777213 == 9346507) then
                        VD_15 = Toggles.AutoCraftGear.Value
                    end
                    local VM = if VD_15 then 1 else 0
                    local VK = 1462 * VM + 1021 * (1 - VM)
                    local VL = 3746 * VM + 3283 * (1 - VM)
                    if not ((VK * 1532 + VL * 2553 + VK * VL) % 16777213 == 502761) then
                        VD_15 = Toggles.AutoMaterialFarm.Value
                    end
                    if VD_15 then
                        task.wait(1.5)
                    end
                    if VD_15 then
                        local VH_6 = agi.remote("Player", "get") or agi.remote("Players", "get")
                        VD_15 = VH_6
                    end
                    local VC = VD_15
                    if VC then
                        pcall(function()
                            local result = VC:InvokeServer()
                            local Vi = type(result) == "table" and agi.Utility and type(agi.Utility.data) == "table"
                            if Vi then
                                if type(result.items) == "table" then
                                    local data = agi.Utility.data
                                    local Vk_3 = agi.Utility.data.items or {}
                                    data.items = Vk_3
                                    local items = agi.Utility.data.items
                                    for k in pairs(items) do
                                        if result.items[k] == nil then
                                            items[k] = nil
                                        end
                                    end
                                    for k, v in pairs(result.items) do
                                        items[k] = v
                                    end
                                end
                                if type(result.stats) == "table" then
                                    local data = agi.Utility.data
                                    local Vk_4 = agi.Utility.data.stats or {}
                                    data.stats = Vk_4
                                    local stats = agi.Utility.data.stats
                                    for k in pairs(stats) do
                                        if result.stats[k] == nil then
                                            stats[k] = nil
                                        end
                                    end
                                    for k, v in pairs(result.stats) do
                                        stats[k] = v
                                    end
                                end
                            end
                        end)
                    end
                    if Toggles.LeaveAfterMatches.Value then
                        afX = afX + 1
                        local VD_16 = tonumber(Options.LeaveMatches.Value)
                        if VD_16 and afX >= VD_16 then
                            Toggles.LeaveAfterMatches:SetValue(false)
                            agi:fireRemote("Players", "teleport")
                            return
                        end
                    end
                    if Toggles.AutoAwaken.Value and agi.onAwakenMatchEnd then
                        if agi.onAwakenMatchEnd() then
                            return
                        end
                    end
                    if Toggles.AutoCraftGear.Value and agi.onCraftMatchEnd then
                        if agi.onCraftMatchEnd() then
                            return
                        end
                    end
                    if Toggles.AutoMaterialFarm.Value and agi.onMatFarmMatchEnd then
                        if agi.onMatFarmMatchEnd() then
                            return
                        end
                    end
                    local VD_20 = workspace:GetServerTimeNow()
                    local VH_8 = agi:windowIndex(VD_20, agi.Resets.dailyEpoch, agi.DailyPeriod)
                    if VF then
                        agi.lastDailyWindow = VH_8
                    end
                    local VD_21 = Toggles.LeaveTraitPity.Value and agi:traitStageMaxed(j_.mode, j_.world, j_.act)
                    if VD_21 then
                        agi:fireRemote("Players", "teleport")
                        return
                    end
                    local VD_22 = Toggles.LeaveForDaily.Value and not VF
                    if VD_22 then
                        VD_22 = VH_8 > (agi.lastDailyLeaveTrigger or agi.lastDailyWindow)
                    end
                    if VD_22 then
                        agi.lastDailyLeaveTrigger = VH_8
                        agi:fireRemote("Players", "teleport")
                        return
                    end
                    if agi.regularChallengeLobbyReturn() then
                        agi:fireRemote("Players", "teleport")
                        return
                    end
                    if VE_2 then
                        local VD_24 = (VF or VG) and { isDaily = VF, isRegular = VG } or nil
                        agi.lastEndedChallenge = VD_24
                        if Toggles.ReplayChallenge.Value then
                            agi:fireRemote("Game", "replay")
                            return
                        end
                        if Toggles.AutoLeaveChallenge.Value and (VF or VG) then
                            agi:fireRemote("Game", "replay")
                            return
                        end
                    end
                    if Toggles.AutoNext.Value and j0 and not VE_2 then
                        agi:fireRemote("Game", "next")
                        return
                    end
                    if Toggles.AutoReplay.Value then
                        agi:fireRemote("Game", "replay")
                        return
                    end
                    if Toggles.AutoLeave.Value then
                        agi:fireRemote("Players", "teleport")
                    end
                end)
            end
            local agO_11 = remote("Players", "message")
            if agO_11 then
                agO_11.OnClientEvent:Connect(function(kH, kI)
                    if not Toggles.AutoLeaveChallenge then
                        return
                    end
                    if not Toggles.AutoLeaveChallenge.Value then
                        return
                    end
                    local VT = kI ~= "error" or type(kH) ~= "string"
                    if VT then
                        return
                    end
                    if not string.find(string.lower(kH), "replay this challenge") then
                        return
                    end
                    local lastEndedChallenge = agi.lastEndedChallenge
                    if lastEndedChallenge and (lastEndedChallenge.isDaily or lastEndedChallenge.isRegular) then
                        agi:fireRemote("Players", "teleport")
                    end
                end)
            end
            task.spawn(function()
                local V0
                local Menus = LocalPlayer2.PlayerGui:WaitForChild("Menus", 10)
                local V2 = Menus and Menus:WaitForChild("Start", 10)
                V0 = V2
                if not V0 then
                    return
                end
                V0:GetPropertyChangedSignal("Visible"):Connect(function()
                    if V0.Visible then
                        if Toggles.AutoVoteStart.Value then
                            agi:fireRemote("Players", "start")
                        end
                        autoMaxSpeedLoop()
                    end
                end)
                if V0.Visible and Toggles.AutoVoteStart.Value then
                    agi:fireRemote("Players", "start")
                end
                autoMaxSpeedLoop()
            end)
            task.spawn(function()
                local autoReplayLoop
                autoReplayLoop = nil
                local V7
                local Menus = LocalPlayer2.PlayerGui:WaitForChild("Menus", 10)
                local V9 = Menus and Menus:WaitForChild("EndScreen", 10)
                V7 = V9
                if not V7 then
                    return
                end
                autoReplayLoop = function()
                    if V7.Visible and Toggles.AutoReplay.Value then
                        agi:fireRemote("Game", "replay")
                    end
                end
                V7:GetPropertyChangedSignal("Visible"):Connect(function()
                    task.spawn(autoReplayLoop)
                end)
                task.spawn(autoReplayLoop)
            end)
            local agu = remote("General", "timer")
            if agu then
                agb = 0
                ago = 0
                afZ = function(lf, lg)
                    if not (lf and lg) then
                        return
                    end
                    local Wb_3 = workspace:GetServerTimeNow()
                    local Wc = Wb_3 + lf
                    local Wd = Wb_3 + lg
                    local Wb_4 = math.abs(Wc - ago) > 5 or math.abs(Wd - agb) > 5
                    if Wb_4 then
                        ago = Wc
                        agb = Wd
                        agi:writeResets({ dailyEpoch = Wc, regularEpoch = Wd })
                    end
                end
                agu.OnClientEvent:Connect(function(...)
                    local Wj_2
                    local Wi_2
                    Wj_2, Wi_2 = nil, nil
                    for i, v in ipairs({ ... }) do
                        if type(v) == "number" then
                            if v <= agi.RegularPeriod + 60 then
                                Wi_2 = v
                            elseif v <= agi.DailyPeriod + 60 then
                                Wj_2 = v
                            end
                        end
                    end
                    afZ(Wj_2, Wi_2)
                end)
                task.spawn(function()
                    while agu.Parent do
                        local Wr = agi.Utility and type(agi.Utility.timers) == "table"
                        if Wr then
                            afZ(agi.Utility.timers.day, agi.Utility.timers.half_hour)
                        end
                        task.wait(5)
                    end
                end)
            end
            afF = {}
            agH = function(lB)
                local Ww_2
                if afF[lB] ~= nil then
                    return afF[lB]
                end
                local Wt = 0
                local Characters = agi._ReplicatedStorage:FindFirstChild("Characters")
                local Wv = Characters and Characters:FindFirstChild(lB)
                local Wv_2
                local Wu_4 = Wv
                if Wv then
                    Wv = Wu_4:FindFirstChild("data")
                end
                local Wu_5 = Wv
                if Wu_5 then
                    Wv_2, Ww_2 = pcall(require, Wu_5)
                    local Wu_6 = Wv_2 and type(Ww_2) == "table" and Ww_2.max_upgrades
                    if Wu_6 then
                        Wt = Ww_2.max_upgrades
                    end
                end
                afF[lB] = Wt
                return Wt
            end
            agD = function(lO)
                local LocalPlayer = game:GetService("Players").LocalPlayer
                local WI = LocalPlayer and LocalPlayer:FindFirstChild("PlayerGui")
                local WH_8 = WI
                if WI then
                    WI = WH_8:FindFirstChild("Hotbar")
                end
                local WH_9 = WI
                if WI then
                    WI = WH_9:FindFirstChild("Menus")
                end
                local WH_10 = WI
                if WI then
                    WI = WH_10:FindFirstChild("Team")
                end
                local WH_11 = WI
                if WI then
                    WI = WH_11:FindFirstChild("ScrollingFrame")
                end
                local WH_12 = WI
                if WI then
                    WI = WH_12:FindFirstChild(lO)
                end
                local WH_13 = WI
                if WI then
                    WI = WH_13:FindFirstChild("Upgrade")
                end
                local WH_14 = WI
                if WI then
                    WI = WH_14:IsA("TextLabel")
                end
                if WI then
                    local WI_2 = string.match(WH_14.Text, "%[(%d+)/")
                    if WI_2 then
                        return tonumber(WI_2)
                    end
                    return 0
                end
                return 0
            end
            agA = function(l6, l7)
                local LocalPlayer = game:GetService("Players").LocalPlayer
                local WR = LocalPlayer and LocalPlayer:FindFirstChild("PlayerGui")
                local WQ_6 = WR
                if WR then
                    WR = WQ_6:FindFirstChild("Hotbar")
                end
                local WQ_7 = WR
                if WR then
                    WR = WQ_7:FindFirstChild("Menus")
                end
                local WQ_8 = WR
                if WR then
                    WR = WQ_8:FindFirstChild("Team")
                end
                local WS = WR
                if WR then
                    WR = WS:FindFirstChild("ScrollingFrame")
                end
                local WS_6 = WR
                if WR then
                    WR = WS_6:FindFirstChild(l6)
                end
                local WS_7 = WR
                if WR then
                    WR = WS_7:FindFirstChild("Upgrade")
                end
                local WS_8 = WR
                if WR then
                    WR = WS_8:IsA("TextLabel")
                end
                if WR then
                    WS_8.Text = "Upgrade: [" .. l7 .. "/" .. agH(l6) .. "]"
                end
                local WR_4 = WQ_8 and WQ_8:FindFirstChild("info")
                local WQ_9 = WR_4
                if WR_4 then
                    WR_4 = WQ_9:FindFirstChild("Unit")
                end
                local WS_9 = WR_4
                if WR_4 then
                    WR_4 = WS_9:FindFirstChild("UnitName")
                end
                local WS_10 = WR_4
                if WR_4 then
                    WR_4 = WS_10:IsA("TextLabel")
                end
                if WR_4 then
                    WR_4 = WS_10.Text == l6
                end
                if WR_4 then
                    local Upgrade = WQ_9:FindFirstChild("Upgrade")
                    local WQ_10 = Upgrade and Upgrade:FindFirstChild("Total")
                    local WR_6 = WQ_10
                    if WQ_10 then
                        WQ_10 = WR_6:IsA("TextLabel")
                    end
                    if WQ_10 then
                        WR_6.Text = "Upgrade (" .. l7 .. "/" .. agH(l6) .. ")"
                    end
                end
            end
            agG = function()
                local W0_2
                local W__4
                local WX = remote("Players", "get")
                local WY = {}
                local WZ = {}
                if WX then
                    W__4, W0_2 = pcall(function()
                        return WX:InvokeServer()
                    end)
                    local W1 = W__4 and type(W0_2) == "table" and type(W0_2.characters) == "table"
                    if W1 then
                        for k, v in pairs(W0_2.characters) do
                            local W__5 = type(v) == "table" and v.equipped and v.name and not WY[v.name]
                            if W__5 then
                                WY[v.name] = true
                                table.insert(WZ, v.name)
                            end
                        end
                    end
                end
                if #WZ == 0 then
                    local W__6 = agi._ReplicatedStorage:FindFirstChild("Characters")
                    if W__6 then
                        for i, child in ipairs(W__6:GetChildren()) do
                            if not WY[child.Name] then
                                WY[child.Name] = true
                                table.insert(WZ, child.Name)
                            end
                        end
                    end
                end
                table.sort(WZ)
                return WZ
            end
            af7 = function()
                local PlayerGui = LocalPlayer2:FindFirstChild("PlayerGui")
                local Xm = PlayerGui and PlayerGui:FindFirstChild("Hotbar")
                return Xm
            end
            agv = function()
                local Xr = af7()
                local Xs = Xr and Xr:FindFirstChild("Info")
                local Xr_4 = Xs
                if Xs then
                    Xs = Xr_4:FindFirstChild("Wave")
                end
                local Xr_5 = Xs
                if Xs then
                    Xs = Xr_5:FindFirstChild("Amount")
                end
                local Xr_6 = Xs
                if Xs then
                    Xs = tonumber(Xr_6.Text)
                end
                return Xs
            end
            afO = function()
                local Xx = {}
                local Characters = workspace:FindFirstChild("Characters")
                if not Characters then
                    return Xx
                end
                for i, child in ipairs(Characters:GetChildren()) do
                    if child:GetAttribute("type") == "Allies" then
                        local Xy_2 = Xx[child.Name]
                        if not Xy_2 then
                            Xy_2 = {}
                            Xx[child.Name] = Xy_2
                        end
                        table.insert(Xy_2, child)
                    end
                end
                return Xx
            end
            afS = function()
                local XG = {}
                local XH = af7()
                local XI = XH and XH:FindFirstChild("Boss_Frames")
                local Characters = workspace:FindFirstChild("Characters")
                if not (XI and Characters) then
                    return XG
                end
                for i, child in ipairs(Characters:GetChildren()) do
                    local XI_5 = child:GetAttribute("type") == "Enemies" and child.PrimaryPart
                    if XI_5 then
                        local attr = child:GetAttribute("id")
                        local XJ_2 = attr and XI:FindFirstChild(tostring(attr))
                        if XJ_2 then
                            table.insert(XG, child)
                        end
                    end
                end
                return XG
            end
            afW = 60
            afM = function(nn, no, np)
                if #np == 0 then
                    return false
                end
                local XS = no[nn] or {}
                for i, v in ipairs(XS) do
                    if v.PrimaryPart then
                        for i, v2 in ipairs(np) do
                            if (v.PrimaryPart.Position - v2.PrimaryPart.Position).Magnitude <= afW then
                                return true
                            end
                        end
                    end
                end
                return false
            end
            agr = function(nw)
                local X6
                X6 = nil
                local X8_2
                X6 = remote("Players", "get")
                local X5 = remote("Characters", "autoplay")
                local X7 = X6 and X5
                local X7_2
                if not X7 then
                    return
                end
                X7_2, X8_2 = pcall(function()
                    return X6:InvokeServer()
                end)
                local X9 = X7_2 and type(X8_2) == "table" and X8_2.autoplay ~= nw
                if X9 then
                    pcall(function()
                        X5:InvokeServer()
                    end)
                end
            end
            afG = {}
            agJ = function(nG, nH)
                local Ye = remote("Ultimates", "start")
                local Yf = af7()
                local Yg = Yf and Yf:FindFirstChild("BottomUI")
                local Yf_6 = Yg
                if Yg then
                    Yg = Yf_6:FindFirstChild("Towers")
                end
                local Yf_7 = Yg
                if Yg then
                    Yg = Ye
                end
                if not Yg then
                    return
                end
                local Yg_2 = os.clock()
                for i, child in ipairs(Yf_7:GetChildren()) do
                    local Yr = child
                    local Button = Yr:FindFirstChild("Button")
                    local Yh = Button and Button:GetAttribute("ult") == true
                    if Yh then
                        local Yf_9 = false
                        if Toggles.AutoUltimate.Value then
                            Yf_9 = true
                        elseif Toggles.AutoUltimateNearBoss.Value then
                            Yf_9 = afM(Yr.Name, nG, nH)
                        end
                        local Yh_2 = Yf_9
                        if Yh_2 then
                            Yh_2 = not afG[Yr.Name] or Yg_2 - afG[Yr.Name] > 1
                        end
                        if Yh_2 then
                            afG[Yr.Name] = Yg_2
                            pcall(function()
                                Ye:InvokeServer(Yr.Name)
                            end)
                        end
                    end
                end
            end
            agL = function(n4)
                local Value, Yw, Yx, Yy, Yz, YA, YB, YC
                local Ys = remote("Characters", "upgrade")
                if not Ys then
                    return
                end
                local YG = 1
                while YG <= 3 do
                    local YH = YG
                    local Yu = true
                    local YK = false
                    for i = 1, 6 do
                        local Value2
                        local YJ = 18
                        while true do
                            if YJ < 17 then
                                if YJ < 8 then
                                    if YJ < 4 then
                                        if YJ < 2 then
                                            if YJ < 1 then
                                                Yw = Yy < Value
                                                YJ = if Yw then 6 else 17
                                            else
                                                Yw = #Yy
                                                Yy = agD(Value2)
                                                YJ = if Yy < Value then 22 else 2
                                            end
                                        elseif YJ < 3 then
                                            YJ = 15
                                        else
                                            Yy = YB
                                            agA(Value2, YB)
                                            YJ = 31
                                        end
                                    elseif YJ < 6 then
                                        if YJ < 5 then
                                            YJ = if Yw then 33 else 32
                                        else
                                            Yw = 0
                                            YJ = 12
                                        end
                                    elseif YJ < 7 then
                                        Yw = Yx > 0
                                        YJ = 17
                                    else
                                        YJ = 11
                                    end
                                elseif YJ < 12 then
                                    if YJ < 10 then
                                        if YJ < 9 then
                                            YK = true
                                            YJ = 23
                                        else
                                            Yw = Options["UpgradeField" .. i].Value
                                            YJ = if Yw then 12 else 5
                                        end
                                    elseif YJ < 11 then
                                        YJ = if Yz then 24 else 7
                                    else
                                        YJ = 0
                                    end
                                elseif YJ < 14 then
                                    if YJ < 13 then
                                        Yx = Yw
                                        Yw = {}
                                        Yy = n4[Value2]
                                        YJ = if Yy then 1 else 14
                                    else
                                        return
                                    end
                                elseif YJ < 15 then
                                    Yy = Yw
                                    YJ = 1
                                elseif YJ < 16 then
                                    YJ = 23
                                else
                                    YJ = 2
                                end
                            elseif YJ < 26 then
                                if YJ < 21 then
                                    if YJ < 19 then
                                        if YJ < 18 then
                                            YJ = if Yw then 13 else 16
                                        else
                                            Value2 = Options["UpgradeUnit" .. i].Value
                                            Value = Options["UpgradeTarget" .. YH .. "_" .. i].Value
                                            Yw = Value2
                                            YJ = if Yw then 25 else 4
                                        end
                                    elseif YJ < 20 then
                                        YJ = 26
                                    else
                                        YJ = if not YC then 34 else 3
                                    end
                                elseif YJ < 23 then
                                    if YJ < 22 then
                                        YC = type(YB) == "number"
                                        YJ = 20
                                    else
                                        Yu = false
                                        YJ = if Yw >= Yx then 29 else 0
                                    end
                                elseif YJ < 24 then
                                    break
                                elseif YJ < 25 then
                                    Yw = Yw + 1
                                    Yz, YA, YB = pcall(function()
                                        return Ys:InvokeServer(Value2)
                                    end)
                                    task.wait(0.2)
                                    YC = Yz
                                    YJ = if YC then 30 else 28
                                else
                                    Yw = Value
                                    YJ = 4
                                end
                            elseif YJ < 30 then
                                if YJ < 28 then
                                    if YJ < 27 then
                                        Yz = Yy < Value
                                        YJ = if Yz then 27 else 10
                                    else
                                        Yz = Yw < Value
                                        YJ = 10
                                    end
                                elseif YJ < 29 then
                                    YJ = if YC then 21 else 20
                                else
                                    Yw = 0
                                    YJ = 19
                                end
                            elseif YJ < 32 then
                                if YJ < 31 then
                                    YC = YA
                                    YJ = 28
                                else
                                    YJ = 19
                                end
                            elseif YJ < 33 then
                                YJ = if Yw then 9 else 15
                            elseif YJ < 34 then
                                Yw = Value > 0
                                YJ = 32
                            else
                                YJ = 11
                            end
                        end
                        if YK then
                            break
                        end
                    end
                    if not Yu then
                        return
                    end
                    YG += 1
                end
            end
            local AutoplayGroup = Tabs.Gameplay:AddLeftGroupbox("AutoPlay")
            Label4 = AutoplayGroup:AddLabel("Field: None", true)
            AutoplayGroup:AddToggle("AutoPlay", {
                Text = "Auto Play",
                Default = false,
                Callback = function(ox)
                    agr(ox)
                end
            })
            AutoplayGroup:AddToggle("AutoUpgrade", { Text = "Enable Auto Upgrade", Default = true })
            AutoplayGroup:AddToggle("AutoUltimate", { Text = "Auto Ultimate", Default = false })
            AutoplayGroup:AddToggle("AutoUltimateNearBoss", { Text = "Auto Ultimate Near Boss", Default = false })
            AutoplayGroup:AddToggle("UpgradeBeforeMatch", { Text = "Upgrade Before Match", Default = false })
            AutoplayGroup:AddInput("RestartWave", { Text = "Restart on Wave", Numeric = true, Default = "10", Finished = true })
            AutoplayGroup:AddToggle("AutoRestartWave", { Text = "Auto Restart on Wave", Default = false })
            local UpgradeGroup = Tabs.Gameplay:AddRightGroupbox("Upgrade")
            UpgradeGroup:AddDropdown("UpgradeType", { Text = "Select Type", Values = { "Upgrade", "Upgrade (Before Match)" }, Default = 1 })
            local agP = agG()
            local agU = 1
            while agU <= 6 do
                local agV = agU
                UpgradeGroup:AddDropdown("UpgradeUnit" .. agV, { Text = "Unit " .. agV, Values = agP, AllowNull = true, Multi = false })
                UpgradeGroup:AddSlider("UpgradeTarget1_" .. agV, {
                    Text = "Target 1 (" .. agV .. ")",
                    Min = 0,
                    Max = 10,
                    Default = 0,
                    Rounding = 0,
                    Tooltip = "Early game priority tier. Set to 0 to skip."
                })
                UpgradeGroup:AddSlider("UpgradeTarget2_" .. agV, {
                    Text = "Target 2 (" .. agV .. ")",
                    Min = 0,
                    Max = 10,
                    Default = 0,
                    Rounding = 0,
                    Tooltip = "Mid game priority tier. Set to 0 to skip."
                })
                UpgradeGroup:AddSlider("UpgradeTarget3_" .. agV, {
                    Text = "Target 3 (" .. agV .. ")",
                    Min = 0,
                    Max = 10,
                    Default = 0,
                    Rounding = 0,
                    Tooltip = "Late game max tier. Set to 0 to skip."
                })
                UpgradeGroup:AddSlider("UpgradeField" .. agV, {
                    Text = "Maxed on Field " .. agV,
                    Min = 0,
                    Max = 20,
                    Default = 0,
                    Rounding = 0,
                    Tooltip = "Wait for this many units on field before upgrading."
                })
                agU += 1
            end
            UpgradeGroup:AddButton("Refresh Units", function()
                local YN = agG()
                local YR = 1
                while YR <= 6 do
                    local YS = YR
                    Options["UpgradeUnit" .. YS]:SetValues(YN)
                    YR += 1
                end
            end)
            afV = function(oH)
                local YU = {}
                for k in pairs(oH) do
                    table.insert(YU, k)
                end
                table.sort(YU)
                local YV = {}
                for i, v in ipairs(YU) do
                    local YU_5 = #(oH[v] or {})
                    local YW_2 = agD(v)
                    local YX = agH(v)
                    if YU_5 > 0 then
                        local Za = 1
                        while Za <= YU_5 do
                            local Zb = Za
                            table.insert(YV, v .. " " .. Zb .. ": Upgrades " .. YW_2 .. "/" .. YX)
                            Za += 1
                        end
                    end
                end
                local YU_6 = #YV > 0 and table.concat(YV, "\n")
                local YV_2 = YU_6 or "Field: None"
                Label4:SetText(YV_2)
            end
            ags = 0
            agE = 0
            agl = false
            task.spawn(function()
                while true do
                    task.wait(0.5)
                    if not Toggles.AutoPlay then
                        break
                    end
                    pcall(function()
                        local Zd = afO()
                        afV(Zd)
                        local Ze = os.clock()
                        if Toggles.AutoPlay.Value and Ze - agE > 4 then
                            agE = Ze
                            agr(true)
                        end
                        if Toggles.AutoUltimate.Value or Toggles.AutoUltimateNearBoss.Value then
                            agJ(Zd, afS())
                        end
                        if Toggles.AutoUpgrade.Value and Ze - ags > 1 then
                            ags = Ze
                            local Ze_4 = agv()
                            local Zf_9 = not Ze_4 or Ze_4 < 1
                            local Zf_11 = not (Options.UpgradeType.Value == "Upgrade (Before Match)" or Toggles.UpgradeBeforeMatch.Value)
                            local Zk = if Zf_11 then 1 else 0
                            local Zi = 1006 * Zk + 3030 * (1 - Zk)
                            local Zj = 2785 * Zk + 1603 * (1 - Zk)
                            if not ((Zi * 1946 + Zj * 2451 + Zi * Zj) % 16777213 == 11585421) then
                                Zf_11 = Zf_9
                            end
                            if Zf_11 then
                                agL(Zd)
                            end
                        end
                        if Toggles.AutoRestartWave.Value then
                            local Zd_2 = agv()
                            local Ze_6 = tonumber(Options.RestartWave.Value)
                            if Zd_2 and Ze_6 then
                                if Zd_2 >= Ze_6 then
                                    if not agl then
                                        agl = true
                                        agi:fireRemote("Game", "replay")
                                    end
                                else
                                    agl = false
                                end
                            end
                        end
                    end)
                end
            end)
            af5 = agi.BaseFolder .. "/presets.json"
            local function agO_14()
                local Zp_3
                local Zo_5
                Zo_5, Zp_3 = pcall(function()
                    local Zm = isfile and isfile(af5)
                    if Zm then
                        return _HttpService:JSONDecode(readfile(af5))
                    end
                end)
                local Zq = Zo_5 and type(Zp_3) == "table"
                if Zq then
                    local Zo_6 = type(Zp_3.awaken) == "table" and Zp_3.awaken
                    local Zr = Zo_6 or {}
                    local Zo_7 = type(Zp_3.gear) == "table" and Zp_3.gear
                    local Zs = Zo_7 or {}
                    local Zo_8 = type(Zp_3.materials) == "table" and Zp_3.materials
                    local Zp_4 = {}
                    local Zq_6 = Zo_8
                    local Zz = if Zq_6 then 1 else 0
                    local Zx = 147 * Zz + 2081 * (1 - Zz)
                    local Zy = 130 * Zz + 3694 * (1 - Zz)
                    if not ((Zx * 629 + Zy * 3093 + Zx * Zy) % 16777213 == 513663) then
                        Zq_6 = Zp_4
                    end
                    return { awaken = Zr, gear = Zs, materials = Zq_6 }
                end
                return { awaken = {}, gear = {}, materials = {} }
            end
            agi.Presets = agO_14()
            afY = {
                ["Brad Ash"] = "Brand Ash",
                Headbands = "Headband",
                ["Hogyoku Evo"] = "Hogyoku Orb",
                ["King’s Haki Residue"] = "King's Haki Residue"
            }
            afN = function(px)
                local ZA = {}
                for k, v in pairs(px) do
                    local ZB = afY[k] or k
                    ZA[ZB] = v
                end
                return ZA
            end
            afR = function()
                local ZK
                ZK = nil
                local ZP_7, ZP_8, ZP_10
                local Characters = agi._ReplicatedStorage:FindFirstChild("Characters")
                local Gear = agi._ReplicatedStorage:FindFirstChild("Gear")
                ZK = remote("Crafting", "get")
                local ZO = Characters and Gear and ZK
                local ZO_8, ZO_9, ZO_11
                if not ZO then
                    return false
                end
                local ZN_2 = {}
                for i, child in ipairs(Characters:GetChildren()) do
                    local data = child:FindFirstChild("data")
                    if data then
                        ZO_8, ZP_7 = pcall(require, data)
                        local ZL_5 = ZO_8 and type(ZP_7) == "table" and type(ZP_7.awakening) == "table" and type(ZP_7.awakening.cost) == "table"
                        if ZL_5 then
                            ZN_2[child.Name] = afN(ZP_7.awakening.cost)
                        end
                    end
                end
                local ZL_6 = {}
                ZO_9, ZP_8 = pcall(function()
                    return ZK:InvokeServer()
                end)
                local ZQ = ZO_9 and type(ZP_8) == "table"
                if ZQ then
                    for k, v in pairs(ZP_8) do
                        if Gear:FindFirstChild(k) then
                            local ZO_10 = type(v) == "table" and afN(v)
                            local ZP_9 = ZO_10 or v
                            ZL_6[k] = ZP_9
                        end
                    end
                end
                local ZM_3 = not next(ZN_2)
                if ZM_3 ~= false then
                    ZM_3 = not next(ZL_6)
                end
                if ZM_3 then
                    return false
                end
                local ZM_4 = {}
                ZO_11, ZP_10 = pcall(function()
                    return require(agi.LocalPlayer.PlayerScripts.Client.Play.Worlds)
                end)
                local ZQ_2 = ZO_11 and type(ZP_10) == "table"
                if ZQ_2 then
                    for k, v in pairs(ZP_10) do
                        local ZO_12 = type(v) == "table" and v.name and type(v.Rewards) == "table"
                        if ZO_12 then
                            for k, v2 in pairs(v.Rewards) do
                                if type(v2) == "table" then
                                    for k2, v2 in pairs(v2) do
                                        if type(v2) == "table" then
                                            for i, v2 in ipairs(v2) do
                                                if type(v2) == "table" then
                                                    for k3 in pairs(v2) do
                                                        local ZP_11 = ZM_4[k3] or {}
                                                        ZM_4[k3] = ZP_11
                                                        table.insert(ZM_4[k3], { mode = k, world = v.name, act = i, difficulty = k2 })
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
                if not next(ZM_4) then
                    ZM_4 = agi.Presets.materials or {}
                end
                agi.Presets = { awaken = ZN_2, gear = ZL_6, materials = ZM_4 }
                pcall(function()
                    if writefile then
                        writefile(af5, _HttpService:JSONEncode(agi.Presets))
                    end
                end)
                return true
            end
            afR()
            af3 = function(qi)
                local aaz = agi.Utility and agi.Utility.data
                if not aaz then
                    return 0
                end
                local aaB = aaz.stats and aaz.stats[qi]
                if not aaB then
                    aaB = aaz.items and aaz.items[qi]
                end
                return aaB or 0
            end
            agI = function(qr)
                return agi.Presets.awaken[qr]
            end
            agd = function(qu, qv)
                local aaG = agi.Presets.materials[qu]
                if not aaG or #aaG == 0 then
                    return nil
                end
                local aaH_2 = nil
                for i, v in ipairs(aaG) do
                    if v.difficulty == qv then
                        local aaI_3 = not aaH_2
                        if not aaI_3 then
                            aaI_3 = (v.act or 1) < (aaH_2.act or 1)
                        end
                        if aaI_3 then
                            aaH_2 = v
                        end
                    end
                end
                if aaH_2 then
                    return aaH_2
                end
                for i, v in ipairs(aaG) do
                    local aaG_2 = not aaH_2
                    if not aaG_2 then
                        aaG_2 = (v.act or 1) < (aaH_2.act or 1)
                    end
                    if aaG_2 then
                        aaH_2 = v
                    end
                end
                return aaH_2
            end
            af9 = function()
                local aaY = agi.Utility and agi.Utility.data
                local aaZ = aaY
                if aaY then
                    aaY = type(aaZ.characters) == "table"
                end
                return aaY and aaZ.characters or {}
            end
            local function agO_15()
                local aa4 = {}
                local aa5 = {}
                for k, v in pairs(af9()) do
                    local aa6 = type(v) == "table" and v.name and v.id and not aa4[v.name] and agI(v.name)
                    if aa6 then
                        aa4[v.name] = true
                        table.insert(aa5, v.name)
                    end
                end
                table.sort(aa5)
                return aa5
            end
            afQ = function(qU)
                for k, v in pairs(af9()) do
                    local abe = type(v) == "table" and v.name == qU and v.id
                    if abe then
                        return v.id
                    end
                end
                return nil
            end
            afT = function(q_)
                local abr_2
                local abq_2
                local abp = agI(q_)
                abq_2, abr_2 = {}, {}
                if not abp then
                    return abq_2, abr_2
                end
                for k, v in pairs(abp) do
                    if af3(k) < v then
                        local abp_2 = agd(k, agi.AwakenConfig.Difficulty)
                        if abp_2 then
                            table.insert(abq_2, { item = k, need = v, stage = abp_2 })
                        else
                            table.insert(abr_2, k)
                        end
                    end
                end
                table.sort(abq_2, function(ra, rb)
                    return ra.item < rb.item
                end)
                table.sort(abr_2)
                return abq_2, abr_2
            end
            agK = function(rd)
                local abz = agI(rd)
                if not abz then
                    return false
                end
                for k, v in pairs(abz) do
                    if af3(k) < v then
                        return false
                    end
                end
                return true
            end
            agC = function(rk)
                if not rk then
                    return "Status: No preset data"
                end
                local abH = {}
                for k, v in pairs(rk) do
                    local abI = af3(k)
                    if abI < v then
                        table.insert(abH, string.format("%s %d/%d", k, abI, v))
                    end
                end
                if #abH == 0 then
                    return "Status: Requirements met"
                end
                table.sort(abH)
                return "Status: Need " .. table.concat(abH, ", ")
            end
            local function agP_2(rr)
                local frame2
                local adm
                local CoreGui
                local screenGui
                local ads
                local ado
                local adk
                local Position2
                local Position
                local frame3
                frame2 = nil
                Position2 = nil
                frame3 = nil
                adk = nil
                screenGui = nil
                adm = nil
                Position = nil
                ado = nil
                CoreGui = nil
                ads = nil
                local adh, adi, adq, adr, adt, adu
                local RunService = game:GetService("RunService")
                CoreGui = game:GetService("CoreGui")
                screenGui = Instance.new("ScreenGui")
                screenGui.Name = rr.guiName
                screenGui.ResetOnSpawn = false
                screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
                screenGui.DisplayOrder = 2147483647
                local adw = pcall(function()
                    local abQ = gethui and gethui()
                    local abR = abQ or CoreGui
                    screenGui.Parent = abR
                end)
                if not adw then
                    screenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
                end
                frame3 = Instance.new("Frame")
                frame3.Name = "MainFrame"
                frame3.Size = UDim2.new(0, 500, 0, 360)
                frame3.Position = UDim2.new(0.5, -250, 0.5, -180)
                frame3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                frame3.BorderSizePixel = 0
                frame3.Visible = false
                frame3.Parent = screenGui
                local uIStroke = Instance.new("UIStroke")
                uIStroke.Color = Color3.fromRGB(60, 60, 60)
                uIStroke.Parent = frame3
                local textLabel2 = Instance.new("TextLabel")
                textLabel2.Name = "Header"
                textLabel2.Size = UDim2.new(1, 0, 0, 30)
                textLabel2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                textLabel2.BorderSizePixel = 0
                textLabel2.Text = rr.title
                textLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
                textLabel2.TextSize = 14
                textLabel2.Font = Enum.Font.GothamBold
                textLabel2.TextXAlignment = Enum.TextXAlignment.Left
                textLabel2.Parent = frame3
                local textButton3 = Instance.new("TextButton")
                textButton3.Size = UDim2.new(0, 30, 0, 30)
                textButton3.Position = UDim2.new(1, -30, 0, 0)
                textButton3.BackgroundTransparency = 1
                textButton3.Text = "X"
                textButton3.TextColor3 = Color3.fromRGB(200, 50, 50)
                textButton3.TextSize = 16
                textButton3.Font = Enum.Font.GothamBold
                textButton3.Parent = textLabel2
                textButton3.MouseButton1Click:Connect(function()
                    frame3.Visible = false
                end)
                local textButton2 = Instance.new("TextButton")
                textButton2.Size = UDim2.new(0, 60, 0, 22)
                textButton2.Position = UDim2.new(1, -100, 0.5, -11)
                textButton2.BackgroundColor3 = Color3.fromRGB(50, 120, 60)
                textButton2.BorderSizePixel = 0
                textButton2.Text = "Save"
                textButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
                textButton2.TextSize = 12
                textButton2.Font = Enum.Font.GothamBold
                textButton2.Parent = textLabel2
                textButton2.MouseButton1Click:Connect(rr.onSave)
                adk, ads, Position2, Position = nil, nil, nil, nil
                textLabel2.InputBegan:Connect(function(rJ)
                    if rJ.UserInputType == Enum.UserInputType.MouseButton1 or rJ.UserInputType == Enum.UserInputType.Touch then
                        adk = true
                        Position2 = rJ.Position
                        Position = frame3.Position
                        rJ.Changed:Connect(function()
                            if rJ.UserInputState == Enum.UserInputState.End then
                                adk = false
                            end
                        end)
                    end
                end)
                textLabel2.InputChanged:Connect(function(rR)
                    local abW = rR.UserInputType == Enum.UserInputType.MouseMovement
                    local ab_ = if abW then 1 else 0
                    local abY = 502 * ab_ + 1357 * (1 - ab_)
                    local abZ = 2424 * ab_ + 570 * (1 - ab_)
                    if not ((abY * 3858 + abZ * 3019 + abY * abZ) % 16777213 == 10471620) then
                        abW = rR.UserInputType == Enum.UserInputType.Touch
                    end
                    if abW then
                        ads = rR
                    end
                end)
                RunService.RenderStepped:Connect(function()
                    if adk and ads then
                        local ab0_2 = ads.Position - Position2
                        frame3.Position = UDim2.new(Position.X.Scale, Position.X.Offset + ab0_2.X, Position.Y.Scale, Position.Y.Offset + ab0_2.Y)
                    end
                end)
                frame2 = Instance.new("Frame")
                frame2.Size = UDim2.new(1, -20, 1, -40)
                frame2.Position = UDim2.new(0, 10, 0, 35)
                frame2.BackgroundTransparency = 1
                frame2.Parent = frame3
                local function adv_2(r1, r2, r3)
                    local frame = Instance.new("Frame")
                    frame.Position = r2
                    frame.Size = r3
                    frame.BackgroundTransparency = 1
                    frame.Parent = frame2
                    local textLabel = Instance.new("TextLabel")
                    textLabel.Size = UDim2.new(1, 0, 0, 20)
                    textLabel.BackgroundTransparency = 1
                    textLabel.Text = r1
                    textLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
                    textLabel.TextSize = 14
                    textLabel.Font = Enum.Font.GothamSemibold
                    textLabel.Parent = frame
                    local scrollingFrame = Instance.new("ScrollingFrame")
                    scrollingFrame.Position = UDim2.new(0, 0, 0, 25)
                    scrollingFrame.Size = UDim2.new(1, 0, 1, -25)
                    scrollingFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                    scrollingFrame.BorderColor3 = Color3.fromRGB(40, 40, 40)
                    scrollingFrame.ScrollBarThickness = 4
                    scrollingFrame.Parent = frame
                    local uIListLayout = Instance.new("UIListLayout")
                    uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                    uIListLayout.Padding = UDim.new(0, 2)
                    uIListLayout.Parent = scrollingFrame
                    return scrollingFrame
                end
                adq = adv_2("Difficulty", UDim2.new(0, 0, 0, 0), UDim2.new(0, 90, 1, 0))
                adh = adv_2(rr.itemTitle, UDim2.new(0, 100, 0, 0), UDim2.new(0, 160, 1, 0))
                adm = adv_2("Requirements", UDim2.new(0, 270, 0, 0), UDim2.new(0, 210, 1, 0))
                adu = function(sd, se, sf, sg)
                    local textButton = Instance.new("TextButton")
                    textButton.Size = UDim2.new(1, 0, 0, 25)
                    local ab3 = sf and Color3.fromRGB(50, 100, 200)
                    local ab4 = ab3
                    local ab8 = if ab4 then 1 else 0
                    local ab6 = 3890 * ab8 + 294 * (1 - ab8)
                    local ab7 = 3936 * ab8 + 3275 * (1 - ab8)
                    if not ((ab6 * 3824 + ab7 * 3490 + ab6 * ab7) % 16777213 == 10368614) then
                        ab4 = Color3.fromRGB(30, 30, 30)
                    end
                    textButton.BackgroundColor3 = ab4
                    textButton.BorderSizePixel = 0
                    textButton.Text = se
                    textButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                    textButton.TextSize = 12
                    textButton.Font = Enum.Font.Gotham
                    textButton.Parent = sd
                    textButton.MouseButton1Click:Connect(sg)
                    return textButton
                end
                adr = function(sl)
                    for i, child in ipairs(sl:GetChildren()) do
                        if not child:IsA("UIListLayout") then
                            child:Destroy()
                        end
                    end
                end
                adi = function(sp)
                    local textLabel = Instance.new("TextLabel")
                    textLabel.Size = UDim2.new(1, 0, 0, 24)
                    textLabel.BackgroundTransparency = 1
                    textLabel.Text = " " .. sp
                    textLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
                    textLabel.TextSize = 12
                    textLabel.Font = Enum.Font.Gotham
                    textLabel.TextXAlignment = Enum.TextXAlignment.Left
                    textLabel.TextWrapped = true
                    textLabel.Parent = adm
                end
                ado = function()
                    local acl_5
                    adr(adm)
                    if rr.queueKey then
                        acl_5 = rr.config[rr.queueKey]
                    else
                        acl_5 = { rr.config[rr.selectedKey] }
                    end
                    if not acl_5[1] then
                        adi("Select a " .. string.lower(rr.itemTitle) .. ".")
                    else
                        for i, v in ipairs(acl_5) do
                            local textBox
                            local acx = v
                            if rr.queueKey then
                                adi(i .. ". " .. acx)
                            end
                            if rr.targetMode then
                                local acl_6 = af3(acx)
                                local acm_7 = rr.config.Targets[acx] or 0
                                local frame = Instance.new("Frame")
                                frame.Size = UDim2.new(1, 0, 0, 22)
                                frame.BackgroundTransparency = 1
                                frame.Parent = adm
                                local textLabel = Instance.new("TextLabel")
                                textLabel.Size = UDim2.new(1, -60, 1, 0)
                                textLabel.BackgroundTransparency = 1
                                textLabel.Text = string.format(" %s  %d/", acx, acl_6)
                                local acp_4 = acl_6 >= acm_7 and acm_7 > 0
                                local acl_7 = acp_4 and Color3.fromRGB(120, 220, 120)
                                local acp_5 = acl_7 or Color3.fromRGB(230, 230, 230)
                                textLabel.TextColor3 = acp_5
                                textLabel.TextSize = 12
                                textLabel.Font = Enum.Font.Gotham
                                textLabel.TextXAlignment = Enum.TextXAlignment.Left
                                textLabel.Parent = frame
                                textBox = Instance.new("TextBox")
                                textBox.Size = UDim2.new(0, 50, 0, 18)
                                textBox.Position = UDim2.new(1, -55, 0.5, -9)
                                textBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                                textBox.BorderColor3 = Color3.fromRGB(60, 60, 60)
                                textBox.Text = tostring(acm_7)
                                textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
                                textBox.TextSize = 12
                                textBox.Font = Enum.Font.Gotham
                                textBox.Parent = frame
                                textBox.FocusLost:Connect(function()
                                    local ach = tonumber(textBox.Text)
                                    if ach and ach > 0 then
                                        rr.config.Targets[acx] = ach
                                    else
                                        rr.config.Targets[acx] = nil
                                        textBox.Text = "0"
                                    end
                                    ado()
                                end)
                            else
                                local acl_8 = rr.getCost(acx)
                                local acm_9 = not acl_8 or not next(acl_8)
                                if acm_9 then
                                    adi("No preset data.")
                                else
                                    local acm_10 = {}
                                    for k in pairs(acl_8) do
                                        table.insert(acm_10, k)
                                    end
                                    table.sort(acm_10)
                                    for i, v in ipairs(acm_10) do
                                        local acm_11 = acl_8[v]
                                        local acn_4 = af3(v)
                                        local textLabel = Instance.new("TextLabel")
                                        textLabel.Size = UDim2.new(1, 0, 0, 22)
                                        textLabel.BackgroundTransparency = 1
                                        textLabel.Text = string.format(" %s  %d/%d", v, acn_4, acm_11)
                                        local acp_6 = acn_4 >= acm_11 and Color3.fromRGB(120, 220, 120)
                                        local acm_12 = acp_6 or Color3.fromRGB(230, 230, 230)
                                        textLabel.TextColor3 = acm_12
                                        textLabel.TextSize = 12
                                        textLabel.Font = Enum.Font.Gotham
                                        textLabel.TextXAlignment = Enum.TextXAlignment.Left
                                        textLabel.Parent = adm
                                    end
                                end
                            end
                        end
                    end
                    adm.CanvasSize = UDim2.new(0, 0, 0, #adm:GetChildren() * 24)
                end
                adt = nil
                adt = function()
                    adr(adq)
                    adr(adh)
                    for i, v in ipairs({ "Normal", "Hard" }) do
                        local acU = v
                        adu(adq, acU, rr.config.Difficulty == acU, function()
                            rr.config.Difficulty = acU
                            adt()
                        end)
                    end
                    local acL = rr.getItems()
                    if rr.queueKey then
                        local acM_3 = {}
                        for i, v in ipairs(acL) do
                            acM_3[v] = true
                        end
                        local acN = rr.config[rr.queueKey]
                        for i, v in ipairs(acN) do
                            if not acM_3[v] then
                                table.insert(acL, v)
                            end
                        end
                    end
                    for i, v in ipairs(acL) do
                        local acJ, acK
                        local ac7 = v
                        if rr.queueKey then
                            acJ = rr.config[rr.queueKey]
                            acK = nil
                            for i, v in ipairs(acJ) do
                                if v == ac7 then
                                    acK = i
                                    break
                                end
                            end
                            local acM_4 = acK and acK .. ". " .. ac7 or ac7
                            adu(adh, acM_4, acK ~= nil, function()
                                if acK then
                                    table.remove(acJ, acK)
                                else
                                    table.insert(acJ, ac7)
                                end
                                adt()
                            end)
                        else
                            adu(adh, ac7, rr.config[rr.selectedKey] == ac7, function()
                                rr.config[rr.selectedKey] = ac7
                                adt()
                            end)
                        end
                    end
                    adq.CanvasSize = UDim2.new(0, 0, 0, #adq:GetChildren() * 27)
                    adh.CanvasSize = UDim2.new(0, 0, 0, #adh:GetChildren() * 27)
                    ado()
                end
                task.spawn(function()
                    while true do
                        if frame3.Visible then
                            ado()
                        end
                        task.wait(2)
                    end
                end)
                adt()
                return frame3, adt
            end
            local function agQ()
                local adB_2
                local adz = isfile
                local adz_5
                local adA = {
                    Unit = nil,
                    Units = {},
                    QueueIndex = 1,
                    Difficulty = "Hard",
                    AutoLobby = true,
                    Active = false,
                    Target = nil
                }
                if adz then
                    adz = isfile(agi.AwakenConfigFile)
                end
                if adz then
                    adz_5, adB_2 = pcall(function()
                        return _HttpService:JSONDecode(readfile(agi.AwakenConfigFile))
                    end)
                    local adC = adz_5 and type(adB_2) == "table"
                    if adC then
                        if type(adB_2.Unit) == "string" then
                            adA.Unit = adB_2.Unit
                        end
                        if type(adB_2.Units) == "table" then
                            for i, v in ipairs(adB_2.Units) do
                                if type(v) == "string" then
                                    table.insert(adA.Units, v)
                                end
                            end
                        end
                        if type(adB_2.QueueIndex) == "number" then
                            adA.QueueIndex = adB_2.QueueIndex
                        end
                        local adz_6 = adB_2.Difficulty == "Normal"
                        local adM = if adz_6 then 1 else 0
                        local adK = 1795 * adM + 618 * (1 - adM)
                        local adL = 494 * adM + 2700 * (1 - adM)
                        if not ((adK * 1136 + adL * 838 + adK * adL) % 16777213 == 3339822) then
                            adz_6 = adB_2.Difficulty == "Hard"
                        end
                        if adz_6 then
                            adA.Difficulty = adB_2.Difficulty
                        end
                        if type(adB_2.AutoLobby) == "boolean" then
                            adA.AutoLobby = adB_2.AutoLobby
                        end
                        if type(adB_2.Active) == "boolean" then
                            adA.Active = adB_2.Active
                        end
                        local adz_7 = type(adB_2.Target) == "table" and type(adB_2.Target.item) == "string" and type(adB_2.Target.need) == "number"
                        if adz_7 then
                            adA.Target = { item = adB_2.Target.item, need = adB_2.Target.need }
                        end
                    end
                end
                if #adA.Units == 0 and adA.Unit then
                    adA.Units = { adA.Unit }
                end
                return adA
            end
            agg = function()
                if not writefile then
                    return false
                end
                return (pcall(function()
                    writefile(agi.AwakenConfigFile, _HttpService:JSONEncode(agi.AwakenConfig))
                end))
            end
            agi.AwakenConfig = agQ()
            af_, afK = agP_2({
                guiName = "OuroborosAwakenUI",
                title = "  🌸 Auto Awaken Config",
                itemTitle = "Unit",
                config = agi.AwakenConfig,
                selectedKey = "Unit",
                queueKey = "Units",
                getItems = agO_15,
                getCost = agI,
                onSave = function()
                    if agg() then
                        Library:Notify({ Title = "Auto Awaken", Description = "Config saved.", Time = 3 })
                    else
                        Library:Notify({ Title = "Auto Awaken", Description = "Failed to save config.", Time = 3 })
                    end
                end
            })
            local AutoAwakenGroup = Tabs.Main:AddRightGroupbox("Auto Awaken")
            AutoAwakenGroup:AddButton("Open Auto Awaken Config", function()
                af_.Visible = not af_.Visible
                if af_.Visible then
                    afK()
                end
            end)
            Label3 = AutoAwakenGroup:AddLabel("Status: Idle", true)
            agi.awakenTarget = nil
            agi.onAwakenMatchEnd = function()
                local awakenTarget = agi.awakenTarget
                if not awakenTarget then
                    return false
                end
                local adU = agi.AwakenConfig.AutoLobby and af3(awakenTarget.item) >= awakenTarget.need
                if adU then
                    agi:fireRemote("Players", "teleport")
                else
                    agi:fireRemote("Game", "replay")
                end
                return true
            end
            AutoAwakenGroup:AddToggle("AutoAwaken", {
                Text = "Auto Awaken",
                Default = false,
                Callback = function(t4)
                    if not t4 then
                        agi.awakenTarget = nil
                        Label3:SetText("Status: Idle")
                        agi.AwakenConfig.Active = false
                        agi.AwakenConfig.Target = nil
                        agg()
                        return
                    end
                    if #agi.AwakenConfig.Units == 0 then
                        Library:Notify({ Title = "Auto Awaken", Description = "Select at least one unit first.", Time = 3 })
                        Toggles.AutoAwaken:SetValue(false)
                        return
                    end
                    local ad8 = type(agi.AwakenConfig.QueueIndex) ~= "number"
                    local aef = if ad8 then 1 else 0
                    local aed = 2090 * aef + 2772 * (1 - aef)
                    local aee = 694 * aef + 3174 * (1 - aef)
                    if not ((aed * 2010 + aee * 2493 + aed * aee) % 16777213 == 7381502) then
                        ad8 = agi.AwakenConfig.QueueIndex < 1
                    end
                    if not ad8 then
                        ad8 = agi.AwakenConfig.QueueIndex > #agi.AwakenConfig.Units
                    end
                    if ad8 then
                        agi.AwakenConfig.QueueIndex = 1
                    end
                    agi.AwakenConfig.Active = true
                    agg()
                    task.spawn(function()
                        local ad2_2
                        local ad1_2
                        local ad__4
                        local adZ_6
                        local ad7 = false
                        repeat
                            if Toggles.AutoAwaken.Value then
                                local adY = agi.AwakenConfig.Units[agi.AwakenConfig.QueueIndex]
                                if not adY then
                                    agi.awakenTarget = nil
                                    Label3:SetText("Status: All units awakened, returning to lobby")
                                    agi:fireRemote("Players", "teleport")
                                    Toggles.AutoAwaken:SetValue(false)
                                    return
                                end
                                if not remote("Play", "create_room") then
                                    local awakenTarget = agi.awakenTarget
                                    if agK(adY) then
                                        agi.awakenTarget = nil
                                        Label3:SetText("Status: Requirements met, returning to lobby")
                                        agi:fireRemote("Players", "teleport")
                                    else
                                        local ad__3 = agi.AwakenConfig.AutoLobby and awakenTarget and af3(awakenTarget.item) >= awakenTarget.need
                                        if ad__3 then
                                            Label3:SetText("Status: Stage requirement met, returning to lobby")
                                            agi:fireRemote("Players", "teleport")
                                        else
                                            Label3:SetText(agC(agI(adY)))
                                        end
                                    end
                                    task.wait(4)
                                else
                                    ad__4, adZ_6 = afT(adY)
                                    if #ad__4 == 0 then
                                        agi.awakenTarget = nil
                                        if #adZ_6 > 0 then
                                            Label3:SetText("Status: Skipping " .. adY .. " (cannot farm " .. table.concat(adZ_6, ", ") .. ")")
                                            Library:Notify({
                                                Title = "Auto Awaken",
                                                Description = "Cannot farm for " .. adY .. ": " .. table.concat(adZ_6, ", ") .. ". Skipping.",
                                                Time = 5
                                            })
                                            agi.AwakenConfig.QueueIndex = agi.AwakenConfig.QueueIndex + 1
                                            agi.AwakenConfig.Target = nil
                                            agg()
                                        else
                                            local adW = afQ(adY)
                                            local adX = remote("Awakening", "awaken")
                                            local adZ_7 = false
                                            local ad0 = adW and adX
                                            local ad0_4
                                            if ad0 then
                                                ad0_4, ad1_2, ad2_2 = pcall(function()
                                                    return adX:InvokeServer(adW)
                                                end)
                                                if ad0_4 and ad1_2 ~= false then
                                                    adZ_7 = true
                                                    Label3:SetText("Status: Awakened " .. adY)
                                                    Library:Notify({ Title = "Auto Awaken", Description = "Awakened " .. adY .. "!", Time = 5 })
                                                    if Toggles.WebhookOnAwaken and Toggles.WebhookOnAwaken.Value and agi.webhookNotify then
                                                        agi.webhookNotify("Auto Awaken", "Awakened **" .. adY .. "**.", false)
                                                    end
                                                else
                                                    Label3:SetText("Status: Awaken failed")
                                                    local ad0_6 = ad1_2 or ad2_2
                                                    Library:Notify({ Title = "Auto Awaken", Description = "Awaken failed: " .. tostring(ad0_6), Time = 5 })
                                                end
                                            end
                                            if adZ_7 then
                                                table.remove(agi.AwakenConfig.Units, agi.AwakenConfig.QueueIndex)
                                            else
                                                agi.AwakenConfig.QueueIndex = agi.AwakenConfig.QueueIndex + 1
                                            end
                                            agi.AwakenConfig.Target = nil
                                            agg()
                                            afK()
                                        end
                                    else
                                        local adZ_8 = ad__4[1]
                                        agi.awakenTarget = adZ_8
                                        agi.AwakenConfig.Target = { item = adZ_8.item, need = adZ_8.need }
                                        agg()
                                        Label3:SetText(string.format("Status: [%d/%d] %s farming %s (%d/%d)", agi.AwakenConfig.QueueIndex, #agi.AwakenConfig.Units, adY, adZ_8.item, af3(adZ_8.item), adZ_8.need))
                                        agi.joinRoom({
                                            world = adZ_8.stage.world,
                                            act = adZ_8.stage.act,
                                            mode = adZ_8.stage.mode,
                                            difficulty = adZ_8.stage.difficulty
                                        })
                                        task.wait(8)
                                    end
                                end
                            else
                                ad7 = true
                            end
                        until ad7
                        agi.awakenTarget = nil
                    end)
                end
            })
            AutoAwakenGroup:AddToggle("AwakenAutoLobby", {
                Text = "Auto Back to Lobby when Material Reqs Met",
                Default = agi.AwakenConfig.AutoLobby,
                Callback = function(uL)
                    agi.AwakenConfig.AutoLobby = uL
                    agg()
                end
            })
            agc = function()
                return agi.Presets.gear
            end
            local function agO_17()
                local aej = {}
                for k in pairs(agc()) do
                    table.insert(aej, k)
                end
                table.sort(aej)
                return aej
            end
            agf = function(uV)
                local aer_2
                local aeq_2
                local aep = agc()[uV]
                aeq_2, aer_2 = {}, {}
                if not aep then
                    return aeq_2, aer_2
                end
                for k, v in pairs(aep) do
                    if af3(k) < v then
                        local aep_2 = agd(k, agi.CraftConfig.Difficulty)
                        if aep_2 then
                            table.insert(aeq_2, { item = k, need = v, stage = aep_2 })
                        else
                            table.insert(aer_2, k)
                        end
                    end
                end
                table.sort(aeq_2, function(u5, u6)
                    return u5.item < u6.item
                end)
                table.sort(aer_2)
                return aeq_2, aer_2
            end
            af1 = function(u8)
                local aez = agc()[u8]
                if not aez then
                    return false
                end
                for k, v in pairs(aez) do
                    if af3(k) < v then
                        return false
                    end
                end
                return true
            end
            agQ = function()
                local aeJ_2
                local aeH = isfile
                local aeH_5
                local aeI = {
                    Gear = nil,
                    Gears = {},
                    QueueIndex = 1,
                    Difficulty = "Hard",
                    AutoLobby = true,
                    Active = false,
                    Target = nil
                }
                if aeH then
                    aeH = isfile(agi.CraftConfigFile)
                end
                if aeH then
                    aeH_5, aeJ_2 = pcall(function()
                        return _HttpService:JSONDecode(readfile(agi.CraftConfigFile))
                    end)
                    local aeK = aeH_5 and type(aeJ_2) == "table"
                    if aeK then
                        if type(aeJ_2.Gear) == "string" then
                            aeI.Gear = aeJ_2.Gear
                        end
                        if type(aeJ_2.Gears) == "table" then
                            for i, v in ipairs(aeJ_2.Gears) do
                                if type(v) == "string" then
                                    table.insert(aeI.Gears, v)
                                end
                            end
                        end
                        if type(aeJ_2.QueueIndex) == "number" then
                            aeI.QueueIndex = aeJ_2.QueueIndex
                        end
                        if aeJ_2.Difficulty == "Normal" or aeJ_2.Difficulty == "Hard" then
                            aeI.Difficulty = aeJ_2.Difficulty
                        end
                        if type(aeJ_2.AutoLobby) == "boolean" then
                            aeI.AutoLobby = aeJ_2.AutoLobby
                        end
                        if type(aeJ_2.Active) == "boolean" then
                            aeI.Active = aeJ_2.Active
                        end
                        local aeH_7 = type(aeJ_2.Target) == "table" and type(aeJ_2.Target.item) == "string" and type(aeJ_2.Target.need) == "number"
                        if aeH_7 then
                            aeI.Target = { item = aeJ_2.Target.item, need = aeJ_2.Target.need }
                        end
                    end
                end
                if #aeI.Gears == 0 and aeI.Gear then
                    aeI.Gears = { aeI.Gear }
                end
                return aeI
            end
            agw = function()
                if not writefile then
                    return false
                end
                return (pcall(function()
                    writefile(agi.CraftConfigFile, _HttpService:JSONEncode(agi.CraftConfig))
                end))
            end
            agi.CraftConfig = agQ()
            af0, afL = agP_2({
                guiName = "OuroborosCraftUI",
                title = "  🌸 Auto Craft Gear Config",
                itemTitle = "Gear",
                config = agi.CraftConfig,
                selectedKey = "Gear",
                queueKey = "Gears",
                getItems = agO_17,
                getCost = function(vy)
                    return agc()[vy]
                end,
                onSave = function()
                    if agw() then
                        Library:Notify({ Title = "Auto Craft Gear", Description = "Config saved.", Time = 3 })
                    else
                        Library:Notify({ Title = "Auto Craft Gear", Description = "Failed to save config.", Time = 3 })
                    end
                end
            })
            local AutoCraftGearGroup = Tabs.Main:AddRightGroupbox("Auto Craft Gear")
            AutoCraftGearGroup:AddButton("Open Auto Craft Gear Config", function()
                af0.Visible = not af0.Visible
                if af0.Visible then
                    afL()
                end
            end)
            Label2 = AutoCraftGearGroup:AddLabel("Status: Idle", true)
            agi.craftTarget = nil
            agi.onCraftMatchEnd = function()
                local craftTarget = agi.craftTarget
                if not craftTarget then
                    return false
                end
                local aeZ = agi.CraftConfig.AutoLobby and af3(craftTarget.item) >= craftTarget.need
                if aeZ then
                    agi:fireRemote("Players", "teleport")
                else
                    agi:fireRemote("Game", "replay")
                end
                return true
            end
            AutoCraftGearGroup:AddToggle("AutoCraftGear", {
                Text = "Auto Craft Gear",
                Default = false,
                Callback = function(vM)
                    if not vM then
                        agi.craftTarget = nil
                        Label2:SetText("Status: Idle")
                        agi.CraftConfig.Active = false
                        agi.CraftConfig.Target = nil
                        agw()
                        return
                    end
                    if #agi.CraftConfig.Gears == 0 then
                        Library:Notify({ Title = "Auto Craft Gear", Description = "Select at least one gear first.", Time = 3 })
                        Toggles.AutoCraftGear:SetValue(false)
                        return
                    end
                    local afe = type(agi.CraftConfig.QueueIndex) ~= "number"
                    local afi = if afe then 1 else 0
                    local afg = 397 * afi + 2634 * (1 - afi)
                    local afh = 1724 * afi + 3419 * (1 - afi)
                    if not ((afg * 2236 + afh * 1377 + afg * afh) % 16777213 == 3946068) then
                        afe = agi.CraftConfig.QueueIndex < 1
                    end
                    local afl = if afe then 1 else 0
                    local afj = 50 * afl + 1939 * (1 - afl)
                    local afk = 2663 * afl + 2647 * (1 - afl)
                    if not ((afj * 2701 + afk * 4036 + afj * afk) % 16777213 == 11016068) then
                        afe = agi.CraftConfig.QueueIndex > #agi.CraftConfig.Gears
                    end
                    if afe then
                        agi.CraftConfig.QueueIndex = 1
                    end
                    agi.CraftConfig.Active = true
                    agw()
                    task.spawn(function()
                        local ae5_2
                        local ae4_2
                        local ae3_4
                        local ae2_8, ae2_9
                        local afa = false
                        repeat
                            if Toggles.AutoCraftGear.Value then
                                local ae1 = agi.CraftConfig.Gears[agi.CraftConfig.QueueIndex]
                                if not ae1 then
                                    agi.craftTarget = nil
                                    Label2:SetText("Status: All gear crafted, returning to lobby")
                                    agi:fireRemote("Players", "teleport")
                                    Toggles.AutoCraftGear:SetValue(false)
                                    return
                                end
                                if not remote("Play", "create_room") then
                                    local craftTarget = agi.craftTarget
                                    local afd = if af1(ae1) then 1 else 0
                                    if afd == 1 then
                                        agi.craftTarget = nil
                                        Label2:SetText("Status: Requirements met, returning to lobby")
                                        agi:fireRemote("Players", "teleport")
                                    else
                                        local ae3_3 = agi.CraftConfig.AutoLobby and craftTarget and af3(craftTarget.item) >= craftTarget.need
                                        if ae3_3 then
                                            Label2:SetText("Status: Stage requirement met, returning to lobby")
                                            agi:fireRemote("Players", "teleport")
                                        else
                                            Label2:SetText(agC(agc()[ae1]))
                                        end
                                    end
                                    task.wait(4)
                                else
                                    ae3_4, ae2_8 = agf(ae1)
                                    if #ae3_4 == 0 then
                                        agi.craftTarget = nil
                                        if #ae2_8 > 0 then
                                            Label2:SetText("Status: Skipping " .. ae1 .. " (cannot farm " .. table.concat(ae2_8, ", ") .. ")")
                                            Library:Notify({
                                                Title = "Auto Craft Gear",
                                                Description = "Cannot farm for " .. ae1 .. ": " .. table.concat(ae2_8, ", ") .. ". Skipping.",
                                                Time = 5
                                            })
                                            agi.CraftConfig.QueueIndex = agi.CraftConfig.QueueIndex + 1
                                            agi.CraftConfig.Target = nil
                                            agw()
                                        else
                                            local ae0 = remote("Crafting", "craft")
                                            if ae0 then
                                                ae2_9, ae4_2, ae5_2 = pcall(function()
                                                    return ae0:InvokeServer(ae1, 1)
                                                end)
                                                if ae2_9 and ae4_2 ~= false then
                                                    Label2:SetText("Status: Crafted " .. ae1)
                                                    Library:Notify({ Title = "Auto Craft Gear", Description = "Crafted " .. ae1 .. "!", Time = 5 })
                                                    if Toggles.WebhookOnCraft and Toggles.WebhookOnCraft.Value and agi.webhookNotify then
                                                        agi.webhookNotify("Auto Craft Gear", "Crafted **" .. ae1 .. "**.", false)
                                                    end
                                                else
                                                    Label2:SetText("Status: Craft failed")
                                                    local ae2_11 = ae4_2 or ae5_2
                                                    Library:Notify({ Title = "Auto Craft Gear", Description = "Craft failed: " .. tostring(ae2_11), Time = 5 })
                                                end
                                            end
                                            agi.CraftConfig.QueueIndex = agi.CraftConfig.QueueIndex + 1
                                            agi.CraftConfig.Target = nil
                                            agw()
                                        end
                                    else
                                        local ae2_12 = ae3_4[1]
                                        agi.craftTarget = ae2_12
                                        agi.CraftConfig.Target = { item = ae2_12.item, need = ae2_12.need }
                                        agw()
                                        Label2:SetText(string.format("Status: [%d/%d] %s farming %s (%d/%d)", agi.CraftConfig.QueueIndex, #agi.CraftConfig.Gears, ae1, ae2_12.item, af3(ae2_12.item), ae2_12.need))
                                        agi.joinRoom({
                                            world = ae2_12.stage.world,
                                            act = ae2_12.stage.act,
                                            mode = ae2_12.stage.mode,
                                            difficulty = ae2_12.stage.difficulty
                                        })
                                        task.wait(8)
                                    end
                                end
                            else
                                afa = true
                            end
                        until afa
                        agi.craftTarget = nil
                    end)
                end
            })
            AutoCraftGearGroup:AddToggle("CraftAutoLobby", {
                Text = "Auto Back to Lobby when Material Reqs Met",
                Default = agi.CraftConfig.AutoLobby,
                Callback = function(wm)
                    agi.CraftConfig.AutoLobby = wm
                    agw()
                end
            })
            agF, agM_4 = agP_2({
                guiName = "MaterialFarmUI",
                title = "Material Farm",
                itemTitle = "Material",
                config = agi.MatFarmConfig,
                selectedKey = "Target",
                queueKey = "Queue",
                getItems = function()
                    return agi.ItemNames
                end,
                getCost = function(wq)
                    return { [wq] = agi.MatFarmConfig.Targets[wq] or 1 }
                end,
                onSave = agh,
                targetMode = true
            })
            MaterialFarmGroup:AddButton("Open Material Farm Config", function()
                agF.Visible = not agF.Visible
            end)
            Label = MaterialFarmGroup:AddLabel("Status: Idle")
            agi.onMatFarmMatchEnd = function()
                local matFarmTarget = agi.matFarmTarget
                if not matFarmTarget then
                    return false
                end
                local afp = agi.MatFarmConfig.AutoLobby and af3(matFarmTarget.item) >= matFarmTarget.need
                if afp then
                    agi:fireRemote("Players", "teleport")
                else
                    agi:fireRemote("Game", "replay")
                end
                return true
            end
            MaterialFarmGroup:AddToggle("AutoMaterialFarm", {
                Text = "Material Farm",
                Default = false,
                Callback = function(wA)
                    if not wA then
                        agi.matFarmTarget = nil
                        Label:SetText("Status: Idle")
                        agi.MatFarmConfig.Active = false
                        return
                    end
                    local afz = type(agi.MatFarmConfig.QueueIndex) ~= "number" or agi.MatFarmConfig.QueueIndex < 1 or agi.MatFarmConfig.QueueIndex > #agi.MatFarmConfig.Queue
                    if afz then
                        agi.MatFarmConfig.QueueIndex = 1
                    end
                    agi.MatFarmConfig.Active = true
                    task.spawn(function()
                        while Toggles.AutoMaterialFarm.Value do
                            local afr = agi.MatFarmConfig.Queue[agi.MatFarmConfig.QueueIndex]
                            if not afr then
                                agi.matFarmTarget = nil
                                Label:SetText("Status: Queue finished")
                                Toggles.AutoMaterialFarm:SetValue(false)
                                if agi.MatFarmConfig.AutoLobby then
                                    agi:fireRemote("Players", "teleport")
                                end
                                return
                            end
                            local afs = agi.MatFarmConfig.Targets[afr] or 1
                            local afs_2 = af3(afr)
                            if afs_2 >= afs then
                                agi.MatFarmConfig.QueueIndex = agi.MatFarmConfig.QueueIndex + 1
                                agi.MatFarmConfig.Target = nil
                                agh()
                            else
                                local afu = agd(afr, agi.MatFarmConfig.Difficulty)
                                if not afu then
                                    Label:SetText("Status: Skipping " .. afr .. " (no stage preset)")
                                    Library:Notify({
                                        Title = "Material Farm",
                                        Description = "No known stage drops " .. afr .. " on " .. agi.MatFarmConfig.Difficulty .. ". Skipping.",
                                        Time = 5
                                    })
                                    agi.MatFarmConfig.QueueIndex = agi.MatFarmConfig.QueueIndex + 1
                                    agi.MatFarmConfig.Target = nil
                                    agh()
                                else
                                    agi.matFarmTarget = { item = afr, need = afs, stage = afu }
                                    agi.MatFarmConfig.Target = { item = afr, need = afs }
                                    agh()
                                    Label:SetText(string.format("Status: [%d/%d] farming %s (%d/%d)", agi.MatFarmConfig.QueueIndex, #agi.MatFarmConfig.Queue, afr, afs_2, afs))
                                    agi.joinRoom({ world = afu.world, act = afu.act, mode = afu.mode, difficulty = afu.difficulty })
                                    task.wait(8)
                                end
                            end
                            task.wait(2)
                        end
                    end)
                end
            })
            MaterialFarmGroup:AddToggle("MatFarmAutoLobby", {
                Text = "Auto Back to Lobby when Material Reqs Met",
                Default = agi.MatFarmConfig.AutoLobby,
                Callback = function(wU)
                    agi.MatFarmConfig.AutoLobby = wU
                    agh()
                end
            })
            if agi.AwakenConfig.Active and #agi.AwakenConfig.Units > 0 then
                agi.awakenTarget = agi.AwakenConfig.Target
                task.defer(function()
                    Toggles.AutoAwaken:SetValue(true)
                end)
            end
            if agi.CraftConfig.Active and #agi.CraftConfig.Gears > 0 then
                agi.craftTarget = agi.CraftConfig.Target
                task.defer(function()
                    Toggles.AutoCraftGear:SetValue(true)
                end)
            end
            task.spawn(function()
                local afB = false
                while true do
                    if remote("Play", "create_room") then
                        if not afB then
                            afB = afR()
                            pcall(function()
                                agi:refreshTraitCaps()
                            end)
                        end
                    else
                        afB = false
                    end
                    task.wait(5)
                end
            end)
        end)(loader);
        (function(...)
            local ajx
            local Options
            local ajL
            local Toggles
            local ajO
            local ajD
            local ajk
            local ajG
            local Label5
            local Label
            local ajJ
            local ajE
            local ajt
            local ajw
            local Label4
            local Label3
            local Library
            local ajo
            local Label2
            local ajN
            local ajr
            local ajF
            ajk = nil
            Label4 = nil
            Label = nil
            ajo = nil
            Toggles = nil
            ajr = nil
            ajt = nil
            ajw = nil
            ajx = nil
            Label5 = nil
            Label2 = nil
            Options = nil
            ajD = nil
            ajE = nil
            ajF = nil
            ajG = nil
            Label3 = nil
            ajJ = nil
            Library = nil
            ajL = nil
            ajN = nil
            ajO = nil
            local ajm, ajq, _HttpService, aju, ajv, remote, ajI, ajM, ajP, ajQ
            ajo = ...
            Library = ajo.Library
            Options = ajo.Options
            Toggles = ajo.Toggles
            local Tabs = ajo.Tabs
            remote = ajo.remote
            _HttpService = ajo._HttpService
            ajN = ajo.BaseFolder .. "/Macros"
            ajD = {}
            aju = remote("Characters", "spawn")
            ajP = remote("Characters", "upgrade")
            ajF = false
            ajQ = nil
            ajw = 0
            pcall(function()
                if makefolder and isfolder then
                    if not isfolder("OuroborosHub") then
                        makefolder("OuroborosHub")
                    end
                    if not isfolder(ajN) then
                        makefolder(ajN)
                    end
                end
            end)
            ajk = function()
                local yen = ajo.LocalPlayer:FindFirstChild("yen")
                return yen and yen.Value or 0
            end
            ajI = function()
                local ag1 = 0
                local Characters = workspace:FindFirstChild("Characters")
                if Characters then
                    for i, child in ipairs(Characters:GetChildren()) do
                        if child:GetAttribute("type") == "Allies" then
                            ag1 = ag1 + 1
                        end
                    end
                end
                return ag1
            end
            ajq = function(xv)
                return ajN .. "/" .. xv .. ".json"
            end
            ajt = function(xy)
                if not (writefile and xy and ajD[xy]) then
                    return
                end
                pcall(function()
                    writefile(ajq(xy), _HttpService:JSONEncode(ajD[xy]))
                end)
            end
            local function ajS()
                local ahg_2
                ajD = {}
                local ahf = listfiles and isfolder and isfolder(ajN)
                local ahf_3
                if not ahf then
                    return
                end
                for i, v in ipairs(listfiles(ajN)) do
                    local aho = v
                    if aho:sub(-5) == ".json" then
                        ahf_3, ahg_2 = pcall(function()
                            return _HttpService:JSONDecode(readfile(aho))
                        end)
                        local ahh = ahf_3 and type(ahg_2) == "table"
                        if ahh then
                            local ahf_4 = aho:match("([^/\\]+)%.json$")
                            if ahf_4 then
                                if type(ahg_2.steps) ~= "table" then
                                    ahg_2.steps = {}
                                end
                                ajD[ahf_4] = ahg_2
                            end
                        end
                    end
                end
            end
            ajO = function()
                local ahp = {}
                for k in pairs(ajD) do
                    table.insert(ahp, k)
                end
                table.sort(ahp)
                return ahp
            end
            ajG = function()
                local Value = Options.MacroProfile.Value
                return Value and ajD[Value], Value
            end
            ajm = function(x3)
                if x3.action == "Place" and aju then
                    pcall(function()
                        aju:InvokeServer(x3.unit)
                    end)
                else
                    if x3.action == "Upgrade" and ajP then
                        pcall(function()
                            ajP:InvokeServer(x3.unit)
                        end)
                    end
                end
            end
            ajS()
            local ajB
            ajr = false
            local ajS_4 = remote("Characters", "create")
            local ajT = remote("Characters", "upgrade_visual")
            if ajS_4 then
                ajS_4.OnClientEvent:Connect(function(ye)
                    local ahA = ajF and type(ye) == "table" and ye.name and ye.owner == ajo.LocalPlayer.Name
                    if ahA then
                        ajB("Place", ye.name)
                    end
                end)
                ajr = true
            end
            if ajT then
                ajT.OnClientEvent:Connect(function(yj)
                    if ajF and yj then
                        ajB("Upgrade", yj)
                    end
                end)
            end
            local MacroGroup = Tabs.Macro:AddLeftGroupbox("Macro")
            Label5 = MacroGroup:AddLabel("Macro Status: None")
            Label4 = MacroGroup:AddLabel("Action: ")
            Label3 = MacroGroup:AddLabel("Type: ")
            Label2 = MacroGroup:AddLabel("Unit: ")
            Label = MacroGroup:AddLabel("Waiting for: ")
            ajJ = function(yt)
                Label5:SetText("Macro Status: " .. yt)
            end
            MacroGroup:AddToggle("RecordMacro", { Text = "Record Macro", Default = false })
            MacroGroup:AddToggle("PlayMacro", { Text = "Play Macro", Default = false })
            MacroGroup:AddSlider("StepDelay", { Text = "Step Delay", Min = 0, Max = 5, Default = 0.2, Rounding = 1 })
            MacroGroup:AddDropdown("PlayMode", { Text = "Play Mode", Values = { "Money", "Time" }, Default = 1 })
            MacroGroup:AddDropdown("MacroProfile", { Text = "Macro Profiles", Values = ajO(), AllowNull = true, Multi = false })
            MacroGroup:AddInput("MacroName", { Text = "Macro Name", Default = "Macro1", Finished = true })
            ajL = {}
            ajE = function()
                local ahH = ajO()
                Options.MacroProfile:SetValues(ahH)
                for i, v in ipairs(ajL) do
                    if Options[v] then
                        Options[v]:SetValues(ahH)
                    end
                end
            end
            MacroGroup:AddButton("Create New Macro", function()
                local Value = Options.MacroName.Value
                if not Value or Value == "" then
                    Library:Notify({ Title = "Macro", Description = "Enter a macro name first.", Time = 3 })
                    return
                end
                if not ajD[Value] then
                    ajD[Value] = { steps = {} }
                end
                ajt(Value)
                ajE()
                Options.MacroProfile:SetValue(Value)
            end)
            MacroGroup:AddButton("Delete Selected Macro", function()
                local Value
                Value = Options.MacroProfile.Value
                if not Value then
                    return
                end
                ajD[Value] = nil
                pcall(function()
                    local ahT = delfile and isfile and isfile(ajq(Value))
                    if ahT then
                        delfile(ajq(Value))
                    end
                end)
                ajE()
                Options.MacroProfile:SetValue(nil)
            end)
            ajM = { "Story", "Squadron", "Raid", "Challenge", "Infinite" }
            local function ajS_6(yT)
                local ah_ = ajo.ModeData[yT]
                local ah0 = ah_
                local ah1 = {}
                if ah0 then
                    ah0 = next(ah_)
                end
                if ah0 then
                    for k in pairs(ah_) do
                        table.insert(ah1, k)
                    end
                else
                    for i, v in ipairs(ajo.WorldNames) do
                        table.insert(ah1, v)
                    end
                end
                table.sort(ah1)
                return ah1
            end
            local MapMacrosGroup = Tabs.Macro:AddRightGroupbox("Map Macros")
            MapMacrosGroup:AddDropdown("MapMode", { Text = "Mode", Values = ajM, Default = 1 })
            ajx = {}
            for i, v in ipairs(ajM) do
                ajx[v] = {}
                for i, v2 in ipairs(ajS_6(v)) do
                    local ajR_3 = "MapMacro_" .. v .. "_" .. v2
                    MapMacrosGroup:AddDropdown(ajR_3, { Text = v2, Values = ajO(), AllowNull = true, Multi = false })
                    table.insert(ajL, ajR_3)
                    table.insert(ajx[v], ajR_3)
                end
            end
            local function ajR_4()
                local Value = Options.MapMode.Value
                for k, v in pairs(ajx) do
                    local aie = k == Value
                    for i, v in ipairs(v) do
                        if Options[v] and Options[v].SetVisible then
                            Options[v]:SetVisible(aie)
                        end
                    end
                end
            end
            Options.MapMode:OnChanged(ajR_4)
            ajR_4()
            ajv = function()
                local aiD_2
                local aiA = (function()
                    local PlayerGui = ajo.LocalPlayer:FindFirstChild("PlayerGui")
                    local aiu = PlayerGui and PlayerGui:FindFirstChild("Hotbar")
                    return aiu
                end)()
                local aiB = aiA and aiA:FindFirstChild("Info")
                local aiA_5 = aiB
                if aiB then
                    aiB = aiA_5:FindFirstChild("World")
                end
                local aiA_6 = aiB
                if aiB then
                    aiB = aiA_6:FindFirstChild("TextLabel")
                end
                local aiA_7 = aiB
                if aiB then
                    aiB = aiA_7.Text
                end
                local aiA_8 = aiB
                local aiC = not aiA_8 or aiA_8 == ""
                local aiC_5
                if aiC then
                    return nil
                end
                local mode = nil
                local aiz = remote("Players", "get")
                if aiz then
                    aiC_5, aiD_2 = pcall(function()
                        return aiz:InvokeServer()
                    end)
                    local aiE = aiC_5 and type(aiD_2) == "table" and type(aiD_2.ingame) == "table"
                    if aiE then
                        mode = aiD_2.ingame.mode
                    end
                end
                if mode then
                    local aiC_6 = Options["MapMacro_" .. mode .. "_" .. aiA_8]
                    if aiC_6 and aiC_6.Value and ajD[aiC_6.Value] then
                        return ajD[aiC_6.Value], aiC_6.Value
                    end
                    for i, v in ipairs(ajM) do
                        local aiB_9 = Options["MapMacro_" .. v .. "_" .. aiA_8]
                        if aiB_9 and aiB_9.Value and ajD[aiB_9.Value] then
                            return ajD[aiB_9.Value], aiB_9.Value
                        end
                    end
                    return nil
                end
                for i, v in ipairs(ajM) do
                    local aiB_10 = Options["MapMacro_" .. v .. "_" .. aiA_8]
                    if aiB_10 and aiB_10.Value and ajD[aiB_10.Value] then
                        return ajD[aiB_10.Value], aiB_10.Value
                    end
                end
                return nil
            end
            ajB = function(zL, zM)
                local aiP = ajG()
                if not (ajF and aiP and zM) then
                    return
                end
                local aiQ_2 = { action = zL, unit = tostring(zM), money = ajk(), time = os.clock() - ajw }
                table.insert(aiP.steps, aiQ_2)
                Label4:SetText("Action: Recorded #" .. #aiP.steps)
                Label3:SetText("Type: " .. zL)
                Label2:SetText("Unit: " .. aiQ_2.unit)
                if Options.PlayMode.Value == "Time" then
                    Label:SetText("Waiting for: " .. string.format("%.1fs", aiQ_2.time))
                else
                    Label:SetText("Waiting for: " .. tostring(math.floor(aiQ_2.money)) .. "¥")
                end
            end
            Toggles.RecordMacro:OnChanged(function()
                local aiX_3, aiX_4
                local aiW_3, aiW_4
                if Toggles.RecordMacro.Value then
                    if not ajr then
                        Library:Notify({ Title = "Macro", Description = "Recording is not supported by your executor.", Time = 4 })
                        Toggles.RecordMacro:SetValue(false)
                        return
                    end
                    if Toggles.PlayMacro.Value then
                        Toggles.PlayMacro:SetValue(false)
                    end
                    aiX_3, aiW_3 = ajG()
                    if not (aiX_3 and aiW_3) then
                        Library:Notify({ Title = "Macro", Description = "Create or select a macro first.", Time = 4 })
                        Toggles.RecordMacro:SetValue(false)
                        return
                    end
                    aiX_3.steps = {}
                    ajw = os.clock()
                    ajF = true
                    ajJ("Recording")
                    Label4:SetText("Action: ")
                    Label3:SetText("Type: ")
                    Label2:SetText("Unit: ")
                    Label:SetText("Waiting for: ")
                else
                    ajF = false
                    aiW_4, aiX_4 = ajG()
                    if aiW_4 and aiX_4 then
                        ajt(aiX_4)
                    end
                    ajJ("None")
                end
            end)
            Toggles.PlayMacro:OnChanged(function()
                local aji
                if not Toggles.PlayMacro.Value then
                    ajJ("None")
                    return
                end
                if Toggles.RecordMacro.Value then
                    Toggles.RecordMacro:SetValue(false)
                end
                if not next(ajD) then
                    Library:Notify({ Title = "Macro", Description = "No macros saved. Create one first.", Time = 4 })
                    Toggles.PlayMacro:SetValue(false)
                    return
                end
                aji = {}
                ajQ = aji
                task.spawn(function()
                    while true do
                        local ai5 = ajQ == aji
                        local ai5_10
                        if Toggles.PlayMacro.Value and ai5 then
                            local ai5_6 = ajv() or ajG()
                            if not ai5_6 or #ai5_6.steps == 0 then
                                ajJ("Waiting for stage macro")
                                task.wait(1)
                                continue
                            end
                            local Value = Options.PlayMode.Value
                            local ai7 = os.clock()
                            ajJ("Playing")
                            for i, v in ipairs(ai5_6.steps) do
                                if not (Toggles.PlayMacro.Value and ajQ == aji) then
                                    break
                                end
                                Label4:SetText("Action: " .. i .. "/" .. #ai5_6.steps)
                                Label3:SetText("Type: " .. v.action)
                                Label2:SetText("Unit: " .. v.unit)
                                if Value == "Time" then
                                    Label:SetText("Waiting for: " .. string.format("%.1fs", v.time))
                                    while true do
                                        local ai8_4 = os.clock() - ai7 < v.time and Toggles.PlayMacro.Value
                                        if ai8_4 and ajQ == aji then
                                            task.wait(0.05)
                                            continue
                                        end
                                        break
                                    end
                                else
                                    Label:SetText("Waiting for: " .. tostring(math.floor(v.money)) .. "¥")
                                    while true do
                                        local ai8_5 = ajk() < v.money and Toggles.PlayMacro.Value
                                        if ai8_5 and ajQ == aji then
                                            task.wait(0.1)
                                            continue
                                        end
                                        break
                                    end
                                end
                                if not (Toggles.PlayMacro.Value and ajQ == aji) then
                                    break
                                end
                                ajm(v)
                                task.wait(Options.StepDelay.Value)
                            end
                            if not (Toggles.PlayMacro.Value and ajQ == aji) then
                                break
                            end
                            ajJ("Waiting for next round")
                            repeat
                                task.wait(0.5)
                                ai5_10 = not Toggles.PlayMacro.Value or ajQ ~= aji or ajI() == 0
                            until ai5_10
                            continue
                        end
                        break
                    end
                    if ajQ == aji then
                        ajJ("None")
                    end
                end)
            end)
        end)(loader);
        (function(...)
            local Aa = ...
            local Options = Aa.Options
            local Toggles = Aa.Toggles
            local Tabs = Aa.Tabs
            local remote = Aa.remote
            local function Ag(Ah)
                local aj9_2
                local aj8_2
                local aj6 = remote("Shops", "get")
                local aj7 = {}
                if aj6 then
                    aj8_2, aj9_2 = pcall(function()
                        return aj6:InvokeServer(Ah)
                    end)
                    local aka = aj8_2 and type(aj9_2) == "table"
                    if aka then
                        for k in pairs(aj9_2) do
                            table.insert(aj7, k)
                        end
                    end
                end
                if #aj7 == 0 then
                    for i, v in ipairs(Aa.ItemNames) do
                        table.insert(aj7, v)
                    end
                end
                table.sort(aj7)
                return aj7
            end
            local function Au()
                local akm
                akm = nil
                local ako_3
                local akn = remote("Player", "get") or remote("Players", "get")
                local akn_3
                akm = akn
                if not akm then
                    return nil
                end
                akn_3, ako_3 = pcall(function()
                    return akm:InvokeServer()
                end)
                local akp = akn_3 and type(ako_3) == "table"
                return akp and ako_3 or nil
            end
            local AutoSummonGroup = Tabs.Shop:AddLeftGroupbox("Auto Summon")
            local Label = AutoSummonGroup:AddLabel("Secret Pity: 0/20000")
            AutoSummonGroup:AddDropdown("BannerSelection", { Text = "Banner Selection", Values = { "Basic Banner", "Selection Banner" }, Default = 1 })
            AutoSummonGroup:AddDropdown("SummonAmount", { Text = "Summon Amount", Values = { "x1", "x10" }, Default = 1 })
            AutoSummonGroup:AddToggle("AutoSummon", { Text = "Auto Summon", Default = false })
            local function AE()
                local akr = Au()
                local akr_2 = akr and akr.pities and akr.pities.summon_secret or 0
                Label:SetText("Secret Pity: " .. akr_2 .. "/20000")
            end
            local AutoPerkGroup = Tabs.Shop:AddLeftGroupbox("Auto Perk")
            AutoPerkGroup:AddDropdown("AutoPerkSelect", {
                Text = "Perks",
                Values = { "Yen_Max", "Yen_Generation", "Health" },
                AllowNull = true,
                Multi = false
            })
            AutoPerkGroup:AddToggle("AutoPerk", { Text = "Auto Perk", Default = false })
            local AutoBuyGroup = Tabs.Shop:AddRightGroupbox("Auto Buy")
            AutoBuyGroup:AddDropdown("MerchantItems", { Text = "Merchant Items", Values = Ag("merchant"), Multi = true, AllowNull = true })
            AutoBuyGroup:AddToggle("AutoBuyMerchant", { Text = "Auto Buy Merchant", Default = false })
            local AutoRaidShopGroup = Tabs.Shop:AddRightGroupbox("Auto Raid Shop")
            AutoRaidShopGroup:AddDropdown("RaidShopItems", { Text = "Raid Shop Items", Values = Ag("gt_city_raid"), Multi = true, AllowNull = true })
            AutoRaidShopGroup:AddToggle("AutoBuyRaidShop", { Text = "Auto Buy Raid Shop", Default = false })
            AutoRaidShopGroup:AddButton("Refresh Shop", function()
                Options.MerchantItems:SetValues(Ag("merchant"))
                Options.RaidShopItems:SetValues(Ag("gt_city_raid"))
                AE()
            end)
            local function AQ(AR, AS)
                local akx
                akx = nil
                local akB_2
                if type(AS) ~= "table" then
                    return
                end
                akx = remote("Shops", "get")
                local akz = remote("Shops", "buy")
                local akA = akx and akz
                local akA_5
                if not akA then
                    return
                end
                akA_5, akB_2 = pcall(function()
                    return akx:InvokeServer(AR)
                end)
                local akC = akA_5 and type(akB_2) == "table"
                if not akC then
                    return
                end
                local akA_6 = Au()
                local akD = akA_6 and akA_6.shop_stocks and akA_6.shop_stocks[AR] or {}
                for k, v in pairs(AS) do
                    local akO = k
                    if v and akB_2[akO] then
                        local aky = (akB_2[akO].max or 0) - (akD[akO] or 0)
                        if aky > 0 then
                            pcall(function()
                                akz:InvokeServer(akO, AR, aky)
                            end)
                            task.wait(0.2)
                        end
                    end
                end
            end
            task.spawn(function()
                local akW = 0
                local ak0 = false
                repeat
                    local Value2, akV
                    task.wait(1)
                    if not Toggles.AutoSummon then
                        ak0 = true
                    else
                        akW = akW + 1
                        if Toggles.AutoSummon.Value then
                            local akT = remote("Summon", "start")
                            if akT then
                                Value2 = Options.BannerSelection.Value
                                akV = Options.SummonAmount.Value == "x10" and 10 or 1
                                pcall(function()
                                    akT:InvokeServer(Value2, akV)
                                end)
                            end
                        end
                        if Toggles.AutoPerk.Value then
                            local Value = Options.AutoPerkSelect.Value
                            local akS = remote("Perks", "upgrade")
                            if Value and akS then
                                pcall(function()
                                    akS:InvokeServer(Value)
                                end)
                            end
                        end
                        if akW % 5 == 0 then
                            if Toggles.AutoBuyMerchant.Value then
                                AQ("merchant", Options.MerchantItems.Value)
                            end
                            if Toggles.AutoBuyRaidShop.Value then
                                AQ("gt_city_raid", Options.RaidShopItems.Value)
                            end
                            AE()
                        end
                    end
                until ak0
            end)
        end)(loader);
        (function(...)
            local aog
            local aor
            local aou
            local Toggles
            local aom
            local aox
            local aop
            local aoe
            local aoh
            local aos
            local an9
            local LocalPlayer
            local remote
            local aof
            local Options
            local aoa
            local aow
            local aol
            local aod
            local aoo
            an9 = nil
            aoa = nil
            Toggles = nil
            remote = nil
            aod = nil
            aoe = nil
            aof = nil
            aog = nil
            aoh = nil
            Options = nil
            LocalPlayer = nil
            aol = nil
            aom = nil
            aoo = nil
            aop = nil
            aor = nil
            aos = nil
            aou = nil
            aow = nil
            aox = nil
            local aoj, aon, Library, _HttpService, aov
            aoa = ...
            Library = aoa.Library
            Options = aoa.Options
            Toggles = aoa.Toggles
            local Tabs = aoa.Tabs
            LocalPlayer = aoa.LocalPlayer
            remote = aoa.remote
            _HttpService = aoa._HttpService
            local WebhookGroup = Tabs.Webhook:AddLeftGroupbox("Webhook")
            WebhookGroup:AddInput("WebhookUrl", {
                Text = "Webhook URL",
                Default = "",
                Placeholder = "https://discord.com/api/webhooks/...",
                Finished = true
            })
            WebhookGroup:AddInput("WebhookUserId", { Text = "User Ping (ID)", Default = "", Placeholder = "Discord user ID", Finished = true })
            WebhookGroup:AddDropdown("WebhookItems", { Text = "Item Dropped", Values = aoa.ItemNames, Multi = true, AllowNull = true })
            WebhookGroup:AddToggle("SendWebhook", { Text = "Send Webhook", Default = false })
            WebhookGroup:AddToggle("PingItemDropped", { Text = "Ping Item Dropped", Default = false })
            WebhookGroup:AddToggle("PingTraitMatch", { Text = "Ping on Trait Match", Default = false })
            WebhookGroup:AddToggle("PingBountyComplete", { Text = "Ping on Bounty Complete", Default = false })
            WebhookGroup:AddToggle("SendDisconnectMessage", { Text = "Send Disconnected Message", Default = false })
            WebhookGroup:AddToggle("WebhookOnAwaken", { Text = "Send Webhook after Awaken", Default = false })
            WebhookGroup:AddToggle("WebhookOnCraft", { Text = "Send Webhook after Gear Craft", Default = false })
            WebhookGroup:AddToggle("SendMatchSummary", { Text = "Send Match Summary", Default = false })
            local aoA = syn and syn.request
            local aoE = if aoA then 1 else 0
            local aoC = 596 * aoE + 3462 * (1 - aoE)
            local aoD = 3316 * aoE + 273 * (1 - aoE)
            if not ((aoC * 3242 + aoD * 2384 + aoC * aoD) % 16777213 == 11813912) then
                aoA = http and http.request
            end
            if not aoA then
                aoA = http_request
            end
            if not aoA then
                aoA = request
            end
            local aoE_2 = if aoA then 1 else 0
            local aoC_2 = 2441 * aoE_2 + 2210 * (1 - aoE_2)
            local aoD_2 = 3787 * aoE_2 + 2348 * (1 - aoE_2)
            if not ((aoC_2 * 2672 + aoD_2 * 126 + aoC_2 * aoD_2) % 16777213 == 16243581) then
                aoA = fluxus and fluxus.request
            end
            aon = aoA
            aoe = function()
                local Value = Options.WebhookUserId.Value
                local ak2 = Value and Value ~= "" and string.match(Value, "%d")
                if ak2 then
                    return "<@" .. Value .. "> "
                end
                return ""
            end
            aow = function(BM)
                local Value
                if not aon then
                    return false, "Executor has no HTTP request function."
                end
                Value = Options.WebhookUrl.Value
                if not Value or Value == "" then
                    return false, "No webhook URL set."
                end
                return pcall(function()
                    return aon({
                        Url = Value,
                        Method = "POST",
                        Headers = { ["Content-Type"] = "application/json" },
                        Body = _HttpService:JSONEncode(BM)
                    })
                end)
            end
            aou = function(BW, BX, BY)
                if not Toggles.SendWebhook.Value then
                    return
                end
                local alb = aoe()
                local alb_2 = BY and alb ~= "" and alb or nil
                aow({
                    content = alb_2,
                    embeds = {
                        {
                            title = "🌸 " .. BW,
                            description = BX,
                            color = 16019638,
                            thumbnail = { url = "https://tr.rbxcdn.com/180DAY-d29acf5020ecef8a89736cb5f23d934c/512/512/Image/Png/noFilter" },
                            footer = { text = "Ouroboros Hub • Anime Squadron" },
                            timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
                        }
                    }
                })
            end
            aoa.webhookNotify = aou
            aof = function()
                local alf
                alf = nil
                local alh_3
                local alg = (remote("Player", "get"))
                local alg_3
                local alm = if alg then 1 else 0
                local alk = 250 * alm + 753 * (1 - alm)
                local all = 585 * alm + 3862 * (1 - alm)
                if not ((alk * 267 + all * 1884 + alk * all) % 16777213 == 1315140) then
                    alg = remote("Players", "get")
                end
                alf = alg
                if not alf then
                    return nil
                end
                alg_3, alh_3 = pcall(function()
                    return alf:InvokeServer()
                end)
                local ali = alg_3 and type(alh_3) == "table"
                return ali and alh_3 or nil
            end
            aos = function(Cb)
                local alq = {}
                if type(Cb.items) == "table" then
                    for k, v in pairs(Cb.items) do
                        if type(v) == "number" then
                            alq[k] = v
                        end
                    end
                end
                if type(Cb.stats) == "table" then
                    for k, v in pairs(Cb.stats) do
                        if type(v) == "number" then
                            alq[k] = v
                        end
                    end
                end
                return alq
            end
            aom = function(Ci)
                local alF_2
                local alE = tostring(math.floor(Ci))
                repeat
                    alE, alF_2 = alE:gsub("^(-?%d+)(%d%d%d)", "%1,%2")
                until alF_2 == 0
                return alE
            end
            aod = function(Cm)
                Cm = math.max(0, math.floor(Cm))
                return string.format("%d:%02d", math.floor(Cm / 60), Cm % 60)
            end
            aoo = function(Co)
                local alH = Co
                local alI = {}
                if alH then
                    alH = Co.characters
                end
                local alJ = {}
                local alK = alH
                local alO = if alK then 1 else 0
                local alM = 602 * alO + 1364 * (1 - alO)
                local alN = 1630 * alO + 980 * (1 - alO)
                if not ((alM * 837 + alN * 538 + alM * alN) % 16777213 == 2362074) then
                    alK = alJ
                end
                for k, v in pairs(alK) do
                    local alH_3 = type(v) == "table" and v.equipped
                    if alH_3 then
                        local alH_4 = #alI + 1
                        local alJ_2 = v.name or "Unknown"
                        local alK_2 = v.level or "?"
                        alI[alH_4] = alJ_2 .. " (Lv " .. tostring(alK_2) .. ")"
                    end
                end
                table.sort(alI)
                return alI
            end
            aoh = function()
                if Toggles.AutoAwaken and Toggles.AutoAwaken.Value then
                    local alV_11 = aoa.AwakenConfig and aoa.AwakenConfig.Units and aoa.AwakenConfig.Units[aoa.AwakenConfig.QueueIndex]
                    local alW_7 = alV_11
                    if alV_11 then
                        alV_11 = ": " .. alW_7
                    end
                    return "Auto Awaken" .. (alV_11 or "")
                end
                if Toggles.AutoCraftGear and Toggles.AutoCraftGear.Value then
                    local alV_13 = aoa.CraftConfig and aoa.CraftConfig.Gears and aoa.CraftConfig.Gears[aoa.CraftConfig.QueueIndex]
                    local alW_9 = alV_13
                    if alV_13 then
                        alV_13 = ": " .. alW_9
                    end
                    return "Auto Craft Gear" .. (alV_13 or "")
                end
                if Toggles.AutoMaterialFarm and Toggles.AutoMaterialFarm.Value then
                    local alV_15 = aoa.MatFarmConfig and aoa.MatFarmConfig.Queue and aoa.MatFarmConfig.Queue[aoa.MatFarmConfig.QueueIndex]
                    local alW_11 = alV_15
                    if alV_15 then
                        alV_15 = ": " .. alW_11
                    end
                    return "Auto Material Farm" .. (alV_15 or "")
                end
                if Toggles.AutoDaily and Toggles.AutoDaily.Value then
                    return "Auto Daily"
                end
                if Toggles.AutoChallenge and Toggles.AutoChallenge.Value then
                    return "Auto Challenge"
                end
                if Toggles.AutoKatakara and Toggles.AutoKatakara.Value then
                    return "Auto Katakara Bridge"
                end
                if Toggles.AutoUltimateEvil and Toggles.AutoUltimateEvil.Value then
                    return "Auto Ultimate Evil"
                end
                if Toggles.AutoEclipse and Toggles.AutoEclipse.Value then
                    return "Auto Eclipse"
                end
                return "Manual"
            end
            aop = nil
            an9 = nil
            task.spawn(function()
                local al3
                while true do
                    task.wait(1)
                    local al4 = remote("Play", "create_room") ~= nil
                    if al3 == true and al4 == false then
                        an9 = os.time()
                        local al5_3 = aof()
                        local al6_2 = al5_3 and aos(al5_3)
                        aop = al6_2 or nil
                    end
                    al3 = al4
                end
            end)
            local function aoy_9(CV, CW)
                if not (Toggles.SendMatchSummary and Toggles.SendMatchSummary.Value) then
                    return
                end
                CV = CV or {}
                local al8_10 = an9 and os.time() - an9
                local al9_3 = al8_10 or nil
                local al8_11 = aop
                task.wait(1)
                local al9_4 = aof()
                local amb = {}
                if al8_11 and al9_4 then
                    local amc_5 = aos(al9_4)
                    local amd_6 = {}
                    for k, v in pairs(amc_5) do
                        local amc_6 = al8_11[k] or 0
                        if v > amc_6 then
                            amd_6[#amd_6 + 1] = { name = k, amount = v - amc_6, total = v }
                        end
                    end
                    table.sort(amd_6, function(C7, C8)
                        return C7.name < C8.name
                    end)
                    for i, v in ipairs(amd_6) do
                        amb[#amb + 1] = string.format("+%s %s [%s]", aom(v.amount), v.name, aom(v.total))
                    end
                end
                local al8_13 = CW == true and "Won" or CW == false and "Lost" or "Finished"
                local al8_14 = CV.mode or "?"
                local amd_8 = CV.act and " Act" .. tostring(CV.act)
                local ame_10 = amd_8 or ""
                local amd_9 = CV.difficulty and " " .. tostring(CV.difficulty)
                local amd_10 = al8_14 .. ame_10 .. (amd_9 or "")
                local al8_15 = al9_3 and aod(al9_3)
                local ama_4 = al8_15 or "N/A"
                local ama_5 = #amb > 0 and table.concat(amb, "\n")
                local amb_4 = ama_5 or "*(none)*"
                local ame_11 = LocalPlayer.DisplayName ~= LocalPlayer.Name and LocalPlayer.DisplayName .. " (@" .. LocalPlayer.Name .. ")" or LocalPlayer.Name
                local ame_12 = aoo(al9_4)
                local amf_5 = #ame_12 > 0 and "- " .. table.concat(ame_12, "\n- ")
                local ame_13 = amf_5 or "*(none)*"
                local amf_6 = al9_4
                if amf_6 then
                    amf_6 = aos(al9_4)
                end
                local ame_14 = {}
                local amh = amf_6
                local amC = if amh then 1 else 0
                local amA = 870 * amC + 3816 * (1 - amC)
                local amB = 1586 * amC + 1946 * (1 - amC)
                if not ((amA * 2637 + amB * 3642 + amA * amB) % 16777213 == 9450222) then
                    amh = ame_14
                end
                local ame_15 = amh
                local amf_7 = {}
                local amh_4 = {
                    { label = "Trait Reroll", key = "Trait Shards" },
                    { label = "Gold", key = "Gold" },
                    { label = "Baras Coins", key = "Baras Coins" },
                    { label = "Reroll Cubes", key = "Reroll Cubes" },
                    { label = "Perfect Cubes", key = "Perfect Cubes" },
                    { label = "Bounty Tickets", key = "Bounty Tickets" }
                }
                for i, v in ipairs(amh_4) do
                    local amh_5 = #amf_7 + 1
                    local label = v.label
                    local amj = ame_15[v.key] or 0
                    amf_7[amh_5] = label .. ": " .. aom(amj)
                end
                local ame_16 = table.concat(amf_7, "\n")
                local amf_8 = {
                    name = ame_11,
                    icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. tostring(LocalPlayer.UserId) .. "&width=150&height=150&format=png"
                }
                local amh_6 = "🌸 Match " .. al8_13
                local ami_4 = CV.world or "Unknown"
                aow({
                    embeds = {
                        {
                            author = amf_8,
                            title = amh_6,
                            description = "**" .. ami_4 .. "**\n" .. amd_10,
                            color = 16019638,
                            thumbnail = { url = "https://tr.rbxcdn.com/180DAY-d29acf5020ecef8a89736cb5f23d934c/512/512/Image/Png/noFilter" },
                            fields = {
                                { name = "⏱️ Time", value = ama_4, inline = true },
                                { name = "⚙️ Macro", value = aoh(), inline = true },
                                { name = "📊 Player Stats", value = ame_16, inline = false },
                                { name = "💎 Rewards", value = amb_4, inline = false },
                                { name = "⚔️ Equipped Units", value = ame_13, inline = false }
                            },
                            footer = { text = "Ouroboros Hub • Anime Squadron" },
                            timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
                        }
                    }
                })
                if al9_4 then
                    an9 = os.time()
                    aop = aos(al9_4)
                end
            end
            aoa.onMatchSummary = aoy_9
            WebhookGroup:AddButton("Test Webhook", function()
                local amN_3
                local amI = aoe()
                local amJ = {}
                local amK = {}
                local amL = "Webhook test from Ouroboros Hub."
                local amL_2
                local amM = remote("Player", "get") or remote("Players", "get")
                local amM_4
                local amH = amM
                if amH then
                    amM_4, amN_3 = pcall(function()
                        return amH:InvokeServer()
                    end)
                    local amO = amM_4 and type(amN_3) == "table" and type(amN_3.items) == "table"
                    if amO then
                        amK = amN_3.items
                    end
                end
                local amM_5 = Options.WebhookItems and type(Options.WebhookItems.Value) == "table"
                if amM_5 then
                    for k, v in pairs(Options.WebhookItems.Value) do
                        if v then
                            local amM_6 = amK[k] or 0
                            table.insert(amJ, k .. " (x" .. tostring(amM_6) .. ")")
                        end
                    end
                end
                table.sort(amJ)
                if #amJ > 0 then
                    amL_2 = amL .. "\n\n**Selected Items for Drop Ping:**\n• " .. table.concat(amJ, "\n• ")
                else
                    amL_2 = "Webhook test from Ouroboros Hub.\n\n*(No items currently selected for drop ping)*"
                end
                local amI_3 = amI ~= "" and amI or nil
                local amJ_5 = aow({
                    content = amI_3,
                    embeds = {
                        {
                            title = "🌸 Anime Squadron",
                            description = amL_2,
                            color = 16019638,
                            thumbnail = { url = "https://tr.rbxcdn.com/180DAY-d29acf5020ecef8a89736cb5f23d934c/512/512/Image/Png/noFilter" },
                            footer = { text = "Ouroboros Hub • Anime Squadron" },
                            timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
                        }
                    }
                })
                local amJ_6 = amJ_5 and "Test sent."
                local am0 = if amJ_6 then 1 else 0
                local amZ = 2816 * am0 + 925 * (1 - am0)
                local am_ = 498 * am0 + 3035 * (1 - am0)
                if not ((amZ * 3425 + am_ * 2842 + amZ * am_) % 16777213 == 12462484) then
                    amJ_6 = "Failed to send (check URL/executor)."
                end
                Library:Notify({ Title = "Webhook", Description = amJ_6, Time = 4 })
            end)
            local aoy_10 = remote("Traits", "auto_cancel")
            if aoy_10 then
                aoy_10.OnClientEvent:Connect(function(DT)
                    if not Toggles.PingTraitMatch then
                        return
                    end
                    local am1 = type(DT) == "table" and DT.name
                    local am2 = am1
                    local am7 = if am2 then 1 else 0
                    local am5 = 2788 * am7 + 1312 * (1 - am7)
                    local am6 = 1428 * am7 + 817 * (1 - am7)
                    if not ((am5 * 2954 + am6 * 1185 + am5 * am6) % 16777213 == 13909196) then
                        am2 = "A unit"
                    end
                    local am1_2 = am2
                    local am2_3 = type(DT) == "table"
                    if am2_3 then
                        am2_3 = DT.trait or DT.trait_2
                    end
                    local am3_4 = am2_3 or "desired trait"
                    aou("Trait Match", am1_2 .. " matched your desired trait (" .. tostring(am3_4) .. ").", Toggles.PingTraitMatch.Value)
                end)
            end
            pcall(function()
                local GuiService = game:GetService("GuiService")
                local ane = {
                    [Enum.ConnectionError.DisconnectRejoin] = true,
                    [Enum.ConnectionError.DisconnectClientRequest] = true,
                    [Enum.ConnectionError.ReplacementReady] = true
                }
                local RobloxPromptGui = game:GetService("CoreGui"):FindFirstChild("RobloxPromptGui")
                local anh = RobloxPromptGui and RobloxPromptGui:FindFirstChild("promptOverlay")
                if anh then
                    anh.ChildAdded:Connect(function(D5)
                        if not Toggles.SendDisconnectMessage then
                            return
                        end
                        if not Toggles.SendDisconnectMessage.Value then
                            return
                        end
                        local am8 = D5.Name == "ErrorPrompt" or string.find(D5.Name, "Error")
                        if not am8 then
                            return
                        end
                        local am8_2 = GuiService:GetErrorCode()
                        if am8_2.Value < Enum.ConnectionError.DisconnectErrors.Value then
                            return
                        end
                        if ane[am8_2] then
                            return
                        end
                        aou("Disconnected", LocalPlayer.Name .. " was disconnected from the game.", false)
                    end)
                end
            end)
            aox = {}
            aog = nil
            aor = function(Eg)
                local anj = {}
                if type(Eg.items) == "table" then
                    for k, v in pairs(Eg.items) do
                        if type(v) == "number" then
                            anj[k] = v
                        end
                    end
                end
                if type(Eg.stats) == "table" then
                    for k, v in pairs(Eg.stats) do
                        if type(v) == "number" then
                            anj[k] = v
                        end
                    end
                end
                return anj
            end
            aol = function(En)
                aog = {}
                for k, v in pairs(En) do
                    aog[k] = v
                end
            end
            aov = function(Es)
                local anH = aor(Es)
                if not next(anH) then
                    return
                end
                if not aog then
                    aol(anH)
                    return
                end
                local Value = Options.WebhookItems.Value
                for k, v in pairs(Value) do
                    if v then
                        local anI_3 = anH[k] or 0
                        local anI_4 = aog[k] or 0
                        if anI_3 > anI_4 then
                            aou("Item Dropped", "Obtained " .. anI_3 - anI_4 .. "x " .. k .. " (total: " .. anI_3 .. ").", Toggles.PingItemDropped.Value)
                        end
                    end
                end
                aol(anH)
            end
            aoj = function(EG)
                if type(EG.bounties) ~= "table" then
                    return
                end
                for k, v in pairs(EG.bounties) do
                    local anV = type(v) == "table" and v.required and v.progress and v.progress >= v.required
                    if anV then
                        if not aox[k] then
                            aox[k] = true
                            aou("Bounty Complete", "Completed bounty: defeat " .. tostring(v.enemy) .. " in " .. tostring(v.world) .. ".", Toggles.PingBountyComplete.Value)
                        end
                    else
                        aox[k] = nil
                    end
                end
            end
            task.spawn(function()
                local an4_2
                local an8 = false
                repeat
                    task.wait(5)
                    if not Toggles.SendWebhook then
                        an8 = true
                    elseif Toggles.SendWebhook.Value then
                        local an3 = remote("Player", "get") or remote("Players", "get")
                        local an3_2
                        local an2 = an3
                        if an2 then
                            an3_2, an4_2 = pcall(function()
                                return an2:InvokeServer()
                            end)
                            local an5 = an3_2 and type(an4_2) == "table"
                            if an5 then
                                aov(an4_2)
                                aoj(an4_2)
                            end
                        end
                    else
                        aog = nil
                    end
                until an8
            end)
        end)(loader);
        (function(...)
            local aqD
            local aqB
            local Options
            local aqz
            Options = nil
            aqz = nil
            aqB = nil
            aqD = nil
            local aqr, aqs, Label, aqu, aqv, aqw, remote, Label2, Toggles
            aqz = ...
            Options = aqz.Options
            Toggles = aqz.Toggles
            local Tabs = aqz.Tabs
            remote = aqz.remote
            local aqF = { "Gems", "Gold" }
            local aqG = { "Easy", "Intermediate", "Nightmare", "Impossible" }
            aqr = function()
                local aoF
                aoF = nil
                local aoH_3
                local aoG = (remote("Player", "get"))
                local aoG_3
                local aoM = if aoG then 1 else 0
                local aoK = 3575 * aoM + 568 * (1 - aoM)
                local aoL = 2231 * aoM + 2905 * (1 - aoM)
                if not ((aoK * 3323 + aoL * 1532 + aoK * aoL) % 16777213 == 6496229) then
                    aoG = remote("Players", "get")
                end
                aoF = aoG
                if not aoF then
                    return nil
                end
                aoG_3, aoH_3 = pcall(function()
                    return aoF:InvokeServer()
                end)
                local aoI = aoG_3 and type(aoH_3) == "table"
                return aoI and aoH_3 or nil
            end
            local function aqH()
                local aoN = {}
                for i, v in ipairs({ "Story", "Squadron" }) do
                    local aoP = aqz.ModeData[v] or {}
                    for k in pairs(aoP) do
                        aoN[k] = true
                    end
                end
                local aoO_4 = {}
                for k in pairs(aoN) do
                    table.insert(aoO_4, k)
                end
                if #aoO_4 == 0 then
                    aoO_4 = { "GT City", "Marine Lobby", "Ninja Village" }
                end
                table.sort(aoO_4)
                return aoO_4
            end
            aqD = function(Fn, Fo)
                local ao2_2 = (aqz.ModeData[Fn] or {})[Fo] or 1
                local ao3_2 = {}
                local ao8 = 1
                while ao8 <= ao2_2 do
                    local ao9 = ao8
                    table.insert(ao3_2, tostring(ao9))
                    ao8 += 1
                end
                if #ao3_2 == 0 then
                    ao3_2 = { "1" }
                end
                return ao3_2
            end
            local AutoBountyGroup = Tabs.Bounty:AddLeftGroupbox("Auto Bounty")
            Label2 = AutoBountyGroup:AddLabel("Tickets: 0")
            Label = AutoBountyGroup:AddLabel("No bounties.", true)
            AutoBountyGroup:AddDropdown("BountyDifficulties", { Text = "Accept Difficulties", Values = aqG, Multi = true, Default = {} })
            AutoBountyGroup:AddDropdown("BountyRewards", { Text = "Accept Rewards", Values = aqF, Multi = true, AllowNull = true })
            AutoBountyGroup:AddToggle("BountyAutoAccept", { Text = "Auto Accept Offers", Default = false })
            AutoBountyGroup:AddToggle("BountyAutoClaim", { Text = "Auto Claim Completed", Default = false })
            AutoBountyGroup:AddToggle("BountyAutoDecline", { Text = "Auto Decline Others", Default = false })
            AutoBountyGroup:AddToggle("BountyAutoTicket", { Text = "Auto Use Ticket", Default = false })
            local AutoJoinBountyGroup = Tabs.Bounty:AddRightGroupbox("Auto Join Bounty")
            AutoJoinBountyGroup:AddToggle("BountyAutoJoin", { Text = "Auto Join Bounty", Default = false })
            AutoJoinBountyGroup:AddDropdown("BountyFarmMode", { Text = "Farm Mode", Values = { "Story", "Squadron" }, Default = 1 })
            aqB = aqH()
            for i, v in ipairs(aqB) do
                AutoJoinBountyGroup:AddDropdown("BountyAct_" .. v, { Text = v .. " Act", Values = aqD("Story", v), Default = 1 })
                AutoJoinBountyGroup:AddDropdown("BountyDifficulty_" .. v, { Text = v .. " Difficulty", Values = { "Normal", "Hard" }, Default = 2 })
            end
            local function aqE_2()
                local Value = Options.BountyFarmMode.Value
                for i, v in ipairs(aqB) do
                    local apc = Options["BountyAct_" .. v]
                    if apc then
                        local apd = aqD(Value, v)
                        apc:SetValues(apd)
                        if table.find(apd, apc.Value) then
                            apc:SetValue(apc.Value)
                        else
                            apc:SetValue(apd[1])
                        end
                    end
                end
            end
            Options.BountyFarmMode:OnChanged(aqE_2)
            aqE_2()
            aqu = function(FH, FI)
                local apl = false
                for k in pairs(FH) do
                    apl = true
                    break
                end
                if not apl then
                    return true
                end
                return FH[FI] == true
            end
            aqs = function(FM, FN)
                local apr = false
                for k in pairs(FM) do
                    apr = true
                    break
                end
                if not apr then
                    return true
                end
                local aps = FN or {}
                for k in pairs(aps) do
                    if FM[k] then
                        return true
                    end
                end
                return false
            end
            aqv = function(FS)
                local apC = Options["BountyAct_" .. FS]
                local apD = Options["BountyDifficulty_" .. FS]
                if not (apC and apD) then
                    return false
                end
                local joinRoom = aqz.joinRoom
                local apF = tonumber(apC.Value) or 1
                return joinRoom({ world = FS, act = apF, mode = Options.BountyFarmMode.Value, difficulty = apD.Value })
            end
            aqw = 0
            task.spawn(function()
                local ap_ = false
                repeat
                    task.wait(4)
                    if not Toggles.BountyAutoClaim then
                        ap_ = true
                    else
                        local apO = aqr()
                        local apP = apO and type(apO.bounties) == "table"
                        if apP then
                            local bounties = apO.bounties
                            local apQ_2 = apO.stats and apO.stats["Bounty Tickets"] or 0
                            Label2:SetText("Tickets: " .. apQ_2)
                            local apO_12 = {}
                            for k, v in pairs(bounties) do
                                local insert = table.insert
                                local enemy = v.enemy
                                local difficulty = v.difficulty
                                local progress = v.progress
                                local required = v.required
                                local apX = v.active and "active" or "inactive"
                                insert(apO_12, enemy .. " [" .. difficulty .. "] " .. progress .. "/" .. required .. " " .. apX)
                            end
                            local apR_5 = #apO_12 > 0 and table.concat(apO_12, "\n")
                            local apO_13 = apR_5 or "No bounties."
                            Label:SetText(apO_13)
                            if Toggles.BountyAutoClaim.Value then
                                local apN = remote("Bounties", "claim")
                                if apN then
                                    for k, v in pairs(bounties) do
                                        local ap9 = k
                                        if v.active and v.progress >= v.required then
                                            pcall(function()
                                                apN:InvokeServer(tonumber(ap9))
                                            end)
                                            task.wait(0.3)
                                        end
                                    end
                                end
                            end
                            for k, v in pairs(bounties) do
                                local aqd = k
                                if not v.active then
                                    local apO_15 = aqu(Options.BountyDifficulties.Value, v.difficulty) and aqs(Options.BountyRewards.Value, v.rewards)
                                    local apR_6 = apO_15
                                    if apO_15 then
                                        apO_15 = Toggles.BountyAutoAccept.Value
                                    end
                                    if apO_15 then
                                        local apM = remote("Bounties", "accept")
                                        if apM then
                                            pcall(function()
                                                apM:InvokeServer(tonumber(aqd))
                                            end)
                                            task.wait(0.3)
                                        end
                                    else
                                        local apO_16 = not apR_6
                                        if apO_16 ~= false then
                                            apO_16 = Toggles.BountyAutoDecline.Value
                                        end
                                        if apO_16 then
                                            local apK = remote("Bounties", "decline")
                                            if apK then
                                                pcall(function()
                                                    apK:InvokeServer(tonumber(aqd))
                                                end)
                                                task.wait(0.3)
                                            end
                                        end
                                    end
                                end
                            end
                            if Toggles.BountyAutoTicket.Value and apQ_2 > 0 then
                                local apO_18 = false
                                for k, v in pairs(bounties) do
                                    if not v.active then
                                        apO_18 = true
                                        break
                                    end
                                end
                                if not apO_18 then
                                    local apL = remote("Bounties", "use_ticket")
                                    if apL then
                                        pcall(function()
                                            apL:InvokeServer()
                                        end)
                                    end
                                end
                            end
                            local apO_19 = Toggles.BountyAutoJoin.Value and remote("Play", "create_room") and os.clock() - aqw > 12
                            if apO_19 then
                                for k, v in pairs(bounties) do
                                    if v.active and v.progress < v.required then
                                        aqw = os.clock()
                                        aqv(v.world)
                                        break
                                    end
                                end
                            end
                        end
                    end
                until ap_
            end)
        end)(loader);
        (function(...)
            local _VirtualUser
            local Library
            local arB
            local imageButton
            local Toggles
            local arK
            local arz
            local arC
            local arN
            local _TweenService
            local arF
            local arI
            local Position
            local screenGui
            local arO
            local arD
            Position = nil
            Library = nil
            arz = nil
            arB = nil
            arC = nil
            arD = nil
            Toggles = nil
            arF = nil
            _VirtualUser = nil
            arI = nil
            arK = nil
            screenGui = nil
            imageButton = nil
            arN = nil
            arO = nil
            _TweenService = nil
            local LocalPlayer
            arC = ...
            Library = arC.Library
            local Options = arC.Options
            Toggles = arC.Toggles
            local Tabs = arC.Tabs
            LocalPlayer = arC.LocalPlayer
            _VirtualUser = arC._VirtualUser
            local _UserInputService = arC._UserInputService
            _TweenService = arC._TweenService
            local MenuGroup = Tabs.Settings:AddLeftGroupbox("Menu")
            MenuGroup:AddToggle("AntiAFK", { Text = "Anti-AFK", Default = true })
            LocalPlayer.Idled:Connect(function()
                if Toggles.AntiAFK.Value then
                    _VirtualUser:CaptureController()
                    _VirtualUser:ClickButton2(Vector2.new())
                end
            end)
            MenuGroup:AddToggle("CustomCursor", {
                Text = "Custom Cursor",
                Default = false,
                Callback = function(GS)
                    Library.ShowCustomCursor = GS
                end
            })
            MenuGroup:AddDropdown("DPIScale", {
                Text = "DPI Scale",
                Values = { "50%", "75%", "100%", "125%", "150%" },
                Default = 3,
                Callback = function(GU)
                    local aqU = tonumber((string.gsub(GU, "%%", ""))) or 100
                    Library:SetDPIScale(aqU)
                end
            })
            MenuGroup:AddToggle("AutoExecute", {
                Text = "Auto Execute",
                Default = false,
                Callback = function(GW)
                    local aqX
                    arC.AutoExecute = GW
                    if not GW then
                        return
                    end
                    local aqZ = syn and syn.queue_on_teleport or queue_on_teleport
                    if not aqZ then
                        aqZ = fluxus and fluxus.queue_on_teleport
                    end
                    aqX = aqZ
                    if not aqX then
                        Library:Notify({
                            Title = "Auto Execute",
                            Description = "queue_on_teleport is not supported by your executor.",
                            Time = 4
                        })
                        return
                    end
                    if arC.AutoExecuteConnection then
                        return
                    end
                    arC.AutoExecuteConnection = LocalPlayer.OnTeleport:Connect(function()
                        if arC.AutoExecute then
                            aqX('loadstring(game:HttpGet("' .. arC.LoaderUrl .. '"))()')
                        end
                    end)
                end
            })
            MenuGroup:AddToggle("AutoHideUI", {
                Text = "Auto Hide UI",
                Default = false,
                Callback = function(G6)
                    if Library.ScreenGui then
                        Library.ScreenGui.Enabled = not G6
                    end
                end
            })
            MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
            Library.ToggleKeybind = Options.MenuKeybind
            MenuGroup:AddButton("Unload", function()
                if arC.AutoExecuteConnection then
                    arC.AutoExecuteConnection:Disconnect()
                    arC.AutoExecuteConnection = nil
                end
                if getgenv then
                    getgenv().OuroborosHubAnimeSquadron = nil
                end
                Library:Unload()
            end)
            arC.SaveManager:SetLibrary(Library)
            arC.SaveManager:IgnoreThemeSettings()
            arC.SaveManager:SetFolder(arC.BaseFolder)
            arC.ThemeManager:SetLibrary(Library)
            arC.ThemeManager:SetFolder("OuroborosHub")
            arC.ThemeManager.DefaultTheme = "Jester"
            arC.ThemeManager:ApplyToTab(Tabs.Settings)
            arC.SaveManager:BuildConfigSection(Tabs.Settings)
            arC.SaveManager:LoadAutoloadConfig()
            arI = "setting_" .. LocalPlayer.Name
            pcall(function()
                arC.SaveManager:Load(arI)
            end)
            pcall(function()
                local aq8 = isfile and isfile(arC.BaseFolder .. "/settings/" .. arI .. ".json")
                if not aq8 then
                    arC.SaveManager:Load("autosave")
                end
            end)
            arK = false
            local function arA()
                if arK then
                    return
                end
                arK = true
                task.delay(0.5, function()
                    arK = false
                    pcall(function()
                        arC.SaveManager:Save(arI)
                    end)
                end)
            end
            for k, v in pairs(Toggles) do
                local Changed
                local arS_3 = type(v) == "table" and v.OnChanged
                if arS_3 then
                    Changed = v.Changed
                    v:OnChanged(function(...)
                        arA()
                        if Changed then
                            Changed(...)
                        end
                    end)
                end
            end
            for k, v in pairs(Options) do
                local Changed
                local arR_6 = type(v) == "table" and v.OnChanged
                if arR_6 then
                    Changed = v.Changed
                    v:OnChanged(function(...)
                        arA()
                        if Changed then
                            Changed(...)
                        end
                    end)
                end
            end
            arA()
            screenGui = Instance.new("ScreenGui")
            screenGui.Name = "OuroborosToggle"
            screenGui.ResetOnSpawn = false
            screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            local arR_7 = gethui and gethui()
            local arS_4 = arR_7 or game:GetService("CoreGui")
            screenGui.Parent = arS_4
            imageButton = Instance.new("ImageButton")
            imageButton.Size = UDim2.fromOffset(76, 76)
            imageButton.Position = UDim2.fromOffset(24, 0)
            imageButton.AnchorPoint = Vector2.new(0, 0)
            imageButton.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
            imageButton.BackgroundTransparency = 0.1
            imageButton.Image = "rbxassetid://91400086538074"
            imageButton.ScaleType = Enum.ScaleType.Fit
            imageButton.AutoButtonColor = true
            imageButton.Parent = screenGui
            local uICorner = Instance.new("UICorner")
            uICorner.CornerRadius = UDim.new(0, 12)
            uICorner.Parent = imageButton
            local uIStroke = Instance.new("UIStroke")
            uIStroke.Color = Color3.fromRGB(80, 80, 95)
            uIStroke.Thickness = 1
            uIStroke.Transparency = 0.3
            uIStroke.Parent = imageButton
            local uIPadding = Instance.new("UIPadding")
            uIPadding.PaddingTop = UDim.new(0, 6)
            uIPadding.PaddingBottom = UDim.new(0, 6)
            uIPadding.PaddingLeft = UDim.new(0, 6)
            uIPadding.PaddingRight = UDim.new(0, 6)
            uIPadding.Parent = imageButton
            arz = 12
            arF = 76
            arO = function(HM, HN, HO)
                local AbsoluteSize = screenGui.AbsoluteSize
                local ark = math.max(arz, AbsoluteSize.X - arF - arz)
                local arl = math.max(arz, AbsoluteSize.Y - arF - arz)
                HM = math.clamp(HM, arz, ark)
                HN = math.clamp(HN, arz, arl)
                if HO then
                    HM = HM + arF / 2 < AbsoluteSize.X / 2 and arz or ark
                end
                return HM, HN
            end
            task.defer(function()
                local HY, HZ = arO(arz, screenGui.AbsoluteSize.Y / 2 - arF / 2, true)
                imageButton.Position = UDim2.fromOffset(HY, HZ)
            end)
            arB, Position, arN, arD = false, nil, nil, false
            imageButton.InputBegan:Connect(function(H4)
                if H4.UserInputType == Enum.UserInputType.MouseButton1 or H4.UserInputType == Enum.UserInputType.Touch then
                    arB, arD = true, false
                    Position = H4.Position
                    arN = Vector2.new(imageButton.Position.X.Offset, imageButton.Position.Y.Offset)
                end
            end)
            _UserInputService.InputChanged:Connect(function(Ib)
                local arr_2
                local arq_4
                local arp = arB
                if arp then
                    arp = Ib.UserInputType == Enum.UserInputType.MouseMovement or Ib.UserInputType == Enum.UserInputType.Touch
                end
                if arp then
                    local arp_2 = Ib.Position - Position
                    if arp_2.Magnitude > 4 then
                        arD = true
                    end
                    arq_4, arr_2 = arO(arN.X + arp_2.X, arN.Y + arp_2.Y, false)
                    imageButton.Position = UDim2.fromOffset(arq_4, arr_2)
                end
            end)
            _UserInputService.InputEnded:Connect(function(Io)
                local aru_4
                local art = arB
                local art_2
                if art then
                    art = Io.UserInputType == Enum.UserInputType.MouseButton1 or Io.UserInputType == Enum.UserInputType.Touch
                end
                if art then
                    arB = false
                    aru_4, art_2 = arO(imageButton.Position.X.Offset, imageButton.Position.Y.Offset, true)
                    _TweenService:Create(imageButton, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = UDim2.fromOffset(aru_4, art_2) }):Play()
                end
            end)
            imageButton.MouseButton1Click:Connect(function()
                if arD then
                    return
                end
                if Library.ScreenGui then
                    Library.ScreenGui.Enabled = not Library.ScreenGui.Enabled
                end
            end)
        end)(loader)
    else
        (function(...)
            local Pv = ...
            local Library = Pv.Library
            local Window = Library:CreateWindow({
                Title = "Anime Squadron",
                Icon = "rbxthumb://type=Asset&id=774125543&w=150&h=150",
                Footer = "Ouroboros Hub",
                Center = true,
                AutoShow = true,
                Resizable = true,
                EnableSidebarResize = true,
                ShowCustomCursor = false,
                Size = UDim2.fromOffset(960, 720)
            })
            Pv.Window = Window
            local Px = {
                Main = Window:AddTab("Main", "swords"),
                Gameplay = Window:AddTab("Gameplay", "gamepad-2"),
                Macro = Window:AddTab("Macro", "list-video"),
                Shop = Window:AddTab("Shop", "shopping-cart"),
                Webhook = Window:AddTab("Webhook", "webhook"),
                Bounty = Window:AddTab("Bounty", "target"),
                Data = Window:AddTab("Data", "database"),
                Settings = Window:AddTab("Settings", "settings")
            }
            Pv.Tabs = Px
            local Pu = "https://discord.gg/ehKVq7pf7v"
            for k, v in pairs(Px) do
                v:AddLeftGroupbox("Discord"):AddButton("Join Discord for Dupes & Keyless Scripts", function()
                    local Pq = setclipboard or toclipboard
                    if not Pq then
                        Pq = syn and syn.write_clipboard
                    end
                    local Pr_2 = Pq
                    if Pr_2 then
                        Pr_2(Pu)
                    end
                    Library:Notify({ Title = "Ouroboros Hub", Description = "Discord link copied to clipboard!", Time = 3 })
                end)
                if v == Px.Main then
                    local MasterControlGroup = v:AddLeftGroupbox("Master Control")
                    MasterControlGroup:AddToggle("MasterStartMap", {
                        Text = '<font color="#FF3333">Enable Start Map</font>',
                        Default = false,
                        Tooltip = "When OFF: The script stays in the Lobby and pauses all auto-joining. Configure your settings safely, then turn ON to start matches."
                    })
                    MasterControlGroup:AddSlider("DelayStartRoom", {
                        Text = "Delay Start Match",
                        Min = 0,
                        Max = 30,
                        Default = 0,
                        Rounding = 0,
                        Suffix = "s",
                        Tooltip = "Wait this many seconds after creating a room before starting the match (useful for playing with friends or alts)."
                    })
                end
            end
        end)(loader);
        (function(...)
            local dh = ...
            local Tabs = dh.Tabs
            local function dj()
                local PF
                PF = nil
                local Remotes = dh.Remotes
                local PG_2
                local PH = Remotes
                local PH_1
                if PH then
                    local PI_1 = Remotes:FindFirstChild("Player") or Remotes:FindFirstChild("Players")
                    PH = PI_1
                end
                local PG_1 = PH
                if PH then
                    PH = PG_1:FindFirstChild("get")
                end
                PF = PH
                if not PF then
                    return nil
                end
                PG_2, PH_1 = pcall(function()
                    return PF:InvokeServer()
                end)
                local PI_2 = PG_2 and type(PH_1) == "table"
                if PI_2 then
                    return PH_1
                end
                return nil
            end
            local function dx(dy)
                local PK = {}
                if type(dy) == "table" then
                    for k, v in pairs(dy) do
                        local PL = type(v) == "table" and v.name
                        if PL then
                            local name = v.name
                            local PM = PK[v.name] or 0
                            PK[name] = PM + 1
                        end
                    end
                end
                return PK
            end
            local function dD(dE, dF)
                local PU = {}
                for k, v in pairs(dE) do
                    local PV_1 = type(v) == "number" and (dF or v > 0)
                    if PV_1 then
                        table.insert(PU, k)
                    end
                end
                table.sort(PU)
                local PV_2 = {}
                for i, v in ipairs(PU) do
                    table.insert(PV_2, v .. ": " .. tostring(dE[v]))
                end
                local PU_1 = #PV_2 > 0 and table.concat(PV_2, "\n")
                return PU_1 or "Empty."
            end
            local ItemsGroup = Tabs.Data:AddLeftGroupbox("Items")
            local Label3 = ItemsGroup:AddLabel("Loading...", true)
            local GearsGroup = Tabs.Data:AddLeftGroupbox("Gears")
            local Label2 = GearsGroup:AddLabel("Loading...", true)
            local UnitsGroup = Tabs.Data:AddRightGroupbox("Units")
            local Label = UnitsGroup:AddLabel("Loading...", true)
            local function onRefresh()
                local P9 = dj()
                if not P9 then
                    Label3:SetText("Unavailable.")
                    Label2:SetText("Unavailable.")
                    Label:SetText("Unavailable.")
                    return
                end
                local Qa = {}
                if type(P9.items) == "table" then
                    for k, v in pairs(P9.items) do
                        Qa[k] = v
                    end
                end
                local Qb = type(P9.stats) == "table" and P9.stats["Trait Shards"]
                if Qb then
                    Qa["Trait Shards"] = P9.stats["Trait Shards"]
                end
                Label3:SetText(dD(Qa, false))
                Label2:SetText(dD(dx(P9.gear), true))
                Label:SetText(dD(dx(P9.characters), true))
            end
            ItemsGroup:AddButton("Refresh", onRefresh)
            task.spawn(function()
                while true do
                    pcall(onRefresh)
                    task.wait(5)
                end
            end)
        end)(loader);
        (function(...)
            local RB
            local remote
            local Rx
            local Label
            local Rt
            local LocalPlayer
            local Rw
            local RD
            local Toggles
            local _Players
            local Library
            local Ry
            local Options
            Rt = nil
            Options = nil
            _Players = nil
            Rw = nil
            Rx = nil
            Ry = nil
            Toggles = nil
            LocalPlayer = nil
            RB = nil
            Library = nil
            RD = nil
            Label = nil
            remote = nil
            Ry = ...
            Library = Ry.Library
            Options = Ry.Options
            Toggles = Ry.Toggles
            local Tabs = Ry.Tabs
            _Players = Ry._Players
            LocalPlayer = Ry.LocalPlayer
            remote = Ry.remote
            Rw = false
            RB = function(ee, ef, eg)
                local Qn_1
                if Toggles.MasterStartMap and not Toggles.MasterStartMap.Value then
                    return false
                end
                local Qk_1 = eg and not eg()
                if Qk_1 then
                    return false
                end
                local Qk_2 = remote("Play", "create_room")
                local Ql = remote("Play", "start")
                local Qm = Qk_2 and Ql
                local Qm_2
                if not Qm then
                    if not Rw then
                        Rw = true
                        Library:Notify({ Title = "Auto Join", Description = "Joining is only available from the lobby.", Time = 3 })
                    end
                    return false
                end
                Rw = false
                local Qm_1 = Toggles.OnlyFriends.Value or nil
                ee.only_friends = Qm_1
                Qm_2, Qn_1 = Qk_2:InvokeServer(ee)
                if not Qm_2 then
                    Library:Notify({ Title = "Auto Join", Description = tostring(Qn_1), Time = 4 })
                    return false
                elseif ef then
                    local Qk_3 = remote("Matchmaking", "find_match")
                    if not Qk_3 then
                        return false
                    end
                    return Qk_3:InvokeServer(ee) == true
                else
                    if Options.DelayStartRoom and Options.DelayStartRoom.Value > 0 then
                        task.wait(Options.DelayStartRoom.Value)
                    end
                    local Qk_5 = eg and not eg()
                    if Qk_5 then
                        return false
                    end
                    if Toggles.MasterStartMap and not Toggles.MasterStartMap.Value then
                        return false
                    end
                    return Ql:InvokeServer() == true
                end
            end
            Ry.joinRoom = RB
            local AutoJoinMapGroup = Tabs.Main:AddLeftGroupbox("Auto Join Map")
            AutoJoinMapGroup:AddDropdown("Mode", { Text = "Mode", Values = Ry.Modes, Default = 1 })
            AutoJoinMapGroup:AddDropdown("Chapter", { Text = "Chapter", Values = Ry:sortedChapters("Story"), Default = 1 })
            AutoJoinMapGroup:AddDropdown("Act", { Text = "Act", Values = { "1" }, Default = 1 })
            AutoJoinMapGroup:AddDropdown("Difficulty", { Text = "Difficulty", Values = Ry:difficultiesFor("Story"), Default = 1 })
            local function RI()
                local Qp_1 = (Ry.ModeData[Options.Mode.Value] or {})[Options.Chapter.Value]
                local Qv = if Qp_1 then 1 else 0
                local Qt = 1883 * Qv + 3704 * (1 - Qv)
                local Qu = 3001 * Qv + 722 * (1 - Qv)
                if not ((Qt * 3106 + Qu * 434 + Qt * Qu) % 16777213 == 12801915) then
                    Qp_1 = 1
                end
                local Qq_1 = {}
                local Qr = Qp_1
                local Qy = 1
                while Qy <= Qr do
                    local Qz = Qy
                    table.insert(Qq_1, tostring(Qz))
                    Qy += 1
                end
                Options.Act:SetValues(Qq_1)
                if table.find(Qq_1, Options.Act.Value) then
                    Options.Act:SetValue(Options.Act.Value)
                else
                    Options.Act:SetValue(Qq_1[1])
                end
            end
            local function RJ()
                local Value = Options.Mode.Value
                local QC = Ry:sortedChapters(Value)
                Options.Chapter:SetValues(QC)
                if table.find(QC, Options.Chapter.Value) then
                    Options.Chapter:SetValue(Options.Chapter.Value)
                else
                    Options.Chapter:SetValue(QC[1])
                end
                local QC_1 = Ry:difficultiesFor(Value)
                Options.Difficulty:SetValues(QC_1)
                if table.find(QC_1, Options.Difficulty.Value) then
                    Options.Difficulty:SetValue(Options.Difficulty.Value)
                else
                    Options.Difficulty:SetValue(QC_1[1])
                end
            end
            Options.Mode:OnChanged(RJ)
            Options.Chapter:OnChanged(RI)
            RJ()
            RI = function()
                local Value2 = Options.Mode.Value
                local QH = Toggles.AutoMatchmake and Toggles.AutoMatchmake.Value
                local function QI()
                    return Toggles.AutoJoin and Toggles.AutoJoin.Value
                end
                if Value2 == "Infinite" then
                    return RB({
                        world = Ry.InfiniteStage.world,
                        act = Ry.InfiniteStage.act,
                        mode = "Infinite",
                        difficulty = Ry.InfiniteStage.difficulty
                    }, QH, QI)
                end
                local Value = Options.Chapter.Value
                local QK = tonumber(Options.Act.Value) or 1
                return RB({ world = Value, act = QK, mode = Value2, difficulty = Options.Difficulty.Value }, QH, QI)
            end
            Ry.attemptAutoJoinMap = RI
            AutoJoinMapGroup:AddToggle("AutoJoin", { Text = "Auto Join Map", Default = false })
            AutoJoinMapGroup:AddToggle("AutoMatchmake", { Text = "Auto Matchmake", Default = false })
            AutoJoinMapGroup:AddToggle("OnlyFriends", { Text = "Only Friends", Default = false })
            Rx = {}
            local RH_1 = remote("Play", "update_lobby")
            if RH_1 then
                RH_1.OnClientEvent:Connect(function(eR)
                    Rx = eR or {}
                end)
            end
            RD = function()
                local QP = {}
                for i, player in ipairs(_Players:GetPlayers()) do
                    if player ~= LocalPlayer then
                        table.insert(QP, player.Name)
                    end
                end
                table.sort(QP)
                return QP
            end
            Rt = function(e_)
                for k, v in pairs(Rx) do
                    if type(v.players) == "table" then
                        for i, v in ipairs(v.players) do
                            if v.Name == e_ then
                                return k
                            end
                        end
                    end
                end
            end
            local JoinPlayerGroup = Tabs.Main:AddLeftGroupbox("Join Player")
            Label = JoinPlayerGroup:AddLabel("Player: None")
            JoinPlayerGroup:AddDropdown("TargetPlayer", { Text = "Join Player", Values = RD(), AllowNull = true, Multi = false })
            Options.TargetPlayer:OnChanged(function()
                local Rc = Options.TargetPlayer.Value
                local Rg = if Rc then 1 else 0
                local Re = 2227 * Rg + 2473 * (1 - Rg)
                local Rf = 3472 * Rg + 81 * (1 - Rg)
                if not ((Re * 2664 + Rf * 411 + Re * Rf) % 16777213 == 15091864) then
                    Rc = "None"
                end
                Label:SetText("Player: " .. Rc)
            end)
            JoinPlayerGroup:AddButton("Refresh Player List", function()
                Options.TargetPlayer:SetValues(RD())
            end)
            JoinPlayerGroup:AddButton("Clear Target", function()
                Options.TargetPlayer:SetValue(nil)
            end)
            JoinPlayerGroup:AddToggle("AutoJoinPlayer", {
                Text = "Auto Join Player",
                Default = false,
                Callback = function(fc)
                    if not fc then
                        return
                    end
                    task.spawn(function()
                        local Rl_1
                        local JoinDelay = Ry.JoinDelay
                        local Rh_2
                        local Rp = JoinDelay
                        local Ro = -1
                        while true do
                            if false and Rp <= 1 or true and Rp >= 1 then
                                if not Toggles.AutoJoinPlayer.Value then
                                    break
                                end
                                task.wait(1)
                                Rp += Ro
                                continue
                            end
                            while Toggles.AutoJoinPlayer.Value do
                                local Value = Options.TargetPlayer.Value
                                local Ri = false
                                local Rj = remote("Play", "join")
                                if Value and Rj then
                                    local Rk_1 = Rt(Value)
                                    if Rk_1 then
                                        Rh_2, Rl_1 = Rj:InvokeServer(Rk_1)
                                        if Rh_2 then
                                            Ri = true
                                        else
                                            Library:Notify({ Title = "Join Player", Description = tostring(Rl_1), Time = 4 })
                                        end
                                    end
                                end
                                local wait = task.wait
                                local Ri_1 = Ri and 10 or 4
                                wait(Ri_1)
                            end
                            return
                        end
                        return
                    end)
                end
            })
        end)(loader);
        (function(...)
            local Sk
            local Toggles
            local remote
            local Sq
            local Sm
            local Sp
            local Options
            local Library
            Sk = nil
            Options = nil
            Sm = nil
            remote = nil
            Library = nil
            Sp = nil
            Sq = nil
            Toggles = nil
            Sq = ...
            Library = Sq.Library
            Options = Sq.Options
            Toggles = Sq.Toggles
            local Tabs = Sq.Tabs
            remote = Sq.remote
            Sk = { [1] = "Cosmic Throne Hall", [2] = 1, [3] = "Event", [4] = "Normal" }
            local BorosEventGroup = Tabs.Main:AddLeftGroupbox("Boros Event")
            BorosEventGroup:AddToggle("BorosMatchmake", { Text = "Auto Matchmake", Default = false })
            BorosEventGroup:AddToggle("BorosLeaveLowPlayers", { Text = "Auto Leave if Players Less Than", Default = false })
            BorosEventGroup:AddInput("BorosMinPlayers", { Text = "Min Players", Numeric = true, Default = "2", Finished = true })
            BorosEventGroup:AddToggle("BorosLeaveOnFail", { Text = "Auto Leave on Fail", Default = false })
            Sp = 0
            Sm = function()
                if Toggles.MasterStartMap and not Toggles.MasterStartMap.Value then
                    return false
                end
                local RL_1 = remote("Play", "create_room")
                local RM = remote("Play", "start")
                local RN = RL_1 and RM
                local RN_2
                if not RN then
                    Library:Notify({ Title = "Boros Event", Description = "Joining is only available from the lobby.", Time = 3 })
                    return false
                end
                local RN_1 = Sk[1]
                local RO = Sk[2]
                local RO_1
                local RR_1 = {
                    world = RN_1,
                    act = RO,
                    mode = Sk[3],
                    difficulty = Sk[4],
                    only_friends = Toggles.OnlyFriends and Toggles.OnlyFriends.Value or nil
                }
                RN_2, RO_1 = RL_1:InvokeServer(RR_1)
                if not RN_2 then
                    Library:Notify({ Title = "Boros Event", Description = tostring(RO_1), Time = 4 })
                    return false
                end
                if Toggles.BorosMatchmake and Toggles.BorosMatchmake.Value then
                    local RL_3 = remote("Matchmaking", "find_match")
                    if not RL_3 then
                        return false
                    end
                    local RN_3 = RL_3:InvokeServer(RR_1) == true
                    if RN_3 then
                        Sp = os.clock() + 3
                    end
                    return RN_3
                end
                if Options.DelayStartRoom and Options.DelayStartRoom.Value > 0 then
                    task.wait(Options.DelayStartRoom.Value)
                end
                return RM:InvokeServer() == true
            end
            BorosEventGroup:AddToggle("AutoJoinBoros", {
                Text = "Auto Join Boros Event",
                Default = false,
                Callback = function(fV)
                    if not fV then
                        return
                    end
                    task.spawn(function()
                        local R2 = Sq.JoinDelay
                        local R1 = -1
                        while false and R2 <= 1 or true and R2 >= 1 do
                            local R3 = R2
                            if not Toggles.AutoJoinBoros.Value then
                                return
                            end
                            Library:Notify({ Title = "Boros Event", Description = "Joining in " .. R3 .. "s...", Time = 1 })
                            task.wait(1)
                            R2 += R1
                        end
                        while Toggles.AutoJoinBoros.Value do
                            local RX_1 = Sm()
                            local RX_2 = RX_1 and 10 or 4
                            task.wait(RX_2)
                        end
                    end)
                end
            })
            local Ss_1 = remote("Play", "setup_players")
            if Ss_1 then
                Ss_1.OnClientEvent:Connect(function(fZ)
                    if not (Toggles.BorosLeaveLowPlayers and Toggles.BorosLeaveLowPlayers.Value) then
                        return
                    end
                    if os.clock() < Sp then
                        return
                    end
                    local R6_1 = fZ and fZ.players
                    if type(R6_1) ~= "table" then
                        return
                    end
                    local R6_2 = tonumber(Options.BorosMinPlayers.Value)
                    if R6_2 and #R6_1 < R6_2 then
                        local R6_3 = remote("Play", "leave")
                        if R6_3 then
                            R6_3:FireServer()
                        end
                    end
                end)
            end
            local Ss_2 = remote("Game", "ending")
            if Ss_2 then
                Ss_2.OnClientEvent:Connect(function(ga, gb)
                    if Toggles.BorosLeaveOnFail and Toggles.BorosLeaveOnFail.Value and gb == false then
                        Sq:fireRemote("Players", "teleport")
                    end
                end)
            end
        end)(loader);
        (function(...)
            local Tg
            local Tc
            local Library
            local Options
            local Toggles
            local Td
            local Tb
            Library = nil
            Tb = nil
            Tc = nil
            Td = nil
            Toggles = nil
            Tg = nil
            Options = nil
            local remote, Te
            Tc = ...
            Library = Tc.Library
            Options = Tc.Options
            Toggles = Tc.Toggles
            local Tabs = Tc.Tabs
            remote = Tc.remote
            local ChallengeConfigurationGroup = Tabs.Main:AddLeftGroupbox("Challenge Configuration")
            ChallengeConfigurationGroup:AddDropdown("IgnoreDailyMap", {
                Text = "Ignore Daily Map",
                Values = Tc.WorldNames,
                Default = {},
                Multi = true,
                Searchable = true,
                AllowNull = true
            })
            ChallengeConfigurationGroup:AddDropdown("IgnoreChallengeMap", {
                Text = "Ignore Challenge Map",
                Values = Tc.WorldNames,
                Default = {},
                Multi = true,
                Searchable = true,
                AllowNull = true
            })
            ChallengeConfigurationGroup:AddDropdown("RewardFilter", {
                Text = "Challenge Reward Filter",
                Values = Tc.ItemNames,
                Default = {},
                Multi = true,
                Searchable = true,
                AllowNull = true
            })
            ChallengeConfigurationGroup:AddToggle("AutoDaily", { Text = "Auto Daily", Default = false })
            ChallengeConfigurationGroup:AddToggle("AutoChallenge", { Text = "Auto Challenge", Default = false })
            ChallengeConfigurationGroup:AddToggle("AutoHeroHunter", { Text = "Auto Hero Hunter", Default = false })
            ChallengeConfigurationGroup:AddDropdown("HeroHunterDifficulty", { Text = "Hero Hunter Difficulty", Values = { "Normal", "Hard" }, Default = 1 })
            ChallengeConfigurationGroup:AddToggle("AutoKatakara", { Text = "Auto Katakara Bridge", Default = false })
            ChallengeConfigurationGroup:AddDropdown("KatakaraDifficulty", { Text = "Katakara Bridge Difficulty", Values = { "Normal", "Hard" }, Default = 1 })
            ChallengeConfigurationGroup:AddToggle("AutoUltimateEvil", { Text = "Auto Ultimate Evil", Default = false })
            ChallengeConfigurationGroup:AddDropdown("UltimateEvilDifficulty", { Text = "Ultimate Evil Difficulty", Values = { "Normal", "Hard" }, Default = 1 })
            ChallengeConfigurationGroup:AddToggle("AutoEclipse", { Text = "Auto Eclipse", Default = false })
            ChallengeConfigurationGroup:AddDropdown("EclipseDifficulty", { Text = "Eclipse Difficulty", Values = { "Normal", "Hard" }, Default = 1 })
            ChallengeConfigurationGroup:AddToggle("AutoInfinityTrain", { Text = "Auto Infinity Train", Default = false })
            ChallengeConfigurationGroup:AddDropdown("InfinityTrainDifficulty", { Text = "Infinity Train Difficulty", Values = { "Normal", "Hard" }, Default = 1 })
            ChallengeConfigurationGroup:AddToggle("AutoLavaContinent", { Text = "Auto Lava Continent", Default = false })
            ChallengeConfigurationGroup:AddDropdown("LavaContinentDifficulty", { Text = "Lava Continent Difficulty", Values = { "Normal", "Hard" }, Default = 1 })
            ChallengeConfigurationGroup:AddToggle("SkipTraitMaxed", { Text = "Skip if Trait Daily Is Maxed", Default = false })
            Te = function(gn)
                local Value = Options.RewardFilter.Value
                local Sw = false
                for k in pairs(Value) do
                    Sw = true
                    break
                end
                if not Sw then
                    return true
                end
                local Sx = gn or {}
                for k in pairs(Sx) do
                    if Value[k] then
                        return true
                    end
                end
                return false
            end
            Tg = function()
                local SH = Toggles.AutoDaily.Value
                local SM = if SH then 1 else 0
                local SK = 1373 * SM + 2818 * (1 - SM)
                local SL = 840 * SM + 2883 * (1 - SM)
                if not ((SK * 733 + SL * 1316 + SK * SL) % 16777213 == 3265169) then
                    SH = Toggles.AutoChallenge.Value
                end
                if not SH then
                    SH = Toggles.AutoHeroHunter.Value
                end
                if not SH then
                    SH = Toggles.AutoKatakara.Value
                end
                if not SH then
                    SH = Toggles.AutoUltimateEvil.Value
                end
                if not SH then
                    SH = Toggles.AutoEclipse.Value
                end
                if not SH then
                    SH = Toggles.AutoInfinityTrain.Value
                end
                if not SH then
                    SH = Toggles.AutoLavaContinent.Value
                end
                if not SH then
                    SH = Toggles.AutoJoin and Toggles.AutoJoin.Value
                end
                return SH
            end
            Tb = function()
                local SN
                local SO, SP, SQ, SR, SS
                local ST = 55
                while true do
                    local ST_1 = 8150 - ST
                    do
                        if ST_1 < 8102 then
                            if ST_1 < 8075 then
                                if ST_1 < 8061 then
                                    if ST_1 < 8054 then
                                        if ST_1 < 8051 then
                                            break
                                        elseif ST_1 < 8052 then
                                            if ST_1 == 8051 then
                                                ST = if Tc.joinRoom({
                                                    world = Tc.EclipseStage.world,
                                                    act = Tc.EclipseStage.act,
                                                    mode = "Raid",
                                                    difficulty = Options.EclipseDifficulty.Value
                                                }) then 30 else 65
                                            else
                                                ST = 8128
                                                continue
                                            end
                                        elseif ST_1 < 8053 then
                                            if ST_1 == 8052 then
                                                ST = if SP then 10 else 94
                                            else
                                                ST = 8117
                                                continue
                                            end
                                        else
                                            return false
                                        end
                                    elseif ST_1 < 8057 then
                                        if ST_1 < 8055 then
                                            if ST_1 == 8054 then
                                                ST = 58
                                            else
                                                ST = 8064
                                                continue
                                            end
                                        elseif ST_1 < 8056 then
                                            ST = if not SO then 97 else 13
                                        elseif ST_1 == 8056 then
                                            ST = if SP then 90 else 6
                                        else
                                            ST = 8089
                                            continue
                                        end
                                    elseif ST_1 < 8059 then
                                        if ST_1 < 8058 then
                                            if ST_1 == 8057 then
                                                ST = if SR then 51 else 52
                                            else
                                                ST = 8084
                                                continue
                                            end
                                        else
                                            ST = if Toggles.AutoKatakara.Value then 75 else 29
                                        end
                                    elseif ST_1 < 8060 then
                                        SO = Toggles.AutoJoin.Value
                                        ST = 71
                                    elseif ST_1 == 8060 then
                                        SP = SO["1d"]
                                        SQ = not Options.IgnoreDailyMap.Value[SP.world]
                                        ST = if SQ then 62 else 12
                                    else
                                        ST = 8088
                                        continue
                                    end
                                elseif ST_1 < 8068 then
                                    if ST_1 < 8064 then
                                        if ST_1 < 8062 then
                                            return Tc.attemptAutoJoinMap()
                                        elseif ST_1 < 8063 then
                                            ST = if SO({ world = SQ, act = SR, mode = "Challenge", difficulty = "30m" }) then 50 else 57
                                        elseif ST_1 == 8063 then
                                            ST = 84
                                        else
                                            ST = 8053
                                            continue
                                        end
                                    elseif ST_1 < 8066 then
                                        if ST_1 < 8065 then
                                            if ST_1 == 8064 then
                                                SO = Toggles.SkipTraitMaxed.Value
                                                ST = if SO then 54 else 8
                                            else
                                                ST = 8100
                                                continue
                                            end
                                        elseif ST_1 == 8065 then
                                            SO = Toggles.SkipTraitMaxed.Value
                                            ST = if SO then 56 else 23
                                        else
                                            ST = 8056
                                            continue
                                        end
                                    elseif ST_1 < 8067 then
                                        ST = 29
                                    else
                                        SO = Toggles.AutoJoin
                                        ST = if SO then 91 else 71
                                    end
                                elseif ST_1 < 8071 then
                                    if ST_1 < 8069 then
                                        ST = if Toggles.AutoInfinityTrain.Value then 25 else 24
                                    elseif ST_1 < 8070 then
                                        if ST_1 == 8069 then
                                            ST = if SO then 89 else 67
                                        else
                                            ST = 7766
                                            continue
                                        end
                                    else
                                        return true
                                    end
                                elseif ST_1 < 8073 then
                                    if ST_1 < 8072 then
                                        if ST_1 == 8071 then
                                            ST = if Tc.joinRoom({
                                                world = Tc.HeroHunterStage.world,
                                                act = Tc.HeroHunterStage.act,
                                                mode = "Challenge",
                                                difficulty = Options.HeroHunterDifficulty.Value
                                            }) then 45 else 40
                                        else
                                            ST = 8133
                                            continue
                                        end
                                    elseif ST_1 == 8072 then
                                        return true
                                    else
                                        ST = 8131
                                        continue
                                    end
                                elseif ST_1 < 8074 then
                                    if ST_1 == 8073 then
                                        SQ = Tc.joinRoom
                                        SR = SP.world
                                        SS = (tonumber(SP.act))
                                        ST = if SS then 61 else 73
                                    else
                                        ST = 8070
                                        continue
                                    end
                                else
                                    SO = Tc.joinRoom
                                    SQ = SP.world
                                    SR = (tonumber(SP.act))
                                    ST = if SR then 88 else 27
                                end
                            elseif ST_1 < 8088 then
                                if ST_1 < 8081 then
                                    if ST_1 < 8078 then
                                        if ST_1 < 8076 then
                                            if ST_1 == 8075 then
                                                SO = Toggles.SkipTraitMaxed.Value
                                                ST = if SO then 41 else 22
                                            else
                                                ST = 8062
                                                continue
                                            end
                                        elseif ST_1 < 8077 then
                                            ST = if SP then 33 else 34
                                        else
                                            SS = 1
                                            ST = 61
                                        end
                                    elseif ST_1 < 8079 then
                                        ST = if not SO then 26 else 96
                                    elseif ST_1 < 8080 then
                                        if ST_1 == 8079 then
                                            ST = if SO then 70 else 81
                                        else
                                            ST = 11512
                                            continue
                                        end
                                    elseif ST_1 == 8080 then
                                        SO = type(Tc.attemptAutoJoinMap) == "function"
                                        ST = 81
                                    else
                                        ST = 8121
                                        continue
                                    end
                                elseif ST_1 < 8084 then
                                    if ST_1 < 8082 then
                                        if ST_1 == 8081 then
                                            ST = if Tc.joinRoom({
                                                world = Tc.LavaContinentStage.world,
                                                act = Tc.LavaContinentStage.act,
                                                mode = "Invasion",
                                                difficulty = Options.LavaContinentDifficulty.Value
                                            }) then 49 else 43
                                        else
                                            ST = 8095
                                            continue
                                        end
                                    elseif ST_1 < 8083 then
                                        if ST_1 == 8082 then
                                            ST = 38
                                        else
                                            ST = 8110
                                            continue
                                        end
                                    else
                                        return false
                                    end
                                elseif ST_1 < 8086 then
                                    if ST_1 < 8085 then
                                        if ST_1 == 8084 then
                                            SR = type(SQ) == "table"
                                            ST = 93
                                        else
                                            ST = 8090
                                            continue
                                        end
                                    elseif ST_1 == 8085 then
                                        ST = 31
                                    else
                                        ST = 8126
                                        continue
                                    end
                                elseif ST_1 < 8087 then
                                    ST = if Tc.joinRoom({
                                        world = Tc.InfinityTrainStage.world,
                                        act = Tc.InfinityTrainStage.act,
                                        mode = "Raid",
                                        difficulty = Options.InfinityTrainDifficulty.Value
                                    }) then 80 else 4
                                elseif ST_1 == 8087 then
                                    local SW_1 = if SP then 1 else 0
                                    local SU_1 = 3652 * SW_1 + 669 * (1 - SW_1)
                                    local SV_1 = 481 * SW_1 + 102 * (1 - SW_1)
                                    ST = if (SU_1 * 3849 + SV_1 * 3899 + SU_1 * SV_1) % 16777213 == 911366 then 5 else 15
                                else
                                    ST = 8119
                                    continue
                                end
                            elseif ST_1 < 8095 then
                                if ST_1 < 8091 then
                                    if ST_1 < 8089 then
                                        SQ = Te(SP.rewards)
                                        ST = 12
                                    elseif ST_1 < 8090 then
                                        ST = if SQ({ world = SR, act = SS, mode = "Challenge", difficulty = "1d" }) then 78 else 28
                                    elseif ST_1 == 8090 then
                                        SO = Toggles.SkipTraitMaxed.Value
                                        local SW_2 = if SO then 1 else 0
                                        local SU_2 = 3936 * SW_2 + 2116 * (1 - SW_2)
                                        local SV_2 = 3439 * SW_2 + 3946 * (1 - SW_2)
                                        ST = if (SU_2 * 950 + SV_2 * 212 + SU_2 * SV_2) % 16777213 == 1226959 then 19 else 7
                                    else
                                        ST = 8057
                                        continue
                                    end
                                elseif ST_1 < 8093 then
                                    if ST_1 < 8092 then
                                        if ST_1 == 8091 then
                                            ST = if Tc.joinRoom({
                                                world = Tc.KatakaraStage.world,
                                                act = Tc.KatakaraStage.act,
                                                mode = "Challenge",
                                                difficulty = Options.KatakaraDifficulty.Value
                                            }) then 35 else 87
                                        else
                                            ST = 15432
                                            continue
                                        end
                                    else
                                        ST = if Toggles.AutoEclipse.Value then 60 else 82
                                    end
                                elseif ST_1 < 8094 then
                                    if ST_1 == 8093 then
                                        ST = 68
                                    else
                                        ST = 8111
                                        continue
                                    end
                                elseif ST_1 == 8094 then
                                    SO = Tc:traitStageMaxed("Challenge", Tc.HeroHunterStage.world, Tc.HeroHunterStage.act)
                                    ST = 23
                                else
                                    ST = 8063
                                    continue
                                end
                            elseif ST_1 < 8098 then
                                if ST_1 < 8096 then
                                    if ST_1 == 8095 then
                                        SO = Toggles.MasterStartMap
                                        ST = if SO then 1 else 95
                                    else
                                        ST = 8057
                                        continue
                                    end
                                elseif ST_1 < 8097 then
                                    if ST_1 == 8096 then
                                        SO = Tc:traitStageMaxed("Invasion", Tc.LavaContinentStage.world, Tc.LavaContinentStage.act)
                                        ST = 8
                                    else
                                        ST = 8128
                                        continue
                                    end
                                else
                                    SQ = os.clock() - Tc.ChallengeDataTime > 30
                                    ST = 14
                                end
                            elseif ST_1 < 8100 then
                                if ST_1 < 8099 then
                                    ST = 34
                                elseif ST_1 == 8099 then
                                    Tc.ChallengeDataCache = SQ
                                    Tc.ChallengeDataTime = os.clock()
                                    SO = SQ
                                    ST = 52
                                else
                                    ST = 8094
                                    continue
                                end
                            elseif ST_1 < 8101 then
                                return true
                            elseif ST_1 == 8101 then
                                return true
                            else
                                ST = 8108
                                continue
                            end
                        elseif ST_1 < 8129 then
                            if ST_1 < 8115 then
                                if ST_1 < 8108 then
                                    if ST_1 < 8105 then
                                        if ST_1 < 8103 then
                                            if ST_1 == 8102 then
                                                SP = Toggles.AutoDaily.Value
                                                ST = if SP then 42 else 98
                                            else
                                                ST = 8059
                                                continue
                                            end
                                        elseif ST_1 < 8104 then
                                            SQ = not Tc.ChallengeDataTime
                                            ST = if SQ then 14 else 53
                                        elseif ST_1 == 8104 then
                                            ST = 92
                                        else
                                            ST = 10948
                                            continue
                                        end
                                    elseif ST_1 < 8106 then
                                        return true
                                    elseif ST_1 < 8107 then
                                        if ST_1 == 8106 then
                                            ST = if not SO then 64 else 11
                                        else
                                            ST = 8141
                                            continue
                                        end
                                    elseif ST_1 == 8107 then
                                        ST = 21
                                    else
                                        ST = 8059
                                        continue
                                    end
                                elseif ST_1 < 8111 then
                                    if ST_1 < 8109 then
                                        if ST_1 == 8108 then
                                            SP = SO["1d"]
                                            ST = 98
                                        else
                                            ST = 8065
                                            continue
                                        end
                                    elseif ST_1 < 8110 then
                                        SO = Tc:traitStageMaxed("Challenge", Tc.KatakaraStage.world, Tc.KatakaraStage.act)
                                        ST = 22
                                    elseif ST_1 == 8110 then
                                        ST = 46
                                    else
                                        ST = 8079
                                        continue
                                    end
                                elseif ST_1 < 8113 then
                                    if ST_1 < 8112 then
                                        if ST_1 == 8111 then
                                            ST = if SO then 76 else 68
                                        else
                                            ST = 12289
                                            continue
                                        end
                                    else
                                        ST = if Toggles.AutoHeroHunter.Value then 85 else 92
                                    end
                                elseif ST_1 < 8114 then
                                    SO = Toggles.SkipTraitMaxed.Value
                                    ST = if SO then 20 else 72
                                else
                                    SP = SO["30m"]
                                    ST = 63
                                end
                            elseif ST_1 < 8122 then
                                if ST_1 < 8118 then
                                    if ST_1 < 8116 then
                                        return true
                                    elseif ST_1 < 8117 then
                                        if ST_1 == 8116 then
                                            ST = if type(SO) ~= "table" then 3 else 48
                                        else
                                            ST = 8071
                                            continue
                                        end
                                    elseif ST_1 == 8117 then
                                        SP, SQ = pcall(function()
                                            return SN:InvokeServer()
                                        end)
                                        SR = SP
                                        local SW_3 = if SR then 1 else 0
                                        local SU_3 = 762 * SW_3 + 1358 * (1 - SW_3)
                                        local SV_3 = 1038 * SW_3 + 2379 * (1 - SW_3)
                                        ST = if (SU_3 * 2175 + SV_3 * 3022 + SU_3 * SV_3) % 16777213 == 5585142 then 66 else 93
                                    else
                                        ST = 8135
                                        continue
                                    end
                                elseif ST_1 < 8120 then
                                    if ST_1 < 8119 then
                                        if ST_1 == 8118 then
                                            SO = Te(SP.rewards)
                                            ST = 39
                                        else
                                            ST = 8100
                                            continue
                                        end
                                    else
                                        ST = 82
                                    end
                                elseif ST_1 < 8121 then
                                    if ST_1 == 8120 then
                                        return true
                                    end
                                    ST = 8065
                                    continue
                                else
                                    ST = if Toggles.AutoUltimateEvil.Value then 37 else 58
                                end
                            elseif ST_1 < 8125 then
                                if ST_1 < 8123 then
                                    if ST_1 == 8122 then
                                        ST = 0
                                    else
                                        ST = 8097
                                        continue
                                    end
                                elseif ST_1 < 8124 then
                                    SR = 1
                                    ST = 88
                                else
                                    ST = if Tc.joinRoom({
                                        world = Tc.UltimateEvilStage.world,
                                        act = Tc.UltimateEvilStage.act,
                                        mode = "Raid",
                                        difficulty = Options.UltimateEvilDifficulty.Value
                                    }) then 17 else 9
                                end
                            elseif ST_1 < 8127 then
                                if ST_1 < 8126 then
                                    if ST_1 == 8125 then
                                        SO = Toggles.SkipTraitMaxed.Value
                                        ST = if SO then 16 else 44
                                    else
                                        ST = 8068
                                        continue
                                    end
                                else
                                    ST = if Toggles.AutoLavaContinent.Value then 86 else 83
                                end
                            elseif ST_1 < 8128 then
                                ST = if not SO then 79 else 46
                            elseif ST_1 == 8128 then
                                ST = if not SO then 59 else 84
                            else
                                ST = 8056
                                continue
                            end
                        elseif ST_1 < 8142 then
                            if ST_1 < 8135 then
                                if ST_1 < 8132 then
                                    if ST_1 < 8130 then
                                        if ST_1 == 8129 then
                                            ST = 83
                                        else
                                            ST = 8127
                                            continue
                                        end
                                    elseif ST_1 < 8131 then
                                        SO = Tc:traitStageMaxed("Raid", Tc.UltimateEvilStage.world, Tc.UltimateEvilStage.act)
                                        ST = 72
                                    else
                                        SO = Tc:traitStageMaxed("Raid", Tc.EclipseStage.world, Tc.EclipseStage.act)
                                        ST = 7
                                    end
                                elseif ST_1 < 8133 then
                                    SP = SO["30m"]
                                    SO = not Options.IgnoreChallengeMap.Value[SP.world]
                                    ST = if SO then 32 else 39
                                elseif ST_1 < 8134 then
                                    return true
                                else
                                    SO = Tc:traitStageMaxed("Raid", Tc.InfinityTrainStage.world, Tc.InfinityTrainStage.act)
                                    ST = 44
                                end
                            elseif ST_1 < 8138 then
                                if ST_1 < 8136 then
                                    if ST_1 == 8135 then
                                        ST = if SP then 18 else 38
                                    else
                                        ST = 8076
                                        continue
                                    end
                                elseif ST_1 < 8137 then
                                    SP = SQ
                                    ST = 74
                                else
                                    SN = remote("Play", "get_challenges")
                                    SO = Tc.ChallengeDataCache
                                    SP = SN
                                    ST = if SP then 47 else 74
                                end
                            elseif ST_1 < 8140 then
                                if ST_1 < 8139 then
                                    ST = if SQ then 77 else 0
                                else
                                    ST = 24
                                end
                            elseif ST_1 < 8141 then
                                if ST_1 == 8140 then
                                    SP = not Tc:dailyChallengeDone()
                                    ST = 94
                                else
                                    ST = 8086
                                    continue
                                end
                            elseif ST_1 == 8141 then
                                ST = 96
                            else
                                ST = 8131
                                continue
                            end
                        elseif ST_1 < 8149 then
                            if ST_1 < 8145 then
                                if ST_1 < 8143 then
                                    ST = if not SO then 69 else 21
                                elseif ST_1 < 8144 then
                                    ST = if not SO then 99 else 31
                                else
                                    SP = Toggles.AutoChallenge.Value
                                    local SW_4 = if SP then 1 else 0
                                    local SU_4 = 2013 * SW_4 + 4094 * (1 - SW_4)
                                    local SV_4 = 3684 * SW_4 + 2988 * (1 - SW_4)
                                    ST = if (SU_4 * 1371 + SV_4 * 36 + SU_4 * SV_4) % 16777213 == 10308339 then 36 else 63
                                end
                            elseif ST_1 < 8147 then
                                if ST_1 < 8146 then
                                    SP = not Tc:regularChallengeDone()
                                    ST = 15
                                else
                                    ST = 11
                                end
                            elseif ST_1 < 8148 then
                                SO = {}
                                ST = 48
                            else
                                break
                            end
                        elseif ST_1 < 11512 then
                            if ST_1 < 8150 then
                                SO = Toggles.MasterStartMap.Value
                                ST = 95
                            elseif ST_1 < 10948 then
                                if ST_1 == 8150 then
                                    ST = 6
                                else
                                    break
                                end
                            else
                                break
                            end
                        else
                            break
                        end
                    end
                end
            end
            Td = false
            local function S9()
                if Td then
                    return
                end
                Td = true
                task.spawn(function()
                    local JoinDelay = Tc.JoinDelay
                    local SY_3
                    local S3 = JoinDelay
                    local S2 = -1
                    while false and S3 <= 1 or true and S3 >= 1 do
                        local S4 = S3
                        if not Tg() then
                            Td = false
                            return
                        end
                        if Toggles.MasterStartMap and Toggles.MasterStartMap.Value and true then
                            Library:Notify({ Title = "Matchmaking", Description = "Joining in " .. S4 .. "s...", Time = 1 })
                        end
                        task.wait(1)
                        S3 += S2
                    end
                    while true do
                        local SX = (Tg())
                        local SX_1
                        if SX then
                            SX = Toggles.MasterStartMap and Toggles.MasterStartMap.Value
                        end
                        if SX then
                            SX_1, SY_3 = pcall(Tb)
                            if not SX_1 then
                                warn("challengeCycle error:", SY_3)
                                SY_3 = false
                            end
                            local wait = task.wait
                            local SY_4 = SY_3 and 10 or 4
                            wait(SY_4)
                            continue
                        end
                        break
                    end
                    Td = false
                end)
            end
            for i, v in ipairs({
                "MasterStartMap",
                "AutoDaily",
                "AutoChallenge",
                "AutoHeroHunter",
                "AutoKatakara",
                "AutoUltimateEvil",
                "AutoEclipse",
                "AutoInfinityTrain",
                "AutoLavaContinent",
                "AutoJoin"
            }) do
                local Tq = v
                if Toggles[Tq] then
                    Toggles[Tq]:OnChanged(function()
                        if Toggles[Tq].Value then
                            S9()
                        end
                    end)
                end
            end
        end)(loader);
        (function(...)
            local agc
            local afU
            local Label4
            local agi
            local af_
            local agH
            local afH
            local af5
            local agh
            local agG
            local Library
            local LocalPlayer2
            local Label
            local afS
            local agg
            local afY
            local agF
            local afF
            local remote
            local af3
            local agL
            local afL
            local ags
            local af9
            local afR
            local agy
            local afX
            local agE
            local agl
            local afK
            local agr
            local _HttpService
            local agx
            local age
            local afW
            local agD
            local Toggles
            local agJ
            local afJ
            local agq
            local af7
            local Options
            local agw
            local agd
            local afV
            local agj
            local af0
            local agI
            local afI
            local af6
            local afO
            local agv
            Toggles = nil
            afF = nil
            afH = nil
            afI = nil
            afJ = nil
            afK = nil
            afL = nil
            afO = nil
            Options = nil
            afR = nil
            afS = nil
            afU = nil
            afV = nil
            afW = nil
            afX = nil
            afY = nil
            local afZ
            af_ = nil
            af0 = nil
            af3 = nil
            Library = nil
            af5 = nil
            af6 = nil
            af7 = nil
            _HttpService = nil
            af9 = nil
            Label = nil
            local agb
            agc = nil
            agd = nil
            age = nil
            agg = nil
            agh = nil
            agi = nil
            agj = nil
            agl = nil
            remote = nil
            local ago
            local autoMaxSpeedLoop, afG, afM, afN, afQ, afT, af1, af2, agf, Label3, Label2, agp
            agq = nil
            agr = nil
            ags = nil
            LocalPlayer2 = nil
            agv = nil
            agw = nil
            agx = nil
            agy = nil
            Label4 = nil
            agD = nil
            agE = nil
            agF = nil
            agG = nil
            agH = nil
            agI = nil
            agJ = nil
            agL = nil
            local agz, agA, agC, agK
            agi = ...
            Library = agi.Library
            Options = agi.Options
            Toggles = agi.Toggles
            local Tabs = agi.Tabs
            local agM_1
            LocalPlayer2 = agi.LocalPlayer
            remote = agi.remote
            _HttpService = agi._HttpService
            local IngameConfigurationGroup = Tabs.Main:AddRightGroupbox("Ingame Configuration")
            IngameConfigurationGroup:AddToggle("AutoReplay", { Text = "Auto Replay", Default = false })
            IngameConfigurationGroup:AddToggle("AutoNext", { Text = "Auto Next", Default = false })
            IngameConfigurationGroup:AddToggle("AutoLeave", { Text = "Auto Leave", Default = false })
            IngameConfigurationGroup:AddToggle("AutoLeaveChallenge", { Text = "Auto Leave (Challenge)", Default = false })
            IngameConfigurationGroup:AddToggle("ReplayChallenge", { Text = "Replay (Challenge)", Default = false })
            IngameConfigurationGroup:AddToggle("LeaveTraitPity", { Text = "Leave on Daily Trait Pity", Default = false })
            IngameConfigurationGroup:AddToggle("LeaveForDaily", { Text = "Go back to lobby for Daily Challenge", Default = false })
            IngameConfigurationGroup:AddToggle("LeaveForRegular", { Text = "Go back to lobby after XX:30 for Challenge", Default = false })
            IngameConfigurationGroup:AddToggle("LeaveAfterMinutes", { Text = "Go Back to Lobby After X Minutes", Default = false })
            IngameConfigurationGroup:AddInput("LeaveMinutes", { Text = "Minutes", Numeric = true, Default = "30", Finished = true })
            IngameConfigurationGroup:AddToggle("LeaveAfterMatches", { Text = "Go Back to Lobby After X Matches", Default = false })
            IngameConfigurationGroup:AddInput("LeaveMatches", { Text = "Matches", Numeric = true, Default = "10", Finished = true })
            IngameConfigurationGroup:AddToggle("Retreat", { Text = "Retreat", Default = false })
            IngameConfigurationGroup:AddInput("RetreatSeconds", { Text = "Retreat Seconds", Numeric = true, Default = "30", Finished = true })
            IngameConfigurationGroup:AddLabel("Retreat: if the base health gets stuck at 0 for more than 20 seconds, goes back to the lobby after the set seconds on top of that.", true)
            IngameConfigurationGroup:AddToggle("AutoVoteStart", { Text = "Auto Start (Vote Skip)", Default = false })
            IngameConfigurationGroup:AddToggle("AutoMaxSpeed", { Text = "Auto Set Max Speed", Default = false })
            IngameConfigurationGroup:AddSlider("MaxSpeed", { Text = "Speed", Min = 1, Max = 3, Default = 3, Rounding = 0, Suffix = "x" })
            autoMaxSpeedLoop = function()
                if not Toggles.AutoMaxSpeed then
                    return
                end
                if not Toggles.AutoMaxSpeed.Value then
                    return
                end
                local Tr = remote("Game", "change_speed")
                if Tr then
                    Tr:InvokeServer(Options.MaxSpeed.Value)
                end
            end
            Toggles.AutoMaxSpeed:OnChanged(autoMaxSpeedLoop)
            Options.MaxSpeed:OnChanged(autoMaxSpeedLoop)
            afI = nil
            afX = 0
            Toggles.LeaveAfterMatches:OnChanged(function()
                if Toggles.LeaveAfterMatches.Value then
                    afX = 0
                end
            end)
            local function agN_1()
                if Toggles.LeaveAfterMinutes.Value then
                    local Tx = tonumber(Options.LeaveMinutes.Value)
                    local Ty = Tx and Tx > 0
                    local Tz = Ty and os.clock() + Tx * 60
                    afI = Tz or nil
                else
                    afI = nil
                end
            end
            Toggles.LeaveAfterMinutes:OnChanged(agN_1)
            Options.LeaveMinutes:OnChanged(agN_1)
            task.spawn(function()
                while true do
                    task.wait(1)
                    if not Toggles.LeaveAfterMinutes then
                        break
                    end
                    local TE = Toggles.LeaveAfterMinutes.Value and afI and os.clock() >= afI
                    if TE then
                        local TE_1 = tonumber(Options.LeaveMinutes.Value)
                        local TF = TE_1 and TE_1 > 0
                        local TG = TF and os.clock() + TE_1 * 60
                        afI = TG or nil
                        agi:fireRemote("Players", "teleport")
                    end
                end
            end)
            afU = nil
            afH = function()
                local TJ_1
                local TI_1
                TI_1, TJ_1 = pcall(function()
                    return require(LocalPlayer2.PlayerScripts.Client.Characters)
                end)
                local TK = not TI_1 or type(TJ_1) ~= "table" or type(TJ_1.all) ~= "table"
                if TK then
                    return nil
                end
                local TI_2 = TJ_1.all[-1]
                if not TI_2 then
                    return nil
                end
                return TI_2.last_health or TI_2.max_health
            end
            task.spawn(function()
                while true do
                    task.wait(1)
                    if not Toggles.Retreat then
                        break
                    end
                    local TM
                    local TN = Toggles.Retreat.Value and remote("Play", "create_room") == nil
                    if TN then
                        TM = afH()
                    end
                    if TM and TM <= 0 then
                        local TM_1 = afU or os.clock()
                        afU = TM_1
                        local TM_2 = tonumber(Options.RetreatSeconds.Value)
                        if not TM_2 or TM_2 <= 0 then
                            TM_2 = 30
                        end
                        if os.clock() - afU >= 20 + TM_2 then
                            afU = nil
                            agi:fireRemote("Players", "teleport")
                        end
                    else
                        afU = nil
                    end
                end
            end)
            local PerformanceGroup = Tabs.Main:AddRightGroupbox("Performance")
            PerformanceGroup:AddToggle("FPSBoost", { Text = "FPS Boost", Default = false })
            PerformanceGroup:AddInput("FPSCap", { Text = "FPS Cap", Numeric = true, Default = "60", Finished = true })
            agx = {
                ParticleEmitter = true,
                Trail = true,
                Beam = true,
                Smoke = true,
                Fire = true,
                Sparkles = true,
                BloomEffect = true,
                BlurEffect = true,
                SunRaysEffect = true,
                DepthOfFieldEffect = true
            }
            age = {}
            agq = false
            af2 = function(ig)
                if agx[ig.ClassName] then
                    ig.Enabled = false
                elseif ig:IsA("MeshPart") then
                    ig.Material = Enum.Material.SmoothPlastic
                    ig.Reflectance = 0
                    ig.CastShadow = false
                    ig.TextureID = ""
                elseif ig:IsA("BasePart") then
                    ig.Material = Enum.Material.SmoothPlastic
                    ig.Reflectance = 0
                    ig.CastShadow = false
                elseif ig:IsA("SpecialMesh") then
                    ig.TextureId = ""
                elseif ig:IsA("Decal") then
                    ig.Transparency = 1
                end
            end
            agy = function()
                local Lighting
                Lighting = nil
                if agq then
                    return
                end
                agq = true
                Lighting = game:GetService("Lighting")
                pcall(function()
                    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
                end)
                pcall(function()
                    UserSettings():GetService("UserGameSettings").SavedQualityLevel = Enum.SavedQualitySetting.QualityLevel1
                end)
                pcall(function()
                    Lighting.GlobalShadows = false
                end)
                for i, child in ipairs(Lighting:GetChildren()) do
                    local TZ = child
                    if agx[TZ.ClassName] then
                        pcall(function()
                            TZ.Enabled = false
                        end)
                    end
                end
                local Terrain = workspace:FindFirstChildOfClass("Terrain")
                if Terrain then
                    pcall(function()
                        Terrain.WaterWaveSize = 0
                        Terrain.WaterWaveSpeed = 0
                        Terrain.WaterReflectance = 0
                    end)
                end
                for i, descendant in ipairs(workspace:GetDescendants()) do
                    pcall(af2, descendant)
                end
                table.insert(age, workspace.DescendantAdded:Connect(function(ix)
                    if agq then
                        pcall(af2, ix)
                    end
                end))
            end
            afJ = function()
                agq = false
                for i, v in ipairs(age) do
                    v:Disconnect()
                end
                table.clear(age)
            end
            Toggles.FPSBoost:OnChanged(function()
                if Toggles.FPSBoost.Value then
                    agy()
                else
                    afJ()
                end
            end)
            Options.FPSCap:OnChanged(function()
                if setfpscap then
                    local Ug = tonumber(Options.FPSCap.Value)
                    if Ug then
                        pcall(setfpscap, math.floor(Ug))
                    end
                end
            end)
            local LobbyMiscGroup = Tabs.Main:AddRightGroupbox("Lobby Misc")
            LobbyMiscGroup:AddToggle("AutoDiscovery", { Text = "Auto Discovery", Default = false })
            LobbyMiscGroup:AddToggle("AutoQuest", { Text = "Auto Quest", Default = false })
            LobbyMiscGroup:AddToggle("AutoLevelMilestone", { Text = "Auto Level Milestone Claim", Default = false })
            LobbyMiscGroup:AddButton("Redeem Codes", function()
                local Uu
                Uu = remote("Codes", "use")
                if not Uu then
                    Library:Notify({ Title = "Codes", Description = "Codes are only available in the lobby.", Time = 3 })
                    return
                end
                task.spawn(function()
                    local Uj_1
                    local Ui_1
                    Ui_1, Uj_1 = pcall(function()
                        return game:HttpGet("https://www.eurogamer.net/anime-squadron-codes")
                    end)
                    local Uk = not Ui_1
                    local Up = if Uk then 1 else 0
                    local Un = 2539 * Up + 577 * (1 - Up)
                    local Uo = 4069 * Up + 1144 * (1 - Up)
                    if not ((Un * 2990 + Uo * 1645 + Un * Uo) % 16777213 == 7839093) then
                        Uk = type(Uj_1) ~= "string"
                    end
                    if Uk then
                        Library:Notify({ Title = "Codes", Description = "Failed to fetch codes.", Time = 4 })
                        return
                    end
                    local Ui_2 = string.find(Uj_1, '<ul class="working">', 1, true)
                    local Uk_1 = Ui_2 and string.find(Uj_1, "</ul>", Ui_2, true)
                    if not (Ui_2 and Uk_1) then
                        Library:Notify({ Title = "Codes", Description = "Could not parse codes.", Time = 4 })
                        return
                    end
                    local Uk_3 = string.sub(Uj_1, Ui_2, Uk_1)
                    local Ui_3 = 0
                    for k in string.gmatch(Uk_3, "<strong>(.-)</strong>") do
                        local Ut = k
                        Ut = Ut:gsub("^%s+", ""):gsub("%s+$", "")
                        if Ut ~= "" then
                            Ui_3 = Ui_3 + 1
                            pcall(function()
                                Uu:InvokeServer(Ut)
                            end)
                            task.wait(0.4)
                        end
                    end
                    Library:Notify({ Title = "Codes", Description = "Attempted " .. Ui_3 .. " codes.", Time = 4 })
                end)
            end)
            agz = function()
                local Uw
                Uw = nil
                local Uy_1
                local Ux = remote("Player", "get") or remote("Players", "get")
                local Ux_1
                Uw = Ux
                if not Uw then
                    return nil
                end
                Ux_1, Uy_1 = pcall(function()
                    return Uw:InvokeServer()
                end)
                local Uz = Ux_1 and type(Uy_1) == "table"
                return Uz and Uy_1 or nil
            end
            agp = function()
                local UB = remote("Level_Milestones", "claim")
                if not UB then
                    return
                end
                local UC = agz()
                if not (UC and UC.stats) then
                    return
                end
                local UE = UC.level_milestones or {}
                local UE_1 = UC.stats.level or 0
                for i = 5, 100, 5 do
                    local UM = i
                    local UE_2 = UM <= UE_1 and not table.find(UE, UM)
                    if UE_2 then
                        pcall(function()
                            UB:InvokeServer(UM)
                        end)
                        task.wait(0.2)
                    end
                end
            end
            task.spawn(function()
                local UR = false
                repeat
                    task.wait(5)
                    if not Toggles.AutoDiscovery then
                        UR = true
                    else
                        if Toggles.AutoDiscovery.Value then
                            local UO = remote("Characters", "claim_all_index")
                            if UO then
                                pcall(function()
                                    UO:InvokeServer()
                                end)
                            end
                        end
                        if Toggles.AutoQuest.Value then
                            local UN = remote("Quests", "claim_all")
                            if UN then
                                pcall(function()
                                    UN:InvokeServer()
                                end)
                            end
                        end
                        if Toggles.AutoLevelMilestone.Value then
                            agp()
                        end
                    end
                until UR
            end)
            local MaterialFarmGroup = Tabs.Main:AddRightGroupbox("Material Farm")
            local function agO()
                local UX_1
                local UV = isfile
                local UV_1
                local UW = {
                    Queue = {},
                    QueueIndex = 1,
                    Difficulty = "Hard",
                    Targets = {},
                    AutoLobby = true,
                    Active = false,
                    Target = nil
                }
                if UV then
                    UV = isfile(agi.MatFarmConfigFile)
                end
                if UV then
                    UV_1, UX_1 = pcall(function()
                        return _HttpService:JSONDecode(readfile(agi.MatFarmConfigFile))
                    end)
                    local UY = UV_1 and type(UX_1) == "table"
                    if UY then
                        if type(UX_1.Difficulty) == "string" then
                            UW.Difficulty = UX_1.Difficulty
                        end
                        if type(UX_1.Queue) == "table" then
                            for i, v in ipairs(UX_1.Queue) do
                                if type(v) == "string" then
                                    table.insert(UW.Queue, v)
                                end
                            end
                        end
                        if type(UX_1.QueueIndex) == "number" then
                            UW.QueueIndex = UX_1.QueueIndex
                        end
                        if type(UX_1.Targets) == "table" then
                            UW.Targets = UX_1.Targets
                        end
                        if type(UX_1.AutoLobby) == "boolean" then
                            UW.AutoLobby = UX_1.AutoLobby
                        end
                    end
                end
                return UW
            end
            agh = function()
                if not writefile then
                    return false
                end
                pcall(function()
                    local jH = {
                        Difficulty = agi.MatFarmConfig.Difficulty,
                        Queue = agi.MatFarmConfig.Queue,
                        QueueIndex = agi.MatFarmConfig.QueueIndex,
                        Targets = agi.MatFarmConfig.Targets,
                        AutoLobby = agi.MatFarmConfig.AutoLobby
                    }
                    writefile(agi.MatFarmConfigFile, _HttpService:JSONEncode(jH))
                end)
            end
            agi.MatFarmConfig = agO()
            agj = nil
            af6 = function()
                return agi:windowIndex(workspace:GetServerTimeNow(), agi.Resets.regularEpoch, agi.RegularPeriod)
            end
            agi.regularChallengeLobbyReturn = function()
                if not Toggles.LeaveForRegular.Value then
                    return false
                end
                local U9 = af6()
                if agj and U9 > agj then
                    agj = U9
                    return true
                end
                agj = U9
                return false
            end
            Toggles.LeaveForRegular:OnChanged(function()
                if Toggles.LeaveForRegular.Value then
                    agj = af6()
                end
            end)
            task.spawn(function()
                while true do
                    task.wait(5)
                    if not Toggles.LeaveForRegular then
                        break
                    end
                    if Toggles.LeaveForRegular.Value then
                        if agi.remote("Play", "create_room") then
                            agj = af6()
                        elseif agi.regularChallengeLobbyReturn() then
                            agi:fireRemote("Players", "teleport")
                        end
                    end
                end
            end)
            local agO_1 = remote("Game", "ending")
            if agO_1 then
                agO_1.OnClientEvent:Connect(function(j_, j0)
                    if not Toggles.LeaveAfterMatches then
                        return
                    end
                    j_ = j_ or {}
                    local difficulty = j_.difficulty
                    local VE_1 = j_.mode == "Challenge"
                    local VF = difficulty == "1d"
                    local VG = difficulty == "30m"
                    task.defer(autoMaxSpeedLoop)
                    if agi.onMatchSummary then
                        task.spawn(function()
                            agi.onMatchSummary(j_, j0)
                        end)
                    end
                    local VD_2 = Toggles.AutoAwaken.Value
                    local VP = if VD_2 then 1 else 0
                    local VN = 3898 * VP + 118 * (1 - VP)
                    local VO = 1279 * VP + 3126 * (1 - VP)
                    if not ((VN * 14 + VO * 3367 + VN * VO) % 16777213 == 9346507) then
                        VD_2 = Toggles.AutoCraftGear.Value
                    end
                    local VM = if VD_2 then 1 else 0
                    local VK = 1462 * VM + 1021 * (1 - VM)
                    local VL = 3746 * VM + 3283 * (1 - VM)
                    if not ((VK * 1532 + VL * 2553 + VK * VL) % 16777213 == 502761) then
                        VD_2 = Toggles.AutoMaterialFarm.Value
                    end
                    if VD_2 then
                        task.wait(1.5)
                    end
                    if VD_2 then
                        local VH_1 = agi.remote("Player", "get") or agi.remote("Players", "get")
                        VD_2 = VH_1
                    end
                    local VC = VD_2
                    if VC then
                        pcall(function()
                            local result = VC:InvokeServer()
                            local Vi = type(result) == "table" and agi.Utility and type(agi.Utility.data) == "table"
                            if Vi then
                                if type(result.items) == "table" then
                                    local data = agi.Utility.data
                                    local Vk_1 = agi.Utility.data.items or {}
                                    data.items = Vk_1
                                    local items = agi.Utility.data.items
                                    for k in pairs(items) do
                                        if result.items[k] == nil then
                                            items[k] = nil
                                        end
                                    end
                                    for k, v in pairs(result.items) do
                                        items[k] = v
                                    end
                                end
                                if type(result.stats) == "table" then
                                    local data = agi.Utility.data
                                    local Vk_2 = agi.Utility.data.stats or {}
                                    data.stats = Vk_2
                                    local stats = agi.Utility.data.stats
                                    for k in pairs(stats) do
                                        if result.stats[k] == nil then
                                            stats[k] = nil
                                        end
                                    end
                                    for k, v in pairs(result.stats) do
                                        stats[k] = v
                                    end
                                end
                            end
                        end)
                    end
                    if Toggles.LeaveAfterMatches.Value then
                        afX = afX + 1
                        local VD_3 = tonumber(Options.LeaveMatches.Value)
                        if VD_3 and afX >= VD_3 then
                            Toggles.LeaveAfterMatches:SetValue(false)
                            agi:fireRemote("Players", "teleport")
                            return
                        end
                    end
                    if Toggles.AutoAwaken.Value and agi.onAwakenMatchEnd then
                        if agi.onAwakenMatchEnd() then
                            return
                        end
                    end
                    if Toggles.AutoCraftGear.Value and agi.onCraftMatchEnd then
                        if agi.onCraftMatchEnd() then
                            return
                        end
                    end
                    if Toggles.AutoMaterialFarm.Value and agi.onMatFarmMatchEnd then
                        if agi.onMatFarmMatchEnd() then
                            return
                        end
                    end
                    local VD_7 = workspace:GetServerTimeNow()
                    local VH_3 = agi:windowIndex(VD_7, agi.Resets.dailyEpoch, agi.DailyPeriod)
                    if VF then
                        agi.lastDailyWindow = VH_3
                    end
                    local VD_8 = Toggles.LeaveTraitPity.Value and agi:traitStageMaxed(j_.mode, j_.world, j_.act)
                    if VD_8 then
                        agi:fireRemote("Players", "teleport")
                        return
                    end
                    local VD_9 = Toggles.LeaveForDaily.Value and not VF
                    if VD_9 then
                        VD_9 = VH_3 > (agi.lastDailyLeaveTrigger or agi.lastDailyWindow)
                    end
                    if VD_9 then
                        agi.lastDailyLeaveTrigger = VH_3
                        agi:fireRemote("Players", "teleport")
                        return
                    end
                    if agi.regularChallengeLobbyReturn() then
                        agi:fireRemote("Players", "teleport")
                        return
                    end
                    if VE_1 then
                        local VD_11 = (VF or VG) and { isDaily = VF, isRegular = VG } or nil
                        agi.lastEndedChallenge = VD_11
                        if Toggles.ReplayChallenge.Value then
                            agi:fireRemote("Game", "replay")
                            return
                        end
                        if Toggles.AutoLeaveChallenge.Value and (VF or VG) then
                            agi:fireRemote("Game", "replay")
                            return
                        end
                    end
                    if Toggles.AutoNext.Value and j0 and not VE_1 then
                        agi:fireRemote("Game", "next")
                        return
                    end
                    if Toggles.AutoReplay.Value then
                        agi:fireRemote("Game", "replay")
                        return
                    end
                    if Toggles.AutoLeave.Value then
                        agi:fireRemote("Players", "teleport")
                    end
                end)
            end
            local agO_2 = remote("Players", "message")
            if agO_2 then
                agO_2.OnClientEvent:Connect(function(kH, kI)
                    if not Toggles.AutoLeaveChallenge then
                        return
                    end
                    if not Toggles.AutoLeaveChallenge.Value then
                        return
                    end
                    local VT = kI ~= "error" or type(kH) ~= "string"
                    if VT then
                        return
                    end
                    if not string.find(string.lower(kH), "replay this challenge") then
                        return
                    end
                    local lastEndedChallenge = agi.lastEndedChallenge
                    if lastEndedChallenge and (lastEndedChallenge.isDaily or lastEndedChallenge.isRegular) then
                        agi:fireRemote("Players", "teleport")
                    end
                end)
            end
            task.spawn(function()
                local V0
                local Menus = LocalPlayer2.PlayerGui:WaitForChild("Menus", 10)
                local V2 = Menus and Menus:WaitForChild("Start", 10)
                V0 = V2
                if not V0 then
                    return
                end
                V0:GetPropertyChangedSignal("Visible"):Connect(function()
                    if V0.Visible then
                        if Toggles.AutoVoteStart.Value then
                            agi:fireRemote("Players", "start")
                        end
                        autoMaxSpeedLoop()
                    end
                end)
                if V0.Visible and Toggles.AutoVoteStart.Value then
                    agi:fireRemote("Players", "start")
                end
                autoMaxSpeedLoop()
            end)
            task.spawn(function()
                local autoReplayLoop
                autoReplayLoop = nil
                local V7
                local Menus = LocalPlayer2.PlayerGui:WaitForChild("Menus", 10)
                local V9 = Menus and Menus:WaitForChild("EndScreen", 10)
                V7 = V9
                if not V7 then
                    return
                end
                autoReplayLoop = function()
                    if V7.Visible and Toggles.AutoReplay.Value then
                        agi:fireRemote("Game", "replay")
                    end
                end
                V7:GetPropertyChangedSignal("Visible"):Connect(function()
                    task.spawn(autoReplayLoop)
                end)
                task.spawn(autoReplayLoop)
            end)
            local agu = remote("General", "timer")
            if agu then
                agb = 0
                ago = 0
                afZ = function(lf, lg)
                    if not (lf and lg) then
                        return
                    end
                    local Wb_1 = workspace:GetServerTimeNow()
                    local Wc = Wb_1 + lf
                    local Wd = Wb_1 + lg
                    local Wb_2 = math.abs(Wc - ago) > 5 or math.abs(Wd - agb) > 5
                    if Wb_2 then
                        ago = Wc
                        agb = Wd
                        agi:writeResets({ dailyEpoch = Wc, regularEpoch = Wd })
                    end
                end
                agu.OnClientEvent:Connect(function(...)
                    local Wj_1
                    local Wi_1
                    Wj_1, Wi_1 = nil, nil
                    for i, v in ipairs({ ... }) do
                        if type(v) == "number" then
                            if v <= agi.RegularPeriod + 60 then
                                Wi_1 = v
                            elseif v <= agi.DailyPeriod + 60 then
                                Wj_1 = v
                            end
                        end
                    end
                    afZ(Wj_1, Wi_1)
                end)
                task.spawn(function()
                    while agu.Parent do
                        local Wr = agi.Utility and type(agi.Utility.timers) == "table"
                        if Wr then
                            afZ(agi.Utility.timers.day, agi.Utility.timers.half_hour)
                        end
                        task.wait(5)
                    end
                end)
            end
            afF = {}
            agH = function(lB)
                local Ww_1
                if afF[lB] ~= nil then
                    return afF[lB]
                end
                local Wt = 0
                local Characters = agi._ReplicatedStorage:FindFirstChild("Characters")
                local Wv = Characters and Characters:FindFirstChild(lB)
                local Wv_1
                local Wu_1 = Wv
                if Wv then
                    Wv = Wu_1:FindFirstChild("data")
                end
                local Wu_2 = Wv
                if Wu_2 then
                    Wv_1, Ww_1 = pcall(require, Wu_2)
                    local Wu_3 = Wv_1 and type(Ww_1) == "table" and Ww_1.max_upgrades
                    if Wu_3 then
                        Wt = Ww_1.max_upgrades
                    end
                end
                afF[lB] = Wt
                return Wt
            end
            agD = function(lO)
                local LocalPlayer = game:GetService("Players").LocalPlayer
                local WI = LocalPlayer and LocalPlayer:FindFirstChild("PlayerGui")
                local WH_1 = WI
                if WI then
                    WI = WH_1:FindFirstChild("Hotbar")
                end
                local WH_2 = WI
                if WI then
                    WI = WH_2:FindFirstChild("Menus")
                end
                local WH_3 = WI
                if WI then
                    WI = WH_3:FindFirstChild("Team")
                end
                local WH_4 = WI
                if WI then
                    WI = WH_4:FindFirstChild("ScrollingFrame")
                end
                local WH_5 = WI
                if WI then
                    WI = WH_5:FindFirstChild(lO)
                end
                local WH_6 = WI
                if WI then
                    WI = WH_6:FindFirstChild("Upgrade")
                end
                local WH_7 = WI
                if WI then
                    WI = WH_7:IsA("TextLabel")
                end
                if WI then
                    local WI_1 = string.match(WH_7.Text, "%[(%d+)/")
                    if WI_1 then
                        return tonumber(WI_1)
                    end
                    return 0
                end
                return 0
            end
            agA = function(l6, l7)
                local LocalPlayer = game:GetService("Players").LocalPlayer
                local WR = LocalPlayer and LocalPlayer:FindFirstChild("PlayerGui")
                local WQ_1 = WR
                if WR then
                    WR = WQ_1:FindFirstChild("Hotbar")
                end
                local WQ_2 = WR
                if WR then
                    WR = WQ_2:FindFirstChild("Menus")
                end
                local WQ_3 = WR
                if WR then
                    WR = WQ_3:FindFirstChild("Team")
                end
                local WS = WR
                if WR then
                    WR = WS:FindFirstChild("ScrollingFrame")
                end
                local WS_1 = WR
                if WR then
                    WR = WS_1:FindFirstChild(l6)
                end
                local WS_2 = WR
                if WR then
                    WR = WS_2:FindFirstChild("Upgrade")
                end
                local WS_3 = WR
                if WR then
                    WR = WS_3:IsA("TextLabel")
                end
                if WR then
                    WS_3.Text = "Upgrade: [" .. l7 .. "/" .. agH(l6) .. "]"
                end
                local WR_1 = WQ_3 and WQ_3:FindFirstChild("info")
                local WQ_4 = WR_1
                if WR_1 then
                    WR_1 = WQ_4:FindFirstChild("Unit")
                end
                local WS_4 = WR_1
                if WR_1 then
                    WR_1 = WS_4:FindFirstChild("UnitName")
                end
                local WS_5 = WR_1
                if WR_1 then
                    WR_1 = WS_5:IsA("TextLabel")
                end
                if WR_1 then
                    WR_1 = WS_5.Text == l6
                end
                if WR_1 then
                    local Upgrade = WQ_4:FindFirstChild("Upgrade")
                    local WQ_5 = Upgrade and Upgrade:FindFirstChild("Total")
                    local WR_3 = WQ_5
                    if WQ_5 then
                        WQ_5 = WR_3:IsA("TextLabel")
                    end
                    if WQ_5 then
                        WR_3.Text = "Upgrade (" .. l7 .. "/" .. agH(l6) .. ")"
                    end
                end
            end
            agG = function()
                local W0_1
                local W__1
                local WX = remote("Players", "get")
                local WY = {}
                local WZ = {}
                if WX then
                    W__1, W0_1 = pcall(function()
                        return WX:InvokeServer()
                    end)
                    local W1 = W__1 and type(W0_1) == "table" and type(W0_1.characters) == "table"
                    if W1 then
                        for k, v in pairs(W0_1.characters) do
                            local W__2 = type(v) == "table" and v.equipped and v.name and not WY[v.name]
                            if W__2 then
                                WY[v.name] = true
                                table.insert(WZ, v.name)
                            end
                        end
                    end
                end
                if #WZ == 0 then
                    local W__3 = agi._ReplicatedStorage:FindFirstChild("Characters")
                    if W__3 then
                        for i, child in ipairs(W__3:GetChildren()) do
                            if not WY[child.Name] then
                                WY[child.Name] = true
                                table.insert(WZ, child.Name)
                            end
                        end
                    end
                end
                table.sort(WZ)
                return WZ
            end
            af7 = function()
                local PlayerGui = LocalPlayer2:FindFirstChild("PlayerGui")
                local Xm = PlayerGui and PlayerGui:FindFirstChild("Hotbar")
                return Xm
            end
            agv = function()
                local Xr = af7()
                local Xs = Xr and Xr:FindFirstChild("Info")
                local Xr_1 = Xs
                if Xs then
                    Xs = Xr_1:FindFirstChild("Wave")
                end
                local Xr_2 = Xs
                if Xs then
                    Xs = Xr_2:FindFirstChild("Amount")
                end
                local Xr_3 = Xs
                if Xs then
                    Xs = tonumber(Xr_3.Text)
                end
                return Xs
            end
            afO = function()
                local Xx = {}
                local Characters = workspace:FindFirstChild("Characters")
                if not Characters then
                    return Xx
                end
                for i, child in ipairs(Characters:GetChildren()) do
                    if child:GetAttribute("type") == "Allies" then
                        local Xy_1 = Xx[child.Name]
                        if not Xy_1 then
                            Xy_1 = {}
                            Xx[child.Name] = Xy_1
                        end
                        table.insert(Xy_1, child)
                    end
                end
                return Xx
            end
            afS = function()
                local XG = {}
                local XH = af7()
                local XI = XH and XH:FindFirstChild("Boss_Frames")
                local Characters = workspace:FindFirstChild("Characters")
                if not (XI and Characters) then
                    return XG
                end
                for i, child in ipairs(Characters:GetChildren()) do
                    local XI_2 = child:GetAttribute("type") == "Enemies" and child.PrimaryPart
                    if XI_2 then
                        local attr = child:GetAttribute("id")
                        local XJ_1 = attr and XI:FindFirstChild(tostring(attr))
                        if XJ_1 then
                            table.insert(XG, child)
                        end
                    end
                end
                return XG
            end
            afW = 60
            afM = function(nn, no, np)
                if #np == 0 then
                    return false
                end
                local XS = no[nn] or {}
                for i, v in ipairs(XS) do
                    if v.PrimaryPart then
                        for i, v2 in ipairs(np) do
                            if (v.PrimaryPart.Position - v2.PrimaryPart.Position).Magnitude <= afW then
                                return true
                            end
                        end
                    end
                end
                return false
            end
            agr = function(nw)
                local X6
                X6 = nil
                local X8_1
                X6 = remote("Players", "get")
                local X5 = remote("Characters", "autoplay")
                local X7 = X6 and X5
                local X7_1
                if not X7 then
                    return
                end
                X7_1, X8_1 = pcall(function()
                    return X6:InvokeServer()
                end)
                local X9 = X7_1 and type(X8_1) == "table" and X8_1.autoplay ~= nw
                if X9 then
                    pcall(function()
                        X5:InvokeServer()
                    end)
                end
            end
            afG = {}
            agJ = function(nG, nH)
                local Ye = remote("Ultimates", "start")
                local Yf = af7()
                local Yg = Yf and Yf:FindFirstChild("BottomUI")
                local Yf_1 = Yg
                if Yg then
                    Yg = Yf_1:FindFirstChild("Towers")
                end
                local Yf_2 = Yg
                if Yg then
                    Yg = Ye
                end
                if not Yg then
                    return
                end
                local Yg_1 = os.clock()
                for i, child in ipairs(Yf_2:GetChildren()) do
                    local Yr = child
                    local Button = Yr:FindFirstChild("Button")
                    local Yh = Button and Button:GetAttribute("ult") == true
                    if Yh then
                        local Yf_4 = false
                        if Toggles.AutoUltimate.Value then
                            Yf_4 = true
                        elseif Toggles.AutoUltimateNearBoss.Value then
                            Yf_4 = afM(Yr.Name, nG, nH)
                        end
                        local Yh_1 = Yf_4
                        if Yh_1 then
                            Yh_1 = not afG[Yr.Name] or Yg_1 - afG[Yr.Name] > 1
                        end
                        if Yh_1 then
                            afG[Yr.Name] = Yg_1
                            pcall(function()
                                Ye:InvokeServer(Yr.Name)
                            end)
                        end
                    end
                end
            end
            agL = function(n4)
                local Value, Yw, Yx, Yy, Yz, YA, YB, YC
                local Ys = remote("Characters", "upgrade")
                if not Ys then
                    return
                end
                local YG = 1
                while YG <= 3 do
                    local YH = YG
                    local Yu = true
                    local YK = false
                    for i = 1, 6 do
                        local Value2
                        local YJ = 18
                        while true do
                            if YJ < 17 then
                                if YJ < 8 then
                                    if YJ < 4 then
                                        if YJ < 2 then
                                            if YJ < 1 then
                                                Yw = Yy < Value
                                                YJ = if Yw then 6 else 17
                                            else
                                                Yw = #Yy
                                                Yy = agD(Value2)
                                                YJ = if Yy < Value then 22 else 2
                                            end
                                        elseif YJ < 3 then
                                            YJ = 15
                                        else
                                            Yy = YB
                                            agA(Value2, YB)
                                            YJ = 31
                                        end
                                    elseif YJ < 6 then
                                        if YJ < 5 then
                                            YJ = if Yw then 33 else 32
                                        else
                                            Yw = 0
                                            YJ = 12
                                        end
                                    elseif YJ < 7 then
                                        Yw = Yx > 0
                                        YJ = 17
                                    else
                                        YJ = 11
                                    end
                                elseif YJ < 12 then
                                    if YJ < 10 then
                                        if YJ < 9 then
                                            YK = true
                                            YJ = 23
                                        else
                                            Yw = Options["UpgradeField" .. i].Value
                                            YJ = if Yw then 12 else 5
                                        end
                                    elseif YJ < 11 then
                                        YJ = if Yz then 24 else 7
                                    else
                                        YJ = 0
                                    end
                                elseif YJ < 14 then
                                    if YJ < 13 then
                                        Yx = Yw
                                        Yw = {}
                                        Yy = n4[Value2]
                                        YJ = if Yy then 1 else 14
                                    else
                                        return
                                    end
                                elseif YJ < 15 then
                                    Yy = Yw
                                    YJ = 1
                                elseif YJ < 16 then
                                    YJ = 23
                                else
                                    YJ = 2
                                end
                            elseif YJ < 26 then
                                if YJ < 21 then
                                    if YJ < 19 then
                                        if YJ < 18 then
                                            YJ = if Yw then 13 else 16
                                        else
                                            Value2 = Options["UpgradeUnit" .. i].Value
                                            Value = Options["UpgradeTarget" .. YH .. "_" .. i].Value
                                            Yw = Value2
                                            YJ = if Yw then 25 else 4
                                        end
                                    elseif YJ < 20 then
                                        YJ = 26
                                    else
                                        YJ = if not YC then 34 else 3
                                    end
                                elseif YJ < 23 then
                                    if YJ < 22 then
                                        YC = type(YB) == "number"
                                        YJ = 20
                                    else
                                        Yu = false
                                        YJ = if Yw >= Yx then 29 else 0
                                    end
                                elseif YJ < 24 then
                                    break
                                elseif YJ < 25 then
                                    Yw = Yw + 1
                                    Yz, YA, YB = pcall(function()
                                        return Ys:InvokeServer(Value2)
                                    end)
                                    task.wait(0.2)
                                    YC = Yz
                                    YJ = if YC then 30 else 28
                                else
                                    Yw = Value
                                    YJ = 4
                                end
                            elseif YJ < 30 then
                                if YJ < 28 then
                                    if YJ < 27 then
                                        Yz = Yy < Value
                                        YJ = if Yz then 27 else 10
                                    else
                                        Yz = Yw < Value
                                        YJ = 10
                                    end
                                elseif YJ < 29 then
                                    YJ = if YC then 21 else 20
                                else
                                    Yw = 0
                                    YJ = 19
                                end
                            elseif YJ < 32 then
                                if YJ < 31 then
                                    YC = YA
                                    YJ = 28
                                else
                                    YJ = 19
                                end
                            elseif YJ < 33 then
                                YJ = if Yw then 9 else 15
                            elseif YJ < 34 then
                                Yw = Value > 0
                                YJ = 32
                            else
                                YJ = 11
                            end
                        end
                        if YK then
                            break
                        end
                    end
                    if not Yu then
                        return
                    end
                    YG += 1
                end
            end
            local AutoplayGroup = Tabs.Gameplay:AddLeftGroupbox("AutoPlay")
            Label4 = AutoplayGroup:AddLabel("Field: None", true)
            AutoplayGroup:AddToggle("AutoPlay", {
                Text = "Auto Play",
                Default = false,
                Callback = function(ox)
                    agr(ox)
                end
            })
            AutoplayGroup:AddToggle("AutoUpgrade", { Text = "Enable Auto Upgrade", Default = true })
            AutoplayGroup:AddToggle("AutoUltimate", { Text = "Auto Ultimate", Default = false })
            AutoplayGroup:AddToggle("AutoUltimateNearBoss", { Text = "Auto Ultimate Near Boss", Default = false })
            AutoplayGroup:AddToggle("UpgradeBeforeMatch", { Text = "Upgrade Before Match", Default = false })
            AutoplayGroup:AddInput("RestartWave", { Text = "Restart on Wave", Numeric = true, Default = "10", Finished = true })
            AutoplayGroup:AddToggle("AutoRestartWave", { Text = "Auto Restart on Wave", Default = false })
            local UpgradeGroup = Tabs.Gameplay:AddRightGroupbox("Upgrade")
            UpgradeGroup:AddDropdown("UpgradeType", { Text = "Select Type", Values = { "Upgrade", "Upgrade (Before Match)" }, Default = 1 })
            local agP = agG()
            local agU = 1
            while agU <= 6 do
                local agV = agU
                UpgradeGroup:AddDropdown("UpgradeUnit" .. agV, { Text = "Unit " .. agV, Values = agP, AllowNull = true, Multi = false })
                UpgradeGroup:AddSlider("UpgradeTarget1_" .. agV, {
                    Text = "Target 1 (" .. agV .. ")",
                    Min = 0,
                    Max = 10,
                    Default = 0,
                    Rounding = 0,
                    Tooltip = "Early game priority tier. Set to 0 to skip."
                })
                UpgradeGroup:AddSlider("UpgradeTarget2_" .. agV, {
                    Text = "Target 2 (" .. agV .. ")",
                    Min = 0,
                    Max = 10,
                    Default = 0,
                    Rounding = 0,
                    Tooltip = "Mid game priority tier. Set to 0 to skip."
                })
                UpgradeGroup:AddSlider("UpgradeTarget3_" .. agV, {
                    Text = "Target 3 (" .. agV .. ")",
                    Min = 0,
                    Max = 10,
                    Default = 0,
                    Rounding = 0,
                    Tooltip = "Late game max tier. Set to 0 to skip."
                })
                UpgradeGroup:AddSlider("UpgradeField" .. agV, {
                    Text = "Maxed on Field " .. agV,
                    Min = 0,
                    Max = 20,
                    Default = 0,
                    Rounding = 0,
                    Tooltip = "Wait for this many units on field before upgrading."
                })
                agU += 1
            end
            UpgradeGroup:AddButton("Refresh Units", function()
                local YN = agG()
                local YR = 1
                while YR <= 6 do
                    local YS = YR
                    Options["UpgradeUnit" .. YS]:SetValues(YN)
                    YR += 1
                end
            end)
            afV = function(oH)
                local YU = {}
                for k in pairs(oH) do
                    table.insert(YU, k)
                end
                table.sort(YU)
                local YV = {}
                for i, v in ipairs(YU) do
                    local YU_2 = #(oH[v] or {})
                    local YW_1 = agD(v)
                    local YX = agH(v)
                    if YU_2 > 0 then
                        local Za = 1
                        while Za <= YU_2 do
                            local Zb = Za
                            table.insert(YV, v .. " " .. Zb .. ": Upgrades " .. YW_1 .. "/" .. YX)
                            Za += 1
                        end
                    end
                end
                local YU_3 = #YV > 0 and table.concat(YV, "\n")
                local YV_1 = YU_3 or "Field: None"
                Label4:SetText(YV_1)
            end
            ags = 0
            agE = 0
            agl = false
            task.spawn(function()
                while true do
                    task.wait(0.5)
                    if not Toggles.AutoPlay then
                        break
                    end
                    pcall(function()
                        local Zd = afO()
                        afV(Zd)
                        local Ze = os.clock()
                        if Toggles.AutoPlay.Value and Ze - agE > 4 then
                            agE = Ze
                            agr(true)
                        end
                        if Toggles.AutoUltimate.Value or Toggles.AutoUltimateNearBoss.Value then
                            agJ(Zd, afS())
                        end
                        if Toggles.AutoUpgrade.Value and Ze - ags > 1 then
                            ags = Ze
                            local Ze_1 = agv()
                            local Zf_3 = not Ze_1 or Ze_1 < 1
                            local Zf_5 = not (Options.UpgradeType.Value == "Upgrade (Before Match)" or Toggles.UpgradeBeforeMatch.Value)
                            local Zk = if Zf_5 then 1 else 0
                            local Zi = 1006 * Zk + 3030 * (1 - Zk)
                            local Zj = 2785 * Zk + 1603 * (1 - Zk)
                            if not ((Zi * 1946 + Zj * 2451 + Zi * Zj) % 16777213 == 11585421) then
                                Zf_5 = Zf_3
                            end
                            if Zf_5 then
                                agL(Zd)
                            end
                        end
                        if Toggles.AutoRestartWave.Value then
                            local Zd_1 = agv()
                            local Ze_3 = tonumber(Options.RestartWave.Value)
                            if Zd_1 and Ze_3 then
                                if Zd_1 >= Ze_3 then
                                    if not agl then
                                        agl = true
                                        agi:fireRemote("Game", "replay")
                                    end
                                else
                                    agl = false
                                end
                            end
                        end
                    end)
                end
            end)
            af5 = agi.BaseFolder .. "/presets.json"
            local function agO_5()
                local Zp_1
                local Zo_1
                Zo_1, Zp_1 = pcall(function()
                    local Zm = isfile and isfile(af5)
                    if Zm then
                        return _HttpService:JSONDecode(readfile(af5))
                    end
                end)
                local Zq = Zo_1 and type(Zp_1) == "table"
                if Zq then
                    local Zo_2 = type(Zp_1.awaken) == "table" and Zp_1.awaken
                    local Zr = Zo_2 or {}
                    local Zo_3 = type(Zp_1.gear) == "table" and Zp_1.gear
                    local Zs = Zo_3 or {}
                    local Zo_4 = type(Zp_1.materials) == "table" and Zp_1.materials
                    local Zp_2 = {}
                    local Zq_3 = Zo_4
                    local Zz = if Zq_3 then 1 else 0
                    local Zx = 147 * Zz + 2081 * (1 - Zz)
                    local Zy = 130 * Zz + 3694 * (1 - Zz)
                    if not ((Zx * 629 + Zy * 3093 + Zx * Zy) % 16777213 == 513663) then
                        Zq_3 = Zp_2
                    end
                    return { awaken = Zr, gear = Zs, materials = Zq_3 }
                end
                return { awaken = {}, gear = {}, materials = {} }
            end
            agi.Presets = agO_5()
            afY = {
                ["Brad Ash"] = "Brand Ash",
                Headbands = "Headband",
                ["Hogyoku Evo"] = "Hogyoku Orb",
                ["King’s Haki Residue"] = "King's Haki Residue"
            }
            afN = function(px)
                local ZA = {}
                for k, v in pairs(px) do
                    local ZB = afY[k] or k
                    ZA[ZB] = v
                end
                return ZA
            end
            afR = function()
                local ZK
                ZK = nil
                local ZP_1, ZP_2, ZP_4
                local Characters = agi._ReplicatedStorage:FindFirstChild("Characters")
                local Gear = agi._ReplicatedStorage:FindFirstChild("Gear")
                ZK = remote("Crafting", "get")
                local ZO = Characters and Gear and ZK
                local ZO_1, ZO_2, ZO_4
                if not ZO then
                    return false
                end
                local ZN_1 = {}
                for i, child in ipairs(Characters:GetChildren()) do
                    local data = child:FindFirstChild("data")
                    if data then
                        ZO_1, ZP_1 = pcall(require, data)
                        local ZL_2 = ZO_1 and type(ZP_1) == "table" and type(ZP_1.awakening) == "table" and type(ZP_1.awakening.cost) == "table"
                        if ZL_2 then
                            ZN_1[child.Name] = afN(ZP_1.awakening.cost)
                        end
                    end
                end
                local ZL_3 = {}
                ZO_2, ZP_2 = pcall(function()
                    return ZK:InvokeServer()
                end)
                local ZQ = ZO_2 and type(ZP_2) == "table"
                if ZQ then
                    for k, v in pairs(ZP_2) do
                        if Gear:FindFirstChild(k) then
                            local ZO_3 = type(v) == "table" and afN(v)
                            local ZP_3 = ZO_3 or v
                            ZL_3[k] = ZP_3
                        end
                    end
                end
                local ZM_1 = not next(ZN_1)
                if ZM_1 ~= false then
                    ZM_1 = not next(ZL_3)
                end
                if ZM_1 then
                    return false
                end
                local ZM_2 = {}
                ZO_4, ZP_4 = pcall(function()
                    return require(agi.LocalPlayer.PlayerScripts.Client.Play.Worlds)
                end)
                local ZQ_1 = ZO_4 and type(ZP_4) == "table"
                if ZQ_1 then
                    for k, v in pairs(ZP_4) do
                        local ZO_5 = type(v) == "table" and v.name and type(v.Rewards) == "table"
                        if ZO_5 then
                            for k, v2 in pairs(v.Rewards) do
                                if type(v2) == "table" then
                                    for k2, v2 in pairs(v2) do
                                        if type(v2) == "table" then
                                            for i, v2 in ipairs(v2) do
                                                if type(v2) == "table" then
                                                    for k3 in pairs(v2) do
                                                        local ZP_5 = ZM_2[k3] or {}
                                                        ZM_2[k3] = ZP_5
                                                        table.insert(ZM_2[k3], { mode = k, world = v.name, act = i, difficulty = k2 })
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
                if not next(ZM_2) then
                    ZM_2 = agi.Presets.materials or {}
                end
                agi.Presets = { awaken = ZN_1, gear = ZL_3, materials = ZM_2 }
                pcall(function()
                    if writefile then
                        writefile(af5, _HttpService:JSONEncode(agi.Presets))
                    end
                end)
                return true
            end
            afR()
            af3 = function(qi)
                local aaz = agi.Utility and agi.Utility.data
                if not aaz then
                    return 0
                end
                local aaB = aaz.stats and aaz.stats[qi]
                if not aaB then
                    aaB = aaz.items and aaz.items[qi]
                end
                return aaB or 0
            end
            agI = function(qr)
                return agi.Presets.awaken[qr]
            end
            agd = function(qu, qv)
                local aaG = agi.Presets.materials[qu]
                if not aaG or #aaG == 0 then
                    return nil
                end
                local aaH_1 = nil
                for i, v in ipairs(aaG) do
                    if v.difficulty == qv then
                        local aaI_1 = not aaH_1
                        if not aaI_1 then
                            aaI_1 = (v.act or 1) < (aaH_1.act or 1)
                        end
                        if aaI_1 then
                            aaH_1 = v
                        end
                    end
                end
                if aaH_1 then
                    return aaH_1
                end
                for i, v in ipairs(aaG) do
                    local aaG_1 = not aaH_1
                    if not aaG_1 then
                        aaG_1 = (v.act or 1) < (aaH_1.act or 1)
                    end
                    if aaG_1 then
                        aaH_1 = v
                    end
                end
                return aaH_1
            end
            af9 = function()
                local aaY = agi.Utility and agi.Utility.data
                local aaZ = aaY
                if aaY then
                    aaY = type(aaZ.characters) == "table"
                end
                return aaY and aaZ.characters or {}
            end
            local function agO_6()
                local aa4 = {}
                local aa5 = {}
                for k, v in pairs(af9()) do
                    local aa6 = type(v) == "table" and v.name and v.id and not aa4[v.name] and agI(v.name)
                    if aa6 then
                        aa4[v.name] = true
                        table.insert(aa5, v.name)
                    end
                end
                table.sort(aa5)
                return aa5
            end
            afQ = function(qU)
                for k, v in pairs(af9()) do
                    local abe = type(v) == "table" and v.name == qU and v.id
                    if abe then
                        return v.id
                    end
                end
                return nil
            end
            afT = function(q_)
                local abr_1
                local abq_1
                local abp = agI(q_)
                abq_1, abr_1 = {}, {}
                if not abp then
                    return abq_1, abr_1
                end
                for k, v in pairs(abp) do
                    if af3(k) < v then
                        local abp_1 = agd(k, agi.AwakenConfig.Difficulty)
                        if abp_1 then
                            table.insert(abq_1, { item = k, need = v, stage = abp_1 })
                        else
                            table.insert(abr_1, k)
                        end
                    end
                end
                table.sort(abq_1, function(ra, rb)
                    return ra.item < rb.item
                end)
                table.sort(abr_1)
                return abq_1, abr_1
            end
            agK = function(rd)
                local abz = agI(rd)
                if not abz then
                    return false
                end
                for k, v in pairs(abz) do
                    if af3(k) < v then
                        return false
                    end
                end
                return true
            end
            agC = function(rk)
                if not rk then
                    return "Status: No preset data"
                end
                local abH = {}
                for k, v in pairs(rk) do
                    local abI = af3(k)
                    if abI < v then
                        table.insert(abH, string.format("%s %d/%d", k, abI, v))
                    end
                end
                if #abH == 0 then
                    return "Status: Requirements met"
                end
                table.sort(abH)
                return "Status: Need " .. table.concat(abH, ", ")
            end
            local function agP_1(rr)
                local frame2
                local adm
                local CoreGui
                local screenGui
                local ads
                local ado
                local adk
                local Position2
                local Position
                local frame3
                frame2 = nil
                Position2 = nil
                frame3 = nil
                adk = nil
                screenGui = nil
                adm = nil
                Position = nil
                ado = nil
                CoreGui = nil
                ads = nil
                local adh, adi, adq, adr, adt, adu
                local RunService = game:GetService("RunService")
                CoreGui = game:GetService("CoreGui")
                screenGui = Instance.new("ScreenGui")
                screenGui.Name = rr.guiName
                screenGui.ResetOnSpawn = false
                screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
                screenGui.DisplayOrder = 2147483647
                local adw = pcall(function()
                    local abQ = gethui and gethui()
                    local abR = abQ or CoreGui
                    screenGui.Parent = abR
                end)
                if not adw then
                    screenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
                end
                frame3 = Instance.new("Frame")
                frame3.Name = "MainFrame"
                frame3.Size = UDim2.new(0, 500, 0, 360)
                frame3.Position = UDim2.new(0.5, -250, 0.5, -180)
                frame3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                frame3.BorderSizePixel = 0
                frame3.Visible = false
                frame3.Parent = screenGui
                local uIStroke = Instance.new("UIStroke")
                uIStroke.Color = Color3.fromRGB(60, 60, 60)
                uIStroke.Parent = frame3
                local textLabel2 = Instance.new("TextLabel")
                textLabel2.Name = "Header"
                textLabel2.Size = UDim2.new(1, 0, 0, 30)
                textLabel2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                textLabel2.BorderSizePixel = 0
                textLabel2.Text = rr.title
                textLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
                textLabel2.TextSize = 14
                textLabel2.Font = Enum.Font.GothamBold
                textLabel2.TextXAlignment = Enum.TextXAlignment.Left
                textLabel2.Parent = frame3
                local textButton3 = Instance.new("TextButton")
                textButton3.Size = UDim2.new(0, 30, 0, 30)
                textButton3.Position = UDim2.new(1, -30, 0, 0)
                textButton3.BackgroundTransparency = 1
                textButton3.Text = "X"
                textButton3.TextColor3 = Color3.fromRGB(200, 50, 50)
                textButton3.TextSize = 16
                textButton3.Font = Enum.Font.GothamBold
                textButton3.Parent = textLabel2
                textButton3.MouseButton1Click:Connect(function()
                    frame3.Visible = false
                end)
                local textButton2 = Instance.new("TextButton")
                textButton2.Size = UDim2.new(0, 60, 0, 22)
                textButton2.Position = UDim2.new(1, -100, 0.5, -11)
                textButton2.BackgroundColor3 = Color3.fromRGB(50, 120, 60)
                textButton2.BorderSizePixel = 0
                textButton2.Text = "Save"
                textButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
                textButton2.TextSize = 12
                textButton2.Font = Enum.Font.GothamBold
                textButton2.Parent = textLabel2
                textButton2.MouseButton1Click:Connect(rr.onSave)
                adk, ads, Position2, Position = nil, nil, nil, nil
                textLabel2.InputBegan:Connect(function(rJ)
                    if rJ.UserInputType == Enum.UserInputType.MouseButton1 or rJ.UserInputType == Enum.UserInputType.Touch then
                        adk = true
                        Position2 = rJ.Position
                        Position = frame3.Position
                        rJ.Changed:Connect(function()
                            if rJ.UserInputState == Enum.UserInputState.End then
                                adk = false
                            end
                        end)
                    end
                end)
                textLabel2.InputChanged:Connect(function(rR)
                    local abW = rR.UserInputType == Enum.UserInputType.MouseMovement
                    local ab_ = if abW then 1 else 0
                    local abY = 502 * ab_ + 1357 * (1 - ab_)
                    local abZ = 2424 * ab_ + 570 * (1 - ab_)
                    if not ((abY * 3858 + abZ * 3019 + abY * abZ) % 16777213 == 10471620) then
                        abW = rR.UserInputType == Enum.UserInputType.Touch
                    end
                    if abW then
                        ads = rR
                    end
                end)
                RunService.RenderStepped:Connect(function()
                    if adk and ads then
                        local ab0_1 = ads.Position - Position2
                        frame3.Position = UDim2.new(Position.X.Scale, Position.X.Offset + ab0_1.X, Position.Y.Scale, Position.Y.Offset + ab0_1.Y)
                    end
                end)
                frame2 = Instance.new("Frame")
                frame2.Size = UDim2.new(1, -20, 1, -40)
                frame2.Position = UDim2.new(0, 10, 0, 35)
                frame2.BackgroundTransparency = 1
                frame2.Parent = frame3
                local function adv_1(r1, r2, r3)
                    local frame = Instance.new("Frame")
                    frame.Position = r2
                    frame.Size = r3
                    frame.BackgroundTransparency = 1
                    frame.Parent = frame2
                    local textLabel = Instance.new("TextLabel")
                    textLabel.Size = UDim2.new(1, 0, 0, 20)
                    textLabel.BackgroundTransparency = 1
                    textLabel.Text = r1
                    textLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
                    textLabel.TextSize = 14
                    textLabel.Font = Enum.Font.GothamSemibold
                    textLabel.Parent = frame
                    local scrollingFrame = Instance.new("ScrollingFrame")
                    scrollingFrame.Position = UDim2.new(0, 0, 0, 25)
                    scrollingFrame.Size = UDim2.new(1, 0, 1, -25)
                    scrollingFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                    scrollingFrame.BorderColor3 = Color3.fromRGB(40, 40, 40)
                    scrollingFrame.ScrollBarThickness = 4
                    scrollingFrame.Parent = frame
                    local uIListLayout = Instance.new("UIListLayout")
                    uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                    uIListLayout.Padding = UDim.new(0, 2)
                    uIListLayout.Parent = scrollingFrame
                    return scrollingFrame
                end
                adq = adv_1("Difficulty", UDim2.new(0, 0, 0, 0), UDim2.new(0, 90, 1, 0))
                adh = adv_1(rr.itemTitle, UDim2.new(0, 100, 0, 0), UDim2.new(0, 160, 1, 0))
                adm = adv_1("Requirements", UDim2.new(0, 270, 0, 0), UDim2.new(0, 210, 1, 0))
                adu = function(sd, se, sf, sg)
                    local textButton = Instance.new("TextButton")
                    textButton.Size = UDim2.new(1, 0, 0, 25)
                    local ab3 = sf and Color3.fromRGB(50, 100, 200)
                    local ab4 = ab3
                    local ab8 = if ab4 then 1 else 0
                    local ab6 = 3890 * ab8 + 294 * (1 - ab8)
                    local ab7 = 3936 * ab8 + 3275 * (1 - ab8)
                    if not ((ab6 * 3824 + ab7 * 3490 + ab6 * ab7) % 16777213 == 10368614) then
                        ab4 = Color3.fromRGB(30, 30, 30)
                    end
                    textButton.BackgroundColor3 = ab4
                    textButton.BorderSizePixel = 0
                    textButton.Text = se
                    textButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                    textButton.TextSize = 12
                    textButton.Font = Enum.Font.Gotham
                    textButton.Parent = sd
                    textButton.MouseButton1Click:Connect(sg)
                    return textButton
                end
                adr = function(sl)
                    for i, child in ipairs(sl:GetChildren()) do
                        if not child:IsA("UIListLayout") then
                            child:Destroy()
                        end
                    end
                end
                adi = function(sp)
                    local textLabel = Instance.new("TextLabel")
                    textLabel.Size = UDim2.new(1, 0, 0, 24)
                    textLabel.BackgroundTransparency = 1
                    textLabel.Text = " " .. sp
                    textLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
                    textLabel.TextSize = 12
                    textLabel.Font = Enum.Font.Gotham
                    textLabel.TextXAlignment = Enum.TextXAlignment.Left
                    textLabel.TextWrapped = true
                    textLabel.Parent = adm
                end
                ado = function()
                    local acl_1
                    adr(adm)
                    if rr.queueKey then
                        acl_1 = rr.config[rr.queueKey]
                    else
                        acl_1 = { rr.config[rr.selectedKey] }
                    end
                    if not acl_1[1] then
                        adi("Select a " .. string.lower(rr.itemTitle) .. ".")
                    else
                        for i, v in ipairs(acl_1) do
                            local textBox
                            local acx = v
                            if rr.queueKey then
                                adi(i .. ". " .. acx)
                            end
                            if rr.targetMode then
                                local acl_2 = af3(acx)
                                local acm_1 = rr.config.Targets[acx] or 0
                                local frame = Instance.new("Frame")
                                frame.Size = UDim2.new(1, 0, 0, 22)
                                frame.BackgroundTransparency = 1
                                frame.Parent = adm
                                local textLabel = Instance.new("TextLabel")
                                textLabel.Size = UDim2.new(1, -60, 1, 0)
                                textLabel.BackgroundTransparency = 1
                                textLabel.Text = string.format(" %s  %d/", acx, acl_2)
                                local acp_1 = acl_2 >= acm_1 and acm_1 > 0
                                local acl_3 = acp_1 and Color3.fromRGB(120, 220, 120)
                                local acp_2 = acl_3 or Color3.fromRGB(230, 230, 230)
                                textLabel.TextColor3 = acp_2
                                textLabel.TextSize = 12
                                textLabel.Font = Enum.Font.Gotham
                                textLabel.TextXAlignment = Enum.TextXAlignment.Left
                                textLabel.Parent = frame
                                textBox = Instance.new("TextBox")
                                textBox.Size = UDim2.new(0, 50, 0, 18)
                                textBox.Position = UDim2.new(1, -55, 0.5, -9)
                                textBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                                textBox.BorderColor3 = Color3.fromRGB(60, 60, 60)
                                textBox.Text = tostring(acm_1)
                                textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
                                textBox.TextSize = 12
                                textBox.Font = Enum.Font.Gotham
                                textBox.Parent = frame
                                textBox.FocusLost:Connect(function()
                                    local ach = tonumber(textBox.Text)
                                    if ach and ach > 0 then
                                        rr.config.Targets[acx] = ach
                                    else
                                        rr.config.Targets[acx] = nil
                                        textBox.Text = "0"
                                    end
                                    ado()
                                end)
                            else
                                local acl_4 = rr.getCost(acx)
                                local acm_3 = not acl_4 or not next(acl_4)
                                if acm_3 then
                                    adi("No preset data.")
                                else
                                    local acm_4 = {}
                                    for k in pairs(acl_4) do
                                        table.insert(acm_4, k)
                                    end
                                    table.sort(acm_4)
                                    for i, v in ipairs(acm_4) do
                                        local acm_5 = acl_4[v]
                                        local acn_2 = af3(v)
                                        local textLabel = Instance.new("TextLabel")
                                        textLabel.Size = UDim2.new(1, 0, 0, 22)
                                        textLabel.BackgroundTransparency = 1
                                        textLabel.Text = string.format(" %s  %d/%d", v, acn_2, acm_5)
                                        local acp_3 = acn_2 >= acm_5 and Color3.fromRGB(120, 220, 120)
                                        local acm_6 = acp_3 or Color3.fromRGB(230, 230, 230)
                                        textLabel.TextColor3 = acm_6
                                        textLabel.TextSize = 12
                                        textLabel.Font = Enum.Font.Gotham
                                        textLabel.TextXAlignment = Enum.TextXAlignment.Left
                                        textLabel.Parent = adm
                                    end
                                end
                            end
                        end
                    end
                    adm.CanvasSize = UDim2.new(0, 0, 0, #adm:GetChildren() * 24)
                end
                adt = nil
                adt = function()
                    adr(adq)
                    adr(adh)
                    for i, v in ipairs({ "Normal", "Hard" }) do
                        local acU = v
                        adu(adq, acU, rr.config.Difficulty == acU, function()
                            rr.config.Difficulty = acU
                            adt()
                        end)
                    end
                    local acL = rr.getItems()
                    if rr.queueKey then
                        local acM_1 = {}
                        for i, v in ipairs(acL) do
                            acM_1[v] = true
                        end
                        local acN = rr.config[rr.queueKey]
                        for i, v in ipairs(acN) do
                            if not acM_1[v] then
                                table.insert(acL, v)
                            end
                        end
                    end
                    for i, v in ipairs(acL) do
                        local acJ, acK
                        local ac7 = v
                        if rr.queueKey then
                            acJ = rr.config[rr.queueKey]
                            acK = nil
                            for i, v in ipairs(acJ) do
                                if v == ac7 then
                                    acK = i
                                    break
                                end
                            end
                            local acM_2 = acK and acK .. ". " .. ac7 or ac7
                            adu(adh, acM_2, acK ~= nil, function()
                                if acK then
                                    table.remove(acJ, acK)
                                else
                                    table.insert(acJ, ac7)
                                end
                                adt()
                            end)
                        else
                            adu(adh, ac7, rr.config[rr.selectedKey] == ac7, function()
                                rr.config[rr.selectedKey] = ac7
                                adt()
                            end)
                        end
                    end
                    adq.CanvasSize = UDim2.new(0, 0, 0, #adq:GetChildren() * 27)
                    adh.CanvasSize = UDim2.new(0, 0, 0, #adh:GetChildren() * 27)
                    ado()
                end
                task.spawn(function()
                    while true do
                        if frame3.Visible then
                            ado()
                        end
                        task.wait(2)
                    end
                end)
                adt()
                return frame3, adt
            end
            local function agQ()
                local adB_1
                local adz = isfile
                local adz_1
                local adA = {
                    Unit = nil,
                    Units = {},
                    QueueIndex = 1,
                    Difficulty = "Hard",
                    AutoLobby = true,
                    Active = false,
                    Target = nil
                }
                if adz then
                    adz = isfile(agi.AwakenConfigFile)
                end
                if adz then
                    adz_1, adB_1 = pcall(function()
                        return _HttpService:JSONDecode(readfile(agi.AwakenConfigFile))
                    end)
                    local adC = adz_1 and type(adB_1) == "table"
                    if adC then
                        if type(adB_1.Unit) == "string" then
                            adA.Unit = adB_1.Unit
                        end
                        if type(adB_1.Units) == "table" then
                            for i, v in ipairs(adB_1.Units) do
                                if type(v) == "string" then
                                    table.insert(adA.Units, v)
                                end
                            end
                        end
                        if type(adB_1.QueueIndex) == "number" then
                            adA.QueueIndex = adB_1.QueueIndex
                        end
                        local adz_2 = adB_1.Difficulty == "Normal"
                        local adM = if adz_2 then 1 else 0
                        local adK = 1795 * adM + 618 * (1 - adM)
                        local adL = 494 * adM + 2700 * (1 - adM)
                        if not ((adK * 1136 + adL * 838 + adK * adL) % 16777213 == 3339822) then
                            adz_2 = adB_1.Difficulty == "Hard"
                        end
                        if adz_2 then
                            adA.Difficulty = adB_1.Difficulty
                        end
                        if type(adB_1.AutoLobby) == "boolean" then
                            adA.AutoLobby = adB_1.AutoLobby
                        end
                        if type(adB_1.Active) == "boolean" then
                            adA.Active = adB_1.Active
                        end
                        local adz_3 = type(adB_1.Target) == "table" and type(adB_1.Target.item) == "string" and type(adB_1.Target.need) == "number"
                        if adz_3 then
                            adA.Target = { item = adB_1.Target.item, need = adB_1.Target.need }
                        end
                    end
                end
                if #adA.Units == 0 and adA.Unit then
                    adA.Units = { adA.Unit }
                end
                return adA
            end
            agg = function()
                if not writefile then
                    return false
                end
                return (pcall(function()
                    writefile(agi.AwakenConfigFile, _HttpService:JSONEncode(agi.AwakenConfig))
                end))
            end
            agi.AwakenConfig = agQ()
            af_, afK = agP_1({
                guiName = "OuroborosAwakenUI",
                title = "  🌸 Auto Awaken Config",
                itemTitle = "Unit",
                config = agi.AwakenConfig,
                selectedKey = "Unit",
                queueKey = "Units",
                getItems = agO_6,
                getCost = agI,
                onSave = function()
                    if agg() then
                        Library:Notify({ Title = "Auto Awaken", Description = "Config saved.", Time = 3 })
                    else
                        Library:Notify({ Title = "Auto Awaken", Description = "Failed to save config.", Time = 3 })
                    end
                end
            })
            local AutoAwakenGroup = Tabs.Main:AddRightGroupbox("Auto Awaken")
            AutoAwakenGroup:AddButton("Open Auto Awaken Config", function()
                af_.Visible = not af_.Visible
                if af_.Visible then
                    afK()
                end
            end)
            Label3 = AutoAwakenGroup:AddLabel("Status: Idle", true)
            agi.awakenTarget = nil
            agi.onAwakenMatchEnd = function()
                local awakenTarget = agi.awakenTarget
                if not awakenTarget then
                    return false
                end
                local adU = agi.AwakenConfig.AutoLobby and af3(awakenTarget.item) >= awakenTarget.need
                if adU then
                    agi:fireRemote("Players", "teleport")
                else
                    agi:fireRemote("Game", "replay")
                end
                return true
            end
            AutoAwakenGroup:AddToggle("AutoAwaken", {
                Text = "Auto Awaken",
                Default = false,
                Callback = function(t4)
                    if not t4 then
                        agi.awakenTarget = nil
                        Label3:SetText("Status: Idle")
                        agi.AwakenConfig.Active = false
                        agi.AwakenConfig.Target = nil
                        agg()
                        return
                    end
                    if #agi.AwakenConfig.Units == 0 then
                        Library:Notify({ Title = "Auto Awaken", Description = "Select at least one unit first.", Time = 3 })
                        Toggles.AutoAwaken:SetValue(false)
                        return
                    end
                    local ad8 = type(agi.AwakenConfig.QueueIndex) ~= "number"
                    local aef = if ad8 then 1 else 0
                    local aed = 2090 * aef + 2772 * (1 - aef)
                    local aee = 694 * aef + 3174 * (1 - aef)
                    if not ((aed * 2010 + aee * 2493 + aed * aee) % 16777213 == 7381502) then
                        ad8 = agi.AwakenConfig.QueueIndex < 1
                    end
                    if not ad8 then
                        ad8 = agi.AwakenConfig.QueueIndex > #agi.AwakenConfig.Units
                    end
                    if ad8 then
                        agi.AwakenConfig.QueueIndex = 1
                    end
                    agi.AwakenConfig.Active = true
                    agg()
                    task.spawn(function()
                        local ad2_1
                        local ad1_1
                        local ad__2
                        local adZ_2
                        local ad7 = false
                        repeat
                            if Toggles.AutoAwaken.Value then
                                local adY = agi.AwakenConfig.Units[agi.AwakenConfig.QueueIndex]
                                if not adY then
                                    agi.awakenTarget = nil
                                    Label3:SetText("Status: All units awakened, returning to lobby")
                                    agi:fireRemote("Players", "teleport")
                                    Toggles.AutoAwaken:SetValue(false)
                                    return
                                end
                                if not remote("Play", "create_room") then
                                    local awakenTarget = agi.awakenTarget
                                    if agK(adY) then
                                        agi.awakenTarget = nil
                                        Label3:SetText("Status: Requirements met, returning to lobby")
                                        agi:fireRemote("Players", "teleport")
                                    else
                                        local ad__1 = agi.AwakenConfig.AutoLobby and awakenTarget and af3(awakenTarget.item) >= awakenTarget.need
                                        if ad__1 then
                                            Label3:SetText("Status: Stage requirement met, returning to lobby")
                                            agi:fireRemote("Players", "teleport")
                                        else
                                            Label3:SetText(agC(agI(adY)))
                                        end
                                    end
                                    task.wait(4)
                                else
                                    ad__2, adZ_2 = afT(adY)
                                    if #ad__2 == 0 then
                                        agi.awakenTarget = nil
                                        if #adZ_2 > 0 then
                                            Label3:SetText("Status: Skipping " .. adY .. " (cannot farm " .. table.concat(adZ_2, ", ") .. ")")
                                            Library:Notify({
                                                Title = "Auto Awaken",
                                                Description = "Cannot farm for " .. adY .. ": " .. table.concat(adZ_2, ", ") .. ". Skipping.",
                                                Time = 5
                                            })
                                            agi.AwakenConfig.QueueIndex = agi.AwakenConfig.QueueIndex + 1
                                            agi.AwakenConfig.Target = nil
                                            agg()
                                        else
                                            local adW = afQ(adY)
                                            local adX = remote("Awakening", "awaken")
                                            local adZ_3 = false
                                            local ad0 = adW and adX
                                            local ad0_1
                                            if ad0 then
                                                ad0_1, ad1_1, ad2_1 = pcall(function()
                                                    return adX:InvokeServer(adW)
                                                end)
                                                if ad0_1 and ad1_1 ~= false then
                                                    adZ_3 = true
                                                    Label3:SetText("Status: Awakened " .. adY)
                                                    Library:Notify({ Title = "Auto Awaken", Description = "Awakened " .. adY .. "!", Time = 5 })
                                                    if Toggles.WebhookOnAwaken and Toggles.WebhookOnAwaken.Value and agi.webhookNotify then
                                                        agi.webhookNotify("Auto Awaken", "Awakened **" .. adY .. "**.", false)
                                                    end
                                                else
                                                    Label3:SetText("Status: Awaken failed")
                                                    local ad0_3 = ad1_1 or ad2_1
                                                    Library:Notify({ Title = "Auto Awaken", Description = "Awaken failed: " .. tostring(ad0_3), Time = 5 })
                                                end
                                            end
                                            if adZ_3 then
                                                table.remove(agi.AwakenConfig.Units, agi.AwakenConfig.QueueIndex)
                                            else
                                                agi.AwakenConfig.QueueIndex = agi.AwakenConfig.QueueIndex + 1
                                            end
                                            agi.AwakenConfig.Target = nil
                                            agg()
                                            afK()
                                        end
                                    else
                                        local adZ_4 = ad__2[1]
                                        agi.awakenTarget = adZ_4
                                        agi.AwakenConfig.Target = { item = adZ_4.item, need = adZ_4.need }
                                        agg()
                                        Label3:SetText(string.format("Status: [%d/%d] %s farming %s (%d/%d)", agi.AwakenConfig.QueueIndex, #agi.AwakenConfig.Units, adY, adZ_4.item, af3(adZ_4.item), adZ_4.need))
                                        agi.joinRoom({
                                            world = adZ_4.stage.world,
                                            act = adZ_4.stage.act,
                                            mode = adZ_4.stage.mode,
                                            difficulty = adZ_4.stage.difficulty
                                        })
                                        task.wait(8)
                                    end
                                end
                            else
                                ad7 = true
                            end
                        until ad7
                        agi.awakenTarget = nil
                    end)
                end
            })
            AutoAwakenGroup:AddToggle("AwakenAutoLobby", {
                Text = "Auto Back to Lobby when Material Reqs Met",
                Default = agi.AwakenConfig.AutoLobby,
                Callback = function(uL)
                    agi.AwakenConfig.AutoLobby = uL
                    agg()
                end
            })
            agc = function()
                return agi.Presets.gear
            end
            local function agO_8()
                local aej = {}
                for k in pairs(agc()) do
                    table.insert(aej, k)
                end
                table.sort(aej)
                return aej
            end
            agf = function(uV)
                local aer_1
                local aeq_1
                local aep = agc()[uV]
                aeq_1, aer_1 = {}, {}
                if not aep then
                    return aeq_1, aer_1
                end
                for k, v in pairs(aep) do
                    if af3(k) < v then
                        local aep_1 = agd(k, agi.CraftConfig.Difficulty)
                        if aep_1 then
                            table.insert(aeq_1, { item = k, need = v, stage = aep_1 })
                        else
                            table.insert(aer_1, k)
                        end
                    end
                end
                table.sort(aeq_1, function(u5, u6)
                    return u5.item < u6.item
                end)
                table.sort(aer_1)
                return aeq_1, aer_1
            end
            af1 = function(u8)
                local aez = agc()[u8]
                if not aez then
                    return false
                end
                for k, v in pairs(aez) do
                    if af3(k) < v then
                        return false
                    end
                end
                return true
            end
            agQ = function()
                local aeJ_1
                local aeH = isfile
                local aeH_1
                local aeI = {
                    Gear = nil,
                    Gears = {},
                    QueueIndex = 1,
                    Difficulty = "Hard",
                    AutoLobby = true,
                    Active = false,
                    Target = nil
                }
                if aeH then
                    aeH = isfile(agi.CraftConfigFile)
                end
                if aeH then
                    aeH_1, aeJ_1 = pcall(function()
                        return _HttpService:JSONDecode(readfile(agi.CraftConfigFile))
                    end)
                    local aeK = aeH_1 and type(aeJ_1) == "table"
                    if aeK then
                        if type(aeJ_1.Gear) == "string" then
                            aeI.Gear = aeJ_1.Gear
                        end
                        if type(aeJ_1.Gears) == "table" then
                            for i, v in ipairs(aeJ_1.Gears) do
                                if type(v) == "string" then
                                    table.insert(aeI.Gears, v)
                                end
                            end
                        end
                        if type(aeJ_1.QueueIndex) == "number" then
                            aeI.QueueIndex = aeJ_1.QueueIndex
                        end
                        if aeJ_1.Difficulty == "Normal" or aeJ_1.Difficulty == "Hard" then
                            aeI.Difficulty = aeJ_1.Difficulty
                        end
                        if type(aeJ_1.AutoLobby) == "boolean" then
                            aeI.AutoLobby = aeJ_1.AutoLobby
                        end
                        if type(aeJ_1.Active) == "boolean" then
                            aeI.Active = aeJ_1.Active
                        end
                        local aeH_3 = type(aeJ_1.Target) == "table" and type(aeJ_1.Target.item) == "string" and type(aeJ_1.Target.need) == "number"
                        if aeH_3 then
                            aeI.Target = { item = aeJ_1.Target.item, need = aeJ_1.Target.need }
                        end
                    end
                end
                if #aeI.Gears == 0 and aeI.Gear then
                    aeI.Gears = { aeI.Gear }
                end
                return aeI
            end
            agw = function()
                if not writefile then
                    return false
                end
                return (pcall(function()
                    writefile(agi.CraftConfigFile, _HttpService:JSONEncode(agi.CraftConfig))
                end))
            end
            agi.CraftConfig = agQ()
            af0, afL = agP_1({
                guiName = "OuroborosCraftUI",
                title = "  🌸 Auto Craft Gear Config",
                itemTitle = "Gear",
                config = agi.CraftConfig,
                selectedKey = "Gear",
                queueKey = "Gears",
                getItems = agO_8,
                getCost = function(vy)
                    return agc()[vy]
                end,
                onSave = function()
                    if agw() then
                        Library:Notify({ Title = "Auto Craft Gear", Description = "Config saved.", Time = 3 })
                    else
                        Library:Notify({ Title = "Auto Craft Gear", Description = "Failed to save config.", Time = 3 })
                    end
                end
            })
            local AutoCraftGearGroup = Tabs.Main:AddRightGroupbox("Auto Craft Gear")
            AutoCraftGearGroup:AddButton("Open Auto Craft Gear Config", function()
                af0.Visible = not af0.Visible
                if af0.Visible then
                    afL()
                end
            end)
            Label2 = AutoCraftGearGroup:AddLabel("Status: Idle", true)
            agi.craftTarget = nil
            agi.onCraftMatchEnd = function()
                local craftTarget = agi.craftTarget
                if not craftTarget then
                    return false
                end
                local aeZ = agi.CraftConfig.AutoLobby and af3(craftTarget.item) >= craftTarget.need
                if aeZ then
                    agi:fireRemote("Players", "teleport")
                else
                    agi:fireRemote("Game", "replay")
                end
                return true
            end
            AutoCraftGearGroup:AddToggle("AutoCraftGear", {
                Text = "Auto Craft Gear",
                Default = false,
                Callback = function(vM)
                    if not vM then
                        agi.craftTarget = nil
                        Label2:SetText("Status: Idle")
                        agi.CraftConfig.Active = false
                        agi.CraftConfig.Target = nil
                        agw()
                        return
                    end
                    if #agi.CraftConfig.Gears == 0 then
                        Library:Notify({ Title = "Auto Craft Gear", Description = "Select at least one gear first.", Time = 3 })
                        Toggles.AutoCraftGear:SetValue(false)
                        return
                    end
                    local afe = type(agi.CraftConfig.QueueIndex) ~= "number"
                    local afi = if afe then 1 else 0
                    local afg = 397 * afi + 2634 * (1 - afi)
                    local afh = 1724 * afi + 3419 * (1 - afi)
                    if not ((afg * 2236 + afh * 1377 + afg * afh) % 16777213 == 3946068) then
                        afe = agi.CraftConfig.QueueIndex < 1
                    end
                    local afl = if afe then 1 else 0
                    local afj = 50 * afl + 1939 * (1 - afl)
                    local afk = 2663 * afl + 2647 * (1 - afl)
                    if not ((afj * 2701 + afk * 4036 + afj * afk) % 16777213 == 11016068) then
                        afe = agi.CraftConfig.QueueIndex > #agi.CraftConfig.Gears
                    end
                    if afe then
                        agi.CraftConfig.QueueIndex = 1
                    end
                    agi.CraftConfig.Active = true
                    agw()
                    task.spawn(function()
                        local ae5_1
                        local ae4_1
                        local ae3_2
                        local ae2_2, ae2_3
                        local afa = false
                        repeat
                            if Toggles.AutoCraftGear.Value then
                                local ae1 = agi.CraftConfig.Gears[agi.CraftConfig.QueueIndex]
                                if not ae1 then
                                    agi.craftTarget = nil
                                    Label2:SetText("Status: All gear crafted, returning to lobby")
                                    agi:fireRemote("Players", "teleport")
                                    Toggles.AutoCraftGear:SetValue(false)
                                    return
                                end
                                if not remote("Play", "create_room") then
                                    local craftTarget = agi.craftTarget
                                    local afd = if af1(ae1) then 1 else 0
                                    if afd == 1 then
                                        agi.craftTarget = nil
                                        Label2:SetText("Status: Requirements met, returning to lobby")
                                        agi:fireRemote("Players", "teleport")
                                    else
                                        local ae3_1 = agi.CraftConfig.AutoLobby and craftTarget and af3(craftTarget.item) >= craftTarget.need
                                        if ae3_1 then
                                            Label2:SetText("Status: Stage requirement met, returning to lobby")
                                            agi:fireRemote("Players", "teleport")
                                        else
                                            Label2:SetText(agC(agc()[ae1]))
                                        end
                                    end
                                    task.wait(4)
                                else
                                    ae3_2, ae2_2 = agf(ae1)
                                    if #ae3_2 == 0 then
                                        agi.craftTarget = nil
                                        if #ae2_2 > 0 then
                                            Label2:SetText("Status: Skipping " .. ae1 .. " (cannot farm " .. table.concat(ae2_2, ", ") .. ")")
                                            Library:Notify({
                                                Title = "Auto Craft Gear",
                                                Description = "Cannot farm for " .. ae1 .. ": " .. table.concat(ae2_2, ", ") .. ". Skipping.",
                                                Time = 5
                                            })
                                            agi.CraftConfig.QueueIndex = agi.CraftConfig.QueueIndex + 1
                                            agi.CraftConfig.Target = nil
                                            agw()
                                        else
                                            local ae0 = remote("Crafting", "craft")
                                            if ae0 then
                                                ae2_3, ae4_1, ae5_1 = pcall(function()
                                                    return ae0:InvokeServer(ae1, 1)
                                                end)
                                                if ae2_3 and ae4_1 ~= false then
                                                    Label2:SetText("Status: Crafted " .. ae1)
                                                    Library:Notify({ Title = "Auto Craft Gear", Description = "Crafted " .. ae1 .. "!", Time = 5 })
                                                    if Toggles.WebhookOnCraft and Toggles.WebhookOnCraft.Value and agi.webhookNotify then
                                                        agi.webhookNotify("Auto Craft Gear", "Crafted **" .. ae1 .. "**.", false)
                                                    end
                                                else
                                                    Label2:SetText("Status: Craft failed")
                                                    local ae2_5 = ae4_1 or ae5_1
                                                    Library:Notify({ Title = "Auto Craft Gear", Description = "Craft failed: " .. tostring(ae2_5), Time = 5 })
                                                end
                                            end
                                            agi.CraftConfig.QueueIndex = agi.CraftConfig.QueueIndex + 1
                                            agi.CraftConfig.Target = nil
                                            agw()
                                        end
                                    else
                                        local ae2_6 = ae3_2[1]
                                        agi.craftTarget = ae2_6
                                        agi.CraftConfig.Target = { item = ae2_6.item, need = ae2_6.need }
                                        agw()
                                        Label2:SetText(string.format("Status: [%d/%d] %s farming %s (%d/%d)", agi.CraftConfig.QueueIndex, #agi.CraftConfig.Gears, ae1, ae2_6.item, af3(ae2_6.item), ae2_6.need))
                                        agi.joinRoom({
                                            world = ae2_6.stage.world,
                                            act = ae2_6.stage.act,
                                            mode = ae2_6.stage.mode,
                                            difficulty = ae2_6.stage.difficulty
                                        })
                                        task.wait(8)
                                    end
                                end
                            else
                                afa = true
                            end
                        until afa
                        agi.craftTarget = nil
                    end)
                end
            })
            AutoCraftGearGroup:AddToggle("CraftAutoLobby", {
                Text = "Auto Back to Lobby when Material Reqs Met",
                Default = agi.CraftConfig.AutoLobby,
                Callback = function(wm)
                    agi.CraftConfig.AutoLobby = wm
                    agw()
                end
            })
            agF, agM_1 = agP_1({
                guiName = "MaterialFarmUI",
                title = "Material Farm",
                itemTitle = "Material",
                config = agi.MatFarmConfig,
                selectedKey = "Target",
                queueKey = "Queue",
                getItems = function()
                    return agi.ItemNames
                end,
                getCost = function(wq)
                    return { [wq] = agi.MatFarmConfig.Targets[wq] or 1 }
                end,
                onSave = agh,
                targetMode = true
            })
            MaterialFarmGroup:AddButton("Open Material Farm Config", function()
                agF.Visible = not agF.Visible
            end)
            Label = MaterialFarmGroup:AddLabel("Status: Idle")
            agi.onMatFarmMatchEnd = function()
                local matFarmTarget = agi.matFarmTarget
                if not matFarmTarget then
                    return false
                end
                local afp = agi.MatFarmConfig.AutoLobby and af3(matFarmTarget.item) >= matFarmTarget.need
                if afp then
                    agi:fireRemote("Players", "teleport")
                else
                    agi:fireRemote("Game", "replay")
                end
                return true
            end
            MaterialFarmGroup:AddToggle("AutoMaterialFarm", {
                Text = "Material Farm",
                Default = false,
                Callback = function(wA)
                    if not wA then
                        agi.matFarmTarget = nil
                        Label:SetText("Status: Idle")
                        agi.MatFarmConfig.Active = false
                        return
                    end
                    local afz = type(agi.MatFarmConfig.QueueIndex) ~= "number" or agi.MatFarmConfig.QueueIndex < 1 or agi.MatFarmConfig.QueueIndex > #agi.MatFarmConfig.Queue
                    if afz then
                        agi.MatFarmConfig.QueueIndex = 1
                    end
                    agi.MatFarmConfig.Active = true
                    task.spawn(function()
                        while Toggles.AutoMaterialFarm.Value do
                            local afr = agi.MatFarmConfig.Queue[agi.MatFarmConfig.QueueIndex]
                            if not afr then
                                agi.matFarmTarget = nil
                                Label:SetText("Status: Queue finished")
                                Toggles.AutoMaterialFarm:SetValue(false)
                                if agi.MatFarmConfig.AutoLobby then
                                    agi:fireRemote("Players", "teleport")
                                end
                                return
                            end
                            local afs = agi.MatFarmConfig.Targets[afr] or 1
                            local afs_1 = af3(afr)
                            if afs_1 >= afs then
                                agi.MatFarmConfig.QueueIndex = agi.MatFarmConfig.QueueIndex + 1
                                agi.MatFarmConfig.Target = nil
                                agh()
                            else
                                local afu = agd(afr, agi.MatFarmConfig.Difficulty)
                                if not afu then
                                    Label:SetText("Status: Skipping " .. afr .. " (no stage preset)")
                                    Library:Notify({
                                        Title = "Material Farm",
                                        Description = "No known stage drops " .. afr .. " on " .. agi.MatFarmConfig.Difficulty .. ". Skipping.",
                                        Time = 5
                                    })
                                    agi.MatFarmConfig.QueueIndex = agi.MatFarmConfig.QueueIndex + 1
                                    agi.MatFarmConfig.Target = nil
                                    agh()
                                else
                                    agi.matFarmTarget = { item = afr, need = afs, stage = afu }
                                    agi.MatFarmConfig.Target = { item = afr, need = afs }
                                    agh()
                                    Label:SetText(string.format("Status: [%d/%d] farming %s (%d/%d)", agi.MatFarmConfig.QueueIndex, #agi.MatFarmConfig.Queue, afr, afs_1, afs))
                                    agi.joinRoom({ world = afu.world, act = afu.act, mode = afu.mode, difficulty = afu.difficulty })
                                    task.wait(8)
                                end
                            end
                            task.wait(2)
                        end
                    end)
                end
            })
            MaterialFarmGroup:AddToggle("MatFarmAutoLobby", {
                Text = "Auto Back to Lobby when Material Reqs Met",
                Default = agi.MatFarmConfig.AutoLobby,
                Callback = function(wU)
                    agi.MatFarmConfig.AutoLobby = wU
                    agh()
                end
            })
            if agi.AwakenConfig.Active and #agi.AwakenConfig.Units > 0 then
                agi.awakenTarget = agi.AwakenConfig.Target
                task.defer(function()
                    Toggles.AutoAwaken:SetValue(true)
                end)
            end
            if agi.CraftConfig.Active and #agi.CraftConfig.Gears > 0 then
                agi.craftTarget = agi.CraftConfig.Target
                task.defer(function()
                    Toggles.AutoCraftGear:SetValue(true)
                end)
            end
            task.spawn(function()
                local afB = false
                while true do
                    if remote("Play", "create_room") then
                        if not afB then
                            afB = afR()
                            pcall(function()
                                agi:refreshTraitCaps()
                            end)
                        end
                    else
                        afB = false
                    end
                    task.wait(5)
                end
            end)
        end)(loader);
        (function(...)
            local ajx
            local Options
            local ajL
            local Toggles
            local ajO
            local ajD
            local ajk
            local ajG
            local Label5
            local Label
            local ajJ
            local ajE
            local ajt
            local ajw
            local Label4
            local Label3
            local Library
            local ajo
            local Label2
            local ajN
            local ajr
            local ajF
            ajk = nil
            Label4 = nil
            Label = nil
            ajo = nil
            Toggles = nil
            ajr = nil
            ajt = nil
            ajw = nil
            ajx = nil
            Label5 = nil
            Label2 = nil
            Options = nil
            ajD = nil
            ajE = nil
            ajF = nil
            ajG = nil
            Label3 = nil
            ajJ = nil
            Library = nil
            ajL = nil
            ajN = nil
            ajO = nil
            local ajm, ajq, _HttpService, aju, ajv, remote, ajI, ajM, ajP, ajQ
            ajo = ...
            Library = ajo.Library
            Options = ajo.Options
            Toggles = ajo.Toggles
            local Tabs = ajo.Tabs
            remote = ajo.remote
            _HttpService = ajo._HttpService
            ajN = ajo.BaseFolder .. "/Macros"
            ajD = {}
            aju = remote("Characters", "spawn")
            ajP = remote("Characters", "upgrade")
            ajF = false
            ajQ = nil
            ajw = 0
            pcall(function()
                if makefolder and isfolder then
                    if not isfolder("OuroborosHub") then
                        makefolder("OuroborosHub")
                    end
                    if not isfolder(ajN) then
                        makefolder(ajN)
                    end
                end
            end)
            ajk = function()
                local yen = ajo.LocalPlayer:FindFirstChild("yen")
                return yen and yen.Value or 0
            end
            ajI = function()
                local ag1 = 0
                local Characters = workspace:FindFirstChild("Characters")
                if Characters then
                    for i, child in ipairs(Characters:GetChildren()) do
                        if child:GetAttribute("type") == "Allies" then
                            ag1 = ag1 + 1
                        end
                    end
                end
                return ag1
            end
            ajq = function(xv)
                return ajN .. "/" .. xv .. ".json"
            end
            ajt = function(xy)
                if not (writefile and xy and ajD[xy]) then
                    return
                end
                pcall(function()
                    writefile(ajq(xy), _HttpService:JSONEncode(ajD[xy]))
                end)
            end
            local function ajS()
                local ahg_1
                ajD = {}
                local ahf = listfiles and isfolder and isfolder(ajN)
                local ahf_1
                if not ahf then
                    return
                end
                for i, v in ipairs(listfiles(ajN)) do
                    local aho = v
                    if aho:sub(-5) == ".json" then
                        ahf_1, ahg_1 = pcall(function()
                            return _HttpService:JSONDecode(readfile(aho))
                        end)
                        local ahh = ahf_1 and type(ahg_1) == "table"
                        if ahh then
                            local ahf_2 = aho:match("([^/\\]+)%.json$")
                            if ahf_2 then
                                if type(ahg_1.steps) ~= "table" then
                                    ahg_1.steps = {}
                                end
                                ajD[ahf_2] = ahg_1
                            end
                        end
                    end
                end
            end
            ajO = function()
                local ahp = {}
                for k in pairs(ajD) do
                    table.insert(ahp, k)
                end
                table.sort(ahp)
                return ahp
            end
            ajG = function()
                local Value = Options.MacroProfile.Value
                return Value and ajD[Value], Value
            end
            ajm = function(x3)
                if x3.action == "Place" and aju then
                    pcall(function()
                        aju:InvokeServer(x3.unit)
                    end)
                else
                    if x3.action == "Upgrade" and ajP then
                        pcall(function()
                            ajP:InvokeServer(x3.unit)
                        end)
                    end
                end
            end
            ajS()
            local ajB
            ajr = false
            local ajS_1 = remote("Characters", "create")
            local ajT = remote("Characters", "upgrade_visual")
            if ajS_1 then
                ajS_1.OnClientEvent:Connect(function(ye)
                    local ahA = ajF and type(ye) == "table" and ye.name and ye.owner == ajo.LocalPlayer.Name
                    if ahA then
                        ajB("Place", ye.name)
                    end
                end)
                ajr = true
            end
            if ajT then
                ajT.OnClientEvent:Connect(function(yj)
                    if ajF and yj then
                        ajB("Upgrade", yj)
                    end
                end)
            end
            local MacroGroup = Tabs.Macro:AddLeftGroupbox("Macro")
            Label5 = MacroGroup:AddLabel("Macro Status: None")
            Label4 = MacroGroup:AddLabel("Action: ")
            Label3 = MacroGroup:AddLabel("Type: ")
            Label2 = MacroGroup:AddLabel("Unit: ")
            Label = MacroGroup:AddLabel("Waiting for: ")
            ajJ = function(yt)
                Label5:SetText("Macro Status: " .. yt)
            end
            MacroGroup:AddToggle("RecordMacro", { Text = "Record Macro", Default = false })
            MacroGroup:AddToggle("PlayMacro", { Text = "Play Macro", Default = false })
            MacroGroup:AddSlider("StepDelay", { Text = "Step Delay", Min = 0, Max = 5, Default = 0.2, Rounding = 1 })
            MacroGroup:AddDropdown("PlayMode", { Text = "Play Mode", Values = { "Money", "Time" }, Default = 1 })
            MacroGroup:AddDropdown("MacroProfile", { Text = "Macro Profiles", Values = ajO(), AllowNull = true, Multi = false })
            MacroGroup:AddInput("MacroName", { Text = "Macro Name", Default = "Macro1", Finished = true })
            ajL = {}
            ajE = function()
                local ahH = ajO()
                Options.MacroProfile:SetValues(ahH)
                for i, v in ipairs(ajL) do
                    if Options[v] then
                        Options[v]:SetValues(ahH)
                    end
                end
            end
            MacroGroup:AddButton("Create New Macro", function()
                local Value = Options.MacroName.Value
                if not Value or Value == "" then
                    Library:Notify({ Title = "Macro", Description = "Enter a macro name first.", Time = 3 })
                    return
                end
                if not ajD[Value] then
                    ajD[Value] = { steps = {} }
                end
                ajt(Value)
                ajE()
                Options.MacroProfile:SetValue(Value)
            end)
            MacroGroup:AddButton("Delete Selected Macro", function()
                local Value
                Value = Options.MacroProfile.Value
                if not Value then
                    return
                end
                ajD[Value] = nil
                pcall(function()
                    local ahT = delfile and isfile and isfile(ajq(Value))
                    if ahT then
                        delfile(ajq(Value))
                    end
                end)
                ajE()
                Options.MacroProfile:SetValue(nil)
            end)
            ajM = { "Story", "Squadron", "Raid", "Challenge", "Infinite" }
            local function ajS_3(yT)
                local ah_ = ajo.ModeData[yT]
                local ah0 = ah_
                local ah1 = {}
                if ah0 then
                    ah0 = next(ah_)
                end
                if ah0 then
                    for k in pairs(ah_) do
                        table.insert(ah1, k)
                    end
                else
                    for i, v in ipairs(ajo.WorldNames) do
                        table.insert(ah1, v)
                    end
                end
                table.sort(ah1)
                return ah1
            end
            local MapMacrosGroup = Tabs.Macro:AddRightGroupbox("Map Macros")
            MapMacrosGroup:AddDropdown("MapMode", { Text = "Mode", Values = ajM, Default = 1 })
            ajx = {}
            for i, v in ipairs(ajM) do
                ajx[v] = {}
                for i, v2 in ipairs(ajS_3(v)) do
                    local ajR_1 = "MapMacro_" .. v .. "_" .. v2
                    MapMacrosGroup:AddDropdown(ajR_1, { Text = v2, Values = ajO(), AllowNull = true, Multi = false })
                    table.insert(ajL, ajR_1)
                    table.insert(ajx[v], ajR_1)
                end
            end
            local function ajR_2()
                local Value = Options.MapMode.Value
                for k, v in pairs(ajx) do
                    local aie = k == Value
                    for i, v in ipairs(v) do
                        if Options[v] and Options[v].SetVisible then
                            Options[v]:SetVisible(aie)
                        end
                    end
                end
            end
            Options.MapMode:OnChanged(ajR_2)
            ajR_2()
            ajv = function()
                local aiD_1
                local aiA = (function()
                    local PlayerGui = ajo.LocalPlayer:FindFirstChild("PlayerGui")
                    local aiu = PlayerGui and PlayerGui:FindFirstChild("Hotbar")
                    return aiu
                end)()
                local aiB = aiA and aiA:FindFirstChild("Info")
                local aiA_1 = aiB
                if aiB then
                    aiB = aiA_1:FindFirstChild("World")
                end
                local aiA_2 = aiB
                if aiB then
                    aiB = aiA_2:FindFirstChild("TextLabel")
                end
                local aiA_3 = aiB
                if aiB then
                    aiB = aiA_3.Text
                end
                local aiA_4 = aiB
                local aiC = not aiA_4 or aiA_4 == ""
                local aiC_1
                if aiC then
                    return nil
                end
                local mode = nil
                local aiz = remote("Players", "get")
                if aiz then
                    aiC_1, aiD_1 = pcall(function()
                        return aiz:InvokeServer()
                    end)
                    local aiE = aiC_1 and type(aiD_1) == "table" and type(aiD_1.ingame) == "table"
                    if aiE then
                        mode = aiD_1.ingame.mode
                    end
                end
                if mode then
                    local aiC_2 = Options["MapMacro_" .. mode .. "_" .. aiA_4]
                    if aiC_2 and aiC_2.Value and ajD[aiC_2.Value] then
                        return ajD[aiC_2.Value], aiC_2.Value
                    end
                    for i, v in ipairs(ajM) do
                        local aiB_4 = Options["MapMacro_" .. v .. "_" .. aiA_4]
                        if aiB_4 and aiB_4.Value and ajD[aiB_4.Value] then
                            return ajD[aiB_4.Value], aiB_4.Value
                        end
                    end
                    return nil
                end
                for i, v in ipairs(ajM) do
                    local aiB_5 = Options["MapMacro_" .. v .. "_" .. aiA_4]
                    if aiB_5 and aiB_5.Value and ajD[aiB_5.Value] then
                        return ajD[aiB_5.Value], aiB_5.Value
                    end
                end
                return nil
            end
            ajB = function(zL, zM)
                local aiP = ajG()
                if not (ajF and aiP and zM) then
                    return
                end
                local aiQ_1 = { action = zL, unit = tostring(zM), money = ajk(), time = os.clock() - ajw }
                table.insert(aiP.steps, aiQ_1)
                Label4:SetText("Action: Recorded #" .. #aiP.steps)
                Label3:SetText("Type: " .. zL)
                Label2:SetText("Unit: " .. aiQ_1.unit)
                if Options.PlayMode.Value == "Time" then
                    Label:SetText("Waiting for: " .. string.format("%.1fs", aiQ_1.time))
                else
                    Label:SetText("Waiting for: " .. tostring(math.floor(aiQ_1.money)) .. "¥")
                end
            end
            Toggles.RecordMacro:OnChanged(function()
                local aiX_1, aiX_2
                local aiW_1, aiW_2
                if Toggles.RecordMacro.Value then
                    if not ajr then
                        Library:Notify({ Title = "Macro", Description = "Recording is not supported by your executor.", Time = 4 })
                        Toggles.RecordMacro:SetValue(false)
                        return
                    end
                    if Toggles.PlayMacro.Value then
                        Toggles.PlayMacro:SetValue(false)
                    end
                    aiX_1, aiW_1 = ajG()
                    if not (aiX_1 and aiW_1) then
                        Library:Notify({ Title = "Macro", Description = "Create or select a macro first.", Time = 4 })
                        Toggles.RecordMacro:SetValue(false)
                        return
                    end
                    aiX_1.steps = {}
                    ajw = os.clock()
                    ajF = true
                    ajJ("Recording")
                    Label4:SetText("Action: ")
                    Label3:SetText("Type: ")
                    Label2:SetText("Unit: ")
                    Label:SetText("Waiting for: ")
                else
                    ajF = false
                    aiW_2, aiX_2 = ajG()
                    if aiW_2 and aiX_2 then
                        ajt(aiX_2)
                    end
                    ajJ("None")
                end
            end)
            Toggles.PlayMacro:OnChanged(function()
                local aji
                if not Toggles.PlayMacro.Value then
                    ajJ("None")
                    return
                end
                if Toggles.RecordMacro.Value then
                    Toggles.RecordMacro:SetValue(false)
                end
                if not next(ajD) then
                    Library:Notify({ Title = "Macro", Description = "No macros saved. Create one first.", Time = 4 })
                    Toggles.PlayMacro:SetValue(false)
                    return
                end
                aji = {}
                ajQ = aji
                task.spawn(function()
                    while true do
                        local ai5 = ajQ == aji
                        local ai5_5
                        if Toggles.PlayMacro.Value and ai5 then
                            local ai5_1 = ajv() or ajG()
                            if not ai5_1 or #ai5_1.steps == 0 then
                                ajJ("Waiting for stage macro")
                                task.wait(1)
                                continue
                            end
                            local Value = Options.PlayMode.Value
                            local ai7 = os.clock()
                            ajJ("Playing")
                            for i, v in ipairs(ai5_1.steps) do
                                if not (Toggles.PlayMacro.Value and ajQ == aji) then
                                    break
                                end
                                Label4:SetText("Action: " .. i .. "/" .. #ai5_1.steps)
                                Label3:SetText("Type: " .. v.action)
                                Label2:SetText("Unit: " .. v.unit)
                                if Value == "Time" then
                                    Label:SetText("Waiting for: " .. string.format("%.1fs", v.time))
                                    while true do
                                        local ai8_1 = os.clock() - ai7 < v.time and Toggles.PlayMacro.Value
                                        if ai8_1 and ajQ == aji then
                                            task.wait(0.05)
                                            continue
                                        end
                                        break
                                    end
                                else
                                    Label:SetText("Waiting for: " .. tostring(math.floor(v.money)) .. "¥")
                                    while true do
                                        local ai8_2 = ajk() < v.money and Toggles.PlayMacro.Value
                                        if ai8_2 and ajQ == aji then
                                            task.wait(0.1)
                                            continue
                                        end
                                        break
                                    end
                                end
                                if not (Toggles.PlayMacro.Value and ajQ == aji) then
                                    break
                                end
                                ajm(v)
                                task.wait(Options.StepDelay.Value)
                            end
                            if not (Toggles.PlayMacro.Value and ajQ == aji) then
                                break
                            end
                            ajJ("Waiting for next round")
                            repeat
                                task.wait(0.5)
                                ai5_5 = not Toggles.PlayMacro.Value or ajQ ~= aji or ajI() == 0
                            until ai5_5
                            continue
                        end
                        break
                    end
                    if ajQ == aji then
                        ajJ("None")
                    end
                end)
            end)
        end)(loader);
        (function(...)
            local Aa = ...
            local Options = Aa.Options
            local Toggles = Aa.Toggles
            local Tabs = Aa.Tabs
            local remote = Aa.remote
            local function Ag(Ah)
                local aj9_1
                local aj8_1
                local aj6 = remote("Shops", "get")
                local aj7 = {}
                if aj6 then
                    aj8_1, aj9_1 = pcall(function()
                        return aj6:InvokeServer(Ah)
                    end)
                    local aka = aj8_1 and type(aj9_1) == "table"
                    if aka then
                        for k in pairs(aj9_1) do
                            table.insert(aj7, k)
                        end
                    end
                end
                if #aj7 == 0 then
                    for i, v in ipairs(Aa.ItemNames) do
                        table.insert(aj7, v)
                    end
                end
                table.sort(aj7)
                return aj7
            end
            local function Au()
                local akm
                akm = nil
                local ako_1
                local akn = remote("Player", "get") or remote("Players", "get")
                local akn_1
                akm = akn
                if not akm then
                    return nil
                end
                akn_1, ako_1 = pcall(function()
                    return akm:InvokeServer()
                end)
                local akp = akn_1 and type(ako_1) == "table"
                return akp and ako_1 or nil
            end
            local AutoSummonGroup = Tabs.Shop:AddLeftGroupbox("Auto Summon")
            local Label = AutoSummonGroup:AddLabel("Secret Pity: 0/20000")
            AutoSummonGroup:AddDropdown("BannerSelection", { Text = "Banner Selection", Values = { "Basic Banner", "Selection Banner" }, Default = 1 })
            AutoSummonGroup:AddDropdown("SummonAmount", { Text = "Summon Amount", Values = { "x1", "x10" }, Default = 1 })
            AutoSummonGroup:AddToggle("AutoSummon", { Text = "Auto Summon", Default = false })
            local function AE()
                local akr = Au()
                local akr_1 = akr and akr.pities and akr.pities.summon_secret or 0
                Label:SetText("Secret Pity: " .. akr_1 .. "/20000")
            end
            local AutoPerkGroup = Tabs.Shop:AddLeftGroupbox("Auto Perk")
            AutoPerkGroup:AddDropdown("AutoPerkSelect", {
                Text = "Perks",
                Values = { "Yen_Max", "Yen_Generation", "Health" },
                AllowNull = true,
                Multi = false
            })
            AutoPerkGroup:AddToggle("AutoPerk", { Text = "Auto Perk", Default = false })
            local AutoBuyGroup = Tabs.Shop:AddRightGroupbox("Auto Buy")
            AutoBuyGroup:AddDropdown("MerchantItems", { Text = "Merchant Items", Values = Ag("merchant"), Multi = true, AllowNull = true })
            AutoBuyGroup:AddToggle("AutoBuyMerchant", { Text = "Auto Buy Merchant", Default = false })
            local AutoRaidShopGroup = Tabs.Shop:AddRightGroupbox("Auto Raid Shop")
            AutoRaidShopGroup:AddDropdown("RaidShopItems", { Text = "Raid Shop Items", Values = Ag("gt_city_raid"), Multi = true, AllowNull = true })
            AutoRaidShopGroup:AddToggle("AutoBuyRaidShop", { Text = "Auto Buy Raid Shop", Default = false })
            AutoRaidShopGroup:AddButton("Refresh Shop", function()
                Options.MerchantItems:SetValues(Ag("merchant"))
                Options.RaidShopItems:SetValues(Ag("gt_city_raid"))
                AE()
            end)
            local function AQ(AR, AS)
                local akx
                akx = nil
                local akB_1
                if type(AS) ~= "table" then
                    return
                end
                akx = remote("Shops", "get")
                local akz = remote("Shops", "buy")
                local akA = akx and akz
                local akA_1
                if not akA then
                    return
                end
                akA_1, akB_1 = pcall(function()
                    return akx:InvokeServer(AR)
                end)
                local akC = akA_1 and type(akB_1) == "table"
                if not akC then
                    return
                end
                local akA_2 = Au()
                local akD = akA_2 and akA_2.shop_stocks and akA_2.shop_stocks[AR] or {}
                for k, v in pairs(AS) do
                    local akO = k
                    if v and akB_1[akO] then
                        local aky = (akB_1[akO].max or 0) - (akD[akO] or 0)
                        if aky > 0 then
                            pcall(function()
                                akz:InvokeServer(akO, AR, aky)
                            end)
                            task.wait(0.2)
                        end
                    end
                end
            end
            task.spawn(function()
                local akW = 0
                local ak0 = false
                repeat
                    local Value2, akV
                    task.wait(1)
                    if not Toggles.AutoSummon then
                        ak0 = true
                    else
                        akW = akW + 1
                        if Toggles.AutoSummon.Value then
                            local akT = remote("Summon", "start")
                            if akT then
                                Value2 = Options.BannerSelection.Value
                                akV = Options.SummonAmount.Value == "x10" and 10 or 1
                                pcall(function()
                                    akT:InvokeServer(Value2, akV)
                                end)
                            end
                        end
                        if Toggles.AutoPerk.Value then
                            local Value = Options.AutoPerkSelect.Value
                            local akS = remote("Perks", "upgrade")
                            if Value and akS then
                                pcall(function()
                                    akS:InvokeServer(Value)
                                end)
                            end
                        end
                        if akW % 5 == 0 then
                            if Toggles.AutoBuyMerchant.Value then
                                AQ("merchant", Options.MerchantItems.Value)
                            end
                            if Toggles.AutoBuyRaidShop.Value then
                                AQ("gt_city_raid", Options.RaidShopItems.Value)
                            end
                            AE()
                        end
                    end
                until ak0
            end)
        end)(loader);
        (function(...)
            local aog
            local aor
            local aou
            local Toggles
            local aom
            local aox
            local aop
            local aoe
            local aoh
            local aos
            local an9
            local LocalPlayer
            local remote
            local aof
            local Options
            local aoa
            local aow
            local aol
            local aod
            local aoo
            an9 = nil
            aoa = nil
            Toggles = nil
            remote = nil
            aod = nil
            aoe = nil
            aof = nil
            aog = nil
            aoh = nil
            Options = nil
            LocalPlayer = nil
            aol = nil
            aom = nil
            aoo = nil
            aop = nil
            aor = nil
            aos = nil
            aou = nil
            aow = nil
            aox = nil
            local aoj, aon, Library, _HttpService, aov
            aoa = ...
            Library = aoa.Library
            Options = aoa.Options
            Toggles = aoa.Toggles
            local Tabs = aoa.Tabs
            LocalPlayer = aoa.LocalPlayer
            remote = aoa.remote
            _HttpService = aoa._HttpService
            local WebhookGroup = Tabs.Webhook:AddLeftGroupbox("Webhook")
            WebhookGroup:AddInput("WebhookUrl", {
                Text = "Webhook URL",
                Default = "",
                Placeholder = "https://discord.com/api/webhooks/...",
                Finished = true
            })
            WebhookGroup:AddInput("WebhookUserId", { Text = "User Ping (ID)", Default = "", Placeholder = "Discord user ID", Finished = true })
            WebhookGroup:AddDropdown("WebhookItems", { Text = "Item Dropped", Values = aoa.ItemNames, Multi = true, AllowNull = true })
            WebhookGroup:AddToggle("SendWebhook", { Text = "Send Webhook", Default = false })
            WebhookGroup:AddToggle("PingItemDropped", { Text = "Ping Item Dropped", Default = false })
            WebhookGroup:AddToggle("PingTraitMatch", { Text = "Ping on Trait Match", Default = false })
            WebhookGroup:AddToggle("PingBountyComplete", { Text = "Ping on Bounty Complete", Default = false })
            WebhookGroup:AddToggle("SendDisconnectMessage", { Text = "Send Disconnected Message", Default = false })
            WebhookGroup:AddToggle("WebhookOnAwaken", { Text = "Send Webhook after Awaken", Default = false })
            WebhookGroup:AddToggle("WebhookOnCraft", { Text = "Send Webhook after Gear Craft", Default = false })
            WebhookGroup:AddToggle("SendMatchSummary", { Text = "Send Match Summary", Default = false })
            local aoA = syn and syn.request
            local aoE = if aoA then 1 else 0
            local aoC = 596 * aoE + 3462 * (1 - aoE)
            local aoD = 3316 * aoE + 273 * (1 - aoE)
            if not ((aoC * 3242 + aoD * 2384 + aoC * aoD) % 16777213 == 11813912) then
                aoA = http and http.request
            end
            if not aoA then
                aoA = http_request
            end
            if not aoA then
                aoA = request
            end
            local aoE_1 = if aoA then 1 else 0
            local aoC_1 = 2441 * aoE_1 + 2210 * (1 - aoE_1)
            local aoD_1 = 3787 * aoE_1 + 2348 * (1 - aoE_1)
            if not ((aoC_1 * 2672 + aoD_1 * 126 + aoC_1 * aoD_1) % 16777213 == 16243581) then
                aoA = fluxus and fluxus.request
            end
            aon = aoA
            aoe = function()
                local Value = Options.WebhookUserId.Value
                local ak2 = Value and Value ~= "" and string.match(Value, "%d")
                if ak2 then
                    return "<@" .. Value .. "> "
                end
                return ""
            end
            aow = function(BM)
                local Value
                if not aon then
                    return false, "Executor has no HTTP request function."
                end
                Value = Options.WebhookUrl.Value
                if not Value or Value == "" then
                    return false, "No webhook URL set."
                end
                return pcall(function()
                    return aon({
                        Url = Value,
                        Method = "POST",
                        Headers = { ["Content-Type"] = "application/json" },
                        Body = _HttpService:JSONEncode(BM)
                    })
                end)
            end
            aou = function(BW, BX, BY)
                if not Toggles.SendWebhook.Value then
                    return
                end
                local alb = aoe()
                local alb_1 = BY and alb ~= "" and alb or nil
                aow({
                    content = alb_1,
                    embeds = {
                        {
                            title = "🌸 " .. BW,
                            description = BX,
                            color = 16019638,
                            thumbnail = { url = "https://tr.rbxcdn.com/180DAY-d29acf5020ecef8a89736cb5f23d934c/512/512/Image/Png/noFilter" },
                            footer = { text = "Ouroboros Hub • Anime Squadron" },
                            timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
                        }
                    }
                })
            end
            aoa.webhookNotify = aou
            aof = function()
                local alf
                alf = nil
                local alh_1
                local alg = (remote("Player", "get"))
                local alg_1
                local alm = if alg then 1 else 0
                local alk = 250 * alm + 753 * (1 - alm)
                local all = 585 * alm + 3862 * (1 - alm)
                if not ((alk * 267 + all * 1884 + alk * all) % 16777213 == 1315140) then
                    alg = remote("Players", "get")
                end
                alf = alg
                if not alf then
                    return nil
                end
                alg_1, alh_1 = pcall(function()
                    return alf:InvokeServer()
                end)
                local ali = alg_1 and type(alh_1) == "table"
                return ali and alh_1 or nil
            end
            aos = function(Cb)
                local alq = {}
                if type(Cb.items) == "table" then
                    for k, v in pairs(Cb.items) do
                        if type(v) == "number" then
                            alq[k] = v
                        end
                    end
                end
                if type(Cb.stats) == "table" then
                    for k, v in pairs(Cb.stats) do
                        if type(v) == "number" then
                            alq[k] = v
                        end
                    end
                end
                return alq
            end
            aom = function(Ci)
                local alF_1
                local alE = tostring(math.floor(Ci))
                repeat
                    alE, alF_1 = alE:gsub("^(-?%d+)(%d%d%d)", "%1,%2")
                until alF_1 == 0
                return alE
            end
            aod = function(Cm)
                Cm = math.max(0, math.floor(Cm))
                return string.format("%d:%02d", math.floor(Cm / 60), Cm % 60)
            end
            aoo = function(Co)
                local alH = Co
                local alI = {}
                if alH then
                    alH = Co.characters
                end
                local alJ = {}
                local alK = alH
                local alO = if alK then 1 else 0
                local alM = 602 * alO + 1364 * (1 - alO)
                local alN = 1630 * alO + 980 * (1 - alO)
                if not ((alM * 837 + alN * 538 + alM * alN) % 16777213 == 2362074) then
                    alK = alJ
                end
                for k, v in pairs(alK) do
                    local alH_1 = type(v) == "table" and v.equipped
                    if alH_1 then
                        local alH_2 = #alI + 1
                        local alJ_1 = v.name or "Unknown"
                        local alK_1 = v.level or "?"
                        alI[alH_2] = alJ_1 .. " (Lv " .. tostring(alK_1) .. ")"
                    end
                end
                table.sort(alI)
                return alI
            end
            aoh = function()
                if Toggles.AutoAwaken and Toggles.AutoAwaken.Value then
                    local alV_1 = aoa.AwakenConfig and aoa.AwakenConfig.Units and aoa.AwakenConfig.Units[aoa.AwakenConfig.QueueIndex]
                    local alW_1 = alV_1
                    if alV_1 then
                        alV_1 = ": " .. alW_1
                    end
                    return "Auto Awaken" .. (alV_1 or "")
                end
                if Toggles.AutoCraftGear and Toggles.AutoCraftGear.Value then
                    local alV_3 = aoa.CraftConfig and aoa.CraftConfig.Gears and aoa.CraftConfig.Gears[aoa.CraftConfig.QueueIndex]
                    local alW_3 = alV_3
                    if alV_3 then
                        alV_3 = ": " .. alW_3
                    end
                    return "Auto Craft Gear" .. (alV_3 or "")
                end
                if Toggles.AutoMaterialFarm and Toggles.AutoMaterialFarm.Value then
                    local alV_5 = aoa.MatFarmConfig and aoa.MatFarmConfig.Queue and aoa.MatFarmConfig.Queue[aoa.MatFarmConfig.QueueIndex]
                    local alW_5 = alV_5
                    if alV_5 then
                        alV_5 = ": " .. alW_5
                    end
                    return "Auto Material Farm" .. (alV_5 or "")
                end
                if Toggles.AutoDaily and Toggles.AutoDaily.Value then
                    return "Auto Daily"
                end
                if Toggles.AutoChallenge and Toggles.AutoChallenge.Value then
                    return "Auto Challenge"
                end
                if Toggles.AutoKatakara and Toggles.AutoKatakara.Value then
                    return "Auto Katakara Bridge"
                end
                if Toggles.AutoUltimateEvil and Toggles.AutoUltimateEvil.Value then
                    return "Auto Ultimate Evil"
                end
                if Toggles.AutoEclipse and Toggles.AutoEclipse.Value then
                    return "Auto Eclipse"
                end
                return "Manual"
            end
            aop = nil
            an9 = nil
            task.spawn(function()
                local al3
                while true do
                    task.wait(1)
                    local al4 = remote("Play", "create_room") ~= nil
                    if al3 == true and al4 == false then
                        an9 = os.time()
                        local al5_1 = aof()
                        local al6_1 = al5_1 and aos(al5_1)
                        aop = al6_1 or nil
                    end
                    al3 = al4
                end
            end)
            local function aoy_4(CV, CW)
                if not (Toggles.SendMatchSummary and Toggles.SendMatchSummary.Value) then
                    return
                end
                CV = CV or {}
                local al8_2 = an9 and os.time() - an9
                local al9_1 = al8_2 or nil
                local al8_3 = aop
                task.wait(1)
                local al9_2 = aof()
                local amb = {}
                if al8_3 and al9_2 then
                    local amc_1 = aos(al9_2)
                    local amd_1 = {}
                    for k, v in pairs(amc_1) do
                        local amc_2 = al8_3[k] or 0
                        if v > amc_2 then
                            amd_1[#amd_1 + 1] = { name = k, amount = v - amc_2, total = v }
                        end
                    end
                    table.sort(amd_1, function(C7, C8)
                        return C7.name < C8.name
                    end)
                    for i, v in ipairs(amd_1) do
                        amb[#amb + 1] = string.format("+%s %s [%s]", aom(v.amount), v.name, aom(v.total))
                    end
                end
                local al8_5 = CW == true and "Won" or CW == false and "Lost" or "Finished"
                local al8_6 = CV.mode or "?"
                local amd_3 = CV.act and " Act" .. tostring(CV.act)
                local ame_2 = amd_3 or ""
                local amd_4 = CV.difficulty and " " .. tostring(CV.difficulty)
                local amd_5 = al8_6 .. ame_2 .. (amd_4 or "")
                local al8_7 = al9_1 and aod(al9_1)
                local ama_1 = al8_7 or "N/A"
                local ama_2 = #amb > 0 and table.concat(amb, "\n")
                local amb_1 = ama_2 or "*(none)*"
                local ame_3 = LocalPlayer.DisplayName ~= LocalPlayer.Name and LocalPlayer.DisplayName .. " (@" .. LocalPlayer.Name .. ")" or LocalPlayer.Name
                local ame_4 = aoo(al9_2)
                local amf_1 = #ame_4 > 0 and "- " .. table.concat(ame_4, "\n- ")
                local ame_5 = amf_1 or "*(none)*"
                local amf_2 = al9_2
                if amf_2 then
                    amf_2 = aos(al9_2)
                end
                local ame_6 = {}
                local amh = amf_2
                local amC = if amh then 1 else 0
                local amA = 870 * amC + 3816 * (1 - amC)
                local amB = 1586 * amC + 1946 * (1 - amC)
                if not ((amA * 2637 + amB * 3642 + amA * amB) % 16777213 == 9450222) then
                    amh = ame_6
                end
                local ame_7 = amh
                local amf_3 = {}
                local amh_1 = {
                    { label = "Trait Reroll", key = "Trait Shards" },
                    { label = "Gold", key = "Gold" },
                    { label = "Baras Coins", key = "Baras Coins" },
                    { label = "Reroll Cubes", key = "Reroll Cubes" },
                    { label = "Perfect Cubes", key = "Perfect Cubes" },
                    { label = "Bounty Tickets", key = "Bounty Tickets" }
                }
                for i, v in ipairs(amh_1) do
                    local amh_2 = #amf_3 + 1
                    local label = v.label
                    local amj = ame_7[v.key] or 0
                    amf_3[amh_2] = label .. ": " .. aom(amj)
                end
                local ame_8 = table.concat(amf_3, "\n")
                local amf_4 = {
                    name = ame_3,
                    icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. tostring(LocalPlayer.UserId) .. "&width=150&height=150&format=png"
                }
                local amh_3 = "🌸 Match " .. al8_5
                local ami_2 = CV.world or "Unknown"
                aow({
                    embeds = {
                        {
                            author = amf_4,
                            title = amh_3,
                            description = "**" .. ami_2 .. "**\n" .. amd_5,
                            color = 16019638,
                            thumbnail = { url = "https://tr.rbxcdn.com/180DAY-d29acf5020ecef8a89736cb5f23d934c/512/512/Image/Png/noFilter" },
                            fields = {
                                { name = "⏱️ Time", value = ama_1, inline = true },
                                { name = "⚙️ Macro", value = aoh(), inline = true },
                                { name = "📊 Player Stats", value = ame_8, inline = false },
                                { name = "💎 Rewards", value = amb_1, inline = false },
                                { name = "⚔️ Equipped Units", value = ame_5, inline = false }
                            },
                            footer = { text = "Ouroboros Hub • Anime Squadron" },
                            timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
                        }
                    }
                })
                if al9_2 then
                    an9 = os.time()
                    aop = aos(al9_2)
                end
            end
            aoa.onMatchSummary = aoy_4
            WebhookGroup:AddButton("Test Webhook", function()
                local amN_1
                local amI = aoe()
                local amJ = {}
                local amK = {}
                local amL = "Webhook test from Ouroboros Hub."
                local amL_1
                local amM = remote("Player", "get") or remote("Players", "get")
                local amM_1
                local amH = amM
                if amH then
                    amM_1, amN_1 = pcall(function()
                        return amH:InvokeServer()
                    end)
                    local amO = amM_1 and type(amN_1) == "table" and type(amN_1.items) == "table"
                    if amO then
                        amK = amN_1.items
                    end
                end
                local amM_2 = Options.WebhookItems and type(Options.WebhookItems.Value) == "table"
                if amM_2 then
                    for k, v in pairs(Options.WebhookItems.Value) do
                        if v then
                            local amM_3 = amK[k] or 0
                            table.insert(amJ, k .. " (x" .. tostring(amM_3) .. ")")
                        end
                    end
                end
                table.sort(amJ)
                if #amJ > 0 then
                    amL_1 = amL .. "\n\n**Selected Items for Drop Ping:**\n• " .. table.concat(amJ, "\n• ")
                else
                    amL_1 = "Webhook test from Ouroboros Hub.\n\n*(No items currently selected for drop ping)*"
                end
                local amI_1 = amI ~= "" and amI or nil
                local amJ_2 = aow({
                    content = amI_1,
                    embeds = {
                        {
                            title = "🌸 Anime Squadron",
                            description = amL_1,
                            color = 16019638,
                            thumbnail = { url = "https://tr.rbxcdn.com/180DAY-d29acf5020ecef8a89736cb5f23d934c/512/512/Image/Png/noFilter" },
                            footer = { text = "Ouroboros Hub • Anime Squadron" },
                            timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
                        }
                    }
                })
                local amJ_3 = amJ_2 and "Test sent."
                local am0 = if amJ_3 then 1 else 0
                local amZ = 2816 * am0 + 925 * (1 - am0)
                local am_ = 498 * am0 + 3035 * (1 - am0)
                if not ((amZ * 3425 + am_ * 2842 + amZ * am_) % 16777213 == 12462484) then
                    amJ_3 = "Failed to send (check URL/executor)."
                end
                Library:Notify({ Title = "Webhook", Description = amJ_3, Time = 4 })
            end)
            local aoy_5 = remote("Traits", "auto_cancel")
            if aoy_5 then
                aoy_5.OnClientEvent:Connect(function(DT)
                    if not Toggles.PingTraitMatch then
                        return
                    end
                    local am1 = type(DT) == "table" and DT.name
                    local am2 = am1
                    local am7 = if am2 then 1 else 0
                    local am5 = 2788 * am7 + 1312 * (1 - am7)
                    local am6 = 1428 * am7 + 817 * (1 - am7)
                    if not ((am5 * 2954 + am6 * 1185 + am5 * am6) % 16777213 == 13909196) then
                        am2 = "A unit"
                    end
                    local am1_1 = am2
                    local am2_1 = type(DT) == "table"
                    if am2_1 then
                        am2_1 = DT.trait or DT.trait_2
                    end
                    local am3_2 = am2_1 or "desired trait"
                    aou("Trait Match", am1_1 .. " matched your desired trait (" .. tostring(am3_2) .. ").", Toggles.PingTraitMatch.Value)
                end)
            end
            pcall(function()
                local GuiService = game:GetService("GuiService")
                local ane = {
                    [Enum.ConnectionError.DisconnectRejoin] = true,
                    [Enum.ConnectionError.DisconnectClientRequest] = true,
                    [Enum.ConnectionError.ReplacementReady] = true
                }
                local RobloxPromptGui = game:GetService("CoreGui"):FindFirstChild("RobloxPromptGui")
                local anh = RobloxPromptGui and RobloxPromptGui:FindFirstChild("promptOverlay")
                if anh then
                    anh.ChildAdded:Connect(function(D5)
                        if not Toggles.SendDisconnectMessage then
                            return
                        end
                        if not Toggles.SendDisconnectMessage.Value then
                            return
                        end
                        local am8 = D5.Name == "ErrorPrompt" or string.find(D5.Name, "Error")
                        if not am8 then
                            return
                        end
                        local am8_1 = GuiService:GetErrorCode()
                        if am8_1.Value < Enum.ConnectionError.DisconnectErrors.Value then
                            return
                        end
                        if ane[am8_1] then
                            return
                        end
                        aou("Disconnected", LocalPlayer.Name .. " was disconnected from the game.", false)
                    end)
                end
            end)
            aox = {}
            aog = nil
            aor = function(Eg)
                local anj = {}
                if type(Eg.items) == "table" then
                    for k, v in pairs(Eg.items) do
                        if type(v) == "number" then
                            anj[k] = v
                        end
                    end
                end
                if type(Eg.stats) == "table" then
                    for k, v in pairs(Eg.stats) do
                        if type(v) == "number" then
                            anj[k] = v
                        end
                    end
                end
                return anj
            end
            aol = function(En)
                aog = {}
                for k, v in pairs(En) do
                    aog[k] = v
                end
            end
            aov = function(Es)
                local anH = aor(Es)
                if not next(anH) then
                    return
                end
                if not aog then
                    aol(anH)
                    return
                end
                local Value = Options.WebhookItems.Value
                for k, v in pairs(Value) do
                    if v then
                        local anI_1 = anH[k] or 0
                        local anI_2 = aog[k] or 0
                        if anI_1 > anI_2 then
                            aou("Item Dropped", "Obtained " .. anI_1 - anI_2 .. "x " .. k .. " (total: " .. anI_1 .. ").", Toggles.PingItemDropped.Value)
                        end
                    end
                end
                aol(anH)
            end
            aoj = function(EG)
                if type(EG.bounties) ~= "table" then
                    return
                end
                for k, v in pairs(EG.bounties) do
                    local anV = type(v) == "table" and v.required and v.progress and v.progress >= v.required
                    if anV then
                        if not aox[k] then
                            aox[k] = true
                            aou("Bounty Complete", "Completed bounty: defeat " .. tostring(v.enemy) .. " in " .. tostring(v.world) .. ".", Toggles.PingBountyComplete.Value)
                        end
                    else
                        aox[k] = nil
                    end
                end
            end
            task.spawn(function()
                local an4_1
                local an8 = false
                repeat
                    task.wait(5)
                    if not Toggles.SendWebhook then
                        an8 = true
                    elseif Toggles.SendWebhook.Value then
                        local an3 = remote("Player", "get") or remote("Players", "get")
                        local an3_1
                        local an2 = an3
                        if an2 then
                            an3_1, an4_1 = pcall(function()
                                return an2:InvokeServer()
                            end)
                            local an5 = an3_1 and type(an4_1) == "table"
                            if an5 then
                                aov(an4_1)
                                aoj(an4_1)
                            end
                        end
                    else
                        aog = nil
                    end
                until an8
            end)
        end)(loader);
        (function(...)
            local aqD
            local aqB
            local Options
            local aqz
            Options = nil
            aqz = nil
            aqB = nil
            aqD = nil
            local aqr, aqs, Label, aqu, aqv, aqw, remote, Label2, Toggles
            aqz = ...
            Options = aqz.Options
            Toggles = aqz.Toggles
            local Tabs = aqz.Tabs
            remote = aqz.remote
            local aqF = { "Gems", "Gold" }
            local aqG = { "Easy", "Intermediate", "Nightmare", "Impossible" }
            aqr = function()
                local aoF
                aoF = nil
                local aoH_1
                local aoG = (remote("Player", "get"))
                local aoG_1
                local aoM = if aoG then 1 else 0
                local aoK = 3575 * aoM + 568 * (1 - aoM)
                local aoL = 2231 * aoM + 2905 * (1 - aoM)
                if not ((aoK * 3323 + aoL * 1532 + aoK * aoL) % 16777213 == 6496229) then
                    aoG = remote("Players", "get")
                end
                aoF = aoG
                if not aoF then
                    return nil
                end
                aoG_1, aoH_1 = pcall(function()
                    return aoF:InvokeServer()
                end)
                local aoI = aoG_1 and type(aoH_1) == "table"
                return aoI and aoH_1 or nil
            end
            local function aqH()
                local aoN = {}
                for i, v in ipairs({ "Story", "Squadron" }) do
                    local aoP = aqz.ModeData[v] or {}
                    for k in pairs(aoP) do
                        aoN[k] = true
                    end
                end
                local aoO_2 = {}
                for k in pairs(aoN) do
                    table.insert(aoO_2, k)
                end
                if #aoO_2 == 0 then
                    aoO_2 = { "GT City", "Marine Lobby", "Ninja Village" }
                end
                table.sort(aoO_2)
                return aoO_2
            end
            aqD = function(Fn, Fo)
                local ao2_1 = (aqz.ModeData[Fn] or {})[Fo] or 1
                local ao3_1 = {}
                local ao8 = 1
                while ao8 <= ao2_1 do
                    local ao9 = ao8
                    table.insert(ao3_1, tostring(ao9))
                    ao8 += 1
                end
                if #ao3_1 == 0 then
                    ao3_1 = { "1" }
                end
                return ao3_1
            end
            local AutoBountyGroup = Tabs.Bounty:AddLeftGroupbox("Auto Bounty")
            Label2 = AutoBountyGroup:AddLabel("Tickets: 0")
            Label = AutoBountyGroup:AddLabel("No bounties.", true)
            AutoBountyGroup:AddDropdown("BountyDifficulties", { Text = "Accept Difficulties", Values = aqG, Multi = true, Default = {} })
            AutoBountyGroup:AddDropdown("BountyRewards", { Text = "Accept Rewards", Values = aqF, Multi = true, AllowNull = true })
            AutoBountyGroup:AddToggle("BountyAutoAccept", { Text = "Auto Accept Offers", Default = false })
            AutoBountyGroup:AddToggle("BountyAutoClaim", { Text = "Auto Claim Completed", Default = false })
            AutoBountyGroup:AddToggle("BountyAutoDecline", { Text = "Auto Decline Others", Default = false })
            AutoBountyGroup:AddToggle("BountyAutoTicket", { Text = "Auto Use Ticket", Default = false })
            local AutoJoinBountyGroup = Tabs.Bounty:AddRightGroupbox("Auto Join Bounty")
            AutoJoinBountyGroup:AddToggle("BountyAutoJoin", { Text = "Auto Join Bounty", Default = false })
            AutoJoinBountyGroup:AddDropdown("BountyFarmMode", { Text = "Farm Mode", Values = { "Story", "Squadron" }, Default = 1 })
            aqB = aqH()
            for i, v in ipairs(aqB) do
                AutoJoinBountyGroup:AddDropdown("BountyAct_" .. v, { Text = v .. " Act", Values = aqD("Story", v), Default = 1 })
                AutoJoinBountyGroup:AddDropdown("BountyDifficulty_" .. v, { Text = v .. " Difficulty", Values = { "Normal", "Hard" }, Default = 2 })
            end
            local function aqE_1()
                local Value = Options.BountyFarmMode.Value
                for i, v in ipairs(aqB) do
                    local apc = Options["BountyAct_" .. v]
                    if apc then
                        local apd = aqD(Value, v)
                        apc:SetValues(apd)
                        if table.find(apd, apc.Value) then
                            apc:SetValue(apc.Value)
                        else
                            apc:SetValue(apd[1])
                        end
                    end
                end
            end
            Options.BountyFarmMode:OnChanged(aqE_1)
            aqE_1()
            aqu = function(FH, FI)
                local apl = false
                for k in pairs(FH) do
                    apl = true
                    break
                end
                if not apl then
                    return true
                end
                return FH[FI] == true
            end
            aqs = function(FM, FN)
                local apr = false
                for k in pairs(FM) do
                    apr = true
                    break
                end
                if not apr then
                    return true
                end
                local aps = FN or {}
                for k in pairs(aps) do
                    if FM[k] then
                        return true
                    end
                end
                return false
            end
            aqv = function(FS)
                local apC = Options["BountyAct_" .. FS]
                local apD = Options["BountyDifficulty_" .. FS]
                if not (apC and apD) then
                    return false
                end
                local joinRoom = aqz.joinRoom
                local apF = tonumber(apC.Value) or 1
                return joinRoom({ world = FS, act = apF, mode = Options.BountyFarmMode.Value, difficulty = apD.Value })
            end
            aqw = 0
            task.spawn(function()
                local ap_ = false
                repeat
                    task.wait(4)
                    if not Toggles.BountyAutoClaim then
                        ap_ = true
                    else
                        local apO = aqr()
                        local apP = apO and type(apO.bounties) == "table"
                        if apP then
                            local bounties = apO.bounties
                            local apQ_1 = apO.stats and apO.stats["Bounty Tickets"] or 0
                            Label2:SetText("Tickets: " .. apQ_1)
                            local apO_2 = {}
                            for k, v in pairs(bounties) do
                                local insert = table.insert
                                local enemy = v.enemy
                                local difficulty = v.difficulty
                                local progress = v.progress
                                local required = v.required
                                local apX = v.active and "active" or "inactive"
                                insert(apO_2, enemy .. " [" .. difficulty .. "] " .. progress .. "/" .. required .. " " .. apX)
                            end
                            local apR_2 = #apO_2 > 0 and table.concat(apO_2, "\n")
                            local apO_3 = apR_2 or "No bounties."
                            Label:SetText(apO_3)
                            if Toggles.BountyAutoClaim.Value then
                                local apN = remote("Bounties", "claim")
                                if apN then
                                    for k, v in pairs(bounties) do
                                        local ap9 = k
                                        if v.active and v.progress >= v.required then
                                            pcall(function()
                                                apN:InvokeServer(tonumber(ap9))
                                            end)
                                            task.wait(0.3)
                                        end
                                    end
                                end
                            end
                            for k, v in pairs(bounties) do
                                local aqd = k
                                if not v.active then
                                    local apO_5 = aqu(Options.BountyDifficulties.Value, v.difficulty) and aqs(Options.BountyRewards.Value, v.rewards)
                                    local apR_3 = apO_5
                                    if apO_5 then
                                        apO_5 = Toggles.BountyAutoAccept.Value
                                    end
                                    if apO_5 then
                                        local apM = remote("Bounties", "accept")
                                        if apM then
                                            pcall(function()
                                                apM:InvokeServer(tonumber(aqd))
                                            end)
                                            task.wait(0.3)
                                        end
                                    else
                                        local apO_6 = not apR_3
                                        if apO_6 ~= false then
                                            apO_6 = Toggles.BountyAutoDecline.Value
                                        end
                                        if apO_6 then
                                            local apK = remote("Bounties", "decline")
                                            if apK then
                                                pcall(function()
                                                    apK:InvokeServer(tonumber(aqd))
                                                end)
                                                task.wait(0.3)
                                            end
                                        end
                                    end
                                end
                            end
                            if Toggles.BountyAutoTicket.Value and apQ_1 > 0 then
                                local apO_8 = false
                                for k, v in pairs(bounties) do
                                    if not v.active then
                                        apO_8 = true
                                        break
                                    end
                                end
                                if not apO_8 then
                                    local apL = remote("Bounties", "use_ticket")
                                    if apL then
                                        pcall(function()
                                            apL:InvokeServer()
                                        end)
                                    end
                                end
                            end
                            local apO_9 = Toggles.BountyAutoJoin.Value and remote("Play", "create_room") and os.clock() - aqw > 12
                            if apO_9 then
                                for k, v in pairs(bounties) do
                                    if v.active and v.progress < v.required then
                                        aqw = os.clock()
                                        aqv(v.world)
                                        break
                                    end
                                end
                            end
                        end
                    end
                until ap_
            end)
        end)(loader);
        (function(...)
            local _VirtualUser
            local Library
            local arB
            local imageButton
            local Toggles
            local arK
            local arz
            local arC
            local arN
            local _TweenService
            local arF
            local arI
            local Position
            local screenGui
            local arO
            local arD
            Position = nil
            Library = nil
            arz = nil
            arB = nil
            arC = nil
            arD = nil
            Toggles = nil
            arF = nil
            _VirtualUser = nil
            arI = nil
            arK = nil
            screenGui = nil
            imageButton = nil
            arN = nil
            arO = nil
            _TweenService = nil
            local LocalPlayer
            arC = ...
            Library = arC.Library
            local Options = arC.Options
            Toggles = arC.Toggles
            local Tabs = arC.Tabs
            LocalPlayer = arC.LocalPlayer
            _VirtualUser = arC._VirtualUser
            local _UserInputService = arC._UserInputService
            _TweenService = arC._TweenService
            local MenuGroup = Tabs.Settings:AddLeftGroupbox("Menu")
            MenuGroup:AddToggle("AntiAFK", { Text = "Anti-AFK", Default = true })
            LocalPlayer.Idled:Connect(function()
                if Toggles.AntiAFK.Value then
                    _VirtualUser:CaptureController()
                    _VirtualUser:ClickButton2(Vector2.new())
                end
            end)
            MenuGroup:AddToggle("CustomCursor", {
                Text = "Custom Cursor",
                Default = false,
                Callback = function(GS)
                    Library.ShowCustomCursor = GS
                end
            })
            MenuGroup:AddDropdown("DPIScale", {
                Text = "DPI Scale",
                Values = { "50%", "75%", "100%", "125%", "150%" },
                Default = 3,
                Callback = function(GU)
                    local aqU = tonumber((string.gsub(GU, "%%", ""))) or 100
                    Library:SetDPIScale(aqU)
                end
            })
            MenuGroup:AddToggle("AutoExecute", {
                Text = "Auto Execute",
                Default = false,
                Callback = function(GW)
                    local aqX
                    arC.AutoExecute = GW
                    if not GW then
                        return
                    end
                    local aqZ = syn and syn.queue_on_teleport or queue_on_teleport
                    if not aqZ then
                        aqZ = fluxus and fluxus.queue_on_teleport
                    end
                    aqX = aqZ
                    if not aqX then
                        Library:Notify({
                            Title = "Auto Execute",
                            Description = "queue_on_teleport is not supported by your executor.",
                            Time = 4
                        })
                        return
                    end
                    if arC.AutoExecuteConnection then
                        return
                    end
                    arC.AutoExecuteConnection = LocalPlayer.OnTeleport:Connect(function()
                        if arC.AutoExecute then
                            aqX('loadstring(game:HttpGet("' .. arC.LoaderUrl .. '"))()')
                        end
                    end)
                end
            })
            MenuGroup:AddToggle("AutoHideUI", {
                Text = "Auto Hide UI",
                Default = false,
                Callback = function(G6)
                    if Library.ScreenGui then
                        Library.ScreenGui.Enabled = not G6
                    end
                end
            })
            MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
            Library.ToggleKeybind = Options.MenuKeybind
            MenuGroup:AddButton("Unload", function()
                if arC.AutoExecuteConnection then
                    arC.AutoExecuteConnection:Disconnect()
                    arC.AutoExecuteConnection = nil
                end
                if getgenv then
                    getgenv().OuroborosHubAnimeSquadron = nil
                end
                Library:Unload()
            end)
            arC.SaveManager:SetLibrary(Library)
            arC.SaveManager:IgnoreThemeSettings()
            arC.SaveManager:SetFolder(arC.BaseFolder)
            arC.ThemeManager:SetLibrary(Library)
            arC.ThemeManager:SetFolder("OuroborosHub")
            arC.ThemeManager.DefaultTheme = "Jester"
            arC.ThemeManager:ApplyToTab(Tabs.Settings)
            arC.SaveManager:BuildConfigSection(Tabs.Settings)
            arC.SaveManager:LoadAutoloadConfig()
            arI = "setting_" .. LocalPlayer.Name
            pcall(function()
                arC.SaveManager:Load(arI)
            end)
            pcall(function()
                local aq8 = isfile and isfile(arC.BaseFolder .. "/settings/" .. arI .. ".json")
                if not aq8 then
                    arC.SaveManager:Load("autosave")
                end
            end)
            arK = false
            local function arA()
                if arK then
                    return
                end
                arK = true
                task.delay(0.5, function()
                    arK = false
                    pcall(function()
                        arC.SaveManager:Save(arI)
                    end)
                end)
            end
            for k, v in pairs(Toggles) do
                local Changed
                local arS_1 = type(v) == "table" and v.OnChanged
                if arS_1 then
                    Changed = v.Changed
                    v:OnChanged(function(...)
                        arA()
                        if Changed then
                            Changed(...)
                        end
                    end)
                end
            end
            for k, v in pairs(Options) do
                local Changed
                local arR_1 = type(v) == "table" and v.OnChanged
                if arR_1 then
                    Changed = v.Changed
                    v:OnChanged(function(...)
                        arA()
                        if Changed then
                            Changed(...)
                        end
                    end)
                end
            end
            arA()
            screenGui = Instance.new("ScreenGui")
            screenGui.Name = "OuroborosToggle"
            screenGui.ResetOnSpawn = false
            screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            local arR_2 = gethui and gethui()
            local arS_2 = arR_2 or game:GetService("CoreGui")
            screenGui.Parent = arS_2
            imageButton = Instance.new("ImageButton")
            imageButton.Size = UDim2.fromOffset(76, 76)
            imageButton.Position = UDim2.fromOffset(24, 0)
            imageButton.AnchorPoint = Vector2.new(0, 0)
            imageButton.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
            imageButton.BackgroundTransparency = 0.1
            imageButton.Image = "rbxassetid://91400086538074"
            imageButton.ScaleType = Enum.ScaleType.Fit
            imageButton.AutoButtonColor = true
            imageButton.Parent = screenGui
            local uICorner = Instance.new("UICorner")
            uICorner.CornerRadius = UDim.new(0, 12)
            uICorner.Parent = imageButton
            local uIStroke = Instance.new("UIStroke")
            uIStroke.Color = Color3.fromRGB(80, 80, 95)
            uIStroke.Thickness = 1
            uIStroke.Transparency = 0.3
            uIStroke.Parent = imageButton
            local uIPadding = Instance.new("UIPadding")
            uIPadding.PaddingTop = UDim.new(0, 6)
            uIPadding.PaddingBottom = UDim.new(0, 6)
            uIPadding.PaddingLeft = UDim.new(0, 6)
            uIPadding.PaddingRight = UDim.new(0, 6)
            uIPadding.Parent = imageButton
            arz = 12
            arF = 76
            arO = function(HM, HN, HO)
                local AbsoluteSize = screenGui.AbsoluteSize
                local ark = math.max(arz, AbsoluteSize.X - arF - arz)
                local arl = math.max(arz, AbsoluteSize.Y - arF - arz)
                HM = math.clamp(HM, arz, ark)
                HN = math.clamp(HN, arz, arl)
                if HO then
                    HM = HM + arF / 2 < AbsoluteSize.X / 2 and arz or ark
                end
                return HM, HN
            end
            task.defer(function()
                local HY, HZ = arO(arz, screenGui.AbsoluteSize.Y / 2 - arF / 2, true)
                imageButton.Position = UDim2.fromOffset(HY, HZ)
            end)
            arB, Position, arN, arD = false, nil, nil, false
            imageButton.InputBegan:Connect(function(H4)
                if H4.UserInputType == Enum.UserInputType.MouseButton1 or H4.UserInputType == Enum.UserInputType.Touch then
                    arB, arD = true, false
                    Position = H4.Position
                    arN = Vector2.new(imageButton.Position.X.Offset, imageButton.Position.Y.Offset)
                end
            end)
            _UserInputService.InputChanged:Connect(function(Ib)
                local arr_1
                local arq_2
                local arp = arB
                if arp then
                    arp = Ib.UserInputType == Enum.UserInputType.MouseMovement or Ib.UserInputType == Enum.UserInputType.Touch
                end
                if arp then
                    local arp_1 = Ib.Position - Position
                    if arp_1.Magnitude > 4 then
                        arD = true
                    end
                    arq_2, arr_1 = arO(arN.X + arp_1.X, arN.Y + arp_1.Y, false)
                    imageButton.Position = UDim2.fromOffset(arq_2, arr_1)
                end
            end)
            _UserInputService.InputEnded:Connect(function(Io)
                local aru_2
                local art = arB
                local art_1
                if art then
                    art = Io.UserInputType == Enum.UserInputType.MouseButton1 or Io.UserInputType == Enum.UserInputType.Touch
                end
                if art then
                    arB = false
                    aru_2, art_1 = arO(imageButton.Position.X.Offset, imageButton.Position.Y.Offset, true)
                    _TweenService:Create(imageButton, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = UDim2.fromOffset(aru_2, art_1) }):Play()
                end
            end)
            imageButton.MouseButton1Click:Connect(function()
                if arD then
                    return
                end
                if Library.ScreenGui then
                    Library.ScreenGui.Enabled = not Library.ScreenGui.Enabled
                end
            end)
        end)(loader)
    end
    LF_1 = (LF_1 + 2) % 4
until (LF_1 * 1 + 0) % 4 == 1
