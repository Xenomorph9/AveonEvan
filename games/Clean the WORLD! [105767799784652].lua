local jg
local jC
local jj
local i0
local jI
local jm
local i3
local i6
local js
local jO
local jv
local jc
local jf
local jB
local iX
local Library
local Workspace
local i_
local jH
local jo
local jK
local Options
local jN
local i5
local Toggles
local jb
local LocalPlayer
local iW
local jh
local jG
local jk
local i1
local jJ
local jn
local i4
local jq
local jM
local i7
local ja
local jw
local function autoCleanLoop()
    while not Library.Unloaded do
        if Toggles.AutoClean.Value then
            pcall(jB)
        end
        task.wait(0.12)
    end
end
local function fn125()
    local lq = jv("PollutionList")
    for k, v in jw do
        local lr = lq[v] and iX(v)
        if lr then
            local lr_1 = js[v]
            local ls = jh(lr_1)
            local lr_2 = type(ls) == "table" and ls.success == true
            if lr_2 then
                return
            end
        end
    end
end
local function fn155()
    local l_ = jv("BuildList")
    for k, v in i7 do
        local l0 = l_[v] and ja(v)
        if l0 then
            local l0_1 = jh(i1[v])
            local l1 = type(l0_1) == "table" and l0_1.success == true
            if l1 then
                return
            end
        end
    end
end
local function fn187()
    local mu = jh("GetSkillUpgrades")
    if type(mu) ~= "table" then
        return
    end
    local costs = mu.costs
    local currencies = mu.currencies
    local mx = mu.purchased
    local my = type(costs) ~= "table" or type(currencies) ~= "table"
    if my then
        return
    end
    if type(mx) ~= "table" then
        mx = {}
    end
    local my_1 = tonumber(mu.gum) or jC()
    local my_2 = jN()
    for k, v in my_2 do
        local id = v.id
        if currencies[id] == "Gum" then
            local mz = tonumber(costs[id]) or 0
            local mz_1 = jn(mx, id)
            if mz_1 < v.cap and my_1 >= mz then
                local mz_2 = true
                if v.requiredId then
                    mz_2 = jn(mx, v.requiredId) > 0
                end
                if mz_2 then
                    local mz_3 = jh("PurchaseSkillUpgrade", id)
                    local my_4 = type(mz_3) == "table" and mz_3.success == true
                    if my_4 then
                        return
                    end
                end
            end
        end
    end
end
local function fn196()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local kk = leaderstats and leaderstats:FindFirstChild("Gum")
    local kj_1 = kk
    if kk then
        kk = tonumber(kj_1.Value)
    end
    return kk or 0
end
local function fn312(aF)
    local kr = Options[aF]
    local ks = kr and kr.Value
    local kr_1 = {}
    if type(ks) ~= "table" then
        return kr_1
    end
    for k, v in ks do
        if v then
            kr_1[k] = true
        end
    end
    return kr_1
end
local function fn334()
    local la = if not jK() then 1 else 0
    if la == 1 then
        return
    end
    local DropArea = Workspace:FindFirstChild("DropArea")
    if not DropArea then
        return
    end
    for i, child in DropArea:GetChildren() do
        if i4(child) then
            local k6_1 = jq(child)
            if k6_1 == nil then
                jH:FireServer()
            else
                jH:FireServer(k6_1)
            end
            if child.Parent then
                child:Destroy()
            end
            return
        end
    end
end
local function fn352(ae)
    local DiscordGroup = ae:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = i5 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = i5 })
end
local function fn370()
    local PrivateStats = LocalPlayer:FindFirstChild("PrivateStats")
    local ke = PrivateStats and PrivateStats:FindFirstChild("Money")
    local kd_1 = ke
    if ke then
        ke = tonumber(kd_1.Value)
    end
    return ke or 0
end
local function fn392(bW)
    local lV = jh(iW[bW])
    if type(lV) ~= "table" then
        return false
    elseif lV.unlocked == false then
        return false
    else
        local lW = tonumber(lV.count) or 0
        local lW_1 = tonumber(lV.maxCount)
        if lW_1 and lW >= lW_1 then
            return false
        end
        local lW_2 = tonumber(lV.cost) or 0
        return jf() >= lW_2
    end
end
local function fn406(T, U, V)
    return string.format("<b>%s</b> %s %s", T, jI("-", "#5a6070"), jI(U, V))
end
local function fn429(ch, ci)
    local l9 = ch and ch[ci]
    if l9 == true then
        return 1
    end
    local l9_1 = tonumber(l9)
    if l9_1 then
        return math.max(0, math.floor(l9_1))
    end
    return 0
end
local function fn460()
    for i, child in Workspace:GetChildren() do
        local kF = child.Name == "Trash Can" or string.find(child.Name, "Trash Can", 1, true) == 1
        if kF then
            return true
        end
    end
    return false
end
local function fn475(bb)
    local lh = jo[bb]
    local li = jh(lh)
    local lh_1 = jf()
    if bb == "People" then
        local lj_1 = (tonumber(li))
        local lp = if lj_1 then 1 else 0
        local ln = 1503 * lp + 783 * (1 - lp)
        local lo = 1614 * lp + 411 * (1 - lp)
        if not ((ln * 1326 + lo * 1685 + ln * lo) % 16777213 == 7138410) then
            lj_1 = 0
        end
        return lj_1 < 25 and lh_1 > 0
    elseif type(li) ~= "table" then
        return false
    elseif bb == "Gum" then
        if li.unlocked == true then
            return false
        end
        local lj_3 = tonumber(li.cost) or 0
        return lh_1 >= lj_3
    elseif li.unlocked == false then
        return false
    else
        local lj_4 = tonumber(li.count) or 0
        local lj_5 = tonumber(li.maxCount)
        if lj_5 and lj_4 >= lj_5 then
            return false
        end
        local lj_6 = tonumber(li.cost) or 0
        return lh_1 >= lj_6
    end
end
local function fn497()
    jO(false)
    if i_ then
        i_:Disconnect()
    end
    if jM then
        jM:Disconnect()
    end
    local o7 = i0()
    if o7 then
        o7.PlatformStand = false
        o7.WalkSpeed = 16
    end
end
local function fn562(aT)
    local kN = aT:GetAttribute("ThundergumBoosted") == true
    local Name = aT.Name
    if Name == "Poop" then
        local kP_1 = aT:GetAttribute("GlowingPoop") == true
        if aT:GetAttribute("BluePoop") == true then
            if kP_1 then
                return kN and "ThundergumNeonBluePoop" or "NeonBluePoop"
            end
            return kN and "ThundergumBluePoop" or "BluePoop"
        elseif aT:GetAttribute("GoldPoop") == true then
            if kP_1 then
                return kN and "ThundergumNeonGoldPoop" or "NeonGoldPoop"
            end
            return kN and "ThundergumGoldPoop" or "GoldPoop"
        elseif kP_1 then
            return kN and "ThundergumNeonPoop" or "NeonPoop"
        else
            return kN and "ThundergumPoop" or "Poop"
        end
    elseif Name == "Banana" then
        if aT:GetAttribute("DiamondBanana") == true then
            return kN and "ThundergumDiamondBanana" or "DiamondBanana"
        elseif aT:GetAttribute("GoldenBanana") == true then
            return kN and "ThundergumGoldenBanana" or "GoldenBanana"
        else
            return kN and "ThundergumBanana" or "Banana"
        end
    elseif Name == "Egg" then
        if aT:GetAttribute("DiamondEgg") == true then
            return kN and "ThundergumDiamondEgg" or "DiamondEgg"
        elseif aT:GetAttribute("GoldenEgg") == true then
            return kN and "ThundergumGoldenEgg" or "GoldenEgg"
        else
            return kN and "ThundergumEgg" or "Egg"
        end
    elseif aT:GetAttribute("GoldenPaper") == true then
        return kN and "ThundergumGoldenPaper" or "GoldenPaper"
    elseif kN then
        return "Thundergum"
    else
        return nil
    end
end
local function fn580(bB)
    local lA = jh(jc[bB])
    if type(lA) ~= "table" then
        return false
    elseif lA.unlocked == false then
        return false
    else
        local lB = tonumber(lA.level) or 0
        local lB_1 = tonumber(lA.maxLevel) or 10
        if lB >= lB_1 then
            return false
        end
        local lB_2 = tonumber(lA.cost) or 0
        return jf() >= lB_2
    end
end
local function fn609(aY)
    local kZ = not aY:IsA("BasePart") or not aY.Parent
    if kZ then
        return false
    end
    local Name = aY.Name
    if Name == "Paper" then
        return true
    end
    if Name == "Poop" or Name == "Banana" or Name == "Egg" then
        return aY:GetAttribute("TrashReady") == true
    end
    return false
end
local function fn661()
    jm(i3, "Copied Discord invite to clipboard")
end
local function fn678(J, K)
    if setclipboard then
        setclipboard(J)
    elseif toclipboard then
        toclipboard(J)
    end
    Library:Notify(K)
end
local function autoBuyPollutionLoop()
    while not Library.Unloaded do
        task.wait(0.35)
        if Toggles.AutoBuyPollution.Value then
            pcall(jJ)
        end
        if Toggles.AutoBuyUpgrades.Value then
            pcall(i6)
        end
        if Toggles.AutoBuyBuild.Value then
            pcall(jk)
        end
        if Toggles.AutoBuySkillNodes.Value then
            pcall(jb)
        end
    end
end
local function fn748()
    local mf = LocalPlayer:FindFirstChild("PlayerGui") and LocalPlayer.PlayerGui:FindFirstChild("Skill")
    local mg = mf
    if mf then
        mf = mg:FindFirstChild("Frame")
    end
    local mg_1 = mf
    if mf then
        mf = mg_1:FindFirstChild("Upgrade")
    end
    local mg_2 = mf
    if not mg_2 then
        return {}
    end
    local mf_1 = {}
    for i, child in mg_2:GetChildren() do
        if child:IsA("GuiButton") then
            local mg_3 = child:GetAttribute("UpgradeName")
            local mh = mg_3 == ""
            local mi = type(mg_3) ~= "string" or mh
            if mi then
                mg_3 = child.Name
            end
            local Cap = child:FindFirstChild("Cap")
            local mi_1 = Cap
            local mj = 1
            if mi_1 then
                local mk_1 = Cap:IsA("NumberValue") or Cap:IsA("IntValue")
                mi_1 = mk_1
            end
            if mi_1 then
                mj = math.max(1, math.floor(Cap.Value))
            end
            local mh_2 = nil
            local Required = child:FindFirstChild("Required")
            local mk_2 = Required and Required:IsA("ObjectValue") and Required.Value
            if mk_2 then
                local Value = Required.Value
                local mi_3 = Value:GetAttribute("UpgradeName")
                local ml = mi_3 == ""
                local mm = type(mi_3) ~= "string" or ml
                if mm then
                    mi_3 = Value.Name
                end
                mh_2 = mi_3
            end
            mf_1[#mf_1 + 1] = { id = mg_3, cap = mj, requiredId = mh_2 }
        end
    end
    return mf_1
end
local function fn801()
    local lI = jv("UpgradeList")
    for k, v in jj do
        local lJ = lI[v] and jG(v)
        if lJ then
            local lJ_1 = jh(jg[v])
            local lK = type(lJ_1) == "table" and lJ_1.success == true
            if lK then
                return
            end
        end
    end
end
local function fn806(Q, R)
    return string.format('<font color="%s">%s</font>', R, Q)
end
iW = nil
iX = nil
i_ = nil
i0 = nil
i1 = nil
i3 = nil
i4 = nil
i5 = nil
i6 = nil
i7 = nil
ja = nil
jb = nil
jc = nil
LocalPlayer = nil
jf = nil
jg = nil
jh = nil
Workspace = nil
jj = nil
jk = nil
jm = nil
jn = nil
jo = nil
jq = nil
Options = nil
js = nil
Toggles = nil
jv = nil
jw = nil
jB = nil
jC = nil
Library = nil
jG = nil
jH = nil
jI = nil
local iY, iZ, i2, i8, i9, jd, CoreGui, GuiService, HttpService, jx, VirtualUser, SaveManager, jA, RunService, jF
jJ = nil
jK = nil
jM = nil
jN = nil
jO = nil
local jL
local jY_1
local jR_1
RunService, jA, VirtualUser, HttpService, GuiService, CoreGui, Workspace, LocalPlayer, i9, i3, iZ, jL, jH, jR_1, jw, js, jo, jj, jg, jc, i7, i1, iW, Library, SaveManager, Toggles, Options, jd, i8, i2, iY, jF, jm, i5, jI, jx = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
jA = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
i9 = "Clean the WORLD!"
i3 = "https://discord.gg/ehKVq7pf7v"
if ((jx or not jx) and (jx or jL) and (false and not jx and (not jF or i2)) or (jI or not jx or jx and i2) and (jL and not jx and "#e8a34d") or (("#e8a34d" or jL and i2) and (jI or jL or not jF and jL) or (jx or jL or jF and jF) and (not jF and jI and (not jI or jF)))) and not ((jx or not jx) and (jx or jL) and (false and not jx and (not jF or i2)) or (jI or not jx or jx and i2) and (jL and not jx and "#e8a34d") or (("#e8a34d" or jL and i2) and (jI or jL or not jF and jL) or (jx or jL or jF and jF) and (not jF and jI and (not jI or jF)))) then
    jL = "https://rscripts.net/@Ouroboros"
    local Remotes = jR_1:WaitForChild("Remotes")
    Remotes:WaitForChild("CollectPaper")
    jH = Remotes:WaitForChild("PurchaseSkillUpgrade")
    iZ = Remotes:WaitForChild("GetSkillUpgrades")
else
    iZ = "https://rscripts.net/@Ouroboros"
    jL = ReplicatedStorage:WaitForChild("Remotes")
    jH = jL:WaitForChild("CollectPaper")
    jL:WaitForChild("PurchaseSkillUpgrade")
    jL:WaitForChild("GetSkillUpgrades")
end
jw = { "People", "Gum", "Horse", "Unicorn", "Gorilla", "DINOSAUR" }
js = {
    People = "PurchaseNPC",
    Gum = "PurchaseGum",
    Horse = "PurchaseHorse",
    Unicorn = "PurchaseUnicorn",
    Gorilla = "PurchaseGorilla",
    DINOSAUR = "PurchaseDinosaur"
}
jo = {
    People = "GetNPCCount",
    Gum = "GetGum",
    Horse = "GetHorseCount",
    Unicorn = "GetUnicornCount",
    Gorilla = "GetGorillaCount",
    DINOSAUR = "GetDinosaurCount"
}
jj = { "Paper", "Poop", "Banana", "Egg" }
jg = {
    Paper = "PurchasePaperUpgrade",
    Poop = "PurchasePoopUpgrade",
    Banana = "PurchaseBananaUpgrade",
    Egg = "PurchaseEggUpgrade"
}
jc = {
    Paper = "GetPaperUpgrade",
    Poop = "GetPoopUpgrade",
    Banana = "GetBananaUpgrade",
    Egg = "GetEggUpgrade"
}
i7 = { "Rat", "Thundergum", "Seagull", "Seaweed" }
i1 = {
    Rat = "PurchaseRat",
    Thundergum = "PurchaseThundergum",
    Seagull = "PurchaseSeagull",
    Seaweed = "PurchaseSeaweed"
}
iW = {
    Rat = "GetRatCount",
    Thundergum = "GetThundergumCount",
    Seagull = "GetSeagullCount",
    Seaweed = "GetSeaweed"
}
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
jm = fn678
i5 = fn661
jI = fn806
jx = fn406
jd = "#7fd47f"
i8 = "#6ec1ff"
i2 = "#e8a34d"
if (not js or false) and (not jF and Toggles) and false or not ((not js or false) and (not jF and Toggles) and false) then
    iY = "#8b93a3"
else
    jA = "#8b93a3"
end
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = i3, Copyable = true }, "|", i9 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
jF = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "sparkles"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in jF do
    fn352(v)
end
i0, jO, i_, jM, jf, jC, jh, jv, jK, jq, i4, jB, iX, jJ, jG, i6, ja, jk, jn, jN, jb, jY_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
jf = fn370
jC = fn196
jh = function(aw, ...)
    local km
    local kn
    km = nil
    kn = nil
    local kp_1
    local ko_1
    kn = jL:FindFirstChild(aw)
    if not kn then
        return nil
    end
    km = { ... }
    ko_1, kp_1 = pcall(function()
        return kn:InvokeServer(table.unpack(km))
    end)
    if ko_1 then
        return kp_1
    end
    return nil
end
jv = fn312
jK = fn460
jq = fn562
i4 = fn609
jB = fn334
iX = fn475
jJ = fn125
jG = fn580
if ((not jC or not jq) and (iX or not jq) and ((jY_1 or iX) and (not jq and false)) or (not jq and iX or (jY_1 or jq) or jC and jC and (jY_1 or jY_1))) and not ((not jC or not jq) and (iX or not jq) and ((jY_1 or iX) and (not jq and false)) or (not jq and iX or (jY_1 or jq) or jC and jC and (jY_1 or jY_1))) then
    jk = fn801
    jn = fn392
    ja = fn155
    i6 = fn429
else
    i6 = fn801
    ja = fn392
    jk = fn155
    jn = fn429
end
jN = fn748
jb = fn187
local function jQ()
    local mZ
    mZ = nil
    local mX, mY, Label
    mZ = "Unknown"
    pcall(function()
        local mN_1
        local mM_1
        if identifyexecutor then
            mN_1, mM_1 = identifyexecutor()
            local mO = mN_1 ~= ""
            local mP = type(mN_1) == "string" and mO
            if mP then
                local mO_1 = type(mM_1) == "string" and mM_1 ~= "" and mN_1 .. " " .. mM_1
                mZ = mO_1 or mN_1
            end
        end
    end)
    local AccountGroup = jF.Info:AddLeftGroupbox("Account", "circle-user")
    AccountGroup:AddLabel(jx("User", LocalPlayer.Name, jd), true)
    AccountGroup:AddLabel(jx("Status", "Keyless", jd), true)
    AccountGroup:AddLabel(jx("Executor", mZ, jd), true)
    local GameInfoGroup = jF.Info:AddLeftGroupbox("Game Info", "gamepad-2")
    GameInfoGroup:AddLabel(jI(i9 .. " [" .. tostring(game.PlaceId) .. "]", i8), true)
    GameInfoGroup:AddLabel(jx("Place ID", tostring(game.PlaceId), i8), true)
    Label = GameInfoGroup:AddLabel(jx("Session time", "0s", i2), true)
    mY = tostring(game.JobId)
    local m2 = #mY > 18 and string.sub(mY, 1, 18) .. "..."
    local m2_1 = m2 or mY
    GameInfoGroup:AddLabel(jx("Server", m2_1, iY), true)
    GameInfoGroup:AddButton({
        Text = "Copy join script (Job ID)",
        Func = function()
            local db = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, mY)
            jm(db, "Copied join script to clipboard")
        end
    })
    mX = os.clock()
    task.spawn(function()
        local mV_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            local mU = math.floor(os.clock() - mX)
            if mU < 60 then
                mV_1 = mU .. "s"
            elseif mU < 3600 then
                mV_1 = string.format("%dm %ds", mU // 60, mU % 60)
            else
                mV_1 = string.format("%dh %dm", mU // 3600, mU % 3600 // 60)
            end
            Label:SetText(jx("Session time", mV_1, i2))
        end
    end)
    local ScriptsGroup = jF.Info:AddRightGroupbox("Scripts", "package")
    ScriptsGroup:AddLabel(jI("Included in this hub", iY), true)
    ScriptsGroup:AddLabel(jI(i9, i8), true)
    local FeaturesGroup = jF.Info:AddRightGroupbox("Features", "list")
    FeaturesGroup:AddLabel(jI("Automation", i8), true)
    FeaturesGroup:AddLabel(jI("Misc Utilities", iY), true)
    local SocialsGroup = jF.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = i5 })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            jm(iZ, "Copied Rscripts profile to clipboard")
        end
    })
    local OuroborosHubGroup = jF.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
    OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = i5 })
    local m1_6 = {
        LTC = {
            address = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w",
            color = "#345d9d",
            label = "LTC / Litecoin",
            button = "Copy Litecoin Address",
            message = "Copied Litecoin address"
        },
        BTC = {
            address = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99",
            color = "#f7931a",
            label = "BTC / Bitcoin",
            button = "Copy Bitcoin Address",
            message = "Copied Bitcoin address"
        },
        ETH = {
            address = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
            color = "#627eea",
            label = "ETH / Ethereum",
            button = "Copy Ethereum Address",
            message = "Copied Ethereum address"
        },
        USDT = {
            address = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
            color = "#26a17b",
            label = "USDT",
            button = "Copy USDT Address",
            message = "Copied USDT address"
        },
        SOL = {
            address = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp",
            color = "#14f195",
            label = "Solana",
            button = "Copy Solana Address",
            message = "Copied Solana address"
        },
        PAYPAL = {
            address = "https://paypal.me/TheTruckerGOD",
            color = "#0070ba",
            label = "PayPal",
            button = "Copy PayPal Link",
            message = "Copied PayPal link"
        },
        VENMO = {
            address = "https://venmo.com/u/miserablemusic",
            color = "#008cff",
            label = "Venmo",
            button = "Copy Venmo Link",
            message = "Copied Venmo link"
        }
    }
    local DonationsGroup = jF.Info:AddRightGroupbox("Donations", "heart")
    DonationsGroup:AddLabel(jI("All donations are optional but appreciated.", i2), true)
    DonationsGroup:AddLabel(jI("If you donate you get a special role, just PING after you donate.", jd), true)
    DonationsGroup:AddDivider()
    for k, v in { "LTC", "BTC", "ETH", "USDT", "SOL", "PAYPAL", "VENMO" } do
        local m_
        m_ = m1_6[v]
        DonationsGroup:AddLabel(jI(m_.label, m_.color), true)
        DonationsGroup:AddButton({
            Text = m_.button,
            Func = function()
                jm(m_.address, m_.message)
            end
        })
    end
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(jI("Don't have any of the listed currencies but still wanna donate?", iY), true)
    DonationsGroup:AddLabel(jI("DM me and we'll work something out.", i8), true)
    local FaqGroup = jF.Info:AddRightGroupbox("FAQ", "circle-help")
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
jQ()
local AutomationGroup = jF.Main:AddLeftGroupbox("Automation", "bot")
AutomationGroup:AddToggle("AutoClean", { Text = "Auto Clean", Default = false })
AutomationGroup:AddToggle("AutoBuyPollution", { Text = "Auto Buy Pollution", Default = false })
AutomationGroup:AddDropdown("PollutionList", { Text = "Pollution", Values = jw, Default = jw, Multi = true, SelectAllButtons = true })
AutomationGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
AutomationGroup:AddDropdown("UpgradeList", { Text = "Upgrades", Values = jj, Default = jj, Multi = true, SelectAllButtons = true })
AutomationGroup:AddToggle("AutoBuyBuild", { Text = "Auto Buy Build", Default = false })
AutomationGroup:AddDropdown("BuildList", { Text = "Build", Values = i7, Default = i7, Multi = true, SelectAllButtons = true })
AutomationGroup:AddToggle("AutoBuySkillNodes", { Text = "Auto Buy Affordable Skill Tree Nodes", Default = false })
task.spawn(autoCleanLoop)
task.spawn(autoBuyPollutionLoop)
local function jT_1()
    local MovementGroup = jF.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    local FlyGroup = jF.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local function dT()
        local Character = LocalPlayer.Character
        local ne = Character and Character:FindFirstChildOfClass("Humanoid")
        return ne
    end
    local function dY()
        local Character = LocalPlayer.Character
        local nh = Character and Character:FindFirstChild("HumanoidRootPart")
        return nh
    end
    local function d1(d2)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not d2)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not d2
            end
        end)
        if not d2 then
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
    RunService.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local nq_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if nq_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    jA.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local ny_1 = dT()
            if ny_1 then
                ny_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    local CurrentCamera = Workspace.CurrentCamera
    RunService.RenderStepped:Connect(function(ex)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local nA_1 = dT()
            if nA_1 then
                nA_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local nA_3 = dY()
            local nB = dT()
            if nA_3 and nB then
                nB.PlatformStand = true
                local nB_1 = Vector3.zero
                if jA:IsKeyDown(Enum.KeyCode.W) then
                    nB_1 += CurrentCamera.CFrame.LookVector
                end
                if jA:IsKeyDown(Enum.KeyCode.S) then
                    nB_1 -= CurrentCamera.CFrame.LookVector
                end
                if jA:IsKeyDown(Enum.KeyCode.A) then
                    nB_1 -= CurrentCamera.CFrame.RightVector
                end
                if jA:IsKeyDown(Enum.KeyCode.D) then
                    nB_1 += CurrentCamera.CFrame.RightVector
                end
                if jA:IsKeyDown(Enum.KeyCode.Space) then
                    nB_1 += Vector3.new(0, 1, 0)
                end
                if jA:IsKeyDown(Enum.KeyCode.LeftControl) then
                    nB_1 -= Vector3.new(0, 1, 0)
                end
                nA_3.AssemblyLinearVelocity = Vector3.zero
                if nB_1.Magnitude > 0 then
                    nA_3.CFrame = nA_3.CFrame + nB_1.Unit * Options.FlySpeed.Value * ex
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local nH = dT()
            if nH then
                nH.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local nM = dT()
            if nM then
                nM.WalkSpeed = 16
            end
        end
    end)
    Toggles.AntiGameplayPause:OnChanged(function()
        d1(Toggles.AntiGameplayPause.Value)
    end)
    d1(true)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                d1(true)
            end
        end
    end)
    return dT, d1
end
i0, jO = jT_1()
local function jY_2(e_)
    local e0
    e0 = tick()
    local e1 = tick()
    pcall(function()
        for k, v in getconnections(LocalPlayer.Idled) do
            local nY = v
            pcall(function()
                nY:Disable()
            end)
        end
    end)
    local function e7()
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
        task.wait(0.1)
        VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
        e1 = tick()
    end
    local connection2 = jA.InputBegan:Connect(function()
        e0 = tick()
    end)
    local connection = jA.InputChanged:Connect(function(fh)
        local UserInputType = fh.UserInputType
        if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
            e0 = tick()
        end
    end)
    e_:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            if Toggles.AntiAfk.Value then
                local n3 = tick() - e0
                local n4 = tick() - e1
                if n3 >= 300 and n4 >= 60 then
                    pcall(e7)
                else
                    if n3 < 300 and n4 >= 300 then
                        pcall(e7)
                    end
                end
            end
        end
    end)
    return connection2, connection
end
local MenuGroup = jF.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
i_, jM = jY_2(MenuGroup)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(jF.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/CleanTheWorld")
local jV_1 = SaveManager:BuildConfigSection(jF.Settings)
SaveManager:LoadAutoloadConfig()
local function jU(fC)
    local function fD(fE, fF)
        local n8_1 = (fE == "Toggle" and Toggles or Options)[fF]
        local n7_2 = type(n8_1) == "table" and n8_1.Type == fE
        return n7_2 and n8_1 or nil
    end
    local function fN(fO, fP)
        local Type = fP.Type
        if Type == "Toggle" then
            return { idx = fO, type = "Toggle", value = fP.Value == true }
        elseif Type == "Slider" then
            return { idx = fO, type = "Slider", value = tostring(fP.Value) }
        elseif Type == "Dropdown" then
            return { idx = fO, type = "Dropdown", multi = fP.Multi == true, value = fP.Value }
        elseif Type == "Input" then
            local oc = fP.Value
            local og = if oc then 1 else 0
            local oe = 155 * og + 1141 * (1 - og)
            local of = 880 * og + 246 * (1 - og)
            if not ((oe * 2944 + of * 1680 + oe * of) % 16777213 == 2071120) then
                oc = ""
            end
            return { idx = fO, type = "Input", text = tostring(oc) }
        elseif Type == "ColorPicker" then
            return { idx = fO, type = "ColorPicker", value = fP.Value:ToHex(), transparency = fP.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = fO,
                type = "KeyPicker",
                mode = fP.Mode,
                key = fP.Value,
                modifiers = fP.Modifiers,
                toggled = fP.Toggled
            }
        else
            return nil
        end
    end
    local function fR()
        local oi = {}
        for k, v in { Toggles, Options } do
            for k, v in v do
                local oj = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if oj then
                    local oj_1 = fN(k, v)
                    if oj_1 then
                        oi[#oi + 1] = oj_1
                    end
                end
            end
        end
        table.sort(oi, function(f0, f1)
            if f0.type ~= f1.type then
                return f0.type < f1.type
            end
            return f0.idx < f1.idx
        end)
        return { objects = oi }
    end
    local function f2(f3)
        local oI
        oI = nil
        local oJ = type(f3) ~= "table" or type(f3.idx) ~= "string" or type(f3.type) ~= "string" or SaveManager.Ignore[f3.idx]
        if oJ then
            return false
        end
        oI = fD(f3.type, f3.idx)
        if not oI then
            return false
        end
        local oJ_1 = pcall(function()
            if f3.type == "Input" then
                if type(f3.text) ~= "string" then
                    return
                end
                oI:SetValue(f3.text)
            elseif f3.type == "ColorPicker" then
                oI:SetValueRGB(Color3.fromHex(f3.value), f3.transparency)
            elseif f3.type == "KeyPicker" then
                oI:SetValue({ f3.key, f3.mode, f3.modifiers })
                if f3.mode == "Toggle" and f3.toggled ~= nil then
                    oI.Toggled = f3.toggled
                    oI:Update()
                end
            else
                oI:SetValue(f3.value)
            end
        end)
        return oJ_1
    end
    fC:AddDivider()
    fC:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    fC:AddButton("Export Config to Clipboard", function()
        local oP_1
        local oO_1
        oO_1, oP_1 = pcall(HttpService.JSONEncode, HttpService, fR())
        if not oO_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local oO_2 = setclipboard or toclipboard
        local oO_3 = type(oO_2) ~= "function"
        local oU = if oO_3 then 1 else 0
        local oS = 1373 * oU + 2284 * (1 - oU)
        local oT = 3083 * oU + 447 * (1 - oU)
        if not ((oS * 1757 + oT * 2894 + oS * oT) % 16777213 == 15567522) then
            oO_3 = not pcall(oO_2, oP_1)
        end
        if oO_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    fC:AddButton("Import Config from Clipboard Text", function()
        local oX_1
        local oV = Options.SaveManager_ImportSource.Value or ""
        local oV_1
        local oW = tostring(oV):match("^%s*(.-)%s*$")
        if oW == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        oV_1, oX_1 = pcall(HttpService.JSONDecode, HttpService, oW)
        local oW_1 = not oV_1 or type(oX_1) ~= "table" or type(oX_1.objects) ~= "table"
        if oW_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local oV_2 = 0
        for k, v in oX_1.objects do
            if f2(v) then
                oV_2 += 1
            end
        end
        if oV_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local oX_2 = oV_2 == 1 and ""
        local o6 = if oX_2 then 1 else 0
        local o4 = 2207 * o6 + 478 * (1 - o6)
        local o5 = 1726 * o6 + 145 * (1 - o6)
        if not ((o4 * 482 + o5 * 404 + o4 * o5) % 16777213 == 5570360) then
            oX_2 = "s"
        end
        Library:Notify(("Imported %d setting%s"):format(oV_2, oX_2), 6)
    end)
end
jU(jV_1)
Library:OnUnload(fn497)
