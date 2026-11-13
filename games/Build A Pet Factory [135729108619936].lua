local hb
local hT
local RebirthMath
local hh
local hG
local hn
local g4
local hM
local Toggles
local ha
local Workspace
local hz
local hg
local connection
local PlacementUtil
local hm
local Library
local hs
local g9
local hR
local hy
local hf
local hE
local hl
local Rebirth
local hK
local hr
local g8
local hx
local PurchaseBuilding
local hW
local hD
local Options
local Players
local hJ
local hq
local CollectCash
local ItemConfig
local Label
local hd
local RequestClearPlot
local connection2
local hj
local RebirthConfig
local g6
local hO
local hv
local hc
local hU
local hB
local hi
local hH
local ho
local g5
local VirtualUser
local hu
local function onInputBegan()
    hR = tick()
end
local function fn7()
    hi = true
    connection:Disconnect()
    connection2:Disconnect()
end
local function fn13()
    return hr.Replica
end
local function fn15(ba)
    local jQ = ItemConfig[ba]
    if not jQ then
        return math.huge
    elseif jQ.RequiredRebirths then
        return jQ.RequiredRebirths
    else
        if jQ.Rarity and RebirthConfig.Rarity[jQ.Rarity] then
            return RebirthConfig.Rarity[jQ.Rarity]
        end
        return 0
    end
end
local function fn25()
    local jY_1
    local jX_1
    if identifyexecutor then
        jY_1, jX_1 = identifyexecutor()
        local jZ = jY_1 ~= ""
        local j_ = type(jY_1) == "string" and jZ
        if j_ then
            local jZ_1 = type(jX_1) == "string" and jX_1 ~= "" and jY_1 .. " " .. jX_1
            hf = jZ_1 or jY_1
        end
    end
end
local function fn48(by, bz)
    if setclipboard then
        setclipboard(by)
    elseif toclipboard then
        toclipboard(by)
    end
    Library:Notify(bz)
end
local function fn65(bO, bP, bQ)
    return string.format("<b>%s</b> %s %s", bO, g9("-", "#5a6070"), g9(bP, bQ))
end
local function onRefreshPlayers()
    Options.StealTarget:SetValues(hc())
end
local function fn86(a2)
    local jK = hb()
    if not jK then
        return 0
    end
    return jK.BuildingStock[a2] or 0
end
local function worker()
    local j5_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local j4 = math.floor(os.clock() - g6)
        if j4 < 60 then
            j5_1 = j4 .. "s"
        elseif j4 < 3600 then
            j5_1 = string.format("%dm %ds", j4 // 60, j4 % 60)
        else
            j5_1 = string.format("%dh %dm", j4 // 3600, j4 % 3600 // 60)
        end
        hG:SetText(hW("Session time", j5_1, hn))
    end
end
local function onUnload()
    Library:Unload()
end
local function fn107(bg)
    if hs(bg) > 0 then
        return true
    end
    local jT = ItemConfig[bg]
    if not jT or jT.Cost == nil then
        return false
    end
    local jT_1 = hb()
    local jT_2 = jT_1 and jT_1.Rebirths or 0
    return jT_2 >= g5(bg)
end
local function autoBuyLoop()
    while not Library.Unloaded do
        local j8 = Options.BuyInterval and Options.BuyInterval.Value or 1
        if Toggles.AutoBuy.Value then
            local j8_1 = hb()
            if j8_1 then
                local Value3 = Toggles.BuyDecorations.Value
                local Value2 = Toggles.BuyAffordableOnly.Value
                local Value = Options.BuyFilter.Value
                local kc = false
                for k in pairs(Value) do
                    kc = true
                    break
                end
                for k, v in pairs(j8_1.BuildingStock) do
                    if Library.Unloaded or not Toggles.AutoBuy.Value then
                        break
                    end
                    if v and v > 0 and ItemConfig[k] then
                        local j8_4 = kc
                        local kd = false
                        if j8_4 then
                            j8_4 = not Value[k]
                        end
                        if j8_4 then
                            kd = true
                        end
                        local j8_5 = not kd
                        if j8_5 ~= false then
                            j8_5 = not Value3
                        end
                        if j8_5 then
                            j8_5 = hz(k)
                        end
                        if j8_5 then
                            kd = true
                        end
                        local j8_6 = not kd
                        if j8_6 ~= false then
                            j8_6 = Value2
                        end
                        if j8_6 then
                            local j8_7 = g8(k)
                            local ke = j8_7
                            if ke then
                                local kf = hb().Cash or 0
                                ke = j8_7 > kf
                            end
                            if ke then
                                kd = true
                            end
                        end
                        if not kd then
                            PurchaseBuilding:FireServer(k)
                            task.wait(0.15)
                        end
                    end
                end
            end
        end
        task.wait(j8)
    end
end
local function onScanSelectedBase()
    local lr = ha()
    if lr then
        hg(lr)
        Library:Notify(string.format("Scanned %d buildings", #lr.Entries))
    end
end
local function fn124()
    local kT = {}
    for i, player in ipairs(Players:GetPlayers()) do
        if player ~= hD then
            table.insert(kT, player.Name)
        end
    end
    table.sort(kT)
    return kT
end
local function onCopyJoinScript_JobID()
    local b7 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, hB)
    hd(b7, "Copied join script to clipboard")
end
local function fn133()
    local Character = hD.Character
    local ks = Character and Character:FindFirstChild("HumanoidRootPart")
    return ks or nil
end
local function fn155()
    hd(hu, "Copied Discord invite to clipboard")
end
local function fn183()
    local kv = hT(hD)
    if not kv then
        return
    end
    local Placements = kv:FindFirstChild("Placements")
    if not Placements then
        return
    end
    local kv_1 = Toggles.CollectTeleport and Toggles.CollectTeleport.Value
    for i, child in Placements:GetChildren() do
        if Library.Unloaded or not Toggles.AutoCollect.Value then
            break
        end
        local ProximityPrompt = child:FindFirstChildWhichIsA("ProximityPrompt", true)
        if ProximityPrompt and ProximityPrompt.Enabled then
            local ActionText = ProximityPrompt.ActionText
            if ActionText == "Collect" or ActionText == "Claim" then
                if kv_1 then
                    local kw_3 = hH()
                    if kw_3 then
                        local Parent = ProximityPrompt.Parent
                        local kz_1 = Parent and Parent:IsA("BasePart") and Parent.CFrame
                        local ky_2 = kz_1
                        local kJ = if ky_2 then 1 else 0
                        local kH = 1954 * kJ + 554 * (1 - kJ)
                        local kI = 1927 * kJ + 2595 * (1 - kJ)
                        if not ((kH * 1721 + kI * 647 + kH * kI) % 16777213 == 8374961) then
                            ky_2 = child:GetPivot()
                        end
                        local kz_2 = ky_2
                        kw_3.CFrame = kz_2 + Vector3.new(0, 4, 0)
                        task.wait(0.08)
                    end
                end
                pcall(fireproximityprompt, ProximityPrompt)
            end
        end
    end
end
local function autoCollectLoop()
    while not Library.Unloaded do
        local kK_1 = Options.SellInterval and Options.SellInterval.Value or 1
        if Toggles.AutoCollect.Value then
            hl()
        end
        if Toggles.AutoSell.Value then
            CollectCash:FireServer()
        end
        task.wait(kK_1)
    end
end
local function fn186(a6)
    local jN = hb()
    if not jN then
        return 0
    end
    return jN.Inventory[a6] or 0
end
local function fn208()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    hO = tick()
end
local function fn235(ao)
    return hq[hK(ao)]
end
local function fn246(as)
    local at = as % 360
    return math.floor(at / 90 + 0.5) * 90 % 360
end
local function fn278(dq)
    local k7_1
    local k6_1
    local k4_1
    local k3_1
    if not dq then
        Label:SetText("Scan a player to see their base materials.")
        return
    end
    local k0 = {}
    for k in pairs(dq.Materials) do
        table.insert(k0, k)
    end
    table.sort(k0)
    local k1 = {}
    k3_1, k4_1 = 0, 0
    for i, v in ipairs(k0) do
        local k5 = dq.Materials[v]
        k3_1 = k3_1 + k5
        if hE(v) then
            k4_1 = k4_1 + 1
            k6_1 = g9("[OWNED]", hy)
            k7_1 = hv
        else
            local k8 = g5(v)
            local k9_1 = ItemConfig[v] and ItemConfig[v].Cost == nil and "gem/limited"
            if not k9_1 then
                k9_1 = "needs " .. k8 .. " rebirth" .. (k8 == 1 and "" or "s")
            end
            local k8_1 = k9_1
            k6_1 = g9("[LOCKED " .. k8_1 .. "]", "#ff6b6b")
            k7_1 = hh
        end
        table.insert(k1, k6_1 .. " " .. g9(v, k7_1) .. " " .. g9("x" .. k5, hn))
    end
    table.insert(k1, 1, g9(string.format("Total buildings: %d  (%d/%d types owned)", k3_1, k4_1, #k0), hn))
    if dq.Unknown > 0 then
        table.insert(k1, g9("Unidentified: " .. dq.Unknown, hh))
    end
    Label:SetText(table.concat(k1, "\n"))
end
local function onClearMyBase()
    RequestClearPlot:FireServer()
    Library:Notify("Requested plot clear")
end
local function onInputChanged(eE)
    local UserInputType = eE.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        hR = tick()
    end
end
local function onStop()
    hi = true
end
local function fn302(F)
    local Plots = Workspace:FindFirstChild("Plots")
    if not Plots then
        return nil, nil
    end
    local attr = F:GetAttribute("PlotName")
    local iN = attr and Plots:FindFirstChild(attr)
    local iM_1 = iN
    if not iM_1 then
        local iN_1 = "_" .. F.Name
        for i, child in Plots:GetChildren() do
            local Placements = child:FindFirstChild("Placements")
            if Placements then
                for i, child2 in Placements:GetChildren() do
                    if string.sub(child2.Name, -#iN_1) == iN_1 then
                        iM_1 = child
                        break
                    end
                end
            end
            if iM_1 then
                break
            end
        end
    end
    if not iM_1 then
        return nil, nil
    end
    return iM_1, iM_1:FindFirstChild("Platform")
end
local function fn364(dS)
    local lt_3
    if hs(dS) > 0 then
        return true
    elseif not Toggles.StealBuyMissing.Value then
        return false
    elseif hJ(dS) <= 0 then
        return false
    elseif Toggles.StealAffordableOnly.Value then
        local lt_1 = g8(dS)
        local lu = hb()
        if lt_1 and lu and lt_1 > (lu.Cash or 0) then
            return false
        end
        PurchaseBuilding:FireServer(dS)
        local lt_2 = os.clock() + 1
        while true do
            if not (os.clock() < lt_3) then
                return hs(dS) > 0
            end
            if hs(dS) > 0 then
                break
            end
            task.wait(0.05)
        end
        return true
    else
        PurchaseBuilding:FireServer(dS)
        lt_3 = os.clock() + 1
        while true do
            if not (os.clock() < lt_3) then
                return hs(dS) > 0
            end
            if hs(dS) > 0 then
                break
            end
            task.wait(0.05)
        end
        return true
    end
end
local function fn369(bF)
    local DiscordGroup = bF:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = hU })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = hU })
end
local function fn380(bL, bM)
    return string.format('<font color="%s">%s</font>', bM, bL)
end
local function fn381()
    local Value = Options.StealTarget.Value
    local ln_1
    local lp = not Value or Value == ""
    local lp_1
    if lp then
        Library:Notify("Select a player first")
        return nil
    end
    local lo_1 = Players:FindFirstChild(Value)
    if not lo_1 then
        Library:Notify("That player left the game")
        return nil
    end
    lp_1, ln_1 = hx(lo_1)
    if not lp_1 then
        local lo_2 = ln_1 or "Failed to read that base"
        Library:Notify(lo_2)
        return nil
    end
    return lp_1
end
local function autoRebirthLoop()
    while not Library.Unloaded do
        local kO = Options.RebirthInterval and Options.RebirthInterval.Value or 3
        if Toggles.AutoRebirth.Value then
            local kO_1 = hb()
            if kO_1 then
                local kP = kO_1.Rebirths or 0
                local kQ = RebirthMath:GetCost(kP)
                if kQ and (kO_1.Cash or 0) >= kQ then
                    Rebirth:FireServer()
                end
            end
        end
        task.wait(kO)
    end
end
local function fn488(aU)
    local jE = ItemConfig[aU]
    return jE and jE.Type == "Decoration"
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local l5 = tick() - hR
            local l6 = tick() - hO
            if l5 >= 300 and l6 >= 60 then
                pcall(ho)
            else
                if l5 < 300 and l6 >= 300 then
                    pcall(ho)
                end
            end
        end
    end
end
local function fn509(av)
    local jw_1
    local jp_1
    local jo_1, jo_2
    jo_1, jp_1 = hT(av)
    local jq = not jp_1
    local jq_3
    local jr = not jo_1 or jq
    local jr_1
    if jr then
        return nil, "Could not find that player's plot"
    end
    local Placements = jo_1:FindFirstChild("Placements")
    if not Placements then
        return nil, "That plot has no placements"
    end
    jo_2, jr_1 = jp_1.CFrame:ToOrientation()
    local jo_3 = {}
    local js = {}
    local jt = 0
    for i, child in Placements:GetChildren() do
        if not string.find(child.Name, "_Tutorial") then
            local attr = child:GetAttribute("BaseGrid")
            if attr then
                local ju = g4(child)
                if ju then
                    local jv = PlacementUtil.GridToNormalizedGrid(attr, jp_1)
                    jq_3, jw_1 = child:GetPivot():ToOrientation()
                    js[#js + 1] = { ModelName = ju, NormalizedGrid = jv, Rotation = hM(math.deg(jw_1 - jr_1)) }
                    local jq_4 = jo_3[ju] or 0
                    jo_3[ju] = jq_4 + 1
                else
                    jt = jt + 1
                end
            end
        end
    end
    return { Entries = js, Materials = jo_3, Unknown = jt }
end
local function fn510(aY)
    local jH = ItemConfig[aY]
    return jH and jH.Cost or nil
end
local function fn516()
    local iI = hj()
    return iI and iI.Data or nil
end
local function onRscripts()
    hd(hm, "Copied Rscripts profile to clipboard")
end
Players = nil
Rebirth = nil
g4 = nil
g5 = nil
g6 = nil
CollectCash = nil
g8 = nil
g9 = nil
ha = nil
hb = nil
hc = nil
hd = nil
PurchaseBuilding = nil
hf = nil
hg = nil
hh = nil
hi = nil
hj = nil
Options = nil
hl = nil
hm = nil
hn = nil
ho = nil
hq = nil
hr = nil
hs = nil
Toggles = nil
hu = nil
hv = nil
Label = nil
hx = nil
hy = nil
hz = nil
RebirthMath = nil
hB = nil
connection2 = nil
hD = nil
hE = nil
PlacementUtil = nil
hG = nil
hH = nil
RebirthConfig = nil
hJ = nil
hK = nil
Library = nil
hM = nil
VirtualUser = nil
hO = nil
local g3, hp
ItemConfig = nil
hR = nil
Workspace = nil
hT = nil
hU = nil
RequestClearPlot = nil
hW = nil
connection = nil
local hQ, PlacePlacement
local h8_1
local ii_1
local ib_1
local h7_1
local h2_1
local h__1, h__3
local Events
Players, h__1, Workspace, VirtualUser, hD, h2_1, hu, hm, Events, PurchaseBuilding, CollectCash, Rebirth, PlacePlacement, RequestClearPlot, ItemConfig, RebirthConfig, PlacementUtil, RebirthMath, hr, hQ, hq, hj, hb, hT, hK = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
if (not hQ and PurchaseBuilding or not hT and false or (hQ or 34) and (h2_1 or not hT)) and (not hQ and false and hT or (not PurchaseBuilding and false or (hu or not hT))) and ((hu or hQ or hu and hT or (hQ and not PurchaseBuilding or (hT or false))) and ((h2_1 or not hT) and (false or hQ) and ("Build a Pet Factory" and (not PurchaseBuilding or h2_1)))) or not ((not hQ and PurchaseBuilding or not hT and false or (hQ or 34) and (h2_1 or not hT)) and (not hQ and false and hT or (not PurchaseBuilding and false or (hu or not hT))) and ((hu or hQ or hu and hT or (hQ and not PurchaseBuilding or (hT or false))) and ((h2_1 or not hT) and (false or hQ) and ("Build a Pet Factory" and (not PurchaseBuilding or h2_1))))) then
    h__1 = game:GetService("ReplicatedStorage")
else
    game:GetService("ReplicatedStorage")
end
Workspace = game:GetService("Workspace")
VirtualUser = game:GetService("VirtualUser")
local UserInputService = game:GetService("UserInputService")
hD = Players.LocalPlayer
local h2_2 = "Build a Pet Factory"
hu = "https://discord.gg/ehKVq7pf7v"
hm = "https://rscripts.net/@Ouroboros"
if ((CollectCash and not Players or (Players or PlacePlacement)) and (not hQ and not hQ or not Players and not Players) or (CollectCash or PlacePlacement or (CollectCash or PlacePlacement)) and ((not PlacePlacement or not PlacePlacement) and (hQ and not hQ))) and not ((CollectCash and not Players or (Players or PlacePlacement)) and (not hQ and not hQ or not Players and not Players) or (CollectCash or PlacePlacement or (CollectCash or PlacePlacement)) and ((not PlacePlacement or not PlacePlacement) and (hQ and not hQ))) then
    h__1 = Events:WaitForChild("Events")
else
    Events = h__1:WaitForChild("Events")
end
PurchaseBuilding = Events:WaitForChild("PurchaseBuilding")
CollectCash = Events:WaitForChild("CollectCash")
Rebirth = Events:WaitForChild("Rebirth")
PlacePlacement = Events:WaitForChild("PlacePlacement")
RequestClearPlot = Events:WaitForChild("RequestClearPlot")
ItemConfig = require(h__1.Configs.ItemConfig)
RebirthConfig = require(h__1.Configs.RebirthConfig)
PlacementUtil = require(h__1.Utilities.PlacementUtil)
RebirthMath = require(h__1.Utilities.RebirthMath)
local Placements = h__1.Assets.Placements
if (PurchaseBuilding or not hQ or not PurchaseBuilding and not hQ or (not hQ or PurchaseBuilding) and (hQ or not hQ)) and ((PurchaseBuilding or PurchaseBuilding) and (PurchaseBuilding and not PurchaseBuilding) or (PurchaseBuilding and PurchaseBuilding or (not hQ or PurchaseBuilding))) or not ((PurchaseBuilding or not hQ or not PurchaseBuilding and not hQ or (not hQ or PurchaseBuilding) and (hQ or not hQ)) and ((PurchaseBuilding or PurchaseBuilding) and (PurchaseBuilding and not PurchaseBuilding) or (PurchaseBuilding and PurchaseBuilding or (not hQ or PurchaseBuilding)))) then
    hr = require(hD.PlayerScripts.Client.Data)
    hj = fn13
else
    hD = require(hj.PlayerScripts.Client.Data)
    hr = fn13
end
hb = fn516
hT = fn302
hQ = { ArrowAttachments = true, TargetAttachment = true, SelectionBox = true }
hK = function(T)
    local i7
    i7 = {}
    for i, descendant in ipairs(T:GetDescendants()) do
        if hQ[descendant.Name] then
            i7[descendant] = true
        end
    end
    local function i8(Z)
        local i3 = Z
        while true do
            if not (i3 and i3 ~= T) then
                return hQ[Z.Name] == true
            end
            if i7[i3] then
                break
            end
            i3 = i3.Parent
        end
        return true
    end
    local i9 = {}
    for i, descendant in ipairs(T:GetDescendants()) do
        local ja = not i8(descendant) and descendant:IsA("BasePart")
        if ja then
            local Color = descendant.Color
            i9[#i9 + 1] = string.format("%d_%d_%d_%d_%.1f_%.1f_%.1f", math.floor(Color.R * 255), math.floor(Color.G * 255), math.floor(Color.B * 255), descendant.Material.Value, descendant.Size.X, descendant.Size.Y, descendant.Size.Z)
        end
    end
    table.sort(i9)
    return table.concat(i9, "|")
end
hq = {}
for i, child in ipairs(Placements:GetChildren()) do
    local hZ_2 = hK(child)
    if hq[hZ_2] == nil then
        hq[hZ_2] = child.Name
    end
end
g4, hM, hx = nil, nil, nil
g4 = fn235
hM = fn246
hx = fn509
local h0 = {}
for k, v in pairs(ItemConfig) do
    local hZ_3 = type(v) == "table" and v.Type
    if hZ_3 then
        table.insert(h0, k)
    end
end
Library, Toggles, Options, hz, g8, hJ, hs, g5, hE, hd, hU = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(h0)
hz = fn488
g8 = fn510
hJ = fn86
hs = fn186
g5 = fn15
hE = fn107
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
local h__2 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = "https://discord.gg/ehKVq7pf7v | Build a Pet Factory",
    Icon = 18657887261,
    NotifySide = "Right",
    ShowCustomCursor = false
})
Toggles = Library.Toggles
Options = Library.Options
local h4 = {
    Info = h__2:AddTab("Info", "info"),
    Main = h__2:AddTab("Main", "gavel"),
    Steal = h__2:AddTab("Steal Bases", "copy"),
    Settings = h__2:AddTab("Settings", "settings")
}
hd = fn48
hU = fn155
for k, v in h4 do
    fn369(v)
end
hy, hv, hn, hh, hf, h__3, h8_1, hG, hB, h7_1, g9, hW = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local hZ_4 = 47
repeat
    local h1_2 = (hZ_4 * 7 + 6) % 9 + 1
    if h1_2 <= 5 then
        if h1_2 <= 3 then
            if h1_2 <= 2 then
                if h1_2 <= 1 then
                    local h9_1 = (vector.create((hZ_4 * 3 + 2) % 11 + 1, (hZ_4 * 5 + 2) % 13 + 1, (hZ_4 * 13 + 12) % 17 + 1))
                    local ia_1 = (vector.create((hZ_4 * 6 + 9) % 11 + 1, (hZ_4 * 1 + 5) % 13 + 1, (hZ_4 * 13 + 16) % 17 + 1))
                    local m4 = vector.dot(h9_1, ia_1)
                    if m4 * m4 <= vector.dot(h9_1, h9_1) * vector.dot(ia_1, ia_1) then
                        hB = tostring(game.JobId)
                    else
                        hf = tostring(game.JobId)
                    end
                    hZ_4 = (hZ_4 + 49) % 72
                else
                    local h9_2 = (vector.create((hZ_4 * 1 + 5) % 11 + 1, (hZ_4 * 8 + 3) % 13 + 1, (hZ_4 * 2 + 1) % 17 + 1))
                    local m7 = vector.floor(h9_2) + vector.ceil(h9_2 * -1)
                    if vector.dot(m7, m7) == 2 then
                        hB = #h7_1 > 18
                    else
                        h7_1 = #hB > 18
                    end
                    hZ_4 = (hZ_4 + 58) % 72
                end
            else
                local mE = bit32.rrotate(bit32.bxor(bit32.lrotate(hZ_4, 18), string.byte(tostring(hG))), 21)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(mE, 968830125), 1663593696), (bit32.bxor(bit32.band(mE, 3326137170), 2720946472))), 1663593696), 2720946472) ~= mE then
                    h7_1 = fn380
                else
                    g9 = fn380
                end
                hZ_4 = (hZ_4 + 31) % 72
            end
        elseif h1_2 <= 4 then
            if (hZ_4 * 1 + 6) * 5 % 4 == ((hZ_4 * 1 + 6) * 5 + 15) % 4 then
                h8_1 = fn65
            else
                hW = fn65
            end
            hZ_4 = (hZ_4 + 58) % 72
        else
            if hZ_4 * 17630329 + 3 + 3 >= hZ_4 * 17630329 + 3 + 3 + 4 then
                hB = "#7fd47f"
            else
                hy = "#7fd47f"
            end
            hZ_4 = (hZ_4 + 13) % 72
        end
    elseif h1_2 <= 7 then
        if h1_2 <= 6 then
            if (hZ_4 * 3 + 8) * 9 % 4 == ((hZ_4 * 3 + 8) * 9 + 6) % 4 then
                g9 = "#6ec1ff"
            else
                hv = "#6ec1ff"
            end
            hZ_4 = (hZ_4 + 58) % 72
        else
            if hn and h7_1 and (hn or hn) and (h8_1 or h7_1 or not hn and not h8_1) or not (hn and h7_1 and (hn or hn) and (h8_1 or h7_1 or not hn and not h8_1)) then
                hn = "#e8a34d"
            else
                hf = "#e8a34d"
            end
            hZ_4 = (hZ_4 + 31) % 72
        end
    elseif h1_2 <= 8 then
        local h1_3 = { "qlzmeli", "fnzm", "wvcifzsr", "gft", "eawycajjkhg", "jjrpv", "btuqnklwrxg", "ebur" }
        local mY = hZ_4
        local h9_3 = h1_3[mY % 8 + 1]
        if h9_3:len() <= h9_3:reverse():rep(mY % 3 + 2):len() then
            hh = "#8b93a3"
        else
            hG = "#8b93a3"
        end
        hZ_4 = (hZ_4 + 58) % 72
    else
        local h1_4 = { "upv", "lvjtcnj", "eugw", "iitfwcjtub", "qcnfnc", "smfhn", "cfgwiapwvjn" }
        local m5 = hZ_4
        local h9_4 = h1_4[m5 % 7 + 1]
        if h9_4:len() <= h9_4:gsub("(.)", "%1%1", m5 % 3 % 2 + 1):len() then
            hf = "Unknown"
            pcall(fn25)
            h__3 = h4.Info:AddLeftGroupbox("Account", "circle-user")
            h__3:AddLabel(hW("User", hD.Name, hy), true)
            h__3:AddLabel(hW("Status", "Keyless", hy), true)
            h__3:AddLabel(hW("Executor", hf, hy), true)
            h8_1 = h4.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            h8_1:AddLabel(g9(h2_2 .. " [" .. tostring(game.PlaceId) .. "]", hv), true)
            h8_1:AddLabel(hW("Place ID", tostring(game.PlaceId), hv), true)
            hG = h8_1:AddLabel(hW("Session time", "0s", hn), true)
        else
            hD = "Unknown"
            pcall(fn25)
            hy = hW.Info:AddLeftGroupbox("Account", "circle-user")
            hy:AddLabel(h__3("User", nil, h8_1), true)
            hy:AddLabel(h__3("Status", "Keyless", h8_1), true)
            hy:AddLabel(h__3("Executor", hD, h8_1), true)
            hv = hW.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            hv:AddLabel(hG(g9 .. " [" .. tostring(game.PlaceId) .. "]", hf), true)
            hv:AddLabel(h__3("Place ID", tostring(game.PlaceId), hf), true)
            hn = hv:AddLabel(h__3("Session time", "0s", h4), true)
        end
        hZ_4 = (hZ_4 + 22) % 72
    end
until (hZ_4 * 5 + 68) % 72 == 33
if h7_1 then
    local hZ_5 = 2
    repeat
        if hZ_5 and hZ_5 or not hZ_5 and hZ_5 or not hZ_5 and hZ_5 and (not hZ_5 or not hZ_5) or not (hZ_5 and hZ_5 or not hZ_5 and hZ_5 or not hZ_5 and hZ_5 and (not hZ_5 or not hZ_5)) then
            h7_1 = string.sub(hB, 1, 18) .. "..."
        else
            hB = string.sub(h7_1, 1, 18) .. "..."
        end
        hZ_5 = (hZ_5 + 7) % 8
    until (hZ_5 * 5 + 3) % 8 == 0
end
local hZ_6 = h7_1 or hB
ib_1, g6, ii_1, Label, hp, hi, hR, hO, connection, connection2, hH, hl, hc, hg, ha, g3, ho = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if ((g6 and not g6 or (ii_1 or not ii_1)) and (not g6 or g6 or (g6 or not ii_1)) or (ii_1 and not g6 or (g6 or g6) or (g6 or g6) and (not ii_1 or not g6))) and (ii_1 and ii_1 and (g6 and g6) and ((not ii_1 or g6) and (not g6 and not g6)) or (g6 and g6 and (not ii_1 and not ii_1) or (not g6 or ii_1) and (not g6 or not g6))) and not (((g6 and not g6 or (ii_1 or not ii_1)) and (not g6 or g6 or (g6 or not ii_1)) or (ii_1 and not g6 or (g6 or g6) or (g6 or g6) and (not ii_1 or not g6))) and (ii_1 and ii_1 and (g6 and g6) and ((not ii_1 or g6) and (not g6 and not g6)) or (g6 and g6 and (not ii_1 and not ii_1) or (not g6 or ii_1) and (not g6 or not g6)))) then
    local hZ_7 = hW
    hh:AddLabel(ib_1("Server", hZ_7, g6), true)
    hh:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
    os.clock()
else
    h8_1:AddLabel(hW("Server", hZ_6, hh), true)
    h8_1:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
    g6 = os.clock()
end
task.spawn(worker)
local ScriptsGroup = h4.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(g9("Included in this hub", hh), true)
ScriptsGroup:AddLabel(g9(h2_2, hv), true)
local FeaturesGroup = h4.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(g9("Auto Buy Shop", hv), true)
FeaturesGroup:AddLabel(g9("Auto Collect Money", hy), true)
FeaturesGroup:AddLabel(g9("Auto Press to Sell", hn), true)
FeaturesGroup:AddLabel(g9("Auto Rebirth", hv), true)
FeaturesGroup:AddLabel(g9("Steal Bases", hh), true)
local SocialsGroup = h4.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = hU })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local h__4 = h4.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
h__4:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
h__4:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
h__4:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
h__4:AddButton({ Text = "Copy Discord Invite", Func = hU })
local FaqGroup = h4.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutoBuyShopGroup = h4.Main:AddLeftGroupbox("Auto Buy Shop", "shopping-cart")
AutoBuyShopGroup:AddToggle("AutoBuy", { Text = "Auto Buy Shop", Default = false })
AutoBuyShopGroup:AddToggle("BuyDecorations", { Text = "Include Decorations", Default = false })
AutoBuyShopGroup:AddToggle("BuyAffordableOnly", { Text = "Only Buy Affordable", Default = true })
AutoBuyShopGroup:AddDropdown("BuyFilter", {
    Values = h0,
    Default = {},
    Multi = true,
    AllowNull = true,
    Searchable = true,
    Text = "Buildings (empty = all in stock)"
})
AutoBuyShopGroup:AddSlider("BuyInterval", { Text = "Buy Interval (s)", Default = 1, Min = 0.2, Max = 5, Rounding = 1, Suffix = "s" })
local MoneyGroup = h4.Main:AddLeftGroupbox("Money", "banknote")
MoneyGroup:AddToggle("AutoCollect", { Text = "Auto Collect Money", Default = false })
MoneyGroup:AddToggle("CollectTeleport", { Text = "Teleport To Collector", Default = true })
MoneyGroup:AddToggle("AutoSell", { Text = "Auto Press to Sell", Default = false })
MoneyGroup:AddSlider("SellInterval", { Text = "Collect / Sell Interval (s)", Default = 1, Min = 1, Max = 10, Rounding = 1, Suffix = "s" })
local RebirthGroup = h4.Main:AddRightGroupbox("Rebirth", "rotate-ccw")
RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
RebirthGroup:AddSlider("RebirthInterval", { Text = "Rebirth Interval (s)", Default = 3, Min = 1, Max = 30, Rounding = 1, Suffix = "s" })
task.spawn(autoBuyLoop)
hH = fn133
hl = fn183
task.spawn(autoCollectLoop)
task.spawn(autoRebirthLoop)
local TargetGroup = h4.Steal:AddLeftGroupbox("Target", "user-round")
hc = fn124
TargetGroup:AddDropdown("StealTarget", { Values = hc(), Default = nil, AllowNull = true, Searchable = true, Text = "Player" })
TargetGroup:AddButton({ Text = "Refresh Players", Func = onRefreshPlayers })
TargetGroup:AddToggle("StealClearFirst", { Text = "Clear My Base First", Default = true })
TargetGroup:AddToggle("StealBuyMissing", { Text = "Buy Missing Buildings", Default = true })
TargetGroup:AddToggle("StealAffordableOnly", { Text = "Only Buy Affordable", Default = true })
TargetGroup:AddSlider("StealDelay", { Text = "Place Delay (s)", Default = 0.15, Min = 0.05, Max = 1, Rounding = 2, Suffix = "s" })
local MaterialsGroup = h4.Steal:AddRightGroupbox("Materials", "boxes")
Label = MaterialsGroup:AddLabel("Scan a player to see their base materials.", true)
hp = false
hi = false
hg = fn278
ha = fn381
local ActionsGroup = h4.Steal:AddLeftGroupbox("Actions", "wand-sparkles")
ActionsGroup:AddButton({ Text = "Scan Selected Base", Func = onScanSelectedBase })
g3 = fn364
local function onCopyBase1_1()
    local lK, lL
    local lM_1
    if hp then
        Library:Notify("Already copying a base")
        return
    end
    lL = ha()
    if not lL then
        return
    end
    lM_1, lK = hT(hD)
    if not lK then
        Library:Notify("Could not find your own plot")
        return
    end
    hp = true
    hi = false
    hg(lL)
    task.spawn(function()
        local lz_1
        local ly_1
        if Toggles.StealClearFirst.Value then
            RequestClearPlot:FireServer()
            task.wait(1)
        end
        lz_1, ly_1 = 0, 0
        local Value = Options.StealDelay.Value
        for i, v in ipairs(lL.Entries) do
            if hi or Library.Unloaded then
                break
            end
            if g3(v.ModelName) then
                local lB_1 = PlacementUtil.NormalizedGridToGrid(v.NormalizedGrid, lK)
                local lC = PlacementUtil.GridToWorld(lB_1)
                PlacePlacement:FireServer(v.ModelName, lC, v.Rotation)
                lz_1 = lz_1 + 1
            else
                ly_1 = ly_1 + 1
            end
            task.wait(Value)
        end
        hp = false
        if hi then
            Library:Notify(string.format("Stopped. Placed %d, missing %d", lz_1, ly_1))
        else
            Library:Notify(string.format("Done. Placed %d, missing %d", lz_1, ly_1))
        end
    end)
end
ActionsGroup:AddButton({ Text = "Copy Base 1:1", Func = onCopyBase1_1 })
ActionsGroup:AddButton({ Text = "Stop", Func = onStop })
ActionsGroup:AddButton({ Text = "Clear My Base", Func = onClearMyBase })
local MenuGroup = h4.Settings:AddLeftGroupbox("Menu", "menu")
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
hR = tick()
hO = tick()
pcall(function()
    for i, v in ipairs(getconnections(hD.Idled)) do
        local lX = v
        pcall(function()
            lX:Disable()
        end)
    end
end)
ho = fn208
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
task.spawn(antiAfkLoop)
Library:OnUnload(fn7)
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
SaveManager:SetFolder("OuroborosHub/BuildAPetFactory")
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
ThemeManager:SaveDefault("Mint")
ThemeManager:ApplyToTab(h4.Settings)
ThemeManager:LoadDefault()
SaveManager:BuildConfigSection(h4.Settings)
SaveManager:LoadAutoloadConfig()
Library:Notify("Build a Pet Factory loaded")
