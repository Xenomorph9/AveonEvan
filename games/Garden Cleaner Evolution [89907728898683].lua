local Label6
local iZ
local iG
local MaxHold
local i4
local Leaves
local bodyGyro
local h8
local Label3
local iz
local UserInputService
local iF
local il
local Options
local iL
local bodyVelocity
local h7
local iy
local connection4
local iX
local iE
local iK
local ir
local i8
local h6
local VirtualUser
local connection5
local iD
local Cash
local Label2
local iJ
local Label5
local UpgradeLevels
local connection2
local Toggles
local connection
local iV
local iC
local i0
local SellZones
local i6
local Areas
local iv
local Label
local ia
local Rebirth
local connection3
local HiddenData
local iH
local io
local i5
local iN
local Library
local LeafData
local RebirthEvent
local Label4
local function fn32(at)
    local jW = Options[at]
    local jX = jW and jW.Value
    local jW_1 = {}
    local jY = jX
    local j1 = if jY then 1 else 0
    local j_ = 2470 * j1 + 886 * (1 - j1)
    local j0 = 2316 * j1 + 3152 * (1 - j1)
    if not ((j_ * 2012 + j0 * 192 + j_ * j0) % 16777213 == 11134832) then
        jY = jW_1
    end
    return jY
end
local function fn63(a9, ba, bb)
    local kr = {}
    for k, v in LeafData.leaves do
        if #kr >= a9 then
            break
        elseif not v.pickedUp then
            local ks = v.areaName or "Unknown"
            if bb or ba[ks] then
                LeafData.MarkPickedUp(k)
                table.insert(kr, { AreaName = ks, IsLucky = false })
            end
        end
    end
    return kr
end
local function fn232(an, ao)
    local jT = Options[an]
    local jU = jT and tonumber(jT.Value)
    return jU or ao
end
local function fn236()
    iX(iK, "Copied Discord invite to clipboard")
end
local function fn255(bH)
    local DiscordGroup = bH:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = iC })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = iC })
end
local function fn362()
    local kp_3
    if iZ("Capacity") < 5 then
        return false
    elseif Rebirth.Value >= 1 then
        local BasementCapacityLevel = UpgradeLevels:FindFirstChild("BasementCapacityLevel")
        if not BasementCapacityLevel or BasementCapacityLevel.Value < 4 then
            return false
        end
        HiddenData:FindFirstChild("HasClearedPlotThisRebirth")
        if kp_3 then
            return true
        end
        return iy() >= 0.999
    else
        local HasClearedPlotThisRebirth = HiddenData:FindFirstChild("HasClearedPlotThisRebirth")
        kp_3 = HasClearedPlotThisRebirth and HasClearedPlotThisRebirth.Value == true
        if kp_3 then
            return true
        end
        return iy() >= 0.999
    end
end
local function fn377(aN)
    local j5 = UpgradeLevels:FindFirstChild(aN .. "Level")
    return j5 and j5.Value or 1
end
local function fn390()
    local ka_1
    local j9_1
    local SavedLeafCounts = HiddenData:FindFirstChild("SavedLeafCounts")
    if not SavedLeafCounts then
        return 0
    end
    ka_1, j9_1 = 0, 0
    for i, child in Areas:GetChildren() do
        if child:IsA("Folder") then
            local kb = child:GetAttribute("LeafAmount") or 50
            ka_1 += kb
            local kb_1 = SavedLeafCounts:FindFirstChild(child.Name)
            local kb_2 = kb_1 and kb_1.Value or kb
            j9_1 += kb_2
        end
    end
    return ka_1 > 0 and (ka_1 - j9_1) / ka_1 or 0
end
local function fn394()
    local kS_1
    local kR_1
    local kQ = h8()
    if not kQ then
        return nil
    end
    kS_1, kR_1 = nil, math.huge
    for i, child in SellZones:GetChildren() do
        local kT = child:FindFirstChild("Bin") or child:FindFirstChild("Part")
        local kU = kT
        if kT then
            kT = kU:IsA("BasePart")
        end
        if kT then
            local Magnitude = (kU.Position - kQ.Position).Magnitude
            if Magnitude < kR_1 then
                kR_1 = Magnitude
                kS_1 = kU
            end
        end
    end
    return kS_1
end
local function fn420(P, Q)
    if setclipboard then
        setclipboard(P)
    elseif toclipboard then
        toclipboard(P)
    end
    Library:Notify(Q)
end
local function fn492()
    Library.ScreenGui.Parent = iJ:WaitForChild("PlayerGui")
end
local function fn495()
    local Character = iJ.Character
    local j3 = Character and Character:FindFirstChild("HumanoidRootPart")
    return j3
end
local function fn520(ai)
    local jQ = Toggles[ai]
    return jQ ~= nil and jQ.Value == true
end
local function fn564()
    local k5_1
    local k4_1
    if identifyexecutor then
        k5_1, k4_1 = identifyexecutor()
        local k6 = k5_1 ~= ""
        local k7 = type(k5_1) == "string" and k6
        if k7 then
            local k6_1 = type(k4_1) == "string" and k4_1 ~= "" and k5_1 .. " " .. k4_1
            iF = k6_1 or k5_1
        end
    end
end
local function fn581(Z, aa, ab)
    return string.format("<b>%s</b> %s %s", Z, io("-", "#5a6070"), io(aa, ab))
end
local function fn609(W, X)
    return string.format('<font color="%s">%s</font>', X, W)
end
local function fn684(bj)
    local kF_1
    local kE_1
    local kD = Areas:FindFirstChild(bj)
    if not kD then
        return nil
    end
    kF_1, kE_1 = nil, 0
    for i, descendant in kD:GetDescendants() do
        local kD_1 = descendant:IsA("BasePart") and descendant.Name == "Part"
        if kD_1 then
            local kD_2 = descendant.Size.X * descendant.Size.Z
            if kD_2 > kE_1 then
                kE_1 = kD_2
                kF_1 = descendant
            end
        end
    end
    if not kF_1 then
        return nil
    end
    return kF_1.Position + Vector3.new(0, kF_1.Size.Y / 2 + 4, 0)
end
h6 = nil
h7 = nil
h8 = nil
RebirthEvent = nil
ia = nil
connection = nil
connection4 = nil
Label6 = nil
connection3 = nil
Cash = nil
il = nil
MaxHold = nil
io = nil
Label5 = nil
ir = nil
Leaves = nil
Library = nil
iv = nil
iy = nil
iz = nil
Label4 = nil
iC = nil
iD = nil
iE = nil
iF = nil
iG = nil
iH = nil
SellZones = nil
iJ = nil
iK = nil
iL = nil
iN = nil
Areas = nil
connection2 = nil
VirtualUser = nil
Label3 = nil
Rebirth = nil
iV = nil
local ic, BuyEquipment, ii, UpgradeRequest, LeafPickedUp, is, iw, ix, BasementUpgrades, iM, iR, BasementUpgradeManager
iX = nil
UserInputService = nil
iZ = nil
HiddenData = nil
i0 = nil
Label2 = nil
Options = nil
i4 = nil
i5 = nil
i6 = nil
UpgradeLevels = nil
i8 = nil
bodyVelocity = nil
bodyGyro = nil
LeafData = nil
Label = nil
Toggles = nil
connection5 = nil
local ShopConfig, UpgradeManager
local SaveManager
local jl_1
local jk_1
UserInputService, VirtualUser, iJ = nil, nil, nil
local Players = game:GetService("Players")
local Window, AccountGroup
local ReplicatedStorage = game:GetService("ReplicatedStorage")
UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
if (UserInputService or not VirtualUser) and (iJ and not Players) and (iJ and not Players or Players and ReplicatedStorage) or not ((UserInputService or not VirtualUser) and (iJ and not Players) and (iJ and not Players or Players and ReplicatedStorage)) then
    VirtualUser = game:GetService("VirtualUser")
    iJ = Players.LocalPlayer
else
    iJ = game:GetService("VirtualUser")
end
if getgenv then
    getgenv().gethui = function()
        return iJ:WaitForChild("PlayerGui")
    end
end
LeafPickedUp, UpgradeRequest, BuyEquipment, RebirthEvent, LeafData, UpgradeManager, ShopConfig, BasementUpgradeManager, Areas, SellZones, BasementUpgrades, Leaves, MaxHold, Cash, UpgradeLevels, HiddenData, Rebirth, iK, iG, Library, SaveManager, Toggles, Options, iL, iH, iz, iv, iX, iC, io, h7, ir, i6, ix, h8 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local jj_1
local jf_1 = ReplicatedStorage:WaitForChild("Modules")
LeafPickedUp = Remotes:WaitForChild("LeafPickedUp")
UpgradeRequest = Remotes:WaitForChild("UpgradeRequest")
BuyEquipment = Remotes:WaitForChild("BuyEquipment")
RebirthEvent = Remotes:WaitForChild("RebirthEvent")
LeafData = require(jf_1:WaitForChild("LeafData"))
if (BasementUpgradeManager or not BasementUpgradeManager or (UpgradeManager or not Options) or (not Options and Toggles)) and (not iX and Toggles and (not Toggles or not Toggles) or (Toggles and Toggles or 98)) or not ((BasementUpgradeManager or not BasementUpgradeManager or (UpgradeManager or not Options) or (not Options and Toggles)) and (not iX and Toggles and (not Toggles or not Toggles) or (Toggles and Toggles or 98))) then
    UpgradeManager = require(jf_1:WaitForChild("UpgradeManager"))
else
    jf_1 = require(UpgradeManager:WaitForChild("UpgradeManager"))
end
ShopConfig = require(jf_1:WaitForChild("ShopConfig"))
BasementUpgradeManager = require(jf_1:WaitForChild("BasementUpgradeManager"))
Areas = workspace:WaitForChild("Areas")
SellZones = workspace:WaitForChild("SellZones")
BasementUpgrades = workspace:WaitForChild("BasementUpgrades")
local PlayerData = iJ:WaitForChild("PlayerData")
Leaves = PlayerData:WaitForChild("Leaves")
MaxHold = PlayerData:WaitForChild("MaxHold")
Cash = PlayerData:WaitForChild("Cash")
local hasRake = PlayerData:WaitForChild("hasRake")
local jm = PlayerData:WaitForChild("hasLeafblower")
UpgradeLevels = PlayerData:WaitForChild("UpgradeLevels")
HiddenData = iJ:WaitForChild("HiddenData")
Rebirth = iJ:WaitForChild("leaderstats"):WaitForChild("Rebirth")
local jo = "Garden Cleaner Evolution"
if ((iC and not Leaves or Cash and Cash) and (BasementUpgrades and not iX and (not BasementUpgrades or not iC)) or (iX and iX or iX and not Cash or (iC and not iX or BasementUpgrades and UpgradeLevels))) and not ((iC and not Leaves or Cash and Cash) and (BasementUpgrades and not iX and (not BasementUpgrades or not iC)) or (iX and iX or iX and not Cash or (iC and not iX or BasementUpgrades and UpgradeLevels))) then
    iG = "https://discord.gg/ehKVq7pf7v"
    iK = "https://rscripts.net/@Ouroboros"
else
    iK = "https://discord.gg/ehKVq7pf7v"
    iG = "https://rscripts.net/@Ouroboros"
end
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
pcall(fn492)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
if (Areas or Areas) and (not Areas or not Areas) and (i6 and not Areas or (not Areas or not i6)) or (not i6 and not Areas and (not Areas or not Areas) or i6 and not i6 and (not i6 or not Areas)) or not ((Areas or Areas) and (not Areas or not Areas) and (i6 and not Areas or (not Areas or not i6)) or (not i6 and not Areas and (not Areas or not Areas) or i6 and not i6 and (not i6 or not Areas))) then
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
else
    loadstring(game:HttpGet(SaveManager .. "addons/SaveManager.lua"))()
end
Toggles = Library.Toggles
Options = Library.Options
iX = fn420
iC = fn236
io = fn609
h7 = fn581
iL = "#7fd47f"
iH = "#6ec1ff"
iz = "#e8a34d"
iv = "#8b93a3"
ir = fn520
i6 = fn232
ix = fn32
h8 = fn495
local jp = {}
for i, child in Areas:GetChildren() do
    local jf_2 = child:IsA("Folder") or child:IsA("Model")
    if jf_2 then
        table.insert(jp, child.Name)
    end
end
iw, is, il, ii, ia, h6 = nil, nil, nil, nil, nil, nil
table.sort(jp)
iw = {
    "Capacity",
    "Yield",
    "Cooldown",
    "RakeSpeed",
    "RakeArea",
    "RakeRange",
    "BlowerRange",
    "BlowerRadius",
    "BlowerCooldown"
}
if not ii and not il and (not il and not il) and (ia or not ia or not ia and not iw) or not (not ii and not il and (not il and not il) and (ia or not ia or not ia and not iw)) then
    is = {
        RakeSpeed = hasRake,
        RakeArea = hasRake,
        RakeRange = hasRake,
        BlowerRange = jm,
        BlowerRadius = jm,
        BlowerCooldown = jm
    }
else
    jm = {
        RakeSpeed = is,
        BlowerCooldown = hasRake,
        BlowerRange = hasRake,
        RakeArea = is,
        RakeRange = is,
        BlowerRadius = hasRake
    }
end
il = { "BasementCapacity", "BasementCashMultiplier", "BasementLuckyChance" }
ii = {
    BasementCapacity = "CapacityUpgradeButton",
    BasementCashMultiplier = "CashMultiplierUpgradeButton",
    BasementLuckyChance = "LuckyUpgradeButton"
}
ia = { Rake = hasRake, Blower = jm }
h6 = {}
for k in ShopConfig.Equipment do
    if ia[k] then
        table.insert(h6, k)
    end
end
Window, jj_1, iZ, iy, iD, iR, i5, ic = nil, nil, nil, nil, nil, nil, nil, nil
table.sort(h6)
iZ = fn377
iy = fn390
iD = fn362
iR = fn63
i5 = fn684
ic = fn394
if jj_1 and iy and (jj_1 and false) or not iy and ic and false or not (jj_1 and iy and (jj_1 and false) or not iy and ic and false) then
    Window = Library:CreateWindow({
        Title = "Ouroboros Hub",
        Footer = iK .. " | Garden Cleaner Evolution",
        Icon = 18657887261,
        NotifySide = "Right",
        ShowCustomCursor = false
    })
else
    jo = iK:CreateWindow({
        NotifySide = "Right",
        Icon = 18657887261,
        Title = "Ouroboros Hub",
        ShowCustomCursor = false,
        Footer = Library .. " | " .. Window
    })
end
local jj_2 = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "leaf"),
    Shop = Window:AddTab("Shop", "shopping-bag"),
    Player = Window:AddTab("Player", "user"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in jj_2 do
    fn255(v)
end
iF, AccountGroup, jl_1, Label, i4, jk_1 = nil, nil, nil, nil, nil, nil
local jg_1 = 22
repeat
    local jh_2 = (jg_1 * 5 + 5) % 6 + 1
    if jh_2 <= 3 then
        if jh_2 <= 2 then
            if jh_2 <= 1 then
                if ((not jg_1 or i4 or jk_1 and not jk_1 or (not AccountGroup or not Label or (not i4 or jk_1))) and ((not iF or Label) and (i4 and not AccountGroup) or (not jk_1 and not jg_1 or jg_1 and not AccountGroup)) or ((not i4 or i4) and (not iF and i4) or (not jk_1 or not jk_1 or (not AccountGroup or not iF))) and (not AccountGroup and not AccountGroup and (Label and Label) or not iF and Label and (not AccountGroup and jg_1))) and not ((not jg_1 or i4 or jk_1 and not jk_1 or (not AccountGroup or not Label or (not i4 or jk_1))) and ((not iF or Label) and (i4 and not AccountGroup) or (not jk_1 and not jg_1 or jg_1 and not AccountGroup)) or ((not i4 or i4) and (not iF and i4) or (not jk_1 or not jk_1 or (not AccountGroup or not iF))) and (not AccountGroup and not AccountGroup and (Label and Label) or not iF and Label and (not AccountGroup and jg_1))) then
                    i4 = #jk_1 > 18
                else
                    jk_1 = #i4 > 18
                end
                jg_1 = (jg_1 + 35) % 48
            else
                local jm_1 = (vector.create((jg_1 * 4 + 4) % 11 + 1, (jg_1 * 11 + 2) % 13 + 1, (jg_1 * 2 + 4) % 17 + 1))
                local jn_1 = (vector.create((jg_1 * 3 + 4) % 11 + 1, (jg_1 * 10 + 5) % 13 + 1, (jg_1 * 15 + 5) % 17 + 1))
                local js = (vector.create((jg_1 * 1 + 6) % 11 + 1, (jg_1 * 6 + 3) % 13 + 1, (jg_1 * 4 + 3) % 17 + 1))
                local jt = (vector.create((jg_1 * 3 + 3) % 11 + 1, (jg_1 * 5 + 6) % 13 + 1, (jg_1 * 2 + 10) % 17 + 1))
                if vector.dot(vector.cross(jm_1, jn_1), (vector.cross(js, jt))) == vector.dot(jm_1, js) * vector.dot(jn_1, jt) - vector.dot(jm_1, jt) * vector.dot(jn_1, js) + 1 then
                    jl_1 = "Unknown"
                else
                    iF = "Unknown"
                end
                jg_1 = (jg_1 + 11) % 48
            end
        else
            local n7 = bit32.rrotate(bit32.bxor(bit32.lrotate(jg_1, 3), string.byte(tostring(AccountGroup))), 6)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(n7, 4132987353), 2212400296), (bit32.bxor(bit32.band(n7, 161979942), 2751228016))), 2212400296), 2751228016) ~= n7 then
                pcall(fn564)
                jj_2 = AccountGroup.Info:AddLeftGroupbox("Account", "circle-user")
            else
                pcall(fn564)
                AccountGroup = jj_2.Info:AddLeftGroupbox("Account", "circle-user")
            end
            jg_1 = (jg_1 + 41) % 48
        end
    elseif jh_2 <= 5 then
        if jh_2 <= 4 then
            local jh_3 = (vector.create((jg_1 * 3 + 8) % 11 + 1, (jg_1 * 4 + 10) % 13 + 1, (jg_1 * 3 + 5) % 17 + 1))
            local jm_2 = (vector.create((jg_1 * 7 + 3) % 11 + 1, (jg_1 * 5 + 7) % 13 + 1, (jg_1 * 1 + 2) % 17 + 1))
            local oe = vector.dot(jh_3, jm_2)
            if oe * oe >= vector.dot(jh_3, jh_3) * vector.dot(jm_2, jm_2) + 1 then
                iL:AddLabel(AccountGroup("User", jl_1.Name, h7), true)
                iL:AddLabel(AccountGroup("Status", "Keyless", h7), true)
                iL:AddLabel(AccountGroup("Executor", jj_2, h7), true)
                iF = iJ.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            else
                AccountGroup:AddLabel(h7("User", iJ.Name, iL), true)
                AccountGroup:AddLabel(h7("Status", "Keyless", iL), true)
                AccountGroup:AddLabel(h7("Executor", iF, iL), true)
                jl_1 = jj_2.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            end
            jg_1 = (jg_1 + 41) % 48
        else
            if jg_1 * 94689239 + 10 + 7 <= jg_1 * 94689239 + 10 + 7 + 3 then
                jl_1:AddLabel(io(jo .. " [" .. tostring(game.PlaceId) .. "]", iH), true)
                jl_1:AddLabel(h7("Place ID", tostring(game.PlaceId), iH), true)
                Label = jl_1:AddLabel(h7("Session time", "0s", iz), true)
            else
                iH:AddLabel(jl_1(h7 .. " [" .. tostring(game.PlaceId) .. "]", Label), true)
                iH:AddLabel(iz("Place ID", tostring(game.PlaceId), Label), true)
                io = iH:AddLabel(iz("Session time", "0s", jo), true)
            end
            jg_1 = (jg_1 + 29) % 48
        end
    else
        if jg_1 * 106782385 + 12 + 3 >= jg_1 * 106782385 + 12 + 3 + 4 then
            jl_1 = tostring(game.JobId)
        else
            i4 = tostring(game.JobId)
        end
        jg_1 = (jg_1 + 47) % 48
    end
until (jg_1 * 17 + 14) % 48 == 16
if jk_1 then
    local jf_5 = 3
    repeat
        local jg_2 = {
            "mumqbifx",
            "swiqnbog",
            "gagyt",
            "eac",
            "eaqyot",
            "ssevkaxiyjm",
            "dnazcunxceh",
            "fpmpsm",
            "kiyu",
            "pjddi",
            "vxckdirewpe",
            "ozcvxjdsvusd",
            "jzo"
        }
        if jg_2[(jf_5 * 70 + 92) % 13 + 1] <= jg_2[(jf_5 * 70 + 92) % 13 + 1] then
            jk_1 = string.sub(i4, 1, 18) .. "..."
        else
            i4 = string.sub(jk_1, 1, 18) .. "..."
        end
        jf_5 = (jf_5 + 2) % 8
    until (jf_5 * 3 + 0) % 8 == 7
end
local jf_6 = jk_1 or i4
jl_1:AddLabel(h7("Server", jf_6, iv), true)
jl_1:AddButton({
    Text = "Copy join script (Job ID)",
    Func = function()
        iX(string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, i4), "Copied join script to clipboard")
    end
})
local OuroborosHubGroup = jj_2.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = iC })
local ScriptsGroup = jj_2.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(io("Included in this hub", iv), true)
ScriptsGroup:AddLabel(io(jo, iH), true)
local FeaturesGroup = jj_2.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(io("Auto Collect Leaves", iH), true)
FeaturesGroup:AddLabel(io("Auto Sell", iz), true)
FeaturesGroup:AddLabel(io("Auto Upgrades", iL), true)
FeaturesGroup:AddLabel(io("Auto Basement Upgrades", iL), true)
FeaturesGroup:AddLabel(io("Auto Buy Equipment", iv), true)
FeaturesGroup:AddLabel(io("Auto Rebirth", iv), true)
local SocialsGroup = jj_2.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = iC })
SocialsGroup:AddButton({
    Text = "Rscripts",
    Func = function()
        iX(iG, "Copied Rscripts profile to clipboard")
    end
})
local FaqGroup = jj_2.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutoCollectLeavesGroup = jj_2.Main:AddLeftGroupbox("Auto Collect Leaves", "leaf")
AutoCollectLeavesGroup:AddToggle("AutoCollect", { Text = "Auto Collect Leaves", Default = false })
AutoCollectLeavesGroup:AddToggle("CollectAnyArea", { Text = "Any Area", Default = true })
AutoCollectLeavesGroup:AddDropdown("CollectAreas", { Text = "Areas", Values = jp, Default = {}, Multi = true })
AutoCollectLeavesGroup:AddSlider("CollectAmount", { Text = "Leaves Per Batch", Default = 250, Min = 1, Max = 1000, Rounding = 0 })
AutoCollectLeavesGroup:AddSlider("CollectDelay", { Text = "Loop Delay", Default = 0, Min = 0, Max = 5, Rounding = 2 })
Label2 = AutoCollectLeavesGroup:AddLabel(h7("Leaves", "0 / 0", iL), true)
local AutoSellGroup = jj_2.Main:AddRightGroupbox("Auto Sell", "trash-2")
AutoSellGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
AutoSellGroup:AddSlider("SellAt", { Text = "Sell At % Of Capacity", Default = 100, Min = 10, Max = 100, Rounding = 0 })
AutoSellGroup:AddToggle("SellReturn", { Text = "Return After Selling", Default = true })
AutoSellGroup:AddSlider("SellDelay", { Text = "Loop Delay", Default = 0.5, Min = 0.5, Max = 15, Rounding = 1 })
Label3 = AutoSellGroup:AddLabel(h7("Cash", "0", iz), true)
local AutoUpgradesGroup = jj_2.Shop:AddLeftGroupbox("Auto Upgrades", "arrow-up-circle")
AutoUpgradesGroup:AddToggle("AutoUpgrade", { Text = "Auto Upgrades", Default = false })
AutoUpgradesGroup:AddToggle("UpgradeAny", { Text = "Any Upgrade", Default = true })
AutoUpgradesGroup:AddDropdown("Upgrades", { Text = "Upgrades", Values = iw, Default = {}, Multi = true })
AutoUpgradesGroup:AddInput("UpgradeCashReserve", { Text = "Keep Cash Reserve", Default = "0", Numeric = true, Finished = true })
AutoUpgradesGroup:AddSlider("UpgradeDelay", { Text = "Loop Delay", Default = 3, Min = 0.5, Max = 60, Rounding = 1 })
local AutoBasementUpgradesGroup = jj_2.Shop:AddLeftGroupbox("Auto Basement Upgrades", "arrow-up-from-line")
AutoBasementUpgradesGroup:AddToggle("AutoBasementUpgrade", { Text = "Auto Basement Upgrades", Default = false })
AutoBasementUpgradesGroup:AddToggle("BasementUpgradeAny", { Text = "Any Upgrade", Default = true })
AutoBasementUpgradesGroup:AddDropdown("BasementUpgradeList", { Text = "Upgrades", Values = il, Default = {}, Multi = true })
AutoBasementUpgradesGroup:AddInput("BasementCashReserve", { Text = "Keep Cash Reserve", Default = "0", Numeric = true, Finished = true })
AutoBasementUpgradesGroup:AddSlider("BasementDelay", { Text = "Loop Delay", Default = 3, Min = 0.5, Max = 60, Rounding = 1 })
Label4 = AutoBasementUpgradesGroup:AddLabel(h7("Levels", "0 / 0 / 0", iL), true)
local AutoBuyEquipmentGroup = jj_2.Shop:AddRightGroupbox("Auto Buy Equipment", "shovel")
AutoBuyEquipmentGroup:AddToggle("AutoBuyEquipment", { Text = "Auto Buy Equipment", Default = false })
AutoBuyEquipmentGroup:AddToggle("BuyAnyEquipment", { Text = "Any Equipment", Default = true })
AutoBuyEquipmentGroup:AddDropdown("BuyEquipmentList", { Text = "Equipment", Values = h6, Default = {}, Multi = true })
AutoBuyEquipmentGroup:AddInput("EquipmentCashReserve", { Text = "Keep Cash Reserve", Default = "0", Numeric = true, Finished = true })
AutoBuyEquipmentGroup:AddSlider("EquipmentDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
Label5 = AutoBuyEquipmentGroup:AddLabel(h7("Owned", "None", iv), true)
local AutoRebirthGroup = jj_2.Shop:AddRightGroupbox("Auto Rebirth", "rotate-ccw")
AutoRebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
AutoRebirthGroup:AddSlider("RebirthDelay", { Text = "Loop Delay", Default = 10, Min = 1, Max = 120, Rounding = 1 })
Label6 = AutoRebirthGroup:AddLabel(h7("Rebirth", "0", iH), true)
local MovementGroup = jj_2.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "Walk Speed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "Walk Speed", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfiniteJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("Noclip", { Text = "Noclip", Default = false })
local FlyGroup = jj_2.Player:AddRightGroupbox("Fly", "plane")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 80, Min = 16, Max = 400, Rounding = 0 })
local TeleportGroup = jj_2.Player:AddLeftGroupbox("Teleport", "map-pin")
TeleportGroup:AddDropdown("TeleportArea", { Text = "Area", Values = jp, Default = jp[1] })
TeleportGroup:AddButton({
    Text = "Teleport",
    Func = function()
        local TeleportArea = Options.TeleportArea
        local la = TeleportArea and TeleportArea.Value
        local k9_1 = la
        if la then
            la = i5(k9_1)
        end
        local k9_2 = la
        local la_1 = h8()
        local lb = not la_1
        local lc = not k9_2
        local lg = if lc then 1 else 0
        local le = 1945 * lg + 1504 * (1 - lg)
        local lf = 609 * lg + 4086 * (1 - lg)
        if not ((le * 3924 + lf * 2329 + le * lf) % 16777213 == 10235046) then
            lc = lb
        end
        if lc then
            Library:Notify("Could not find that area")
            return
        end
        la_1.CFrame = CFrame.new(k9_2)
    end
})
local MenuGroup = jj_2.Settings:AddLeftGroupbox("Menu", "wrench")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
i8 = tick()
i0 = tick()
pcall(function()
    for i, v in ipairs(getconnections(iJ.Idled)) do
        local ln = v
        pcall(function()
            ln:Disable()
        end)
    end
end)
iE = function()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    i0 = tick()
end
connection = UserInputService.InputBegan:Connect(function()
    i8 = tick()
end)
connection2 = UserInputService.InputChanged:Connect(function(cD)
    local UserInputType = cD.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        i8 = tick()
    end
end)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", function()
    Library:Unload()
end)
Library.ToggleKeybind = Options.MenuKeybind
Library:OnUnload(function()
    connection:Disconnect()
    connection2:Disconnect()
    print("Garden Cleaner Evolution unloaded")
end)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Mint")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/GardenCleanerEvolution")
SaveManager:BuildConfigSection(jj_2.Settings)
ThemeManager:ApplyToTab(jj_2.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
task.spawn(function()
    while not Library.Unloaded do
        task.wait(2)
        if ir("AntiAfk") then
            local lt = tick() - i8
            local lu = tick() - i0
            if lt >= 300 and lu >= 60 then
                pcall(iE)
            else
                if lt < 300 and lu >= 300 then
                    pcall(iE)
                end
            end
        end
    end
end)
iN = os.clock()
task.spawn(function()
    local lB_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local lA = math.floor(os.clock() - iN)
        if lA < 60 then
            lB_1 = lA .. "s"
        elseif lA < 3600 then
            lB_1 = string.format("%dm %ds", lA // 60, lA % 60)
        else
            lB_1 = string.format("%dh %dm", lA // 3600, lA % 3600 // 60)
        end
        Label:SetText(h7("Session time", lB_1, iz))
        Label2:SetText(h7("Leaves", string.format("%d / %d", Leaves.Value, MaxHold.Value), iL))
        Label3:SetText(h7("Cash", string.format("%d", math.floor(Cash.Value)), iz))
        local lA_1 = {}
        for k, v in h6 do
            if ia[v].Value then
                table.insert(lA_1, v)
            end
        end
        local lB_2 = #lA_1 > 0 and table.concat(lA_1, ", ")
        local lC = lB_2 or "None"
        local lA_2 = #lA_1 > 0 and iL or iv
        Label5:SetText(h7("Owned", lC, lA_2))
        local lA_3 = {}
        for k, v in il do
            local lB_4 = UpgradeLevels:FindFirstChild(v .. "Level")
            local insert = table.insert
            local lB_5 = lB_4 and lB_4.Value or 0
            insert(lA_3, tostring(lB_5))
        end
        Label4:SetText(h7("Levels", table.concat(lA_3, " / "), iL))
        local format = string.format
        local Value = Rebirth.Value
        local lC_2 = iD() and "ready"
        local lD_2 = lC_2 or "locked"
        local lC_3 = format("%d (%s)", Value, lD_2)
        local lA_5 = iD() and iL
        local lB_7 = lA_5 or iH
        Label6:SetText(h7("Rebirth", lC_3, lB_7))
    end
end)
bodyVelocity, bodyGyro = nil, nil
iV = function()
    if bodyVelocity then
        bodyVelocity:Destroy()
        bodyVelocity = nil
    end
    if bodyGyro then
        bodyGyro:Destroy()
        bodyGyro = nil
    end
end
connection3 = UserInputService.JumpRequest:Connect(function()
    local l_ = if not ir("InfiniteJump") then 1 else 0
    if l_ == 1 then
        return
    end
    local Character = iJ.Character
    local lW = Character and Character:FindFirstChildOfClass("Humanoid")
    if lW then
        lW:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)
connection4 = nil
connection5 = nil
connection4 = RunService.Stepped:Connect(function()
    if Library.Unloaded then
        connection4:Disconnect()
        return
    end
    if not ir("Noclip") then
        return
    end
    local Character = iJ.Character
    if not Character then
        return
    end
    for i, descendant in Character:GetDescendants() do
        local l0_1 = descendant:IsA("BasePart") and descendant.CanCollide
        if l0_1 then
            descendant.CanCollide = false
        end
    end
end)
connection5 = RunService.RenderStepped:Connect(function()
    if Library.Unloaded then
        iV()
        connection3:Disconnect()
        connection5:Disconnect()
        return
    end
    local Character = iJ.Character
    local mc = Character and Character:FindFirstChildOfClass("Humanoid")
    local md = Character
    if md then
        md = Character:FindFirstChild("HumanoidRootPart")
    end
    local mb_1 = mc
    local mc_1 = md
    if mb_1 then
        mb_1 = ir("WalkSpeedEnabled")
    end
    if mb_1 then
        local mb_2 = i6("WalkSpeed", 32)
        if mc.WalkSpeed ~= mb_2 then
            mc.WalkSpeed = mb_2
        end
    end
    local mb_3 = not mc_1
    local md_1 = not ir("Fly") or mb_3
    if md_1 or not mc then
        iV()
        return
    end
    if not bodyVelocity then
        bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.MaxForce = Vector3.new(1, 1, 1) * 9000000000
        bodyVelocity.Velocity = Vector3.zero
        bodyVelocity.Parent = mc_1
        bodyGyro = Instance.new("BodyGyro")
        bodyGyro.MaxTorque = Vector3.new(1, 1, 1) * 9000000000
        bodyGyro.P = 90000
        bodyGyro.Parent = mc_1
    end
    local CurrentCamera = workspace.CurrentCamera
    local mc_2 = Vector3.zero
    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
        mc_2 += CurrentCamera.CFrame.LookVector
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
        mc_2 -= CurrentCamera.CFrame.LookVector
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
        mc_2 -= CurrentCamera.CFrame.RightVector
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
        mc_2 += CurrentCamera.CFrame.RightVector
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
        mc_2 += Vector3.yAxis
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
        mc_2 -= Vector3.yAxis
    end
    bodyGyro.CFrame = CurrentCamera.CFrame
    local mb_6 = mc_2.Magnitude > 0 and mc_2.Unit * i6("FlySpeed", 80)
    local mc_3 = mb_6
    local mm = if mc_3 then 1 else 0
    local mk = 1967 * mm + 3043 * (1 - mm)
    local ml = 2263 * mm + 2329 * (1 - mm)
    if not ((mk * 3821 + ml * 2662 + mk * ml) % 16777213 == 1214121) then
        mc_3 = Vector3.zero
    end
    bodyVelocity.Velocity = mc_3
end)
iM = false
task.spawn(function()
    while not Library.Unloaded do
        local mo = not iM
        local mp = ir("AutoCollect") and mo
        if mp then
            local mo_1 = MaxHold.Value - Leaves.Value
            if mo_1 > 0 then
                local mp_1 = iR(mo_1, ix("CollectAreas"), ir("CollectAnyArea"))
                local mo_2 = math.max(1, i6("CollectAmount", 250))
                local mq = #mp_1
                for i = 1, mq, mo_2 do
                    local mn
                    mn = table.move(mp_1, i, math.min(i + mo_2 - 1, #mp_1), 1, {})
                    pcall(function()
                        LeafPickedUp:FireServer(mn)
                    end)
                end
            end
        end
        task.wait(i6("CollectDelay", 0))
    end
end)
task.spawn(function()
    local mC = false
    repeat
        if not Library.Unloaded then
            local mx = not iM
            local my = ir("AutoSell") and mx
            if my then
                local mx_1 = math.max(1, math.floor(MaxHold.Value * i6("SellAt", 100) / 100))
                local my_1 = h8()
                local mw = ic()
                local mz = my_1 and mw and Leaves.Value >= mx_1
                local mz_1
                if mz then
                    iM = true
                    local CFrame2 = my_1.CFrame
                    my_1.CFrame = CFrame.new(mw.Position + Vector3.new(0, 3, 4))
                    task.wait(0.4)
                    pcall(function()
                        fireproximityprompt(mw.ProximityPrompt)
                    end)
                    local my_2 = os.clock() + 5
                    repeat
                        task.wait(0.1)
                        mz_1 = Leaves.Value <= 0 or os.clock() > my_2 or Library.Unloaded
                    until mz_1
                    local mF = if ir("SellReturn") then 1 else 0
                    if mF == 1 then
                        local my_3 = h8()
                        if my_3 then
                            my_3.CFrame = CFrame2
                        end
                    end
                    iM = false
                end
            end
            task.wait(i6("SellDelay", 1))
        else
            mC = true
        end
    until mC
end)
task.spawn(function()
    while not Library.Unloaded do
        if ir("AutoUpgrade") then
            local mG = ix("Upgrades")
            local mH = ir("UpgradeAny")
            local mI = i6("UpgradeCashReserve", 0)
            for k, v in iw do
                local mR = v
                if not not (mH or mG[mR]) then
                    local mJ_1 = is[mR]
                    if not (mJ_1 and not mJ_1.Value) then
                        local mJ_2 = iZ(mR)
                        if not (mJ_2 >= UpgradeManager.MAX_LEVEL) then
                            local mK_1 = UpgradeManager.GetModifiedCost(iJ, mR, mJ_2)
                            if mK_1 > 0 and Cash.Value - mK_1 >= mI then
                                pcall(function()
                                    UpgradeRequest:FireServer(mR)
                                end)
                                task.wait(0.3)
                            end
                        end
                    end
                end
            end
        end
        task.wait(i6("UpgradeDelay", 3))
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if ir("AutoBasementUpgrade") then
            local mU = ix("BasementUpgradeList")
            local mV = ir("BasementUpgradeAny")
            local mW = i6("BasementCashReserve", 0)
            for k, v in il do
                if not not (mV or mU[v]) then
                    local mT = BasementUpgrades:FindFirstChild(ii[v])
                    local mX_1 = UpgradeLevels:FindFirstChild(v .. "Level")
                    local mS = h8()
                    if not not (mT and mX_1 and mS) then
                        local mY_1 = BasementUpgradeManager.GetCost(iJ, v, mX_1.Value)
                        if mY_1 and mY_1 > 0 and Cash.Value - mY_1 >= mW then
                            pcall(function()
                                firetouchinterest(mS, mT, 0)
                                task.wait(0.1)
                                firetouchinterest(mS, mT, 1)
                            end)
                            task.wait(0.3)
                        end
                    end
                end
            end
        end
        task.wait(i6("BasementDelay", 3))
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if ir("AutoBuyEquipment") then
            local m6 = ix("BuyEquipmentList")
            local m7 = ir("BuyAnyEquipment")
            local m8 = i6("EquipmentCashReserve", 0)
            for k, v in h6 do
                local nh = v
                if not not (m7 or m6[nh]) then
                    if not ia[nh].Value then
                        local m9_1 = ShopConfig.GetModifiedCost(iJ, nh)
                        if m9_1 > 0 and Cash.Value - m9_1 >= m8 then
                            pcall(function()
                                BuyEquipment:FireServer(nh)
                            end)
                            task.wait(0.3)
                        end
                    end
                end
            end
        end
        task.wait(i6("EquipmentDelay", 5))
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        local ni = ir("AutoRebirth") and iD()
        if ni then
            pcall(function()
                RebirthEvent:FireServer()
            end)
            task.wait(3)
        end
        task.wait(i6("RebirthDelay", 10))
    end
end)
Library:Notify("Garden Cleaner Evolution loaded")
