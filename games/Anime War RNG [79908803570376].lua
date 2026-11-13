local fns = {}
local qs_2, qs_4, qs_5, qs_6, qs_7, qs_8, qs_10, qs_11, ItemsSync, qs_13, qs_15, qs_16, qs_19, qs_20, qs_22, qs_23
local ko
local k6
local Options
local kO
local kv
local VirtualUser
local kb
local kU
local kB
local li
local kh
local kH
local lo
local kn
local k5
local RequestRewards
local kN
local kt
local lb
local ka
local kT
local kA
local lh
local kg
local kZ
local kG
local ln
local km
local k4
local j3
local kM
local ks
local la
local j9
local LocalPlayer
local kz
local UserInputService
local kf
local RequestTreeUpgrades
local kF
local lm
local connection2
local j2
local kL
local kr
local k9
local Toggles
local kR
local ky
local Label
local ke
local kX
local kE
local RequestUseItem
local kk
local k2
local kK
local kq
local k8
local j7
local kQ
local kx
local le
local SaveManager
local Workspace
local connection
local lk
local kj
local k1
local RewardDefs
local lq
local Library
local HttpService
local j6
local kP
local kw
local ld
local RequestClaimPlaytime
local kV
local RebirthConfig
local lj
local ki
local RequestBuyTreeNode
local kI
local lp
function fns.onRscripts()
    j3(kB, "Copied Rscripts profile to clipboard")
end
function fns.fn28()
    kf:FireServer()
end
function fns.worker()
    local ob_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local oa = math.floor(os.clock() - kP)
        if oa < 60 then
            ob_1 = oa .. "s"
        elseif oa < 3600 then
            ob_1 = string.format("%dm %ds", oa // 60, oa % 60)
        else
            ob_1 = string.format("%dh %dm", oa // 3600, oa % 3600 // 60)
        end
        Label:SetText(kV("Session time", ob_1, k8))
    end
end
function fns.fn98()
    for k in li do
        local nf = tonumber(kZ[k]) or 0
        if nf > 0 then
            RequestUseItem:FireServer(k, nf)
        end
    end
end
function fns.onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local ov_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if ov_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.onInputChanged(fd)
    local UserInputType = fd.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        lq = tick()
    end
end
function fns.onCopyVenmoLink()
    j3(ke, "Copied Venmo link")
end
function fns.onRenderStepped(ey)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local oL_1 = km()
        if oL_1 then
            oL_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local oL_3 = kA()
        local oM = km()
        kb = Workspace.CurrentCamera or kb
        if oL_3 and oM and kb then
            oM.PlatformStand = true
            local oM_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                oM_1 = oM_1 + kb.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                oM_1 = oM_1 - kb.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                oM_1 = oM_1 - kb.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                oM_1 = oM_1 + kb.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                oM_1 = oM_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                oM_1 = oM_1 - Vector3.new(0, 1, 0)
            end
            oL_3.Velocity = Vector3.zero
            if oM_1.Magnitude > 0 then
                oL_3.CFrame = oL_3.CFrame + oM_1.Unit * Options.FlySpeed.Value * ey
            end
        end
    end
end
function fns.onCopyBitcoinAddress()
    j3(ks, "Copied Bitcoin address")
end
function fns.onCopyEthereumAddress()
    j3(kq, "Copied Ethereum address")
end
function fns.onCopyUSDTAddress()
    j3(kn, "Copied USDT address")
end
function fns.autoClaimPlaytimeLoop()
    while not Library.Unloaded do
        if Toggles.AutoClaimPlaytime.Value then
            pcall(kw)
        end
        if Toggles.AutoClaimRewards.Value then
            pcall(lk)
        end
        if Toggles.AutoClaimQuests.Value then
            pcall(kX)
        end
        if Toggles.AutoClaimBattlepass.Value then
            pcall(kQ)
        end
        task.wait(2)
    end
end
function fns.onOnClientEvent7(c6)
    if type(c6) ~= "table" then
        return
    end
    local reqId = c6.reqId
    if reqId and kt[reqId] then
        kt[reqId] = nil
        if not c6.error then
            kr:FireServer({ reqId = reqId })
        end
    end
end
function fns.antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            kL(true)
        end
    end
end
function fns.onInputBegan()
    lq = tick()
end
function fns.onCopyLitecoinAddress()
    j3(kv, "Copied Litecoin address")
end
function fns.onImportConfigFromClipboardTex()
    local p2_1
    local p0 = Options.SaveManager_ImportSource.Value or ""
    local p0_1
    local p1 = tostring(p0):match("^%s*(.-)%s*$")
    if p1 == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    p0_1, p2_1 = pcall(HttpService.JSONDecode, HttpService, p1)
    local p1_1 = not p0_1 or type(p2_1) ~= "table" or type(p2_1.objects) ~= "table"
    if p1_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local p0_2 = 0
    for i, v in ipairs(p2_1.objects) do
        if ln(v) then
            p0_2 += 1
        end
    end
    if p0_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local p2_2 = p0_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(p0_2, p2_2), 6)
end
local function fn322()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    lm = tick()
end
local function onExportConfigToClipboard()
    local pV_1
    local pU_1
    pU_1, pV_1 = pcall(HttpService.JSONEncode, HttpService, kF())
    if not pU_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local pU_2 = setclipboard or toclipboard
    local pU_3 = type(pU_2) ~= "function" or not pcall(pU_2, pV_1)
    if pU_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function onOnClientEvent5(c_)
    if type(c_) ~= "table" then
        return
    end
    kO = c_
    if type(c_.Gold) == "number" then
        la = c_.Gold
    end
    if type(c_.Gems) == "number" then
        k5 = c_.Gems
    end
end
local function fn375(fq, fr)
    local ph = fq == "Toggle" and Toggles
    local pm = if ph then 1 else 0
    local pk = 981 * pm + 2035 * (1 - pm)
    local pl = 3837 * pm + 1850 * (1 - pm)
    if not ((pk * 1348 + pl * 2812 + pk * pl) % 16777213 == 15876129) then
        ph = Options
    end
    local ph_1 = ph[fr]
    local pg_2 = type(ph_1) == "table" and ph_1.Type == fq
    return pg_2 and ph_1 or nil
end
local function autoClaimPlaytimeLoop2()
    while not Library.Unloaded do
        task.wait(8)
        if Library.Unloaded then
            break
        end
        if Toggles.AutoClaimPlaytime.Value or Toggles.AutoClaimRewards.Value then
            pcall(function()
                RequestRewards:FireServer()
            end)
        end
        if Toggles.AutoClaimQuests.Value then
            pcall(function()
                lp:FireServer()
            end)
        end
        if Toggles.AutoClaimBattlepass.Value then
            pcall(function()
                k4:FireServer()
            end)
        end
        if Toggles.AutoBuyNodes.Value then
            pcall(function()
                RequestTreeUpgrades:FireServer()
            end)
        end
        if Toggles.AutoUsePackages.Value then
            pcall(function()
                lh:FireServer()
            end)
        end
        if Toggles.AutoRebirth.Value then
            pcall(function()
                kj:FireServer()
            end)
        end
    end
end
local function fn403(a7, a8, a9)
    return string.format("<b>%s</b> %s %s", a7, k6("-", "#5a6070"), k6(a8, a9))
end
local function autoEquipBestLoop()
    while not Library.Unloaded do
        if Toggles.AutoEquipBest.Value then
            pcall(kI)
        end
        task.wait(3)
    end
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local oG_1 = km()
        if oG_1 then
            oG_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function onOnClientEvent4(cX)
    if type(cX) ~= "table" then
        return
    end
    kT = cX
    kR = os.clock()
end
local function fn474(a4, a5)
    return string.format('<font color="%s">%s</font>', a5, a4)
end
local function fn496()
    connection:Disconnect()
    connection2:Disconnect()
    kL(false)
    local pe = km()
    if pe then
        pe.PlatformStand = false
        pe.WalkSpeed = 16
    end
end
local function fn508()
    j3(kH, "Copied Discord invite to clipboard")
end
local function fn511()
    if not kT then
        RequestRewards:FireServer()
        return
    end
    local Playtime = kT.Playtime
    if type(Playtime) ~= "table" then
        return
    end
    local Claimed = Playtime.Claimed
    local m0 = Playtime.Seconds
    local m5 = if m0 then 1 else 0
    local m3 = 3810 * m5 + 3110 * (1 - m5)
    local m4 = 3677 * m5 + 1675 * (1 - m5)
    if not ((m3 * 1294 + m4 * 3574 + m3 * m4) % 16777213 == 15303895) then
        m0 = 0
    end
    local mZ_1 = m0 + (os.clock() - kR)
    for i, v in ipairs(RewardDefs.Playtime) do
        if not kh(Claimed, i) then
            if (v.Minutes or 0) * 60 <= mZ_1 then
                RequestClaimPlaytime:FireServer(i)
            end
        end
    end
end
local function onCopyPayPalLink()
    j3(kg, "Copied PayPal link")
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local qm = tick() - lq
            local qn = tick() - lm
            if qm >= 300 and qn >= 60 then
                pcall(k1)
            else
                if qm < 300 and qn >= 300 then
                    pcall(k1)
                end
            end
        end
    end
end
local function fn522()
    j2:FireServer()
end
local function fn527()
    k9:FireServer()
end
local function onUnload()
    Library:Unload()
end
local function fn542(bp)
    if not bp or bp.Hidden or bp.Id == nil then
        return false
    elseif ka(bp.Id) then
        return false
    elseif not kN.IsReachable(bp) then
        return false
    else
        local mw_1 = bp.Parent and not ka(bp.Parent)
        if mw_1 then
            return false
        end
        local mw_2 = kN.Shortfalls(bp, { Gold = la, Gems = k5, TotalRolls = k2 })
        local mx = type(mw_2) ~= "table"
        local mE = if mx then 1 else 0
        local mC = 704 * mE + 1625 * (1 - mE)
        local mD = 4046 * mE + 367 * (1 - mE)
        if not ((mC * 2083 + mD * 2651 + mC * mD) % 16777213 == 15040762) then
            mx = #mw_2 == 0
        end
        return mx
    end
end
local function fn547()
    local Character = LocalPlayer.Character
    local mp = Character and Character:FindFirstChild("HumanoidRootPart")
    return mp
end
local function onPackageTypes(d5)
    local od = {}
    for k, v in d5 do
        if v then
            local oe = ky[k]
            if oe then
                od[oe] = true
            end
        end
    end
    li = od
end
local function onOnClientEvent(cI)
    if type(cI) ~= "table" then
        return
    end
    if type(cI.Owned) == "table" then
        le = cI.Owned
    end
    if type(cI.Gold) == "number" then
        la = cI.Gold
    end
    if type(cI.Gems) == "number" then
        k5 = cI.Gems
    end
    if type(cI.TotalRolls) == "number" then
        k2 = cI.TotalRolls
    end
end
local function onCopyJoinScript_JobID()
    local dx = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, lb)
    j3(dx, "Copied join script to clipboard")
end
local function fn590()
    local Character = LocalPlayer.Character
    local ms = Character and Character:FindFirstChildOfClass("Humanoid")
    return ms
end
local function onOnClientEvent3(cR)
    local nJ = type(cR) ~= "table" or type(cR.Items) ~= "table"
    if nJ then
        return
    end
    table.clear(kZ)
    for k, v in cR.Items do
        local nJ_1 = type(k) == "string" and type(v) == "number" and v > 0
        if nJ_1 then
            kZ[k] = v
        end
    end
end
local function fn635()
    local n6_1
    local n5_1
    if identifyexecutor then
        n6_1, n5_1 = identifyexecutor()
        local n7 = n6_1 ~= ""
        local n8 = type(n6_1) == "string" and n7
        if n8 then
            local n7_1 = type(n5_1) == "string" and n5_1 ~= "" and n6_1 .. " " .. n5_1
            j9 = n7_1 or n6_1
        end
    end
end
local function fn637()
    kL(Toggles.AntiGameplayPause.Value)
end
local function fn669()
    Library.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
local function fn692()
    if not Toggles.WalkSpeedEnabled.Value then
        local ot = km()
        if ot then
            ot.WalkSpeed = 16
        end
    end
end
local function autoRollLoop()
    while not Library.Unloaded do
        if Toggles.AutoRoll.Value then
            pcall(j6)
        end
        task.wait(0.5)
    end
end
local function fn706()
    if kM >= kE then
        return
    end
    kz += 1
    local mQ = kz
    kt[mQ] = true
    kx:FireServer({ auto = true, reqId = mQ })
end
local function fn722()
    local np = {}
    for i, v in ipairs(kN.Nodes) do
        if lo(v) then
            np[#np + 1] = v
        end
    end
    table.sort(np, function(cy, cz)
        local nm = kG(cy)
        local nn = kG(cz)
        if nm ~= nn then
            return nm < nn
        end
        return tostring(cy.Id) < tostring(cz.Id)
    end)
    local nq = 0
    for i, v in ipairs(np) do
        if nq >= 3 then
            break
        end
        RequestBuyTreeNode:FireServer(v.Id)
        nq += 1
    end
end
local function onOnClientEvent2(cN)
    if type(cN) ~= "table" then
        return
    end
    if type(cN.Gold) == "number" then
        la = cN.Gold
    end
    if type(cN.Gems) == "number" then
        k5 = cN.Gems
    end
    if kO then
        if type(cN.Gold) == "number" then
            kO.Gold = cN.Gold
        end
        if type(cN.Gems) == "number" then
            kO.Gems = cN.Gems
        end
    end
end
local function fn742()
    if not kT then
        RequestRewards:FireServer()
        return
    end
    local Daily = kT.Daily
    local nd = type(Daily) == "table" and Daily.CanClaim
    if nd then
        j7:FireServer()
    end
end
local function autoRebirthLoop()
    while not Library.Unloaded do
        if Toggles.AutoRebirth.Value then
            pcall(ld)
        end
        task.wait(2)
    end
end
local function fn788(bA)
    local mF = 0
    for i, v in ipairs(kN.SpendCosts(bA)) do
        if v.Currency == "Gold" then
            local mG_1 = v.Amount or 0
            mF += mG_1
        elseif v.Currency == "Gems" then
            local mG_2 = v.Amount or 0
            mF += mG_2 * 1000000
        end
    end
    return mF
end
local function fn807()
    local pu = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local pv = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if pv then
                local pv_1 = kU(k, v)
                if pv_1 then
                    pu[#pu + 1] = pv_1
                end
            end
        end
    end
    table.sort(pu, function(fN, fO)
        if fN.type ~= fO.type then
            return fN.type < fO.type
        end
        return fN.idx < fO.idx
    end)
    return { objects = pu }
end
local function onCopySolanaAddress()
    j3(ki, "Copied Solana address")
end
local function fn827(de)
    local DiscordGroup = de:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = lj })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = lj })
end
local function autoUsePackagesLoop()
    while not Library.Unloaded do
        if Toggles.AutoUsePackages.Value then
            pcall(kK)
        end
        task.wait(1)
    end
end
local function fn842(fy, fz)
    local Type = fz.Type
    if Type == "Toggle" then
        return { idx = fy, type = "Toggle", value = fz.Value == true }
    elseif Type == "Slider" then
        return { idx = fy, type = "Slider", value = tostring(fz.Value) }
    elseif Type == "Dropdown" then
        return { idx = fy, type = "Dropdown", multi = fz.Multi == true, value = fz.Value }
    elseif Type == "Input" then
        local po = fz.Value or ""
        return { idx = fy, type = "Input", text = tostring(po) }
    elseif Type == "ColorPicker" then
        return { idx = fy, type = "ColorPicker", value = fz.Value:ToHex(), transparency = fz.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = fy,
            type = "KeyPicker",
            mode = fz.Mode,
            key = fz.Value,
            modifiers = fz.Modifiers,
            toggled = fz.Toggled
        }
    else
        return nil
    end
end
local function fn870(bk)
    local mu = le[bk] == true or kN.IsTabRoot(bk)
    return mu
end
local function fn872(bG, bH)
    if type(bG) ~= "table" then
        return false
    end
    local mO = bG[bH] == true or bG[tostring(bH)] == true
    return mO
end
local function autoBuyNodesLoop()
    while not Library.Unloaded do
        if Toggles.AutoBuyNodes.Value then
            pcall(kk)
        end
        task.wait(0.4)
    end
end
local function fn908(aY, aZ)
    if setclipboard then
        setclipboard(aY)
    elseif toclipboard then
        toclipboard(aY)
    end
    Library:Notify(aZ)
end
local function onOnClientEvent6(c3)
    if type(c3) ~= "table" then
        return
    end
    if type(c3.Entries) == "table" then
        kM = #c3.Entries
    end
    if type(c3.Cap) == "number" then
        kE = c3.Cap
    end
end
local function fn968()
    if not Toggles.Fly.Value then
        local om = km()
        if om then
            om.PlatformStand = false
        end
    end
end
local function fn975()
    if not kO then
        kj:FireServer()
        return
    end
    local mS = tonumber(kO.Rebirths) or 0
    local mS_1 = RebirthConfig.GetRequirement(mS)
    if not mS_1 then
        return
    end
    if kO.MapEligible ~= true then
        return
    end
    local mT_1 = tonumber(kO.Gems) or k5
    local mU = mT_1
    local mY = if mU then 1 else 0
    local mW = 343 * mY + 2736 * (1 - mY)
    local mX = 253 * mY + 522 * (1 - mY)
    if not ((mW * 523 + mX * 275 + mW * mX) % 16777213 == 335743) then
        mU = 0
    end
    if mU < (mS_1.GemCost or 0) then
        return
    end
    ko:FireServer()
end
j2 = nil
j3 = nil
RequestRewards = nil
Options = nil
j6 = nil
j7 = nil
Toggles = nil
j9 = nil
ka = nil
kb = nil
RequestClaimPlaytime = nil
SaveManager = nil
ke = nil
kf = nil
kg = nil
kh = nil
ki = nil
kj = nil
kk = nil
connection2 = nil
km = nil
kn = nil
ko = nil
Library = nil
kq = nil
kr = nil
ks = nil
kt = nil
kv = nil
kw = nil
kx = nil
ky = nil
kz = nil
kA = nil
kB = nil
RebirthConfig = nil
connection = nil
kE = nil
kF = nil
kG = nil
kH = nil
kI = nil
RewardDefs = nil
kK = nil
kL = nil
kM = nil
kN = nil
kO = nil
kP = nil
kQ = nil
kR = nil
LocalPlayer = nil
kT = nil
kU = nil
kV = nil
Workspace = nil
kX = nil
RequestTreeUpgrades = nil
kZ = nil
RequestBuyTreeNode = nil
k1 = nil
k2 = nil
k4 = nil
k5 = nil
k6 = nil
HttpService = nil
k8 = nil
k9 = nil
la = nil
lb = nil
VirtualUser = nil
ld = nil
le = nil
Label = nil
UserInputService = nil
lh = nil
li = nil
lj = nil
lk = nil
RequestUseItem = nil
lm = nil
ln = nil
lo = nil
lp = nil
lq = nil
local CoreGui, GuiService, lr
CoreGui = nil
GuiService = nil
lr = nil
local lL, lM, lN, lO, lP, lQ, lR, lS, lT, lU, lV, lW, lX, lY
UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, LocalPlayer = nil, nil, nil, nil, nil, nil, nil
local qs_1 = game:GetService("Players")
local qs_18 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
LocalPlayer = qs_1.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
lO, kH, kB, kv, ks, kq, kn, ki, kg, ke, lM, lL, qs_15, qs_6, qs_22, lT, lS, lR, lQ, k8, lP, qs_20, qs_11, qs_8, qs_5, kN, RewardDefs, RebirthConfig, kx, qs_16, kr, ko, kj, qs_7, kf, RequestClaimPlaytime, j7, RequestRewards, qs_23, j2, lp, RequestUseItem, lh, ItemsSync, k9, k4, RequestBuyTreeNode, RequestTreeUpgrades, qs_4, qs_19, qs_10, qs_2, lN, ky, qs_13 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
qs_1 = 79
repeat
    lU = (qs_1 * 13 + 19) % 24 + 1
    if lU <= 12 then
        if lU <= 6 then
            if lU <= 3 then
                if lU <= 2 then
                    if lU <= 1 then
                        lV = { "cstj", "iuktcvqqo", "yixtwpvq", "nfhbwcgnzxg", "uezcnxyiyh", "jlzcrsde", "qdc", "uwivlogxito" }
                        if lV[(qs_1 * 19 + 101) % 8 + 1] <= lV[(qs_1 * 19 + 101) % 8 + 1] then
                            qs_5 = require(qs_11:WaitForChild("ItemDefs"))
                        else
                            qs_11 = require(qs_5:WaitForChild("ItemDefs"))
                        end
                        qs_1 = (qs_1 + 85) % 192
                    else
                        if (not kx or kB) and (kr or RewardDefs) or (not kB or kv) and (kr and not RebirthConfig) or not ((not kx or kB) and (kr or RewardDefs) or (not kB or kv) and (kr and not RebirthConfig)) then
                            kN = require(qs_11:WaitForChild("UpgradeTreeDefs"))
                            RewardDefs = require(qs_11:WaitForChild("RewardDefs"))
                            RebirthConfig = require(qs_11:WaitForChild("RebirthConfig"))
                            kx = qs_8:WaitForChild("RequestRoll")
                        else
                            kx = require(RewardDefs:WaitForChild("UpgradeTreeDefs"))
                            qs_8 = require(RewardDefs:WaitForChild("RewardDefs"))
                            qs_11 = require(RewardDefs:WaitForChild("RebirthConfig"))
                            kN = RebirthConfig:WaitForChild("RequestRoll")
                        end
                        qs_1 = (qs_1 + 85) % 192
                    end
                else
                    if (qs_1 * 2 + 8) * 16 % 3 == ((qs_1 * 2 + 8) * 16 + 8) % 3 then
                        kr = qs_16:WaitForChild("RollResult")
                        kj = qs_16:WaitForChild("RollRevealed")
                        qs_7 = qs_16:WaitForChild("RequestRebirth")
                        qs_8 = qs_16:WaitForChild("RequestRebirthSync")
                        ko = qs_16:WaitForChild("RebirthSync")
                    else
                        qs_16 = qs_8:WaitForChild("RollResult")
                        kr = qs_8:WaitForChild("RollRevealed")
                        ko = qs_8:WaitForChild("RequestRebirth")
                        kj = qs_8:WaitForChild("RequestRebirthSync")
                        qs_7 = qs_8:WaitForChild("RebirthSync")
                    end
                    qs_1 = (qs_1 + 13) % 192
                end
            elseif lU <= 5 then
                if lU <= 4 then
                    lV = { "rwohs", "dvtpm", "ynovywu", "evcxmtvg", "bwkpxzp", "gtahn", "guwfnm" }
                    local qS = qs_1
                    lW = lV[qS % 7 + 1]
                    if lW:len() <= lW:gsub("(.)", "%1%1", qS % 3 % 2 + 1):len() then
                        kf = qs_8:WaitForChild("RequestEquipBest")
                        RequestClaimPlaytime = qs_8:WaitForChild("RequestClaimPlaytime")
                        j7 = qs_8:WaitForChild("RequestClaimDaily")
                    else
                        j7 = RequestClaimPlaytime:WaitForChild("RequestEquipBest")
                        kf = RequestClaimPlaytime:WaitForChild("RequestClaimPlaytime")
                        qs_8 = RequestClaimPlaytime:WaitForChild("RequestClaimDaily")
                    end
                    qs_1 = (qs_1 + 109) % 192
                else
                    if (not ky or not ky or (not lP or not qs_11) or (lO or not qs_7) and (lO and ky)) and (lP and lT or not lT and not lP or (lT or not qs_11 or lO and qs_11)) and ((not qs_7 or not ky) and (qs_11 and not lO) and (not lO or lO or (not ky or qs_11)) and ((qs_7 or not ky or (qs_11 or lT)) and (not lP and lP or (not lP or qs_7)))) or not ((not ky or not ky or (not lP or not qs_11) or (lO or not qs_7) and (lO and ky)) and (lP and lT or not lT and not lP or (lT or not qs_11 or lO and qs_11)) and ((not qs_7 or not ky) and (qs_11 and not lO) and (not lO or lO or (not ky or qs_11)) and ((qs_7 or not ky or (qs_11 or lT)) and (not lP and lP or (not lP or qs_7))))) then
                        RequestRewards = qs_8:WaitForChild("RequestRewards")
                    else
                        qs_8 = RequestRewards:WaitForChild("RequestRewards")
                    end
                    qs_1 = (qs_1 + 157) % 192
                end
            else
                if kH and kx and (not ki and not lR) and (not kx and not kH or (not kH or kx)) or (kH or lR) and (not kH and not lR) and (not lR and not ki or kH and not kx) or not (kH and kx and (not ki and not lR) and (not kx and not kH or (not kH or kx)) or (kH or lR) and (not kH and not lR) and (not lR and not ki or kH and not kx)) then
                    qs_23 = qs_8:WaitForChild("RewardsSync")
                    j2 = qs_8:WaitForChild("RequestClaimAll")
                    lp = qs_8:WaitForChild("RequestQuests")
                    RequestUseItem = qs_8:WaitForChild("RequestUseItem")
                    lh = qs_8:WaitForChild("RequestItems")
                else
                    j2 = RequestUseItem:WaitForChild("RewardsSync")
                    lh = RequestUseItem:WaitForChild("RequestClaimAll")
                    qs_8 = RequestUseItem:WaitForChild("RequestQuests")
                    lp = RequestUseItem:WaitForChild("RequestUseItem")
                    qs_23 = RequestUseItem:WaitForChild("RequestItems")
                end
                qs_1 = (qs_1 + 181) % 192
            end
        elseif lU <= 9 then
            if lU <= 8 then
                if lU <= 7 then
                    local q7 = bit32.rrotate(bit32.bxor(bit32.lrotate(qs_1, 31), string.byte(tostring(RequestRewards))), 11)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(q7, 1700907638), 28), 1716919463) == bit32.lrotate(q7, 28) then
                        ItemsSync = qs_8:WaitForChild("ItemsSync")
                    else
                        qs_8 = ItemsSync:WaitForChild("ItemsSync")
                    end
                    qs_1 = (qs_1 + 157) % 192
                else
                    lV = (vector.create((qs_1 * 3 + 1) % 11 + 1, (qs_1 * 4 + 13) % 13 + 1, (qs_1 * 3 + 4) % 17 + 1))
                    lW = (vector.create((qs_1 * 7 + 2) % 11 + 1, (qs_1 * 6 + 6) % 13 + 1, (qs_1 * 4 + 1) % 17 + 1))
                    local rj = vector.cross(lV, lW)
                    local rk = vector.dot(lV, lW)
                    if vector.dot(rj, rj) + rk * rk == vector.dot(lV, lV) * vector.dot(lW, lW) then
                        k9 = qs_8:WaitForChild("RequestClaimAllBattlePass")
                        k4 = qs_8:WaitForChild("RequestBattlePass")
                        RequestBuyTreeNode = qs_8:WaitForChild("RequestBuyTreeNode")
                    else
                        qs_8 = RequestBuyTreeNode:WaitForChild("RequestClaimAllBattlePass")
                        k9 = RequestBuyTreeNode:WaitForChild("RequestBattlePass")
                        k4 = RequestBuyTreeNode:WaitForChild("RequestBuyTreeNode")
                    end
                    qs_1 = (qs_1 + 37) % 192
                end
            else
                if (qs_1 and kn or (not lR or not qs_1)) and (not lT and not lp and (not lp and not lR)) or (kn and lp or lR and qs_1) and (not qs_1 and kn and (kB or not lT)) or not ((qs_1 and kn or (not lR or not qs_1)) and (not lT and not lp and (not lp and not lR)) or (kn and lp or lR and qs_1) and (not qs_1 and kn and (kB or not lT))) then
                    RequestTreeUpgrades = qs_8:WaitForChild("RequestTreeUpgrades")
                else
                    qs_8 = RequestTreeUpgrades:WaitForChild("RequestTreeUpgrades")
                end
                qs_1 = (qs_1 + 61) % 192
            end
        elseif lU <= 11 then
            if lU <= 10 then
                if (qs_1 * 2 + 2) * 4 % 3 == ((qs_1 * 2 + 2) * 4 + 0) % 3 then
                    qs_4 = qs_8:WaitForChild("TreeSync")
                    qs_19 = qs_8:WaitForChild("StatsSync")
                    qs_10 = qs_8:WaitForChild("RequestInventory")
                else
                    qs_8 = qs_10:WaitForChild("TreeSync")
                    qs_4 = qs_10:WaitForChild("StatsSync")
                    qs_19 = qs_10:WaitForChild("RequestInventory")
                end
                qs_1 = (qs_1 + 157) % 192
            else
                if qs_1 * 16481707 + 13 + 3 >= qs_1 * 16481707 + 13 + 3 + 1 then
                    qs_8 = qs_2:WaitForChild("InventorySync")
                else
                    qs_2 = qs_8:WaitForChild("InventorySync")
                end
                qs_1 = (qs_1 + 61) % 192
            end
        else
            lV = (vector.create((qs_1 * 6 + 8) % 11 + 1, (qs_1 * 3 + 6) % 13 + 1, (qs_1 * 2 + 14) % 17 + 1))
            local re = vector.floor(lV) + vector.ceil(lV * -1)
            if vector.dot(re, re) == 2 then
                qs_23 = {}
            else
                lN = {}
            end
            qs_1 = (qs_1 + 85) % 192
        end
    elseif lU <= 18 then
        if lU <= 15 then
            if lU <= 14 then
                if lU <= 13 then
                    local rp = bit32.rrotate(bit32.bxor(bit32.lrotate(qs_1, 24), string.byte(tostring(kj))), 30)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(rp, 4166345363), 452863208), (bit32.bxor(bit32.band(rp, 128621932), 1747642138))), 452863208), 1747642138) ~= rp then
                        kn = {}
                    else
                        ky = {}
                    end
                    qs_1 = (qs_1 + 109) % 192
                else
                    lV = {
                        "kut",
                        "gcssw",
                        "ypfhcz",
                        "yirtkylpz",
                        "lirjq",
                        "ydvsdisu",
                        "zzeitb",
                        "twlicdc",
                        "igtdkkvul",
                        "rkprfra",
                        "jwhaezkuacnj",
                        "hgnaalcbapyd",
                        "xqd",
                        "wbyhhmxfh",
                        "fxjs",
                        "vxfp"
                    }
                    if lV[(qs_1 * 29 + 31) % 16 + 1] <= lV[(qs_1 * 29 + 31) % 16 + 1] then
                        qs_13 = {}
                    else
                        qs_11 = {}
                    end
                    qs_1 = (qs_1 + 61) % 192
                end
            else
                lV = {
                    "ytzqbz",
                    "xwplnd",
                    "okwqkip",
                    "zlhag",
                    "uteptphzhu",
                    "mylzedxygo",
                    "hvf",
                    "iqda",
                    "yjxwemjwu",
                    "hzkq",
                    "tuqlqfcs"
                }
                if lV[(qs_1 * 92 + 15) % 11 + 1] < lV[(qs_1 * 92 + 15) % 11 + 1] then
                    kH = "Anime War RNG"
                    lO = "https://discord.gg/ehKVq7pf7v"
                else
                    lO = "Anime War RNG"
                    kH = "https://discord.gg/ehKVq7pf7v"
                end
                qs_1 = (qs_1 + 181) % 192
            end
        elseif lU <= 17 then
            if lU <= 16 then
                if qs_1 * 53658385 + 1 + 3 <= qs_1 * 53658385 + 1 + 3 + 1 then
                    kB = "https://rscripts.net/@Ouroboros"
                    kv = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
                else
                    kv = "https://rscripts.net/@Ouroboros"
                    kB = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
                end
                qs_1 = (qs_1 + 133) % 192
            else
                local ri = bit32.rrotate(bit32.bxor(bit32.lrotate(qs_1, 17), string.byte(tostring(lh))), 3)
                if bit32.bxor(bit32.lrotate(bit32.bxor(ri, 1759513263), 16), 179267808) ~= bit32.lrotate(ri, 16) then
                    kn = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
                    ks = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                    kq = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                else
                    ks = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
                    kq = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                    kn = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                end
                qs_1 = (qs_1 + 37) % 192
            end
        else
            if (kg and kg or kg and not qs_7) and (qs_7 or qs_7 or kj and not kg) and not ((kg and kg or kg and not qs_7) and (qs_7 or qs_7 or kj and not kg)) then
                lL = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
                ke = "https://paypal.me/TheTruckerGOD"
                kg = "https://venmo.com/u/miserablemusic"
                ki = "#345d9d"
                lM = "#f7931a"
            else
                ki = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
                kg = "https://paypal.me/TheTruckerGOD"
                ke = "https://venmo.com/u/miserablemusic"
                lM = "#345d9d"
                lL = "#f7931a"
            end
            qs_1 = (qs_1 + 157) % 192
        end
    elseif lU <= 21 then
        if lU <= 20 then
            if lU <= 19 then
                lV = {
                    "ftggqoevt",
                    "hehlidq",
                    "hgbfxohgza",
                    "sklpvxlz",
                    "ijilgceutjf",
                    "ifpplqd",
                    "lqxhdwg",
                    "rdmhtoyn",
                    "fiepzlsaq",
                    "glxk",
                    "vedmy"
                }
                local rl = qs_1
                lW = lV[rl % 11 + 1]
                if lW:len() <= lW:reverse():rep(rl % 3 + 2):len() then
                    qs_15 = "#627eea"
                    qs_6 = "#26a17b"
                else
                    qs_6 = "#627eea"
                    qs_15 = "#26a17b"
                end
                qs_1 = (qs_1 + 13) % 192
            else
                lV = (vector.create((qs_1 * 4 + 5) % 11 + 1, (qs_1 * 9 + 11) % 13 + 1, (qs_1 * 15 + 11) % 17 + 1))
                lW = (vector.create((qs_1 * 1 + 4) % 11 + 1, (qs_1 * 1 + 5) % 13 + 1, (qs_1 * 8 + 13) % 17 + 1))
                lX = (vector.create((qs_1 * 6 + 2) % 11 + 1, (qs_1 * 1 + 1) % 13 + 1, (qs_1 * 10 + 8) % 17 + 1))
                lY = (vector.create((qs_1 * 2 + 2) % 5 + 1, (qs_1 * 1 + 3) % 7 + 1, (qs_1 * 1 + 1) % 9 + 1))
                if vector.dot(vector.cross(lV, (vector.cross(lW, lX))), lY) == vector.dot(lW * vector.dot(lV, lX) - lX * vector.dot(lV, lW), lY) then
                    qs_22 = "#14f195"
                    lT = "#0070ba"
                    lS = "#008cff"
                    lR = "#7fd47f"
                else
                    lR = "#14f195"
                    qs_22 = "#0070ba"
                    lT = "#008cff"
                    lS = "#7fd47f"
                end
                qs_1 = (qs_1 + 85) % 192
            end
        else
            lV = {
                "inkjndgekrjv",
                "rtsloolmh",
                "bzvhskctz",
                "lnofdaai",
                "umjemcp",
                "pckl",
                "qkiozvkctr",
                "hpxo",
                "kfctthbl",
                "ncscik",
                "zgwm",
                "hvoqswkcj"
            }
            if lV[(qs_1 * 70 + 30) % 12 + 1] < lV[(qs_1 * 70 + 30) % 12 + 1] then
                k8 = "#6ec1ff"
                lP = "#e8a34d"
                lQ = "#8b93a3"
            else
                lQ = "#6ec1ff"
                k8 = "#e8a34d"
                lP = "#8b93a3"
            end
            qs_1 = (qs_1 + 157) % 192
        end
    elseif lU <= 23 then
        if lU <= 22 then
            lU = {
                "owkczlzuht",
                "ebcct",
                "rxoppbqti",
                "jlicpvfjge",
                "xqx",
                "exwennvoaz",
                "fxtr",
                "uwvbji",
                "zxbeydfaqux",
                "vue",
                "yhqwqcsg"
            }
            local q6 = qs_1
            lV = lU[q6 % 11 + 1]
            if lV:len() >= lV:reverse():rep(q6 % 3 + 2):len() then
                qs_18 = qs_20:WaitForChild("Modules")
            else
                qs_20 = qs_18:WaitForChild("Modules")
            end
            qs_1 = (qs_1 + 85) % 192
        else
            if (qs_1 * 2 + 9) * 7 % 3 == ((qs_1 * 2 + 9) * 7 + 4) % 3 then
                qs_20 = qs_11:WaitForChild("Shared")
            else
                qs_11 = qs_20:WaitForChild("Shared")
            end
            qs_1 = (qs_1 + 157) % 192
        end
    else
        local ra = bit32.rrotate(bit32.bxor(bit32.lrotate(qs_1, 20), string.byte(tostring(RewardDefs))), 4)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(ra, 1887306475), 4292332767), (bit32.bxor(bit32.band(ra, 2407660820), 3790576478))), 4292332767), 3790576478) == ra then
            qs_8 = qs_18:WaitForChild("Remotes")
        else
            qs_18 = qs_8:WaitForChild("Remotes")
        end
        qs_1 = (qs_1 + 181) % 192
    end
until (qs_1 * 169 + 51) % 192 == 10
for k, v in qs_5.Items do
    qs_1 = v.Use
    qs_8 = v.Usable and type(qs_1) == "table"
    if qs_8 then
        qs_8 = qs_1.Type
        qs_1 = qs_8 == "Bundle" or qs_8 == "Chest" or qs_8 == "MutationChest"
        if not qs_1 then
            qs_18 = qs_8 == "Currency" and v.Category == "Misc"
            qs_1 = qs_18
        end
        qs_8 = qs_1
        if qs_8 then
            qs_1 = v.DisplayName or k
            qs_8 = qs_1
            if not ky[qs_8] then
                lN[#lN + 1] = qs_8
                ky[qs_8] = k
                qs_13[k] = qs_8
            end
        end
    end
end
table.sort(lN)
if #lN == 0 then
    lN[1] = "Starter Package"
end
qs_1 = ky["Starter Package"] and "Starter Package"
qs_8 = qs_1 or lN[1]
li = {}
qs_1 = qs_8
if ky[qs_1] then
    qs_8 = 4
    repeat
        if (qs_8 * 1 + 4) * 17 % 4 == ((qs_8 * 1 + 4) * 17 + 4) % 4 then
            li[ky[qs_1]] = true
        else
            ky[qs_1[li]] = true
        end
        qs_8 = (qs_8 + 5) % 8
    until (qs_8 * 7 + 5) % 8 == 4
end
le, la, k5, k2, kZ, kT, kR, kO, kM, kE, kz, kt, Library, SaveManager, Toggles, Options, j3, lj, k6, kV, kA, km, ka, lo, kG, kh, j6, ld, kI, kw, lk, kX, kQ, kK, kk = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
le = {}
la = 0
k5 = 0
k2 = 0
kZ = {}
kT = nil
kR = 0
kO = nil
kM = 0
kE = math.huge
kz = 0
kt = {}
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
pcall(fn669)
qs_13 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
j3 = fn908
lj = fn508
k6 = fn474
kV = fn403
kA = fn547
km = fn590
ka = fn870
lo = fn542
kG = fn788
kh = fn872
j6 = fn706
ld = fn975
kI = fns.fn28
kw = fn511
lk = fn742
kX = fn522
kQ = fn527
kK = fns.fn98
kk = fn722
qs_4.OnClientEvent:Connect(onOnClientEvent)
qs_19.OnClientEvent:Connect(onOnClientEvent2)
ItemsSync.OnClientEvent:Connect(onOnClientEvent3)
qs_23.OnClientEvent:Connect(onOnClientEvent4)
qs_7.OnClientEvent:Connect(onOnClientEvent5)
qs_2.OnClientEvent:Connect(onOnClientEvent6)
qs_16.OnClientEvent:Connect(fns.onOnClientEvent7)
RequestTreeUpgrades:FireServer()
lh:FireServer()
RequestRewards:FireServer()
lp:FireServer()
k4:FireServer()
kj:FireServer()
qs_10:FireServer()
qs_11 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = kH, Copyable = true }, "|", lO },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
Library.ShowCustomCursor = false
lU = {
    Info = qs_11:AddTab("Info", "info"),
    Main = qs_11:AddTab("Main", "dices"),
    Player = qs_11:AddTab("Player", "person-standing"),
    Settings = qs_11:AddTab("Settings", "settings")
}
qs_5 = fn827
for k, v in lU do
    qs_5(v)
end
j9 = nil
j9 = "Unknown"
pcall(fn635)
Label, lb = nil, nil
qs_11 = lU.Info:AddLeftGroupbox("Account", "circle-user")
qs_11:AddLabel(kV("User", LocalPlayer.Name, lR), true)
qs_11:AddLabel(kV("Status", "Keyless", lR), true)
qs_11:AddLabel(kV("Executor", j9, lR), true)
qs_5 = lU.Info:AddLeftGroupbox("Game Info", "gamepad-2")
qs_5:AddLabel(k6(lO .. " [" .. tostring(game.PlaceId) .. "]", lQ), true)
qs_5:AddLabel(kV("Place ID", tostring(game.PlaceId), lQ), true)
Label = qs_5:AddLabel(kV("Session time", "0s", k8), true)
lb = tostring(game.JobId)
qs_20 = #lb > 18
if qs_20 then
    qs_8 = 0
    repeat
        if (qs_8 * 2 + 7) * 7 % 3 == ((qs_8 * 2 + 7) * 7 + 3) % 3 then
            qs_20 = string.sub(lb, 1, 18) .. "..."
        else
            lb = string.sub(qs_20, 1, 18) .. "..."
        end
        qs_8 = (qs_8 + 2) % 8
    until (qs_8 * 1 + 0) % 8 == 2
end
qs_8 = qs_20 or lb
lV, kP, qs_7, qs_23, qs_20 = nil, nil, nil, nil, nil
if ((not qs_23 or qs_23) and (not qs_20 or qs_7) or (not qs_7 or not qs_23 or (not lV or qs_20))) and ((lV and not qs_20 or (qs_7 or not qs_20)) and (not lV or not qs_23 or not lV and qs_20)) or not (((not qs_23 or qs_23) and (not qs_20 or qs_7) or (not qs_7 or not qs_23 or (not lV or qs_20))) and ((lV and not qs_20 or (qs_7 or not qs_20)) and (not lV or not qs_23 or not lV and qs_20))) then
    lV = qs_8
    qs_5:AddLabel(kV("Server", lV, lP), true)
    qs_5:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
    kP = os.clock()
else
    qs_8 = qs_5
    kP:AddLabel(lP("Server", qs_8, kV), true)
    kP:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
    lV = os.clock()
end
task.spawn(fns.worker)
qs_16 = lU.Info:AddRightGroupbox("Scripts", "package")
qs_16:AddLabel(k6("Included in this hub", lP), true)
qs_16:AddLabel(k6(lO, lQ), true)
qs_7 = lU.Info:AddRightGroupbox("Features", "list")
qs_7:AddLabel(k6("Auto Farm", lQ), true)
qs_7:AddLabel(k6("Auto Claim", k8), true)
qs_7:AddLabel(k6("Misc Utilities", lP), true)
qs_23 = lU.Info:AddRightGroupbox("Socials", "link")
qs_23:AddButton({ Text = "Discord", Func = lj })
qs_23:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
qs_20 = lU.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
qs_20:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
qs_20:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
qs_20:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
qs_20:AddButton({ Text = "Copy Discord Invite", Func = lj })
qs_11 = lU.Info:AddRightGroupbox("Donations", "heart")
qs_11:AddLabel(k6("All donations are optional but appreciated.", k8), true)
qs_11:AddLabel(k6("If you donate you get a special role, just PING after you donate.", lR), true)
qs_11:AddDivider()
qs_11:AddLabel(k6("LTC / Litecoin", lM), true)
qs_11:AddButton({ Text = "Copy Litecoin Address", Func = fns.onCopyLitecoinAddress })
qs_11:AddLabel(k6("BTC / Bitcoin", lL), true)
qs_11:AddButton({ Text = "Copy Bitcoin Address", Func = fns.onCopyBitcoinAddress })
qs_11:AddLabel(k6("ETH / Ethereum", qs_15), true)
qs_11:AddButton({ Text = "Copy Ethereum Address", Func = fns.onCopyEthereumAddress })
qs_11:AddLabel(k6("USDT", qs_6), true)
qs_11:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
qs_11:AddLabel(k6("Solana", qs_22), true)
qs_11:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
qs_11:AddLabel(k6("PayPal", lT), true)
qs_11:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
qs_11:AddLabel(k6("Venmo", lS), true)
qs_11:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
qs_11:AddDivider()
qs_11:AddLabel(k6("Don't have any of the listed currencies but still wanna donate?", lP), true)
qs_11:AddLabel(k6("DM me and we'll work something out.", lQ), true)
qs_4 = lU.Info:AddRightGroupbox("FAQ", "circle-help")
qs_4:AddLabel("Where do I get a good config?", true)
qs_4:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
qs_4:AddLabel("How do I import / export configs?", true)
qs_4:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
qs_4:AddLabel("How do I report bugs?", true)
qs_4:AddLabel("Join the Discord and post it in the bugs channel.", true)
qs_4:AddLabel("How do I make suggestions?", true)
qs_4:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
qs_4:AddLabel("How do I get help or updates?", true)
qs_4:AddLabel("Join the Discord, updates and support are posted there first.", true)
qs_19 = lU.Main:AddLeftGroupbox("Auto Farm", "swords")
qs_19:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
qs_19:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
qs_19:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
qs_19:AddToggle("AutoBuyNodes", { Text = "Auto Buy Affordable Upgrades", Default = false })
qs_10 = lU.Main:AddRightGroupbox("Auto Claim", "gift")
qs_10:AddToggle("AutoClaimPlaytime", { Text = "Auto Claim Playtime Rewards", Default = false })
qs_10:AddToggle("AutoClaimRewards", { Text = "Auto Claim Rewards", Default = false })
qs_10:AddToggle("AutoClaimQuests", { Text = "Auto Claim All Quests", Default = false })
qs_10:AddToggle("AutoClaimBattlepass", { Text = "Auto Claim Battlepass", Default = false })
qs_2 = lU.Main:AddLeftGroupbox("Packages", "package")
qs_2:AddToggle("AutoUsePackages", { Text = "Auto Use Packages", Default = false })
qs_2:AddDropdown("PackageTypes", { Text = "Packages", Values = lN, Default = { qs_1 }, Multi = true, Callback = onPackageTypes })
qs_18 = lU.Player:AddLeftGroupbox("Movement", "footprints")
qs_18:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
qs_18:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
qs_18:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
qs_18:AddToggle("NoClip", { Text = "NoClip", Default = false })
qs_18:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
lW = lU.Player:AddRightGroupbox("Fly", "feather")
if (not qs_2 and 48 or (not qs_11 or kP) or (not qs_2) and (qs_11 and not qs_2) and (qs_2 and false or not lV) or ((not qs_11) and lV and (not kP and not qs_11 or (not kP or lV)) or not kP and not kP and (qs_2 or not lV) and ((not qs_2 or kP) and (not lV or qs_11)))) and not (not qs_2 and 48 or (not qs_11 or kP) or (not qs_2) and (qs_11 and not qs_2) and (qs_2 and false or not lV) or ((not qs_11) and lV and (not kP and not qs_11 or (not kP or lV)) or not kP and not kP and (qs_2 or not lV) and ((not qs_2 or kP) and (not lV or qs_11)))) then
    lW:AddToggle("Fly", { Text = "Fly", Default = false })
    lW:AddSlider("FlySpeed", { Max = 400, Min = 10, Rounding = 0, Default = 60, Text = "Fly Speed" })
else
    lW:AddToggle("Fly", { Text = "Fly", Default = false })
    lW:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
end
kb, lq, lm, connection, connection2, kL, k1, lr, kU, kF, ln = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Toggles.Fly:OnChanged(fn968)
Toggles.WalkSpeedEnabled:OnChanged(fn692)
RunService.Stepped:Connect(fns.onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
kb = Workspace.CurrentCamera
RunService.RenderStepped:Connect(fns.onRenderStepped)
kL = function(eO)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not eO)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not eO
        end
    end)
    if not eO then
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
Toggles.AntiGameplayPause:OnChanged(fn637)
lX = lU.Settings:AddLeftGroupbox("Menu", "wrench")
lX:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
lq = tick()
lm = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local o8 = v
        pcall(function()
            o8:Disable()
        end)
    end
end)
k1 = fn322
connection = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection2 = UserInputService.InputChanged:Connect(fns.onInputChanged)
lX:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
lX:AddButton("Unload", onUnload)
Library:OnUnload(fn496)
qs_13:SetLibrary(Library)
qs_13:SetFolder("OuroborosHub")
qs_13:SaveDefault("Monochrome")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/AnimeWarRNG")
lY = SaveManager:BuildConfigSection(lU.Settings)
lr = fn375
kU = fn842
kF = fn807
ln = function(fQ)
    local pO
    pO = nil
    local pP = type(fQ) ~= "table"
    local pT = if pP then 1 else 0
    local pR = 970 * pT + 1070 * (1 - pT)
    local pS = 1568 * pT + 1610 * (1 - pT)
    if not ((pR * 94 + pS * 455 + pR * pS) % 16777213 == 2325580) then
        pP = type(fQ.idx) ~= "string"
    end
    if not pP then
        pP = type(fQ.type) ~= "string"
    end
    if not pP then
        pP = SaveManager.Ignore[fQ.idx]
    end
    if pP then
        return false
    end
    pO = lr(fQ.type, fQ.idx)
    if not pO then
        return false
    end
    local pP_1 = pcall(function()
        if fQ.type == "Input" then
            if type(fQ.text) ~= "string" then
                return
            end
            pO:SetValue(fQ.text)
        elseif fQ.type == "ColorPicker" then
            pO:SetValueRGB(Color3.fromHex(fQ.value), fQ.transparency)
        elseif fQ.type == "KeyPicker" then
            pO:SetValue({ fQ.key, fQ.mode, fQ.modifiers })
            if fQ.mode == "Toggle" and fQ.toggled ~= nil then
                pO.Toggled = fQ.toggled
                pO:Update()
            end
        else
            pO:SetValue(fQ.value)
        end
    end)
    return pP_1
end
lY:AddDivider()
lY:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
lY:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
lY:AddButton("Import Config from Clipboard Text", fns.onImportConfigFromClipboardTex)
qs_13:ApplyToTab(lU.Settings)
qs_13:LoadDefault()
SaveManager:LoadAutoloadConfig()
task.spawn(autoRollLoop)
task.spawn(autoRebirthLoop)
task.spawn(autoEquipBestLoop)
task.spawn(autoBuyNodesLoop)
task.spawn(fns.autoClaimPlaytimeLoop)
task.spawn(autoUsePackagesLoop)
task.spawn(autoClaimPlaytimeLoop2)
task.spawn(fns.antiGameplayPauseLoop)
task.spawn(antiAfkLoop)
Library:Notify("Anime War RNG loaded")
