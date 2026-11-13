local Toggles
local RollTower
local cf
local cm
local Library
local Options
local ch
local ClaimAll
local EquipBestTowers
local function fn108(an)
    local OuroborosGroup = an:AddLeftGroupbox("Ouroboros", "message-circle")
    local Button = OuroborosGroup:AddButton({
        Text = "Join Discord for a Dupe",
        Func = function()
            if setclipboard then
                setclipboard(cm)
            end
            Library:Notify("Discord link copied", 3)
        end
    })
    if Button and Button.Base then
        if Library.Registry[Button.Base] then
            Library.Registry[Button.Base].TextColor3 = nil
        end
        Button.Base.TextColor3 = Color3.fromRGB(85, 255, 127)
    end
end
local function fn142()
    pcall(function()
        RollTower:InvokeServer()
    end)
end
local function fn168()
    return 3
end
local function fn300()
    for k, v in pairs(ch) do
        if Library.Unloaded or not Toggles.AutoUpgrades.Value then
            return
        end
        cf(k, v)
        task.wait(0.3)
    end
end
local function fn306()
    pcall(function()
        EquipBestTowers:InvokeServer()
    end)
end
local function fn326()
    return 10
end
local function fn327()
    return 10
end
local function fn332()
    pcall(function()
        ClaimAll:InvokeServer()
    end)
end
local function onUnload()
    Library:Unload()
end
local function fn364()
    return Options.RollDelay.Value
end
local function fn370()
    print("Anime RNG Defense unloaded")
end
local function fn374()
    return 5
end
Options = nil
Toggles = nil
cf = nil
EquipBestTowers = nil
ch = nil
Library = nil
RollTower = nil
ClaimAll = nil
cm = nil
local GetState, BuyUpgrade, GetUpgradeState, Claim
Library, Toggles, Options, RollTower, EquipBestTowers, GetUpgradeState, BuyUpgrade, GetState, Claim, ClaimAll, ch, cm, cf = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local ReplicatedStorage = game:GetService("ReplicatedStorage")
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
RollTower = Remotes:WaitForChild("Luck"):WaitForChild("RollTower")
EquipBestTowers = Remotes:WaitForChild("Towers"):WaitForChild("EquipBestTowers")
GetUpgradeState = Remotes:WaitForChild("Upgrades"):WaitForChild("GetUpgradeState")
BuyUpgrade = Remotes:WaitForChild("Upgrades"):WaitForChild("BuyUpgrade")
GetState = Remotes:WaitForChild("Achievements"):WaitForChild("GetState")
Claim = Remotes.Achievements:WaitForChild("Claim")
ClaimAll = Remotes:WaitForChild("Quests"):WaitForChild("ClaimAll")
ch = { Luck = "LuckMode", Money = "MoneyMode", RollSpeed = "RollSpeedMode" }
cf = function(x, y)
    local cY_1
    local cX_1
    if Options[y].Value ~= "Buy to Max" then
        return
    end
    cX_1, cY_1 = pcall(function()
        return GetUpgradeState:InvokeServer(x)
    end)
    local cZ = not cX_1 or type(cY_1) ~= "table" or cY_1.Success ~= true
    if cZ then
        return
    end
    if cY_1.IsMaxed then
        return
    end
    local cX_2 = cY_1.Coins or 0
    local cZ_1 = cY_1.CoinsCost
    local c5 = if cZ_1 then 1 else 0
    local c3 = 3860 * c5 + 3423 * (1 - c5)
    local c4 = 1472 * c5 + 1656 * (1 - c5)
    if not ((c3 * 1140 + c4 * 2546 + c3 * c4) % 16777213 == 13830032) then
        cZ_1 = 0
    end
    if cX_2 < cZ_1 then
        return
    end
    local cX_3 = cY_1.Crystals or 0
    local cZ_2 = cY_1.CrystalsCost
    local c2 = if cZ_2 then 1 else 0
    local c0 = 2193 * c2 + 2009 * (1 - c2)
    local c1 = 1999 * c2 + 2868 * (1 - c2)
    if not ((c0 * 2391 + c1 * 1036 + c0 * c1) % 16777213 == 11698234) then
        cZ_2 = 0
    end
    if cX_3 < cZ_2 then
        return
    end
    pcall(function()
        BuyUpgrade:InvokeServer(x)
    end)
end
local function cq()
    local dl_1
    local dk_1
    dk_1, dl_1 = pcall(function()
        return GetState:InvokeServer()
    end)
    local dm = not dk_1 or type(dl_1) ~= "table" or type(dl_1.Achievements) ~= "table"
    if dm then
        return
    end
    for k, v in pairs(dl_1.Achievements) do
        local ds = k
        if Library.Unloaded or not Toggles.AutoClaimAchievements.Value then
            return
        end
        if v.Claimable and not v.Claimed then
            pcall(function()
                Claim:InvokeServer(ds)
            end)
            task.wait(0.4)
        end
    end
end
local Window = Library:CreateWindow({
    Title = "Anime RNG Defense",
    Footer = "Ouroboros Hub - https://discord.gg/ehKVq7pf7v",
    Icon = 18657887261,
    NotifySide = "Right",
    Size = UDim2.fromOffset(920, 680)
})
local cp = { Main = Window:AddTab("Main", "dices"), Settings = Window:AddTab("Settings", "settings") }
cm = "https://discord.gg/ehKVq7pf7v"
fn108(cp.Main)
local RollingGroup = cp.Main:AddLeftGroupbox("Rolling", "dices")
local AutoRollToggle = RollingGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
AutoRollToggle:AddKeyPicker("AutoRollKey", { Default = "F", Text = "Auto Roll", Mode = "Toggle", SyncToggleState = true })
RollingGroup:AddSlider("RollDelay", { Text = "Roll Delay", Default = 0.5, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
local UnitsGroup = cp.Main:AddLeftGroupbox("Units", "swords")
UnitsGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
local ClaimsGroup = cp.Main:AddLeftGroupbox("Claims", "gift")
ClaimsGroup:AddToggle("AutoClaimAchievements", { Text = "Auto Claim Achievements", Default = false })
ClaimsGroup:AddToggle("AutoClaimQuests", { Text = "Auto Claim All Quests", Default = false })
local UpgradesGroup = cp.Main:AddRightGroupbox("Upgrades", "trending-up")
UpgradesGroup:AddToggle("AutoUpgrades", { Text = "Auto Upgrades", Default = false })
UpgradesGroup:AddDropdown("LuckMode", { Values = { "Off", "Buy to Max" }, Default = "Off", Text = "Luck" })
UpgradesGroup:AddDropdown("MoneyMode", { Values = { "Off", "Buy to Max" }, Default = "Off", Text = "Money" })
UpgradesGroup:AddDropdown("RollSpeedMode", { Values = { "Off", "Buy to Max" }, Default = "Off", Text = "Roll Speed" })
fn108(cp.Settings)
local MenuGroup = cp.Settings:AddLeftGroupbox("Menu", "wrench")
MenuGroup:AddLabel("Menu Keybind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu Keybind" })
MenuGroup:AddButton("Unload", onUnload)
Library.ToggleKeybind = Options.MenuKeybind
local function cs(aD, aE, aF)
    task.spawn(function()
        while not Library.Unloaded do
            if Toggles[aD].Value then
                pcall(aF)
            end
            task.wait(aE())
        end
    end)
end
cs("AutoRoll", fn364, fn142)
cs("AutoEquipBest", fn374, fn306)
cs("AutoUpgrades", fn168, fn300)
cs("AutoClaimAchievements", fn326, cq)
cs("AutoClaimQuests", fn327, fn332)
Library:OnUnload(fn370)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Mint")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/AnimeRNGDefense")
SaveManager:BuildConfigSection(cp.Settings)
ThemeManager:ApplyToTab(cp.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
