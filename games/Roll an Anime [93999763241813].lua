local eT
local eI
local eL
local eS
local eO
local eV
local eG
local eN
local eU
local CollectionService
local eQ
local eM
local function fn11()
    local Plots = workspace:FindFirstChild("Plots")
    local f2 = Plots and Plots:FindFirstChild(eS.Name .. "'s plot")
    local f1_1 = f2
    if f2 then
        f2 = f1_1:FindFirstChild("Items")
    end
    local f1_2 = f2
    if f2 then
        f2 = f1_2:GetChildren()
    end
    return f2 or {}
end
local function fn14(z)
    local fy = eL.Dice[z]
    if fy and fy.Order then
        return fy.Order
    end
    return 0
end
local function onAutoUpgradeAllUnits(a1)
    eT.autoUpgradeAllUnits = a1
end
local function onAutoCollectIndex(ba)
    eT.autoCollectIndex = ba
end
local function fn112()
    local fB = eV()
    local fC = fB
    local fD = {}
    if fC then
        fC = fB.Dice
    end
    if fC then
        for k, v in fB.Dice do
            local fB_1 = tonumber(v) or 0
            if fB_1 > 0 and eL.Dice[k] then
                fD[#fD + 1] = k
            end
        end
    end
    table.sort(fD, function(M, N)
        return eM(M) > eM(N)
    end)
    return fD
end
local function worker2()
    while task.wait(1) do
        if eQ.Unloaded then
            break
        end
        if eT.autoCollectIndex then
            pcall(function()
                eU:InvokeServer(eO.SPECIAL_UI, "ClaimAllIndexTrinkets")
            end)
        end
    end
end
local function onUpgradeTargets(bn)
    eT.upgradeTargets = bn
end
local function onAutoUpgrade(bl)
    eT.autoUpgrade = bl
end
local function onBuyTarget(bi)
    eT.buyTarget = bi
end
local function onAutoEquipBestDice(aZ)
    eT.autoEquipBestDice = aZ
end
local function fn174(m)
    local fv_1
    local fu_1
    fu_1, fv_1 = pcall(require, m)
    if fu_1 then
        return fv_1
    end
    return nil
end
local function onAutoBuyDice(bg)
    eT.autoBuyDice = bg
end
local function onSelUnits(a5)
    eT.selUnits = a5
end
local function onAutoUpgradeSelUnits(a3)
    eT.autoUpgradeSelUnits = a3
end
local function fn204()
    local fV = eI
    local fW = {}
    if fV then
        fV = eI.Items
    end
    if fV then
        for k in eI.Items do
            fW[#fW + 1] = k
        end
    end
    table.sort(fW)
    return fW
end
local function worker3()
    while task.wait(1) do
        if eQ.Unloaded then
            break
        end
        if eT.autoRebirth then
            pcall(function()
                eU:InvokeServer(eO.REBIRTH)
            end)
        end
    end
end
local function fn225()
    local Plots = workspace:FindFirstChild("Plots")
    local f6 = Plots and Plots:FindFirstChild(eS.Name .. "'s plot")
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
local function fn226()
    local fL = {}
    for k, v in eL.Dice do
        local fM = type(v) == "table"
        if fM then
            local fN = tonumber(v.Price) or 0
            fM = fN > 0
        end
        if fM then
            fM = not v.RobuxOnly
        end
        if fM then
            fM = not v.Hided
        end
        if fM then
            fL[#fL + 1] = k
        end
    end
    table.sort(fL, function(W, X)
        return eM(W) > eM(X)
    end)
    return fL
end
local function onAutoEquipBest(aX)
    eT.autoEquipBest = aX
end
local function onUnload()
    eQ:Unload()
end
local function fn238()
    if eG then
        return eG.GetData()
    end
    return nil
end
local function onJoinForAnimeRNGDupe()
    local gf = getgenv and getgenv()
    local gg = gf
    local gl = if gg then 1 else 0
    local gj = 686 * gl + 3965 * (1 - gl)
    local gk = 1717 * gl + 2108 * (1 - gl)
    if not ((gj * 3112 + gk * 2778 + gj * gk) % 16777213 == 8082520) then
        gg = _G
    end
    local gf_1 = rawget(gg, "setclipboard") or setclipboard or toclipboard
    if not gf_1 then
        gf_1 = syn and syn.write_clipboard
    end
    if not gf_1 then
        gf_1 = Clipboard and Clipboard.set
    end
    local gg_3 = false
    local gh = gf_1
    if gh then
        gg_3 = pcall(gh, eN)
    end
    local gg_4 = gg_3 and "Discord link copied to clipboard!" or "Clipboard unavailable: " .. eN
    eQ:Notify({ Title = "Roll Anime", Description = gg_4, Time = 5 })
end
local function onAutoRebirth(bq)
    eT.autoRebirth = bq
end
local function fn266()
    eT.autoSpin = false
    eT.autoEquipBest = false
    eT.autoEquipBestDice = false
    eT.autoUpgradeAllUnits = false
    eT.autoUpgradeSelUnits = false
    eT.autoCollect = false
    eT.autoCollectIndex = false
    eT.autoBuyDice = false
    eT.autoUpgrade = false
    eT.autoRebirth = false
end
local function onAutoSpin(aU)
    eT.autoSpin = aU
end
local function onAutoCollect(a8)
    eT.autoCollect = a8
end
local function worker()
    while task.wait(1) do
        if eQ.Unloaded then
            break
        end
        if eT.autoEquipBest then
            pcall(function()
                eU:InvokeServer(eO.EQUIP_BEST)
            end)
        end
    end
end
CollectionService = nil
eG = nil
eI = nil
eL = nil
eM = nil
eN = nil
eO = nil
eQ = nil
eS = nil
eT = nil
eU = nil
eV = nil
local eH, eJ, eK, eP, eR
local e3_1
local e2_1
local e1_1
local e0_1
local e__1
local eZ_1
local eY_1
eQ, e3_1, e2_1, eZ_1, eY_1, CollectionService, eS, eN, eU, eO, eL, e0_1, eI, eG, eH, e1_1, e__1, eV, eM, eR, eP = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local eX = 10
repeat
    local e4_1 = (eX * 11 + 2) % 14 + 1
    if e4_1 <= 7 then
        if e4_1 <= 4 then
            if e4_1 <= 2 then
                if e4_1 <= 1 then
                    local e5_1 = (vector.create((eX * 6 + 4) % 11 + 1, (eX * 2 + 11) % 13 + 1, (eX * 9 + 7) % 17 + 1))
                    local e6_1 = (vector.create((eX * 4 + 4) % 11 + 1, (eX * 8 + 4) % 13 + 1, (eX * 3 + 11) % 17 + 1))
                    local e7_1 = (vector.create((eX * 7 + 6) % 11 + 1, (eX * 6 + 7) % 13 + 1, (eX * 9 + 8) % 17 + 1))
                    if vector.dot(vector.cross(e5_1, e6_1), e7_1) == vector.dot(vector.cross(e6_1, e7_1), e5_1) then
                        eQ = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
                        e3_1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
                        e2_1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
                    else
                        e2_1 = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
                        eQ = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
                        e3_1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
                    end
                    eX = (eX + 23) % 112
                else
                    local e5_2 = {
                        "jnrjfwlf",
                        "tvknvw",
                        "sqci",
                        "xkzxpbyfmd",
                        "ctsurrjhpf",
                        "bhpxvef",
                        "ljouoaoqb",
                        "magyevp",
                        "idilnvenam"
                    }
                    if e5_2[(eX * 10 + 56) % 9 + 1] <= e5_2[(eX * 10 + 56) % 9 + 1] then
                        eZ_1 = game:GetService("Players")
                    else
                        eN = game:GetService("Players")
                    end
                    eX = (eX + 51) % 112
                end
            elseif e4_1 <= 3 then
                if (not e0_1 and eR and (eQ and not eZ_1) or e2_1 and e2_1 and (not e2_1 and e2_1)) and ((eR or eZ_1) and (e2_1 and eR) and (not eR or not eQ or (eQ or eQ))) or ((not e2_1 or eQ or not eR and not e0_1) and ((not eQ or not eZ_1) and (eQ or not eZ_1)) or (e2_1 and not e0_1 and (e0_1 or e0_1) or (e0_1 and e0_1 or (not e2_1 or not eR)))) or not ((not e0_1 and eR and (eQ and not eZ_1) or e2_1 and e2_1 and (not e2_1 and e2_1)) and ((eR or eZ_1) and (e2_1 and eR) and (not eR or not eQ or (eQ or eQ))) or ((not e2_1 or eQ or not eR and not e0_1) and ((not eQ or not eZ_1) and (eQ or not eZ_1)) or (e2_1 and not e0_1 and (e0_1 or e0_1) or (e0_1 and e0_1 or (not e2_1 or not eR))))) then
                    eY_1 = game:GetService("ReplicatedStorage")
                else
                    eH = game:GetService("ReplicatedStorage")
                end
                eX = (eX + 23) % 112
            else
                if (eX * 1 + 1) * 9 % 4 == ((eX * 1 + 1) * 9 + 15) % 4 then
                    eH = game:GetService("CollectionService")
                else
                    CollectionService = game:GetService("CollectionService")
                end
                eX = (eX + 93) % 112
            end
        elseif e4_1 <= 6 then
            if e4_1 <= 5 then
                if eX * 40288559 + 13 + 4 >= eX * 40288559 + 13 + 4 + 2 then
                    eZ_1 = eS.LocalPlayer
                else
                    eS = eZ_1.LocalPlayer
                end
                eX = (eX + 65) % 112
            else
                local e5_3 = (vector.create((eX * 3 + 5) % 11 + 1, (eX * 11 + 2) % 13 + 1, (eX * 3 + 6) % 17 + 1))
                local e6_2 = (vector.create((eX * 7 + 8) % 11 + 1, (eX * 4 + 9) % 13 + 1, (eX * 6 + 17) % 17 + 1))
                local e7_2 = (vector.create((eX * 1 + 1) % 5 + 1, (eX * 2 + 7) % 7 + 1, (eX * 5 + 4) % 9 + 1))
                if math.abs((vector.angle(e5_3, e6_2, e7_2))) - math.abs((vector.angle(e6_2, e5_3, e7_2))) == 0 then
                    eN = "https://discord.gg/ehKVq7pf7v"
                else
                    e2_1 = "https://discord.gg/ehKVq7pf7v"
                end
                eX = (eX + 107) % 112
            end
        else
            local e5_4 = (vector.create((eX * 2 + 5) % 11 + 1, (eX * 3 + 11) % 13 + 1, (eX * 13 + 3) % 17 + 1))
            local e6_3 = (vector.create((eX * 3 + 7) % 11 + 1, (eX * 6 + 13) % 13 + 1, (eX * 2 + 12) % 17 + 1))
            local e7_3 = (vector.create((eX * 1 + 7) % 11 + 1, (eX * 2 + 2) % 13 + 1, (eX * 12 + 13) % 17 + 1))
            local e8_1 = (vector.create((eX * 3 + 8) % 11 + 1, (eX * 3 + 12) % 13 + 1, (eX * 2 + 2) % 17 + 1))
            if vector.dot(vector.cross(e5_4, e6_3), (vector.cross(e7_3, e8_1))) == vector.dot(e5_4, e7_3) * vector.dot(e6_3, e8_1) - vector.dot(e5_4, e8_1) * vector.dot(e6_3, e7_3) + 1 then
                e0_1 = fn174
            else
                e__1 = fn174
            end
            eX = (eX + 65) % 112
        end
    elseif e4_1 <= 11 then
        if e4_1 <= 9 then
            if e4_1 <= 8 then
                if eX * 123585215 + 9 + 7 >= eX * 123585215 + 9 + 7 + 6 then
                    eL = eO(e__1.Shared.Utils.Network)
                    eY_1 = eO(e__1.Shared.Constants.Remotes)
                    eU = eO(e__1.Shared.Config.DiceConfig)
                else
                    eU = e__1(eY_1.Shared.Utils.Network)
                    eO = e__1(eY_1.Shared.Constants.Remotes)
                    eL = e__1(eY_1.Shared.Config.DiceConfig)
                end
                eX = (eX + 23) % 112
            else
                if eX * 81336909 + 11 + 7 >= eX * 81336909 + 11 + 7 + 2 then
                    eY_1 = e0_1(e__1.Shared.Config.UpgradesConfig)
                else
                    e0_1 = e__1(eY_1.Shared.Config.UpgradesConfig)
                end
                eX = (eX + 93) % 112
            end
        elseif e4_1 <= 10 then
            local e5_5 = (vector.create((eX * 2 + 1) % 11 + 1, (eX * 1 + 9) % 13 + 1, (eX * 4 + 5) % 17 + 1))
            local e6_4 = (vector.create((eX * 1 + 2) % 11 + 1, (eX * 5 + 8) % 13 + 1, (eX * 10 + 15) % 17 + 1))
            local e7_4 = (vector.create((eX * 5 + 2) % 11 + 1, (eX * 11 + 4) % 13 + 1, (eX * 9 + 12) % 17 + 1))
            if vector.dot(vector.cross(e5_5, e6_4), e7_4) == vector.dot(vector.cross(e6_4, e7_4), e5_5) then
                eI = e__1(eY_1.Shared.Config.ItemsConfig)
                eG = e__1(eS.PlayerScripts.Manager.ClientDataManager)
                eV = fn238
            else
                eG = eI(e__1.Shared.Config.ItemsConfig)
                eY_1 = eI(eV.PlayerScripts.Manager.ClientDataManager)
                eS = fn238
            end
            eX = (eX + 107) % 112
        else
            if eX * 98600689 + 11 + 5 >= eX * 98600689 + 11 + 5 + 1 then
                eO = fn14
            else
                eM = fn14
            end
            eX = (eX + 65) % 112
        end
    elseif e4_1 <= 13 then
        if e4_1 <= 12 then
            local e4_2 = (vector.create((eX * 2 + 7) % 11 + 1, (eX * 8 + 10) % 13 + 1, (eX * 13 + 1) % 17 + 1))
            local e5_6 = (vector.create((eX * 4 + 8) % 11 + 1, (eX * 1 + 5) % 13 + 1, (eX * 6 + 4) % 17 + 1))
            local hF = vector.cross(e4_2, e5_6)
            local hG = vector.dot(e4_2, e5_6)
            if vector.dot(hF, hF) + hG * hG == vector.dot(e4_2, e4_2) * vector.dot(e5_6, e5_6) then
                eR = fn112
            else
                eP = fn112
            end
            eX = (eX + 107) % 112
        else
            if eX * 73853661 + 9 + 7 <= eX * 73853661 + 9 + 7 + 1 then
                eP = fn226
            else
                eQ = fn226
            end
            eX = (eX + 37) % 112
        end
    else
        local hE = bit32.rrotate(bit32.bxor(bit32.lrotate(eX, 6), string.byte(tostring(eZ_1))), 8)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(hE, 4021193545), 3144813537), (bit32.bxor(bit32.band(hE, 273773750), 4086306628))), 3144813537), 4086306628) == hE then
            eH = {}
            e1_1 = {}
        else
            e1_1 = {}
            eH = {}
        end
        eX = (eX + 107) % 112
    end
until (eX * 37 + 59) % 112 == 107
if e0_1 then
    for k, v in e0_1 do
        local eW_1 = type(v) == "table" and v.DisplayName
        local eX_1 = eW_1 or k
        eH[eX_1] = k
        e1_1[#e1_1 + 1] = eX_1
    end
end
eT, eK, eJ = nil, nil, nil
table.sort(e1_1)
eK = fn11
eJ = fn225
eT = {
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
local Window = eQ:CreateWindow({ Title = "Ouroboros Hub", Footer = "Roll Anime", Icon = 18657887261, NotifySide = "Right" })
eQ.ShowCustomCursor = false
local e0_2 = {
    Main = Window:AddTab("Main", "dices"),
    ["UI Settings"] = Window:AddTab("UI Settings", "settings")
}
for k, v in e0_2 do
    local CommunityGroup = v:AddLeftGroupbox("Community")
    CommunityGroup:AddButton("Join for Anime RNG Dupe", onJoinForAnimeRNGDupe)
end
local AutoSpinGroup = e0_2.Main:AddLeftGroupbox("Auto Spin")
AutoSpinGroup:AddToggle("AutoSpin", { Text = "Enable Auto Spin", Default = false, Callback = onAutoSpin })
local AutoEquipGroup = e0_2.Main:AddLeftGroupbox("Auto Equip")
AutoEquipGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false, Callback = onAutoEquipBest })
AutoEquipGroup:AddToggle("AutoEquipBestDice", { Text = "Auto Equip Best Owned Dice", Default = false, Callback = onAutoEquipBestDice })
local AutoUpgradeUnitsGroup = e0_2.Main:AddLeftGroupbox("Auto Upgrade Units")
AutoUpgradeUnitsGroup:AddToggle("AutoUpgradeAllUnits", { Text = "Auto Upgrade All Placed Units", Default = false, Callback = onAutoUpgradeAllUnits })
AutoUpgradeUnitsGroup:AddToggle("AutoUpgradeSelUnits", { Text = "Auto Upgrade Selected Units", Default = false, Callback = onAutoUpgradeSelUnits })
AutoUpgradeUnitsGroup:AddDropdown("SelUnits", { Values = fn204(), Default = {}, Multi = true, Text = "Units", Callback = onSelUnits })
local AutoCollectGroup = e0_2.Main:AddLeftGroupbox("Auto Collect")
AutoCollectGroup:AddToggle("AutoCollect", { Text = "Auto Collect Money", Default = false, Callback = onAutoCollect })
AutoCollectGroup:AddToggle("AutoCollectIndex", { Text = "Auto Collect Index", Default = false, Callback = onAutoCollectIndex })
local AutoBuyDiceGroup = e0_2.Main:AddRightGroupbox("Auto Buy Dice")
local e7_5 = { "All" }
for k, v in eP() do
    e7_5[#e7_5 + 1] = v
end
AutoBuyDiceGroup:AddToggle("AutoBuyDice", { Text = "Enable Auto Buy Dice", Default = false, Callback = onAutoBuyDice })
AutoBuyDiceGroup:AddDropdown("BuyTarget", { Values = e7_5, Default = "All", Multi = false, Text = "Dice to Buy", Callback = onBuyTarget })
local AutoUpgradesGroup = e0_2.Main:AddRightGroupbox("Auto Upgrades")
AutoUpgradesGroup:AddToggle("AutoUpgrade", { Text = "Enable Auto Purchase Upgrades", Default = false, Callback = onAutoUpgrade })
AutoUpgradesGroup:AddDropdown("UpgradeTargets", { Values = e1_1, Default = {}, Multi = true, Text = "Upgrades", Callback = onUpgradeTargets })
local AutoRebirthGroup = e0_2.Main:AddRightGroupbox("Auto Rebirth")
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
            if eQ.Unloaded then
                gx = true
            else
                go = 0.25
                if eT.autoSpin then
                    local gp = eV()
                    local gp_2
                    local gq = gp and gp.ActiveDice
                    local gq_1
                    local gm = gq
                    if gm and eL.Dice[gm] then
                        gq_1, gs_1, gr_1, gp_2, gn, gt_1 = pcall(function()
                            return eU:InvokeServer(eO.ROLL, gm)
                        end)
                        if not gq_1 then
                            go = 0.75
                        elseif type(gs_1) == "table" then
                            if gn then
                                task.delay(0.2, function()
                                    pcall(function()
                                        eU:FireServer(eO.ROLL_FINISHED, gn)
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
    local gF = false
    repeat
        if task.wait(1) then
            if eQ.Unloaded then
                gF = true
            elseif eT.autoEquipBestDice then
                local gB = eR()
                local gA = gB[1]
                local gB_1 = eV()
                if gA and gB_1 and gB_1.ActiveDice ~= gA then
                    pcall(function()
                        eU:FireServer(eO.SWITCH_DICE, gA)
                    end)
                end
            end
        else
            gF = true
        end
    until gF
end)
task.spawn(function()
    while task.wait(1) do
        if eQ.Unloaded then
            break
        end
        if eT.autoUpgradeAllUnits or eT.autoUpgradeSelUnits then
            for k, v in eK() do
                local gR = v
                if eQ.Unloaded then
                    break
                end
                if not (eT.autoUpgradeAllUnits or eT.autoUpgradeSelUnits) then
                    break
                else
                    local gG_2 = gR:GetAttribute("Level") or 0
                    local attr2 = gR:GetAttribute("MaxLevel")
                    local attr = gR:GetAttribute("ItemName")
                    local gJ = eT.autoUpgradeAllUnits or eT.autoUpgradeSelUnits and attr ~= nil and eT.selUnits[attr]
                    if gJ then
                        gJ = attr2 == nil or gG_2 < attr2
                    end
                    if gJ then
                        pcall(function()
                            eU:InvokeServer(eO.ANIME_UPGRADE, gR.Name, true)
                        end)
                    end
                end
            end
        end
    end
end)
task.spawn(function()
    while task.wait(1) do
        if eQ.Unloaded then
            break
        end
        if eT.autoCollect then
            for k, v in eJ() do
                local gZ = v
                if eQ.Unloaded or not eT.autoCollect then
                    break
                end
                pcall(function()
                    eU:FireServer(eO.COLLECT, gZ)
                end)
            end
        end
    end
end)
task.spawn(function()
    local g__1
    while task.wait(0.5) do
        if eQ.Unloaded then
            break
        end
        if eT.autoBuyDice then
            if eT.buyTarget == "All" or eT.buyTarget == nil then
                g__1 = eP()
            else
                g__1 = { eT.buyTarget }
            end
            for k, v in g__1 do
                local ha = v
                if eQ.Unloaded or not eT.autoBuyDice then
                    break
                end
                pcall(function()
                    eU:InvokeServer(eO.BUY, eL.StockName, ha, true)
                end)
            end
        end
    end
end)
task.spawn(function()
    while task.wait(0.5) do
        if eQ.Unloaded then
            break
        end
        if eT.autoUpgrade then
            for k in eT.upgradeTargets do
                local hb = eH[k]
                if eQ.Unloaded or not eT.autoUpgrade then
                    break
                elseif hb then
                    pcall(function()
                        eU:InvokeServer(eO.UPGRADE, hb)
                    end)
                end
            end
        end
    end
end)
task.spawn(worker3)
local MenuGroup = e0_2["UI Settings"]:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("UI Toggle"):AddKeyPicker("MenuKeybind", { Default = "RightShift", Text = "UI Toggle", Mode = "Toggle", NoUI = true })
MenuGroup:AddButton("Unload", onUnload)
eQ.ToggleKeybind = eQ.Options.MenuKeybind
e3_1:SetLibrary(eQ)
e2_1:SetLibrary(eQ)
e3_1:SetFolder("OuroborosHub")
e2_1:SetFolder("OuroborosHub/roll-anime")
e2_1:IgnoreThemeSettings()
e2_1:SetIgnoreIndexes({ "MenuKeybind" })
e3_1:SaveDefault("Mint")
e3_1:ApplyToTab(e0_2["UI Settings"])
e3_1:LoadDefault()
e2_1:BuildConfigSection(e0_2["UI Settings"])
e2_1:LoadAutoloadConfig()
eQ:OnUnload(fn266)
eQ:Notify({
    Title = "Roll Anime",
    Description = "Loaded. Auto Spin uses your currently equipped dice.",
    Time = 5
})
