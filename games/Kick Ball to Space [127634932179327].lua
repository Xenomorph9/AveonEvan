local PackConfig
local BallShop
local eZ
local fk
local eG
local e1
local eD
local eJ
local LocalPlayer
local Library
local e7
local eP
local JerseyShop
local fd
local eV
local fg
local eY
local Options
local eF
local Kick
local Atoms
local eL
local eO
local e9
local fc
local connection
local eU
local ff
local Toggles
local WorldConfig
local eX
local GamepassGain
local connection2
local eH
local e2
local e5
local eN
local e8
local eQ
local fb
local eT
local function fn26()
    local ge = Options.BuyAmount and Options.BuyAmount.Value
    local gf = tonumber(ge) or 1
    if gf == 10 then
        local gf_1 = PackConfig.GatedQuantities[10]
        local gg = gf_1 and GamepassGain.Owns(LocalPlayer, gf_1)
        if not gg then
            return nil
        end
        return gf
    end
    return gf
end
local function fn36(Y, Z, aa)
    return string.format("<b>%s</b> %s %s", Y, eO("-", "#5a6070"), eO(Z, aa))
end
local function onInputChanged(ch)
    local UserInputType = ch.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        eL = tick()
    end
end
local function fn82(ah)
    local f6 = Toggles[ah]
    return f6 ~= nil and f6.Value == true
end
local function worker10()
    while not Library.Unloaded do
        task.wait(2)
        if eQ("AutoBuyJerseyShop") then
            e2()
        end
    end
end
local function worker8()
    while not Library.Unloaded do
        task.wait(2)
        if eQ("AutoBuyBallShop") then
            fd()
        end
    end
end
local function fn117()
    fb(false)
    eU(false)
    connection:Disconnect()
    connection2:Disconnect()
end
local function worker9()
    while not Library.Unloaded do
        task.wait(2)
        if eQ("AutoBuyTracksShop") then
            eP()
        end
    end
end
local function worker3()
    while not Library.Unloaded do
        task.wait(1)
        fb(eQ("AutoKick"))
        eU(eQ("AutoClick"))
    end
end
local function worker5()
    while not Library.Unloaded do
        task.wait(1)
        if eQ("AutoBuyUpgrades") then
            eT()
        end
    end
end
local function onCopyJoinScript_JobID()
    local bM = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, eF)
    ff(bM, "Copied join script to clipboard")
end
local function fn173(at)
    at = at == true
    if Kick.AutoClick() == at then
        return
    end
    if os.clock() - fg < 1 then
        return
    end
    fg = os.clock()
    pcall(function()
        Kick.Toggle("AutoClick")
    end)
end
local function worker7()
    while not Library.Unloaded do
        task.wait(1.5)
        if eQ("AutoBuyPackShop") then
            fc()
        end
    end
end
local function fn185(V, W)
    return string.format('<font color="%s">%s</font>', W, V)
end
local function worker6()
    while not Library.Unloaded do
        task.wait(2)
        if eQ("AutoEquipBestLegends") then
            pcall(function()
                eG:EquipBest()
            end)
        end
    end
end
local function fn199(O, P)
    if setclipboard then
        setclipboard(O)
    elseif toclipboard then
        toclipboard(O)
    end
    Library:Notify(P)
end
local function onUnload()
    Library:Unload()
end
local function worker4()
    while not Library.Unloaded do
        task.wait(1)
        local g9 = eQ("AutoRebirth") and not eN:IsMaxed() and eN:CanRebirth()
        if g9 then
            pcall(function()
                eN:Request()
            end)
        end
    end
end
local function fn315()
    if JerseyShop.HasUnbought() then
        pcall(function()
            JerseyShop.BuyAll()
        end)
    end
end
local function fn328()
    ff(eX, "Copied Discord invite to clipboard")
end
local function fn347(ay)
    local gb = ay:GetRequiredWorldId()
    if not gb then
        return true
    end
    local gc = WorldConfig.Get(gb)
    if not gc then
        return false
    elseif not gc.RequiresComplete then
        return true
    else
        return Atoms.CompletedWorlds()[gc.RequiresComplete] == true
    end
end
local function fn357()
    local gM_1
    local gL_1
    if identifyexecutor then
        gM_1, gL_1 = identifyexecutor()
        local gN = gM_1 ~= ""
        local gO = type(gM_1) == "string" and gN
        if gO then
            local gN_1 = type(gL_1) == "string" and gL_1 ~= "" and gM_1 .. " " .. gL_1
            e9 = gN_1 or gM_1
        end
    end
end
local function onInputBegan()
    eL = tick()
end
local function fn367(ao)
    ao = ao == true
    if Kick.AutoKick() == ao then
        return
    end
    if os.clock() - fk < 1 then
        return
    end
    fk = os.clock()
    pcall(function()
        Kick.Toggle("AutoKick")
    end)
end
local function fn375()
    if BallShop.HasUnbought() then
        pcall(function()
            BallShop.BuyAll()
        end)
    end
end
local function worker()
    local gR_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local gQ = math.floor(os.clock() - e5)
        if gQ < 60 then
            gR_1 = gQ .. "s"
        elseif gQ < 3600 then
            gR_1 = string.format("%dm %ds", gQ // 60, gQ % 60)
        else
            gR_1 = string.format("%dh %dm", gQ // 3600, gQ % 3600 // 60)
        end
        eJ:SetText(eD("Session time", gR_1, eZ))
    end
end
local function fn390(co)
    eU(co)
end
local function worker2()
    while not Library.Unloaded do
        task.wait(2)
        if eQ("AntiAfk") then
            local g4 = tick() - eL
            local g5 = tick() - eH
            if g4 >= 300 and g5 >= 60 then
                pcall(e8)
            else
                if g4 < 300 and g5 >= 300 then
                    pcall(e8)
                end
            end
        end
    end
end
local function fn460(bv)
    local DiscordGroup = bv:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = e1 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = e1 })
end
local function fn467()
    if not workspace.CurrentCamera then
        return
    end
    e7:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    e7:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    eH = tick()
end
local function fn471(cm)
    fb(cm)
end
local function onRscripts()
    ff(eV, "Copied Rscripts profile to clipboard")
end
local function fn499()
    if filtergc then
        eY = filtergc("function", { Name = "_onBuyAllButton", Constants = { "BuyAll" } }, true)
    end
end
Toggles = nil
eD = nil
GamepassGain = nil
eF = nil
eG = nil
eH = nil
eJ = nil
eL = nil
Library = nil
eN = nil
eO = nil
eP = nil
eQ = nil
connection = nil
JerseyShop = nil
eT = nil
eU = nil
eV = nil
BallShop = nil
eX = nil
eY = nil
eZ = nil
Kick = nil
e1 = nil
e2 = nil
Atoms = nil
LocalPlayer = nil
e5 = nil
e7 = nil
e8 = nil
e9 = nil
fb = nil
fc = nil
fd = nil
PackConfig = nil
ff = nil
fg = nil
WorldConfig = nil
Options = nil
fk = nil
connection2 = nil
local ez, PackRegistry, eC, Big, eK, e_, CurrencyController, UpgradeConfig, fh
local SocialsGroup
local ft_1
local GameInfoGroup
local fE_1
local fB_3
e7, LocalPlayer, eX, eV, Big, GamepassGain, PackRegistry, WorldConfig, PackConfig, UpgradeConfig, CurrencyController, Atoms, Kick, BallShop, JerseyShop, eN, eK, eG, eC, fh = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local fq_1
if Players and not JerseyShop and (not UpgradeConfig or Big) and (false and PackConfig and (not UpgradeConfig or not Big)) or not (Players and not JerseyShop and (not UpgradeConfig or Big) and (false and PackConfig and (not UpgradeConfig or not Big))) then
    ft_1 = game:GetService("UserInputService")
    e7 = game:GetService("VirtualUser")
else
    e7 = game:GetService("UserInputService")
    ft_1 = game:GetService("VirtualUser")
end
LocalPlayer = Players.LocalPlayer
local fs = "Kick Ball to Space"
eX = "https://discord.gg/ehKVq7pf7v"
eV = "https://rscripts.net/@Ouroboros"
local Shared = ReplicatedStorage:WaitForChild("Shared")
local fo_2
local Framework = require(Shared:WaitForChild("Modules"):WaitForChild("Core"):WaitForChild("Framework"))
local AccountGroup, fn_3
Big = require(Shared:WaitForChild("Modules"):WaitForChild("Math"):WaitForChild("Big"))
GamepassGain = require(Shared:WaitForChild("Modules"):WaitForChild("Game"):WaitForChild("GamepassGain"))
PackRegistry = require(Shared:WaitForChild("Modules"):WaitForChild("Game"):WaitForChild("PackRegistry"))
WorldConfig = require(Shared:WaitForChild("Config"):WaitForChild("WorldConfig"))
PackConfig = require(Shared:WaitForChild("Config"):WaitForChild("PackConfig"))
UpgradeConfig = require(Shared:WaitForChild("Config"):WaitForChild("UpgradeConfig"))
CurrencyController = require(Shared:WaitForChild("Controllers"):WaitForChild("Economy"):WaitForChild("Currency"):WaitForChild("CurrencyController"))
Atoms = require(Shared:WaitForChild("UI"):WaitForChild("State"):WaitForChild("Atoms"))
Kick = require(Shared:WaitForChild("UI"):WaitForChild("State"):WaitForChild("Kick"))
BallShop = require(Shared:WaitForChild("UI"):WaitForChild("State"):WaitForChild("BallShop"))
JerseyShop = require(Shared:WaitForChild("UI"):WaitForChild("State"):WaitForChild("JerseyShop"))
eN = Framework.GetService("Rebirth")
eK = Framework.GetService("Upgrade")
eG = Framework.GetService("LegendInventory")
eC = Framework.GetService("Pack")
local fr = {}
fh = {}
for k, v in PackRegistry.GetAll() do
    local DisplayName = v.DisplayName
    table.insert(fr, DisplayName)
    fh[DisplayName] = v.Id
end
eY, Library, Toggles, Options, eZ, fk, fg, ff, e1, eO, eD, eQ, fb, eU, ez, e_, fc, eT, fd, e2, eP, fq_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local fy = { "1", "3", "10" }
eY = nil
pcall(fn499)
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
ff = fn199
e1 = fn328
eO = fn185
eD = fn36
local fA = "#7fd47f"
local fz = "#6ec1ff"
eZ = "#e8a34d"
local fx = "#8b93a3"
eQ = fn82
fk = 0
fg = 0
fb = fn367
eU = fn173
ez = fn347
e_ = fn26
fc = function()
    local gi, gj
    gj = fh[Options.Pack.Value]
    gi = e_()
    if not gj or not gi then
        return
    end
    local gk_1 = PackRegistry.Get(gj)
    local gl_1 = not gk_1
    local gq = if gl_1 then 1 else 0
    local go = 2779 * gq + 1214 * (1 - gq)
    local gp = 232 * gq + 1733 * (1 - gq)
    if not ((go * 480 + gp * 1518 + go * gp) % 16777213 == 2330824) then
        gl_1 = not ez(gk_1)
    end
    if gl_1 then
        return
    end
    local gl_2 = Big.New(gk_1:GetTotalCost(gi))
    local gm = CurrencyController:Get(gk_1.Currency)
    if not Big.Gte(gm, gl_2) then
        return
    end
    pcall(function()
        eC:BuyPack(gj, gi)
    end)
end
eT = function()
    for k, v in UpgradeConfig.Ordered do
        local gx = v
        pcall(function()
            eK:BuyMax(gx.Id)
        end)
    end
end
fd = fn375
e2 = fn315
eP = function()
    if eY then
        pcall(eY)
        return
    end
    local MainGui = LocalPlayer.PlayerGui:FindFirstChild("MainGui")
    local gG = MainGui and MainGui:FindFirstChild("Frames")
    local gF_1 = gG
    if gG then
        gG = gF_1:FindFirstChild("TricksShop")
    end
    local gF_2 = gG
    if gG then
        gG = gF_2:FindFirstChild("BuyAllButton", true)
    end
    local gE = gG
    local gF_3 = gE and gE:IsA("GuiButton")
    if gF_3 then
        pcall(function()
            if firesignal then
                firesignal(gE.Activated)
            else
                gE:Activate()
            end
        end)
    end
end
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = eX, Copyable = true }, "|", fs },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local fw = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Settings = Window:AddTab("Settings", "settings")
}
if (not e_ or not e_ or (not ff or not e_)) and (not e_ and not ff or (ff or not e_)) or not ((not e_ or not e_ or (not ff or not e_)) and (not e_ and not ff or (ff or not e_))) then
    fq_1 = fn460
else
    eQ = fn460
end
for k, v in fw do
    fq_1(v)
end
e9, AccountGroup, GameInfoGroup, eJ, eF, fo_2 = nil, nil, nil, nil, nil, nil
local fm_2 = 5
repeat
    local fq_2 = (fm_2 * 2 + 1) % 3 + 1
    if fq_2 <= 2 then
        if fq_2 <= 1 then
            if (GameInfoGroup and fm_2 or (e9 or e9) or (not e9 or not e9) and (not GameInfoGroup and not GameInfoGroup)) and (not fm_2 and e9 and (not fm_2 and GameInfoGroup) or (GameInfoGroup or GameInfoGroup or (not GameInfoGroup or GameInfoGroup))) and not ((GameInfoGroup and fm_2 or (e9 or e9) or (not e9 or not e9) and (not GameInfoGroup and not GameInfoGroup)) and (not fm_2 and e9 and (not fm_2 and GameInfoGroup) or (GameInfoGroup or GameInfoGroup or (not GameInfoGroup or GameInfoGroup)))) then
                eJ = tostring(game.JobId)
            else
                eF = tostring(game.JobId)
            end
            fm_2 = (fm_2 + 8) % 12
        else
            local fq_3 = (vector.create((fm_2 * 4 + 6) % 11 + 1, (fm_2 * 3 + 9) % 13 + 1, (fm_2 * 13 + 13) % 17 + 1))
            local fB_1 = (vector.create((fm_2 * 1 + 5) % 11 + 1, (fm_2 * 3 + 13) % 13 + 1, (fm_2 * 10 + 8) % 17 + 1))
            local hK = vector.cross(fq_3, fB_1)
            local hL = vector.dot(fq_3, fB_1)
            if vector.dot(hK, hK) + hL * hL == vector.dot(fq_3, fq_3) * vector.dot(fB_1, fB_1) + 2 then
                eF = #fo_2 > 18
            else
                fo_2 = #eF > 18
            end
            fm_2 = (fm_2 + 11) % 12
        end
    else
        if (e9 and eJ or e9 and eJ) and ((not e9 or e9) and (eJ or not eJ)) and not ((e9 and eJ or e9 and eJ) and ((not e9 or e9) and (eJ or not eJ))) then
            eZ = "Unknown"
            pcall(fn357)
            fA = e9.Info:AddLeftGroupbox("Account", "circle-user")
            fA:AddLabel(LocalPlayer("User", AccountGroup.Name, GameInfoGroup), true)
            fA:AddLabel(LocalPlayer("Status", "Keyless", GameInfoGroup), true)
            fA:AddLabel(LocalPlayer("Executor", eZ, GameInfoGroup), true)
            fz = e9.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            fz:AddLabel(fs(eJ .. " [" .. tostring(game.PlaceId) .. "]", eD), true)
            fz:AddLabel(LocalPlayer("Place ID", tostring(game.PlaceId), eD), true)
            fw = fz:AddLabel(LocalPlayer("Session time", "0s", eO), true)
        else
            e9 = "Unknown"
            pcall(fn357)
            AccountGroup = fw.Info:AddLeftGroupbox("Account", "circle-user")
            AccountGroup:AddLabel(eD("User", LocalPlayer.Name, fA), true)
            AccountGroup:AddLabel(eD("Status", "Keyless", fA), true)
            AccountGroup:AddLabel(eD("Executor", e9, fA), true)
            GameInfoGroup = fw.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            GameInfoGroup:AddLabel(eO(fs .. " [" .. tostring(game.PlaceId) .. "]", fz), true)
            GameInfoGroup:AddLabel(eD("Place ID", tostring(game.PlaceId), fz), true)
            eJ = GameInfoGroup:AddLabel(eD("Session time", "0s", eZ), true)
        end
        fm_2 = (fm_2 + 8) % 12
    end
until (fm_2 * 11 + 3) % 12 == 7
if fo_2 then
    local fm_3 = 4
    repeat
        local fn_2 = (vector.create((fm_3 * 2 + 3) % 11 + 1, (fm_3 * 1 + 10) % 13 + 1, (fm_3 * 10 + 15) % 17 + 1))
        local fq_4 = (vector.create((fm_3 * 2 + 6) % 11 + 1, (fm_3 * 7 + 11) % 13 + 1, (fm_3 * 14 + 1) % 17 + 1))
        local fB_2 = (vector.create((fm_3 * 3 + 7) % 11 + 1, (fm_3 * 8 + 8) % 13 + 1, (fm_3 * 10 + 7) % 17 + 1))
        local fC_1 = (vector.create((fm_3 * 5 + 2) % 5 + 1, (fm_3 * 4 + 2) % 7 + 1, (fm_3 * 4 + 3) % 9 + 1))
        if vector.dot(vector.cross(fn_2, (vector.cross(fq_4, fB_2))), fC_1) == vector.dot(fq_4 * vector.dot(fn_2, fB_2) - fB_2 * vector.dot(fn_2, fq_4), fC_1) then
            fo_2 = string.sub(eF, 1, 18) .. "..."
        else
            eF = string.sub(fo_2, 1, 18) .. "..."
        end
        fm_3 = (fm_3 + 5) % 8
    until (fm_3 * 5 + 3) % 8 == 0
end
local fm_4 = fo_2 or eF
fn_3, e5, SocialsGroup, fE_1, fB_3, eL, eH, connection, connection2, e8 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if ((not SocialsGroup or fE_1 or fE_1 and not SocialsGroup) and (not SocialsGroup and fE_1 or (not fn_3 or fE_1)) and (fn_3 or SocialsGroup or fn_3 and fE_1 or (fn_3 and not SocialsGroup or fn_3 and not SocialsGroup)) or ((fE_1 or SocialsGroup or (fn_3 or fn_3)) and (SocialsGroup and SocialsGroup and (not SocialsGroup or not SocialsGroup)) or SocialsGroup and not fE_1 and (not SocialsGroup and not fE_1) and ((SocialsGroup or SocialsGroup) and (fn_3 or fE_1)))) and not ((not SocialsGroup or fE_1 or fE_1 and not SocialsGroup) and (not SocialsGroup and fE_1 or (not fn_3 or fE_1)) and (fn_3 or SocialsGroup or fn_3 and fE_1 or (fn_3 and not SocialsGroup or fn_3 and not SocialsGroup)) or ((fE_1 or SocialsGroup or (fn_3 or fn_3)) and (SocialsGroup and SocialsGroup and (not SocialsGroup or not SocialsGroup)) or SocialsGroup and not fE_1 and (not SocialsGroup and not fE_1) and ((SocialsGroup or SocialsGroup) and (fn_3 or fE_1)))) then
    local fm_5 = e5
    fx:AddLabel(fn_3("Server", fm_5, eD), true)
    fx:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
    os.clock()
else
    fn_3 = fm_4
    GameInfoGroup:AddLabel(eD("Server", fn_3, fx), true)
    GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
    e5 = os.clock()
end
task.spawn(worker)
local ScriptsGroup = fw.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(eO("Included in this hub", fx), true)
ScriptsGroup:AddLabel(eO(fs, fz), true)
local FeaturesGroup = fw.Info:AddRightGroupbox("Features", "list")
if (fn_3 or not fn_3 or (fB_3 or fB_3)) and (not fB_3 or e5 or ScriptsGroup and not eH) and ((ScriptsGroup or not fB_3) and (not e5 or not ScriptsGroup) and (not eH and not ScriptsGroup and (not e5 and not fn_3))) or not ((fn_3 or not fn_3 or (fB_3 or fB_3)) and (not fB_3 or e5 or ScriptsGroup and not eH) and ((ScriptsGroup or not fB_3) and (not e5 or not ScriptsGroup) and (not eH and not ScriptsGroup and (not e5 and not fn_3)))) then
    FeaturesGroup:AddLabel(eO("Auto Kick", fz), true)
    FeaturesGroup:AddLabel(eO("Auto Click", fA), true)
    FeaturesGroup:AddLabel(eO("Auto Rebirth", eZ), true)
    FeaturesGroup:AddLabel(eO("Shops & Legends", fx), true)
    SocialsGroup = fw.Info:AddRightGroupbox("Socials", "link")
else
    fx:AddLabel(SocialsGroup("Auto Kick", eO), true)
    fx:AddLabel(SocialsGroup("Auto Click", FeaturesGroup), true)
    fx:AddLabel(SocialsGroup("Auto Rebirth", fz), true)
    fx:AddLabel(SocialsGroup("Shops & Legends", fw), true)
    eZ.Info:AddRightGroupbox("Socials", "link")
end
SocialsGroup:AddButton({ Text = "Discord", Func = e1 })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = fw.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = e1 })
local FaqGroup = fw.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutomationGroup = fw.Main:AddLeftGroupbox("Automation", "bot")
AutomationGroup:AddToggle("AutoKick", { Text = "Auto Kick", Default = false })
AutomationGroup:AddToggle("AutoClick", { Text = "Auto Click", Default = false })
AutomationGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
AutomationGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
AutomationGroup:AddToggle("AutoEquipBestLegends", { Text = "Auto Equip Best Legends", Default = false })
AutomationGroup:AddToggle("AutoBuyPackShop", { Text = "Auto Buy Pack Shop", Default = false })
AutomationGroup:AddDropdown("Pack", { Text = "Pack", Values = fr, Default = fr[1] })
AutomationGroup:AddDropdown("BuyAmount", { Text = "Buy Amount", Values = fy, Default = "1" })
AutomationGroup:AddToggle("AutoBuyBallShop", { Text = "Auto Buy Ball Shop", Default = false })
AutomationGroup:AddToggle("AutoBuyTracksShop", { Text = "Auto Tracks Shop", Default = false })
AutomationGroup:AddToggle("AutoBuyJerseyShop", { Text = "Auto Jersey Shop", Default = false })
local MenuGroup = fw.Settings:AddLeftGroupbox("Menu", "menu")
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton({ Text = "Unload", Func = onUnload })
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
ThemeManager:ApplyToTab(fw.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/kick-ball-to-space")
SaveManager:BuildConfigSection(fw.Settings)
SaveManager:LoadAutoloadConfig()
eL = tick()
eH = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local gZ = v
        pcall(function()
            gZ:Disable()
        end)
    end
end)
e8 = fn467
connection = ft_1.InputBegan:Connect(onInputBegan)
connection2 = ft_1.InputChanged:Connect(onInputChanged)
Toggles.AutoKick:OnChanged(fn471)
Toggles.AutoClick:OnChanged(fn390)
if eQ("AutoKick") then
    fb(true)
end
local fP = if eQ("AutoClick") then 1 else 0
if fP == 1 then
    eU(true)
end
Library:OnUnload(fn117)
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(worker6)
task.spawn(worker7)
task.spawn(worker8)
task.spawn(worker9)
task.spawn(worker10)
