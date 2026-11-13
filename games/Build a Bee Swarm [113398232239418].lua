local x4_10, x4_11, x4_20, x4_26, x4_28, x4_29
local x4_17_3, x4_17_4
local pj
local om
local o6
local oq
local BuyHiveSlot
local pv
local n5
local WaveAction
local py
local Library
local n8
local RebirthEvent
local oR
local oX
local oE
local oh
local Workspace
local po
local Toggles
local PlayerGui
local pr
local oH
local pu
local ox
local pe
local pA
local oT
local ph
local oa
local oD
local pk
local oA
local og
local o1
local oj
local pq
local o4
local oM
local oo
local oP
local ot
local ow
local pd
local n9
local oV
local oz
local oc
local oY
local Options
local oF
local pg
local function fn43(ao, ap)
    if ao.order ~= ap.order then
        return ao.order < ap.order
    end
    return ao.price < ap.price
end
local function fn45(cg)
    local rF = cg == ""
    local rG = type(cg) ~= "string" or rF
    if rG then
        return nil
    end
    local rF_1 = oH[cg] or oH[string.lower(cg)]
    return rF_1
end
local function fn47(c1)
    local Parent = c1.Parent
    if Parent then
        local attr = Parent:GetAttribute("HiveIndex")
        if type(attr) == "number" then
            return attr
        end
        return nil
    end
    return nil
end
local function fn66()
    local uW = if oP:GetAttribute("BattleActive") ~= true then 1 else 0
    if uW == 1 then
        oa = nil
        return
    end
    if not oa then
        oa = os.clock()
        return
    end
    local uR = tonumber(og("AutoEndFightSeconds", 60)) or 60
    if os.clock() - oa >= uR then
        pcall(function()
            WaveAction:FireServer("stop")
        end)
        oa = nil
    end
end
local function worker()
    while not Library.Unloaded do
        if ox("RemoveRollZoom") then
            ot(true)
        end
        if ox("AutoCollect") then
            pcall(ph)
        end
        if ox("AutoRoll") then
            local uY_1 = o6(oh())
            if #uY_1 == 0 then
                pcall(n8)
            end
        end
        if ox("AutoSell") then
            pcall(pr)
        end
        if ox("AutoRebirth") then
            pcall(oE)
        end
        if ox("AutoBuyUpgrades") then
            pcall(oj)
        end
        if ox("AutoExpandHive") then
            pcall(oV)
        end
        if ox("AutoBuySwords") then
            pcall(ow)
        end
        if ox("AutoStartFight") then
            pcall(n5)
        end
        if ox("AutoEndFight") then
            pcall(po)
        end
        local uY_2 = ox("AutoMaxBattleSpeed") and oP:GetAttribute("BattleActive") == true
        if uY_2 then
            pcall(pe)
        end
        task.wait(oF)
    end
end
local function fn128()
    oT.MaxPromptsVisible = 20
end
local function fn135()
    return PlayerGui
end
local function fn160()
    local tl = tonumber(oP:GetAttribute("NextHiveCost"))
    local tm = tl and oq() < tl
    if tm then
        return
    end
    pcall(function()
        BuyHiveSlot:FireServer()
    end)
end
local function fn217(c5)
    local sq_1
    local sp_1
    local sm = {}
    if not c5 then
        return sm
    end
    for i, descendant in c5:GetDescendants() do
        local sn = descendant:IsA("ProximityPrompt") and descendant.ActionText == "Collect"
        if sn then
            local Model = descendant:FindFirstAncestorOfClass("Model")
            local so = oA(Model, descendant.ObjectText)
            sp_1, sq_1 = o4(descendant.ObjectText)
            local sp_2 = #sm + 1
            local sr = sq_1
            if not sr then
                local sq_2 = Model and oM(Model)
                sr = sq_2
            end
            sm[sp_2] = { prompt = descendant, bee = Model, rarity = so, name = sr }
        end
    end
    return sm
end
local function fn283(cH)
    local r1 = cH:GetAttribute("OwnerUserId") == oP.UserId and cH:GetAttribute("Docked") == true
    return r1
end
local function fn294(ck)
    if type(ck) ~= "string" then
        return nil, nil
    end
    local rI = ck:match("^(.+) %- %$")
    local rJ = ck:match("%$([%d,]+)")
    local rK = rJ and tonumber((rJ:gsub(",", "")))
    local rJ_1 = rK
    if rK then
        rK = oD[rJ_1]
    end
    local rJ_2 = rK
    local rO = if rJ_2 then 1 else 0
    local rM = 2683 * rO + 449 * (1 - rO)
    local rN = 2085 * rO + 1 * (1 - rO)
    if not ((rM * 1894 + rN * 3887 + rM * rN) % 16777213 == 2002839) then
        rJ_2 = pk(rI)
    end
    local rK_1 = rJ_2
    return pu(rK_1), rI
end
local function fn312(gL)
    local DiscordGroup = gL:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = pd })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = pd })
end
local function fn322(aN, aO, aP)
    return string.format("<b>%s</b> %s %s", aN, o1("-", "#5a6070"), o1(aO, aP))
end
local function fn366()
    local tS = oP:GetAttribute("Owns3xSpeed") == true
    local tS_1 = tS and 3 or 2
    local tS_2 = tonumber(oP:GetAttribute("BattleSpeed")) or 1
    if tS_2 >= tS_1 then
        return
    end
    if os.clock() - pg < 0.35 then
        return
    end
    pg = os.clock()
    pcall(function()
        WaveAction:FireServer("speed")
    end)
end
local function fn373(cc)
    local rz = cc == ""
    local rA = type(cc) ~= "string" or rz
    if rA then
        return nil
    end
    return cc:sub(1, 1):upper() .. cc:sub(2):lower()
end
local function fn413(aA)
    if aA then
        oc[#oc + 1] = aA
    end
    return aA
end
local function fn434(cu)
    if not cu then
        return nil
    end
    local Lever = cu:FindFirstChild("Lever")
    local rQ = Lever and Lever:FindFirstChild("Lever Handle")
    local rP_1 = rQ
    if rQ then
        rQ = rP_1:FindFirstChild("PromptPart")
    end
    local rP_2 = rQ
    if rQ then
        rQ = rP_2:FindFirstChild("ProximityPrompt")
    end
    return rQ
end
local function fn463()
    for k, v in oY:GetTagged("WaveBee") do
        if v:GetAttribute("OwnerUserId") == oP.UserId then
            local HumanoidRootPart = v:FindFirstChild("HumanoidRootPart")
            if HumanoidRootPart then
                return HumanoidRootPart.Position
            end
        end
    end
    local tW_2 = oz()
    return tW_2 and tW_2.Position
end
local function fn491()
    if oP:GetAttribute("BattleActive") == true then
        oa = os.clock()
    else
        oa = nil
    end
end
local function fn492(bM)
    local re = bM == ""
    local re_1
    local rf = type(bM) ~= "string" or re
    local rf_1
    if rf then
        return {}
    end
    re_1, rf_1 = pcall(pj.JSONDecode, pj, bM)
    local rg = not re_1 or type(rf_1) ~= "table"
    if rg then
        return {}
    end
    local re_2 = {}
    for k, v in rf_1 do
        if type(v) == "string" then
            re_2[#re_2 + 1] = v
        end
    end
    return re_2
end
local function fn511()
    pv(om, "Copied Discord invite to clipboard")
end
local function fn514()
    local rr = {}
    for k, v in n9(oP:GetAttribute("OwnedSwords")) do
        rr[v] = true
    end
    return rr
end
local function fn518(aD, aE)
    if setclipboard then
        setclipboard(aD)
    elseif toclipboard then
        toclipboard(aD)
    end
    Library:Notify(aE)
end
local function fn648(a9)
    return next(a9) ~= nil
end
local function fn650(aS)
    local qD = Toggles[aS]
    return qD ~= nil and qD.Value == true
end
local function fn661(aX, aY)
    local qG = Options[aX]
    if qG == nil then
        return aY
    end
    local Value = qG.Value
    if Value == nil then
        return aY
    end
    return Value
end
local function fn663(aK, aL)
    return string.format('<font color="%s">%s</font>', aL, aK)
end
local function fn666()
    local sz = oh()
    local sA = oo(sz)
    if not sA then
        return
    end
    oR(sA)
end
local function fn671(bt)
    if not py(bt) then
        return false
    elseif fireproximityprompt then
        local q3_1 = pcall(fireproximityprompt, bt)
        if q3_1 then
            return true
        elseif firesignal then
            local q3_2 = pcall(firesignal, bt.Triggered, oP)
            return q3_2
        else
            return false
        end
    elseif firesignal then
        local q3_3 = pcall(firesignal, bt.Triggered, oP)
        return q3_3
    else
        return false
    end
end
local function fn765(ce)
    local rC = ce == ""
    local rD = type(ce) ~= "string" or rC
    if rD then
        return nil
    end
    return string.lower(ce)
end
local function fn782()
    local attr = oP:GetAttribute("Plot")
    if type(attr) ~= "string" then
        return nil
    end
    return Workspace:FindFirstChild(attr)
end
local function fn858()
    Library.ScreenGui.Parent = PlayerGui
end
local function fn860()
    local uQ = if oP:GetAttribute("BattleActive") == true then 1 else 0
    if uQ == 1 then
        return
    end
    if oP:GetAttribute("CutscenePlaying") == true then
        return
    end
    pcall(function()
        WaveAction:FireServer("start")
    end)
end
local function fn873(a2)
    local qJ = {}
    if type(a2) ~= "table" then
        return qJ
    end
    local Value = a2.Value
    if type(Value) ~= "table" then
        return qJ
    end
    for k, v in Value do
        if v == true then
            qJ[k] = true
        else
            local qK_1 = type(k) == "number" and type(v) == "string"
            if qK_1 then
                qJ[v] = true
            end
        end
    end
    return qJ
end
local function fn882(cO, cP)
    local sa = cO and cO:GetAttribute("BeeRarity")
    local sa_1
    local sb = pu(sa)
    local sb_1
    if sb then
        return sb
    end
    sa_1, sb_1 = o4(cP)
    if sa_1 then
        return sa_1
    end
    local sa_2 = sb_1
    local si = if sa_2 then 1 else 0
    local sg = 3069 * si + 3716 * (1 - si)
    local sh = 109 * si + 220 * (1 - si)
    if not ((sg * 1412 + sh * 3647 + sg * sh) % 16777213 == 5065472) then
        local sb_2 = cO and oM(cO)
        sa_2 = sb_2
    end
    return pk(sa_2)
end
local function fn885(cC)
    for k, v in oY:GetTagged("PadDisplayBee") do
        if v:IsA("Model") then
            cC(v)
        end
    end
end
local function fn944()
    local Character = oP.Character
    local qW = Character and Character:FindFirstChild("HumanoidRootPart")
    return qW
end
local function fn947(cL)
    local attr = cL:GetAttribute("BeeName")
    local r4 = attr ~= ""
    local r5 = type(attr) == "string" and r4
    if r5 then
        return attr
    end
    return cL.Name
end
local function fn977()
    local sC = oh()
    local sD = pq(Options.CollectRarities)
    local sE = oX(sD)
    local sF = o6(sC)
    if #sF == 0 then
        return false
    end
    local sC_1 = false
    local sG = false
    for k, v in sF do
        if v.prompt and v.prompt.Parent then
            local sF_2 = pA(v.rarity)
            if not sE or sF_2 ~= nil and sD[sF_2] == true then
                if oR(v.prompt) then
                    sG = true
                end
            else
                sC_1 = true
            end
        end
    end
    if sC_1 then
        n8()
    end
    return sG
end
local function fn999()
    local Character = oP.Character
    local qT = Character and Character:FindFirstChildOfClass("Humanoid")
    return qT
end
local function fn1001()
    local s5 = tonumber(oP:GetAttribute("RebirthCost"))
    local s6 = s5 and oq() < s5
    if s6 then
        return
    end
    pcall(function()
        RebirthEvent:FireServer("rebirth")
    end)
end
local function fn1012()
    local qY = tonumber(oP:GetAttribute("Cash")) or 0
    return qY
end
n5 = nil
n8 = nil
n9 = nil
oa = nil
oc = nil
Options = nil
og = nil
oh = nil
oj = nil
Toggles = nil
om = nil
oo = nil
oq = nil
ot = nil
ow = nil
ox = nil
Library = nil
oz = nil
oA = nil
local oC
oD = nil
oE = nil
oF = nil
oH = nil
PlayerGui = nil
oM = nil
oP = nil
oR = nil
oT = nil
RebirthEvent = nil
oV = nil
local n4, n6, n7, ob, od, oe, oi, op, ou, ov, oB, oG, oI, RollZoomEvent, SwordShop, oN, oO, DeleteBee, oS
oX = nil
oY = nil
o1 = nil
Workspace = nil
o4 = nil
o6 = nil
BuyHiveSlot = nil
WaveAction = nil
pd = nil
pe = nil
pg = nil
ph = nil
pj = nil
pk = nil
po = nil
pq = nil
pr = nil
pu = nil
pv = nil
py = nil
pA = nil
local oW, BuyStatUpgrade, o0, BuyBoardUpgrade, o5, o7, o8, pa, pb, pf, pi, pl, pm, pn, pp, ps, pt, RunService, px, pz
oW = nil
BuyStatUpgrade = nil
local o_
o0 = nil
BuyBoardUpgrade = nil
o5 = nil
o7 = nil
o8 = nil
pa = nil
pb = nil
pf = nil
pi = nil
pl = nil
pm = nil
pn = nil
pp = nil
ps = nil
pt = nil
RunService = nil
px = nil
pz = nil
n4, x4_26, RunService, ps, pn, pj, pf, pb, o7, Workspace, oY, oT, oP, PlayerGui = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local x4_7 = 17
repeat
    local x4_17_1 = (x4_7 * 5 + 5) % 7 + 1
    if x4_17_1 <= 4 then
        if x4_17_1 <= 2 then
            if x4_17_1 <= 1 then
                local yv = bit32.rrotate(bit32.bxor(bit32.lrotate(x4_7, 16), string.byte(tostring(PlayerGui))), 4)
                if bit32.bxor(bit32.lrotate(bit32.bxor(yv, 2051735253), 2), 3911973717) == bit32.lrotate(yv, 2) then
                    x4_26 = game:GetService("ReplicatedStorage")
                else
                    oP = game:GetService("ReplicatedStorage")
                end
                x4_7 = (x4_7 + 24) % 56
            else
                local ya = bit32.rrotate(bit32.bxor(bit32.lrotate(x4_7, 10), string.byte(tostring(pf))), 28)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(ya, 2154978017), 884617578), (bit32.bxor(bit32.band(ya, 2139989278), 2050338653))), 884617578), 2050338653) == ya then
                    RunService = game:GetService("RunService")
                else
                    pf = game:GetService("RunService")
                end
                x4_7 = (x4_7 + 31) % 56
            end
        elseif x4_17_1 <= 3 then
            if x4_7 * 82415217 + 1 + 5 >= x4_7 * 82415217 + 1 + 5 + 5 then
                pn = game:GetService("UserInputService")
                ps = game:GetService("VirtualUser")
            else
                ps = game:GetService("UserInputService")
                pn = game:GetService("VirtualUser")
            end
            x4_7 = (x4_7 + 52) % 56
        else
            x4_10 = {
                "ciubd",
                "wxuqqbkfl",
                "achogqro",
                "fjvwasrrmo",
                "xgztxmwkrcx",
                "vuwzqfrdjy",
                "jexoizo",
                "xtvamh",
                "xkca",
                "rruz",
                "qdqxxusk",
                "xpwxu",
                "jorpditk"
            }
            if x4_10[(x4_7 * 38 + 37) % 13 + 1] < x4_10[(x4_7 * 38 + 37) % 13 + 1] then
                o7 = game:GetService("HttpService")
                pj = game:GetService("GuiService")
                pf = game:GetService("TeleportService")
                pb = game:GetService("CoreGui")
            else
                pj = game:GetService("HttpService")
                pf = game:GetService("GuiService")
                pb = game:GetService("TeleportService")
                o7 = game:GetService("CoreGui")
            end
            x4_7 = (x4_7 + 10) % 56
        end
    elseif x4_17_1 <= 6 then
        if x4_17_1 <= 5 then
            if x4_7 * 23449571 + 5 + 5 >= x4_7 * 23449571 + 5 + 5 + 1 then
                n4 = game:GetService("Workspace")
            else
                Workspace = game:GetService("Workspace")
            end
            x4_7 = (x4_7 + 52) % 56
        else
            if (x4_7 * 2 + 1) * 13 % 3 == ((x4_7 * 2 + 1) * 13 + 4) % 3 then
                oT = game:GetService("CollectionService")
                oY = game:GetService("ProximityPromptService")
                n4 = PlayerGui.LocalPlayer
                oP = n4:WaitForChild("PlayerGui")
            else
                oY = game:GetService("CollectionService")
                oT = game:GetService("ProximityPromptService")
                oP = n4.LocalPlayer
                PlayerGui = oP:WaitForChild("PlayerGui")
            end
            x4_7 = (x4_7 + 52) % 56
        end
    else
        local x4_17_2 = {
            "ojn",
            "bxuzraypchnl",
            "xcqmql",
            "hmzf",
            "hmveaf",
            "zdyydo",
            "glgnftjq",
            "dsngknc",
            "gkeixzsphfy"
        }
        if x4_17_2[(x4_7 * 1 + 7) % 9 + 1] < x4_17_2[(x4_7 * 1 + 7) % 9 + 1] then
            oY = game:GetService("Players")
        else
            n4 = game:GetService("Players")
        end
        x4_7 = (x4_7 + 3) % 56
    end
until (x4_7 * 43 + 47) % 56 == 50
if getgenv then
    oC, x4_17_3 = nil, nil
    x4_7 = 5
    repeat
        x4_10 = (x4_7 * 1 + 1) % 2 + 1
        if x4_10 <= 1 then
            x4_10 = {
                "htrfzbbrcb",
                "gntaospxj",
                "wpjv",
                "xwwip",
                "evopgz",
                "iaobk",
                "ujyhv",
                "wyisq",
                "oamixsqsddo",
                "veifgbstinc"
            }
            local zw = x4_7
            x4_28 = x4_10[zw % 10 + 1]
            if x4_28:len() <= x4_28:gsub("(.)", "%1%1", zw % 3 % 2 + 1):len() then
                getgenv().gethui = fn135
                oC = getgenv().__OuroborosBuildABeeSwarmLib
            else
                getgenv().gethui = fn135
                x4_17_3 = getgenv().__OuroborosBuildABeeSwarmLib
            end
            x4_7 = (x4_7 + 9) % 16
        else
            x4_10 = (vector.create((x4_7 * 3 + 8) % 11 + 1, (x4_7 * 4 + 11) % 13 + 1, (x4_7 * 11 + 1) % 17 + 1))
            x4_28 = (vector.create((x4_7 * 6 + 1) % 11 + 1, (x4_7 * 11 + 1) % 13 + 1, (x4_7 * 6 + 2) % 17 + 1))
            x4_20 = (vector.create((x4_7 * 4 + 6) % 11 + 1, (x4_7 * 7 + 3) % 13 + 1, (x4_7 * 12 + 2) % 17 + 1))
            x4_11 = (vector.create((x4_7 * 4 + 3) % 5 + 1, (x4_7 * 2 + 3) % 7 + 1, (x4_7 * 5 + 3) % 9 + 1))
            if vector.dot(vector.cross(x4_10, (vector.cross(x4_28, x4_20))), x4_11) == vector.dot(x4_28 * vector.dot(x4_10, x4_20) - x4_20 * vector.dot(x4_10, x4_28), x4_11) + 1 then
                oC = x4_17_3
            else
                x4_17_3 = oC
            end
            x4_7 = (x4_7 + 1) % 16
        end
    until (x4_7 * 3 + 0) % 16 == 13
    if x4_17_3 then
        x4_17_3 = oC.Unload
    end
    if x4_17_3 then
        pcall(function()
            oC:Unload()
        end)
    end
end
pcall(function()
    gethui = function()
        return PlayerGui
    end
end)
if setthreadidentity then
    setthreadidentity(8)
end
ou, om, oi, oe, ob, n6, pz, px, pt, x4_17_4, WaveAction, BuyHiveSlot, BuyBoardUpgrade, BuyStatUpgrade, RebirthEvent, DeleteBee, SwordShop, RollZoomEvent = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ou = "Build a Bee Swarm"
om = "https://discord.gg/ehKVq7pf7v"
oi = "https://rscripts.net/@Ouroboros"
oe = "https://ouroboros-hub-rbx.web.app/"
ob = "#7fd47f"
n6 = "#6ec1ff"
pz = "#e8a34d"
px = "#8b93a3"
if (not BuyStatUpgrade and not SwordShop or x4_17_4 and not SwordShop) and ((not BuyStatUpgrade or not SwordShop) and (not BuyStatUpgrade or BuyStatUpgrade)) or not ((not BuyStatUpgrade and not SwordShop or x4_17_4 and not SwordShop) and ((not BuyStatUpgrade or not SwordShop) and (not BuyStatUpgrade or BuyStatUpgrade))) then
    pt = "#e05a5a"
end
x4_28 = require(x4_26:WaitForChild("BalanceConfig"))
local x4_17_5 = require(x4_26:WaitForChild("BeeStatsConfig"))
x4_10 = require(x4_26:WaitForChild("SwordConfig"))
WaveAction = x4_26:WaitForChild("WaveAction")
BuyHiveSlot = x4_26:WaitForChild("BuyHiveSlot")
BuyBoardUpgrade = x4_26:WaitForChild("BuyBoardUpgrade")
BuyStatUpgrade = x4_26:WaitForChild("BuyStatUpgrade")
RebirthEvent = x4_26:WaitForChild("RebirthEvent")
DeleteBee = x4_26:WaitForChild("DeleteBee")
SwordShop = x4_26:WaitForChild("SwordShop")
RollZoomEvent = x4_26:WaitForChild("RollZoomEvent")
x4_7 = (tonumber(x4_28.AUTO_ROLL_DELAY))
local pQ = if x4_7 then 1 else 0
local pO = 3481 * pQ + 1953 * (1 - pQ)
local pP = 1036 * pQ + 3669 * (1 - pQ)
if not ((pO * 1327 + pP * 1125 + pO * pP) % 16777213 == 9391103) then
    x4_7 = 0.8
end
x4_20 = {}
oF = x4_7
x4_7 = x4_28.RARITY_ORDER
if type(x4_7) == "table" then
    for k, v in x4_7 do
        if type(v) == "string" then
            x4_20[#x4_20 + 1] = v
        end
    end
end
if #x4_20 == 0 then
    x4_7 = 3
    repeat
        x4_11 = {
            "lbrr",
            "tcvuuuhznzo",
            "nvxsfxzkky",
            "wqqyxkh",
            "nwep",
            "kcqlucyuay",
            "whjvdrutwif",
            "odaad",
            "ecqenrkwkr",
            "kwexlapr"
        }
        local y0 = x4_7
        x4_29 = x4_11[y0 % 10 + 1]
        if x4_29:len() >= x4_29:reverse():rep(y0 % 3 + 2):len() then
            x4_20 = { "rare", "mythic", "uncommon", "legendary", "secret", "epic", "common" }
        else
            x4_20 = { "common", "uncommon", "rare", "epic", "legendary", "mythic", "secret" }
        end
        x4_7 = (x4_7 + 0) % 4
    until (x4_7 * 3 + 2) % 4 == 3
end
x4_11 = {}
x4_7 = {}
for k, v in x4_20 do
    x4_20 = v:sub(1, 1):upper() .. v:sub(2)
    x4_7[#x4_7 + 1] = x4_20
    x4_11[x4_20] = v
end
x4_20 = {}
x4_11 = x4_17_5.Buffs
if type(x4_11) == "table" then
    for k in x4_11 do
        if type(k) == "string" then
            x4_20[#x4_20 + 1] = k
        end
    end
end
table.sort(x4_20)
x4_11, x4_29, pl = nil, nil, nil
if (x4_29 or 2) and ((not pl or x4_29) and x4_11) or not ((x4_29 or 2) and ((not pl or x4_29) and x4_11)) then
    x4_11 = {
        { label = "Luck", kind = "board", id = "luck" },
        { label = "Bee Rolls", kind = "board", id = "rollers" },
        { label = "Cash Multiplier", kind = "stat", id = "cash" },
        { label = "Damage Multiplier", kind = "stat", id = "damage" },
        { label = "Firerate Multiplier", kind = "stat", id = "firerate" }
    }
else
    pl = {
        { kind = "board", label = "Bee Rolls", id = "rollers" },
        { label = "Firerate Multiplier", id = "firerate", kind = "stat" },
        { kind = "stat", label = "Damage Multiplier", id = "damage" },
        { kind = "stat", label = "Cash Multiplier", id = "cash" },
        { id = "luck", kind = "board", label = "Luck" }
    }
end
x4_29 = {}
pl = {}
for k, v in x4_11 do
    x4_29[#x4_29 + 1] = v.label
    pl[v.label] = v
end
pa = {}
local x4_17_6 = x4_10.Swords
if type(x4_17_6) == "table" then
    for k, v in x4_17_6 do
        local x4_17_7 = type(k) == "string" and type(v) == "table"
        if x4_17_7 then
            local x4_17_8 = #pa + 1
            x4_10 = tonumber(v.price) or 0
            x4_11 = tonumber(v.order) or 0
            local x4_21 = tonumber(v.damagePct) or 0
            local x4_12 = type(v.displayName) == "string" and v.displayName
            local x4_3 = x4_12
            local pQ_1 = if x4_3 then 1 else 0
            local pO_1 = 4059 * pQ_1 + 2617 * (1 - pQ_1)
            local pP_1 = 2052 * pQ_1 + 3887 * (1 - pQ_1)
            if not ((pO_1 * 806 + pP_1 * 2101 + pO_1 * pP_1) % 16777213 == 15911874) then
                x4_3 = k
            end
            pa[x4_17_8] = { name = k, price = x4_10, order = x4_11, damagePct = x4_21, display = x4_3 }
        end
    end
end
table.sort(pa, fn43)
Library, x4_11, op, Toggles, Options = nil, nil, nil, nil, nil
local x4_17_9 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
if (Library and op or (not Toggles or not Library) or (op or op or (not Toggles or not Toggles)) or (Library and false or not Toggles and op) and (x4_17_9 or Library or Toggles and false)) and not (Library and op or (not Toggles or not Library) or (op or op or (not Toggles or not Toggles)) or (Library and false or not Toggles and op) and (x4_17_9 or Library or Toggles and false)) then
    pcall(fn858)
    x4_17_9 = loadstring(game:HttpGet(x4_11 .. "addons/ThemeManager.lua"))()
else
    pcall(fn858)
    x4_11 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
end
op = loadstring(game:HttpGet(x4_17_9 .. "addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
if getgenv then
    getgenv().__OuroborosBuildABeeSwarmLib = Library
end
oc, oH, oD, n7, pv, pd, o1, oN, ox, og, pq, oX, oO, oz, oq, oh, py, pi, oR, n9, o8 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
oc = {}
n7 = fn413
pv = fn518
pd = fn511
o1 = fn663
oN = fn322
ox = fn650
og = fn661
pq = fn873
oX = fn648
oO = fn999
oz = fn944
oq = fn1012
oh = fn782
py = function(bp)
    local q1 = not bp or not bp:IsA("ProximityPrompt")
    if q1 then
        return false
    end
    pcall(function()
        bp.Enabled = true
        bp.HoldDuration = 0
        bp.MaxActivationDistance = 200
        bp.RequiresLineOfSight = false
    end)
    return true
end
pi = fn671
oR = function(bz)
    local ra
    local CFrame2
    ra = nil
    CFrame2 = nil
    if not bz or not bz.Parent then
        return false
    end
    ra = oz()
    if not ra then
        return pi(bz)
    end
    local q9 = bz.Parent
    if not q9:IsA("BasePart") then
        q9 = bz:FindFirstAncestorWhichIsA("BasePart")
    end
    CFrame2 = ra.CFrame
    if q9 then
        pcall(function()
            ra.CFrame = q9.CFrame * CFrame.new(0, 3, 0)
            ra.AssemblyLinearVelocity = Vector3.zero
        end)
        task.wait(0.08)
    end
    local rc_1 = pi(bz)
    task.wait(0.12)
    pcall(function()
        if ra.Parent then
            ra.CFrame = CFrame2
            ra.AssemblyLinearVelocity = Vector3.zero
        end
    end)
    return rc_1
end
if (false or o8) and (o8 or py) and (oH or oH or (not o8 or oH)) and not ((false or o8) and (o8 or py) and (oH or oH or (not o8 or oH))) then
    oD = fn492
    n9 = fn514
    o8 = {}
    oH = {}
else
    n9 = fn492
    o8 = fn514
    oH = {}
    oD = {}
end
local x4_17_10 = x4_26:FindFirstChild("Bees")
if x4_17_10 then
    for i, child in x4_17_10:GetChildren() do
        x4_26 = string.lower(child.Name)
        if x4_26 ~= "robux" then
            for i, child in child:GetChildren() do
                oH[child.Name] = x4_26
                oH[string.lower(child.Name)] = x4_26
            end
        end
    end
end
x4_26 = x4_28.BUY_COSTS
if type(x4_26) == "table" then
    for k, v in x4_26 do
        x4_26 = type(k) == "string" and tonumber(v)
        if x4_26 then
            oD[tonumber(v)] = string.lower(k)
        end
    end
end
pg, ov, oa, oI, pA, pu, pk, o4, oo, pp, o5, oM, oA, pm, o6, n8, ph, pr, oE, oj, oV, ow, o_, pe, oG, od, ot, oS, n5, po = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pA = fn373
pu = fn765
pk = fn45
o4 = fn294
oo = fn434
pp = fn885
o5 = fn283
oM = fn947
oA = fn882
pm = fn47
o6 = fn217
n8 = fn666
ph = fn977
pr = function()
    local sZ, s_, s0, s1
    s_ = pq(Options.SellRarities)
    s1 = pq(Options.SellBees)
    s0 = oX(s_)
    sZ = oX(s1)
    if not s0 and not sZ then
        return
    end
    pp(function(dY)
        if not o5(dY) then
            return
        end
        local sQ = pm(dY)
        if type(sQ) ~= "number" then
            return
        end
        local sR = pA(oA(dY))
        local sS = oM(dY)
        local sT = not s0
        if not sT then
            sT = sR ~= nil and s_[sR] == true
        end
        local sR_1 = not sZ
        local sU_2 = sT
        if not sR_1 then
            sR_1 = s1[sS] == true
        end
        if sU_2 and sR_1 then
            pcall(function()
                DeleteBee:FireServer(sQ)
            end)
        end
    end)
end
oE = fn1001
oj = function()
    local tc = pq(Options.UpgradeSelect)
    local tg = if not oX(tc) then 1 else 0
    if tg == 1 then
        return
    end
    for k in tc do
        local tb = pl[k]
        if tb then
            if tb.kind == "board" then
                pcall(function()
                    BuyBoardUpgrade:FireServer(tb.id)
                end)
            elseif tb.kind == "stat" then
                pcall(function()
                    BuyStatUpgrade:FireServer(tb.id)
                end)
            end
        end
    end
end
oV = fn160
ow = function()
    local tp = o8()
    local tq = oq()
    local to
    for k, v in pa do
        local ty = v
        if tp[ty.name] then
            if not to or ty.damagePct > to.damagePct then
                to = ty
            end
        elseif tq >= ty.price then
            pcall(function()
                SwordShop:FireServer("buy", ty.name)
            end)
            tp[ty.name] = true
            to = ty
            tq -= ty.price
        end
    end
    local tr_2 = to and oP:GetAttribute("EquippedSword") ~= to.name
    if tr_2 then
        pcall(function()
            SwordShop:FireServer("select", to.name)
        end)
    end
end
o_ = function()
    local tF = o8()
    local tE
    for k, v in pa do
        if tF[v.name] and (not tE or v.damagePct > tE.damagePct) then
            tE = v
        end
    end
    local tG_2 = tE and oP:GetAttribute("EquippedSword") ~= tE.name
    if tG_2 then
        pcall(function()
            SwordShop:FireServer("select", tE.name)
        end)
    end
    local Character = oP.Character
    local tF_1 = not tE
    local tG_3 = not Character
    local tR = if tG_3 then 1 else 0
    local tP = 3020 * tR + 1122 * (1 - tR)
    local tQ = 1980 * tR + 327 * (1 - tR)
    if not ((tP * 2047 + tQ * 1274 + tP * tQ) % 16777213 == 14684060) then
        tG_3 = tF_1
    end
    if tG_3 then
        return
    end
    local tF_2 = Character:FindFirstChild(tE.name) or oP.Backpack:FindFirstChild(tE.name)
    local tC = tF_2
    if tC and tC.Parent ~= Character then
        pcall(function()
            tC.Parent = Character
        end)
    end
end
pg = 0
pe = fn366
oG = fn463
if (false or (false or not ph)) and (ph or false or oj and oj) and (false and (oj and not ph) or (ph or oj or false and not ph)) and not ((false or (false or not ph)) and (ph or false or oj and oj) and (false and (oj and not ph) or (ph or oj or false and not ph))) then
    oS = function()
        if oP:GetAttribute("BattleActive") ~= true then
            return
        end
        o_()
        pe()
        if oP:GetAttribute("AutoWave") ~= true then
            pcall(function()
                WaveAction:FireServer("auto")
            end)
        end
        local Character = oP.Character
        local t8 = Character and Character:FindFirstChildOfClass("Tool")
        local t4 = t8
        local t6 = oG()
        for k, v in oY:GetTagged("Zombie") do
            local uf = v
            if uf:IsA("Model") then
                local t7_3 = uf:FindFirstChild("HumanoidRootPart") or uf:FindFirstChildWhichIsA("BasePart")
                local t5 = t7_3
                pcall(function()
                    uf:SetAttribute("HP", 0)
                    uf:SetAttribute("MaxHP", 0.01)
                end)
                if t6 and t5 then
                    pcall(function()
                        uf:SetAttribute("TP", t6)
                        t5.CFrame = CFrame.new(t6 + Vector3.new(math.random(-2, 2), 2, math.random(-2, 2)))
                    end)
                end
            end
        end
        if t4 then
            pcall(function()
                t4:Activate()
            end)
        end
    end
    od = {}
    ov = function(f2)
        local CurrentCamera
        local ui
        if f2 then
            table.clear(ov)
            if getconnections then
                for k, v in getconnections(RollZoomEvent.OnClientEvent) do
                    local up = v
                    pcall(function()
                        up:Disable()
                    end)
                    ov[#ov + 1] = up
                end
            end
            CurrentCamera = Workspace.CurrentCamera
            ui = oO()
            pcall(function()
                if CurrentCamera then
                    CurrentCamera.FieldOfView = 70
                end
                if ui then
                    ui.CameraOffset = Vector3.zero
                end
            end)
        else
            for k, v in ov do
                local uv = v
                pcall(function()
                    uv:Enable()
                end)
            end
            table.clear(ov)
        end
    end
    ot = function()
        local uK
        local uL = oz()
        if not uL then
            return
        end
        uK = uL.Position + Vector3.new(0, 2, 0)
        local function uL_2(gm)
            if not gm then
                return
            end
            for i, child in gm:GetChildren() do
                local uJ = child
                local uz = uJ.Name == "WaveCoin" and uJ:IsA("BasePart")
                if uz then
                    pcall(function()
                        uJ.Anchored = true
                        uJ.CanCollide = false
                        uJ.Position = uK
                    end)
                end
            end
        end
        uL_2(Workspace.CurrentCamera)
        uL_2(Workspace:FindFirstChild("Effects"))
        uL_2(Workspace:FindFirstChild("Coins"))
    end
else
    od = function()
        if oP:GetAttribute("BattleActive") ~= true then
            return
        end
        o_()
        pe()
        if oP:GetAttribute("AutoWave") ~= true then
            pcall(function()
                WaveAction:FireServer("auto")
            end)
        end
        local Character = oP.Character
        local t8 = Character and Character:FindFirstChildOfClass("Tool")
        local t4 = t8
        local t6 = oG()
        for k, v in oY:GetTagged("Zombie") do
            local uf = v
            if uf:IsA("Model") then
                local t7_1 = uf:FindFirstChild("HumanoidRootPart") or uf:FindFirstChildWhichIsA("BasePart")
                local t5 = t7_1
                pcall(function()
                    uf:SetAttribute("HP", 0)
                    uf:SetAttribute("MaxHP", 0.01)
                end)
                if t6 and t5 then
                    pcall(function()
                        uf:SetAttribute("TP", t6)
                        t5.CFrame = CFrame.new(t6 + Vector3.new(math.random(-2, 2), 2, math.random(-2, 2)))
                    end)
                end
            end
        end
        if t4 then
            pcall(function()
                t4:Activate()
            end)
        end
    end
    ov = {}
    ot = function(f2)
        local CurrentCamera
        local ui
        if f2 then
            table.clear(ov)
            if getconnections then
                for k, v in getconnections(RollZoomEvent.OnClientEvent) do
                    local up = v
                    pcall(function()
                        up:Disable()
                    end)
                    ov[#ov + 1] = up
                end
            end
            CurrentCamera = Workspace.CurrentCamera
            ui = oO()
            pcall(function()
                if CurrentCamera then
                    CurrentCamera.FieldOfView = 70
                end
                if ui then
                    ui.CameraOffset = Vector3.zero
                end
            end)
        else
            for k, v in ov do
                local uv = v
                pcall(function()
                    uv:Enable()
                end)
            end
            table.clear(ov)
        end
    end
    oS = function()
        local uK
        local uL = oz()
        if not uL then
            return
        end
        uK = uL.Position + Vector3.new(0, 2, 0)
        local function uL_1(gm)
            if not gm then
                return
            end
            for i, child in gm:GetChildren() do
                local uJ = child
                local uz = uJ.Name == "WaveCoin" and uJ:IsA("BasePart")
                if uz then
                    pcall(function()
                        uJ.Anchored = true
                        uJ.CanCollide = false
                        uJ.Position = uK
                    end)
                end
            end
        end
        uL_1(Workspace.CurrentCamera)
        uL_1(Workspace:FindFirstChild("Effects"))
        uL_1(Workspace:FindFirstChild("Coins"))
    end
end
oa = nil
n5 = fn860
po = fn66
n7(oP:GetAttributeChangedSignal("BattleActive"):Connect(fn491))
local x4_17_11 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = om, Copyable = true }, "|", ou },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
oI = {
    Info = x4_17_11:AddTab("Info", "info"),
    Main = x4_17_11:AddTab("Main", "bug"),
    Combat = x4_17_11:AddTab("Combat", "swords"),
    Player = x4_17_11:AddTab("Player", "person-standing"),
    Settings = x4_17_11:AddTab("Settings", "settings")
}
x4_10 = fn312
for k, v in oI do
    if k ~= "Info" then
        x4_10(v)
    end
end
local x4_17_12 = oI.Main:AddLeftGroupbox("Farm", "flower-2")
x4_17_12:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
x4_17_12:AddToggle("RemoveRollZoom", { Text = "Remove Roll Camera", Default = true })
x4_17_12:AddToggle("AutoCollect", { Text = "Auto Collect", Default = false })
x4_17_12:AddDropdown("CollectRarities", { Text = "Collect Rarities", Values = x4_7, Default = {}, Multi = true, AllowNull = true })
x4_17_12:AddDivider("Sell")
x4_17_12:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
x4_17_12:AddDropdown("SellRarities", { Text = "Sell Rarities", Values = x4_7, Default = {}, Multi = true, AllowNull = true })
x4_17_12:AddDropdown("SellBees", {
    Text = "Sell Bees",
    Values = x4_20,
    Default = {},
    Multi = true,
    AllowNull = true,
    Searchable = true
})
x4_17_12:AddToggle("MoneyMagnet", { Text = "Money Magnet", Default = false })
x4_26 = oI.Main:AddRightGroupbox("Upgrades", "sparkles")
x4_26:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
x4_26:AddToggle("AutoExpandHive", { Text = "Auto Expand Hive", Default = false })
x4_26:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
x4_26:AddDropdown("UpgradeSelect", { Text = "Upgrades", Values = x4_29, Default = {}, Multi = true, AllowNull = true })
x4_26:AddToggle("AutoBuySwords", { Text = "Auto Buy Swords", Default = false })
x4_10 = oI.Combat:AddLeftGroupbox("Combat", "swords")
x4_10:AddToggle("KillAura", { Text = "Kill Aura", Default = false })
x4_10:AddDivider("Waves")
x4_10:AddToggle("AutoStartFight", { Text = "Auto Start Fight", Default = false })
x4_10:AddToggle("AutoEndFight", { Text = "Auto End Fight", Default = false })
x4_10:AddSlider("AutoEndFightSeconds", { Text = "End Fight After", Default = 60, Min = 1, Max = 500, Rounding = 0, Suffix = "s" })
x4_10:AddToggle("AutoMaxBattleSpeed", { Text = "Max Battle Speed", Default = true })
if Toggles.RemoveRollZoom then
    Toggles.RemoveRollZoom:OnChanged(function()
        ot(Toggles.RemoveRollZoom.Value)
    end)
    if Toggles.RemoveRollZoom.Value then
        ot(true)
    end
end
o0, oW, oB = nil, nil, nil
task.spawn(worker)
n7(RunService.Heartbeat:Connect(function()
    local CurrentCamera
    local u2
    if Library.Unloaded then
        return
    end
    local u6 = if ox("KillAura") then 1 else 0
    if u6 == 1 then
        pcall(od)
    end
    if ox("MoneyMagnet") then
        pcall(oS)
    end
    if ox("RemoveRollZoom") then
        CurrentCamera = Workspace.CurrentCamera
        u2 = oO()
        pcall(function()
            if CurrentCamera and CurrentCamera.FieldOfView < 65 then
                CurrentCamera.FieldOfView = 70
            end
            if u2 and u2.CameraOffset.Magnitude > 0.05 then
                u2.CameraOffset = Vector3.zero
            end
        end)
    end
end))
x4_20 = function()
    local vX
    local vY
    vX = nil
    vY = nil
    local vW, Label, Label2, Label3, v1
    local function v2()
        local u7 = hookfunction ~= nil
        local u8 = hookmetamethod ~= nil
        local u9 = getrawmetatable ~= nil
        local va = setrawmetatable ~= nil
        local vb = getgc ~= nil
        local vc = getgenv ~= nil
        local vd = getreg ~= nil
        local ve = getconnections ~= nil
        local vf = firesignal ~= nil
        local vg = getcallbackvalue ~= nil
        local vh = setclipboard ~= nil
        local vi = getcustomasset ~= nil
        local vj = getnamecallmethod ~= nil
        local vk = isexecutorclosure ~= nil
        local vl = fireproximityprompt ~= nil
        local vm = firetouchinterest ~= nil
        local vn = WebSocket ~= nil
        local vo = readfile ~= nil
        local vp = writefile ~= nil
        local vq = request
        local vB = if vq then 1 else 0
        local vz = 1190 * vB + 2115 * (1 - vB)
        local vA = 2141 * vB + 3106 * (1 - vB)
        if not ((vz * 3195 + vA * 276 + vz * vA) % 16777213 == 6940756) then
            vq = http_request
        end
        local vr = vq ~= nil
        local vt = (debug and debug.getupvalues) ~= nil
        local vv = (debug and debug.setupvalue) ~= nil
        local vw = 0
        local vx = { u7, u8, u9, va, vb, vc, vd, ve, vf, vg, vh, vi, vj, vk, vl, vm, vn, vo, vp, vr, vt, vv }
        for i, v in ipairs(vx) do
            if v then
                vw += 1
            end
        end
        local u7_1 = vw / #vx
        if u7_1 >= 0.9 then
            return o1("Full Support", ob)
        elseif u7_1 >= 0.6 then
            return o1("Half Support", pz)
        else
            return o1("Low Support", pt)
        end
    end
    vX = "Unknown"
    pcall(function()
        local vJ_1
        local vI_1
        if identifyexecutor then
            vJ_1, vI_1 = identifyexecutor()
            local vK = vJ_1 ~= ""
            local vL = type(vJ_1) == "string" and vK
            if vL then
                local vK_1 = type(vI_1) == "string" and vI_1 ~= "" and vJ_1 .. " " .. vI_1
                local vI_2 = vK_1
                local vP = if vI_2 then 1 else 0
                local vN = 2690 * vP + 2788 * (1 - vP)
                local vO = 777 * vP + 2630 * (1 - vP)
                if not ((vN * 1724 + vO * 408 + vN * vO) % 16777213 == 7044706) then
                    vI_2 = vJ_1
                end
                vX = vI_2
            end
        end
    end)
    local v3 = v2()
    vY = os.clock()
    v1 = function()
        local vQ = math.floor(os.clock() - vY)
        if vQ < 60 then
            return vQ .. "s"
        elseif vQ < 3600 then
            return string.format("%dm %ds", vQ // 60, vQ % 60)
        else
            return string.format("%dh %dm", vQ // 3600, vQ % 3600 // 60)
        end
    end
    local UserGroup = oI.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = oP, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(oN("User", oP.DisplayName .. " @" .. oP.Name, ob), true)
    UserGroup:AddLabel(oN("UserId", tostring(oP.UserId), n6), true)
    UserGroup:AddLabel(oN("Executor", vX .. "  " .. v3, ob), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(oN("Session", v1(), pz), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            pv(oP.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            pv("https://www.roblox.com/users/" .. tostring(oP.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = oI.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(oN("Game", ou, n6), true)
    Label2 = SessionGroup:AddLabel(oN("Players", "0/0", ob), true)
    vW = tostring(game.JobId)
    local v3_1 = #vW > 18 and string.sub(vW, 1, 18) .. "..."
    local v3_2 = v3_1 or vW
    SessionGroup:AddLabel(oN("Job", v3_2, px), true)
    Label = SessionGroup:AddLabel(oN("Ping", "0 ms", pz), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            pb:Teleport(game.PlaceId, oP)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            pv(vW, "Copied Job ID")
        end
    })
    task.spawn(function()
        local vT_1
        local vS_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(oN("Session", v1(), pz))
            Label2:SetText(oN("Players", #n4:GetPlayers() .. "/" .. tostring(n4.MaxPlayers), ob))
            vS_1, vT_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local vS_2 = vS_1 and vT_1 .. " ms" or "n/a"
            Label:SetText(oN("Ping", vS_2, pz))
        end
    end)
    local SocialsGroup = oI.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = pd })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            pv(oi, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            pv(oe, "Copied website link")
        end
    })
end
x4_20()
x4_29 = function()
    local connection
    local MovementGroup = oI.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = oI.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local function iG(iH)
        pcall(function()
            pf:SetGameplayPausedNotificationEnabled(not iH)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = o7:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not iH
            end
        end)
        if not iH then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(oP, "GameplayPaused", false)
            else
                oP.GameplayPaused = false
            end
        end)
    end
    local function iU(iV)
        local wg = if not iV:IsA("ProximityPrompt") then 1 else 0
        if wg == 1 then
            return
        end
        iV.HoldDuration = 0
        iV.MaxActivationDistance = 50
        iV.RequiresLineOfSight = false
    end
    connection = nil
    n7(RunService.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = oP.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local wh_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if wh_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end))
    n7(ps.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local ws_1 = oO()
            if ws_1 then
                ws_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end))
    local CurrentCamera = Workspace.CurrentCamera
    n7(RunService.RenderStepped:Connect(function(jh)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local wu_1 = oO()
            if wu_1 then
                wu_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local wu_3 = oz()
            local wv = oO()
            if wu_3 and wv then
                wv.PlatformStand = true
                local wv_1 = Vector3.zero
                if ps:IsKeyDown(Enum.KeyCode.W) then
                    wv_1 += CurrentCamera.CFrame.LookVector
                end
                if ps:IsKeyDown(Enum.KeyCode.S) then
                    wv_1 -= CurrentCamera.CFrame.LookVector
                end
                local wA = if ps:IsKeyDown(Enum.KeyCode.A) then 1 else 0
                if wA == 1 then
                    wv_1 -= CurrentCamera.CFrame.RightVector
                end
                if ps:IsKeyDown(Enum.KeyCode.D) then
                    wv_1 += CurrentCamera.CFrame.RightVector
                end
                if ps:IsKeyDown(Enum.KeyCode.Space) then
                    wv_1 += Vector3.new(0, 1, 0)
                end
                local wD = if ps:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                if wD == 1 then
                    wv_1 -= Vector3.new(0, 1, 0)
                end
                wu_3.AssemblyLinearVelocity = Vector3.zero
                if wv_1.Magnitude > 0 then
                    wu_3.CFrame = wu_3.CFrame + wv_1.Unit * Options.FlySpeed.Value * jh
                end
            end
        end
    end))
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local wE = oO()
            if wE then
                wE.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local wG = oO()
            if wG then
                wG.WalkSpeed = 16
            end
        end
    end)
    Toggles.AntiGameplayPause:OnChanged(function()
        iG(Toggles.AntiGameplayPause.Value)
    end)
    iG(true)
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in Workspace:GetDescendants() do
                pcall(iU, descendant)
            end
            connection = Workspace.DescendantAdded:Connect(function(jL)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(iU, jL)
                end
            end)
            n7(connection)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                iG(true)
            end
        end
    end)
    return iG, function()
        if connection then
            connection:Disconnect()
            connection = nil
        end
    end
end
o0, oW = x4_29()
x4_28 = function(jW)
    local jX = 0
    local jY = tick()
    jW:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = jW:AddLabel("AFK triggers: 0")
    local function j_()
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        pn:CaptureController()
        pn:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        jX += 1
        jY = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. jX)
        end)
    end
    local connection = oP.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(j_)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local wY = Toggles.AntiAfk.Value and tick() - jY >= 60
            if wY then
                pcall(j_)
            end
        end
    end)
    jW:AddButton({
        Text = "Unload UI",
        Func = function()
            Library:Unload()
        end
    })
    return connection
end
x4_10 = oI.Settings:AddLeftGroupbox("Menu")
x4_10:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
oB = x4_28(x4_10)
x4_11:SetLibrary(Library)
x4_11:SetFolder("OuroborosHub")
x4_11:SaveDefault("Evil Hello Kitty")
x4_11:ApplyToTab(oI.Settings)
x4_11:LoadDefault()
op:SetLibrary(Library)
op:IgnoreThemeSettings()
op:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
op:SetFolder("OuroborosHub/BuildABeeSwarm")
x4_26 = op:BuildConfigSection(oI.Settings)
op:LoadAutoloadConfig()
x4_7 = function(kq)
    local function kr(ks, kt)
        local w3_1 = (ks == "Toggle" and Toggles or Options)[kt]
        local w2_2 = type(w3_1) == "table" and w3_1.Type == ks
        return w2_2 and w3_1 or nil
    end
    local function kC(kD, kE)
        local Type = kE.Type
        if Type == "Toggle" then
            return { idx = kD, type = "Toggle", value = kE.Value == true }
        elseif Type == "Slider" then
            return { idx = kD, type = "Slider", value = tostring(kE.Value) }
        elseif Type == "Dropdown" then
            return { idx = kD, type = "Dropdown", multi = kE.Multi == true, value = kE.Value }
        elseif Type == "Input" then
            local w7 = kE.Value or ""
            return { idx = kD, type = "Input", text = tostring(w7) }
        elseif Type == "ColorPicker" then
            return { idx = kD, type = "ColorPicker", value = kE.Value:ToHex(), transparency = kE.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = kD,
                type = "KeyPicker",
                mode = kE.Mode,
                key = kE.Value,
                modifiers = kE.Modifiers,
                toggled = kE.Toggled
            }
        else
            return nil
        end
    end
    local function kG()
        local xd = {}
        for k, v in { Toggles, Options } do
            for k, v in v do
                local xe = type(v) == "table" and type(v.Type) == "string" and not op.Ignore[k]
                if xe then
                    local xe_1 = kC(k, v)
                    if xe_1 then
                        xd[#xd + 1] = xe_1
                    end
                end
            end
        end
        table.sort(xd, function(kO, kP)
            if kO.type ~= kP.type then
                return kO.type < kP.type
            end
            return kO.idx < kP.idx
        end)
        return { objects = xd }
    end
    local function kQ(kR)
        local xx
        xx = nil
        local xy = type(kR) ~= "table" or type(kR.idx) ~= "string" or type(kR.type) ~= "string" or op.Ignore[kR.idx]
        if xy then
            return false
        end
        xx = kr(kR.type, kR.idx)
        if not xx then
            return false
        end
        local xy_1 = pcall(function()
            if kR.type == "Input" then
                if type(kR.text) ~= "string" then
                    return
                end
                xx:SetValue(kR.text)
            elseif kR.type == "ColorPicker" then
                xx:SetValueRGB(Color3.fromHex(kR.value), kR.transparency)
            elseif kR.type == "KeyPicker" then
                xx:SetValue({ kR.key, kR.mode, kR.modifiers })
                if kR.mode == "Toggle" and kR.toggled ~= nil then
                    xx.Toggled = kR.toggled
                    xx:Update()
                end
            else
                xx:SetValue(kR.value)
            end
        end)
        return xy_1
    end
    kq:AddDivider()
    kq:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    kq:AddButton("Export Config to Clipboard", function()
        local xB_1
        local xA_1
        xA_1, xB_1 = pcall(pj.JSONEncode, pj, kG())
        if not xA_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local xA_2 = setclipboard or toclipboard
        local xA_3 = type(xA_2) ~= "function" or not pcall(xA_2, xB_1)
        if xA_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    kq:AddButton("Import Config from Clipboard Text", function()
        local xJ_1
        local xH = Options.SaveManager_ImportSource.Value or ""
        local xH_1
        local xI = tostring(xH):match("^%s*(.-)%s*$")
        if xI == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        xH_1, xJ_1 = pcall(pj.JSONDecode, pj, xI)
        local xI_1 = not xH_1 or type(xJ_1) ~= "table" or type(xJ_1.objects) ~= "table"
        if xI_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local xH_2 = 0
        for i, v in ipairs(xJ_1.objects) do
            if kQ(v) then
                xH_2 += 1
            end
        end
        if xH_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local xJ_2 = xH_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(xH_2, xJ_2), 6)
    end)
end
x4_7(x4_26)
Library:OnUnload(function()
    ot(false)
    for k, v in oc do
        local x_ = v
        pcall(function()
            x_:Disconnect()
        end)
    end
    table.clear(oc)
    if oB then
        pcall(function()
            oB:Disconnect()
        end)
    end
    if oW then
        pcall(oW)
    end
    if o0 then
        pcall(o0, false)
    end
    if getgenv then
        getgenv().__OuroborosBuildABeeSwarmLib = nil
    end
end)
pcall(fn128)
