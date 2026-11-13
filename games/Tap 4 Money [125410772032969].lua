local jn
local jv
local jq
local CollectionService
local EternityNum
local jE
local ja
local Options
local jw
local jz
local jN
local PlayerGui
local CurrencyClick
local jQ
local jx
local LocalPlayer
local CoreGui
local je
local jh
local jO
local Toggles
local Library
local jR
local jk
local jy
local function fn1(b9, ca)
    for k, v in CollectionService:GetTagged(b9) do
        if v.Name == ca then
            return v
        end
    end
end
local function fn29(aC, aD)
    if setclipboard then
        setclipboard(aC)
    elseif toclipboard then
        toclipboard(aC)
    end
    Library:Notify(aD)
end
local function fn43()
    local attr = PlayerGui:GetAttribute("CurrentWorld")
    local kZ = attr ~= ""
    local k_ = type(attr) == "string" and kZ
    if k_ then
        return attr
    end
    return "Cash"
end
local function worker3()
    while not Library.Unloaded do
        if je("AutoRebirth") then
            jv()
        end
        local nY = if je("AutoPrestige") then 1 else 0
        if nY == 1 then
            jw()
        end
        if je("AutoBuyPrestigeTree") then
            jE()
        end
        if je("AutoBuyUpgrades") then
            ja()
        end
        task.wait(0.25)
    end
end
local function fn80()
    return CoreGui
end
local function worker()
    while Library and not Library.Unloaded do
        jz()
        task.wait(1)
    end
end
local function fn130(bz)
    local lb_1
    local k9 = bz
    local k9_1
    local lg = if k9 then 1 else 0
    local le = 3768 * lg + 3273 * (1 - lg)
    local lf = 1551 * lg + 169 * (1 - lg)
    if not ((le * 2939 + lf * 769 + le * lf) % 16777213 == 1333826) then
        k9 = ""
    end
    local la = tostring(k9):gsub("%s+", "")
    if la == "" then
        return "10000"
    end
    k9_1, lb_1 = pcall(EternityNum.strtobnum, la)
    if k9_1 and lb_1 ~= nil then
        return lb_1
    end
    return "10000"
end
local function worker2()
    while not Library.Unloaded do
        if je("AutoClick") then
            jh()
        end
        task.wait(0.13)
    end
end
local function fn195(au, av)
    return string.format('<font color="%s">%s</font>', av, au)
end
local function fn227(aT)
    local kO = jQ(aT, {})
    if typeof(kO) ~= "table" then
        return {}
    end
    local kP = {}
    for k, v in kO do
        if v == true then
            kP[k] = true
        else
            local kO_1 = typeof(k) == "number" and typeof(v) == "string"
            if kO_1 then
                kP[v] = true
            end
        end
    end
    return kP
end
local function fn243(A)
    if cloneref then
        return cloneref(A)
    end
    return A
end
local function fn356(cV)
    local DiscordGroup = cV:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = jq })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = jq })
end
local function fn602()
    local k1 = jy()
    if k1 == "Tree" then
        pcall(function()
            CurrencyClick:HandleClick(LocalPlayer, "Tree")
        end)
        return
    end
    if k1 == "Gem" then
        jO(jk, "Gem")
        return
    end
    jO(jk, "Cash")
end
local function fn626(aO, aP)
    local kM = Options[aO]
    if kM == nil then
        return aP
    end
    return kM.Value
end
local function fn658()
    jN(jx, "Copied Discord invite to clipboard")
end
local function fn726(ax, ay, az)
    return string.format("<b>%s</b> %s %s", ax, jn("-", "#5a6070"), jn(ay, az))
end
local function fn768(aJ)
    local kJ = Toggles[aJ]
    return kJ ~= nil and kJ.Value == true
end
PlayerGui = nil
Toggles = nil
LocalPlayer = nil
CollectionService = nil
ja = nil
je = nil
jh = nil
jk = nil
CoreGui = nil
jn = nil
jq = nil
CurrencyClick = nil
jv = nil
jw = nil
jx = nil
jy = nil
jz = nil
jE = nil
Library = nil
local Players, i_, i1, i2, SaveManager, i4, i5, i7, ThemeManager, i9, jb, Workspace, jd, TeleportService, jg, ji, jj, jl, jo, RebirthsList, jr, js, HttpService, VirtualUser, jB, Prestige, jD, jF, UserInputService, jI, UpgradeHandler
EternityNum = nil
jN = nil
jO = nil
jQ = nil
jR = nil
Options = nil
local jK, RunService, jP
local jV_1
Players, RunService, UserInputService, VirtualUser, HttpService, CoreGui, jj, TeleportService, Workspace, CollectionService, LocalPlayer, PlayerGui, jR = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if not LocalPlayer or not TeleportService or CollectionService and RunService or (jj and false) or not (not LocalPlayer or not TeleportService or CollectionService and RunService or (jj and false)) then
    Players = game:GetService("Players")
else
    jj = game:GetService("Players")
end
local ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
CoreGui = game:GetService("CoreGui")
jj = game:GetService("GuiService")
TeleportService = game:GetService("TeleportService")
Workspace = game:GetService("Workspace")
CollectionService = game:GetService("CollectionService")
LocalPlayer = Players.LocalPlayer
PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
jR = fn80
if getgenv then
    getgenv().gethui = jR
end
pcall(function()
    gethui = jR
end)
if setthreadidentity then
    setthreadidentity(8)
end
jF, jx, jr, jl, jV_1 = nil, nil, nil, nil, nil
if (not jr or false or false or jr and jx and (not jV_1 or jV_1)) and not (not jr or false or false or jr and jx and (not jV_1 or jV_1)) then
    jr = "Tap 4 Money"
    jF = "https://discord.gg/ehKVq7pf7v"
    jx = "https://rscripts.net/@Ouroboros"
else
    jF = "Tap 4 Money"
    jx = "https://discord.gg/ehKVq7pf7v"
    jr = "https://rscripts.net/@Ouroboros"
end
if (jx and 22 and (jF and 22) or jV_1 and false and (jr or false) or (not jV_1 and false or false and jx or (jF and not jF or 22))) and not (jx and 22 and (jF and 22) or jV_1 and false and (jr or false) or (not jV_1 and false or false and jx or (jF and not jF or 22))) then
    jr = "https://ouroboros-hub-rbx.web.app/"
else
    jl = "https://ouroboros-hub-rbx.web.app/"
end
local jV_2 = getgenv and getgenv()
i9 = jV_2 or _G
if i9.__Ouroboros_Tap4Money then
    return
end
EternityNum, UpgradeHandler, Prestige, CurrencyClick, RebirthsList, jk, jg, jd, i7, i2 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
i9.__Ouroboros_Tap4Money = true
local Shared = ReplicatedStorage:WaitForChild("Shared")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
EternityNum = require(Shared:WaitForChild("Modules"):WaitForChild("EternityNum"))
UpgradeHandler = require(Shared:WaitForChild("Upgrades"):WaitForChild("UpgradeHandler"))
Prestige = require(Shared.Upgrades.UpgradeHandler.Prestige)
CurrencyClick = require(Shared:WaitForChild("Util"):WaitForChild("CurrencyClick"))
RebirthsList = require(Shared.resetLayers.RequirementLists.RebirthsList)
jk = fn243(Remotes:WaitForChild("GainCurrency"))
jg = fn243(Remotes:WaitForChild("GetUpgrade"))
jd = fn243(Remotes:WaitForChild("PerformReset"))
i7 = {
    Cash = { category = "Cash", tag = "MoneyUpgrade", ids = { "M1", "M2", "M3", "M4", "M5", "M6" } },
    Prestige = {
        category = "Prestige",
        tag = "PrestigeUpgrade",
        ids = {
            "PU1",
            "PU2",
            "PU3",
            "PU4",
            "PU5",
            "PU6",
            "PU7",
            "PU8",
            "PU9",
            "PU10",
            "PU11",
            "PU12",
            "PU13",
            "PU14",
            "PU15",
            "PU16",
            "PU17",
            "PU18",
            "PU19"
        }
    },
    Gem = { category = "Gem", tag = "GemUpgrade", ids = { "GU1", "GU2", "GU3", "GU4", "GU5", "GU6" } },
    Tree = { category = "Tree", tag = "TreeUpgrade", ids = { "TU1", "TU2", "TU3", "TU4" } },
    Grass = {
        category = "Grass",
        tag = "GrassUpgrade",
        ids = { "GRU1", "GRU1b", "GRU3", "GRU4", "GRU5", "GRU6" }
    },
    Flower = { category = "Flower", tag = "FlowerUpgrade", ids = { "FU1", "FU2", "FU3", "FU4" } },
    Ascension = {
        category = "Ascension",
        tag = "AscensionUpgrade",
        ids = { "AU1", "AU2", "AU3", "AU4", "AU5", "AU6", "AU7", "AU8", "AU9", "AU10", "AU11" }
    }
}
i2 = { "Cash", "Prestige", "Gem", "Tree", "Grass", "Flower", "Ascension" }
local jY = {}
for k, v in i2 do
    jY[v] = true
end
Library, ThemeManager, SaveManager, Toggles, Options, jP, jK, jI, jB, js, jD, i5, ji, jz, jn, jb, jN, jq, je, jQ, jo, jO, jy, jh, jv, i_, jw, i1, i4, jE, ja = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
jz = function()
    local function kp(U)
        local kk = not U or not U:IsA("ScreenGui")
        if kk then
            return
        end
        U.ResetOnSpawn = false
        U.IgnoreGuiInset = true
        U.DisplayOrder = math.max(U.DisplayOrder, 1000)
        pcall(function()
            U.ClipToDeviceSafeArea = false
        end)
        pcall(function()
            U.ScreenInsets = Enum.ScreenInsets.None
        end)
        if U.Parent ~= CoreGui then
            U.Parent = CoreGui
        end
    end
    kp(Library.ScreenGui)
    if Library.ActiveLoading and Library.ActiveLoading.ScreenGui then
        kp(Library.ActiveLoading.ScreenGui)
    end
    for i, v in ipairs({ "Obsidian", "ObsidianLoading" }) do
        local kq_1 = CoreGui:FindFirstChild(v) or PlayerGui:FindFirstChild(v)
        if kq_1 then
            kp(kq_1)
        end
    end
end
jz()
task.spawn(worker)
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
jP = "#7fd47f"
jK = "#6ec1ff"
jI = "#e8a34d"
jB = "#8b93a3"
js = "#e05a5a"
jn = fn195
jb = fn726
jN = fn29
jq = fn658
je = fn768
jQ = fn626
jo = fn227
jO = function(a0, ...)
    if a0 then
        pcall(function(...)
            a0:FireServer(...)
        end, ...)
    end
end
jy = fn43
jh = fn602
jD = 0
jv = function()
    local k3, k4
    local k6_1
    local k5_1
    if os.clock() - jD < 0.6 then
        return
    end
    k5_1, k6_1 = pcall(function()
        return EternityNum.bnumtofloat(LocalPlayer.Stats.Rebirth.Value)
    end)
    local k7 = not k5_1 or type(k6_1) ~= "number"
    if k7 then
        return
    end
    if EternityNum.meeq(k6_1, 2.5) then
        return
    end
    k4 = RebirthsList[k6_1 + 1]
    if type(k4) ~= "table" then
        return
    end
    k3 = false
    pcall(function()
        k3 = EternityNum.meeq(LocalPlayer.Stats.Cash.Value, k4.Price)
    end)
    if not k3 then
        return
    end
    jD = os.clock()
    jO(jd, "Rebirth")
end
i5 = 0
if jz and jE and "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/" and ((Library or jE) and false) or (false or not Library) and (false and Library) and ((Library or false) and false) or not (jz and jE and "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/" and ((Library or jE) and false) or (false or not Library) and (false and Library) and ((Library or false) and false)) then
    i_ = fn130
    jw = function()
        local lk, ll, Value, ln
        if os.clock() - i5 < 0.6 then
            return
        end
        Value = LocalPlayer.Stats.Cash.Value
        lk = false
        pcall(function()
            lk = EternityNum.meeq(Value, 10000)
        end)
        if not lk then
            return
        end
        ll = i_(jQ("PrestigeThreshold", "10000"))
        ln = false
        pcall(function()
            ln = EternityNum.meeq(Value, ll)
        end)
        if not ln then
            return
        end
        i5 = os.clock()
        jO(jd, "Prestige")
    end
else
    jw = fn130
    i_ = function()
        local lk, ll, Value, ln
        if os.clock() - i5 < 0.6 then
            return
        end
        Value = LocalPlayer.Stats.Cash.Value
        lk = false
        pcall(function()
            lk = EternityNum.meeq(Value, 10000)
        end)
        if not lk then
            return
        end
        ll = i_(jQ("PrestigeThreshold", "10000"))
        ln = false
        pcall(function()
            ln = EternityNum.meeq(Value, ll)
        end)
        if not ln then
            return
        end
        i5 = os.clock()
        jO(jd, "Prestige")
    end
end
i1 = function(bY)
    local lp, UnlockedBy
    local lr = Prestige[bY]
    if type(lr) ~= "table" then
        return false
    end
    UnlockedBy = lr.UnlockedBy
    local lr_1 = UnlockedBy == ""
    local ls = type(UnlockedBy) ~= "string"
    local lw = if ls then 1 else 0
    local lu = 3332 * lw + 1550 * (1 - lw)
    local lv = 671 * lw + 2486 * (1 - lw)
    if not ((lu * 1721 + lv * 1650 + lu * lv) % 16777213 == 9077294) then
        ls = lr_1
    end
    if ls then
        return true
    end
    lp = false
    pcall(function()
        lp = EternityNum.meeq(LocalPlayer.Upgrades[UnlockedBy].Value, 0.5)
    end)
    return lp
end
i4 = fn1
jE = function()
    local Prestige = i7.Prestige
    local lG = {}
    for k, v in Prestige.ids do
        local lE
        local lO = v
        if i1(lO) then
            lE = false
            pcall(function()
                lE = UpgradeHandler.canPurchase(LocalPlayer, lO, "Prestige", true) ~= nil
            end)
            if lE then
                lG[#lG + 1] = lO
            end
        end
    end
    if #lG == 0 then
        return
    end
    local lH = lG[math.random(1, #lG)]
    jO(jg, lH, "Prestige", i4(Prestige.tag, lH), true)
end
ja = function()
    local lR = jo("UpgradeList")
    for k, v in i2 do
        if lR[v] then
            local lQ = i7[v]
            if lQ then
                for k, v in lQ.ids do
                    local lP
                    local l4 = v
                    lP = false
                    pcall(function()
                        lP = UpgradeHandler.canPurchase(LocalPlayer, l4, lQ.category, false) ~= nil
                    end)
                    if lP then
                        local lS = i4(lQ.tag, l4)
                        jO(jg, l4, lQ.category, lS, false)
                    end
                end
            end
        end
    end
end
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = jx, Copyable = true }, "|", jF },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
ji = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in ji do
    if k ~= "Info" then
        fn356(v)
    end
end
local AutomationGroup = ji.Main:AddLeftGroupbox("Automation", "bot")
AutomationGroup:AddToggle("AutoClick", { Text = "Auto Click", Default = false })
AutomationGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
AutomationGroup:AddDivider("Prestige")
AutomationGroup:AddToggle("AutoPrestige", { Text = "Auto Prestige", Default = false })
AutomationGroup:AddInput("PrestigeThreshold", { Text = "Prestige Threshold", Default = "10000", Numeric = false, Finished = true })
AutomationGroup:AddToggle("AutoBuyPrestigeTree", { Text = "Auto Buy Prestige Tree", Default = false })
AutomationGroup:AddDivider("Upgrades")
AutomationGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
AutomationGroup:AddDropdown("UpgradeList", { Text = "Upgrades", Values = i2, Default = jY, Multi = true, Expandable = true, ExpandColumns = 2 })
local function jW_2()
    local mU
    local m_
    mU = nil
    m_ = nil
    local Label, Label2, Label3, mY, mZ
    local function m0()
        local l5 = hookfunction ~= nil
        local l6 = hookmetamethod ~= nil
        local l7 = getrawmetatable ~= nil
        local l8 = setrawmetatable ~= nil
        local l9 = getgc ~= nil
        local ma = getgenv ~= nil
        local mb = getreg ~= nil
        local mc = getconnections ~= nil
        local md = firesignal ~= nil
        local me = getcallbackvalue ~= nil
        local mf = setclipboard ~= nil
        local mg = getcustomasset ~= nil
        local mh = getnamecallmethod ~= nil
        local mi = isexecutorclosure ~= nil
        local mj = fireproximityprompt ~= nil
        local mk = firetouchinterest ~= nil
        local ml = WebSocket ~= nil
        local mm = readfile ~= nil
        local mn = writefile ~= nil
        local mp = (request or http_request) ~= nil
        local mr = (debug and debug.getupvalues) ~= nil
        local mt = (debug and debug.setupvalue) ~= nil
        local mu = 0
        local mv = { l5, l6, l7, l8, l9, ma, mb, mc, md, me, mf, mg, mh, mi, mj, mk, ml, mm, mn, mp, mr, mt }
        for i, v in ipairs(mv) do
            if v then
                mu += 1
            end
        end
        local l5_1 = mu / #mv
        if l5_1 >= 0.9 then
            return jn("Full Support", jP)
        elseif l5_1 >= 0.6 then
            return jn("Half Support", jI)
        else
            return jn("Low Support", js)
        end
    end
    m_ = "Unknown"
    pcall(function()
        local mE_1
        local mD_1
        if identifyexecutor then
            mE_1, mD_1 = identifyexecutor()
            local mF = mE_1 ~= ""
            local mG = type(mE_1) == "string" and mF
            if mG then
                local mF_1 = type(mD_1) == "string" and mD_1 ~= "" and mE_1 .. " " .. mD_1
                local mD_2 = mF_1
                local mK = if mD_2 then 1 else 0
                local mI = 4052 * mK + 3874 * (1 - mK)
                local mJ = 2551 * mK + 173 * (1 - mK)
                if not ((mI * 2341 + mJ * 635 + mI * mJ) % 16777213 == 4665056) then
                    mD_2 = mE_1
                end
                m_ = mD_2
            end
        end
    end)
    local m1 = m0()
    mU = os.clock()
    mY = function()
        local mL = math.floor(os.clock() - mU)
        if mL < 60 then
            return mL .. "s"
        elseif mL < 3600 then
            return string.format("%dm %ds", mL // 60, mL % 60)
        else
            return string.format("%dh %dm", mL // 3600, mL % 3600 // 60)
        end
    end
    local UserGroup = ji.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(jb("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, jP), true)
    UserGroup:AddLabel(jb("UserId", tostring(LocalPlayer.UserId), jK), true)
    UserGroup:AddLabel(jb("Executor", m_ .. "  " .. m1, jP), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(jb("Session", mY(), jI), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            jN(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            jN("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = ji.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(jb("Game", jF, jK), true)
    Label2 = SessionGroup:AddLabel(jb("Players", "0/0", jP), true)
    mZ = tostring(game.JobId)
    local m1_1 = #mZ > 18 and string.sub(mZ, 1, 18) .. "..."
    local m1_2 = m1_1 or mZ
    SessionGroup:AddLabel(jb("Job", m1_2, jB), true)
    Label = SessionGroup:AddLabel(jb("Ping", "0 ms", jI), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            TeleportService:Teleport(game.PlaceId, LocalPlayer)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            jN(mZ, "Copied Job ID")
        end
    })
    task.spawn(function()
        local mR_1
        local mQ_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(jb("Session", mY(), jI))
            Label2:SetText(jb("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), jP))
            mQ_1, mR_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local mQ_2 = mQ_1 and mR_1 .. " ms" or "n/a"
            Label:SetText(jb("Ping", mQ_2, jI))
        end
    end)
    local SocialsGroup = ji.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = jq })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            jN(jr, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            jN(jl, "Copied website link")
        end
    })
end
local function jX_1()
    local function ee()
        local Character = LocalPlayer.Character
        local m5 = Character and Character:FindFirstChildOfClass("Humanoid")
        return m5
    end
    local function ej()
        local Character = LocalPlayer.Character
        local nb = Character and Character:FindFirstChild("HumanoidRootPart")
        return nb
    end
    local MovementGroup = ji.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = ji.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local CurrentCamera = Workspace.CurrentCamera
    local connection
    local function et(eu)
        pcall(function()
            jj:SetGameplayPausedNotificationEnabled(not eu)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not eu
            end
        end)
        if not eu then
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
    local function eG(eH)
        if not eH:IsA("ProximityPrompt") then
            return
        end
        eH.HoldDuration = 0
        eH.MaxActivationDistance = 50
        eH.RequiresLineOfSight = false
    end
    RunService.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if je("NoClip") then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    local ni_1 = descendant:IsA("BasePart") and descendant.CanCollide
                    if ni_1 then
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
        if je("InfJump") then
            local nq = ee()
            if nq then
                nq:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    RunService.RenderStepped:Connect(function(eX)
        if Library.Unloaded then
            return
        end
        if je("WalkSpeedEnabled") then
            local ns_1 = ee()
            if ns_1 then
                ns_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if je("Fly") then
            local ns_2 = ej()
            local nt = ee()
            if ns_2 and nt then
                nt.PlatformStand = true
                local nt_1 = Vector3.zero
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    nt_1 += CurrentCamera.CFrame.LookVector
                end
                local ny = if UserInputService:IsKeyDown(Enum.KeyCode.S) then 1 else 0
                if ny == 1 then
                    nt_1 -= CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    nt_1 -= CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    nt_1 += CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    nt_1 += Vector3.new(0, 1, 0)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    nt_1 -= Vector3.new(0, 1, 0)
                end
                ns_2.AssemblyLinearVelocity = Vector3.zero
                if nt_1.Magnitude > 0 then
                    ns_2.CFrame = ns_2.CFrame + nt_1.Unit * Options.FlySpeed.Value * eX
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local nz = ee()
            if nz then
                nz.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local nE = ee()
            if nE then
                nE.WalkSpeed = 16
            end
        end
    end)
    Toggles.AntiGameplayPause:OnChanged(function()
        et(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if je("AntiGameplayPause") then
                et(true)
            end
        end
    end)
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in ipairs(Workspace:GetDescendants()) do
                pcall(eG, descendant)
            end
            connection = Workspace.DescendantAdded:Connect(function(fr)
                local nK = if je("InstantProximityPrompt") then 1 else 0
                if nK == 1 then
                    pcall(eG, fr)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    Library:OnUnload(function()
        et(false)
        if connection then
            connection:Disconnect()
            connection = nil
        end
        local nS = ee()
        if nS then
            nS.PlatformStand = false
            nS.WalkSpeed = 16
        end
    end)
end
jW_2()
jX_1()
task.spawn(worker2)
task.spawn(worker3)
local function jV_3()
    local MenuGroup = ji.Settings:AddLeftGroupbox("Menu")
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local fN = 0
    local fO = tick()
    local Label
    local function fQ()
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        fN += 1
        fO = tick()
        if Label then
            pcall(function()
                Label:SetText("AFK triggers: " .. fN)
            end)
        end
    end
    local connection = LocalPlayer.Idled:Connect(function()
        local n3 = if je("AntiAfk") then 1 else 0
        if n3 == 1 then
            pcall(fQ)
        end
    end)
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Label = MenuGroup:AddLabel("AFK triggers: 0")
    MenuGroup:AddButton({
        Text = "Unload UI",
        Func = function()
            Library:Unload()
        end
    })
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local n4 = je("AntiAfk") and tick() - fO >= 60
            if n4 then
                pcall(fQ)
            end
        end
    end)
    Library:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
        i9.__Ouroboros_Tap4Money = nil
    end)
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("OuroborosHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(ji.Settings)
    ThemeManager:LoadDefault()
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/Tap4Money")
    local gg = SaveManager:BuildConfigSection(ji.Settings)
    local function gh(gi, gj)
        local n8_1 = (gi == "Toggle" and Toggles or Options)[gj]
        local n7_2 = type(n8_1) == "table" and n8_1.Type == gi
        return n7_2 and n8_1 or nil
    end
    local function gq(gr, gs)
        local Type = gs.Type
        if Type == "Toggle" then
            return { idx = gr, type = "Toggle", value = gs.Value == true }
        elseif Type == "Slider" then
            return { idx = gr, type = "Slider", value = tostring(gs.Value) }
        elseif Type == "Dropdown" then
            return { idx = gr, type = "Dropdown", multi = gs.Multi == true, value = gs.Value }
        elseif Type == "Input" then
            local of = gs.Value or ""
            return { idx = gr, type = "Input", text = tostring(of) }
        elseif Type == "ColorPicker" then
            return { idx = gr, type = "ColorPicker", value = gs.Value:ToHex(), transparency = gs.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = gr,
                type = "KeyPicker",
                mode = gs.Mode,
                key = gs.Value,
                modifiers = gs.Modifiers,
                toggled = gs.Toggled
            }
        else
            return nil
        end
    end
    local function gu()
        local oi = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local oj = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if oj then
                    local oj_1 = gq(k, v)
                    if oj_1 then
                        oi[#oi + 1] = oj_1
                    end
                end
            end
        end
        table.sort(oi, function(gD, gE)
            if gD.type ~= gE.type then
                return gD.type < gE.type
            end
            return gD.idx < gE.idx
        end)
        return { objects = oi }
    end
    local function gF(gG)
        local oG
        oG = nil
        local oH = type(gG) ~= "table" or type(gG.idx) ~= "string" or type(gG.type) ~= "string" or SaveManager.Ignore[gG.idx]
        if oH then
            return false
        end
        oG = gh(gG.type, gG.idx)
        if not oG then
            return false
        end
        local oH_1 = pcall(function()
            if gG.type == "Input" then
                if type(gG.text) ~= "string" then
                    return
                end
                oG:SetValue(gG.text)
            elseif gG.type == "ColorPicker" then
                oG:SetValueRGB(Color3.fromHex(gG.value), gG.transparency)
            elseif gG.type == "KeyPicker" then
                oG:SetValue({ gG.key, gG.mode, gG.modifiers })
                if gG.mode == "Toggle" and gG.toggled ~= nil then
                    oG.Toggled = gG.toggled
                    oG:Update()
                end
            else
                oG:SetValue(gG.value)
            end
        end)
        return oH_1
    end
    gg:AddDivider()
    gg:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    gg:AddButton({
        Text = "Export Config to Clipboard",
        Func = function()
            local oK_1
            local oJ_1
            oJ_1, oK_1 = pcall(HttpService.JSONEncode, HttpService, gu())
            if not oJ_1 then
                Library:Notify("Failed to encode the config")
                return
            end
            local oJ_2 = setclipboard or toclipboard
            local oJ_3 = type(oJ_2) ~= "function" or not pcall(oJ_2, oK_1)
            if oJ_3 then
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Config copied to clipboard", 6)
        end
    })
    gg:AddButton({
        Text = "Import Config from Clipboard Field",
        Func = function()
            local oP_1
            local oN = Options.SaveManager_ImportSource.Value or ""
            local oN_1
            local oO = tostring(oN):match("^%s*(.-)%s*$")
            if oO == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            oN_1, oP_1 = pcall(HttpService.JSONDecode, HttpService, oO)
            local oO_1 = not oN_1 or type(oP_1) ~= "table" or type(oP_1.objects) ~= "table"
            if oO_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            local oN_2 = 0
            for i, v in ipairs(oP_1.objects) do
                if gF(v) then
                    oN_2 += 1
                end
            end
            if oN_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local oP_2 = oN_2 == 1 and ""
            local o1 = if oP_2 then 1 else 0
            local o_ = 927 * o1 + 1854 * (1 - o1)
            local o0 = 1475 * o1 + 210 * (1 - o1)
            if not ((o_ * 754 + o0 * 3705 + o_ * o0) % 16777213 == 7531158) then
                oP_2 = "s"
            end
            Library:Notify(("Imported %d setting%s"):format(oN_2, oP_2), 6)
        end
    })
    SaveManager:LoadAutoloadConfig()
end
jV_3()
