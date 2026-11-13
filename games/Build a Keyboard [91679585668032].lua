local fI
local fm
local WorkerConfiguration
local fL
local UpgradesConfiguration
local fO
local fv
local fR
local Options
local fU
local NetworkShared
local fE
local connection
local fo
local fN
local fr
local fu
local fx
local fT
local fA
local fG
local RebirthConfiguration
local fJ
local fM
local ft
local fP
local fw
local Library
local Toggles
local fF
local function fn62()
    local gA = fx(NetworkShared.RequestItemShopState)
    local gB = gA and gA.Success and type(gA.Items) == "table"
    if gB then
        fM = gA
    end
    return fM
end
local function fn76()
    local gZ = fT()
    if not gZ then
        return nil
    end
    local Utils = gZ:FindFirstChild("Utils")
    local gZ_1 = Utils and Utils:FindFirstChild("Roll")
    local g__1 = gZ_1
    if gZ_1 then
        gZ_1 = g__1:FindFirstChild("RollKeycapsMain")
    end
    local g__2 = gZ_1
    if gZ_1 then
        gZ_1 = g__2:FindFirstChild("RollkeyBase")
    end
    local g__3 = gZ_1
    if gZ_1 then
        gZ_1 = g__3:FindFirstChild("Rollkey")
    end
    return gZ_1
end
local function fn86(b3)
    b3:AddLeftGroupbox("Discord"):AddButton({ Text = "Join Discord For Dupe", Func = fv })
end
local function fn107()
    return fO() - fU(Options.MoneyReserve)
end
local function worker()
    while not Library.Unloaded do
        fP()
        task.wait(1)
    end
end
local function fn133()
    if setclipboard then
        setclipboard(fw)
    elseif toclipboard then
        toclipboard(fw)
    end
    Library:Notify("Copied Discord invite to clipboard")
end
local function fn156()
    local gW = fT()
    if not gW then
        return nil
    end
    local Utils = gW:FindFirstChild("Utils")
    local gW_1 = Utils and Utils:FindFirstChild("Keyboard")
    local gX_1 = gW_1
    if gW_1 then
        gW_1 = gX_1:FindFirstChild("Keyboard")
    end
    local gX_2 = gW_1
    if gW_1 then
        gW_1 = gX_2:FindFirstChild("Utils")
    end
    local gX_3 = gW_1
    if gW_1 then
        gW_1 = gX_3:FindFirstChild("Keycap")
    end
    return gW_1
end
local function fn160()
    Library.ScreenGui.Parent = fI:WaitForChild("PlayerGui")
end
local function fn165()
    if connection then
        connection:Disconnect()
        connection = nil
    end
    print("Build a Keyboard unloaded")
end
local function fn169()
    local Slots = workspace:FindFirstChild("Slots")
    if not Slots then
        return nil
    end
    for i, child in ipairs(Slots:GetChildren()) do
        if tostring(child:GetAttribute("OwnerUserId")) == tostring(fI.UserId) then
            return child:FindFirstChild("BasePlayer")
        end
    end
    return nil
end
local function fn185(bc)
    local hp = UpgradesConfiguration.GetUpgrade(bc)
    if not hp then
        return false
    end
    local hq = fo(bc)
    if hq >= hp.MaxLevel then
        return false
    end
    local GetRequiredRebirthForNextLevel = UpgradesConfiguration.GetRequiredRebirthForNextLevel
    local hr = (tonumber(fR.Rebirth))
    local hx = if hr then 1 else 0
    local hv = 3719 * hx + 1921 * (1 - hx)
    local hw = 3562 * hx + 2725 * (1 - hx)
    if not ((hv * 2756 + hw * 2344 + hv * hw) % 16777213 == 15068757) then
        hr = 0
    end
    if GetRequiredRebirthForNextLevel(bc, hq, hr) then
        return false
    end
    local hp_2 = UpgradesConfiguration.GetPrice(bc, hq)
    if hp_2 > fE() then
        return false
    end
    local hr_1 = fx(NetworkShared.RequestUpgradePurchase, { upgradeId = bc })
    if hr_1 and hr_1.ok then
        local hs_1 = fO()
        local ht = tonumber(hr_1.price) or hp_2
        fR.Money = hs_1 - ht
        local Upgrades = fR.Upgrades
        local hs_2 = (tonumber(hr_1.level))
        local hA = if hs_2 then 1 else 0
        local hy = 2818 * hA + 2118 * (1 - hA)
        local hz = 2738 * hA + 1264 * (1 - hA)
        if not ((hy * 2523 + hz * 3370 + hy * hz) % 16777213 == 7275345) then
            hs_2 = hq + 1
        end
        Upgrades[bc] = hs_2
        return true
    end
    return false
end
local function autoUpgradeWorkersLoop()
    while not Library.Unloaded do
        if fR then
            for i, v in ipairs(fm) do
                if Toggles[v.Toggle].Value then
                    while fN(v.Id) do
                        task.wait(0.1)
                    end
                end
            end
            if Toggles.AutoUpgradeWorkers.Value then
                fF()
            end
        end
        task.wait(fU(Options.UpgradeDelay))
    end
end
local function autoBuySoundsLoop()
    while not Library.Unloaded do
        if Toggles.AutoBuySounds.Value or Toggles.AutoBuySkins.Value then
            fA()
            if Toggles.AutoBuySounds.Value then
                fu("Sound")
            end
            if Toggles.AutoBuySkins.Value then
                fu("Keyboard")
            end
        end
        task.wait(fU(Options.ShopDelay))
    end
end
local function onUnload()
    Library:Unload()
end
local function fn253()
    if not fR then
        return {}
    end
    local Keyboard = fR.Keyboard
    local g5 = Keyboard and Keyboard.Discovered
    if type(g5) ~= "table" then
        return {}
    end
    local g5_1 = {}
    for k, v in pairs(g5) do
        if v then
            local g4_2 = tonumber(k)
            if g4_2 then
                g5_1[#g5_1 + 1] = g4_2
            end
        end
    end
    table.sort(g5_1)
    return g5_1
end
local function fn257(a8)
    local hn = not fR or type(fR.Upgrades) ~= "table"
    if hn then
        return 0
    end
    local hn_1 = tonumber(fR.Upgrades[a8]) or 0
    return hn_1
end
local function fn259()
    local hZ = not fR or type(fR.Roll) ~= "table"
    if hZ then
        return
    end
    local PendingResults = fR.Roll.PendingResults
    local h_ = type(PendingResults) == "table" and PendingResults.Rolls
    if type(h_) ~= "table" then
        return
    end
    local h__1 = fU(Options.MaxRollPrice)
    for k, v in pairs(h_) do
        local hZ_3 = type(v) == "table" and v.Results
        if type(hZ_3) == "table" then
            for k2, v2 in pairs(hZ_3) do
                local hZ_4 = tonumber(v2.Price) or 0
                local hZ_5 = not v2.Claimed
                if hZ_5 ~= false then
                    hZ_5 = fG[v2.Rarity]
                end
                if hZ_5 then
                    hZ_5 = h__1 <= 0 or hZ_4 <= h__1
                end
                if hZ_5 then
                    hZ_5 = hZ_4 <= fE()
                end
                if hZ_5 then
                    local RequestClaimRollSkin = NetworkShared.RequestClaimRollSkin
                    local h1_2 = v.RollId or k
                    local h2 = fx(RequestClaimRollSkin, { rollId = h1_2, slot = tonumber(k2) })
                    if h2 and h2.ok then
                        fR.Money = fO() - hZ_4
                    end
                end
            end
        end
    end
end
local function fn273()
    local gF = fR and tonumber(fR.Money)
    return gF or 0
end
local function autoRebirthLoop()
    while not Library.Unloaded do
        if Toggles.AutoRebirth.Value and fR then
            local iU_1 = tonumber(fR.Rebirth) or 0
            if iU_1 < RebirthConfiguration.MaxRebirth then
                if fO() >= RebirthConfiguration.GetCostForRebirth(iU_1) then
                    local iU_2 = fx(NetworkShared.RequestRebirth)
                    if iU_2 and iU_2.ok then
                        fP()
                    end
                end
            end
        end
        task.wait(fU(Options.RebirthDelay))
    end
end
local function fn326()
    local hB = not fR or type(fR.Workers) ~= "table"
    if hB then
        return
    end
    local hB_1 = tonumber(fR.Workers.Count) or 0
    local Upgrades = fR.Workers.Upgrades
    local hD = hB_1 <= 0
    local hJ = if hD then 1 else 0
    local hH = 1623 * hJ + 1825 * (1 - hJ)
    local hI = 1506 * hJ + 2367 * (1 - hJ)
    if not ((hH * 1273 + hI * 2307 + hH * hI) % 16777213 == 7984659) then
        hD = type(Upgrades) ~= "table"
    end
    if hD then
        return
    end
    local hM = 1
    while hM <= hB_1 do
        local hN = hM
        local hC_1 = WorkerConfiguration.GetEfficiencyLevel(Upgrades, hN)
        if hC_1 < WorkerConfiguration.EfficiencyUpgrade.MaxLevel then
            local hD_1 = WorkerConfiguration.GetEfficiencyPrice(hC_1)
            if hD_1 <= fE() then
                local hE = fx(NetworkShared.RequestWorkerUpgradePurchase, { workerIndex = hN })
                if not (hE and hE.ok) then
                    return
                end
                fR.Money = fO() - hD_1
                local hD_2 = tonumber(hE.level) or hC_1 + 1
                Upgrades[hN] = hD_2
            end
        end
        hM += 1
    end
end
local function autoEquipBestLoop()
    while not Library.Unloaded do
        if Toggles.AutoEquipBest.Value then
            fx(NetworkShared.RequestEquipBest)
        end
        task.wait(fU(Options.EquipDelay))
    end
end
local function fn355()
    local Character = fI.Character
    local gJ = Character and Character:FindFirstChild("HumanoidRootPart")
    return gJ
end
local function onBuyRarities(b9)
    fG = {}
    for k, v in pairs(b9) do
        if v then
            fG[k] = true
        end
    end
end
local function fn381(aa)
    local gD = tonumber(aa.Value) or 0
    return gD
end
local function fn405(aW)
    if aW:IsA("BasePart") then
        return aW.Position
    end
    local hg = if aW:IsA("Model") then 1 else 0
    if hg == 1 then
        return aW:GetPivot().Position
    end
    return nil
end
local function fn406(a4)
    while fJ do
        if Library.Unloaded then
            return
        end
        task.wait()
    end
    fJ = true
    pcall(a4)
    fJ = false
end
local function onAntiAfk(ck)
    if ck then
        if not connection then
            connection = fI.Idled:Connect(function()
                fL:CaptureController()
                fL:ClickButton2(Vector2.new())
            end)
        end
    elseif connection then
        connection:Disconnect()
        connection = nil
    end
end
local function fn410()
    local gy = fx(NetworkShared.GetPlayerData)
    if gy then
        fR = gy
    end
    return fR
end
local function fn417(aY)
    local hh = ft()
    local hi = aY and fr(aY)
    if not hh or not hi then
        return false
    end
    hh.CFrame = CFrame.new(hi + Vector3.new(0, 3.2, 0))
    return true
end
local function fn488(bD)
    if not fM then
        return
    end
    for k, v in pairs(fM.Items) do
        local hP = v.Category == bD and not v.Owned and not v.StockDisabled
        if hP then
            local hQ_1 = tonumber(v.Stock) or 0
            hP = hQ_1 > 0
        end
        if hP then
            local hQ_2 = tonumber(v.Price) or 0
            hP = hQ_2 > 0
        end
        if hP then
            local hQ_3 = tonumber(v.Price) or 0
            hP = hQ_3 <= fE()
        end
        if hP then
            local hP_1 = fx(NetworkShared.RequestItemShopPurchase, { ItemId = v.Id, Currency = "Money" })
            if hP_1 and hP_1.Success then
                local hQ_5 = fO()
                local hR = tonumber(v.Price) or 0
                fR.Money = hQ_5 - hR
            end
            local hQ_6 = hP_1 and type(hP_1.State) == "table" and hP_1.State.Success
            if hQ_6 then
                fM = hP_1.State
            end
        end
    end
end
fm = nil
RebirthConfiguration = nil
fo = nil
WorkerConfiguration = nil
fr = nil
UpgradesConfiguration = nil
ft = nil
fu = nil
fv = nil
fw = nil
fx = nil
Options = nil
fA = nil
NetworkShared = nil
Toggles = nil
fE = nil
fF = nil
fG = nil
connection = nil
fI = nil
fJ = nil
fL = nil
fM = nil
fN = nil
fO = nil
fP = nil
fR = nil
Library = nil
fT = nil
fU = nil
local fq, fz, fD, fK, fQ, fV
local ItemShopGroup
local fZ_2
fL, fI = nil, nil
local fX = 3
repeat
    local f__1 = {
        "igjujqqzjxfy",
        "ijuob",
        "twbymhnhig",
        "heiuquxypq",
        "nmvqkrypm",
        "hwzyzq",
        "ezsiattv",
        "usbn",
        "cmflvf",
        "aolagqvja",
        "zeapxj"
    }
    if f__1[(fX * 52 + 40) % 11 + 1] <= f__1[(fX * 52 + 40) % 11 + 1] then
        local Players = game:GetService("Players")
        fZ_2 = game:GetService("ReplicatedStorage")
        game:GetService("ReplicatedFirst")
        fL = game:GetService("VirtualUser")
        fI = Players.LocalPlayer
    else
        fZ_2 = game:GetService("Players")
        fL = game:GetService("ReplicatedStorage")
        fI = game:GetService("ReplicatedFirst")
        game:GetService("VirtualUser")
    end
    fX = (fX + 1) % 4
until (fX * 3 + 0) % 4 == 0
if getgenv then
    getgenv().gethui = function()
        return fI:WaitForChild("PlayerGui")
    end
end
NetworkShared, UpgradesConfiguration, WorkerConfiguration, RebirthConfiguration, Library, Toggles, Options, fw, fm, fR, fM, fJ, fG, fv = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Shared = fZ_2:WaitForChild("Shared")
NetworkShared = require(Shared:WaitForChild("Remotes"):WaitForChild("NetworkShared"))
local Configurations = fZ_2:WaitForChild("Configurations")
local Gameplay = Configurations:WaitForChild("Gameplay")
UpgradesConfiguration = require(Gameplay:WaitForChild("UpgradesConfiguration"))
WorkerConfiguration = require(Gameplay:WaitForChild("WorkerConfiguration"))
RebirthConfiguration = require(Gameplay:WaitForChild("RebirthConfiguration"))
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
pcall(fn160)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
fw = "https://discord.gg/ehKVq7pf7v"
fv = fn133
fm = {
    { Toggle = "AutoSpawnRate", Id = "SpawnRate" },
    { Toggle = "AutoMoneyMultiplier", Id = "MoneyMultiplier" },
    { Toggle = "AutoKeycapLuck", Id = "UpgradeKeycapLuck" },
    { Toggle = "AutoRollLuck", Id = "LuckMultiplier" },
    { Toggle = "AutoKeycapRolls", Id = "KeycapRolls" },
    { Toggle = "AutoRollSpeed", Id = "RollSpeed" },
    { Toggle = "AutoBuyKeycap", Id = "+1Keycap" },
    { Toggle = "AutoBuyWorker", Id = "+1Worker" }
}
local RarityOrder = require(Gameplay:WaitForChild("KeycapSkinsConfiguration")).RarityOrder
fR = nil
fM = nil
fJ = false
fG = {}
for i, v in ipairs(RarityOrder) do
    fG[v] = true
end
fx, fP, fA, fU, fO, fE, ft, fT, fD, fK, fQ, fr, fV, fz, fo, fN, fF, fu, fq = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
fx = function(I, J)
    local gw_1
    local gv_1
    gv_1, gw_1 = pcall(function()
        return I:Invoke(J):expect()
    end)
    if not gv_1 then
        return nil
    end
    return gw_1
end
fP = fn410
fA = fn62
fU = fn381
fO = fn273
fE = fn107
ft = fn355
fT = fn169
fD = fn156
fK = fn76
fQ = fn253
fr = fn405
fV = fn417
fz = fn406
fo = fn257
fN = fn185
fF = fn326
fu = fn488
fq = fn259
local Window = Library:CreateWindow({
    Title = "Build a Keyboard",
    Footer = "Ouroboros Hub",
    Size = UDim2.fromOffset(900, 640),
    ShowCustomCursor = false
})
Library.ShowCustomCursor = false
local fZ_3 = {
    Main = Window:AddTab("Main", "keyboard"),
    Upgrades = Window:AddTab("Upgrades", "trending-up"),
    Shop = Window:AddTab("Shop", "shopping-bag"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in pairs(fZ_3) do
    fn86(v)
end
ItemShopGroup, connection = nil, nil
local KeycapsGroup = fZ_3.Main:AddLeftGroupbox("Keycaps", "square-mouse-pointer")
KeycapsGroup:AddToggle("AutoCollect", { Text = "Auto Collect Keycaps", Default = false })
KeycapsGroup:AddSlider("CollectDwell", { Text = "Press Dwell", Default = 0.16, Min = 0.1, Max = 1, Rounding = 2 })
KeycapsGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best Keycap", Default = false })
KeycapsGroup:AddSlider("EquipDelay", { Text = "Equip Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
local f__2 = fZ_3.Main:AddRightGroupbox("Rolls", "dices")
f__2:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
f__2:AddSlider("RollSettle", { Text = "Roll Settle", Default = 0.2, Min = 0.1, Max = 1, Rounding = 2 })
f__2:AddToggle("AutoClaimRolls", { Text = "Auto Buy Rolls", Default = false })
f__2:AddDropdown("BuyRarities", {
    Text = "Buy Rarities",
    Values = RarityOrder,
    Default = RarityOrder,
    Multi = true,
    Callback = onBuyRarities
})
f__2:AddInput("MaxRollPrice", { Text = "Max Buy Price", Default = "0", Numeric = true, Finished = true })
f__2:AddSlider("RollDelay", { Text = "Loop Delay", Default = 0.5, Min = 0.2, Max = 10, Rounding = 1 })
local RebirthGroup = fZ_3.Main:AddRightGroupbox("Rebirth", "rotate-ccw")
RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
RebirthGroup:AddSlider("RebirthDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
local AutoUpgradeGroup = fZ_3.Upgrades:AddLeftGroupbox("Auto Upgrade", "arrow-big-up-dash")
AutoUpgradeGroup:AddToggle("AutoSpawnRate", { Text = "Auto Upgrade Spawn Cooldown", Default = false })
AutoUpgradeGroup:AddToggle("AutoMoneyMultiplier", { Text = "Auto Upgrade Money Multiplier", Default = false })
AutoUpgradeGroup:AddToggle("AutoKeycapLuck", { Text = "Auto Upgrade Keycap Luck", Default = false })
AutoUpgradeGroup:AddToggle("AutoRollLuck", { Text = "Auto Upgrade Roll Luck", Default = false })
AutoUpgradeGroup:AddToggle("AutoKeycapRolls", { Text = "Auto Upgrade Keycap Rolls", Default = false })
AutoUpgradeGroup:AddToggle("AutoRollSpeed", { Text = "Auto Upgrade Roll Speed", Default = false })
local AutoExpandGroup = fZ_3.Upgrades:AddRightGroupbox("Auto Expand", "plus")
AutoExpandGroup:AddToggle("AutoBuyKeycap", { Text = "Auto Buy Keycaps", Default = false })
AutoExpandGroup:AddToggle("AutoBuyWorker", { Text = "Auto Buy +1 Worker", Default = false })
AutoExpandGroup:AddToggle("AutoUpgradeWorkers", { Text = "Auto Upgrade All Workers", Default = false })
local SpendingGroup = fZ_3.Upgrades:AddRightGroupbox("Spending", "wallet")
if ((AutoExpandGroup or ItemShopGroup) and (not ItemShopGroup and ItemShopGroup) or (not AutoExpandGroup or not ItemShopGroup) and (not ItemShopGroup and not ItemShopGroup)) and not ((AutoExpandGroup or ItemShopGroup) and (not ItemShopGroup and ItemShopGroup) or (not AutoExpandGroup or not ItemShopGroup) and (not ItemShopGroup and not ItemShopGroup)) then
    ItemShopGroup:AddInput("MoneyReserve", { Numeric = true, Text = "Keep Money Reserve", Finished = true, Default = "0" })
    ItemShopGroup:AddSlider("UpgradeDelay", { Default = 1, Max = 10, Text = "Loop Delay", Rounding = 1, Min = 0.2 })
    fZ_3 = SpendingGroup.Shop:AddLeftGroupbox("Item Shop", "store")
else
    SpendingGroup:AddInput("MoneyReserve", { Text = "Keep Money Reserve", Default = "0", Numeric = true, Finished = true })
    SpendingGroup:AddSlider("UpgradeDelay", { Text = "Loop Delay", Default = 1, Min = 0.2, Max = 10, Rounding = 1 })
    ItemShopGroup = fZ_3.Shop:AddLeftGroupbox("Item Shop", "store")
end
ItemShopGroup:AddToggle("AutoBuySounds", { Text = "Auto Buy Sounds", Default = false })
ItemShopGroup:AddToggle("AutoBuySkins", { Text = "Auto Buy Keyboard Skins", Default = false })
ItemShopGroup:AddSlider("ShopDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
local MenuGroup = fZ_3.Settings:AddLeftGroupbox("Menu", "wrench")
MenuGroup:AddLabel("UI Keybind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "UI Keybind" })
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true, Callback = onAntiAfk })
MenuGroup:AddButton("Unload", onUnload)
Library.ToggleKeybind = Options.MenuKeybind
Library:OnUnload(fn165)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Mint")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/BuildAKeyboard")
SaveManager:BuildConfigSection(fZ_3.Settings)
ThemeManager:ApplyToTab(fZ_3.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
fP()
fA()
task.spawn(worker)
task.spawn(function()
    while not Library.Unloaded do
        if Toggles.AutoCollect.Value then
            local ix = fD()
            if ix then
                for i, v in ipairs(fQ()) do
                    if Library.Unloaded or not Toggles.AutoCollect.Value then
                        break
                    else
                        local iw = ix:FindFirstChild(tostring(v))
                        if iw then
                            fz(function()
                                fV(iw)
                                task.wait(fU(Options.CollectDwell))
                            end)
                        end
                    end
                end
            end
        end
        task.wait(0.1)
    end
end)
task.spawn(function()
    local iS = false
    repeat
        if not Library.Unloaded then
            if Toggles.AutoRoll.Value then
                local iO = fR and fR.Roll and tonumber(fR.Roll.NextRollAt)
                local iO_1 = iO or 0
                if workspace:GetServerTimeNow() >= iO_1 then
                    local iN = fK()
                    if iN then
                        fz(function()
                            if fV(iN) then
                                task.wait(fU(Options.RollSettle))
                                fV(iN)
                                local iG = fx(NetworkShared.RequestRoll)
                                if iG and iG.ok and fR then
                                    local Roll = fR.Roll
                                    local iI_1 = tonumber(iG.nextRollAt) or 0
                                    Roll.NextRollAt = iI_1
                                end
                            end
                        end)
                    end
                end
            end
            if Toggles.AutoClaimRolls.Value then
                fq()
            end
            task.wait(fU(Options.RollDelay))
        else
            iS = true
        end
    until iS
end)
task.spawn(autoEquipBestLoop)
task.spawn(autoRebirthLoop)
task.spawn(autoUpgradeWorkersLoop)
task.spawn(autoBuySoundsLoop)
