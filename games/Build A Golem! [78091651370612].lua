local nJ
local Options
local nM
local nq
local ct
local nP
local remotes
local nS
local nd
local nz
local od
local nF
local Crafters
local nm
local n3
local m3
local nL
local n6
local Toggles
local ns
local n9
local part_registry
local Inventory
local Selling
local nc
local ny
local nU
local Library
local nX
local n2
local nH
local no
local Local
local nK
local LocalPlayer
local n8
local m8
local nu
local gear_shop
local nA
local nD
local function fn86()
    if n9 and n9.world and n9.replicator then
        return n9
    end
    for k, v in getgc(true) do
        local pD_1 = type(v) == "table" and rawget(v, "world") and rawget(v, "replicator") and rawget(v, "scheduler")
        if pD_1 then
            n9 = v
            return n9
        end
    end
    return nil
end
local function fn95(dd, de, df)
    local qS = {}
    if de then
        for k, v in de do
            if v.golem == df then
                qS[k] = true
            elseif v.golem ~= nil then
                return false, qS
            end
        end
    end
    if dd then
        for k in dd do
            qS[k] = true
        end
    end
    return nK(qS), qS
end
local function fn139()
    local Character = LocalPlayer.Character
    local pM = Character and Character:FindFirstChildOfClass("Humanoid")
    return pM
end
local function fn148()
    nu(false)
    nq()
    if nc then
        nc:Disconnect()
    end
    n9 = nil
    local uO = nL()
    if uO then
        uO.PlatformStand = false
        uO.WalkSpeed = 16
    end
end
local function fn165(bl)
    local DiscordGroup = bl:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = n2 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = n2 })
end
local function fn173(eB, eC)
    local rF = Selling.held_sale(eB.world, eC)
    if rF ~= nil and not rF.last_golem then
        remotes.requests.sell:fire()
        return
    end
    if rF == nil then
        local rF_1 = Selling.held_tool(eB.world, eC)
        if rF_1 ~= nil then
            remotes.requests.sell:fire()
        end
    end
end
local function fn190(a7, a8)
    return string.format('<font color="%s">%s</font>', a8, a7)
end
local function fn230()
    local q3 = no("BuildGolemList")
    local q4 = {}
    for k in q3 do
        local q3_1 = nP[k]
        if q3_1 then
            q4[q3_1] = true
        end
    end
    return q4
end
local function fn254(aQ, aR)
    return aQ.label < aR.label
end
local function fn292(bT, bU)
    for k, v in bT:archetypes() do
        local entities = v.entities
        local qk = #entities
        local qj = -1
        while false and qk <= 1 or true and qk >= 1 do
            local ql = qk
            bU(entities[ql], v, ql)
            qk += qj
        end
    end
end
local function autoRollLoop()
    while not Library.Unloaded do
        local s7 = n6()
        if s7 then
            local s8 = Local.player(s7)
            local s9 = Local.plot(s7)
            if s8 and s9 then
                if Toggles.AutoRoll.Value then
                    pcall(ns, s7, s9)
                end
                if Toggles.AutoBuyRollResult.Value then
                    pcall(n3, s7, s9, s8)
                end
                if Toggles.AutoPickupBox.Value then
                    pcall(nm, s7, s9)
                end
                if Toggles.AutoSellBoxes.Value then
                    pcall(nX, s7, s8)
                end
                if Toggles.AutoBuyGears.Value then
                    pcall(nA)
                end
                if Toggles.AutoBuildGolem.Value then
                    pcall(n8, s7, s9)
                end
                if Toggles.AutoBuyPlots.Value then
                    pcall(nd, s7, s9, s8)
                end
                if Toggles.AutoPlaceGolem.Value then
                    pcall(nM, s7)
                end
                if Toggles.AutoUpgradeStation.Value then
                    pcall(m8, s7, s9)
                end
            end
        end
        task.wait(0.35)
    end
end
local function fn333()
    od(nD, "Copied Discord invite to clipboard")
end
local function fn375(bP)
    local p6 = no("BuyRarities")
    if next(p6) == nil then
        return true
    end
    return p6[bP] == true
end
local function fn404(fX)
    local sn = Local.player(fX)
    if not sn then
        return
    end
    local so = Crafters.held_tools(fX)
    if not so or not so.has_golem then
        local sp_1 = nz(fX, sn)
        if sp_1 == nil then
            return
        end
        Inventory.equip(fX, sp_1)
        task.wait(0.08)
        so = Crafters.held_tools(fX)
    end
    if not so or not so.has_golem then
        return
    end
    if nJ and nJ.place then
        nJ.place(fX)
    else
        remotes.requests.place:fire()
    end
end
local function fn422(a0, a1)
    if setclipboard then
        setclipboard(a0)
    elseif toclipboard then
        toclipboard(a0)
    end
    Library:Notify(a1)
end
local function fn469(U, V)
    return U.rank < V.rank
end
local function fn600(c8)
    if not c8 then
        return false
    end
    for k, v in nU do
        if not c8[v] then
            return false
        end
    end
    return true
end
local function fn607(ba, bb, bc)
    return string.format("<b>%s</b> %s %s", ba, nS("-", "#5a6070"), nS(bb, bc))
end
local function fn635(b_, b0)
    return b_.replicator:get_server_entity(b0)
end
local function fn675(b7)
    local qu_1
    local qt_1
    qt_1, qu_1 = pcall(part_registry.get, b7)
    if qt_1 then
        return qu_1
    end
    return nil
end
local function fn676()
    local rP_1
    local rO_1
    local rL = no("GearList")
    local rM = tonumber(Options.GearQuantity.Value) or 1
    for k in rL do
        local rL_1 = m3[k]
        if rL_1 then
            local rM_1 = 1
            if gear_shop.remaining_gear_stock then
                rO_1, rP_1 = pcall(gear_shop.remaining_gear_stock, rL_1)
                local rQ = rO_1 and type(rP_1) == "number"
                if rQ then
                    rM_1 = rP_1
                end
            end
            if rM_1 > 0 then
                remotes.requests.buy_gear:fire(rL_1, rM)
            end
        end
    end
end
local function fn761(b2, b3)
    local qn = b2.world:get(b3, ct.money)
    local qo = qn
    local qs = if qo then 1 else 0
    local qq = 1958 * qs + 1339 * (1 - qs)
    local qr = 3159 * qs + 3027 * (1 - qs)
    if not ((qq * 2590 + qr * 1393 + qq * qr) % 16777213 == 15657029) then
        qo = 0
    end
    return qo
end
local function fn783(dv, dw, dx)
    local golem
    if dw then
        for k, v in dw do
            if v.golem then
                if not dx[v.golem] then
                    return nil
                end
                golem = v.golem
                break
            end
        end
    end
    if golem then
        local rb = ny(dv[golem], dw, golem)
        if rb then
            return golem
        end
        return nil
    end
    for k in dx do
        local ra_1 = ny(dv[k], dw, k)
        if ra_1 then
            return k
        end
    end
    return nil
end
local function fn788(bG)
    local pX = Options[bG]
    local pY = pX and pX.Value
    local pX_1 = {}
    if type(pY) ~= "table" then
        return pX_1
    end
    for k, v in pY do
        if v then
            pX_1[k] = true
        end
    end
    return pX_1
end
local function fn800()
    local Character = LocalPlayer.Character
    local pS = Character and Character:FindFirstChild("HumanoidRootPart")
    return pS
end
local function fn875(cc)
    if type(cc) == "table" then
        return cc.part_id
    elseif type(cc) == "string" then
        return cc
    else
        return nil
    end
end
m3 = nil
Options = nil
Toggles = nil
m8 = nil
part_registry = nil
nc = nil
nd = nil
gear_shop = nil
Library = nil
nm = nil
no = nil
nq = nil
ns = nil
ct = nil
nu = nil
remotes = nil
ny = nil
nz = nil
nA = nil
nD = nil
nF = nil
nH = nil
nJ = nil
nK = nil
nL = nil
nM = nil
LocalPlayer = nil
Selling = nil
local is_full_set, m2, part_price, m7, SaveManager, nb, ng, plot_upgrades, ni, island_price, nk, slots, nn, pair, nr, nv, nx, nB, nC, nE, nG, nI
nP = nil
Inventory = nil
nS = nil
nU = nil
nX = nil
Crafters = nil
n2 = nil
n3 = nil
Local = nil
n6 = nil
n8 = nil
n9 = nil
od = nil
local Workspace, nT, nV, Plots, nY, nZ, n_, n1, n4, UserInputService, RunService, ob, oc
local oq_1
local on_1
local oh_1
RunService, UserInputService, n4, nZ, nV, nT, Workspace, LocalPlayer, oh_1, nG, nD, nC, remotes, ct, pair, slots, island_price, plot_upgrades, gear_shop, part_registry, part_price, is_full_set, on_1, Local, Crafters, Plots, Inventory, Selling = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local oe_4
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local oj_3
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
if (false and is_full_set or (nC or slots)) and (is_full_set and false or not pair and slots) and (pair or nC or false or (pair or is_full_set) and (pair or not is_full_set)) and not ((false and is_full_set or (nC or slots)) and (is_full_set and false or not pair and slots) and (pair or nC or false or (pair or is_full_set) and (pair or not is_full_set))) then
    nT = game:GetService("VirtualUser")
    nV = game:GetService("HttpService")
    nZ = game:GetService("GuiService")
    n4 = game:GetService("CoreGui")
else
    n4 = game:GetService("VirtualUser")
    nZ = game:GetService("HttpService")
    nV = game:GetService("GuiService")
    nT = game:GetService("CoreGui")
end
Workspace = game:GetService("Workspace")
if (not Workspace and oh_1 and (not Plots and not Workspace) or (not oh_1 and not Workspace or (part_registry or oh_1)) or part_registry and not part_registry and (not Workspace or false) and (oh_1 and not on_1 or not Plots and Workspace)) and not (not Workspace and oh_1 and (not Plots and not Workspace) or (not oh_1 and not Workspace or (part_registry or oh_1)) or part_registry and not part_registry and (not Workspace or false) and (oh_1 and not on_1 or not Plots and Workspace)) then
else
    LocalPlayer = Players.LocalPlayer
end
local PlayerScripts = LocalPlayer:WaitForChild("PlayerScripts")
nG = "Build A Golem"
nD = "https://discord.gg/ehKVq7pf7v"
nC = "https://rscripts.net/@Ouroboros"
local TS = ReplicatedStorage:WaitForChild("TS")
local og_3, og_4
remotes = require(TS:WaitForChild("remotes")).remotes
ct = require(TS:WaitForChild("components")).ct
pair = require(ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("jecs"):WaitForChild("src"):WaitForChild("jecs")).pair
slots = require(TS:WaitForChild("constants"):WaitForChild("slots")).slots
island_price = require(TS:WaitForChild("constants"):WaitForChild("islands")).island_price
plot_upgrades = require(TS:WaitForChild("constants"):WaitForChild("plot-upgrades"))
gear_shop = require(TS:WaitForChild("constants"):WaitForChild("gear-shop"))
local part = require(TS:WaitForChild("registries"):WaitForChild("part"))
part_registry = part.part_registry
part_price = part.part_price
is_full_set = part.is_full_set
local rarity = require(TS:WaitForChild("structs"):WaitForChild("rarity"))
local golem_part = require(TS:WaitForChild("structs"):WaitForChild("golem-part"))
local GolemList = golem_part.GolemList
local oo_1
Local = require(PlayerScripts:WaitForChild("TS"):WaitForChild("controllers"):WaitForChild("local")).Local
Crafters = require(PlayerScripts:WaitForChild("TS"):WaitForChild("controllers"):WaitForChild("crafters")).Crafters
Plots = require(PlayerScripts:WaitForChild("TS"):WaitForChild("controllers"):WaitForChild("plots")).Plots
local golems = require(PlayerScripts:WaitForChild("TS"):WaitForChild("controllers"):WaitForChild("golems"))
local ol_1, ol_2
Inventory = require(PlayerScripts:WaitForChild("TS"):WaitForChild("controllers"):WaitForChild("inventory")).Inventory
Selling = require(TS:WaitForChild("controllers"):WaitForChild("selling")).Selling
local oe_1 = golems.Golems or golems
local of_1 = {}
nJ = oe_1
for k, v in rarity.rarities do
    of_1[v] = k
end
local oe_2 = {}
local og_1 = {}
for k, v in of_1 do
    og_1[#og_1 + 1] = { name = k, rank = v }
end
local of_2 = 3
repeat
    local oh_3 = {
        "enemh",
        "hyhlhacnwy",
        "ssxzyjzdumjt",
        "hhhw",
        "rhk",
        "gbzsfvlys",
        "mhnkr",
        "piwztazpkbr",
        "lztnvgiv",
        "kcttdrxtgeqi",
        "jkzmcfv",
        "lsungxpfm",
        "pliir",
        "hkmfyedvgo",
        "huxb",
        "ttxrmqrnak"
    }
    if oh_3[(of_2 * 5 + 10) % 16 + 1] < oh_3[(of_2 * 5 + 10) % 16 + 1] then
        table.sort(og_1, fn469)
    else
        table.sort(og_1, fn469)
    end
    of_2 = (of_2 + 3) % 4
until (of_2 * 3 + 1) % 4 == 3
for k, v in og_1 do
    oe_2[#oe_2 + 1] = v.name
end
nb = {}
for k in slots do
    nb[#nb + 1] = k
end
m3 = nil
local of_3 = 4
repeat
    if of_3 * 88681561 + 9 + 4 <= of_3 * 88681561 + 9 + 4 + 1 then
        table.sort(nb)
        og_3 = {}
        m3 = {}
    else
        table.sort(m3)
        nb = {}
        og_3 = {}
    end
    of_3 = (of_3 + 2) % 8
until (of_3 * 5 + 6) % 8 == 4
local oh_4 = {}
for k in gear_shop.GEAR_PRODUCTS do
    oh_4[#oh_4 + 1] = k
end
table.sort(oh_4)
for k, v in oh_4 do
    local of_4 = string.gsub(v, "_", " ")
    local of_5 = string.gsub(of_4, "(%a)([%w]*)", function(ah, ai)
        return string.upper(ah) .. ai
    end)
    og_3[#og_3 + 1] = of_5
    m3[of_5] = v
end
local of_6 = {}
for k, v in gear_shop.QUANTITIES do
    of_6[#of_6 + 1] = tostring(v)
end
nF = {}
nH = {}
local function oh_5(ap)
    local ps = type(ap) == "table" and ap.component
    local pt = ps or ap
    if type(pt) ~= "number" then
        return
    end
    local pt_1 = "?"
    for k, v in ct do
        if v == pt then
            pt_1 = k
            break
        end
    end
    local pu = string.gsub(pt_1, "_", " ")
    local pu_1 = string.gsub(pu, "(%a)([%w_']*)", function(ax, ay)
        return string.upper(ax) .. ay
    end)
    if nF[pu_1] then
        return
    end
    nH[#nH + 1] = pu_1
    nF[pu_1] = pt
end
for k, v in plot_upgrades.all_upgrade_list do
    oh_5(v)
end
if #nH == 0 then
    for k, v in {
        plot_upgrades.plot_upgrade_list,
        plot_upgrades.island_upgrade_list,
        plot_upgrades.roll_upgrade_list
    } do
        for k, v in v do
            oh_5(v)
        end
    end
end
local oi = golem_part.golem_part_slots or { "Head", "Arms", "Legs", "Core", "Pickaxe" }
local oi_6
nU, ol_1, nP = nil, nil, nil
if (not nP and false and (not ol_1 or nU) or false or (ol_1 or 7 or (not nP or not ol_1)) and 7) and not (not nP and false and (not ol_1 or nU) or false or (ol_1 or 7 or (not nP or not ol_1)) and 7) then
    nU = {}
else
    nU = oi
    ol_1 = {}
end
nP = {}
local oh_7 = {}
for k, v in GolemList do
    local oi_1 = string.gsub(tostring(k), "_", " ")
    local oi_2 = string.gsub(oi_1, "(%a)([%w]*)", function(aO, aP)
        return string.upper(aO) .. aP
    end)
    oh_7[#oh_7 + 1] = { label = oi_2, id = v }
end
local oj_1 = 0
repeat
    local oi_3 = {
        "fpesqrme",
        "vmattyw",
        "rnnove",
        "xqqvq",
        "rblfvgvnw",
        "vrpqfvpllvs",
        "yqnyjnfc",
        "hwvto",
        "tpsuoa",
        "efbochus",
        "wrr"
    }
    local vE = oj_1
    local om_1 = oi_3[vE % 11 + 1]
    if om_1:len() >= om_1:reverse():rep(vE % 3 + 2):len() then
        table.sort(oh_7, fn254)
    else
        table.sort(oh_7, fn254)
    end
    oj_1 = (oj_1 + 6) % 8
until (oj_1 * 5 + 2) % 8 == 0
for k, v in oh_7 do
    ol_1[#ol_1 + 1] = v.label
    nP[v.label] = v.id
end
Library, SaveManager, Toggles, Options, nv, nr, nn, nk, ng, od, n2, nS, nI = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
od = fn422
n2 = fn333
nS = fn190
nI = fn607
nv = "#7fd47f"
nr = "#6ec1ff"
nn = "#e8a34d"
nk = "#8b93a3"
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = nD, Copyable = true }, "|", nG },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
ng = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in ng do
    fn165(v)
end
n9, n6, nL, nB, no, oc, n_, nE, nx, ni, m2, ob, n1, nK, ny, m7, nY, ns, n3, nm, nX, nA, n8, nd, nz, nM, m8 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
n6 = fn86
nL = fn139
nB = fn800
no = fn788
oc = fn375
n_ = fn292
nE = fn635
nx = fn761
ni = fn675
m2 = fn875
ob = function(ce, cf)
    local cg = {}
    pcall(function()
        n_(ce.world:query(ct.part_type):with(pair(ct.owner_link, cf)), function(cp)
            local qx = m2(ce.world:get(cp, ct.part_type))
            local qy = qx and ni(qx)
            local qy_1 = not qy
            local qD = if qy_1 then 1 else 0
            local qB = 2106 * qD + 3777 * (1 - qD)
            local qC = 2669 * qD + 1360 * (1 - qD)
            if not ((qB * 357 + qC * 2607 + qB * qC) % 16777213 == 13330839) then
                qy_1 = not qy.golem
            end
            if not qy_1 then
                qy_1 = not qy.slot
            end
            if qy_1 then
                return
            end
            local qy_2 = cg[qy.golem]
            if not qy_2 then
                qy_2 = {}
                cg[qy.golem] = qy_2
            end
            if not qy_2[qy.slot] then
                qy_2[qy.slot] = { entity = cp, part_id = qx, golem = qy.golem, slot = qy.slot }
            end
        end)
    end)
    return cg
end
n1 = function(cF, cG)
    local cI = {}
    local cH = {}
    pcall(function()
        n_(cF.world:query(ct.part_type):with(pair(ct.owner_link, cG)), function(cR)
            local qE = m2(cF.world:get(cR, ct.part_type))
            local qF = qE and ni(qE)
            local qG = qF
            if qF then
                qF = qG.slot
            end
            if qF then
                cH[qG.slot] = { entity = cR, part_id = qE, golem = qG.golem, slot = qG.slot }
                cI[#cI + 1] = qE
            end
        end)
    end)
    return cH, cI
end
nK = fn600
ny = fn95
m7 = fn230
nY = fn783
ns = function(dG, dH)
    n_(dG.world:query(ct.roll_machine):with(pair(ct.container_link, dH)), function(dL)
        local rn = nE(dG, dL)
        if rn ~= nil then
            remotes.requests.roll:fire(rn)
        end
    end)
end
n3 = function(dT, dU, dV)
    local dX = nx(dT, dV)
    n_(dT.world:query(ct.roll_machine):with(pair(ct.container_link, dU)), function(d0)
        local rs = nE(dT, d0)
        if rs == nil then
            return
        end
        for k, v in nb do
            local rt = slots[v]
            if rt then
                local ru = dT.world:get(d0, pair(ct.roll_result, rt))
                local rt_1 = type(ru) == "table" and ru.part_id
                if rt_1 then
                    local rt_2 = ni(ru.part_id)
                    local rv = rt_2 and rt_2.rarity
                    local rt_3 = rv
                    if rv then
                        rv = oc(rt_3)
                    end
                    if rv then
                        local rt_4 = part_price(ru.part_id) or 0
                        if rt_4 <= dX then
                            remotes.requests.purchase:fire(rs, v)
                            dX -= rt_4
                        end
                    end
                end
            end
        end
    end)
end
nm = function(eo, ep)
    n_(eo.world:query():with(ct.pile, pair(ct.container_link, ep)), function(et)
        local rD = nE(eo, et)
        if rD ~= nil then
            remotes.requests.grab:fire(rD)
        end
    end)
end
nX = fn173
nA = fn676
n8 = function(eX, eY)
    local r7, r8
    local r9 = Local.player(eX)
    if not r9 then
        return
    end
    r7 = m7()
    if next(r7) == nil then
        return
    end
    r8 = ob(eX, r9)
    n_(eX.world:query():with(ct.crafter, pair(ct.container_link, eY)), function(e5)
        local rX_1
        local rW_1
        if Crafters.is_busy(eX, e5) then
            return
        end
        rX_1, rW_1 = n1(eX, e5)
        if is_full_set(rW_1) then
            return
        end
        local rW_2 = nY(r8, rX_1, r7)
        if not rW_2 then
            return
        end
        local rY = r8[rW_2]
        if not rY then
            return
        end
        local rW_3 = nE(eX, e5)
        if rW_3 == nil then
            return
        end
        for k, v in nU do
            local rZ = rY[v]
            if rZ and not rX_1[v] then
                Inventory.equip(eX, rZ.entity)
                task.wait(0.08)
                local rZ_1 = Crafters.held_tools(eX)
                if rZ_1 and rZ_1.part_slot == v then
                    local r__2 = Crafters.crafter_action(eX, e5, rZ_1)
                    if r__2 ~= nil then
                        remotes.requests.insert:fire(rW_3)
                    end
                end
                return
            end
        end
    end)
end
nd = function(fl, fm, fn)
    if not Plots.zones_unlocked(fl, fm) then
        return
    end
    local sd = nx(fl, fn)
    if sd < island_price then
        return
    end
    n_(fl.world:query():with(ct.island_purchase, pair(ct.container_link, fm)), function(fv)
        local sb = nE(fl, fv)
        if sb ~= nil then
            remotes.requests.buy_island:fire(sb)
        end
    end)
end
nz = function(fD, fE)
    local sj, sk
    sj = nil
    sk = nil
    pcall(function()
        n_(fD.world:query():with(ct.golem_tool, pair(ct.owner_link, fE)), function(fP)
            sk = fP
            if not fD.world:has(fP, ct.equipped) then
                sj = fP
            end
        end)
    end)
    return sj or sk
end
nM = fn404
m8 = function(ga, gb)
    local ss
    ss = nil
    local sr
    local st = no("UpgradeList")
    if next(st) == nil then
        return
    end
    sr = Local.player(ga)
    if not sr then
        return
    end
    local su = nx(ga, sr)
    ss = { gb }
    n_(ga.world:query(ct.roll_machine):with(pair(ct.container_link, gb)), function(gm)
        ss[#ss + 1] = gm
    end)
    pcall(function()
        n_(ga.world:query():with(ct.island, pair(ct.owner_link, sr)), function(gt)
            ss[#ss + 1] = gt
        end)
    end)
    for k in st do
        local st_1 = nF[k]
        if st_1 then
            for k, v in ss do
                local sv = nE(ga, v)
                if sv ~= nil then
                    local sw = plot_upgrades.container_upgrade_definition(ga.world, v, st_1)
                    local sx = ga.world:get(v, st_1) or 0
                    local sy = sw
                    if sy then
                        sy = not plot_upgrades.is_upgrade_maxed(sw, sx)
                    end
                    if sy then
                        local sx_1 = plot_upgrades.upgrade_price(sw, sx) or 0
                        if su >= sx_1 then
                            remotes.requests.upgrade:fire(sv, st_1)
                            su -= sx_1
                        end
                    end
                end
            end
        end
    end
end
local function oj_2()
    local s2
    s2 = nil
    local Label, s_, s0, s1
    s2 = "Unknown"
    pcall(function()
        local sP_1
        local sO_1
        if identifyexecutor then
            sP_1, sO_1 = identifyexecutor()
            local sQ = sP_1 ~= ""
            local sR = type(sP_1) == "string" and sQ
            if sR then
                local sQ_1 = type(sO_1) == "string" and sO_1 ~= "" and sP_1 .. " " .. sO_1
                s2 = sQ_1 or sP_1
            end
        end
    end)
    local AccountGroup = ng.Info:AddLeftGroupbox("Account", "circle-user")
    AccountGroup:AddLabel(nI("User", LocalPlayer.Name, nv), true)
    AccountGroup:AddLabel(nI("Status", "Keyless", nv), true)
    AccountGroup:AddLabel(nI("Executor", s2, nv), true)
    local GameInfoGroup = ng.Info:AddLeftGroupbox("Game Info", "gamepad-2")
    GameInfoGroup:AddLabel(nS(nG .. " [" .. tostring(game.PlaceId) .. "]", nr), true)
    GameInfoGroup:AddLabel(nI("Place ID", tostring(game.PlaceId), nr), true)
    Label = GameInfoGroup:AddLabel(nI("Session time", "0s", nn), true)
    s0 = tostring(game.JobId)
    local s4 = #s0 > 18 and string.sub(s0, 1, 18) .. "..."
    local s4_1 = s4 or s0
    GameInfoGroup:AddLabel(nI("Server", s4_1, nk), true)
    GameInfoGroup:AddButton({
        Text = "Copy join script (Job ID)",
        Func = function()
            local gX = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, s0)
            od(gX, "Copied join script to clipboard")
        end
    })
    s_ = os.clock()
    task.spawn(function()
        local sX_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            local sW = math.floor(os.clock() - s_)
            if sW < 60 then
                sX_1 = sW .. "s"
            elseif sW < 3600 then
                sX_1 = string.format("%dm %ds", sW // 60, sW % 60)
            else
                sX_1 = string.format("%dh %dm", sW // 3600, sW % 3600 // 60)
            end
            Label:SetText(nI("Session time", sX_1, nn))
        end
    end)
    local ScriptsGroup = ng.Info:AddRightGroupbox("Scripts", "package")
    ScriptsGroup:AddLabel(nS("Included in this hub", nk), true)
    ScriptsGroup:AddLabel(nS(nG, nr), true)
    local FeaturesGroup = ng.Info:AddRightGroupbox("Features", "list")
    FeaturesGroup:AddLabel(nS("Automation", nr), true)
    FeaturesGroup:AddLabel(nS("Misc Utilities", nk), true)
    local SocialsGroup = ng.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = n2 })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            od(nC, "Copied Rscripts profile to clipboard")
        end
    })
    local OuroborosHubGroup = ng.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
    OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = n2 })
    s1 = {
        [1] = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w",
        [2] = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99",
        [3] = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
        [4] = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
        [5] = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp",
        [6] = "https://paypal.me/TheTruckerGOD",
        [7] = "https://venmo.com/u/miserablemusic"
    }
    local DonationsGroup = ng.Info:AddRightGroupbox("Donations", "heart")
    DonationsGroup:AddLabel(nS("All donations are optional but appreciated.", nn), true)
    DonationsGroup:AddLabel(nS("If you donate you get a special role, just PING after you donate.", nv), true)
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(nS("LTC / Litecoin", "#345d9d"), true)
    DonationsGroup:AddButton({
        Text = "Copy Litecoin Address",
        Func = function()
            od(s1[1], "Copied Litecoin address")
        end
    })
    DonationsGroup:AddLabel(nS("BTC / Bitcoin", "#f7931a"), true)
    DonationsGroup:AddButton({
        Text = "Copy Bitcoin Address",
        Func = function()
            od(s1[2], "Copied Bitcoin address")
        end
    })
    DonationsGroup:AddLabel(nS("ETH / Ethereum", "#627eea"), true)
    DonationsGroup:AddButton({
        Text = "Copy Ethereum Address",
        Func = function()
            od(s1[3], "Copied Ethereum address")
        end
    })
    DonationsGroup:AddLabel(nS("USDT", "#26a17b"), true)
    DonationsGroup:AddButton({
        Text = "Copy USDT Address",
        Func = function()
            od(s1[4], "Copied USDT address")
        end
    })
    DonationsGroup:AddLabel(nS("Solana", "#14f195"), true)
    DonationsGroup:AddButton({
        Text = "Copy Solana Address",
        Func = function()
            od(s1[5], "Copied Solana address")
        end
    })
    DonationsGroup:AddLabel(nS("PayPal", "#0070ba"), true)
    DonationsGroup:AddButton({
        Text = "Copy PayPal Link",
        Func = function()
            od(s1[6], "Copied PayPal link")
        end
    })
    DonationsGroup:AddLabel(nS("Venmo", "#008cff"), true)
    DonationsGroup:AddButton({
        Text = "Copy Venmo Link",
        Func = function()
            od(s1[7], "Copied Venmo link")
        end
    })
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(nS("Don't have any of the listed currencies but still wanna donate?", nk), true)
    DonationsGroup:AddLabel(nS("DM me and we'll work something out.", nr), true)
    local FaqGroup = ng.Info:AddRightGroupbox("FAQ", "circle-help")
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
oj_2()
local RollGroup = ng.Main:AddLeftGroupbox("Roll", "dices")
RollGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
RollGroup:AddToggle("AutoBuyRollResult", { Text = "Auto Buy Roll Result", Default = false })
RollGroup:AddDropdown("BuyRarities", { Text = "Buy Rarities", Values = oe_2, Default = oe_2, Multi = true, SelectAllButtons = true })
local BoxesGroup = ng.Main:AddLeftGroupbox("Boxes", "package")
BoxesGroup:AddToggle("AutoPickupBox", { Text = "Auto Pick Up Box", Default = false })
BoxesGroup:AddToggle("AutoSellBoxes", { Text = "Auto Sell Boxes", Default = false })
local GearsGroup = ng.Main:AddRightGroupbox("Gears", "wrench")
GearsGroup:AddToggle("AutoBuyGears", { Text = "Auto Buy Gears", Default = false })
GearsGroup:AddDropdown("GearList", { Text = "Gears", Values = og_3, Default = {}, Multi = true, SelectAllButtons = true })
local oe_3 = of_6[1] or "1"
oj_3, nu, nq, nc, oi_6, oq_1, oo_1, og_4 = nil, nil, nil, nil, nil, nil, nil, nil
if (not nq and og_4 and (nq or not og_4) or (og_4 or not nq or og_4 and not nq)) and not (not nq and og_4 and (nq or not og_4) or (og_4 or not nq or og_4 and not nq)) then
    GearsGroup:AddDropdown("GearQuantity", { Default = ng, Text = "Quantity", Values = of_6 })
    nq = nH.Main:AddRightGroupbox("Golem", "bot")
    nq:AddToggle("AutoBuildGolem", { Text = "Auto Build Golem", Default = false })
    nq:AddDropdown("BuildGolemList", { Multi = true, Values = oj_3, Text = "Golems", Default = oj_3, SelectAllButtons = true })
    nq:AddToggle("AutoBuyPlots", { Text = "Auto Buy Plots", Default = false })
    nq:AddToggle("AutoPlaceGolem", { Text = "Auto Place Golem", Default = false })
    nq:AddToggle("AutoUpgradeStation", { Text = "Auto Upgrade Station", Default = false })
    nq:AddDropdown("UpgradeList", { Values = oq_1, SelectAllButtons = true, Text = "Upgrades", Multi = true, Default = oq_1 })
    task.spawn(autoRollLoop)
    nu = function()
        local connection
        local MovementGroup = ng.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = ng.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        local function hL(hM)
            pcall(function()
                nV:SetGameplayPausedNotificationEnabled(not hM)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = nT:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not hM
                end
            end)
            if not hM then
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
        local function hZ(h_)
            if not h_:IsA("ProximityPrompt") then
                return
            end
            h_.HoldDuration = 0
            h_.MaxActivationDistance = 50
            h_.RequiresLineOfSight = false
        end
        connection = nil
        RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            if Toggles.NoClip and Toggles.NoClip.Value then
                local Character = LocalPlayer.Character
                if Character then
                    for i, descendant in Character:GetDescendants() do
                        local tk_4 = descendant:IsA("BasePart") and descendant.CanCollide
                        if tk_4 then
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
                local ts_2 = nL()
                if ts_2 then
                    ts_2:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end
        end)
        local CurrentCamera = Workspace.CurrentCamera
        RunService.RenderStepped:Connect(function(io)
            if Library.Unloaded then
                return
            end
            if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
                local tx_4 = nL()
                if tx_4 then
                    tx_4.WalkSpeed = Options.WalkSpeed.Value
                end
            end
            if Toggles.Fly and Toggles.Fly.Value then
                local tx_6 = nB()
                local ty = nL()
                if tx_6 and ty then
                    ty.PlatformStand = true
                    local ty_2 = Vector3.zero
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        ty_2 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        ty_2 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        ty_2 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        ty_2 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        ty_2 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        ty_2 -= Vector3.new(0, 1, 0)
                    end
                    tx_6.AssemblyLinearVelocity = Vector3.zero
                    if ty_2.Magnitude > 0 then
                        tx_6.CFrame = tx_6.CFrame + ty_2.Unit * Options.FlySpeed.Value * io
                    end
                end
            end
        end)
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                local tE = nL()
                if tE then
                    tE.PlatformStand = false
                end
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                local tG = nL()
                if tG then
                    tG.WalkSpeed = 16
                end
            end
        end)
        Toggles.AntiGameplayPause:OnChanged(function()
            hL(Toggles.AntiGameplayPause.Value)
        end)
        hL(true)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for i, descendant in Workspace:GetDescendants() do
                    pcall(hZ, descendant)
                end
                connection = Workspace.DescendantAdded:Connect(function(iS)
                    if Toggles.InstantProximityPrompt.Value then
                        pcall(hZ, iS)
                    end
                end)
            elseif connection then
                connection:Disconnect()
                connection = nil
            end
        end)
        task.spawn(function()
            while not Library.Unloaded do
                task.wait(1)
                if Toggles.AntiGameplayPause.Value then
                    hL(true)
                end
            end
        end)
        return hL, function()
            if connection then
                connection:Disconnect()
                connection = nil
            end
        end
    end
    ol_2, oe_4 = nu()
else
    GearsGroup:AddDropdown("GearQuantity", { Text = "Quantity", Values = of_6, Default = oe_3 })
    local GolemGroup = ng.Main:AddRightGroupbox("Golem", "bot")
    GolemGroup:AddToggle("AutoBuildGolem", { Text = "Auto Build Golem", Default = false })
    GolemGroup:AddDropdown("BuildGolemList", { Text = "Golems", Values = ol_1, Default = ol_1, Multi = true, SelectAllButtons = true })
    GolemGroup:AddToggle("AutoBuyPlots", { Text = "Auto Buy Plots", Default = false })
    GolemGroup:AddToggle("AutoPlaceGolem", { Text = "Auto Place Golem", Default = false })
    GolemGroup:AddToggle("AutoUpgradeStation", { Text = "Auto Upgrade Station", Default = false })
    GolemGroup:AddDropdown("UpgradeList", { Text = "Upgrades", Values = nH, Default = nH, Multi = true, SelectAllButtons = true })
    task.spawn(autoRollLoop)
    local function oq_2()
        local connection
        local MovementGroup = ng.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = ng.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        local function hL(hM)
            pcall(function()
                nV:SetGameplayPausedNotificationEnabled(not hM)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = nT:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not hM
                end
            end)
            if not hM then
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
        local function hZ(h_)
            if not h_:IsA("ProximityPrompt") then
                return
            end
            h_.HoldDuration = 0
            h_.MaxActivationDistance = 50
            h_.RequiresLineOfSight = false
        end
        connection = nil
        RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            if Toggles.NoClip and Toggles.NoClip.Value then
                local Character = LocalPlayer.Character
                if Character then
                    for i, descendant in Character:GetDescendants() do
                        local tk_2 = descendant:IsA("BasePart") and descendant.CanCollide
                        if tk_2 then
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
                local ts_1 = nL()
                if ts_1 then
                    ts_1:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end
        end)
        local CurrentCamera = Workspace.CurrentCamera
        RunService.RenderStepped:Connect(function(io)
            if Library.Unloaded then
                return
            end
            if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
                local tx_1 = nL()
                if tx_1 then
                    tx_1.WalkSpeed = Options.WalkSpeed.Value
                end
            end
            if Toggles.Fly and Toggles.Fly.Value then
                local tx_3 = nB()
                local ty = nL()
                if tx_3 and ty then
                    ty.PlatformStand = true
                    local ty_1 = Vector3.zero
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        ty_1 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        ty_1 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        ty_1 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        ty_1 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        ty_1 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        ty_1 -= Vector3.new(0, 1, 0)
                    end
                    tx_3.AssemblyLinearVelocity = Vector3.zero
                    if ty_1.Magnitude > 0 then
                        tx_3.CFrame = tx_3.CFrame + ty_1.Unit * Options.FlySpeed.Value * io
                    end
                end
            end
        end)
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                local tE = nL()
                if tE then
                    tE.PlatformStand = false
                end
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                local tG = nL()
                if tG then
                    tG.WalkSpeed = 16
                end
            end
        end)
        Toggles.AntiGameplayPause:OnChanged(function()
            hL(Toggles.AntiGameplayPause.Value)
        end)
        hL(true)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for i, descendant in Workspace:GetDescendants() do
                    pcall(hZ, descendant)
                end
                connection = Workspace.DescendantAdded:Connect(function(iS)
                    if Toggles.InstantProximityPrompt.Value then
                        pcall(hZ, iS)
                    end
                end)
            elseif connection then
                connection:Disconnect()
                connection = nil
            end
        end)
        task.spawn(function()
            while not Library.Unloaded do
                task.wait(1)
                if Toggles.AntiGameplayPause.Value then
                    hL(true)
                end
            end
        end)
        return hL, function()
            if connection then
                connection:Disconnect()
                connection = nil
            end
        end
    end
    nu, nq = oq_2()
end
if oo_1 and nc and (not oi_6 or nc) and false or not (oo_1 and nc and (not oi_6 or nc) and false) then
    local function oo_2(i1)
        local i2 = 0
        local i3 = tick()
        i1:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        local Label = i1:AddLabel("AFK triggers: 0")
        local function i5()
            local CurrentCamera = Workspace.CurrentCamera
            if not CurrentCamera then
                return
            end
            n4:CaptureController()
            n4:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            i2 += 1
            i3 = tick()
            pcall(function()
                Label:SetText("AFK triggers: " .. i2)
            end)
        end
        local connection = LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value then
                pcall(i5)
            end
        end)
        task.spawn(function()
            while not Library.Unloaded do
                task.wait(2)
                local tY = Toggles.AntiAfk.Value and tick() - i3 >= 60
                if tY then
                    pcall(i5)
                end
            end
        end)
        i1:AddButton({
            Text = "Unload UI",
            Func = function()
                Library:Unload()
            end
        })
        return connection
    end
    local MenuGroup = ng.Settings:AddLeftGroupbox("Menu")
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    nc = oo_2(MenuGroup)
else
    nc = function(i1)
        local i2 = 0
        local i3 = tick()
        i1:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        local Label = i1:AddLabel("AFK triggers: 0")
        local function i5()
            local CurrentCamera = Workspace.CurrentCamera
            if not CurrentCamera then
                return
            end
            n4:CaptureController()
            n4:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            i2 += 1
            i3 = tick()
            pcall(function()
                Label:SetText("AFK triggers: " .. i2)
            end)
        end
        local connection = LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value then
                pcall(i5)
            end
        end)
        task.spawn(function()
            while not Library.Unloaded do
                task.wait(2)
                local tY = Toggles.AntiAfk.Value and tick() - i3 >= 60
                if tY then
                    pcall(i5)
                end
            end
        end)
        i1:AddButton({
            Text = "Unload UI",
            Func = function()
                Library:Unload()
            end
        })
        return connection
    end
    ng = Options.Settings:AddLeftGroupbox("Menu")
    ng:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Text = "Menu keybind", NoUI = true, Default = "RightShift" })
    oo_1.ToggleKeybind = Library.MenuKeybind
    nc(ng)
end
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(ng.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/BuildAGolem")
local oi_7 = SaveManager:BuildConfigSection(ng.Settings)
SaveManager:LoadAutoloadConfig()
local function og_5(jw)
    local function jx(jy, jz)
        local t0_1 = (jy == "Toggle" and Toggles or Options)[jz]
        local t__2 = type(t0_1) == "table" and t0_1.Type == jy
        local t__3 = t__2 and t0_1
        local t5 = if t__3 then 1 else 0
        local t3 = 2975 * t5 + 942 * (1 - t5)
        local t4 = 2585 * t5 + 3130 * (1 - t5)
        if not ((t3 * 3215 + t4 * 3648 + t3 * t4) % 16777213 == 9907867) then
            t__3 = nil
        end
        return t__3
    end
    local function jH(jI, jJ)
        local Type = jJ.Type
        if Type == "Toggle" then
            return { idx = jI, type = "Toggle", value = jJ.Value == true }
        elseif Type == "Slider" then
            return { idx = jI, type = "Slider", value = tostring(jJ.Value) }
        elseif Type == "Dropdown" then
            return { idx = jI, type = "Dropdown", multi = jJ.Multi == true, value = jJ.Value }
        elseif Type == "Input" then
            local t7 = jJ.Value or ""
            return { idx = jI, type = "Input", text = tostring(t7) }
        elseif Type == "ColorPicker" then
            return { idx = jI, type = "ColorPicker", value = jJ.Value:ToHex(), transparency = jJ.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = jI,
                type = "KeyPicker",
                mode = jJ.Mode,
                key = jJ.Value,
                modifiers = jJ.Modifiers,
                toggled = jJ.Toggled
            }
        else
            return nil
        end
    end
    local function jL()
        local ud = {}
        for k, v in { Toggles, Options } do
            for k, v in v do
                local ue = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if ue then
                    local ue_1 = jH(k, v)
                    if ue_1 then
                        ud[#ud + 1] = ue_1
                    end
                end
            end
        end
        table.sort(ud, function(jT, jU)
            if jT.type ~= jU.type then
                return jT.type < jU.type
            end
            return jT.idx < jU.idx
        end)
        return { objects = ud }
    end
    local function jV(jW)
        local uu
        uu = nil
        local uv = type(jW) ~= "table" or type(jW.idx) ~= "string" or type(jW.type) ~= "string"
        local uz = if uv then 1 else 0
        local ux = 3968 * uz + 557 * (1 - uz)
        local uy = 765 * uz + 866 * (1 - uz)
        if not ((ux * 1601 + uy * 1814 + ux * uy) % 16777213 == 10775998) then
            uv = SaveManager.Ignore[jW.idx]
        end
        if uv then
            return false
        end
        uu = jx(jW.type, jW.idx)
        if not uu then
            return false
        end
        local uv_1 = pcall(function()
            if jW.type == "Input" then
                if type(jW.text) ~= "string" then
                    return
                end
                uu:SetValue(jW.text)
            elseif jW.type == "ColorPicker" then
                uu:SetValueRGB(Color3.fromHex(jW.value), jW.transparency)
            elseif jW.type == "KeyPicker" then
                uu:SetValue({ jW.key, jW.mode, jW.modifiers })
                if jW.mode == "Toggle" and jW.toggled ~= nil then
                    uu.Toggled = jW.toggled
                    uu:Update()
                end
            else
                uu:SetValue(jW.value)
            end
        end)
        return uv_1
    end
    jw:AddDivider()
    jw:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    jw:AddButton("Export Config to Clipboard", function()
        local uB_1
        local uA_1
        uA_1, uB_1 = pcall(nZ.JSONEncode, nZ, jL())
        if not uA_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local uA_2 = setclipboard or toclipboard
        local uA_3 = type(uA_2) ~= "function" or not pcall(uA_2, uB_1)
        if uA_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    jw:AddButton("Import Config from Clipboard Text", function()
        local uG_1
        local uE = Options.SaveManager_ImportSource.Value or ""
        local uE_1
        local uF = tostring(uE):match("^%s*(.-)%s*$")
        if uF == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        uE_1, uG_1 = pcall(nZ.JSONDecode, nZ, uF)
        local uF_1 = not uE_1 or type(uG_1) ~= "table" or type(uG_1.objects) ~= "table"
        if uF_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local uE_2 = 0
        for k, v in uG_1.objects do
            if jV(v) then
                uE_2 += 1
            end
        end
        if uE_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local uG_2 = uE_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(uE_2, uG_2), 6)
    end)
end
og_5(oi_7)
Library:OnUnload(fn148)
