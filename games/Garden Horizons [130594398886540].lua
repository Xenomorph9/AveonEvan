local rX_2_1
local Options
local lw
local kS
local lz
local kV
local lg
local lC
local kY
local lj
local lF
local kF
local lI
local Shops
local lp
local k3
local kL
local Library
local k6
local kO
local lv
local kR
local worker2
local lc
local kU
local lB
local lf
local worker
local li
local Label
local k_
local lH
local kE
local k2
local lo
local ll
local k5
local LocalPlayer
local connection
local Position
local lb
local ExpansionUtil
local VirtualUser
local Toggles
local kW
local lk
local connection2
local SellExpansionItems
local ln
local kJ
local SellItems
local kM
local connection3
local function fn9(af)
    local mL = Toggles[af]
    return mL ~= nil and mL.Value == true
end
local function onInputChanged(hC)
    local UserInputType = hC.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        lc = tick()
    end
end
local function onRscripts()
    k5(lC, "Copied Rscripts profile to clipboard")
end
local function fn74()
    local Character = LocalPlayer.Character
    local m4 = Character and Character:FindFirstChildOfClass("Humanoid")
    return m4
end
local function onAutoSellIsle(hk)
    if hk then
        lH(true)
    end
end
local function onSellNow2()
    task.spawn(worker, true)
end
local function fn174()
    kO("Gear", false)
end
local function fn176()
    local rb_1
    local ra_1
    if identifyexecutor then
        rb_1, ra_1 = identifyexecutor()
        local rc = rb_1 ~= ""
        local rd = type(rb_1) == "string" and rc
        if rd then
            local rc_1 = type(ra_1) == "string" and ra_1 ~= "" and rb_1 .. " " .. ra_1
            kM = rc_1 or rb_1
        end
    end
end
local function fn184()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    k6 = tick()
end
local function fn190(aq)
    local mR = Options[aq]
    local mS = mR and mR.Value
    local mR_1 = {}
    if type(mS) == "table" then
        for k, v in pairs(mS) do
            if v then
                table.insert(mR_1, k)
            end
        end
    end
    table.sort(mR_1)
    return mR_1
end
local function fn215()
    kO("Seeds", false)
end
local function onAutoBuySeeds(gX)
    if gX then
        lj("Seeds")
    end
end
local function onAutoSell(g9)
    if g9 then
        lH(false)
    end
end
local function fn291()
    kO("Tools", false)
end
local function onAutoBuyGear(g2)
    if g2 then
        lj("Gear")
    end
end
local function fn324(T, U)
    return string.format('<font color="%s">%s</font>', U, T)
end
local function fn329(a7)
    local nj = {}
    for k, v in pairs(a7.ShopData) do
        if v.Name then
            table.insert(nj, v.Name)
        end
    end
    table.sort(nj)
    return nj
end
local function fn330(M, N)
    if setclipboard then
        setclipboard(M)
    elseif toclipboard then
        toclipboard(M)
    end
    Library:Notify(N)
end
local function onInputBegan()
    lc = tick()
end
local function fn407()
    Library.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
local function fn413()
    lk = false
end
local function worker3()
    local rg_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local rf = math.floor(os.clock() - li)
        if rf < 60 then
            rg_1 = rf .. "s"
        elseif rf < 3600 then
            rg_1 = string.format("%dm %ds", rf // 60, rf % 60)
        else
            rg_1 = string.format("%dh %dm", rf // 3600, rf % 3600 // 60)
        end
        Label:SetText(kJ("Session time", rg_1, lz))
    end
end
local function onOnClientEvent()
    local rQ = if lp("AutoBuySeeds") then 1 else 0
    if rQ == 1 then
        lj("Seeds")
    end
    if lp("AutoBuyGear") then
        lj("Gear")
    end
    if lp("AutoBuyTools") then
        lj("Tools")
    end
end
local function fn439()
    while true do
        if not lk then
            if Library.Unloaded then
                return false
            end
            lk = true
            return true
        end
        if Library.Unloaded then
            break
        end
        task.wait(0.1)
    end
    return false
end
local function fn456()
    lg(false)
end
local function fn462()
    lv(false)
end
local function fn486(a1, a2)
    local ne = Shops:FindFirstChild(a1)
    if not ne then
        return nil
    end
    return kF(ne:FindFirstChild(a2))
end
local function onBuyNow2()
    task.spawn(worker2, "Gear")
end
local function onBuySeeds()
    if lp("AutoBuySeeds") then
        lj("Seeds")
    end
end
local function onSaveCurrentPosition()
    local ri = lI()
    if not ri then
        return
    end
    Position = ri.Position
    Library:Notify("Saved plant position")
end
local function onBuyNow()
    task.spawn(worker2, "Seeds")
end
local function onUnload()
    Library:Unload()
end
local function fn529()
    local Character = LocalPlayer.Character
    local m1 = Character and Character:FindFirstChild("HumanoidRootPart")
    return m1
end
local function onBuyTools()
    if lp("AutoBuyTools") then
        lj("Tools")
    end
end
local function onCopyJoinScript_JobID()
    local gz = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, lB)
    k5(gz, "Copied join script to clipboard")
end
local function fn566()
    k5(lF, "Copied Discord invite to clipboard")
end
local function onSellNow()
    task.spawn(worker, false)
end
local function worker4()
    while not Library.Unloaded do
        task.wait(2)
        if lp("AntiAfk") then
            local rH = tick() - lc
            local rI = tick() - k6
            if rH >= 300 and rI >= 60 then
                pcall(kW)
            else
                if rH < 300 and rI >= 300 then
                    pcall(kW)
                end
            end
        end
    end
end
local function fn591()
    connection:Disconnect()
    connection2:Disconnect()
    connection3:Disconnect()
    Library.Unloaded = true
end
local function onBuyGear()
    if lp("AutoBuyGear") then
        lj("Gear")
    end
end
local function fn614(aN, aO)
    local m7 = lI()
    if not m7 then
        return false
    end
    local CFrame = m7.CFrame
    m7.CFrame = aN
    task.wait(lb("TeleportSettle", 0.5))
    local m7_1 = pcall(aO)
    if lp("ReturnAfterAction") then
        local m9 = lI()
        if m9 then
            m9.CFrame = CFrame
        end
    end
    return m7_1
end
local function onAutoBuyTools(hd)
    if hd then
        lj("Tools")
    end
end
local function onBuyNow3()
    task.spawn(worker2, "Tools")
end
local function fn687(ak, al)
    local mO = Options[ak]
    local mP = mO and tonumber(mO.Value)
    return mP or al
end
local function fn710(W, X, Y)
    return string.format("<b>%s</b> %s %s", W, kS("-", "#5a6070"), kS(X, Y))
end
kE = nil
kF = nil
Shops = nil
kJ = nil
connection = nil
kL = nil
kM = nil
kO = nil
ExpansionUtil = nil
kR = nil
kS = nil
kU = nil
kV = nil
kW = nil
worker = nil
kY = nil
k_ = nil
SellExpansionItems = nil
k2 = nil
k3 = nil
SellItems = nil
k5 = nil
k6 = nil
connection3 = nil
Options = nil
lb = nil
lc = nil
Toggles = nil
lf = nil
lg = nil
li = nil
lj = nil
lk = nil
ll = nil
ln = nil
lo = nil
lp = nil
local Plots, kH, ExpansionPlotKeys, kP, kT, kZ, k0, k8, HarvestFruit, PlantSeed, GetShopData, PurchaseShopItem, lq
LocalPlayer = nil
Library = nil
Position = nil
lv = nil
lw = nil
VirtualUser = nil
worker2 = nil
lz = nil
lB = nil
lC = nil
Label = nil
lF = nil
connection2 = nil
lH = nil
lI = nil
local lt, lA, CollectionService, lW, ThemeManager, l2
local l5_1
local l3_1, l3_2
local Seeds
local lP_1
lt = nil
lA = nil
CollectionService = nil
CollectionService, VirtualUser, LocalPlayer = nil, nil, nil
local Players = game:GetService("Players")
local rX_1 = game:GetService("ReplicatedStorage")
CollectionService = game:GetService("CollectionService")
local UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
LocalPlayer = Players.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
PurchaseShopItem, GetShopData, PlantSeed, HarvestFruit, SellItems, SellExpansionItems, lP_1, rX_2_1, ExpansionUtil, ExpansionPlotKeys, Seeds, Shops, Plots, kE, l5_1, lF, lC, Library, ThemeManager, Toggles, Options, l3_1, lz, lk, lW, k5, kY, kS, kJ, lp, lb, kV, lI, lt, lf, k3, k0, kF, lw = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local l1 = rX_1:WaitForChild("RemoteEvents")
PurchaseShopItem = l1:WaitForChild("PurchaseShopItem")
if (not kV or k3 or not lk and lk or (Options and not k3 or (not Options or k3)) or lP_1 and not k3 and (not k3 and not lP_1) and (not Options and not rX_2_1 or not kV and not k3)) and (Options and not lk and (not lk or lk) or lk and lP_1 and (not lP_1 and not lk) or not rX_2_1 and not Options and (not rX_2_1 or not Options) and ((lP_1 or lP_1) and (not kV or kV))) and not ((not kV or k3 or not lk and lk or (Options and not k3 or (not Options or k3)) or lP_1 and not k3 and (not k3 and not lP_1) and (not Options and not rX_2_1 or not kV and not k3)) and (Options and not lk and (not lk or lk) or lk and lP_1 and (not lP_1 and not lk) or not rX_2_1 and not Options and (not rX_2_1 or not Options) and ((lP_1 or lP_1) and (not kV or kV)))) then
    l1 = GetShopData:WaitForChild("GetShopData")
else
    GetShopData = l1:WaitForChild("GetShopData")
end
PlantSeed = l1:WaitForChild("PlantSeed")
HarvestFruit = l1:WaitForChild("HarvestFruit")
SellItems = l1:WaitForChild("SellItems")
SellExpansionItems = l1:WaitForChild("SellExpansionItems")
local lQ = rX_1:WaitForChild("Shop"):WaitForChild("ShopData")
local SeedShopData = require(lQ:WaitForChild("SeedShopData"))
local lO = require(lQ:WaitForChild("GearShopData"))
local CaptainRogerShopData = require(lQ:WaitForChild("CaptainRogerShopData"))
local rX_2_2 = rX_1:WaitForChild("Expansions")
ExpansionUtil = require(rX_2_2:WaitForChild("ExpansionUtil"))
ExpansionPlotKeys = require(rX_2_2:WaitForChild("ExpansionPlotKeys"))
if Options and not Toggles or false or (Options and l5_1 or l5_1 and not Toggles) or not (Options and not Toggles or false or (Options and l5_1 or l5_1 and not Toggles)) then
    Seeds = rX_1:WaitForChild("Plants"):WaitForChild("Tools"):WaitForChild("Seeds")
else
    Seeds:WaitForChild("Plants"):WaitForChild("Tools"):WaitForChild("Seeds")
end
local rX_6_1 = workspace:WaitForChild("MapPhysical")
Shops = rX_6_1:WaitForChild("Shops")
Plots = workspace:WaitForChild("Plots")
kE = "ForgottenIsle"
local l5_2 = "Garden Horizons"
lF = "https://discord.gg/ehKVq7pf7v"
lC = "https://rscripts.net/@Ouroboros"
local lT = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
if (not lp or lp) and (k0 and not lp) and (not k0 and not PlantSeed or (not lp or not k0)) or (not PlantSeed or k0 or lp and not k0) and ((k0 or k0) and (lp or PlantSeed)) or not ((not lp or lp) and (k0 and not lp) and (not k0 and not PlantSeed or (not lp or not k0)) or (not PlantSeed or k0 or lp and not k0) and ((k0 or k0) and (lp or PlantSeed))) then
    pcall(fn407)
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
else
    pcall(fn407)
    lT = loadstring(game:HttpGet(ThemeManager .. "addons/ThemeManager.lua"))()
end
local l_ = loadstring(game:HttpGet(lT .. "addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
k5 = fn330
kY = fn566
kS = fn324
kJ = fn710
local l4 = "#7fd47f"
if l3_1 and false and (false and lp) and (PlantSeed and PlantSeed or "#7fd47f") and not (l3_1 and false and (false and lp) and (PlantSeed and PlantSeed or "#7fd47f")) then
    lz = "#6ec1ff"
    l2 = "#e8a34d"
    lb = "#8b93a3"
    l3_2 = fn9
    lp = fn687
else
    l3_2 = "#6ec1ff"
    lz = "#e8a34d"
    l2 = "#8b93a3"
    lp = fn9
    lb = fn687
end
kV = fn190
lI = fn529
lt = fn74
lk = false
lf = fn439
k3 = fn413
k0 = fn614
kF = function(aX)
    local nc_1
    local nb_1
    if not aX then
        return nil
    end
    nb_1, nc_1 = pcall(function()
        return aX:GetPivot()
    end)
    if not nb_1 then
        return nil
    end
    return nc_1 * CFrame.new(0, 3, 4)
end
lw = fn486
local lS = fn329
local lZ = lS(SeedShopData)
local lY = lS(lO)
local lX = lS(CaptainRogerShopData)
if (ExpansionPlotKeys or not SellItems or (l5_2 or ExpansionPlotKeys)) and (not SellItems and SeedShopData or (not ExpansionPlotKeys or not kS)) and ((not SeedShopData and ExpansionPlotKeys or ExpansionPlotKeys) and (kS and false and (ExpansionPlotKeys or l5_2))) and not ((ExpansionPlotKeys or not SellItems or (l5_2 or ExpansionPlotKeys)) and (not SellItems and SeedShopData or (not ExpansionPlotKeys or not kS)) and ((not SeedShopData and ExpansionPlotKeys or ExpansionPlotKeys) and (kS and false and (ExpansionPlotKeys or l5_2)))) then
    lI = {}
else
    lW = {}
end
local lV = {}
for i, child in Seeds:GetChildren() do
    local rX_6_2 = child:GetAttribute("PlantType")
    if rX_6_2 then
        table.insert(lW, child.Name)
        lV[child.Name] = rX_6_2
    end
end
table.sort(lW)
kH = function(bk)
    local ns_1
    local nr_1
    nr_1, ns_1 = pcall(function()
        return GetShopData:InvokeServer(bk)
    end)
    local nt = nr_1 and type(ns_1) == "table" and type(ns_1.Items) == "table"
    if nt then
        return ns_1.Items
    end
    return nil
end
ln = function(bs, bt, bu, bv, bw)
    local nK, nL
    if #bu == 0 then
        if bw then
            Library:Notify("Nothing selected to buy")
        end
        return
    elseif not bt then
        if bw then
            Library:Notify("Shop not loaded yet")
        end
        return
    else
        local nM = kH(bs)
        if not nM then
            if bw then
                Library:Notify("Could not read shop stock")
            end
            return
        end
        nL = {}
        for k, v in bu do
            local nN_1 = nM[v]
            local nN_2 = nN_1 and nN_1.Amount or 0
            if nN_2 > 0 then
                table.insert(nL, { v, nN_2 })
            end
        end
        if #nL == 0 then
            if bw then
                local nN_3 = {}
                for k, v in pairs(nM) do
                    if (v.Amount or 0) > 0 then
                        table.insert(nN_3, k)
                    end
                end
                table.sort(nN_3)
                Library:Notify("None of your picks are in stock. In stock: " .. table.concat(nN_3, ", "), 6)
            end
            return
        end
        nK = 0
        k0(bt, function()
            for k, v in nL do
                local nE = v
                local nv = bv and nE[2]
                local nv_2
                local nw = nv or 1
                local nw_1
                local nH = 1
                while nH <= nw do
                    if Library.Unloaded then
                        return
                    end
                    nv_2, nw_1 = pcall(function()
                        return PurchaseShopItem:InvokeServer(bs, nE[1])
                    end)
                    local nx = not nv_2 or type(nw_1) ~= "table"
                    if nx then
                        break
                    end
                    nK += 1
                    task.wait(0.05)
                    nH += 1
                end
            end
        end)
        if nK > 0 then
            local nN_4 = nK == 1 and "" or "s"
            Library:Notify("Bought " .. nK .. " item" .. nN_4)
        end
        return nK
    end
end
kR = {
    Seeds = { id = "SeedShop", stand = "Seed Shop", npc = "SeedNPC", pick = "BuySeeds" },
    Gear = { id = "GearShop", stand = "Gear Shop", npc = "GearNPC", pick = "BuyGear" },
    Tools = {
        id = "CaptainRogerShop",
        stand = "ForgottenIsleGear Shop",
        npc = "BlacksmithNPC",
        pick = "BuyTools"
    }
}
kO = function(b3, b4)
    local b6 = kR[b3]
    return ln(b6.id, lw(b6.stand, b6.npc), kV(b6.pick), lp("BuyAllStock"), b4)
end
worker2 = function(cc)
    if not lf() then
        return
    end
    pcall(kO, cc, true)
    k3()
end
lj = function(ch)
    task.spawn(function()
        if not lf() then
            return
        end
        pcall(kO, ch, false)
        k3()
    end)
end
kT = function(cq)
    local oi
    oi = nil
    local oo_1
    local on_1
    local om_1
    local ol_1
    oi = {}
    local function oj(ct, cu)
        if not ct or cu == nil then
            return
        end
        for i, child in ct:GetChildren() do
            local n3_1 = child:IsA("Model") and child:GetAttribute("Owner") == cu
            if n3_1 then
                local PlantableArea = child:FindFirstChild("PlantableArea")
                if PlantableArea then
                    for i, child in PlantableArea:GetChildren() do
                        if child:IsA("BasePart") then
                            table.insert(oi, child)
                        end
                    end
                end
            end
        end
    end
    oj(Plots, LocalPlayer.UserId)
    if cq then
        ol_1, om_1 = pcall(ExpansionUtil.GetPlotContainer, kE)
        on_1, oo_1 = pcall(ExpansionPlotKeys.GetKey, LocalPlayer.UserId, kE)
        if ol_1 and on_1 then
            oj(om_1, oo_1)
        end
    end
    return oi
end
k_ = function(cL, cM)
    local ot = RaycastParams.new()
    ot.FilterType = Enum.RaycastFilterType.Include
    ot.FilterDescendantsInstances = cM
    local ou = workspace:Raycast(cL + Vector3.new(0, 15, 0), Vector3.new(0, -40, 0), ot)
    return ou and ou.Position or nil
end
kL = function(cR)
    local Size = cR.Size
    local oA = (math.random() - 0.5) * Size.X * 0.9
    local oB = (math.random() - 0.5) * Size.Y * 0.9
    local oC = (math.random() - 0.5) * Size.Z * 0.9
    if Size.X <= Size.Y and Size.X <= Size.Z then
        oA = 0
    else
        if Size.Y <= Size.X and Size.Y <= Size.Z then
            oB = 0
        else
            oC = 0
        end
    end
    return k_(cR.CFrame * Vector3.new(oA, oB, oC), { cR })
end
Position = nil
lq = function(c0)
    local oJ = Options.PlantMode and Options.PlantMode.Value or "Random"
    if oJ == "Player Position" then
        local oJ_1 = lI()
        if not oJ_1 then
            return nil
        end
        return k_(oJ_1.Position, c0)
    elseif oJ == "Saved Position" then
        if not Position then
            return nil
        end
        return k_(Position, c0)
    else
        return kL(c0[math.random(1, #c0)])
    end
end
kZ = function(da)
    local Backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
    local oM = {}
    if Backpack then
        for i, child in Backpack:GetChildren() do
            local oL_1 = child:IsA("Tool") and child:GetAttribute("Type") == "Seeds"
            if oL_1 then
                table.insert(oM, child)
            end
        end
    end
    local Character = LocalPlayer.Character
    if Character then
        for i, child in Character:GetChildren() do
            local oL_3 = child:IsA("Tool") and child:GetAttribute("Type") == "Seeds"
            if oL_3 then
                table.insert(oM, child)
            end
        end
    end
    if #da == 0 then
        return oM[1]
    end
    for k, v in da do
        for k, v2 in oM do
            local oL_4 = v2:GetAttribute("BaseName") == v or v2.Name == v
            if oL_4 then
                return v2
            end
        end
    end
    return nil
end
local function rX_6_3()
    local pc, attr
    local pe = kT(lp("PlantIsle"))
    if #pe == 0 then
        return
    end
    local pf = kZ(kV("PlantSeeds"))
    if not pf then
        return
    end
    attr = pf:GetAttribute("PlantType")
    if not attr then
        return
    end
    local pg = lt()
    if not pg then
        return
    end
    if pf.Parent ~= LocalPlayer.Character then
        pg:EquipTool(pf)
        task.wait(0.15)
    end
    pc = lq(pe)
    if not pc then
        return
    end
    local pe_1 = lI()
    if not pe_1 then
        return
    end
    local CFrame2 = pe_1.CFrame
    local pg_1 = false
    if (pe_1.Position - pc).Magnitude > 10 then
        pe_1.CFrame = CFrame.new(pc + Vector3.new(0, 4, 0))
        pg_1 = true
        task.wait(lb("TeleportSettle", 0.5))
    end
    pcall(function()
        PlantSeed:InvokeServer(attr, pc)
    end)
    local pe_2 = pg_1 and lp("ReturnAfterAction")
    if pe_2 then
        local pe_3 = lI()
        if pe_3 then
            pe_3.CFrame = CFrame2
        end
    end
end
lo = function(dQ)
    local pl = dQ.Parent
    local pm = pl and pl:IsA("BasePart")
    if pm then
        pl = pl.Parent
    end
    local pm_1 = pl and pl:IsA("Model")
    if pm_1 then
        return pl
    end
    return nil
end
k8 = function(dV)
    local pr = lo(dV)
    if not pr then
        return nil
    elseif pr:GetAttribute("HarvestablePlant") == true then
        local attr = pr:GetAttribute("Uuid")
        if attr then
            return { Uuid = attr }
        end
        return nil
    else
        local Parent = pr.Parent
        local pt = Parent and Parent:IsA("Model")
        if not pt then
            return nil
        end
        local attr = Parent:GetAttribute("Uuid")
        if not attr then
            return nil
        end
        return { Uuid = attr, GrowthAnchorIndex = pr:GetAttribute("GrowthAnchorIndex") }
    end
end
kP = function(d2)
    local pv = lo(d2)
    if not pv then
        return false
    end
    local pw = pv
    local px = pv:GetAttribute("OwnerUserId") == nil and pv.Parent and pv.Parent:IsA("Model")
    if px then
        pw = pv.Parent
    end
    return pw:GetAttribute("OwnerUserId") == LocalPlayer.UserId
end
lH = nil
local function rX_2_3()
    local pD = {}
    for k, v in CollectionService:GetTagged("HarvestPrompt") do
        local pE_1 = v:IsA("ProximityPrompt") and v.Enabled and kP(v)
        if pE_1 then
            table.insert(pD, v)
        end
    end
    if #pD == 0 then
        return
    end
    local pE_2 = lI()
    if not pE_2 then
        return
    end
    local CFrame2 = pE_2.CFrame
    local pE_3 = 0
    local pG = {}
    for k, v in pD do
        if Library.Unloaded or pE_3 >= 8 then
            break
        end
        local pH_1 = not pG[v]
        if pH_1 ~= false then
            pH_1 = v.Parent
        end
        if pH_1 then
            local pH_2 = v.Parent:IsA("BasePart") and v.Parent
            local pI = pH_2
            if not pI then
                local pH_3 = v.Parent:IsA("Model") and v.Parent.PrimaryPart
                pI = pH_3
            end
            local pH_4 = pI
            if pI then
                pI = pH_4.Position
            end
            local pH_5 = pI
            local p_ = if pH_5 then 1 else 0
            local pY = 1345 * p_ + 3737 * (1 - p_)
            local pZ = 2238 * p_ + 4071 * (1 - p_)
            if not ((pY * 3623 + pZ * 196 + pY * pZ) % 16777213 == 8321693) then
                local pI_1 = v.Parent:IsA("Model") and v.Parent:GetPivot().Position
                pH_5 = pI_1
            end
            local pI_2 = pH_5
            if pI_2 then
                local pH_6 = lI()
                if pH_6 then
                    pH_6.CFrame = CFrame.new(pI_2 + Vector3.new(0, 5, 0))
                    task.wait(lb("TeleportSettle", 0.5))
                end
                local pC = {}
                local pH_7 = #pD
                local p2 = k
                while p2 <= pH_7 do
                    local pH_8 = pD[p2]
                    local pJ = not pG[pH_8]
                    if pJ ~= false then
                        pJ = pH_8.Parent
                    end
                    if pJ then
                        local pJ_1 = pH_8.Parent:IsA("BasePart") and pH_8.Parent
                        local pK = pJ_1
                        if not pK then
                            local pJ_2 = pH_8.Parent:IsA("Model") and pH_8.Parent.PrimaryPart
                            pK = pJ_2
                        end
                        local pJ_3 = pK
                        if pK then
                            pK = pJ_3.Position
                        end
                        local pJ_4 = pK
                        if not pJ_4 then
                            local pK_1 = pH_8.Parent:IsA("Model") and pH_8.Parent:GetPivot().Position
                            pJ_4 = pK_1
                        end
                        local pK_2 = pJ_4
                        if pJ_4 then
                            pJ_4 = (pK_2 - pI_2).Magnitude <= 25
                        end
                        if pJ_4 then
                            local pJ_5 = k8(pH_8)
                            if pJ_5 then
                                pG[pH_8] = true
                                table.insert(pC, pJ_5)
                            end
                        end
                    end
                    p2 += 1
                end
                if #pC > 0 then
                    pE_3 += 1
                    pcall(function()
                        HarvestFruit:FireServer(pC)
                    end)
                    task.wait(lb("HarvestDelay", 0.35))
                end
            end
        end
    end
    if lp("ReturnAfterAction") then
        local pD_1 = lI()
        if pD_1 then
            pD_1.CFrame = CFrame2
        end
    end
    if pE_3 > 0 and lH then
        lH(false)
    end
end
lA = function()
    local p8 = 0
    local Backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
    if Backpack then
        for i, child in Backpack:GetChildren() do
            if child:GetAttribute("IsHarvested") then
                p8 += 1
            end
        end
    end
    local Character = LocalPlayer.Character
    if Character then
        for i, child in Character:GetChildren() do
            if child:GetAttribute("IsHarvested") then
                p8 += 1
            end
        end
    end
    return p8
end
k2 = function(e6, e7, e8)
    local qr = lA()
    local qv = if qr < lb("SellThreshold", 1) then 1 else 0
    if qv == 1 then
        if e8 then
            Library:Notify("Only " .. qr .. " harvested item(s), below the sell threshold")
        end
        return
    end
    local qr_1 = lw(e6, "Steve")
    if not qr_1 then
        if e8 then
            Library:Notify("Sell stand not loaded yet")
        end
        return
    end
    k0(qr_1, function()
        local qo_1
        local qn_1
        qn_1, qo_1 = pcall(e7)
        local qp = qn_1 and type(qo_1) == "string"
        if qp then
            Library:Notify(qo_1, 5)
        elseif e8 then
            Library:Notify("Sell request failed")
        end
    end)
end
lv = function(fn)
    k2("Sell Stand", function()
        return SellItems:InvokeServer("SellAll")
    end, fn)
end
lg = function(fs)
    k2("ForgottenIsleSell Stand", function()
        return SellExpansionItems:InvokeServer(kE, "SellAll")
    end, fs)
end
worker = function(fz)
    if not lf() then
        return
    end
    local qx = fz and lg or lv
    pcall(qx, true)
    k3()
end
lH = function(fE)
    local qD = fE and "AutoSellIsle" or "AutoSell"
    if not lp(qD) then
        return
    end
    task.spawn(function()
        if not lf() then
            return
        end
        local qA = fE and lg or lv
        pcall(qA, false)
        k3()
    end)
end
ll = function()
    local qG_1
    local qF_1
    qF_1, qG_1 = pcall(ExpansionUtil.GetZoneFolder, kE)
    if not qF_1 or not qG_1 then
        return {}
    end
    local Chests = qG_1:FindFirstChild("Chests")
    if not Chests then
        return {}
    end
    local qG_2 = {}
    for i, child in Chests:GetChildren() do
        if child:IsA("Model") then
            table.insert(qG_2, child)
        end
    end
    return qG_2
end
kU = function()
    local ForgottenIsleSell_Stand = Shops:FindFirstChild("ForgottenIsleSell Stand")
    if not ForgottenIsleSell_Stand then
        return nil
    end
    return ForgottenIsleSell_Stand:GetPivot() * CFrame.new(0, 5, 8)
end
rX_1 = function()
    local qS = lI()
    if not qS then
        return
    end
    local CFrame2 = qS.CFrame
    local qU = ll()
    if #qU == 0 then
        local qV = kU()
        if not qV then
            return
        end
        qS.CFrame = qV
        local q1 = 1
        while q1 <= 16 do
            task.wait(0.5)
            qU = ll()
            if #qU > 0 then
                break
            end
            q1 += 1
        end
    end
    if #qU == 0 then
        if lp("ReturnAfterAction") then
            local qS_1 = lI()
            if qS_1 then
                qS_1.CFrame = CFrame2
            end
        end
        return
    end
    for k, v in qU do
        if Library.Unloaded then
            break
        elseif v.Parent then
            local qS_2 = lI()
            if qS_2 then
                qS_2.CFrame = CFrame.new(v:GetPivot().Position + Vector3.new(0, 4, 0))
                task.wait(lb("TreasureDelay", 1.2))
            end
        end
    end
    if lp("ReturnAfterAction") then
        local qS_3 = lI()
        if qS_3 then
            qS_3.CFrame = CFrame2
        end
    end
end
local rX_5_1 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = "https://discord.gg/ehKVq7pf7v | Garden Horizons",
    Icon = 18657887261,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 8
})
lO = {
    Info = rX_5_1:AddTab("Info", "info"),
    Farm = rX_5_1:AddTab("Farm", "sprout"),
    Shop = rX_5_1:AddTab("Shop", "shopping-cart"),
    Isle = rX_5_1:AddTab("Forgotten Isle", "ship"),
    Settings = rX_5_1:AddTab("Settings", "settings")
}
local function rX_5_2(gi)
    local DiscordGroup = gi:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = kY })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = kY })
end
for k, v in lO do
    rX_5_2(v)
end
kM, Label, lB = nil, nil, nil
kM = "Unknown"
pcall(fn176)
local AccountGroup = lO.Info:AddLeftGroupbox("Account", "circle-user")
AccountGroup:AddLabel(kJ("User", LocalPlayer.Name, l4), true)
AccountGroup:AddLabel(kJ("Status", "Keyless", l4), true)
AccountGroup:AddLabel(kJ("Executor", kM, l4), true)
lS = lO.Info:AddLeftGroupbox("Game Info", "gamepad-2")
lS:AddLabel(kS(l5_2 .. " [" .. tostring(game.PlaceId) .. "]", l3_2), true)
lS:AddLabel(kJ("Place ID", tostring(game.PlaceId), l3_2), true)
Label = lS:AddLabel(kJ("Session time", "0s", lz), true)
lB = tostring(game.JobId)
local lR = #lB > 18
if lR then
    local rX_5_3 = 3
    repeat
        if (rX_5_3 * 1 + 9) * 9 % 4 == ((rX_5_3 * 1 + 9) * 9 + 8) % 4 then
            lR = string.sub(lB, 1, 18) .. "..."
        else
            lB = string.sub(lR, 1, 18) .. "..."
        end
        rX_5_3 = (rX_5_3 + 0) % 4
    until (rX_5_3 * 3 + 2) % 4 == 3
end
local rX_5_4 = lR or lB
li, lc, k6, connection, connection2, connection3, kW = nil, nil, nil, nil, nil, nil, nil
lS:AddLabel(kJ("Server", rX_5_4, l2), true)
lS:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
li = os.clock()
task.spawn(worker3)
local OuroborosHubGroup = lO.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = kY })
local ScriptsGroup = lO.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(kS("Included in this hub", l2), true)
ScriptsGroup:AddLabel(kS(l5_2, l3_2), true)
local FeaturesGroup = lO.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(kS("Auto Harvest", l3_2), true)
FeaturesGroup:AddLabel(kS("Auto Plant", l3_2), true)
FeaturesGroup:AddLabel(kS("Auto Buy Seeds and Gear", lz), true)
FeaturesGroup:AddLabel(kS("Auto Sell", lz), true)
FeaturesGroup:AddLabel(kS("Forgotten Isle Tools and Treasure", l4), true)
local SocialsGroup = lO.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = kY })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
lR = lO.Info:AddRightGroupbox("FAQ", "circle-help")
lR:AddLabel("Where do I get a good config?", true)
lR:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
lR:AddLabel("How do I import / export configs?", true)
lR:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
lR:AddLabel("How do I report bugs?", true)
lR:AddLabel("Join the Discord and post it in the bugs channel.", true)
lR:AddLabel("How do I make suggestions?", true)
lR:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
lR:AddLabel("How do I get help or updates?", true)
lR:AddLabel("Join the Discord, updates and support are posted there first.", true)
lQ = lO.Farm:AddLeftGroupbox("Harvest", "scissors")
lQ:AddToggle("AutoHarvest", { Text = "Auto Harvest", Default = false })
lQ:AddSlider("HarvestDelay", { Text = "Harvest delay", Default = 0.35, Min = 0.1, Max = 2, Rounding = 2 })
lQ:AddSlider("HarvestInterval", { Text = "Scan interval", Default = 2, Min = 0.5, Max = 15, Rounding = 1 })
local PlantGroup = lO.Farm:AddRightGroupbox("Plant", "sprout")
PlantGroup:AddToggle("AutoPlant", { Text = "Auto Plant", Default = false })
PlantGroup:AddDropdown("PlantMode", {
    Values = { "Player Position", "Saved Position", "Random" },
    Default = "Random",
    Text = "Plant position"
})
PlantGroup:AddDropdown("PlantSeeds", { Values = lW, Default = {}, Multi = true, Text = "Seeds", Searchable = true })
PlantGroup:AddToggle("PlantIsle", { Text = "Include isle plot", Default = false })
PlantGroup:AddSlider("PlantInterval", { Text = "Plant interval", Default = 1, Min = 0.3, Max = 10, Rounding = 1 })
PlantGroup:AddButton({ Text = "Save current position", Func = onSaveCurrentPosition })
local SeedsGroup = lO.Shop:AddLeftGroupbox("Seeds", "leaf")
SeedsGroup:AddToggle("AutoBuySeeds", { Text = "Auto Buy Seeds", Default = false, Callback = onAutoBuySeeds })
SeedsGroup:AddDropdown("BuySeeds", {
    Values = lZ,
    Default = {},
    Multi = true,
    Text = "Seeds",
    Searchable = true,
    Callback = onBuySeeds
})
SeedsGroup:AddButton({ Text = "Buy now", Func = onBuyNow })
local GearGroup = lO.Shop:AddRightGroupbox("Gear", "wrench")
GearGroup:AddToggle("AutoBuyGear", { Text = "Auto Buy Gear", Default = false, Callback = onAutoBuyGear })
GearGroup:AddDropdown("BuyGear", { Values = lY, Default = {}, Multi = true, Text = "Gear", Searchable = true, Callback = onBuyGear })
GearGroup:AddButton({ Text = "Buy now", Func = onBuyNow2 })
local ShopOptionsGroup = lO.Shop:AddLeftGroupbox("Shop Options", "settings-2")
ShopOptionsGroup:AddToggle("BuyAllStock", { Text = "Buy full stock", Default = true })
ShopOptionsGroup:AddSlider("ShopInterval", { Text = "Restock check", Default = 5, Min = 1, Max = 300, Rounding = 0 })
local SellGroup = lO.Shop:AddRightGroupbox("Sell", "coins")
SellGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false, Callback = onAutoSell })
SellGroup:AddSlider("SellThreshold", { Text = "Sell at items", Default = 1, Min = 1, Max = 200, Rounding = 0 })
SellGroup:AddSlider("SellInterval", { Text = "Sell check", Default = 5, Min = 1, Max = 120, Rounding = 0 })
SellGroup:AddButton({ Text = "Sell now", Func = onSellNow })
lT = lO.Isle:AddLeftGroupbox("Tools", "hammer")
lT:AddToggle("AutoBuyTools", { Text = "Auto Buy Tools", Default = false, Callback = onAutoBuyTools })
lT:AddDropdown("BuyTools", {
    Values = lX,
    Default = {},
    Multi = true,
    Text = "Tools",
    Searchable = true,
    Callback = onBuyTools
})
lT:AddButton({ Text = "Buy now", Func = onBuyNow3 })
local TreasureGroup = lO.Isle:AddRightGroupbox("Treasure", "gem")
TreasureGroup:AddToggle("AutoTreasure", { Text = "Auto Find Treasure", Default = false })
TreasureGroup:AddSlider("TreasureDelay", { Text = "Chest wait", Default = 1.2, Min = 0.5, Max = 5, Rounding = 1 })
TreasureGroup:AddSlider("TreasureInterval", { Text = "Sweep interval", Default = 20, Min = 5, Max = 180, Rounding = 0 })
local IsleSellGroup = lO.Isle:AddLeftGroupbox("Isle Sell", "coins")
IsleSellGroup:AddToggle("AutoSellIsle", { Text = "Auto Sell Isle Produce", Default = false, Callback = onAutoSellIsle })
IsleSellGroup:AddButton({ Text = "Sell now", Func = onSellNow2 })
local MenuGroup = lO.Settings:AddLeftGroupbox("Menu", "menu")
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
local MovementGroup = lO.Settings:AddRightGroupbox("Movement", "move")
MovementGroup:AddToggle("ReturnAfterAction", { Text = "Return after teleport", Default = true })
MovementGroup:AddSlider("TeleportSettle", { Text = "Teleport settle", Default = 0.3, Min = 0.1, Max = 2, Rounding = 2 })
lc = tick()
k6 = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local rB = v
        pcall(function()
            rB:Disable()
        end)
    end
end)
kW = fn184
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
task.spawn(worker4)
local function mb(hR, hS, hT, hU)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(lb(hR, hS))
            local rL = not Library.Unloaded and lp(hT)
            if rL then
                if lf() then
                    pcall(hU)
                    k3()
                end
            end
        end
    end)
end
mb("HarvestInterval", 2, "AutoHarvest", rX_2_3)
mb("PlantInterval", 1, "AutoPlant", rX_6_3)
mb("ShopInterval", 5, "AutoBuySeeds", fn215)
mb("ShopInterval", 5, "AutoBuyGear", fn174)
mb("ShopInterval", 5, "AutoBuyTools", fn291)
connection3 = l1:WaitForChild("ShopRestocked").OnClientEvent:Connect(onOnClientEvent)
mb("SellInterval", 5, "AutoSell", fn462)
mb("SellInterval", 5, "AutoSellIsle", fn456)
mb("TreasureInterval", 20, "AutoTreasure", rX_1)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Mint")
ThemeManager:ApplyToTab(lO.Settings)
ThemeManager:LoadDefault()
l_:SetLibrary(Library)
l_:IgnoreThemeSettings()
l_:SetIgnoreIndexes({ "MenuKeybind" })
l_:SetFolder("OuroborosHub/garden-horizons")
l_:BuildConfigSection(lO.Settings)
l_:LoadAutoloadConfig()
Library:OnUnload(fn591)
