local fns = {}
local QuestTable, Gk_3, Gk_6, Gk_9, Gk_12, Gk_33, RewardsGroup, GameInfoGroup, Gk_45, FaqGroup, MiscGroup, Gk_61, FeaturesGroup
QuestTable = nil
Gk_3 = nil
Gk_6 = nil
Gk_9 = nil
Gk_12 = nil
local tZ
local sZ
local un
local tn
local tM
local sM
local ua
local ta
local tz
local sz
local sY
local um
local tm
local tL
local sL
local VirtualUser
local s9
local ty
local sy
local tX
local sX
local ul
local tl
local tK
local sK
local t8
local s8
local tx
local sx
local tW
local sW
local uk
local tk
local Workspace
local sJ
local t7
local s7
local tw
local sw
local tV
local sV
local Toggles
local tj
local connection2
local sI
local t6
local s6
local tv
local sv
local tU
local RarityTable
local ui
local ti
local tH
local sH
local t5
local s5
local uu
local tu
local su
local tT
local sT
local connection
local th
local tG
local sG
local t4
local s4
local ut
local tt
local st
local tS
local sS
local UserInputService
local tg
local tF
local sF
local t3
local Services
local us
local ts
local ss
local sR
local uf
local tf
local tE
local OnlineRewardTable
local HttpService
local s2
local ur
local tr
local sr
local tQ
local sQ
local ue
local te
local tD
local sD
local t1
local s1
local uq
local tq
local Library
local tP
local sP
local ud
local td
local tC
local sC
local t0
local s0
local SaveManager
local tp
local sp
local tO
local sO
local Options
local tc
local sB
local s_
local to
local tN
function fns.fn4()
    local wq = tQ()
    local wr = wq and wq.Controllers and wq.Controllers.YenController
    local wq_1 = wr
    if wr then
        wr = type(wq_1.Amount) == "number"
    end
    if wr then
        return wq_1.Amount
    end
    local wq_2 = sS()
    local wr_1 = wq_2 and wq_2.Currency and tonumber(wq_2.Currency.Yen)
    return wr_1 or 0
end
function fns.onCopySolanaAddress()
    Gk_12(tG, "Copied Solana address")
end
function fns.fn17(bg, bh)
    local v5 = Services:FindFirstChild(bg)
    local v6 = v5 and v5:FindFirstChild("RE")
    local v5_1 = v6
    if v6 then
        v6 = v5_1:FindFirstChild(bh)
    end
    return v6
end
function fns.fn30()
    local ww = tQ()
    local wx = ww and ww.Controllers and ww.Controllers.InventoryController
    local ww_1 = wx
    if wx then
        wx = ww_1.Inventory
    end
    if wx then
        wx = ww_1.Inventory[tD]
    end
    if wx then
        return ww_1.Inventory[tD]
    end
    local ww_2 = sS()
    local wx_1 = ww_2 and ww_2.Inventory
    local ww_3 = { Packs = {}, Cards = {}, Items = {} }
    local wy = wx_1
    local wC = if wy then 1 else 0
    local wA = 3032 * wC + 2273 * (1 - wC)
    local wB = 2639 * wC + 223 * (1 - wC)
    if not ((wA * 3619 + wB * 3009 + wA * wB) % 16777213 == 10137794) then
        wy = ww_3
    end
    return wy
end
function fns.fn56()
    connection:Disconnect()
    connection2:Disconnect()
    uu(false)
    local Gf = uk()
    if Gf then
        Gf.PlatformStand = false
        Gf.WalkSpeed = 16
    end
end
function fns.fn67()
    local wl = ts and os.clock() - tm < 2
    if wl then
        return ts
    end
    return th()
end
function fns.worker6()
    while not Library.Unloaded do
        task.wait(2)
        if tk("AntiAfk") then
            local Gb = tick() - s2
            local Gc = tick() - s_
            if Gb >= 300 and Gc >= 60 then
                pcall(sC)
            else
                if Gb < 300 and Gc >= 300 then
                    pcall(sC)
                end
            end
        end
    end
end
function fns.onCopyPayPalLink()
    Gk_12(tC, "Copied PayPal link")
end
function fns.fn103(bo, bp, ...)
    local v8 = tX(bo, bp)
    if not v8 then
        return nil
    end
    return v8:InvokeServer(...)
end
function fns.onInputChanged(m2)
    local UserInputType = m2.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        s2 = tick()
    end
end
function fns.worker4()
    while not Library.Unloaded do
        if tk("AutoAuctionBuy") then
            pcall(uf)
        end
        if tk("AutoAuctionSell") then
            pcall(tn)
        end
        local F7 = if tk("AutoAuctionClaim") then 1 else 0
        if F7 == 1 then
            pcall(sO)
        end
        task.wait(2)
    end
end
function fns.onCopyUSDTAddress()
    Gk_12(tL, "Copied USDT address")
end
function fns.fn215()
    local Character = tD.Character
    local wK = Character and Character:FindFirstChild("HumanoidRootPart")
    return wK
end
function fns.fn314(bt, bu, ...)
    local wa = td(bt, bu)
    if wa then
        wa:FireServer(...)
    end
end
function fns.antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            uu(true)
        end
    end
end
function fns.fn355()
    local wt = tQ()
    local wu = wt and wt.Controllers and wt.Controllers.GemController
    local wt_1 = wu
    if wu then
        wu = type(wt_1.Amount) == "number"
    end
    if wu then
        return wt_1.Amount
    end
    local wt_2 = sS()
    local wu_1 = wt_2 and wt_2.Currency and tonumber(wt_2.Currency.Gem)
    return wu_1 or 0
end
function fns.fn365(a0)
    local vO = sW(a0, {})
    if typeof(vO) ~= "table" then
        return {}
    end
    local vP = {}
    for k, v in pairs(vO) do
        if v == true then
            vP[k] = true
        else
            local vO_1 = typeof(k) == "number" and typeof(v) == "string"
            if vO_1 then
                vP[v] = true
            end
        end
    end
    return vP
end
function fns.worker5()
    while not Library.Unloaded do
        if tk("AutoClaimEarnings") then
            pcall(sy)
        end
        if tk("AutoClaimRewards") then
            pcall(tW)
        end
        if tk("AutoCompleteQuests") then
            pcall(tl)
        end
        local F8 = tk("AutoClaimQuests") or tk("ClaimQuestsNearRefresh")
        if F8 then
            pcall(sJ)
        end
        if tk("AutoCollectPotions") then
            pcall(tq)
        end
        if tk("AutoUseItems") then
            pcall(st)
        end
        if tk("AutoGrade") then
            pcall(tF, true)
            pcall(tr)
        end
        if tk("AutoClaimGraded") then
            pcall(tw)
        end
        if tk("AutoRedeemCodes") then
            pcall(tf)
        end
        task.wait(1.2)
    end
end
function fns.onImportConfigFromClipboardTex()
    local FR_1
    local FP = Options.SaveManager_ImportSource.Value or ""
    local FP_1
    local FQ = tostring(FP):match("^%s*(.-)%s*$")
    if FQ == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    FP_1, FR_1 = pcall(HttpService.JSONDecode, HttpService, FQ)
    local FQ_1 = not FP_1 or type(FR_1) ~= "table" or type(FR_1.objects) ~= "table"
    if FQ_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local FP_2 = 0
    for i, v in ipairs(FR_1.objects) do
        if tv(v) then
            FP_2 += 1
        end
    end
    if FP_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local FR_2 = FP_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(FP_2, FR_2), 6)
end
function fns.fn445()
    local we_1
    local wd_1
    wd_1, we_1 = pcall(function()
        if getrenv then
            return getrenv()._G.Knit
        end
        return _G.Knit
    end)
    local wf = wd_1 and type(we_1) == "table"
    if wf then
        return we_1
    end
    return nil
end
function fns.onCopyVenmoLink()
    Gk_12(tx, "Copied Venmo link")
end
function fns.fn480()
    local Fo = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local Fp = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if Fp then
                local Fp_1 = sY(k, v)
                if Fp_1 then
                    Fo[#Fo + 1] = Fp_1
                end
            end
        end
    end
    table.sort(Fo, function(nv, nw)
        if nv.type ~= nw.type then
            return nv.type < nw.type
        end
        return nv.idx < nw.idx
    end)
    return { objects = Fo }
end
function fns.fn547()
    if not Toggles.Fly.Value then
        local Ew = uk()
        if Ew then
            Ew.PlatformStand = false
        end
    end
end
function fns.fn548()
    Gk_12(to, "Copied Discord invite to clipboard")
end
function fns.onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = tD.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local ED_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if ED_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.fn601()
    local Character = tD.Character
    local wE = Character and Character:FindFirstChildOfClass("Humanoid")
    return wE
end
function fns.onInputBegan()
    s2 = tick()
end
function fns.fn677(aB, aC)
    if setclipboard then
        setclipboard(aB)
    elseif toclipboard then
        toclipboard(aB)
    end
    Library:Notify(aC)
end
function fns.fn721()
    local wi_1
    local wh_1
    wh_1, wi_1 = pcall(sB, "PlayerDataService", "RequestPlayerData")
    local wj = wh_1 and type(wi_1) == "table"
    if wj then
        ts = wi_1
        tm = os.clock()
    end
    return ts
end
function fns.worker2()
    while not Library.Unloaded do
        local FZ = tk("AutoTakePack")
        local F_ = tk("AutoPlacePack")
        if FZ and F_ then
            local F0_1 = s4()
            local F1 = #F0_1 > 0 and sD() < ua()
            if F1 then
                pcall(su)
            else
                pcall(sQ)
            end
        elseif FZ then
            pcall(sQ)
        elseif F_ then
            pcall(su)
        end
        if tk("AutoOpenPack") then
            pcall(Gk_9)
        end
        if tk("AutoMoveToBinder") then
            pcall(Gk_3)
        end
        task.wait(0.4)
    end
end
function fns.onExportConfigToClipboard()
    local FJ_1
    local FI_1
    FI_1, FJ_1 = pcall(HttpService.JSONEncode, HttpService, sF())
    if not FI_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local FI_2 = setclipboard
    local FO = if FI_2 then 1 else 0
    local FM = 901 * FO + 2907 * (1 - FO)
    local FN = 3359 * FO + 3905 * (1 - FO)
    if not ((FM * 104 + FN * 1286 + FM * FN) % 16777213 == 7439837) then
        FI_2 = toclipboard
    end
    local FK = FI_2
    local FI_3 = type(FK) ~= "function" or not pcall(FK, FJ_1)
    if FI_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
function fns.fn774(nh, ni)
    local Type = ni.Type
    if Type == "Toggle" then
        return { idx = nh, type = "Toggle", value = ni.Value == true }
    elseif Type == "Slider" then
        return { idx = nh, type = "Slider", value = tostring(ni.Value) }
    elseif Type == "Dropdown" then
        return { idx = nh, type = "Dropdown", multi = ni.Multi == true, value = ni.Value }
    elseif Type == "Input" then
        local Fi = ni.Value or ""
        return { idx = nh, type = "Input", text = tostring(Fi) }
    elseif Type == "ColorPicker" then
        return { idx = nh, type = "ColorPicker", value = ni.Value:ToHex(), transparency = ni.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = nh,
            type = "KeyPicker",
            mode = ni.Mode,
            key = ni.Value,
            modifiers = ni.Modifiers,
            toggled = ni.Toggled
        }
    else
        return nil
    end
end
function fns.fn784()
    if not Toggles.WalkSpeedEnabled.Value then
        local EB = uk()
        if EB then
            EB.WalkSpeed = 16
        end
    end
end
function fns.onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local EL_1 = uk()
        if EL_1 then
            EL_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.onCopyJoinScript_JobID()
    local lq = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, sv)
    Gk_12(lq, "Copied join script to clipboard")
end
function fns.fn885(aL, aM, aN)
    return string.format("<b>%s</b> %s %s", aL, t7("-", "#5a6070"), t7(aM, aN))
end
function fns.fn915(aI, aJ)
    return string.format('<font color="%s">%s</font>', aJ, aI)
end
function fns.onUnload()
    Library:Unload()
end
function fns.fn922(a8, a9)
    local v_ = Services:FindFirstChild(a8)
    local v0 = v_ and v_:FindFirstChild("RF")
    local v__1 = v0
    if v0 then
        v0 = v__1:FindFirstChild(a9)
    end
    return v0
end
function fns.onCopyEthereumAddress()
    Gk_12(tU, "Copied Ethereum address")
end
function fns.fn947()
    uu(Toggles.AntiGameplayPause.Value)
end
function fns.fn961(m9, na)
    local Fe_1 = (m9 == "Toggle" and Toggles or Options)[na]
    local Fd_2 = type(Fe_1) == "table" and Fe_1.Type == m9
    return Fd_2 and Fe_1 or nil
end
function fns.onRscripts()
    Gk_12(ti, "Copied Rscripts profile to clipboard")
end
function fns.onRenderStepped(mm)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local EN_1 = uk()
        if EN_1 then
            EN_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local EN_3 = tT()
        local EO = uk()
        tz = Workspace.CurrentCamera or tz
        if EN_3 and EO and tz then
            EO.PlatformStand = true
            local EO_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                EO_1 = EO_1 + tz.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                EO_1 = EO_1 - tz.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                EO_1 = EO_1 - tz.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                EO_1 = EO_1 + tz.CFrame.RightVector
            end
            local EU = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
            if EU == 1 then
                EO_1 = EO_1 + Vector3.new(0, 1, 0)
            end
            local EU_1 = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
            if EU_1 == 1 then
                EO_1 = EO_1 - Vector3.new(0, 1, 0)
            end
            EN_3.Velocity = Vector3.zero
            if EO_1.Magnitude > 0 then
                EN_3.CFrame = EN_3.CFrame + EO_1.Unit * Options.FlySpeed.Value * mm
            end
        end
    end
end
function fns.onCopyBitcoinAddress()
    Gk_12(t0, "Copied Bitcoin address")
end
function fns.fn1109()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    s_ = tick()
end
function fns.worker()
    local Eu_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local Et = math.floor(os.clock() - t4)
        if Et < 60 then
            Eu_1 = Et .. "s"
        elseif Et < 3600 then
            Eu_1 = string.format("%dm %ds", Et // 60, Et % 60)
        else
            Eu_1 = string.format("%dh %dm", Et // 3600, Et % 3600 // 60)
        end
        sx:SetText(tN("Session time", Eu_1, sP))
    end
end
function fns.worker3()
    while not Library.Unloaded do
        if tk("AutoAuctionSnipe") then
            pcall(ta)
        end
        task.wait(0.6)
    end
end
function fns.onCopyLitecoinAddress()
    Gk_12(t5, "Copied Litecoin address")
end
function fns.fn1196(aQ)
    if Library.Unloaded then
        return false
    end
    local vJ = Toggles[aQ]
    return vJ ~= nil and vJ.Value == true
end
function fns.fn1217(aW, aX)
    local vM = Options[aW]
    if vM == nil then
        return aX
    end
    return vM.Value
end
local function fn1223()
    local Em_1
    local El_1
    if identifyexecutor then
        Em_1, El_1 = identifyexecutor()
        local En = Em_1 ~= ""
        local Eo = type(Em_1) == "string" and En
        if Eo then
            local En_1 = type(El_1) == "string" and El_1 ~= "" and Em_1 .. " " .. El_1
            s5 = En_1 or Em_1
        end
    end
end
local function fn1228(P, Q)
    if P.number == Q.number then
        return P.name < Q.name
    end
    return P.number < Q.number
end
sp = nil
Library = nil
sr = nil
ss = nil
st = nil
su = nil
sv = nil
sw = nil
sx = nil
sy = nil
sz = nil
Gk_12 = nil
sB = nil
sC = nil
sD = nil
OnlineRewardTable = nil
sF = nil
sG = nil
sH = nil
sI = nil
sJ = nil
sK = nil
sL = nil
sM = nil
QuestTable = nil
sO = nil
sP = nil
sQ = nil
sR = nil
sS = nil
sT = nil
RarityTable = nil
sV = nil
sW = nil
sX = nil
sY = nil
sZ = nil
s_ = nil
s0 = nil
s1 = nil
s2 = nil
Services = nil
s4 = nil
s5 = nil
s6 = nil
s7 = nil
s8 = nil
s9 = nil
ta = nil
Gk_6 = nil
tc = nil
td = nil
te = nil
tf = nil
tg = nil
th = nil
ti = nil
tj = nil
tk = nil
tl = nil
tm = nil
tn = nil
to = nil
tp = nil
tq = nil
tr = nil
ts = nil
tt = nil
tu = nil
tv = nil
tw = nil
tx = nil
ty = nil
tz = nil
Gk_9 = nil
tC = nil
tD = nil
tE = nil
tF = nil
tG = nil
tH = nil
connection2 = nil
Workspace = nil
tK = nil
tL = nil
tM = nil
tN = nil
tO = nil
tP = nil
tQ = nil
tS = nil
tT = nil
tU = nil
tV = nil
tW = nil
tX = nil
tZ = nil
local tB, CoreGui, tY
t0 = nil
t1 = nil
HttpService = nil
t3 = nil
t4 = nil
t5 = nil
t6 = nil
t7 = nil
t8 = nil
VirtualUser = nil
ua = nil
Gk_3 = nil
Options = nil
ud = nil
ue = nil
uf = nil
UserInputService = nil
connection = nil
ui = nil
Toggles = nil
uk = nil
ul = nil
um = nil
un = nil
SaveManager = nil
uq = nil
ur = nil
us = nil
ut = nil
uu = nil
local GuiService, uo, uv
GuiService = nil
uo = nil
uv = nil
UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, tD, to, ti, te, Services, RarityTable, QuestTable, OnlineRewardTable, Library, SaveManager, Toggles, Options, tS = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Gk_57 = game:GetService("Players")
local Gk_60 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
tD = Gk_57.LocalPlayer
local Gk_74 = "Slime Card Collection"
local Gk_13 = "v0.1"
to = "https://discord.gg/synapsex"
ti = "https://rscripts.net/@Ouroboros"
te = 10
local Gk_7 = Gk_60:WaitForChild("Knit")
Services = Gk_7:WaitForChild("Services")
local Gk_21 = Gk_60:WaitForChild("DataBank")
local Gk_25 = require(Gk_21:WaitForChild("CardPackTable"))
RarityTable = require(Gk_21:WaitForChild("RarityTable"))
local Gk_37 = require(Gk_21:WaitForChild("ItemTable"))
QuestTable = require(Gk_21:WaitForChild("QuestTable"))
OnlineRewardTable = require(Gk_21:WaitForChild("OnlineRewardTable"))
require(Gk_21:WaitForChild("CardIndexTable"))
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
local Gk_62 = {}
local Gk_49 = {}
tS = {}
local Gk_28 = {}
for k, v in pairs(Gk_25) do
    Gk_57 = table.insert
    Gk_45 = v.DisplayName or k
    Gk_33 = v.PackNumber or 0
    Gk_21 = v.Price or 0
    Gk_7 = v.HatchTime or 10
    Gk_57(Gk_28, { name = k, label = Gk_45, number = Gk_33, price = Gk_21, hatch = Gk_7 })
    tS[k] = v
end
Gk_57 = 0
repeat
    Gk_45 = (vector.create((Gk_57 * 5 + 8) % 11 + 1, (Gk_57 * 11 + 6) % 13 + 1, (Gk_57 * 3 + 13) % 17 + 1))
    Gk_33 = (vector.create((Gk_57 * 7 + 2) % 11 + 1, (Gk_57 * 9 + 11) % 13 + 1, (Gk_57 * 9 + 6) % 17 + 1))
    local Iu = vector.dot(Gk_45, Gk_33)
    if Iu * Iu >= vector.dot(Gk_45, Gk_45) * vector.dot(Gk_33, Gk_33) + 1 then
        table.sort(Gk_28, fn1228)
    else
        table.sort(Gk_28, fn1228)
    end
    Gk_57 = (Gk_57 + 6) % 8
until (Gk_57 * 3 + 6) % 8 == 0
for i, v in ipairs(Gk_28) do
    table.insert(Gk_62, v.label)
    Gk_49[v.label] = v.name
end
s6 = {}
tc = {}
for i, v in ipairs(RarityTable) do
    Gk_57 = v.Name or tostring(i)
    Gk_45 = Gk_57
    table.insert(tc, Gk_45)
    s6[Gk_45] = i
end
sG = {}
Gk_57 = {}
for k, v in pairs(Gk_37) do
    Gk_45 = table.insert
    Gk_33 = v.DisplayName or k
    Gk_45(Gk_57, Gk_33)
    if v.Effect then
        Gk_45 = table.insert
        Gk_33 = v.DisplayName or k
        Gk_45(sG, Gk_33)
    end
end
ss = nil
Gk_21 = 0
repeat
    if (Gk_21 * 2 + 9) * 16 % 3 == ((Gk_21 * 2 + 9) * 16 + 0) % 3 then
        table.sort(Gk_57)
        table.sort(sG)
        ss = {}
    else
        table.sort(sG)
        table.sort(ss)
        Gk_57 = {}
    end
    Gk_21 = (Gk_21 + 1) % 8
until (Gk_21 * 7 + 7) % 8 == 6
for k, v in pairs(Gk_37) do
    Gk_45 = v.DisplayName or k
    ss[Gk_45] = k
end
ul = nil
Gk_33 = 7
repeat
    Gk_45 = { "oec", "nsuct", "eosfhqlifmq", "zyn", "vgq", "qpj", "pbrmq", "lhwnldis" }
    local Iy = Gk_33
    Gk_21 = Gk_45[Iy % 8 + 1]
    if Gk_21:len() <= Gk_21:reverse():rep(Iy % 3 + 2):len() then
        ul = {
            "Ghost",
            "Index",
            "Boost",
            "Quest",
            "Million",
            "Void",
            "PSA",
            "Sand",
            "Anime",
            "Candy",
            "RELEASED"
        }
    else
        ul = {
            "PSA",
            "Million",
            "Anime",
            "Candy",
            "Void",
            "Boost",
            "Index",
            "Sand",
            "Quest",
            "RELEASED",
            "Ghost"
        }
    end
    Gk_33 = (Gk_33 + 7) % 8
until (Gk_33 * 5 + 4) % 8 == 2
for k in pairs(Gk_25) do
    table.insert(ul, k)
end
t5, t0, tU, tL, tG, tC, tx, Gk_37, sP, ts, tm, tu, tp, Gk_12, ur, t7, tN, tk, sW, sw, tX, td, sB, uo, tQ, th, sS, sp, tE, sX, uk, tT = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if ((not tE or tE) and (t0 and Gk_37) or (not t0 or not tU or not tU and not Gk_37)) and not ((not tE or tE) and (t0 and Gk_37) or (not t0 or not tU or not tU and not Gk_37)) then
    t0 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
    tL = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
    t5 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
    tU = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
else
    t5 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
    t0 = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
    tU = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
    tL = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
end
if (not t7 and t7 and (td or not t7) or (td and not td or not t7 and not td)) and not (not t7 and t7 and (td or not t7) or (td and not td or not t7 and not td)) then
else
    tG = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
end
tC = "https://paypal.me/TheTruckerGOD"
tx = "https://venmo.com/u/miserablemusic"
local Gk_77 = "#345d9d"
local Gk_16 = "#f7931a"
Gk_28 = "#627eea"
Gk_25 = "#26a17b"
Gk_37 = "#14f195"
Gk_49 = "#0070ba"
Gk_60 = "#008cff"
local Gk_70 = "#7fd47f"
Gk_7 = "#6ec1ff"
sP = "#e8a34d"
Gk_21 = "#8b93a3"
Gk_12 = fns.fn677
ur = fns.fn548
t7 = fns.fn915
tN = fns.fn885
tk = fns.fn1196
sW = fns.fn1217
sw = fns.fn365
tX = fns.fn922
td = fns.fn17
sB = fns.fn103
uo = fns.fn314
tQ = fns.fn445
ts = nil
tm = 0
th = fns.fn721
sS = fns.fn67
sp = fns.fn4
tE = fns.fn355
sX = fns.fn30
uk = fns.fn601
tT = fns.fn215
tu = {}
tp = { name = nil, rarity = nil, at = 0 }
Gk_33 = td("PackConveyerService", "BoughtPack")
if Gk_33 then
    Gk_33.OnClientEvent:Connect(function(cp, cq)
        tp.name = cp
        tp.rarity = cq
        tp.at = os.clock()
    end)
end
s0 = function(ct, cu)
    local wM = tS[ct]
    if not wM then
        return math.huge
    end
    return (wM.Price or 0) * 12 ^ ((cu or 1) - 1)
end
sH = function(cy)
    local wP = tu[cy]
    if not wP then
        return false
    elseif os.clock() >= wP then
        tu[cy] = nil
        return false
    else
        return true
    end
end
uv = function(cC, cD)
    if cC then
        local wR = os.clock()
        local wS = cD or 4
        tu[cC] = wR + wS
    end
end
t6 = function(cG, cH)
    local Character = tD.Character
    local wW = tT()
    if not Character or not wW then
        return false
    end
    local Position = cG.Position
    if (wW.Position - Position).Magnitude <= (cH or 8) then
        return true
    end
    local wU = uk()
    if wU then
        wU.Sit = false
        wU.PlatformStand = false
        pcall(function()
            wU:ChangeState(Enum.HumanoidStateType.GettingUp)
        end)
    end
    Character:PivotTo(CFrame.new(Position) * wW.CFrame.Rotation)
    wW.AssemblyLinearVelocity = Vector3.zero
    wW.AssemblyAngularVelocity = Vector3.zero
    return true
end
s8 = function()
    local w3 = tQ()
    local w4 = w3 and w3.Controllers and w3.Controllers.PlayerPlotController
    local w3_1 = w4
    if w4 then
        w4 = w3_1.CurrentPlot
    end
    if w4 then
        return w3_1.CurrentPlot
    end
    local PlayersPlot = Workspace:FindFirstChild("PlayersPlot")
    if not PlayersPlot then
        return nil
    end
    for i, child in ipairs(PlayersPlot:GetChildren()) do
        if child:GetAttribute("PlayerName") == tD.Name then
            return child
        end
    end
    return nil
end
ut = function(c1)
    local c2, c3 = string.match(tostring(c1), "^([^:]+):(%d+)$")
    return c2, tonumber(c3)
end
t1 = function(c5)
    if not c5 then
        return
    end
    if fireproximityprompt then
        pcall(fireproximityprompt, c5)
    end
end
tO = function()
    local xg = os.date("!*t", os.time())
    local xh = 86400 - (xg.hour * 3600 + xg.min * 60 + xg.sec)
    if xh < 0 then
        xh += 86400
    end
    return xh
end
ty = function(da)
    local xk_1
    local xj_1
    if not da then
        return nil
    end
    xk_1, xj_1 = ut(da.Name)
    if not xk_1 or not tS[xk_1] then
        return nil
    end
    local xl_1 = xj_1 or 1
    local xl_2 = s0(xk_1, xl_1)
    local xm = tS[xk_1].PackNumber
    local xt = if xm then 1 else 0
    local xr = 3375 * xt + 2598 * (1 - xt)
    local xs = 1907 * xt + 2733 * (1 - xt)
    if not ((xr * 2823 + xs * 1245 + xr * xs) % 16777213 == 1560752) then
        xm = 0
    end
    return { model = da, name = xk_1, rarity = xl_1, price = xl_2, number = xm }
end
sT = function()
    local Runtime = Workspace:FindFirstChild("Runtime")
    local xv = Runtime and Runtime:FindFirstChild("ConveyerPacks")
    if not xv then
        return {}
    end
    local xv_1 = {}
    for i, child in ipairs(xv:GetChildren()) do
        local xu_2 = ty(child)
        if xu_2 then
            table.insert(xv_1, xu_2)
        end
    end
    return xv_1
end
t8 = function(dv)
    local xD = sw("TakePackChoice")
    if next(xD) == nil then
        return true
    end
    return xD[dv] == true
end
tH = function(dz)
    local xF = sw("TakeMutationChoice")
    if next(xF) == nil then
        return true
    end
    local xG = tc[dz]
    return xG ~= nil and xF[xG] == true
end
Gk_6 = function(dG, dH, dI)
    if dG == "Selected" then
        return t8(dH)
    elseif dG == "Mutations" then
        return tH(dI)
    else
        return true
    end
end
sK = function()
    local xO = sp()
    local xP = sW("TakePackMode", "Best Affordable")
    local xQ = tT()
    local xR = xQ and xQ.Position
    local xQ_1 = {}
    for i, v in ipairs(sT()) do
        local xR_1 = v.model and v.model.Parent and not sH(v.model)
        if xR_1 then
            local attr = v.model:GetAttribute("ReservedForUserId")
            if attr == nil or attr == tD.UserId then
                local xT_1 = tS[v.name] and tS[v.name].DisplayName or v.name
                local xT_2 = v.price <= xO and Gk_6(xP, xT_1, v.rarity)
                if xT_2 then
                    if xR then
                        v.dist = (v.model:GetPivot().Position - xR).Magnitude
                    else
                        v.dist = 0
                    end
                    table.insert(xQ_1, v)
                end
            end
        end
    end
    table.sort(xQ_1, function(d7, d8)
        if d7.number ~= d8.number then
            return d7.number > d8.number
        elseif d7.rarity ~= d8.rarity then
            return d7.rarity > d8.rarity
        else
            return d7.dist < d8.dist
        end
    end)
    return xQ_1[1]
end
sD = function()
    local x0 = sS()
    local x1 = x0 and x0.HacthingPacks
    if type(x1) ~= "table" then
        return 0
    end
    local x1_1 = 0
    for k in pairs(x1) do
        x1_1 += 1
    end
    return x1_1
end
ua = function()
    local x7 = sS()
    local x8 = x7 and tonumber(x7.TotalPackAllowed)
    return x8 or 50
end
tK = function()
    local Runtime = Workspace:FindFirstChild("Runtime")
    if not Runtime then
        return {}
    end
    local yb = {}
    for i, child in ipairs(Runtime:GetChildren()) do
        local ya_1 = child:IsA("Model") and child:GetAttribute("PlayerName") == tD.Name
        if ya_1 then
            table.insert(yb, child)
        end
    end
    return yb
end
s4 = function()
    local yk = sX()
    local yl = yk and yk.Packs
    local yl_3
    local ym = yl or {}
    local ym_1
    local yk_2 = {}
    for k, v in pairs(ym) do
        local yl_2 = type(v) == "number" and v > 0
        if yl_2 then
            ym_1, yl_3 = ut(k)
            if ym_1 then
                local yo = yl_3
                local yz = if yo then 1 else 0
                local yx = 1631 * yz + 1046 * (1 - yz)
                local yy = 2755 * yz + 2689 * (1 - yz)
                if not ((yx * 2764 + yy * 412 + yx * yy) % 16777213 == 10136549) then
                    yo = 1
                end
                local yp = tS[ym_1] and tS[ym_1].PackNumber or 0
                table.insert(yk_2, { key = k, name = ym_1, rarity = yo, amount = v, number = yp })
            end
        end
    end
    table.sort(yk_2, function(eH, eI)
        if eH.number == eI.number then
            return eH.rarity > eI.rarity
        end
        return eH.number > eI.number
    end)
    return yk_2
end
tV = function()
    local yA = sW("TakePackMode", "Best Affordable")
    local yB
    for i, v in ipairs(s4()) do
        local yC_1 = tS[v.name] and tS[v.name].DisplayName or v.name
        if Gk_6(yA, yC_1, v.rarity) then
            yB = v
            break
        end
    end
    return yB
end
sV = function(eW, eX)
    local yN_1
    local yL = eX or 6
    local yL_2
    eX = yL
    local yL_1 = tT()
    if yL_1 and (yL_1.Position - eW).Magnitude <= eX then
        return true
    end
    t6(CFrame.new(eW + Vector3.new(0, 3, 0)))
    local yM_1 = os.clock() + 0.5
    repeat
        task.wait()
        yL_2 = tT()
        yN_1 = not yL_2 or (yL_2.Position - eW).Magnitude <= eX
        local yR = if yN_1 then 1 else 0
        local yP = 3179 * yR + 1070 * (1 - yR)
        local yQ = 3605 * yR + 1740 * (1 - yR)
        if not ((yP * 3667 + yQ * 2846 + yP * yQ) % 16777213 == 16600305) then
            yN_1 = os.clock() >= yM_1
        end
    until yN_1
    if not yL_2 or (yL_2.Position - eW).Magnitude > eX then
        return false
    end
    task.wait(0.15)
    return true
end
ud = function(e5)
    local yV
    local yY_1
    if not e5 or not e5.model or not e5.model.Parent then
        return false
    end
    local model = e5.model
    if not sV(model:GetPivot().Position) then
        return false
    elseif not model.Parent then
        uv(model, 2)
        return false
    else
        yV = os.clock()
        uo("PackConveyerService", "RequestBuyPack", model)
        local function yW_1()
            return tp.at >= yV and tp.name == e5.name and tp.rarity == e5.rarity and not model.Parent
        end
        local yX = os.clock() + 0.6
        repeat
            task.wait()
            yY_1 = yW_1() or os.clock() >= yX
        until yY_1
        if not yW_1() then
            uv(model, 4)
            return false
        end
        return true
    end
end
sQ = function()
    local y2 = 0
    while y2 < 5 do
        local y3 = sK()
        local y4 = not y3 or not ud(y3)
        if y4 then
            break
        end
        y2 += 1
    end
    return y2 > 0
end
un = 6
us = 10
ue = function(fu)
    local Visual = fu:FindFirstChild("Visual")
    local y7 = Visual and Visual:IsA("BasePart")
    if y7 then
        return Visual.Position
    end
    return fu:GetPivot().Position
end
tP = function()
    local y9 = {}
    for i, v in ipairs(tK()) do
        table.insert(y9, ue(v))
    end
    return y9
end
tg = function(fE, fF)
    for i, v in ipairs(fF) do
        local zh = math.abs(fE.X - v.X) < us and math.abs(fE.Z - v.Z) < un
        if zh then
            return false
        end
    end
    return true
end
sI = function()
    local zp, zq, zs, zt, zu, zw, zz, zA, zB, zC, zE, zF, zG, zH
    local zy = 4
    while true do
        local zy_1 = 10123 - zy
        do
            if zy_1 < 10115 then
                if zy_1 < 10111 then
                    if zy_1 < 10109 then
                        if zy_1 < 10107 then
                            if zy_1 < 5683 then
                                break
                            elseif zy_1 < 9835 then
                                break
                            elseif zy_1 < 10106 then
                                break
                            elseif zy_1 == 10106 then
                                zy = if zF > 0 and zG <= zE or zF <= 0 and zG >= zE then 9 else 10
                            else
                                zy = 13037
                                continue
                            end
                        elseif zy_1 < 10108 then
                            if zy_1 == 10107 then
                                zq = zp:FindFirstChild("HatchZone")
                                zy = 7
                            else
                                zy = 10114
                                continue
                            end
                        else
                            zy = 5
                        end
                    elseif zy_1 < 10110 then
                        if zy_1 == 10109 then
                            zq = tP()
                            local zr_1 = zp.Size / 2
                            zs = 6
                            zt = zp.Position.Y + 4
                            zu = -zr_1.X + zs
                            local zv = -zr_1.Z + zs
                            zw = zr_1.X - zs
                            local zx = zr_1.Z - zs
                            zB = zv
                            zz = zx
                            zA = un
                            zy = 13
                        else
                            zy = 5441
                            continue
                        end
                    else
                        zy = if zA > 0 and zB <= zz or zA <= 0 and zB >= zz then 0 else 6
                    end
                elseif zy_1 < 10113 then
                    if zy_1 < 10112 then
                        zB += zA
                        zy = 13
                    elseif zy_1 == 10112 then
                        return CFrame.new(zs)
                    else
                        zy = 10120
                        continue
                    end
                elseif zy_1 < 10114 then
                    if zy_1 == 10113 then
                        zy = 12
                    else
                        zy = 8273
                        continue
                    end
                elseif zy_1 == 10114 then
                    zH = zG
                    zy = 2
                else
                    zy = 15991
                    continue
                end
            elseif zy_1 < 10122 then
                if zy_1 < 10119 then
                    if zy_1 < 10117 then
                        if zy_1 < 10116 then
                            break
                        end
                        zp = zq
                        zy = if not zp then 3 else 14
                    elseif zy_1 < 10118 then
                        if zy_1 == 10117 then
                            return false
                        end
                        zy = 15966
                        continue
                    elseif zy_1 == 10118 then
                        zG += zF
                        zy = 17
                    else
                        zy = 10297
                        continue
                    end
                elseif zy_1 < 10120 then
                    zp = s8()
                    zq = zp
                    zy = if zq then 16 else 7
                elseif zy_1 < 10121 then
                    return nil
                elseif zy_1 == 10121 then
                    local Position = (zp.CFrame * CFrame.new(zH, 0, zC)).Position
                    zs = Vector3.new(Position.X, zt, Position.Z)
                    zy = if tg(zs, zq) then 11 else 15
                else
                    zy = 10112
                    continue
                end
            elseif zy_1 < 10123 then
                if zy_1 == 10122 then
                    zG = zu
                    zE = zw
                    zF = us
                    zy = 17
                else
                    zy = 15991
                    continue
                end
            elseif zy_1 < 10297 then
                if zy_1 == 10123 then
                    zC = zB
                    zy = 1
                else
                    zy = 10112
                    continue
                end
            else
                break
            end
        end
    end
end
sZ = function()
    local zJ = s8()
    local zK = not zJ or not zJ:FindFirstChild("HatchZone")
    if zK then
        return false
    end
    local zJ_1 = sI()
    if zJ_1 == false then
        return false
    end
    if zJ_1 then
        t6(zJ_1, 1)
        task.wait(0.15)
    end
    return true
end
su = function()
    local zT = if sD() >= ua() then 1 else 0
    if zT == 1 then
        return
    end
    local zP = tV()
    if not zP then
        return
    end
    if not sZ() then
        return
    end
    pcall(sB, "QuickPackInventoryService", "PlayerEquipPack", zP.name, zP.rarity)
    pcall(sB, "QuickPackInventoryService", "PlayerSelectPack", zP.name, zP.rarity)
    pcall(sB, "PackHatchService", "HatchPackInHand")
end
tZ = function(gk)
    local Timer = gk:FindFirstChild("Timer", true)
    local zV = Timer ~= nil and Timer:IsA("TextLabel") and Timer.Text == "Ready!"
    return zV
end
Gk_9 = function()
    for i, v in ipairs(tK()) do
        if tZ(v) then
            local Visual = v:FindFirstChild("Visual")
            local zY = Visual and Visual:FindFirstChildWhichIsA("ProximityPrompt", true)
            if zY then
                sV(ue(v))
                t1(zY)
            end
        end
    end
end
sL = function(gz)
    if not gz then
        return
    end
    if getconnections then
        local z5 = getconnections(gz.Activated)
        if z5 and #z5 > 0 then
            for i, v in ipairs(z5) do
                local Ag = v
                pcall(function()
                    Ag:Fire()
                end)
            end
            return
        end
    end
    if firesignal then
        pcall(firesignal, gz.Activated)
    end
end
ui = setmetatable({}, { __mode = "k" })
Gk_3 = function()
    local PlayerGui = tD:FindFirstChildOfClass("PlayerGui")
    local Ai = PlayerGui and PlayerGui:FindFirstChild("ScreenGui")
    if not Ai then
        return
    end
    local Ai_1 = os.clock()
    for i, child in ipairs(Ai:GetChildren()) do
        local FrontCard = child:FindFirstChild("FrontCard")
        local Aj = FrontCard and FrontCard:FindFirstChild("CardIsNew")
        local Ah_3 = Aj
        if Aj then
            Aj = Ah_3:FindFirstChild("Buttons")
        end
        local Ah_4 = Aj
        if Ah_4 then
            local Yes = Ah_4:FindFirstChild("Yes")
            local Ak = Yes and Yes:FindFirstChild("Button")
            if Ah_4.Visible and Ak then
                sL(Ak)
                ui[child] = Ai_1
            else
                if ui[child] and Ai_1 - ui[child] > 2 then
                    child:Destroy()
                end
            end
        end
    end
end
sy = function()
    pcall(sB, "YenPerSecService", "PlayerCollectBankYens", false)
end
sr = function()
    local As = sS()
    local At = As and As.OnlineRewards
    local As_1 = At
    if At then
        At = As_1.Claimed
    end
    local Au = {}
    local Av = At
    local Az = if Av then 1 else 0
    local Ax = 732 * Az + 273 * (1 - Az)
    local Ay = 2466 * Az + 1129 * (1 - Az)
    if not ((Ax * 3754 + Ay * 2273 + Ax * Ay) % 16777213 == 10158258) then
        Av = Au
    end
    local At_1 = As_1
    local Au_1 = Av
    if At_1 then
        At_1 = tonumber(As_1.Playtime)
    end
    local As_2 = At_1 or 0
    for i, v in ipairs(OnlineRewardTable) do
        local As_3 = Au_1[i] ~= true
        if As_3 then
            As_3 = As_2 >= (v.Time or math.huge)
        end
        if As_3 then
            pcall(sB, "OnlineRewardService", "ClaimReward", i)
        end
    end
end
s7 = function()
    local AG = sS()
    local AH = AG and AG.DailyRewards
    local AG_1 = AH
    if AH then
        AH = AG_1.AllClaimed
    end
    if AH then
        return
    end
    pcall(sB, "DailyRewardService", "ClaimReward")
end
sz = function()
    local AM = sS()
    if AM and AM.ClaimedFreeGift then
        return
    end
    pcall(sB, "FreeGiftService", "ClaimReward")
end
um = function()
    for i in ipairs(RarityTable) do
        pcall(sB, "CardIndexService", "ClaimReward", i)
    end
end
tW = function()
    s7()
    sr()
    sz()
    um()
end
tq = function()
    local AU = tQ()
    local AV = AU and AU.Controllers and AU.Controllers.PotionPickupController
    local AU_1 = AV
    if AV then
        AV = AU_1.ActivePotions
    end
    local AU_2 = AV
    if type(AU_2) ~= "table" then
        return
    end
    for k, v in pairs(AU_2) do
        if v and not v.Taken and v.Visual and v.Visual.Parent then
            local Position = v.Visual:GetPivot().Position
            t6(CFrame.new(Position + Vector3.new(0, 3, 0)))
            task.wait(0.12)
            pcall(sB, "PotionPickupService", "PickupPotion", k)
        end
    end
end
st = function()
    local A2 = sw("UseItemChoice")
    if next(A2) == nil then
        for i, v in ipairs(sG) do
            A2[v] = true
        end
    end
    local A3 = sX()
    local A5 = A3 and A3.Items or {}
    for k in pairs(A2) do
        local A2_1 = ss[k]
        local A5_1 = A2_1 and A5[A2_1]
        local A4_2 = type(A5_1) == "number" and A5_1 > 0
        if A4_2 then
            pcall(sB, "InventoryService", "ConsumeItem", A2_1, A5_1)
        end
    end
end
s1 = function(h5)
    local Bh = type(h5) ~= "table" or h5.Completed
    if Bh then
        return false
    end
    local Bh_1 = QuestTable[h5.QuestName]
    if not Bh_1 then
        return false
    end
    local Bi = tonumber(h5.Progress) or 0
    return Bi >= (Bh_1.Requirement or 1)
end
sJ = function()
    local Bl = tonumber(sW("QuestRefreshMinutes", 10)) or 10
    local Bl_1 = tO() <= Bl * 60
    local Bm_1 = not tk("AutoClaimQuests")
    if Bm_1 then
        local Bn = tk("ClaimQuestsNearRefresh") and Bl_1
        Bm_1 = not Bn
    end
    if Bm_1 then
        return
    end
    local Bl_2 = sS()
    local Bm_2 = Bl_2 and Bl_2.Quests
    if type(Bm_2) ~= "table" then
        return
    end
    for k, v in pairs(Bm_2) do
        if s1(v) then
            local Bl_4 = tonumber(k) or k
            pcall(sB, "QuestService", "PlayerClaimQuest", Bl_4)
        end
    end
end
tr = nil
tl = function()
    local Bv = sS()
    local Bw = Bv and Bv.Quests
    if type(Bw) ~= "table" then
        return
    end
    for k, v in pairs(Bw) do
        local Bv_2 = type(v) == "table" and not v.Completed
        if Bv_2 then
            local QuestName = v.QuestName
            if QuestName == "Drink10Potions" then
                st()
            elseif QuestName == "Collect10Potions" then
                tq()
            elseif QuestName == "SendCardForGrading" then
                pcall(function()
                    tr()
                end)
            elseif QuestName == "UseTradingBooth" then
                local Bv_4 = sX()
                local Bw_1 = false
                if type(Bv_4.Packs) == "table" then
                    for k, v in pairs(Bv_4.Packs) do
                        local Bx_1 = type(v) == "number" and v > 0
                        if Bx_1 then
                            pcall(sB, "TradingBoothService", "PlayerAddCardToBooth", 1, { ItemType = "Packs", ItemName_Rarity = k, Price = 1 })
                            Bw_1 = true
                            break
                        end
                    end
                end
                local Bx_2 = not Bw_1
                if Bx_2 ~= false then
                    Bx_2 = type(Bv_4.Cards) == "table"
                end
                if Bx_2 then
                    for k, v in pairs(Bv_4.Cards) do
                        local Bv_5 = type(v) == "number" and v > 0
                        if Bv_5 then
                            pcall(sB, "TradingBoothService", "PlayerAddCardToBooth", 1, { ItemType = "Cards", ItemName_Rarity = k, Price = 1 })
                            break
                        end
                    end
                end
            end
        end
    end
end
tt = function()
    local BR = tQ()
    local BS = BR and BR.Controllers and BR.Controllers.BinderController
    local BR_1 = BS
    if BS then
        BS = BR_1.BinderData
    end
    if BS then
        BS = BR_1.BinderData[tD]
    end
    if BS then
        return BR_1.BinderData[tD]
    end
    local BR_2 = sS()
    return BR_2 and BR_2.Binder or {}
end
sM = function()
    local BY = tQ()
    local BZ = BY and BY.Controllers and BY.Controllers.CardGradingController
    local BY_1 = BZ
    if BZ then
        BZ = BY_1.GradingSlots
    end
    if BZ then
        return BY_1.GradingSlots
    end
    local BY_2 = sS()
    local BZ_1 = BY_2 and BY_2.GradingSlots
    local BY_3 = {}
    local B_ = BZ_1
    local Cc = if B_ then 1 else 0
    local Ca = 499 * Cc + 1619 * (1 - Cc)
    local Cb = 2747 * Cc + 1016 * (1 - Cc)
    if not ((Ca * 1736 + Cb * 2904 + Ca * Cb) % 16777213 == 10214305) then
        B_ = BY_3
    end
    return B_
end
t3 = function(i0)
    local Cd = type(i0) ~= "table"
    local Ch = if Cd then 1 else 0
    local Cf = 780 * Ch + 378 * (1 - Ch)
    local Cg = 71 * Ch + 33 * (1 - Ch)
    if not ((Cf * 1040 + Cg * 114 + Cf * Cg) % 16777213 == 874674) then
        Cd = not i0.StartTime
    end
    if not Cd then
        Cd = not i0.Duration
    end
    if Cd then
        return false
    end
    return Workspace:GetServerTimeNow() >= i0.StartTime + i0.Duration
end
tF = function(i4)
    local Ci = sM()
    for k, v in pairs(Ci) do
        if t3(v) then
            local Ci_1 = tonumber(v.Grade) or 0
            local Ci_2 = tonumber(k) or k
            if Ci_1 >= te then
                pcall(sB, "CardGradingService", "PlayerLockGrade", Ci_2)
            elseif i4 then
                pcall(sB, "CardGradingService", "PlayerSentBackForGrading", Ci_2)
            end
        end
    end
end
tr = function()
    local Cs = sM()
    local Ct = tt()
    local Cu = {}
    for k, v in pairs(Cs) do
        local Cs_1 = tonumber(k) or k
        Cu[Cs_1] = true
        if v and v.CardName then
            Cu[v.CardName] = true
        end
    end
    local Cs_3 = {}
    for k, v in pairs(Ct) do
        local Ct_1 = type(v) == "table" and v.InSlot
        if Ct_1 then
            Ct_1 = (v.Rarity or 0) >= 5
        end
        if Ct_1 then
            Ct_1 = (v.Grade or 0) <= 0
        end
        if Ct_1 then
            Ct_1 = not v.Grading
        end
        if Ct_1 then
            Ct_1 = not Cu[k]
        end
        if Ct_1 then
            table.insert(Cs_3, k)
        end
    end
    table.sort(Cs_3)
    local CL = 1
    while CL <= 3 do
        local CM = CL
        local Ct_2 = not Cu[CM]
        if Ct_2 ~= false then
            Ct_2 = #Cs_3 > 0
        end
        if Ct_2 then
            local Ct_3 = table.remove(Cs_3, 1)
            pcall(sB, "CardGradingService", "PlayerSendCardForGrading", Ct_3, CM)
        end
        CL += 1
    end
end
tw = function()
    tF(false)
end
tj = {}
tf = function()
    local CO = sS()
    local CP = CO and CO.RedemmedCodes
    local CP_2
    local CQ = CP or {}
    local CQ_1
    for i, v in ipairs(ul) do
        if not tj[v] and CQ[v] ~= true then
            CP_2, CQ_1 = pcall(sB, "RedeemCodeService", "RedeemCode", v)
            tj[v] = true
            if CP_2 and CQ_1 then
                CQ[v] = true
            end
            task.wait(0.2)
        end
    end
end
uq = function(jK)
    local C1 = sW("AuctionMinRarity", "Normal")
    local C2 = s6[C1] or 1
    local C2_1 = tonumber(jK.rarity) or 1
    return C2_1 >= C2
end
tM = function(jQ)
    local C4 = sw("AuctionPackChoice")
    if next(C4) == nil then
        return true
    end
    return C4[tS[jQ.item_name] and tS[jQ.item_name].DisplayName or jQ.item_name] == true
end
s9 = function()
    local C9_1
    local C8_1
    C8_1, C9_1 = pcall(sB, "AuctionHouseService", "PlayerBrowseAuction", { Sort = "newest", HideOwn = true, PackNames = nil, Rarity = nil, Search = nil })
    local Da = not C8_1 or type(C9_1) ~= "table" or not C9_1.ok
    if Da then
        return {}
    end
    return C9_1.listings or {}
end
sR = function(j1)
    if not j1 or not j1.id then
        return
    end
    if tonumber(j1.seller_id) == tD.UserId then
        return
    end
    local Dc_1 = tonumber(j1.price) or 0
    local Dc_2 = Dc_1 <= 0
    local Dh = if Dc_2 then 1 else 0
    local Df = 3874 * Dh + 3519 * (1 - Dh)
    local Dg = 2830 * Dh + 3663 * (1 - Dh)
    if not ((Df * 2097 + Dg * 3464 + Df * Dg) % 16777213 == 12113105) then
        Dc_2 = tE() < Dc_1
    end
    if Dc_2 then
        return
    end
    pcall(sB, "AuctionHouseService", "PlayerBuyAuctionItem", j1.id, j1.price, j1.seller_id)
end
uf = function()
    local Di = tonumber(sW("AuctionMaxPrice", 10000)) or 10000
    for i, v in ipairs(s9()) do
        local Di_1 = tonumber(v.price) or math.huge
        local Di_2 = Di_1 <= Di and uq(v) and tM(v)
        if Di_2 then
            sR(v)
            task.wait(0.25)
        end
    end
end
ta = function()
    local Ds = tonumber(sW("AuctionMaxPrice", 10000)) or 10000
    local Ds_1 = tonumber(sW("SnipeSeconds", 20)) or 20
    local Ds_2 = os.time()
    for i, v in ipairs(s9()) do
        local Dv = tonumber(v.price) or math.huge
        local Dv_1 = tonumber(v.expires_at) or 0
        if Dv <= Ds and Dv_1 > 0 and Dv_1 - Ds_2 <= Ds_1 and Dv_1 - Ds_2 >= 0 then
            local Dv_3 = uq(v) and tM(v)
            if Dv_3 then
                sR(v)
                task.wait(0.15)
            end
        end
    end
end
tY = function()
    local DG_1
    local DF_1
    DF_1, DG_1 = pcall(sB, "AuctionHouseService", "PlayerGetMyAuctionListings")
    local DH = not DF_1
    local DL = if DH then 1 else 0
    local DJ = 3600 * DL + 3996 * (1 - DL)
    local DK = 3724 * DL + 2305 * (1 - DL)
    if not ((DJ * 948 + DK * 3949 + DJ * DK) % 16777213 == 14748063) then
        DH = type(DG_1) ~= "table"
    end
    if DH then
        return 0
    end
    local DF_2 = DG_1.listings or DG_1
    if DG_1.ok == false then
        return 0
    end
    return #DF_2
end
tn = function()
    local DW, DX, DY
    local DZ = (tonumber(sW("AuctionSellPrice", 10)))
    local D5 = if DZ then 1 else 0
    local D3 = 2597 * D5 + 2916 * (1 - D5)
    local D4 = 457 * D5 + 2524 * (1 - D5)
    if not ((D3 * 2264 + D4 * 3232 + D3 * D4) % 16777213 == 8543461) then
        DZ = 10
    end
    DY = DZ
    if DY < 10 then
        DY = 10
    end
    DX = tY()
    if DX >= 10 then
        return
    end
    local DZ_1 = sX()
    local D_ = sW("AuctionMinRarity", "Normal")
    DW = s6[D_] or 1
    local D__1 = tk("AuctionSellPacks")
    local D0_1 = tk("AuctionSellCards")
    local function D1(kJ, kK, kL)
        local DN_2, DN_3
        if type(kJ) ~= "table" then
            return
        end
        for k, v in pairs(kJ) do
            if DX >= 10 then
                return
            end
            local DM = type(v) == "number" and v > 0
            local DM_1, DM_3
            if DM then
                DM = not kL or v > 1
            end
            if DM then
                DM_1, DN_2 = ut(k)
                if (DN_2 or 1) >= DW then
                    DM_3, DN_3 = pcall(sB, "AuctionHouseService", "PlayerAddItemToAuction", kK, k, DY, 12)
                    local DO = DM_3 and type(DN_3) == "table" and DN_3.ok
                    if DO then
                        DX += 1
                        task.wait(0.25)
                    end
                end
            end
        end
    end
    if D__1 then
        D1(DZ_1.Packs, "Packs", false)
    end
    if D0_1 then
        D1(DZ_1.Cards, "Cards", true)
    end
end
sO = function()
    local D7_1
    local D6_1, D6_2
    D6_1, D7_1 = pcall(sB, "AuctionHouseService", "PlayerGetAuctionClaims")
    local D8 = not D6_1 or type(D7_1) ~= "table"
    if D8 then
        return
    end
    if D7_1.ok == false then
        return
    end
    local D8_1 = D7_1.claims or D7_1.deliveries
    local Ee = if D8_1 then 1 else 0
    local Ec = 1715 * Ee + 1896 * (1 - Ee)
    local Ed = 3802 * Ee + 2198 * (1 - Ee)
    if not ((Ec * 2706 + Ed * 4048 + Ec * Ed) % 16777213 == 9774503) then
        D8_1 = D7_1.ok ~= nil
    end
    if D8_1 then
        D6_2 = D7_1.claims or D7_1.deliveries or {}
    else
        D6_2 = D7_1
    end
    for i, v in ipairs(D6_2) do
        local D6_3 = v
        if type(v) == "table" then
            D6_3 = v.id or v.claim_id or v.delivery_id
        end
        if D6_3 then
            pcall(sB, "AuctionHouseService", "PlayerClaimAuctionDeliveries", D6_3)
            task.wait(0.15)
        end
    end
end
Gk_45 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = to, Copyable = true }, "|", Gk_74, "|", Gk_13 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
Gk_33 = {
    Info = Gk_45:AddTab("Info", "info"),
    Main = Gk_45:AddTab("Main", "gamepad-2"),
    Player = Gk_45:AddTab("Player", "person-standing"),
    Settings = Gk_45:AddTab("Settings", "settings")
}
Gk_33.Packs = Gk_33.Main:AddSubTab("Packs", "package")
Gk_33.Auction = Gk_33.Main:AddSubTab("Auction", "gavel")
Gk_33.Rewards = Gk_33.Main:AddSubTab("Rewards", "gift")
Gk_45 = function(k9)
    local DiscordGroup = k9:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = ur })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = ur })
end
for k, v in Gk_33 do
    if v ~= Gk_33.Main then
        Gk_45(v)
    end
end
s5, Gk_13, GameInfoGroup, sx, sv = nil, nil, nil, nil, nil
if (GameInfoGroup and not Gk_13 or (not GameInfoGroup or false) or (not GameInfoGroup or not GameInfoGroup or not GameInfoGroup and 1)) and ((Gk_13 or GameInfoGroup) and (not GameInfoGroup and false) and ((GameInfoGroup or Gk_13) and (Gk_13 or not Gk_13))) and not ((GameInfoGroup and not Gk_13 or (not GameInfoGroup or false) or (not GameInfoGroup or not GameInfoGroup or not GameInfoGroup and 1)) and ((Gk_13 or GameInfoGroup) and (not GameInfoGroup and false) and ((GameInfoGroup or Gk_13) and (Gk_13 or not Gk_13)))) then
    tD = "Unknown"
    pcall(fn1223)
    Gk_33 = (nil):AddLeftGroupbox("Account", "circle-user")
    Gk_33:AddLabel(Gk_13("User", s5.Name, GameInfoGroup), true)
    Gk_33:AddLabel(Gk_13("Status", "Keyless", GameInfoGroup), true)
    Gk_33:AddLabel(Gk_13("Executor", tD, GameInfoGroup), true)
    sx = (nil):AddLeftGroupbox("Game Info", "gamepad-2")
    sx:AddLabel(Gk_74(Gk_7 .. " [" .. tostring(game.PlaceId) .. "]", tN), true)
    sx:AddLabel(Gk_13("Place ID", tostring(game.PlaceId), tN), true)
    Gk_70 = sx:AddLabel(Gk_13("Session time", "0s", t7), true)
else
    s5 = "Unknown"
    pcall(fn1223)
    Gk_13 = Gk_33.Info:AddLeftGroupbox("Account", "circle-user")
    Gk_13:AddLabel(tN("User", tD.Name, Gk_70), true)
    Gk_13:AddLabel(tN("Status", "Keyless", Gk_70), true)
    Gk_13:AddLabel(tN("Executor", s5, Gk_70), true)
    GameInfoGroup = Gk_33.Info:AddLeftGroupbox("Game Info", "gamepad-2")
    GameInfoGroup:AddLabel(t7(Gk_74 .. " [" .. tostring(game.PlaceId) .. "]", Gk_7), true)
    GameInfoGroup:AddLabel(tN("Place ID", tostring(game.PlaceId), Gk_7), true)
    sx = GameInfoGroup:AddLabel(tN("Session time", "0s", sP), true)
end
sv = tostring(game.JobId)
local Gk_55 = #sv > 18
if Gk_55 then
    Gk_45 = 2
    repeat
        Gk_13 = {
            "bjutjdjsueff",
            "atmf",
            "lbxfh",
            "yfu",
            "xldacjpy",
            "lhhsv",
            "qmfqeeemyth",
            "crmhj",
            "qheubhshex",
            "wttgbk",
            "pifgvpee",
            "rhkd",
            "vffftjhwq"
        }
        if Gk_13[(Gk_45 * 68 + 20) % 13 + 1] <= Gk_13[(Gk_45 * 68 + 20) % 13 + 1] then
            Gk_55 = string.sub(sv, 1, 18) .. "..."
        else
            sv = string.sub(Gk_55, 1, 18) .. "..."
        end
        Gk_45 = (Gk_45 + 1) % 8
    until (Gk_45 * 3 + 6) % 8 == 7
end
Gk_45 = Gk_55 or sv
t4, FeaturesGroup, FaqGroup, RewardsGroup, MiscGroup, Gk_55, tz, s2, s_, connection, connection2, Gk_61, uu, sC, tB, sY, sF, tv = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Gk_27 = Gk_45
GameInfoGroup:AddLabel(tN("Server", Gk_27, Gk_21), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
t4 = os.clock()
task.spawn(fns.worker)
local ScriptsGroup = Gk_33.Info:AddRightGroupbox("Scripts", "package")
if not RewardsGroup and Gk_61 or (RewardsGroup or not t4) or (RewardsGroup or Gk_61) and (MiscGroup and RewardsGroup) or ((not MiscGroup or RewardsGroup) and (MiscGroup and not Gk_55) or (MiscGroup and not Gk_55 or (not t4 or not FaqGroup))) or not (not RewardsGroup and Gk_61 or (RewardsGroup or not t4) or (RewardsGroup or Gk_61) and (MiscGroup and RewardsGroup) or ((not MiscGroup or RewardsGroup) and (MiscGroup and not Gk_55) or (MiscGroup and not Gk_55 or (not t4 or not FaqGroup)))) then
    ScriptsGroup:AddLabel(t7("Included in this hub", Gk_21), true)
    ScriptsGroup:AddLabel(t7(Gk_74, Gk_7), true)
    FeaturesGroup = Gk_33.Info:AddRightGroupbox("Features", "list")
else
    Gk_7:AddLabel(Gk_74("Included in this hub", FeaturesGroup), true)
    Gk_7:AddLabel(Gk_74(Gk_21, ScriptsGroup), true)
    Gk_33 = t7.Info:AddRightGroupbox("Features", "list")
end
FeaturesGroup:AddLabel(t7("Auto Pack", Gk_7), true)
FeaturesGroup:AddLabel(t7("Auto Auction", sP), true)
FeaturesGroup:AddLabel(t7("Auto Rewards", Gk_70), true)
FeaturesGroup:AddLabel(t7("Auto Quests", sP), true)
FeaturesGroup:AddLabel(t7("Misc Utilities", Gk_21), true)
local SocialsGroup = Gk_33.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = ur })
SocialsGroup:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
local OuroborosHubGroup = Gk_33.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = ur })
Gk_13 = Gk_33.Info:AddRightGroupbox("Donations", "heart")
Gk_13:AddLabel(t7("All donations are optional but appreciated.", sP), true)
Gk_13:AddLabel(t7("If you donate you get a special role, just PING after you donate.", Gk_70), true)
Gk_13:AddDivider()
Gk_13:AddLabel(t7("LTC / Litecoin", Gk_77), true)
Gk_13:AddButton({ Text = "Copy Litecoin Address", Func = fns.onCopyLitecoinAddress })
Gk_13:AddLabel(t7("BTC / Bitcoin", Gk_16), true)
Gk_13:AddButton({ Text = "Copy Bitcoin Address", Func = fns.onCopyBitcoinAddress })
Gk_13:AddLabel(t7("ETH / Ethereum", Gk_28), true)
Gk_13:AddButton({ Text = "Copy Ethereum Address", Func = fns.onCopyEthereumAddress })
Gk_13:AddLabel(t7("USDT", Gk_25), true)
Gk_13:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
Gk_13:AddLabel(t7("Solana", Gk_37), true)
Gk_13:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
Gk_13:AddLabel(t7("PayPal", Gk_49), true)
Gk_13:AddButton({ Text = "Copy PayPal Link", Func = fns.onCopyPayPalLink })
Gk_13:AddLabel(t7("Venmo", Gk_60), true)
Gk_13:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
Gk_13:AddDivider()
Gk_13:AddLabel(t7("Don't have any of the listed currencies but still wanna donate?", Gk_21), true)
Gk_13:AddLabel(t7("DM me and we'll work something out.", Gk_7), true)
FaqGroup = Gk_33.Info:AddRightGroupbox("FAQ", "circle-help")
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
local PacksGroup = Gk_33.Packs:AddLeftGroupbox("Packs", "package")
PacksGroup:AddToggle("AutoTakePack", { Text = "Auto Buy Packs", Default = false })
PacksGroup:AddDropdown("TakePackMode", {
    Text = "Take Mode",
    Values = { "Best Affordable", "Selected", "Mutations" },
    Default = "Best Affordable"
})
PacksGroup:AddDropdown("TakePackChoice", { Text = "Packs", Values = Gk_62, Multi = true, AllowNull = true, Expandable = true })
PacksGroup:AddDropdown("TakeMutationChoice", { Text = "Mutations", Values = tc, Multi = true, AllowNull = true, Expandable = true })
PacksGroup:AddToggle("AutoPlacePack", { Text = "Auto Place", Default = false })
PacksGroup:AddToggle("AutoOpenPack", { Text = "Auto Open Pack", Default = false })
PacksGroup:AddToggle("AutoMoveToBinder", { Text = "Auto Move to Binder", Default = false })
PacksGroup:AddToggle("AutoClaimEarnings", { Text = "Auto Claim Earnings", Default = false })
local BuyGroup = Gk_33.Auction:AddLeftGroupbox("Buy", "shopping-cart")
BuyGroup:AddToggle("AutoAuctionBuy", { Text = "Auto Auction Buy", Default = false })
BuyGroup:AddToggle("AutoAuctionSnipe", { Text = "Auto Auction Snipe", Default = false })
BuyGroup:AddInput("AuctionMaxPrice", { Text = "Max Gem Price", Default = "10000", Numeric = true, Finished = true })
BuyGroup:AddSlider("SnipeSeconds", { Text = "Snipe Window", Default = 20, Min = 3, Max = 120, Rounding = 0 })
BuyGroup:AddDropdown("AuctionMinRarity", { Text = "Min Rarity", Values = tc, Default = "Normal" })
BuyGroup:AddDropdown("AuctionPackChoice", { Text = "Pack Filter", Values = Gk_62, Multi = true, AllowNull = true, Expandable = true })
local SellGroup = Gk_33.Auction:AddRightGroupbox("Sell", "banknote")
SellGroup:AddToggle("AutoAuctionSell", { Text = "Auto Auction Sell", Default = false })
SellGroup:AddToggle("AuctionSellPacks", { Text = "Sell Packs", Default = true })
SellGroup:AddToggle("AuctionSellCards", { Text = "Sell Duplicate Cards", Default = false })
SellGroup:AddInput("AuctionSellPrice", { Text = "Sell Price", Default = "10", Numeric = true, Finished = true })
SellGroup:AddToggle("AutoAuctionClaim", { Text = "Auto Auction Claim", Default = false })
RewardsGroup = Gk_33.Rewards:AddLeftGroupbox("Rewards", "gift")
RewardsGroup:AddToggle("AutoClaimRewards", { Text = "Auto Claim Rewards", Default = false })
RewardsGroup:AddToggle("AutoCompleteQuests", { Text = "Auto Complete Daily Quests", Default = false })
RewardsGroup:AddToggle("AutoClaimQuests", { Text = "Auto Claim Daily Quests", Default = false })
RewardsGroup:AddToggle("ClaimQuestsNearRefresh", { Text = "Claim Near Refresh", Default = false })
RewardsGroup:AddSlider("QuestRefreshMinutes", { Text = "Refresh Window", Default = 10, Min = 1, Max = 30, Rounding = 0 })
MiscGroup = Gk_33.Rewards:AddRightGroupbox("Misc", "sparkles")
MiscGroup:AddToggle("AutoCollectPotions", { Text = "Auto Collect Potions", Default = false })
MiscGroup:AddToggle("AutoUseItems", { Text = "Auto Use Items", Default = false })
MiscGroup:AddDropdown("UseItemChoice", { Text = "Items", Values = Gk_57, Multi = true, AllowNull = true, Default = sG })
MiscGroup:AddToggle("AutoGrade", { Text = "Auto Grade", Default = false })
MiscGroup:AddToggle("AutoClaimGraded", { Text = "Auto Claim Graded Cards", Default = false })
MiscGroup:AddToggle("AutoRedeemCodes", { Text = "Auto Redeem Codes", Default = false })
local MovementGroup = Gk_33.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
Gk_55 = Gk_33.Player:AddRightGroupbox("Fly", "feather")
Gk_55:AddToggle("Fly", { Text = "Fly", Default = false })
Gk_55:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
Toggles.Fly:OnChanged(fns.fn547)
Toggles.WalkSpeedEnabled:OnChanged(fns.fn784)
RunService.Stepped:Connect(fns.onStepped)
UserInputService.JumpRequest:Connect(fns.onJumpRequest)
tz = Workspace.CurrentCamera
RunService.RenderStepped:Connect(fns.onRenderStepped)
uu = function(mC)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not mC)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not mC
        end
    end)
    if not mC then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(tD, "GameplayPaused", false)
        else
            tD.GameplayPaused = false
        end
    end)
end
Toggles.AntiGameplayPause:OnChanged(fns.fn947)
local MenuGroup = Gk_33.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", fns.onUnload)
s2 = tick()
s_ = tick()
pcall(function()
    for i, v in ipairs(getconnections(tD.Idled)) do
        local E7 = v
        pcall(function()
            E7:Disable()
        end)
    end
end)
sC = fns.fn1109
connection = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection2 = UserInputService.InputChanged:Connect(fns.onInputChanged)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/SlimeCardCollection")
Gk_61 = SaveManager:BuildConfigSection(Gk_33.Settings)
tB = fns.fn961
sY = fns.fn774
sF = fns.fn480
tv = function(ny)
    local FF
    FF = nil
    local FG = type(ny) ~= "table" or type(ny.idx) ~= "string" or type(ny.type) ~= "string" or SaveManager.Ignore[ny.idx]
    if FG then
        return false
    end
    FF = tB(ny.type, ny.idx)
    if not FF then
        return false
    end
    local FG_1 = pcall(function()
        if ny.type == "Input" then
            if type(ny.text) ~= "string" then
                return
            end
            FF:SetValue(ny.text)
        elseif ny.type == "ColorPicker" then
            FF:SetValueRGB(Color3.fromHex(ny.value), ny.transparency)
        elseif ny.type == "KeyPicker" then
            FF:SetValue({ ny.key, ny.mode, ny.modifiers })
            if ny.mode == "Toggle" and ny.toggled ~= nil then
                FF.Toggled = ny.toggled
                FF:Update()
            end
        else
            FF:SetValue(ny.value)
        end
    end)
    return FG_1
end
Gk_61:AddDivider()
Gk_61:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
Gk_61:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
Gk_61:AddButton("Import Config from Clipboard Text", fns.onImportConfigFromClipboardTex)
ThemeManager:ApplyToTab(Gk_33.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
task.spawn(fns.worker2)
task.spawn(fns.worker3)
task.spawn(fns.worker4)
task.spawn(fns.worker5)
task.spawn(fns.antiGameplayPauseLoop)
task.spawn(fns.worker6)
Library:OnUnload(fns.fn56)
Library:Notify("Slime Card Collection loaded")
