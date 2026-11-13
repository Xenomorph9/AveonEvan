local iu
local jb
local iT
local iA
local SellAll
local Stacks
local im
local i4
local LocalPlayer
local it
local Label
local HttpService
local ClientState
local VirtualUser
local iF
local il
local connection
local iL
local is
local i9
local iR
local Library
local iX
local iE
local Options
local SellItem
local iK
local SaveManager
local i8
local ItemDB
local ix
local je
local Constants
local connection2
local ij
local UserInputService
local CoinDB
local iq
local BuyCoin
local iP
local iw
local Toggles
local iV
local CurrentCamera
local ThrowCoin
local i0
local iI
local ip
local i6
local iO
local BuyUpgrade
local EquipBest
local iB
local i_
local iH
local io
local i5
local CollectPad
local function fn1(cl)
    for i, child in cl:GetChildren() do
        local Collect = child:FindFirstChild("Collect")
        if Collect then
            local Hitbox = Collect:FindFirstChild("Hitbox")
            if Hitbox then
                return Hitbox
            end
        end
    end
    return nil
end
local function onCopyUSDTAddress()
    iE(je, "Copied USDT address")
end
local function onRenderStepped(dN)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local mx_1 = iB()
        if mx_1 then
            mx_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local mx_3 = ij()
        local my = iB()
        if mx_3 and my then
            my.PlatformStand = true
            local my_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                my_1 = my_1 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                my_1 = my_1 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                my_1 = my_1 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                my_1 = my_1 + CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                my_1 = my_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                my_1 = my_1 - Vector3.new(0, 1, 0)
            end
            mx_3.Velocity = Vector3.zero
            if my_1.Magnitude > 0 then
                mx_3.CFrame = mx_3.CFrame + my_1.Unit * Options.FlySpeed.Value * dN
            end
        end
    end
end
local function fn33()
    local kI_1
    local kH_1
    if identifyexecutor then
        kI_1, kH_1 = identifyexecutor()
        local kJ = kI_1 ~= ""
        local kK = type(kI_1) == "string" and kJ
        if kK then
            local kJ_1 = type(kH_1) == "string" and kH_1 ~= "" and kI_1 .. " " .. kH_1
            iH = kJ_1 or kI_1
        end
    end
end
local function fn47()
    local ls = il()
    if not ls then
        return
    end
    local lt = ls.valueLevel or 0
    local lt_1 = iK(Constants.VALUE_UPGRADE, lt)
    if i6() >= lt_1 then
        iI(BuyUpgrade, "value")
    end
end
local function fn54()
    iI(EquipBest)
end
local function onCopyEthereumAddress()
    iE(io, "Copied Ethereum address")
end
local function onCopyPayPalLink()
    iE(i8, "Copied PayPal link")
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local mZ = tick() - iX
            local m_ = tick() - iR
            if mZ >= 300 and m_ >= 60 then
                pcall(iu)
            else
                if mZ < 300 and m_ >= 300 then
                    pcall(iu)
                end
            end
        end
    end
end
local function fn118()
    local k0 = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("Bases")
    if not k0 then
        return nil
    end
    for i, child in k0:GetChildren() do
        if child:GetAttribute("OwnerUserId") == LocalPlayer.UserId then
            return child
        end
    end
    return nil
end
local function onCopyVenmoLink()
    iE(i0, "Copied Venmo link")
end
local function fn127()
    ClientState = require(LocalPlayer:WaitForChild("PlayerScripts").Client.ClientState)
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local mh_1 = iL()
        if mh_1 then
            for i, descendant in ipairs(mh_1:GetDescendants()) do
                local mh_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if mh_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn145(aM, aN)
    return string.format('<font color="%s">%s</font>', aN, aM)
end
local function onCopyJoinScript_JobID()
    local kS = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, i5)
    if setclipboard then
        setclipboard(kS)
    elseif toclipboard then
        toclipboard(kS)
    end
    Library:Notify("Copied join script to clipboard")
end
local function onCopySolanaAddress()
    iE(jb, "Copied Solana address")
end
local function onRscripts()
    if setclipboard then
        setclipboard(i4)
    elseif toclipboard then
        toclipboard(i4)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
local function fn230()
    local nd = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local ne = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if ne then
                local ne_1 = iO(k, v)
                if ne_1 then
                    nd[#nd + 1] = ne_1
                end
            end
        end
    end
    table.sort(nd, function(e9, fa)
        if e9.type ~= fa.type then
            return e9.type < fa.type
        end
        return e9.idx < fa.idx
    end)
    return { objects = nd }
end
local function onInputChanged(ev)
    local UserInputType = ev.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        iX = tick()
    end
end
local function fn288(eP, eQ)
    local m3 = eP == "Toggle" and Toggles
    local m8 = if m3 then 1 else 0
    local m6 = 2217 * m8 + 3917 * (1 - m8)
    local m7 = 1152 * m8 + 2530 * (1 - m8)
    if not ((m6 * 1041 + m7 * 294 + m6 * m7) % 16777213 == 5200569) then
        m3 = Options
    end
    local m3_1 = m3[eQ]
    local m2_2 = type(m3_1) == "table" and m3_1.Type == eP
    return m2_2 and m3_1 or nil
end
local function fn296(au)
    local DiscordGroup = au:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = ip })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = ip })
end
local function onUnload()
    Library:Unload()
end
local function fn332()
    i_(Toggles.AntiGameplayPause.Value)
end
local function fn357()
    local ll = ij()
    if not ll then
        return
    end
    local lm = iP()
    if not lm then
        return
    end
    local ln = im(lm)
    if not ln then
        return
    end
    local CFrame = ll.CFrame
    ll.CFrame = ln.CFrame + Vector3.new(0, 3, 0)
    task.wait(0.15)
    iI(CollectPad)
    task.wait(0.1)
    ll.CFrame = CFrame
end
local function fn372()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    iR = tick()
end
local function fn377()
    local kE = iL()
    local kF = kE and kE:FindFirstChild("HumanoidRootPart")
    return kF
end
local function onExportConfigToClipboard()
    local nB_1
    local nA_1
    nA_1, nB_1 = pcall(HttpService.JSONEncode, HttpService, ix())
    if not nA_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local nA_2 = setclipboard or toclipboard
    local nA_3 = type(nA_2) ~= "function" or not pcall(nA_2, nB_1)
    if nA_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function fn392()
    iE(i9, "Copied Discord invite to clipboard")
end
local function fn397()
    local lp = il()
    if not lp then
        return
    end
    local lq = lp.luckLevel or 0
    local lq_1 = iK(Constants.LUCK_UPGRADE, lq)
    if i6() >= lq_1 then
        iI(BuyUpgrade, "luck")
    end
end
local function onImportConfigFromClipboardTex()
    local nG_1
    local nE = Options.SaveManager_ImportSource.Value
    local nE_1
    local nK = if nE then 1 else 0
    local nI = 4024 * nK + 1810 * (1 - nK)
    local nJ = 459 * nK + 3676 * (1 - nK)
    if not ((nI * 3143 + nJ * 3452 + nI * nJ) % 16777213 == 16078916) then
        nE = ""
    end
    local nF = tostring(nE):match("^%s*(.-)%s*$")
    if nF == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    nE_1, nG_1 = pcall(HttpService.JSONDecode, HttpService, nF)
    local nF_1 = not nE_1
    local nQ = if nF_1 then 1 else 0
    local nO = 689 * nQ + 3416 * (1 - nQ)
    local nP = 619 * nQ + 2532 * (1 - nQ)
    if not ((nO * 875 + nP * 2915 + nO * nP) % 16777213 == 2833751) then
        nF_1 = type(nG_1) ~= "table"
    end
    if not nF_1 then
        nF_1 = type(nG_1.objects) ~= "table"
    end
    if nF_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local nE_2 = 0
    for i, v in ipairs(nG_1.objects) do
        if iq(v) then
            nE_2 += 1
        end
    end
    if nE_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local nG_2 = nE_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(nE_2, nG_2), 6)
end
local function fn472()
    iI(ThrowCoin, 1)
end
local function onCopyBitcoinAddress()
    iE(is, "Copied Bitcoin address")
end
local function fn554()
    local lv = il()
    if not lv then
        return
    end
    local lw = i6()
    local lx = -1
    local ly
    local lA = CoinDB.List or {}
    for k, v in lA do
        if v.price <= lw and not v.robuxOnly then
            if not lv.ownedCoins or not lv.ownedCoins[v.id] then
                if (v.luck or 0) > lx then
                    lx = v.luck or 0
                    ly = v
                end
            end
        end
    end
    if ly then
        iI(BuyCoin, ly.id)
    end
end
local function onInputBegan()
    iX = tick()
end
local function fn578()
    connection:Disconnect()
    connection2:Disconnect()
    i_(false)
    print("Unloaded!")
end
local function fn580()
    local kB = iL()
    local kC = kB and kB:FindFirstChildOfClass("Humanoid")
    return kC
end
local function worker()
    local kV_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local kU = math.floor(os.clock() - iA)
        if kU < 60 then
            kV_1 = kU .. "s"
        elseif kU < 3600 then
            kV_1 = string.format("%dm %ds", kU // 60, kU % 60)
        else
            kV_1 = string.format("%dh %dm", kU // 3600, kU % 3600 // 60)
        end
        Label:SetText(it("Session time", kV_1, iT))
    end
end
local function fn626()
    iI(ThrowCoin, 1)
end
local function fn652()
    return LocalPlayer.Character
end
local function fn660()
    if not Toggles.WalkSpeedEnabled.Value then
        local mG = iB()
        if mG then
            mG.WalkSpeed = 16
        end
    end
end
local function fn712(Z, aa)
    if Z.tiers then
        local ki_1 = 0
        local kj_1 = 0
        for k, v in Z.tiers do
            local kk_1 = v.levelMax - ki_1
            if aa < v.levelMax then
                local km = kk_1 - (aa - ki_1)
                local kx = 1
                while kx <= km do
                    local ky = kx
                    local floor = math.floor
                    local baseCost = Z.baseCost
                    local km_1 = v.growth or 1
                    kj_1 = kj_1 + floor(baseCost * km_1 ^ (ki_1 + ky))
                    kx += 1
                end
                return kj_1
            end
            ki_1 = v.levelMax
        end
        return math.huge
    end
    local floor = math.floor
    local baseCost = Z.baseCost
    local kk_3 = Z.growth or 1
    return floor(baseCost * kk_3 ^ aa)
end
local function fn722()
    if not Toggles.Fly.Value then
        local mE = iB()
        if mE then
            mE.PlatformStand = false
        end
    end
end
local function fn739()
    local kf = il()
    local kg = kf and tonumber(kf.money)
    return kg or 0
end
local function fn747()
    if ClientState and ClientState.Data then
        return ClientState.Data
    end
    return nil
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            i_(true)
        end
    end
end
local function fn768(eX, eY)
    local Type = eY.Type
    if Type == "Toggle" then
        return { idx = eX, type = "Toggle", value = eY.Value == true }
    elseif Type == "Slider" then
        return { idx = eX, type = "Slider", value = tostring(eY.Value) }
    elseif Type == "Dropdown" then
        return { idx = eX, type = "Dropdown", multi = eY.Multi == true, value = eY.Value }
    elseif Type == "Input" then
        local na = eY.Value or ""
        return { idx = eX, type = "Input", text = tostring(na) }
    elseif Type == "ColorPicker" then
        return { idx = eX, type = "ColorPicker", value = eY.Value:ToHex(), transparency = eY.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = eX,
            type = "KeyPicker",
            mode = eY.Mode,
            key = eY.Value,
            modifiers = eY.Modifiers,
            toggled = eY.Toggled
        }
    else
        return nil
    end
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local ms_1 = iB()
        if ms_1 then
            ms_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn787()
    local lR_1
    local lI = il()
    if not lI or not lI.stacks then
        return
    end
    local lJ_1 = {}
    for k, v in pairs(Options.AutoSellRarity.Value) do
        if v then
            local lK_1 = iV[k]
            if lK_1 then
                lJ_1[lK_1] = true
            end
        end
    end
    local Value2 = Options.AutoSellMinValue.Value
    local Value = Toggles.AutoSellMutated.Value
    local lM = next(lJ_1) ~= nil
    local lN = Value2 > 0
    local lP = lM or lN or Value
    local lP_1
    local lO_1 = {}
    for k, v in lI.stacks do
        lR_1, lP_1 = Stacks.Parse(k)
        if lR_1 then
            local lS = ItemDB.ById[lR_1]
            if lS then
                local lT = false
                if not lP then
                    lT = true
                else
                    if lM and lJ_1[lS.rarity] then
                        lT = true
                    end
                    if lN and (lS.income or 0) >= Value2 then
                        lT = true
                    end
                    if Value and lP_1 > 0 then
                        lT = true
                    end
                end
                if lT then
                    table.insert(lO_1, { key = k, id = lR_1, mut = lP_1, count = v })
                end
            end
        end
    end
    if #lO_1 == 0 then
        return
    end
    local lJ_2 = 0
    for k in lI.stacks do
        lJ_2 = lJ_2 + 1
    end
    if #lO_1 >= lJ_2 then
        iI(SellAll)
    else
        for k, v in lO_1 do
            iI(SellItem, v.id, v.mut, v.count)
            task.wait(0.1)
        end
    end
end
local function fn804(an, ao)
    if setclipboard then
        setclipboard(an)
    elseif toclipboard then
        toclipboard(an)
    end
    Library:Notify(ao)
end
local function fn828(aP, aQ, aR)
    return string.format("<b>%s</b> %s %s", aP, iF("-", "#5a6070"), iF(aQ, aR))
end
local function onCopyLitecoinAddress()
    iE(iw, "Copied Litecoin address")
end
ThrowCoin = nil
ij = nil
Options = nil
il = nil
im = nil
io = nil
ip = nil
iq = nil
SaveManager = nil
is = nil
it = nil
iu = nil
iw = nil
ix = nil
Library = nil
ClientState = nil
iA = nil
iB = nil
CurrentCamera = nil
connection2 = nil
iE = nil
iF = nil
Stacks = nil
iH = nil
iI = nil
CoinDB = nil
iK = nil
iL = nil
LocalPlayer = nil
CollectPad = nil
iO = nil
iP = nil
ItemDB = nil
iR = nil
HttpService = nil
iT = nil
EquipBest = nil
iV = nil
Constants = nil
iX = nil
VirtualUser = nil
SellAll = nil
i_ = nil
i0 = nil
UserInputService = nil
SellItem = nil
connection = nil
i4 = nil
i5 = nil
local iv
i6 = nil
BuyCoin = nil
i8 = nil
i9 = nil
Label = nil
jb = nil
BuyUpgrade = nil
Toggles = nil
je = nil
local StatUpgradesGroup
local jx_1
local jD_1
local jy_1
local jw_1
local jr_1
UserInputService, VirtualUser, HttpService, LocalPlayer, Library, SaveManager, Options, Toggles, i9, i4 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
LocalPlayer = Players.LocalPlayer
local jk = "Throw an Anime Coin!"
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Options = Library.Options
Toggles = Library.Toggles
if (not UserInputService or UserInputService or not i9 and not i9) and (not i9 and i4 or not i9 and i9) or ((not i4 or i4) and (not i9 and UserInputService) or (not UserInputService or not UserInputService) and (not UserInputService and i4)) or (not i9 or not i4) and (i4 or not i9) and (i4 and UserInputService or (not UserInputService or not i4)) and (i4 or i9 or UserInputService and i4 or (i9 or i4 or not UserInputService and not i4)) or not ((not UserInputService or UserInputService or not i9 and not i9) and (not i9 and i4 or not i9 and i9) or ((not i4 or i4) and (not i9 and UserInputService) or (not UserInputService or not UserInputService) and (not UserInputService and i4)) or (not i9 or not i4) and (i4 or not i9) and (i4 and UserInputService or (not UserInputService or not i4)) and (i4 or i9 or UserInputService and i4 or (i9 or i4 or not UserInputService and not i4))) then
    i9 = "https://discord.gg/ehKVq7pf7v"
    i4 = "https://rscripts.net/@Ouroboros"
else
    i4 = "https://discord.gg/ehKVq7pf7v"
    i9 = "https://rscripts.net/@Ouroboros"
end
if setthreadidentity then
    setthreadidentity(8)
end
Constants, ItemDB, CoinDB, Stacks, ClientState, ThrowCoin, BuyUpgrade, BuyCoin, SellItem, SellAll, EquipBest, CollectPad, iV, iI, il, i6, iK = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Modules = ReplicatedStorage:WaitForChild("Modules")
Constants = require(Modules.Constants)
ItemDB = require(Modules.ItemDB)
CoinDB = require(Modules.CoinDB)
Stacks = require(Modules.Stacks)
pcall(fn127)
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
ThrowCoin = Remotes:WaitForChild("ThrowCoin")
BuyUpgrade = Remotes:WaitForChild("BuyUpgrade")
BuyCoin = Remotes:WaitForChild("BuyCoin")
SellItem = Remotes:WaitForChild("SellItem")
SellAll = Remotes:WaitForChild("SellAll")
EquipBest = Remotes:WaitForChild("EquipBest")
CollectPad = Remotes:WaitForChild("CollectPad")
iI = function(N, ...)
    local O
    O = { ... }
    pcall(function()
        N:FireServer(unpack(O))
    end)
end
il = fn747
i6 = fn739
iK = fn712
local jm = {
    [1] = "Common",
    [2] = "Uncommon",
    [3] = "Rare",
    [4] = "Epic",
    [5] = "Legendary",
    [6] = "Mythic",
    [7] = "Secret",
    [8] = "Secret",
    [9] = "Secret",
    [10] = "Secret"
}
if (Remotes or BuyUpgrade or (Remotes or Remotes)) and (ClientState and ClientState or not ClientState and not Remotes) or (not BuyUpgrade or not ClientState or (not ClientState or BuyUpgrade)) and (Remotes and ClientState or Remotes and not ClientState) or not ((Remotes or BuyUpgrade or (Remotes or Remotes)) and (ClientState and ClientState or not ClientState and not Remotes) or (not BuyUpgrade or not ClientState or (not ClientState or BuyUpgrade)) and (Remotes and ClientState or Remotes and not ClientState)) then
    iV = {}
else
    il = {}
end
for k, v in jm do
    iV[v] = k
end
iE, ip, iL, iB, ij = nil, nil, nil, nil, nil
iE = fn804
ip = fn392
iL = fn652
iB = fn580
ij = fn377
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = i9, Copyable = true }, "|", jk },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
local ji_1 = {
    Info = Window:AddTab("Info", "info"),
    Farming = Window:AddTab("Farming", "tractor"),
    Inventory = Window:AddTab("Inventory", "package"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
ji_1.Throwing = ji_1.Farming:AddSubTab("Throwing", "crosshair")
ji_1.Collection = ji_1.Farming:AddSubTab("Collection", "archive")
ji_1.Upgrades = ji_1.Inventory:AddSubTab("Upgrades", "arrow-up")
ji_1.Shop = ji_1.Inventory:AddSubTab("Shop", "shopping-cart")
for i, v in ipairs({ ji_1.Throwing, ji_1.Collection, ji_1.Upgrades, ji_1.Shop, ji_1.Player, ji_1.Settings }) do
    fn296(v)
end
iT, iH, Label, i5, iF, it = nil, nil, nil, nil, nil, nil
iF = fn145
it = fn828
local jp = "#7fd47f"
local jo = "#6ec1ff"
iT = "#e8a34d"
local jn = "#8b93a3"
iH = "Unknown"
pcall(fn33)
local AccountGroup = ji_1.Info:AddLeftGroupbox("Account", "circle-user")
AccountGroup:AddLabel(it("User", LocalPlayer.Name, jp), true)
AccountGroup:AddLabel(it("Status", "Keyless", jp), true)
AccountGroup:AddLabel(it("Executor", iH, jp), true)
local GameInfoGroup = ji_1.Info:AddLeftGroupbox("Game Info", "gamepad-2")
GameInfoGroup:AddLabel(iF(jk .. " [" .. tostring(game.PlaceId) .. "]", jo), true)
GameInfoGroup:AddLabel(it("Place ID", tostring(game.PlaceId), jo), true)
Label = GameInfoGroup:AddLabel(it("Session time", "0s", iT), true)
i5 = tostring(game.JobId)
local jm_1 = #i5 > 18
if jm_1 then
    local jf_3 = 2
    repeat
        if (jf_3 * 2 + 5) * 13 % 3 == ((jf_3 * 2 + 5) * 13 + 7) % 3 then
            i5 = string.sub(jm_1, 1, 18) .. "..."
        else
            jm_1 = string.sub(i5, 1, 18) .. "..."
        end
        jf_3 = (jf_3 + 1) % 4
    until (jf_3 * 3 + 0) % 4 == 1
end
local jf_4 = jm_1 or i5
iA, iw, is, io, je, jb, i8, i0, jx_1, StatUpgradesGroup, jD_1, jy_1, jw_1, CurrentCamera, iX, iR, connection, connection2, jr_1, iP, im, i_, iu, iv, iO, ix, iq = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
GameInfoGroup:AddLabel(it("Server", jf_4, jn), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
iA = os.clock()
task.spawn(worker)
local ScriptsGroup = ji_1.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(iF("Included in this hub", jn), true)
ScriptsGroup:AddLabel(iF(jk, jo), true)
local FeaturesGroup = ji_1.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(iF("Auto Throw", jo), true)
FeaturesGroup:AddLabel(iF("Auto Collect Income", jp), true)
FeaturesGroup:AddLabel(iF("Auto Upgrades & Shop", iT), true)
FeaturesGroup:AddLabel(iF("Auto Sell", jn), true)
local SocialsGroup = ji_1.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = ip })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = ji_1.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = ip })
iw = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
is = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
io = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
je = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
if (jy_1 or iP) and (jy_1 and not FeaturesGroup) and (jy_1 or not iP or (FeaturesGroup or not FeaturesGroup)) and ((not FeaturesGroup or FeaturesGroup) and (not FeaturesGroup and not jy_1) or (not FeaturesGroup and not jy_1 or (iP or not jy_1))) and not ((jy_1 or iP) and (jy_1 and not FeaturesGroup) and (jy_1 or not iP or (FeaturesGroup or not FeaturesGroup)) and ((not FeaturesGroup or FeaturesGroup) and (not FeaturesGroup and not jy_1) or (not FeaturesGroup and not jy_1 or (iP or not jy_1)))) then
else
    jb = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
end
i8 = "https://paypal.me/TheTruckerGOD"
i0 = "https://venmo.com/u/miserablemusic"
local jF = "#345d9d"
local jB = "#f7931a"
if (false and (false or not jD_1) or (not jr_1 or not jD_1 or not jr_1 and jB)) and ((jD_1 or not jr_1) and (not jr_1 and jB) and "0xaE95A405D007a6F858E5d35714111B075fEFb40a") and not ((false and (false or not jD_1) or (not jr_1 or not jD_1 or not jr_1 and jB)) and ((jD_1 or not jr_1) and (not jr_1 and jB) and "0xaE95A405D007a6F858E5d35714111B075fEFb40a")) then
    io = "#627eea"
else
    jx_1 = "#627eea"
end
local ju = "#26a17b"
local jt = "#14f195"
local jm_2 = "#0070ba"
local jh_2 = "#008cff"
local DonationsGroup = ji_1.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(iF("All donations are optional but appreciated.", iT), true)
DonationsGroup:AddLabel(iF("If you donate you get a special role, just PING after you donate.", jp), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(iF("LTC / Litecoin", jF), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(iF("BTC / Bitcoin", jB), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(iF("ETH / Ethereum", jx_1), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(iF("USDT", ju), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(iF("Solana", jt), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(iF("PayPal", jm_2), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(iF("Venmo", jh_2), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(iF("Don't have any of the listed currencies but still wanna donate?", jn), true)
DonationsGroup:AddLabel(iF("DM me and we'll work something out.", jo), true)
local FaqGroup = ji_1.Info:AddRightGroupbox("FAQ", "circle-help")
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
local ThrowingGroup = ji_1.Throwing:AddLeftGroupbox("Throwing", "target")
ThrowingGroup:AddToggle("AutoThrow", { Text = "Auto Throw", Default = false })
ThrowingGroup:AddSlider("AutoThrowInterval", { Text = "Throw Interval", Default = 2, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
ThrowingGroup:AddToggle("PerfectThrow", { Text = "Perfect Throw", Default = false })
local IncomeGroup = ji_1.Collection:AddLeftGroupbox("Income", "coins")
if (ThrowingGroup and not DonationsGroup or (not jw_1 or jr_1)) and ((jw_1 or SocialsGroup) and (jw_1 and not ThrowingGroup)) and not ((ThrowingGroup and not DonationsGroup or (not jw_1 or jr_1)) and ((jw_1 or SocialsGroup) and (jw_1 and not ThrowingGroup))) then
    StatUpgradesGroup:AddToggle("AutoCollectIncome", { Text = "Auto Collect Income", Default = false })
    StatUpgradesGroup:AddSlider("AutoCollectIncomeInterval", { Suffix = "s", Rounding = 1, Min = 0.1, Max = 300, Text = "Collect Interval", Default = 10 })
    ji_1 = IncomeGroup.Upgrades:AddLeftGroupbox("Stat Upgrades", "bar-chart-2")
else
    IncomeGroup:AddToggle("AutoCollectIncome", { Text = "Auto Collect Income", Default = false })
    IncomeGroup:AddSlider("AutoCollectIncomeInterval", { Text = "Collect Interval", Default = 10, Min = 0.1, Max = 300, Rounding = 1, Suffix = "s" })
    StatUpgradesGroup = ji_1.Upgrades:AddLeftGroupbox("Stat Upgrades", "bar-chart-2")
end
StatUpgradesGroup:AddToggle("AutoUpgradeLuck", { Text = "Auto Upgrade Luck", Default = false })
StatUpgradesGroup:AddSlider("AutoUpgradeLuckInterval", { Text = "Upgrade Luck Interval", Default = 3, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
StatUpgradesGroup:AddToggle("AutoUpgradeValue", { Text = "Auto Upgrade Value", Default = false })
StatUpgradesGroup:AddSlider("AutoUpgradeValueInterval", { Text = "Upgrade Value Interval", Default = 3, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
local PurchasingGroup = ji_1.Shop:AddLeftGroupbox("Purchasing", "credit-card")
PurchasingGroup:AddToggle("AutoBuyBestCoin", { Text = "Auto Buy Best Coin", Default = false })
PurchasingGroup:AddSlider("AutoBuyBestCoinInterval", { Text = "Buy Interval", Default = 5, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
PurchasingGroup:AddToggle("AutoPlaceBestAnime", { Text = "Auto Place Best Anime", Default = false })
PurchasingGroup:AddSlider("AutoPlaceBestAnimeInterval", { Text = "Place Interval", Default = 3, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
local SellingGroup = ji_1.Shop:AddRightGroupbox("Selling", "tag")
SellingGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
SellingGroup:AddDropdown("AutoSellRarity", {
    Text = "Auto Sell By Rarity",
    Values = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Secret" },
    Default = {},
    Multi = true,
    SelectAllButtons = true
})
SellingGroup:AddSlider("AutoSellMinValue", { Text = "Min Income Threshold", Default = 0, Min = 0, Max = 10000, Rounding = 0 })
SellingGroup:AddToggle("AutoSellMutated", { Text = "Auto Sell Mutated Items", Default = false })
SellingGroup:AddSlider("AutoSellInterval", { Text = "Sell Interval", Default = 2, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
local function jv(bY, bZ, b_)
    Toggles[bY]:OnChanged(function()
        if not Toggles[bY].Value then
            return
        end
        task.spawn(function()
            while Toggles[bY].Value and not Library.Unloaded do
                pcall(b_)
                task.wait(math.max(Options[bZ].Value, 0.1))
            end
        end)
    end)
end
jv("AutoThrow", "AutoThrowInterval", fn472)
jv("PerfectThrow", "AutoThrowInterval", fn626)
iP = fn118
im = fn1
jv("AutoCollectIncome", "AutoCollectIncomeInterval", fn357)
jv("AutoUpgradeLuck", "AutoUpgradeLuckInterval", fn397)
jv("AutoUpgradeValue", "AutoUpgradeValueInterval", fn47)
jv("AutoBuyBestCoin", "AutoBuyBestCoinInterval", fn554)
jv("AutoPlaceBestAnime", "AutoPlaceBestAnimeInterval", fn54)
jv("AutoSell", "AutoSellInterval", fn787)
local MovementGroup = ji_1.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = ji_1.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn722)
Toggles.WalkSpeedEnabled:OnChanged(fn660)
i_ = function(d7)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not d7)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not d7
        end
    end)
    if not d7 then
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
Toggles.AntiGameplayPause:OnChanged(fn332)
task.spawn(antiGameplayPauseLoop)
local MenuGroup = ji_1.Settings:AddLeftGroupbox("Menu", "menu")
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
iX = tick()
iR = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local mT = v
        pcall(function()
            mT:Disable()
        end)
    end
end)
iu = fn372
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
task.spawn(antiAfkLoop)
Library:OnUnload(fn578)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Linoria")
ThemeManager:ApplyToTab(ji_1.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/ThrowAnAnimeCoin")
local jr_2 = SaveManager:BuildConfigSection(ji_1.Settings)
iv = fn288
iO = fn768
if (not FaqGroup or false) and (false or iP) and (jB and not FaqGroup or (false or iP)) and not ((not FaqGroup or false) and (false or iP) and (jB and not FaqGroup or (false or iP))) then
else
    ix = fn230
end
iq = function(fc)
    local nx
    nx = nil
    local ny = type(fc) ~= "table" or type(fc.idx) ~= "string" or type(fc.type) ~= "string" or SaveManager.Ignore[fc.idx]
    if ny then
        return false
    end
    nx = iv(fc.type, fc.idx)
    if not nx then
        return false
    end
    local ny_1 = pcall(function()
        if fc.type == "Input" then
            if type(fc.text) ~= "string" then
                return
            end
            nx:SetValue(fc.text)
        elseif fc.type == "ColorPicker" then
            nx:SetValueRGB(Color3.fromHex(fc.value), fc.transparency)
        elseif fc.type == "KeyPicker" then
            nx:SetValue({ fc.key, fc.mode, fc.modifiers })
            if fc.mode == "Toggle" and fc.toggled ~= nil then
                nx.Toggled = fc.toggled
                nx:Update()
            end
        else
            nx:SetValue(fc.value)
        end
    end)
    return ny_1
end
jr_2:AddDivider()
jr_2:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
jr_2:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
jr_2:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
