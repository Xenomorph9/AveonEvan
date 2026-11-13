local sK
local CoreGui
local sN
local s8
local su
local sx
local te
local sW
local tk
local sk
local s1
local sG
local sJ
local s4
local EquipBest
local r4
local sP
local Rebirth
local sa
local LocalPlayer
local td
local sd
local Label
local sY
local sC
local BuyZone
local sF
local r3
local sp
local sL
local ss
local sO
local Toggles
local tc
local sR
local sy
local sU
local ClaimIndex
local sX
local ti
local sE
local si
local Library
local s2
local sH
local function fn17(gG)
    local Tokens = sE.Tokens
    local yJ = sE.Tokens[gG] or 0
    Tokens[gG] = yJ + 1
    return sE.Tokens[gG]
end
local function fn85(hL)
    sE.KeepEquipped = hL == true
end
local function fn211(f5)
    local yo = sH.Characters and sH.Characters[f5.Name]
    local yo_1 = type(yo) == "table" and type(yo.Rarity) == "number" and sx[yo.Rarity]
    local yq = yo_1 or "?"
    local yq_1 = type(yo) == "table" and type(yo.Name) == "string" and yo.Name
    local yp_1 = yq_1
    local yu = if yp_1 then 1 else 0
    local ys = 2876 * yu + 2175 * (1 - yu)
    local yt = 2419 * yu + 538 * (1 - yu)
    if not ((ys * 105 + yt * 150 + ys * yt) % 16777213 == 7621874) then
        yp_1 = f5.Name
    end
    return yp_1, yq
end
local function fn258(dT)
    local wN = type(dT) ~= "table"
    local wR = if wN then 1 else 0
    local wP = 1263 * wR + 2646 * (1 - wR)
    local wQ = 697 * wR + 2247 * (1 - wR)
    if not ((wP * 3235 + wQ * 3129 + wP * wQ) % 16777213 == 7147029) then
        wN = dT.Dead == true
    end
    if wN then
        return false
    end
    local wN_1 = type(dT.Extra) ~= "table" or dT.Extra.Name ~= "Money"
    if wN_1 then
        return false
    elseif typeof(dT.Position) ~= "Vector3" then
        return false
    else
        local CanCollect = dT.CanCollect
        if CanCollect == nil then
            return true
        elseif type(CanCollect) ~= "table" then
            return false
        else
            return table.find(CanCollect, LocalPlayer.Name) ~= nil
        end
    end
end
local function fn260(hP)
    local y8 = hP == hP
    local y9 = type(hP) == "number" and y8
    if y9 then
        sE.KeepBest = math.clamp(math.floor(hP), 0, 20)
    end
end
local function fn294(be)
    if type(be) ~= "number" then
        return false
    end
    local uQ = sx[be]
    return uQ ~= nil and sE.SelectedRarities[uQ] == true
end
local function fn376(fs)
    return string.format('<font color="%s"><b>Catch</b></font> <font color="%s">-</font> <font color="%s">%s</font>', sa, r4, sa, td(fs))
end
local function fn384(f3)
    if type(f3) ~= "number" then
        return "n/a"
    end
    return string.format("%.2f%%", f3)
end
local function fn396(hN)
    sE.KeepOneOfEach = hN == true
end
local function fn411(cz)
    local vM_1
    local vK = type(cz) ~= "table" or type(cz.Money) ~= "number"
    if vK then
        return false
    end
    local vK_1 = type(cz.Rebirth) == "number" and cz.Rebirth
    local vL = vK_1 or 0
    local vL_1
    vL_1, vM_1 = pcall(sH.GetRebirthPrice, math.max(0, math.floor(vL)))
    local vK_3 = vL_1 and type(vM_1) == "number" and cz.Money >= vM_1
    return vK_3
end
local function fn415(hD)
    local y0 = sd[hD]
    if y0 then
        sE.CatchBall = y0
    end
end
local function fn417(hA)
    sE.SellRarities = sK(hA)
end
local function fn443()
    local CharacterSpawns = sN:FindFirstChild("CharacterSpawns")
    local uI = CharacterSpawns and CharacterSpawns:FindFirstChild("Characters")
    return uI
end
local function fn452(en)
    local xd = {}
    if type(en) == "table" then
        for k, v in en do
            local xe_1 = v == true and type(k) == "string" and ss[k]
            if xe_1 then
                xd[k] = true
            else
                local xe_2 = type(v) == "string" and ss[v]
                if xe_2 then
                    xd[v] = true
                end
            end
        end
    else
        local xe_3 = type(en) == "string" and ss[en]
        if xe_3 then
            xd[en] = true
        end
    end
    return xd
end
local function fn551()
    local Character = LocalPlayer.Character
    local uC = Character and Character:FindFirstChildOfClass("Humanoid")
    return uC
end
local function fn571(hx)
    sE.SelectedRarities = sK(hx)
end
local function fn573()
    return sE.Status
end
local function fn604(hJ)
    local y5 = hJ == hJ
    local y6 = type(hJ) == "number" and y5
    if y6 then
        sE.SellDelay = math.clamp(hJ, 0.2, 5)
    end
end
local function fn681()
    local CatchGroup = sF.Main:AddLeftGroupbox("Catch", "target")
    Label = CatchGroup:AddLabel(s8("Idle"), true)
    CatchGroup:AddDivider()
    CatchGroup:AddToggle("AutoCatch", {
        Text = "Auto Catch",
        Default = false,
        Callback = function(iu)
            tc.SetFlag("AutoCatch", iu)
        end
    })
    CatchGroup:AddDropdown("CatchRarities", {
        Text = "Rarity Filter",
        Values = sx,
        Multi = true,
        Default = sx,
        Expandable = true,
        Callback = function(iy)
            tc.SetSelectedRarities(iy)
        end
    })
    CatchGroup:AddDropdown("CatchBall", {
        Text = "Capture Ball",
        Values = si,
        Default = 1,
        Callback = function(iB)
            tc.SetCatchBall(iB)
        end
    })
    CatchGroup:AddSlider("CatchDelay", {
        Text = "Catch Delay",
        Default = 0.45,
        Min = 0.2,
        Max = 3,
        Rounding = 2,
        Suffix = "s",
        Callback = function(iD)
            tc.SetCatchDelay(iD)
        end
    })
    tc.SetSelectedRarities(sx)
    tc.SetCatchBall(si[1])
    sU("Idle")
    local SellGroup = sF.Main:AddLeftGroupbox("Sell", "coins")
    SellGroup:AddToggle("AutoSell", {
        Text = "Auto Sell Characters",
        Default = false,
        Callback = function(iH)
            tc.SetFlag("AutoSell", iH)
        end
    })
    local iJ = SellGroup:AddDependencyBox()
    iJ:AddDropdown("SellRarities", {
        Text = "Sell Rarities",
        Values = sx,
        Multi = true,
        Default = { "Common" },
        Expandable = true,
        Callback = function(iK)
            tc.SetSellRarities(iK)
        end
    })
    iJ:AddToggle("KeepEquipped", {
        Text = "Keep Equipped",
        Default = true,
        Callback = function(iM)
            tc.SetKeepEquipped(iM)
        end
    })
    iJ:AddToggle("KeepOneOfEach", {
        Text = "Keep One Of Each",
        Default = false,
        Callback = function(iO)
            tc.SetKeepOneOfEach(iO)
        end
    })
    iJ:AddSlider("KeepBest", {
        Text = "Keep Best",
        Default = 0,
        Min = 0,
        Max = 10,
        Rounding = 0,
        Callback = function(iQ)
            tc.SetKeepBest(iQ)
        end
    })
    iJ:AddSlider("SellDelay", {
        Text = "Sell Delay",
        Default = 0.5,
        Min = 0.2,
        Max = 3,
        Rounding = 2,
        Suffix = "s",
        Callback = function(iS)
            tc.SetSellDelay(iS)
        end
    })
    iJ:SetupDependencies({ { Toggles.AutoSell, true } })
    tc.SetSellRarities({ "Common" })
    tc.SetKeepEquipped(true)
    tc.SetKeepOneOfEach(false)
    tc.SetKeepBest(0)
    tc.SetSellDelay(0.5)
    local AutomationGroup = sF.Main:AddRightGroupbox("Automation", "bot")
    AutomationGroup:AddToggle("AutoRebirth", {
        Text = "Auto Rebirth",
        Default = false,
        Callback = function(iW)
            tc.SetFlag("AutoRebirth", iW)
        end
    })
    AutomationGroup:AddToggle("AutoEquipBest", {
        Text = "Auto Equip Best",
        Default = false,
        Callback = function(iY)
            tc.SetFlag("AutoEquipBest", iY)
        end
    })
    AutomationGroup:AddToggle("AutoBuyUpgrades", {
        Text = "Auto Buy Affordable Upgrades",
        Default = false,
        Callback = function(i_)
            tc.SetFlag("AutoBuyUpgrades", i_)
        end
    })
    AutomationGroup:AddToggle("AutoBuyZones", {
        Text = "Auto Buy Zones",
        Default = false,
        Callback = function(i1)
            tc.SetFlag("AutoBuyZones", i1)
        end
    })
    AutomationGroup:AddToggle("AutoClaimIndex", {
        Text = "Auto Claim Index",
        Default = false,
        Callback = function(i3)
            tc.SetFlag("AutoClaimIndex", i3)
        end
    })
    AutomationGroup:AddToggle("AutoBuyBalls", {
        Text = "Auto Buy Capture Balls",
        Default = false,
        Callback = function(i5)
            tc.SetFlag("AutoBuyBalls", i5)
        end
    })
    AutomationGroup:AddToggle("AutoCollectGold", {
        Text = "Auto Collect Dropped Gold",
        Default = false,
        Callback = function(i7)
            tc.SetFlag("AutoCollectGold", i7)
        end
    })
end
local function fn684(cU, cV, cW, cX)
    local vW = cX > 6 or type(cV) ~= "string"
    if vW then
        return
    end
    local vW_1 = sH.Upgrades and sH.Upgrades[cV]
    if type(vW_1) ~= "table" then
        return
    end
    for k, v in pairs(vW_1) do
        if type(v) == "table" then
            local vW_2 = sH.UpgradeState(cU, cV, k)
            local vX_1 = vW_2 == "Unlocked" and type(v.Price) == "number" and sX(cU, v) >= v.Price
            if vX_1 then
                table.insert(cW, { menu = cV, id = k, price = v.Price })
            end
            if type(v.SubMenu) == "string" then
                sk(cU, v.SubMenu, cW, cX + 1)
            end
        end
    end
end
local function fn725(fq)
    return (tostring(fq):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
end
local function fn729(h2, h3)
    local zg = s2(setclipboard) and setclipboard
    local zh = zg
    if not zh then
        local zg_1 = s2(toclipboard) and toclipboard
        zh = zg_1 or nil
    end
    local zg_2 = zh
    if type(zg_2) ~= "function" then
        Library:Notify("Clipboard unavailable", 4)
        return
    end
    if pcall(zg_2, tostring(h2)) then
        local zg_3 = h3 or "Copied"
        Library:Notify(zg_3, 4)
    else
        Library:Notify("Clipboard copy failed", 4)
    end
end
local function fn827(cr)
    local vE = type(cr) ~= "table" or type(cr.MaxZone) ~= "number"
    local vJ = if vE then 1 else 0
    local vH = 1532 * vJ + 3364 * (1 - vJ)
    local vI = 272 * vJ + 875 * (1 - vJ)
    if not ((vH * 2961 + vI * 237 + vH * vI) % 16777213 == 5017420) then
        vE = type(cr.Money) ~= "number"
    end
    if vE then
        return false
    end
    local Zones = sH.Zones
    if type(Zones) ~= "table" then
        return false
    end
    if cr.MaxZone >= #Zones then
        return false
    end
    local vF_1 = Zones[cr.MaxZone]
    local vE_2 = type(vF_1) ~= "table" or type(vF_1.Price) ~= "number"
    if vE_2 then
        return false
    end
    return cr.Money >= vF_1.Price
end
local function fn835()
    ti(sG, "Copied Discord invite")
end
local function fn842(bv, bw)
    local u5_1
    local u4_1
    if bw == "Capture1" then
        u4_1, u5_1 = pcall(sH.GetModifiers, bv.Upgrades)
        local u6 = u4_1 and type(u5_1) == "table" and u5_1.UnlockCapture1 == true
        if u6 then
            return true
        end
        return false
    end
    local Inventory = bv.Inventory
    local u5_2 = type(Inventory) == "table" and Inventory[bw]
    local u5_3 = type(u5_2) == "number" and u5_2 > 0
    return u5_3
end
local function fn879()
    return CoreGui
end
local function fn888(ij)
    local DiscordGroup = ij:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = sR })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = sR })
end
local function fn891()
    gethui = r3
end
local function fn924()
    return sE.CatchStatus
end
local function fn927(fx)
    sE.CatchStatus = tostring(fx)
    if Label then
        pcall(function()
            Label:SetText(s8(sE.CatchStatus))
        end)
    end
end
local function fn974(hH)
    local y2 = hH == hH
    local y3 = type(hH) == "number" and y2
    if y3 then
        sE.CatchDelay = math.clamp(hH, 0.2, 5)
    end
end
local function fn995()
    local Character = LocalPlayer.Character
    local uw = Character and Character:FindFirstChild("HumanoidRootPart")
    return uw
end
local function fn1012(bM)
    return bM:GetAttribute("CaughtBy" .. tostring(LocalPlayer.UserId)) == true
end
local function fn1022(aj)
    return type(aj) == "function"
end
local function fn1039()
    local wy_1, wy_2, wy_3
    local DestroyAllDrops = sO.DestroyAllDrops
    local ww_3
    if type(DestroyAllDrops) ~= "function" then
        return nil
    end
    local wx = type(debug) == "table" and type(debug.getupvalue) == "function"
    local wx_1, wx_2, wx_3
    if wx then
        wx_1, wy_1 = pcall(debug.getupvalue, DestroyAllDrops, 1)
        local wz = wx_1 and type(wy_1) == "table"
        if wz then
            return wy_1
        end
        if type(getupvalues) == "function" then
            wx_2, wy_2 = pcall(getupvalues, DestroyAllDrops)
            if ww_3 then
                for k, v in pairs(wy_2) do
                    if type(v) == "table" then
                        for k, v2 in pairs(v) do
                            local ww_2 = type(v2) == "table" and type(v2.Extra) == "table" and v2.Extra.Name == "Money"
                            if ww_2 then
                                return v
                            end
                        end
                    end
                end
            end
        end
        return nil
    end
    if type(getupvalues) == "function" then
        wx_3, wy_3 = pcall(getupvalues, DestroyAllDrops)
        ww_3 = wx_3 and type(wy_3) == "table"
        if ww_3 then
            for k, v in pairs(wy_3) do
                if type(v) == "table" then
                    for k, v2 in pairs(v) do
                        local ww_4 = type(v2) == "table" and type(v2.Extra) == "table" and v2.Extra.Name == "Money"
                        if ww_4 then
                            return v
                        end
                    end
                end
            end
        end
    end
    return nil
end
local function fn1073()
    local us_1
    local ur_1
    if not sW() then
        return nil
    end
    ur_1, us_1 = pcall(sH.GetData)
    local ut = ur_1 and type(us_1) == "table"
    if ut then
        return us_1
    end
    return nil
end
local function fn1077(ew)
    local xp = {}
    local Equipped = ew.Equipped
    local xr = sE.KeepEquipped and type(Equipped) == "table"
    if xr then
        for i, v in ipairs(Equipped) do
            xp[v] = true
        end
    end
    local KeepBest = sE.KeepBest
    local xr_1 = type(KeepBest) == "number" and KeepBest > 0 and type(ew.Characters) == "table" and type(ew.Characters.Entries) == "table"
    if xr_1 then
        local xr_2 = {}
        for k, v in pairs(ew.Characters.Entries) do
            local xs_1 = type(v) == "table" and type(v.Name) == "string"
            if xs_1 then
                local xs_2 = sH.Characters and sH.Characters[v.Name]
                local xs_3 = type(xs_2) == "table" and type(xs_2.Damage) == "number" and xs_2.Damage
                local xt_1 = xs_3 or 0
                table.insert(xr_2, { id = k, damage = xt_1 })
            end
        end
        table.sort(xr_2, function(eO, eP)
            return eO.damage > eP.damage
        end)
        local xs_5 = math.min(KeepBest, #xr_2)
        local xM = 1
        while xM <= xs_5 do
            local xN = xM
            xp[xr_2[xN].id] = true
            xM += 1
        end
    end
    return xp
end
local function fn1125(ag)
    local up = typeof(cloneref) == "function" and typeof(ag) == "Instance"
    if up then
        return cloneref(ag)
    end
    return ag
end
local function fn1195(cI, cJ)
    local vO = cJ.PriceType or "Coins"
    local UpgradePriceTypes = sH.UpgradePriceTypes
    local vQ = type(UpgradePriceTypes) == "table" and (UpgradePriceTypes[vO] or UpgradePriceTypes.Coins)
    local vP_1 = type(vQ) ~= "table" or type(vQ.DataKey) ~= "string"
    if vP_1 then
        return cI.Money or 0
    end
    local vP_3 = cI[vQ.DataKey]
    local vO_3 = type(vP_3) == "number" and vP_3
    return vO_3 or 0
end
local function fn1209(a8)
    if typeof(a8) ~= "Instance" then
        return nil
    end
    local uK = sH.Characters and sH.Characters[a8.Name]
    local uK_1 = type(uK) == "table" and type(uK.Rarity) == "number"
    if uK_1 then
        return uK.Rarity
    end
    return nil
end
local function fn1214()
    for k in pairs(sE.Flags) do
        sE.Flags[k] = false
        sL(k)
    end
end
local function fn1247(bG)
    local CatchBall = sE.CatchBall
    if sY(bG, CatchBall) then
        return CatchBall
    end
    local vc = CatchBall ~= "Capture1" and sY(bG, "Capture1")
    if vc then
        return "Capture1"
    end
    return nil
end
local function fn1274(ch)
    if type(ch) ~= "table" then
        return false
    end
    local vx = sH.GetIndexRewards("Base")
    if type(vx) ~= "table" then
        return false
    end
    local vy = 0
    local vz = type(ch.IndexClaimed) == "table" and type(ch.IndexClaimed.Base) == "number"
    if vz then
        vy = math.max(0, math.floor(ch.IndexClaimed.Base))
    end
    local vz_1 = vx[vy + 1]
    local vx_1 = type(vz_1) ~= "table" or type(vz_1[1]) ~= "number"
    if vx_1 then
        return false
    end
    local vx_2 = sH.GetIndexUniqueCount(ch, "Base")
    local vy_1 = type(vx_2) == "number" and vx_2 >= vz_1[1]
    return vy_1
end
local function fn1294(gZ, g_)
    if sE.Flags[gZ] == nil then
        return
    end
    sE.Flags[gZ] = g_ == true
    if not sE.Flags[gZ] then
        sL(gZ)
        if gZ == "AutoCatch" then
            sU("Idle")
        end
        return
    end
    if gZ == "AutoCatch" then
        sU("Searching")
        sC(gZ, sE.CatchDelay, s4)
    elseif gZ == "AutoRebirth" then
        sC(gZ, 1, function()
            local yU = su()
            local yV = yU and tk(yU)
            if yV then
                Rebirth:FireServer()
            end
        end)
    elseif gZ == "AutoEquipBest" then
        sC(gZ, 2, function()
            EquipBest:FireServer()
        end)
    elseif gZ == "AutoBuyUpgrades" then
        sC(gZ, 0.75, sP)
    elseif gZ == "AutoBuyZones" then
        sC(gZ, 1, function()
            local yR = su()
            local yS = yR and sy(yR)
            if yS then
                BuyZone:FireServer()
            end
        end)
    elseif gZ == "AutoClaimIndex" then
        sC(gZ, 1.5, function()
            local yO = su()
            local yP = yO and s1(yO)
            if yP then
                ClaimIndex:FireServer("Base")
            end
        end)
    elseif gZ == "AutoBuyBalls" then
        sC(gZ, 1.25, te)
    elseif gZ == "AutoCollectGold" then
        sC(gZ, 0.35, sJ)
    elseif gZ == "AutoSell" then
        sC(gZ, sE.SellDelay, sp)
    end
end
local function fn1306()
    return not tc.Unloaded
end
r3 = nil
r4 = nil
Toggles = nil
sa = nil
sd = nil
ClaimIndex = nil
Label = nil
si = nil
BuyZone = nil
sk = nil
Library = nil
sp = nil
EquipBest = nil
ss = nil
Rebirth = nil
su = nil
sx = nil
sy = nil
sC = nil
sE = nil
sF = nil
sG = nil
sH = nil
sJ = nil
sK = nil
sL = nil
sN = nil
sO = nil
sP = nil
local Players, r5, r7, r8, BuyItem, SaveManager, sc, se, sh, sm, BuyUpgrade, so, sr, sv, sw, AttemptCatch, sA, sB, sD, sI, sM
sR = nil
LocalPlayer = nil
sU = nil
sW = nil
sX = nil
sY = nil
s1 = nil
s2 = nil
s4 = nil
CoreGui = nil
s8 = nil
tc = nil
td = nil
te = nil
ti = nil
tk = nil
local sQ, CollectDrop, Workspace, Lighting, s_, TeleportService, s3, SellCharacter, s7, s9, ta, tb, tf, tg, th, tj, tl, Options, ts, tw
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, th, tg, ta, s9, s7, CoreGui, TeleportService, Lighting, Workspace, LocalPlayer, sM, sG, sD, sB, sx, ss = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
if (s7 and not s9 or s7 and s9 or s7 and not s7 and (s9 and s7)) and not (s7 and not s9 or s7 and s9 or s7 and not s7 and (s9 and s7)) then
    tg = game:GetService("RunService")
    th = game:GetService("UserInputService")
    s9 = game:GetService("VirtualUser")
    s7 = game:GetService("HttpService")
    ta = game:GetService("GuiService")
else
    th = game:GetService("RunService")
    tg = game:GetService("UserInputService")
    ta = game:GetService("VirtualUser")
    s9 = game:GetService("HttpService")
    s7 = game:GetService("GuiService")
end
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local to = "OuroborosCatchDragons"
local to_3
sM = "Catch Dragons To Defend"
local tq = "v0.4"
sG = "https://discord.gg/synapsex"
sD = "https://rscripts.net/@Ouroboros"
sB = "https://ouroboros-hub-rbx.web.app/"
sx = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Secret", "Fabled" }
if (false or not s7 or not s7 and not s7 or not TeleportService and ss and (tq and not s7) or (not TeleportService and 6 and false or (tq or (TeleportService or sG)))) and (sG and s7 and 6 and (6 or (tq or s7)) or (ss and false and (s7 and not s7) or (sG or (false or not s7)))) and not ((false or not s7 or not s7 and not s7 or not TeleportService and ss and (tq and not s7) or (not TeleportService and 6 and false or (tq or (TeleportService or sG)))) and (sG and s7 and 6 and (6 or (tq or s7)) or (ss and false and (s7 and not s7) or (sG or (false or not s7))))) then
    sG = {}
else
    ss = {}
end
for i, v in ipairs(sx) do
    ss[v] = i
end
si, sd, r7, r3 = nil, nil, nil, nil
si = {
    "Basic Capture Ball",
    "Advanced Capture Ball",
    "Elite Capture Ball",
    "Supreme Capture Ball",
    "Apex Capture Ball"
}
sd = {
    ["Basic Capture Ball"] = "Capture1",
    ["Advanced Capture Ball"] = "Capture2",
    ["Elite Capture Ball"] = "Capture3",
    ["Supreme Capture Ball"] = "Capture4",
    ["Apex Capture Ball"] = "Capture5"
}
r7 = { "Capture2", "Capture3", "Capture4", "Capture5" }
r3 = fn879
if getgenv then
    getgenv().gethui = r3
end
tc, sN, sH, s2, sW = nil, nil, nil, nil, nil
pcall(fn891)
local function tr(F)
    local ue
    local uf
    local ud
    ud = nil
    ue = nil
    uf = nil
    local ug = F ~= ""
    local uh = type(F) == "string" and ug
    assert(uh, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    uf = getgenv()
    assert(type(uf) == "table", "getgenv did not return a table")
    local ug_1 = uf[F]
    if ug_1 ~= nil then
        local uh_1 = type(ug_1) == "table" and type(ug_1.Unload) == "function"
        assert(uh_1, "Namespace is occupied")
        ug_1.Unload()
        assert(uf[F] == nil, "Previous instance did not release its namespace")
    end
    ue = {}
    ud = { State = {}, Unloaded = false }
    ud.Track = function(L)
        assert(type(L) == "function", "Cleanup must be callable")
        if ud.Unloaded then
            L()
        else
            table.insert(ue, L)
        end
        return L
    end
    ud.Unload = function()
        local t3_1
        local t2_1
        if ud.Unloaded then
            return
        end
        ud.Unloaded = true
        local t0 = {}
        local t7 = #ue
        local t6 = -1
        while false and t7 <= 1 or true and t7 >= 1 do
            local t8 = t7
            local t1_1 = table.remove(ue, t8)
            t2_1, t3_1 = pcall(t1_1)
            if not t2_1 then
                table.insert(t0, tostring(t3_1))
            end
            t7 += t6
        end
        table.clear(ud.State)
        if #t0 > 0 then
            error("Cleanup incomplete: " .. table.concat(t0, "; "), 0)
        end
        if uf[F] == ud then
            uf[F] = nil
        end
    end
    uf[F] = ud
    return ud
end
local function tv(Y, Z)
    local un = type(Y) == "table" and type(Y.Track) == "function"
    assert(un, "FeatureAPI required")
    local un_1 = type(Z) == "table" and type(Z.OnUnload) == "function"
    assert(un_1, "UI library required")
    assert(type(Z.Unload) == "function", "UI unload required")
    Y.Track(function()
        if not Z.Unloaded then
            Z:Unload()
        end
    end)
    Z:OnUnload(function()
        Y.Unload()
    end)
end
tc = tr(to)
local tu = fn1125
s2 = fn1022
sW = fn1306
local tt = tu(ReplicatedStorage)
sN = tu(Workspace)
local tn = tu(tt:WaitForChild("Services", 30))
assert(tn, "ReplicatedStorage.Services missing")
sH = require(tn)
assert(type(sH) == "table", "Services require failed")
assert(type(sH.GetData) == "function", "Services.GetData missing")
local tn_1 = type(sH.Remotes) == "userdata"
if not tn_1 then
    local to_1 = 4
    repeat
        if to_1 * 10172373 + 9 + 4 >= to_1 * 10172373 + 9 + 4 + 2 then
            sH = typeof(tn_1.Remotes) == "Instance"
        else
            tn_1 = typeof(sH.Remotes) == "Instance"
        end
        to_1 = (to_1 + 4) % 8
    until (to_1 * 5 + 7) % 8 == 7
end
AttemptCatch, Rebirth, EquipBest, BuyUpgrade, BuyZone, ClaimIndex, BuyItem = nil, nil, nil, nil, nil, nil, nil
assert(tn_1, "Services.Remotes missing")
tr = sH.Remotes
if (BuyUpgrade and not BuyUpgrade and (not Rebirth and not BuyItem) or (Rebirth or false) or ((BuyItem or 46) and (not BuyItem or BuyUpgrade) or BuyUpgrade and BuyItem and (BuyUpgrade and not BuyItem)) or (Rebirth and false or (not Rebirth or not Rebirth or not Rebirth)) and false) and not (BuyUpgrade and not BuyUpgrade and (not Rebirth and not BuyItem) or (Rebirth or false) or ((BuyItem or 46) and (not BuyItem or BuyUpgrade) or BuyUpgrade and BuyItem and (BuyUpgrade and not BuyItem)) or (Rebirth and false or (not Rebirth or not Rebirth or not Rebirth)) and false) then
    tr = AttemptCatch:WaitForChild("AttemptCatch", 10)
else
    AttemptCatch = tr:WaitForChild("AttemptCatch", 10)
end
Rebirth = tr:WaitForChild("Rebirth", 10)
EquipBest = tr:WaitForChild("EquipBest", 10)
BuyUpgrade = tr:WaitForChild("BuyUpgrade", 10)
BuyZone = tr:WaitForChild("BuyZone", 10)
ClaimIndex = tr:WaitForChild("ClaimIndex", 10)
if (not BuyUpgrade and AttemptCatch and (BuyZone or not BuyZone) or (not tr or not tr) and (not BuyZone or BuyUpgrade) or not AttemptCatch and not tr and (BuyUpgrade or not BuyZone) and (BuyItem and tr and (BuyZone or BuyZone))) and not (not BuyUpgrade and AttemptCatch and (BuyZone or not BuyZone) or (not tr or not tr) and (not BuyZone or BuyUpgrade) or not AttemptCatch and not tr and (BuyUpgrade or not BuyZone) and (BuyItem and tr and (BuyZone or BuyZone))) then
    tr = BuyItem:WaitForChild("BuyItem", 10)
else
    BuyItem = tr:WaitForChild("BuyItem", 10)
end
local tn_2 = AttemptCatch and AttemptCatch:IsA("RemoteFunction")
assert(tn_2, "AttemptCatch missing")
local tn_3 = Rebirth and Rebirth:IsA("RemoteEvent")
assert(tn_3, "Rebirth missing")
local tn_4 = EquipBest and EquipBest:IsA("RemoteEvent")
assert(tn_4, "EquipBest missing")
local tn_5 = BuyUpgrade and BuyUpgrade:IsA("RemoteFunction")
assert(tn_5, "BuyUpgrade missing")
local tn_6 = BuyZone and BuyZone:IsA("RemoteEvent")
assert(tn_6, "BuyZone missing")
local tn_7 = ClaimIndex and ClaimIndex:IsA("RemoteEvent")
assert(tn_7, "ClaimIndex missing")
local tn_8 = BuyItem and BuyItem:IsA("RemoteEvent")
SellCharacter = nil
local to_2 = 0
repeat
    if (not SellCharacter or not SellCharacter or not to_2 and to_2 or to_2 and not SellCharacter and (not SellCharacter and SellCharacter)) and not (not SellCharacter or not SellCharacter or not to_2 and to_2 or to_2 and not SellCharacter and (not SellCharacter and SellCharacter)) then
        assert(SellCharacter, "BuyItem missing")
        tr = tn_8:WaitForChild("SellCharacter", 10)
    else
        assert(tn_8, "BuyItem missing")
        SellCharacter = tr:WaitForChild("SellCharacter", 10)
    end
    to_2 = (to_2 + 2) % 8
until (to_2 * 5 + 2) % 8 == 4
local tn_9 = SellCharacter and SellCharacter:IsA("RemoteEvent")
to_3, tr, CollectDrop = nil, nil, nil
local tp_1 = 16
repeat
    ts = (tp_1 * 1 + 1) % 3 + 1
    if ts <= 2 then
        if ts <= 1 then
            ts = (vector.create((tp_1 * 2 + 5) % 11 + 1, (tp_1 * 5 + 1) % 13 + 1, (tp_1 * 12 + 7) % 17 + 1))
            tw = (vector.create((tp_1 * 1 + 8) % 11 + 1, (tp_1 * 6 + 13) % 13 + 1, (tp_1 * 14 + 15) % 17 + 1))
            local tx = (vector.create((tp_1 * 1 + 1) % 11 + 1, (tp_1 * 6 + 3) % 13 + 1, (tp_1 * 3 + 14) % 17 + 1))
            local ty = (vector.create((tp_1 * 5 + 2) % 5 + 1, (tp_1 * 4 + 1) % 7 + 1, (tp_1 * 2 + 1) % 9 + 1))
            if vector.dot(vector.cross(ts, (vector.cross(tw, tx))), ty) == vector.dot(tw * vector.dot(ts, tx) - tx * vector.dot(ts, tw), ty) + 5 then
                assert(tr, "ReplicatedStorage.Modules missing")
                tu = to_3(tr:WaitForChild("DropModule", 30))
            else
                assert(to_3, "ReplicatedStorage.Modules missing")
                tr = tu(to_3:WaitForChild("DropModule", 30))
            end
            tp_1 = (tp_1 + 13) % 24
        else
            ts = (vector.create((tp_1 * 6 + 2) % 11 + 1, (tp_1 * 7 + 5) % 13 + 1, (tp_1 * 10 + 3) % 17 + 1))
            tw = (vector.create((tp_1 * 2 + 6) % 11 + 1, (tp_1 * 3 + 4) % 13 + 1, (tp_1 * 1 + 1) % 17 + 1))
            local Fv = vector.dot(ts, tw)
            if Fv * Fv <= vector.dot(ts, ts) * vector.dot(tw, tw) then
                assert(tr, "DropModule missing")
                CollectDrop = tr:WaitForChild("CollectDrop", 10)
            else
                assert(CollectDrop, "DropModule missing")
                tr = CollectDrop:WaitForChild("CollectDrop", 10)
            end
            tp_1 = (tp_1 + 16) % 24
        end
    else
        if tp_1 * 101271647 + 12 + 2 >= tp_1 * 101271647 + 12 + 2 + 2 then
            assert(tu, "SellCharacter missing")
            tt = tn_9(to_3:WaitForChild("Modules", 30))
        else
            assert(tn_9, "SellCharacter missing")
            to_3 = tu(tt:WaitForChild("Modules", 30))
        end
        tp_1 = (tp_1 + 4) % 24
    end
until (tp_1 * 11 + 6) % 24 == 17
local tn_10 = CollectDrop and CollectDrop:IsA("RemoteEvent")
sO = nil
local to_4 = 6
repeat
    local Fw = bit32.rrotate(bit32.bxor(bit32.lrotate(to_4, 2), string.byte(tostring(sO))), 19)
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Fw, 788507509), 1239733987), (bit32.bxor(bit32.band(Fw, 3506459786), 1003944096))), 1239733987), 1003944096) == Fw then
        assert(tn_10, "CollectDrop missing")
        sO = require(tr)
    else
        assert(sO, "CollectDrop missing")
        tr = require(tn_10)
    end
    to_4 = (to_4 + 5) % 8
until (to_4 * 3 + 7) % 8 == 0
local tn_11 = type(sO) == "table"
if tn_11 then
    local to_5 = 1
    repeat
        local tp_2 = {
            "hxhiuych",
            "qbx",
            "pdd",
            "szmfjaiopj",
            "cmzbhomyo",
            "adfmffxz",
            "egm",
            "aami",
            "lhmgoesqxe",
            "tvsudxlzds",
            "jtechbte",
            "msxo"
        }
        local EI = to_5
        tr = tp_2[EI % 12 + 1]
        if tr:len() >= tr:reverse():rep(EI % 3 + 2):len() then
            sO = type(tn_11.DestroyAllDrops) == "function"
        else
            tn_11 = type(sO.DestroyAllDrops) == "function"
        end
        to_5 = (to_5 + 1) % 4
    until (to_5 * 1 + 1) % 4 == 3
end
sI, sE = nil, nil
local tp_3 = 6
repeat
    local to_6 = {
        "cwrnej",
        "imx",
        "vpvmndgck",
        "yufkzdk",
        "bvwxszoub",
        "nwxuprlp",
        "ugku",
        "wmkyivkyhq",
        "zkqtdqnmpwf",
        "vppbnni",
        "rvnbg",
        "tttwsrofdmc",
        "ssdr",
        "ymsm",
        "skhbpofksc"
    }
    if to_6[(tp_3 * 24 + 8) % 15 + 1] < to_6[(tp_3 * 24 + 8) % 15 + 1] then
        assert(sE, "DropModule require failed")
        tn_11 = 18
        sI = {
            CatchBall = "Capture1",
            Flags = {
                AutoEquipBest = false,
                AutoBuyBalls = false,
                AutoCollectGold = false,
                AutoRebirth = false,
                AutoBuyUpgrades = false,
                AutoSell = false,
                AutoClaimIndex = false,
                AutoBuyZones = false,
                AutoCatch = false
            },
            SelectedRarities = {},
            CatchDelay = 0.45,
            KeepBest = 0,
            Tokens = {},
            SellRarities = {},
            Status = "Ready",
            KeepEquipped = true,
            CatchStatus = "Idle",
            KeepOneOfEach = false,
            SellDelay = 0.5
        }
    else
        assert(tn_11, "DropModule require failed")
        sI = 18
        sE = {
            Flags = {
                AutoCatch = false,
                AutoRebirth = false,
                AutoEquipBest = false,
                AutoBuyUpgrades = false,
                AutoBuyZones = false,
                AutoClaimIndex = false,
                AutoBuyBalls = false,
                AutoCollectGold = false,
                AutoSell = false
            },
            SelectedRarities = {},
            SellRarities = {},
            CatchBall = "Capture1",
            CatchDelay = 0.45,
            SellDelay = 0.5,
            KeepEquipped = true,
            KeepOneOfEach = false,
            KeepBest = 0,
            Status = "Ready",
            CatchStatus = "Idle",
            Tokens = {}
        }
    end
    tp_3 = (tp_3 + 7) % 8
until (tp_3 * 7 + 1) % 8 == 4
for i, v in ipairs(sx) do
    sE.SelectedRarities[v] = true
end
Label, sa, r4, tl, su, r5, tf, s3, sQ, sA, sc, sY, so, tj, tb, r8, s1, sy, tk, sX, sk, sP, te, sw, s_, sJ, sK, se, sp = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
sE.SellRarities.Common = true
su = fn1073
r5 = fn995
tf = fn551
s3 = fn443
sQ = fn1209
sA = fn294
sc = function(bk)
    local uV_1
    local uU_1
    local uT = type(bk) ~= "table" or type(bk.Characters) ~= "table" or type(bk.Characters.Entries) ~= "table"
    if uT then
        return false
    end
    local uT_1 = 0
    for k in pairs(bk.Characters.Entries) do
        uT_1 += 1
    end
    uU_1, uV_1 = pcall(function()
        return sH.Stats.GetStat("PenSize", sH.Player, bk)
    end)
    local uW = not uU_1
    local u3 = if uW then 1 else 0
    local u1 = 767 * u3 + 1981 * (1 - u3)
    local u2 = 1994 * u3 + 1732 * (1 - u3)
    if not ((u1 * 1210 + u2 * 1350 + u1 * u2) % 16777213 == 5149368) then
        uW = type(uV_1) ~= "number"
    end
    if uW then
        return false
    end
    return uT_1 >= uV_1
end
sY = fn842
so = fn1247
tj = fn1012
tb = function()
    local vj_1
    local ve = s3()
    if not ve then
        return nil
    end
    local vf = r5()
    if not vf then
        return nil
    end
    local vg = math.huge
    local vh
    for i, child in ve:GetChildren() do
        local vr = child
        local vi = vr:IsA("Model") and vr.Parent == ve and not tj(vr)
        local vi_2
        if vi then
            local vi_1 = sQ(vr)
            if sA(vi_1) then
                vi_2, vj_1 = pcall(function()
                    return vr:GetPivot()
                end)
                local vk = vi_2 and typeof(vj_1) == "CFrame"
                if vk then
                    local Magnitude = (vf.Position - vj_1.Position).Magnitude
                    if Magnitude < vg then
                        vh = vr
                        vg = Magnitude
                    end
                end
            end
        end
    end
    return vh
end
r8 = function(b8)
    local vu_1
    local vs = r5()
    local vt = not vs or not b8 or not b8.Parent
    local vt_1
    if vt then
        return false
    end
    vt_1, vu_1 = pcall(function()
        return b8:GetPivot()
    end)
    local vv = not vt_1 or typeof(vu_1) ~= "CFrame"
    if vv then
        return false
    end
    vs.CFrame = vu_1 * CFrame.new(0, 0, 5)
    return true
end
s1 = fn1274
sy = fn827
tk = fn411
sX = fn1195
sk = fn684
sP = function()
    local v7
    local v8 = su()
    local v8_1
    if not v8 then
        return false
    end
    local v9 = {}
    local v9_1
    local wb = sH.Upgrades or {}
    for k, v in pairs(wb) do
        local wa_1 = type(k) == "string" and type(v) == "table"
        if wa_1 then
            sk(v8, k, v9, 0)
        end
    end
    if #v9 == 0 then
        return false
    end
    table.sort(v9, function(de, df)
        return de.price < df.price
    end)
    v7 = v9[1]
    v8_1, v9_1 = pcall(function()
        return BuyUpgrade:InvokeServer(v7.menu, v7.id)
    end)
    return v8_1 and v9_1 == true
end
te = function()
    local wm = su()
    local wn = not wm or type(wm.Money) ~= "number"
    if wn then
        return false
    end
    for i, v in ipairs(r7) do
        local wv = v
        local wn_1 = sH.Items and sH.Items[wv]
        local wn_2 = type(wn_1) == "table" and type(wn_1.Price) == "number" and type(wn_1.BuyProduct) ~= "string"
        if wn_2 then
            if wm.Money >= wn_1.Price then
                local wn_3 = pcall(function()
                    BuyItem:FireServer(wv)
                end)
                if wn_3 then
                    return true
                end
            end
        end
    end
    return false
end
sw = fn1039
s_ = fn258
sJ = function()
    local wS = sw()
    if type(wS) ~= "table" then
        sE.Status = "Drop registry unavailable"
        return false
    end
    local wT = r5()
    if not wT then
        return false
    end
    local wU = math.huge
    local wV
    for k, v in pairs(wS) do
        if s_(v) then
            local Magnitude = (wT.Position - v.Position).Magnitude
            if Magnitude < wU then
                wV = v
                wU = Magnitude
            end
        end
    end
    if wV == nil then
        return false
    elseif wU > sI then
        wT.CFrame = CFrame.new(wV.Position + Vector3.new(0, 3, 0))
        task.wait(0.08)
        local wU_1 = not sW() or not sE.Flags.AutoCollectGold
        if wU_1 then
            return false
        end
        local wT_1 = r5()
        if not wT_1 then
            return false
        end
        local Position = wT_1.Position
        local wT_2 = false
        for k, v in pairs(wS) do
            local xa = k
            local wS_1 = s_(v) and (Position - v.Position).Magnitude <= sI
            if wS_1 then
                local wS_2 = pcall(function()
                    CollectDrop:FireServer(xa)
                end)
                if wS_2 then
                    wT_2 = true
                end
            end
        end
        if wT_2 then
            sE.Status = "Collected gold"
        end
        return wT_2
    else
        local Position = wT.Position
        local wT_3 = false
        for k, v in pairs(wS) do
            local xa = k
            local wS_3 = s_(v) and (Position - v.Position).Magnitude <= sI
            if wS_3 then
                local wS_4 = pcall(function()
                    CollectDrop:FireServer(xa)
                end)
                if wS_4 then
                    wT_3 = true
                end
            end
        end
        if wT_3 then
            sE.Status = "Collected gold"
        end
        return wT_3
    end
end
sK = fn452
se = fn1077
sp = function()
    local xP = su()
    local xQ = not xP or type(xP.Characters) ~= "table" or type(xP.Characters.Entries) ~= "table"
    if xQ then
        return false
    elseif next(sE.SellRarities) == nil then
        sE.Status = "No sell rarities"
        return false
    else
        local xQ_1 = se(xP)
        local xR = {}
        for k, v in pairs(xP.Characters.Entries) do
            local xS_1 = type(v) == "table" and type(v.Name) == "string"
            if xS_1 then
                local Name = v.Name
                local xT = xR[v.Name] or 0
                xR[Name] = xT + 1
            end
        end
        for k, v in pairs(xP.Characters.Entries) do
            local x5 = v
            local xP_1 = type(x5) == "table" and type(x5.Name) == "string" and not xQ_1[k]
            if xP_1 then
                local xP_2 = sH.Characters and sH.Characters[x5.Name]
                local xP_3 = type(xP_2) == "table" and xP_2.Rarity
                local xP_4 = xP_3 or nil
                local xS_5 = type(xP_4) == "number" and sx[xP_4]
                local xP_5 = xS_5 or nil
                local xS_6 = xP_5
                if xP_5 then
                    xP_5 = sE.SellRarities[xS_6] == true
                end
                if xP_5 then
                    local xP_6 = not sE.KeepOneOfEach
                    if not xP_6 then
                        xP_6 = (xR[x5.Name] or 0) > 1
                    end
                    if xP_6 then
                        local xP_7 = pcall(function()
                            SellCharacter:FireServer(x5.Name)
                        end)
                        if xP_7 then
                            sE.Status = "Sold " .. x5.Name
                            return true
                        end
                    end
                end
            end
        end
        return false
    end
end
Label = nil
if (sp or sp or not tk and not tk) and (false and (false and not tk)) or (sp or sp) and (tk and false) and ((sp or tk) and (tk or false)) or not ((sp or sp or not tk and not tk) and (false and (false and not tk)) or (sp or sp) and (tk and false) and ((sp or tk) and (tk or false))) then
    sa = "#ff9ec8"
    r4 = "#ffd0e4"
else
    r4 = "#ff9ec8"
    sa = "#ffd0e4"
end
tl = {}
for k, v in pairs(sd) do
    tl[v] = k
end
Library, sh, SaveManager, Toggles, Options, sF, td, s8, sU, sv, sr, sm, s4, sL, sC, ti, sR, tr = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
td = fn725
s8 = fn376
sU = fn927
sv = function(fF, fG)
    local yh_1
    local yf_1
    local ye_1
    ye_1, yf_1 = pcall(sH.GetCatchChance, fF, fG)
    local yg = ye_1 and type(yf_1) == "number" and yf_1 > 0
    local yg_4
    if yg then
        return yf_1
    end
    local ye_2 = sH.Items and sH.Items[fF]
    local ye_3 = sH.Characters and sH.Characters[fG]
    local ye_4 = type(ye_2) ~= "table"
    local ym = if ye_4 then 1 else 0
    local yk = 603 * ym + 2370 * (1 - ym)
    local yl = 1935 * ym + 1256 * (1 - ym)
    if not ((yk * 2151 + yl * 3475 + yk * yl) % 16777213 == 9187983) then
        ye_4 = type(ye_3) ~= "table"
    end
    if ye_4 then
        return nil
    elseif fF == "Capture6" then
        return 100
    else
        local ye_5 = type(ye_2.Rarity) == "number" and ye_2.Rarity
        local yf_3 = ye_5 or 1
        local yf_4 = type(ye_3.Rarity) == "number" and ye_3.Rarity
        local yg_3 = (yf_4 or 1) - yf_3
        local ye_7 = 100
        if yg_3 > 0 then
            local yf_6 = ({ 25, 10, 2.5, 0.75, 0.1 })[yg_3]
            local ym_1 = if yf_6 then 1 else 0
            local yk_1 = 2470 * ym_1 + 1020 * (1 - ym_1)
            local yl_1 = 3045 * ym_1 + 101 * (1 - ym_1)
            if not ((yk_1 * 3817 + yl_1 * 2080 + yk_1 * yl_1) % 16777213 == 6505527) then
                yf_6 = 0.1
            end
            ye_7 = yf_6
        end
        local yf_7 = 1
        local yd = su()
        if yd then
            yg_4, yh_1 = pcall(function()
                return sH.Stats.GetStat("CaptureLuck", sH.Player, yd)
            end)
            local yi = yg_4 and type(yh_1) == "number"
            if yi then
                yf_7 = yh_1
            end
        end
        return math.clamp(ye_7 * yf_7, 0.1, 100)
    end
end
sr = fn384
sm = fn211
s4 = function()
    local yv, yw
    local yy_1
    local yx = su()
    local yx_1, yx_4
    if not yx then
        sU("Waiting for data")
        return false
    elseif sc(yx) then
        sE.Status = "Pen full"
        sU("Pen Full")
        return false
    else
        yv = so(yx)
        if not yv then
            sE.Status = "No capture ball"
            sU("No Capture Ball")
            return false
        end
        yw = tb(yx)
        if not yw then
            sE.Status = "No matching dragon"
            sU("No Matching Dragon")
            return false
        end
        yy_1, yx_1 = sm(yw)
        local yz = tl[yv]
        local yH = if yz then 1 else 0
        local yF = 407 * yH + 3806 * (1 - yH)
        local yG = 1933 * yH + 3197 * (1 - yH)
        if not ((yF * 1174 + yG * 1165 + yF * yG) % 16777213 == 3516494) then
            yz = yv
        end
        local yA = yz
        local yA_1
        local yz_1 = sv(yv, yw.Name)
        local yB = sr(yz_1)
        sU(string.format("Attempting %s (%s) · %s · %s", yy_1, yx_1, yB, yA))
        if not r8(yw) then
            sU("Teleport Failed")
            return false
        end
        task.wait(0.12)
        local yx_2 = not sW() or not sE.Flags.AutoCatch
        if yx_2 then
            sU("Idle")
            return false
        end
        local yx_3 = not yw.Parent or tj(yw)
        if yx_3 then
            sU("Target Lost")
            return false
        end
        yx_4, yA_1 = pcall(function()
            return AttemptCatch:InvokeServer(yv, yw)
        end)
        if yx_4 and yA_1 == true then
            sE.Status = "Caught"
            sU(string.format("Catch Complete · %s · %s", yy_1, yB))
            return true
        end
        sE.Status = "Catch failed"
        local yx_5 = type(yz_1) == "number" and yz_1 < 10
        if yx_5 then
            sU(string.format("Catch Failed · %s · %s - ball may be too weak", yy_1, yB))
        else
            sU(string.format("Catch Failed · %s · %s", yy_1, yB))
        end
        return false
    end
end
sL = fn17
sC = function(gJ, gK, gL)
    local gN = sL(gJ)
    task.spawn(function()
        local yM_1
        while true do
            local yL = sW() and sE.Tokens[gJ] == gN and sE.Flags[gJ]
            local yL_1
            if yL then
                yL_1, yM_1 = pcall(gL)
                if not yL_1 then
                    sE.Status = tostring(yM_1)
                end
                local yL_2 = gK
                if gJ == "AutoCatch" then
                    yL_2 = math.max(0.2, sE.CatchDelay)
                elseif gJ == "AutoSell" then
                    yL_2 = math.max(0.2, sE.SellDelay)
                end
                task.wait(yL_2)
                local yL_3 = not sW() or sE.Tokens[gJ] ~= gN or not sE.Flags[gJ]
                if yL_3 then
                    break
                end
                continue
            end
            break
        end
    end)
end
tc.SetFlag = fn1294
tc.SetSelectedRarities = fn571
tc.SetSellRarities = fn417
tc.SetCatchBall = fn415
tc.SetCatchDelay = fn974
tc.SetSellDelay = fn604
tc.SetKeepEquipped = fn85
tc.SetKeepOneOfEach = fn396
tc.SetKeepBest = fn260
tc.GetStatus = fn573
tc.GetCatchStatus = fn924
tc.Track(fn1214)
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
if ((sF and not sL and (ti or ti) or (sU or not sU) and (not s8 or not sL)) and ((not Library or sU) and (sL or sF) and (not sL or sF or (not s8 or Library))) or (sF or not sF or not sL and sU) and (sF and not sL and (Library or Library)) and (s8 or not s8 or (s8 or not sF) or ti and sU and (sF and not ti))) and not ((sF and not sL and (ti or ti) or (sU or not sU) and (not s8 or not sL)) and ((not Library or sU) and (sL or sF) and (not sL or sF or (not s8 or Library))) or (sF or not sF or not sL and sU) and (sF and not sL and (Library or Library)) and (s8 or not s8 or (s8 or not sF) or ti and sU and (sF and not ti))) then
    loadstring(game:HttpGet(SaveManager .. "addons/ThemeManager.lua"))()
    sh = loadstring(game:HttpGet(SaveManager .. "addons/SaveManager.lua"))()
else
    sh = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
end
Toggles, Options = Library.Toggles, Library.Options
tv(tc, Library)
ti = fn729
sR = fn835
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = sG, Copyable = true }, "|", sM, "|", tq },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
if ((not sr or not tr) and (tr and not ti) and (sU or not td or (td or sU)) or (sm and sm or (not sr or sr)) and (sm or not sr or not tr and not sr)) and not ((not sr or not tr) and (tr and not ti) and (sU or not td or (td or sU)) or (sm and sm or (not sr or sr)) and (sm or not sr or not tr and not sr)) then
    sF:SetGlow(false)
    local tp_5 = {
        Player = sF:AddTab("Player", "person-standing"),
        Info = sF:AddTab("Info", "info"),
        Settings = sF:AddTab("Settings", "settings"),
        Main = sF:AddTab("Main", "gamepad-2")
    }
else
    Window:SetGlow(false)
    sF = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
end
tr = fn888
for k, v in sF do
    if k ~= "Info" then
        tr(v)
    end
end
fn681()
local function tp_6()
    local zB
    local zz
    local zE
    local zC
    local zJ
    zz = nil
    zB = nil
    zC = nil
    zE = nil
    zJ = nil
    local zA, zD, zF, Label2, Label3, zI, zK, Label
    zE = function(jb)
        return (tostring(jb):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
    end
    zB = function(jd, je)
        return string.format('<font color="%s">%s</font>', je, zE(jd))
    end
    zI = function(jh, ji, jj)
        return string.format("<b>%s</b> %s %s", jh, zB("-", "#5a6070"), zB(ji, jj))
    end
    local zM = "#8b93a3"
    zA = "#e8a34d"
    zD = "#7fd47f"
    zJ = "Unknown"
    pcall(function()
        local zl_1
        local zk_1
        if type(identifyexecutor) == "function" then
            zl_1, zk_1 = identifyexecutor()
            local zm = zl_1 ~= ""
            local zn = type(zl_1) == "string" and zm
            if zn then
                local zm_1 = type(zk_1) == "string" and zk_1 ~= "" and zl_1 .. " " .. zk_1
                zJ = zm_1 or zl_1
            end
        end
    end)
    zz = os.clock()
    zF = function()
        local zs = math.floor(os.clock() - zz)
        if zs < 60 then
            return zs .. "s"
        elseif zs < 3600 then
            return string.format("%dm %ds", zs // 60, zs % 60)
        else
            return string.format("%dh %dm", zs // 3600, zs % 3600 // 60)
        end
    end
    local UserGroup = sF.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(zI("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, zD), true)
    UserGroup:AddLabel(zI("UserId", tostring(LocalPlayer.UserId), "#6ec1ff"), true)
    UserGroup:AddLabel(zI("Executor", zJ .. "  Remotes ready", zD), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(zI("Session", zF(), zA), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            ti(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            ti("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = sF.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddLabel(zI("Game", sM, "#6ec1ff"), true)
    Label2 = SessionGroup:AddLabel(zI("Players", "0/0", zD), true)
    zK = tostring(game.JobId)
    local zN = #zK > 18 and string.sub(zK, 1, 18) .. "..."
    local zP_1 = zN or zK
    SessionGroup:AddLabel(zI("Job", zP_1, zM), true)
    Label = SessionGroup:AddLabel(zI("Ping", "0 ms", zA), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Place",
        Func = function()
            TeleportService:Teleport(game.PlaceId, LocalPlayer)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            ti(zK, "Copied Job ID")
        end
    })
    zC = task.spawn(function()
        local zv_1
        local zu_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(zI("Session", zF(), zA))
            Label2:SetText(zI("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), zD))
            zu_1, zv_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local zu_2 = zu_1 and zv_1 .. " ms" or "n/a"
            Label:SetText(zI("Ping", zu_2, zA))
        end
    end)
    tc.Track(function()
        if coroutine.status(zC) ~= "dead" then
            task.cancel(zC)
        end
    end)
    local SocialsGroup = sF.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = sR })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            ti(sD, "Copied Rscripts profile")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            ti(sB, "Copied website link")
        end
    })
end
tp_6()
local function tq_1()
    local kp
    local kn
    local kq
    local ko
    local MovementGroup = sF.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = sF.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    kn = {}
    kp = {}
    kq = {}
    ko = {}
    local km = {}
    local function kr()
        for k, v in kn do
            if k.Parent then
                k.CanCollide = v
            end
        end
        table.clear(kn)
    end
    local function kw()
        for k, v in ko do
            if k.Parent then
                k.WalkSpeed = v
            end
        end
        table.clear(ko)
    end
    local function kA()
        for k, v in kp do
            if k.Parent then
                k.PlatformStand = v
            end
        end
        table.clear(kp)
    end
    local function kE(kF)
        local Ae = if not kF:IsA("ProximityPrompt") then 1 else 0
        if Ae == 1 then
            return
        end
        if kq[kF] == nil then
            kq[kF] = {
                HoldDuration = kF.HoldDuration,
                MaxActivationDistance = kF.MaxActivationDistance,
                RequiresLineOfSight = kF.RequiresLineOfSight
            }
        end
        kF.HoldDuration = 0
        kF.MaxActivationDistance = 50
        kF.RequiresLineOfSight = false
    end
    local function kH()
        for k, v in kq do
            if k.Parent then
                k.HoldDuration = v.HoldDuration
                k.MaxActivationDistance = v.MaxActivationDistance
                k.RequiresLineOfSight = v.RequiresLineOfSight
            end
        end
        table.clear(kq)
    end
    table.insert(km, tg.JumpRequest:Connect(function()
        if not Toggles.InfJump.Value or Library.Unloaded then
            return
        end
        local Am_1 = tf()
        if Am_1 then
            Am_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end))
    table.insert(km, th.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        local Character = LocalPlayer.Character
        if Toggles.NoClip.Value and Character then
            for i, descendant in Character:GetDescendants() do
                if descendant:IsA("BasePart") then
                    if kn[descendant] == nil then
                        kn[descendant] = descendant.CanCollide
                    end
                    descendant.CanCollide = false
                end
            end
        elseif next(kn) ~= nil then
            kr()
        end
    end))
    table.insert(km, Workspace.DescendantAdded:Connect(function(k4)
        local AA = Toggles.InstantProximityPrompt.Value and k4:IsA("ProximityPrompt")
        if AA then
            kE(k4)
        end
    end))
    Toggles.InstantProximityPrompt:OnChanged(function(k8)
        if k8 then
            for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                kE(v)
            end
        else
            kH()
        end
    end)
    table.insert(km, th.RenderStepped:Connect(function(le)
        if Library.Unloaded then
            return
        end
        local Character = LocalPlayer.Character
        local AN = Character and Character:FindFirstChildOfClass("Humanoid")
        local AO = Character
        if AO then
            AO = Character:FindFirstChild("HumanoidRootPart")
        end
        local AM_1 = AO
        local CurrentCamera = Workspace.CurrentCamera
        if Toggles.WalkSpeedEnabled.Value and AN then
            if ko[AN] == nil then
                ko[AN] = AN.WalkSpeed
            end
            AN.WalkSpeed = Options.WalkSpeed.Value
        else
            if AN and ko[AN] ~= nil then
                AN.WalkSpeed = ko[AN]
                ko[AN] = nil
            end
        end
        if Toggles.Fly.Value and AM_1 and AN and CurrentCamera then
            if kp[AN] == nil then
                kp[AN] = AN.PlatformStand
            end
            AN.PlatformStand = true
            local AO_5 = Vector3.zero
            local AU = if not tg:GetFocusedTextBox() then 1 else 0
            if AU == 1 then
                if tg:IsKeyDown(Enum.KeyCode.W) then
                    AO_5 += CurrentCamera.CFrame.LookVector
                end
                if tg:IsKeyDown(Enum.KeyCode.S) then
                    AO_5 -= CurrentCamera.CFrame.LookVector
                end
                if tg:IsKeyDown(Enum.KeyCode.A) then
                    AO_5 -= CurrentCamera.CFrame.RightVector
                end
                if tg:IsKeyDown(Enum.KeyCode.D) then
                    AO_5 += CurrentCamera.CFrame.RightVector
                end
                if tg:IsKeyDown(Enum.KeyCode.Space) then
                    AO_5 += Vector3.new(0, 1, 0)
                end
                if tg:IsKeyDown(Enum.KeyCode.LeftControl) then
                    AO_5 -= Vector3.new(0, 1, 0)
                end
            end
            AM_1.AssemblyLinearVelocity = Vector3.zero
            if AO_5.Magnitude > 0 then
                AM_1.CFrame = AM_1.CFrame + AO_5.Unit * Options.FlySpeed.Value * le
            end
        else
            if AN and kp[AN] ~= nil then
                AN.PlatformStand = kp[AN]
                kp[AN] = nil
            end
        end
    end))
    tc.Track(function()
        for k, v in km do
            v:Disconnect()
        end
        kr()
        kw()
        kA()
        kH()
    end)
end
tq_1()
local function tn_12()
    local Cr, Cs, Ct, Cu, Cv, Cw, Cx, Cy, Cz, CA, CB, CC, Label, CE
    CE = {}
    Cy = {}
    Ct = nil
    Cr = 0
    Cw = 0
    CA = false
    CB = os.clock()
    local MenuGroup = sF.Settings:AddLeftGroupbox("Menu", "logs")
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Label = MenuGroup:AddLabel("AFK triggers: 0")
    Cs = function()
        local CurrentCamera
        CurrentCamera = Workspace.CurrentCamera
        local A5 = not CurrentCamera or not s2(ta.CaptureController) or not s2(ta.ClickButton2)
        if A5 then
            return false
        end
        local A5_1 = pcall(function()
            ta:CaptureController()
            ta:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        end)
        if not A5_1 then
            return false
        end
        Cw += 1
        CB = os.clock()
        pcall(function()
            Label:SetText("AFK triggers: " .. Cw)
        end)
        return true
    end
    Cv = function(l7)
        pcall(function()
            s7:SetGameplayPausedNotificationEnabled(not l7)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not l7
            end
        end)
        if not l7 then
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
    Cz = function(ml)
        local Bh = ml.ClassName == "ParticleEmitter"
        local Bl = if Bh then 1 else 0
        local Bj = 2225 * Bl + 1731 * (1 - Bl)
        local Bk = 2328 * Bl + 192 * (1 - Bl)
        if not ((Bj * 2911 + Bk * 754 + Bj * Bk) % 16777213 == 13412087) then
            Bh = ml.ClassName == "Trail"
        end
        if not Bh then
            Bh = ml.ClassName == "Smoke"
        end
        if not Bh then
            Bh = ml.ClassName == "Fire"
        end
        if not Bh then
            Bh = ml.ClassName == "Sparkles"
        end
        if not Bh then
            Bh = ml.ClassName == "Explosion"
        end
        if not Bh then
            Bh = ml.ClassName == "Beam"
        end
        if Bh then
            if CE[ml] == nil then
                CE[ml] = ml.Enabled
            end
            pcall(function()
                ml.Enabled = false
            end)
        end
    end
    Cu = function()
        for k, v in CE do
            local Bt = k
            local Bv = v
            if Bt.Parent then
                pcall(function()
                    Bt.Enabled = Bv
                end)
            end
        end
        table.clear(CE)
        if Ct then
            pcall(function()
                settings().Rendering.QualityLevel = Ct.Quality
            end)
            Lighting.GlobalShadows = Ct.Shadows
            Lighting.FogEnd = Ct.Fog
            Ct = nil
        end
    end
    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3D", {
        Text = "Disable 3D Rendering",
        Default = false,
        Callback = function(mz)
            pcall(function()
                th:Set3dRenderingEnabled(not mz)
            end)
        end
    })
    MenuGroup:AddToggle("FpsBoost", {
        Text = "FPS Boost",
        Default = false,
        Callback = function(mE)
            if mE then
                if not Ct then
                    Ct = {
                        Quality = settings().Rendering.QualityLevel,
                        Shadows = Lighting.GlobalShadows,
                        Fog = Lighting.FogEnd
                    }
                end
                pcall(function()
                    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
                end)
                Lighting.GlobalShadows = false
                Lighting.FogEnd = 9000000000
                for k, v in Workspace:QueryDescendants("ParticleEmitter,Trail,Smoke,Fire,Sparkles,Beam") do
                    pcall(Cz, v)
                end
            else
                Cu()
            end
        end
    })
    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    Cv(true)
    local ScriptGroup = sF.Settings:AddLeftGroupbox("Script", "terminal")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
    Toggles.AntiGameplayPause:OnChanged(function()
        Cv(Toggles.AntiGameplayPause.Value)
    end)
    if Toggles.AntiGameplayPause.Value then
        Cv(true)
    end
    table.insert(Cy, LocalPlayer.Idled:Connect(function()
        if Toggles.AntiAfk.Value and not Library.Unloaded then
            Cs()
        end
    end))
    table.insert(Cy, Workspace.DescendantAdded:Connect(function(mX)
        if Toggles.FpsBoost.Value then
            Cz(mX)
        end
    end))
    CC = function(m0)
        local BS = CA
        local BX = if BS then 1 else 0
        local BV = 1146 * BX + 2276 * (1 - BX)
        local BW = 687 * BX + 2347 * (1 - BX)
        if not ((BV * 1001 + BW * 1321 + BV * BW) % 16777213 == 2841975) then
            BS = Library.Unloaded
        end
        if not BS then
            BS = not Toggles.AutoReconnect.Value
        end
        if BS then
            return
        end
        CA = true
        local BR = Cr
        local BS_1 = pcall(function()
            if m0 then
                TeleportService:Teleport(game.PlaceId, LocalPlayer)
            else
                TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
            end
        end)
        if not BS_1 then
            CA = false
            if not m0 and BR == Cr then
                task.delay(1.5, function()
                    if BR == Cr then
                        CC(true)
                    end
                end)
            end
        end
    end
    table.insert(Cy, TeleportService.TeleportInitFailed:Connect(function(ni)
        local B1
        if ni == LocalPlayer and CA then
            CA = false
            B1 = Cr
            task.delay(3, function()
                if B1 == Cr then
                    CC(true)
                end
            end)
        end
    end))
    task.spawn(function()
        local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
        local Cc = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        local Cc_1 = not Cc
        local Cd = Library.Unloaded
        local Ch = if Cd then 1 else 0
        local Cf = 1017 * Ch + 333 * (1 - Ch)
        local Cg = 2445 * Ch + 18 * (1 - Ch)
        if not ((Cf * 996 + Cg * 4071 + Cf * Cg) % 16777213 == 13453092) then
            Cd = Cc_1
        end
        if Cd then
            return
        end
        table.insert(Cy, Cc.ChildAdded:Connect(function(nx)
            if nx.Name == "ErrorPrompt" then
                CC(false)
            end
        end))
    end)
    Cx = task.spawn(function()
        while not Library.Unloaded do
            if Toggles.AntiGameplayPause.Value then
                Cv(true)
            end
            local Ci = Toggles.AntiAfk.Value and os.clock() - CB >= 60
            if Ci then
                Cs()
            end
            task.wait(1)
        end
    end)
    tc.Track(function()
        Cr += 1
        for k, v in Cy do
            v:Disconnect()
        end
        pcall(task.cancel, Cx)
        Cv(false)
        Cu()
        pcall(function()
            th:Set3dRenderingEnabled(true)
        end)
    end)
end
tn_12()
ts = function()
    local DC, DD, DE, DF
    sh:SetLibrary(Library)
    sh:SetFolder("OuroborosHub")
    sh:SaveDefault("Evil Hello Kitty")
    sh:ApplyToTab(sF.Settings)
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/CatchDragonsToDefend")
    local DG = SaveManager:BuildConfigSection(sF.Settings)
    DF = function(nY, nZ)
        local CI_1 = (nY == "Toggle" and Toggles or Options)[nZ]
        local CH_2 = type(CI_1) == "table" and CI_1.Type == nY
        return CH_2 and CI_1 or nil
    end
    DD = function(n7, n8)
        local Type = n8.Type
        if Type == "Toggle" then
            return { idx = n7, type = "Toggle", value = n8.Value == true }
        elseif Type == "Slider" then
            return { idx = n7, type = "Slider", value = tostring(n8.Value) }
        elseif Type == "Dropdown" then
            return { idx = n7, type = "Dropdown", multi = n8.Multi == true, value = n8.Value }
        elseif Type == "Input" then
            local CM = n8.Value or ""
            return { idx = n7, type = "Input", text = tostring(CM) }
        elseif Type == "ColorPicker" then
            return { idx = n7, type = "ColorPicker", value = n8.Value:ToHex(), transparency = n8.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = n7,
                type = "KeyPicker",
                mode = n8.Mode,
                key = n8.Value,
                modifiers = n8.Modifiers,
                toggled = n8.Toggled
            }
        else
            return nil
        end
    end
    DC = function()
        local CV = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local CW = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if CW then
                    local CW_1 = DD(k, v)
                    if CW_1 then
                        CV[#CV + 1] = CW_1
                    end
                end
            end
        end
        table.sort(CV, function(oi, oj)
            if oi.type ~= oj.type then
                return oi.type < oj.type
            end
            return oi.idx < oj.idx
        end)
        return { objects = CV }
    end
    DE = function(om)
        local De
        De = nil
        local Df = type(om) ~= "table" or type(om.idx) ~= "string" or type(om.type) ~= "string" or SaveManager.Ignore[om.idx]
        if Df then
            return false
        end
        De = DF(om.type, om.idx)
        if not De then
            return false
        end
        local Df_1 = pcall(function()
            if om.type == "Input" then
                if type(om.text) ~= "string" then
                    return
                end
                De:SetValue(om.text)
            elseif om.type == "ColorPicker" then
                De:SetValueRGB(Color3.fromHex(om.value), om.transparency)
            elseif om.type == "KeyPicker" then
                De:SetValue({ om.key, om.mode, om.modifiers })
                if om.mode == "Toggle" and om.toggled ~= nil then
                    De.Toggled = om.toggled
                    De:Update()
                end
            else
                De:SetValue(om.value)
            end
        end)
        return Df_1
    end
    DG:AddDivider()
    DG:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    DG:AddButton("Export Config to Clipboard", function()
        local Dl_1
        local Dk_1
        Dk_1, Dl_1 = pcall(s9.JSONEncode, s9, DC())
        if Dk_1 then
            local Dk_2 = s2(setclipboard) and setclipboard
            local Dm = Dk_2
            if not Dm then
                local Dk_3 = s2(toclipboard) and toclipboard
                Dm = Dk_3 or nil
            end
            local Dk_4 = Dm
            local Dm_1 = type(Dk_4) == "function" and pcall(Dk_4, Dl_1)
            if Dm_1 then
                Library:Notify("Config copied to clipboard", 6)
                return
            end
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Failed to encode the config")
    end)
    DG:AddButton("Import Config from Clipboard Text", function()
        local Dr_1
        local Dp = Options.SaveManager_ImportSource.Value or ""
        local Dp_1
        local Dq = tostring(Dp):match("^%s*(.-)%s*$")
        if Dq == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        if #Dq > 262144 then
            Library:Notify("That config is too large")
            return
        end
        Dp_1, Dr_1 = pcall(s9.JSONDecode, s9, Dq)
        local Dq_1 = not Dp_1
        local Dv = if Dq_1 then 1 else 0
        local Dt = 848 * Dv + 2773 * (1 - Dv)
        local Du = 1685 * Dv + 3470 * (1 - Dv)
        if not ((Dt * 3400 + Du * 2041 + Dt * Du) % 16777213 == 7751165) then
            Dq_1 = type(Dr_1) ~= "table"
        end
        if not Dq_1 then
            Dq_1 = type(Dr_1.objects) ~= "table"
        end
        if Dq_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        if #Dr_1.objects > 2048 then
            Library:Notify("That config has too many records")
            return
        end
        local Dp_2 = 0
        for i, v in ipairs(Dr_1.objects) do
            if DE(v) then
                Dp_2 += 1
            end
        end
        if Dp_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local Dr_2 = Dp_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(Dp_2, Dr_2), 6)
    end)
    sh:LoadDefault()
    SaveManager:LoadAutoloadConfig()
    if Options.CatchBall then
        tc.SetCatchBall(Options.CatchBall.Value)
    end
    if Options.CatchRarities then
        tc.SetSelectedRarities(Options.CatchRarities.Value)
    end
    if Options.CatchDelay then
        tc.SetCatchDelay(Options.CatchDelay.Value)
    end
    if Options.SellRarities then
        tc.SetSellRarities(Options.SellRarities.Value)
    end
    if Options.SellDelay then
        tc.SetSellDelay(Options.SellDelay.Value)
    end
    if Options.KeepBest then
        tc.SetKeepBest(Options.KeepBest.Value)
    end
    if Toggles.KeepEquipped then
        tc.SetKeepEquipped(Toggles.KeepEquipped.Value)
    end
    if Toggles.KeepOneOfEach then
        tc.SetKeepOneOfEach(Toggles.KeepOneOfEach.Value)
    end
    if Toggles.HideUiOnStart and Toggles.HideUiOnStart.Value then
        pcall(function()
            Library:Toggle(false)
        end)
    end
end
ts()
