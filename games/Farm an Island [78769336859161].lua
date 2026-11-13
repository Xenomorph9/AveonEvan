local VirtualUser
local Options
local h1
local Toggles
local connection2
local CollectionService
local ia
local Library
local LocalPlayer
local id
local connection
local iE
local hY
local ik
local Events
local h3
local ir
local iu
local OnoeNum
local ix
local hR
local iA
local peek
local ig
local localPlayerSessionAtom
local h2
local it
local ib
local iz
local ie
local iC
local TweenService
local function onRscripts()
    h2(iu, "Copied Rscripts profile to clipboard")
end
local function fn104(aF, aG, aH)
    return string.format("<b>%s</b> %s %s", aF, ir("-", "#5a6070"), ir(aG, aH))
end
local function fn141(di)
    local Character = LocalPlayer.Character
    local kY = Character and Character:FindFirstChildOfClass("Humanoid")
    if kY then
        kY:EquipTool(di)
    end
end
local function fn213(aQ)
    local DiscordGroup = aQ:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = iC })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = iC })
end
local function fn271()
    local kF = {}
    for k, v in pairs(id().tiles) do
        if v.status == "unlocked" and v.plant then
            table.insert(kF, k)
        end
    end
    table.sort(kF)
    return kF
end
local function fn319(aC, aD)
    return string.format('<font color="%s">%s</font>', aD, aC)
end
local function fn327(av, aw)
    if setclipboard then
        setclipboard(av)
    elseif toclipboard then
        toclipboard(av)
    end
    Library:Notify(aw)
end
local function fn334()
    h2(ix, "Copied Discord invite to clipboard")
end
local function autoUpgradesLoop()
    while not Library.Unloaded do
        task.wait(Options.UpgradeDelay.Value)
        if Toggles.AutoUpgrades.Value then
            if Toggles.UpgradeGrowthSpeed.Value then
                pcall(function()
                    Events.upgrades.upgradeGrowthSpeed()
                end)
            end
            if Toggles.UpgradeHarvestTool.Value then
                pcall(function()
                    Events.upgrades.upgradeHarvestTool()
                end)
            end
            if Toggles.UpgradeSeedLuck.Value then
                pcall(function()
                    Events.upgrades.upgradeSeedLuck()
                end)
            end
            if Toggles.UpgradeMachineSlot.Value then
                pcall(function()
                    Events.upgrades.upgradeSeedsMachineSlot()
                end)
            end
        end
    end
end
local function autoBankLoop()
    while not Library.Unloaded do
        task.wait(Options.BankDelay.Value)
        if Toggles.AutoBank.Value then
            local lR = id()
            local lS = not lR.isConvertingCrops
            if lS ~= false then
                lS = not OnoeNum.new(lR.crops):lessEquals(0)
            end
            if lS then
                pcall(function()
                    Events.bank.convertCrops()
                end)
            end
        end
    end
end
local function autoBuyTilesLoop()
    local CFrame2
    while not Library.Unloaded do
        task.wait(0.3)
        if Toggles.AutoBuyTiles.Value then
            local kp_1 = CollectionService:GetTagged(it)
            local kq_1 = h1()
            if kq_1 and #kp_1 > 0 then
                if not CFrame2 then
                    CFrame2 = kq_1.CFrame
                end
                local kr_1 = kp_1[1]
                local Position = kr_1:GetPivot().Position
                if (kq_1.Position - Position).Magnitude > 12 then
                    kq_1.CFrame = CFrame.new(Position + Vector3.new(0, 5, 0))
                end
            elseif CFrame2 then
                if kq_1 and Toggles.ReturnAfterUnlock.Value then
                    kq_1.CFrame = CFrame2
                end
                CFrame2 = nil
            end
        elseif CFrame2 then
            local kp_4 = h1()
            if kp_4 and Toggles.ReturnAfterUnlock.Value then
                kp_4.CFrame = CFrame2
            end
            CFrame2 = nil
        end
    end
end
local function onCopyJoinScript_JobID()
    local a6 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, ie)
    h2(a6, "Copied join script to clipboard")
end
local function autoMutationLoop()
    while not Library.Unloaded do
        task.wait(Options.MutationClickDelay.Value)
        if Toggles.AutoMutation.Value and firesignal then
            local lI_1 = LocalPlayer.PlayerGui:FindFirstChild(h3)
            if lI_1 then
                for i, descendant in ipairs(lI_1:GetDescendants()) do
                    if descendant:IsA("TextButton") then
                        pcall(firesignal, descendant.Activated)
                    end
                end
            end
        end
    end
end
local function fn485()
    local kO = {}
    for i, v in ipairs(CollectionService:GetTagged(ia)) do
        local attr = v:GetAttribute("uuid")
        if attr then
            table.insert(kO, attr)
        end
    end
    return kO
end
local function fn488()
    connection:Disconnect()
    connection2:Disconnect()
    local mg = h1()
    if mg then
        mg.Anchored = false
    end
end
local function autoBuyChickensLoop()
    while not Library.Unloaded do
        task.wait(Options.BuyChickenDelay.Value)
        if Toggles.AutoBuyChickens.Value then
            local chicken = id().chickenFarm.chicken
            if chicken and (not Toggles.OnlyHugeChickens.Value or chicken.size == "Huge") then
                pcall(function()
                    Events.chickenFarm.buyChicken()
                end)
            end
        end
    end
end
local function fn524()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    iA = tick()
end
local function onInputBegan()
    iE = tick()
end
local function fn587()
    return Toggles.AutoHarvest.Value
end
local function autoSpinLoop()
    while not Library.Unloaded do
        task.wait(Options.SpinDelay.Value)
        if Toggles.AutoSpin.Value then
            pcall(function()
                Events.seedsMachine.drawSeeds(Options.SpinQuality.Value)
            end)
        end
    end
end
local function fn609(aj, ak, al)
    local Magnitude = (aj.Position - ak.Position).Magnitude
    if Magnitude < 4 then
        return true
    end
    local jD = math.clamp(Magnitude / Options.TweenSpeed.Value, 0.05, 8)
    aj.Anchored = true
    local jC_1 = TweenService:Create(aj, TweenInfo.new(jD, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), { CFrame = ak })
    jC_1:Play()
    local jE = 0
    while jC_1.PlaybackState == Enum.PlaybackState.Playing do
        jE += task.wait()
        local jF = Library.Unloaded or not al() or jE > jD + 2
        if jF then
            jC_1:Cancel()
            aj.Anchored = false
            return false
        end
    end
    aj.Anchored = false
    return true
end
local function fn611()
    local Character = LocalPlayer.Character
    local jw = Character and Character:FindFirstChild("HumanoidRootPart")
    return jw
end
local function fn625()
    local jJ_1
    local jI_1
    if identifyexecutor then
        jJ_1, jI_1 = identifyexecutor()
        local jK = jJ_1 ~= ""
        local jL = type(jJ_1) == "string" and jK
        if jL then
            local jK_1 = type(jI_1) == "string" and jI_1 ~= "" and jJ_1 .. " " .. jI_1
            hY = jK_1 or jJ_1
        end
    end
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local mc = tick() - iE
            local md = tick() - iA
            if mc >= 300 and md >= 60 then
                pcall(ig)
            else
                if mc < 300 and md >= 300 then
                    pcall(ig)
                end
            end
        end
    end
end
local function fn653()
    return peek(localPlayerSessionAtom)
end
local function onUnload()
    Library:Unload()
end
local function onInputChanged(fk)
    local UserInputType = fk.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        iE = tick()
    end
end
local function worker()
    local jO_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local jN = math.floor(os.clock() - hR)
        if jN < 60 then
            jO_1 = jN .. "s"
        elseif jN < 3600 then
            jO_1 = string.format("%dm %ds", jN // 60, jN % 60)
        else
            jO_1 = string.format("%dh %dm", jN // 3600, jN % 3600 // 60)
        end
        ik:SetText(ib("Session time", jO_1, iz))
    end
end
hR = nil
LocalPlayer = nil
connection = nil
TweenService = nil
hY = nil
VirtualUser = nil
h1 = nil
h2 = nil
h3 = nil
CollectionService = nil
OnoeNum = nil
ia = nil
ib = nil
peek = nil
id = nil
ie = nil
ig = nil
localPlayerSessionAtom = nil
ik = nil
Options = nil
Events = nil
Toggles = nil
ir = nil
connection2 = nil
it = nil
iu = nil
ix = nil
Library = nil
iz = nil
iA = nil
iC = nil
iE = nil
local OrderedGadgets, hT, GadgetsData, hX, h_, BackpackUtils, h4, h5, RebirthUtils, ih, ii, im, iq, iv, iw, iB, iD
local SeedMachineGroup
local iF_2
Library, Toggles, Options, CollectionService, VirtualUser, TweenService, LocalPlayer, ix, iu, Events, localPlayerSessionAtom, peek, OnoeNum, RebirthUtils, BackpackUtils, GadgetsData, OrderedGadgets, iv, it, iq, im, ih, ia, h3, hX, hT, iD = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
CollectionService = game:GetService("CollectionService")
local UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
TweenService = game:GetService("TweenService")
LocalPlayer = Players.LocalPlayer
local iS = "Farm an Island"
ix = "https://discord.gg/ehKVq7pf7v"
iu = "https://rscripts.net/@Ouroboros"
local TS = LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("TS")
Events = require(TS:WaitForChild("network")).Events
localPlayerSessionAtom = require(TS.states.localPlayerSessionAtom).localPlayerSessionAtom
peek = require(ReplicatedStorage.rbxts_include.node_modules["@rbxts"].charm).peek
OnoeNum = require(ReplicatedStorage.rbxts_include.node_modules["@rbxts"].serikanum.SerikaNum).OnoeNum
RebirthUtils = require(ReplicatedStorage.TS.utils["Rebirth.utils"]).RebirthUtils
BackpackUtils = require(ReplicatedStorage.TS.utils["Backpack.utils"]).BackpackUtils
local Gadgets_data = require(ReplicatedStorage.TS.data.gadgets["Gadgets.data"])
GadgetsData = Gadgets_data.GadgetsData
OrderedGadgets = Gadgets_data.OrderedGadgets
local iL = tostring(LocalPlayer.UserId)
iv = "HarvestableTile_" .. iL
it = "UnlockableTile_" .. iL
iq = "TileGift_" .. iL
im = "SeedTool_" .. iL
ih = "GadgetTool_" .. iL
ia = "Pet_" .. iL
h3 = "MutationMiniGameScreenPanel"
local iN = { "AMAZING", "GOOD", "OK" }
hX = { "Slot_1", "Slot_2", "Slot_3", "Slot_4", "Slot_5", "Slot_6" }
hT = { Watering_Can = "useWateringCan", Fertilizer = "useFertilizer", Spray = "useSpray" }
iD = { Treat = "useTreat", Toy = "useToy" }
local iR = {}
local iM = {}
local GameInfoGroup
for i, v in ipairs(OrderedGadgets) do
    local displayName = GadgetsData[v].displayName
    table.insert(iR, displayName)
    iM[displayName] = v
end
iz, id, h1, iB, h_, h2, iC, ir, ib = nil, nil, nil, nil, nil, nil, nil, nil, nil
id = fn653
h1 = fn611
iB = function(aa)
    local jz_1
    local jy_1
    if type(aa) ~= "table" then
        return false
    end
    jy_1, jz_1 = pcall(function()
        return OnoeNum.new(aa):lessEquals(OnoeNum.new(id().currency))
    end)
    return jy_1 and jz_1
end
h_ = fn609
h2 = fn327
iC = fn334
ir = fn319
ib = fn104
local iK_1 = "#7fd47f"
local iJ_1 = "#6ec1ff"
iz = "#e8a34d"
local iT = "#8b93a3"
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = ix, Copyable = true }, "|", iS },
    Icon = 12645376577,
    Size = UDim2.fromOffset(980, 620),
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local iH_1
local iL_1 = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "sprout"),
    Settings = Window:AddTab("Settings", "settings")
}
iL_1.Farming = iL_1.Main:AddSubTab("Farming", "wheat")
iL_1.Seeds = iL_1.Main:AddSubTab("Seeds", "dices")
iL_1.Gear = iL_1.Main:AddSubTab("Gear", "wrench")
iL_1.Chickens = iL_1.Main:AddSubTab("Chickens", "egg")
iL_1.Progress = iL_1.Main:AddSubTab("Progress", "trending-up")
for k, v in iL_1 do
    if v ~= iL_1.Main then
        fn213(v)
    end
end
hY, iF_2, GameInfoGroup, ik, ie, iH_1 = nil, nil, nil, nil, nil, nil
local iG_1 = 8
repeat
    local iI_2 = (iG_1 * 2 + 2) % 3 + 1
    if iI_2 <= 2 then
        if iI_2 <= 1 then
            local iI_3 = (vector.create((iG_1 * 7 + 3) % 11 + 1, (iG_1 * 3 + 4) % 13 + 1, (iG_1 * 1 + 10) % 17 + 1))
            local iU_1 = (vector.create((iG_1 * 4 + 4) % 11 + 1, (iG_1 * 8 + 10) % 13 + 1, (iG_1 * 10 + 8) % 17 + 1))
            local mO = vector.cross(iI_3, iU_1)
            local mP = vector.dot(iI_3, iU_1)
            if vector.dot(mO, mO) + mP * mP == vector.dot(iI_3, iI_3) * vector.dot(iU_1, iU_1) then
                hY = "Unknown"
                pcall(fn625)
                iF_2 = iL_1.Info:AddLeftGroupbox("Account", "circle-user")
                iF_2:AddLabel(ib("User", LocalPlayer.Name, iK_1), true)
                iF_2:AddLabel(ib("Status", "Keyless", iK_1), true)
                iF_2:AddLabel(ib("Executor", hY, iK_1), true)
                GameInfoGroup = iL_1.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                GameInfoGroup:AddLabel(ir(iS .. " [" .. tostring(game.PlaceId) .. "]", iJ_1), true)
                GameInfoGroup:AddLabel(ib("Place ID", tostring(game.PlaceId), iJ_1), true)
                ik = GameInfoGroup:AddLabel(ib("Session time", "0s", iz), true)
            else
                ib = "Unknown"
                pcall(fn625)
                iJ_1 = hY.Info:AddLeftGroupbox("Account", "circle-user")
                iJ_1:AddLabel(iK_1("User", nil, LocalPlayer), true)
                iJ_1:AddLabel(iK_1("Status", "Keyless", LocalPlayer), true)
                iJ_1:AddLabel(iK_1("Executor", ib, LocalPlayer), true)
                ik = hY.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                ik:AddLabel(GameInfoGroup(iL_1 .. " [" .. tostring(game.PlaceId) .. "]", iF_2), true)
                ik:AddLabel(iK_1("Place ID", tostring(game.PlaceId), iF_2), true)
                iS = ik:AddLabel(iK_1("Session time", "0s", ir), true)
            end
            iG_1 = (iG_1 + 2) % 24
        else
            local mM = bit32.rrotate(bit32.bxor(bit32.lrotate(iG_1, 31), string.byte(tostring(iF_2))), 3)
            if bit32.bxor(bit32.lrotate(bit32.bxor(mM, 2587666931), 22), 2095484714) ~= bit32.lrotate(mM, 22) then
                iF_2 = tostring(game.JobId)
            else
                ie = tostring(game.JobId)
            end
            iG_1 = (iG_1 + 5) % 24
        end
    else
        if iG_1 * 54290303 + 1 + 7 >= iG_1 * 54290303 + 1 + 7 + 1 then
            ie = #iH_1 > 18
        else
            iH_1 = #ie > 18
        end
        iG_1 = (iG_1 + 20) % 24
    end
until (iG_1 * 17 + 21) % 24 == 16
if iH_1 then
    local iF_3 = 2
    repeat
        local iG_2 = (vector.create((iF_3 * 1 + 5) % 11 + 1, (iF_3 * 3 + 12) % 13 + 1, (iF_3 * 15 + 12) % 17 + 1))
        local iI_4 = (vector.create((iF_3 * 2 + 9) % 11 + 1, (iF_3 * 8 + 11) % 13 + 1, (iF_3 * 15 + 10) % 17 + 1))
        local nO = vector.cross(iG_2, iI_4)
        local nP = vector.dot(iG_2, iI_4)
        if vector.dot(nO, nO) + nP * nP == vector.dot(iG_2, iG_2) * vector.dot(iI_4, iI_4) then
            iH_1 = string.sub(ie, 1, 18) .. "..."
        else
            ie = string.sub(iH_1, 1, 18) .. "..."
        end
        iF_3 = (iF_3 + 5) % 8
    until (iF_3 * 5 + 2) % 8 == 5
end
local iF_4 = iH_1 or ie
hR, SeedMachineGroup, iE, iA, connection, connection2, ii, h5, iw, h4, ig = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
GameInfoGroup:AddLabel(ib("Server", iF_4, iT), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
hR = os.clock()
task.spawn(worker)
local ScriptsGroup = iL_1.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(ir("Included in this hub", iT), true)
ScriptsGroup:AddLabel(ir(iS, iJ_1), true)
local FeaturesGroup = iL_1.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(ir("Auto Harvest", iJ_1), true)
FeaturesGroup:AddLabel(ir("Auto Place Seeds", iJ_1), true)
FeaturesGroup:AddLabel(ir("Auto Buy Tiles", iz), true)
FeaturesGroup:AddLabel(ir("Auto Open Gifts", iz), true)
FeaturesGroup:AddLabel(ir("Auto Spin Seeds", iK_1), true)
FeaturesGroup:AddLabel(ir("Auto Buy Gear", iz), true)
FeaturesGroup:AddLabel(ir("Auto Use Gear", iz), true)
FeaturesGroup:AddLabel(ir("Auto Buy Chickens", iK_1), true)
FeaturesGroup:AddLabel(ir("Auto Place Chickens", iK_1), true)
FeaturesGroup:AddLabel(ir("Auto Mutation Minigame", iJ_1), true)
FeaturesGroup:AddLabel(ir("Auto Upgrades", iK_1), true)
FeaturesGroup:AddLabel(ir("Auto Rebirth", iT), true)
FeaturesGroup:AddLabel(ir("Auto Transfer Bank", iT), true)
local SocialsGroup = iL_1.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = iC })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = iL_1.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = iC })
local FaqGroup = iL_1.Info:AddRightGroupbox("FAQ", "circle-help")
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
local HarvestGroup = iL_1.Farming:AddLeftGroupbox("Harvest", "scissors")
HarvestGroup:AddToggle("AutoHarvest", { Text = "Auto Harvest", Default = false })
HarvestGroup:AddToggle("TweenToCrops", { Text = "Tween between crops", Default = true })
HarvestGroup:AddSlider("TweenSpeed", { Text = "Tween speed", Default = 80, Min = 20, Max = 400, Rounding = 0, Suffix = " studs/s" })
HarvestGroup:AddSlider("HarvestDelay", { Text = "Harvest delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 1, Suffix = "s" })
local PlantingGroup = iL_1.Farming:AddLeftGroupbox("Planting", "sprout")
PlantingGroup:AddToggle("AutoPlaceSeeds", { Text = "Auto Place Seeds", Default = false })
PlantingGroup:AddSlider("PlaceDelay", { Text = "Place delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 1, Suffix = "s" })
local TilesGroup = iL_1.Farming:AddRightGroupbox("Tiles", "hexagon")
TilesGroup:AddToggle("AutoBuyTiles", {
    Text = "Auto Buy Tiles",
    Default = false,
    Tooltip = "Moves your character onto locked tiles so the server drains cash into them"
})
TilesGroup:AddToggle("ReturnAfterUnlock", { Text = "Return to start position", Default = true })
local GiftsGroup = iL_1.Farming:AddRightGroupbox("Gifts", "gift")
GiftsGroup:AddToggle("AutoOpenGifts", { Text = "Auto Open Gifts", Default = false })
local MutationGroup = iL_1.Farming:AddRightGroupbox("Mutation", "wand-sparkles")
if (not ig or not ig or ig and not ig) and (not OuroborosHubGroup and not ig or ig and OuroborosHubGroup) or not ((not ig or not ig or ig and not ig) and (not OuroborosHubGroup and not ig or ig and OuroborosHubGroup)) then
    MutationGroup:AddToggle("AutoMutation", { Text = "Auto Press Mutation", Default = false })
    MutationGroup:AddSlider("MutationClickDelay", { Text = "Press delay", Default = 0.05, Min = 0.02, Max = 0.5, Rounding = 2, Suffix = "s" })
    SeedMachineGroup = iL_1.Seeds:AddLeftGroupbox("Seed Machine", "dices")
else
    iL_1:AddToggle("AutoMutation", { Text = "Auto Press Mutation", Default = false })
    iL_1:AddSlider("MutationClickDelay", { Max = 0.5, Suffix = "s", Text = "Press delay", Default = 0.05, Rounding = 2, Min = 0.02 })
    SeedMachineGroup.Seeds:AddLeftGroupbox("Seed Machine", "dices")
end
SeedMachineGroup:AddToggle("AutoSpin", { Text = "Auto Spin Seeds", Default = false })
SeedMachineGroup:AddDropdown("SpinQuality", { Text = "Spin quality", Values = iN, Default = 1 })
SeedMachineGroup:AddSlider("SpinDelay", { Text = "Spin delay", Default = 2, Min = 0.5, Max = 10, Rounding = 1, Suffix = "s" })
local SeedBuyingGroup = iL_1.Seeds:AddRightGroupbox("Seed Buying", "shopping-cart")
SeedBuyingGroup:AddToggle("AutoBuySeeds", { Text = "Auto Buy Drawn Seeds", Default = false })
SeedBuyingGroup:AddToggle("OnlyHugeSeeds", { Text = "Only buy Huge seeds", Default = false })
local GearShopGroup = iL_1.Gear:AddLeftGroupbox("Gear Shop", "shopping-cart")
GearShopGroup:AddToggle("AutoBuyGear", { Text = "Auto Buy Gear", Default = false })
GearShopGroup:AddDropdown("GearToBuy", {
    Text = "Gear to buy",
    Values = iR,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
GearShopGroup:AddSlider("BuyGearDelay", { Text = "Buy delay", Default = 3, Min = 1, Max = 30, Rounding = 0, Suffix = "s" })
local GearUsageGroup = iL_1.Gear:AddRightGroupbox("Gear Usage", "hand")
GearUsageGroup:AddToggle("AutoUseGear", { Text = "Auto Place Gear", Default = false })
GearUsageGroup:AddToggle("UseGearOnChickens", { Text = "Use treats and toys on chickens", Default = true })
GearUsageGroup:AddSlider("UseGearDelay", { Text = "Place delay", Default = 2, Min = 0.5, Max = 30, Rounding = 1, Suffix = "s" })
local ChickenFarmGroup = iL_1.Chickens:AddLeftGroupbox("Chicken Farm", "shopping-basket")
ChickenFarmGroup:AddToggle("AutoBuyChickens", { Text = "Auto Buy Chickens", Default = false })
ChickenFarmGroup:AddToggle("OnlyHugeChickens", { Text = "Only buy Huge chickens", Default = false })
ChickenFarmGroup:AddSlider("BuyChickenDelay", { Text = "Buy delay", Default = 1, Min = 0.5, Max = 10, Rounding = 1, Suffix = "s" })
local ChickenPlacingGroup = iL_1.Chickens:AddRightGroupbox("Chicken Placing", "map-pin")
ChickenPlacingGroup:AddToggle("AutoPlaceChickens", { Text = "Auto Place Chickens", Default = false })
ChickenPlacingGroup:AddToggle("OnlyPlaceHugeChickens", { Text = "Only place Huge chickens", Default = false })
local UpgradesGroup = iL_1.Progress:AddLeftGroupbox("Upgrades", "arrow-big-up")
UpgradesGroup:AddToggle("AutoUpgrades", { Text = "Auto Upgrades", Default = false })
UpgradesGroup:AddToggle("UpgradeGrowthSpeed", { Text = "Growth Speed", Default = true })
UpgradesGroup:AddToggle("UpgradeHarvestTool", { Text = "Harvest Tool", Default = true })
UpgradesGroup:AddToggle("UpgradeSeedLuck", { Text = "Seed Luck", Default = true })
UpgradesGroup:AddToggle("UpgradeMachineSlot", { Text = "Seed Machine Slot", Default = true })
UpgradesGroup:AddSlider("UpgradeDelay", { Text = "Upgrade delay", Default = 3, Min = 1, Max = 30, Rounding = 0, Suffix = "s" })
local BankGroup = iL_1.Progress:AddRightGroupbox("Bank", "banknote")
BankGroup:AddToggle("AutoBank", { Text = "Auto Transfer Bank", Default = false })
BankGroup:AddSlider("BankDelay", { Text = "Transfer delay", Default = 5, Min = 1, Max = 60, Rounding = 0, Suffix = "s" })
local RebirthGroup = iL_1.Progress:AddRightGroupbox("Rebirth", "rotate-ccw")
RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local MenuGroup = iL_1.Settings:AddLeftGroupbox("Menu", "menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
Library.ToggleKeybind = Options.MenuKeybind
ii = fn587
if (connection2 and not GiftsGroup and (not connection2 and not GearUsageGroup) and ((not GearUsageGroup or GiftsGroup) and (connection2 and not GearUsageGroup)) or (not GiftsGroup or GearUsageGroup) and (not GiftsGroup and GiftsGroup) and ((not GearUsageGroup or GiftsGroup) and (GearUsageGroup or connection2)) or (GearUsageGroup and GearUsageGroup or not connection2 and connection2 or not GiftsGroup and GiftsGroup and (connection2 or not GearUsageGroup)) and (GiftsGroup and not GiftsGroup or connection2 and not connection2 or (GiftsGroup and connection2 or (not GiftsGroup or GiftsGroup)))) and not (connection2 and not GiftsGroup and (not connection2 and not GearUsageGroup) and ((not GearUsageGroup or GiftsGroup) and (connection2 and not GearUsageGroup)) or (not GiftsGroup or GearUsageGroup) and (not GiftsGroup and GiftsGroup) and ((not GearUsageGroup or GiftsGroup) and (GearUsageGroup or connection2)) or (GearUsageGroup and GearUsageGroup or not connection2 and connection2 or not GiftsGroup and GiftsGroup and (connection2 or not GearUsageGroup)) and (GiftsGroup and not GiftsGroup or connection2 and not connection2 or (GiftsGroup and connection2 or (not GiftsGroup or GiftsGroup)))) then
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(Options.HarvestDelay.Value)
            if Toggles.AutoHarvest.Value then
                for i, v in ipairs(CollectionService:GetTagged(iv)) do
                    if Library.Unloaded or not Toggles.AutoHarvest.Value then
                        break
                    else
                        local attr = v:GetAttribute("hexName")
                        local jR_3 = attr and v:IsDescendantOf(workspace)
                        if jR_3 then
                            local jR_4 = true
                            if Toggles.TweenToCrops.Value then
                                local jS = h1()
                                if jS then
                                    jR_4 = h_(jS, CFrame.new(v:GetPivot().Position + Vector3.new(0, 6, 0)), ii)
                                end
                            end
                            if jR_4 then
                                pcall(function()
                                    Events.seeds.harvestLocalPlayerTile(attr)
                                end)
                            end
                        end
                    end
                end
            end
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(Options.PlaceDelay.Value)
            if Toggles.AutoPlaceSeeds.Value then
                for i, child in ipairs(LocalPlayer.Backpack:GetChildren()) do
                    local j8 = child
                    if Library.Unloaded or not Toggles.AutoPlaceSeeds.Value then
                        break
                    elseif CollectionService:HasTag(j8, im) then
                        local attr = j8:GetAttribute(BackpackUtils.SEED_NAME_ATTRIBUTE)
                        local j_
                        for k, v in pairs(id().tiles) do
                            if v.status == "unlocked" and not v.plant then
                                j_ = k
                                break
                            end
                        end
                        if attr and j_ then
                            pcall(function()
                                Events.seeds.placeSeed(j_, attr, j8:GetAttribute(BackpackUtils.SEED_LEVEL_ATTRIBUTE), j8:GetAttribute(BackpackUtils.SEED_MUTATION_ATTRIBUTE), j8:GetAttribute(BackpackUtils.SEED_SIZE_ATTRIBUTE))
                            end)
                            task.wait(0.3)
                        end
                    end
                end
            end
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AutoOpenGifts.Value then
                for i, v in ipairs(CollectionService:GetTagged(iq)) do
                    if Library.Unloaded or not Toggles.AutoOpenGifts.Value then
                        break
                    else
                        local attr = v:GetAttribute("hexName")
                        if attr then
                            pcall(function()
                                Events.tiles.openGift(attr)
                            end)
                            task.wait(0.3)
                        end
                    end
                end
            end
        end
    end)
    task.spawn(autoBuyTilesLoop)
    task.spawn(autoSpinLoop)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(0.75)
            if Toggles.AutoBuySeeds.Value then
                local seedsMachine = id().seedsMachine
                for i, v in ipairs(hX) do
                    local kE = v
                    if Library.Unloaded or not Toggles.AutoBuySeeds.Value then
                        break
                    else
                        local kw_3 = seedsMachine[kE]
                        local kx = kw_3 and kw_3.unlocked and kw_3.loadedSeed
                        local kx_3 = type(kx) == "table" and iB(kx.price)
                        if kx_3 then
                            if not Toggles.OnlyHugeSeeds.Value or kx.size == "Huge" then
                                pcall(function()
                                    Events.seedsMachine.buySeed(kE)
                                end)
                                task.wait(0.3)
                            end
                        end
                    end
                end
            end
        end
    end)
else
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(Options.HarvestDelay.Value)
            if Toggles.AutoHarvest.Value then
                for i, v in ipairs(CollectionService:GetTagged(iv)) do
                    if Library.Unloaded or not Toggles.AutoHarvest.Value then
                        break
                    else
                        local attr = v:GetAttribute("hexName")
                        local jR_1 = attr and v:IsDescendantOf(workspace)
                        if jR_1 then
                            local jR_2 = true
                            if Toggles.TweenToCrops.Value then
                                local jS = h1()
                                if jS then
                                    jR_2 = h_(jS, CFrame.new(v:GetPivot().Position + Vector3.new(0, 6, 0)), ii)
                                end
                            end
                            if jR_2 then
                                pcall(function()
                                    Events.seeds.harvestLocalPlayerTile(attr)
                                end)
                            end
                        end
                    end
                end
            end
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(Options.PlaceDelay.Value)
            if Toggles.AutoPlaceSeeds.Value then
                for i, child in ipairs(LocalPlayer.Backpack:GetChildren()) do
                    local j8 = child
                    if Library.Unloaded or not Toggles.AutoPlaceSeeds.Value then
                        break
                    elseif CollectionService:HasTag(j8, im) then
                        local attr = j8:GetAttribute(BackpackUtils.SEED_NAME_ATTRIBUTE)
                        local j_
                        for k, v in pairs(id().tiles) do
                            if v.status == "unlocked" and not v.plant then
                                j_ = k
                                break
                            end
                        end
                        if attr and j_ then
                            pcall(function()
                                Events.seeds.placeSeed(j_, attr, j8:GetAttribute(BackpackUtils.SEED_LEVEL_ATTRIBUTE), j8:GetAttribute(BackpackUtils.SEED_MUTATION_ATTRIBUTE), j8:GetAttribute(BackpackUtils.SEED_SIZE_ATTRIBUTE))
                            end)
                            task.wait(0.3)
                        end
                    end
                end
            end
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AutoOpenGifts.Value then
                for i, v in ipairs(CollectionService:GetTagged(iq)) do
                    if Library.Unloaded or not Toggles.AutoOpenGifts.Value then
                        break
                    else
                        local attr = v:GetAttribute("hexName")
                        if attr then
                            pcall(function()
                                Events.tiles.openGift(attr)
                            end)
                            task.wait(0.3)
                        end
                    end
                end
            end
        end
    end)
    task.spawn(autoBuyTilesLoop)
    task.spawn(autoSpinLoop)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(0.75)
            if Toggles.AutoBuySeeds.Value then
                local seedsMachine = id().seedsMachine
                for i, v in ipairs(hX) do
                    local kE = v
                    if Library.Unloaded or not Toggles.AutoBuySeeds.Value then
                        break
                    else
                        local kw_1 = seedsMachine[kE]
                        local kx = kw_1 and kw_1.unlocked and kw_1.loadedSeed
                        local kx_1 = type(kx) == "table" and iB(kx.price)
                        if kx_1 then
                            if not Toggles.OnlyHugeSeeds.Value or kx.size == "Huge" then
                                pcall(function()
                                    Events.seedsMachine.buySeed(kE)
                                end)
                                task.wait(0.3)
                            end
                        end
                    end
                end
            end
        end
    end)
    h5 = fn271
end
do
    iw = fn485
    h4 = fn141
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(Options.BuyGearDelay.Value)
            if Toggles.AutoBuyGear.Value then
                for i, v in ipairs(OrderedGadgets) do
                    local k7 = v
                    if Library.Unloaded or not Toggles.AutoBuyGear.Value then
                        break
                    elseif Options.GearToBuy.Value[GadgetsData[k7].displayName] then
                        local k__1 = id().gadgetShop.stock[k7]
                        local k0 = k__1 and k__1.amountLeft > 0 and iB(GadgetsData[k7].price)
                        if k0 then
                            pcall(function()
                                Events.gadgets.buyGadgetFromShop(k7)
                            end)
                            task.wait(0.3)
                        end
                    end
                end
            end
        end
    end)
    task.spawn(function()
        local k8 = 0
        local li = false
        repeat
            if not Library.Unloaded then
                task.wait(Options.UseGearDelay.Value)
                if Toggles.AutoUseGear.Value then
                    local lc = h5()
                    local k9 = iw()
                    for i, child in ipairs(LocalPlayer.Backpack:GetChildren()) do
                        if Library.Unloaded or not Toggles.AutoUseGear.Value then
                            break
                        else
                            local le_1 = CollectionService:HasTag(child, ih) and child:GetAttribute(BackpackUtils.GADGET_NAME_ATTRIBUTE)
                            local lb = le_1
                            local le_2 = lb and GadgetsData[lb]
                            if le_2 then
                                local la = hT[le_2.properties.type]
                                local ld = iD[le_2.properties.type]
                                if la and #lc > 0 then
                                    k8 = k8 % #lc + 1
                                    h4(child)
                                    pcall(function()
                                        Events.gadgets[la](lc[k8], lb)
                                    end)
                                    task.wait(0.3)
                                else
                                    if ld and Toggles.UseGearOnChickens.Value and #k9 > 0 then
                                        h4(child)
                                        pcall(function()
                                            Events.gadgets[ld](k9[1], lb)
                                        end)
                                        task.wait(0.3)
                                    end
                                end
                            end
                        end
                    end
                end
            else
                li = true
            end
        until li
    end)
    task.spawn(autoBuyChickensLoop)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AutoPlaceChickens.Value then
                for k, v in pairs(id().inventory.pets) do
                    local lz = k
                    if Library.Unloaded or not Toggles.AutoPlaceChickens.Value then
                        break
                    end
                    for k, v in pairs(v) do
                        local lF = k
                        if not Toggles.OnlyPlaceHugeChickens.Value or lF == "Huge" then
                            if v.amount > v.amountEquipped then
                                pcall(function()
                                    Events.pets.equipPet(lz, lF)
                                end)
                                task.wait(0.3)
                            end
                        end
                    end
                end
            end
        end
    end)
    task.spawn(autoMutationLoop)
    task.spawn(autoUpgradesLoop)
    task.spawn(autoBankLoop)
    task.spawn(function()
        local lW_1
        local lV_1
        local l_ = false
        repeat
            local lU
            if not Library.Unloaded then
                task.wait(5)
                if Toggles.AutoRebirth.Value then
                    lU = id()
                    lV_1, lW_1 = pcall(function()
                        return RebirthUtils.canRebirth(lU.rebirths, lU.tiles, lU.index.seeds)
                    end)
                    if lV_1 and lW_1 then
                        pcall(function()
                            Events.rebirth.perform()
                        end)
                    end
                end
            else
                l_ = true
            end
        until l_
    end)
    iE = tick()
end
iA = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local l6 = v
        pcall(function()
            l6:Disable()
        end)
    end
end)
ig = fn524
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
task.spawn(antiAfkLoop)
Library:OnUnload(fn488)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
ThemeManager:ApplyToTab(iL_1.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/farm-an-island")
SaveManager:BuildConfigSection(iL_1.Settings)
SaveManager:LoadAutoloadConfig()
