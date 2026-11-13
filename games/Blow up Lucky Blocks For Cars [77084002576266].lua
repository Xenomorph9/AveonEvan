local lO
local mv
local LocalPlayer
local Rockets
local mf
local CoreGui
local Options
local Library
local mH
local lH
local mo
local Number
local Toggles
local l5
local mu
local mb
local lT
local lW
local LuckyBlocks
local mG
local lG
local mk
local mn
local PlayerGui
local l4
local l7
local lP
local ma
local lS
local lV
local mg
local lC
local lY
local lF
local mI
local l0
local lI
local l3
local ms
local function onRemoveAllPlacedCars()
    lW()
end
local function worker5()
    while not Library.Unloaded do
        pcall(mb)
        task.wait(0.9)
    end
end
local function fn37(aH, aI)
    return string.format('<font color="%s">%s</font>', aI, aH)
end
local function onOnClientEvent(Y, Z)
    if type(Y) == "table" then
        l4 = Y
    end
    if type(Z) == "string" then
        l0 = Z
    end
end
local function fn78()
    local ob = mH()
    local oc = ob and ob:FindFirstChildOfClass("Humanoid")
    return oc
end
local function worker6()
    while not Library.Unloaded do
        pcall(mI)
        task.wait(0.5)
    end
end
local function fn119()
    local n_ = mk and mk.Parent and mk:GetAttribute("Owner") == LocalPlayer.UserId
    if n_ then
        return mk
    end
    mk = nil
    local n__1 = (workspace:FindFirstChild("Plots"))
    local n4 = if n__1 then 1 else 0
    local n2 = 1505 * n4 + 1720 * (1 - n4)
    local n3 = 4080 * n4 + 943 * (1 - n4)
    if not ((n2 * 897 + n3 * 2196 + n2 * n3) % 16777213 == 16450065) then
        n__1 = workspace:FindFirstChild("plots")
    end
    local n0 = n__1
    if not n0 then
        return nil
    end
    for i, child in n0:GetChildren() do
        if child:GetAttribute("Owner") == LocalPlayer.UserId then
            mk = child
            return child
        end
    end
    return nil
end
local function fn147()
    local qD = if not l7("AutoCollectMoney") then 1 else 0
    if qD == 1 then
        return
    end
    local qz = mf()
    if not qz then
        return
    end
    for i, descendant in qz:GetDescendants() do
        local qz_1 = Library.Unloaded or not l7("AutoCollectMoney")
        if qz_1 then
            return
        end
        local qz_2 = descendant:IsA("BasePart") and descendant.Name:lower() == "claim"
        if qz_2 then
            lV(descendant)
        end
    end
end
local function fn172(b7)
    local oC = l5()
    local oD = not b7 or not b7:IsA("BasePart")
    if oD or not oC then
        return false
    elseif firetouchinterest then
        pcall(firetouchinterest, b7, oC, 0)
        pcall(firetouchinterest, b7, oC, 1)
        return true
    else
        return false
    end
end
local function fn225()
    if lP then
        return true
    end
    local qb = if not l7("AutoPlaceBlocks") then 1 else 0
    if qb == 1 then
        return false
    elseif #lO() == 0 then
        return false
    else
        return lS(mf())
    end
end
local function worker4()
    while not Library.Unloaded do
        pcall(lT)
        task.wait(0.75)
    end
end
local function fn267(ei)
    local pR = ei and ei:FindFirstChild("Floors")
    if not pR then
        return false
    end
    for i, child in pR:GetChildren() do
        for i, child in child:GetChildren() do
            local pR_1 = child.Name:find("CarPlot", 1, true) and not child:FindFirstChild("PlacedCar") and not child:FindFirstChild("PlacedBlock")
            if pR_1 then
                local CarLocation = child:FindFirstChild("CarLocation")
                local pS_1 = CarLocation and CarLocation:FindFirstChild("Place")
                if pS_1 then
                    return true
                end
            end
        end
    end
    return false
end
local function fn270()
    local function nr(ah)
        local nm = not ah
        local nq = if nm then 1 else 0
        local no = 1213 * nq + 1015 * (1 - nq)
        local np = 3992 * nq + 3803 * (1 - nq)
        if not ((no * 4004 + np * 202 + no * np) % 16777213 == 10505532) then
            nm = not ah:IsA("ScreenGui")
        end
        if nm then
            return
        end
        ah.ResetOnSpawn = false
        ah.IgnoreGuiInset = true
        ah.DisplayOrder = math.max(ah.DisplayOrder, 1000)
        if ah.Parent ~= CoreGui then
            ah.Parent = CoreGui
        end
    end
    nr(Library.ScreenGui)
    if Library.ActiveLoading and Library.ActiveLoading.ScreenGui then
        nr(Library.ActiveLoading.ScreenGui)
    end
    for k, v in { "Obsidian", "ObsidianLoading" } do
        local ns_1 = CoreGui:FindFirstChild(v) or PlayerGui:FindFirstChild(v)
        if ns_1 then
            nr(ns_1)
        end
    end
end
local function worker7()
    while not Library.Unloaded do
        pcall(lY)
        task.wait(1)
    end
end
local function fn291()
    gethui = lF
end
local function fn306()
    ms:FireServer()
end
local function fn318(cB)
    local DiscordGroup = cB:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = mn })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = mn })
end
local function fn319()
    local oV = mo()
    for k, v in Rockets.Order do
        local oW = Rockets.Items[v]
        if oW and not l4[v] then
            local oX_1 = tonumber(oW.Price) or 0
            if oX_1 > 0 and oV >= oX_1 then
                return v
            end
        end
    end
    return nil
end
local function worker3()
    while not Library.Unloaded do
        pcall(mG)
        task.wait(0.45)
    end
end
local function fn347()
    if not l7("AutoPlaceBlocks") then
        return {}
    end
    local pG = Options.PlaceBlockTiers and Options.PlaceBlockTiers.Value
    local pH = lG(pG)
    if not next(pH) then
        return {}
    end
    local pG_1 = {}
    for k, v in lI("LuckyBlock") do
        local attr = v:GetAttribute("Tier")
        local pJ = type(attr) == "string" and pH[attr]
        if pJ then
            pG_1[#pG_1 + 1] = v
        end
    end
    return pG_1
end
local function fn396()
    local oK = -1
    local oL
    for k, v in Rockets.Order do
        if l4[v] then
            local oM = Rockets.Items[v]
            local oN = oM and tonumber(oM.Damage)
            local oM_1 = oN or 0
            if oM_1 > oK then
                oK = oM_1
                oL = v
            end
        end
    end
    return oL
end
local function worker()
    while Library and not Library.Unloaded do
        mg()
        task.wait(1)
    end
end
local function fn418(aK, aL, aM)
    return string.format("<b>%s</b> %s %s", aK, l3("-", "#5a6070"), l3(aL, aM))
end
local function worker2()
    while not Library.Unloaded do
        pcall(lH)
        task.wait(0.35)
    end
end
local function fn547()
    local nU_1
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local nT = leaderstats and leaderstats:FindFirstChild("Cash")
    local nT_1
    if not nT then
        return 0
    end
    nT_1, nU_1 = pcall(Number.parse, tostring(nT.Value))
    local nS_2 = nT_1 and type(nU_1) == "number"
    if nS_2 then
        return nU_1
    end
    return 0
end
local function worker9()
    while not Library.Unloaded do
        pcall(mv)
        task.wait(0.6)
    end
end
local function fn588()
    return CoreGui
end
local function fn678()
    lC(mu, "Copied Discord invite to clipboard")
end
local function fn682(cc)
    local oH = LuckyBlocks.Tiers[cc]
    local oI = oH and tonumber(oH.Price)
    return oI or nil
end
local function fn702()
    local nW = tonumber(LocalPlayer:GetAttribute("Rebirths")) or 0
    return nW
end
local function fn722()
    local oe = mH()
    local of = oe and oe:FindFirstChild("HumanoidRootPart")
    return of
end
local function fn732(aA, aB)
    if setclipboard then
        setclipboard(aA)
    elseif toclipboard then
        toclipboard(aA)
    end
    Library:Notify(aB)
end
local function worker8()
    while not Library.Unloaded do
        pcall(ma)
        task.wait(0.8)
    end
end
local function fn746(aY)
    local nK = {}
    if type(aY) == "table" then
        for k, v in aY do
            if v then
                nK[k] = true
            end
        end
    end
    return nK
end
local function fn769(aT)
    local nH = Toggles[aT]
    return nH ~= nil and nH.Value == true
end
local function fn770()
    local nY = tonumber(LocalPlayer:GetAttribute("UnlockedFloors")) or 1
    return nY
end
local function fn777()
    return LocalPlayer.Character
end
lC = nil
Options = nil
lF = nil
lG = nil
lH = nil
lI = nil
PlayerGui = nil
Toggles = nil
lO = nil
lP = nil
LocalPlayer = nil
lS = nil
lT = nil
Rockets = nil
lV = nil
lW = nil
CoreGui = nil
lY = nil
LuckyBlocks = nil
l0 = nil
Number = nil
l3 = nil
l4 = nil
l5 = nil
l7 = nil
ma = nil
mb = nil
mf = nil
mg = nil
mk = nil
Library = nil
local lA, lB, Progression, lL, Rebirth, lN, SaveManager, l_, GuiService, CollectionService, l8, l9, HttpService, md, me, VirtualUser, mi, mj, mm
mn = nil
mo = nil
ms = nil
mu = nil
mv = nil
mG = nil
mH = nil
mI = nil
local mp, UserInputService, mr, mt, mw, mx, RunService, mz, mA, mB, mC, mD, mE, mF
RunService, UserInputService, VirtualUser, HttpService, CollectionService, GuiService, CoreGui, LocalPlayer, PlayerGui, lF = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
CollectionService = game:GetService("CollectionService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
LocalPlayer = Players.LocalPlayer
PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
lF = fn588
if getgenv then
    getgenv().gethui = lF
end
mC, mu, mm, Number, LuckyBlocks, Rockets, Rebirth, Progression, lA, mE, mz, ms, mj, me = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn291)
mC = "Blow up Lucky Blocks For Cars"
mu = "https://discord.gg/ehKVq7pf7v"
mm = "https://rscripts.net/@Ouroboros"
local Shared = ReplicatedStorage:WaitForChild("Shared")
local Remotes = require(Shared:WaitForChild("Remotes"))
Number = require(Shared:WaitForChild("Number"))
LuckyBlocks = require(Shared:WaitForChild("Config"):WaitForChild("LuckyBlocks"))
Rockets = require(Shared:WaitForChild("Config"):WaitForChild("Rockets"))
Rebirth = require(Shared:WaitForChild("Config"):WaitForChild("Rebirth"))
local Rarities = require(Shared:WaitForChild("Config"):WaitForChild("Rarities"))
Progression = require(Shared:WaitForChild("Config"):WaitForChild("Progression"))
lA = Remotes:Event("Crate:Buy")
mE = Remotes:Event("RocketShop:Buy")
mz = Remotes:Event("RocketShop:Equip")
ms = Remotes:Event("RocketShop:Sync")
mj = Remotes:Event("Sell:Car")
me = Remotes:Event("Rebirth:Do")
local mO = {}
local mP = {}
for k, v in LuckyBlocks.Order do
    if not mP[v] then
        mP[v] = true
        mO[#mO + 1] = v
    end
end
local mK_1 = nil
local mJ_1 = 6
repeat
    local vu = bit32.rrotate(bit32.bxor(bit32.lrotate(mJ_1, 12), string.byte(tostring(mK_1))), 14)
    if bit32.bxor(bit32.lrotate(bit32.bxor(vu, 4149791115), 14), 845348310) == bit32.lrotate(vu, 14) then
        mK_1 = { "Sakura Lucky Block", "Auria Lucky Block", "Rainbow Lucky Block", "Retro Lucky Block" }
    else
        mK_1 = { "Retro Lucky Block", "Rainbow Lucky Block", "Sakura Lucky Block", "Auria Lucky Block" }
    end
    mJ_1 = (mJ_1 + 6) % 8
until (mJ_1 * 3 + 6) % 8 == 2
for k, v in mK_1 do
    if LuckyBlocks.Tiers[v] and not mP[v] then
        mP[v] = true
        mO[#mO + 1] = v
    end
end
mw = {}
local mJ_3 = {}
for k, v in Rarities.Order do
    local mK_2 = v:lower() == "seceret" and "Secret"
    local mL_1 = mK_2 or v
    mJ_3[#mJ_3 + 1] = mL_1
    mw[mL_1] = v
end
l4, l0, lW, lP, Library, SaveManager, Toggles, Options, mA, mr, mi, md, mk, mt, mg, lC, mn, l3, lN, l7, lG, mo, lB, mB, mf, mH, mx, l5, lI, lL, l8, lV, mF, l9, mp = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
l4 = {}
l0 = nil
lP = false
ms.OnClientEvent:Connect(onOnClientEvent)
pcall(fn306)
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
mg = fn270
mg()
task.spawn(worker)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
lC = fn732
mn = fn678
l3 = fn37
lN = fn418
mA = "#7fd47f"
mr = "#6ec1ff"
mi = "#e8a34d"
md = "#8b93a3"
l7 = fn769
lG = fn746
mo = fn547
lB = fn702
mB = fn770
mk = nil
mf = fn119
mH = fn777
mx = fn78
l5 = fn722
lI = function(by)
    local bz
    bz = {}
    local function bA(bB)
        if not bB then
            return
        end
        for i, child in bB:GetChildren() do
            local oh = child:IsA("Tool") and child:GetAttribute("ItemType") == by
            if oh then
                bz[#bz + 1] = child
            end
        end
    end
    bA(LocalPlayer:FindFirstChild("Backpack"))
    bA(mH())
    return bz
end
lL = function(bK)
    local ot
    ot = nil
    ot = mx()
    if not ot or not bK or not bK.Parent then
        return false
    end
    local ou_1 = mH()
    if bK.Parent == ou_1 then
        return true
    end
    pcall(function()
        ot:EquipTool(bK)
    end)
    return bK.Parent == ou_1
end
l8 = function(bT)
    local RequiresLineOfSight
    local HoldDuration
    local Enabled
    local MaxActivationDistance
    local oA = not bT or not bT:IsA("ProximityPrompt")
    if oA then
        return false
    elseif not fireproximityprompt then
        return false
    else
        HoldDuration = bT.HoldDuration
        MaxActivationDistance = bT.MaxActivationDistance
        RequiresLineOfSight = bT.RequiresLineOfSight
        Enabled = bT.Enabled
        pcall(function()
            bT.HoldDuration = 0
            bT.MaxActivationDistance = math.max(MaxActivationDistance, 100)
            bT.RequiresLineOfSight = false
            bT.Enabled = true
        end)
        local oA_1 = pcall(fireproximityprompt, bT)
        pcall(function()
            bT.HoldDuration = HoldDuration
            bT.MaxActivationDistance = MaxActivationDistance
            bT.RequiresLineOfSight = RequiresLineOfSight
            bT.Enabled = Enabled
        end)
        return oA_1
    end
end
lV = fn172
mF = fn682
l9 = fn396
mp = fn319
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = mu, Copyable = true }, "|", mC },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
mt = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "rocket"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in mt do
    fn318(v)
end
mD, lH, lO, lS, l_, mG, lT, mb, mI, lY, ma, mv = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local function mL_2()
    local pl
    pl = nil
    local pi, pj, pk, Label
    pl = "Unknown"
    pcall(function()
        local o8_1
        local o7_1
        if identifyexecutor then
            o8_1, o7_1 = identifyexecutor()
            local o9 = o8_1 ~= ""
            local pa = type(o8_1) == "string" and o9
            if pa then
                local o9_1 = type(o7_1) == "string" and o7_1 ~= "" and o8_1 .. " " .. o7_1
                pl = o9_1 or o8_1
            end
        end
    end)
    local AccountGroup = mt.Info:AddLeftGroupbox("Account", "circle-user")
    AccountGroup:AddLabel(lN("User", LocalPlayer.Name, mA), true)
    AccountGroup:AddLabel(lN("Status", "Keyless", mA), true)
    AccountGroup:AddLabel(lN("Executor", pl, mA), true)
    local GameInfoGroup = mt.Info:AddLeftGroupbox("Game Info", "gamepad-2")
    GameInfoGroup:AddLabel(l3(mC .. " [" .. tostring(game.PlaceId) .. "]", mr), true)
    GameInfoGroup:AddLabel(lN("Place ID", tostring(game.PlaceId), mr), true)
    Label = GameInfoGroup:AddLabel(lN("Session time", "0s", mi), true)
    pj = tostring(game.JobId)
    local po = #pj > 18 and string.sub(pj, 1, 18) .. "..."
    local po_1 = po or pj
    GameInfoGroup:AddLabel(lN("Server", po_1, md), true)
    GameInfoGroup:AddButton({
        Text = "Copy join script (Job ID)",
        Func = function()
            local c0 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, pj)
            lC(c0, "Copied join script to clipboard")
        end
    })
    pi = os.clock()
    task.spawn(function()
        local pg_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            local pf = math.floor(os.clock() - pi)
            if pf < 60 then
                pg_1 = pf .. "s"
            elseif pf < 3600 then
                pg_1 = string.format("%dm %ds", pf // 60, pf % 60)
            else
                pg_1 = string.format("%dh %dm", pf // 3600, pf % 3600 // 60)
            end
            Label:SetText(lN("Session time", pg_1, mi))
        end
    end)
    local ScriptsGroup = mt.Info:AddRightGroupbox("Scripts", "package")
    ScriptsGroup:AddLabel(l3("Included in this hub", md), true)
    ScriptsGroup:AddLabel(l3(mC, mr), true)
    local FeaturesGroup = mt.Info:AddRightGroupbox("Features", "list")
    FeaturesGroup:AddLabel(l3("Automation", mr), true)
    FeaturesGroup:AddLabel(l3("Shop", mi), true)
    FeaturesGroup:AddLabel(l3("Player", md), true)
    local SocialsGroup = mt.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = mn })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            lC(mm, "Copied Rscripts profile to clipboard")
        end
    })
    local OuroborosHubGroup = mt.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
    OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = mn })
    pk = {
        [1] = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w",
        [2] = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99",
        [3] = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
        [4] = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
        [5] = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp",
        [6] = "https://paypal.me/TheTruckerGOD",
        [7] = "https://venmo.com/u/miserablemusic"
    }
    local DonationsGroup = mt.Info:AddRightGroupbox("Donations", "heart")
    DonationsGroup:AddLabel(l3("All donations are optional but appreciated.", mi), true)
    DonationsGroup:AddLabel(l3("If you donate you get a special role, just PING after you donate.", mA), true)
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(l3("LTC / Litecoin", "#345d9d"), true)
    DonationsGroup:AddButton({
        Text = "Copy Litecoin Address",
        Func = function()
            lC(pk[1], "Copied Litecoin address")
        end
    })
    DonationsGroup:AddLabel(l3("BTC / Bitcoin", "#f7931a"), true)
    DonationsGroup:AddButton({
        Text = "Copy Bitcoin Address",
        Func = function()
            lC(pk[2], "Copied Bitcoin address")
        end
    })
    DonationsGroup:AddLabel(l3("ETH / Ethereum", "#627eea"), true)
    DonationsGroup:AddButton({
        Text = "Copy Ethereum Address",
        Func = function()
            lC(pk[3], "Copied Ethereum address")
        end
    })
    DonationsGroup:AddLabel(l3("USDT", "#26a17b"), true)
    DonationsGroup:AddButton({
        Text = "Copy USDT Address",
        Func = function()
            lC(pk[4], "Copied USDT address")
        end
    })
    DonationsGroup:AddLabel(l3("Solana", "#14f195"), true)
    DonationsGroup:AddButton({
        Text = "Copy Solana Address",
        Func = function()
            lC(pk[5], "Copied Solana address")
        end
    })
    DonationsGroup:AddLabel(l3("PayPal", "#0070ba"), true)
    DonationsGroup:AddButton({
        Text = "Copy PayPal Link",
        Func = function()
            lC(pk[6], "Copied PayPal link")
        end
    })
    DonationsGroup:AddLabel(l3("Venmo", "#008cff"), true)
    DonationsGroup:AddButton({
        Text = "Copy Venmo Link",
        Func = function()
            lC(pk[7], "Copied Venmo link")
        end
    })
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(l3("Don't have any of the listed currencies but still wanna donate?", md), true)
    DonationsGroup:AddLabel(l3("DM me and we'll work something out.", mr), true)
    local FaqGroup = mt.Info:AddRightGroupbox("FAQ", "circle-help")
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
mL_2()
local LuckyBlocksGroup = mt.Main:AddLeftGroupbox("Lucky Blocks", "box")
LuckyBlocksGroup:AddToggle("AutoBuyBlocks", { Text = "Auto Buy Lucky Blocks", Default = false })
LuckyBlocksGroup:AddDropdown("BuyBlockTiers", {
    Text = "Blocks To Buy",
    Values = mO,
    Default = { ["Common Lucky Block"] = true },
    Multi = true,
    AllowNull = true,
    Searchable = true
})
LuckyBlocksGroup:AddToggle("AutoPlaceBlocks", { Text = "Auto Place Lucky Blocks", Default = false })
LuckyBlocksGroup:AddDropdown("PlaceBlockTiers", {
    Text = "Blocks To Place",
    Values = mO,
    Default = { ["Common Lucky Block"] = true },
    Multi = true,
    AllowNull = true,
    Searchable = true
})
local LaunchersGroup = mt.Main:AddLeftGroupbox("Launchers", "rocket")
LaunchersGroup:AddToggle("AutoEquipLauncher", { Text = "Auto Equip Launcher", Default = false })
LaunchersGroup:AddToggle("AutoBuyLaunchers", { Text = "Auto Buy Launchers", Default = false })
local MoneyGroup = mt.Main:AddRightGroupbox("Money", "coins")
MoneyGroup:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
MoneyGroup:AddToggle("AutoBuyFloor", { Text = "Auto Buy Floor", Default = false })
MoneyGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
MoneyGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
MoneyGroup:AddDropdown("SellRarities", {
    Text = "Rarities To Sell",
    Values = mJ_3,
    Default = { Common = true, Uncommon = true, Rare = true },
    Multi = true,
    AllowNull = true,
    Searchable = true
})
MoneyGroup:AddButton({ Text = "Remove All Placed Cars", Func = onRemoveAllPlacedCars })
lH = function()
    if not l7("AutoBuyBlocks") then
        return
    end
    local pr = mf()
    if not pr then
        return
    end
    local ps = Options.BuyBlockTiers and Options.BuyBlockTiers.Value
    local pt = lG(ps)
    if not next(pt) then
        return
    end
    local ps_1 = mo()
    for k, v in CollectionService:GetTagged("ConveyorCrate") do
        local pF = v
        local pu = Library.Unloaded or not l7("AutoBuyBlocks")
        if pu then
            return
        end
        local pu_1 = pF.Parent and pF:IsDescendantOf(pr)
        if pu_1 then
            local attr = pF:GetAttribute("Tier")
            local pv = type(attr) == "string" and pt[attr]
            if pv then
                local pv_1 = mF(attr)
                if pv_1 and ps_1 >= pv_1 then
                    pcall(function()
                        lA:FireServer(pF)
                    end)
                    ps_1 -= pv_1
                    task.wait(0.15)
                end
            end
        end
    end
end
lO = fn347
lS = fn267
if ((not mD or false) and (not mD and false) or false and mD and (false or not mD)) and (not mD and not mD and false or (false or (mD or mD))) or not (((not mD or false) and (not mD and false) or false and mD and (false or not mD)) and (not mD and not mD and false or (false or (mD or mD)))) then
    l_ = fn225
    mG = function()
        local qt, qu
        if not l7("AutoPlaceBlocks") then
            return
        end
        qu = mf()
        if not qu then
            return
        end
        qt = lO()
        if #qt == 0 then
            return
        end
        if not lS(qu) then
            return
        end
        lP = true
        pcall(function()
            local qc = qt[1]
            lL(qc)
            task.wait(0.2)
            local Floors = qu:FindFirstChild("Floors")
            if not Floors then
                return
            end
            for i, child in Floors:GetChildren() do
                local qc_6 = Library.Unloaded or not l7("AutoPlaceBlocks")
                if qc_6 then
                    return
                end
                for i, child in child:GetChildren() do
                    if child.Name:find("CarPlot", 1, true) then
                        local qc_7 = child:FindFirstChild("PlacedCar") or child:FindFirstChild("PlacedBlock")
                        if not qc_7 then
                            local CarLocation = child:FindFirstChild("CarLocation")
                            local qd = CarLocation and CarLocation:FindFirstChild("Place")
                            if qd then
                                local qd_2 = l5()
                                local qf = qd_2 and CarLocation:IsA("BasePart")
                                if qf then
                                    qd_2.CFrame = CarLocation.CFrame + Vector3.new(0, 3, 0)
                                    task.wait(0.05)
                                end
                                if l8(qd) then
                                    task.wait(0.35)
                                    qt = lO()
                                    if #qt == 0 then
                                        return
                                    end
                                    lL(qt[1])
                                    task.wait(0.15)
                                end
                            end
                        end
                    end
                end
            end
        end)
        lP = false
    end
else
    mG = fn225
    l_ = function()
        local qt, qu
        if not l7("AutoPlaceBlocks") then
            return
        end
        qu = mf()
        if not qu then
            return
        end
        qt = lO()
        if #qt == 0 then
            return
        end
        if not lS(qu) then
            return
        end
        lP = true
        pcall(function()
            local qc = qt[1]
            lL(qc)
            task.wait(0.2)
            local Floors = qu:FindFirstChild("Floors")
            if not Floors then
                return
            end
            for i, child in Floors:GetChildren() do
                local qc_2 = Library.Unloaded or not l7("AutoPlaceBlocks")
                if qc_2 then
                    return
                end
                for i, child in child:GetChildren() do
                    if child.Name:find("CarPlot", 1, true) then
                        local qc_3 = child:FindFirstChild("PlacedCar") or child:FindFirstChild("PlacedBlock")
                        if not qc_3 then
                            local CarLocation = child:FindFirstChild("CarLocation")
                            local qd = CarLocation and CarLocation:FindFirstChild("Place")
                            if qd then
                                local qd_1 = l5()
                                local qf = qd_1 and CarLocation:IsA("BasePart")
                                if qf then
                                    qd_1.CFrame = CarLocation.CFrame + Vector3.new(0, 3, 0)
                                    task.wait(0.05)
                                end
                                if l8(qd) then
                                    task.wait(0.35)
                                    qt = lO()
                                    if #qt == 0 then
                                        return
                                    end
                                    lL(qt[1])
                                    task.wait(0.15)
                                end
                            end
                        end
                    end
                end
            end
        end)
        lP = false
    end
end
lT = fn147
mb = function()
    local qK, qL
    if not l7("AutoBuyFloor") then
        return
    end
    local qM = mf()
    if not qM then
        return
    end
    qL = mB()
    local qN = tonumber(Progression.MaxFloor) or 5
    if qL >= qN then
        return
    end
    qK = nil
    pcall(function()
        qK = Progression.floorCost(qL)
    end)
    local qN_1 = type(qK) ~= "number" or mo() < qK
    if qN_1 then
        return
    end
    local Floors = qM:FindFirstChild("Floors")
    local qM_1 = Floors and Floors:FindFirstChild("floor" .. tostring(qL))
    local qN_3 = qM_1
    if qM_1 then
        qM_1 = qN_3:FindFirstChild("NextFloor")
    end
    local qN_4 = qM_1
    if qM_1 then
        qM_1 = qN_4:FindFirstChild("BuyNext")
    end
    local qN_5 = qM_1
    if qM_1 then
        qM_1 = qN_5:IsA("BasePart")
    end
    if qM_1 then
        local qM_2 = l5()
        if qM_2 then
            qM_2.CFrame = qN_5.CFrame + Vector3.new(0, 4, 0)
            task.wait(0.05)
        end
        lV(qN_5)
    end
end
lW = function()
    local q2
    q2 = nil
    q2 = mf()
    if not q2 then
        Library:Notify("Plot not found")
        return
    end
    local q3 = mx()
    if q3 then
        pcall(function()
            q3:UnequipTools()
        end)
        task.wait(0.2)
    end
    local function q4()
        local qT = 0
        for i, descendant in q2:GetDescendants() do
            if descendant.Name == "PlacedCar" then
                local Parent = descendant.Parent
                local qV = Parent and Parent.Name:find("CarPlot", 1, true)
                if qV then
                    qT += 1
                end
            end
        end
        return qT
    end
    local q5 = q4()
    local q6 = 0
    local re = 1
    while re <= 8 do
        if Library.Unloaded then
            break
        end
        local q7_1 = {}
        for i, descendant in q2:GetDescendants() do
            if descendant.Name == "PlacedCar" then
                local Parent = descendant.Parent
                local q9 = Parent and Parent.Name:find("CarPlot", 1, true)
                if q9 then
                    local CarLocation = Parent:FindFirstChild("CarLocation")
                    local q8_2 = CarLocation and CarLocation:FindFirstChild("Remove")
                    if CarLocation and q8_2 then
                        q7_1[#q7_1 + 1] = { car = descendant, location = CarLocation, prompt = q8_2 }
                    end
                end
            end
        end
        if #q7_1 == 0 then
            break
        end
        for k, v in q7_1 do
            if Library.Unloaded then
                break
            elseif not not v.car.Parent then
                local q7_2 = l5()
                local q8_4 = q7_2 and v.location:IsA("BasePart")
                if q8_4 then
                    q7_2.CFrame = v.location.CFrame + Vector3.new(0, 3, 0)
                    task.wait(0.08)
                end
                l8(v.prompt)
                task.wait(0.35)
                if not v.car.Parent then
                    q6 += 1
                end
            end
        end
        task.wait(0.15)
        if q4() == 0 then
            break
        end
        re += 1
    end
    local q7_3 = q4()
    if q7_3 == 0 then
        q4 = q5 > 0 and "Removed " .. q5 .. " car(s)"
        local q8_5 = q4 or "No placed cars to remove"
        Library:Notify(q8_5)
    else
        Library:Notify(("Removed %d, %d remaining"):format(math.max(q6, q5 - q7_3), q7_3))
    end
end
mI = function()
    if not l7("AutoSell") then
        return
    end
    local rt = Options.SellRarities and Options.SellRarities.Value
    local ru = lG(rt)
    if not next(ru) then
        return
    end
    local rt_1 = {}
    for k in ru do
        local ru_1 = mw[k] or k
        rt_1[ru_1] = true
        rt_1[k] = true
    end
    for k, v in lI("Car") do
        local rG = v
        local ru_2 = Library.Unloaded or not l7("AutoSell")
        if ru_2 then
            return
        end
        local attr = rG:GetAttribute("Rarity")
        local rv_2 = type(attr) == "string" and rt_1[attr]
        if rv_2 then
            pcall(function()
                mj:FireServer(rG)
            end)
            task.wait(0.1)
        end
    end
end
lY = function()
    local rH
    if not l7("AutoRebirth") then
        return
    end
    rH = nil
    pcall(function()
        rH = Rebirth.cost(lB())
    end)
    if type(rH) ~= "number" then
        return
    end
    if mo() >= rH then
        pcall(function()
            me:FireServer()
        end)
    end
end
ma = function()
    local rJ
    if not l7("AutoBuyLaunchers") then
        return
    end
    rJ = mp()
    if not rJ then
        return
    end
    pcall(function()
        mE:FireServer(rJ)
    end)
    pcall(function()
        ms:FireServer()
    end)
end
mv = function()
    if not l7("AutoEquipLauncher") then
        return
    end
    if l_() then
        return
    end
    local rL = l9()
    if not rL then
        return
    end
    if l0 ~= rL then
        pcall(function()
            mz:FireServer(rL)
        end)
        l0 = rL
    end
    local rM = lI("Rocket")
    for k, v in rM do
        local rN = v:GetAttribute("RocketKey") == rL or v.Name:lower():find(rL:lower(), 1, true)
        if rN then
            lL(v)
            return
        end
    end
    if #rM > 0 then
        lL(rM[1])
    end
end
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(worker6)
task.spawn(worker7)
task.spawn(worker8)
task.spawn(worker9)
local function mN_1()
    local connection
    local MovementGroup = mt.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = mt.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    RunService.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local r8_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if r8_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    UserInputService.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local sj_1 = mx()
            if sj_1 then
                sj_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    local CurrentCamera = workspace.CurrentCamera
    RunService.RenderStepped:Connect(function(hu)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local sl_1 = mx()
            if sl_1 then
                sl_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local sl_3 = l5()
            local sm = mx()
            if sl_3 and sm then
                sm.PlatformStand = true
                local sm_1 = Vector3.zero
                local sr = if UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
                if sr == 1 then
                    sm_1 += CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    sm_1 -= CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    sm_1 -= CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    sm_1 += CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    sm_1 += Vector3.new(0, 1, 0)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    sm_1 -= Vector3.new(0, 1, 0)
                end
                sl_3.AssemblyLinearVelocity = Vector3.zero
                if sm_1.Magnitude > 0 then
                    sl_3.CFrame = sl_3.CFrame + sm_1.Unit * Options.FlySpeed.Value * hu
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local ss = mx()
            if ss then
                ss.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local sx = mx()
            if sx then
                sx.WalkSpeed = 16
            end
        end
    end)
    local function hQ(hR)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not hR)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not hR
            end
        end)
        if not hR then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(LocalPlayer, "GameplayPaused", false)
            else
                LocalPlayer.GameplayPaused = false
            end
        end)
    end
    Toggles.AntiGameplayPause:OnChanged(function()
        hQ(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                hQ(true)
            end
        end
    end)
    Library:OnUnload(function()
        hQ(false)
    end)
    local function h8(h9)
        local sN = if not h9:IsA("ProximityPrompt") then 1 else 0
        if sN == 1 then
            return
        end
        h9.HoldDuration = 0
        h9.MaxActivationDistance = 50
        h9.RequiresLineOfSight = false
    end
    connection = nil
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in workspace:GetDescendants() do
                pcall(h8, descendant)
            end
            connection = workspace.DescendantAdded:Connect(function(ih)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(h8, ih)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    Library:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
    end)
end
mN_1()
local function mK_4()
    local connection
    local MenuGroup = mt.Settings:AddLeftGroupbox("Menu")
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local ir = 0
    local is = tick()
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = MenuGroup:AddLabel("AFK triggers: 0")
    local function iu()
        if not workspace.CurrentCamera then
            return
        end
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        ir += 1
        is = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. ir)
        end)
    end
    connection = LocalPlayer.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(iu)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local s5 = Toggles.AntiAfk.Value and tick() - is >= 60
            if s5 then
                pcall(iu)
            end
        end
    end)
    MenuGroup:AddButton({
        Text = "Unload UI",
        Func = function()
            Library:Unload()
        end
    })
    Library:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
    end)
end
mK_4()
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("MyScriptHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(mt.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/BlowUpLuckyBlocksForCars")
mD = SaveManager:BuildConfigSection(mt.Settings)
SaveManager:LoadAutoloadConfig()
local function mU()
    local function iR(iS, iT)
        local s9_1 = (iS == "Toggle" and Toggles or Options)[iT]
        local s8_2 = type(s9_1) == "table" and s9_1.Type == iS
        return s8_2 and s9_1 or nil
    end
    local function i0(i1, i2)
        local Type = i2.Type
        if Type == "Toggle" then
            return { idx = i1, type = "Toggle", value = i2.Value == true }
        elseif Type == "Slider" then
            return { idx = i1, type = "Slider", value = tostring(i2.Value) }
        elseif Type == "Dropdown" then
            return { idx = i1, type = "Dropdown", multi = i2.Multi == true, value = i2.Value }
        elseif Type == "Input" then
            local td = i2.Value or ""
            return { idx = i1, type = "Input", text = tostring(td) }
        elseif Type == "ColorPicker" then
            return { idx = i1, type = "ColorPicker", value = i2.Value:ToHex(), transparency = i2.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = i1,
                type = "KeyPicker",
                mode = i2.Mode,
                key = i2.Value,
                modifiers = i2.Modifiers,
                toggled = i2.Toggled
            }
        else
            return nil
        end
    end
    local function i4()
        local tj = {}
        for k, v in { Toggles, Options } do
            for k, v in v do
                local tk = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if tk then
                    local tk_1 = i0(k, v)
                    if tk_1 then
                        tj[#tj + 1] = tk_1
                    end
                end
            end
        end
        table.sort(tj, function(je, jf)
            if je.type ~= jf.type then
                return je.type < jf.type
            end
            return je.idx < jf.idx
        end)
        return { objects = tj }
    end
    local function jg(jh)
        local tA
        tA = nil
        local tB = type(jh) ~= "table" or type(jh.idx) ~= "string"
        local tF = if tB then 1 else 0
        local tD = 670 * tF + 3440 * (1 - tF)
        local tE = 2369 * tF + 1115 * (1 - tF)
        if not ((tD * 752 + tE * 3807 + tD * tE) % 16777213 == 11109853) then
            tB = type(jh.type) ~= "string"
        end
        if not tB then
            tB = SaveManager.Ignore[jh.idx]
        end
        if tB then
            return false
        end
        tA = iR(jh.type, jh.idx)
        if not tA then
            return false
        end
        local tB_1 = pcall(function()
            if jh.type == "Input" then
                if type(jh.text) ~= "string" then
                    return
                end
                tA:SetValue(jh.text)
            elseif jh.type == "ColorPicker" then
                tA:SetValueRGB(Color3.fromHex(jh.value), jh.transparency)
            elseif jh.type == "KeyPicker" then
                tA:SetValue({ jh.key, jh.mode, jh.modifiers })
                if jh.mode == "Toggle" and jh.toggled ~= nil then
                    tA.Toggled = jh.toggled
                    tA:Update()
                end
            else
                tA:SetValue(jh.value)
            end
        end)
        return tB_1
    end
    mD:AddDivider()
    mD:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    mD:AddButton("Export Config to Clipboard", function()
        local tH_1
        local tG_1
        tG_1, tH_1 = pcall(HttpService.JSONEncode, HttpService, i4())
        if not tG_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local tG_2 = setclipboard or toclipboard
        local tG_3 = type(tG_2) ~= "function" or not pcall(tG_2, tH_1)
        if tG_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    mD:AddButton("Import Config from Clipboard Text", function()
        local tP_1
        local tN = Options.SaveManager_ImportSource.Value
        local tN_1
        local tT = if tN then 1 else 0
        local tR = 848 * tT + 2937 * (1 - tT)
        local tS = 3338 * tT + 2838 * (1 - tT)
        if not ((tR * 2524 + tS * 1866 + tR * tS) % 16777213 == 11199684) then
            tN = ""
        end
        local tO = tostring(tN):match("^%s*(.-)%s*$")
        if tO == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        tN_1, tP_1 = pcall(HttpService.JSONDecode, HttpService, tO)
        local tO_1 = not tN_1 or type(tP_1) ~= "table" or type(tP_1.objects) ~= "table"
        if tO_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local tN_2 = 0
        for k, v in tP_1.objects do
            if jg(v) then
                tN_2 += 1
            end
        end
        if tN_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local tP_2 = tN_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(tN_2, tP_2), 6)
    end)
end
mU()
