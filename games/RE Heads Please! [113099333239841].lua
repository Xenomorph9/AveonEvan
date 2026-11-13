local kA
local Data
local jV
local kg
local onBuyTicketsOnce
local kj
local onSpinOnce
local SaveManager
local kp
local kM
local ItemInventory
local Toggles
local CurrentCamera2
local j9
local onCraftOnce
local kw
local kz
local kc
local Workspace
local onCoinGachaOnce
local onAccessoryGachaOnce
local ki
local HttpService
local connection2
local kl
local VirtualUser
local j2
local kL
local ko
local Label
local kr
local j8
local onCoinShopOnce
local kb
local ky
local onRuinedUpgradeOnce
local kB
local jW
local kE
local kh
local kk
local kH
local SetNotifySide
local onUpgradeOnce
local Options
local onSellOnce
local kq
local j4
local UserInputService
local CoinInventory
local kQ
local kt
local connection
local kx
local function antiAfkLoop()
    while not j9.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local pk = tick() - kE
            local pl = tick() - kA
            if pk >= 300 and pl >= 60 then
                pcall(ko)
            else
                if pk < 300 and pl >= 300 then
                    pcall(ko)
                end
            end
        end
    end
end
local function fn10()
    j9.ScreenGui.Parent = kz:WaitForChild("PlayerGui")
end
local function onJumpRequest()
    if j9.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local oV_1 = kL()
        if oV_1 then
            oV_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn65()
    pcall(function()
        kg.Enchant:FireServer(1, {})
    end)
end
local function onRscripts()
    kH(kr, "Copied Rscripts profile to clipboard")
end
local function fn92(gh, gi)
    local pq_1 = (gh == "Toggle" and Toggles or Options)[gi]
    local pp_2 = type(pq_1) == "table" and pq_1.Type == gh
    return pp_2 and pq_1 or nil
end
local function fn99()
    kg.AccessoryGacha:FireServer("GetPity")
end
local function fn133()
    local pD = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local pE = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if pE then
                local pE_1 = kj(k, v)
                if pE_1 then
                    pD[#pD + 1] = pE_1
                end
            end
        end
    end
    table.sort(pD, function(gC, gD)
        if gC.type ~= gD.type then
            return gC.type < gD.type
        end
        return gC.idx < gD.idx
    end)
    return { objects = pD }
end
local function onRenderStepped(fz)
    if j9.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local o__1 = kL()
        if o__1 then
            o__1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local o__3 = ky()
        local o0 = kL()
        if o__3 and o0 then
            o0.PlatformStand = true
            local o0_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                o0_1 = o0_1 + CurrentCamera2.CFrame.LookVector
            end
            local o5 = if UserInputService:IsKeyDown(Enum.KeyCode.S) then 1 else 0
            if o5 == 1 then
                o0_1 = o0_1 - CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                o0_1 = o0_1 - CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                o0_1 = o0_1 + CurrentCamera2.CFrame.RightVector
            end
            local o5_1 = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
            if o5_1 == 1 then
                o0_1 = o0_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                o0_1 = o0_1 - Vector3.new(0, 1, 0)
            end
            o__3.AssemblyLinearVelocity = Vector3.zero
            if o0_1.Magnitude > 0 then
                o__3.CFrame = o__3.CFrame + o0_1.Unit * Options.FlySpeed.Value * fz
            end
        end
    end
end
local function fn140()
    if Toggles.AutoCoinGacha.Value then
        kb("CoinGacha", "Auto-ON")
    else
        kb("CoinGacha", "Auto-OFF")
    end
end
local function enchantDelayLoop()
    while not j9.Unloaded do
        if jW("AutoEnchant") then
            kl()
            task.wait(Options.EnchantDelay.Value)
        else
            task.wait(0.35)
        end
    end
end
local function onTeleportToAccessoryShop()
    kq(kk["Accessory Shop"])
end
local function worker()
    local n1_1
    while true do
        task.wait(1)
        if j9.Unloaded then
            break
        end
        local n0 = math.floor(os.clock() - kM)
        if n0 < 60 then
            n1_1 = n0 .. "s"
        elseif n0 < 3600 then
            n1_1 = string.format("%dm %ds", n0 // 60, n0 % 60)
        else
            n1_1 = string.format("%dh %dm", n0 // 3600, n0 % 3600 // 60)
        end
        Label:SetText(kh("Session time", n1_1, j4))
    end
end
local function fn196()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    kA = tick()
end
local function onUnload()
    j9:Unload()
end
local function fn213()
    if not Toggles.WalkSpeedEnabled.Value then
        local oI = kL()
        if oI then
            oI.WalkSpeed = 16
        end
    end
end
local function fn224()
    kg.CoinGacha:FireServer("GetPity")
end
local function fn236()
    local Character = kz.Character
    local l0 = Character and Character:FindFirstChild("HumanoidRootPart")
    return l0
end
local function fn248(ag, ah)
    if setclipboard then
        setclipboard(ag)
    elseif toclipboard then
        toclipboard(ag)
    end
    j9:Notify(ah)
end
local function upgradeDelayLoop()
    while not j9.Unloaded do
        if jW("AutoUpgrade") then
            onUpgradeOnce()
            task.wait(Options.UpgradeDelay.Value)
        else
            task.wait(0.35)
        end
    end
end
local function fn255(aM)
    local Character = kz.Character
    if not Character then
        return
    end
    local l3 = CFrame.new(aM)
    if Character.PrimaryPart then
        Character:PivotTo(l3)
    else
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
        if HumanoidRootPart then
            HumanoidRootPart.CFrame = l3
        end
    end
end
local function onStepped()
    if j9.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = kz.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local oK_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if oK_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function onInputChanged(eU)
    local UserInputType = eU.UserInputType
    local oj = UserInputType == Enum.UserInputType.MouseMovement
    local on = if oj then 1 else 0
    local ol = 2333 * on + 897 * (1 - on)
    local om = 3706 * on + 3702 * (1 - on)
    if not ((ol * 3795 + om * 1225 + ol * om) % 16777213 == 5262470) then
        oj = UserInputType == Enum.UserInputType.Gamepad1
    end
    if oj then
        kE = tick()
    end
end
local function craftDelayLoop()
    while not j9.Unloaded do
        if jW("AutoCraft") then
            onCraftOnce()
            task.wait(Options.CraftDelay.Value)
        else
            task.wait(0.35)
        end
    end
end
local function onRefreshCoinList()
    Options.EquipCoinName:SetValues(kQ())
    j9:Notify("Coin list refreshed")
end
local function fn308(aq, ar, as)
    return string.format("<b>%s</b> %s %s", aq, kp("-", "#5a6070"), kp(ar, as))
end
local function fn329()
    kb("Enchant", "Auto-OFF")
    kb("CoinGacha", "Auto-OFF")
    kb("AccessoryGacha", "Auto-OFF")
    jV(false)
    if connection then
        connection:Disconnect()
    end
    if connection2 then
        connection2:Disconnect()
    end
    print("Unloaded!")
end
local function coinGachaDelayLoop()
    while not j9.Unloaded do
        if jW("AutoCoinGacha") then
            onCoinGachaOnce()
            task.wait(Options.CoinGachaDelay.Value)
        else
            task.wait(0.35)
        end
    end
end
local function fn342(an, ao)
    return string.format('<font color="%s">%s</font>', ao, an)
end
local function sellDelayLoop()
    while not j9.Unloaded do
        if jW("AutoSell") then
            onSellOnce()
            task.wait(Options.SellDelay.Value)
        else
            task.wait(0.35)
        end
    end
end
local function fn486()
    kH(kt, "Copied Discord invite to clipboard")
end
local function fn496()
    kx(Toggles.SkipCutscenes.Value)
end
local function fn502(dy)
    local DiscordGroup = dy:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = kw })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = kw })
end
local function onInputBegan()
    kE = tick()
end
local function fn519()
    if not Toggles.Fly.Value then
        local oG = kL()
        if oG then
            oG.PlatformStand = false
        end
    end
end
local function fn583()
    Data:FireServer("Init")
end
local function fn584()
    kg.RuinedStation:FireServer("GetLevel")
end
local function fn596()
    local Character = kz.Character
    local lY = Character and Character:FindFirstChildOfClass("Humanoid")
    return lY
end
local function ruinedUpgradeDelayLoop()
    while not j9.Unloaded do
        if jW("AutoRuinedUpgrade") then
            onRuinedUpgradeOnce()
            task.wait(Options.RuinedUpgradeDelay.Value)
        else
            task.wait(0.35)
        end
    end
end
local function onTeleportToUpgrade()
    kq(kk.Upgrade)
end
local function onTeleportToCoinShop()
    kq(kk["Coin Shop"])
end
local function onSpawnSkateboard()
    pcall(function()
        kg.Skateboard:FireServer("Spawn")
    end)
end
local function coinShopDelayLoop()
    while not j9.Unloaded do
        if jW("AutoCoinShop") then
            onCoinShopOnce()
            task.wait(Options.CoinShopDelay.Value)
        else
            task.wait(0.35)
        end
    end
end
local function fn670(az)
    local lR = Toggles[az]
    return lR ~= nil and lR.Value == true
end
local function fn672()
    local mt = kz:GetAttribute("ActionDisabled") and kz:GetAttribute("ActionDisabled") > 0
    if mt then
        return
    end
    if kz:GetAttribute("Flipping") then
        return
    end
    pcall(function()
        kg.Clicked:FireServer(true)
    end)
end
local function fn681(Z, aa)
    j9.NotifySide = aa
    pcall(SetNotifySide, Z, aa)
end
local function onTeleportToEnchant()
    kq(kk.Enchant)
end
local function onImportConfigFromClipboardTex()
    local qb_1
    local p9 = Options.SaveManager_ImportSource.Value or ""
    local p9_1
    local qa = tostring(p9):match("^%s*(.-)%s*$")
    if qa == "" then
        j9:Notify("Paste an exported config into the box first")
        return
    end
    p9_1, qb_1 = pcall(HttpService.JSONDecode, HttpService, qa)
    local qa_1 = not p9_1 or type(qb_1) ~= "table" or type(qb_1.objects) ~= "table"
    if qa_1 then
        j9:Notify("That is not a valid exported config")
        return
    end
    local p9_2 = 0
    for i, v in ipairs(qb_1.objects) do
        if kB(v) then
            p9_2 += 1
        end
    end
    if p9_2 == 0 then
        j9:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local qb_2 = p9_2 == 1 and "" or "s"
    j9:Notify(("Imported %d setting%s"):format(p9_2, qb_2), 6)
end
local function fn719(aX)
    local l6 = ItemInventory:FindFirstChild(aX)
    return l6 and l6.Value or 0
end
local function spinDelayLoop()
    while not j9.Unloaded do
        if jW("AutoSpin") then
            onSpinOnce()
            task.wait(Options.SpinDelay.Value)
        else
            task.wait(0.35)
        end
    end
end
local function flipDelayLoop()
    while not j9.Unloaded do
        if jW("AutoFlip") then
            kc()
            task.wait(Options.FlipDelay.Value)
        else
            task.wait(0.2)
        end
    end
end
local function fn784()
    local nX_1
    local nW_1
    if identifyexecutor then
        nX_1, nW_1 = identifyexecutor()
        local nY = nX_1 ~= ""
        local nZ = type(nX_1) == "string" and nY
        if nZ then
            local nY_1 = type(nW_1) == "string" and nW_1 ~= "" and nX_1 .. " " .. nW_1
            ki = nY_1 or nX_1
        end
    end
end
local function fn810()
    local l9 = {}
    for i, child in CoinInventory:GetChildren() do
        local ma = child:IsA("NumberValue") and child.Value > 0
        if ma then
            l9[#l9 + 1] = child.Name
        end
    end
    table.sort(l9)
    return l9
end
local function fn815()
    if Toggles.AutoAccessoryGacha.Value then
        kb("AccessoryGacha", "Auto-ON")
    else
        kb("AccessoryGacha", "Auto-OFF")
    end
end
local function onTeleportToSpinningWheel()
    kq(kk["Spinning Wheel"])
end
local function antiGameplayPauseLoop()
    while not j9.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            jV(true)
        end
    end
end
local function onCopyJoinScript_JobID()
    local dP = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, j2)
    kH(dP, "Copied join script to clipboard")
end
local function accessoryGachaDelayLoop()
    while not j9.Unloaded do
        if jW("AutoAccessoryGacha") then
            onAccessoryGachaOnce()
            task.wait(Options.AccessoryGachaDelay.Value)
        else
            task.wait(0.35)
        end
    end
end
local function onExportConfigToClipboard()
    local p6_1
    local p5_1
    p5_1, p6_1 = pcall(HttpService.JSONEncode, HttpService, j8())
    if not p5_1 then
        j9:Notify("Failed to encode the config")
        return
    end
    local p5_2 = setclipboard or toclipboard
    local p5_3 = type(p5_2) ~= "function" or not pcall(p5_2, p6_1)
    if p5_3 then
        j9:Notify("Your executor does not support copying to the clipboard")
        return
    end
    j9:Notify("Config copied to clipboard", 6)
end
local function onTeleport()
    local n4 = kk[Options.TeleportTarget.Value]
    if n4 then
        kq(n4)
    end
end
local function fn935(gp, gq)
    local Type = gq.Type
    if Type == "Toggle" then
        return { idx = gp, type = "Toggle", value = gq.Value == true }
    elseif Type == "Slider" then
        return { idx = gp, type = "Slider", value = tostring(gq.Value) }
    elseif Type == "Dropdown" then
        return { idx = gp, type = "Dropdown", multi = gq.Multi == true, value = gq.Value }
    elseif Type == "Input" then
        local pu = gq.Value
        local py = if pu then 1 else 0
        local pw = 191 * py + 2652 * (1 - py)
        local px = 2928 * py + 1466 * (1 - py)
        if not ((pw * 2940 + px * 3796 + pw * px) % 16777213 == 12235476) then
            pu = ""
        end
        return { idx = gp, type = "Input", text = tostring(pu) }
    elseif Type == "ColorPicker" then
        return { idx = gp, type = "ColorPicker", value = gq.Value:ToHex(), transparency = gq.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = gp,
            type = "KeyPicker",
            mode = gq.Mode,
            key = gq.Value,
            modifiers = gq.Modifiers,
            toggled = gq.Toggled
        }
    else
        return nil
    end
end
local function fn947()
    jV(Toggles.AntiGameplayPause.Value)
end
local function ticketBuyDelayLoop()
    while not j9.Unloaded do
        if jW("AutoBuyTickets") then
            onBuyTicketsOnce()
            task.wait(Options.TicketBuyDelay.Value)
        else
            task.wait(0.35)
        end
    end
end
local function fn999()
    if Toggles.AutoEnchant.Value then
        kb("Enchant", "Auto-ON")
    else
        kb("Enchant", "Auto-OFF")
    end
end
jV = nil
jW = nil
onAccessoryGachaOnce = nil
SetNotifySide = nil
connection2 = nil
onUpgradeOnce = nil
j2 = nil
SaveManager = nil
j4 = nil
Label = nil
ItemInventory = nil
CoinInventory = nil
j8 = nil
j9 = nil
connection = nil
kb = nil
kc = nil
Data = nil
onRuinedUpgradeOnce = nil
onCoinGachaOnce = nil
kg = nil
kh = nil
ki = nil
kj = nil
kk = nil
kl = nil
onSpinOnce = nil
onSellOnce = nil
ko = nil
kp = nil
kq = nil
kr = nil
CurrentCamera2 = nil
kt = nil
kw = nil
kx = nil
ky = nil
kz = nil
kA = nil
kB = nil
Workspace = nil
kE = nil
HttpService = nil
onBuyTicketsOnce = nil
kH = nil
local jU, jY, j0, kv, kD
VirtualUser = nil
Options = nil
kL = nil
kM = nil
UserInputService = nil
Toggles = nil
kQ = nil
onCoinShopOnce = nil
onCraftOnce = nil
local kJ, kO, k3, lc, le, lf
local onRedeemCode
UserInputService, VirtualUser, HttpService, Workspace, kz, kt, kr, kg, Data, CoinInventory, ItemInventory, jY, k3, jU = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local kT_4
local kZ = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
Workspace = game:GetService("Workspace")
kz = Players.LocalPlayer
local k2 = "RE:Heads, Please!"
kt = "https://discord.gg/ehKVq7pf7v"
kr = "https://rscripts.net/@Ouroboros"
local kY = require(kZ:WaitForChild("SharedPackage"))
local kW = kY.ControllerPackage.ReplicationController
local kV = kY.FunctionPackage
local k0 = kV.RuinedStationFunctions
kg = {
    Clicked = kW:GetRemoteEvent("Clicked"),
    Upgrade = kW:GetRemoteEvent("Upgrade"),
    Enchant = kW:GetRemoteEvent("Enchant"),
    CoinGacha = kW:GetRemoteEvent("CoinGacha"),
    AccessoryGacha = kW:GetRemoteEvent("AccessoryGacha"),
    BuyAccessoryTicket = kW:GetRemoteEvent("BuyAccessoryTicket"),
    SpinningWheel = kW:GetRemoteEvent("SpinningWheel"),
    RuinedStation = kW:GetRemoteEvent("RuinedStation"),
    CoinShop = kW:GetRemoteEvent("CoinShop"),
    EquipCoin = kW:GetRemoteEvent("EquipCoin"),
    UseItem = kW:GetRemoteEvent("UseItem"),
    Skateboard = kW:GetRemoteEvent("Skateboard"),
    Code = kW:GetRemoteEvent("Code")
}
Data = kz:WaitForChild("PlayerGui"):WaitForChild("mainInterface"):WaitForChild("Handlers"):WaitForChild("TriggerFrameHandler"):WaitForChild("Data")
local kU = kz:WaitForChild("DataFolder")
CoinInventory = kU:WaitForChild("CoinInventory")
ItemInventory = kU:WaitForChild("ItemInventory")
local EquippedCoin = kU:WaitForChild("EquippedCoin")
local k1 = { "Money Earn", "Flip Speed", "Critical Multiply", "Critical Chance", "Head Chance" }
jY = {
    ["Money Earn"] = 1,
    ["Flip Speed"] = 2,
    ["Critical Multiply"] = 3,
    ["Critical Chance"] = 4,
    ["Head Chance"] = 5
}
if (k3 and jY or not UserInputService and not jY or not Workspace and jY and (k3 or not EquippedCoin)) and not (k3 and jY or not UserInputService and not jY or not Workspace and jY and (k3 or not EquippedCoin)) then
    jU = { "x3", "x5", "x1" }
    k3 = {}
else
    k3 = { "x1", "x3", "x5" }
    jU = {}
end
local kT_1 = k0.GetSaleableItems()
for k in pairs(kT_1) do
    jU[#jU + 1] = k
end
table.sort(jU)
kJ = {}
kO = {}
local kT_2 = k0.GetRecipes()
for i, v in ipairs(kT_2) do
    local kT_3 = tostring(v[2])
    kO[#kO + 1] = kT_3
    kJ[kT_3] = i
end
kv, kV = nil, nil
kv = k0.GetUpgrades()
if (not kv or kV or not kv and not kv) and ((not kv or not kV) and (not kv or not kv)) or not ((not kv or kV or not kv and not kv) and ((not kv or not kV) and (not kv or not kv))) then
    kV = {}
else
    kv = {}
end
for i, child in CoinInventory:GetChildren() do
    kV[#kV + 1] = child.Name
end
table.sort(kV)
kk = nil
kW = { "WealthSoda", "FlipSpeedSoda", "LuckSoda", "EnchantBook", "Soda", "Icecream", "WatermelonSlice" }
do
    kk = {
        Upgrade = Vector3.new(638, 48, -51),
        Enchant = Vector3.new(725, 48, -176),
        ["Spinning Wheel"] = Vector3.new(574, 50, -133),
        ["Accessory Shop"] = Vector3.new(756, 48, -20),
        ["Coin Shop"] = Vector3.new(587, 49, -157),
        Quest = Vector3.new(654, 24, -60),
        Npc = Vector3.new(624, 49, -25),
        ["Coin Fountain"] = Vector3.new(671, 57, -94),
        ["Train Station"] = Vector3.new(4620, 23, -735)
    }
end
kU = {}
for k in pairs(kk) do
    kU[#kU + 1] = k
end
j9, kY, SaveManager = nil, nil, nil
local kX_1 = 2
repeat
    kZ = {
        "jjputqgmkul",
        "nftuuc",
        "csgatanttcf",
        "dxrxksl",
        "cxsmql",
        "verxtwmgkpd",
        "apiwqv",
        "rbokpp",
        "nbz",
        "kcmr",
        "kmpjf"
    }
    if kZ[(kX_1 * 54 + 34) % 11 + 1] <= kZ[(kX_1 * 54 + 34) % 11 + 1] then
        table.sort(kU)
        j9 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
        pcall(fn10)
        kY = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
        SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    else
        table.sort(SaveManager)
        kY = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
        pcall(fn10)
        j9 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
        kU = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    end
    kX_1 = (kX_1 + 5) % 8
until (kX_1 * 3 + 3) % 8 == 0
SetNotifySide = nil
SetNotifySide = j9.SetNotifySide
j9.SetNotifySide = fn681
Toggles, Options, j4, kH, kw, kp, kh, jW, kL, ky, kq, kb, j0, kQ, kx, kc, onUpgradeOnce, kl, onCoinGachaOnce, onAccessoryGachaOnce, onBuyTicketsOnce, onSpinOnce, onCoinShopOnce, onSellOnce, onCraftOnce, onRuinedUpgradeOnce, onRedeemCode = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Toggles = j9.Toggles
Options = j9.Options
kH = fn248
kw = fn486
kp = fn342
kh = fn308
k0 = "#7fd47f"
local k7 = "#6ec1ff"
j4 = "#e8a34d"
local k6 = "#8b93a3"
jW = fn670
kL = fn596
ky = fn236
kq = fn255
kb = function(...)
    local aS = table.pack(...)
    pcall(function()
        Data:FireServer(table.unpack(aS, 1, aS.n))
    end)
end
j0 = fn719
kQ = fn810
kx = function(a7)
    pcall(function()
        local Workers = kz:WaitForChild("PlayerScripts"):WaitForChild("ClientScripts"):WaitForChild("Workers")
        local UpgradeWorker = Workers:FindFirstChild("UpgradeWorker")
        local SpinningWheelWorker = Workers:FindFirstChild("SpinningWheelWorker")
        if UpgradeWorker then
            UpgradeWorker:SetAttribute("Skipped", a7)
        end
        if SpinningWheelWorker then
            SpinningWheelWorker:SetAttribute("Skipped", a7)
        end
    end)
    if a7 then
        kb("Enchant", "Cutscene-OFF")
        kb("CoinGacha", "Cutscene-OFF")
        kb("AccessoryGacha", "Cutscene-OFF")
    else
        kb("Enchant", "Cutscene-ON")
        kb("CoinGacha", "Cutscene-ON")
        kb("AccessoryGacha", "Cutscene-ON")
    end
end
kc = fn672
onUpgradeOnce = function()
    local mB
    mB = jY[Options.UpgradeType and Options.UpgradeType.Value] or 1
    pcall(function()
        local Workers = kz.PlayerScripts.ClientScripts.Workers
        local UpgradeWorker = Workers:FindFirstChild("UpgradeWorker")
        if UpgradeWorker then
            UpgradeWorker:SetAttribute("SelectingUpgrade", mB)
            UpgradeWorker:SetAttribute("Skipped", jW("SkipCutscenes"))
        end
    end)
    pcall(function()
        kg.Upgrade:FireServer(mB)
    end)
end
kl = fn65
onCoinGachaOnce = function()
    local mF
    mF = Options.CoinGachaAmount and Options.CoinGachaAmount.Value or "x1"
    pcall(function()
        kg.CoinGacha:FireServer("Gacha", mF, true)
    end)
end
onAccessoryGachaOnce = function()
    local mJ
    mJ = Options.AccessoryGachaAmount and Options.AccessoryGachaAmount.Value or "x1"
    pcall(function()
        kg.AccessoryGacha:FireServer("Gacha", mJ, true)
    end)
end
onBuyTicketsOnce = function()
    local mN
    local mP = Options.TicketBuyAmount and Options.TicketBuyAmount.Value
    local mT = if mP then 1 else 0
    local mR = 1925 * mT + 1050 * (1 - mT)
    local mS = 1894 * mT + 126 * (1 - mT)
    if not ((mR * 3664 + mS * 309 + mR * mS) % 16777213 == 11284396) then
        mP = 1
    end
    mN = mP
    pcall(function()
        kg.BuyAccessoryTicket:FireServer(mN)
    end)
end
onSpinOnce = function()
    local mX
    mX = Options.SpinAmount and Options.SpinAmount.Value or 1
    if mX <= 0 then
        return
    end
    if j0("Coin") < mX then
        return
    end
    pcall(function()
        local Workers = kz.PlayerScripts.ClientScripts.Workers
        local SpinningWheelWorker = Workers:FindFirstChild("SpinningWheelWorker")
        if SpinningWheelWorker then
            SpinningWheelWorker:SetAttribute("Amount", mX)
            SpinningWheelWorker:SetAttribute("Skipped", jW("SkipCutscenes"))
        end
    end)
    pcall(function()
        kg.SpinningWheel:FireServer(mX)
    end)
end
onCoinShopOnce = function()
    local m0, m1
    m1 = Options.CoinShopAmount and Options.CoinShopAmount.Value or 1
    m0 = Options.CoinShopMode and Options.CoinShopMode.Value or "Buy"
    if m1 <= 0 then
        return
    end
    pcall(function()
        kg.CoinShop:FireServer(m1, m0)
    end)
end
onSellOnce = function()
    local m6 = Options.SellItemsList and Options.SellItemsList.Value
    if type(m6) ~= "table" then
        return
    end
    local m8 = Options.SellAmount and Options.SellAmount.Value
    local nc = if m8 then 1 else 0
    local na = 1564 * nc + 2419 * (1 - nc)
    local nb = 1052 * nc + 29 * (1 - nc)
    if not ((na * 710 + nb * 3845 + na * nb) % 16777213 == 6800708) then
        m8 = "x1"
    end
    local m5 = m8
    for i, v in ipairs(jU) do
        local ni = v
        local m6_2 = m6[ni] == true and j0(ni) > 0
        if m6_2 then
            pcall(function()
                kg.RuinedStation:FireServer("Sell", { ItemID = ni, SellAmount = m5 })
            end)
            task.wait(0.1)
        end
    end
end
onCraftOnce = function()
    local nl = Options.CraftRecipesList and Options.CraftRecipesList.Value
    if type(nl) ~= "table" then
        return
    end
    local nj = Options.CraftAmount and Options.CraftAmount.Value or "x1"
    for i, v in ipairs(kO) do
        if nl[v] == true then
            local nk = kJ[v]
            if nk then
                pcall(function()
                    kg.RuinedStation:FireServer("Craft", { RecipeIndex = nk, CraftAmount = nj })
                end)
                task.wait(0.15)
            end
        end
    end
end
onRuinedUpgradeOnce = function()
    local nv = Options.RuinedUpgradesList and Options.RuinedUpgradesList.Value
    if type(nv) ~= "table" then
        return
    end
    for i, v in ipairs(kv) do
        local nD = v
        if nv[nD] == true then
            pcall(function()
                kg.RuinedStation:FireServer("Upgrade", { UpgradeID = nD })
            end)
            task.wait(0.15)
        end
    end
end
local function onEquipCoin()
    local nE
    nE = Options.EquipCoinName and Options.EquipCoinName.Value
    local nF_1 = nE == ""
    local nG = type(nE) ~= "string" or nF_1
    if nG then
        return
    end
    pcall(function()
        kg.EquipCoin:FireServer(nE)
    end)
end
local function onUseItem()
    local nL, nM
    nM = Options.UseItemName and Options.UseItemName.Value
    nL = Options.UseItemAmount and Options.UseItemAmount.Value or 1
    local nN_2 = nM == ""
    local nO_1 = type(nM) ~= "string"
    local nS = if nO_1 then 1 else 0
    local nQ = 3326 * nS + 2889 * (1 - nS)
    local nR = 1595 * nS + 1356 * (1 - nS)
    if not ((nQ * 724 + nR * 3437 + nQ * nR) % 16777213 == 13195009) then
        nO_1 = nN_2
    end
    if nO_1 then
        return
    end
    if j0(nM) < nL then
        return
    end
    pcall(function()
        kg.UseItem:FireServer(nM, nL)
    end)
end
if (not j0 and false or (kc or not j0) or (not kc and not kL or (kh or onRuinedUpgradeOnce)) or (not j0 or not j0) and (kL and not j0) and (not kL and not kc and (onRuinedUpgradeOnce or not j0))) and not (not j0 and false or (kc or not j0) or (not kc and not kL or (kh or onRuinedUpgradeOnce)) or (not j0 or not j0) and (kL and not j0) and (not kL and not kc and (onRuinedUpgradeOnce or not j0))) then
    k0 = function()
        local nT
        nT = Options.RedeemCodeInput and Options.RedeemCodeInput.Value
        if type(nT) ~= "string" then
            return
        end
        nT = nT:match("^%s*(.-)%s*$")
        if nT == "" then
            j9:Notify("Paste a code first")
            return
        end
        pcall(function()
            kg.Code:FireServer(nT)
        end)
        j9:Notify("Redeemed code")
    end
else
    onRedeemCode = function()
        local nT
        nT = Options.RedeemCodeInput and Options.RedeemCodeInput.Value
        if type(nT) ~= "string" then
            return
        end
        nT = nT:match("^%s*(.-)%s*$")
        if nT == "" then
            j9:Notify("Paste a code first")
            return
        end
        pcall(function()
            kg.Code:FireServer(nT)
        end)
        j9:Notify("Redeemed code")
    end
end
pcall(fn583)
pcall(fn224)
pcall(fn99)
pcall(fn584)
local Window = j9:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = kt, Copyable = true }, "|", k2 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local la = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "coins"),
    Gacha = Window:AddTab("Gacha", "gift"),
    Station = Window:AddTab("Station", "map-pin"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
local k_ = fn502
for k, v in la do
    k_(v)
end
ki, kT_4, lc, Label, j2, kZ = nil, nil, nil, nil, nil, nil
local kX_3 = 16
repeat
    k_ = (kX_3 * 1 + 1) % 3 + 1
    if k_ <= 2 then
        if k_ <= 1 then
            if kX_3 * 90902027 + 13 + 5 <= kX_3 * 90902027 + 13 + 5 + 1 then
                j2 = tostring(game.JobId)
            else
                kT_4 = tostring(game.JobId)
            end
            kX_3 = (kX_3 + 19) % 24
        else
            local qY = bit32.rrotate(bit32.bxor(bit32.lrotate(kX_3, 28), string.byte(tostring(j2))), 17)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(qY, 2739765711), 3861212057), (bit32.bxor(bit32.band(qY, 1555201584), 2905755557))), 3861212057), 2905755557) == qY then
                kZ = #j2 > 18
            else
                j2 = #kZ > 18
            end
            kX_3 = (kX_3 + 10) % 24
        end
    else
        if (kX_3 * 2 + 5) * 7 % 3 == ((kX_3 * 2 + 5) * 7 + 6) % 3 then
            ki = "Unknown"
            pcall(fn784)
            kT_4 = la.Info:AddLeftGroupbox("Account", "circle-user")
            kT_4:AddLabel(kh("User", kz.Name, k0), true)
            kT_4:AddLabel(kh("Status", "Keyless", k0), true)
            kT_4:AddLabel(kh("Executor", ki, k0), true)
            lc = la.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            lc:AddLabel(kp(k2 .. " [" .. tostring(game.PlaceId) .. "]", k7), true)
            lc:AddLabel(kh("Place ID", tostring(game.PlaceId), k7), true)
            Label = lc:AddLabel(kh("Session time", "0s", j4), true)
        else
            kp = "Unknown"
            pcall(fn784)
            kz = (nil):AddLeftGroupbox("Account", "circle-user")
            kz:AddLabel(k2("User", k0.Name, kT_4), true)
            kz:AddLabel(k2("Status", "Keyless", kT_4), true)
            kz:AddLabel(k2("Executor", kp, kT_4), true)
            ki = (nil):AddLeftGroupbox("Game Info", "gamepad-2")
            ki:AddLabel(Label(j4 .. " [" .. tostring(game.PlaceId) .. "]", lc), true)
            ki:AddLabel(k2("Place ID", tostring(game.PlaceId), lc), true)
            kh = ki:AddLabel(k2("Session time", "0s", la), true)
        end
        kX_3 = (kX_3 + 13) % 24
    end
until (kX_3 * 17 + 5) % 24 == 7
if kZ then
    local kT_5 = 1
    repeat
        local kX_4 = {
            "rzfjfbo",
            "rtuovjtti",
            "nzewwjkjyvl",
            "ljvgc",
            "kcbky",
            "rbphf",
            "fnfzuxlemyi",
            "osadfhco",
            "tfrh",
            "hslrspzzye"
        }
        local rC = kT_5
        k_ = kX_4[rC % 10 + 1]
        if k_:len() <= k_:gsub("(.)", "%1%1", rC % 3 % 2 + 1):len() then
            kZ = string.sub(j2, 1, 18) .. "..."
        else
            j2 = string.sub(kZ, 1, 18) .. "..."
        end
        kT_5 = (kT_5 + 3) % 4
    until (kT_5 * 3 + 2) % 4 == 2
end
local kT_6 = kZ or j2
kM, lf, le = nil, nil, nil
lc:AddLabel(kh("Server", kT_6, k6), true)
lc:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
kM = os.clock()
task.spawn(worker)
local lh = la.Info:AddRightGroupbox("Scripts", "package")
lh:AddLabel(kp("Included in this hub", k6), true)
lh:AddLabel(kp(k2, k7), true)
local lg = la.Info:AddRightGroupbox("Features", "list")
if kM and lf or (not lf or kM) or (le and not le or (not le or kM)) or not (kM and lf or (not lf or kM) or (le and not le or (not le or kM))) then
    lg:AddLabel(kp("Auto Flip", k7), true)
    lg:AddLabel(kp("Auto Upgrade", k7), true)
    lg:AddLabel(kp("Auto Enchant", k7), true)
    lg:AddLabel(kp("Auto Gacha", j4), true)
    lg:AddLabel(kp("Spin / Shop / Sell", j4), true)
    lg:AddLabel(kp("Teleports", k6), true)
    lg:AddLabel(kp("Player Movement", k6), true)
    lf = la.Info:AddRightGroupbox("Socials", "link")
else
    k6:AddLabel(j4("Auto Flip", la), true)
    k6:AddLabel(j4("Auto Upgrade", la), true)
    k6:AddLabel(j4("Auto Enchant", la), true)
    k6:AddLabel(j4("Auto Gacha", k7), true)
    k6:AddLabel(j4("Spin / Shop / Sell", k7), true)
    k6:AddLabel(j4("Teleports", lf), true)
    k6:AddLabel(j4("Player Movement", lf), true)
    kp.Info:AddRightGroupbox("Socials", "link")
end
lf:AddButton({ Text = "Discord", Func = kw })
lf:AddButton({ Text = "Rscripts", Func = onRscripts })
le = la.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
le:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
le:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
le:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
le:AddButton({ Text = "Copy Discord Invite", Func = kw })
local ld = la.Info:AddRightGroupbox("FAQ", "circle-help")
ld:AddLabel("Where do I get a good config?", true)
ld:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
ld:AddLabel("How do I import / export configs?", true)
ld:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
ld:AddLabel("How do I report bugs?", true)
ld:AddLabel("Join the Discord and post it in the bugs channel.", true)
ld:AddLabel("How do I make suggestions?", true)
ld:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
ld:AddLabel("How do I get help or updates?", true)
ld:AddLabel("Join the Discord, updates and support are posted there first.", true)
k0 = la.Main:AddLeftGroupbox("Flip", "coins")
k0:AddToggle("AutoFlip", { Text = "Auto Flip", Default = false })
k0:AddSlider("FlipDelay", { Text = "Flip Delay", Default = 0.05, Min = 0, Max = 1, Rounding = 2 })
k0:AddButton({ Text = "Flip Once", Func = kc })
k_ = la.Main:AddLeftGroupbox("Upgrade", "arrow-up")
k_:AddToggle("AutoUpgrade", { Text = "Auto Upgrade", Default = false })
k_:AddDropdown("UpgradeType", { Text = "Upgrade Type", Values = k1, Default = 1 })
k_:AddSlider("UpgradeDelay", { Text = "Upgrade Delay", Default = 0.75, Min = 0.2, Max = 5, Rounding = 2 })
k_:AddButton({ Text = "Upgrade Once", Func = onUpgradeOnce })
k_:AddButton({ Text = "Teleport to Upgrade", Func = onTeleportToUpgrade })
kZ = la.Main:AddRightGroupbox("Enchant", "sparkles")
kZ:AddToggle("AutoEnchant", { Text = "Auto Enchant", Default = false })
kZ:AddSlider("EnchantDelay", { Text = "Enchant Delay", Default = 1.5, Min = 0.3, Max = 5, Rounding = 2 })
kZ:AddToggle("SkipCutscenes", { Text = "Skip Cutscenes", Default = true })
kZ:AddButton({ Text = "Enchant Once", Func = kl })
kZ:AddButton({ Text = "Teleport to Enchant", Func = onTeleportToEnchant })
local CoinGroup = la.Main:AddRightGroupbox("Coin", "circle-dollar-sign")
local kT_7 = #kV > 0 and kV
kV = { "Penny" }
local kX_6 = kT_7
local lI = if kX_6 then 1 else 0
local lG = 3890 * lI + 1079 * (1 - lI)
local lH = 1345 * lI + 2436 * (1 - lI)
if not ((lG * 3261 + lH * 754 + lG * lH) % 16777213 == 2154257) then
    kX_6 = kV
end
kE, kA, connection, connection2, CurrentCamera2, ko, jV, kD, kj, j8, kB = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
CoinGroup:AddDropdown("EquipCoinName", { Text = "Coin", Values = kX_6, Default = EquippedCoin.Value })
CoinGroup:AddButton({ Text = "Equip Coin", Func = onEquipCoin })
CoinGroup:AddButton({ Text = "Refresh Coin List", Func = onRefreshCoinList })
lf = la.Gacha:AddLeftGroupbox("Coin Gacha", "dices")
lf:AddToggle("AutoCoinGacha", { Text = "Auto Coin Gacha", Default = false })
lf:AddDropdown("CoinGachaAmount", { Text = "Amount", Values = k3, Default = 1 })
lf:AddSlider("CoinGachaDelay", { Text = "Gacha Delay", Default = 3, Min = 0.5, Max = 10, Rounding = 1 })
lf:AddButton({ Text = "Coin Gacha Once", Func = onCoinGachaOnce })
ld = la.Gacha:AddRightGroupbox("Accessory Gacha", "shirt")
ld:AddToggle("AutoAccessoryGacha", { Text = "Auto Accessory Gacha", Default = false })
ld:AddDropdown("AccessoryGachaAmount", { Text = "Amount", Values = k3, Default = 1 })
ld:AddSlider("AccessoryGachaDelay", { Text = "Gacha Delay", Default = 3, Min = 0.5, Max = 10, Rounding = 1 })
ld:AddButton({ Text = "Accessory Gacha Once", Func = onAccessoryGachaOnce })
ld:AddButton({ Text = "Teleport to Accessory Shop", Func = onTeleportToAccessoryShop })
lc = la.Gacha:AddLeftGroupbox("Tickets", "ticket")
lc:AddToggle("AutoBuyTickets", { Text = "Auto Buy Tickets", Default = false })
lc:AddSlider("TicketBuyAmount", { Text = "Ticket Amount", Default = 1, Min = 1, Max = 100, Rounding = 0 })
lc:AddSlider("TicketBuyDelay", { Text = "Buy Delay", Default = 1, Min = 0.2, Max = 10, Rounding = 1 })
lc:AddButton({ Text = "Buy Tickets Once", Func = onBuyTicketsOnce })
k7 = la.Station:AddLeftGroupbox("Spinning Wheel", "refresh-cw")
k7:AddToggle("AutoSpin", { Text = "Auto Spin", Default = false })
k7:AddSlider("SpinAmount", { Text = "Spin Amount", Default = 1, Min = 1, Max = 100, Rounding = 0 })
k7:AddSlider("SpinDelay", { Text = "Spin Delay", Default = 2, Min = 0.5, Max = 10, Rounding = 1 })
k7:AddButton({ Text = "Spin Once", Func = onSpinOnce })
k7:AddButton({ Text = "Teleport to Spinning Wheel", Func = onTeleportToSpinningWheel })
k6 = la.Station:AddLeftGroupbox("Coin Shop", "store")
k6:AddToggle("AutoCoinShop", { Text = "Auto Coin Shop", Default = false })
k6:AddDropdown("CoinShopMode", { Text = "Mode", Values = { "Buy", "Sell" }, Default = 1 })
k6:AddSlider("CoinShopAmount", { Text = "Amount", Default = 1, Min = 1, Max = 1000, Rounding = 0 })
k6:AddSlider("CoinShopDelay", { Text = "Shop Delay", Default = 1, Min = 0.2, Max = 10, Rounding = 1 })
k6:AddButton({ Text = "Coin Shop Once", Func = onCoinShopOnce })
k6:AddButton({ Text = "Teleport to Coin Shop", Func = onTeleportToCoinShop })
k2 = la.Station:AddRightGroupbox("Ruined Sell", "banknote")
k2:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
k2:AddDropdown("SellItemsList", { Text = "Items", Values = jU, Default = jU, Multi = true, AllowNull = true })
k2:AddDropdown("SellAmount", { Text = "Sell Amount", Values = { "x1", "x10", "x100" }, Default = 1 })
k2:AddSlider("SellDelay", { Text = "Sell Delay", Default = 2, Min = 0.5, Max = 15, Rounding = 1 })
k2:AddButton({ Text = "Sell Once", Func = onSellOnce })
k1 = la.Station:AddRightGroupbox("Ruined Craft", "hammer")
k1:AddToggle("AutoCraft", { Text = "Auto Craft", Default = false })
k1:AddDropdown("CraftRecipesList", { Text = "Recipes", Values = kO, Default = {}, Multi = true, AllowNull = true })
k1:AddDropdown("CraftAmount", { Text = "Craft Amount", Values = { "x1", "x10", "x100" }, Default = 1 })
k1:AddSlider("CraftDelay", { Text = "Craft Delay", Default = 2, Min = 0.5, Max = 15, Rounding = 1 })
k1:AddButton({ Text = "Craft Once", Func = onCraftOnce })
k0 = la.Station:AddRightGroupbox("Ruined Upgrades", "trending-up")
k0:AddToggle("AutoRuinedUpgrade", { Text = "Auto Ruined Upgrade", Default = false })
k0:AddDropdown("RuinedUpgradesList", { Text = "Upgrades", Values = kv, Default = kv, Multi = true, AllowNull = true })
k0:AddSlider("RuinedUpgradeDelay", { Text = "Upgrade Delay", Default = 2, Min = 0.5, Max = 15, Rounding = 1 })
k0:AddButton({ Text = "Ruined Upgrade Once", Func = onRuinedUpgradeOnce })
k_ = la.Station:AddLeftGroupbox("Misc", "wrench")
k_:AddDropdown("UseItemName", { Text = "Item", Values = kW, Default = 1 })
k_:AddSlider("UseItemAmount", { Text = "Use Amount", Default = 1, Min = 1, Max = 50, Rounding = 0 })
k_:AddButton({ Text = "Use Item", Func = onUseItem })
k_:AddButton({ Text = "Spawn Skateboard", Func = onSpawnSkateboard })
k_:AddInput("RedeemCodeInput", { Text = "Code", Default = "", Finished = true, AllowEmpty = true })
k_:AddButton({ Text = "Redeem Code", Func = onRedeemCode })
kZ = la.Station:AddRightGroupbox("Teleports", "map")
kZ:AddDropdown("TeleportTarget", { Text = "Location", Values = kU, Default = 1 })
kZ:AddButton({ Text = "Teleport", Func = onTeleport })
local MovementGroup = la.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
lh = la.Player:AddRightGroupbox("Fly", "feather")
lh:AddToggle("Fly", { Text = "Fly", Default = false })
lh:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
lg = la.Settings:AddLeftGroupbox("Menu")
lg:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
j9.ToggleKeybind = Options.MenuKeybind
lg:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
lg:AddButton("Unload", onUnload)
kE = tick()
kA = tick()
pcall(function()
    for i, v in ipairs(getconnections(kz.Idled)) do
        local oc = v
        pcall(function()
            oc:Disable()
        end)
    end
end)
ko = fn196
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
jV = function(e_)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not e_)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not e_
        end
    end)
    if not e_ then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(kz, "GameplayPaused", false)
        else
            kz.GameplayPaused = false
        end
    end)
end
Toggles.AntiGameplayPause:OnChanged(fn947)
Toggles.SkipCutscenes:OnChanged(fn496)
Toggles.AutoEnchant:OnChanged(fn999)
Toggles.AutoCoinGacha:OnChanged(fn140)
Toggles.AutoAccessoryGacha:OnChanged(fn815)
kx(true)
Toggles.Fly:OnChanged(fn519)
Toggles.WalkSpeedEnabled:OnChanged(fn213)
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera2 = Workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
task.spawn(flipDelayLoop)
task.spawn(upgradeDelayLoop)
task.spawn(enchantDelayLoop)
task.spawn(coinGachaDelayLoop)
task.spawn(accessoryGachaDelayLoop)
task.spawn(ticketBuyDelayLoop)
task.spawn(spinDelayLoop)
task.spawn(coinShopDelayLoop)
task.spawn(sellDelayLoop)
task.spawn(craftDelayLoop)
task.spawn(ruinedUpgradeDelayLoop)
task.spawn(antiAfkLoop)
task.spawn(antiGameplayPauseLoop)
kY:SetLibrary(j9)
kY:SetFolder("OuroborosHub")
kY:SaveDefault("Monochrome")
kY:ApplyToTab(la.Settings)
kY:LoadDefault()
SaveManager:SetLibrary(j9)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/REHeadsPlease")
le = SaveManager:BuildConfigSection(la.Settings)
kD = fn92
kj = fn935
j8 = fn133
kB = function(gF)
    local p_
    p_ = nil
    local p0 = type(gF) ~= "table"
    local p4 = if p0 then 1 else 0
    local p2 = 3409 * p4 + 1260 * (1 - p4)
    local p3 = 1031 * p4 + 2317 * (1 - p4)
    if not ((p2 * 3434 + p3 * 123 + p2 * p3) % 16777213 == 15347998) then
        p0 = type(gF.idx) ~= "string"
    end
    if not p0 then
        p0 = type(gF.type) ~= "string"
    end
    if not p0 then
        p0 = SaveManager.Ignore[gF.idx]
    end
    if p0 then
        return false
    end
    p_ = kD(gF.type, gF.idx)
    if not p_ then
        return false
    end
    local p0_1 = pcall(function()
        if gF.type == "Input" then
            if type(gF.text) ~= "string" then
                return
            end
            p_:SetValue(gF.text)
        elseif gF.type == "ColorPicker" then
            p_:SetValueRGB(Color3.fromHex(gF.value), gF.transparency)
        elseif gF.type == "KeyPicker" then
            p_:SetValue({ gF.key, gF.mode, gF.modifiers })
            if gF.mode == "Toggle" and gF.toggled ~= nil then
                p_.Toggled = gF.toggled
                p_:Update()
            end
        else
            p_:SetValue(gF.value)
        end
    end)
    return p0_1
end
le:AddDivider()
le:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
le:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
le:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
j9:OnUnload(fn329)
