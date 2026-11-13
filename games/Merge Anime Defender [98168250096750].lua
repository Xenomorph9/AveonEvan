local gt
local ga
local gS
local EnumType
local onBuySelectedNow
local Options
local connection2
local gC
local RemoteFunction
local gj
local BuildCofig
local f0
local gI
local HomeConfig
local f3
local gL
local gp
local f6
local gO
local f9
local clientRequestServer
local gc
local VirtualUser
local gf
local onUpgradeNow
local gi
local connection
local Library
local Toggles
local f2
local LocalPlayer
local gK
local gr
local gN
local f5
local gu
local gQ
local onCollectFloorNow
local gb
local ge
local gA
local gh
local gD
local gk
local gG
local BuildManager
local gn
local gJ
local f4
local UnitConfig
local ReplicatedStorage
local function fn47(ap, aq)
    if setclipboard then
        setclipboard(ap)
    elseif toclipboard then
        toclipboard(ap)
    end
    Library:Notify(aq)
end
local function fn55()
    gu(gh, "Copied Discord invite to clipboard")
end
local function fn94(aN, aO)
    local hP = Options[aN]
    local hQ = hP and tonumber(hP.Value)
    return hQ or aO
end
local function fn109()
    for k, v in pairs(UnitConfig.getList()) do
        if v.id and v.id >= 10000 then
            local hC_1 = v.showName or v.name
            local hD = tostring(hC_1)
            gQ[hD] = v.id
            table.insert(gJ, hD)
        end
    end
    table.sort(gJ)
end
local function fn116()
    local iR_1
    local iQ_1
    if identifyexecutor then
        iR_1, iQ_1 = identifyexecutor()
        local iS = iR_1 ~= ""
        local iT = type(iR_1) == "string" and iS
        if iT then
            local iS_1 = type(iQ_1) == "string" and iQ_1 ~= "" and iR_1 .. " " .. iQ_1
            gD = iS_1 or iR_1
        end
    end
end
local function fn123(aw, ax)
    return string.format('<font color="%s">%s</font>', ax, aw)
end
local function onInputBegan()
    gr = tick()
end
local function fn136()
    pcall(function()
        clientRequestServer:InvokeServer(ga, nil)
    end)
    pcall(function()
        clientRequestServer:InvokeServer(f3, nil)
    end)
end
local function worker7()
    while not Library.Unloaded do
        if f4("AutoUpgrade") then
            onUpgradeNow()
        end
        task.wait(gA("UpgradeDelay", 2))
    end
end
local function worker4()
    while not Library.Unloaded do
        if f4("AutoCollect") then
            gK()
        end
        task.wait(gA("CollectDelay", 3))
    end
end
local function fn194(cH)
    local DiscordGroup = cH:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = ge })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = ge })
end
local function onCopyJoinScript_JobID()
    local cY = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, f2)
    gu(cY, "Copied join script to clipboard")
end
local function worker9()
    while not Library.Unloaded do
        if f4("AutoEquipBest") then
            gj()
        end
        task.wait(gA("EquipDelay", 5))
    end
end
local function worker10()
    while not Library.Unloaded do
        if f4("AutoRebirth") then
            f9()
        end
        task.wait(gA("RebirthDelay", 10))
    end
end
local function fn292()
    pcall(function()
        clientRequestServer:InvokeServer(gS, { gG })
    end)
end
local function fn294()
    BuildCofig = require(BuildManager:WaitForChild("BuildCofig"))
end
local function fn307()
    EnumType = require(ReplicatedStorage:WaitForChild("DataSource"):WaitForChild("EnumType"))
end
local function onRscripts()
    gu(gf, "Copied Rscripts profile to clipboard")
end
local function worker5()
    while not Library.Unloaded do
        if f4("AutoCollectFloor") then
            onCollectFloorNow()
        end
        task.wait(gA("FloorDelay", 1))
    end
end
local function worker()
    local i4_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local i3 = math.floor(os.clock() - gt)
        if i3 < 60 then
            i4_1 = i3 .. "s"
        elseif i3 < 3600 then
            i4_1 = string.format("%dm %ds", i3 // 60, i3 % 60)
        else
            i4_1 = string.format("%dh %dm", i3 // 3600, i3 % 3600 // 60)
        end
        f6:SetText(gL("Session time", i4_1, gb))
    end
end
local function fn421()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    gn = tick()
end
local function fn430(az, aA, aB)
    return string.format("<b>%s</b> %s %s", az, f0("-", "#5a6070"), f0(aA, aB))
end
local function worker8()
    while not Library.Unloaded do
        if f4("AutoFuse") then
            gN()
        end
        task.wait(gA("FuseDelay", 1))
    end
end
local function worker3()
    while not Library.Unloaded do
        if f4("AutoBuy") then
            gI()
        end
        task.wait(gA("BuyDelay", 1))
    end
end
local function fn467()
    local PlayerInfo = ReplicatedStorage.DataSource:WaitForChild("PlayerInfo")
    UnitConfig = require(PlayerInfo:WaitForChild("UnitConfig"))
    HomeConfig = require(PlayerInfo:WaitForChild("HomeConfig"))
end
local function fn468()
    local hZ = LocalPlayer:GetAttribute("money") or 0
    return hZ
end
local function fn487()
    pcall(function()
        RemoteFunction:InvokeServer(gp, nil)
    end)
end
local function onInputChanged(dB)
    local UserInputType = dB.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        gr = tick()
    end
end
local function fn503()
    pcall(function()
        clientRequestServer:InvokeServer(gi, { gG })
    end)
end
local function fn506(aY)
    local hW = Options[aY]
    return hW and hW.Value or nil
end
local function onUnload()
    Library:Unload()
end
local function worker2()
    while not Library.Unloaded do
        task.wait(2)
        if f4("AntiAfk") then
            local ji = tick() - gr
            local jj = tick() - gn
            if ji >= 300 and jj >= 60 then
                pcall(f5)
            else
                if ji < 300 and jj >= 300 then
                    pcall(f5)
                end
            end
        end
    end
end
local function fn541(aT)
    local hS = Options[aT]
    return hS and hS.Value or {}
end
local function fn560()
    connection:Disconnect()
    connection2:Disconnect()
end
local function fn565(aI)
    local hM = Toggles[aI]
    return hM ~= nil and hM.Value == true
end
local function fn589()
    if gO("BuyMode") == "Only while affordable" then
        local h0 = gc()
        local h1 = h0 and gk() < h0
        if h1 then
            return
        end
    end
    pcall(function()
        RemoteFunction:InvokeServer(gC, nil)
    end)
end
local function worker6()
    while not Library.Unloaded do
        if f4("AutoTowerShop") then
            onBuySelectedNow()
        end
        task.wait(gA("TowerShopDelay", 3))
    end
end
RemoteFunction = nil
Library = nil
f0 = nil
BuildManager = nil
f2 = nil
f3 = nil
f4 = nil
f5 = nil
f6 = nil
f9 = nil
ga = nil
gb = nil
gc = nil
onBuySelectedNow = nil
ge = nil
gf = nil
connection2 = nil
gh = nil
gi = nil
gj = nil
gk = nil
HomeConfig = nil
gn = nil
LocalPlayer = nil
gp = nil
UnitConfig = nil
gr = nil
gt = nil
gu = nil
EnumType = nil
onCollectFloorNow = nil
VirtualUser = nil
Options = nil
gA = nil
onUpgradeNow = nil
gC = nil
gD = nil
connection = nil
BuildCofig = nil
gG = nil
Toggles = nil
gI = nil
gJ = nil
gK = nil
local fZ, RemoteFunction_shop, f8, gl, gs, HttpService
gL = nil
gN = nil
gO = nil
ReplicatedStorage = nil
gQ = nil
clientRequestServer = nil
gS = nil
local RemoteEvent_Notice
local g5_1
local SaveManager
local g2_1
local GameInfoGroup
local gV_1, gV_3
ReplicatedStorage, VirtualUser, HttpService, LocalPlayer, gh, gf, RemoteFunction_shop, BuildManager, RemoteFunction, clientRequestServer, RemoteEvent_Notice, BuildCofig, EnumType, UnitConfig, HomeConfig = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local AccountGroup
ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
LocalPlayer = Players.LocalPlayer
local gX = "Merge Anime Defender"
gh = "https://discord.gg/ehKVq7pf7v"
gf = "https://rscripts.net/@Ouroboros"
local events = ReplicatedStorage:WaitForChild("events")
RemoteFunction_shop = events:WaitForChild("RemoteFunction_shop")
BuildManager = ReplicatedStorage:WaitForChild("BuildManager")
RemoteFunction = BuildManager:WaitForChild("RemoteFunction")
clientRequestServer = ReplicatedStorage:WaitForChild("RemoteFunction"):WaitForChild("clientRequestServer")
RemoteEvent_Notice = ReplicatedStorage:WaitForChild("RemoteEvent"):WaitForChild("RemoteEvent_Notice")
pcall(fn294)
pcall(fn307)
pcall(fn467)
local gW = BuildCofig and BuildCofig.clientRemoteFunction.SpawnUnit
local gW_1
local gT_1 = gW or 5
local gU_1 = BuildCofig
gC = gT_1
if gU_1 then
    gU_1 = BuildCofig.clientRemoteFunction.AutoFuseUnit
end
local gT_2 = gU_1 or 9
local gU_2 = EnumType
gp = gT_2
if gU_2 then
    gU_2 = EnumType.clientRemoteFunction.Upgrade
end
local gT_3 = gU_2
local hp = if gT_3 then 1 else 0
local hn = 18 * hp + 2057 * (1 - hp)
local ho = 316 * hp + 1179 * (1 - hp)
if not ((hn * 668 + ho * 3233 + hn * ho) % 16777213 == 1039340) then
    gT_3 = 1000000106
end
local gU_3 = EnumType
gi = gT_3
if gU_3 then
    gU_3 = EnumType.clientRemoteFunction.EquipBest
end
local gT_4 = gU_3 or 1000000109
local gU_4 = EnumType
ga = gT_4
if gU_4 then
    gU_4 = EnumType.clientRemoteFunction.EquipBestHero
end
local gT_5 = gU_4 or 1000000108
local gU_5 = EnumType
f3 = gT_5
if gU_5 then
    gU_5 = EnumType.clientRemoteFunction.AutoCollect
end
local gT_6 = gU_5 or 1000000107
local gU_6 = EnumType
gS = gT_6
if gU_6 then
    gU_6 = EnumType.HomeUpgrade.Rebirth
end
local gT_7 = gU_6 or "Rebirth"
local gU_7 = EnumType
gG = gT_7
if gU_7 then
    gU_7 = EnumType.clientRemoteEvent.MAGNETDROP
end
local gT_8 = gU_7 or 6060
gs, gV_1, gl, gW_1 = nil, nil, nil, nil
local gU_8 = 4
repeat
    local gZ_1 = (gU_8 * 1 + 2) % 3 + 1
    if gZ_1 <= 2 then
        if gZ_1 <= 1 then
            if (gU_8 * 2 + 1) * 4 % 3 == ((gU_8 * 2 + 1) * 4 + 2) % 3 then
                gT_8 = gs
            else
                gs = gT_8
            end
            gU_8 = (gU_8 + 13) % 24
        else
            local gZ_2 = { "llvrwpvws", "tvvkt", "frfqz", "ykbkutp", "ekabvp", "qgh", "bjsbew", "xruoeey" }
            local j5 = gU_8
            local g__1 = gZ_2[j5 % 8 + 1]
            if g__1:len() >= g__1:reverse():rep(j5 % 3 + 2):len() then
                gl = {
                    { kind = "AttackSpeed", label = "Attack Speed" },
                    { kind = "Coins", label = "Coin Value" },
                    { kind = "Damage", label = "Damage" },
                    { kind = "Spawnlevel", label = "Spawn Level" },
                    { kind = "CriticalChance", label = "Critical Chance" },
                    { kind = "CriticalDanamge", label = "Critical Damage" },
                    { kind = "AttackRange", label = "Attack Range" },
                    { kind = "ActiveSlots", label = "Active Slots" },
                    { kind = "Gems", label = "Gem Chance" },
                    { kind = "PickupRange", label = "Pickup Radius" },
                    { kind = "BaseHp", label = "Base HP" }
                }
            else
                gV_1 = {
                    { kind = "Coins", label = "Coin Value" },
                    { kind = "Damage", label = "Damage" },
                    { kind = "AttackSpeed", label = "Attack Speed" },
                    { kind = "AttackRange", label = "Attack Range" },
                    { kind = "BaseHp", label = "Base HP" },
                    { kind = "CriticalChance", label = "Critical Chance" },
                    { kind = "CriticalDanamge", label = "Critical Damage" },
                    { kind = "Gems", label = "Gem Chance" },
                    { kind = "PickupRange", label = "Pickup Radius" },
                    { kind = "Spawnlevel", label = "Spawn Level" },
                    { kind = "ActiveSlots", label = "Active Slots" }
                }
            end
            gU_8 = (gU_8 + 10) % 24
        end
    else
        local gZ_3 = {
            "pxidltxbai",
            "pzhsawtz",
            "psduxpf",
            "yuscueakx",
            "rplthxwjqkr",
            "xumvbvatha",
            "cudsvklvie",
            "lioy",
            "qvdbnuj"
        }
        local kk = gU_8
        local g__2 = gZ_3[kk % 9 + 1]
        if g__2:len() >= g__2:gsub("(.)", "%1%1", kk % 3 % 2 + 1):len() then
            gW_1 = {}
            gl = {}
        else
            gl = {}
            gW_1 = {}
        end
        gU_8 = (gU_8 + 22) % 24
    end
until (gU_8 * 19 + 14) % 24 == 9
for i, v in ipairs(gV_1) do
    local gU_9 = EnumType and EnumType.HomeUpgrade[v.kind] or v.kind
    gl[v.label] = gU_9
    table.insert(gW_1, v.label)
end
gQ, gJ, Library, SaveManager, Toggles, Options, g2_1, gb, gu, ge, f0, gL, f4, gA, f8, gO, gk, gc, gI, fZ, onBuySelectedNow, onUpgradeNow, gN, gj, gK, f9, onCollectFloorNow = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
gQ = {}
gJ = {}
pcall(fn109)
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
if ("#e8a34d" or (false or not gj) or (not gk or false) and (fZ or not g2_1)) and (not gN and fZ and (not g2_1 or g2_1) and (not gk and false or "#e8a34d")) and not (("#e8a34d" or (false or not gj) or (not gk or false) and (fZ or not g2_1)) and (not gN and fZ and (not g2_1 or g2_1) and (not gk and false or "#e8a34d"))) then
    loadstring(game:HttpGet(SaveManager .. "addons/ThemeManager.lua"))()
    g5_1 = loadstring(game:HttpGet(SaveManager .. "addons/SaveManager.lua"))()
else
    g5_1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
end
Toggles = Library.Toggles
Options = Library.Options
gu = fn47
ge = fn55
f0 = fn123
gL = fn430
local g3 = "#7fd47f"
local g2_2 = "#6ec1ff"
gb = "#e8a34d"
local g0 = "#8b93a3"
f4 = fn565
gA = fn94
f8 = fn541
gO = fn506
gk = fn468
gc = function()
    local a4
    pcall(function()
        local TextLabel = LocalPlayer.PlayerGui.SpawnSurfaceGui.Frame.Unitbuy.cost.TextLabel
        a4 = tonumber((TextLabel.Text:gsub("%D", "")))
    end)
    return a4
end
gI = fn589
fZ = function()
    local bk = {}
    pcall(function()
        local ScrollingFrame = LocalPlayer.PlayerGui.MainGui.Unitshop.content.ScrollingFrame
        for i, child in ipairs(ScrollingFrame:GetChildren()) do
            local attr = child:GetAttribute("id")
            if attr then
                local h4 = child:GetAttribute("num") or 0
                local h5 = (child:GetAttribute("price"))
                local ih = if h5 then 1 else 0
                local ie = 3272 * ih + 4084 * (1 - ih)
                local ig = 639 * ih + 2211 * (1 - ih)
                if not ((ie * 4060 + ig * 1381 + ie * ig) % 16777213 == 16257587) then
                    h5 = 0
                end
                bk[attr] = { num = h4, price = h5 }
            end
        end
    end)
    return bk
end
onBuySelectedNow = function()
    local ij = fZ()
    local ik = gk()
    local il = f4("TowerShopAffordable")
    for k, v in pairs(f8("TowerShopUnits")) do
        if v then
            local ii = gQ[k]
            local im = ii and ij[ii]
            local io = im
            if im then
                im = io.num > 0
            end
            if im then
                im = not il or ik >= io.price
            end
            if im then
                pcall(function()
                    RemoteFunction_shop:InvokeServer("buyYingyangye", { id = ii })
                end)
                task.wait(0.2)
            end
        end
    end
end
onUpgradeNow = function()
    for k, v in pairs(f8("UpgradeKinds")) do
        if v then
            local ix = gl[k]
            if ix then
                pcall(function()
                    clientRequestServer:InvokeServer(gi, { ix })
                end)
                task.wait(0.15)
            end
        end
    end
end
gN = fn487
gj = fn136
gK = fn292
f9 = fn503
onCollectFloorNow = function()
    local DropItem = workspace:FindFirstChild("DropItem")
    local iH_1
    if not DropItem then
        return
    end
    for i, child in ipairs(DropItem:GetChildren()) do
        local iG
        local iP = child
        if iP:IsA("Attachment") then
            local attr = iP:GetAttribute("RewardData")
            if attr then
                iH_1, iG = pcall(function()
                    return HttpService:JSONDecode(attr)
                end)
                if iH_1 and iG then
                    pcall(function()
                        RemoteEvent_Notice:FireServer(gs, { iG })
                    end)
                end
            end
            pcall(function()
                iP:Destroy()
            end)
        end
    end
end
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = gh, Copyable = true }, "|", gX },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local g1 = {}
g1.Info = Window:AddTab("Info", "info")
local MainTab = Window:AddTab("Main", "gamepad-2")
g1.Settings = Window:AddTab("Settings", "settings")
MainTab:SetSubTabAlignment("Center")
g1.Economy = MainTab:AddSubTab("Economy", "coins")
g1.Combat = MainTab:AddSubTab("Combat", "swords")
for k, v in g1 do
    fn194(v)
end
gD, AccountGroup, GameInfoGroup, f6, f2, gV_3 = nil, nil, nil, nil, nil, nil
local gU_11 = 7
repeat
    local g__4 = (gU_11 * 1 + 1) % 3 + 1
    if g__4 <= 2 then
        if g__4 <= 1 then
            if (AccountGroup or not gV_3) and (AccountGroup or GameInfoGroup) or (not GameInfoGroup and GameInfoGroup or (AccountGroup or not GameInfoGroup)) or not ((AccountGroup or not gV_3) and (AccountGroup or GameInfoGroup) or (not GameInfoGroup and GameInfoGroup or (AccountGroup or not GameInfoGroup))) then
                f2 = tostring(game.JobId)
            else
                f6 = tostring(game.JobId)
            end
            gU_11 = (gU_11 + 10) % 12
        else
            local kc = bit32.rrotate(bit32.bxor(bit32.lrotate(gU_11, 21), string.byte(tostring(f2))), 29)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(kc, 625242191), 2530575725), (bit32.bxor(bit32.band(kc, 3669725104), 1606477971))), 2530575725), 1606477971) == kc then
                gV_3 = #f2 > 18
            else
                f2 = #gV_3 > 18
            end
            gU_11 = (gU_11 + 7) % 12
        end
    else
        local j_ = bit32.rrotate(bit32.bxor(bit32.lrotate(gU_11, 30), string.byte(tostring(gD))), 23)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(j_, 4193156493), 4035937105), (bit32.bxor(bit32.band(j_, 101810802), 1226182949))), 4035937105), 1226182949) == j_ then
            gD = "Unknown"
            pcall(fn116)
            AccountGroup = g1.Info:AddLeftGroupbox("Account", "circle-user")
            AccountGroup:AddLabel(gL("User", LocalPlayer.Name, g3), true)
            AccountGroup:AddLabel(gL("Status", "Keyless", g3), true)
            AccountGroup:AddLabel(gL("Executor", gD, g3), true)
            GameInfoGroup = g1.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            GameInfoGroup:AddLabel(f0(gX .. " [" .. tostring(game.PlaceId) .. "]", g2_2), true)
            GameInfoGroup:AddLabel(gL("Place ID", tostring(game.PlaceId), g2_2), true)
            f6 = GameInfoGroup:AddLabel(gL("Session time", "0s", gb), true)
        else
            gL = "Unknown"
            pcall(fn116)
            g2_2 = LocalPlayer.Info:AddLeftGroupbox("Account", "circle-user")
            g2_2:AddLabel(gb("User", GameInfoGroup.Name, f0), true)
            g2_2:AddLabel(gb("Status", "Keyless", f0), true)
            g2_2:AddLabel(gb("Executor", gL, f0), true)
            g1 = LocalPlayer.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            g1:AddLabel(AccountGroup(gD .. " [" .. tostring(game.PlaceId) .. "]", f6), true)
            g1:AddLabel(gb("Place ID", tostring(game.PlaceId), f6), true)
            gX = g1:AddLabel(gb("Session time", "0s", g3), true)
        end
        gU_11 = (gU_11 + 10) % 12
    end
until (gU_11 * 5 + 10) % 12 == 0
if gV_3 then
    local gT_12 = 2
    repeat
        local gU_12 = (vector.create((gT_12 * 4 + 4) % 11 + 1, (gT_12 * 3 + 12) % 13 + 1, (gT_12 * 13 + 2) % 17 + 1))
        local jT = vector.floor(gU_12) + vector.ceil(gU_12 * -1)
        if vector.dot(jT, jT) == 3 then
            f2 = string.sub(gV_3, 1, 18) .. "..."
        else
            gV_3 = string.sub(f2, 1, 18) .. "..."
        end
        gT_12 = (gT_12 + 3) % 4
    until (gT_12 * 3 + 3) % 4 == 2
end
local gT_13 = gV_3
local hp_1 = if gT_13 then 1 else 0
local hn_1 = 209 * hp_1 + 1809 * (1 - hp_1)
ho = 352 * hp_1 + 1587 * (1 - hp_1)
if not ((hn_1 * 3908 + ho * 2012 + hn_1 * ho) % 16777213 == 1598564) then
    gT_13 = f2
end
gt, gr, gn, connection, connection2, f5 = nil, nil, nil, nil, nil, nil
local hh = gT_13
GameInfoGroup:AddLabel(gL("Server", hh, g0), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
gt = os.clock()
task.spawn(worker)
local ScriptsGroup = g1.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(f0("Included in this hub", g0), true)
ScriptsGroup:AddLabel(f0(gX, g2_2), true)
local FeaturesGroup = g1.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(f0("Auto Buy Units", g2_2), true)
FeaturesGroup:AddLabel(f0("Auto Collect", g3), true)
FeaturesGroup:AddLabel(f0("Auto Collect Floor", g3), true)
FeaturesGroup:AddLabel(f0("Auto Tower Shop", gb), true)
FeaturesGroup:AddLabel(f0("Auto Upgrades", g3), true)
FeaturesGroup:AddLabel(f0("Auto Fuse All", g2_2), true)
FeaturesGroup:AddLabel(f0("Auto Equip Best", gb), true)
FeaturesGroup:AddLabel(f0("Auto Rebirth", g2_2), true)
local SocialsGroup = g1.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = ge })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = g1.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = ge })
local FaqGroup = g1.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutoBuyUnitsGroup = g1.Economy:AddLeftGroupbox("Auto Buy Units", "shopping-cart")
AutoBuyUnitsGroup:AddToggle("AutoBuy", { Text = "Auto Buy Units", Default = false })
AutoBuyUnitsGroup:AddDropdown("BuyMode", {
    Text = "Buy mode",
    Values = { "Continuous", "Only while affordable" },
    Default = "Only while affordable"
})
AutoBuyUnitsGroup:AddSlider("BuyDelay", { Text = "Buy delay", Default = 1, Min = 0.1, Max = 30, Rounding = 1, Suffix = "s" })
AutoBuyUnitsGroup:AddButton({ Text = "Buy Now", Func = gI })
local AutoCollectGroup = g1.Economy:AddLeftGroupbox("Auto Collect", "hand-coins")
AutoCollectGroup:AddToggle("AutoCollect", { Text = "Auto Collect Coins & Diamonds", Default = false })
AutoCollectGroup:AddSlider("CollectDelay", { Text = "Collect delay", Default = 3, Min = 0.5, Max = 60, Rounding = 1, Suffix = "s" })
AutoCollectGroup:AddButton({ Text = "Collect Now", Func = gK })
local AutoCollectFloorGroup = g1.Economy:AddLeftGroupbox("Auto Collect Floor", "magnet")
AutoCollectFloorGroup:AddToggle("AutoCollectFloor", { Text = "Auto Collect Floor Drops", Default = false })
AutoCollectFloorGroup:AddSlider("FloorDelay", { Text = "Floor collect delay", Default = 1, Min = 0.1, Max = 30, Rounding = 1, Suffix = "s" })
AutoCollectFloorGroup:AddButton({ Text = "Collect Floor Now", Func = onCollectFloorNow })
local AutoTowerShopGroup = g1.Economy:AddRightGroupbox("Auto Tower Shop", "store")
AutoTowerShopGroup:AddToggle("AutoTowerShop", { Text = "Auto Tower Shop", Default = false })
AutoTowerShopGroup:AddDropdown("TowerShopUnits", { Text = "Units to buy", Values = gJ, Multi = true, AllowNull = true, Default = {} })
AutoTowerShopGroup:AddToggle("TowerShopAffordable", { Text = "Only if affordable", Default = true })
AutoTowerShopGroup:AddSlider("TowerShopDelay", { Text = "Tower shop delay", Default = 3, Min = 0.5, Max = 60, Rounding = 1, Suffix = "s" })
AutoTowerShopGroup:AddButton({ Text = "Buy Selected Now", Func = onBuySelectedNow })
local AutoUpgradesGroup = g1.Combat:AddLeftGroupbox("Auto Upgrades", "arrow-big-up-dash")
AutoUpgradesGroup:AddToggle("AutoUpgrade", { Text = "Auto Upgrades", Default = false })
AutoUpgradesGroup:AddDropdown("UpgradeKinds", { Text = "Upgrades", Values = gW_1, Multi = true, AllowNull = true, Default = {} })
AutoUpgradesGroup:AddSlider("UpgradeDelay", { Text = "Upgrade delay", Default = 2, Min = 0.2, Max = 60, Rounding = 1, Suffix = "s" })
AutoUpgradesGroup:AddButton({ Text = "Upgrade Now", Func = onUpgradeNow })
local AutoFuseGroup = g1.Combat:AddRightGroupbox("Auto Fuse", "combine")
AutoFuseGroup:AddToggle("AutoFuse", { Text = "Auto Fuse All", Default = false })
AutoFuseGroup:AddSlider("FuseDelay", { Text = "Fuse delay", Default = 1, Min = 0.1, Max = 30, Rounding = 1, Suffix = "s" })
AutoFuseGroup:AddButton({ Text = "Fuse Now", Func = gN })
local AutoEquipGroup = g1.Combat:AddRightGroupbox("Auto Equip", "shield")
AutoEquipGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
AutoEquipGroup:AddSlider("EquipDelay", { Text = "Equip delay", Default = 5, Min = 0.5, Max = 60, Rounding = 1, Suffix = "s" })
AutoEquipGroup:AddButton({ Text = "Equip Best Now", Func = gj })
local AutoRebirthGroup = g1.Combat:AddLeftGroupbox("Auto Rebirth", "rotate-ccw")
AutoRebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
AutoRebirthGroup:AddSlider("RebirthDelay", { Text = "Rebirth delay", Default = 10, Min = 1, Max = 120, Rounding = 1, Suffix = "s" })
AutoRebirthGroup:AddButton({ Text = "Rebirth Now", Func = f9 })
local MenuGroup = g1.Settings:AddLeftGroupbox("Menu", "menu")
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton({ Text = "Unload", Func = onUnload })
g5_1:SetLibrary(Library)
g5_1:SetFolder("OuroborosHub")
g5_1:SaveDefault("Monochrome")
g5_1:ApplyToTab(g1.Settings)
g5_1:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/merge-anime-defender")
SaveManager:BuildConfigSection(g1.Settings)
SaveManager:LoadAutoloadConfig()
gr = tick()
gn = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local jc = v
        pcall(function()
            jc:Disable()
        end)
    end
end)
f5 = fn421
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
Library:OnUnload(fn560)
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(worker6)
task.spawn(worker7)
task.spawn(worker8)
task.spawn(worker9)
task.spawn(worker10)
Library:Notify("Merge Anime Defender loaded")
