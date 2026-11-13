local fns = {}
local LocalPlayer, zt_2, zt_9, FeaturesGroup, zt_20, zt_31, ProgressGroup, zt_43, zt_53, zt_57, EggsGroup
LocalPlayer = nil
zt_2 = nil
local pS
local EquipBest
local pz
local qg
local qY
local pY
local pg
local pF
local pm
local Label
local qL
local o3
local pL
local qs
local ps
local qR
local pR
local qy
local o9
local py
local qX
local pX
local qE
local SaveManager
local ql
local p2
local qK
local pK
local p8
local qQ
local onJoinDiscordForKeylessScripts
local pQ
local HttpService
local px
local Workspace
local pe
local pW
local VirtualUser
local qk
local pk
local p1
local AbbNumber
local pJ
local pq
local p7
local o7
local pP
local qw
local qP
local pw
local qd
local qV
local pV
local qC
local pC
local pj
local p0
local qI
local pI
local qp
local pp
local qO
local o6
local pO
local qv
local pv
local qU
local connection2
local qB
local pU
local connection
local qi
local p_
local UserInputService
local o_
local pH
local qo
local po
local p5
local qN
local pN
local qu
local pu
local qT
local pT
local qA
local Toggles
local qh
local pZ
local qG
local pG
local qn
local pn
local p4
local o4
local Library
local Options
function fns.fn31(kL, kM)
    local Type = kM.Type
    if Type == "Toggle" then
        return { idx = kL, type = "Toggle", value = kM.Value == true }
    elseif Type == "Slider" then
        return { idx = kL, type = "Slider", value = tostring(kM.Value) }
    elseif Type == "Dropdown" then
        return { idx = kL, type = "Dropdown", multi = kM.Multi == true, value = kM.Value }
    elseif Type == "Input" then
        local yt = kM.Value or ""
        return { idx = kL, type = "Input", text = tostring(yt) }
    elseif Type == "ColorPicker" then
        return { idx = kL, type = "ColorPicker", value = kM.Value:ToHex(), transparency = kM.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = kL,
            type = "KeyPicker",
            mode = kM.Mode,
            key = kM.Value,
            modifiers = kM.Modifiers,
            toggled = kM.Toggled
        }
    else
        return nil
    end
end
function fns.worker2()
    while not Library.Unloaded do
        task.wait(2)
        if qN("AntiAfk") then
            local zc = tick() - qu
            local zd = tick() - qo
            if zc >= 300 and zd >= 60 then
                pcall(p1)
            else
                if zc < 300 and zd >= 300 then
                    pcall(p1)
                end
            end
        end
    end
end
function fns.onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local xX_1 = qI()
        if xX_1 then
            xX_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.onCopyUSDTAddress()
    pn(pF, "Copied USDT address")
end
function fns.fn175(aL, aM)
    if aL.Multiplier == aM.Multiplier then
        return aL.RequiredRebirths < aM.RequiredRebirths
    end
    return aL.Multiplier < aM.Multiplier
end
function fns.onCopySolanaAddress()
    pn(pC, "Copied Solana address")
end
function fns.worker10()
    while not Library.Unloaded do
        if qN("AutoCollectAquariumCash") then
            pcall(o3)
        end
        if qN("AutoEquipBestAquarium") then
            pcall(pL)
        end
        if qN("AutoEquipBestPet") then
            pcall(pw)
        end
        task.wait(pX("AquariumDelay", 3))
    end
end
function fns.fn285()
    local xr_1
    local xq_1
    if identifyexecutor then
        xr_1, xq_1 = identifyexecutor()
        local xs = xr_1 ~= ""
        local xt = type(xr_1) == "string" and xs
        if xt then
            local xs_1 = type(xq_1) == "string" and xq_1 ~= "" and xr_1 .. " " .. xq_1
            qC = xs_1 or xr_1
        end
    end
end
function fns.fn307()
    connection:Disconnect()
    connection2:Disconnect()
    qs(false)
end
function fns.onCopyVenmoLink()
    pn(po, "Copied Venmo link")
end
function fns.fn390()
    if not Toggles.Fly.Value then
        local xL = qI()
        if xL then
            xL.PlatformStand = false
        end
    end
end
function fns.worker5()
    while not Library.Unloaded do
        local zi = qN("AutoTrain") and not qN("AutoDrain")
        if zi then
            pcall(p_)
        end
        task.wait(pX("TrainDelay", 0.08))
    end
end
function fns.fn426()
    qs(Toggles.AntiGameplayPause.Value)
end
function fns.fn429(an)
    local r7 = qn[tostring(an)] or 0
    return r7
end
function fns.onRscripts()
    pn(pZ, "Copied Rscripts profile to clipboard")
end
function fns.fn443()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    qo = tick()
end
function fns.onCopyLitecoinAddress()
    pn(pQ, "Copied Litecoin address")
end
function fns.worker()
    local xz_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local xy = math.floor(os.clock() - px)
        if xy < 60 then
            xz_1 = xy .. "s"
        elseif xy < 3600 then
            xz_1 = string.format("%dm %ds", xy // 60, xy % 60)
        else
            xz_1 = string.format("%dh %dm", xy // 3600, xy % 3600 // 60)
        end
        Label:SetText(qB("Session time", xz_1, p0))
    end
end
function fns.onCopyPayPalLink()
    pn(pu, "Copied PayPal link")
end
function fns.fn549(az, aA)
    return az.Id < aA.Id
end
function fns.worker3()
    while not Library.Unloaded do
        task.wait(1)
        if qN("AntiGameplayPause") then
            qs(true)
        end
    end
end
function fns.onCopyEthereumAddress()
    pn(pJ, "Copied Ethereum address")
end
function fns.worker6()
    while not Library.Unloaded do
        if qN("AutoRebirth") then
            pcall(pg)
        end
        task.wait(pX("RebirthDelay", 1))
    end
end
function fns.onUnload()
    Library:Unload()
end
function fns.worker8()
    while not Library.Unloaded do
        if qN("AutoHatch") then
            pcall(pV)
        end
        task.wait(pX("HatchDelay", 1))
    end
end
function fns.onCopyJoinScript_JobID()
    local iS = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, pY)
    pn(iS, "Copied join script to clipboard")
end
function fns.fn702()
    if not Toggles.WalkSpeedEnabled.Value then
        local xN = qI()
        if xN then
            xN.WalkSpeed = 16
        end
    end
end
function fns.onCopyBitcoinAddress()
    pn(pN, "Copied Bitcoin address")
end
function fns.onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local xP_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if xP_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.worker4()
    while not Library.Unloaded do
        if qN("AutoDrain") then
            pcall(o6)
            task.wait(pX("DrainLoopDelay", 0.15))
        else
            task.wait(0.25)
        end
    end
end
function fns.fn906()
    local yz = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local yA = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if yA then
                local yA_1 = qh(k, v)
                if yA_1 then
                    yz[#yz + 1] = yA_1
                end
            end
        end
    end
    table.sort(yz, function(kZ, k_)
        if kZ.type ~= k_.type then
            return kZ.type < k_.type
        end
        return kZ.idx < k_.idx
    end)
    return { objects = yz }
end
local function onInputBegan()
    qu = tick()
end
local function fn989(kD, kE)
    local ym_1 = (kD == "Toggle" and Toggles or Options)[kE]
    local yl_2 = type(ym_1) == "table" and ym_1.Type == kD
    return yl_2 and ym_1 or nil
end
local function worker9()
    while not Library.Unloaded do
        if qN("AutoSell") then
            pcall(zt_2)
        end
        task.wait(pX("SellLoopDelay", 2))
    end
end
local function onImportConfigFromClipboardTex()
    local yZ_1
    local yX = Options.SaveManager_ImportSource.Value or ""
    local yX_1
    local yY = tostring(yX):match("^%s*(.-)%s*$")
    if yY == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    yX_1, yZ_1 = pcall(HttpService.JSONDecode, HttpService, yY)
    local yY_1 = not yX_1 or type(yZ_1) ~= "table" or type(yZ_1.objects) ~= "table"
    if yY_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local yX_2 = 0
    for i, v in ipairs(yZ_1.objects) do
        if o_(v) then
            yX_2 += 1
        end
    end
    if yX_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local yZ_2 = yX_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(yX_2, yZ_2), 6)
end
local function onExportConfigToClipboard()
    local yU_1
    local yT_1
    yT_1, yU_1 = pcall(HttpService.JSONEncode, HttpService, p2())
    if not yT_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local yT_2 = setclipboard or toclipboard
    local yT_3 = type(yT_2) ~= "function" or not pcall(yT_2, yU_1)
    if yT_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function onRenderStepped(j1)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local xZ_1 = qI()
        if xZ_1 then
            xZ_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local xZ_3 = ql()
        local x_ = qI()
        local x0 = Workspace.CurrentCamera
        local x5 = if x0 then 1 else 0
        local x3 = 1179 * x5 + 2176 * (1 - x5)
        local x4 = 3737 * x5 + 2611 * (1 - x5)
        if not ((x3 * 2614 + x4 * 1499 + x3 * x4) % 16777213 == 13089592) then
            x0 = pU
        end
        pU = x0
        if xZ_3 and x_ and pU then
            x_.PlatformStand = true
            local x__1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                x__1 = x__1 + pU.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                x__1 = x__1 - pU.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                x__1 = x__1 - pU.CFrame.RightVector
            end
            local x8 = if UserInputService:IsKeyDown(Enum.KeyCode.D) then 1 else 0
            if x8 == 1 then
                x__1 = x__1 + pU.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                x__1 = x__1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                x__1 = x__1 - Vector3.new(0, 1, 0)
            end
            xZ_3.Velocity = Vector3.zero
            if x__1.Magnitude > 0 then
                xZ_3.CFrame = xZ_3.CFrame + x__1.Unit * Options.FlySpeed.Value * j1
            end
        end
    end
end
local function worker7()
    while not Library.Unloaded do
        if qN("AutoBuyPump") then
            pcall(qw)
        end
        if qN("AutoBuyUpgrades") then
            pcall(qy)
        end
        if qN("AutoBuyAura") then
            pcall(qT)
        end
        task.wait(pX("ShopDelay", 1))
    end
end
local function onInputChanged(kw)
    local UserInputType = kw.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        qu = tick()
    end
end
o_ = nil
AbbNumber = nil
o3 = nil
o4 = nil
o6 = nil
o7 = nil
onJoinDiscordForKeylessScripts = nil
o9 = nil
zt_2 = nil
connection2 = nil
pe = nil
pg = nil
pj = nil
pk = nil
pm = nil
pn = nil
po = nil
pp = nil
pq = nil
ps = nil
Options = nil
pu = nil
pv = nil
pw = nil
px = nil
py = nil
pz = nil
Toggles = nil
connection = nil
pC = nil
SaveManager = nil
pF = nil
pG = nil
pH = nil
pI = nil
pJ = nil
pK = nil
pL = nil
Library = nil
local o0, o2, o5, pb, pd, pf, ph, AuraHelper, UpgradeHelper, PumpHelper, pD
pN = nil
pO = nil
pP = nil
pQ = nil
pR = nil
pS = nil
pT = nil
pU = nil
pV = nil
pW = nil
pX = nil
pY = nil
pZ = nil
p_ = nil
p0 = nil
p1 = nil
p2 = nil
Label = nil
p4 = nil
p5 = nil
p7 = nil
p8 = nil
LocalPlayer = nil
qd = nil
Workspace = nil
qg = nil
qh = nil
qi = nil
qk = nil
ql = nil
qn = nil
qo = nil
qp = nil
qs = nil
qu = nil
qv = nil
qw = nil
HttpService = nil
qy = nil
local p6, p9, qb, qc, qf, CoreGui, qm, GuiService, qr, qt, qz
qA = nil
qB = nil
qC = nil
VirtualUser = nil
qE = nil
qG = nil
UserInputService = nil
qI = nil
qK = nil
qL = nil
qN = nil
qO = nil
qP = nil
qQ = nil
qR = nil
EquipBest = nil
qT = nil
qU = nil
qV = nil
qX = nil
qY = nil
local qF, qJ, qM, qW
qF = nil
qJ = nil
qM = nil
qW = nil
UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, LocalPlayer, p4, pZ, pH, pD, py, pq, pk, ph, pd, pb, o5, o0, EquipBest, qO, qJ, qF, qz, qr, qk, qf, qb, p9, p6, pR, pO, zt_20, PumpHelper, UpgradeHelper, AuraHelper, pe, AbbNumber, qU, qP, qK = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local zt_65 = game:GetService("Players")
local zt_12 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
LocalPlayer = zt_65.LocalPlayer
local zt_60 = "+1 Drain Water Per Click"
p4 = "https://discord.gg/ehKVq7pf7v"
pZ = "https://rscripts.net/@Ouroboros"
local zt_35 = zt_12:WaitForChild("Remote")
local zt_46 = zt_35:WaitForChild("Event")
local zt_69 = zt_35:WaitForChild("Function")
if ((pH or pH) and (pO or pO) or (not pH or not pH) and (not pO or pH) or not pH and not pH and (not pO or not pO) and (pH and not pH and (not pO or pO))) and not ((pH or pH) and (pO or pO) or (not pH or not pH) and (not pO or pH) or not pH and not pH and (not pO or not pO) and (pH and not pH and (not pO or pO))) then
    zt_46 = pH.Level["[C-S]Click"]
else
    pH = zt_46.Level["[C-S]Click"]
end
if ((not CoreGui or not AbbNumber) and (not CoreGui and not CoreGui) or (not CoreGui or not AbbNumber) and (not AbbNumber or not CoreGui)) and ((CoreGui and CoreGui or (not AbbNumber or not CoreGui)) and (not CoreGui and not AbbNumber and (AbbNumber or not AbbNumber))) or not (((not CoreGui or not AbbNumber) and (not CoreGui and not CoreGui) or (not CoreGui or not AbbNumber) and (not AbbNumber or not CoreGui)) and ((CoreGui and CoreGui or (not AbbNumber or not CoreGui)) and (not CoreGui and not AbbNumber and (AbbNumber or not AbbNumber)))) then
    pD = zt_46.Stage["[C-S]StandingWater"]
    py = zt_46.Level["[C-S]GoShow"]
    pq = zt_46.Level["[C-S]ReturnHome"]
else
    zt_46 = py.Stage["[C-S]StandingWater"]
    pq = py.Level["[C-S]GoShow"]
    pD = py.Level["[C-S]ReturnHome"]
end
pk = zt_46.Rebirth["[C - S]TryRebirth"]
ph = zt_46.Pump["[C-S]BuyCashPump"]
pd = zt_46.Pump["[C-S]EquipPump"]
pb = zt_46.Upgrade["[C-S]BuyCashUpgrade"]
o5 = zt_46.Aura["[C-S]BuyCashAura"]
o0 = zt_46.Aura["[C-S]EquipAura"]
EquipBest = zt_46.Pet.EquipBest
qO = zt_69.Stage["[C-S]GetStageState"]
qJ = zt_69.Pump["[C-S]GetPumpData"]
qF = zt_69.Upgrade["[C-S]GetUpgradeData"]
qz = zt_69.Aura["[C-S]GetAuraData"]
qr = zt_69.Fish["[C-S]GetFishData"]
qk = zt_69.Fish["[C-S]GetCarryFishData"]
qf = zt_69.Fish["[C-S]SellFish"]
qb = zt_69.Fish["[C-S]SellAllFish"]
p9 = zt_69.Egg["[C-S]CanOpenEgg"]
p6 = zt_69.Egg["[C-S]OpenEgg"]
pR = zt_69.FishShow["[C-S]BestFishUI"]
pO = zt_69.FishShow["[C-S]ClaimOfflineCash"]
if not pq and qU and (GuiService and py) and (not zt_12 or not Workspace or (pq or zt_12)) and (GuiService and not py or zt_12 and py or not Workspace and Workspace and (pq or not GuiService)) or not (not pq and qU and (GuiService and py) and (not zt_12 or not Workspace or (pq or zt_12)) and (GuiService and not py or zt_12 and py or not Workspace and Workspace and (pq or not GuiService))) then
    zt_20 = zt_12:WaitForChild("Config")
else
    zt_12 = zt_20:WaitForChild("Config")
end
require(zt_20:WaitForChild("StageHelper"))
PumpHelper = require(zt_20:WaitForChild("PumpHelper"))
UpgradeHelper = require(zt_20:WaitForChild("UpgradeHelper"))
AuraHelper = require(zt_20:WaitForChild("AuraHelper"))
pe = require(zt_20:WaitForChild("EggHelper"))
local TrainingAreaHelper = require(zt_20:WaitForChild("TrainingAreaHelper"))
require(zt_20:WaitForChild("AquariumHelper"))
AbbNumber = require(zt_12:WaitForChild("Utils"):WaitForChild("AbbNumber"))
qU = 15
qP = "关卡"
qK = "水面"
local zt_48 = {}
local zt_6 = 1
local zt_28 = qU
while zt_6 <= zt_28 do
    local zt_66 = zt_6
    zt_48[zt_66] = "Stage " .. zt_66
    zt_6 += 1
end
qt, qn, zt_20, qc, zt_53, zt_43, zt_31, p7 = nil, nil, nil, nil, nil, nil, nil, nil
zt_65 = 6
repeat
    zt_9 = (zt_65 * 3 + 1) % 4 + 1
    if zt_9 <= 2 then
        if zt_9 <= 1 then
            zt_69 = (vector.create((zt_65 * 3 + 5) % 11 + 1, (zt_65 * 10 + 9) % 13 + 1, (zt_65 * 2 + 7) % 17 + 1))
            zt_57 = (vector.create((zt_65 * 5 + 5) % 11 + 1, (zt_65 * 2 + 4) % 13 + 1, (zt_65 * 10 + 13) % 17 + 1))
            local BQ = vector.cross(zt_69, zt_57)
            local BR = vector.dot(zt_69, zt_57)
            if vector.dot(BQ, BQ) + BR * BR == vector.dot(zt_69, zt_69) * vector.dot(zt_57, zt_57) + 5 then
                zt_43 = fns.fn429
            else
                p7 = fns.fn429
            end
            zt_65 = (zt_65 + 7) % 16
        else
            zt_69 = (vector.create((zt_65 * 6 + 8) % 11 + 1, (zt_65 * 11 + 6) % 13 + 1, (zt_65 * 14 + 8) % 17 + 1))
            zt_57 = (vector.create((zt_65 * 6 + 6) % 11 + 1, (zt_65 * 5 + 9) % 13 + 1, (zt_65 * 10 + 5) % 17 + 1))
            zt_46 = (vector.create((zt_65 * 1 + 2) % 11 + 1, (zt_65 * 4 + 7) % 13 + 1, (zt_65 * 10 + 11) % 17 + 1))
            if vector.dot(vector.cross(zt_69, zt_57), zt_46) == vector.dot(vector.cross(zt_57, zt_46), zt_69) + 4 then
                p7 = {}
            else
                zt_43 = {}
            end
            zt_65 = (zt_65 + 15) % 16
        end
    elseif zt_9 <= 3 then
        if (zt_65 * 2 + 8) * 10 % 3 == ((zt_65 * 2 + 8) * 10 + 1) % 3 then
            zt_43 = { "1", "10", "3" }
        else
            zt_31 = { "1", "3", "10" }
        end
        zt_65 = (zt_65 + 15) % 16
    else
        if zt_65 * 49100077 + 1 + 5 >= zt_65 * 49100077 + 1 + 5 + 5 then
            qn = { "Backpack", "FishDisplay", "Speed" }
            qt = { Exotic = 7, Secret = 8, Rare = 2, Exclusive = 6, Mythic = 5, Legendary = 4, Epic = 3, Common = 1 }
            qc = { "Rare", "Epic", "Mythic", "Secret", "Common", "Exotic", "Legendary", "Exclusive" }
            zt_53 = { "Normal", "Diamond", "Hole", "Gold" }
            zt_20 = { "Highest Earning", "Highest Rarity", "Random" }
        else
            qt = { "Backpack", "Speed", "FishDisplay" }
            qn = { Common = 1, Rare = 2, Epic = 3, Legendary = 4, Mythic = 5, Exclusive = 6, Exotic = 7, Secret = 8 }
            zt_20 = { "Common", "Rare", "Epic", "Legendary", "Mythic", "Exclusive", "Exotic", "Secret" }
            qc = { "Normal", "Gold", "Diamond", "Hole" }
            zt_53 = { "Highest Earning", "Random", "Highest Rarity" }
        end
        zt_65 = (zt_65 + 7) % 16
    end
until (zt_65 * 9 + 2) % 16 == 4
zt_69, zt_57 = nil, nil
zt_9 = 4
repeat
    zt_65 = (zt_9 * 1 + 0) % 2 + 1
    if zt_65 <= 1 then
        local AO = bit32.rrotate(bit32.bxor(bit32.lrotate(zt_9, 4), string.byte(tostring(zt_69))), 31)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(AO, 1895465581), 3536293984), (bit32.bxor(bit32.band(AO, 2399501714), 3440878505))), 3536293984), 3440878505) ~= AO then
            pe = zt_69.GetAllEggConfig()
        else
            zt_69 = pe.GetAllEggConfig()
        end
        zt_9 = (zt_9 + 3) % 8
    else
        local A_ = bit32.rrotate(bit32.bxor(bit32.lrotate(zt_9, 16), string.byte(tostring(zt_69))), 11)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(A_, 3739663023), 1109337807), (bit32.bxor(bit32.band(A_, 555304272), 1389294332))), 1109337807), 1389294332) ~= A_ then
            zt_69 = {}
        else
            zt_57 = {}
        end
        zt_9 = (zt_9 + 1) % 8
    end
until (zt_9 * 7 + 3) % 8 == 3
for k, v in pairs(zt_69) do
    zt_65 = tonumber(k) or k
    zt_9 = zt_65
    zt_65 = pe.GetCostType(zt_9) or pe.getCostType(zt_9)
    zt_69 = zt_65
    if zt_69 == "Cash" then
        zt_65 = #zt_57 + 1
        zt_69 = (pe.GetEggName(zt_9))
        if not zt_69 then
            zt_46 = v and v.name
            zt_69 = zt_46
        end
        if not zt_69 then
            zt_69 = "Egg " .. tostring(zt_9)
        end
        zt_57[zt_65] = { Id = zt_9, Name = zt_69 }
    end
end
zt_46 = 2
repeat
    zt_65 = (vector.create((zt_46 * 4 + 4) % 11 + 1, (zt_46 * 7 + 5) % 13 + 1, (zt_46 * 6 + 15) % 17 + 1))
    local A8 = vector.floor(zt_65) + vector.ceil(zt_65 * -1)
    if vector.dot(A8, A8) == 1 then
        table.sort(zt_57, fns.fn549)
    else
        table.sort(zt_57, fns.fn549)
    end
    zt_46 = (zt_46 + 5) % 8
until (zt_46 * 1 + 7) % 8 == 6
for i, v in ipairs(zt_57) do
    zt_43[#zt_43 + 1] = v.Name
end
qG = {}
zt_65 = TrainingAreaHelper.GetAllTrainingAreaConfig()
for k, v in pairs(zt_65) do
    zt_65 = tonumber(k) or k
    zt_9 = zt_65
    zt_65 = TrainingAreaHelper.GetRobuxProduct(zt_9)
    zt_69 = zt_65 == nil and type(v) == "table" and v.productKey == nil
    if zt_69 then
        zt_65 = #qG + 1
        zt_69 = TrainingAreaHelper.GetTrainingAreaName(zt_9) or "Area " .. tostring(zt_9)
        zt_57 = tonumber(TrainingAreaHelper.GetMultiplier(zt_9)) or 0
        zt_46 = tonumber(TrainingAreaHelper.GetRebirthRequired(zt_9)) or 0
        qG[zt_65] = { Id = zt_9, Name = zt_69, Multiplier = zt_57, RequiredRebirths = zt_46 }
    end
end
table.sort(qG, fns.fn175)
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
zt_9 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
pn = function(aU, aV)
    if setclipboard then
        setclipboard(aU)
    elseif toclipboard then
        toclipboard(aU)
    end
    Library:Notify(aV)
end
onJoinDiscordForKeylessScripts = function()
    pn(p4, "Copied Discord invite to clipboard")
end
qQ = function(a0, a1)
    return string.format('<font color="%s">%s</font>', a1, a0)
end
qB = function(a3, a4, a5)
    return string.format("<b>%s</b> %s %s", a3, '<font color="#5a6070">-</font>', qQ(a4, a5))
end
p0 = "#e8a34d"
pF = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
zt_57 = "#6ec1ff"
zt_35 = "#7fd47f"
pN = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
pC = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
pJ = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
pQ = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
pu = "https://paypal.me/TheTruckerGOD"
po = "https://venmo.com/u/miserablemusic"
local zt_15 = "#8b93a3"
qN = function(bq)
    local se = Toggles[bq]
    return se ~= nil and se.Value == true
end
qi = function(bv)
    local sh = Options[bv]
    return sh and sh.Value or nil
end
pX = function(bA, bB)
    local sk = Options[bA]
    local sl = sk and tonumber(sk.Value)
    if sl then
        return sl
    end
    return bB
end
pp = function(bH, bI)
    local sq = Options[bH]
    local sr = sq and sq.Value
    if type(sr) ~= "table" then
        return false
    elseif sr[bI] == true then
        return true
    else
        for k in pairs(sr) do
            if k == bI and sr[k] then
                return true
            end
        end
        return false
    end
end
qI = function()
    local Character = LocalPlayer.Character
    local sy = Character and Character:FindFirstChildOfClass("Humanoid")
    return sy
end
ql = function()
    local Character = LocalPlayer.Character
    local sB = Character and Character:FindFirstChild("HumanoidRootPart")
    return sB
end
p5 = function(bY)
    local Character = LocalPlayer.Character
    if not Character then
        return
    end
    if Character.PrimaryPart then
        Character:PivotTo(bY)
    else
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
        if HumanoidRootPart then
            HumanoidRootPart.CFrame = bY
        end
    end
end
pI = function(b2, b3)
    local sO
    if typeof(b2) ~= "Vector3" then
        return
    end
    if not Workspace.StreamingEnabled then
        return
    end
    sO = false
    task.spawn(function()
        pcall(function()
            local sM = b3 or 5
            LocalPlayer:RequestStreamAroundAsync(b2, sM)
        end)
        sO = true
    end)
    local sP = os.clock()
    local sQ = b3
    local sX = if sQ then 1 else 0
    local sV = 487 * sX + 3412 * (1 - sX)
    local sW = 3173 * sX + 2403 * (1 - sX)
    if not ((sV * 205 + sW * 1383 + sV * sW) % 16777213 == 6033345) then
        sQ = 5
    end
    local sP_1 = sP + sQ + 0.25
    while true do
        local sQ_1 = not sO and os.clock() < sP_1 and not Library.Unloaded
        if sQ_1 then
            task.wait()
            continue
        end
        break
    end
end
qm = function(ci)
    local sZ_1
    local sY_1
    if type(ci) == "number" then
        return ci
    elseif type(ci) == "string" then
        sY_1, sZ_1 = pcall(AbbNumber.ConvertToNumber, ci)
        local s_ = sY_1 and type(sZ_1) == "number"
        if s_ then
            return sZ_1
        end
        local sY_2 = tonumber((ci:gsub("[%$,]", ""))) or 0
        return sY_2
    else
        return 0
    end
end
pS = function(co, cp, cq)
    local s1 = LocalPlayer:FindFirstChild(co)
    local s2 = s1 and s1:FindFirstChild(cp)
    local s1_1 = s2
    if s2 then
        s2 = s1_1:IsA("ValueBase")
    end
    if s2 then
        return s1_1.Value
    end
    return cq
end
pf = function()
    local s4 = tonumber(pS("Cash", "cash", 0)) or 0
    return s4
end
qV = function()
    local tb = tonumber(pS("Level", "level", 0)) or 0
    return tb
end
qL = function()
    local td = tonumber(pS("Rebirth", "rebirth", 0)) or 0
    return td
end
qA = function()
    local tf = (tonumber(pS("Rebirth", "rebirthNeed", math.huge)))
    local tj = if tf then 1 else 0
    local th = 3865 * tj + 3200 * (1 - tj)
    local ti = 3900 * tj + 2639 * (1 - tj)
    if not ((th * 2539 + ti * 3244 + th * ti) % 16777213 == 3983909) then
        tf = math.huge
    end
    return tf
end
qg = function()
    local tk = qi("DrainStage")
    if type(tk) == "string" then
        local tl = tonumber(tk:match("%d+"))
        if tl then
            return math.clamp(tl, 1, qU)
        end
        return 1
    end
    return 1
end
pT = function()
    for i, child in ipairs(Workspace:GetChildren()) do
        if child:IsA("Folder") then
            for i, child in ipairs(child:GetChildren()) do
                if child:FindFirstChild("WorldFish") then
                    return child
                end
            end
        end
    end
end
ps = function(cT)
    local tA = pT()
    if not tA then
        return nil
    end
    return tA:FindFirstChild(qP .. tostring(cT))
end
o7 = function(cY)
    local BasePart
    local tF = ps(cY)
    local tF_6
    if tF then
        local tG_1 = tF:FindFirstChild(qK)
        local tH = tG_1 and tG_1:IsA("BasePart")
        if tH then
            return tG_1.CFrame + Vector3.new(0, 2, 0), tG_1.Position
        end
        local _1 = tF:FindFirstChild("1")
        local tF_1 = _1 and _1:IsA("BasePart")
        if tF_1 then
            local tF_2 = math.clamp(_1.Size.Y * 0.35, 4, 24)
            return CFrame.new(_1.Position + Vector3.new(0, tF_2, 0)), _1.Position
        end
        local FishSpawnPoints = Workspace:FindFirstChild("FishSpawnPoints")
        local tG_3 = FishSpawnPoints and FishSpawnPoints:FindFirstChild("Stage" .. tostring(cY))
        if tF_6 then
            local BasePart2 = tG_3:FindFirstChildWhichIsA("BasePart")
            if BasePart then
                return BasePart2.CFrame + Vector3.new(0, 3, 0), BasePart2.Position
            end
            return nil, nil
        end
        return nil, nil
    end
    local FishSpawnPoints = Workspace:FindFirstChild("FishSpawnPoints")
    local tG_5 = FishSpawnPoints and FishSpawnPoints:FindFirstChild("Stage" .. tostring(cY))
    tF_6 = tG_5
    if tF_6 then
        BasePart = tF_6:FindFirstChildWhichIsA("BasePart")
        if BasePart then
            return BasePart.CFrame + Vector3.new(0, 3, 0), BasePart.Position
        end
        return nil, nil
    end
    return nil, nil
end
pP = function(dc)
    local tN_1
    local tM_1
    tN_1, tM_1 = o7(dc)
    local tO = not tN_1
    if tO ~= false then
        tO = tM_1
    end
    if tO then
        pI(tM_1, 4)
        tN_1 = o7(dc)
    elseif tM_1 then
        local tO_1 = ql()
        if tO_1 and (tO_1.Position - tM_1).Magnitude > 80 then
            pI(tM_1, 4)
            local tM_2 = select(1, o7(dc)) or tN_1
            tN_1 = tM_2
        end
    end
    if not tN_1 then
        return false
    end
    local tM_3 = ql()
    if not tM_3 or (tM_3.Position - tN_1.Position).Magnitude > 8 then
        p5(tN_1)
        task.wait(0.15)
    end
    return true
end
qY = function(dp)
    local tS_1
    local tR_1
    tR_1, tS_1 = pcall(function()
        return qO:InvokeServer()
    end)
    local tT = not tR_1 or type(tS_1) ~= "table"
    if tT then
        return nil
    end
    local tR_2 = tS_1[dp] or tS_1[tostring(dp)]
    return tR_2
end
qd = function(dy)
    if LocalPlayer:GetAttribute("StageCompleted_" .. tostring(dy)) == true then
        return true
    end
    local tV = qY(dy)
    if type(tV) == "table" then
        if tV.completed == true then
            return true
        end
        local tW = tonumber(tV.remaining)
        if tW and tW <= 0 then
            return true
        end
        return false
    end
    return false
end
pK = function()
    pcall(function()
        pH:FireServer()
    end)
end
pv = function(dI)
    pcall(function()
        pD:FireServer(dI)
    end)
end
o9 = function()
    local tY = pT()
    if tY then
        local WorldFish = tY:FindFirstChild("WorldFish")
        if WorldFish then
            return WorldFish
        end
    end
    for i, descendant in ipairs(Workspace:GetDescendants()) do
        local tY_1 = descendant.Name == "WorldFish" and descendant:IsA("Folder")
        if tY_1 then
            return descendant
        end
    end
end
qp = function(dV)
    if not dV then
        return
    end
    if fireproximityprompt then
        pcall(fireproximityprompt, dV)
        return
    end
    pcall(function()
        dV:InputHoldBegin()
    end)
    local ua = dV.HoldDuration or 0
    task.wait(ua)
    pcall(function()
        dV:InputHoldEnd()
    end)
end
p8 = function()
    local ug_1
    local uf_1
    uf_1, ug_1 = pcall(function()
        return qk:InvokeServer()
    end)
    local uh = uf_1 and type(ug_1) == "table"
    if uh then
        return ug_1
    end
    return { Count = 0, Capacity = 0, Items = {} }
end
pG = function()
    local um = p8()
    local un = tonumber(um.Count) or 0
    if un <= 0 then
        return
    end
    pcall(function()
        py:FireServer()
    end)
    task.wait(0.6)
    pcall(function()
        pq:FireServer()
    end)
    task.wait(0.25)
end
zt_2 = nil
o4 = function(ec)
    local up = tonumber(ec:GetAttribute("Price")) or 0
    local up_1 = p7(ec:GetAttribute("Rarity"))
    return up, up_1
end
qE = function(eh)
    local uy_2
    local ux_2
    if not qd(eh) then
        return
    end
    local uu = o9()
    if not uu then
        return
    end
    local uv = "^Fish_" .. tostring(eh) .. "_"
    local uw = {}
    for i, child in ipairs(uu:GetChildren()) do
        if child.Name:match(uv) then
            local ProximityPrompt = child:FindFirstChildWhichIsA("ProximityPrompt", true)
            local ux_1 = child:FindFirstChild("FishRoot", true) or child:FindFirstChildWhichIsA("BasePart", true)
            local uy_1 = ProximityPrompt
            if uy_1 then
                uy_1 = ProximityPrompt.Enabled
            end
            if uy_1 then
                uy_1 = ux_1
            end
            if uy_1 then
                uy_1 = child:GetAttribute("Claimed") ~= true
            end
            if uy_1 then
                ux_2, uy_2 = o4(child)
                uw[#uw + 1] = {
                    Fish = child,
                    Prompt = ProximityPrompt,
                    Part = ux_1,
                    Price = ux_2,
                    Rarity = uy_2,
                    Random = math.random()
                }
            end
        end
    end
    local uu_2 = qi("DrainPriority") or "Highest Earning"
    if uu_2 == "Highest Rarity" then
        table.sort(uw, function(eB, eC)
            if eB.Rarity == eC.Rarity then
                return eB.Price > eC.Price
            end
            return eB.Rarity > eC.Rarity
        end)
    elseif uu_2 == "Random" then
        table.sort(uw, function(ez, eA)
            return ez.Random < eA.Random
        end)
    else
        table.sort(uw, function(ex, ey)
            if ex.Price == ey.Price then
                return ex.Rarity > ey.Rarity
            end
            return ex.Price > ey.Price
        end)
    end
    local uu_3 = math.clamp(math.floor(pX("FishPickAmount", 3)), 1, 50)
    local uv_2 = 0
    for i, v in ipairs(uw) do
        local uw_1 = Library.Unloaded or not qN("AutoDrain")
        if uw_1 then
            return
        end
        if uv_2 >= uu_3 then
            break
        end
        local uw_2 = p8()
        local ux_3 = tonumber(uw_2.Count) or 0
        local ux_4 = tonumber(uw_2.Capacity) or 0
        local ux_5 = uu_3 - uv_2
        if ux_4 > 0 then
            ux_5 = math.min(ux_5, ux_4 - ux_3)
        end
        if ux_5 <= 0 then
            pG()
            local uw_4 = qN("AutoSell") and zt_2
            if uw_4 then
                pcall(zt_2)
            end
            break
        end
        p5(v.Part.CFrame + Vector3.new(0, 3, 0))
        task.wait(0.08)
        qp(v.Prompt)
        uv_2 += 1
        task.wait(pX("FishPickDelay", 0.12))
    end
end
pm = function(eV)
    local uR
    local uQ = 1
    while true do
        if not (uQ <= eV) then
            return eV
        end
        uR = uQ
        if not qd(uR) then
            break
        end
        uQ += 1
    end
    return uR
end
o6 = function()
    local uT = qg()
    local uU = pm(uT)
    if not pP(uU) then
        return
    end
    if not qd(uU) then
        local uV = math.clamp(math.floor(pX("DrainClicks", 12)), 1, 60)
        local uZ = 1
        while true do
            if not (uZ <= uV) then
                return
            end
            local uV_1 = Library.Unloaded or not qN("AutoDrain")
            if uV_1 then
                return
            end
            if not pP(uU) then
                break
            end
            pv(uU)
            pK()
            task.wait(pX("DrainClickDelay", 0.05))
            uZ += 1
        end
        return
    end
    if uU ~= uT then
        return
    end
    qE(uT)
    local uT_1 = p8()
    local uU_1 = tonumber(uT_1.Count) or 0
    if uU_1 > 0 then
        pG()
    end
end
pz = function()
    local u4 = qL()
    local u5
    for i, v in ipairs(qG) do
        if v.RequiredRebirths <= u4 then
            if not u5 or v.Multiplier > u5.Multiplier then
                u5 = v
            end
        end
    end
    return u5
end
qX = function(fo)
    local ExerciseArea = Workspace:FindFirstChild("ExerciseArea")
    if not ExerciseArea then
        return nil
    end
    local vf = tostring(fo)
    local vg = -1
    local vh
    for i, child in ipairs(ExerciseArea:GetChildren()) do
        local ve_1 = child.Name == vf and child:IsA("BasePart")
        if ve_1 then
            local ve_2 = child.Size.X * child.Size.Y * child.Size.Z
            if ve_2 > vg then
                vh = child
                vg = ve_2
            end
        end
    end
    return vh
end
p_ = function()
    local vp = pz()
    if not vp then
        return
    end
    local vq = qX(vp.Id)
    if not vq then
        return
    end
    local vp_1 = ql()
    if not vp_1 or (vp_1.Position - vq.Position).Magnitude > 6 then
        p5(vq.CFrame)
        task.wait(0.1)
    end
    pK()
end
pg = function()
    if qV() >= qA() then
        pcall(function()
            pk:FireServer()
        end)
    end
end
qR = function()
    local vu = LocalPlayer:GetAttribute("FishShowPlotId") or 1
    return Workspace:FindFirstChild(tostring(vu))
end
qv = function(fS)
    local vx = qR()
    if not vx then
        return nil
    end
    for i, descendant in ipairs(vx:GetDescendants()) do
        local vx_1 = descendant:IsA("BasePart") and fS(descendant)
        if vx_1 then
            return descendant
        end
    end
end
pW = function()
    return qv(function(f_)
        local vF = f_.Name == "Touch" and f_.Parent and f_.Parent.Name:find("收集") ~= nil
        return vF
    end)
end
pj = function(f6)
    local vP = ql()
    local vQ = not f6
    local vR = not vP
    local vV = if vR then 1 else 0
    local vT = 4034 * vV + 3684 * (1 - vV)
    local vU = 1294 * vV + 1307 * (1 - vV)
    if not ((vT * 3678 + vU * 1364 + vT * vU) % 16777213 == 5044851) then
        vR = vQ
    end
    if vR then
        return
    end
    if firetouchinterest then
        pcall(firetouchinterest, vP, f6, 0)
        task.wait(0.05)
        pcall(firetouchinterest, vP, f6, 1)
    end
end
o3 = function()
    local vW = pW()
    if vW then
        pj(vW)
    end
    pcall(function()
        pO:InvokeServer()
    end)
end
qw = function()
    local vY
    local v__1
    local vZ_1
    vZ_1, v__1 = pcall(function()
        return qJ:InvokeServer()
    end)
    local v0 = not vZ_1 or type(v__1) ~= "table"
    if v0 then
        return
    end
    local v0_1 = v__1.Owned or {}
    local v__2 = pf()
    local v0_2 = -1
    vY = nil
    for k in pairs(PumpHelper.GetAllPumpConfig()) do
        local v1 = tonumber(k) or k
        local v1_1 = not v0_1[v1]
        if v1_1 ~= false then
            v1_1 = not v0_1[tostring(v1)]
        end
        if v1_1 then
            local v1_2 = qm(PumpHelper.GetCashPrice(v1))
            local v3 = qm(PumpHelper.GetMultiplier(v1))
            if v1_2 > 0 and v1_2 <= v__2 and v3 > v0_2 then
                vY = v1
                v0_2 = v3
            end
        end
    end
    if not vY then
        return
    end
    pcall(function()
        ph:FireServer(vY)
    end)
    task.wait(0.2)
    pcall(function()
        pd:FireServer(vY)
    end)
end
qy = function()
    local we_1
    local wd_1
    wd_1, we_1 = pcall(function()
        return qF:InvokeServer()
    end)
    local wf = not wd_1 or type(we_1) ~= "table"
    if wf then
        return
    end
    local wd_2 = pf()
    for i, v in ipairs(qt) do
        local wn = v
        local wf_1 = we_1[wn]
        local wg = type(wf_1) == "table" and wf_1.isMax ~= true
        if wg then
            local wg_1 = tonumber(wf_1.level) or 0
            local wg_2 = qm(UpgradeHelper.GetCashPrice(wn, wg_1))
            if wg_2 > 0 and wg_2 <= wd_2 then
                pcall(function()
                    pb:FireServer(wn)
                end)
                wd_2 -= wg_2
                task.wait(0.1)
            end
        end
    end
end
qT = function()
    local wo
    local wq_1
    local wp_1
    wp_1, wq_1 = pcall(function()
        return qz:InvokeServer()
    end)
    local wr = not wp_1 or type(wq_1) ~= "table"
    if wr then
        return
    end
    local wr_1 = wq_1.Owned or {}
    local wq_2 = pf()
    local wr_2 = -1
    wo = nil
    for k in pairs(AuraHelper.GetAllAuraConfig()) do
        local ws = tonumber(k) or k
        local ws_1 = not wr_1[ws]
        if ws_1 ~= false then
            ws_1 = not wr_1[tostring(ws)]
        end
        if ws_1 then
            local ws_2 = qm(AuraHelper.GetCashPrice(ws))
            local wu = qm(AuraHelper.GetMultiplier(ws))
            if ws_2 > 0 and ws_2 <= wq_2 and wu > wr_2 then
                wo = ws
                wr_2 = wu
            end
        end
    end
    if not wo then
        return
    end
    pcall(function()
        o5:FireServer(wo)
    end)
    task.wait(0.2)
    pcall(function()
        o0:FireServer(wo)
    end)
end
qW = function()
    local wE = qi("HatchEgg")
    if type(wE) ~= "string" then
        return nil
    end
    local wF = pe.GetAllEggConfig()
    for k, v in pairs(wF) do
        local wF_1 = tonumber(k) or k
        local wF_2 = (pe.GetEggName(wF_1))
        if not wF_2 then
            wF_2 = v and v.name
        end
        if wF_2 == wE then
            return wF_1
        end
    end
    return nil
end
pV = function()
    local wS, wT
    local wV_1
    wS = qW()
    if not wS then
        return
    end
    local wU = tonumber(qi("HatchAmount")) or 1
    local wU_1
    wT = wU
    wU_1, wV_1 = pcall(function()
        return p9:InvokeServer(wS, wT)
    end)
    if not wU_1 or wV_1 ~= true then
        return
    end
    pcall(function()
        p6:InvokeServer(wS, wT)
    end)
end
qM = function(hP)
    if type(hP) ~= "table" then
        return false
    end
    local wZ = hP.protected == true and qN("SellKeepProtected")
    if wZ then
        return false
    end
    local wZ_1 = hP.special == true and qN("SellKeepSpecial")
    if wZ_1 then
        return false
    end
    local wZ_2 = hP.mutation or "Normal"
    local w_ = tostring(wZ_2)
    if pp("SellKeepMutations", w_) then
        return false
    end
    local wZ_3 = qi("SellMode") or "Sell All"
    if wZ_3 == "Below Rarity" then
        local wZ_4 = qi("SellBelowRarity") or "Mythic"
        return p7(hP.rarity) < p7(wZ_4)
    end
    return true
end
zt_2 = function()
    local w4 = qi("SellMode") or "Sell All"
    local w4_4
    local w5_2
    local w4_1 = qN("SellKeepProtected")
    local w6 = qN("SellKeepSpecial")
    local w7 = false
    for i, v in ipairs(qc) do
        if pp("SellKeepMutations", v) then
            w7 = true
            break
        end
    end
    if w4 == "Sell All" and not w4_1 and not w6 and not w7 then
        pcall(function()
            qb:InvokeServer()
        end)
        return
    end
    w4_4, w5_2 = pcall(function()
        return qr:InvokeServer()
    end)
    local w6_2 = not w4_4 or type(w5_2) ~= "table" or type(w5_2.Items) ~= "table"
    if w6_2 then
        return
    end
    for k, v in pairs(w5_2.Items) do
        local xp = v
        local w4_5 = Library.Unloaded or not qN("AutoSell")
        if w4_5 then
            return
        end
        local w4_6 = qM(xp) and xp.uid
        if w4_6 then
            pcall(function()
                qf:InvokeServer(xp.uid)
            end)
            task.wait(pX("SellDelay", 0.05))
        end
    end
end
pL = function()
    pcall(function()
        pR:InvokeServer()
    end)
end
pw = function()
    pcall(function()
        EquipBest:FireServer()
    end)
end
local zt_4 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = p4, Copyable = true }, "|", zt_60 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local zt_63 = {
    Info = zt_4:AddTab("Info", "info"),
    Main = zt_4:AddTab("Main", "droplets"),
    Shop = zt_4:AddTab("Shop", "shopping-bag"),
    Fish = zt_4:AddTab("Fish", "fish"),
    Player = zt_4:AddTab("Player", "person-standing"),
    Settings = zt_4:AddTab("Settings", "settings")
}
zt_4 = function(iB)
    local DiscordGroup = iB:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onJoinDiscordForKeylessScripts })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onJoinDiscordForKeylessScripts })
end
for k, v in zt_63 do
    zt_4(v)
end
qC, Label, pY = nil, nil, nil
qC = "Unknown"
pcall(fns.fn285)
local zt_51 = zt_63.Info:AddLeftGroupbox("Account", "circle-user")
zt_51:AddLabel(qB("User", LocalPlayer.Name, zt_35), true)
zt_51:AddLabel('<b>Status</b> <font color="#5a6070">-</font> <font color="#7fd47f">Keyless</font>', true)
zt_51:AddLabel(qB("Executor", qC, zt_35), true)
local GameInfoGroup = zt_63.Info:AddLeftGroupbox("Game Info", "gamepad-2")
GameInfoGroup:AddLabel(qQ(zt_60 .. " [" .. tostring(game.PlaceId) .. "]", zt_57), true)
GameInfoGroup:AddLabel(qB("Place ID", tostring(game.PlaceId), zt_57), true)
Label = GameInfoGroup:AddLabel('<b>Session time</b> <font color="#5a6070">-</font> <font color="#e8a34d">0s</font>', true)
pY = tostring(game.JobId)
local zt_29 = #pY > 18
if zt_29 then
    zt_4 = 5
    repeat
        if zt_4 * 112243475 + 2 + 7 <= zt_4 * 112243475 + 2 + 7 + 4 then
            zt_29 = string.sub(pY, 1, 18) .. "..."
        else
            pY = string.sub(zt_29, 1, 18) .. "..."
        end
        zt_4 = (zt_4 + 4) % 8
    until (zt_4 * 3 + 1) % 8 == 4
end
zt_4 = zt_29 or pY
px, FeaturesGroup, ProgressGroup, zt_51, EggsGroup = nil, nil, nil, nil, nil
local zt_67 = zt_4
GameInfoGroup:AddLabel(qB("Server", zt_67, zt_15), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
px = os.clock()
task.spawn(fns.worker)
local ScriptsGroup = zt_63.Info:AddRightGroupbox("Scripts", "package")
if (ProgressGroup or FeaturesGroup or (ProgressGroup or FeaturesGroup) or (not ProgressGroup or not ProgressGroup) and (not ProgressGroup or not ProgressGroup)) and ((not ProgressGroup or not FeaturesGroup) and (not FeaturesGroup and ProgressGroup) or (not FeaturesGroup or ProgressGroup or not ProgressGroup and ProgressGroup)) and not ((ProgressGroup or FeaturesGroup or (ProgressGroup or FeaturesGroup) or (not ProgressGroup or not ProgressGroup) and (not ProgressGroup or not ProgressGroup)) and ((not ProgressGroup or not FeaturesGroup) and (not FeaturesGroup and ProgressGroup) or (not FeaturesGroup or ProgressGroup or not ProgressGroup and ProgressGroup))) then
    qQ:AddLabel(zt_57("Included in this hub", ScriptsGroup), true)
    qQ:AddLabel(zt_57(zt_15, zt_63), true)
    FeaturesGroup.Info:AddRightGroupbox("Features", "list")
else
    ScriptsGroup:AddLabel('<font color="#8b93a3">Included in this hub</font>', true)
    ScriptsGroup:AddLabel('<font color="#6ec1ff">+1 Drain Water Per Click</font>', true)
    FeaturesGroup = zt_63.Info:AddRightGroupbox("Features", "list")
end
FeaturesGroup:AddLabel('<font color="#6ec1ff">Auto Drain</font>', true)
FeaturesGroup:AddLabel('<font color="#7fd47f">Auto Shop</font>', true)
FeaturesGroup:AddLabel('<font color="#e8a34d">Auto Fish / Aquarium</font>', true)
FeaturesGroup:AddLabel('<font color="#8b93a3">Misc Utilities</font>', true)
local SocialsGroup = zt_63.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = onJoinDiscordForKeylessScripts })
SocialsGroup:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
local OuroborosHubGroup = zt_63.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = onJoinDiscordForKeylessScripts })
local DonationsGroup = zt_63.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel('<font color="#e8a34d">All donations are optional but appreciated.</font>', true)
DonationsGroup:AddLabel('<font color="#7fd47f">If you donate you get a special role, just PING after you donate.</font>', true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel('<font color="#345d9d">LTC / Litecoin</font>', true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = fns.onCopyLitecoinAddress })
DonationsGroup:AddLabel('<font color="#f7931a">BTC / Bitcoin</font>', true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = fns.onCopyBitcoinAddress })
DonationsGroup:AddLabel('<font color="#627eea">ETH / Ethereum</font>', true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = fns.onCopyEthereumAddress })
DonationsGroup:AddLabel('<font color="#26a17b">USDT</font>', true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
DonationsGroup:AddLabel('<font color="#14f195">Solana</font>', true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
DonationsGroup:AddLabel('<font color="#0070ba">PayPal</font>', true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = fns.onCopyPayPalLink })
DonationsGroup:AddLabel('<font color="#008cff">Venmo</font>', true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel('<font color="#8b93a3">Don\'t have any of the listed currencies but still wanna donate?</font>', true)
DonationsGroup:AddLabel('<font color="#6ec1ff">DM me and we\'ll work something out.</font>', true)
local FaqGroup = zt_63.Info:AddRightGroupbox("FAQ", "circle-help")
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
zt_29 = zt_63.Main:AddLeftGroupbox("Auto Drain", "droplets")
if (ProgressGroup and zt_67 or (zt_67 or zt_67)) and ((px or zt_67) and (not px or not zt_67)) and not ((ProgressGroup and zt_67 or (zt_67 or zt_67)) and ((px or zt_67) and (not px or not zt_67))) then
    zt_63:AddToggle("AutoDrain", { Text = "Auto Drain", Default = false })
    zt_63:AddDropdown("DrainStage", { Values = ProgressGroup, Text = "Stage", Default = ProgressGroup[1] })
    zt_63:AddDropdown("DrainPriority", { Text = "Fish Priority", Default = "Highest Earning", Values = zt_29 })
    zt_63:AddSlider("FishPickAmount", { Rounding = 0, Text = "Pick Up this Many", Default = 3, Min = 1, Max = 50 })
    zt_63:AddSlider("DrainClicks", { Default = 12, Min = 1, Max = 40, Rounding = 0, Text = "Clicks per pulse" })
    zt_63:AddSlider("DrainClickDelay", { Min = 0.03, Text = "Click delay", Rounding = 2, Suffix = "s", Default = 0.05, Max = 0.5 })
    zt_63:AddSlider("FishPickDelay", { Text = "Fish pick delay", Max = 1, Min = 0.05, Default = 0.12, Rounding = 2, Suffix = "s" })
    zt_63:AddSlider("DrainLoopDelay", { Min = 0.05, Text = "Loop delay", Rounding = 2, Suffix = "s", Default = 0.15, Max = 2 })
    zt_48.Main:AddRightGroupbox("Progress", "rotate-ccw")
else
    zt_29:AddToggle("AutoDrain", { Text = "Auto Drain", Default = false })
    zt_29:AddDropdown("DrainStage", { Text = "Stage", Values = zt_48, Default = zt_48[1] })
    zt_29:AddDropdown("DrainPriority", { Text = "Fish Priority", Values = zt_53, Default = "Highest Earning" })
    zt_29:AddSlider("FishPickAmount", { Text = "Pick Up this Many", Default = 3, Min = 1, Max = 50, Rounding = 0 })
    zt_29:AddSlider("DrainClicks", { Text = "Clicks per pulse", Default = 12, Min = 1, Max = 40, Rounding = 0 })
    zt_29:AddSlider("DrainClickDelay", { Text = "Click delay", Default = 0.05, Min = 0.03, Max = 0.5, Rounding = 2, Suffix = "s" })
    zt_29:AddSlider("FishPickDelay", { Text = "Fish pick delay", Default = 0.12, Min = 0.05, Max = 1, Rounding = 2, Suffix = "s" })
    zt_29:AddSlider("DrainLoopDelay", { Text = "Loop delay", Default = 0.15, Min = 0.05, Max = 2, Rounding = 2, Suffix = "s" })
    ProgressGroup = zt_63.Main:AddRightGroupbox("Progress", "rotate-ccw")
end
if (not ScriptsGroup or EggsGroup) and (not ScriptsGroup or ScriptsGroup) and (not ScriptsGroup and not ScriptsGroup and (not ScriptsGroup and not ScriptsGroup)) or not ((not ScriptsGroup or EggsGroup) and (not ScriptsGroup or ScriptsGroup) and (not ScriptsGroup and not ScriptsGroup and (not ScriptsGroup and not ScriptsGroup))) then
    ProgressGroup:AddToggle("AutoTrain", { Text = "Auto Train", Default = false })
    ProgressGroup:AddSlider("TrainDelay", { Text = "Train delay", Default = 0.08, Min = 0.03, Max = 1, Rounding = 2, Suffix = "s" })
    ProgressGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
    ProgressGroup:AddSlider("RebirthDelay", { Text = "Rebirth delay", Default = 1, Min = 0.5, Max = 30, Rounding = 1, Suffix = "s" })
    zt_51 = zt_63.Shop:AddLeftGroupbox("Shop", "shopping-bag")
else
    zt_51:AddToggle("AutoTrain", { Text = "Auto Train", Default = false })
    zt_51:AddSlider("TrainDelay", { Text = "Train delay", Default = 0.08, Suffix = "s", Max = 1, Min = 0.03, Rounding = 2 })
    zt_51:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
    zt_51:AddSlider("RebirthDelay", { Default = 1, Text = "Rebirth delay", Suffix = "s", Max = 30, Min = 0.5, Rounding = 1 })
    zt_63 = ProgressGroup.Shop:AddLeftGroupbox("Shop", "shopping-bag")
end
zt_51:AddToggle("AutoBuyPump", { Text = "Auto Buy Pump", Default = false })
zt_51:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
zt_51:AddToggle("AutoBuyAura", { Text = "Auto Buy Aura", Default = false })
zt_51:AddSlider("ShopDelay", { Text = "Shop delay", Default = 1, Min = 0.25, Max = 10, Rounding = 2, Suffix = "s" })
EggsGroup = zt_63.Shop:AddRightGroupbox("Eggs", "egg")
EggsGroup:AddToggle("AutoHatch", { Text = "Auto Hatch Eggs", Default = false })
zt_65 = #zt_43 > 0 and zt_43
zt_53 = { "Basic Egg" }
zt_69 = zt_65 or zt_53
zt_65 = zt_43[1]
local zt_45 = if zt_65 then 1 else 0
local zt_68 = 1783 * zt_45 + 1548 * (1 - zt_45)
local zt_56 = 3964 * zt_45 + 2946 * (1 - zt_45)
if not ((zt_68 * 2547 + zt_56 * 2154 + zt_68 * zt_56) % 16777213 == 3370356) then
    zt_65 = "Basic Egg"
end
pU, qu, qo, connection, connection2, qs, p1, o2, qh, p2, o_ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
EggsGroup:AddDropdown("HatchEgg", { Text = "Egg", Values = zt_69, Default = zt_65 })
EggsGroup:AddDropdown("HatchAmount", { Text = "Amount", Values = zt_31, Default = "1" })
EggsGroup:AddSlider("HatchDelay", { Text = "Hatch delay", Default = 1, Min = 0.25, Max = 10, Rounding = 2, Suffix = "s" })
zt_12 = zt_63.Fish:AddLeftGroupbox("Auto Sell", "banknote")
zt_12:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
zt_12:AddDropdown("SellMode", { Text = "Sell Mode", Values = { "Sell All", "Below Rarity" }, Default = "Sell All" })
zt_12:AddDropdown("SellBelowRarity", { Text = "Sell Below Rarity", Values = zt_20, Default = "Mythic" })
zt_12:AddDropdown("SellKeepMutations", { Text = "Keep Mutations", Values = qc, Default = {}, Multi = true })
zt_12:AddToggle("SellKeepProtected", { Text = "Keep Protected", Default = true })
zt_12:AddToggle("SellKeepSpecial", { Text = "Keep Special", Default = true })
zt_12:AddSlider("SellDelay", { Text = "Sell delay", Default = 0.05, Min = 0.01, Max = 1, Rounding = 2, Suffix = "s" })
zt_12:AddSlider("SellLoopDelay", { Text = "Sell loop delay", Default = 2, Min = 0.5, Max = 30, Rounding = 1, Suffix = "s" })
local AquariumGroup = zt_63.Fish:AddRightGroupbox("Aquarium", "container")
AquariumGroup:AddToggle("AutoCollectAquariumCash", { Text = "Auto Collect Aquarium Cash", Default = false })
AquariumGroup:AddToggle("AutoEquipBestAquarium", { Text = "Auto Equip Best Aquarium Fish", Default = false })
AquariumGroup:AddToggle("AutoEquipBestPet", { Text = "Auto Equip Best Pet", Default = false })
AquariumGroup:AddSlider("AquariumDelay", { Text = "Aquarium delay", Default = 3, Min = 0.5, Max = 30, Rounding = 1, Suffix = "s" })
zt_46 = zt_63.Player:AddLeftGroupbox("Movement", "footprints")
zt_46:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
zt_46:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
zt_46:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
zt_46:AddToggle("NoClip", { Text = "NoClip", Default = false })
zt_46:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
zt_57 = zt_63.Player:AddRightGroupbox("Fly", "feather")
zt_57:AddToggle("Fly", { Text = "Fly", Default = false })
zt_57:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
qs = function(jw)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not jw)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not jw
        end
    end)
    if not jw then
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
Toggles.AntiGameplayPause:OnChanged(fns.fn426)
Toggles.Fly:OnChanged(fns.fn390)
Toggles.WalkSpeedEnabled:OnChanged(fns.fn702)
RunService.Stepped:Connect(fns.onStepped)
UserInputService.JumpRequest:Connect(fns.onJumpRequest)
pU = Workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
zt_35 = zt_63.Settings:AddLeftGroupbox("Menu")
zt_35:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
zt_35:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
zt_35:AddButton("Unload", fns.onUnload)
qu = tick()
qo = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local yf = v
        pcall(function()
            yf:Disable()
        end)
    end
end)
p1 = fns.fn443
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
zt_9:SetLibrary(Library)
zt_9:SetFolder("OuroborosHub")
zt_9:SaveDefault("Monochrome")
zt_9:ApplyToTab(zt_63.Settings)
zt_9:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/plus1-drain-water-per-click")
zt_53 = SaveManager:BuildConfigSection(zt_63.Settings)
o2 = fn989
qh = fns.fn31
p2 = fns.fn906
o_ = function(k1)
    local yQ
    yQ = nil
    local yR = type(k1) ~= "table" or type(k1.idx) ~= "string" or type(k1.type) ~= "string" or SaveManager.Ignore[k1.idx]
    if yR then
        return false
    end
    yQ = o2(k1.type, k1.idx)
    if not yQ then
        return false
    end
    local yR_1 = pcall(function()
        if k1.type == "Input" then
            if type(k1.text) ~= "string" then
                return
            end
            yQ:SetValue(k1.text)
        elseif k1.type == "ColorPicker" then
            yQ:SetValueRGB(Color3.fromHex(k1.value), k1.transparency)
        elseif k1.type == "KeyPicker" then
            yQ:SetValue({ k1.key, k1.mode, k1.modifiers })
            if k1.mode == "Toggle" and k1.toggled ~= nil then
                yQ.Toggled = k1.toggled
                yQ:Update()
            end
        else
            yQ:SetValue(k1.value)
        end
    end)
    return yR_1
end
zt_53:AddDivider()
zt_53:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
zt_53:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
zt_53:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
task.spawn(fns.worker2)
task.spawn(fns.worker3)
task.spawn(fns.worker4)
task.spawn(fns.worker5)
task.spawn(fns.worker6)
task.spawn(worker7)
task.spawn(fns.worker8)
task.spawn(worker9)
task.spawn(fns.worker10)
Library:OnUnload(fns.fn307)
Library:Notify("+1 Drain Water Per Click loaded")
