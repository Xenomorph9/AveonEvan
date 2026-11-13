local Options
local LocalPlayer
local VirtualUser
local gl
local Toggles
local f2
local fV
local WaveController
local gd
local f8
local gm
local fT
local ge
local gh
local f9
local fR
local Plot
local f4
local fU
local function fn13()
    if not Toggles.AutoPlace.Value then
        return false
    end
    local hI = f4(Options.PlaceBuildingList.Value)
    for k, v in fR.Data.Inventory do
        local hJ = not v.IsPlaced
        if hJ ~= false then
            local hK = fV(hI) or hI[v.Name]
            hJ = hK
        end
        if hJ then
            return true
        end
    end
    return false
end
local function fn107()
    print("Build a Slime Defense unloaded")
end
local function fn126(aG)
    aG:AddLeftGroupbox("Discord"):AddButton({
        Text = "Join Discord For Dupe",
        Func = function()
            setclipboard(gm)
            f2:Notify("Copied Discord invite to clipboard")
        end
    })
end
local function fn203(aq)
    return next(aq) == nil
end
local function autoUpgradeTownHallLoop()
    while true do
        local j6 = Options.TownHallDelay and Options.TownHallDelay.Value or 0.5
        if task.wait(j6) then
            if f2.Unloaded then
                break
            end
            if Toggles.AutoUpgradeTownHall.Value then
                if fR.Data.KingLevel < ge then
                    pcall(function()
                        f9:InvokeServer()
                    end)
                end
            end
            continue
        end
        break
    end
end
local function fn341()
    if gh and gh.Parent then
        return gh
    end
    local result = Plot.GetPlot:InvokeServer()
    if typeof(result) == "Instance" then
        gh = result
        return result
    end
    return nil
end
local function fn361(ai)
    return math.floor(ai.Size.X / gl), math.floor(ai.Size.Z / gl)
end
local function fn373()
    local he = gd()
    if not he then
        return nil
    end
    local Main = he:FindFirstChild("Main")
    local he_1 = Main and Main:FindFirstChild("Plot")
    local hf_1 = he_1
    if he_1 then
        he_1 = hf_1:FindFirstChild("BuildPlate")
    end
    return he_1
end
local function fn416()
    if not Toggles.AutoStopWave.Value then
        return false
    end
    local hF = tonumber(Options.StopAtWave.Value)
    return hF ~= nil and fU.Current >= hF
end
local function fn461(as, at)
    if typeof(as) == "table" then
        for k, v in as do
            if v then
                return k
            end
        end
    end
    return at
end
local function onOnClientEvent(R, S)
    if R == "NEW_WAVE" then
        fU.Current = S
    elseif R == "ACTIVE" then
        fU.Active = true
    elseif R == "INACTIVE" then
        fU.Active = false
        fU.Current = 0
    end
end
local function onUnload()
    f2:Unload()
end
local function onIdled()
    if f2.Unloaded then
        return
    end
    if not Toggles.AntiAFK.Value then
        return
    end
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end
local function fn530(al)
    local hh = {}
    if typeof(al) == "table" then
        for k, v in al do
            if v then
                hh[k] = true
            end
        end
    end
    return hh
end
local function fn571()
    local Character = LocalPlayer.Character
    if Character then
        local Tool = Character:FindFirstChildOfClass("Tool")
        if Tool then
            local attr = Tool:GetAttribute("WeaponName")
            if attr then
                return attr
            end
            return fR.Data.EquippedWeapon
        end
        return fR.Data.EquippedWeapon
    end
    return fR.Data.EquippedWeapon
end
local function autoStartLoop()
    while task.wait(0.25) do
        if f2.Unloaded then
            break
        end
        if f8() then
            if fU.Active then
                pcall(function()
                    WaveController:InvokeServer("Stop")
                end)
            end
        else
            local hS = Toggles.AutoStart.Value and not fU.Active and not fT()
            if hS then
                pcall(function()
                    WaveController:InvokeServer("Start")
                end)
            end
        end
    end
end
fR = nil
Toggles = nil
fT = nil
fU = nil
fV = nil
Options = nil
f2 = nil
f4 = nil
WaveController = nil
LocalPlayer = nil
f8 = nil
f9 = nil
VirtualUser = nil
gd = nil
ge = nil
gh = nil
gl = nil
gm = nil
Plot = nil
local Crates, BuildingShop2, Gold, f_, result, Weapons, f3, f6, gb, Building, gf, CrateShop, CollectionService, gj, BuildingShop, go
local gw_1
local gt_1
CollectionService, VirtualUser, LocalPlayer, gt_1, f2, gw_1, Options, Toggles, Plot, BuildingShop, CrateShop, Building, f9, WaveController, Weapons, Gold, BuildingShop2, Crates, fR, gl, gj, ge, gb = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local gu = game:GetService("ReplicatedStorage")
CollectionService = game:GetService("CollectionService")
local RunService = game:GetService("RunService")
VirtualUser = game:GetService("VirtualUser")
LocalPlayer = Players.LocalPlayer
if ((gl or not f9) and (gw_1 and false) or LocalPlayer and not CrateShop and (CrateShop and not LocalPlayer) or (not f9 or not LocalPlayer or (not f9 or LocalPlayer) or (not gw_1 and not gw_1 or gw_1 and LocalPlayer))) and ((LocalPlayer and gw_1 and (false or not gw_1) or (f9 or f9 or (not gw_1 or not CrateShop))) and ((LocalPlayer or gl) and (not gw_1 or gw_1) and (LocalPlayer or gl or (not f9 or not f9)))) and not (((gl or not f9) and (gw_1 and false) or LocalPlayer and not CrateShop and (CrateShop and not LocalPlayer) or (not f9 or not LocalPlayer or (not f9 or LocalPlayer) or (not gw_1 and not gw_1 or gw_1 and LocalPlayer))) and ((LocalPlayer and gw_1 and (false or not gw_1) or (f9 or f9 or (not gw_1 or not CrateShop))) and ((LocalPlayer or gl) and (not gw_1 or gw_1) and (LocalPlayer or gl or (not f9 or not f9))))) then
    f9 = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
else
    gt_1 = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
end
f2 = loadstring(game:HttpGet(gt_1 .. "Library.lua"))()
local gx = loadstring(game:HttpGet(gt_1 .. "addons/ThemeManager.lua"))()
local gw_2 = loadstring(game:HttpGet(gt_1 .. "addons/SaveManager.lua"))()
Options = f2.Options
Toggles = f2.Toggles
local Remotes = gu.Remotes
Plot = Remotes.Plot
BuildingShop = Remotes.BuildingShop
CrateShop = Remotes.CrateShop
Building = Plot.Building
f9 = Plot.UpgradeKing
WaveController = Plot.WaveController
local GameState = Plot.GameState
Weapons = Remotes.Weapons
Gold = Remotes.Gold
if (not gw_2 and not BuildingShop or not Options and gw_2 or Remotes and BuildingShop and (not BuildingShop and Remotes) or (Remotes or not gw_2) and (not gw_2 or Crates) and ((not Options or not BuildingShop) and (not Options or Remotes))) and not (not gw_2 and not BuildingShop or not Options and gw_2 or Remotes and BuildingShop and (not BuildingShop and Remotes) or (Remotes or not gw_2) and (not gw_2 or Crates) and ((not Options or not BuildingShop) and (not Options or Remotes))) then
    gu = require(BuildingShop2.Shared.Registry.BuildingShop)
else
    BuildingShop2 = require(gu.Shared.Registry.BuildingShop)
end
Crates = require(gu.Shared.Registry.Crates)
local DataAggregation = require(LocalPlayer.PlayerScripts.Client.Modules.DataAggregation)
fR = DataAggregation.WaitForReplica()
gl = 4
gj = 11
ge = 12
gb = { ["7,17"] = true, ["7,18"] = true, ["8,17"] = true, ["8,18"] = true }
local gy = {}
for k, v in BuildingShop2.ItemList do
    table.insert(gy, v.Name)
end
local gp_1 = {}
for k, v in Crates.CrateList do
    table.insert(gp_1, v.Name)
end
fU, gh, gm, gd, f_, gf, f4, fV, go, f6 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
fU = { Current = 0, Active = false }
GameState.OnClientEvent:Connect(onOnClientEvent)
gh = nil
gd = fn341
f_ = fn373
gf = fn361
f4 = fn530
fV = fn203
go = fn461
f6 = fn571
local Window = f2:CreateWindow({
    Title = "Ouroboros",
    Footer = "Build a Slime Defense",
    Icon = 18657887261,
    ShowCustomCursor = false,
    NotifySide = "Right",
    Size = UDim2.fromOffset(690, 640)
})
local gt_2 = { Main = Window:AddTab("Main", "gamepad-2"), Settings = Window:AddTab("Settings", "settings") }
gm = "https://discord.gg/ehKVq7pf7v"
for k, v in gt_2 do
    fn126(v)
end
f3, result, f8, fT = nil, nil, nil, nil
local WavesGroup = gt_2.Main:AddLeftGroupbox("Waves")
WavesGroup:AddToggle("AutoStart", { Text = "Auto Start Waves", Default = false })
WavesGroup:AddToggle("AutoStopWave", { Text = "Auto Stop At Wave", Default = false })
WavesGroup:AddInput("StopAtWave", { Text = "Stop at wave", Default = "10", Numeric = true, Finished = true })
local AutoBuyBuildingsGroup = gt_2.Main:AddLeftGroupbox("Auto Buy Buildings")
AutoBuyBuildingsGroup:AddToggle("AutoBuyBuildings", { Text = "Auto Buy Buildings", Default = false })
AutoBuyBuildingsGroup:AddDropdown("BuyBuildingList", { Text = "Buildings", Values = gy, Default = {}, Multi = true, AllowNull = true, Searchable = true })
AutoBuyBuildingsGroup:AddToggle("BuyBuildingsRespectTH", { Text = "Only if Town Hall unlocks it", Default = true })
AutoBuyBuildingsGroup:AddSlider("BuyBuildingsDelay", { Text = "Delay", Default = 0.3, Min = 0.05, Max = 2, Rounding = 2 })
local AutoBuyWeaponCratesGroup = gt_2.Main:AddLeftGroupbox("Auto Buy Weapon Crates")
AutoBuyWeaponCratesGroup:AddToggle("AutoBuyCrates", { Text = "Auto Buy Crates", Default = false })
AutoBuyWeaponCratesGroup:AddDropdown("BuyCrateList", { Text = "Crates", Values = gp_1, Default = {}, Multi = true, AllowNull = true, Searchable = true })
AutoBuyWeaponCratesGroup:AddSlider("BuyCratesDelay", { Text = "Delay", Default = 0.4, Min = 0.05, Max = 5, Rounding = 2 })
AutoBuyWeaponCratesGroup:AddToggle("AutoOpenCrates", { Text = "Auto Open Ready Crates", Default = false })
AutoBuyWeaponCratesGroup:AddSlider("OpenCratesDelay", { Text = "Open delay", Default = 0.5, Min = 0.1, Max = 3, Rounding = 2 })
local AutoPlaceBuildingsGroup = gt_2.Main:AddLeftGroupbox("Auto Place Buildings")
AutoPlaceBuildingsGroup:AddToggle("AutoPlace", { Text = "Auto Place Buildings", Default = false })
AutoPlaceBuildingsGroup:AddDropdown("PlaceBuildingList", { Text = "Buildings", Values = gy, Default = {}, Multi = true, AllowNull = true, Searchable = true })
AutoPlaceBuildingsGroup:AddDropdown("PlacePattern", {
    Text = "Fill pattern",
    Values = { "Front to Back", "Back to Front", "Edges First", "Around Town Hall", "Random" },
    Default = { "Front to Back" },
    Multi = true,
    AllowNull = true,
    Searchable = true
})
AutoPlaceBuildingsGroup:AddSlider("PlaceDelay", { Text = "Delay", Default = 0.15, Min = 0.05, Max = 2, Rounding = 2 })
local AutoFarmGroup = gt_2.Main:AddRightGroupbox("Auto Farm")
AutoFarmGroup:AddToggle("AutoFarm", { Text = "Auto Farm", Default = false })
AutoFarmGroup:AddSlider("AutoFarmDelay", { Text = "Attack interval", Default = 0.1, Min = 0, Max = 1, Rounding = 2 })
local AutoCollectPickupsGroup = gt_2.Main:AddRightGroupbox("Auto Collect Pickups")
AutoCollectPickupsGroup:AddToggle("AutoCollect", { Text = "Auto Collect Coins", Default = false })
AutoCollectPickupsGroup:AddSlider("CollectDelay", { Text = "Delay", Default = 0.1, Min = 0.05, Max = 1, Rounding = 2 })
local AutoUpgradeBuildingsGroup = gt_2.Main:AddRightGroupbox("Auto Upgrade Buildings")
AutoUpgradeBuildingsGroup:AddToggle("AutoUpgrade", { Text = "Auto Upgrade Buildings", Default = false })
AutoUpgradeBuildingsGroup:AddDropdown("UpgradeBuildingList", { Text = "Buildings", Values = gy, Default = {}, Multi = true, AllowNull = true, Searchable = true })
AutoUpgradeBuildingsGroup:AddSlider("UpgradeMaxLevel", { Text = "Max level", Default = gj, Min = 2, Max = gj, Rounding = 0 })
AutoUpgradeBuildingsGroup:AddSlider("UpgradeDelay", { Text = "Delay", Default = 0.2, Min = 0.05, Max = 2, Rounding = 2 })
local AutoUpgradeTownHallGroup = gt_2.Main:AddRightGroupbox("Auto Upgrade Town Hall")
AutoUpgradeTownHallGroup:AddToggle("AutoUpgradeTownHall", { Text = "Auto Upgrade Town Hall", Default = false })
AutoUpgradeTownHallGroup:AddSlider("TownHallDelay", { Text = "Delay", Default = 0.5, Min = 0.1, Max = 3, Rounding = 2 })
f8 = fn416
fT = fn13
task.spawn(autoStartLoop)
f3 = 0
result = nil
RunService.Heartbeat:Connect(function(bn)
    if f2.Unloaded then
        return
    end
    if not Toggles.AutoFarm.Value then
        return
    end
    f3 += bn
    if f3 < Options.AutoFarmDelay.Value then
        return
    end
    f3 = 0
    local hU = f6()
    if not hU then
        return
    end
    if not result then
        pcall(function()
            result = Plot.GetPlot:InvokeServer()
        end)
    end
    if not Toggles.AutoFarm.Value then
        return
    end
    if not result then
        return
    end
    local Character = LocalPlayer.Character
    if not Character or not Character.PrimaryPart then
        return
    end
    local CFrame = Character.PrimaryPart.CFrame
    local hY = false
    for k, v in CollectionService:GetTagged("WaveNpc") do
        local hV
        if not Toggles.AutoFarm.Value then
            break
        end
        local hZ_1 = v:IsA("Model") and v.Parent and v.PrimaryPart and v:IsDescendantOf(result)
        if hZ_1 then
            local attr = v:GetAttribute("Health")
            if attr == nil or attr > 0 then
                hV = {}
                local ic = 1
                while ic <= 100 do
                    table.insert(hV, v)
                    ic += 1
                end
                Character:PivotTo(v.PrimaryPart.CFrame)
                hY = true
                pcall(function()
                    Weapons:InvokeServer("Attack", hU, hV)
                end)
            end
        end
    end
    if hY and Character and Character.PrimaryPart then
        Character:PivotTo(CFrame)
    end
end)
task.spawn(function()
    while true do
        local wait = task.wait
        local il = Options.BuyBuildingsDelay and Options.BuyBuildingsDelay.Value or 0.3
        if wait(il) then
            if f2.Unloaded then
                break
            end
            if Toggles.AutoBuyBuildings.Value then
                local ij_1 = f4(Options.BuyBuildingList.Value)
                local KingLevel = fR.Data.KingLevel
                for k, v in BuildingShop2.ItemList do
                    local iy = v
                    if f2.Unloaded then
                        break
                    end
                    local il_1 = fV(ij_1) or ij_1[iy.Name]
                    if il_1 then
                        local il_2 = true
                        if Toggles.BuyBuildingsRespectTH.Value then
                            local im = iy.Stock[KingLevel]
                            il_2 = im ~= nil and im > 0
                        end
                        if il_2 then
                            pcall(function()
                                BuildingShop:InvokeServer("Buy", iy.Name)
                            end)
                            task.wait(Options.BuyBuildingsDelay.Value)
                        end
                    end
                end
            end
            continue
        end
        break
    end
end)
task.spawn(function()
    while true do
        local wait = task.wait
        local iB = Options.BuyCratesDelay and Options.BuyCratesDelay.Value or 0.4
        if wait(iB) then
            if f2.Unloaded then
                break
            end
            if Toggles.AutoBuyCrates.Value then
                local iz_1 = f4(Options.BuyCrateList.Value)
                for k, v in Crates.CrateList do
                    local iI = v
                    if f2.Unloaded then
                        break
                    end
                    local iA_1 = fV(iz_1) or iz_1[iI.Name]
                    if iA_1 then
                        pcall(function()
                            CrateShop:InvokeServer("Buy", iI.Name)
                        end)
                        task.wait(Options.BuyCratesDelay.Value)
                    end
                end
            end
            continue
        end
        break
    end
end)
task.spawn(function()
    while true do
        local wait = task.wait
        local iP = Options.OpenCratesDelay and Options.OpenCratesDelay.Value or 0.5
        if wait(iP) then
            if f2.Unloaded then
                break
            end
            if Toggles.AutoOpenCrates.Value then
                local iN_1 = gd()
                local iO_1 = iN_1 and iN_1:FindFirstChild("Crates")
                if iO_1 then
                    for i, child in iO_1:GetChildren() do
                        if f2.Unloaded then
                            break
                        else
                            local attr2 = child:GetAttribute("Index")
                            local attr = child:GetAttribute("UnlockedAt")
                            local iO_2 = attr2 ~= nil and attr ~= nil and attr - os.time() <= 0
                            if iO_2 then
                                pcall(function()
                                    CrateShop:InvokeServer("Open", attr2)
                                end)
                                task.wait(Options.OpenCratesDelay.Value)
                            end
                        end
                    end
                end
            end
            continue
        end
        break
    end
end)
task.spawn(function()
    local jc = false
    repeat
        local i3, i4
        local wait = task.wait
        local i7 = Options.PlaceDelay and Options.PlaceDelay.Value
        local jf = if i7 then 1 else 0
        local jd = 3220 * jf + 2492 * (1 - jf)
        local je = 2665 * jf + 2962 * (1 - jf)
        if not ((jd * 1850 + je * 3368 + jd * je) % 16777213 == 6736807) then
            i7 = 0.15
        end
        if wait(i7) then
            if f2.Unloaded then
                jc = true
            elseif Toggles.AutoPlace.Value then
                local i5_1 = f_()
                if i5_1 then
                    i3, i4 = gf(i5_1)
                    local i5_2 = {}
                    for k, v in fR.Data.Inventory do
                        if v.IsPlaced and v.Cell then
                            i5_2[v.Cell[1] .. "," .. v.Cell[2]] = true
                        end
                    end
                    local i6_2 = {}
                    local jo = 1
                    while jo <= i3 do
                        local jp = jo
                        local jt = 1
                        while jt <= i4 do
                            local ju = jt
                            local i7_1 = jp .. "," .. ju
                            local i8_1 = not i5_2[i7_1]
                            if i8_1 ~= false then
                                i8_1 = not gb[i7_1]
                            end
                            if i8_1 then
                                table.insert(i6_2, { X = jp, Z = ju })
                            end
                            jt += 1
                        end
                        jo += 1
                    end
                    local i5_3 = go(Options.PlacePattern.Value, "Front to Back")
                    if i5_3 == "Back to Front" then
                        table.sort(i6_2, function(dd, de)
                            if dd.Z ~= de.Z then
                                return dd.Z > de.Z
                            end
                            return dd.X < de.X
                        end)
                    elseif i5_3 == "Around Town Hall" then
                        table.sort(i6_2, function(c7, c8)
                            local c9 = math.abs(c7.X - 7.5) + math.abs(c7.Z - 17.5)
                            local dc = math.abs(c8.X - 7.5) + math.abs(c8.Z - 17.5)
                            return c9 < dc
                        end)
                    elseif i5_3 == "Edges First" then
                        table.sort(i6_2, function(c1, c2)
                            local c5 = math.min(c1.X - 1, i3 - c1.X, c1.Z - 1, i4 - c1.Z)
                            local c6 = math.min(c2.X - 1, i3 - c2.X, c2.Z - 1, i4 - c2.Z)
                            return c5 < c6
                        end)
                    elseif i5_3 == "Random" then
                        local jy = #i6_2
                        local jx = -1
                        while jy >= 2 do
                            local jz = jy
                            local i5_5 = math.random(jz)
                            i6_2[jz], i6_2[i5_5] = i6_2[i5_5], i6_2[jz]
                            jy += jx
                        end
                    else
                        table.sort(i6_2, function(cY, cZ)
                            if cY.Z ~= cZ.Z then
                                return cY.Z < cZ.Z
                            end
                            return cY.X < cZ.X
                        end)
                    end
                    local i5_6 = f4(Options.PlaceBuildingList.Value)
                    local i7_2 = 1
                    for k, v in fR.Data.Inventory do
                        local jG = v
                        if f2.Unloaded then
                            break
                        end
                        local i8_2 = not jG.IsPlaced
                        if i8_2 then
                            local i9 = fV(i5_6) or i5_6[jG.Name]
                            i8_2 = i9
                        end
                        if i8_2 then
                            local jI = false
                            repeat
                                local i1, i2
                                if i7_2 <= #i6_2 then
                                    i1 = i6_2[i7_2]
                                    i7_2 += 1
                                    i2 = false
                                    pcall(function()
                                        i2 = Building:InvokeServer("Place", jG.Name, i1.X, i1.Z) == true
                                    end)
                                    if i2 then
                                        task.wait(Options.PlaceDelay.Value)
                                        jI = true
                                    end
                                else
                                    jI = true
                                end
                            until jI
                        end
                    end
                end
            end
        else
            jc = true
        end
    until jc
end)
task.spawn(function()
    while true do
        local wait = task.wait
        local jL = Options.CollectDelay and Options.CollectDelay.Value or 0.1
        if wait(jL) then
            if f2.Unloaded then
                break
            end
            if Toggles.AutoCollect.Value then
                local Terrain = workspace:FindFirstChild("Terrain")
                local jK_1 = Terrain and Terrain:FindFirstChild("CoinFolder")
                if jK_1 then
                    for i, child in jK_1:GetChildren() do
                        local jS = child
                        if jS:IsA("Attachment") then
                            pcall(function()
                                Gold:FireServer("Collect", jS.Name)
                            end)
                        end
                    end
                end
            end
            continue
        end
        break
    end
end)
task.spawn(function()
    while true do
        local wait = task.wait
        local jW = Options.UpgradeDelay and Options.UpgradeDelay.Value or 0.2
        if wait(jW) then
            if f2.Unloaded then
                break
            end
            if Toggles.AutoUpgrade.Value then
                local jU_1 = f4(Options.UpgradeBuildingList.Value)
                local jV_1 = math.min(Options.UpgradeMaxLevel.Value, gj)
                for k, v in fR.Data.Inventory do
                    local jT
                    local j1 = k
                    if f2.Unloaded then
                        break
                    end
                    local jW_1 = v.IsPlaced and v.Level < jV_1
                    if jW_1 then
                        local jX = fV(jU_1) or jU_1[v.Name]
                        jW_1 = jX
                    end
                    if jW_1 then
                        jT = false
                        pcall(function()
                            jT = Building:InvokeServer("UpgradeStructure", j1)
                        end)
                        if jT then
                            task.wait(Options.UpgradeDelay.Value)
                        end
                    end
                end
            end
            continue
        end
        break
    end
end)
task.spawn(autoUpgradeTownHallLoop)
gt_2.Settings:AddLeftGroupbox("Anti-AFK"):AddToggle("AntiAFK", { Text = "Anti-AFK", Default = true })
LocalPlayer.Idled:Connect(onIdled)
local MenuGroup = gt_2.Settings:AddRightGroupbox("Menu")
MenuGroup:AddButton("Unload", onUnload)
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
f2.ToggleKeybind = Options.MenuKeybind
f2:OnUnload(fn107)
gx:SetLibrary(f2)
gw_2:SetLibrary(f2)
gx:SetFolder("OuroborosHub")
gw_2:SetFolder("OuroborosHub/BuildASlimeDefense")
gw_2:IgnoreThemeSettings()
gw_2:SetIgnoreIndexes({ "MenuKeybind" })
gx:SaveDefault("Mint")
gx:ApplyToTab(gt_2.Settings)
gx:LoadDefault()
gw_2:BuildConfigSection(gt_2.Settings)
gw_2:LoadAutoloadConfig()
