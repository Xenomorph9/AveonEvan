local connection
local PlotSystem
local jb
local UserId
local je
local iA
local Data
local iD
local iZ
local iG
local VirtualUser
local iJ
local CollectionService
local iM
local iw
local iz
local iY
local iF
local Library
local Options
local i9
local Zones
local iR
local Toggles
local iy
local iU
local iB
local LocalPlayer
local iE
local i_
local iH
local function autoHarvestPlantsLoop()
    while not Library.Unloaded do
        if Toggles.AutoHarvestPlants.Value then
            iY()
        end
        task.wait(0.5)
    end
end
local function fn119(bl)
    for i, v in ipairs(Zones) do
        if v.name == bl then
            return v.max
        end
    end
    return 0.65
end
local function fn121(ee, ef)
    local oy = tonumber(ef:GetAttribute("RipeAt"))
    if oy then
        return oy <= os.time()
    end
    local oy_1 = (tonumber(ee:GetAttribute("YieldReady")))
    local oC = if oy_1 then 1 else 0
    local oA = 168 * oC + 1069 * (1 - oC)
    local oB = 2950 * oC + 3044 * (1 - oC)
    if not ((oA * 602 + oB * 3367 + oA * oB) % 16777213 == 10529386) then
        oy_1 = 0
    end
    return oy_1 >= 1
end
local function fn132(fy)
    fy:AddLeftGroupbox("Discord"):AddButton({ Text = "Join Discord For Dupe", Func = iU })
end
local function autoBuyFlavorsLoop()
    while not Library.Unloaded do
        if Toggles.AutoBuyFlavors.Value then
            iz()
        end
        task.wait(0.5)
    end
end
local function onHarvestPlants(fU)
    local qd = {}
    for k, v in fU do
        if v then
            qd[k] = true
        end
    end
    i_ = qd
end
local function fn219()
    if setclipboard then
        setclipboard(iZ)
    elseif toclipboard then
        toclipboard(iZ)
    end
    Library:Notify("Copied Discord invite to clipboard")
end
local function fn223()
    if connection then
        connection:Disconnect()
        connection = nil
    end
    print("Snowcone Stand unloaded")
end
local function fn229()
end
local function fn305()
    local Character = LocalPlayer.Character
    if Character then
        for i, child in ipairs(Character:GetChildren()) do
            local m3_1 = child:IsA("Tool") and CollectionService:HasTag(child, iG)
            if m3_1 then
                return child
            end
        end
    end
    return nil
end
local function autoBuyPlantsLoop()
    while not Library.Unloaded do
        if Toggles.AutoBuyPlants.Value then
            iH()
        end
        task.wait(0.5)
    end
end
local function fn354()
    local kJ_1
    local kI_1
    local kH = {}
    kI_1, kJ_1 = pcall(function()
        return Data:Get("ShopStock")
    end)
    local kK = kI_1 and type(kJ_1) == "table" and type(kJ_1.Plants) == "table"
    if kK then
        for i, v in ipairs(kJ_1.Plants) do
            if v.name then
                local name = v.name
                local kJ_2 = (tonumber(v.remaining))
                local kU = if kJ_2 then 1 else 0
                local kS = 3851 * kU + 1541 * (1 - kU)
                local kT = 1270 * kU + 2278 * (1 - kU)
                if not ((kS * 2384 + kT * 988 + kS * kT) % 16777213 == 15326314) then
                    kJ_2 = tonumber(v.stock)
                end
                local kK_1 = kJ_2 or 0
                kH[name] = { remaining = kK_1, cash = tonumber(v.cash) }
            end
        end
    end
    return kH
end
local function autoBlendLoop()
    while not Library.Unloaded do
        if Toggles.AutoBlend.Value then
            i9()
        end
        local qr = Options.BlendDelay.Value or 0.2
        task.wait(qr)
    end
end
local function fn412()
    local kc_1
    local kb_1
    kb_1, kc_1 = pcall(function()
        return Data:Get("ShopStock")
    end)
    local kd = kb_1 and type(kc_1) == "table"
    if kd then
        if type(kc_1.Flavors) == "table" then
            table.clear(iJ)
            table.clear(iF)
            for i, v in ipairs(kc_1.Flavors) do
                if v.name then
                    iJ[#iJ + 1] = v.name
                    local name = v.name
                    local kd_1 = v.tier
                    local ko = if kd_1 then 1 else 0
                    local km = 2475 * ko + 272 * (1 - ko)
                    local kn = 723 * ko + 3951 * (1 - ko)
                    if not ((km * 1156 + kn * 1399 + km * kn) % 16777213 == 5662002) then
                        kd_1 = v.rarity
                    end
                    local ke = kd_1 or "Common"
                    iF[name] = ke
                end
            end
        end
        if type(kc_1.Plants) == "table" then
            table.clear(iA)
            table.clear(iw)
            for i, v in ipairs(kc_1.Plants) do
                if v.name then
                    iA[#iA + 1] = v.name
                    local name = v.name
                    local kd_2 = v.tier or v.rarity or "Common"
                    iw[name] = kd_2
                end
            end
        end
    end
end
local function autoBuyLandLoop()
    while not Library.Unloaded do
        if Toggles.AutoBuyLand.Value then
            iR()
        end
        task.wait(0.5)
    end
end
local function autoClaimQuestsLoop()
    while not Library.Unloaded do
        if Toggles.AutoClaimQuests.Value then
            je()
        end
        task.wait(1)
    end
end
local function onUnload()
    Library:Unload()
end
local function onAntiAfk(f2)
    if f2 then
        if not connection then
            connection = LocalPlayer.Idled:Connect(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new())
            end)
        end
    elseif connection then
        connection:Disconnect()
        connection = nil
    end
end
local function fn546(bq, br)
    if bq:GetAttribute("Blending") ~= true then
        return false
    end
    local lS = (bq:GetAttribute("BlendStart"))
    local lY = if lS then 1 else 0
    local lW = 3220 * lY + 3566 * (1 - lY)
    local lX = 676 * lY + 1154 * (1 - lY)
    if not ((lW * 3345 + lX * 152 + lW * lX) % 16777213 == 13050372) then
        lS = 0
    end
    local lT = lS
    local lS_1 = (bq:GetAttribute("BlendDuration"))
    local l0 = if lS_1 then 1 else 0
    local lZ = 2153 * l0 + 1775 * (1 - l0)
    local l_ = 119 * l0 + 3846 * (1 - l0)
    if not ((lZ * 430 + l_ * 1108 + lZ * l_) % 16777213 == 1313849) then
        lS_1 = 1
    end
    local lU = lS_1
    local lS_2 = (workspace:GetServerTimeNow() - lT) / math.max(lU, 0.01)
    if br == "Any" then
        return lS_2 > 0.16
    end
    local lT_1 = PlotSystem.GetBlendZone(math.clamp(lS_2, 0, 1))
    if lT_1.name == br then
        return true
    end
    return lS_2 >= jb(br)
end
local function fn577()
    local ky_1
    local kx_1
    local kw = {}
    kx_1, ky_1 = pcall(function()
        return Data:Get("ShopStock")
    end)
    local kz = kx_1 and type(ky_1) == "table" and type(ky_1.Flavors) == "table"
    if kz then
        for i, v in ipairs(ky_1.Flavors) do
            if v.name then
                local name = v.name
                local ky_2 = tonumber(v.remaining) or tonumber(v.stock)
                local kz_1 = ky_2 or 0
                kw[name] = { remaining = kz_1, cash = tonumber(v.cash), gem = tonumber(v.gem) }
            end
        end
    end
    return kw
end
local function fn701()
    local on = {}
    for i, v in ipairs(CollectionService:GetTagged(PlotSystem.PlacedItemTag)) do
        local oo = v:IsDescendantOf(workspace) and v:GetAttribute("OwnerUserId") == UserId and PlotSystem.IsPlant(v)
        if oo then
            on[#on + 1] = v
        end
    end
    return on
end
local function fn723()
    local ls = {}
    for i, v in ipairs(CollectionService:GetTagged(iy)) do
        local lt = v:IsDescendantOf(workspace) and v:GetAttribute("OwnerUserId") == UserId
        if lt then
            local lt_1 = {}
            for i, descendant in ipairs(v:GetDescendants()) do
                local lu = descendant:IsA("BasePart") and descendant.Name == "PlacePart"
                if lu then
                    lt_1[#lt_1 + 1] = descendant
                end
            end
            if #lt_1 > 0 then
                ls[#ls + 1] = { model = v, slots = lt_1 }
            end
        end
    end
    return ls
end
local function onBuyPlants(fO)
    local p5 = {}
    for k, v in fO do
        if v then
            p5[k] = true
        end
    end
    iM = p5
end
local function fn732()
    for i, v in ipairs(CollectionService:GetTagged("OwnedPlot")) do
        local o_ = v:IsDescendantOf(workspace) and v:GetAttribute("OwnerUserId") == UserId
        if o_ then
            return v
        end
    end
    return nil
end
local function fn734()
    Library.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
local function onBuyFlavors(fI)
    local pY = {}
    for k, v in fI do
        if v then
            pY[k] = true
        end
    end
    iE = pY
end
local function fn744(eP)
    local pa = eP
    while true do
        local pi = if pa and pa ~= workspace then 1 else 0
        local pg = 3866 * pi + 3456 * (1 - pi)
        local ph = 2922 * pi + 2200 * (1 - pi)
        if not ((pg * 731 + ph * 1760 + pg * ph) % 16777213 == 2488005) then
            return nil
        end
        local pf = if CollectionService:HasTag(pa, "ExpansionTile") then 1 else 0
        if pf == 1 then
            break
        end
        pa = pa.Parent
    end
    return pa
end
local function fn760()
    local k4 = {}
    for i, v in ipairs(CollectionService:GetTagged(iB)) do
        local k5 = v:IsDescendantOf(workspace) and v:GetAttribute("OwnerUserId") == UserId
        if k5 then
            local k5_1 = {}
            local k6 = {}
            for i, descendant in ipairs(v:GetDescendants()) do
                local k7 = descendant:IsA("BasePart") and descendant.Name == "BlenderPart"
                if k7 then
                    local k7_1 = descendant.Parent and descendant.Parent.Parent
                    local k8 = k7_1
                    if k7_1 then
                        k7_1 = not k6[k8]
                    end
                    if k7_1 then
                        k6[k8] = true
                        k5_1[#k5_1 + 1] = k8
                    end
                end
            end
            if #k5_1 > 0 then
                k4[#k4 + 1] = { model = v, jars = k5_1 }
            end
        end
    end
    return k4
end
local function autoServeLoop()
    while not Library.Unloaded do
        if Toggles.AutoServe.Value then
            iD()
        end
        task.wait(0.3)
    end
end
Zones = nil
iw = nil
iy = nil
iz = nil
iA = nil
iB = nil
iD = nil
iE = nil
iF = nil
iG = nil
iH = nil
Library = nil
iJ = nil
iM = nil
PlotSystem = nil
iR = nil
UserId = nil
iU = nil
Data = nil
LocalPlayer = nil
iY = nil
iZ = nil
i_ = nil
VirtualUser = nil
CollectionService = nil
connection = nil
Options = nil
i9 = nil
jb = nil
Toggles = nil
je = nil
local is, it, iu, ix, iC, iK, iL, iN, PlotGrid, iP, iS, iV, Network, i2, i3, i7, i8, ja, jd
local AutoPlaceConeGroup
local AutoHarvestPlantsGroup
local jg_1
local js_1
local jp_1
local jh_1
local jf_1, AutoClaimQuestsGroup
jf_1, jh_1, CollectionService, VirtualUser, LocalPlayer, UserId = nil, nil, nil, nil, nil, nil
if (not UserId or LocalPlayer) and false and (CollectionService or VirtualUser and not UserId) or not ((not UserId or LocalPlayer) and false and (CollectionService or VirtualUser and not UserId)) then
    jf_1 = game:GetService("Players")
else
    jh_1 = game:GetService("Players")
end
if not jf_1 and jh_1 and 3 or jh_1 and VirtualUser and (VirtualUser and 3) or not (not jf_1 and jh_1 and 3 or jh_1 and VirtualUser and (VirtualUser and 3)) then
    jh_1 = game:GetService("ReplicatedStorage")
else
    jf_1 = game:GetService("ReplicatedStorage")
end
CollectionService = game:GetService("CollectionService")
VirtualUser = game:GetService("VirtualUser")
LocalPlayer = jf_1.LocalPlayer
UserId = LocalPlayer.UserId
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
Library, Toggles, Options, Network, Data, PlotSystem, PlotGrid, iL, iG, iB, iy, Zones, it, ja = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
pcall(fn734)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
local Modules = jh_1:WaitForChild("Modules")
Network = require(Modules.Shared.Network.Network)
Data = require(Modules.Client.Network.ReplicaHandler.Data)
PlotSystem = require(Modules.Shared.Config.PlotSystem)
PlotGrid = require(Modules.Shared.Data.PlotGrid)
iL = "FlavorTool"
iG = "SnowConeTool"
iB = "ProductionBlender"
iy = "ServingTable"
Zones = PlotSystem.Production.Zones
it = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Exotic", "Cosmic" }
ja = {}
for i, v in ipairs(it) do
    ja[v] = i
end
iZ, iJ, iF, iA, iw, iu, jg_1, iU = nil, nil, nil, nil, nil, nil, nil, nil
local jf_2 = 4
repeat
    local jh_2 = (jf_2 * 3 + 1) % 4 + 1
    if jh_2 <= 2 then
        if jh_2 <= 1 then
            local ji_1 = {
                "mgisf",
                "rfvvzllonuwt",
                "ywsbue",
                "wyk",
                "rdyvymmvyr",
                "jrbjy",
                "mziejkfxu",
                "gch",
                "kdvdlnd",
                "xgiudshini",
                "aqktmzthhpfw",
                "sdln",
                "ldemjkrbrlrg",
                "imghpmh"
            }
            if ji_1[(jf_2 * 29 + 46) % 14 + 1] < ji_1[(jf_2 * 29 + 46) % 14 + 1] then
                jg_1 = {}
                iu = {}
            else
                iu = {}
                jg_1 = {}
            end
            jf_2 = (jf_2 + 3) % 16
        else
            if jf_2 * 100040245 + 10 + 1 >= jf_2 * 100040245 + 10 + 1 + 1 then
                iU = "https://discord.gg/ehKVq7pf7v"
                iZ = fn219
            else
                iZ = "https://discord.gg/ehKVq7pf7v"
                iU = fn219
            end
            jf_2 = (jf_2 + 11) % 16
        end
    elseif jh_2 <= 3 then
        if (jf_2 * 2 + 2) * 4 % 3 == ((jf_2 * 2 + 2) * 4 + 8) % 3 then
            iF = {}
        else
            iJ = {}
        end
        jf_2 = (jf_2 + 11) % 16
    else
        local jh_3 = {
            "slmwcmp",
            "sbabyq",
            "aotlaifqza",
            "hjlk",
            "jcujdemei",
            "svixtntw",
            "mgbmj",
            "iigsfw",
            "wgvtlrfpjeyg",
            "gubojw",
            "xwfyfgy",
            "irnatwiupez",
            "uzkzcj",
            "znvgf",
            "dtexltyzwk"
        }
        if jh_3[(jf_2 * 54 + 44) % 15 + 1] <= jh_3[(jf_2 * 54 + 44) % 15 + 1] then
            iF = {}
            iA = {}
            iw = {}
        else
            iw = {}
            iF = {}
            iA = {}
        end
        jf_2 = (jf_2 + 7) % 16
    end
until (jf_2 * 5 + 15) % 16 == 3
for k, v in pairs(PlotSystem.Placeables) do
    local jf_3 = type(v) == "table" and v.behavior == "Plant"
    if jf_3 then
        local jf_4 = v.display
        local jB = if jf_4 then 1 else 0
        local jz = 1849 * jB + 864 * (1 - jB)
        local jA = 3027 * jB + 103 * (1 - jB)
        if not ((jz * 3993 + jA * 928 + jz * jA) % 16777213 == 15789036) then
            jf_4 = k
        end
        iu[k] = jf_4
        local jf_5 = #jg_1 + 1
        local jh_4 = v.display or k
        jg_1[jf_5] = jh_4
    end
end
table.sort(jg_1)
iE, iM, i_, iK, iS, i2, ix, i7, jb, iP, i3, i9, iC, i8, iD, iz, iH, iV, is, iY, iN, jd, iR, je = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
fn412()
iK = fn577
iS = fn354
i2 = function(aM)
    local k1_1
    local k0_1
    k0_1, k1_1 = pcall(function()
        local kW = aM == "gem" and "Gems"
        local k_ = if kW then 1 else 0
        local kY = 177 * k_ + 3465 * (1 - k_)
        local kZ = 1351 * k_ + 2096 * (1 - k_)
        if not ((kY * 1940 + kZ * 2103 + kY * kZ) % 16777213 == 3423660) then
            kW = "Cash"
        end
        return Data:Get(kW)
    end)
    local k2 = k0_1 and tonumber(k1_1)
    return k2 or 0
end
ix = fn760
i7 = fn723
jb = fn119
iP = fn546
i3 = function(bz, bA)
    local mc
    local Character = LocalPlayer.Character
    local me = Character and Character:FindFirstChildOfClass("Humanoid")
    if not me then
        return nil
    end
    for i, child in ipairs(Character:GetChildren()) do
        local me_1 = child:IsA("Tool") and CollectionService:HasTag(child, bz)
        if me_1 then
            local me_2 = bA == nil
            local mk = if me_2 then 1 else 0
            local mi = 1097 * mk + 3757 * (1 - mk)
            local mj = 1438 * mk + 1302 * (1 - mk)
            if not ((mi * 2244 + mj * 1371 + mi * mj) % 16777213 == 6010652) then
                me_2 = bA == "Any"
            end
            if not me_2 then
                me_2 = child.Name == bA
            end
            if me_2 then
                return child
            end
        end
    end
    mc = {}
    local function me_3(bM)
        if bM then
            for i, child in ipairs(bM:GetChildren()) do
                local l4 = child:IsA("Tool") and CollectionService:HasTag(child, bz)
                if l4 then
                    mc[#mc + 1] = child
                end
            end
        end
    end
    me_3(LocalPlayer:FindFirstChildOfClass("Backpack"))
    me_3(Character)
    local mg
    if bA and bA ~= "Any" then
        for i, v in ipairs(mc) do
            if v.Name == bA then
                mg = v
                break
            end
        end
    else
        mg = mc[1]
    end
    if not mg then
        return nil
    end
    me:EquipTool(mg)
    return mg
end
i9 = function()
    for i, v in ipairs(ix()) do
        local mE = v
        for i, v in ipairs(mE.jars) do
            local mK = v
            local mx = Library.Unloaded or not Toggles.AutoBlend.Value
            local mx_1
            if mx then
                return
            end
            if mK:GetAttribute("Blending") ~= true then
                if Toggles.AutoStartBlend.Value then
                    if Toggles.AutoEquipFlavor.Value then
                        mx_1 = i3(iL, Options.FlavorToUse.Value)
                    else
                        mx_1 = i3(iL, "Any")
                    end
                    if mx_1 then
                        pcall(function()
                            Network:FireServer("BlenderInteract", mE.model, mK)
                        end)
                        task.wait(0.1)
                    end
                end
            elseif Toggles.AutoCollectCone.Value then
                if iP(mK, Options.CollectQuality.Value) then
                    pcall(function()
                        Network:FireServer("CollectBlender", mE.model, mK)
                    end)
                    task.wait(0.1)
                end
            end
        end
    end
end
iC = function()
    local cf, cg
    local function ch(ci)
        if ci then
            for i, child in ipairs(ci:GetChildren()) do
                local mO = child:IsA("Tool") and CollectionService:HasTag(child, iG)
                if mO then
                    local mO_1 = tonumber(child:GetAttribute("Value")) or 0
                    local mP = not cg
                    local m_ = if mP then 1 else 0
                    local mY = 3794 * m_ + 726 * (1 - m_)
                    local mZ = 1944 * m_ + 3182 * (1 - m_)
                    if not ((mY * 3521 + mZ * 328 + mY * mZ) % 16777213 == 4594629) then
                        mP = mO_1 > cg
                    end
                    if mP then
                        cf = child
                        cg = mO_1
                    end
                end
            end
        end
    end
    ch(LocalPlayer.Character)
    ch(LocalPlayer:FindFirstChildOfClass("Backpack"))
    return cf
end
i8 = fn305
iD = function()
    local Value = Options.ServeMode.Value
    for i, v in ipairs(i7()) do
        local nn = v
        for i, v in ipairs(nn.slots) do
            local nt = v
            local nc = Library.Unloaded or not Toggles.AutoServe.Value
            local nc_1
            if nc then
                return
            end
            if not nt:FindFirstChild("Cone") then
                if Value == "Fill All Slots (Highest Value)" then
                    nc_1 = iC()
                    local Character = LocalPlayer.Character
                    local ne = Character and Character:FindFirstChildOfClass("Humanoid")
                    if nc_1 and ne and nc_1.Parent ~= Character then
                        ne:EquipTool(nc_1)
                    end
                elseif Toggles.AutoEquipCone.Value then
                    nc_1 = i3(iG, "Any")
                else
                    nc_1 = i8()
                end
                if not nc_1 then
                    return
                end
                pcall(function()
                    Network:FireServer("ServeCone", nn.model, nt)
                end)
                local wait = task.wait
                local nd_2 = Options.ServeDelay.Value or 0.2
                wait(nd_2)
                if Value == "One Per Table" then
                    break
                end
            end
        end
    end
end
iE = {}
iz = function()
    local ny = iK()
    local nx = Options.BuyCurrency.Value == "Gem" and "gem" or "cash"
    local nz_1 = ja[Options.BuyMaxTier.Value] or #it
    local nz_2 = next(iE) ~= nil
    local Value = Toggles.BuyOnlyInStock.Value
    local floor = math.floor
    local nC_3
    local nD = Options.BuyPerFlavor.Value or 1
    local nE = floor(nD)
    local nC_1 = Options.BuyDelay.Value or 0.6
    for i, v in ipairs(iJ) do
        local nN = v
        local nC_2 = Library.Unloaded
        local nQ = if nC_2 then 1 else 0
        local nO = 2124 * nQ + 2477 * (1 - nQ)
        local nP = 1962 * nQ + 401 * (1 - nQ)
        if not ((nO * 1399 + nP * 608 + nO * nP) % 16777213 == 8331660) then
            nC_2 = not Toggles.AutoBuyFlavors.Value
        end
        if nC_2 then
            return
        end
        if nz_2 then
            nC_3 = iE[nN] == true
        else
            local nF_1 = iF[nN]
            local nQ_1 = if nF_1 then 1 else 0
            local nO_1 = 4076 * nQ_1 + 1271 * (1 - nQ_1)
            local nP_1 = 1261 * nQ_1 + 986 * (1 - nQ_1)
            if not ((nO_1 * 2195 + nP_1 * 580 + nO_1 * nP_1) % 16777213 == 14818036) then
                nF_1 = "Common"
            end
            nC_3 = (ja[nF_1] or 99) <= nz_1
        end
        local nF_2 = ny[nN]
        local nG_2 = nC_3 and nF_2
        if nG_2 then
            local nC_4 = not Value
            local nQ_2 = if nC_4 then 1 else 0
            local nO_2 = 2655 * nQ_2 + 2131 * (1 - nQ_2)
            local nP_2 = 1335 * nQ_2 + 3127 * (1 - nQ_2)
            if not ((nO_2 * 4044 + nP_2 * 2378 + nO_2 * nP_2) % 16777213 == 678662) then
                nC_4 = nF_2.remaining > 0
            end
            nG_2 = nC_4
        end
        if nG_2 then
            local nC_5 = nF_2[nx]
            local nF_3 = nC_5 and i2(nx) >= nC_5
            if nF_3 then
                local nW = 1
                while nW <= nE do
                    if Library.Unloaded or not Toggles.AutoBuyFlavors.Value then
                        return
                    end
                    if i2(nx) < nC_5 then
                        break
                    end
                    pcall(function()
                        Network:FireServer("BuyShopItem", "Flavors", nN, nx)
                    end)
                    task.wait(nC_1)
                    nW += 1
                end
            end
        end
    end
end
iM = {}
iH = function()
    local nZ = iS()
    local n_ = ja[Options.BuyPlantsMaxTier.Value] or #it
    local n__1 = next(iM) ~= nil
    local Value = Toggles.BuyPlantsOnlyInStock.Value
    local floor = math.floor
    local n2_3
    local n3 = Options.BuyPlantsPerPlant.Value or 1
    local n4 = floor(n3)
    local n2_1 = Options.BuyPlantsDelay.Value or 0.6
    for i, v in ipairs(iA) do
        local od = v
        if Library.Unloaded or not Toggles.AutoBuyPlants.Value then
            return
        end
        if n__1 then
            n2_3 = iM[od] == true
        else
            n2_3 = (ja[iw[od] or "Common"] or 99) <= n_
        end
        local n5_2 = nZ[od]
        local n6_2 = n2_3 and n5_2
        if n6_2 then
            n6_2 = not Value or n5_2.remaining > 0
        end
        if n6_2 then
            local cash = n5_2.cash
            local n5_3 = cash and i2("cash") >= cash
            if n5_3 then
                local og = 1
                while og <= n4 do
                    if Library.Unloaded or not Toggles.AutoBuyPlants.Value then
                        return
                    end
                    local om = if i2("cash") < cash then 1 else 0
                    if om == 1 then
                        break
                    end
                    pcall(function()
                        Network:FireServer("BuyPlant", od)
                    end)
                    task.wait(n2_1)
                    og += 1
                end
            end
        end
    end
end
i_ = {}
iV = fn701
is = fn121
iY = function()
    local oE = next(i_) ~= nil
    local Value = Toggles.HarvestOnlyRipe.Value
    local oG = Options.HarvestDelay.Value or 0.15
    for i, v in ipairs(iV()) do
        if Library.Unloaded or not Toggles.AutoHarvestPlants.Value then
            return
        end
        local oG_2 = v:GetAttribute("PlaceableId") or v.Name
        local oI = iu[oG_2]
        if not oE or oI and i_[oI] == true then
            local Fruits = v:FindFirstChild("_Fruits")
            if Fruits then
                for i, child in ipairs(Fruits:GetChildren()) do
                    if Library.Unloaded or not Toggles.AutoHarvestPlants.Value then
                        return
                    end
                    if child:IsA("BasePart") then
                        local FruitHarvest = child:FindFirstChild("FruitHarvest")
                        local oG_6 = FruitHarvest and FruitHarvest:IsA("ProximityPrompt")
                        if oG_6 then
                            local oI_1 = not Value or is(v, child)
                            oG_6 = oI_1
                        end
                        if oG_6 then
                            pcall(function()
                                fireproximityprompt(FruitHarvest)
                            end)
                            task.wait(oG)
                        end
                    end
                end
            end
        end
    end
end
iN = fn732
jd = fn744
iR = function()
    local pn = iN()
    if not pn then
        return
    end
    local po = {}
    local pp = Data:Get({ "Plot", "Cells" }) or po
    local pp_1 = PlotSystem.GetNextPrice(PlotGrid.CountUnlocked(pp))
    local po_2 = tonumber(Data:Get("Cash")) or 0
    local po_3 = tonumber(Options.LandReserve.Value) or 0
    local pr = not pp_1
    if not pr then
        pr = po_2 - pp_1 < po_3
    end
    if pr then
        return
    end
    for i, descendant in ipairs(pn:GetDescendants()) do
        local pn_1 = descendant:IsA("ProximityPrompt") and descendant.Enabled and descendant.ActionText == "Buy Land"
        if pn_1 then
            local pm = jd(descendant)
            if pm then
                pcall(function()
                    Network:FireServer("BuyExpansion", pm.Name)
                end)
                return
            end
        end
    end
end
je = function()
    local pA = Data:Get("Quests")
    if type(pA) ~= "table" then
        return
    end
    local pB = {}
    local pC = pA.active
    local pH = if pC then 1 else 0
    local pF = 2577 * pH + 824 * (1 - pH)
    local pG = 2248 * pH + 3387 * (1 - pH)
    if not ((pF * 238 + pG * 625 + pF * pG) % 16777213 == 7811422) then
        pC = pB
    end
    for i, v in ipairs(pC) do
        local pN = v
        if Library.Unloaded or not Toggles.AutoClaimQuests.Value then
            return
        end
        if pN.complete == true and pN.claimed ~= true then
            pcall(function()
                Network:FireServer("QuestClaim", pN.id)
            end)
            task.wait(0.2)
        end
    end
    if Toggles.ClaimTierRewards.Value then
        local pB_3 = pA.tiersUnlocked or 0
        local pA_1 = pA.tierClaimed or {}
        for i = 1, 4 do
            local pR = i
            if Library.Unloaded or not Toggles.AutoClaimQuests.Value then
                return
            end
            local pB_6 = pR <= pB_3 and pA_1[tostring(pR)] ~= true
            if pB_6 then
                pcall(function()
                    Network:FireServer("QuestClaimTier", pR)
                end)
                task.wait(0.2)
            end
        end
    end
end
Library.SetNotifySide = fn229
local Window = Library:CreateWindow({
    Title = "Snowcone Stand",
    Footer = "Ouroboros Hub",
    Size = UDim2.fromOffset(900, 640),
    ShowCustomCursor = false
})
Library.ShowCustomCursor = false
local jm = { Main = Window:AddTab("Main", "cup-soda"), Settings = Window:AddTab("Settings", "settings") }
for k, v in jm do
    fn132(v)
end
local AutoBlendGroup = jm.Main:AddLeftGroupbox("Auto Blend", "blend")
AutoBlendGroup:AddToggle("AutoBlend", { Text = "Auto Blend", Default = false })
AutoBlendGroup:AddToggle("AutoStartBlend", { Text = "Auto Start Blends", Default = true })
AutoBlendGroup:AddToggle("AutoCollectCone", { Text = "Auto Collect Cones", Default = true })
AutoBlendGroup:AddToggle("AutoEquipFlavor", { Text = "Auto Equip Flavor Tool", Default = true })
AutoBlendGroup:AddDropdown("CollectQuality", {
    Text = "Collect At",
    Values = { "Perfect", "Chunky", "Melted", "Any" },
    Default = "Perfect",
    Multi = false
})
local jh_6 = { "Any" }
for i, v in ipairs(iJ) do
    jh_6[#jh_6 + 1] = v
end
AutoPlaceConeGroup, jp_1, AutoHarvestPlantsGroup, AutoClaimQuestsGroup, js_1, connection = nil, nil, nil, nil, nil, nil
if jp_1 or not AutoClaimQuestsGroup or not AutoClaimQuestsGroup and jp_1 or AutoHarvestPlantsGroup and not AutoPlaceConeGroup and (jp_1 and not AutoHarvestPlantsGroup) or not (jp_1 or not AutoClaimQuestsGroup or not AutoClaimQuestsGroup and jp_1 or AutoHarvestPlantsGroup and not AutoPlaceConeGroup and (jp_1 and not AutoHarvestPlantsGroup)) then
    AutoBlendGroup:AddDropdown("FlavorToUse", { Text = "Flavor To Blend", Values = jh_6, Default = "Any", Multi = false })
    AutoBlendGroup:AddSlider("BlendDelay", { Text = "Loop Delay", Default = 0.2, Min = 0.1, Max = 2, Rounding = 2 })
    AutoPlaceConeGroup = jm.Main:AddLeftGroupbox("Auto Place Cone", "ice-cream-cone")
else
    AutoPlaceConeGroup:AddDropdown("FlavorToUse", { Values = AutoBlendGroup, Default = "Any", Text = "Flavor To Blend", Multi = false })
    AutoPlaceConeGroup:AddSlider("BlendDelay", { Default = 0.2, Rounding = 2, Max = 2, Min = 0.1, Text = "Loop Delay" })
    jm = jh_6.Main:AddLeftGroupbox("Auto Place Cone", "ice-cream-cone")
end
AutoPlaceConeGroup:AddToggle("AutoServe", { Text = "Auto Place Cone", Default = false })
AutoPlaceConeGroup:AddToggle("AutoEquipCone", { Text = "Auto Equip Cone", Default = true })
AutoPlaceConeGroup:AddDropdown("ServeMode", {
    Text = "Fill Mode",
    Values = { "Fill All Slots", "Fill All Slots (Highest Value)", "One Per Table" },
    Default = "Fill All Slots (Highest Value)",
    Multi = false
})
AutoPlaceConeGroup:AddSlider("ServeDelay", { Text = "Serve Delay", Default = 0.2, Min = 0.05, Max = 2, Rounding = 2 })
local AutoBuyFlavorsGroup = jm.Main:AddRightGroupbox("Auto Buy Flavors", "shopping-cart")
AutoBuyFlavorsGroup:AddToggle("AutoBuyFlavors", { Text = "Auto Buy Flavors", Default = false })
AutoBuyFlavorsGroup:AddToggle("BuyOnlyInStock", { Text = "Only Buy If In Stock", Default = true })
AutoBuyFlavorsGroup:AddDropdown("BuyCurrency", { Text = "Currency", Values = { "Cash", "Gem" }, Default = "Cash", Multi = false })
AutoBuyFlavorsGroup:AddDropdown("BuyMaxTier", { Text = "Max Tier", Values = it, Default = "Uncommon", Multi = false })
AutoBuyFlavorsGroup:AddDropdown("BuyFlavors", {
    Text = "Specific Flavors (empty = by tier)",
    Values = iJ,
    Default = {},
    Multi = true,
    Callback = onBuyFlavors
})
AutoBuyFlavorsGroup:AddSlider("BuyPerFlavor", { Text = "Buys Per Flavor", Default = 1, Min = 1, Max = 20, Rounding = 0 })
AutoBuyFlavorsGroup:AddSlider("BuyDelay", { Text = "Buy Delay", Default = 0.6, Min = 0.1, Max = 3, Rounding = 2 })
local AutoBuyPlantsGroup = jm.Main:AddRightGroupbox("Auto Buy Plants", "sprout")
if (js_1 and AutoPlaceConeGroup or (not AutoHarvestPlantsGroup or not AutoPlaceConeGroup)) and ((AutoBuyPlantsGroup or AutoPlaceConeGroup) and (not AutoBuyPlantsGroup or AutoPlaceConeGroup)) or (AutoPlaceConeGroup and not connection or connection and js_1) and (not AutoBuyPlantsGroup and not AutoHarvestPlantsGroup or not AutoBuyFlavorsGroup and AutoBuyFlavorsGroup) or not ((js_1 and AutoPlaceConeGroup or (not AutoHarvestPlantsGroup or not AutoPlaceConeGroup)) and ((AutoBuyPlantsGroup or AutoPlaceConeGroup) and (not AutoBuyPlantsGroup or AutoPlaceConeGroup)) or (AutoPlaceConeGroup and not connection or connection and js_1) and (not AutoBuyPlantsGroup and not AutoHarvestPlantsGroup or not AutoBuyFlavorsGroup and AutoBuyFlavorsGroup)) then
    AutoBuyPlantsGroup:AddToggle("AutoBuyPlants", { Text = "Auto Buy Plants", Default = false })
    AutoBuyPlantsGroup:AddToggle("BuyPlantsOnlyInStock", { Text = "Only Buy If In Stock", Default = true })
    AutoBuyPlantsGroup:AddDropdown("BuyPlantsMaxTier", { Text = "Max Tier", Values = it, Default = "Common", Multi = false })
    AutoBuyPlantsGroup:AddDropdown("BuyPlants", {
        Text = "Specific Plants (empty = by tier)",
        Values = iA,
        Default = {},
        Multi = true,
        Callback = onBuyPlants
    })
    AutoBuyPlantsGroup:AddSlider("BuyPlantsPerPlant", { Text = "Buys Per Plant", Default = 1, Min = 1, Max = 10, Rounding = 0 })
    AutoBuyPlantsGroup:AddSlider("BuyPlantsDelay", { Text = "Buy Delay", Default = 0.6, Min = 0.1, Max = 3, Rounding = 2 })
    AutoHarvestPlantsGroup = jm.Main:AddLeftGroupbox("Auto Harvest Plants", "sprout")
else
    AutoHarvestPlantsGroup:AddToggle("AutoBuyPlants", { Text = "Auto Buy Plants", Default = false })
    AutoHarvestPlantsGroup:AddToggle("BuyPlantsOnlyInStock", { Text = "Only Buy If In Stock", Default = true })
    AutoHarvestPlantsGroup:AddDropdown("BuyPlantsMaxTier", { Default = "Common", Text = "Max Tier", Values = AutoBuyPlantsGroup, Multi = false })
    AutoHarvestPlantsGroup:AddDropdown("BuyPlants", {
        Text = "Specific Plants (empty = by tier)",
        Callback = onBuyPlants,
        Values = it,
        Default = {},
        Multi = true
    })
    AutoHarvestPlantsGroup:AddSlider("BuyPlantsPerPlant", { Text = "Buys Per Plant", Default = 1, Min = 1, Max = 10, Rounding = 0 })
    AutoHarvestPlantsGroup:AddSlider("BuyPlantsDelay", { Min = 0.1, Default = 0.6, Text = "Buy Delay", Max = 3, Rounding = 2 })
    jm = iA.Main:AddLeftGroupbox("Auto Harvest Plants", "sprout")
end
AutoHarvestPlantsGroup:AddToggle("AutoHarvestPlants", { Text = "Auto Harvest Plants", Default = false })
AutoHarvestPlantsGroup:AddToggle("HarvestOnlyRipe", { Text = "Only Harvest Ripe", Default = true })
AutoHarvestPlantsGroup:AddDropdown("HarvestPlants", {
    Text = "Specific Plants (empty = all)",
    Values = jg_1,
    Default = {},
    Multi = true,
    Callback = onHarvestPlants
})
AutoHarvestPlantsGroup:AddSlider("HarvestDelay", { Text = "Harvest Delay", Default = 0.15, Min = 0.05, Max = 2, Rounding = 2 })
local AutoBuyLandGroup = jm.Main:AddRightGroupbox("Auto Buy Land", "map")
if (AutoPlaceConeGroup or not js_1 or (not AutoHarvestPlantsGroup or 22)) and (AutoPlaceConeGroup and 22 or not AutoHarvestPlantsGroup and not AutoHarvestPlantsGroup) and ((not AutoHarvestPlantsGroup and 22 or (not AutoPlaceConeGroup or false)) and ((not js_1 or AutoHarvestPlantsGroup) and (not AutoPlaceConeGroup or AutoHarvestPlantsGroup))) and ((js_1 or js_1) and false and ((not js_1 or not js_1) and (js_1 and js_1)) or (AutoHarvestPlantsGroup and AutoPlaceConeGroup and (js_1 and not AutoPlaceConeGroup) or (js_1 or AutoPlaceConeGroup or not AutoPlaceConeGroup))) and not ((AutoPlaceConeGroup or not js_1 or (not AutoHarvestPlantsGroup or 22)) and (AutoPlaceConeGroup and 22 or not AutoHarvestPlantsGroup and not AutoHarvestPlantsGroup) and ((not AutoHarvestPlantsGroup and 22 or (not AutoPlaceConeGroup or false)) and ((not js_1 or AutoHarvestPlantsGroup) and (not AutoPlaceConeGroup or AutoHarvestPlantsGroup))) and ((js_1 or js_1) and false and ((not js_1 or not js_1) and (js_1 and js_1)) or (AutoHarvestPlantsGroup and AutoPlaceConeGroup and (js_1 and not AutoPlaceConeGroup) or (js_1 or AutoPlaceConeGroup or not AutoPlaceConeGroup)))) then
    AutoClaimQuestsGroup:AddToggle("AutoBuyLand", { Text = "Auto Buy Land", Default = false })
    AutoClaimQuestsGroup:AddInput("LandReserve", { Finished = true, Default = "0", Text = "Keep Cash Reserve", Numeric = true })
    jm = AutoBuyLandGroup.Main:AddRightGroupbox("Auto Claim Quests", "scroll-text")
else
    AutoBuyLandGroup:AddToggle("AutoBuyLand", { Text = "Auto Buy Land", Default = false })
    AutoBuyLandGroup:AddInput("LandReserve", { Text = "Keep Cash Reserve", Default = "0", Numeric = true, Finished = true })
    AutoClaimQuestsGroup = jm.Main:AddRightGroupbox("Auto Claim Quests", "scroll-text")
end
AutoClaimQuestsGroup:AddToggle("AutoClaimQuests", { Text = "Auto Claim Quests", Default = false })
AutoClaimQuestsGroup:AddToggle("ClaimTierRewards", { Text = "Also Claim Tier Rewards", Default = true })
local MenuGroup = jm.Settings:AddLeftGroupbox("Menu", "wrench")
MenuGroup:AddLabel("UI Keybind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "UI Keybind" })
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true, Callback = onAntiAfk })
MenuGroup:AddButton("Unload", onUnload)
Library.ToggleKeybind = Options.MenuKeybind
Library:OnUnload(fn223)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Mint")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/SnowconeStand")
SaveManager:BuildConfigSection(jm.Settings)
ThemeManager:ApplyToTab(jm.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
task.spawn(autoBlendLoop)
task.spawn(autoServeLoop)
task.spawn(autoBuyFlavorsLoop)
task.spawn(autoBuyPlantsLoop)
task.spawn(autoHarvestPlantsLoop)
task.spawn(autoBuyLandLoop)
task.spawn(autoClaimQuestsLoop)
Library:Notify("Snowcone Stand loaded")
