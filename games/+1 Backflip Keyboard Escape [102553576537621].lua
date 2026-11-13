local hK
local LocalPlayer
local g8
local gQ
local hx
local he
local gW
local hD
local Items
local g1
local hJ
local hq
local AuraConfigurations
local hP
local Rebirth
local Worlds
local TrailConfigurations
local gV
local hC
local hj
local g0
local hI
local Shoes
local Options
local AuraAction
local hv
local hc
local gU
local hB
local hi
local Shoe
local ItemShopRequest
local connection3
local g5
local connection2
local hu
local Toggles
local gT
local hA
local hh
local gZ
local hG
local hn
local Request
local hM
local ht
local RequestWin
local TrailAction
local Library
local hg
local gY
local UserInputService
local hm
local g3
local ItemAction
local hs
local g9
local gR
local VirtualUser
local hf
local gX
local hE
local hl
local connection
local function fn21(ag, ah, ai)
    return string.format("<b>%s</b> %s %s", ag, hK("-", "#5a6070"), hK(ah, ai))
end
local function worker6()
    while not Library.Unloaded do
        if g0("AutoBuyTrails") then
            pcall(gQ, "Trails", TrailConfigurations.Trails, TrailAction, "SpeedBoost")
        end
        if g0("AutoBuyAuras") then
            pcall(gQ, "Auras", AuraConfigurations.Auras, AuraAction, "WinBoost")
        end
        task.wait(1)
    end
end
local function fn65(N)
    local iu = Toggles[N]
    return iu ~= nil and iu.Value == true
end
local function fn82()
    local jO = hm()
    local jP = jO.Rebirths or 0
    local jP_1 = jO.Level
    local jU = if jP_1 then 1 else 0
    local jS = 1051 * jU + 1427 * (1 - jU)
    local jT = 930 * jU + 2510 * (1 - jU)
    if not ((jS * 196 + jT * 608 + jS * jT) % 16777213 == 1748866) then
        jP_1 = 1
    end
    if jP_1 < Rebirth.GetRequiredLevel(jP) then
        return
    end
    Request:InvokeServer()
end
local function fn89(cz, cA, cB, cC)
    local ID
    local ki = hm().Wins or 0
    local ki_1
    ID, ki_1 = nil, -1
    for i, v in ipairs(cA) do
        local kl_1 = gT(cz, v.ID)
        local km = not kl_1
        if km ~= false then
            km = typeof(v.WinCost) == "number"
        end
        if km then
            km = ki >= v.WinCost
        end
        if km then
            cB:FireServer("BuyWins", v.ID)
            return
        end
        if kl_1 then
            local kl_2 = v[cC] or 0
            if kl_2 > ki_1 then
                ID, ki_1 = v.ID, kl_2
            end
        end
    end
    local kl_3 = ID and hq(cz) ~= ID
    if kl_3 then
        cB:FireServer("Equip", ID)
    end
end
local function worker7()
    while not Library.Unloaded do
        if g0("AutoBuyItemShop") then
            pcall(hg)
        end
        task.wait(3)
    end
end
local function worker2()
    while not Library.Unloaded do
        if g0("AutoFarmWins") then
            pcall(hG)
        elseif g0("AutoTreadmill") then
            pcall(g5)
        elseif hB then
            hB = nil
        end
        local lh = g0("AutoFarmWins") and hD("WinDelay", 0.55)
        local li = lh or 0.5
        task.wait(li)
    end
end
local function worker3()
    while not Library.Unloaded do
        if g0("AutoJump") then
            pcall(hx)
        end
        task.wait(0.3)
    end
end
local function fn163()
    local i9 = hj[hD("WinAmount", "")]
    if not i9 then
        return nil
    end
    local ja = Worlds.GetGiveWins()
    local jb = ja and ja:FindFirstChild(i9.Name)
    if not jb then
        return nil
    end
    return i9.Name, gX(jb, jb:FindFirstChild("Touch"))
end
local function onRscripts()
    if setclipboard then
        setclipboard(g3)
    elseif toclipboard then
        toclipboard(g3)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
local function fn213()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    hE = tick()
end
local function fn218()
    local jr_1
    local jq_1
    local jp = Worlds.GetTreadmills()
    if not jp then
        return nil
    end
    jr_1, jq_1 = nil, -1
    for i, child in jp:GetChildren() do
        local attr = child:GetAttribute("SpeedMultiplier")
        local js = typeof(attr) == "number" and child:GetAttribute("PersonalTreadmill") ~= true
        if js then
            local js_1 = attr > jq_1 and hi(child)
            if js_1 then
                jr_1, jq_1 = child, attr
            end
        end
    end
    if not jr_1 then
        return nil
    end
    return jr_1.Name, gX(jr_1, nil)
end
local function fn220()
    local kv = gR()
    if not kv then
        return
    end
    kv.Jump = true
    if firesignal then
        pcall(firesignal, UserInputService.JumpRequest)
    end
end
local function fn236()
    local Character = LocalPlayer.Character
    if not Character or not Character.PrimaryPart then
        return nil
    end
    return Character
end
local function onCopyJoinScript_JobID()
    local kT = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, hP)
    if setclipboard then
        setclipboard(kT)
    elseif toclipboard then
        toclipboard(kT)
    end
    Library:Notify("Copied join script to clipboard")
end
local function worker5()
    while not Library.Unloaded do
        if g0("AutoBuyShoes") then
            pcall(g8)
        end
        task.wait(1)
    end
end
local function onInputBegan()
    hI = tick()
end
local function fn318()
    hB = nil
    connection:Disconnect()
    connection2:Disconnect()
    connection3:Disconnect()
    print("+1 Backflip Keyboard Escape unloaded")
end
local function fn324()
    if setclipboard then
        setclipboard(g9)
    elseif toclipboard then
        toclipboard(g9)
    end
    Library:Notify("Copied Discord invite to clipboard")
end
local function worker9()
    while not Library.Unloaded do
        task.wait(2)
        if g0("AntiAfk") then
            local lt = tick() - hI
            local lu = tick() - hE
            if lt >= 300 and lu >= 60 then
                pcall(he)
            else
                if lt < 300 and lu >= 300 then
                    pcall(he)
                end
            end
        end
    end
end
local function fn343(cm, cn)
    local j9 = hc(cm)
    local ka = j9 ~= nil and j9:FindFirstChild(cn) ~= nil
    return ka
end
local function onUnload()
    Library:Unload()
end
local function fn366()
    local iK = hf()
    local iL = iK and iK:FindFirstChildOfClass("Humanoid")
    return iL
end
local function fn377()
    local jM_1
    local jL_1
    jL_1, jM_1 = hA()
    if not jM_1 then
        return
    end
    hv = true
    hB = jM_1
end
local function fn379()
    table.clear(hs)
    table.clear(hn)
    table.clear(hj)
    local iV = Worlds.GetGiveWins()
    if not iV then
        return
    end
    for i, child in iV:GetChildren() do
        local attr = child:GetAttribute("WinAmount")
        local iW = typeof(attr) == "number" and child:GetAttribute("DoubleWinsProduct") ~= true
        if iW then
            hs[#hs + 1] = { Name = child.Name, Amount = attr }
        end
    end
    table.sort(hs, function(a3, a4)
        return a3.Amount < a4.Amount
    end)
    for i, v in ipairs(hs) do
        local iV_2 = string.format("%s Wins (%s)", hM(v.Amount), v.Name)
        v.Label = iV_2
        hn[#hn + 1] = iV_2
        hj[iV_2] = v
    end
end
local function fn399(ad, ae)
    return string.format('<font color="%s">%s</font>', ae, ad)
end
local function fn442(ap)
    local iB = string.format("%d", ap)
    local iB_1
    local iC = iB
    repeat
        iC, iB_1 = iC:gsub("^(-?%d+)(%d%d%d)", "%1,%2")
    until iB_1 == 0
    return iC
end
local function fn452()
    local jE_1
    local jD_1
    jE_1, jD_1 = gY()
    if not jE_1 or not jD_1 then
        return
    end
    hv = false
    hB = jD_1
    RequestWin:FireServer(jE_1)
end
local function onHeartbeat()
    if not hB then
        return
    end
    local iN = hf()
    if not iN then
        return
    end
    local iO = hv and (iN:GetPivot().Position - hB.Position).Magnitude < 8
    if iO then
        return
    end
    iN:PivotTo(hB)
end
local function fn466()
    return hJ.Data
end
local function fn493(bv)
    local jl = hh[bv.Name]
    if jl then
        local OwnedTreadmills = hm().OwnedTreadmills
        local jn = typeof(OwnedTreadmills) == "table" and OwnedTreadmills[jl] == true
        return jn
    end
    local jl_1 = gV(bv)
    if typeof(jl_1) ~= "number" then
        return false
    end
    local jm_2 = hm().Rebirths or 0
    return jm_2 >= jl_1
end
local function fn503(bn)
    local GUI = bn:FindFirstChild("GUI")
    local je = GUI and GUI:FindFirstChild("RebirthText", true)
    local jf = je
    if je then
        je = jf:IsA("TextLabel")
    end
    if je then
        local je_1 = tonumber(jf.Text:match("(%d+)%s*Rebirth"))
        local Name = bn.Name
        local jg = je_1 or false
        g1[Name] = jg
    elseif GUI then
        g1[bn.Name] = 0
    end
    return g1[bn.Name]
end
local function onInputChanged(d_)
    local UserInputType = d_.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        hI = tick()
    end
end
local function worker4()
    while not Library.Unloaded do
        if g0("AutoRebirth") then
            pcall(hC)
        end
        task.wait(2)
    end
end
local function fn545()
    local kz_1
    local ky_1
    local kx_1
    kx_1, ky_1, kz_1 = pcall(function()
        return ItemShopRequest:InvokeServer("GetStock")
    end)
    local kA = not kx_1 or ky_1 ~= true or typeof(kz_1) ~= "table"
    if kA then
        return
    end
    local ky_2 = kz_1.Items or {}
    for i, v in ipairs(ky_2) do
        local ky_3 = v.Count or 0
        local kx_4 = Items.GetWinPrice(v.ItemId)
        local kz_2 = ky_3 > 0 and typeof(kx_4) == "number"
        if kz_2 then
            local ky_4 = hm().Wins or 0
            kz_2 = ky_4 >= kx_4
        end
        if kz_2 then
            ItemShopRequest:InvokeServer("BuyWins", v.Slot, v.ItemId)
            task.wait(0.2)
        end
    end
end
local function fn547(cj)
    return LocalPlayer:FindFirstChild(cj)
end
local function worker8()
    while not Library.Unloaded do
        if g0("AutoEquipBestItems") then
            pcall(function()
                ItemAction:FireServer("EquipBest")
            end)
        end
        task.wait(3)
    end
end
local function fn595()
    local jV = hm()
    local jW = Worlds.GetCurrent()
    local jX_1 = jW and jW.Id or 1
    local jW_2 = Shoes.GetNextUnlockableShoeName(jV.OwnedShoes, jX_1)
    if not jW_2 then
        return
    end
    local jX_2 = Shoes.GetWinsCost(jW_2)
    local jY = typeof(jX_2) ~= "number"
    local j8 = if jY then 1 else 0
    local j6 = 2689 * j8 + 1624 * (1 - j8)
    local j7 = 703 * j8 + 3015 * (1 - j8)
    if not ((j6 * 2398 + j7 * 950 + j6 * j7) % 16777213 == 9006439) then
        local jZ = jV.Wins
        local j5 = if jZ then 1 else 0
        local j3 = 3611 * j5 + 3458 * (1 - j5)
        local j4 = 1854 * j5 + 2003 * (1 - j5)
        if not ((j3 * 583 + j4 * 3342 + j3 * j4) % 16777213 == 14996075) then
            jZ = 0
        end
        jY = jZ < jX_2
    end
    if jY then
        return
    end
    Shoe.Unlock:FireServer(jW_2)
end
local function fn599(c9)
    local DiscordGroup = c9:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = gZ })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = gZ })
end
local function fn609(S, T)
    local ix = Options[S]
    if ix == nil or ix.Value == nil then
        return T
    end
    return ix.Value
end
local function fn611(aM, aN)
    local iQ = aN and aN:IsA("BasePart")
    if iQ then
        local Position = aN.Position
        return CFrame.new(Position.X, Position.Y + aN.Size.Y / 2 + 3.5, Position.Z)
    end
    local Position = aM:GetPivot().Position
    return CFrame.new(Position.X, Position.Y + 4, Position.Z)
end
local function worker()
    local kW_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local kV = math.floor(os.clock() - hl)
        if kV < 60 then
            kW_1 = kV .. "s"
        elseif kV < 3600 then
            kW_1 = string.format("%dm %ds", kV // 60, kV % 60)
        else
            kW_1 = string.format("%dh %dm", kV // 3600, kV % 3600 // 60)
        end
        gU:SetText(hu("Session time", kW_1, gW))
    end
end
local function fn655()
    Library.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
local function fn668(cs)
    local kc = hc(cs)
    local kd = kc and kc:FindFirstChild("Equipped")
    local kc_1 = kd
    if kd then
        kd = kc_1:IsA("StringValue")
    end
    if kd then
        return kc_1.Value
    end
    return ""
end
local function fn692()
    local kM_1
    local kL_1
    if identifyexecutor then
        kM_1, kL_1 = identifyexecutor()
        local kN = kM_1 ~= ""
        local kO = type(kM_1) == "string" and kN
        if kO then
            local kN_1 = type(kL_1) == "string" and kL_1 ~= "" and kM_1 .. " " .. kL_1
            local kL_2 = kN_1
            local kS = if kL_2 then 1 else 0
            local kQ = 3922 * kS + 1602 * (1 - kS)
            local kR = 746 * kS + 1963 * (1 - kS)
            if not ((kQ * 1771 + kR * 681 + kQ * kR) % 16777213 == 10379700) then
                kL_2 = kM_1
            end
            ht = kL_2
        end
    end
end
Rebirth = nil
gQ = nil
gR = nil
TrailAction = nil
gT = nil
gU = nil
gV = nil
gW = nil
gX = nil
gY = nil
gZ = nil
Shoe = nil
g0 = nil
g1 = nil
connection = nil
g3 = nil
Request = nil
g5 = nil
Options = nil
AuraConfigurations = nil
g8 = nil
g9 = nil
RequestWin = nil
Toggles = nil
hc = nil
TrailConfigurations = nil
he = nil
hf = nil
hg = nil
hh = nil
hi = nil
hj = nil
Items = nil
hl = nil
hm = nil
hn = nil
connection3 = nil
Shoes = nil
hq = nil
LocalPlayer = nil
hs = nil
ht = nil
hu = nil
hv = nil
Worlds = nil
hx = nil
VirtualUser = nil
Library = nil
hA = nil
hB = nil
hC = nil
hD = nil
hE = nil
UserInputService = nil
hG = nil
ItemShopRequest = nil
hI = nil
hJ = nil
hK = nil
ItemAction = nil
hM = nil
connection2 = nil
AuraAction = nil
hP = nil
local h1_1
local hV_1, GameInfoGroup
UserInputService, VirtualUser, LocalPlayer = nil, nil, nil
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
LocalPlayer = Players.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
RequestWin, Request, Shoe, TrailAction, AuraAction, ItemAction, ItemShopRequest, Worlds, Shoes, Items, TrailConfigurations, AuraConfigurations, Rebirth, hJ, Library, Toggles, Options, g9, g3, h1_1, gW, hB, hv, connection, hs, hn, hj, hh, g0, hD, gZ, hK, hu, hM, hm, hf, gR, gX, hV_1, gY = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local h2 = "+1 Backflip Keyboard Escape"
local Events = ReplicatedStorage:WaitForChild("Events")
local hU_1
RequestWin = Events:WaitForChild("WinButtons"):WaitForChild("RequestWin")
Request = Events:WaitForChild("Rebirth"):WaitForChild("Request")
Shoe = Events:WaitForChild("Shoe")
TrailAction = Events:WaitForChild("TrailAction")
AuraAction = Events:WaitForChild("AuraAction")
ItemAction = Events:WaitForChild("ItemAction")
ItemShopRequest = Events:WaitForChild("ItemShopRequest")
local Config = ReplicatedStorage:WaitForChild("Config")
local hX_3
Worlds = require(Config:WaitForChild("Worlds"))
Shoes = require(Config:WaitForChild("Shoes"))
Items = require(Config:WaitForChild("Items"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
TrailConfigurations = require(Modules:WaitForChild("TrailConfigurations"))
AuraConfigurations = require(Modules:WaitForChild("AuraConfigurations"))
local ProductConfigurations = require(Modules:WaitForChild("ProductConfigurations"))
local Utility = ReplicatedStorage:WaitForChild("Utility")
Rebirth = require(Utility:WaitForChild("Rebirth"))
local PlayerData = require(Utility:WaitForChild("PlayerData"))
hJ = PlayerData.GetLocalPlayerReplicaWait()
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
pcall(fn655)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
g0 = fn65
hD = fn609
g9 = "https://discord.gg/ehKVq7pf7v"
if ("#7fd47f" or h1_1 and hV_1) and (not hV_1 and not hV_1 and (not g3 and not g3)) and not (("#7fd47f" or h1_1 and hV_1) and (not hV_1 and not hV_1 and (not g3 and not g3))) then
    gZ = "https://rscripts.net/@Ouroboros"
    g3 = fn324
else
    g3 = "https://rscripts.net/@Ouroboros"
    gZ = fn324
end
hK = fn399
hu = fn21
local h1_2 = "#7fd47f"
local h0 = "#6ec1ff"
gW = "#e8a34d"
local h3 = "#8b93a3"
hM = fn442
hm = fn466
hf = fn236
gR = fn366
hB = nil
hv = false
connection = RunService.Heartbeat:Connect(onHeartbeat)
gX = fn611
hs = {}
hn = {}
hj = {}
fn379()
gY = fn163
hh = {}
for k, v in pairs(ProductConfigurations.TreadmillProducts) do
    if typeof(v.ModelName) == "string" then
        hh[v.ModelName] = k
    end
end
g1, gV, hi, hA, hG, g5, hC, g8, hc, gT, hq, gQ, hx, hg = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (not gQ or not hc) and (not hc and not gQ) and ((not gQ or not gQ) and (not gQ or not gQ)) or not ((not gQ or not hc) and (not hc and not gQ) and ((not gQ or not gQ) and (not gQ or not gQ))) then
    g1 = {}
    gV = fn503
else
    gV = {}
    g1 = fn503
end
hi = fn493
hA = fn218
hG = fn452
g5 = fn377
hC = fn82
g8 = fn595
hc = fn547
gT = fn343
hq = fn668
gQ = fn89
hx = fn220
hg = fn545
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = g9, Copyable = true }, "|", h2 },
    Icon = 12645376577,
    NotifySide = "Right",
    Size = UDim2.fromOffset(900, 640),
    ShowCustomCursor = false,
    CornerRadius = 10
})
local ItemsGroup
Library.ShowCustomCursor = false
local hT_1 = {
    Info = Window:AddTab("Info", "info"),
    Farm = Window:AddTab("Farm", "gamepad-2"),
    Shop = Window:AddTab("Shop", "shopping-cart"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in hT_1 do
    fn599(v)
end
ht, GameInfoGroup, gU, hP, hU_1 = nil, nil, nil, nil, nil
local hR_1 = 10
repeat
    local hS_2 = (hR_1 * 2 + 1) % 3 + 1
    if hS_2 <= 2 then
        if hS_2 <= 1 then
            local hS_3 = (vector.create((hR_1 * 2 + 7) % 11 + 1, (hR_1 * 9 + 6) % 13 + 1, (hR_1 * 12 + 13) % 17 + 1))
            local hW_1 = (vector.create((hR_1 * 3 + 9) % 11 + 1, (hR_1 * 8 + 13) % 13 + 1, (hR_1 * 2 + 4) % 17 + 1))
            local hX_1 = (vector.create((hR_1 * 3 + 2) % 11 + 1, (hR_1 * 11 + 13) % 13 + 1, (hR_1 * 14 + 11) % 17 + 1))
            local hY_1 = (vector.create((hR_1 * 1 + 7) % 5 + 1, (hR_1 * 4 + 7) % 7 + 1, (hR_1 * 2 + 5) % 9 + 1))
            if vector.dot(vector.cross(hS_3, (vector.cross(hW_1, hX_1))), hY_1) == vector.dot(hW_1 * vector.dot(hS_3, hX_1) - hX_1 * vector.dot(hS_3, hW_1), hY_1) then
                ht = "Unknown"
                pcall(fn692)
                local AccountGroup = hT_1.Info:AddLeftGroupbox("Account", "circle-user")
                AccountGroup:AddLabel(hu("User", LocalPlayer.Name, h1_2), true)
                AccountGroup:AddLabel(hu("Status", "Keyless", h1_2), true)
                AccountGroup:AddLabel(hu("Executor", ht, h1_2), true)
                GameInfoGroup = hT_1.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                GameInfoGroup:AddLabel(hK(h2 .. " [" .. tostring(game.PlaceId) .. "]", h0), true)
                GameInfoGroup:AddLabel(hu("Place ID", tostring(game.PlaceId), h0), true)
                gU = GameInfoGroup:AddLabel(hu("Session time", "0s", gW), true)
            else
                hT_1 = "Unknown"
                pcall(fn692)
                hK = GameInfoGroup.Info:AddLeftGroupbox("Account", "circle-user")
                hK:AddLabel(LocalPlayer("User", nil, ht), true)
                hK:AddLabel(LocalPlayer("Status", "Keyless", ht), true)
                hK:AddLabel(LocalPlayer("Executor", "Unknown", ht), true)
                h0 = GameInfoGroup.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                h0:AddLabel(gW(gU .. " [" .. tostring(game.PlaceId) .. "]", hu), true)
                h0:AddLabel(LocalPlayer("Place ID", tostring(game.PlaceId), hu), true)
                h0:AddLabel(LocalPlayer("Session time", "0s", h2), true)
            end
            hR_1 = (hR_1 + 5) % 12
        else
            if (hR_1 * 1 + 1) * 13 % 4 == ((hR_1 * 1 + 1) * 13 + 12) % 4 then
                hP = tostring(game.JobId)
            else
                gU = tostring(game.JobId)
            end
            hR_1 = (hR_1 + 8) % 12
        end
    else
        local hS_4 = (vector.create((hR_1 * 1 + 6) % 11 + 1, (hR_1 * 2 + 2) % 13 + 1, (hR_1 * 11 + 17) % 17 + 1))
        local hW_2 = (vector.create((hR_1 * 5 + 3) % 11 + 1, (hR_1 * 8 + 2) % 13 + 1, (hR_1 * 8 + 14) % 17 + 1))
        local lX = vector.cross(hS_4, hW_2)
        local lY = vector.dot(hS_4, hW_2)
        if vector.dot(lX, lX) + lY * lY == vector.dot(hS_4, hS_4) * vector.dot(hW_2, hW_2) + 5 then
            hP = #hU_1 > 18
        else
            hU_1 = #hP > 18
        end
        hR_1 = (hR_1 + 2) % 12
    end
until (hR_1 * 7 + 2) % 12 == 9
if hU_1 then
    local hQ_3 = 5
    repeat
        local hR_2 = {
            "fgidjqojad",
            "tde",
            "zmydkznt",
            "rzfyfuklsh",
            "nawgtam",
            "dljj",
            "uktzvcioae",
            "rthbvy",
            "evpckv",
            "aaxielqdkbtu",
            "lxcnfzfy",
            "fzqxfkjxb",
            "rwngr",
            "ofqdmmh",
            "izgoahvq"
        }
        if hR_2[(hQ_3 * 39 + 92) % 15 + 1] < hR_2[(hQ_3 * 39 + 92) % 15 + 1] then
            hP = string.sub(hU_1, 1, 18) .. "..."
        else
            hU_1 = string.sub(hP, 1, 18) .. "..."
        end
        hQ_3 = (hQ_3 + 5) % 8
    until (hQ_3 * 3 + 7) % 8 == 5
end
local hQ_4 = hU_1 or hP
hl = nil
GameInfoGroup:AddLabel(hu("Server", hQ_4, h3), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
hl = os.clock()
task.spawn(worker)
local ScriptsGroup = hT_1.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(hK("Included in this hub", h3), true)
ScriptsGroup:AddLabel(hK(h2, h0), true)
local FeaturesGroup = hT_1.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(hK("Auto Farm Wins", h0), true)
FeaturesGroup:AddLabel(hK("Auto Treadmill", gW), true)
FeaturesGroup:AddLabel(hK("Auto Rebirth", h1_2), true)
FeaturesGroup:AddLabel(hK("Auto Buy", h3), true)
FeaturesGroup:AddLabel(hK("Auto Equip", h0), true)
local SocialsGroup = hT_1.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = gZ })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = hT_1.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = gZ })
local FaqGroup = hT_1.Info:AddRightGroupbox("FAQ", "circle-help")
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
local h__1 = hT_1.Farm:AddLeftGroupbox("Wins", "trophy")
h__1:AddToggle("AutoFarmWins", { Text = "Auto Farm Wins", Default = false })
local hQ_5 = hn[1] or ""
ItemsGroup, hX_3, hI, hE, connection2, connection3, he = nil, nil, nil, nil, nil, nil, nil
h__1:AddDropdown("WinAmount", { Values = hn, Default = hQ_5, Searchable = true, Text = "Win Amount" })
h__1:AddSlider("WinDelay", { Text = "Win Delay", Default = 0.55, Min = 0.3, Max = 3, Rounding = 2 })
local TrainingGroup = hT_1.Farm:AddRightGroupbox("Training", "footprints")
TrainingGroup:AddToggle("AutoTreadmill", { Text = "Auto Treadmill", Default = false })
TrainingGroup:AddToggle("AutoJump", { Text = "Auto Jump", Default = false })
TrainingGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local ShoesGroup = hT_1.Shop:AddLeftGroupbox("Shoes", "footprints")
if ((hI or not hX_3) and (hX_3 and hX_3) and (not hX_3 or not hI or hX_3 and hX_3) or (hX_3 and hI or hI and hX_3) and ((not hX_3 or not hI) and (not hI or not hX_3))) and not ((hI or not hX_3) and (hX_3 and hX_3) and (not hX_3 or not hI or hX_3 and hX_3) or (hX_3 and hI or hI and hX_3) and ((not hX_3 or not hI) and (not hI or not hX_3))) then
    ItemsGroup:AddToggle("AutoBuyShoes", { Text = "Auto Buy Shoes", Default = false })
    hT_1 = ShoesGroup.Shop:AddLeftGroupbox("Items", "backpack")
else
    ShoesGroup:AddToggle("AutoBuyShoes", { Text = "Auto Buy Shoes", Default = false })
    ItemsGroup = hT_1.Shop:AddLeftGroupbox("Items", "backpack")
end
ItemsGroup:AddToggle("AutoBuyItemShop", { Text = "Auto Buy Item Shop", Default = false })
ItemsGroup:AddToggle("AutoEquipBestItems", { Text = "Auto Equip Best Items", Default = false })
local CosmeticsGroup = hT_1.Shop:AddRightGroupbox("Cosmetics", "sparkles")
CosmeticsGroup:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
CosmeticsGroup:AddToggle("AutoBuyAuras", { Text = "Auto Buy Auras", Default = false })
local MenuGroup = hT_1.Settings:AddLeftGroupbox("Menu", "wrench")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
hI = tick()
hE = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local k7 = v
        pcall(function()
            k7:Disable()
        end)
    end
end)
he = fn213
connection2 = UserInputService.InputBegan:Connect(onInputBegan)
connection3 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
Library.ToggleKeybind = Options.MenuKeybind
Library:OnUnload(fn318)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/Plus1BackflipKeyboardEscape")
SaveManager:BuildConfigSection(hT_1.Settings)
ThemeManager:ApplyToTab(hT_1.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(worker6)
task.spawn(worker7)
task.spawn(worker8)
task.spawn(worker9)
Library:Notify("+1 Backflip Keyboard Escape loaded")
