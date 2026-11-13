local fns = {}
local vx_6, vx_19
local ow
local ns
local Options
local oV
local connection
local ny
local Toggles
local nf
local nX
local oI
local PerformRebirth
local n2
local oO
local ov
local Label
local n8
local nQ
local nx
local oe
local UnlockAllSlots
local UserInputService
local n1
local oN
local nq
local ReplicatedStorage
local od
local nV
local nC
local connection4
local nj
local oM
local GetRebirthState
local Workspace
local oS
local nO
local oz
local nv
local oc
local nU
local oF
local nB
local oi
local LocalPlayer
local HttpService
local no
local connection2
local oR
local nN
local VirtualUser
local RebirthConfig
local nT
local oE
local nA
local oh
local StartRoll
local nZ
local oK
local nG
local op
local nn
local n4
local oQ
local nM
local ox
local nt
local oa
local connection6
local oD
local og
local ng
local ClaimAllIndexRewards
local connection3
local oo
local connection5
local n3
local nL
function fns.fn6(bU)
    local q0 = ng()
    local q1 = not q0 or typeof(bU) ~= "Vector3"
    if q1 then
        return false
    end
    q0.CFrame = CFrame.new(bU + Vector3.new(0, 3, 0))
    return true
end
function fns.fn8(fT)
    local DiscordGroup = fT:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = nL })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = nL })
end
function fns.fn39()
    pcall(function()
        ClaimAllIndexRewards:FireServer()
    end)
end
function fns.fn51(aJ, aK)
    if setclipboard then
        setclipboard(aJ)
    elseif toclipboard then
        toclipboard(aJ)
    end
    oD:Notify(aK)
end
function fns.fn57()
    if not Toggles.Fly.Value then
        local tF = no()
        if tF then
            tF.PlatformStand = false
        end
    end
end
function fns.fn62(cn)
    local ro = nX()
    local rp = ro and ro:FindFirstChild("ShopUpgrades")
    local ro_1 = rp
    if rp then
        rp = ro_1:FindFirstChild(cn)
    end
    local ro_2 = rp
    if rp then
        rp = tonumber(ro_2.Value)
    end
    return rp or 0
end
function fns.onCopyLitecoinAddress()
    n2(oN, "Copied Litecoin address")
end
function fns.onUnload()
    oD:Unload()
end
function fns.onCopyUSDTAddress()
    n2(op, "Copied USDT address")
end
function fns.onExportConfigToClipboard()
    local u5_1
    local u4_1
    u4_1, u5_1 = pcall(HttpService.JSONEncode, HttpService, nC())
    if not u4_1 then
        oD:Notify("Failed to encode the config")
        return
    end
    local u4_2 = setclipboard or toclipboard
    local u4_3 = type(u4_2) ~= "function" or not pcall(u4_2, u5_1)
    if u4_3 then
        oD:Notify("Your executor does not support copying to the clipboard")
        return
    end
    oD:Notify("Config copied to clipboard", 6)
end
function fns.fn145(aT, aU, aV)
    return string.format("<b>%s</b> %s %s", aT, nA("-", "#5a6070"), nA(aU, aV))
end
function fns.fn151(ce)
    local rl = nX()
    local rm = rl and rl:FindFirstChild("Upgrades")
    local rl_1 = rm
    if rm then
        rm = rl_1:FindFirstChild(ce)
    end
    local rl_2 = rm
    if rm then
        rm = tonumber(rl_2.Value)
    end
    return rm or 0
end
function fns.onCopyPayPalLink()
    n2(oa, "Copied PayPal link")
end
function fns.fn245()
    n2(nU, "Copied Discord invite to clipboard")
end
function fns.antiGameplayPauseLoop()
    while not oD.Unloaded do
        task.wait(1.5)
        if ny("AutoClaimIndex") then
            pcall(oF)
        end
        if ny("AutoClaimQuests") then
            pcall(oi)
        end
        if ny("AutoClaimPlaytime") then
            pcall(nf)
        end
        if ny("AutoEquipBest") then
            pcall(oK)
        end
        if Toggles.AntiGameplayPause.Value then
            oe(true)
        end
    end
end
function fns.fn275(bl, bm)
    local qz = Options[bl]
    if qz == nil then
        return bm
    end
    return qz.Value
end
function fns.fn329()
    pcall(function()
        UnlockAllSlots:FireServer()
    end)
end
function fns.fn332()
    local qW = nt()
    local qX = qW and qW:FindFirstChild("HumanoidRootPart")
    return qX
end
function fns.onImportConfigFromClipboardTex()
    local va_1
    local u8 = Options.SaveManager_ImportSource.Value or ""
    local u8_1
    local u9 = tostring(u8):match("^%s*(.-)%s*$")
    if u9 == "" then
        oD:Notify("Paste an exported config into the box first")
        return
    end
    u8_1, va_1 = pcall(HttpService.JSONDecode, HttpService, u9)
    local u9_1 = not u8_1 or type(va_1) ~= "table" or type(va_1.objects) ~= "table"
    if u9_1 then
        oD:Notify("That is not a valid exported config")
        return
    end
    local u8_2 = 0
    for i, v in ipairs(va_1.objects) do
        if oz(v) then
            u8_2 += 1
        end
    end
    if u8_2 == 0 then
        oD:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local va_2 = u8_2 == 1 and "" or "s"
    oD:Notify(("Imported %d setting%s"):format(u8_2, va_2), 6)
end
function fns.fn362()
    local sE = nj("AutoEquipBestDelay", 30)
    if tick() - oQ < sE then
        return
    end
    oQ = tick()
    pcall(function()
        od:FireServer()
    end)
end
function fns.fn376()
    local uC = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local uD = type(v) == "table" and type(v.Type) == "string" and not oo.Ignore[k]
            if uD then
                local uD_1 = nT(k, v)
                if uD_1 then
                    uC[#uC + 1] = uD_1
                end
            end
        end
    end
    table.sort(uC, function(iD, iE)
        if iD.type ~= iE.type then
            return iD.type < iE.type
        end
        return iD.idx < iE.idx
    end)
    return { objects = uC }
end
function fns.fn390(U, V)
    return U.tier < V.tier
end
function fns.onInputChanged(h6)
    local UserInputType = h6.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        n3 = tick()
    end
end
function fns.worker()
    local ts_1
    while true do
        task.wait(1)
        if oD.Unloaded then
            break
        end
        local tr = math.floor(os.clock() - oS)
        if tr < 60 then
            ts_1 = tr .. "s"
        elseif tr < 3600 then
            ts_1 = string.format("%dm %ds", tr // 60, tr % 60)
        else
            ts_1 = string.format("%dh %dm", tr // 3600, tr % 3600 // 60)
        end
        Label:SetText(ns("Session time", ts_1, oV))
    end
end
local function fn420(ig, ih)
    local up = ig == "Toggle" and Toggles
    local uu = if up then 1 else 0
    local us = 636 * uu + 3520 * (1 - uu)
    local ut = 3471 * uu + 1640 * (1 - uu)
    if not ((us * 2346 + ut * 1778 + us * ut) % 16777213 == 9871050) then
        up = Options
    end
    local up_1 = up[ih]
    local uo_2 = type(up_1) == "table" and up_1.Type == ig
    return uo_2 and up_1 or nil
end
local function antiAfkLoop()
    while not oD.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local vm = tick() - n3
            local vn = tick() - nZ
            if vm >= 300 and vn >= 60 then
                pcall(nG)
            else
                if vm < 300 and vn >= 300 then
                    pcall(nG)
                end
            end
        end
    end
end
local function fn465()
    local qT = nt()
    local qU = qT and qT:FindFirstChildOfClass("Humanoid")
    return qU
end
local function onCopyJoinScript_JobID()
    local tp = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, nn)
    if setclipboard then
        setclipboard(tp)
    elseif toclipboard then
        toclipboard(tp)
    end
    oD:Notify("Copied join script to clipboard")
end
local function onInputBegan()
    n3 = tick()
end
local function worker3()
    while not oD.Unloaded do
        task.wait(0.75)
        if ny("AutoCollect") then
            pcall(nQ)
        end
        if ny("AutoBuyUpgrades") then
            pcall(n1)
        end
        if ny("AutoBuyShopUpgrades") then
            pcall(n8)
        end
        if ny("AutoBuyGears") then
            pcall(og)
        end
        if ny("AutoBuySlots") then
            pcall(oR)
        end
        if ny("AutoRebirth") then
            pcall(nv)
        end
    end
end
local function fn497(bf)
    if oD.Unloaded then
        return false
    end
    local qw = Toggles[bf]
    return qw ~= nil and qw.Value == true
end
local function onJumpRequest()
    if oD.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local tX_1 = no()
        if tX_1 then
            tX_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn568()
    local sn_1
    local sm_1
    sm_1, sn_1 = pcall(function()
        return GetRebirthState:InvokeServer()
    end)
    local so = sm_1 and typeof(sn_1) == "table"
    if so then
        if sn_1.canRebirth == true then
            pcall(function()
                PerformRebirth:FireServer()
            end)
        end
        return
    end
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local sn_2 = leaderstats and leaderstats:FindFirstChild("Rebirths")
    local sm_3 = sn_2
    if sn_2 then
        sn_2 = tonumber(sm_3.Value)
    end
    local sm_4 = sn_2 or 0
    local sm_5 = RebirthConfig.GetRebirthCost(sm_4)
    local sn_4 = typeof(sm_5) == "number" and nN() >= sm_5
    if sn_4 then
        pcall(function()
            PerformRebirth:FireServer()
        end)
    end
end
local function worker2()
    while not oD.Unloaded do
        if ny("AutoRoll") then
            pcall(nq)
            if ny("AutoBuyRoll") then
                pcall(ow)
            else
                nx()
            end
            task.wait(nj("AutoRollDelay", 0.35))
        else
            local vi = ny("AutoBuyRoll") and next(oM)
            if vi then
                pcall(ow)
            end
            task.wait(0.25)
        end
    end
end
local function fn585(aQ, aR)
    return string.format('<font color="%s">%s</font>', aR, aQ)
end
local function fn586()
    oe(Toggles.AntiGameplayPause.Value)
end
local function fn619(bq)
    local qE = nj(bq, {})
    if typeof(qE) ~= "table" then
        return {}
    end
    local qF = {}
    for k, v in pairs(qE) do
        if v == true then
            qF[k] = true
        else
            local qE_1 = typeof(k) == "number" and typeof(v) == "string"
            if qE_1 then
                qF[v] = true
            end
        end
    end
    return qF
end
local function fn620()
    if not Toggles.WalkSpeedEnabled.Value then
        local tH = no()
        if tH then
            tH.WalkSpeed = 16
        end
    end
end
local function fn695(b9, ca)
    local rg = oO(ca)
    if not next(rg) then
        return true
    end
    return rg[b9] == true
end
local function fn706(cw)
    local GearShopState = ReplicatedStorage:FindFirstChild("GearShopState")
    local rv = GearShopState and GearShopState:FindFirstChild(cw)
    local ru_1 = rv
    if rv then
        rv = tonumber(ru_1.Value)
    end
    return rv or 0
end
local function fn709()
    for k in pairs(oM) do
        oM[k] = nil
    end
end
local function fn728()
    pcall(function()
        if connection then
            connection:Disconnect()
            connection = nil
        end
        connection2:Disconnect()
        connection3:Disconnect()
        connection4:Disconnect()
        connection5:Disconnect()
        connection6:Disconnect()
        oe(false)
        local vq = no()
        if vq then
            vq.PlatformStand = false
            vq.WalkSpeed = 16
        end
    end)
end
local function onCopyVenmoLink()
    n2(n4, "Copied Venmo link")
end
local function fn738()
    return LocalPlayer:FindFirstChild("PlayerData")
end
local function onRenderStepped(hD)
    if oD.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local t1_1 = no()
        if t1_1 then
            t1_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local t1_3 = ng()
        local t2 = no()
        nB = Workspace.CurrentCamera or nB
        if t1_3 and t2 and nB then
            t2.PlatformStand = true
            local t2_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                t2_1 = t2_1 + nB.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                t2_1 = t2_1 - nB.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                t2_1 = t2_1 - nB.CFrame.RightVector
            end
            local ub = if UserInputService:IsKeyDown(Enum.KeyCode.D) then 1 else 0
            if ub == 1 then
                t2_1 = t2_1 + nB.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                t2_1 = t2_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                t2_1 = t2_1 - Vector3.new(0, 1, 0)
            end
            t1_3.Velocity = Vector3.zero
            if t2_1.Magnitude > 0 then
                t1_3.CFrame = t1_3.CFrame + t2_1.Unit * Options.FlySpeed.Value * hD
            end
        end
    end
end
local function fn828()
    local Plots = Workspace:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    return Plots:FindFirstChild(tostring(LocalPlayer.UserId))
end
local function onCopyBitcoinAddress()
    n2(oE, "Copied Bitcoin address")
end
local function fn853()
    local st = oI()
    if not st then
        return
    end
    local CollectPad = st:FindFirstChild("CollectPad", true)
    local sv = CollectPad
    if sv then
        local sw = (CollectPad:FindFirstChild("Collect"))
        local sA = if sw then 1 else 0
        local sy = 169 * sA + 1043 * (1 - sA)
        local sz = 2579 * sA + 1207 * (1 - sA)
        if not ((sy * 1684 + sz * 2387 + sy * sz) % 16777213 == 6876520) then
            sw = CollectPad:FindFirstChildWhichIsA("BasePart")
        end
        sv = sw
    end
    local su_1 = sv
    if sv then
        sv = su_1:IsA("BasePart")
    end
    if sv then
        oc(su_1.Position)
    else
        local Collect = st:FindFirstChild("Collect", true)
        local st_1 = Collect and Collect:IsA("BasePart")
        if st_1 then
            oc(Collect.Position)
        end
    end
    local sD = if tick() - nV >= 3 then 1 else 0
    if sD == 1 then
        nV = tick()
        local st_2 = no()
        if st_2 then
            st_2:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn868()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    nZ = tick()
end
local function fn877()
    local ti_1
    local th_1
    if identifyexecutor then
        ti_1, th_1 = identifyexecutor()
        local tj = ti_1 ~= ""
        local tk = type(ti_1) == "string" and tj
        if tk then
            local tj_1 = type(th_1) == "string" and th_1 ~= "" and ti_1 .. " " .. th_1
            nM = tj_1 or ti_1
        end
    end
end
local function onCopySolanaAddress()
    n2(oh, "Copied Solana address")
end
local function fn893(ip, iq)
    local Type = iq.Type
    if Type == "Toggle" then
        return { idx = ip, type = "Toggle", value = iq.Value == true }
    elseif Type == "Slider" then
        return { idx = ip, type = "Slider", value = tostring(iq.Value) }
    elseif Type == "Dropdown" then
        return { idx = ip, type = "Dropdown", multi = iq.Multi == true, value = iq.Value }
    elseif Type == "Input" then
        local uw = iq.Value or ""
        return { idx = ip, type = "Input", text = tostring(uw) }
    elseif Type == "ColorPicker" then
        return { idx = ip, type = "ColorPicker", value = iq.Value:ToHex(), transparency = iq.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = ip,
            type = "KeyPicker",
            mode = iq.Mode,
            key = iq.Value,
            modifiers = iq.Modifiers,
            toggled = iq.Toggled
        }
    else
        return nil
    end
end
local function fn956()
    return LocalPlayer.Character
end
local function onRscripts()
    if setclipboard then
        setclipboard(nO)
    elseif toclipboard then
        toclipboard(nO)
    end
    oD:Notify("Copied Rscripts profile to clipboard")
end
local function fn1003()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local qO = leaderstats and leaderstats:FindFirstChild("Cash")
    local qN_1 = qO
    if qO then
        qO = tonumber(qN_1.Value)
    end
    return qO or 0
end
local function onStepped()
    if oD.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local tM_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if tM_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn1025()
    ov()
    nx()
    pcall(function()
        StartRoll:FireServer()
    end)
    local rH = os.clock() + 2.5
    while os.clock() < rH do
        local rI = oD.Unloaded or not ny("AutoRoll")
        if rI then
            break
        elseif next(oM) then
            task.wait(0.15)
            break
        else
            task.wait(0.05)
        end
    end
end
local function onCopyEthereumAddress()
    n2(ox, "Copied Ethereum address")
end
nf = nil
ng = nil
StartRoll = nil
nj = nil
connection5 = nil
nn = nil
no = nil
nq = nil
Label = nil
ns = nil
nt = nil
RebirthConfig = nil
nv = nil
nx = nil
ny = nil
nA = nil
nB = nil
nC = nil
connection3 = nil
nG = nil
GetRebirthState = nil
nL = nil
nM = nil
nN = nil
nO = nil
nQ = nil
nT = nil
nU = nil
nV = nil
UnlockAllSlots = nil
nX = nil
nZ = nil
LocalPlayer = nil
local BuyRolledItem, ni, nk, nl, np, GearConfig, ShopUpgradeConfig, UpgradeConfig, nE, ItemsData, nJ, GetPlayTimeState, nP, GetQuestState, nS, PurchaseGear, PurchaseShopUpgrade
n1 = nil
n2 = nil
n3 = nil
n4 = nil
connection2 = nil
Workspace = nil
n8 = nil
Options = nil
oa = nil
oc = nil
od = nil
oe = nil
Toggles = nil
og = nil
oh = nil
oi = nil
connection4 = nil
PerformRebirth = nil
oo = nil
op = nil
HttpService = nil
ov = nil
ow = nil
ox = nil
VirtualUser = nil
oz = nil
connection = nil
oD = nil
oE = nil
oF = nil
UserInputService = nil
oI = nil
ClaimAllIndexRewards = nil
oK = nil
oM = nil
oN = nil
oO = nil
oQ = nil
oR = nil
oS = nil
local PurchaseUpgrade, CoreGui, GuiService, ClaimPlayTimeReward, ou, ClaimQuestReward, oB, oG, oL, RollAnimationComplete
ReplicatedStorage = nil
oV = nil
connection6 = nil
local RollAnimation
RollAnimation = nil
ReplicatedStorage, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, LocalPlayer, nU, nO, ItemsData, UpgradeConfig, ShopUpgradeConfig, GearConfig, RebirthConfig, StartRoll, BuyRolledItem, RollAnimation, RollAnimationComplete, ClaimAllIndexRewards, ClaimQuestReward, ClaimPlayTimeReward, PerformRebirth, od, PurchaseUpgrade, PurchaseShopUpgrade, PurchaseGear, UnlockAllSlots, GetQuestState, GetPlayTimeState, GetRebirthState, vx_19 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local vx_43 = game:GetService("Players")
ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
LocalPlayer = vx_43.LocalPlayer
local vx_29 = "Roll For Avatar Items"
nU = "https://discord.gg/ehKVq7pf7v"
nO = "https://rscripts.net/@Ouroboros"
local vx_56 = ReplicatedStorage:WaitForChild("Config")
ItemsData = require(vx_56:WaitForChild("ItemsData"))
UpgradeConfig = require(vx_56:WaitForChild("UpgradeConfig"))
ShopUpgradeConfig = require(vx_56:WaitForChild("ShopUpgradeConfig"))
GearConfig = require(vx_56:WaitForChild("GearConfig"))
RebirthConfig = require(vx_56:WaitForChild("RebirthConfig"))
local vx_38 = require(vx_56:WaitForChild("AutoRollConfig"))
require(vx_56:WaitForChild("TycoonConfig"))
local vx_16 = ReplicatedStorage:WaitForChild("Remotes")
local vx_25 = vx_16:WaitForChild("Events")
local vx_35 = vx_16:WaitForChild("Functions")
StartRoll = vx_25:WaitForChild("StartRoll")
BuyRolledItem = vx_25:WaitForChild("BuyRolledItem")
RollAnimation = vx_25:WaitForChild("RollAnimation")
RollAnimationComplete = vx_25:WaitForChild("RollAnimationComplete")
ClaimAllIndexRewards = vx_25:WaitForChild("ClaimAllIndexRewards")
ClaimQuestReward = vx_25:WaitForChild("ClaimQuestReward")
ClaimPlayTimeReward = vx_25:WaitForChild("ClaimPlayTimeReward")
if (ItemsData or vx_19 or not ItemsData and vx_19) and (ItemsData and not ShopUpgradeConfig or (not ItemsData)) and not ((ItemsData or vx_19 or not ItemsData and vx_19) and (ItemsData and not ShopUpgradeConfig or (not ItemsData))) then
    od = PerformRebirth:WaitForChild("PerformRebirth")
    vx_25 = PerformRebirth:WaitForChild("EquipBestItems")
else
    PerformRebirth = vx_25:WaitForChild("PerformRebirth")
    od = vx_25:WaitForChild("EquipBestItems")
end
PurchaseUpgrade = vx_25:WaitForChild("PurchaseUpgrade")
PurchaseShopUpgrade = vx_25:WaitForChild("PurchaseShopUpgrade")
PurchaseGear = vx_25:WaitForChild("PurchaseGear")
UnlockAllSlots = vx_25:WaitForChild("UnlockAllSlots")
GetQuestState = vx_35:WaitForChild("GetQuestState")
GetPlayTimeState = vx_35:WaitForChild("GetPlayTimeState")
GetRebirthState = vx_35:WaitForChild("GetRebirthState")
vx_19 = {}
local vx_59 = {}
vx_43 = {}
vx_35 = ItemsData.RarityTiers
local pw = if vx_35 then 1 else 0
local pu = 876 * pw + 3169 * (1 - pw)
local pv = 2871 * pw + 1866 * (1 - pw)
if not ((pu * 1893 + pv * 686 + pu * pv) % 16777213 == 6142770) then
    vx_35 = vx_43
end
for k, v in pairs(vx_35) do
    vx_59[#vx_59 + 1] = { name = k, tier = v }
end
vx_43 = 7
repeat
    if ((vx_43 and not vx_43 and (not vx_43 and vx_43) or (not vx_43 or not vx_43 or vx_43 and not vx_43)) and (not vx_43 and not vx_43 or not vx_43 and vx_43 or (not vx_43 or not vx_43) and (vx_43 and not vx_43)) or (not vx_43 or vx_43) and (not vx_43 or not vx_43) and (not vx_43 or vx_43 or (not vx_43 or vx_43)) and ((vx_43 or not vx_43) and (not vx_43 or vx_43) and (not vx_43 and not vx_43 or (vx_43 or vx_43)))) and not ((vx_43 and not vx_43 and (not vx_43 and vx_43) or (not vx_43 or not vx_43 or vx_43 and not vx_43)) and (not vx_43 and not vx_43 or not vx_43 and vx_43 or (not vx_43 or not vx_43) and (vx_43 and not vx_43)) or (not vx_43 or vx_43) and (not vx_43 or not vx_43) and (not vx_43 or vx_43 or (not vx_43 or vx_43)) and ((vx_43 or not vx_43) and (not vx_43 or vx_43) and (not vx_43 and not vx_43 or (vx_43 or vx_43)))) then
        table.sort(vx_59, fns.fn390)
    else
        table.sort(vx_59, fns.fn390)
    end
    vx_43 = (vx_43 + 0) % 8
until (vx_43 * 3 + 2) % 8 == 7
for i, v in ipairs(vx_59) do
    vx_19[#vx_19 + 1] = v.name
end
if #vx_19 == 0 then
    vx_43 = {}
    vx_35 = vx_38.Rarities or vx_43
    for i, v in ipairs(vx_35) do
        vx_19[#vx_19 + 1] = v
    end
end
vx_43 = {}
for i, v in ipairs(vx_19) do
    vx_43[v] = i
end
vx_25, oB, ou = nil, nil, nil
vx_35 = 8
repeat
    vx_43 = (vx_35 * 2 + 1) % 3 + 1
    if vx_43 <= 2 then
        if vx_43 <= 1 then
            local wg = bit32.rrotate(bit32.bxor(bit32.lrotate(vx_35, 3), string.byte(tostring(vx_25))), 11)
            if bit32.bxor(bit32.lrotate(bit32.bxor(wg, 381044485), 12), 1685082475) ~= bit32.lrotate(wg, 12) then
                ou = {}
            else
                oB = {}
            end
            vx_35 = (vx_35 + 8) % 12
        else
            if (vx_35 * 2 + 5) * 16 % 3 == ((vx_35 * 2 + 5) * 16 + 3) % 3 then
                ou = {}
            else
                oB = {}
            end
            vx_35 = (vx_35 + 11) % 12
        end
    else
        vx_43 = (vector.create((vx_35 * 4 + 6) % 11 + 1, (vx_35 * 4 + 4) % 13 + 1, (vx_35 * 9 + 3) % 17 + 1))
        vx_16 = (vector.create((vx_35 * 7 + 3) % 11 + 1, (vx_35 * 5 + 11) % 13 + 1, (vx_35 * 8 + 11) % 17 + 1))
        vx_6 = (vector.create((vx_35 * 6 + 9) % 11 + 1, (vx_35 * 11 + 8) % 13 + 1, (vx_35 * 11 + 17) % 17 + 1))
        vx_56 = (vector.create((vx_35 * 1 + 6) % 5 + 1, (vx_35 * 4 + 5) % 7 + 1, (vx_35 * 3 + 7) % 9 + 1))
        if vector.dot(vector.cross(vx_43, (vector.cross(vx_16, vx_6))), vx_56) == vector.dot(vx_16 * vector.dot(vx_43, vx_6) - vx_6 * vector.dot(vx_43, vx_16), vx_56) + 5 then
            ou = { "Luck", "Floors", "Rolls", "Rate" }
        else
            vx_25 = { "Rate", "Rolls", "Luck", "Floors" }
        end
        vx_35 = (vx_35 + 11) % 12
    end
until (vx_35 * 5 + 8) % 12 == 6
for i, v in ipairs(vx_25) do
    vx_43 = UpgradeConfig.DisplayNames[v] or v
    vx_35 = vx_43
    oB[#oB + 1] = vx_35
    ou[vx_35] = v
end
vx_43 = {}
vx_35 = {}
vx_25 = {}
vx_16 = ShopUpgradeConfig.UpgradeOrder or vx_25
for i, v in ipairs(vx_16) do
    if not vx_35[v] then
        vx_35[v] = true
        vx_43[#vx_43 + 1] = v
    end
end
vx_25 = {}
vx_16 = ShopUpgradeConfig.UpgradeIds or vx_25
for k in pairs(vx_16) do
    if not vx_35[k] then
        vx_35[k] = true
        vx_43[#vx_43 + 1] = k
    end
end
nE = {}
nJ = {}
for i, v in ipairs(vx_43) do
    vx_43 = ShopUpgradeConfig.DisplayNames[v] or v
    vx_35 = vx_43
    nJ[#nJ + 1] = vx_35
    nE[vx_35] = v
end
np, nl = nil, nil
vx_25 = {}
np = {}
nl = {}
vx_43 = {}
vx_35 = GearConfig.GearOrder or vx_43
for i, v in ipairs(vx_35) do
    vx_25[#vx_25 + 1] = v
    vx_43 = GearConfig.GetGearDef and GearConfig.GetGearDef(v)
    vx_35 = vx_43
    if vx_43 then
        vx_43 = vx_35.DisplayName
    end
    vx_35 = vx_43 or v
    vx_43 = vx_35
    np[#np + 1] = vx_43
    nl[vx_43] = v
end
vx_6, oD, oo, Toggles, Options, vx_38, oV, oN, oE, ox, op, oh, oa, n4, oM, connection, nV, oQ, n2, nL, nA, ns, ny, nj, oO, nX, nN, nt, no, ng, oI, oc, nP, ni, oL, nS, nk, ov, nx, nq, ow, oF, oi, nf, nv, nQ, oK, n1, n8, og, oR = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (oi or nN) and (nL and Options) or (not vx_38 or nN) and (not Options and not Options) or not ((oi or nN) and (nL and Options) or (not vx_38 or nN) and (not Options and not Options)) then
    vx_6 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
else
    nA = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
end
oD = loadstring(game:HttpGet(vx_6 .. "Library.lua"))()
local vx_33 = loadstring(game:HttpGet(vx_6 .. "addons/ThemeManager.lua"))()
oo = loadstring(game:HttpGet(vx_6 .. "addons/SaveManager.lua"))()
Toggles = oD.Toggles
Options = oD.Options
n2 = fns.fn51
nL = fns.fn245
nA = fn585
ns = fns.fn145
vx_38 = "#7fd47f"
local vx_46 = "#6ec1ff"
oV = "#e8a34d"
local vx_52 = "#8b93a3"
oN = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
oE = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
ox = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
op = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
oh = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
oa = "https://paypal.me/TheTruckerGOD"
if ((nf or false) and (nN and nq) or nN and nN and (nf or nq)) and not ((nf or false) and (nN and nq) or nN and nN and (nf or nq)) then
    no = "https://venmo.com/u/miserablemusic"
else
    n4 = "https://venmo.com/u/miserablemusic"
end
local vx_2 = "#345d9d"
local vx_12 = "#f7931a"
local vx_21 = "#627eea"
local vx_31 = "#26a17b"
local vx_40 = "#14f195"
local vx_50 = "#0070ba"
vx_59 = "#008cff"
ny = fn497
nj = fns.fn275
oO = fn619
nX = fn738
nN = fn1003
nt = fn956
no = fn465
ng = fns.fn332
oI = fn828
oc = fns.fn6
nP = function(bZ)
    local q3 = bZ == ""
    local q3_1
    local q4 = typeof(bZ) ~= "string" or q3
    local q4_1
    if q4 then
        return nil
    end
    q3_1, q4_1 = pcall(function()
        return ItemsData.GetEntry(bZ)
    end)
    local q5 = q3_1 and typeof(q4_1) == "table"
    if q5 then
        return q4_1
    end
    local q4_2 = ItemsData.Items or {}
    for k, v in pairs(q4_2) do
        local q3_3 = typeof(v) == "table" and v.AccessoryName == bZ
        if q3_3 then
            return v
        end
    end
    return nil
end
ni = fn695
oL = fns.fn151
nS = fns.fn62
nk = fn706
oM = {}
ov = function()
    if connection then
        return
    end
    connection = RollAnimation.OnClientEvent:Connect(function(cF, cG, cH)
        if typeof(cH) ~= "string" then
            return
        end
        oM[cH] = cG
        pcall(function()
            RollAnimationComplete:FireServer(cH)
        end)
    end)
end
nx = fn709
nq = fn1025
ow = function()
    ov()
    if not next(oM) then
        return
    end
    local rK = nj("AutoBuyRollMaxPrice", 100000000000000)
    local rL = nN()
    for k, v in pairs(oM) do
        local rX = k
        local rM = oD.Unloaded or not ny("AutoBuyRoll")
        if rM then
            break
        else
            local rM_1 = nP(v)
            local rN = rM_1 and rM_1.Rarity
            local rO = rM_1
            if rO then
                rO = tonumber(rM_1.Price)
            end
            local rN_1 = rO or 0
            local rM_3 = ni(rN, "AutoBuyRollRarities") and rN_1 <= rK and rN_1 <= rL
            if rM_3 then
                pcall(function()
                    BuyRolledItem:FireServer(rX)
                end)
                rL = nN()
                task.wait(0.12)
            end
        end
    end
    nx()
end
oF = fns.fn39
oi = function()
    local r2_1
    local r1_1
    r1_1, r2_1 = pcall(function()
        return GetQuestState:InvokeServer()
    end)
    local r3 = not r1_1 or typeof(r2_1) ~= "table" or typeof(r2_1.Quests) ~= "table"
    if r3 then
        return
    end
    for i, v in ipairs(r2_1.Quests) do
        local sa = v
        local r1_2 = oD.Unloaded or not ny("AutoClaimQuests")
        if r1_2 then
            break
        end
        local r1_3 = typeof(sa) == "table" and sa.Claimed ~= true
        if r1_3 then
            local r1_4 = sa.Status == "Ready"
            local r2_2 = not r1_4
            if r2_2 ~= false then
                r2_2 = typeof(sa.Progress) == "number"
            end
            if r2_2 then
                r2_2 = typeof(sa.Goal) == "number"
            end
            if r2_2 then
                r1_4 = sa.Progress >= sa.Goal
            end
            if r1_4 then
                pcall(function()
                    local r_ = sa.Id or sa.Index
                    ClaimQuestReward:FireServer(r_)
                end)
                task.wait(0.35)
            end
        end
    end
end
nf = function()
    local sc_1
    local sb_1
    sb_1, sc_1 = pcall(function()
        return GetPlayTimeState:InvokeServer()
    end)
    local sd = not sb_1 or typeof(sc_1) ~= "table" or typeof(sc_1.Rewards) ~= "table"
    if sd then
        return
    end
    local sb_2 = tonumber(sc_1.ServerNow) or 0
    local sd_1 = tonumber(sc_1.SessionStart) or 0
    local se = sb_2 - sd_1
    for i, v in ipairs(sc_1.Rewards) do
        local sl = v
        local sb_3 = oD.Unloaded or not ny("AutoClaimPlaytime")
        if sb_3 then
            break
        end
        local sb_4 = typeof(sl) == "table" and sl.Claimed ~= true
        if sb_4 then
            local sb_5 = tonumber(sl.UnlockSeconds) or math.huge
            if se >= sb_5 then
                pcall(function()
                    ClaimPlayTimeReward:FireServer(sl.Index)
                end)
                task.wait(0.35)
            end
        end
    end
end
nv = fn568
if (ov or nk) and (not nk or nk) and (Options and Options or not Options and ov) or not ((ov or nk) and (not nk or nk) and (Options and Options or not Options and ov)) then
    nV = 0
    nQ = fn853
    oQ = 0
else
    nQ = 0
    oQ = fn853
    nV = 0
end
oK = fns.fn362
n1 = function()
    local sH = oO("UpgradeSelect")
    if not next(sH) then
        return
    end
    for i, v in ipairs(oB) do
        local sI = oD.Unloaded or not ny("AutoBuyUpgrades")
        if sI then
            break
        elseif sH[v] then
            local sG = ou[v]
            local sI_1 = oL(sG)
            local sJ = UpgradeConfig.GetMaxLevel(sG)
            local sJ_2
            local sK = typeof(sJ) == "number" and sI_1 >= sJ
            local sK_1
            if not sK then
                sJ_2, sK_1 = pcall(UpgradeConfig.GetUpgradeCost, sG, sI_1)
                local sI_2 = sJ_2 and typeof(sK_1) == "number" and sK_1 > 0 and nN() >= sK_1
                if sI_2 then
                    pcall(function()
                        PurchaseUpgrade:FireServer(sG)
                    end)
                    task.wait(0.3)
                end
            end
        end
    end
end
n8 = function()
    local sT = oO("ShopUpgradeSelect")
    if not next(sT) then
        return
    end
    for i, v in ipairs(nJ) do
        local sU = oD.Unloaded or not ny("AutoBuyShopUpgrades")
        if sU then
            break
        elseif sT[v] then
            local sS = nE[v]
            local sU_1 = nS(sS)
            local sV = ShopUpgradeConfig.GetMaxLevel(sS)
            local sV_2
            local sW = typeof(sV) == "number" and sU_1 >= sV
            local sW_1
            if not sW then
                sV_2, sW_1 = pcall(ShopUpgradeConfig.GetUpgradeCost, sS, sU_1)
                local sU_2 = sV_2 and typeof(sW_1) == "number" and sW_1 > 0 and nN() >= sW_1
                if sU_2 then
                    pcall(function()
                        PurchaseShopUpgrade:FireServer(sS)
                    end)
                    task.wait(0.3)
                end
            end
        end
    end
end
og = function()
    local s7 = oO("GearSelect")
    if not next(s7) then
        return
    end
    for i, v in ipairs(np) do
        local s8 = oD.Unloaded or not ny("AutoBuyGears")
        if s8 then
            break
        elseif s7[v] then
            local s6 = nl[v]
            if nk(s6) > 0 then
                local s8_1 = GearConfig.GetGearCost and GearConfig.GetGearCost(s6)
                local s8_2 = typeof(s8_1) == "number" and nN() >= s8_1
                if s8_2 then
                    pcall(function()
                        PurchaseGear:FireServer(s6)
                    end)
                    task.wait(0.3)
                end
            end
        end
    end
end
oR = fns.fn329
vx_16 = oD:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = nU, Copyable = true }, "|", vx_29 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
local vx_42 = {
    Info = vx_16:AddTab("Info", "info"),
    Main = vx_16:AddTab("Main", "gamepad-2"),
    Player = vx_16:AddTab("Player", "person-standing"),
    Settings = vx_16:AddTab("Settings", "settings")
}
vx_42.Roll = vx_42.Main:AddSubTab("Roll", "dices")
vx_42.Farm = vx_42.Main:AddSubTab("Farm", "sprout")
vx_42.Claims = vx_42.Main:AddSubTab("Claims", "gift")
vx_42.Shop = vx_42.Main:AddSubTab("Shop", "shopping-cart")
vx_56 = fns.fn8
for k, v in vx_42 do
    if v ~= vx_42.Main then
        vx_56(v)
    end
end
nM, Label, nn = nil, nil, nil
nM = "Unknown"
pcall(fn877)
vx_43 = vx_42.Info:AddLeftGroupbox("Account", "circle-user")
vx_43:AddLabel(ns("User", LocalPlayer.Name, vx_38), true)
vx_43:AddLabel(ns("Status", "Keyless", vx_38), true)
vx_43:AddLabel(ns("Executor", nM, vx_38), true)
vx_16 = vx_42.Info:AddLeftGroupbox("Game Info", "gamepad-2")
vx_16:AddLabel(nA(vx_29 .. " [" .. tostring(game.PlaceId) .. "]", vx_46), true)
vx_16:AddLabel(ns("Place ID", tostring(game.PlaceId), vx_46), true)
Label = vx_16:AddLabel(ns("Session time", "0s", oV), true)
nn = tostring(game.JobId)
vx_25 = #nn > 18
if vx_25 then
    vx_43 = 3
    repeat
        if (vx_43 * 2 + 1) * 16 % 3 == ((vx_43 * 2 + 1) * 16 + 4) % 3 then
            nn = string.sub(vx_25, 1, 18) .. "..."
        else
            vx_25 = string.sub(nn, 1, 18) .. "..."
        end
        vx_43 = (vx_43 + 3) % 4
    until (vx_43 * 3 + 0) % 4 == 2
end
vx_43 = vx_25 or nn
oS = nil
vx_25 = vx_43
vx_16:AddLabel(ns("Server", vx_25, vx_52), true)
vx_16:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
oS = os.clock()
task.spawn(fns.worker)
local ScriptsGroup = vx_42.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(nA("Included in this hub", vx_52), true)
ScriptsGroup:AddLabel(nA(vx_29, vx_46), true)
local FeaturesGroup = vx_42.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(nA("Auto Roll / Buy Roll", vx_46), true)
FeaturesGroup:AddLabel(nA("Auto Claims", oV), true)
FeaturesGroup:AddLabel(nA("Auto Collect / Equip / Rebirth / Slots", vx_38), true)
FeaturesGroup:AddLabel(nA("Auto Upgrades / Gears / Shop Upgrades", vx_52), true)
local SocialsGroup = vx_42.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = nL })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
vx_56 = vx_42.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
vx_56:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
vx_56:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
vx_56:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
vx_56:AddButton({ Text = "Copy Discord Invite", Func = nL })
vx_6 = vx_42.Info:AddRightGroupbox("Donations", "heart")
vx_6:AddLabel(nA("All donations are optional but appreciated.", oV), true)
vx_6:AddLabel(nA("If you donate you get a special role, just PING after you donate.", vx_38), true)
vx_6:AddDivider()
vx_6:AddLabel(nA("LTC / Litecoin", vx_2), true)
vx_6:AddButton({ Text = "Copy Litecoin Address", Func = fns.onCopyLitecoinAddress })
vx_6:AddLabel(nA("BTC / Bitcoin", vx_12), true)
vx_6:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
vx_6:AddLabel(nA("ETH / Ethereum", vx_21), true)
vx_6:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
vx_6:AddLabel(nA("USDT", vx_31), true)
vx_6:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
vx_6:AddLabel(nA("Solana", vx_40), true)
vx_6:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
vx_6:AddLabel(nA("PayPal", vx_50), true)
vx_6:AddButton({ Text = "Copy PayPal Link", Func = fns.onCopyPayPalLink })
vx_6:AddLabel(nA("Venmo", vx_59), true)
vx_6:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
vx_6:AddDivider()
vx_6:AddLabel(nA("Don't have any of the listed currencies but still wanna donate?", vx_52), true)
vx_6:AddLabel(nA("DM me and we'll work something out.", vx_46), true)
local FaqGroup = vx_42.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutoRollGroup = vx_42.Roll:AddLeftGroupbox("Auto Roll", "dices")
AutoRollGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
AutoRollGroup:AddSlider("AutoRollDelay", { Text = "Roll Delay", Default = 0.35, Min = 0.1, Max = 5, Rounding = 2 })
local AutoBuyRollGroup = vx_42.Roll:AddRightGroupbox("Auto Buy Roll", "shopping-bag")
AutoBuyRollGroup:AddToggle("AutoBuyRoll", { Text = "Auto Buy Roll", Default = false })
local vx_36 = {}
for i, v in ipairs(vx_19) do
    vx_36[v] = true
end
vx_16, vx_25 = nil, nil
AutoBuyRollGroup:AddDropdown("AutoBuyRollRarities", { Text = "Buy Rarities", Values = vx_19, Default = vx_36, Multi = true })
AutoBuyRollGroup:AddSlider("AutoBuyRollMaxPrice", { Text = "Max Buy Price", Default = 100000000000000, Min = 0, Max = 100000000000000, Rounding = 0 })
vx_38 = vx_42.Farm:AddLeftGroupbox("Collect", "package-open")
vx_38:AddToggle("AutoCollect", { Text = "Auto Collect Money", Default = false })
vx_46 = vx_42.Farm:AddLeftGroupbox("Equip", "shirt")
vx_46:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
vx_46:AddSlider("AutoEquipBestDelay", { Text = "Equip Delay", Default = 30, Min = 1, Max = 120, Rounding = 0 })
vx_6 = vx_42.Farm:AddRightGroupbox("Rebirth", "refresh-cw")
if ((not vx_25 and vx_38 and (not vx_38 or not vx_25) or (not vx_16 or not vx_25 or vx_38 and not vx_38)) and ((not vx_38 or not vx_16) and (vx_25 or vx_38) and (not vx_16 and not vx_38 and (not vx_16 or vx_38))) or ((vx_16 or not vx_16) and (not vx_38 and not vx_16) or (not vx_16 or vx_16) and (not vx_38 and vx_38) or not vx_25 and not vx_38 and (not vx_25 or not vx_16) and (not vx_16 or not vx_25 or vx_25 and not vx_16))) and not ((not vx_25 and vx_38 and (not vx_38 or not vx_25) or (not vx_16 or not vx_25 or vx_38 and not vx_38)) and ((not vx_38 or not vx_16) and (vx_25 or vx_38) and (not vx_16 and not vx_38 and (not vx_16 or vx_38))) or ((vx_16 or not vx_16) and (not vx_38 and not vx_16) or (not vx_16 or vx_16) and (not vx_38 and vx_38) or not vx_25 and not vx_38 and (not vx_25 or not vx_16) and (not vx_16 or not vx_25 or vx_25 and not vx_16))) then
    vx_16:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
    vx_42 = vx_6.Farm:AddRightGroupbox("Slots", "layout-grid")
else
    vx_6:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
    vx_16 = vx_42.Farm:AddRightGroupbox("Slots", "layout-grid")
end
vx_16:AddToggle("AutoBuySlots", { Text = "Auto Buy Slots", Default = false })
vx_25 = vx_42.Claims:AddLeftGroupbox("Item Index", "book-open")
vx_25:AddToggle("AutoClaimIndex", { Text = "Auto Claim Item Index", Default = false })
vx_35 = vx_42.Claims:AddLeftGroupbox("Quests", "list-checks")
vx_35:AddToggle("AutoClaimQuests", { Text = "Auto Claim Quest Index", Default = false })
vx_43 = vx_42.Claims:AddRightGroupbox("Playtime", "timer")
vx_43:AddToggle("AutoClaimPlaytime", { Text = "Auto Claim Playtime Rewards", Default = false })
vx_59 = vx_42.Shop:AddLeftGroupbox("Auto Buy Upgrades", "arrow-big-up")
vx_59:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
vx_29 = {}
for i, v in ipairs(oB) do
    vx_29[v] = true
end
vx_25, vx_35 = nil, nil
vx_43 = 4
repeat
    vx_16 = {
        "lwmq",
        "xohwvpch",
        "eol",
        "glt",
        "esx",
        "ghuzw",
        "ygieaqf",
        "eohsxfuikkup",
        "fardyxewwhvh",
        "xnmgtncpshv"
    }
    if vx_16[(vx_43 * 30 + 61) % 10 + 1] <= vx_16[(vx_43 * 30 + 61) % 10 + 1] then
        vx_59:AddDropdown("UpgradeSelect", { Text = "Upgrades", Values = oB, Default = vx_29, Multi = true })
        vx_25 = vx_42.Shop:AddLeftGroupbox("Auto Upgrades Shop", "store")
        vx_25:AddToggle("AutoBuyShopUpgrades", { Text = "Auto Upgrades Shop", Default = false })
        vx_35 = {}
    else
        vx_35:AddDropdown("UpgradeSelect", { Multi = true, Default = vx_42, Values = vx_59, Text = "Upgrades" })
        oB = vx_29.Shop:AddLeftGroupbox("Auto Upgrades Shop", "store")
        oB:AddToggle("AutoBuyShopUpgrades", { Text = "Auto Upgrades Shop", Default = false })
        vx_25 = {}
    end
    vx_43 = (vx_43 + 5) % 8
until (vx_43 * 5 + 2) % 8 == 7
for i, v in ipairs(nJ) do
    vx_35[v] = true
end
vx_6, vx_16 = nil, nil
vx_43 = 3
repeat
    if (vx_16 and vx_16 or (vx_43 or vx_16)) and (not vx_16 and vx_16 or (vx_16 or not vx_16)) or (vx_16 or vx_16 or not vx_16 and not vx_43) and (not vx_43 and not vx_16 and (vx_16 and vx_16)) or not ((vx_16 and vx_16 or (vx_43 or vx_16)) and (not vx_16 and vx_16 or (vx_16 or not vx_16)) or (vx_16 or vx_16 or not vx_16 and not vx_43) and (not vx_43 and not vx_16 and (vx_16 and vx_16))) then
        vx_25:AddDropdown("ShopUpgradeSelect", { Text = "Shop Upgrades", Values = nJ, Default = vx_35, Multi = true })
        vx_6 = vx_42.Shop:AddRightGroupbox("Auto Buy Gears", "wrench")
        vx_6:AddToggle("AutoBuyGears", { Text = "Auto Buy Gears", Default = false })
        vx_16 = {}
    else
        vx_35:AddDropdown("ShopUpgradeSelect", { Default = vx_25, Multi = true, Text = "Shop Upgrades", Values = vx_16 })
        nJ = vx_6.Shop:AddRightGroupbox("Auto Buy Gears", "wrench")
        nJ:AddToggle("AutoBuyGears", { Text = "Auto Buy Gears", Default = false })
        vx_42 = {}
    end
    vx_43 = (vx_43 + 1) % 4
until (vx_43 * 3 + 1) % 4 == 1
for i, v in ipairs(np) do
    vx_16[v] = false
end
connection2, connection3, nB, connection4, vx_35, n3, nZ, connection5, connection6, oe, nG, oG, nT, nC, oz = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
vx_6:AddDropdown("GearSelect", { Text = "Gears", Values = np, Default = vx_16, Multi = true })
vx_56 = vx_42.Player:AddLeftGroupbox("Movement", "footprints")
vx_56:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
vx_56:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
vx_56:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
vx_56:AddToggle("NoClip", { Text = "NoClip", Default = false })
vx_56:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
vx_25 = vx_42.Player:AddRightGroupbox("Fly", "feather")
vx_25:AddToggle("Fly", { Text = "Fly", Default = false })
vx_25:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
oe = function(g5)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not g5)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not g5
        end
    end)
    if not g5 then
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
Toggles.AntiGameplayPause:OnChanged(fn586)
Toggles.Fly:OnChanged(fns.fn57)
Toggles.WalkSpeedEnabled:OnChanged(fn620)
connection2 = RunService.Stepped:Connect(onStepped)
connection3 = UserInputService.JumpRequest:Connect(onJumpRequest)
nB = Workspace.CurrentCamera
connection4 = RunService.RenderStepped:Connect(onRenderStepped)
if (not connection6 and not connection6 and (not connection6 and nG) and (nG and not nG and (connection6 and not nG)) or (nG and not connection6 or nG and not connection6 or (not connection6 or nG or (nG or nG)))) and not (not connection6 and not connection6 and (not connection6 and nG) and (nG and not nG and (connection6 and not nG)) or (nG and not connection6 or nG and not connection6 or (not connection6 or nG or (nG or nG)))) then
    vx_42 = vx_35.Settings:AddLeftGroupbox("Menu")
else
    vx_35 = vx_42.Settings:AddLeftGroupbox("Menu")
end
vx_35:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
oD.ToggleKeybind = Options.MenuKeybind
n3 = tick()
nZ = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local ui = v
        pcall(function()
            ui:Disable()
        end)
    end
end)
nG = fn868
connection5 = UserInputService.InputBegan:Connect(onInputBegan)
connection6 = UserInputService.InputChanged:Connect(fns.onInputChanged)
vx_35:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
vx_35:AddButton({ Text = "Unload", Func = fns.onUnload })
vx_33:SetLibrary(oD)
vx_33:SetFolder("OuroborosHub")
vx_33:SaveDefault("Evil Hello Kitty")
vx_33:ApplyToTab(vx_42.Settings)
vx_33:LoadDefault()
oo:SetLibrary(oD)
oo:IgnoreThemeSettings()
oo:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
oo:SetFolder("OuroborosHub/RollForAvatarItems")
vx_46 = oo:BuildConfigSection(vx_42.Settings)
if (connection3 and not vx_56 or (connection3 or connection3)) and (not vx_56 and not vx_56 or oG and not vx_56) or not ((connection3 and not vx_56 or (connection3 or connection3)) and (not vx_56 and not vx_56 or oG and not vx_56)) then
    oG = fn420
end
nT = fn893
nC = fns.fn376
oz = function(iG)
    local uZ
    uZ = nil
    local u_ = type(iG) ~= "table"
    local u3 = if u_ then 1 else 0
    local u1 = 3319 * u3 + 1180 * (1 - u3)
    local u2 = 3030 * u3 + 751 * (1 - u3)
    if not ((u1 * 3866 + u2 * 2847 + u1 * u2) % 16777213 == 14737021) then
        u_ = type(iG.idx) ~= "string"
    end
    if not u_ then
        u_ = type(iG.type) ~= "string"
    end
    local u3_1 = if u_ then 1 else 0
    local u1_1 = 1662 * u3_1 + 2947 * (1 - u3_1)
    local u2_1 = 1532 * u3_1 + 3029 * (1 - u3_1)
    if not ((u1_1 * 1618 + u2_1 * 623 + u1_1 * u2_1) % 16777213 == 6189736) then
        u_ = oo.Ignore[iG.idx]
    end
    if u_ then
        return false
    end
    uZ = oG(iG.type, iG.idx)
    if not uZ then
        return false
    end
    local u__1 = pcall(function()
        if iG.type == "Input" then
            if type(iG.text) ~= "string" then
                return
            end
            uZ:SetValue(iG.text)
        elseif iG.type == "ColorPicker" then
            uZ:SetValueRGB(Color3.fromHex(iG.value), iG.transparency)
        elseif iG.type == "KeyPicker" then
            uZ:SetValue({ iG.key, iG.mode, iG.modifiers })
            if iG.mode == "Toggle" and iG.toggled ~= nil then
                uZ.Toggled = iG.toggled
                uZ:Update()
            end
        else
            uZ:SetValue(iG.value)
        end
    end)
    return u__1
end
vx_46:AddDivider()
vx_46:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
vx_46:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
vx_46:AddButton("Import Config from Clipboard Text", fns.onImportConfigFromClipboardTex)
oo:LoadAutoloadConfig()
ov()
task.spawn(worker2)
task.spawn(worker3)
task.spawn(fns.antiGameplayPauseLoop)
task.spawn(antiAfkLoop)
oD:OnUnload(fn728)
