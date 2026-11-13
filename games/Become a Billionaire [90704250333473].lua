local fU
local PlotNetwork
local VirtualUser
local gl
local autoUpgradeLoop
local RebirthNetwork
local f2
local f5
local fN
local f8
local fQ
local autoPlaceLoop
local connection
local Toggles
local gh
local gk
local fZ
local autoMergeLoop
local gn
local fJ
local Library
local gq
local fM
local ga
local fV
local gg
local fY
local gj
local f0
local gm
local DataServiceClient
local fO
local f9
local LocalPlayer
local Options
local function fn3()
    local hj_1
    local hi = f0 and f0.Parent
    local hi_1
    if hi then
        return f0
    end
    hi_1, hj_1 = pcall(function()
        return PlotNetwork.Remotes.GetPlotFromPlayer:InvokeServer(LocalPlayer)
    end)
    if hi_1 and hj_1 then
        f0 = hj_1
    end
    return f0
end
local function onBuyCharacters(cQ)
    local jz = {}
    for k, v in cQ do
        if v then
            jz[k] = true
        end
    end
    fU = jz
end
local function autoPlaceLoop2()
    while not Library.Unloaded do
        if Toggles.AutoPlace.Value then
            autoPlaceLoop()
        end
        task.wait(0.5)
    end
end
local function autoUpgradeLoop2()
    while not Library.Unloaded do
        if Toggles.AutoUpgrade.Value then
            fN()
        end
        task.wait(0.5)
    end
end
local function onAntiAfk(dB)
    if dB then
        if not connection then
            connection = LocalPlayer.Idled:Connect(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new())
            end)
        end
    elseif connection then
        connection:Disconnect()
        connection = nil
    end
end
local function onMergeOnlyIfGems(dh)
    f2 = dh
end
local function onUpgradeSelection(c1)
    local jK = {}
    for k, v in c1 do
        if v then
            jK[k] = true
        end
    end
    fM = jK
end
local function onSelectAll()
    local j6 = {}
    for k, v in f9 do
        j6[v] = true
    end
    Options.MergeCharacters:SetValue(j6)
end
local function onMergeNow()
    task.spawn(autoMergeLoop)
end
local function fn149()
    pcall(function()
        RebirthNetwork.Remotes.DoRebirth:InvokeServer(gq)
    end)
end
local function fn231()
    if connection then
        connection:Disconnect()
        connection = nil
    end
    print("Become a Billionaire unloaded")
end
local function onUnload()
    Library:Unload()
end
local function onMergeKeep(df)
    f5 = df
end
local function fn283()
    local Character = LocalPlayer.Character
    local hq = Character and Character:FindFirstChild("HumanoidRootPart")
    return hq
end
local function onCollectNow()
    task.spawn(gn)
end
local function onRebirthAmount(c6)
    if type(c6) == "number" then
        c6 = gk[c6]
    end
    local jS = gg[c6]
    local jW = if jS then 1 else 0
    local jU = 3558 * jW + 1960 * (1 - jW)
    local jV = 1378 * jW + 3334 * (1 - jW)
    if not ((jU * 3419 + jV * 3042 + jU * jV) % 16777213 == 4482389) then
        jS = 1
    end
    gq = jS
end
local function autoRebirthLoop()
    while not Library.Unloaded do
        if Toggles.AutoRebirth.Value then
            gh()
        end
        task.wait(0.5)
    end
end
local function fn425()
    local hA = fY()
    local hB = f8()
    if not hA or not hB then
        return
    end
    local CFrame2 = hB.CFrame
    for k, v in fV(hA) do
        for i, child in v.NPCs:GetChildren() do
            if Library.Unloaded or not Toggles.AutoCollect.Value then
                break
            else
                local HumanoidRootPart = child:FindFirstChild("HumanoidRootPart")
                local hD_1 = HumanoidRootPart and HumanoidRootPart:FindFirstChild("BillboardGui")
                local hE = hD_1
                if hD_1 then
                    hD_1 = hE:GetAttribute("Amount")
                end
                local hE_1 = HumanoidRootPart
                local hF = hD_1
                if hE_1 then
                    hE_1 = hF
                end
                if hE_1 then
                    hE_1 = hF > 0
                end
                if hE_1 then
                    hB.CFrame = CFrame.new(HumanoidRootPart.Position + Vector3.new(0, 3, 0))
                    task.wait(fJ)
                end
            end
        end
    end
    if Toggles.ReturnAfterCollect.Value and hB.Parent then
        hB.CFrame = CFrame2
    end
end
local function onCollectDwell(cM)
    fJ = cM
end
local function onBuyNextFloor()
    task.spawn(autoUpgradeLoop)
end
local function autoMergeLoop2()
    while not Library.Unloaded do
        if Toggles.AutoMerge.Value then
            autoMergeLoop()
        end
        task.wait(0.5)
    end
end
local function autoBuyLoop()
    while not Library.Unloaded do
        if Toggles.AutoBuy.Value then
            fO()
        end
        task.wait(0.5)
    end
end
local function onMergeTarget(db)
    if type(db) == "number" then
        db = gl[db]
    end
    ga = gj[db] or 2
end
local function fn459(ay)
    local hs = {}
    for i, child in ay:GetChildren() do
        if child:FindFirstChild("NPCs") then
            table.insert(hs, child)
        end
    end
    return hs
end
local function onPlaceAllNow()
    task.spawn(autoPlaceLoop)
end
local function autoBuyFloorsLoop()
    while not Library.Unloaded do
        if Toggles.AutoBuyFloors.Value then
            autoUpgradeLoop()
        end
        task.wait(1)
    end
end
local function onBuyAmount(cV)
    fQ = cV
end
local function autoCollectLoop()
    while not Library.Unloaded do
        if Toggles.AutoCollect.Value then
            gn()
        else
            task.wait(0.2)
        end
        task.wait(0.05)
    end
end
local function fn627()
    if setclipboard then
        setclipboard(fZ)
    elseif toclipboard then
        toclipboard(fZ)
    end
    Library:Notify("Discord link copied to clipboard!", 4)
end
local function onMergeCharacters(dl)
    local jZ = {}
    for k, v in dl do
        if v then
            jZ[k] = true
        end
    end
    gm = jZ
end
local function onSelectNone()
    Options.MergeCharacters:SetValue({})
end
local function fn652()
    local iC = DataServiceClient:GetDataValue("Floors")
    local iD = 1
    if type(iC) == "table" then
        for k in iC do
            local iE = tonumber(tostring(k):match("Floor(%d+)"))
            if iE and iE > iD then
                iD = iE
            end
        end
    elseif type(iC) == "number" then
        iD = iC
    end
    return iD
end
autoUpgradeLoop = nil
fJ = nil
fM = nil
fN = nil
fO = nil
fQ = nil
Options = nil
autoPlaceLoop = nil
fU = nil
fV = nil
Toggles = nil
fY = nil
fZ = nil
f0 = nil
autoMergeLoop = nil
f2 = nil
DataServiceClient = nil
Library = nil
f5 = nil
f8 = nil
f9 = nil
ga = nil
LocalPlayer = nil
connection = nil
PlotNetwork = nil
gg = nil
gh = nil
VirtualUser = nil
gj = nil
gk = nil
gl = nil
gm = nil
gn = nil
RebirthNetwork = nil
gq = nil
local NPCKeyShared, ShopNetwork, MergeShared, FloorShared, BuildingShared, fX, f_, f6, MergeNetwork, FloorNetwork, GRID_COUNT, gp, BuildingNetwork
local CommunityGroup2
local gy_1
VirtualUser, LocalPlayer, Library, Toggles, Options, ShopNetwork, BuildingNetwork, RebirthNetwork, PlotNetwork, FloorNetwork, MergeNetwork, DataServiceClient, BuildingShared, FloorShared, MergeShared, NPCKeyShared, gp, gl, gj, GRID_COUNT, f9 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
LocalPlayer = Players.LocalPlayer
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
local Systems = ReplicatedStorage.Modules.Systems
local gt_1
ShopNetwork = require(Systems.Shop.Services.ShopNetwork)
BuildingNetwork = require(Systems.Building.Services.BuildingNetwork)
RebirthNetwork = require(Systems.Rebirth.Services.RebirthNetwork)
require(Systems.AutoCollect.Services.AutoCollectNetwork)
PlotNetwork = require(Systems.Plot.Services.PlotNetwork)
FloorNetwork = require(Systems.Floor.Services.FloorNetwork)
MergeNetwork = require(Systems.Merge.Services.MergeNetwork)
DataServiceClient = require(Systems.Data.Services.DataServiceClient)
local NPCConfig = require(Systems.NPC.Services.NPCConfig)
local RebirthShared = require(Systems.Rebirth.Services.RebirthShared)
local gA_1
BuildingShared = require(Systems.Building.Services.BuildingShared)
FloorShared = require(Systems.Floor.Services.FloorShared)
MergeShared = require(Systems.Merge.Services.MergeShared)
NPCKeyShared = require(Systems.NPC.Services.NPCKeyShared)
gp = { "NPCInventory", "VariantNPCInventory", "CharmedNPCInventory" }
gl = { "Golden", "Diamond" }
gj = { Golden = 1, Diamond = 2 }
GRID_COUNT = BuildingShared.GRID_COUNT
f9 = {}
for k in NPCConfig.NPCs do
    table.insert(f9, k)
end
gt_1, f_, fX = nil, nil, nil
local gs_1 = 3
repeat
    if not fX or not f_ or not f_ and not gt_1 or not fX and f_ and (not gs_1 or gt_1) or not (not fX or not f_ or not f_ and not gt_1 or not fX and f_ and (not gs_1 or gt_1)) then
        table.sort(f9)
        gt_1 = {}
        f_ = {}
        fX = {}
    else
        table.sort(f_)
        fX = {}
        gt_1 = {}
        f9 = {}
    end
    gs_1 = (gs_1 + 0) % 4
until (gs_1 * 1 + 3) % 4 == 2
for k, v in RebirthShared.PERKS do
    local gs_2 = v.Name or v.Id
    table.insert(gt_1, gs_2)
    f_[gs_2] = v.Id
    local gs_3 = v.MaxLevel or math.huge
    fX[gs_2] = gs_3
end
gk, gg = nil, nil
local gv = 0
local gv_1
repeat
    local gs_4 = { "zoz", "vauk", "lbvsffudfhh", "cymjlvfzqkk", "uejpv", "xwt", "nua", "zxhj" }
    local k1 = gv
    local gu_2 = gs_4[k1 % 8 + 1]
    if gu_2:len() <= gu_2:reverse():rep(k1 % 3 + 2):len() then
        table.sort(gt_1)
        gk = {}
        gg = {}
    else
        table.sort(gg)
        gt_1 = {}
        gk = {}
    end
    gv = (gv + 2) % 4
until (gv * 3 + 1) % 4 == 3
for i, v in ipairs(RebirthShared.REBIRTH_OPTIONS) do
    local gs_5 = v.Label or tostring(i)
    table.insert(gk, gs_5)
    gg[gs_5] = i
end
fZ, fU, fQ, fM, fJ, gq, gm = nil, nil, nil, nil, nil, nil, nil
fZ = "https://discord.gg/ehKVq7pf7v"
fU = {}
fQ = 1
fM = {}
fJ = 0.08
gq = 1
gm = {}
for k, v in f9 do
    gm[v] = true
end
ga, f5, f2, f0, gv_1, gy_1, CommunityGroup2, gA_1, connection, fY, f8, fV, gn, fO, autoPlaceLoop, f6, autoUpgradeLoop, autoMergeLoop, gh, fN = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ga = 2
f5 = 0
f2 = true
fY = fn3
f8 = fn283
fV = fn459
gn = fn425
fO = function()
    for k in fU do
        local hY = k
        local hT = Library.Unloaded
        local h0 = if hT then 1 else 0
        local hZ = 361 * h0 + 2667 * (1 - h0)
        local h_ = 1957 * h0 + 1228 * (1 - h0)
        if not ((hZ * 2400 + h_ * 2923 + hZ * h_) % 16777213 == 7293188) then
            hT = not Toggles.AutoBuy.Value
        end
        if hT then
            break
        end
        pcall(function()
            ShopNetwork.Remotes.BuyNPC:InvokeServer(hY, fQ)
        end)
        task.wait(0.1)
    end
end
autoPlaceLoop = function()
    local h9_1
    local h2 = fY()
    if not h2 then
        return
    end
    local Data = DataServiceClient:GetReplica().Data
    local NPCInventory = Data.NPCInventory
    local PlacedNPCs = Data.PlacedNPCs
    if not NPCInventory then
        return
    end
    local h3_1 = fV(h2)
    if #h3_1 == 0 then
        return
    end
    local ie = false
    for k, v in NPCInventory do
        local ih = k
        local ic = 13
        while true do
            if ic < 7 then
                if ic < 3 then
                    if ic < 1 then
                        ic = if h2 then 3 else 6
                    elseif ic < 2 then
                        ic = 10
                    else
                        local h4_1 = false
                        for k, v in h3_1 do
                            local Name = v.Name
                            local h6 = PlacedNPCs[Name]
                            for i = 1, GRID_COUNT do
                                local iu = i
                                for i = 1, GRID_COUNT do
                                    local iy = i
                                    local h7 = BuildingShared.GridKey(iu, iy)
                                    local h8 = h6 and h6[h7]
                                    local h8_1
                                    if not h8 then
                                        h8_1, h9_1 = pcall(function()
                                            return BuildingNetwork.Remotes.PlaceNPC:InvokeServer(ih, Name, iu, iy, 0)
                                        end)
                                        if h8_1 and h9_1 then
                                            if not PlacedNPCs[Name] then
                                                PlacedNPCs[Name] = {}
                                            end
                                            PlacedNPCs[Name][h7] = true
                                            h4_1 = true
                                            break
                                        end
                                    end
                                end
                                if h4_1 then
                                    break
                                end
                            end
                            if h4_1 then
                                break
                            end
                        end
                        local iB = if not h4_1 then 1 else 0
                        local iz = 565 * iB + 1410 * (1 - iB)
                        local iA = 581 * iB + 3548 * (1 - iB)
                        ic = if (iz * 2695 + iA * 3636 + iz * iA) % 16777213 == 3963456 then 14 else 12
                    end
                elseif ic < 5 then
                    if ic < 4 then
                        ic = 8
                    else
                        ic = 1
                    end
                elseif ic < 6 then
                    ic = if h2 > 0 then 2 else 4
                else
                    h2 = v
                    ic = 7
                end
            elseif ic < 11 then
                if ic < 9 then
                    if ic < 8 then
                        ic = 5
                    else
                        ie = true
                        ic = 10
                    end
                elseif ic < 10 then
                    ic = 7
                else
                    break
                end
            elseif ic < 13 then
                if ic < 12 then
                    h2 = not Toggles.AutoPlace.Value
                    ic = 0
                else
                    h2 -= 1
                    task.wait(0.1)
                    ic = 9
                end
            elseif ic < 14 then
                h2 = Library.Unloaded
                ic = if h2 then 0 else 11
            else
                ic = 1
            end
        end
        if ie then
            break
        end
    end
end
f6 = fn652
autoUpgradeLoop = function()
    local iL = f6() + 1
    if iL <= FloorShared.MAX_FLOORS then
        pcall(function()
            FloorNetwork.Remotes.BuyFloor:InvokeServer(iL)
        end)
    end
end
autoMergeLoop = function()
    local Data = DataServiceClient:GetReplica().Data
    for k, v in gp do
        local iS = Data[v]
        local iS_7
        if iS then
            for k, v in iS do
                if Library.Unloaded or not Toggles.AutoMerge.Value then
                    return
                end
                local iS_2 = NPCKeyShared.Parse(k)
                local iT = MergeShared.GetNextVariant(iS_2.Variant)
                local iU = iT and MergeShared.GetOrder(iT) <= ga
                local iV_2
                if gm[iS_2.NpcId] and iU then
                    local iS_3 = MergeShared.MERGE_RULES[iT]
                    local iS_4 = iS_3 and iS_3.Price or 0
                    local iT_2 = v
                    local jb = false
                    repeat
                        local iQ
                        if iT_2 - f5 >= MergeShared.MERGE_COUNT then
                            local iS_5 = f2
                            if iS_5 then
                                local iV_1 = DataServiceClient:GetDataValue("Gems") or 0
                                iS_5 = iV_1 < iS_4
                            end
                            if iS_5 then
                                jb = true
                            else
                                iQ = {}
                                local MERGE_COUNT = MergeShared.MERGE_COUNT
                                local jh = 1
                                while jh <= MERGE_COUNT do
                                    table.insert(iQ, k)
                                    jh += 1
                                end
                                iS_7, iV_2 = pcall(function()
                                    return MergeNetwork.Remotes.Merge:InvokeServer(iQ)
                                end)
                                if not (iS_7 and iV_2 == true) then
                                    jb = true
                                else
                                    iT_2 -= MergeShared.MERGE_COUNT
                                    task.wait(0.15)
                                end
                            end
                        else
                            jb = true
                        end
                    until jb
                end
            end
        end
    end
end
gh = fn149
local gs_6 = fn627
if (not gv_1 or gy_1) and (not gy_1 or not gn) and (not gv_1 or gn or (gv_1 or not gv_1)) or not gn and not gv_1 and (not gv_1 or false) and ((false or not gy_1) and (false and not gn)) or not ((not gv_1 or gy_1) and (not gy_1 or not gn) and (not gv_1 or gn or (gv_1 or not gv_1)) or not gn and not gv_1 and (not gv_1 or false) and ((false or not gy_1) and (false and not gn))) then
    fN = function()
        for k in fM do
            if Library.Unloaded or not Toggles.AutoUpgrade.Value then
                break
            else
                local jo = f_[k]
                if jo then
                    local jp_3 = DataServiceClient:GetDataValue(jo .. "Level") or 0
                    if jp_3 < (fX[k] or math.huge) then
                        pcall(function()
                            RebirthNetwork.Remotes.BuyPerk:InvokeServer(jo)
                        end)
                        task.wait(0.1)
                    end
                end
            end
        end
    end
else
    autoUpgradeLoop = function()
        for k in fM do
            if Library.Unloaded or not Toggles.AutoUpgrade.Value then
                break
            else
                local jo = f_[k]
                if jo then
                    local jp_1 = DataServiceClient:GetDataValue(jo .. "Level") or 0
                    if jp_1 < (fX[k] or math.huge) then
                        pcall(function()
                            RebirthNetwork.Remotes.BuyPerk:InvokeServer(jo)
                        end)
                        task.wait(0.1)
                    end
                end
            end
        end
    end
end
local Window = Library:CreateWindow({
    Title = "Become a Billionaire",
    Footer = "Ouroboros Hub",
    Icon = 18657887261,
    NotifySide = "Right",
    Size = UDim2.fromOffset(920, 680)
})
local gE = {
    Main = Window:AddTab("Main", "dollar-sign"),
    Merge = Window:AddTab("Merge", "combine"),
    Settings = Window:AddTab("Settings", "settings")
}
local CollectMoneyGroup = gE.Main:AddLeftGroupbox("Collect Money", "hand-coins")
CollectMoneyGroup:AddToggle("AutoCollect", { Text = "Auto Collect Money", Default = false })
CollectMoneyGroup:AddToggle("ReturnAfterCollect", { Text = "Return To Start After Collect", Default = true })
CollectMoneyGroup:AddSlider("CollectDwell", {
    Text = "Collect Dwell",
    Default = 0.08,
    Min = 0.03,
    Max = 0.3,
    Rounding = 2,
    Suffix = "s",
    Callback = onCollectDwell
})
CollectMoneyGroup:AddButton("Collect Now", onCollectNow)
local BuyCharactersGroup = gE.Main:AddRightGroupbox("Buy Characters", "shopping-cart")
BuyCharactersGroup:AddToggle("AutoBuy", { Text = "Auto Buy Characters", Default = false })
BuyCharactersGroup:AddDropdown("BuyCharacters", { Text = "Characters", Values = f9, Default = {}, Multi = true, Callback = onBuyCharacters })
BuyCharactersGroup:AddSlider("BuyAmount", { Text = "Buy Amount", Default = 1, Min = 1, Max = 50, Rounding = 0, Callback = onBuyAmount })
local PlaceCharactersGroup = gE.Main:AddLeftGroupbox("Place Characters", "layout-grid")
PlaceCharactersGroup:AddToggle("AutoPlace", { Text = "Auto Place Characters", Default = false })
PlaceCharactersGroup:AddButton("Place All Now", onPlaceAllNow)
local FloorsGroup = gE.Main:AddLeftGroupbox("Floors", "building")
FloorsGroup:AddToggle("AutoBuyFloors", { Text = "Auto Buy Floors", Default = false })
FloorsGroup:AddButton("Buy Next Floor", onBuyNextFloor)
local RebirthUpgradesGroup = gE.Main:AddRightGroupbox("Rebirth Upgrades", "trending-up")
RebirthUpgradesGroup:AddToggle("AutoUpgrade", { Text = "Auto Purchase Upgrades", Default = false })
RebirthUpgradesGroup:AddDropdown("UpgradeSelection", { Text = "Upgrades", Values = gt_1, Default = {}, Multi = true, Callback = onUpgradeSelection })
RebirthUpgradesGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
RebirthUpgradesGroup:AddDropdown("RebirthAmount", { Text = "Rebirth Amount", Values = gk, Default = 1, Multi = false, Callback = onRebirthAmount })
local AutoMergeGroup = gE.Merge:AddLeftGroupbox("Auto Merge", "combine")
AutoMergeGroup:AddToggle("AutoMerge", { Text = "Auto Merge", Default = false })
AutoMergeGroup:AddDropdown("MergeTarget", { Text = "Merge Up To", Values = gl, Default = 2, Multi = false, Callback = onMergeTarget })
AutoMergeGroup:AddSlider("MergeKeep", { Text = "Keep Per Stack", Default = 0, Min = 0, Max = 50, Rounding = 0, Callback = onMergeKeep })
AutoMergeGroup:AddToggle("MergeOnlyIfGems", { Text = "Only Merge If Enough Gems", Default = true, Callback = onMergeOnlyIfGems })
AutoMergeGroup:AddButton("Merge Now", onMergeNow)
local MergeCharactersGroup = gE.Merge:AddRightGroupbox("Merge Characters", "users")
MergeCharactersGroup:AddDropdown("MergeCharacters", { Text = "Characters", Values = f9, Default = f9, Multi = true, Callback = onMergeCharacters })
MergeCharactersGroup:AddButton("Select All", onSelectAll)
MergeCharactersGroup:AddButton("Select None", onSelectNone)
local CommunityGroup = gE.Merge:AddRightGroupbox("Community", "message-circle")
if MergeCharactersGroup and gA_1 and (not RebirthUpgradesGroup or not CommunityGroup) and (MergeCharactersGroup and MergeCharactersGroup or (f8 or not gA_1)) or (gA_1 and CommunityGroup and (not MergeCharactersGroup or CommunityGroup) or (not CommunityGroup and not MergeCharactersGroup or (RebirthUpgradesGroup or f8))) or not (MergeCharactersGroup and gA_1 and (not RebirthUpgradesGroup or not CommunityGroup) and (MergeCharactersGroup and MergeCharactersGroup or (f8 or not gA_1)) or (gA_1 and CommunityGroup and (not MergeCharactersGroup or CommunityGroup) or (not CommunityGroup and not MergeCharactersGroup or (RebirthUpgradesGroup or f8)))) then
    CommunityGroup:AddButton("Join Discord for Dupe", gs_6)
    CommunityGroup2 = gE.Main:AddRightGroupbox("Community", "message-circle")
else
    gE:AddButton("Join Discord for Dupe", CommunityGroup)
    gs_6 = CommunityGroup2.Main:AddRightGroupbox("Community", "message-circle")
end
CommunityGroup2:AddButton("Join Discord for Dupe", gs_6)
local MenuGroup = gE.Settings:AddLeftGroupbox("Menu", "wrench")
MenuGroup:AddButton("Join Discord for Dupe", gs_6)
MenuGroup:AddLabel("UI Keybind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "UI Keybind" })
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true, Callback = onAntiAfk })
MenuGroup:AddButton("Unload", onUnload)
Library.ToggleKeybind = Options.MenuKeybind
Library:OnUnload(fn231)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Mint")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/BecomeABillionaire")
SaveManager:BuildConfigSection(gE.Settings)
ThemeManager:ApplyToTab(gE.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
task.spawn(autoCollectLoop)
task.spawn(autoBuyLoop)
task.spawn(autoPlaceLoop2)
task.spawn(autoUpgradeLoop2)
task.spawn(autoRebirthLoop)
task.spawn(autoBuyFloorsLoop)
task.spawn(autoMergeLoop2)
