local gr
local gN
local gQ
local Toggles
local Options
local gA
local gk
local gG
local MutationsMetadata
local gM
local EnergySourcesMetadata
local gP
local Library
local gS
local DrillsMetadata
local gC
local gg
local Bases
local gj
local gm
local gI
local gp
local gO
local gs
local VirtualUser
local gv
local gy
local gB
local RequestSpin
local onBuyCurrentResults
local GoldenMetadata
local gH
local go
local connection
local function fn43(cV)
    local jT = DrillsMetadata[cV:GetAttribute("DrillId")]
    if not jT then
        return nil
    end
    local jU = jT.OresPerSecond
    local j_ = if jU then 1 else 0
    local jY = 3318 * j_ + 3635 * (1 - j_)
    local jZ = 2272 * j_ + 4026 * (1 - j_)
    if not ((jY * 303 + jZ * 2973 + jY * jZ) % 16777213 == 15298506) then
        jU = 0
    end
    local computeMultiplier = MutationsMetadata.computeMultiplier
    local parseList = MutationsMetadata.parseList
    local jW = cV:GetAttribute("Mutations") or ""
    local jT_2 = jU * computeMultiplier(parseList(jW))
    if cV:GetAttribute("IsGolden") then
        jT_2 = jT_2 * GoldenMetadata.GOLDEN_MULTIPLIER
    end
    return jT_2
end
local function fn46()
    if setclipboard then
        setclipboard(gS)
    elseif toclipboard then
        toclipboard(gS)
    end
    Library:Notify("Copied Discord invite to clipboard")
end
local function fn50(P)
    local hw = DrillsMetadata[P]
    if hw then
        return hw, "Drills"
    end
    local hw_1 = EnergySourcesMetadata[P]
    if hw_1 then
        return hw_1, "Energy Sources"
    end
    return nil, nil
end
local function autoCollectOresLoop()
    while not Library.Unloaded do
        if Toggles.AutoCollectOres.Value then
            gH()
        end
        if Toggles.AutoDepositOres.Value then
            gB()
        end
        local kZ = Options.OreDelay.Value or 1
        task.wait(kZ)
    end
end
local function fn65()
    go("DepositOresPrompt")
end
local function onAntiAfk(eu)
    if eu then
        if not connection then
            connection = gN.Idled:Connect(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new())
            end)
        end
    elseif connection then
        connection:Disconnect()
        connection = nil
    end
end
local function fn88(b1)
    local jh_1
    local jg_1
    jg_1, jh_1 = tostring(b1):gsub("[^%d%.]", ""), tostring(b1):match("[KkMmBbTt]")
    local ji = (tonumber(jg_1))
    local jo = if ji then 1 else 0
    local jm = 3898 * jo + 258 * (1 - jo)
    local jn = 1306 * jo + 1298 * (1 - jo)
    if not ((jm * 2560 + jn * 3746 + jm * jn) % 16777213 == 3184731) then
        ji = 0
    end
    local jg_2 = { K = 1000, M = 1000000, B = 1000000000, T = 1000000000000 }
    local jj = jh_1
    local jk = ji
    if jj then
        jj = jh_1:upper()
    end
    return jk * (jg_2[jj] or 1)
end
local function onOnClientEvent2(av, aw)
    if not av or av.Name ~= gj then
        return
    end
    gI[aw] = nil
end
local function fn90()
    local kn_1
    local kl = gC()
    local km = kl and kl:FindFirstChild("PlacedItems")
    local km_1
    if not km then
        return nil
    end
    kn_1, km_1 = nil, nil
    for i, child in km:GetChildren() do
        local kl_2 = gy(child)
        if kl_2 and (not kn_1 or kl_2 < km_1) then
            kn_1, km_1 = child, kl_2
        end
    end
    return kn_1, km_1 or 0
end
local function fn100()
    local i0 = {}
    local i1 = gC()
    local i2 = i1 and i1:FindFirstChild("PlacedItems")
    if i2 then
        for i, child in i2:GetChildren() do
            i0[child.Name] = true
        end
    end
    return i0
end
local function fn120(c9, da)
    local kc = gC()
    local kd = kc and kc:FindFirstChild("Grid")
    if not kd then
        return nil
    end
    for i, descendant in kd:GetDescendants() do
        if descendant:GetAttribute("Coord") == c9 then
            return descendant:FindFirstChild(da)
        end
    end
    return nil
end
local function fn126()
    local j1_1
    local j0_1
    j1_1, j0_1 = nil, nil
    for k, v in gm() do
        local j2_1 = v:GetAttribute("OresPerSecond") or 0
        local j3 = not j1_1
        if not j3 then
            j3 = j2_1 > j0_1
        end
        if j3 then
            j1_1, j0_1 = v, j2_1
        end
    end
    return j1_1, j0_1 or 0
end
local function fn155()
    pcall(function()
        RequestSpin:InvokeServer()
    end)
end
local function onOnClientEvent(ah, ai, aj)
    if not ah or ah.Name ~= gj then
        return
    end
    local hP_1 = type(ai) ~= "table" or type(aj) ~= "table"
    if hP_1 then
        return
    end
    table.clear(gI)
    for k, v in aj do
        local hP_2 = ai[k]
        local hQ = hP_2 and select(1, gg(hP_2))
        if hQ then
            local Rarity = hQ.Rarity
            local hS = hQ.Price or 0
            local hT = select(2, gg(hP_2))
            local hU = hQ.Name or tostring(hP_2)
            gI[k] = { SpinId = v, ItemId = hP_2, Rarity = Rarity, Price = hS, Type = hT, Name = hU }
        end
    end
end
local function fn168(aB)
    if not gM[aB.Type] then
        return false
    end
    local h3 = tonumber(Options.BuyMaxPrice.Value) or 0
    if h3 > 0 and aB.Price > h3 then
        return false
    end
    local Value = Options.BuyMode.Value
    if Value == "Buy All" then
        return true
    elseif Value == "Minimum Rarity" then
        local h4_1 = gA[aB.Rarity]
        local h5 = gA[Options.BuyMinRarity.Value]
        return h4_1 ~= nil and h5 ~= nil and h4_1 >= h5
    elseif Value == "Specific Rarities" then
        if next(gP) == nil then
            return false
        end
        return gP[aB.Rarity] == true
    else
        return false
    end
end
local function autoReplaceLoop()
    while not Library.Unloaded do
        if Toggles.AutoReplace.Value then
            gv()
        end
        local k7 = Options.ReplaceDelay.Value or 1
        task.wait(k7)
    end
end
local function onPlaceRarities(eo)
    gr = gk(eo)
end
local function fn283()
    local iK_1
    local iJ_1
    local Value = Options.PlaceDrillMode.Value
    iK_1, iJ_1 = nil, nil
    for k, v in gm() do
        local attr = v:GetAttribute("Rarity")
        if Value ~= "Specific Rarities" or gr[attr] then
            local iL_1 = v:GetAttribute("OresPerSecond") or 0
            if not iK_1 then
                iK_1, iJ_1 = v, iL_1
            elseif Value == "Worst (Ores/s)" then
                if iL_1 < iJ_1 then
                    iK_1, iJ_1 = v, iL_1
                end
            elseif iL_1 > iJ_1 then
                iK_1, iJ_1 = v, iL_1
            end
        end
    end
    return iK_1
end
local function fn287(ea)
    ea:AddLeftGroupbox("Discord"):AddButton({ Text = "Join Discord For Dupe", Func = gO })
end
local function fn290(aa)
    local hH = {}
    for k, v in aa do
        if v then
            hH[k] = true
        end
    end
    return hH
end
local function onBuyRarities(eg)
    gP = gk(eg)
end
local function fn306()
    local replicationFolder = gN:FindFirstChild("_replicationFolder")
    local hC = replicationFolder and replicationFolder:FindFirstChild("Currencies")
    local hB_1 = hC
    if hC then
        hC = hB_1:GetAttribute("Cash")
    end
    return hC or 0
end
local function fn351()
    Library.ScreenGui.Parent = gN:WaitForChild("PlayerGui")
end
local function autoPlaceLoop()
    while not Library.Unloaded do
        if Toggles.AutoPlace.Value then
            gs()
        end
        local k4 = Options.PlaceDelay.Value or 1
        task.wait(k4)
    end
end
local function autoRollLoop()
    while not Library.Unloaded do
        if Toggles.AutoRoll.Value then
            gQ()
        end
        local kT = Options.RollDelay.Value or 5
        task.wait(kT)
    end
end
local function autoBuyLoop()
    while not Library.Unloaded do
        if Toggles.AutoBuy.Value then
            onBuyCurrentResults()
        end
        local kW = Options.BuyDelay.Value or 0.5
        task.wait(kW)
    end
end
local function autoBuyTilesLoop()
    while not Library.Unloaded do
        if Toggles.AutoBuyTiles.Value then
            gp()
        end
        local la = Options.TileDelay.Value or 1
        task.wait(la)
    end
end
local function fn408(bW)
    local Character = gN.Character
    local je = Character and Character:FindFirstChild("HumanoidRootPart")
    if not je then
        return false
    end
    if (je.Position - bW).Magnitude > 10 then
        je.CFrame = CFrame.new(bW + Vector3.new(0, 4, 0))
        task.wait(0.1)
    end
    return true
end
local function fn416()
    go("CollectOresPrompt")
end
local function fn443()
    return Bases:FindFirstChild(gj)
end
local function onBuyTypes(ej)
    gM = gk(ej)
end
local function onUnload()
    Library:Unload()
end
local function fn478()
    local Character = gN.Character
    local iV = Character and Character:FindFirstChildWhichIsA("Humanoid")
    if not iV then
        return false
    end
    local iV_1 = gG()
    if not iV_1 then
        return false
    end
    if iV_1.Parent ~= Character then
        iV:EquipTool(iV_1)
        task.wait(0.1)
    end
    return true
end
local function fn501()
    if connection then
        connection:Disconnect()
        connection = nil
    end
    print("Make a Drill Farm unloaded")
end
local function fn510()
    local it = {}
    for k, v in { gN.Character, gN:FindFirstChild("Backpack") } do
        if v then
            for i, child in v:GetChildren() do
                local iu = child:IsA("Tool") and child:GetAttribute("Kind") == "Drill"
                if iu then
                    it[#it + 1] = child
                end
            end
        end
    end
    return it
end
Toggles = nil
gg = nil
onBuyCurrentResults = nil
gj = nil
gk = nil
GoldenMetadata = nil
gm = nil
go = nil
gp = nil
MutationsMetadata = nil
gr = nil
gs = nil
EnergySourcesMetadata = nil
gv = nil
Library = nil
gy = nil
DrillsMetadata = nil
gA = nil
gB = nil
gC = nil
Bases = nil
gG = nil
gH = nil
gI = nil
connection = nil
gM = nil
gN = nil
gO = nil
gP = nil
gQ = nil
VirtualUser = nil
gS = nil
Options = nil
RequestSpin = nil
local gd, gf, gh, gn, gu, gx, gD, RemoveDrill, gJ, gL, gT, BuyResult, gV
local Services, gZ_3
local g0_1
VirtualUser, gN = nil, nil
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
VirtualUser = game:GetService("VirtualUser")
gN = Players.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return gN:WaitForChild("PlayerGui")
    end
end
DrillsMetadata, EnergySourcesMetadata, MutationsMetadata, GoldenMetadata, Services, RequestSpin, BuyResult, RemoveDrill, g0_1, Library, Toggles, Options, gS, gA, gO = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Source = ReplicatedStorage:WaitForChild("Source")
local Metadatas = Source:WaitForChild("Metadatas")
DrillsMetadata = require(Metadatas:WaitForChild("DrillsMetadata"))
EnergySourcesMetadata = require(Metadatas:WaitForChild("EnergySourcesMetadata"))
MutationsMetadata = require(Metadatas:WaitForChild("MutationsMetadata"))
GoldenMetadata = require(Metadatas:WaitForChild("GoldenMetadata"))
if (not Services or Toggles) and (not g0_1 and Options) and (g0_1 and RequestSpin or (Services or Options)) and (not Services or not Options or (not Services or not Toggles) or Toggles and Options and (not Toggles and Options)) or not ((not Services or Toggles) and (not g0_1 and Options) and (g0_1 and RequestSpin or (Services or Options)) and (not Services or not Options or (not Services or not Toggles) or Toggles and Options and (not Toggles and Options))) then
    Services = Source:WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.5.1"):WaitForChild("knit"):WaitForChild("Services")
else
    Services:WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.5.1"):WaitForChild("knit"):WaitForChild("Services")
end
local SpinDrillService = Services:WaitForChild("SpinDrillService")
RequestSpin = SpinDrillService:WaitForChild("RF"):WaitForChild("RequestSpin")
BuyResult = SpinDrillService:WaitForChild("RF"):WaitForChild("BuyResult")
local OnSpinStartedSignal = SpinDrillService:WaitForChild("RE"):WaitForChild("OnSpinStartedSignal")
local OnResultClearedSignal = SpinDrillService:WaitForChild("RE"):WaitForChild("OnResultClearedSignal")
local AutoReplaceGroup
if ((not DrillsMetadata or gO) and (not Metadatas and MutationsMetadata) and (gO and DrillsMetadata or (not DrillsMetadata or not SpinDrillService)) or (DrillsMetadata or DrillsMetadata or not MutationsMetadata and not DrillsMetadata or (DrillsMetadata and not MutationsMetadata or (not Metadatas or gO)))) and ((gO or gO or DrillsMetadata and not SpinDrillService) and (not DrillsMetadata and not MutationsMetadata and (DrillsMetadata or not MutationsMetadata)) or (gO or MutationsMetadata) and (gO and not BuyResult) and (not MutationsMetadata and DrillsMetadata or (not DrillsMetadata or SpinDrillService))) or not (((not DrillsMetadata or gO) and (not Metadatas and MutationsMetadata) and (gO and DrillsMetadata or (not DrillsMetadata or not SpinDrillService)) or (DrillsMetadata or DrillsMetadata or not MutationsMetadata and not DrillsMetadata or (DrillsMetadata and not MutationsMetadata or (not Metadatas or gO)))) and ((gO or gO or DrillsMetadata and not SpinDrillService) and (not DrillsMetadata and not MutationsMetadata and (DrillsMetadata or not MutationsMetadata)) or (gO or MutationsMetadata) and (gO and not BuyResult) and (not MutationsMetadata and DrillsMetadata or (not DrillsMetadata or SpinDrillService)))) then
    local PlacementService = Services:WaitForChild("PlacementService")
    RemoveDrill = PlacementService:WaitForChild("RF"):WaitForChild("RemoveDrill")
else
    local PlacementService = RemoveDrill:WaitForChild("PlacementService")
    PlacementService:WaitForChild("RF"):WaitForChild("RemoveDrill")
end
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
pcall(fn351)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
gS = "https://discord.gg/ehKVq7pf7v"
gO = fn46
local g9 = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythical", "Limited" }
gA = {}
for i, v in ipairs(g9) do
    gA[v] = i
end
gj, gP, gM, gI, Bases, gr, gh, gZ_3, gg, gL, gk, gf, onBuyCurrentResults, gQ, gC, go, gH, gB, gm, gG, gJ, gd, gu, gV, gs, gp, gy, gT, gn, gD, gx, gv = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local g0_2 = { "Drills", "Energy Sources" }
if ((gj and gI or (gI or gI)) and (not gC and not gC or gj and gC) and (gj and gI and (not gI or not gj) and (gj or gC or (not gI or not gI))) or (not gC and gI and (not gI or not gC) or not gI and not gj and (gC or not gj) or (not gI and not gj or not gI and not gI or not gC and gj and (not gC and gC)))) and not ((gj and gI or (gI or gI)) and (not gC and not gC or gj and gC) and (gj and gI and (not gI or not gj) and (gj or gC or (not gI or not gI))) or (not gC and gI and (not gI or not gC) or not gI and not gj and (gC or not gj) or (not gI and not gj or not gI and not gI or not gC and gj and (not gC and gC)))) then
    gL = "Player_" .. gj.UserId
    gk = fn50
    gg = fn306
    gP = fn290
    gN = {}
else
    gj = "Player_" .. gN.UserId
    gg = fn50
    gL = fn306
    gk = fn290
    gP = {}
end
gM = { Drills = true, ["Energy Sources"] = true }
gI = {}
OnSpinStartedSignal.OnClientEvent:Connect(onOnClientEvent)
OnResultClearedSignal.OnClientEvent:Connect(onOnClientEvent2)
gf = fn168
onBuyCurrentResults = function()
    local ia_1
    local h8 = tonumber(Options.BuyReserve.Value) or 0
    local h8_2
    for k, v in gI do
        local ij = v
        if Library.Unloaded or not Toggles.AutoBuy.Value then
            return
        end
        if gf(ij) then
            if not (gL() - ij.Price < h8) then
                h8_2, ia_1 = pcall(function()
                    return BuyResult:InvokeServer(ij.SpinId)
                end)
                if h8_2 and ia_1 then
                    gI[k] = nil
                    if Toggles.BuyNotify.Value then
                        Library:Notify(("Bought %s (%s)"):format(ij.Name, tostring(ij.Rarity)))
                    end
                    task.wait(0.15)
                end
            end
        end
    end
end
gQ = fn155
Bases = workspace:WaitForChild("Map"):WaitForChild("Bases")
gC = fn443
go = function(a9)
    local ik = gC()
    if not ik then
        return
    end
    for i, descendant in ik:GetDescendants() do
        local is = descendant
        local ik_1 = is.Name == a9 and is:IsA("ProximityPrompt")
        if ik_1 then
            is.Enabled = true
            pcall(function()
                fireproximityprompt(is)
            end)
            return
        end
    end
end
if gg and not gV and (not gD and not gg) or (gZ_3 or gg) and (gg or not gg) or not (gg and not gV and (not gD and not gg) or (gZ_3 or gg) and (gg or not gg)) then
    gH = fn416
    gB = fn65
    gr = {}
else
    gr = fn416
    gH = fn65
    gB = {}
end
gm = fn510
gG = fn283
gJ = fn478
gh = { "Cell1", "Cell2", "Cell3", "Cell4" }
gd = fn100
gu = fn408
gV = fn88
gs = function()
    local jq = gC()
    local jr = jq and jq:FindFirstChild("Grid")
    if not jr then
        return
    end
    if not gJ() then
        return
    end
    local jr_1 = gd()
    for i, descendant in jr:GetDescendants() do
        if Library.Unloaded or not Toggles.AutoPlace.Value then
            return
        end
        local attr = descendant:GetAttribute("Coord")
        local js = attr and descendant:GetAttribute("Locked") ~= true
        if js then
            for k, v in gh do
                local js_1 = descendant:FindFirstChild(v)
                local jt = js_1 and js_1:FindFirstChild("PlacePromptAttach")
                local ju = jt
                if jt then
                    jt = ju:FindFirstChild("PlacePrompt")
                end
                local jp = jt
                local jt_1 = jp and jp:IsA("ProximityPrompt") and jp.Enabled and not jr_1[attr .. "_" .. v]
                if jt_1 then
                    if gu(js_1.Position) then
                        pcall(function()
                            fireproximityprompt(jp)
                        end)
                        task.wait(0.15)
                        jr_1 = gd()
                    end
                end
            end
        end
    end
end
gp = function()
    local jJ = gC()
    local jK = jJ and jJ:FindFirstChild("Grid")
    if not jK then
        return
    end
    local jK_1 = tonumber(Options.TileReserve.Value) or 0
    for i, descendant in jK:GetDescendants() do
        if Library.Unloaded or not Toggles.AutoBuyTiles.Value then
            return
        end
        local jJ_3 = descendant:GetAttribute("Coord") and descendant:GetAttribute("Locked") == true and descendant:GetAttribute("OwnerUserId") == gN.UserId
        if jJ_3 then
            local UnlockPromptAttach = descendant:FindFirstChild("UnlockPromptAttach")
            local jK_2 = UnlockPromptAttach and UnlockPromptAttach:FindFirstChild("UnlockPrompt")
            local jI = jK_2
            local jJ_5 = jI and jI:IsA("ProximityPrompt")
            if jJ_5 then
                local jJ_6 = gV(jI.ObjectText)
                if gL() - jJ_6 >= jK_1 then
                    if gu(descendant:GetPivot().Position) then
                        jI.Enabled = true
                        pcall(function()
                            fireproximityprompt(jI)
                        end)
                        task.wait(0.2)
                    end
                end
            end
        end
    end
end
gy = fn43
gT = fn126
gn = fn120
gD = fn90
gx = function(dx, dy)
    local Character = gN.Character
    local kD = Character and Character:FindFirstChildWhichIsA("Humanoid")
    local PlacePromptAttach = dy:FindFirstChild("PlacePromptAttach")
    local kF = PlacePromptAttach and PlacePromptAttach:FindFirstChild("PlacePrompt")
    local kD_2 = not kD
    local kB = kF
    if not kD_2 then
        kD_2 = not kB
    end
    if not kD_2 then
        kD_2 = not kB:IsA("ProximityPrompt")
    end
    if kD_2 then
        return false
    elseif not gu(dy.Position) then
        return false
    else
        if dx.Parent ~= Character then
            kD:EquipTool(dx)
            task.wait(0.1)
        end
        kB.Enabled = true
        pcall(function()
            fireproximityprompt(kB)
        end)
        return true
    end
end
gv = function()
    local kK_1
    local kL_1, kL_2
    local kI = tonumber(Options.ReplaceMinGain.Value) or 0
    local kI_2, kI_3
    local kP = false
    repeat
        local kH
        if not Library.Unloaded and Toggles.AutoReplace.Value then
            kK_1, kI_2 = gT()
            if not kK_1 then
                return
            end
            kH, kL_1 = gD()
            if not kH or kI_2 - kL_1 < kI or kI_2 <= kL_1 then
                return
            end
            kL_2, kI_3 = kH.Name:match("^(.+)_(Cell%d+)$")
            local kM_1 = kL_2 and gn(kL_2, kI_3)
            if not kM_1 then
                return
            end
            local Name = DrillsMetadata[kH:GetAttribute("DrillId")].Name
            local kM_2 = pcall(function()
                return RemoveDrill:InvokeServer(kH)
            end)
            if not kM_2 then
                return
            end
            task.wait(0.2)
            gx(kK_1, kM_1)
            if Toggles.ReplaceNotify.Value then
                Library:Notify(("Replaced %s with %s"):format(Name, kK_1.Name))
            end
            task.wait(0.3)
        else
            kP = true
        end
    until kP
end
local Window = Library:CreateWindow({
    Title = "Make a Drill Farm",
    Footer = "Ouroboros Hub",
    Size = UDim2.fromOffset(900, 640),
    ShowCustomCursor = false
})
Library.ShowCustomCursor = false
local g1_1 = { Main = Window:AddTab("Main", "drill"), Settings = Window:AddTab("Settings", "settings") }
for k, v in g1_1 do
    fn287(v)
end
AutoReplaceGroup, connection = nil, nil
local AutoRollGroup = g1_1.Main:AddLeftGroupbox("Auto Roll", "dices")
AutoRollGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
AutoRollGroup:AddSlider("RollDelay", { Text = "Roll Delay", Default = 5, Min = 3.5, Max = 20, Rounding = 1 })
local AutoBuyGroup = g1_1.Main:AddRightGroupbox("Auto Buy", "shopping-cart")
AutoBuyGroup:AddToggle("AutoBuy", { Text = "Auto Buy", Default = false })
AutoBuyGroup:AddDropdown("BuyMode", {
    Text = "Buy Mode",
    Values = { "Buy All", "Minimum Rarity", "Specific Rarities" },
    Default = "Minimum Rarity",
    Multi = false
})
AutoBuyGroup:AddDropdown("BuyMinRarity", { Text = "Minimum Rarity", Values = g9, Default = "Rare", Multi = false })
AutoBuyGroup:AddDropdown("BuyRarities", { Text = "Specific Rarities", Values = g9, Default = {}, Multi = true, Callback = onBuyRarities })
AutoBuyGroup:AddDropdown("BuyTypes", {
    Text = "Item Types",
    Values = g0_2,
    Default = { "Drills", "Energy Sources" },
    Multi = true,
    Callback = onBuyTypes
})
AutoBuyGroup:AddInput("BuyMaxPrice", { Text = "Max Price (0 = off)", Default = "0", Numeric = true, Finished = true })
AutoBuyGroup:AddInput("BuyReserve", { Text = "Keep Cash Reserve", Default = "0", Numeric = true, Finished = true })
AutoBuyGroup:AddSlider("BuyDelay", { Text = "Buy Loop Delay", Default = 0.5, Min = 0.2, Max = 5, Rounding = 1 })
AutoBuyGroup:AddToggle("BuyNotify", { Text = "Notify On Buy", Default = true })
AutoBuyGroup:AddButton({ Text = "Buy Current Results", Func = onBuyCurrentResults })
local AutoOresGroup = g1_1.Main:AddLeftGroupbox("Auto Ores", "pickaxe")
AutoOresGroup:AddToggle("AutoCollectOres", { Text = "Auto Collect Ores", Default = false })
AutoOresGroup:AddToggle("AutoDepositOres", { Text = "Auto Deposit Ores", Default = false })
AutoOresGroup:AddSlider("OreDelay", { Text = "Ore Loop Delay", Default = 1, Min = 0.2, Max = 10, Rounding = 1 })
local AutoPlaceGroup = g1_1.Main:AddRightGroupbox("Auto Place", "layout-grid")
if ((AutoBuyGroup or not AutoBuyGroup or (AutoPlaceGroup or not AutoRollGroup)) and (not AutoPlaceGroup or not connection or (AutoRollGroup or AutoRollGroup)) or (AutoPlaceGroup or not AutoPlaceGroup) and (AutoRollGroup and not AutoRollGroup) and ((not connection or AutoPlaceGroup) and (AutoPlaceGroup or not AutoRollGroup))) and ((not AutoPlaceGroup or connection) and (not AutoRollGroup or not AutoBuyGroup) or not AutoRollGroup and connection and (AutoRollGroup and AutoRollGroup) or (connection and not AutoPlaceGroup or not AutoPlaceGroup and AutoBuyGroup) and (AutoPlaceGroup or AutoPlaceGroup or (AutoRollGroup or not connection))) and not (((AutoBuyGroup or not AutoBuyGroup or (AutoPlaceGroup or not AutoRollGroup)) and (not AutoPlaceGroup or not connection or (AutoRollGroup or AutoRollGroup)) or (AutoPlaceGroup or not AutoPlaceGroup) and (AutoRollGroup and not AutoRollGroup) and ((not connection or AutoPlaceGroup) and (AutoPlaceGroup or not AutoRollGroup))) and ((not AutoPlaceGroup or connection) and (not AutoRollGroup or not AutoBuyGroup) or not AutoRollGroup and connection and (AutoRollGroup and AutoRollGroup) or (connection and not AutoPlaceGroup or not AutoPlaceGroup and AutoBuyGroup) and (AutoPlaceGroup or AutoPlaceGroup or (AutoRollGroup or not connection)))) then
    AutoReplaceGroup:AddToggle("AutoPlace", { Text = "Auto Place Drills", Default = false })
    AutoReplaceGroup:AddDropdown("PlaceDrillMode", {
        Default = "Best (Ores/s)",
        Values = { "Worst (Ores/s)", "Specific Rarities", "Best (Ores/s)" },
        Multi = false,
        Text = "Drill To Place"
    })
    AutoReplaceGroup:AddDropdown("PlaceRarities", {
        Callback = onPlaceRarities,
        Default = {},
        Text = "Place Rarities",
        Multi = true,
        Values = AutoPlaceGroup
    })
    AutoReplaceGroup:AddSlider("PlaceDelay", { Text = "Place Loop Delay", Min = 0.2, Max = 10, Default = 1, Rounding = 1 })
    AutoReplaceGroup:AddToggle("AutoBuyTiles", { Text = "Auto Buy Tiles", Default = false })
    AutoReplaceGroup:AddInput("TileReserve", { Numeric = true, Finished = true, Default = "0", Text = "Keep Cash Reserve" })
    AutoReplaceGroup:AddSlider("TileDelay", { Default = 1, Max = 10, Rounding = 1, Min = 0.2, Text = "Tile Loop Delay" })
    g1_1 = g9.Main:AddRightGroupbox("Auto Replace", "replace")
else
    AutoPlaceGroup:AddToggle("AutoPlace", { Text = "Auto Place Drills", Default = false })
    AutoPlaceGroup:AddDropdown("PlaceDrillMode", {
        Text = "Drill To Place",
        Values = { "Best (Ores/s)", "Worst (Ores/s)", "Specific Rarities" },
        Default = "Best (Ores/s)",
        Multi = false
    })
    AutoPlaceGroup:AddDropdown("PlaceRarities", { Text = "Place Rarities", Values = g9, Default = {}, Multi = true, Callback = onPlaceRarities })
    AutoPlaceGroup:AddSlider("PlaceDelay", { Text = "Place Loop Delay", Default = 1, Min = 0.2, Max = 10, Rounding = 1 })
    AutoPlaceGroup:AddToggle("AutoBuyTiles", { Text = "Auto Buy Tiles", Default = false })
    AutoPlaceGroup:AddInput("TileReserve", { Text = "Keep Cash Reserve", Default = "0", Numeric = true, Finished = true })
    AutoPlaceGroup:AddSlider("TileDelay", { Text = "Tile Loop Delay", Default = 1, Min = 0.2, Max = 10, Rounding = 1 })
    AutoReplaceGroup = g1_1.Main:AddRightGroupbox("Auto Replace", "replace")
end
AutoReplaceGroup:AddToggle("AutoReplace", { Text = "Auto Replace With Better Drill", Default = false })
AutoReplaceGroup:AddInput("ReplaceMinGain", { Text = "Min Ores/s Gain", Default = "0", Numeric = true, Finished = true })
AutoReplaceGroup:AddSlider("ReplaceDelay", { Text = "Replace Loop Delay", Default = 1, Min = 0.2, Max = 10, Rounding = 1 })
AutoReplaceGroup:AddToggle("ReplaceNotify", { Text = "Notify On Replace", Default = true })
local MenuGroup = g1_1.Settings:AddLeftGroupbox("Menu", "wrench")
MenuGroup:AddLabel("UI Keybind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "UI Keybind" })
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true, Callback = onAntiAfk })
MenuGroup:AddButton("Unload", onUnload)
Library.ToggleKeybind = Options.MenuKeybind
Library:OnUnload(fn501)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Mint")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/MakeADrillFarm")
SaveManager:BuildConfigSection(g1_1.Settings)
ThemeManager:ApplyToTab(g1_1.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
task.spawn(autoRollLoop)
task.spawn(autoBuyLoop)
task.spawn(autoCollectOresLoop)
task.spawn(autoPlaceLoop)
task.spawn(autoReplaceLoop)
task.spawn(autoBuyTilesLoop)
Library:Notify("Make a Drill Farm loaded")
