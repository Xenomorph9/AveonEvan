local h0
local hF
local hI
local Objects
local Options
local hs
local hO
local hR
local hv
local hy
local hU
local hX
local hB
local h_
local hE
local h2
local hH
local ho
local hK
local PlotHandler
local LocalPlayer
local hu
local hQ
local hx
local hT
local hA
local hW
local Packs
local hZ
local Constants
local Decor
local Toggles
local Habitats
local hM
local hq
local hP
local ht
local PlayerStateClient
local VirtualUser
local Library
local Fuse
local hC
local hY
local function fn38(O, P)
    return Packs[O].Teeth < Packs[P].Teeth
end
local function fn42()
    if hX() then
        hH:FireServer()
    end
end
local function fn45(T, U)
    return Constants.Decor[T].Price < Constants.Decor[U].Price
end
local function fn67()
    local l8 = hC()
    for k, v in Constants.Terrain do
        local l9 = not l8[k]
        if l9 ~= false then
            l9 = hI() >= v.Price
        end
        if l9 then
            hK:FireServer(k)
            task.wait(Options.BuyTerrainDelay.Value)
        end
    end
end
local function fn81()
    if not hP then
        hA:FireServer(true)
    end
end
local function fn149()
end
local function onOrganizeGrid()
    task.spawn(function()
        local le_1
        local ld_1
        local la = PlotHandler.GetPlotModel()
        local lb = la and la:FindFirstChild("PlacedItems")
        if not lb then
            return
        end
        local children = lb:GetChildren()
        for k, v in children do
            hQ:FireServer(v)
            task.wait(0.15)
        end
        local lb_2 = os.clock() + 5
        while true do
            local lc_1 = #lb:GetChildren() > 0 and os.clock() < lb_2
            if lc_1 then
                task.wait(0.2)
                continue
            end
            break
        end
        task.wait(0.5)
        local la_2 = hZ(nil)
        local lb_3 = 0
        local lc_2 = {}
        for k, v in la_2 do
            le_1, ld_1 = h0(v, 1, lc_2)
            if le_1 then
                h2:Fire(v, le_1, 0)
                table.insert(lc_2, { CFrame = le_1, Size = ld_1 })
                lb_3 += 1
                task.wait(0.2)
            end
        end
        Library:Notify((("Organized %*/%* placements"):format(lb_3, #la_2)))
    end)
end
local function fn164(cq)
    cq:AddLeftGroupbox("Discord", nil, true, false, true):AddButton({
        Text = "Join Discord For Dupe",
        Func = function()
            setclipboard(hy)
            Library:Notify("Copied Discord invite to clipboard")
        end
    })
end
local function fn165()
    local mL = PlayerStateClient.Get("ActiveFuse")
    local mL_1
    local mM = typeof(mL) == "table" and tonumber(mL.EndTime)
    local mM_1
    if mM then
        return
    end
    mM_1, mL_1 = hF()
    if mM_1 and mL_1 then
        hu:FireServer(mM_1, mL_1)
    end
end
local function fn182()
    local mI = PlayerStateClient.Get("ActiveFuse")
    local mJ = typeof(mI) == "table" and tonumber(mI.EndTime) and os.time() >= mI.EndTime
    if mJ then
        hq:FireServer()
    end
end
local function fn223()
    local jg = Constants.Rebirths[hv() + 1]
    if not jg then
        return false
    elseif hI() < jg.NeedCash then
        return false
    else
        local jh = PlayerStateClient.Get("IndexEggs")
        if typeof(jh) ~= "table" then
            return false
        end
        for k, v in jg.NeedHabitat do
            if not jh[v] then
                return false
            end
        end
        return true
    end
end
local function fn236()
    local i7 = {}
    local i8 = PlayerStateClient.Get("Terrain")
    if typeof(i8) == "table" then
        for k, v in i8 do
            i7[v] = true
        end
    end
    return i7
end
local function onMerchantSold()
    hP = false
end
local function fn244(dh)
    local Value = Options.PlaceStep.Value
    for k, v in dh do
        local lA = h0(v, Value)
        if lA then
            h2:Fire(v, lA, 0)
            task.wait(Options.PlaceDelay.Value)
        end
    end
end
local function fn245(a1)
    local jD = ho()
    local jE = {}
    local jF = {}
    local jF_3
    local jG = jD.Habitats or jF
    local jG_2
    for k, v in jG do
        if not a1 or a1[k] then
            local jR = 1
            while jR <= v do
                table.insert(jE, k)
                jR += 1
            end
        end
    end
    local jG_1 = jD.Dinosaurs or {}
    for k, v in jG_1 do
        jF_3, jG_2 = Objects.GetDinosaurFromKey(k)
        if not a1 or jG_2 and a1[jG_2] then
            local j1 = 1
            while j1 <= v do
                table.insert(jE, k)
                j1 += 1
            end
        end
    end
    if not a1 then
        local jG_3 = jD.Decor or {}
        for k, v in jG_3 do
            local ka = 1
            while ka <= v do
                table.insert(jE, k)
                ka += 1
            end
        end
    end
    table.sort(jE, function(bl, bm)
        local jz_1
        local jy_1
        jy_1, jz_1 = hO(bl), hO(bm)
        local jy_2 = jy_1 and jy_1.Size.X * jy_1.Size.Z or 0
        local jA_1 = jz_1
        if jA_1 then
            jA_1 = jz_1.Size.X * jz_1.Size.Z
        end
        return jy_2 > (jA_1 or 0)
    end)
    return jE
end
local function fn300()
    local lI = PlotHandler.GetPlotModel()
    local lJ = lI and lI:FindFirstChild("PlacedItems")
    if not lJ then
        return
    end
    for i, child in lJ:GetChildren() do
        if child:FindFirstChild("HabitatEgg") then
            hU:FireServer(child)
            task.wait(Options.OpenDelay.Value)
        end
    end
end
local function fn307(aM)
    local PrimaryPart = aM.PrimaryPart
    local jq = PrimaryPart and PrimaryPart:IsA("BasePart")
    if jq then
        return PrimaryPart
    end
    local Base = aM:FindFirstChild("Base")
    local jq_1 = Base and Base:IsA("BasePart")
    if jq_1 then
        return Base
    end
    return nil
end
local function fn313()
    hR(hZ(Options.PlaceEggs.Value))
end
local function fn339()
    local iV = tonumber(PlayerStateClient.Get("DinosaurTeeth")) or 0
    return iV
end
local function fn340()
    hR(hZ(nil))
end
local function fn343(aS)
    local jt_1
    local js_1
    js_1, jt_1 = Objects.GetDinosaurFromKey(aS)
    local js_2 = jt_1 or aS
    local jt_2 = Habitats:FindFirstChild(js_2) or Decor:FindFirstChild(aS)
    if not jt_2 then
        return nil
    end
    return ht(jt_2)
end
local function fn372(af)
    local Main = LocalPlayer.PlayerGui:FindFirstChild("Main")
    local i2 = Main and Main:FindFirstChild("Shop")
    if not i2 then
        return 0
    end
    local i2_1 = i2.Canvas.Holder.Canvas.Scroll:FindFirstChild(af)
    local i1_2 = i2_1 and i2_1:FindFirstChild("Stock")
    if not i1_2 then
        return 0
    end
    local i1_3 = tonumber(i1_2.Text:match("%d+")) or 0
    return i1_3
end
local function fn374()
    local iQ = (tonumber(PlayerStateClient.Get("Cash")))
    local iU = if iQ then 1 else 0
    local iS = 1616 * iU + 2426 * (1 - iU)
    local iT = 3019 * iU + 2224 * (1 - iU)
    if not ((iS * 1520 + iT * 1281 + iS * iT) % 16777213 == 11202363) then
        iQ = 0
    end
    return iQ
end
local function fn382(K, L)
    return (Constants.Habitats[K].Price or 0) < (Constants.Habitats[L].Price or 0)
end
local function fn391()
    local iX = tonumber(PlayerStateClient.Get("Rebirth")) or 0
    return iX
end
local function onMerchantOpen(er)
    local mD = Library.Unloaded or not Toggles.AutoMerchant.Value or hP or typeof(er) ~= "table"
    if mD then
        return
    end
    local mD_1 = hT[tostring(er.State)] or 0
    if mD_1 >= (hT[Options.MerchantOffer.Value] or 3) then
        hP = true
        hx:FireServer()
        task.delay(3, function()
            hP = false
        end)
    end
end
local function onIdled()
    if Library.Unloaded then
        return
    end
    if not Toggles.AntiAFK.Value then
        return
    end
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end
local function fn469()
    local iZ = {}
    local i_ = PlayerStateClient.Get("Inventory") or iZ
    return i_
end
local function fn473()
    local mi = ho()
    for k, v in h_ do
        if Options.DecorItems.Value[v] and (mi.Decor and mi.Decor[v] or 0) > 0 then
            local mj_1 = h0(v, Options.PlaceStep.Value)
            if mj_1 then
                h2:Fire(v, mj_1, 0)
                return
            end
        end
    end
end
local function fn477()
    local mt = tonumber(Options.DecorCashReserve.Value) or 0
    for k, v in h_ do
        local mt_1 = Constants.Decor[v]
        local mv = Options.DecorItems.Value[v] and hs(v) > 0 and hI() - mt_1.Price >= mt
        if mv then
            if h0(v, Options.PlaceStep.Value) then
                hE:FireServer(v)
                return
            end
        end
    end
end
local function fn480()
    local l0 = tonumber(Options.TeethReserve.Value) or 0
    for k in Options.BuyPacks.Value do
        local l0_1 = Packs[k]
        local l2 = l0_1 and hB() - l0_1.Teeth >= l0
        if l2 then
            hM:FireServer(k)
            task.wait(Options.BuyPackDelay.Value)
        end
    end
end
local function fn488(ao)
    local Main = LocalPlayer.PlayerGui:FindFirstChild("Main")
    local i5 = Main and Main:FindFirstChild("Decor")
    local i4_1 = i5
    if i5 then
        i5 = i4_1.Canvas.Holder.Canvas.Scroll:FindFirstChild(ao)
    end
    local i4_2 = i5
    if i5 then
        i5 = i4_2:FindFirstChild("Stock")
    end
    local i4_3 = i5
    if not i4_3 then
        return 0
    end
    local i5_1 = tonumber(i4_3.Text:match("%d+")) or 0
    return i5_1
end
local function fn502()
    local ke = ho()
    local kf = {}
    local kh = ke.Dinosaurs or {}
    for k, v in kh do
        local ke_1 = Constants.GetDinosaurFromKey(k)
        local kg_1 = ke_1 and v > 0 and Fuse.CanFuseRarity(ke_1.Rarity)
        if kg_1 then
            local insert = table.insert
            local Rarity = ke_1.Rarity
            local ki = Constants.LayoutOrderRarity[ke_1.Rarity] or math.huge
            insert(kf, { Key = k, Count = v, Rarity = Rarity, Order = ki })
        end
    end
    table.sort(kf, function(bB, bC)
        if bB.Order == bC.Order then
            return bB.Key < bC.Key
        end
        return bB.Order < bC.Order
    end)
    for k, v in kf do
        local ke_2 = #kf
        local kz = k
        while kz <= ke_2 do
            local kA = kz
            local ke_3 = kf[kA]
            local kg_3 = k ~= kA or v.Count >= 2
            local kh_2 = kg_3 and Fuse.GetRecipe(v.Rarity, ke_3.Rarity)
            if kh_2 then
                return v.Key, ke_3.Key
            end
            kz += 1
        end
    end
    return nil
end
local function onUnload()
    Library:Unload()
end
local function fn532()
    local lR = tonumber(Options.EggCashReserve.Value) or 0
    for k in Options.BuyEggs.Value do
        local lR_1 = Constants.Habitats[k]
        local lT = lR_1
        if lT then
            local lU = hv()
            lT = lU >= (lR_1.NeedRebirth or 0)
        end
        if lT then
            lT = hW(k) > 0
        end
        if lT then
            if hI() - lR_1.Price >= lR then
                hY:FireServer(k)
                task.wait(Options.BuyEggDelay.Value)
            end
        end
    end
end
Habitats = nil
ho = nil
Objects = nil
hq = nil
PlotHandler = nil
hs = nil
ht = nil
hu = nil
hv = nil
PlayerStateClient = nil
hx = nil
hy = nil
Fuse = nil
hA = nil
hB = nil
hC = nil
Packs = nil
hE = nil
hF = nil
Constants = nil
hH = nil
hI = nil
Toggles = nil
hK = nil
Options = nil
hM = nil
LocalPlayer = nil
hO = nil
hP = nil
hQ = nil
hR = nil
VirtualUser = nil
hT = nil
hU = nil
Library = nil
hW = nil
hX = nil
hY = nil
hZ = nil
h_ = nil
h0 = nil
Decor = nil
h2 = nil
local ReplicatedStorage
local ShopGroup
local ic_1
local SaveManager
local io_1
local il_1
ReplicatedStorage, VirtualUser, LocalPlayer, Constants, Packs, Fuse, PlayerStateClient, PlotHandler, Objects, h2, hY, hU, hQ, hM, hK, hH, hE, hA, hx, hu, hq, Habitats, Decor = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local h3 = game:GetService("Players")
if (hQ and hQ and (not VirtualUser and 139) or LocalPlayer and (hE or not VirtualUser) or (not VirtualUser or LocalPlayer or LocalPlayer and false or (not VirtualUser and false or (LocalPlayer or hQ)))) and ((hE or false or (not VirtualUser or hQ)) and (VirtualUser and LocalPlayer or not VirtualUser and not hE) and ((hQ or not LocalPlayer or not VirtualUser and hE) and (not hQ and 139 or (LocalPlayer or hE)))) or not ((hQ and hQ and (not VirtualUser and 139) or LocalPlayer and (hE or not VirtualUser) or (not VirtualUser or LocalPlayer or LocalPlayer and false or (not VirtualUser and false or (LocalPlayer or hQ)))) and ((hE or false or (not VirtualUser or hQ)) and (VirtualUser and LocalPlayer or not VirtualUser and not hE) and ((hQ or not LocalPlayer or not VirtualUser and hE) and (not hQ and 139 or (LocalPlayer or hE))))) then
    ReplicatedStorage = game:GetService("ReplicatedStorage")
else
    h3 = game:GetService("ReplicatedStorage")
end
local StarterPlayer = game:GetService("StarterPlayer")
VirtualUser = game:GetService("VirtualUser")
LocalPlayer = h3.LocalPlayer
local net = require(ReplicatedStorage.Packages.net)
local packet = require(ReplicatedStorage.Packages.packet)
Constants = require(ReplicatedStorage.Shared.Config.Constants)
Packs = require(ReplicatedStorage.Shared.Config.Packs)
Fuse = require(ReplicatedStorage.Shared.Config.Fuse)
PlayerStateClient = require(ReplicatedStorage.Packages.DataReplica.PlayerStateClient)
PlotHandler = require(ReplicatedStorage.Shared.Modules.PlotHandler)
Objects = require(StarterPlayer.StarterPlayerScripts.Client.Scripts.BuildHandler.Settings).Objects
PlotHandler.Init()
h2 = packet("BuildPlace", "String", "CFrameF32U16", "NumberU16")
hY = net:RemoteEvent("PurchaseShop")
hU = net:RemoteEvent("BuildOpenEgg")
hQ = net:RemoteEvent("BuildDelete")
hM = net:RemoteEvent("BuyPack")
hK = net:RemoteEvent("TerrainBuy")
hH = net:RemoteEvent("Rebirth")
hE = net:RemoteEvent("PurchaseDecor")
hA = net:RemoteEvent("MerchantRequest")
hx = net:RemoteEvent("MerchantSell")
hu = net:RemoteEvent("FuseStart")
hq = net:RemoteEvent("FuseClaim")
Habitats = ReplicatedStorage.Shared.Assets.Habitats
Decor = ReplicatedStorage.Shared.Assets.Decor
local h9 = {}
for k, v in Constants.Habitats do
    local h3_1 = typeof(v) == "table" and v.Habitat
    if h3_1 then
        table.insert(h9, v.Habitat)
    end
end
local h4_1 = nil
local h3_2 = 1
repeat
    local h5_1 = {
        "tvxy",
        "wjpjlfwrckyy",
        "fxijsqhcxbjl",
        "fah",
        "mxwnu",
        "dtp",
        "uhklxkcdkx",
        "fvqsbucz",
        "qgddbawfbsr",
        "relclzbbu",
        "cbh",
        "egac",
        "blejvyznq",
        "ehdsf",
        "ylyxubvtkvpw"
    }
    if h5_1[(h3_2 * 58 + 9) % 15 + 1] <= h5_1[(h3_2 * 58 + 9) % 15 + 1] then
        table.sort(h9, fn382)
        h4_1 = {}
    else
        table.sort(h4_1, fn382)
        h9 = {}
    end
    h3_2 = (h3_2 + 0) % 8
until (h3_2 * 5 + 4) % 8 == 1
for k in Packs do
    if k ~= "Limited" then
        table.insert(h4_1, k)
    end
end
h_ = nil
table.sort(h4_1, fn38)
h_ = {}
for k in Constants.Decor do
    table.insert(h_, k)
end
Library, SaveManager, Options, Toggles, hy, hI, hB, hv, ho, hW, hs, hC, hX, ht, hO, hZ, hF, h0 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(h_, fn45)
hI = fn374
hB = fn339
hv = fn391
ho = fn469
hW = fn372
hs = fn488
hC = fn236
hX = fn223
ht = fn307
hO = fn343
hZ = fn245
hF = fn502
h0 = function(bK, bL, bM)
    local Size, kS, kT
    local kU = PlotHandler.GetPlotModel()
    local kV = kU and kU:FindFirstChild("Base")
    local kV_1 = hO(bK)
    if not kV or not kV_1 then
        return nil
    end
    Size = kV_1.Size
    kS = Vector3.new(math.max(Size.X - 0.05, 0.05), math.max(Size.Y - 0.05, 0.05), math.max(Size.Z - 0.05, 0.05))
    kT = OverlapParams.new()
    kT.FilterType = Enum.RaycastFilterType.Exclude
    kT.FilterDescendantsInstances = { kV, LocalPlayer.Character }
    local function kV_2(bY)
        for k, v in workspace:GetPartBoundsInBox(bY, kS, kT) do
            local kC_1 = v:FindFirstAncestor("Areas") or v:FindFirstAncestor("Gate")
            if kC_1 then
                return true
            end
            local Model = v:FindFirstAncestorOfClass("Model")
            local kD_1 = Model and ht(Model) == v
            if kD_1 then
                return true
            end
        end
        if bM then
            for k, v in bM do
                local kC_3 = v.CFrame.Position - bY.Position
                local kD_2 = math.abs(kC_3.X) < (v.Size.X + Size.X) / 2 - 0.05 and math.abs(kC_3.Z) < (v.Size.Z + Size.Z) / 2 - 0.05
                if kD_2 then
                    return true
                end
            end
        end
        return false
    end
    local kW_1 = kV.Position.Y + kV.Size.Y / 2 + Size.Y / 2
    local kX_1 = kV.Size.X / 2 - Size.X / 2
    local kY = kV.Size.Z / 2 - Size.Z / 2
    local k2 = -kX_1
    while bL > 0 and k2 <= kX_1 or bL <= 0 and k2 >= kX_1 do
        local k3 = k2
        local k7 = -kY
        while bL > 0 and k7 <= kY or bL <= 0 and k7 >= kY do
            local k8 = k7
            local Position = (kV.CFrame * CFrame.new(k3, 0, k8)).Position
            local kZ_1 = CFrame.new(Position.X, kW_1, Position.Z)
            if not kV_2(kZ_1) then
                return kZ_1, Size
            end
            k7 += bL
        end
        k2 += bL
    end
    return nil
end
local h6 = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
if ((hW or Options) and (h6 and not hC) and (h6 and not hF or hW and hF) or (h6 and hF or hC and not hC) and ((hW or hF) and (hF and Options))) and (not Options and hF and "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/" or (h6 and Options or (false or Options)) or ((SaveManager or Options) and (h6 and hC) or not Options and hW and (h6 and not hC))) or not (((hW or Options) and (h6 and not hC) and (h6 and not hF or hW and hF) or (h6 and hF or hC and not hC) and ((hW or hF) and (hF and Options))) and (not Options and hF and "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/" or (h6 and Options or (false or Options)) or ((SaveManager or Options) and (h6 and hC) or not Options and hW and (h6 and not hC)))) then
    ic_1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
else
    loadstring(game:HttpGet(SaveManager .. "addons/ThemeManager.lua"))()
    ic_1 = loadstring(game:HttpGet(SaveManager .. "addons/SaveManager.lua"))()
end
Options = Library.Options
Toggles = Library.Toggles
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Footer = "My Dino Park!",
    Icon = 18657887261,
    NotifySide = "Right",
    ShowCustomCursor = false
})
local ia = {
    Main = Window:AddTab("Main", "gamepad-2"),
    Automation = Window:AddTab("Automation", "bot"),
    Settings = Window:AddTab("Settings", "settings")
}
hy = "https://discord.gg/ehKVq7pf7v"
for k, v in ia do
    fn164(v)
end
ShopGroup, io_1, hT, hP, il_1, hR = nil, nil, nil, nil, nil, nil
local PlacingGroup = ia.Main:AddLeftGroupbox("Placing", "layout-grid")
PlacingGroup:AddToggle("AutoPlace", { Text = "Auto Place", Default = false })
PlacingGroup:AddDropdown("PlaceEggs", { Text = "Eggs", Values = h9, Multi = true, Searchable = true, AllowNull = true, Default = {} })
PlacingGroup:AddToggle("AutoPlaceAll", { Text = "Auto Place All", Default = false })
PlacingGroup:AddSlider("PlaceStep", { Text = "Grid Step", Default = 5, Min = 1, Max = 25, Rounding = 0 })
PlacingGroup:AddSlider("PlaceDelay", { Text = "Place Delay", Default = 1, Min = 0.2, Max = 5, Rounding = 1, Suffix = "s" })
PlacingGroup:AddButton({ Text = "Organize Grid", Func = onOrganizeGrid })
local EggsGroup = ia.Main:AddRightGroupbox("Eggs", "egg")
if (io_1 or io_1) and (io_1 or not io_1) or (io_1 or il_1) and (il_1 or io_1) or not ((io_1 or io_1) and (io_1 or not io_1) or (io_1 or il_1) and (il_1 or io_1)) then
    EggsGroup:AddToggle("AutoOpen", { Text = "Auto Open Egg", Default = false })
    EggsGroup:AddSlider("OpenDelay", { Text = "Open Delay", Default = 1, Min = 0.2, Max = 5, Rounding = 1, Suffix = "s" })
    EggsGroup:AddDivider()
    EggsGroup:AddToggle("AutoBuyEggs", { Text = "Auto Buy Eggs", Default = false })
    EggsGroup:AddDropdown("BuyEggs", { Text = "Eggs", Values = h9, Multi = true, Searchable = true, AllowNull = true, Default = {} })
    EggsGroup:AddInput("EggCashReserve", { Text = "Cash Reserve", Default = "0", Numeric = true, Placeholder = "0" })
    EggsGroup:AddSlider("BuyEggDelay", { Text = "Buy Delay", Default = 1, Min = 0.2, Max = 5, Rounding = 1, Suffix = "s" })
    ShopGroup = ia.Main:AddLeftGroupbox("Shop", "shopping-cart")
else
    ShopGroup:AddToggle("AutoOpen", { Text = "Auto Open Egg", Default = false })
    ShopGroup:AddSlider("OpenDelay", { Suffix = "s", Text = "Open Delay", Max = 5, Rounding = 1, Min = 0.2, Default = 1 })
    ShopGroup:AddDivider()
    ShopGroup:AddToggle("AutoBuyEggs", { Text = "Auto Buy Eggs", Default = false })
    ShopGroup:AddDropdown("BuyEggs", {
        Values = EggsGroup,
        Multi = true,
        Searchable = true,
        AllowNull = true,
        Text = "Eggs",
        Default = {}
    })
    ShopGroup:AddInput("EggCashReserve", { Default = "0", Numeric = true, Placeholder = "0", Text = "Cash Reserve" })
    ShopGroup:AddSlider("BuyEggDelay", { Max = 5, Rounding = 1, Default = 1, Min = 0.2, Text = "Buy Delay", Suffix = "s" })
    ia = h9.Main:AddLeftGroupbox("Shop", "shopping-cart")
end
ShopGroup:AddToggle("AutoBuyPacks", { Text = "Auto Buy Packs", Default = false })
ShopGroup:AddDropdown("BuyPacks", { Text = "Packs", Values = h4_1, Multi = true, Searchable = true, AllowNull = true, Default = {} })
ShopGroup:AddInput("TeethReserve", { Text = "Teeth Reserve", Default = "0", Numeric = true, Placeholder = "0" })
ShopGroup:AddSlider("BuyPackDelay", { Text = "Buy Delay", Default = 1, Min = 0.2, Max = 5, Rounding = 1, Suffix = "s" })
local ParkGroup = ia.Main:AddRightGroupbox("Park", "mountain")
ParkGroup:AddToggle("AutoBuyTerrain", { Text = "Auto Buy Terrain", Default = false })
ParkGroup:AddSlider("BuyTerrainDelay", { Text = "Terrain Delay", Default = 2, Min = 0.5, Max = 10, Rounding = 1, Suffix = "s" })
ParkGroup:AddDivider()
ParkGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
ParkGroup:AddSlider("RebirthDelay", { Text = "Rebirth Delay", Default = 3, Min = 1, Max = 15, Rounding = 1, Suffix = "s" })
local IncomeDecorGroup = ia.Automation:AddLeftGroupbox("Income Decor", "trees")
IncomeDecorGroup:AddToggle("AutoBuyDecor", { Text = "Auto Buy Decor", Default = false })
IncomeDecorGroup:AddToggle("AutoPlaceDecor", { Text = "Auto Place Decor", Default = false })
IncomeDecorGroup:AddDropdown("DecorItems", { Text = "Decor", Values = h_, Multi = true, Searchable = true, AllowNull = true, Default = {} })
IncomeDecorGroup:AddInput("DecorCashReserve", { Text = "Cash Reserve", Default = "0", Numeric = true, Placeholder = "0" })
IncomeDecorGroup:AddSlider("DecorDelay", { Text = "Decor Delay", Default = 1, Min = 0.2, Max = 5, Rounding = 1, Suffix = "s" })
local MerchantGroup = ia.Automation:AddRightGroupbox("Merchant", "store")
MerchantGroup:AddToggle("AutoMerchant", { Text = "Auto Sell to Merchant", Default = false })
MerchantGroup:AddDropdown("MerchantOffer", { Text = "Minimum Offer", Values = { "Average", "Good", "Insane" }, Default = "Good" })
MerchantGroup:AddSlider("MerchantDelay", { Text = "Request Delay", Default = 2, Min = 1, Max = 10, Rounding = 0, Suffix = "s" })
local FusionGroup = ia.Automation:AddLeftGroupbox("Fusion", "combine")
FusionGroup:AddToggle("AutoFuse", { Text = "Auto Fuse", Default = false })
FusionGroup:AddToggle("AutoCollectFuse", { Text = "Auto Collect Fusion", Default = false })
FusionGroup:AddSlider("FuseDelay", { Text = "Fusion Delay", Default = 2, Min = 0.5, Max = 10, Rounding = 1, Suffix = "s" })
local function im(c3, c4, c5)
    task.spawn(function()
        while true do
            local lx = c4 and Options[c4].Value or 1
            task.wait(lx)
            if Library.Unloaded then
                break
            end
            if Toggles[c3].Value then
                pcall(c5)
            end
        end
    end)
end
hR = fn244
im("AutoPlace", nil, fn313)
im("AutoPlaceAll", nil, fn340)
im("AutoOpen", "OpenDelay", fn300)
im("AutoBuyEggs", "BuyEggDelay", fn532)
im("AutoBuyPacks", "BuyPackDelay", fn480)
im("AutoBuyTerrain", "BuyTerrainDelay", fn67)
im("AutoRebirth", "RebirthDelay", fn42)
im("AutoPlaceDecor", "DecorDelay", fn473)
im("AutoBuyDecor", "DecorDelay", fn477)
hT = { Low = 1, Average = 2, Good = 3, Insane = 4 }
hP = false
net:Connect("MerchantOpen", onMerchantOpen)
net:Connect("MerchantSold", onMerchantSold)
im("AutoMerchant", "MerchantDelay", fn81)
im("AutoCollectFuse", "FuseDelay", fn182)
im("AutoFuse", "FuseDelay", fn165)
task.wait()
local MenuGroup = ia.Settings:AddLeftGroupbox("Menu")
local Label = MenuGroup:AddLabel("Menu bind")
Label:AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
local Anti_AfkGroup = ia.Settings:AddLeftGroupbox("Anti-AFK")
Anti_AfkGroup:AddToggle("AntiAFK", { Text = "Anti-AFK", Default = true })
LocalPlayer.Idled:Connect(onIdled)
local MenuControlGroup = ia.Settings:AddLeftGroupbox("Menu Control")
MenuControlGroup:AddButton("Unload", onUnload)
Library:OnUnload(fn149)
ic_1:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
ic_1:SetFolder("OuroborosHub")
SaveManager:SetFolder("OuroborosHub/my-dino-park")
ic_1:SaveDefault("Mint")
ic_1:ApplyToTab(ia.Settings)
ic_1:LoadDefault()
SaveManager:BuildConfigSection(ia.Settings)
SaveManager:LoadAutoloadConfig()
