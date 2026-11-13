local mc
local my
local SellInventory
local l2
local m5
local mK
local Workspace
local m8
local l8
local mQ
local mN
local mx
local mT
local mA
local mh
local mZ
local mk
local CollectAllChestPets
local m4
local mJ
local l4
local m7
local na
local mP
local mw
local mS
local ma
local md
local mV
local mz
local mC
local mg
local mF
local Library
local Toggles
local mL
local m6
local l6
local EquipBestPets
local Options
local AttackBoss
local CharacterConfig
local function worker6()
    while not Library.Unloaded do
        if m7("AutoEquipBest") then
            pcall(mw)
        end
        task.wait(3)
    end
end
local function fn69(aG, aH)
    local n6 = Options[aG]
    if n6 and n6.Value ~= nil then
        return n6.Value
    end
    return aH
end
local function worker8()
    while not Library.Unloaded do
        if m7("AutoSell") then
            pcall(na)
        end
        task.wait(2)
    end
end
local function fn113(aY, aZ)
    return string.format('<font color="%s">%s</font>', aZ, aY)
end
local function fn127()
    return mz
end
local function fn156()
    if l2.SkipCurrentFight then
        return
    end
    local ql = l2.LastCharacterId and mP(l2.LastCharacterId)
    if ql then
        l2.SkipCurrentFight = true
        m8()
        return
    end
    pcall(function()
        AttackBoss:FireServer("Click")
    end)
end
local function fn199()
    mC(mx, "Copied Discord invite to clipboard")
end
local function fn237(ea)
    if ea then
        l2.WeSetAutoClick = true
        m8()
    elseif l2.WeSetAutoClick then
        l2.WeSetAutoClick = false
        l6(false)
    end
end
local function fn251()
    my.FireServer(my)
end
local function fn257(aR, aS)
    local oc = l8(aR)
    if oc[aS] == true then
        return true
    end
    for k, v in oc do
        if v == aS then
            return true
        end
    end
    return false
end
local function fn297(a0, a1, a2)
    return string.format("<b>%s</b> %s %s", a0, mc("-", "#5a6070"), mc(a1, a2))
end
local function worker4()
    while not Library.Unloaded do
        if m7("AutoCollectMoney") then
            pcall(mL)
        end
        task.wait(1)
    end
end
local function worker5()
    while not Library.Unloaded do
        if m7("AutoCollectCharacters") then
            pcall(mJ)
        end
        task.wait(2)
    end
end
local function fn362()
    local ow = m4()
    if not ow then
        return nil
    end
    return tonumber(ow.Name:match("%d+"))
end
local function worker()
    while Library and not Library.Unloaded do
        mV()
        task.wait(1)
    end
end
local function fn440()
    m5(EquipBestPets)
end
local function worker2()
    while not Library.Unloaded do
        local q_ = (m7("AutoRoll"))
        if not q_ then
            local q0 = m7("AutoFightRoll") and l2.SkipCurrentFight
            q_ = q0
        end
        if q_ then
            pcall(mZ)
        end
        task.wait(0.35)
    end
end
local function fn454(a5, a6)
    if setclipboard then
        setclipboard(a5)
    elseif toclipboard then
        toclipboard(a5)
    end
    Library:Notify(a6)
end
local function worker3()
    while not Library.Unloaded do
        local q5 = if m7("AutoFightRoll") then 1 else 0
        if q5 == 1 then
            pcall(mk)
            task.wait(0.1)
        else
            task.wait(0.35)
        end
    end
end
local function fn476()
    m5(CollectAllChestPets)
end
local function fn485()
    if m7("SellAllInventory") then
        local Character = ma.Character
        local qF_1 = Character and Character:FindFirstChildOfClass("Humanoid")
        if qF_1 then
            qF_1:UnequipTools()
        end
        task.wait(0.1)
        m5(SellInventory)
        return
    end
    local Character = ma.Character
    local qF_2 = Character and Character:FindFirstChildOfClass("Humanoid")
    local Backpack = ma:FindFirstChild("Backpack")
    if not (qF_2 and Backpack) then
        return
    end
    local qG_1 = {}
    for i, child in Backpack:GetChildren() do
        if child:IsA("Tool") then
            qG_1[#qG_1 + 1] = child
        end
    end
    for k, v in qG_1 do
        local qF_4 = Library.Unloaded or not m7("AutoSell")
        if qF_4 then
            break
        end
        local attr = v:GetAttribute("UID")
        if not mh(attr) then
            local qF_6 = mN(v)
            local qG_2 = not qF_6 or not mQ("SellRarities", qF_6)
            if not qG_2 then
                qF_2:EquipTool(v)
                task.wait(0.15)
                m5(mT)
                task.wait(0.25)
            end
        end
    end
end
local function fn506()
    if not m7("AutoFightRoll") then
        return
    end
    if l2.SkipCurrentFight then
        l6(false)
    else
        l2.WeSetAutoClick = true
        l6(true)
    end
end
local function fn509()
    if m7("AutoRoll") then
        mS(false)
    end
    if l2.WeSetAutoClick then
        l6(false)
    end
    if getgenv then
        getgenv().__OuroborosBeatAnimeBossLib = nil
    end
end
local function onOnClientEvent(cb)
    if type(cb) ~= "table" then
        return
    end
    if cb.Money ~= nil then
        l2.Money = cb.Money
    end
    if cb.Stats then
        l2.Stats = cb.Stats
    end
    if cb.SummonerSettings then
        l2.SummonerSettings = cb.SummonerSettings
    end
    if cb.ActiveSummonerLevel then
        l2.ActiveSummonerLevel = cb.ActiveSummonerLevel
    end
    if cb.SummonerLevel then
        l2.SummonerLevel = cb.SummonerLevel
        l2.Stats.Summoner = cb.SummonerLevel
    end
    if cb.AutoClickEnabled ~= nil then
        l2.AutoClickEnabled = cb.AutoClickEnabled
    end
    if cb.LockedPets then
        l2.LockedPets = cb.LockedPets
    end
end
local function fn531(aB)
    local n3 = Toggles[aB]
    return n3 and n3.Value == true
end
local function fn543(bn)
    if type(bn) ~= "string" then
        return nil
    end
    local oB = CharacterConfig.GetInfo and CharacterConfig.GetInfo(bn)
    return oB or CharacterConfig.Characters[bn]
end
local function fn550(by)
    if not by then
        return false
    end
    return l2.LockedPets[by] == true
end
local function onOnClientEvent2(cd, ce, cf)
    if cd ~= mA() then
        return
    end
    l2.LastCharacterId = ce
    l2.SkipCurrentFight = mP(ce)
    local o0 = tonumber(cf) or 3
    local o1 = o0 + 0.35
    l2.BossBusyUntil = os.clock() + o1
    m8()
    local o0_1 = l2.SkipCurrentFight
    if o0_1 then
        local o2 = m7("AutoRoll") or m7("AutoFightRoll")
        o0_1 = o2
    end
    if o0_1 then
        task.delay(o1, function()
            if Library.Unloaded then
                return
            end
            if not l2.SkipCurrentFight then
                return
            end
            local oZ = m7("AutoRoll") or m7("AutoFightRoll")
            if not oZ then
                return
            end
            mK()
        end)
    end
end
local function worker7()
    while not Library.Unloaded do
        if m7("AutoBuyUpgrades") then
            pcall(md)
        end
        task.wait(1)
    end
end
local function fn647()
    local oz = tonumber(l2.ActiveSummonerLevel) or 1
    return math.clamp(oz, 1, 3)
end
local function fn672(d8)
    mS(d8)
end
local function fn681(bR)
    local oL = l4(bR)
    if not oL then
        return false
    end
    local oM = m7("SkipRarity") and oL.Rarity and mQ("SkipRarities", oL.Rarity)
    if oM then
        return true
    elseif m7("SkipOverHealth") then
        local oM_1 = tonumber(oL.MaxHealth) or 0
        if oM_1 > mF("MaxBossHealth", 1000000) then
            return true
        end
        return false
    else
        return false
    end
end
local function fn699(aM)
    local n9 = Options[aM]
    if not n9 then
        return {}
    end
    local Value = n9.Value
    if type(Value) ~= "table" then
        return {}
    end
    return Value
end
local function fn728(cN)
    local DiscordGroup = cN:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = mg })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = mg })
end
local function fn734()
    local qf = (m7("AutoRoll"))
    local qk = if qf then 1 else 0
    local qi = 859 * qk + 3549 * (1 - qk)
    local qj = 861 * qk + 1889 * (1 - qk)
    if not ((qi * 1786 + qj * 911 + qi * qj) % 16777213 == 3058144) then
        local qg = m7("AutoFightRoll") and l2.SkipCurrentFight
        qf = qg
    end
    if not qf then
        return
    end
    if os.clock() < l2.BossBusyUntil then
        return
    end
    local qf_1 = l2.SkipCurrentFight or m7("AutoRoll")
    if qf_1 then
        mK()
    end
end
local function fn769(bs)
    local attr = bs:GetAttribute("CharacterId")
    local oF = l4(attr)
    return oF and oF.Rarity or nil
end
local function fn774()
    local Plots = Workspace:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    for i, child in Plots:GetChildren() do
        if child:GetAttribute("OwnerPlayerId") == ma.UserId then
            return child
        end
    end
    return nil
end
local function onOnClientEvent3(cw)
    if cw == "BossSpawned" then
        l2.BossBusyUntil = math.max(l2.BossBusyUntil, os.clock() + 0.35)
        if l2.LastCharacterId then
            l2.SkipCurrentFight = mP(l2.LastCharacterId)
            m8()
        end
    end
end
l2 = nil
l4 = nil
l6 = nil
l8 = nil
Options = nil
ma = nil
mc = nil
md = nil
mg = nil
mh = nil
Toggles = nil
mk = nil
Workspace = nil
AttackBoss = nil
mw = nil
mx = nil
my = nil
mz = nil
mA = nil
mC = nil
mF = nil
mJ = nil
mK = nil
mL = nil
mN = nil
local l0, l1, l3, l5, l7, UpgradeSummoner, me, mf, mi, RequestSummonerUpgradeConfir, MenuGroup, mn, mo, mp, SaveManager, BuyUpgrade, mt, mu, mB, mD, RequestBossRoll, mG, mH, StatsConfig, mM
mP = nil
mQ = nil
CharacterConfig = nil
mS = nil
mT = nil
mV = nil
local mW
SellInventory = nil
mZ = nil
Library = nil
CollectAllChestPets = nil
m4 = nil
m5 = nil
m6 = nil
m7 = nil
m8 = nil
EquipBestPets = nil
na = nil
local mO, mU, mY, m_, m2, m3
local DataSync
local nc_1
local nd_5
l0, nc_1, mY, mU, mO, mH, mD, mz, mu, Workspace, mi, ma, l3, m6 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local nb = 14
repeat
    local nd_1 = (nb * 5 + 0) % 6 + 1
    if nd_1 <= 3 then
        if nd_1 <= 2 then
            if nd_1 <= 1 then
                if nb * 26544973 + 1 + 1 >= nb * 26544973 + 1 + 1 + 4 then
                    mO = game:GetService("RunService")
                    mY = game:GetService("UserInputService")
                    mH = game:GetService("VirtualUser")
                    mD = game:GetService("HttpService")
                    mU = game:GetService("GuiService")
                else
                    mY = game:GetService("RunService")
                    mU = game:GetService("UserInputService")
                    mO = game:GetService("VirtualUser")
                    mH = game:GetService("HttpService")
                    mD = game:GetService("GuiService")
                end
                nb = (nb + 17) % 48
            else
                if ((m6 or ma) and (not m6 or m6) or (not m6 or not ma) and (ma and not ma)) and not ((m6 or ma) and (not m6 or m6) or (not m6 or not ma) and (ma and not ma)) then
                    mu = game:GetService("CoreGui")
                    mz = game:GetService("TeleportService")
                else
                    mz = game:GetService("CoreGui")
                    mu = game:GetService("TeleportService")
                end
                nb = (nb + 23) % 48
            end
        else
            local ne_1 = (vector.create((nb * 4 + 6) % 11 + 1, (nb * 3 + 4) % 13 + 1, (nb * 11 + 10) % 17 + 1))
            local nf_1 = (vector.create((nb * 6 + 8) % 11 + 1, (nb * 6 + 7) % 13 + 1, (nb * 6 + 2) % 17 + 1))
            local ue = vector.dot(ne_1, nf_1)
            if ue * ue <= vector.dot(ne_1, ne_1) * vector.dot(nf_1, nf_1) then
                Workspace = game:GetService("Workspace")
                mi = game:GetService("Lighting")
                ma = l0.LocalPlayer
                l3 = ma:WaitForChild("PlayerGui")
            else
                mi = game:GetService("Workspace")
                ma = game:GetService("Lighting")
                l3 = Workspace.LocalPlayer
                l0 = l3:WaitForChild("PlayerGui")
            end
            nb = (nb + 35) % 48
        end
    elseif nd_1 <= 5 then
        if nd_1 <= 4 then
            local nd_2 = { "fywoehn", "ygeagcuv", "rda", "gbovnx", "ojweinqddhg", "kob", "dnnjl", "ltrr" }
            local uA = nb
            local ne_2 = nd_2[uA % 8 + 1]
            if ne_2:len() >= ne_2:reverse():rep(uA % 3 + 2):len() then
                l3 = fn127
            else
                m6 = fn127
            end
            nb = (nb + 5) % 48
        else
            local nd_3 = (vector.create((nb * 4 + 4) % 11 + 1, (nb * 9 + 11) % 13 + 1, (nb * 12 + 10) % 17 + 1))
            local u7 = vector.floor(nd_3) + vector.ceil(nd_3 * -1)
            if vector.dot(u7, u7) == 3 then
                nc_1 = game:GetService("Players")
            else
                l0 = game:GetService("Players")
            end
            nb = (nb + 41) % 48
        end
    else
        local nd_4 = (vector.create((nb * 4 + 3) % 11 + 1, (nb * 4 + 12) % 13 + 1, (nb * 2 + 12) % 17 + 1))
        local ne_3 = (vector.create((nb * 1 + 5) % 11 + 1, (nb * 2 + 2) % 13 + 1, (nb * 1 + 11) % 17 + 1))
        local uz = vector.dot(nd_4, ne_3)
        if uz * uz <= vector.dot(nd_4, nd_4) * vector.dot(ne_3, ne_3) then
            nc_1 = game:GetService("ReplicatedStorage")
        else
            ma = game:GetService("ReplicatedStorage")
        end
        nb = (nb + 35) % 48
    end
until (nb * 35 + 21) % 48 == 19
if getgenv then
    mW, nd_5 = nil, nil
    local nb_1 = 8
    repeat
        if (nb_1 * 1 + 1) % 2 + 1 <= 1 then
            local ne_5 = {
                "west",
                "aljbjfxuxmvu",
                "usrq",
                "ooonaw",
                "fzo",
                "wnwrib",
                "xxeykbcmc",
                "ldmgicx",
                "bfxnyj",
                "pktzdm",
                "exdmkyan",
                "bbffl",
                "tooquvbco",
                "zwvmtuf",
                "zoeirai",
                "omgwprw"
            }
            if ne_5[(nb_1 * 40 + 48) % 16 + 1] < ne_5[(nb_1 * 40 + 48) % 16 + 1] then
                mW = nd_5
            else
                nd_5 = mW
            end
            nb_1 = (nb_1 + 11) % 16
        else
            if nb_1 * 95516535 + 2 + 5 >= nb_1 * 95516535 + 2 + 5 + 1 then
                getgenv().gethui = mW
                m6 = getgenv().__OuroborosBeatAnimeBossLib
            else
                getgenv().gethui = m6
                mW = getgenv().__OuroborosBeatAnimeBossLib
            end
            nb_1 = (nb_1 + 1) % 16
        end
    until (nb_1 * 1 + 13) % 16 == 1
    if nd_5 then
        nd_5 = mW.Unload
    end
    if nd_5 then
        pcall(function()
            mW:Unload()
        end)
    end
end
pcall(function()
    gethui = m6
end)
if setthreadidentity then
    setthreadidentity(8)
end
mB, mx, mt, mo, me, l7, l1, m3, m_, CharacterConfig, StatsConfig, RequestBossRoll, AttackBoss, BuyUpgrade, RequestSummonerUpgradeConfir, UpgradeSummoner, EquipBestPets, CollectAllChestPets, SellInventory, mT, mM, mG, DataSync, my, mf = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
mB = "Beat the Anime Boss!"
mx = "https://discord.gg/ehKVq7pf7v"
mt = "https://rscripts.net/@Ouroboros"
mo = "https://ouroboros-hub-rbx.web.app/"
me = "#7fd47f"
l7 = "#6ec1ff"
l1 = "#e8a34d"
m3 = "#8b93a3"
m_ = "#e05a5a"
local nd_6 = nc_1:WaitForChild("Remotes")
CharacterConfig = require(nc_1.Config.CharacterConfig)
StatsConfig = require(nc_1.Config.StatsConfig)
RequestBossRoll = nd_6:WaitForChild("RequestBossRoll")
local RollBoss = nd_6:WaitForChild("RollBoss")
AttackBoss = nd_6:WaitForChild("AttackBoss")
BuyUpgrade = nd_6:WaitForChild("BuyUpgrade")
RequestSummonerUpgradeConfir = nd_6:WaitForChild("RequestSummonerUpgradeConfirmation")
UpgradeSummoner = nd_6:WaitForChild("UpgradeSummoner")
local ShowConfirmation = nd_6:WaitForChild("ShowConfirmation")
EquipBestPets = nd_6:WaitForChild("EquipBestPets")
CollectAllChestPets = nd_6:WaitForChild("CollectAllChestPets")
SellInventory = nd_6:WaitForChild("SellInventory")
if (ShowConfirmation or false) and (false or mG) and (false or not RequestBossRoll and not RequestBossRoll) and (mG or ShowConfirmation or RequestBossRoll and mo or (not RequestBossRoll and EquipBestPets or (EquipBestPets or not ShowConfirmation))) and not ((ShowConfirmation or false) and (false or mG) and (false or not RequestBossRoll and not RequestBossRoll) and (mG or ShowConfirmation or RequestBossRoll and mo or (not RequestBossRoll and EquipBestPets or (EquipBestPets or not ShowConfirmation)))) then
    mG = DataSync:WaitForChild("SellHeldPet")
    nd_6 = DataSync:WaitForChild("SetAutoRollActive")
    my = DataSync:WaitForChild("SetAutoClickEnabled")
    mM = DataSync:WaitForChild("DataSync")
    mT = DataSync:WaitForChild("RequestSync")
else
    mT = nd_6:WaitForChild("SellHeldPet")
    mM = nd_6:WaitForChild("SetAutoRollActive")
    mG = nd_6:WaitForChild("SetAutoClickEnabled")
    DataSync = nd_6:WaitForChild("DataSync")
    my = nd_6:WaitForChild("RequestSync")
end
local Communication = nd_6:WaitForChild("Communication")
local Rarities = CharacterConfig.Rarities
mf = {}
for k, v in StatsConfig.Order do
    mf[#mf + 1] = v
end
Library, SaveManager, mV = nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
mV = function()
    local function nS(af)
        local nN = not af or not af:IsA("ScreenGui")
        if nN then
            return
        end
        af.ResetOnSpawn = false
        af.IgnoreGuiInset = true
        af.DisplayOrder = math.max(af.DisplayOrder, 1000)
        pcall(function()
            af.ClipToDeviceSafeArea = false
        end)
        pcall(function()
            af.ScreenInsets = Enum.ScreenInsets.None
        end)
        if af.Parent ~= mz then
            af.Parent = mz
        end
    end
    nS(Library.ScreenGui)
    if Library.ActiveLoading and Library.ActiveLoading.ScreenGui then
        nS(Library.ActiveLoading.ScreenGui)
    end
    for k, v in { "Obsidian", "ObsidianLoading" } do
        local nT_1 = mz:FindFirstChild(v) or l3:FindFirstChild(v)
        if nT_1 then
            nS(nT_1)
        end
    end
end
mV()
task.spawn(worker)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
if getgenv then
    getgenv().__OuroborosBeatAnimeBossLib = Library
end
Toggles, Options, l2, l5, m7, mF, l8, mQ, mc, m2, mC, mg, m4, mA, mn, l4, mN, mh, m5, mS, l6, mP, m8, mK = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Toggles = Library.Toggles
Options = Library.Options
l2 = {
    Money = 0,
    Stats = {},
    SummonerSettings = {},
    ActiveSummonerLevel = 1,
    SummonerLevel = 1,
    AutoClickEnabled = true,
    LockedPets = {},
    LastCharacterId = nil,
    SkipCurrentFight = false,
    BossBusyUntil = 0,
    WeSetAutoClick = false
}
if mS and mh or not mh and mA or (m8 and mS or (mn or m8)) or (mA or mn or mA and not mh or (m8 or not mh) and (not mn and mn)) or not (mS and mh or not mh and mA or (m8 and mS or (mn or m8)) or (mA or mn or mA and not mh or (m8 or not mh) and (not mn and mn))) then
    m7 = fn531
    mF = fn69
    l8 = fn699
    mQ = fn257
else
    l8 = fn531
    mQ = fn69
    m7 = fn699
    mF = fn257
end
mc = fn113
m2 = fn297
mC = fn454
mg = fn199
m4 = fn774
mA = fn362
mn = fn647
l4 = fn543
mN = fn769
mh = fn550
m5 = function(bB)
    pcall(function()
        bB.FireServer(bB)
    end)
end
mS = function(bE)
    local bG = mn()
    pcall(function()
        mM:FireServer(bG, bE == true)
    end)
end
l6 = function(bM)
    pcall(function()
        mG:FireServer(bM == true)
    end)
end
mP = fn681
m8 = fn506
mK = function()
    local oS, oT
    oT = mA()
    if not oT then
        return
    end
    oS = mn()
    pcall(function()
        RequestBossRoll:FireServer(oT, oS)
    end)
end
DataSync.OnClientEvent:Connect(onOnClientEvent)
RollBoss.OnClientEvent:Connect(onOnClientEvent2)
Communication.OnClientEvent:Connect(onOnClientEvent3)
ShowConfirmation.OnClientEvent:Connect(function(cA, cB)
    if not m7("AutoBuyUpgrades") then
        return
    end
    if cA ~= "UpgradeSummoner" then
        return
    end
    if type(cB) ~= "table" then
        return
    end
    local o6 = cB.PlotNumber or mA()
    local o5 = o6
    if o5 then
        pcall(function()
            UpgradeSummoner:FireServer(o5)
        end)
    end
end)
pcall(fn251)
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = mx, Copyable = true }, "|", mB },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
l5 = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "swords"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in l5 do
    if k ~= "Info" then
        fn728(v)
    end
end
MenuGroup, mp, mZ, mk, mL, mJ, mw, md, na = nil, nil, nil, nil, nil, nil, nil, nil, nil
local function nh_2()
    local p2
    local p1
    p1 = nil
    p2 = nil
    local Label2, Label3, p_, p0, Label
    local function p4()
        local o8 = hookfunction ~= nil
        local o9 = hookmetamethod ~= nil
        local pa = getrawmetatable ~= nil
        local pb = setrawmetatable ~= nil
        local pc = getgc ~= nil
        local pd = getgenv ~= nil
        local pe = getreg ~= nil
        local pf = getconnections ~= nil
        local pg = firesignal ~= nil
        local ph = getcallbackvalue ~= nil
        local pi = setclipboard ~= nil
        local pj = getcustomasset ~= nil
        local pk = getnamecallmethod ~= nil
        local pl = isexecutorclosure ~= nil
        local pm = fireproximityprompt ~= nil
        local pn = firetouchinterest ~= nil
        local po = WebSocket ~= nil
        local pp = readfile ~= nil
        local pq = writefile ~= nil
        local ps = (request or http_request) ~= nil
        local pu = (debug and debug.getupvalues) ~= nil
        local pw = (debug and debug.setupvalue) ~= nil
        local px = 0
        local py = { o8, o9, pa, pb, pc, pd, pe, pf, pg, ph, pi, pj, pk, pl, pm, pn, po, pp, pq, ps, pu, pw }
        for k, v in py do
            if v then
                px += 1
            end
        end
        local o8_1 = px / #py
        if o8_1 >= 0.9 then
            return mc("Full Support", me)
        elseif o8_1 >= 0.6 then
            return mc("Half Support", l1)
        else
            return mc("Low Support", m_)
        end
    end
    p1 = "Unknown"
    pcall(function()
        local pH_1
        local pG_1
        if identifyexecutor then
            pH_1, pG_1 = identifyexecutor()
            local pI = pH_1 ~= ""
            local pJ = type(pH_1) == "string" and pI
            if pJ then
                local pI_1 = type(pG_1) == "string" and pG_1 ~= "" and pH_1 .. " " .. pG_1
                local pG_2 = pI_1
                local pN = if pG_2 then 1 else 0
                local pL = 2186 * pN + 3928 * (1 - pN)
                local pM = 2204 * pN + 3682 * (1 - pN)
                if not ((pL * 3991 + pM * 575 + pL * pM) % 16777213 == 14809570) then
                    pG_2 = pH_1
                end
                p1 = pG_2
            end
        end
    end)
    local p5 = p4()
    p2 = os.clock()
    p_ = function()
        local pR = math.floor(os.clock() - p2)
        if pR < 60 then
            return pR .. "s"
        elseif pR < 3600 then
            return string.format("%dm %ds", pR // 60, pR % 60)
        else
            return string.format("%dh %dm", pR // 3600, pR % 3600 // 60)
        end
    end
    local UserGroup = l5.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = ma, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(m2("User", ma.DisplayName .. " @" .. ma.Name, me), true)
    UserGroup:AddLabel(m2("UserId", tostring(ma.UserId), l7), true)
    UserGroup:AddLabel(m2("Executor", p1 .. "  " .. p5, me), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(m2("Session", p_(), l1), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            mC(ma.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            mC("https://www.roblox.com/users/" .. tostring(ma.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = l5.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(m2("Game", mB, l7), true)
    Label2 = SessionGroup:AddLabel(m2("Players", "0/0", me), true)
    p0 = tostring(game.JobId)
    local p5_1 = #p0 > 18 and string.sub(p0, 1, 18) .. "..."
    local p5_2 = p5_1 or p0
    SessionGroup:AddLabel(m2("Job", p5_2, m3), true)
    Label = SessionGroup:AddLabel(m2("Ping", "0 ms", l1), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            mu:Teleport(game.PlaceId, ma)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            mC(p0, "Copied Job ID")
        end
    })
    task.spawn(function()
        local pU_1
        local pT_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(m2("Session", p_(), l1))
            Label2:SetText(m2("Players", #l0:GetPlayers() .. "/" .. tostring(l0.MaxPlayers), me))
            pT_1, pU_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local pT_2 = pT_1 and pU_1 .. " ms" or "n/a"
            Label:SetText(m2("Ping", pT_2, l1))
        end
    end)
    local SocialsGroup = l5.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = mg })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            if setclipboard then
                setclipboard(mt)
            elseif toclipboard then
                toclipboard(mt)
            end
            Library:Notify("Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            mC(mo, "Copied website link")
        end
    })
end
nh_2()
local AutomationGroup = l5.Main:AddLeftGroupbox("Automation", "bot")
AutomationGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
AutomationGroup:AddToggle("AutoFightRoll", { Text = "Auto Fight Roll", Default = false })
AutomationGroup:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
AutomationGroup:AddToggle("AutoCollectCharacters", { Text = "Auto Collect Characters", Default = false })
AutomationGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
local FilteringGroup = l5.Main:AddRightGroupbox("Filtering", "filter")
FilteringGroup:AddToggle("SkipRarity", { Text = "Skip if Rarity", Default = false })
FilteringGroup:AddDropdown("SkipRarities", { Text = "Skip Rarities", Values = Rarities, Multi = true, Default = {} })
FilteringGroup:AddDivider("Health")
FilteringGroup:AddToggle("SkipOverHealth", { Text = "Skip if Over Health", Default = false })
FilteringGroup:AddSlider("MaxBossHealth", { Text = "Max Health", Default = 1000000, Min = 100, Max = 100000000, Rounding = 0 })
local UpgradesGroup = l5.Main:AddLeftGroupbox("Upgrades", "arrow-big-up")
UpgradesGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
UpgradesGroup:AddDropdown("UpgradeList", {
    Text = "Upgrades",
    Values = mf,
    Multi = true,
    Default = { Luck = true, WalkSpeed = true, RespawnDelay = true }
})
local SellGroup = l5.Main:AddRightGroupbox("Sell", "badge-dollar-sign")
SellGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
SellGroup:AddDropdown("SellRarities", {
    Text = "Sell Rarities",
    Values = Rarities,
    Multi = true,
    Default = { Common = true, Uncommon = true }
})
SellGroup:AddToggle("SellAllInventory", { Text = "Sell Whole Inventory", Default = false })
Toggles.AutoRoll:OnChanged(fn672)
Toggles.AutoFightRoll:OnChanged(fn237)
mZ = fn734
mk = fn156
mL = function()
    local qp = m4()
    if not qp then
        return
    end
    local Claimer = qp:FindFirstChild("Claimer")
    local qp_1 = Claimer and Claimer:FindFirstChild("Hitbox")
    local qo = qp_1
    local Character = ma.Character
    local qq_1 = Character and Character:FindFirstChild("HumanoidRootPart")
    local qn = qq_1
    if not (qo and qn) then
        return
    end
    if firetouchinterest then
        pcall(function()
            firetouchinterest(qn, qo, 0)
            firetouchinterest(qn, qo, 1)
        end)
    else
        local CFrame = qn.CFrame
        qn.CFrame = qo.CFrame
        task.wait(0.05)
        qn.CFrame = CFrame
    end
end
mJ = fn476
mw = fn440
md = function()
    for k, v in mf do
        local qD = v
        if not not mQ("UpgradeList", qD) then
            local qw = l2.Stats[qD] or 1
            if qD == "Summoner" then
                qw = l2.SummonerLevel or qw
            end
            if not StatsConfig.IsMaxLevel(qD, qw) then
                local qv_2 = StatsConfig.GetUpgradeCost(qD, qw)
                if not (not qv_2 or qv_2 > l2.Money) then
                    if qD == "Summoner" then
                        pcall(function()
                            RequestSummonerUpgradeConfir:FireServer()
                        end)
                    else
                        pcall(function()
                            BuyUpgrade:FireServer(qD)
                        end)
                    end
                    task.wait(0.2)
                end
            end
        end
    end
end
na = fn485
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(worker6)
task.spawn(worker7)
task.spawn(worker8)
local function no()
    local function fJ()
        local Character = ma.Character
        local rc = Character and Character:FindFirstChildOfClass("Humanoid")
        return rc
    end
    local function fO()
        local Character = ma.Character
        local rf = Character and Character:FindFirstChild("HumanoidRootPart")
        return rf
    end
    local MovementGroup = l5.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = l5.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    mU.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if not m7("InfJump") then
            return
        end
        local rh = fJ()
        if rh then
            rh:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end)
    mY.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        local rt = if m7("NoClip") then 1 else 0
        if rt == 1 then
            local Character = ma.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local rj_1 = descendant:IsA("BasePart") and descendant.CanCollide
                    if rj_1 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    mY.RenderStepped:Connect(function(f9)
        if Library.Unloaded then
            return
        end
        if m7("WalkSpeedEnabled") then
            local ru_1 = fJ()
            if ru_1 then
                ru_1.WalkSpeed = mF("WalkSpeed", 32)
            end
        end
        if m7("Fly") then
            local ru_2 = fO()
            local rv = fJ()
            local CurrentCamera = Workspace.CurrentCamera
            if ru_2 and rv and CurrentCamera then
                rv.PlatformStand = true
                local rv_1 = Vector3.zero
                if mU:IsKeyDown(Enum.KeyCode.W) then
                    rv_1 += CurrentCamera.CFrame.LookVector
                end
                if mU:IsKeyDown(Enum.KeyCode.S) then
                    rv_1 -= CurrentCamera.CFrame.LookVector
                end
                if mU:IsKeyDown(Enum.KeyCode.A) then
                    rv_1 -= CurrentCamera.CFrame.RightVector
                end
                if mU:IsKeyDown(Enum.KeyCode.D) then
                    rv_1 += CurrentCamera.CFrame.RightVector
                end
                if mU:IsKeyDown(Enum.KeyCode.Space) then
                    rv_1 += Vector3.new(0, 1, 0)
                end
                if mU:IsKeyDown(Enum.KeyCode.LeftControl) then
                    rv_1 -= Vector3.new(0, 1, 0)
                end
                ru_2.AssemblyLinearVelocity = Vector3.zero
                if rv_1.Magnitude > 0 then
                    ru_2.CFrame = ru_2.CFrame + rv_1.Unit * mF("FlySpeed", 60) * f9
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local rD = fJ()
            if rD then
                rD.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local rF = fJ()
            if rF then
                rF.WalkSpeed = 16
            end
        end
    end)
    local function gv(gw)
        pcall(function()
            mD:SetGameplayPausedNotificationEnabled(not gw)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = mz:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not gw
            end
        end)
        if not gw then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(ma, "GameplayPaused", false)
            else
                ma.GameplayPaused = false
            end
        end)
    end
    Toggles.AntiGameplayPause:OnChanged(function()
        gv(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                gv(true)
            end
        end
    end)
    local function gN(gO)
        if not gO:IsA("ProximityPrompt") then
            return
        end
        gO.HoldDuration = 0
        gO.MaxActivationDistance = 50
        gO.RequiresLineOfSight = false
    end
    local connection
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in Workspace:GetDescendants() do
                pcall(gN, descendant)
            end
            connection = Workspace.DescendantAdded:Connect(function(gW)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(gN, gW)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    Library:OnUnload(function()
        gv(false)
        if connection then
            connection:Disconnect()
        end
        local rV = fJ()
        if rV then
            rV.PlatformStand = false
        end
    end)
end
no()
MenuGroup = l5.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddToggle("FpsBoost", { Text = "FPS Boost", Default = false })
MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect", Default = false })
local function nc_2()
    local sx
    local st
    local sv
    st = nil
    sv = nil
    sx = nil
    local sr, ss, connection, sw
    connection = nil
    sw = nil
    sr = { ParticleEmitter = true, Trail = true, Smoke = true, Fire = true, Sparkles = true }
    ss = function(g8, g9)
        pcall(function()
            g8.Enabled = g9
        end)
    end
    sx = function()
        local QualityLevel
        QualityLevel = nil
        if sw then
            return
        end
        local Terrain = Workspace:FindFirstChildOfClass("Terrain")
        QualityLevel = nil
        pcall(function()
            QualityLevel = settings().Rendering.QualityLevel
        end)
        sw = {
            QualityLevel = QualityLevel,
            GlobalShadows = mi.GlobalShadows,
            FogEnd = mi.FogEnd,
            Terrain = Terrain,
            WaterWaveSize = Terrain and Terrain.WaterWaveSize,
            WaterReflectance = Terrain and Terrain.WaterReflectance,
            Effects = {}
        }
        pcall(function()
            settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
        end)
        mi.GlobalShadows = false
        mi.FogEnd = 1000000
        if Terrain then
            Terrain.WaterWaveSize = 0
            Terrain.WaterReflectance = 0
        end
        for i, descendant in Workspace:GetDescendants() do
            if sr[descendant.ClassName] and descendant.Enabled then
                sw.Effects[#sw.Effects + 1] = descendant
                ss(descendant, false)
            end
        end
        connection = Workspace.DescendantAdded:Connect(function(ht)
            local rX = sr[ht.ClassName] and m7("FpsBoost")
            if rX then
                ss(ht, false)
            end
        end)
    end
    st = function()
        if connection then
            connection:Disconnect()
            connection = nil
        end
        local se = sw
        if not se then
            return
        end
        sw = nil
        if se.QualityLevel then
            pcall(function()
                settings().Rendering.QualityLevel = se.QualityLevel
            end)
        end
        mi.GlobalShadows = se.GlobalShadows
        mi.FogEnd = se.FogEnd
        if se.Terrain and se.Terrain.Parent then
            se.Terrain.WaterWaveSize = se.WaterWaveSize
            se.Terrain.WaterReflectance = se.WaterReflectance
        end
        for k, v in se.Effects do
            ss(v, true)
        end
    end
    sv = function(hL)
        if hL then
            sx()
        else
            st()
        end
    end
    Toggles.FpsBoost:OnChanged(function()
        sv(m7("FpsBoost"))
    end)
    if m7("FpsBoost") then
        sv(true)
    end
    Library:OnUnload(function()
        sv(false)
    end)
end
nc_2()
local function nb_3()
    local hU = false
    local function hV()
        local sz = pcall(function()
            mu:TeleportToPlaceInstance(game.PlaceId, game.JobId, ma)
        end)
        if not sz then
            pcall(function()
                mu:Teleport(game.PlaceId, ma)
            end)
        end
    end
    local function h4()
        local sB = hU or Library.Unloaded
        local sF = if sB then 1 else 0
        local sD = 2459 * sF + 1884 * (1 - sF)
        local sE = 830 * sF + 2887 * (1 - sF)
        if not ((sD * 3257 + sE * 225 + sD * sE) % 16777213 == 10236683) then
            sB = not m7("AutoReconnect")
        end
        if sB then
            return
        end
        hU = true
        task.delay(2, hV)
    end
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if not m7("AutoReconnect") then
                continue
            end
            local RobloxPromptGui = mz:FindFirstChild("RobloxPromptGui")
            local sH = RobloxPromptGui and RobloxPromptGui:FindFirstChild("promptOverlay")
            if not sH then
                continue
            end
            for i, child in sH:GetChildren() do
                local sG_2 = child.Name:find("ErrorPrompt") and child.Visible
                if sG_2 then
                    h4()
                    break
                end
            end
        end
    end)
end
nb_3()
local function nk()
    local connection
    local iq = 0
    local ir = tick()
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = MenuGroup:AddLabel("AFK triggers: 0")
    local function iu()
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        mO:CaptureController()
        mO:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        iq += 1
        ir = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. iq)
        end)
    end
    connection = ma.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(iu)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local sS = Toggles.AntiAfk.Value and tick() - ir >= 60
            if sS then
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
nk()
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(l5.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/BeatTheAnimeBoss")
mp = SaveManager:BuildConfigSection(l5.Settings)
local function ne_7()
    local function iU(iV, iW)
        local sW_1 = (iV == "Toggle" and Toggles or Options)[iW]
        local sV_2 = type(sW_1) == "table" and sW_1.Type == iV
        return sV_2 and sW_1 or nil
    end
    local function i3(i4, i5)
        local Type = i5.Type
        if Type == "Toggle" then
            return { idx = i4, type = "Toggle", value = i5.Value == true }
        elseif Type == "Slider" then
            return { idx = i4, type = "Slider", value = tostring(i5.Value) }
        elseif Type == "Dropdown" then
            return { idx = i4, type = "Dropdown", multi = i5.Multi == true, value = i5.Value }
        elseif Type == "Input" then
            local s2 = i5.Value or ""
            return { idx = i4, type = "Input", text = tostring(s2) }
        elseif Type == "ColorPicker" then
            return { idx = i4, type = "ColorPicker", value = i5.Value:ToHex(), transparency = i5.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = i4,
                type = "KeyPicker",
                mode = i5.Mode,
                key = i5.Value,
                modifiers = i5.Modifiers,
                toggled = i5.Toggled
            }
        else
            return nil
        end
    end
    local function i7()
        local s8 = {}
        for k, v in { Toggles, Options } do
            for k, v in v do
                local s9 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if s9 then
                    local s9_1 = i3(k, v)
                    if s9_1 then
                        s8[#s8 + 1] = s9_1
                    end
                end
            end
        end
        table.sort(s8, function(jh, ji)
            if jh.type ~= ji.type then
                return jh.type < ji.type
            end
            return jh.idx < ji.idx
        end)
        return { objects = s8 }
    end
    local function jj(jk)
        local tp
        tp = nil
        local tq = type(jk) ~= "table" or type(jk.idx) ~= "string" or type(jk.type) ~= "string" or SaveManager.Ignore[jk.idx]
        if tq then
            return false
        end
        tp = iU(jk.type, jk.idx)
        if not tp then
            return false
        end
        local tq_1 = pcall(function()
            if jk.type == "Input" then
                if type(jk.text) ~= "string" then
                    return
                end
                tp:SetValue(jk.text)
            elseif jk.type == "ColorPicker" then
                tp:SetValueRGB(Color3.fromHex(jk.value), jk.transparency)
            elseif jk.type == "KeyPicker" then
                tp:SetValue({ jk.key, jk.mode, jk.modifiers })
                if jk.mode == "Toggle" and jk.toggled ~= nil then
                    tp.Toggled = jk.toggled
                    tp:Update()
                end
            else
                tp:SetValue(jk.value)
            end
        end)
        return tq_1
    end
    mp:AddDivider()
    mp:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    mp:AddButton("Export Config to Clipboard", function()
        local tt_1
        local ts_1
        ts_1, tt_1 = pcall(mH.JSONEncode, mH, i7())
        if not ts_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local ts_2 = setclipboard or toclipboard
        local ts_3 = type(ts_2) ~= "function" or not pcall(ts_2, tt_1)
        if ts_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    mp:AddButton("Import Config from Clipboard Text", function()
        local ty_1
        local tw = Options.SaveManager_ImportSource.Value or ""
        local tw_1
        local tx = tostring(tw):match("^%s*(.-)%s*$")
        if tx == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        tw_1, ty_1 = pcall(mH.JSONDecode, mH, tx)
        local tx_1 = not tw_1 or type(ty_1) ~= "table" or type(ty_1.objects) ~= "table"
        if tx_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local tw_2 = 0
        for k, v in ty_1.objects do
            if jj(v) then
                tw_2 += 1
            end
        end
        if tw_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local ty_2 = tw_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(tw_2, ty_2), 6)
    end)
end
ne_7()
SaveManager:LoadAutoloadConfig()
Library:OnUnload(fn509)
