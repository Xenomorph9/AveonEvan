local eI
local eP
local CollectionService
local Library
local eH
local eD
local eO
local eG
local LocalPlayer
local eJ
local eQ
local eB
local function onAutoCollect(a8)
    eO.autoCollect = a8
end
local function onAutoUpgradeSelUnits(a3)
    eO.autoUpgradeSelUnits = a3
end
local function onAutoCollectIndex(ba)
    eO.autoCollectIndex = ba
end
local function onJoinForAnimeRNGDupe()
    local gf = getgenv and getgenv()
    local gg = gf or _G
    local gf_1 = (rawget(gg, "setclipboard"))
    local gl = if gf_1 then 1 else 0
    local gj = 3115 * gl + 2895 * (1 - gl)
    local gk = 3911 * gl + 697 * (1 - gl)
    if not ((gj * 3121 + gk * 953 + gj * gk) % 16777213 == 8854650) then
        gf_1 = setclipboard
    end
    if not gf_1 then
        gf_1 = toclipboard
    end
    local gl_1 = if gf_1 then 1 else 0
    local gj_1 = 2325 * gl_1 + 1681 * (1 - gl_1)
    local gk_1 = 3848 * gl_1 + 3000 * (1 - gl_1)
    if not ((gj_1 * 1017 + gk_1 * 1394 + gj_1 * gk_1) % 16777213 == 16675237) then
        gf_1 = syn and syn.write_clipboard
    end
    if not gf_1 then
        gf_1 = Clipboard and Clipboard.set
    end
    local gg_3 = false
    local gh = gf_1
    if gh then
        gg_3 = pcall(gh, eI)
    end
    local gg_4 = gg_3 and "Discord link copied to clipboard!" or "Clipboard unavailable: https://discord.gg/ehKVq7pf7v"
    Library:Notify({ Title = "Roll Anime", Description = gg_4, Time = 5 })
end
local function onAutoRebirth(bq)
    eO.autoRebirth = bq
end
local function onAutoEquipBestDice(aZ)
    eO.autoEquipBestDice = aZ
end
local function onUpgradeTargets(bn)
    eO.upgradeTargets = bn
end
local function onBuyTarget(bi)
    eO.buyTarget = bi
end
local function fn83()
    local fy = eQ()
    local fz = fy
    local fA = {}
    if fz then
        fz = fy.Dice
    end
    if fz then
        for k, v in fy.Dice do
            local fy_1 = tonumber(v) or 0
            if fy_1 > 0 and eG.Dice[k] then
                fA[#fA + 1] = k
            end
        end
    end
    table.sort(fA, function(M, N)
        return eH(M) > eH(N)
    end)
    return fA
end
local function worker3()
    while task.wait(1) do
        if Library.Unloaded then
            break
        end
        if eO.autoRebirth then
            pcall(function()
                eP:InvokeServer(eJ.REBIRTH)
            end)
        end
    end
end
local function onAutoEquipBest(aX)
    eO.autoEquipBest = aX
end
local function onAutoUpgradeAllUnits(a1)
    eO.autoUpgradeAllUnits = a1
end
local function fn119()
    local fI = {}
    for k, v in eG.Dice do
        local fJ = type(v) == "table"
        if fJ then
            local fK = tonumber(v.Price) or 0
            fJ = fK > 0
        end
        if fJ then
            fJ = not v.RobuxOnly
        end
        if fJ then
            fJ = not v.Hided
        end
        if fJ then
            fI[#fI + 1] = k
        end
    end
    table.sort(fI, function(W, X)
        return eH(W) > eH(X)
    end)
    return fI
end
local function onAutoUpgrade(bl)
    eO.autoUpgrade = bl
end
local function fn143()
    local Plots = workspace:FindFirstChild("Plots")
    local f_ = Plots and Plots:FindFirstChild(LocalPlayer.Name .. "'s plot")
    local fZ_1 = f_
    if f_ then
        f_ = fZ_1:FindFirstChild("Items")
    end
    local fZ_2 = f_
    if f_ then
        f_ = fZ_2:GetChildren()
    end
    local fZ_3 = {}
    local f0 = f_
    local f4 = if f0 then 1 else 0
    local f2 = 1115 * f4 + 302 * (1 - f4)
    local f3 = 868 * f4 + 3452 * (1 - f4)
    if not ((f2 * 3327 + f3 * 1556 + f2 * f3) % 16777213 == 6028033) then
        f0 = fZ_3
    end
    return f0
end
local function worker2()
    while task.wait(1) do
        if Library.Unloaded then
            break
        end
        if eO.autoCollectIndex then
            pcall(function()
                eP:InvokeServer(eJ.SPECIAL_UI, "ClaimAllIndexTrinkets")
            end)
        end
    end
end
local function fn167()
    local Plots = workspace:FindFirstChild("Plots")
    local f6 = Plots and Plots:FindFirstChild(LocalPlayer.Name .. "'s plot")
    local f6_1 = {}
    if f6 then
        for k, v in CollectionService:GetTagged("Podium") do
            local f7 = v.Parent and v.Parent.Parent == f6 and v:FindFirstChild("Collect")
            if f7 then
                f6_1[#f6_1 + 1] = v.Name
            end
        end
    end
    return f6_1
end
local function fn196()
    eO.autoSpin = false
    eO.autoEquipBest = false
    eO.autoEquipBestDice = false
    eO.autoUpgradeAllUnits = false
    eO.autoUpgradeSelUnits = false
    eO.autoCollect = false
    eO.autoCollectIndex = false
    eO.autoBuyDice = false
    eO.autoUpgrade = false
    eO.autoRebirth = false
end
local function fn203(m)
    local fs_1
    local fr_1
    fr_1, fs_1 = pcall(require, m)
    if fr_1 then
        return fs_1
    end
    return nil
end
local function onAutoSpin(aU)
    eO.autoSpin = aU
end
local function worker()
    while task.wait(1) do
        if Library.Unloaded then
            break
        end
        if eO.autoEquipBest then
            pcall(function()
                eP:InvokeServer(eJ.EQUIP_BEST)
            end)
        end
    end
end
local function fn232()
    if eB then
        return eB.GetData()
    end
    return nil
end
local function fn242()
    local fS = eD
    local fT = {}
    if fS then
        fS = eD.Items
    end
    if fS then
        for k in eD.Items do
            fT[#fT + 1] = k
        end
    end
    table.sort(fT)
    return fT
end
local function onAutoBuyDice(bg)
    eO.autoBuyDice = bg
end
local function onSelUnits(a5)
    eO.selUnits = a5
end
local function fn285(z)
    local fv = eG.Dice[z]
    if fv and fv.Order then
        return fv.Order
    end
    return 0
end
local function onUnload()
    Library:Unload()
end
CollectionService = nil
eB = nil
eD = nil
eG = nil
eH = nil
eI = nil
eJ = nil
Library = nil
LocalPlayer = nil
eO = nil
eP = nil
eQ = nil
local eC, eE, eF, eK, eM
local eX_1
local eW_1
local eT_1
Library, eT_1, CollectionService, LocalPlayer, eI, eP, eJ, eG, eW_1, eD, eB, eC, eX_1, eQ, eH, eM, eK = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
if ((not eD or not CollectionService) and (not eD or ThemeManager) and (not ThemeManager and ThemeManager and (CollectionService and ThemeManager)) or (eD and ThemeManager and (eD and eD) or (not CollectionService or not eD or (not eD or not ThemeManager)))) and (not CollectionService or not CollectionService or eD and CollectionService or (not eD or ThemeManager) and (not ThemeManager or not ThemeManager) or (eD or ThemeManager or not ThemeManager and eD) and (CollectionService and not eD and (not CollectionService or not CollectionService))) or not (((not eD or not CollectionService) and (not eD or ThemeManager) and (not ThemeManager and ThemeManager and (CollectionService and ThemeManager)) or (eD and ThemeManager and (eD and eD) or (not CollectionService or not eD or (not eD or not ThemeManager)))) and (not CollectionService or not CollectionService or eD and CollectionService or (not eD or ThemeManager) and (not ThemeManager or not ThemeManager) or (eD or ThemeManager or not ThemeManager and eD) and (CollectionService and not eD and (not CollectionService or not CollectionService)))) then
    eT_1 = game:GetService("Players")
else
    eQ = game:GetService("Players")
end
local eS = game:GetService("ReplicatedStorage")
if ((not eM or eQ) and (eQ or not eQ) or (false and not eQ or false)) and (eI and eM and (not eM or eI) or (not eM or not eQ or (eQ or not eQ))) or not (((not eM or eQ) and (eQ or not eQ) or (false and not eQ or false)) and (eI and eM and (not eM or eI) or (not eM or not eQ or (eQ or not eQ)))) then
    CollectionService = game:GetService("CollectionService")
else
    eT_1 = game:GetService("CollectionService")
end
LocalPlayer = eT_1.LocalPlayer
eI = "https://discord.gg/ehKVq7pf7v"
eP = fn203(eS.Shared.Utils.Network)
eJ = fn203(eS.Shared.Constants.Remotes)
eG = fn203(eS.Shared.Config.DiceConfig)
if (eM and eI and (false or eK) and ("https://discord.gg/ehKVq7pf7v" and (eM or not eK)) or (eK and not eK or "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/") and (not eS and eK and (not eS or eI)) or (eM and not eK or eM and eI) and ((not eK or eS) and (eS and eM)) and (not eM or eS or (eM or eI) or "https://discord.gg/ehKVq7pf7v" and (eM and not eM))) and not (eM and eI and (false or eK) and ("https://discord.gg/ehKVq7pf7v" and (eM or not eK)) or (eK and not eK or "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/") and (not eS and eK and (not eS or eI)) or (eM and not eK or eM and eI) and ((not eK or eS) and (eS and eM)) and (not eM or eS or (eM or eI) or "https://discord.gg/ehKVq7pf7v" and (eM and not eM))) then
    eS = eW_1(fn203.Shared.Config.UpgradesConfig)
else
    eW_1 = fn203(eS.Shared.Config.UpgradesConfig)
end
if (false and eX_1 or eD and eM) and (eD and eI or (not eM or not eQ)) and (not eW_1 or false or (not eQ or not eQ) or eW_1 and false and (false and not eX_1)) and not ((false and eX_1 or eD and eM) and (eD and eI or (not eM or not eQ)) and (not eW_1 or false or (not eQ or not eQ) or eW_1 and false and (false and not eX_1))) then
    eB = LocalPlayer(eH.Shared.Config.ItemsConfig)
    LocalPlayer(eD.PlayerScripts.Manager.ClientDataManager)
    eQ = fn285
else
    eD = fn203(eS.Shared.Config.ItemsConfig)
    eB = fn203(LocalPlayer.PlayerScripts.Manager.ClientDataManager)
    eQ = fn232
    eH = fn285
end
eM = fn83
eK = fn119
eC = {}
local eX_2 = {}
if eW_1 then
    for k, v in eW_1 do
        local eR_1 = type(v) == "table" and v.DisplayName
        local eS_1 = eR_1 or k
        eC[eS_1] = k
        eX_2[#eX_2 + 1] = eS_1
    end
end
eO, eF, eE = nil, nil, nil
table.sort(eX_2)
eF = fn143
eE = fn167
eO = {
    autoSpin = false,
    autoEquipBest = false,
    autoEquipBestDice = false,
    autoUpgradeAllUnits = false,
    autoUpgradeSelUnits = false,
    selUnits = {},
    autoCollect = false,
    autoCollectIndex = false,
    autoBuyDice = false,
    buyTarget = "All",
    autoRebirth = false,
    autoUpgrade = false,
    upgradeTargets = {}
}
local Window = Library:CreateWindow({ Title = "Ouroboros Hub", Footer = "Roll Anime", Icon = 18657887261, NotifySide = "Right" })
Library.ShowCustomCursor = false
local eW_2 = {
    Main = Window:AddTab("Main", "dices"),
    ["UI Settings"] = Window:AddTab("UI Settings", "settings")
}
for k, v in eW_2 do
    local CommunityGroup = v:AddLeftGroupbox("Community")
    CommunityGroup:AddButton("Join for Anime RNG Dupe", onJoinForAnimeRNGDupe)
end
local e2
local AutoSpinGroup = eW_2.Main:AddLeftGroupbox("Auto Spin")
AutoSpinGroup:AddToggle("AutoSpin", { Text = "Enable Auto Spin", Default = false, Callback = onAutoSpin })
local AutoEquipGroup = eW_2.Main:AddLeftGroupbox("Auto Equip")
AutoEquipGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false, Callback = onAutoEquipBest })
AutoEquipGroup:AddToggle("AutoEquipBestDice", { Text = "Auto Equip Best Owned Dice", Default = false, Callback = onAutoEquipBestDice })
local AutoUpgradeUnitsGroup = eW_2.Main:AddLeftGroupbox("Auto Upgrade Units")
AutoUpgradeUnitsGroup:AddToggle("AutoUpgradeAllUnits", { Text = "Auto Upgrade All Placed Units", Default = false, Callback = onAutoUpgradeAllUnits })
AutoUpgradeUnitsGroup:AddToggle("AutoUpgradeSelUnits", { Text = "Auto Upgrade Selected Units", Default = false, Callback = onAutoUpgradeSelUnits })
AutoUpgradeUnitsGroup:AddDropdown("SelUnits", { Values = fn242(), Default = {}, Multi = true, Text = "Units", Callback = onSelUnits })
local AutoCollectGroup = eW_2.Main:AddLeftGroupbox("Auto Collect")
AutoCollectGroup:AddToggle("AutoCollect", { Text = "Auto Collect Money", Default = false, Callback = onAutoCollect })
AutoCollectGroup:AddToggle("AutoCollectIndex", { Text = "Auto Collect Index", Default = false, Callback = onAutoCollectIndex })
local AutoBuyDiceGroup = eW_2.Main:AddRightGroupbox("Auto Buy Dice")
if (not AutoEquipGroup) and (e2 and not AutoUpgradeUnitsGroup) or (AutoBuyDiceGroup or AutoEquipGroup) and (not AutoUpgradeUnitsGroup or AutoEquipGroup) or not ((not AutoEquipGroup) and (e2 and not AutoUpgradeUnitsGroup) or (AutoBuyDiceGroup or AutoEquipGroup) and (not AutoUpgradeUnitsGroup or AutoEquipGroup)) then
    e2 = { "All" }
end
for k, v in eK() do
    e2[#e2 + 1] = v
end
AutoBuyDiceGroup:AddToggle("AutoBuyDice", { Text = "Enable Auto Buy Dice", Default = false, Callback = onAutoBuyDice })
AutoBuyDiceGroup:AddDropdown("BuyTarget", { Values = e2, Default = "All", Multi = false, Text = "Dice to Buy", Callback = onBuyTarget })
local AutoUpgradesGroup = eW_2.Main:AddRightGroupbox("Auto Upgrades")
AutoUpgradesGroup:AddToggle("AutoUpgrade", { Text = "Enable Auto Purchase Upgrades", Default = false, Callback = onAutoUpgrade })
AutoUpgradesGroup:AddDropdown("UpgradeTargets", { Values = eX_2, Default = {}, Multi = true, Text = "Upgrades", Callback = onUpgradeTargets })
local AutoRebirthGroup = eW_2.Main:AddRightGroupbox("Auto Rebirth")
AutoRebirthGroup:AddToggle("AutoRebirth", { Text = "Enable Auto Rebirth", Default = false, Callback = onAutoRebirth })
task.spawn(function()
    local gt_1
    local gs_1
    local gr_1
    local go = 0.25
    local gx = false
    repeat
        local gn
        if task.wait(go) then
            if Library.Unloaded then
                gx = true
            else
                go = 0.25
                if eO.autoSpin then
                    local gp = eQ()
                    local gp_2
                    local gq = gp and gp.ActiveDice
                    local gq_1
                    local gm = gq
                    if gm and eG.Dice[gm] then
                        gq_1, gs_1, gr_1, gp_2, gn, gt_1 = pcall(function()
                            return eP:InvokeServer(eJ.ROLL, gm)
                        end)
                        if not gq_1 then
                            go = 0.75
                        elseif type(gs_1) == "table" then
                            if gn then
                                task.delay(0.2, function()
                                    pcall(function()
                                        eP:FireServer(eJ.ROLL_FINISHED, gn)
                                    end)
                                end)
                            end
                        else
                            if gs_1 == nil and (gr_1 == 1 or gr_1 == 2) then
                                local max = math.max
                                local gq_4 = tonumber(gt_1) or 0.75
                                go = max(gq_4, 0) + 0.05
                            end
                        end
                    end
                end
            end
        else
            gx = true
        end
    until gx
end)
task.spawn(worker)
task.spawn(worker2)
task.spawn(function()
    local gI = false
    repeat
        if task.wait(1) then
            if Library.Unloaded then
                gI = true
            elseif eO.autoEquipBestDice then
                local gE = eM()
                local gD = gE[1]
                local gE_1 = eQ()
                if gD and gE_1 and gE_1.ActiveDice ~= gD then
                    pcall(function()
                        eP:FireServer(eJ.SWITCH_DICE, gD)
                    end)
                end
            end
        else
            gI = true
        end
    until gI
end)
task.spawn(function()
    while task.wait(1) do
        if Library.Unloaded then
            break
        end
        if eO.autoUpgradeAllUnits or eO.autoUpgradeSelUnits then
            for k, v in eF() do
                local gU = v
                if Library.Unloaded then
                    break
                end
                if not (eO.autoUpgradeAllUnits or eO.autoUpgradeSelUnits) then
                    break
                else
                    local gJ_2 = gU:GetAttribute("Level") or 0
                    local attr2 = gU:GetAttribute("MaxLevel")
                    local attr = gU:GetAttribute("ItemName")
                    local gM = eO.autoUpgradeAllUnits or eO.autoUpgradeSelUnits and attr ~= nil and eO.selUnits[attr]
                    if gM then
                        gM = attr2 == nil or gJ_2 < attr2
                    end
                    if gM then
                        pcall(function()
                            eP:InvokeServer(eJ.ANIME_UPGRADE, gU.Name, true)
                        end)
                    end
                end
            end
        end
    end
end)
task.spawn(function()
    while task.wait(1) do
        if Library.Unloaded then
            break
        end
        if eO.autoCollect then
            for k, v in eE() do
                local g1 = v
                if Library.Unloaded or not eO.autoCollect then
                    break
                end
                pcall(function()
                    eP:FireServer(eJ.COLLECT, g1)
                end)
            end
        end
    end
end)
task.spawn(function()
    local g2_1
    while task.wait(0.5) do
        if Library.Unloaded then
            break
        end
        if eO.autoBuyDice then
            if eO.buyTarget == "All" or eO.buyTarget == nil then
                g2_1 = eK()
            else
                g2_1 = { eO.buyTarget }
            end
            for k, v in g2_1 do
                local ha = v
                if Library.Unloaded or not eO.autoBuyDice then
                    break
                end
                pcall(function()
                    eP:InvokeServer(eJ.BUY, eG.StockName, ha, true)
                end)
            end
        end
    end
end)
task.spawn(function()
    while task.wait(0.5) do
        if Library.Unloaded then
            break
        end
        if eO.autoUpgrade then
            for k in eO.upgradeTargets do
                local hb = eC[k]
                if Library.Unloaded or not eO.autoUpgrade then
                    break
                elseif hb then
                    pcall(function()
                        eP:InvokeServer(eJ.UPGRADE, hb)
                    end)
                end
            end
        end
    end
end)
task.spawn(worker3)
local MenuGroup = eW_2["UI Settings"]:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("UI Toggle"):AddKeyPicker("MenuKeybind", { Default = "RightShift", Text = "UI Toggle", Mode = "Toggle", NoUI = true })
MenuGroup:AddButton("Unload", onUnload)
Library.ToggleKeybind = Library.Options.MenuKeybind
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
SaveManager:SetFolder("OuroborosHub/roll-anime")
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
ThemeManager:SaveDefault("Mint")
ThemeManager:ApplyToTab(eW_2["UI Settings"])
ThemeManager:LoadDefault()
SaveManager:BuildConfigSection(eW_2["UI Settings"])
SaveManager:LoadAutoloadConfig()
Library:OnUnload(fn196)
Library:Notify({
    Title = "Roll Anime",
    Description = "Loaded. Auto Spin uses your currently equipped dice.",
    Time = 5
})
