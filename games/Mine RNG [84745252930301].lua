local Label
local EquipPickaxeRemote
local h8
local Toggles
local ib
local iA
local ig
local SaveManager
local hW
local CurrentCamera
local ij
local connection
local iJ
local im
local h1
local Options
local UpgradeDataTable
local h4
local iP
local it
local h7
local connection2
local ia
local ie
local iC
local processedPickaxeDT
local ii
local RebirthDataTable
local LocalPlayer
local ZoneDataTable
local BuyZoneRemote
local h0
local Library
local BuyUpgradeRemote
local h3
local iO
local is
local client
local iv
local VirtualUser
local Zones
local UserInputService
local RebirthRemote
local iE
local ih
local hX
local RollPickaxeRemote
local ik
local h_
local iK
local io
local HttpService
local iN
local ir
local function fn3(ap, aq, ar)
    return string.format("<b>%s</b> %s %s", ap, iP("-", "#5a6070"), iP(aq, ar))
end
local function fn17(e0, e1)
    local mu_1 = (e0 == "Toggle" and Toggles or Options)[e1]
    local mt_2 = type(mu_1) == "table" and mu_1.Type == e0
    local mt_3 = mt_2 and mu_1
    local mz = if mt_3 then 1 else 0
    local mx = 1493 * mz + 3467 * (1 - mz)
    local my = 2881 * mz + 3008 * (1 - mz)
    if not ((mx * 3498 + my * 282 + mx * my) % 16777213 == 10336289) then
        mt_3 = nil
    end
    return mt_3
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local lE_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if lE_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function onCopyJoinScript_JobID()
    local jX = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, h0)
    if setclipboard then
        setclipboard(jX)
    elseif toclipboard then
        toclipboard(jX)
    end
    Library:Notify("Copied join script to clipboard")
end
local function fn47()
    local mH = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local mI = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if mI then
                local mI_1 = h_(k, v)
                if mI_1 then
                    mH[#mH + 1] = mI_1
                end
            end
        end
    end
    table.sort(mH, function(fn, fo)
        if fn.type ~= fo.type then
            return fn.type < fo.type
        end
        return fn.idx < fo.idx
    end)
    return { objects = mH }
end
local function fn62()
    local Character = LocalPlayer.Character
    local lC = Character and Character:FindFirstChild("HumanoidRootPart")
    return lC
end
local function fn68()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    iJ = tick()
end
local function onExportConfigToClipboard()
    local m1_1
    local m0_1
    m0_1, m1_1 = pcall(HttpService.JSONEncode, HttpService, iE())
    if not m0_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local m0_2 = setclipboard or toclipboard
    local m0_3 = type(m0_2) ~= "function" or not pcall(m0_2, m1_1)
    if m0_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function onInputChanged(eK)
    local UserInputType = eK.UserInputType
    local mk = UserInputType == Enum.UserInputType.MouseMovement
    local mo = if mk then 1 else 0
    local mm = 564 * mo + 3332 * (1 - mo)
    local mn = 656 * mo + 3379 * (1 - mo)
    if not ((mm * 1394 + mn * 1905 + mm * mn) % 16777213 == 2405880) then
        mk = UserInputType == Enum.UserInputType.Gamepad1
    end
    if mk then
        iN = tick()
    end
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause and Toggles.AntiGameplayPause.Value then
            h3(true)
        end
    end
end
local function fn121()
    local Character = LocalPlayer.Character
    local lw = Character and Character:FindFirstChildOfClass("Humanoid")
    return lw
end
local function onCopyLitecoinAddress()
    iK(im, "Copied Litecoin address")
end
local function autoGoBestZoneLoop()
    while not Library.Unloaded do
        if Toggles.AutoGoBestZone.Value then
            pcall(function()
                local Character = LocalPlayer.Character
                local kT = Character and Character:FindFirstChild("HumanoidRootPart")
                local kT_1 = ir()
                local kU = kT_1 and Zones:FindFirstChild(kT_1)
                local kT_2 = kU
                if kU then
                    kU = kT_2:FindFirstChild("SpawnPart")
                end
                local kV = kT
                local kW = kU
                if kV then
                    kV = kW
                end
                if kV then
                    kV = not iv(kT_2, kT.Position)
                end
                if kV then
                    kT.CFrame = CFrame.new(kW.Position + Vector3.new(0, 3, 0))
                    task.wait(0.5)
                end
            end)
        end
        task.wait(0.5)
    end
end
local function worker()
    local j2_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local j1 = math.floor(os.clock() - is)
        if j1 < 60 then
            j2_1 = j1 .. "s"
        elseif j1 < 3600 then
            j2_1 = string.format("%dm %ds", j1 // 60, j1 % 60)
        else
            j2_1 = string.format("%dh %dm", j1 // 3600, j1 % 3600 // 60)
        end
        Label:SetText(iC("Session time", j2_1, h8))
    end
end
local function fn169(e8, e9)
    local Type = e9.Type
    if Type == "Toggle" then
        return { idx = e8, type = "Toggle", value = e9.Value == true }
    elseif Type == "Slider" then
        return { idx = e8, type = "Slider", value = tostring(e9.Value) }
    elseif Type == "Dropdown" then
        return { idx = e8, type = "Dropdown", multi = e9.Multi == true, value = e9.Value }
    elseif Type == "Input" then
        local mB = e9.Value or ""
        return { idx = e8, type = "Input", text = tostring(mB) }
    elseif Type == "ColorPicker" then
        return { idx = e8, type = "ColorPicker", value = e9.Value:ToHex(), transparency = e9.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = e8,
            type = "KeyPicker",
            mode = e9.Mode,
            key = e9.Value,
            modifiers = e9.Modifiers,
            toggled = e9.Toggled
        }
    else
        return nil
    end
end
local function fn177()
    local jC_1
    local jB_1
    jC_1, jB_1 = nil, nil
    for k, v in client.unlockedZones() do
        local jD = ZoneDataTable[v]
        local jD_1 = jD and jD.requiredCurrency or -1
        local jE_1 = not jB_1
        if not jE_1 then
            jE_1 = jD_1 > jB_1
        end
        if jE_1 then
            jB_1 = jD_1
            jC_1 = v
        end
    end
    return jC_1
end
local function fn200()
    local jT_1
    local jS_1
    if identifyexecutor then
        jT_1, jS_1 = identifyexecutor()
        local jU = jT_1 ~= ""
        local jV = type(jT_1) == "string" and jU
        if jV then
            local jU_1 = type(jS_1) == "string" and jS_1 ~= "" and jT_1 .. " " .. jS_1
            iA = jU_1 or jT_1
        end
    end
end
local function autoClaimIndexLoop()
    while not Library.Unloaded do
        if Toggles.AutoClaimIndex.Value then
            pcall(function()
                for k in client.inventory.pickaxes() do
                    local kk = client.index.pickaxes[k]
                    local kl = kk and kk() and not kk.unlocked()
                    if kl then
                        ia:FireServer(k)
                        task.wait(0.1)
                    end
                end
            end)
        end
        task.wait(1)
    end
end
local function onCopyBitcoinAddress()
    iK(ii, "Copied Bitcoin address")
end
local function onImportConfigFromClipboardTex()
    local m6_1
    local m4 = Options.SaveManager_ImportSource.Value or ""
    local m4_1
    local m5 = tostring(m4):match("^%s*(.-)%s*$")
    if m5 == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    m4_1, m6_1 = pcall(HttpService.JSONDecode, HttpService, m5)
    local m5_1 = not m4_1 or type(m6_1) ~= "table" or type(m6_1.objects) ~= "table"
    if m5_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local m4_2 = 0
    for i, v in ipairs(m6_1.objects) do
        if it(v) then
            m4_2 += 1
        end
    end
    if m4_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local m6_2 = m4_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(m4_2, m6_2), 6)
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk and Toggles.AntiAfk.Value then
            local mp_1 = tick() - iN
            local mq = tick() - iJ
            if mp_1 >= 300 and mq >= 60 then
                pcall(ij)
            else
                if mp_1 < 300 and mq >= 300 then
                    pcall(ij)
                end
            end
        end
    end
end
local function onInputBegan()
    iN = tick()
end
local function onCopySolanaAddress()
    iK(h7, "Copied Solana address")
end
local function fn359(ai)
    local DiscordGroup = ai:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = io })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = io })
end
local function onRscripts()
    if setclipboard then
        setclipboard(iO)
    elseif toclipboard then
        toclipboard(iO)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
local function fn384(am, an)
    return string.format('<font color="%s">%s</font>', an, am)
end
local function onCopyEthereumAddress()
    iK(ig, "Copied Ethereum address")
end
local function fn434(ab, ac)
    if setclipboard then
        setclipboard(ab)
    elseif toclipboard then
        toclipboard(ab)
    end
    Library:Notify(ac)
end
local function fn449()
    h3(Toggles.AntiGameplayPause.Value)
end
local function fn451()
    if not Toggles.WalkSpeedEnabled.Value then
        local l_ = ik()
        if l_ then
            l_.WalkSpeed = 16
        end
    end
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local lP_1 = ik()
        if lP_1 then
            lP_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn488()
    h3(false)
    connection:Disconnect()
    connection2:Disconnect()
    local ne = ik()
    if ne then
        ne.PlatformStand = false
        ne.WalkSpeed = 16
    end
    print("Unloaded!")
end
local function autoEquipBestLoop()
    while not Library.Unloaded do
        if Toggles.AutoEquipBest.Value then
            pcall(function()
                local kb_1
                local ka_1
                kb_1, ka_1 = nil, -1
                for k in client.inventory.pickaxes() do
                    local kc_1 = processedPickaxeDT[k]
                    if kc_1 and kc_1.miningPower > ka_1 then
                        ka_1 = kc_1.miningPower
                        kb_1 = k
                    end
                end
                local kc_2 = kb_1 and client.equipped.pickaxe() ~= kb_1
                if kc_2 then
                    EquipPickaxeRemote:FireServer(kb_1)
                end
            end)
        end
        task.wait(0.5)
    end
end
local function fn510()
    iK(hX, "Copied Discord invite to clipboard")
end
local function onCopyVenmoLink()
    iK(hW, "Copied Venmo link")
end
local function fn531()
    if not Toggles.Fly.Value then
        local lY = ik()
        if lY then
            lY.PlatformStand = false
        end
    end
end
local function autoUnlockZonesLoop()
    while not Library.Unloaded do
        if Toggles.AutoUnlockZones.Value then
            pcall(function()
                local kI = client.unlockedZones()
                for k, v in ZoneDataTable do
                    local kJ = k ~= "Plains" and not table.find(kI, k) and client.currency() >= v.requiredCurrency
                    if kJ then
                        BuyZoneRemote:FireServer(k)
                        task.wait(0.2)
                    end
                end
            end)
        end
        task.wait(0.5)
    end
end
local function autoSellLoop()
    while not Library.Unloaded do
        if Toggles.AutoSell.Value then
            pcall(function()
                local lk = client.lockedOres()
                local ll = 0
                local lm = {}
                for k, v in client.inventory.ores() do
                    if not table.find(lk, k) then
                        lm[k] = v.quantity
                        ll += 1
                    end
                end
                if ll > 0 then
                    ie:FireServer(lm)
                end
            end)
        end
        task.wait(1)
    end
end
local function onCopyUSDTAddress()
    iK(ib, "Copied USDT address")
end
local function autoRebirthLoop()
    while not Library.Unloaded do
        if Toggles.AutoRebirth.Value then
            pcall(function()
                local ks = client.rebirth()
                local kt = RebirthDataTable[ks + 1]
                local ks_1 = kt and client.currency() >= kt.price
                if ks_1 then
                    RebirthRemote:FireServer()
                    task.wait(0.5)
                end
            end)
        end
        task.wait(0.5)
    end
end
local function onCopyPayPalLink()
    iK(h1, "Copied PayPal link")
end
local function onUnload()
    Library:Unload()
end
local function onRenderStepped(d_)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local lR_1 = ik()
        if lR_1 then
            lR_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local lR_3 = h4()
        local lS = ik()
        if lR_3 and lS then
            lS.PlatformStand = true
            local lS_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                lS_1 = lS_1 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                lS_1 = lS_1 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                lS_1 = lS_1 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                lS_1 = lS_1 + CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                lS_1 = lS_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                lS_1 = lS_1 - Vector3.new(0, 1, 0)
            end
            lR_3.Velocity = Vector3.zero
            if lS_1.Magnitude > 0 then
                lR_3.CFrame = lR_3.CFrame + lS_1.Unit * Options.FlySpeed.Value * d_
            end
        end
    end
end
local function autoUpgradeLoop()
    while not Library.Unloaded do
        if Toggles.AutoUpgrade.Value then
            pcall(function()
                local kx = client.upgradesBought()
                for k, v in UpgradeDataTable do
                    local ky = not table.find(kx, k)
                    if ky ~= false then
                        local kz = v.dependency == "None" or table.find(kx, v.dependency)
                        ky = kz
                    end
                    if ky then
                        ky = client.currency() >= v.price
                    end
                    if ky then
                        BuyUpgradeRemote:FireServer(k, "Upgrades")
                        task.wait(0.1)
                    end
                end
            end)
        end
        task.wait(0.5)
    end
end
local function autoMineLoop()
    while not Library.Unloaded do
        if Toggles.AutoMine.Value then
            pcall(function()
                local k7_1
                local k6_1
                local k5_2
                local Character = LocalPlayer.Character
                local k2 = Character and Character:FindFirstChild("HumanoidRootPart")
                local SpawnedRockModels = workspace:FindFirstChild("SpawnedRockModels")
                local k3
                if Toggles.AutoGoBestZone.Value then
                    local k4_1 = ir()
                    local k5_1 = k4_1 and Zones:FindFirstChild(k4_1)
                    k3 = k5_1
                end
                if k2 and SpawnedRockModels then
                    k7_1, k6_1, k5_2 = nil, nil, nil
                    for i, child in SpawnedRockModels:GetChildren() do
                        if client.spawnedRocks[child.Name]() then
                            local k2_2 = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart")
                            local k4_3 = k2_2
                            if k2_2 then
                                local k8_1 = k3 and not iv(k3, k4_3.Position)
                                k2_2 = not k8_1
                            end
                            if k2_2 then
                                local Magnitude = (k2.Position - k4_3.Position).Magnitude
                                if not k5_2 or Magnitude < k5_2 then
                                    k5_2 = Magnitude
                                    k7_1 = child
                                    k6_1 = k4_3
                                end
                            end
                        end
                    end
                    if k7_1 and k6_1 then
                        if k5_2 > 10 then
                            k2.CFrame = CFrame.new(k6_1.Position + Vector3.new(0, 4, 6))
                        end
                        ih:FireServer(k7_1.Name)
                    end
                end
            end)
        end
        task.wait(0.1)
    end
end
local function autoRollLoop()
    while not Library.Unloaded do
        local j8 = Toggles.AutoRoll.Value and not LocalPlayer:GetAttribute("Spinning")
        if j8 then
            LocalPlayer:SetAttribute("Spinning", true)
            pcall(function()
                RollPickaxeRemote:FireServer()
            end)
        end
        task.wait(0.1)
    end
end
local function fn748(R, S)
    local jN = R and R:FindFirstChild("ZoneDetector")
    if not jN then
        return false
    end
    local jN_1 = jN.CFrame:PointToObjectSpace(S)
    local jP = jN.Size / 2
    local jO_1 = math.abs(jN_1.X) <= jP.X and math.abs(jN_1.Z) <= jP.Z and math.abs(jN_1.Y) <= jP.Y + 60
    return jO_1
end
processedPickaxeDT = nil
hW = nil
hX = nil
LocalPlayer = nil
connection = nil
h_ = nil
h0 = nil
h1 = nil
HttpService = nil
h3 = nil
h4 = nil
Label = nil
client = nil
h7 = nil
h8 = nil
VirtualUser = nil
ia = nil
ib = nil
UserInputService = nil
ie = nil
ig = nil
ih = nil
ii = nil
ij = nil
ik = nil
BuyZoneRemote = nil
im = nil
io = nil
BuyUpgradeRemote = nil
Options = nil
ir = nil
is = nil
it = nil
EquipPickaxeRemote = nil
iv = nil
connection2 = nil
Toggles = nil
Zones = nil
iA = nil
RebirthRemote = nil
iC = nil
SaveManager = nil
iE = nil
RebirthDataTable = nil
CurrentCamera = nil
RollPickaxeRemote = nil
ZoneDataTable = nil
iJ = nil
iK = nil
local iz
Library = nil
UpgradeDataTable = nil
iN = nil
iO = nil
iP = nil
local iT_1
Library, SaveManager, Toggles, Options = nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
if getgenv().__OuroborosMineRNG then
    pcall(function()
        getgenv().__OuroborosMineRNG:Unload()
    end)
end
UserInputService, VirtualUser, HttpService, LocalPlayer, RollPickaxeRemote, RebirthRemote, EquipPickaxeRemote, BuyUpgradeRemote, BuyZoneRemote, ih, ie, ia, client, iT_1, processedPickaxeDT, UpgradeDataTable, ZoneDataTable, RebirthDataTable, Zones, hX, iO, h8, ir, iv, iK, io, iP, iC = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
getgenv().__OuroborosMineRNG = Library
local Players = game:GetService("Players")
local iU = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
LocalPlayer = Players.LocalPlayer
local i2 = "Mine RNG"
local iW = iU:WaitForChild("Remotes")
RollPickaxeRemote = iW:WaitForChild("RollPickaxeRemote")
RebirthRemote = iW:WaitForChild("RebirthRemote")
EquipPickaxeRemote = iW:WaitForChild("EquipPickaxeRemote")
BuyUpgradeRemote = iW:WaitForChild("BuyUpgradeRemote")
if (not iC and processedPickaxeDT or false and iT_1) and (not processedPickaxeDT or not iT_1 or iT_1 and processedPickaxeDT) and not ((not iC and processedPickaxeDT or false and iT_1) and (not processedPickaxeDT or not iT_1 or iT_1 and processedPickaxeDT)) then
    iW = BuyZoneRemote:WaitForChild("BuyZoneRemote")
    ia = BuyZoneRemote:WaitForChild("HitRockRemote")
    ih = BuyZoneRemote:WaitForChild("SellOresRemote")
    ie = BuyZoneRemote:WaitForChild("UnlockIndexRemote")
else
    BuyZoneRemote = iW:WaitForChild("BuyZoneRemote")
    ih = iW:WaitForChild("HitRockRemote")
    ie = iW:WaitForChild("SellOresRemote")
    ia = iW:WaitForChild("UnlockIndexRemote")
end
if (RebirthDataTable or RebirthDataTable or iW and not RebirthDataTable or not iW and not iW and (RebirthDataTable and RebirthDataTable) or (not iW and iW and (iW and iW) or (not iW or not iW or not RebirthDataTable and RebirthDataTable))) and ((iW or iW or (iW or RebirthDataTable)) and ((not iW or RebirthDataTable) and (RebirthDataTable or RebirthDataTable)) and ((RebirthDataTable or iW) and (not iW and not iW) and (not iW and not iW or (not iW or not RebirthDataTable)))) and not ((RebirthDataTable or RebirthDataTable or iW and not RebirthDataTable or not iW and not iW and (RebirthDataTable and RebirthDataTable) or (not iW and iW and (iW and iW) or (not iW or not iW or not RebirthDataTable and RebirthDataTable))) and ((iW or iW or (iW or RebirthDataTable)) and ((not iW or RebirthDataTable) and (RebirthDataTable or RebirthDataTable)) and ((RebirthDataTable or iW) and (not iW and not iW) and (not iW and not iW or (not iW or not RebirthDataTable))))) then
    iU = require(client:WaitForChild("PlayerData")).client
else
    client = require(iU:WaitForChild("PlayerData")).client
end
local DataTables = iU:WaitForChild("DataTables")
processedPickaxeDT = require(DataTables:WaitForChild("processedPickaxeDT"))
UpgradeDataTable = require(DataTables:WaitForChild("UpgradeDataTable"))
ZoneDataTable = require(DataTables:WaitForChild("ZoneDataTable"))
RebirthDataTable = require(DataTables:WaitForChild("RebirthDataTable"))
Zones = workspace:WaitForChild("Zones")
ir = fn177
iv = fn748
hX = "https://discord.gg/ehKVq7pf7v"
iO = "https://rscripts.net/@Ouroboros"
iK = fn434
io = fn510
local DonationsGroup
iP = fn384
iC = fn3
local i_ = "#7fd47f"
local iZ = "#6ec1ff"
h8 = "#e8a34d"
local iY = "#8b93a3"
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = hX, Copyable = true }, "|", i2 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
local i1 = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "pickaxe"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in i1 do
    fn359(v)
end
iA, Label, h0 = nil, nil, nil
iA = "Unknown"
pcall(fn200)
local AccountGroup = i1.Info:AddLeftGroupbox("Account", "circle-user")
AccountGroup:AddLabel(iC("User", LocalPlayer.Name, i_), true)
AccountGroup:AddLabel(iC("Status", "Keyless", i_), true)
AccountGroup:AddLabel(iC("Executor", iA, i_), true)
local GameInfoGroup = i1.Info:AddLeftGroupbox("Game Info", "gamepad-2")
GameInfoGroup:AddLabel(iP(i2 .. " [" .. tostring(game.PlaceId) .. "]", iZ), true)
GameInfoGroup:AddLabel(iC("Place ID", tostring(game.PlaceId), iZ), true)
Label = GameInfoGroup:AddLabel(iC("Session time", "0s", h8), true)
h0 = tostring(game.JobId)
local iT_3 = #h0 > 18
if iT_3 then
    local iQ_2 = 4
    repeat
        local nO = bit32.rrotate(bit32.bxor(bit32.lrotate(iQ_2, 29), string.byte(tostring(iQ_2))), 30)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(nO, 1624403907), 2153987088), (bit32.bxor(bit32.band(nO, 2670563388), 2805591765))), 2153987088), 2805591765) == nO then
            iT_3 = string.sub(h0, 1, 18) .. "..."
        else
            h0 = string.sub(iT_3, 1, 18) .. "..."
        end
        iQ_2 = (iQ_2 + 4) % 8
    until (iQ_2 * 5 + 2) % 8 == 2
end
local iQ_3 = iT_3
local jr = if iQ_3 then 1 else 0
local jp = 1275 * jr + 3078 * (1 - jr)
local jq = 611 * jr + 2672 * (1 - jr)
if not ((jp * 821 + jq * 894 + jp * jq) % 16777213 == 2372034) then
    iQ_3 = h0
end
is, im, ii, ig, ib, h7, h1, hW, DonationsGroup, CurrentCamera, iN, iJ, connection, connection2, ik, h4, h3, ij, iz, h_, iE, it = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local jg = iQ_3
GameInfoGroup:AddLabel(iC("Server", jg, iY), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
is = os.clock()
task.spawn(worker)
local ScriptsGroup = i1.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(iP("Included in this hub", iY), true)
ScriptsGroup:AddLabel(iP(i2, iZ), true)
local FeaturesGroup = i1.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(iP("Auto Roll & Rebirth", iZ), true)
FeaturesGroup:AddLabel(iP("Auto Mine & Sell", h8), true)
FeaturesGroup:AddLabel(iP("Auto Upgrade & Zones", i_), true)
FeaturesGroup:AddLabel(iP("Auto Equip & Index", iY), true)
local SocialsGroup = i1.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = io })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = i1.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = io })
im = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
ii = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
ig = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
ib = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
h7 = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
h1 = "https://paypal.me/TheTruckerGOD"
hW = "https://venmo.com/u/miserablemusic"
local jh = "#345d9d"
local jd = "#f7931a"
local ja = "#627eea"
local i9 = "#26a17b"
local i7 = "#14f195"
local i4 = "#0070ba"
local i3 = "#008cff"
if (not FeaturesGroup and FeaturesGroup or (not FeaturesGroup or not FeaturesGroup) or (not connection2 or false) and (not FeaturesGroup or not connection2)) and not (not FeaturesGroup and FeaturesGroup or (not FeaturesGroup or not FeaturesGroup) or (not connection2 or false) and (not FeaturesGroup or not connection2)) then
    i1 = DonationsGroup.Info:AddRightGroupbox("Donations", "heart")
else
    DonationsGroup = i1.Info:AddRightGroupbox("Donations", "heart")
end
DonationsGroup:AddLabel(iP("All donations are optional but appreciated.", h8), true)
DonationsGroup:AddLabel(iP("If you donate you get a special role, just PING after you donate.", i_), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(iP("LTC / Litecoin", jh), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(iP("BTC / Bitcoin", jd), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(iP("ETH / Ethereum", ja), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(iP("USDT", i9), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(iP("Solana", i7), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(iP("PayPal", i4), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(iP("Venmo", i3), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(iP("Don't have any of the listed currencies but still wanna donate?", iY), true)
DonationsGroup:AddLabel(iP("DM me and we'll work something out.", iZ), true)
local FaqGroup = i1.Info:AddRightGroupbox("FAQ", "circle-help")
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
local Rolling_PickaxeGroup = i1.Main:AddLeftGroupbox("Rolling & Pickaxe", "dices")
Rolling_PickaxeGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
Rolling_PickaxeGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best Pickaxe", Default = false })
Rolling_PickaxeGroup:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
local ProgressionGroup = i1.Main:AddRightGroupbox("Progression", "trending-up")
ProgressionGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
ProgressionGroup:AddToggle("AutoUpgrade", { Text = "Auto Upgrade", Default = false })
ProgressionGroup:AddToggle("AutoUnlockZones", { Text = "Auto Unlock Zones", Default = false })
local Mining_SellingGroup = i1.Main:AddLeftGroupbox("Mining & Selling", "gem")
Mining_SellingGroup:AddToggle("AutoGoBestZone", { Text = "Auto Go to Best Owned Zone", Default = false })
Mining_SellingGroup:AddToggle("AutoMine", { Text = "Auto Mine Ores", Default = false })
Mining_SellingGroup:AddToggle("AutoSell", { Text = "Auto Sell Ores", Default = false })
task.spawn(autoRollLoop)
task.spawn(autoEquipBestLoop)
task.spawn(autoClaimIndexLoop)
task.spawn(autoRebirthLoop)
task.spawn(autoUpgradeLoop)
task.spawn(autoUnlockZonesLoop)
task.spawn(autoGoBestZoneLoop)
task.spawn(autoMineLoop)
task.spawn(autoSellLoop)
local MovementGroup = i1.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = i1.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
ik = fn121
h4 = fn62
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn531)
Toggles.WalkSpeedEnabled:OnChanged(fn451)
h3 = function(ek)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not ek)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not ek
        end
    end)
    if not ek then
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
Toggles.AntiGameplayPause:OnChanged(fn449)
task.spawn(antiGameplayPauseLoop)
local MenuGroup = i1.Settings:AddLeftGroupbox("Menu", "menu")
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
MenuGroup:AddButton("Unload", onUnload)
iN = tick()
iJ = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local mg = v
        pcall(function()
            mg:Disable()
        end)
    end
end)
ij = fn68
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(antiAfkLoop)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
ThemeManager:ApplyToTab(i1.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/MineRNG")
local jb = SaveManager:BuildConfigSection(i1.Settings)
iz = fn17
h_ = fn169
iE = fn47
it = function(fq)
    local mY
    mY = nil
    local mZ = type(fq) ~= "table" or type(fq.idx) ~= "string" or type(fq.type) ~= "string" or SaveManager.Ignore[fq.idx]
    if mZ then
        return false
    end
    mY = iz(fq.type, fq.idx)
    if not mY then
        return false
    end
    local mZ_1 = pcall(function()
        if fq.type == "Input" then
            if type(fq.text) ~= "string" then
                return
            end
            mY:SetValue(fq.text)
        elseif fq.type == "ColorPicker" then
            mY:SetValueRGB(Color3.fromHex(fq.value), fq.transparency)
        elseif fq.type == "KeyPicker" then
            mY:SetValue({ fq.key, fq.mode, fq.modifiers })
            if fq.mode == "Toggle" and fq.toggled ~= nil then
                mY.Toggled = fq.toggled
                mY:Update()
            end
        else
            mY:SetValue(fq.value)
        end
    end)
    return mZ_1
end
jb:AddDivider()
jb:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
jb:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
jb:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
Library:OnUnload(fn488)
