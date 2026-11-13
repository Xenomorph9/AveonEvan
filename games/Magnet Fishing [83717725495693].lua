local Toggles, UnsnagTap, Dn_9, Dn_16, Dn_18, Dn_20, Dn_29, Dn_32
Toggles = nil
UnsnagTap = nil
local sJ
local rJ
local EquipMagnet
local s7
local r7
local sP
local rP
local BuyMagnet
local onOnClientEvent
local rw
local rV
local EquipRod
local rC
local onJoinDiscordForKeylessScripts
local r0
local sI
local rI
local sp
local sO
local FishingRods
local sv
local tc
local ReleaseCast
local sc
local CancelPull
local rU
local sB
local Cast
local rB
local s_
local r_
local sH
local Options
local LockPicks
local r5
local rN
local su
local tb
local sb
local ru
local sT
local rT
local sA
local rA
local Sell
local th
local rZ
local rG
local s4
local st
local ta
local sa
local sS
local rS
local tg
local BeginCharge
local sg
local ReelResult
local rY
local BuyRod
local ItemCatalog
local sm
local s3
local r3
local Magnets
local PickContact
local r9
local sR
local rR
local tf
local ry
local sf
local sX
local rX
local rE
local SellAll
local r2
local BuyUpgrade
local sr
local s8
local r8
local PullState
local rQ
local Drop
local se
local rx
local Library
local FishingConfig
local function onCharacterAdded(i5)
    task.wait(0.25)
    if Library.Unloaded then
        return
    end
    if Toggles.RemoveFishingAnims and Toggles.RemoveFishingAnims.Value then
        sI(i5)
        tf()
    end
end
local function worker()
    while not Library.Unloaded do
        task.wait(0.25)
        pcall(sJ)
        local zZ = os.clock()
        if zZ - r8.lastShopAt >= rE then
            r8.lastShopAt = zZ
            pcall(r_)
            pcall(s3)
            pcall(r7)
        end
    end
end
local function autoPerfectFishingLoop()
    while not Library.Unloaded do
        task.wait(0.05)
        if Toggles.AutoPerfectFishing and Toggles.AutoPerfectFishing.Value then
            pcall(sT)
        end
    end
end
local function fn740()
    ry(Toggles.RemoveFishingAnims.Value)
end
local function removeFishingAnimsLoop()
    while not Library.Unloaded do
        task.wait(0.2)
        if Toggles.RemoveFishingAnims and Toggles.RemoveFishingAnims.Value then
            if not r8.animHooks then
                rw()
            end
            pcall(tf)
        end
    end
end
ru = nil
ReleaseCast = nil
rw = nil
rx = nil
ry = nil
BeginCharge = nil
rA = nil
rB = nil
rC = nil
FishingConfig = nil
rE = nil
ItemCatalog = nil
rG = nil
local rH
rI = nil
rJ = nil
Magnets = nil
rN = nil
FishingRods = nil
rP = nil
rQ = nil
rR = nil
rS = nil
rT = nil
rU = nil
rV = nil
Library = nil
rX = nil
rY = nil
rZ = nil
r_ = nil
r0 = nil
r2 = nil
r3 = nil
r5 = nil
r7 = nil
r8 = nil
r9 = nil
sa = nil
sb = nil
sc = nil
se = nil
sf = nil
sg = nil
local rM, SaveManager, r4, sd
Sell = nil
Toggles = nil
SellAll = nil
sm = nil
Options = nil
sp = nil
EquipMagnet = nil
sr = nil
st = nil
su = nil
sv = nil
BuyMagnet = nil
sA = nil
sB = nil
EquipRod = nil
BuyRod = nil
sH = nil
sI = nil
sJ = nil
BuyUpgrade = nil
sO = nil
sP = nil
PullState = nil
sR = nil
sS = nil
sT = nil
CancelPull = nil
sX = nil
ReelResult = nil
s_ = nil
onJoinDiscordForKeylessScripts = nil
UnsnagTap = nil
s3 = nil
s4 = nil
local PlayerGui, sj, sn, ss, sx, sy, sz, sD, sE, sG, sL, sN, sV, sZ, s2
LockPicks = nil
s7 = nil
s8 = nil
PickContact = nil
ta = nil
tb = nil
tc = nil
onOnClientEvent = nil
Drop = nil
tf = nil
tg = nil
th = nil
Cast = nil
local s6
s6 = nil
if not game:IsLoaded() then
    game.Loaded:Wait()
end
local function Dn_14(c)
    return c
end
local Dn_1 = cloneref or Dn_14
local Dn_1_9
Dn_16, ta, s6, s2, sZ, sV, sS, sL, sG, sD, sx, sr, sm, PlayerGui = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Dn_27 = 59
repeat
    local Dn_14_1 = (Dn_27 * 1 + 5) % 9 + 1
    if Dn_14_1 <= 5 then
        if Dn_14_1 <= 3 then
            if Dn_14_1 <= 2 then
                if Dn_14_1 <= 1 then
                    local Dn_4_1 = (vector.create((Dn_27 * 1 + 4) % 11 + 1, (Dn_27 * 3 + 2) % 13 + 1, (Dn_27 * 15 + 2) % 17 + 1))
                    Dn_29 = (vector.create((Dn_27 * 5 + 6) % 11 + 1, (Dn_27 * 3 + 6) % 13 + 1, (Dn_27 * 5 + 8) % 17 + 1))
                    Dn_18 = (vector.create((Dn_27 * 5 + 9) % 11 + 1, (Dn_27 * 11 + 5) % 13 + 1, (Dn_27 * 14 + 14) % 17 + 1))
                    if vector.dot(vector.cross(Dn_4_1, Dn_29), Dn_18) == vector.dot(vector.cross(Dn_29, Dn_18), Dn_4_1) then
                        PlayerGui = sm:WaitForChild("PlayerGui")
                    else
                        sm = PlayerGui:WaitForChild("PlayerGui")
                    end
                    Dn_27 = (Dn_27 + 55) % 72
                else
                    if Dn_27 * 13440295 + 11 + 2 <= Dn_27 * 13440295 + 11 + 2 + 2 then
                        Dn_16 = Dn_1
                    else
                        Dn_1 = Dn_16
                    end
                    Dn_27 = (Dn_27 + 37) % 72
                end
            else
                local Dn_4_2 = (vector.create((Dn_27 * 2 + 1) % 11 + 1, (Dn_27 * 6 + 2) % 13 + 1, (Dn_27 * 9 + 13) % 17 + 1))
                Dn_29 = (vector.create((Dn_27 * 2 + 4) % 11 + 1, (Dn_27 * 8 + 1) % 13 + 1, (Dn_27 * 8 + 14) % 17 + 1))
                local Fm = vector.dot(Dn_4_2, Dn_29)
                if Fm * Fm <= vector.dot(Dn_4_2, Dn_4_2) * vector.dot(Dn_29, Dn_29) then
                    ta = Dn_16(game:GetService("CoreGui"))
                else
                    Dn_16 = ta(game:GetService("CoreGui"))
                end
                Dn_27 = (Dn_27 + 37) % 72
            end
        elseif Dn_14_1 <= 4 then
            local Dn_4_3 = (vector.create((Dn_27 * 3 + 7) % 11 + 1, (Dn_27 * 7 + 8) % 13 + 1, (Dn_27 * 10 + 10) % 17 + 1))
            local F1 = vector.floor(Dn_4_3) + vector.ceil(Dn_4_3 * -1)
            if vector.dot(F1, F1) == 0 then
                s6 = Dn_16(game:GetService("GuiService"))
                s2 = Dn_16(game:GetService("HttpService"))
            else
                s2 = s6(game:GetService("GuiService"))
                Dn_16 = s6(game:GetService("HttpService"))
            end
            Dn_27 = (Dn_27 + 46) % 72
        else
            if (not Dn_16 and not sm and (not sm or sx) and (not sx and not Dn_16 and (not Dn_16 and not sx)) or (not sm or not sm or not sx and Dn_16) and (not sm and sx and (not Dn_16 and not Dn_16)) or (not Dn_16 or Dn_16) and (Dn_16 and sm) and ((sm or Dn_16) and (Dn_16 and sx)) and (sx and not sx and (sm or sm) and (sx and sm and (not sx and Dn_16)))) and not (not Dn_16 and not sm and (not sm or sx) and (not sx and not Dn_16 and (not Dn_16 and not sx)) or (not sm or not sm or not sx and Dn_16) and (not sm and sx and (not Dn_16 and not Dn_16)) or (not Dn_16 or Dn_16) and (Dn_16 and sm) and ((sm or Dn_16) and (Dn_16 and sx)) and (sx and not sx and (sm or sm) and (sx and sm and (not sx and Dn_16)))) then
                Dn_16 = sZ(game:GetService("Lighting"))
            else
                sZ = Dn_16(game:GetService("Lighting"))
            end
            Dn_27 = (Dn_27 + 46) % 72
        end
    elseif Dn_14_1 <= 7 then
        if Dn_14_1 <= 6 then
            if (not ta and s6 and (not sV or not s6) and (sm and sV or sV and not sV) or (sZ or Dn_16 or (s6 or sV)) and (ta or not s6 or (Dn_16 or not sZ))) and not (not ta and s6 and (not sV or not s6) and (sm and sV or sV and not sV) or (sZ or Dn_16 or (s6 or sV)) and (ta or not s6 or (Dn_16 or not sZ))) then
                Dn_16 = sV(game:GetService("Players"))
            else
                sV = Dn_16(game:GetService("Players"))
            end
            Dn_27 = (Dn_27 + 28) % 72
        else
            local EB = bit32.rrotate(bit32.bxor(bit32.lrotate(Dn_27, 29), string.byte(tostring(sr))), 13)
            if bit32.bxor(bit32.lrotate(bit32.bxor(EB, 3195557160), 20), 1384900485) == bit32.lrotate(EB, 20) then
                sS = Dn_16(game:GetService("ReplicatedStorage"))
                sL = Dn_16(game:GetService("RunService"))
                sG = Dn_16(game:GetService("TeleportService"))
                sD = Dn_16(game:GetService("UserInputService"))
                sx = Dn_16(game:GetService("VirtualUser"))
            else
                sD = sS(game:GetService("ReplicatedStorage"))
                Dn_16 = sS(game:GetService("RunService"))
                sL = sS(game:GetService("TeleportService"))
                sx = sS(game:GetService("UserInputService"))
                sG = sS(game:GetService("VirtualUser"))
            end
            Dn_27 = (Dn_27 + 1) % 72
        end
    elseif Dn_14_1 <= 8 then
        local Dn_14_2 = { "nqgrbnl", "ncsxnfz", "zvxppk", "hmk", "ldxupdzx", "gglauu", "kqogzkl", "gzphibfi", "zvear" }
        local EA = Dn_27
        local Dn_4_4 = Dn_14_2[EA % 9 + 1]
        if Dn_4_4:len() <= Dn_4_4:reverse():rep(EA % 3 + 2):len() then
            sr = Dn_16(game:GetService("Workspace"))
        else
            Dn_16 = sr(game:GetService("Workspace"))
        end
        Dn_27 = (Dn_27 + 64) % 72
    else
        if (not Dn_27 or not Dn_27 or not Dn_27 and Dn_27) and (sD or Dn_27 or not Dn_27 and not sD) and ((Dn_27 and not sD or (Dn_27 or sD)) and (sD or sD or (not Dn_27 or not Dn_27))) and (Dn_27 and not Dn_27 and (Dn_27 or sD) and ((sD or Dn_27) and (not sD or Dn_27)) or (Dn_27 or sD or (not Dn_27 or not sD)) and (sD and not sD or (sD or sD))) or not ((not Dn_27 or not Dn_27 or not Dn_27 and Dn_27) and (sD or Dn_27 or not Dn_27 and not sD) and ((Dn_27 and not sD or (Dn_27 or sD)) and (sD or sD or (not Dn_27 or not Dn_27))) and (Dn_27 and not Dn_27 and (Dn_27 or sD) and ((sD or Dn_27) and (not sD or Dn_27)) or (Dn_27 or sD or (not Dn_27 or not sD)) and (sD and not sD or (sD or sD)))) then
            sm = sV.LocalPlayer
        else
            sV = sm.LocalPlayer
        end
        Dn_27 = (Dn_27 + 46) % 72
    end
until (Dn_27 * 65 + 41) % 72 == 60
if setthreadidentity then
    setthreadidentity(8)
end
sb = function()
    return ta
end
local Dn_14_3 = getgenv and getgenv()
rU = Dn_14_3 or nil
rM = rU and rU.Ouroboros or nil
if rU then
    rU.gethui = sb
    local Dn_1_3 = rM or {}
    rH, Dn_16 = nil, nil
    local Dn_27_1 = 3
    repeat
        local Dn_14_6 = (Dn_27_1 * 1 + 1) % 3 + 1
        if Dn_14_6 <= 2 then
            if Dn_14_6 <= 1 then
                local Fn = bit32.rrotate(bit32.bxor(bit32.lrotate(Dn_27_1, 31), string.byte(tostring(rH))), 1)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Fn, 2623203379), 25182185), (bit32.bxor(bit32.band(Fn, 1671763916), 1696085874))), 25182185), 1696085874) ~= Fn then
                    rH = Dn_16
                else
                    Dn_16 = rH
                end
                Dn_27_1 = (Dn_27_1 + 19) % 24
            else
                local Dn_14_7 = (vector.create((Dn_27_1 * 5 + 4) % 11 + 1, (Dn_27_1 * 9 + 9) % 13 + 1, (Dn_27_1 * 1 + 1) % 17 + 1))
                local Dn_4_5 = (vector.create((Dn_27_1 * 3 + 5) % 11 + 1, (Dn_27_1 * 10 + 13) % 13 + 1, (Dn_27_1 * 7 + 2) % 17 + 1))
                local EU = vector.cross(Dn_14_7, Dn_4_5)
                local EV = vector.dot(Dn_14_7, Dn_4_5)
                if vector.dot(EU, EU) + EV * EV == vector.dot(Dn_14_7, Dn_14_7) * vector.dot(Dn_4_5, Dn_4_5) + 4 then
                    Dn_1_3 = rM
                else
                    rM = Dn_1_3
                end
                Dn_27_1 = (Dn_27_1 + 7) % 24
            end
        else
            if Dn_27_1 * 23463017 + 13 + 2 >= Dn_27_1 * 23463017 + 13 + 2 + 2 then
                rH.Ouroboros = rU
                rM = rU.MagnetFishing
            else
                rU.Ouroboros = rM
                rH = rM.MagnetFishing
            end
            Dn_27_1 = (Dn_27_1 + 19) % 24
        end
    until (Dn_27_1 * 5 + 0) % 24 == 0
    if Dn_16 then
        Dn_16 = rH.Library
    end
    if Dn_16 then
        Dn_16 = rH.Library.Unload
    end
    if Dn_16 then
        pcall(function()
            rH.Library:Unload()
        end)
    end
    if rU.__OuroborosMagnetFishingLib and rU.__OuroborosMagnetFishingLib.Unload then
        pcall(function()
            rU.__OuroborosMagnetFishingLib:Unload()
        end)
    end
end
pcall(function()
    gethui = sb
end)
for k, v in { ta, PlayerGui } do
    for k, v2 in { "Obsidian", "ObsidianLoading" } do
        local sW = v:FindFirstChild(v2)
        while sW do
            pcall(function()
                sW:Destroy()
            end)
            sW = v:FindFirstChild(v2)
        end
    end
end
sH, sE, sy, ss, sn, sj, sd, r0, rV, rP, rN, rI, rE, rB, rx, ru, tg, tb, s7, s4, sX, sz, st, Options, Toggles, sf, r8, Library = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local sM = "Magnet Fishing"
sH = "https://discord.gg/ehKVq7pf7v"
sE = "https://rscripts.net/@Ouroboros"
sy = "https://ouroboros-hub-rbx.web.app/"
ss = "#7fd47f"
sn = "#6ec1ff"
sj = "#e8a34d"
sd = "#8b93a3"
r0 = 1.6
if (not s7 and rI and false or (s7 or false) and (false and s7) or ((rI or s7) and (not s7 and rI) or rI and not s7 and (false and s7))) and not (not s7 and rI and false or (s7 or false) and (false and s7) or ((rI or s7) and (not s7 and rI) or rI and not s7 and (false and s7))) then
    rN = 0.9
    rV = 1.5
    rP = 2.1
else
    rV = 0.9
    rP = 1.5
    rN = 2.1
end
rI = 0.3
rE = 0.75
rB = 0.5
rx = 25
ru = {
    "WoodenRod",
    "SturdyRod",
    "FiberglassRod",
    "CarbonRod",
    "SteelRod",
    "TitaniumRod",
    "MagnetiteRod",
    "DeepSeaRod",
    "AbyssalRod",
    "VolcanicRod",
    "StormRod",
    "VoidRod",
    "QuantumRod",
    "CelestialRod",
    "RealityRod"
}
tg = {
    WoodenRod = 0,
    SturdyRod = 250,
    FiberglassRod = 2600,
    CarbonRod = 6000,
    SteelRod = 20000,
    TitaniumRod = 100000,
    MagnetiteRod = 400000,
    DeepSeaRod = 3000000,
    AbyssalRod = 20000000,
    VolcanicRod = 200000000,
    StormRod = 1500000000,
    VoidRod = 25000000000,
    QuantumRod = 400000000000,
    CelestialRod = 3000000000000,
    RealityRod = 20000000000000
}
tb = { "RustyMagnet", "IronMagnet", "CobaltMagnet", "NeodymiumMagnet", "PlasmaMagnet", "OmegaMagnet" }
s7 = {
    RustyMagnet = 0,
    IronMagnet = 2000,
    CobaltMagnet = 350000,
    NeodymiumMagnet = 12000000,
    PlasmaMagnet = 8000000000,
    OmegaMagnet = 6000000000000
}
s4 = { "Luck", "Depth", "Value", "Storage" }
Dn_18 = { Luck = true, Depth = true, Value = true, Storage = true }
sX = 50
Dn_29 = { "Gold", "Diamond", "Ruby", "Rainbow", "Darkmatter" }
local Dn_4_6 = { "Big", "Huge", "Massive", "Giant", "Colossal" }
Dn_16 = {
    "Common",
    "Uncommon",
    "Rare",
    "Epic",
    "Legendary",
    "Mythic",
    "Titanic",
    "Ancient",
    "Prehistoric",
    "Mythical",
    "Magical",
    "Heroic",
    "Sci-Fi",
    "Galactic",
    "Planetary",
    "Stellar",
    "Cosmic",
    "Divine",
    "Exotic",
    "Void",
    "Secret",
    "???"
}
local Dn_27_2 = { "When Full", "Always" }
sz = { Dances = true, Skating = true }
st = {
    "_playAnim",
    "_playCatchAnimation",
    "_crankReelAnim",
    "_anim",
    "_spawnRipple",
    "_catchPopFX",
    "_emitCatchVFX",
    "_pushCatchToast",
    "_makeLine",
    "_attachLineToCharacter",
    "_setHookLine"
}
sf = {}
r8 = {
    lastCastAt = 0,
    lastShopAt = 0,
    lastSellAt = 0,
    lastDropAt = 0,
    reelBusy = false,
    attractLocked = false,
    castBusy = false,
    pullConn = nil,
    animHooks = nil,
    fishAnimIds = nil
}
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
if rU then
    rU.__OuroborosMagnetFishingLib = Library
end
rQ = function()
    local tZ
    tZ = sb()
    local function t_(ax)
        local tU = not ax
        local tY = if tU then 1 else 0
        local tW = 2726 * tY + 1798 * (1 - tY)
        local tX = 1223 * tY + 595 * (1 - tY)
        if not ((tW * 3837 + tX * 736 + tW * tX) % 16777213 == 14693688) then
            tU = not ax:IsA("ScreenGui")
        end
        if tU then
            return
        end
        ax.ResetOnSpawn = false
        ax.IgnoreGuiInset = true
        ax.DisplayOrder = math.max(ax.DisplayOrder, 1000)
        pcall(function()
            ax.ClipToDeviceSafeArea = false
        end)
        pcall(function()
            ax.ScreenInsets = Enum.ScreenInsets.None
        end)
        if ax.Parent ~= tZ then
            pcall(function()
                ax.Parent = tZ
            end)
        end
    end
    t_(Library.ScreenGui)
    if Library.ActiveLoading and Library.ActiveLoading.ScreenGui then
        t_(Library.ActiveLoading.ScreenGui)
    end
    for k, v in { "Obsidian", "ObsidianLoading" } do
        local t0_1 = tZ:FindFirstChild(v) or PlayerGui:FindFirstChild(v) or ta:FindFirstChild(v)
        if t0_1 then
            t_(t0_1)
        end
    end
end
rQ()
task.spawn(function()
    while Library and not Library.Unloaded do
        rQ()
        task.wait(1)
    end
end)
local Dn_14_9 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Options = Library.Options
Toggles = Library.Toggles
rY = function(aS, aT)
    return string.format('<font color="%s">%s</font>', aT, aS)
end
local function rK(aV, aW, aX)
    return string.format("<b>%s</b> %s %s", aV, '<font color="#5a6070">-</font>', rY(aW, aX))
end
th = function(a_, a0)
    if setclipboard then
        setclipboard(a_)
    elseif toclipboard then
        toclipboard(a_)
    end
    Library:Notify(a0)
end
onJoinDiscordForKeylessScripts = function()
    th(sH, "Copied Discord invite to clipboard")
end
sP = function()
    local Character = sm.Character
    local ud = Character and Character:FindFirstChildOfClass("Humanoid")
    return ud
end
sv = function()
    local Character = sm.Character
    local ug = Character and Character:FindFirstChild("HumanoidRootPart")
    return ug
end
r9 = nil
r2 = nil
rZ = nil
rS = nil
FishingRods = nil
Magnets = nil
ItemCatalog = nil
FishingConfig = nil
BeginCharge = nil
ReleaseCast = nil
Cast = nil
Drop = nil
PickContact = nil
LockPicks = nil
UnsnagTap = nil
ReelResult = nil
CancelPull = nil
PullState = nil
BuyUpgrade = nil
BuyRod = nil
EquipRod = nil
BuyMagnet = nil
EquipMagnet = nil
SellAll = nil
Sell = nil
sa = function()
    local un_1, un_2
    if BeginCharge then
        return true
    end
    local Packages = sS:FindFirstChild("Packages")
    local um = Packages and Packages:FindFirstChild("Knit")
    local um_1, um_2
    if not um then
        return false
    end
    um_1, un_1 = pcall(require, um)
    local uo = not um_1 or type(un_1) ~= "table"
    if uo then
        return false
    end
    r9 = un_1
    um_2, un_2 = pcall(function()
        return r9.GetController("DataController")
    end)
    if not um_2 or not un_2 then
        return false
    end
    r2 = un_2
    pcall(function()
        rZ = r9.GetController("FishingController")
    end)
    pcall(function()
        rS = r9.GetController("AnimationController")
    end)
    pcall(function()
        FishingRods = require(sS.Shared.FishingRods)
    end)
    pcall(function()
        Magnets = require(sS.Shared.Magnets)
    end)
    pcall(function()
        ItemCatalog = require(sS.Shared.ItemCatalog)
    end)
    pcall(function()
        FishingConfig = require(sS.Shared.FishingConfig)
    end)
    local Services = um:FindFirstChild("Services")
    local ul_2 = Services and Services:FindFirstChild("FishingService")
    local un_3 = Services
    if un_3 then
        un_3 = Services:FindFirstChild("GearService")
    end
    local ul_3 = Services
    local up_1 = un_3
    if ul_3 then
        ul_3 = Services:FindFirstChild("EconomyService")
    end
    local um_4 = ul_3
    if not (ul_2 and up_1 and um_4) then
        return false
    end
    local RF3 = ul_2:FindFirstChild("RF")
    local RE = ul_2:FindFirstChild("RE")
    local RF2 = up_1:FindFirstChild("RF")
    local RF = um_4:FindFirstChild("RF")
    if not (RF3 and RE and RF2 and RF) then
        return false
    end
    BeginCharge = RF3:FindFirstChild("BeginCharge")
    ReleaseCast = RF3:FindFirstChild("ReleaseCast")
    Cast = RF3:FindFirstChild("Cast")
    Drop = RF3:FindFirstChild("Drop")
    PickContact = RF3:FindFirstChild("PickContact")
    LockPicks = RF3:FindFirstChild("LockPicks")
    UnsnagTap = RF3:FindFirstChild("UnsnagTap")
    ReelResult = RF3:FindFirstChild("ReelResult")
    CancelPull = RF3:FindFirstChild("CancelPull")
    PullState = RE:FindFirstChild("PullState")
    BuyUpgrade = RF2:FindFirstChild("BuyUpgrade")
    BuyRod = RF2:FindFirstChild("BuyRod")
    EquipRod = RF2:FindFirstChild("EquipRod")
    BuyMagnet = RF2:FindFirstChild("BuyMagnet")
    EquipMagnet = RF2:FindFirstChild("EquipMagnet")
    SellAll = RF:FindFirstChild("SellAll")
    Sell = RF:FindFirstChild("Sell")
    return BeginCharge ~= nil and ReleaseCast ~= nil and PullState ~= nil
end
task.spawn(function()
    while true do
        local uy = not Library.Unloaded and not sa()
        if uy then
            task.wait(0.5)
            continue
        end
        break
    end
end)
tc = function()
    local uA = not r2
    local uA_1
    local uB = not sa() or uA
    local uB_1
    if uB then
        return nil
    end
    uA_1, uB_1 = pcall(function()
        return r2:GetPlayer()
    end)
    if uA_1 then
        return uB_1
    end
    return nil
end
sO = function()
    local uG = tc()
    return uG and uG.Public and uG.Public.Persistent and uG.Public.Persistent.Fishing
end
su = function()
    local attr = sm:GetAttribute("CashRaw")
    if type(attr) == "number" then
        return attr
    end
    local uJ_1 = tc()
    local uK = uJ_1 and uJ_1.Public and uJ_1.Public.Persistent and uJ_1.Public.Persistent.Cash
    local uK_1 = type(uK) == "number" and uK
    return uK_1 or 0
end
rR = function()
    return sm:GetAttribute("IsFishing") == true
end
rJ = function()
    return sm:GetAttribute("InventoryFull") == true
end
rC = function(cF, ...)
    local uP
    uP = nil
    local uR_1
    local uQ_1
    if not cF then
        return nil
    end
    uP = table.pack(...)
    uQ_1, uR_1 = pcall(function()
        return cF:InvokeServer(table.unpack(uP, 1, uP.n))
    end)
    if uQ_1 then
        return uR_1
    end
    return nil
end
s_ = function(cM, cN)
    local uT = Options[cM]
    local uU = not uT or type(uT.Value) ~= "table"
    if uU then
        return false
    end
    return uT.Value[cN] == true
end
sB = function(cS)
    local uZ = Options[cS]
    local u_ = not uZ or type(uZ.Value) ~= "table"
    if u_ then
        return true
    end
    for k, v in uZ.Value do
        if v then
            return false
        end
    end
    return true
end
rX = function(cZ)
    local u7 = cZ == nil
    local u7_1
    local u8 = not ItemCatalog or u7
    local u8_1
    if u8 then
        return nil
    end
    u7_1, u8_1 = pcall(function()
        return ItemCatalog.RarityOf(cZ)
    end)
    if not u7_1 then
        return nil
    elseif type(u8_1) == "number" then
        local u7_2 = ItemCatalog.Rarities and ItemCatalog.Rarities[u8_1]
        local u9 = u7_2
        if u7_2 then
            u7_2 = u9.Name
        end
        return u7_2 or nil
    elseif type(u8_1) == "string" then
        return u8_1
    else
        return nil
    end
end
s8 = function(c8)
    local vh_2
    local vg_1, vg_3
    local vf_1, vf_3
    local ve_1, ve_5
    if not ItemCatalog then
        ve_1, vf_1, vg_1 = string.match(tostring(c8), "^([^|]+)|([^|]*)|(.*)$")
        if ve_1 then
            local vh_1 = tonumber(ve_1) or ve_1
            local vf_2 = vf_1 ~= "" and vf_1
            local vl = if vf_2 then 1 else 0
            local vj = 2680 * vl + 2638 * (1 - vl)
            local vk = 3263 * vl + 783 * (1 - vl)
            if not ((vj * 1141 + vk * 4054 + vj * vk) % 16777213 == 8253709) then
                vf_2 = nil
            end
            return vh_1, vf_2, vg_1 ~= "" and vg_1 or nil
        end
        local ve_4 = tonumber(c8) or c8
        return ve_4, nil, nil
    end
    ve_5, vh_2, vg_3, vf_3 = pcall(function()
        return ItemCatalog.ParseInventoryKey(c8)
    end)
    if ve_5 then
        return vh_2, vg_3, vf_3
    end
    return nil, nil, nil
end
sg = function()
    local vm = tc()
    return vm and vm.Private and vm.Private.Persistent and vm.Private.Persistent.Favourites or {}
end
rT = function(dp)
    local vs_1
    local vr_1
    local vq = sg()
    local vq_1
    if vq[dp] then
        return true
    end
    vs_1, vq_1, vr_1 = s8(dp)
    local vt = vq_1 and vq_1 ~= "-" and s_("KeepVariants", vq_1)
    if vt then
        return true
    end
    local vq_2 = vr_1 and vr_1 ~= "-" and s_("KeepSizes", vr_1)
    if vq_2 then
        return true
    end
    local vq_3 = rX(vs_1)
    local vr_2 = vq_3 and s_("KeepRarities", vq_3)
    if vr_2 then
        return true
    end
    return false
end
sR = function()
    local vy = sO()
    local vy_1 = vy and vy.Inventory
    if type(vy_1) ~= "table" then
        return false
    end
    for k, v in vy_1 do
        local vy_2 = type(v) == "number" and v > 0 and not rT(k)
        if vy_2 then
            return true
        end
    end
    return false
end
r3 = function()
    if not sa() then
        return false
    end
    local vK = os.clock()
    if vK - r8.lastSellAt < rB then
        return false
    end
    r8.lastSellAt = vK
    local vK_1 = sB("KeepVariants") and sB("KeepSizes") and sB("KeepRarities")
    if vK_1 then
        local vK_2 = rC(SellAll)
        local vL_1 = type(vK_2) == "table" and vK_2.Success == true
        return vL_1 or vK_2 == true
    end
    local vK_3 = sO()
    local vL_2 = vK_3 and vK_3.Inventory
    if type(vL_2) ~= "table" then
        return false
    end
    local vL_3 = false
    for k, v in vL_2 do
        local vK_5 = type(v) == "number" and v > 0 and not rT(k)
        if vK_5 then
            local vK_6 = rC(Sell, k, v)
            local vM_2 = type(vK_6) == "table" and vK_6.Success == true
            if vM_2 or vK_6 == true then
                vL_3 = true
            end
            task.wait(0.05)
        end
    end
    return vL_3
end
sc = function()
    local v5_1, v5_2
    local v3_4
    local v2_1, v2_3, v2_5
    local v4_2, v4_4, v4_8, v4_10
    if not sa() then
        return false
    end
    local v1 = rZ and type(rZ._onBridge) == "function"
    local v1_1, v1_4, v1_5, v1_6, v1_7
    if v1 then
        v1_1, v2_1 = pcall(function()
            return rZ:_onBridge()
        end)
        if v1_1 and v2_1 then
            return true
        end
        local v1_2 = sv()
        if not v1_5 then
            return false
        end
        local v2_2 = math.huge
        local v3_2 = nil
        for i, child in sr:GetChildren() do
            local wg = child
            local v4_1 = wg.Name == "Bridge" and wg:IsA("Model")
            if v4_1 then
                v4_2, v5_1 = pcall(function()
                    return wg:GetBoundingBox()
                end)
                if v4_2 and v5_1 then
                    local v4_3 = Vector3.new(-v5_1.Position.X, 0, -v5_1.Position.Z)
                    if v4_3.Magnitude > 0.1 then
                        v4_4 = v4_3.Unit * 4
                    else
                        v4_4 = Vector3.zero
                    end
                    local v6_2 = Vector3.new(v5_1.Position.X, v5_1.Position.Y + 4, v5_1.Position.Z) + v4_4
                    local Magnitude = (v1_2.Position - v6_2).Magnitude
                    if Magnitude < v2_2 then
                        v2_2 = Magnitude
                        v3_2 = v6_2
                    end
                end
            end
        end
        if not v3_4 then
            return false
        end
        v1_2.CFrame = CFrame.new(v3_2)
        task.wait(0.15)
        if v1_6 then
            v1_4, v2_3 = pcall(function()
                return rZ:_onBridge()
            end)
            return v1_4 and v2_3 == true
        end
        return true
    end
    v1_5 = sv()
    if not v1_5 then
        return false
    end
    local v2_4 = math.huge
    v3_4 = nil
    for i, child in sr:GetChildren() do
        local wg = child
        local v4_7 = wg.Name == "Bridge" and wg:IsA("Model")
        if v4_7 then
            v4_8, v5_2 = pcall(function()
                return wg:GetBoundingBox()
            end)
            if v4_8 and v5_2 then
                local v4_9 = Vector3.new(-v5_2.Position.X, 0, -v5_2.Position.Z)
                if v4_9.Magnitude > 0.1 then
                    v4_10 = v4_9.Unit * 4
                else
                    v4_10 = Vector3.zero
                end
                local v6_4 = Vector3.new(v5_2.Position.X, v5_2.Position.Y + 4, v5_2.Position.Z) + v4_10
                local Magnitude = (v1_5.Position - v6_4).Magnitude
                if Magnitude < v2_4 then
                    v2_4 = Magnitude
                    v3_4 = v6_4
                end
            end
        end
    end
    if not v3_4 then
        return false
    end
    v1_5.CFrame = CFrame.new(v3_4)
    task.wait(0.15)
    v1_6 = rZ and type(rZ._onBridge) == "function"
    if v1_6 then
        v1_7, v2_5 = pcall(function()
            return rZ:_onBridge()
        end)
        return v1_7 and v2_5 == true
    end
    return true
end
se = function()
    local wl_1, wl_4
    local wk = rZ and type(rZ._defaultCastPos) == "function"
    local wk_1
    if wk then
        wk_1, wl_1 = pcall(function()
            return rZ:_defaultCastPos()
        end)
        local wm_1 = wk_1 and typeof(wl_1) == "Vector3"
        if wm_1 then
            return wl_1
        end
        local wk_2 = sv()
        if not wk_2 then
            return Vector3.zero
        end
        local wl_2 = sr:FindFirstChild("Map") and sr.Map:FindFirstChild("WaterArea")
        local wm_2 = wl_2
        if wl_4 then
            local wn_1 = wm_2:IsA("BasePart") and wm_2.Position
            local wo_1 = wn_1 or wm_2:GetPivot().Position
            wl_2 = wo_1
        end
        local wm_3 = wl_2 or Vector3.zero
        local wm_4 = (wm_3 - wk_2.Position) * Vector3.new(1, 0, 1)
        if wm_4.Magnitude > rx then
            wm_4 = wm_4.Unit * rx
        end
        return wk_2.Position + wm_4 + Vector3.new(0, wm_3.Y - wk_2.Position.Y, 0)
    end
    local wk_3 = sv()
    if not wk_3 then
        return Vector3.zero
    end
    wl_4 = sr:FindFirstChild("Map") and sr.Map:FindFirstChild("WaterArea")
    local wm_5 = wl_4
    if wl_4 then
        local wn_2 = wm_5:IsA("BasePart") and wm_5.Position
        local wo_2 = wn_2 or wm_5:GetPivot().Position
        wl_4 = wo_2
    end
    local wm_6 = wl_4 or Vector3.zero
    local wm_7 = (wm_6 - wk_3.Position) * Vector3.new(1, 0, 1)
    if wm_7.Magnitude > rx then
        wm_7 = wm_7.Unit * rx
    end
    return wk_3.Position + wm_7 + Vector3.new(0, wm_6.Y - wk_3.Position.Y, 0)
end
sA = function()
    local Character = sm.Character
    local ww_2, ww_4, ww_6
    local wx = sP()
    local wz = not Character or not wx
    local wz_1, wz_2, wz_3
    if wz then
        return false
    end
    local Tool = Character:FindFirstChildOfClass("Tool")
    if Tool then
        local ww_1 = FishingRods and type(FishingRods.IsRodTool) == "function"
        if ww_1 then
            ww_2, wz_1 = pcall(FishingRods.IsRodTool, Tool)
            if ww_2 and wz_1 then
                return true
            end
            for i, child in sm.Backpack:GetChildren() do
                if child:IsA("Tool") then
                    local ww_3 = FishingRods
                    local wy_3 = true
                    if ww_3 then
                        ww_3 = type(FishingRods.IsRodTool) == "function"
                    end
                    if ww_3 then
                        ww_4, wz_2 = pcall(FishingRods.IsRodTool, child)
                        wy_3 = ww_4 and wz_2 == true
                    end
                    if wy_3 then
                        wx:EquipTool(child)
                        task.wait(0.1)
                        return true
                    end
                end
            end
            return false
        end
        return true
    end
    for i, child in sm.Backpack:GetChildren() do
        if child:IsA("Tool") then
            local ww_5 = FishingRods
            local wy_4 = true
            if ww_5 then
                ww_5 = type(FishingRods.IsRodTool) == "function"
            end
            if ww_5 then
                ww_6, wz_3 = pcall(FishingRods.IsRodTool, child)
                wy_4 = ww_6 and wz_3 == true
            end
            if wy_4 then
                wx:EquipTool(child)
                task.wait(0.1)
                return true
            end
        end
    end
    return false
end
onOnClientEvent = function(e7, e8)
    if Library.Unloaded then
        return
    end
    if not (Toggles.AutoPerfectFishing and Toggles.AutoPerfectFishing.Value) then
        return
    end
    if e7 == "Descending" or e7 == "DropStage" or e7 == "AutoDrop" then
        local wU_3 = os.clock()
        if wU_3 - r8.lastDropAt >= rI then
            r8.lastDropAt = wU_3
            rC(Drop)
        end
    elseif e7 == "Snagged" then
        local wU_4 = type(e8) == "table" and type(e8.Signals) == "table"
        if wU_4 then
            if r8.attractLocked then
                return
            end
            local wU_5 = tonumber(e8.Capacity) or 1
            local wV_1 = {}
            for k, v in e8.Signals do
                local wU_6 = type(v) == "table" and v.Index ~= nil
                if wU_6 then
                    wV_1[#wV_1 + 1] = v
                end
            end
            table.sort(wV_1, function(fu, fv)
                local wR = tonumber(fu.RarityIndex) or 0
                local wS = tonumber(fv.RarityIndex) or 0
                return wR > wS
            end)
            local wU_7 = math.min(wU_5, #wV_1)
            local w5 = 1
            while w5 <= wU_7 do
                local w6 = w5
                rC(PickContact, wV_1[w6].Index)
                w5 += 1
            end
            r8.attractLocked = true
            task.defer(function()
                rC(LockPicks)
            end)
        else
            local xa = 1
            while xa <= 3 do
                rC(UnsnagTap)
                xa += 1
            end
        end
    elseif e7 == "ContactDrift" then
        local wU_8 = type(e8) == "table" and e8.Index ~= nil and not r8.attractLocked
        if wU_8 then
            rC(PickContact, e8.Index)
        end
    else
        local wU_9 = e7 == "ContactLatchStart"
        local wV_2 = e7 == "ItemLatched"
        local xf = if wV_2 then 1 else 0
        local xd = 918 * xf + 3803 * (1 - xf)
        local xe = 3853 * xf + 2164 * (1 - xf)
        if not ((xd * 363 + xe * 4045 + xd * xe) % 16777213 == 2678460) then
            wV_2 = wU_9
        end
        if wV_2 then
            rC(LockPicks)
        elseif e7 == "ReelStart" then
            if r8.reelBusy then
                return
            end
            r8.reelBusy = true
            task.spawn(function()
                task.wait(rN)
                if Library.Unloaded then
                    return
                end
                if Toggles.AutoPerfectFishing and Toggles.AutoPerfectFishing.Value then
                    rC(ReelResult, true)
                end
                r8.reelBusy = false
            end)
        else
            if e7 == "Reveal" or e7 == "Lost" or e7 == "Cancelled" then
                r8.attractLocked = false
                r8.reelBusy = false
            end
        end
    end
end
sp = function()
    if r8.pullConn then
        r8.pullConn:Disconnect()
        r8.pullConn = nil
    end
    local xg = not PullState
    local xh = not sa() or xg
    if xh then
        return
    end
    r8.pullConn = PullState.OnClientEvent:Connect(onOnClientEvent)
    sf.PullState = r8.pullConn
end
task.spawn(function()
    while not Library.Unloaded do
        if sa() then
            sp()
            break
        end
        task.wait(0.5)
    end
end)
rG = function(fM)
    if type(fM) ~= "string" then
        return nil
    end
    return string.match(fM, "%d+")
end
rA = function()
    local xw
    if r8.fishAnimIds then
        return r8.fishAnimIds
    end
    local xx = {}
    local Assets = sS:FindFirstChild("Assets")
    local xz = Assets and Assets:FindFirstChild("Animations")
    if xz then
        xw = function(fU, fV)
            if fV then
                return
            end
            for i, child in fU:GetChildren() do
                if child:IsA("Animation") then
                    local xo = rG(child.AnimationId)
                    if xo then
                        xx[xo] = true
                    end
                elseif child:IsA("Folder") then
                    xw(child, sz[child.Name] == true)
                end
            end
        end
        xw(xz, false)
    end
    r8.fishAnimIds = xx
    return xx
end
r4 = function(f5)
    if not f5 then
        return false
    end
    local xE = f5.Animation and rG(f5.Animation.AnimationId)
    local xE_1 = rA()
    if xE and xE_1[xE] then
        return true
    end
    local lower = string.lower
    local xF_1 = f5.Name
    local xN = if xF_1 then 1 else 0
    local xL = 3453 * xN + 2698 * (1 - xN)
    local xM = 468 * xN + 1186 * (1 - xN)
    if not ((xL * 3374 + xM * 2051 + xL * xM) % 16777213 == 14226294) then
        xF_1 = ""
    end
    local xG_1 = lower(tostring(xF_1))
    local xE_3 = xG_1:find("throw", 1, true) or xG_1:find("hold", 1, true)
    local xK = if xE_3 then 1 else 0
    local xI = 1675 * xK + 3129 * (1 - xK)
    local xJ = 2060 * xK + 1235 * (1 - xK)
    if not ((xI * 2757 + xJ * 1213 + xI * xJ) % 16777213 == 10567255) then
        xE_3 = xG_1:find("cast", 1, true)
    end
    if not xE_3 then
        xE_3 = xG_1:find("reel", 1, true)
    end
    if not xE_3 then
        xE_3 = xG_1:find("fish", 1, true)
    end
    if not xE_3 then
        xE_3 = xG_1:find("crank", 1, true)
    end
    if xE_3 then
        return true
    end
    return false
end
tf = function()
    local xO = rZ and type(rZ._stopAnims) == "function"
    if xO then
        pcall(function()
            rZ:_stopAnims()
        end)
    end
    local xO_1 = rS and type(rS.StopAllAnimations) == "function"
    if xO_1 then
        pcall(function()
            rS:StopAllAnimations()
        end)
    end
    local xO_2 = sP()
    local xP = xO_2 and xO_2:FindFirstChildOfClass("Animator")
    if not xP then
        return
    end
    for k, v in xP:GetPlayingAnimationTracks() do
        local xZ = v
        if r4(xZ) then
            pcall(function()
                xZ:Stop(0)
            end)
        end
    end
end
r5 = function()
    if not r8.animHooks or not rZ then
        r8.animHooks = nil
        return
    end
    for k, v in r8.animHooks do
        local x5 = k
        local x7 = v
        pcall(function()
            rZ[x5] = x7
        end)
    end
    r8.animHooks = nil
end
rw = function()
    local x8 = not rZ
    local x9 = not sa() or x8
    if x9 then
        return false
    elseif r8.animHooks then
        return true
    else
        local x8_1 = {}
        local function x9_1()
        end
        for k, v in st do
            local ya = rZ[v]
            if type(ya) == "function" then
                x8_1[v] = ya
                rZ[v] = x9_1
            end
        end
        r8.animHooks = x8_1
        return true
    end
end
sI = function(gM)
    if sf.FishingAnimPlayed then
        sf.FishingAnimPlayed:Disconnect()
        sf.FishingAnimPlayed = nil
    end
    if not gM then
        return
    end
    local Humanoid = gM:FindFirstChildOfClass("Humanoid")
    local yo = Humanoid and Humanoid:FindFirstChildOfClass("Animator")
    if not yo then
        return
    end
    sf.FishingAnimPlayed = yo.AnimationPlayed:Connect(function(gR)
        if Library.Unloaded then
            return
        end
        if not (Toggles.RemoveFishingAnims and Toggles.RemoveFishingAnims.Value) then
            return
        end
        if r4(gR) then
            pcall(function()
                gR:Stop(0)
            end)
        end
    end)
end
ry = function(g0)
    if g0 then
        rA()
        rw()
        tf()
        sI(sm.Character)
    else
        r5()
    end
end
sT = function()
    if not (Toggles.AutoPerfectFishing and Toggles.AutoPerfectFishing.Value) then
        return
    end
    if not sa() then
        return
    end
    if r8.castBusy then
        return
    end
    local yM = if rR() then 1 else 0
    if yM == 1 then
        local yI_1 = os.clock()
        if yI_1 - r8.lastDropAt >= rI then
            r8.lastDropAt = yI_1
            rC(Drop)
        end
        return
    end
    if rJ() then
        if Toggles.AutoSell and Toggles.AutoSell.Value then
            r3()
        end
        return
    end
    local yI_3 = os.clock()
    if yI_3 - r8.lastCastAt < rP then
        return
    end
    if not sc() then
        return
    end
    if not sA() then
        return
    end
    r8.castBusy = true
    r8.lastCastAt = yI_3
    r8.attractLocked = false
    r8.reelBusy = false
    pcall(function()
        rC(BeginCharge)
        local yu = r0 * rV
        local yv = FishingConfig and FishingConfig.CastCharge and type(FishingConfig.CastCharge.CycleSeconds) == "number"
        if yv then
            yu = FishingConfig.CastCharge.CycleSeconds * rV
        end
        task.wait(yu)
        local yu_1 = Library.Unloaded
        if not yu_1 then
            yu_1 = not (Toggles.AutoPerfectFishing and Toggles.AutoPerfectFishing.Value)
        end
        if yu_1 then
            return
        end
        if rR() then
            return
        end
        local yu_2 = se()
        local yv_2 = rC(ReleaseCast, yu_2, 1)
        local yw = yv_2 == nil
        if not yw then
            local yx_1 = type(yv_2) == "table" and yv_2.Success == false
            yw = yx_1
        end
        if yw then
            local yw_1 = type(yv_2) == "table" and yv_2.Reason
            local yw_2 = yw_1 or nil
            local yv_4 = yw_2 == nil
            local yx_3 = yw_2 == "BadPosition"
            local yE = if yx_3 then 1 else 0
            local yC = 4025 * yE + 3544 * (1 - yE)
            local yD = 3404 * yE + 1651 * (1 - yE)
            if not ((yC * 3603 + yD * 699 + yC * yD) % 16777213 == 13805358) then
                yx_3 = yv_4
            end
            if yx_3 then
                rC(Cast, yu_2)
            elseif yw_2 == "NotOnBridge" then
                sc()
            elseif yw_2 == "InventoryFull" then
                if Toggles.AutoSell and Toggles.AutoSell.Value then
                    r3()
                end
            end
        end
    end)
    r8.castBusy = false
end
sJ = function()
    if not (Toggles.AutoSell and Toggles.AutoSell.Value) then
        return
    end
    if (Options.SellMode and Options.SellMode.Value or "When Full") == "When Full" then
        local yV = if rJ() then 1 else 0
        if yV == 1 then
            r3()
        end
        return
    end
    if sR() then
        r3()
    end
end
r_ = function()
    local y2_1
    if not (Toggles.AutoBuyRod and Toggles.AutoBuyRod.Value) then
        return
    end
    if rR() then
        return
    end
    if not sa() then
        return
    end
    local yW_1 = sO()
    if not yW_1 then
        return
    end
    local yY = yW_1.Rods or {}
    local yY_1 = su()
    local yZ = -1
    local y_ = FishingRods
    local y0
    if y_ then
        y_ = FishingRods.Order
    end
    local y1 = y_ or ru
    local y1_2
    for k, v in y1 do
        local y__2 = tg[v]
        local y1_1 = FishingRods and type(FishingRods.Get) == "function"
        if y1_1 then
            y1_2, y2_1 = pcall(FishingRods.Get, v)
            local y3 = y1_2 and type(y2_1) == "table" and type(y2_1.Price) == "number"
            if y3 then
                y__2 = y2_1.Price
            end
        else
            if FishingRods and FishingRods.Rods and FishingRods.Rods[v] then
                y__2 = FishingRods.Rods[v].Price or y__2
            end
        end
        local y1_5 = tonumber(y__2) or 0
        local y1_6 = not yY[v]
        if y1_6 ~= false then
            y1_6 = y1_5 <= yY_1
        end
        if y1_6 then
            y1_6 = y1_5 >= yZ
        end
        if y1_6 then
            yZ = y1_5
            y0 = v
        end
    end
    if y0 then
        rC(BuyRod, y0)
        task.wait(0.1)
    end
    local yW_2 = sO()
    local yX_2 = yW_2 and yW_2.EquippedRod and not rR()
    if yX_2 then
        local EquippedRod = yW_2.EquippedRod
        local yY_2 = nil
        local yZ_1 = FishingRods
        local y__4 = -1
        if yZ_1 then
            yZ_1 = FishingRods.Order
        end
        local y0_1 = yZ_1 or ru
        for k, v in y0_1 do
            if yW_2.Rods and yW_2.Rods[v] and k >= y__4 then
                y__4 = k
                yY_2 = v
            end
        end
        if yY_2 and yY_2 ~= EquippedRod then
            rC(EquipRod, yY_2)
        end
    end
end
s3 = function()
    local zo_1
    if not (Toggles.AutoBuyMagnet and Toggles.AutoBuyMagnet.Value) then
        return
    end
    if rR() then
        return
    end
    local zt = if not sa() then 1 else 0
    if zt == 1 then
        return
    end
    local zh_1 = sO()
    if not zh_1 then
        return
    end
    local zi = {}
    local zj = zh_1.Magnets
    local zt_1 = if zj then 1 else 0
    local zr = 3319 * zt_1 + 781 * (1 - zt_1)
    local zs = 2894 * zt_1 + 3514 * (1 - zt_1)
    if not ((zr * 2187 + zs * 2013 + zr * zs) % 16777213 == 5912248) then
        zj = zi
    end
    local zi_1 = zj
    local zj_1 = su()
    local zk = -1
    local zl
    local zn = Magnets and Magnets.Order or tb
    local zn_2
    for k, v in zn do
        local zm_2 = s7[v]
        local zn_1 = Magnets and type(Magnets.Get) == "function"
        if zn_1 then
            zn_2, zo_1 = pcall(Magnets.Get, v)
            local zp = zn_2 and type(zo_1) == "table" and type(zo_1.Price) == "number"
            if zp then
                zm_2 = zo_1.Price
            end
        else
            if Magnets and Magnets.Magnets and Magnets.Magnets[v] then
                zm_2 = Magnets.Magnets[v].Price or zm_2
            end
        end
        local zn_5 = tonumber(zm_2) or 0
        local zn_6 = not zi_1[v]
        if zn_6 ~= false then
            zn_6 = zn_5 <= zj_1
        end
        if zn_6 then
            zn_6 = zn_5 >= zk
        end
        if zn_6 then
            zk = zn_5
            zl = v
        end
    end
    if zl then
        rC(BuyMagnet, zl)
        task.wait(0.1)
    end
    local zh_2 = sO()
    local zi_2 = zh_2 and zh_2.EquippedMagnet and not rR()
    if zi_2 then
        local EquippedMagnet = zh_2.EquippedMagnet
        local zj_2 = -1
        local zk_1 = nil
        local zm_4 = Magnets and Magnets.Order or tb
        for k, v in zm_4 do
            if zh_2.Magnets and zh_2.Magnets[v] and k >= zj_2 then
                zj_2 = k
                zk_1 = v
            end
        end
        if zk_1 and zk_1 ~= EquippedMagnet then
            rC(EquipMagnet, zk_1)
        end
    end
end
r7 = function()
    if not (Toggles.AutoBuyUpgrades and Toggles.AutoBuyUpgrades.Value) then
        return
    end
    if not sa() then
        return
    end
    local zG_1 = sO()
    local zH = zG_1 and zG_1.Upgrades
    if type(zH) ~= "table" then
        return
    end
    for k, v in s4 do
        if s_("UpgradeTracks", v) then
            local zH_1 = tonumber(zH[v]) or 0
            if zH_1 < sX then
                rC(BuyUpgrade, v)
                task.wait(0.05)
            end
        end
    end
end
local Dn_1_4 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = sH, Copyable = true }, "|", sM },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
sN = {
    Info = Dn_1_4:AddTab("Info", "info"),
    Main = Dn_1_4:AddTab("Main", "fish"),
    Player = Dn_1_4:AddTab("Player", "person-standing"),
    Settings = Dn_1_4:AddTab("Settings", "settings")
}
local function Dn_1_5(iY)
    local DiscordGroup = iY:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onJoinDiscordForKeylessScripts })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onJoinDiscordForKeylessScripts })
end
for k, v in sN do
    if k ~= "Info" then
        Dn_1_5(v)
    end
end
local Dn_6
local Dn_30 = 7
repeat
    if (Dn_30 * 1 + 1) % 2 + 1 <= 1 then
        local Dn_1_7 = (vector.create((Dn_30 * 2 + 7) % 11 + 1, (Dn_30 * 1 + 10) % 13 + 1, (Dn_30 * 1 + 7) % 17 + 1))
        Dn_20 = (vector.create((Dn_30 * 4 + 3) % 11 + 1, (Dn_30 * 6 + 10) % 13 + 1, (Dn_30 * 9 + 5) % 17 + 1))
        Dn_9 = (vector.create((Dn_30 * 3 + 9) % 11 + 1, (Dn_30 * 4 + 8) % 13 + 1, (Dn_30 * 9 + 8) % 17 + 1))
        Dn_32 = (vector.create((Dn_30 * 5 + 6) % 5 + 1, (Dn_30 * 3 + 1) % 7 + 1, (Dn_30 * 3 + 5) % 9 + 1))
        if vector.dot(vector.cross(Dn_1_7, (vector.cross(Dn_20, Dn_9))), Dn_32) == vector.dot(Dn_20 * vector.dot(Dn_1_7, Dn_9) - Dn_9 * vector.dot(Dn_1_7, Dn_20), Dn_32) + 1 then
            sN = Dn_6.Main:AddLeftGroupbox("Fishing", "fish")
        else
            Dn_6 = sN.Main:AddLeftGroupbox("Fishing", "fish")
        end
        Dn_30 = (Dn_30 + 15) % 16
    else
        if (Dn_6 and not Dn_30 or (not Dn_30 or Dn_6) or not Dn_30 and not Dn_6 and (Dn_30 or Dn_6) or (Dn_6 or Dn_30) and (Dn_30 or not Dn_6) and (not Dn_30 and Dn_6 or Dn_6 and Dn_6) or (not Dn_30 or Dn_30) and (Dn_6 or Dn_6) and (not Dn_6 and not Dn_30 and (Dn_30 and not Dn_30)) and (not Dn_6 or Dn_30 or (not Dn_6 or Dn_6) or (not Dn_6 or not Dn_30 or not Dn_6 and not Dn_30))) and not (Dn_6 and not Dn_30 or (not Dn_30 or Dn_6) or not Dn_30 and not Dn_6 and (Dn_30 or Dn_6) or (Dn_6 or Dn_30) and (Dn_30 or not Dn_6) and (not Dn_30 and Dn_6 or Dn_6 and Dn_6) or (not Dn_30 or Dn_30) and (Dn_6 or Dn_6) and (not Dn_6 and not Dn_30 and (Dn_30 and not Dn_30)) and (not Dn_6 or Dn_30 or (not Dn_6 or Dn_6) or (not Dn_6 or not Dn_30 or not Dn_6 and not Dn_30))) then
            Toggles:AddToggle("AutoPerfectFishing", { Text = "Auto Perfect Fishing", Default = false })
            Toggles:AddToggle("RemoveFishingAnims", { Text = "Remove Fishing Animations", Default = false })
            Dn_6.RemoveFishingAnims:OnChanged(fn740)
        else
            Dn_6:AddToggle("AutoPerfectFishing", { Text = "Auto Perfect Fishing", Default = false })
            Dn_6:AddToggle("RemoveFishingAnims", { Text = "Remove Fishing Animations", Default = false })
            Toggles.RemoveFishingAnims:OnChanged(fn740)
        end
        Dn_30 = (Dn_30 + 7) % 16
    end
until (Dn_30 * 11 + 10) % 16 == 9
if sf.FishingAnimChar then
    sf.FishingAnimChar:Disconnect()
end
local Dn_1_8 = 0
repeat
    Dn_6 = { "bcurkvv", "oimqjvzitt", "vrjudh", "fruf", "zbuhifrsuv", "zixgp", "eqcq", "fgabf", "spfgqd" }
    local E2 = Dn_1_8
    local Dn_30_1 = Dn_6[E2 % 9 + 1]
    if Dn_30_1:len() >= Dn_30_1:reverse():rep(E2 % 3 + 2):len() then
        sm.FishingAnimChar = sf.CharacterAdded:Connect(onCharacterAdded)
    else
        sf.FishingAnimChar = sm.CharacterAdded:Connect(onCharacterAdded)
    end
    Dn_1_8 = (Dn_1_8 + 0) % 8
until (Dn_1_8 * 5 + 7) % 8 == 7
if sm.Character then
    sI(sm.Character)
end
Dn_6, Dn_1_9, Dn_20, Dn_9, Dn_32 = nil, nil, nil, nil, nil
if (Dn_1_9 and 32 and (not Dn_20 or 32) or Dn_32 and not Dn_9 and (Dn_32 or not Dn_9) or not Dn_1_9 and Dn_1_9 and (Dn_32 and not Dn_1_9) and ((Dn_1_9 or 32) and (not Dn_1_9 or not Dn_9))) and ((not Dn_1_9 and false and (not Dn_32 and not Dn_1_9) or (not Dn_6 or false)) and ((not Dn_32 and Dn_9) and (not Dn_20 and not Dn_32 and (Dn_1_9 or not Dn_20)))) and not ((Dn_1_9 and 32 and (not Dn_20 or 32) or Dn_32 and not Dn_9 and (Dn_32 or not Dn_9) or not Dn_1_9 and Dn_1_9 and (Dn_32 and not Dn_1_9) and ((Dn_1_9 or 32) and (not Dn_1_9 or not Dn_9))) and ((not Dn_1_9 and false and (not Dn_32 and not Dn_1_9) or (not Dn_6 or false)) and ((not Dn_32 and Dn_9) and (not Dn_20 and not Dn_32 and (Dn_1_9 or not Dn_20))))) then
    sN = Dn_6.Main:AddLeftGroupbox("Sell", "hand-coins")
else
    Dn_6 = sN.Main:AddLeftGroupbox("Sell", "hand-coins")
end
if ((not Dn_20 and Dn_20) or (Dn_6 or not Dn_20) and 37) or not ((not Dn_20 and Dn_20) or (Dn_6 or not Dn_20) and 37) then
    Dn_6:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
    Dn_6:AddDropdown("SellMode", { Text = "Sell Mode", Values = Dn_27_2, Default = 1 })
    Dn_6:AddDivider("Keep")
    Dn_6:AddDropdown("KeepVariants", {
        Text = "Keep Variants",
        Values = Dn_29,
        Default = {},
        Multi = true,
        AllowNull = true,
        Searchable = true
    })
    Dn_6:AddDropdown("KeepSizes", { Text = "Keep Sizes", Values = Dn_4_6, Default = {}, Multi = true, AllowNull = true })
    Dn_6:AddDropdown("KeepRarities", {
        Text = "Keep Rarities",
        Values = Dn_16,
        Default = {},
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Expandable = true,
        ExpandColumns = 2
    })
    Dn_1_9 = sN.Main:AddRightGroupbox("Shop", "shopping-bag")
else
    Dn_1_9:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
    Dn_1_9:AddDropdown("SellMode", { Default = 1, Text = "Sell Mode", Values = Dn_16 })
    Dn_1_9:AddDivider("Keep")
    Dn_1_9:AddDropdown("KeepVariants", {
        Values = Dn_27_2,
        AllowNull = true,
        Text = "Keep Variants",
        Default = {},
        Searchable = true,
        Multi = true
    })
    Dn_1_9:AddDropdown("KeepSizes", { Text = "Keep Sizes", Default = {}, AllowNull = true, Multi = true, Values = Dn_6 })
    Dn_1_9:AddDropdown("KeepRarities", {
        AllowNull = true,
        Searchable = true,
        Values = sN,
        Text = "Keep Rarities",
        Multi = true,
        ExpandColumns = 2,
        Expandable = true,
        Default = {}
    });
    (nil):AddRightGroupbox("Shop", "shopping-bag")
end
do
    Dn_1_9:AddToggle("AutoBuyRod", { Text = "Auto Buy Rod", Default = false })
    Dn_1_9:AddToggle("AutoBuyMagnet", { Text = "Auto Buy Magnet", Default = false })
    Dn_1_9:AddDivider("Upgrades")
    Dn_1_9:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
    Dn_1_9:AddDropdown("UpgradeTracks", { Text = "Upgrade Tracks", Values = s4, Default = Dn_18, Multi = true, AllowNull = true })
    task.spawn(removeFishingAnimsLoop)
    task.spawn(autoPerfectFishingLoop)
    task.spawn(worker)
    Dn_20 = function()
        local AT
        local AZ
        AT = nil
        AZ = nil
        local Label, Label2, Label3, AX, AY
        local function A_()
            local z0 = hookfunction ~= nil
            local z1 = hookmetamethod ~= nil
            local z2 = getrawmetatable ~= nil
            local z3 = setrawmetatable ~= nil
            local z4 = getgc ~= nil
            local z5 = getgenv ~= nil
            local z6 = getreg ~= nil
            local z7 = getconnections ~= nil
            local z8 = firesignal ~= nil
            local z9 = getcallbackvalue ~= nil
            local Aa = setclipboard ~= nil
            local Ab = getcustomasset ~= nil
            local Ac = getnamecallmethod ~= nil
            local Ad = isexecutorclosure ~= nil
            local Ae = fireproximityprompt ~= nil
            local Af = firetouchinterest ~= nil
            local Ag = WebSocket ~= nil
            local Ah = readfile ~= nil
            local Ai = writefile ~= nil
            local Ak = (request or http_request) ~= nil
            local Am = (debug and debug.getupvalues) ~= nil
            local Ao = (debug and debug.setupvalue) ~= nil
            local Ap = 0
            local Aq = { z0, z1, z2, z3, z4, z5, z6, z7, z8, z9, Aa, Ab, Ac, Ad, Ae, Af, Ag, Ah, Ai, Ak, Am, Ao }
            for i, v in ipairs(Aq) do
                if v then
                    Ap += 1
                end
            end
            local z0_1 = Ap / #Aq
            if z0_1 >= 0.9 then
                return '<font color="#7fd47f">Full Support</font>'
            elseif z0_1 >= 0.6 then
                return '<font color="#e8a34d">Half Support</font>'
            else
                return '<font color="#e05a5a">Low Support</font>'
            end
        end
        AZ = "Unknown"
        pcall(function()
            local Az_1
            local Ay_1
            if identifyexecutor then
                Az_1, Ay_1 = identifyexecutor()
                local AA = Az_1 ~= ""
                local AB = type(Az_1) == "string" and AA
                if AB then
                    local AA_1 = type(Ay_1) == "string" and Ay_1 ~= "" and Az_1 .. " " .. Ay_1
                    AZ = AA_1 or Az_1
                end
            end
        end)
        local A0 = A_()
        AT = os.clock()
        AX = function()
            local AG = math.floor(os.clock() - AT)
            if AG < 60 then
                return AG .. "s"
            elseif AG < 3600 then
                return string.format("%dm %ds", AG // 60, AG % 60)
            else
                return string.format("%dh %dm", AG // 3600, AG % 3600 // 60)
            end
        end
        local A__1 = sN.Info:AddLeftGroupbox("User", "circle-user")
        A__1:AddPlayerInfo("InfoUserCard", { Player = sm, Title = "User", HeaderIcon = "user", Collapsible = false })
        A__1:AddLabel(rK("User", sm.DisplayName .. " @" .. sm.Name, ss), true)
        A__1:AddLabel(rK("UserId", tostring(sm.UserId), sn), true)
        A__1:AddLabel(rK("Executor", AZ .. "  " .. A0, ss), true)
        A__1:AddDivider()
        Label3 = A__1:AddLabel(rK("Session", AX(), sj), true)
        A__1:AddDivider()
        A__1:AddButton({
            Text = "Copy Username",
            Func = function()
                th(sm.Name, "Copied username")
            end
        })
        A__1:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                th("https://www.roblox.com/users/" .. tostring(sm.UserId) .. "/profile", "Copied profile link")
            end
        })
        local A__2 = sN.Info:AddRightGroupbox("Session", "signal")
        A__2:AddDivider("Server")
        A__2:AddLabel('<b>Game</b> <font color="#5a6070">-</font> <font color="#6ec1ff">Magnet Fishing</font>', true)
        Label2 = A__2:AddLabel('<b>Players</b> <font color="#5a6070">-</font> <font color="#7fd47f">0/0</font>', true)
        AY = tostring(game.JobId)
        local A0_1 = #AY > 18 and string.sub(AY, 1, 18) .. "..."
        local A0_2 = A0_1 or AY
        A__2:AddLabel(rK("Job", A0_2, sd), true)
        Label = A__2:AddLabel('<b>Ping</b> <font color="#5a6070">-</font> <font color="#e8a34d">0 ms</font>', true)
        A__2:AddDivider()
        A__2:AddButton({
            Text = "Rejoin Server",
            Func = function()
                sG:Teleport(game.PlaceId, sm)
            end
        })
        A__2:AddButton({
            Text = "Copy Job ID",
            Func = function()
                th(AY, "Copied Job ID")
            end
        })
        task.spawn(function()
            local AM_1
            local AL_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(rK("Session", AX(), sj))
                Label2:SetText(rK("Players", #sV:GetPlayers() .. "/" .. tostring(sV.MaxPlayers), ss))
                AL_1, AM_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local AL_2 = AL_1 and AM_1 .. " ms"
                local AR = if AL_2 then 1 else 0
                local AP = 3401 * AR + 488 * (1 - AR)
                local AQ = 3025 * AR + 924 * (1 - AR)
                if not ((AP * 1954 + AQ * 3410 + AP * AQ) % 16777213 == 10471616) then
                    AL_2 = "n/a"
                end
                Label:SetText(rK("Ping", AL_2, sj))
            end
        end)
        local A__3 = sN.Info:AddRightGroupbox("Socials", "link")
        A__3:AddButton({ Text = "Discord", Func = onJoinDiscordForKeylessScripts })
        A__3:AddButton({
            Text = "Rscripts",
            Func = function()
                if setclipboard then
                    setclipboard(sE)
                elseif toclipboard then
                    toclipboard(sE)
                end
                Library:Notify("Copied Rscripts profile to clipboard")
            end
        })
        A__3:AddButton({
            Text = "Website",
            Func = function()
                th(sy, "Copied website link")
            end
        })
    end
end
Dn_20()
Dn_9 = function()
    local MovementGroup = sN.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = sN.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    sf.NoClip = sL.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = sm.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local A3_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if A3_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    sf.InfJump = sD.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local Bb_1 = sP()
            if Bb_1 then
                Bb_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    sf.Fly = sL.RenderStepped:Connect(function(k4)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local Bd_1 = sP()
            if Bd_1 then
                Bd_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local Bd_3 = sv()
            local Be = sP()
            local CurrentCamera = sr.CurrentCamera
            if Bd_3 and Be and CurrentCamera then
                Be.PlatformStand = true
                local Be_1 = Vector3.zero
                if sD:IsKeyDown(Enum.KeyCode.W) then
                    Be_1 += CurrentCamera.CFrame.LookVector
                end
                if sD:IsKeyDown(Enum.KeyCode.S) then
                    Be_1 -= CurrentCamera.CFrame.LookVector
                end
                if sD:IsKeyDown(Enum.KeyCode.A) then
                    Be_1 -= CurrentCamera.CFrame.RightVector
                end
                if sD:IsKeyDown(Enum.KeyCode.D) then
                    Be_1 += CurrentCamera.CFrame.RightVector
                end
                if sD:IsKeyDown(Enum.KeyCode.Space) then
                    Be_1 += Vector3.new(0, 1, 0)
                end
                local Bo = if sD:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                if Bo == 1 then
                    Be_1 -= Vector3.new(0, 1, 0)
                end
                Bd_3.AssemblyLinearVelocity = Vector3.zero
                if Be_1.Magnitude > 0 then
                    Bd_3.CFrame = Bd_3.CFrame + Be_1.Unit * Options.FlySpeed.Value * k4
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local Bp = sP()
            if Bp then
                Bp.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local Br = sP()
            if Br then
                Br.WalkSpeed = 16
            end
        end
    end)
    local function ls(lt)
        if not lt:IsA("ProximityPrompt") then
            return
        end
        lt.HoldDuration = 0
        lt.MaxActivationDistance = 50
        lt.RequiresLineOfSight = false
    end
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in sr:GetDescendants() do
                pcall(ls, descendant)
            end
            if sf.InstantPrompt then
                sf.InstantPrompt:Disconnect()
            end
            sf.InstantPrompt = sr.DescendantAdded:Connect(function(lA)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(ls, lA)
                end
            end)
        elseif sf.InstantPrompt then
            sf.InstantPrompt:Disconnect()
            sf.InstantPrompt = nil
        end
    end)
end
Dn_9()
Dn_32 = function()
    local MenuGroup = sN.Settings:AddLeftGroupbox("Menu", "logs")
    local lG = 0
    local lH = tick()
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = MenuGroup:AddLabel("AFK triggers: 0")
    local function lJ()
        local CurrentCamera = sr.CurrentCamera
        if not CurrentCamera then
            return
        end
        sx:CaptureController()
        sx:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        lG += 1
        lH = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. lG)
        end)
    end
    sf.AntiAfkIdled = sm.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(lJ)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local BI = Toggles.AntiAfk.Value and tick() - lH >= 60
            if BI then
                pcall(lJ)
            end
        end
    end)
    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3D", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FpsBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local function l5(l6)
        pcall(function()
            s6:SetGameplayPausedNotificationEnabled(not l6)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = ta:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not l6
            end
        end)
        if not l6 then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(sm, "GameplayPaused", false)
            else
                sm.GameplayPaused = false
            end
        end)
    end
    Toggles.AntiGameplayPause:OnChanged(function()
        l5(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                l5(true)
            end
        end
    end)
    local mn = false
    local function mo()
        local JobId, PlaceId
        if mn then
            return
        end
        mn = true
        PlaceId, JobId = game.PlaceId, game.JobId
        local BU = pcall(function()
            sG:TeleportToPlaceInstance(PlaceId, JobId, sm)
        end)
        if not BU then
            pcall(function()
                sG:Teleport(PlaceId, sm)
            end)
        end
    end
    task.spawn(function()
        local RobloxPromptGui = ta:WaitForChild("RobloxPromptGui", 30)
        local B7 = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        if not B7 then
            return
        end
        B7.ChildAdded:Connect(function(mG)
            if Library.Unloaded then
                return
            end
            if Toggles.AutoReconnect.Value and mG.Name == "ErrorPrompt" then
                mo()
            end
        end)
    end)
    sG.TeleportInitFailed:Connect(function()
        if Toggles.AutoReconnect.Value then
            mn = false
            mo()
        end
    end)
    Toggles.Disable3D:OnChanged(function()
        pcall(function()
            sL:Set3dRenderingEnabled(not Toggles.Disable3D.Value)
        end)
    end)
    local mW = {
        ParticleEmitter = true,
        Trail = true,
        Smoke = true,
        Fire = true,
        Sparkles = true,
        Explosion = true,
        Beam = true
    }
    local function mX(mY)
        if mW[mY.ClassName] then
            pcall(function()
                mY.Enabled = false
            end)
        end
    end
    Toggles.FpsBoost:OnChanged(function()
        if Toggles.FpsBoost.Value then
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
            end)
            pcall(function()
                sZ.GlobalShadows = false
            end)
            pcall(function()
                sZ.FogEnd = 9000000000
            end)
            for i, descendant in sr:GetDescendants() do
                pcall(mX, descendant)
            end
            if sf.FpsBoost then
                sf.FpsBoost:Disconnect()
            end
            sf.FpsBoost = sr.DescendantAdded:Connect(function(nb)
                if Toggles.FpsBoost.Value then
                    pcall(mX, nb)
                end
            end)
        else
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic
            end)
            pcall(function()
                sZ.GlobalShadows = true
            end)
            if sf.FpsBoost then
                sf.FpsBoost:Disconnect()
                sf.FpsBoost = nil
            end
        end
    end)
    local ScriptGroup = sN.Settings:AddLeftGroupbox("Script", "terminal")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
end
Dn_32()
Library:OnUnload(function()
    r5()
    for k, v in sf do
        local Cq = v
        pcall(function()
            Cq:Disconnect()
        end)
    end
    table.clear(sf)
    r8.pullConn = nil
    pcall(function()
        sL:Set3dRenderingEnabled(true)
    end)
    local Cj = sP()
    if Cj then
        Cj.PlatformStand = false
        Cj.WalkSpeed = 16
    end
    if rU then
        if rM then
            rM.MagnetFishing = nil
        end
        rU.__OuroborosMagnetFishingLib = nil
    end
end)
if rU then
    local Dn_1_10 = rM or rU.Ouroboros
    local Dn_27_3 = {}
    Dn_16 = Dn_1_10
    local Dn_37 = if Dn_16 then 1 else 0
    local Dn_26 = 2914 * Dn_37 + 2122 * (1 - Dn_37)
    local Dn_13 = 3606 * Dn_37 + 2728 * (1 - Dn_37)
    if not ((Dn_26 * 2054 + Dn_13 * 1180 + Dn_26 * Dn_13) % 16777213 == 3971107) then
        Dn_16 = Dn_27_3
    end
    local Dn_1_11 = 1
    repeat
        if (Dn_1_11 * 1 + 1) % 2 + 1 <= 1 then
            local Gi = bit32.rrotate(bit32.bxor(bit32.lrotate(Dn_1_11, 17), string.byte(tostring(Dn_1_11))), 2)
            if bit32.bxor(bit32.lrotate(bit32.bxor(Gi, 414305696), 22), 1745235059) ~= bit32.lrotate(Gi, 22) then
                Dn_16 = rM
            else
                rM = Dn_16
            end
            Dn_1_11 = (Dn_1_11 + 7) % 8
        else
            local Dn_27_5 = {
                "hcselsab",
                "hxmtvo",
                "zztukc",
                "imgkag",
                "aaajjm",
                "oenwwkr",
                "pitgfgqig",
                "knri",
                "tmbvyu",
                "aeeyymgo",
                "ogfhndkh",
                "fek"
            }
            local Eg = Dn_1_11
            local Dn_4_7 = Dn_27_5[Eg % 12 + 1]
            if Dn_4_7:len() <= Dn_4_7:reverse():rep(Eg % 3 + 2):len() then
                rM.MagnetFishing = { Library = Library }
                rU.Ouroboros = rM
            else
                rU.MagnetFishing = { Library = rM }
                Library.Ouroboros = rU
            end
            Dn_1_11 = (Dn_1_11 + 3) % 8
        end
    until (Dn_1_11 * 5 + 5) % 8 == 4
end
Dn_14_9:SetLibrary(Library)
Dn_14_9:SetFolder("OuroborosHub")
Dn_14_9:SaveDefault("Evil Hello Kitty")
Dn_14_9:ApplyToTab(sN.Settings)
Dn_14_9:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/MagnetFishing")
local function Dn_4_8()
    local nw = SaveManager:BuildConfigSection(sN.Settings)
    local function nx(ny, nz)
        local Cs = ny == "Toggle" and Toggles
        local Cx = if Cs then 1 else 0
        local Cv = 2633 * Cx + 3706 * (1 - Cx)
        local Cw = 1195 * Cx + 3013 * (1 - Cx)
        if not ((Cv * 899 + Cw * 2152 + Cv * Cw) % 16777213 == 8085142) then
            Cs = Options
        end
        local Cs_1 = Cs[nz]
        local Cr_2 = type(Cs_1) == "table" and Cs_1.Type == ny
        local Cr_3 = Cr_2 and Cs_1
        local Cx_1 = if Cr_3 then 1 else 0
        local Cv_1 = 3819 * Cx_1 + 2374 * (1 - Cx_1)
        local Cw_1 = 1753 * Cx_1 + 1434 * (1 - Cx_1)
        if not ((Cv_1 * 2225 + Cw_1 * 3895 + Cv_1 * Cw_1) % 16777213 == 5242704) then
            Cr_3 = nil
        end
        return Cr_3
    end
    local function nH(nI, nJ)
        local Type = nJ.Type
        if Type == "Toggle" then
            return { idx = nI, type = "Toggle", value = nJ.Value == true }
        elseif Type == "Slider" then
            return { idx = nI, type = "Slider", value = tostring(nJ.Value) }
        elseif Type == "Dropdown" then
            return { idx = nI, type = "Dropdown", multi = nJ.Multi == true, value = nJ.Value }
        elseif Type == "Input" then
            local Cz = nJ.Value or ""
            return { idx = nI, type = "Input", text = tostring(Cz) }
        elseif Type == "ColorPicker" then
            return { idx = nI, type = "ColorPicker", value = nJ.Value:ToHex(), transparency = nJ.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = nI,
                type = "KeyPicker",
                mode = nJ.Mode,
                key = nJ.Value,
                modifiers = nJ.Modifiers,
                toggled = nJ.Toggled
            }
        else
            return nil
        end
    end
    local function nL()
        local CI = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local CJ = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if CJ then
                    local CJ_1 = nH(k, v)
                    if CJ_1 then
                        CI[#CI + 1] = CJ_1
                    end
                end
            end
        end
        table.sort(CI, function(nU, nV)
            if nU.type ~= nV.type then
                return nU.type < nV.type
            end
            return nU.idx < nV.idx
        end)
        return { objects = CI }
    end
    local function nW(nX)
        local CZ
        CZ = nil
        local C_ = type(nX) ~= "table" or type(nX.idx) ~= "string" or type(nX.type) ~= "string" or SaveManager.Ignore[nX.idx]
        if C_ then
            return false
        end
        CZ = nx(nX.type, nX.idx)
        if not CZ then
            return false
        end
        local C__1 = pcall(function()
            if nX.type == "Input" then
                if type(nX.text) ~= "string" then
                    return
                end
                CZ:SetValue(nX.text)
            elseif nX.type == "ColorPicker" then
                CZ:SetValueRGB(Color3.fromHex(nX.value), nX.transparency)
            elseif nX.type == "KeyPicker" then
                CZ:SetValue({ nX.key, nX.mode, nX.modifiers })
                if nX.mode == "Toggle" and nX.toggled ~= nil then
                    CZ.Toggled = nX.toggled
                    CZ:Update()
                end
            else
                CZ:SetValue(nX.value)
            end
        end)
        return C__1
    end
    nw:AddDivider()
    nw:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    nw:AddButton("Export Config to Clipboard", function()
        local C2_1
        local C1_1
        C1_1, C2_1 = pcall(s2.JSONEncode, s2, nL())
        if not C1_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local C1_2 = setclipboard
        local C7 = if C1_2 then 1 else 0
        local C5 = 2434 * C7 + 714 * (1 - C7)
        local C6 = 2157 * C7 + 3454 * (1 - C7)
        if not ((C5 * 321 + C6 * 497 + C5 * C6) % 16777213 == 7103481) then
            C1_2 = toclipboard
        end
        local C3 = C1_2
        local C1_3 = type(C3) ~= "function" or not pcall(C3, C2_1)
        if C1_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    nw:AddButton("Import Config from Clipboard Text", function()
        local Da_1
        local C8 = Options.SaveManager_ImportSource.Value or ""
        local C8_1
        local C9 = tostring(C8):match("^%s*(.-)%s*$")
        if C9 == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        C8_1, Da_1 = pcall(s2.JSONDecode, s2, C9)
        local C9_1 = not C8_1 or type(Da_1) ~= "table" or type(Da_1.objects) ~= "table"
        if C9_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local C8_2 = 0
        for i, v in ipairs(Da_1.objects) do
            if nW(v) then
                C8_2 += 1
            end
        end
        if C8_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local Da_2 = C8_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(C8_2, Da_2), 6)
    end)
end
Dn_4_8()
SaveManager:LoadAutoloadConfig()
Dn_29 = Toggles.HideUiOnStart and Toggles.HideUiOnStart.Value
if Dn_29 then
    Library:Toggle(false)
end
