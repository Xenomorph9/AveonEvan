local fns = {}
local kv
local lc
local Generation
local kB
local li
local k_
local Toggles
local lo
local connection
local k5
local LocalPlayer
local kT
local kA
local lh
local kZ
local ln
local km
local k4
local Packages
local lt
local ks
local la
local kS
local HttpService
local kY
local client
local UserInputService
local k3
local kL
local ls
local kr
local k9
local kR
local lf
local OuroborosAirportTycoon
local Options
local ll
local k2
local SaveManager
local lr
local k8
local connection3
local CurrentCamera
local kW
local kD
local VirtualUser
local k1
local kJ
local lq
local kp
local connection5
local kP
local ld
local kV
local connection2
local k0
local kI
local connection4
local ko
local Library
local lv
function fns.antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local qL = tick() - kL
            local qM = tick() - kI
            if qL >= 300 and qM >= 60 then
                pcall(ks)
            else
                if qL < 300 and qM >= 300 then
                    pcall(ks)
                end
            end
        end
    end
end
function fns.fn17()
    local mJ_1
    local mI_1
    mI_1, mJ_1 = pcall(function()
        return client:get({ "tycoon" })
    end)
    local mK = mI_1 and type(mJ_1) == "table"
    if mK then
        return mJ_1
    end
    return {}
end
function fns.fn24()
    local pC = tonumber(client:get({ "tycoon", "accumulatorBalance" })) or 0
    if pC > 0 then
        local pC_1 = lt()
        if pC_1 then
            ld(pC_1)
        end
    end
end
local function fn53()
    k2()
end
local function fn62()
    local Character = LocalPlayer.Character
    local pR = Character and Character:FindFirstChildOfClass("Humanoid")
    return pR
end
local function fn65()
    if not Toggles.WalkSpeedEnabled.Value then
        local qp = k5()
        if qp then
            qp.WalkSpeed = 16
        end
    end
end
local function onExportConfigToClipboard()
    local rq_1
    local rp_1
    rp_1, rq_1 = pcall(HttpService.JSONEncode, HttpService, kY())
    if not rp_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local rp_2 = setclipboard or toclipboard
    local rp_3 = type(rp_2) ~= "function" or not pcall(rp_2, rq_1)
    if rp_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function fn85(gA, gB)
    local qT_1 = (gA == "Toggle" and Toggles or Options)[gB]
    local qS_2 = type(qT_1) == "table" and qT_1.Type == gA
    return qS_2 and qT_1 or nil
end
local function fn88(bg, bh)
    return string.format('<font color="%s">%s</font>', bh, bg)
end
local function fn100(aQ)
    if not aQ then
        return nil
    end
    local Touch = aQ:FindFirstChild("Touch", true)
    local nh = Touch and Touch:IsA("BasePart")
    if nh then
        return Touch
    end
    return nil
end
local function fn109()
    kD()
end
local function fn142(a_, a0)
    if setclipboard then
        setclipboard(a_)
    elseif toclipboard then
        toclipboard(a_)
    end
    Library:Notify(a0)
end
local function fn143()
    local pK = Toggles.upgradeSecurity.Value or Toggles.upgradeGate.Value or Toggles.upgradeAmenity.Value
    local pO = if pK then 1 else 0
    local pM = 1930 * pO + 4012 * (1 - pO)
    local pN = 845 * pO + 2157 * (1 - pO)
    if not ((pM * 2750 + pN * 3788 + pM * pN) % 16777213 == 10139210) then
        pK = Toggles.upgradeRunway.Value
    end
    return pK
end
local function onCopyJoinScript_JobID()
    local ns = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, la)
    if setclipboard then
        setclipboard(ns)
    elseif toclipboard then
        toclipboard(ns)
    end
    Library:Notify("Copied join script to clipboard")
end
local function fn167()
    return Toggles.autoIncome.Value
end
local function onCopyUSDTAddress()
    kB(ll, "Copied USDT address")
end
local function fn173(aL)
    local nd = k1()
    if not nd then
        return nil
    end
    local Models = nd:FindFirstChild("Models")
    if Models then
        return Models:FindFirstChild(aL)
    end
    return nil
end
local function onInputChanged(ge)
    local UserInputType = ge.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        kL = tick()
    end
end
local function fn176()
    return Toggles.autoTrash.Value
end
local function fn186(bj, bk, bl)
    return string.format("<b>%s</b> %s %s", bj, kW("-", "#5a6070"), kW(bk, bl))
end
local function onJumpRequest()
    if Library.Unloaded or not Toggles then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local p4_2 = k5()
        if p4_2 then
            p4_2:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn221()
    lo(Toggles.AntiGameplayPause.Value)
end
local function fn249(aB, aC, aD)
    local m3 = {}
    local m5 = aB.components or {}
    for i, v in ipairs(m5) do
        local behaviors = v.behaviors
        local m5_1 = type(behaviors) == "table" and behaviors[aC] ~= nil
        if m5_1 then
            local m4_2 = not aD
            if not m4_2 then
                m4_2 = (v.upgradeLevel or 0) < aD
            end
            if m4_2 then
                table.insert(m3, v)
            end
        end
    end
    return m3
end
local function onRscripts()
    if setclipboard then
        setclipboard(k0)
    elseif toclipboard then
        toclipboard(k0)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
local function fn278()
    return Toggles.autoRebirth.Value
end
local function fn285()
    return Options.incomeInterval.Value
end
local function fn293()
    local mD = (tonumber(client:get({ "starTokens" })))
    local mH = if mD then 1 else 0
    local mF = 1601 * mH + 3107 * (1 - mH)
    local mG = 2710 * mH + 2448 * (1 - mH)
    if not ((mF * 3399 + mG * 536 + mF * mG) % 16777213 == 11233069) then
        mD = 0
    end
    return mD
end
local function fn310()
    local mB = tonumber(client:get({ "coins" })) or 0
    return mB
end
local function onRenderStepped(fz)
    if Library.Unloaded or not Toggles or not Options then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local qa_3 = k5()
        if qa_3 then
            qa_3.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local qa_5 = kV()
        local qb_1 = k5()
        if qa_5 and qb_1 then
            qb_1.PlatformStand = true
            local qb_2 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                qb_2 = qb_2 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                qb_2 = qb_2 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                qb_2 = qb_2 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                qb_2 = qb_2 + CurrentCamera.CFrame.RightVector
            end
            local qg = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
            if qg == 1 then
                qb_2 = qb_2 + Vector3.new(0, 1, 0)
            end
            local qj = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
            if qj == 1 then
                qb_2 = qb_2 - Vector3.new(0, 1, 0)
            end
            qa_5.Velocity = Vector3.zero
            if qb_2.Magnitude > 0 then
                qa_5.CFrame = qa_5.CFrame + qb_2.Unit * Options.FlySpeed.Value * fz
            end
        end
    end
end
local function fn315()
    kS()
end
local function fn317(cn)
    if not LocalPlayer.Character then
        return false
    end
    local nE_1 = kA(cn, "IncomeAccumulator")
    local nF = false
    for i, v in ipairs(nE_1) do
        local nE_2 = k_(li(v.modelId))
        if nE_2 then
            kR(nE_2.Position, nE_2.Size.Y / 2 + 2)
            nF = true
            task.wait(1.2)
        end
    end
    return nF
end
local function worker()
    local ny_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local nx = math.floor(os.clock() - kT)
        if nx < 60 then
            ny_1 = nx .. "s"
        elseif nx < 3600 then
            ny_1 = string.format("%dm %ds", nx // 60, nx % 60)
        else
            ny_1 = string.format("%dh %dm", nx // 3600, nx % 3600 // 60)
        end
        lf:SetText(kP("Session time", ny_1, kv))
    end
end
local function fn345()
    pcall(function()
        Library:Unload()
    end)
end
local function fn347()
    return Toggles.autoRebirthUpg.Value
end
local function fn350()
    return Options.rebirthUpgInterval.Value
end
local function fn375()
    if tick() - kr < 15 then
        return
    end
    kr = tick()
    k3()
end
local function fn398()
    return Options.buyInterval.Value
end
local function onUnload()
    Library:Unload()
end
local function fn431(au, av)
    local Character = LocalPlayer.Character
    local mX = Character and Character:FindFirstChild("HumanoidRootPart")
    local mW_1 = mX
    if mX then
        mX = au
    end
    if mX then
        local new = CFrame.new
        local mZ = av
        local m2 = if mZ then 1 else 0
        local m0 = 3981 * m2 + 1673 * (1 - m2)
        local m1 = 2534 * m2 + 3459 * (1 - m2)
        if not ((m0 * 3102 + m1 * 4019 + m0 * m1) % 16777213 == 15843849) then
            mZ = 3
        end
        mW_1.CFrame = new(au + Vector3.new(0, mZ, 0))
    end
end
local function onImportConfigFromClipboardTex()
    local rv_1
    local rt = Options.SaveManager_ImportSource.Value
    local rt_1
    local rz = if rt then 1 else 0
    local rx = 812 * rz + 3596 * (1 - rz)
    local ry = 2327 * rz + 3900 * (1 - rz)
    if not ((rx * 815 + ry * 214 + rx * ry) % 16777213 == 3049282) then
        rt = ""
    end
    local ru = tostring(rt):match("^%s*(.-)%s*$")
    if ru == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    rt_1, rv_1 = pcall(HttpService.JSONDecode, HttpService, ru)
    local ru_1 = not rt_1 or type(rv_1) ~= "table" or type(rv_1.objects) ~= "table"
    if ru_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local rt_2 = 0
    for i, v in ipairs(rv_1.objects) do
        if lv(v) then
            rt_2 += 1
        end
    end
    if rt_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local rv_2 = rt_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(rt_2, rv_2), 6)
end
local function fn478()
    for i, child in ipairs(lr.Entities.Plots:GetChildren()) do
        if child:GetAttribute("OwnerUserId") == LocalPlayer.UserId then
            return child.Name
        end
    end
    return nil
end
local function fn493()
    local nl_1
    local nk_1
    if identifyexecutor then
        nl_1, nk_1 = identifyexecutor()
        local nm = nl_1 ~= ""
        local nn = type(nl_1) == "string" and nm
        if nn then
            local nm_1 = type(nk_1) == "string" and nk_1 ~= "" and nl_1 .. " " .. nk_1
            kp = nm_1 or nl_1
        end
    end
end
local function fn513()
    local Character = LocalPlayer.Character
    local pU = Character and Character:FindFirstChild("HumanoidRootPart")
    return pU
end
local function onCopyLitecoinAddress()
    kB(ls, "Copied Litecoin address")
end
local function fn543()
    return Toggles.autoBuy.Value
end
local function onCopyBitcoinAddress()
    kB(lq, "Copied Bitcoin address")
end
local function fn572()
    return Options.trashInterval.Value
end
local function fn576(gI, gJ)
    local Type = gJ.Type
    if Type == "Toggle" then
        return { idx = gI, type = "Toggle", value = gJ.Value == true }
    elseif Type == "Slider" then
        return { idx = gI, type = "Slider", value = tostring(gJ.Value) }
    elseif Type == "Dropdown" then
        return { idx = gI, type = "Dropdown", multi = gJ.Multi == true, value = gJ.Value }
    elseif Type == "Input" then
        local qX = gJ.Value or ""
        return { idx = gI, type = "Input", text = tostring(qX) }
    elseif Type == "ColorPicker" then
        return { idx = gI, type = "ColorPicker", value = gJ.Value:ToHex(), transparency = gJ.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = gI,
            type = "KeyPicker",
            mode = gJ.Mode,
            key = gJ.Value,
            modifiers = gJ.Modifiers,
            toggled = gJ.Toggled
        }
    else
        return nil
    end
end
local function fn592()
    return Options.upgradeInterval.Value
end
local function onCopySolanaAddress()
    kB(lh, "Copied Solana address")
end
local function fn638()
    local q2 = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local q3 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if q3 then
                local q3_1 = k8(k, v)
                if q3_1 then
                    q2[#q2 + 1] = q3_1
                end
            end
        end
    end
    table.sort(q2, function(gV, gW)
        if gV.type ~= gW.type then
            return gV.type < gW.type
        end
        return gV.idx < gW.idx
    end)
    return { objects = q2 }
end
local function fn644(I)
    if km[I] then
        return km[I]
    end
    for i, child in ipairs(Packages._Index:GetChildren()) do
        for i, child in ipairs(child:GetChildren()) do
            if string.find(child.Name, "networker", 1, true) then
                local remotes = child:FindFirstChild("_remotes")
                if remotes then
                    local mg = remotes:FindFirstChild(I)
                    if mg then
                        local mf_1 = { ev = mg:FindFirstChild("RemoteEvent"), fn = mg:FindFirstChild("RemoteFunction") }
                        km[I] = mf_1
                        return mf_1
                    end
                end
            end
        end
    end
    return nil
end
local function onInputBegan()
    kL = tick()
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            lo(true)
        end
    end
end
local function fn694()
    return OuroborosAirportTycoon.Generation == Generation
end
local function fn703()
    return Options.rebirthInterval.Value
end
local function onCopyEthereumAddress()
    kB(ln, "Copied Ethereum address")
end
local function fn740()
    connection4:Disconnect()
    connection5:Disconnect()
    connection:Disconnect()
    connection2:Disconnect()
    connection3:Disconnect()
end
local function fn741()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    kI = tick()
end
local function fn782()
    kB(k4, "Copied Discord invite to clipboard")
end
local function fn795()
    if not Toggles.Fly.Value then
        local qk = k5()
        if qk then
            qk.PlatformStand = false
        end
    end
end
local function onCopyVenmoLink()
    kB(k9, "Copied Venmo link")
end
local function onCopyPayPalLink()
    kB(lc, "Copied PayPal link")
end
local function fn824()
    lo(false)
end
local function fn827()
    kJ()
end
local function fn838(ba)
    local DiscordGroup = ba:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = ko })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = ko })
end
local function fn858()
    local AirportTycoonClientRuntime = lr:FindFirstChild("AirportTycoonClientRuntime")
    if AirportTycoonClientRuntime then
        return AirportTycoonClientRuntime:FindFirstChild(kZ())
    end
    return nil
end
local function onStepped()
    if Library.Unloaded or not Toggles then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local pW_3 = descendant:IsA("BasePart") and descendant.CanCollide
                if pW_3 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
km = nil
connection = nil
ko = nil
kp = nil
kr = nil
ks = nil
kv = nil
connection3 = nil
kA = nil
kB = nil
kD = nil
Options = nil
client = nil
Toggles = nil
kI = nil
kJ = nil
SaveManager = nil
kL = nil
Packages = nil
Library = nil
kP = nil
kR = nil
kS = nil
kT = nil
Generation = nil
kV = nil
kW = nil
OuroborosAirportTycoon = nil
kY = nil
kZ = nil
k_ = nil
k0 = nil
k1 = nil
k2 = nil
k3 = nil
k4 = nil
k5 = nil
connection5 = nil
k8 = nil
local kl, TycoonConfig, KitUtils, UpgradeConfig, RebirthUpgradeConfig, kz, RebirthConfig, kG, kN, kQ, k6
k9 = nil
la = nil
LocalPlayer = nil
lc = nil
ld = nil
CurrentCamera = nil
lf = nil
HttpService = nil
lh = nil
li = nil
connection2 = nil
VirtualUser = nil
ll = nil
UserInputService = nil
ln = nil
lo = nil
connection4 = nil
lq = nil
lr = nil
ls = nil
lt = nil
lv = nil
local lu, lz, lB, lD, lH, lI, lJ, lK, lL
local CollectingGroup
lr, lB, UserInputService, VirtualUser, HttpService, LocalPlayer, k4, k0 = nil, nil, nil, nil, nil, nil, nil, nil
local lw = game:GetService("Players")
if (lB or k0 or not lB and k0) and (lB and false or (not lB or not lB)) or not ((lB or k0 or not lB and k0) and (lB and false or (not lB or not lB))) then
    lz = game:GetService("ReplicatedStorage")
    lr = game:GetService("Workspace")
    lB = game:GetService("RunService")
else
    lr = game:GetService("ReplicatedStorage")
    lB = game:GetService("Workspace")
    lz = game:GetService("RunService")
end
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
LocalPlayer = lw.LocalPlayer
local lA = "Airport Tycoon"
k4 = "https://discord.gg/ehKVq7pf7v"
k0 = "https://rscripts.net/@Ouroboros"
local ly = getgenv()
lw = {}
local lx = ly.OuroborosAirportTycoon or lw
OuroborosAirportTycoon = nil
ly.OuroborosAirportTycoon = lx
OuroborosAirportTycoon = ly.OuroborosAirportTycoon
if type(OuroborosAirportTycoon.Unload) == "function" then
    pcall(OuroborosAirportTycoon.Unload)
end
lw = OuroborosAirportTycoon.Generation or 0
Generation, Packages, client, RebirthConfig, RebirthUpgradeConfig, UpgradeConfig, KitUtils, TycoonConfig, km, Library, SaveManager, Toggles, Options, kQ, lu, kZ, kN, kG, kz, lt, k1, kR, kA, li, k_, kB, ko = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
OuroborosAirportTycoon.Generation = lw + 1
Generation = OuroborosAirportTycoon.Generation
kQ = fn694
setthreadidentity(8)
Packages = lz:WaitForChild("Packages")
lx = lz:WaitForChild("Features")
client = require(Packages:WaitForChild("dataservice")).client
RebirthConfig = require(lx.rebirth.RebirthConfig)
RebirthUpgradeConfig = require(lx.rebirth.RebirthUpgradeConfig)
UpgradeConfig = require(lx.upgrades.UpgradeConfig)
KitUtils = require(lx.kits.KitUtils)
TycoonConfig = require(lx.tycoon.TycoonConfig)
km = {}
lu = fn644
kZ = fn478
kN = fn310
kG = fn293
kz = fns.fn17
lt = function()
    local mM
    mM = nil
    local mO_1
    mM = lu("Purchases")
    local mN = mM and mM.fn
    local mN_1
    if not mN then
        return nil
    end
    mN_1, mO_1 = pcall(function()
        return mM.fn:InvokeServer("requestOwnPlotSnapshot")
    end)
    local mP = mN_1 and type(mO_1) == "table"
    if mP then
        return mO_1
    end
    return nil
end
k1 = fn858
kR = fn431
kA = fn249
li = fn173
k_ = fn100
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
kB = fn142
ko = fn782
local lC = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = k4, Copyable = true }, "|", lA },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
OuroborosAirportTycoon.Unload = fn345
local lG = {
    Info = lC:AddTab("Info", "info"),
    Main = lC:AddTab("Main", "gavel"),
    Player = lC:AddTab("Player", "person-standing"),
    Settings = lC:AddTab("Settings", "settings")
}
lG.Collecting = lG.Main:AddSubTab("Collecting", "coins")
lG.Purchasing = lG.Main:AddSubTab("Purchasing", "shopping-bag")
lG.Upgrading = lG.Main:AddSubTab("Upgrading", "trending-up")
lG.Rebirth = lG.Main:AddSubTab("Rebirth", "refresh-cw")
local lE = fn838
for k, v in lG do
    if v ~= lG.Main then
        lE(v)
    end
end
lD, lC, kv, lz, kp, lH, lf, la, ly, kW, kP = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
lw = 56
repeat
    lE = (lw * 4 + 2) % 9 + 1
    if lE <= 5 then
        if lE <= 3 then
            if lE <= 2 then
                if lE <= 1 then
                    local sV = bit32.rrotate(bit32.bxor(bit32.lrotate(lw, 31), string.byte(tostring(kP))), 22)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(sV, 2869129875), 18971534), (bit32.bxor(bit32.band(sV, 1425837420), 1472637717))), 18971534), 1472637717) ~= sV then
                        la = #ly > 18
                    else
                        ly = #la > 18
                    end
                    lw = (lw + 7) % 72
                else
                    local sf = bit32.rrotate(bit32.bxor(bit32.lrotate(lw, 30), string.byte(tostring(lf))), 14)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(sf, 4143573810), 4), 1872671535) == bit32.lrotate(sf, 4) then
                        kW = fn88
                    else
                        kv = fn88
                    end
                    lw = (lw + 70) % 72
                end
            else
                lI = {
                    "ktodtm",
                    "uxws",
                    "olujcf",
                    "lpdecse",
                    "doci",
                    "fiyesl",
                    "pmztxeuzacdj",
                    "yyfmobhes",
                    "vap",
                    "blt"
                }
                if lI[(lw * 91 + 8) % 10 + 1] < lI[(lw * 91 + 8) % 10 + 1] then
                    ly = fn186
                else
                    kP = fn186
                end
                lw = (lw + 61) % 72
            end
        elseif lE <= 4 then
            if lw * 29847215 + 3 + 6 >= lw * 29847215 + 3 + 6 + 5 then
                kW = "#7fd47f"
            else
                lD = "#7fd47f"
            end
            lw = (lw + 7) % 72
        else
            lI = (vector.create((lw * 6 + 7) % 11 + 1, (lw * 7 + 13) % 13 + 1, (lw * 2 + 1) % 17 + 1))
            lJ = (vector.create((lw * 2 + 3) % 11 + 1, (lw * 3 + 9) % 13 + 1, (lw * 7 + 16) % 17 + 1))
            lK = (vector.create((lw * 1 + 6) % 11 + 1, (lw * 2 + 3) % 13 + 1, (lw * 1 + 5) % 17 + 1))
            lL = (vector.create((lw * 3 + 4) % 5 + 1, (lw * 1 + 2) % 7 + 1, (lw * 2 + 3) % 9 + 1))
            if vector.dot(vector.cross(lI, (vector.cross(lJ, lK))), lL) == vector.dot(lJ * vector.dot(lI, lK) - lK * vector.dot(lI, lJ), lL) then
                lC = "#6ec1ff"
            else
                kp = "#6ec1ff"
            end
            lw = (lw + 16) % 72
        end
    elseif lE <= 7 then
        if lE <= 6 then
            lI = (vector.create((lw * 4 + 3) % 11 + 1, (lw * 4 + 3) % 13 + 1, (lw * 13 + 8) % 17 + 1))
            lJ = (vector.create((lw * 3 + 3) % 11 + 1, (lw * 1 + 9) % 13 + 1, (lw * 3 + 13) % 17 + 1))
            local ss = vector.cross(lI, lJ)
            local st = vector.dot(lI, lJ)
            if vector.dot(ss, ss) + st * st == vector.dot(lI, lI) * vector.dot(lJ, lJ) + 4 then
                lf = "#e8a34d"
            else
                kv = "#e8a34d"
            end
            lw = (lw + 70) % 72
        else
            lI = (vector.create((lw * 7 + 6) % 11 + 1, (lw * 5 + 1) % 13 + 1, (lw * 13 + 11) % 17 + 1))
            lJ = (vector.create((lw * 5 + 5) % 11 + 1, (lw * 9 + 9) % 13 + 1, (lw * 3 + 11) % 17 + 1))
            lK = (vector.create((lw * 1 + 2) % 11 + 1, (lw * 7 + 10) % 13 + 1, (lw * 8 + 6) % 17 + 1))
            lL = (vector.create((lw * 1 + 7) % 11 + 1, (lw * 4 + 10) % 13 + 1, (lw * 10 + 16) % 17 + 1))
            if vector.dot(vector.cross(lI, lJ), (vector.cross(lK, lL))) == vector.dot(lI, lK) * vector.dot(lJ, lL) - vector.dot(lI, lL) * vector.dot(lJ, lK) + 5 then
                lH = "#8b93a3"
            else
                lz = "#8b93a3"
            end
            lw = (lw + 52) % 72
        end
    elseif lE <= 8 then
        if (lw * 3 + 2) * 21 % 4 == ((lw * 3 + 2) * 21 + 7) % 4 then
            pcall(fn493)
            lD = lH.Info:AddLeftGroupbox("Account", "circle-user")
            lD:AddLabel(kp("User", lC.Name, LocalPlayer), true)
            lD:AddLabel(kp("Status", "Keyless", LocalPlayer), true)
            lD:AddLabel(kp("Executor", "Unknown", LocalPlayer), true)
            kP = lH.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            kP:AddLabel(kv(lf .. " [" .. tostring(game.PlaceId) .. "]", kW), true)
            kP:AddLabel(kp("Place ID", tostring(game.PlaceId), kW), true)
            lG = kP:AddLabel(kp("Session time", "0s", lA), true)
        else
            kp = "Unknown"
            pcall(fn493)
            lx = lG.Info:AddLeftGroupbox("Account", "circle-user")
            lx:AddLabel(kP("User", LocalPlayer.Name, lD), true)
            lx:AddLabel(kP("Status", "Keyless", lD), true)
            lx:AddLabel(kP("Executor", kp, lD), true)
            lH = lG.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            lH:AddLabel(kW(lA .. " [" .. tostring(game.PlaceId) .. "]", lC), true)
            lH:AddLabel(kP("Place ID", tostring(game.PlaceId), lC), true)
            lf = lH:AddLabel(kP("Session time", "0s", kv), true)
        end
        lw = (lw + 43) % 72
    else
        local sQ = bit32.rrotate(bit32.bxor(bit32.lrotate(lw, 5), string.byte(tostring(kv))), 5)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(sQ, 1048122445), 3059048489), (bit32.bxor(bit32.band(sQ, 3246844850), 2426377707))), 3059048489), 2426377707) ~= sQ then
            kp = tostring(game.JobId)
        else
            la = tostring(game.JobId)
        end
        lw = (lw + 43) % 72
    end
until (lw * 17 + 68) % 72 == 21
if ly then
    lw = 5
    repeat
        lx = {
            "qdxobxo",
            "bmekz",
            "wbmjbev",
            "bxhknlt",
            "uwksmthmqjn",
            "djphmzhbzpp",
            "btoh",
            "qoctheiwje",
            "ofemnhka",
            "qpvo",
            "wqdmp",
            "cbho",
            "ujzwzyymt",
            "ymabxdspl",
            "lyubeakpwwaw",
            "xxy"
        }
        if lx[(lw * 6 + 52) % 16 + 1] <= lx[(lw * 6 + 52) % 16 + 1] then
            ly = string.sub(la, 1, 18) .. "..."
        else
            la = string.sub(ly, 1, 18) .. "..."
        end
        lw = (lw + 5) % 8
    until (lw * 1 + 4) % 8 == 6
end
lw = ly or la
kT, ls, lq, ln, ll, lh, lc, k9, k6, CollectingGroup, kr, connection, connection2, CurrentCamera, connection3, kL, kI, connection4, connection5, lx, ld, kD, kS, k2, k3, kJ, k5, kV, lo, ks, kl, k8, kY, lv = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local lS = lw
lH:AddLabel(kP("Server", lS, lz), true)
lH:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
kT = os.clock()
task.spawn(worker)
lI = lG.Info:AddRightGroupbox("Scripts", "package")
lI:AddLabel(kW("Included in this hub", lz), true)
lI:AddLabel(kW(lA, lC), true)
lE = lG.Info:AddRightGroupbox("Features", "list")
lE:AddLabel(kW("Auto Collect / Clean", lC), true)
lE:AddLabel(kW("Auto Buy Buttons", kv), true)
lE:AddLabel(kW("Auto Upgrade", lD), true)
lE:AddLabel(kW("Auto Rebirth", lz), true)
ly = lG.Info:AddRightGroupbox("Socials", "link")
ly:AddButton({ Text = "Discord", Func = ko })
ly:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = lG.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = ko })
ls = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
lq = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
ln = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
ll = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
lh = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
lc = "https://paypal.me/TheTruckerGOD"
k9 = "https://venmo.com/u/miserablemusic"
local lT = "#345d9d"
local lR = "#f7931a"
local lQ = "#627eea"
local lP = "#26a17b"
local lO = "#14f195"
lK = lG.Info:AddRightGroupbox("Donations", "heart")
lK:AddLabel(kW("All donations are optional but appreciated.", kv), true)
lK:AddLabel(kW("If you donate you get a special role, just PING after you donate.", lD), true)
lK:AddDivider()
lK:AddLabel(kW("LTC / Litecoin", lT), true)
lK:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
lK:AddLabel(kW("BTC / Bitcoin", lR), true)
lK:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
lK:AddLabel(kW("ETH / Ethereum", lQ), true)
lK:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
lK:AddLabel(kW("USDT", lP), true)
lK:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
lK:AddLabel(kW("Solana", lO), true)
lK:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
lK:AddLabel(kW("PayPal", "#0070ba"), true)
lK:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
lK:AddLabel(kW("Venmo", "#008cff"), true)
lK:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
lK:AddDivider()
lK:AddLabel(kW("Don't have any of the listed currencies but still wanna donate?", lz), true)
lK:AddLabel(kW("DM me and we'll work something out.", lC), true)
local FaqGroup = lG.Info:AddRightGroupbox("FAQ", "circle-help")
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
ld = fn317
kD = function()
    local AirportTycoonTrash = lr:FindFirstChild("AirportTycoonTrash")
    if not AirportTycoonTrash then
        return false
    end
    local nP = kZ()
    local nQ = "Trash_" .. nP .. "_"
    local nP_1 = 0
    for i, child in ipairs(AirportTycoonTrash:GetChildren()) do
        local nO_1 = child:IsA("Model") and string.find(child.Name, nQ, 1, true)
        if nO_1 then
            local CleanTrashPrompt = child:FindFirstChild("CleanTrashPrompt", true)
            local nO_2 = CleanTrashPrompt and CleanTrashPrompt:IsA("ProximityPrompt")
            if nO_2 then
                local Sphere = child:FindFirstChild("Sphere")
                local nR = Sphere and Sphere.Position
                local nO_4 = nR or child:GetPivot().Position
                kR(nO_4, 3)
                task.wait(0.8)
                local nO_5 = pcall(function()
                    fireproximityprompt(CleanTrashPrompt)
                end)
                if nO_5 then
                    nP_1 = nP_1 + 1
                end
                task.wait(1)
            end
        end
    end
    return nP_1 > 0
end
kS = function()
    local n0
    n0 = nil
    local nZ = lt()
    if not nZ then
        return
    end
    local n1 = {}
    local n3 = nZ.purchased or {}
    for i, v in ipairs(n3) do
        n1[v] = true
    end
    local n2_1 = tonumber(client:get({ "tycoon", "rebirths" })) or 0
    local getButtonDefinitions = KitUtils.getButtonDefinitions
    local n4 = nZ.kitName or TycoonConfig.DEFAULT_KIT
    local n5 = getButtonDefinitions(n4)
    local n2_3 = {}
    local n4_1 = {}
    local n6 = nZ.visibleButtons
    local ob = if n6 then 1 else 0
    local n9 = 1190 * ob + 2068 * (1 - ob)
    local oa = 2013 * ob + 502 * (1 - ob)
    if not ((n9 * 331 + oa * 2197 + n9 * oa) % 16777213 == 7211921) then
        n6 = n4_1
    end
    for i, v in ipairs(n6) do
        for i, v2 in ipairs(n5) do
            if v2.id == v and v2.terminalId then
                n2_3[v2.terminalId] = true
            end
        end
    end
    local n4_3 = {}
    for i, v in ipairs(n5) do
        if not n1[v.id] then
            local n5_1 = v.cost and v.cost > 0
            if n5_1 then
                n5_1 = (v.gamePassId or 0) == 0
            end
            if n5_1 then
                n5_1 = (v.devProductId or 0) == 0
            end
            if n5_1 then
                n5_1 = (v.starTokenCost or 0) == 0
            end
            if n5_1 then
                n5_1 = (v.rebirthsRequired or 0) <= n2_1
            end
            if n5_1 then
                if #n2_3 == 0 or n2_3[v.terminalId] then
                    local n5_3 = true
                    local n7 = v.requires or {}
                    for i, v in ipairs(n7) do
                        if not n1[v] then
                            n5_3 = false
                            break
                        end
                    end
                    if n5_3 then
                        table.insert(n4_3, { id = v.id, cost = v.cost })
                    end
                end
            end
        end
    end
    table.sort(n4_3, function(dh, di)
        return dh.cost > di.cost
    end)
    local n1_1 = kN()
    n0 = math.clamp(Options.buyBuffer.Value, 0, 100)
    local function n2_4(dn)
        return dn * (1 + n0 / 100)
    end
    local n_ = lu("Purchases")
    if not (n_ and n_.ev) then
        return
    end
    for i, v in ipairs(n4_3) do
        local oI = v
        if n1_1 >= n2_4(oI.cost) then
            pcall(function()
                n_.ev:FireServer("requestPurchase", nZ.plotId, oI.id)
            end)
            task.wait(0.6)
        end
    end
end
k6 = {
    upgradeSecurity = "SecurityLane",
    upgradeGate = "GateDesk",
    upgradeAmenity = "Amenity",
    upgradeRunway = "Runway"
}
k2 = function()
    local oQ_1
    local oP_1
    local oK = lt()
    if not oK then
        return
    end
    local oL = kN()
    local oJ = lu("Upgrades")
    if not (oJ and oJ.ev) then
        return
    end
    for k, v in pairs(k6) do
        if Toggles[k] and Toggles[k].Value then
            local oM_2 = kA(oK, v, 5)
            for i, v in ipairs(oM_2) do
                local o2 = v
                local oN
                local getUpgradeCost = UpgradeConfig.getUpgradeCost
                local oO = o2.upgradeLevel or 1
                oP_1, oQ_1 = pcall(getUpgradeCost, oO, nil, o2.modelId)
                if oP_1 then
                    oN = oQ_1
                end
                if oN and oN <= oL then
                    pcall(function()
                        oJ.ev:FireServer("requestUpgrade", oK.plotId, o2.modelId)
                    end)
                    task.wait(0.5)
                end
            end
        end
    end
end
k3 = function()
    local o4 = RebirthConfig.getRequirementStatus({ coins = kN(), tycoon = kz() })
    if not o4.ready then
        return false
    end
    local o3 = lu("Rebirths")
    if o3 and o3.ev then
        pcall(function()
            o3.ev:FireServer("requestRebirth")
        end)
        return true
    end
    return false
end
kJ = function()
    local pa = client:get({ "tycoon", "rebirth", "upgrades" })
    if type(pa) ~= "table" then
        pa = {}
    end
    local pb = kG()
    if pb <= 0 then
        return
    end
    local o9 = lu("RebirthUpgrades")
    if not (o9 and o9.ev) then
        return
    end
    local pd = RebirthUpgradeConfig.NODES or {}
    local pc_2 = {}
    for i, v in ipairs(pd) do
        if not pa[v.id] then
            local pd_1 = true
            local pf = v.requires or {}
            for i, v in ipairs(pf) do
                if not pa[v] then
                    pd_1 = false
                    break
                end
            end
            if pd_1 and v.cost <= pb then
                table.insert(pc_2, v)
            end
        end
    end
    table.sort(pc_2, function(ep, eq)
        return ep.cost < eq.cost
    end)
    for i, v in ipairs(pc_2) do
        local pz = v
        pcall(function()
            o9.ev:FireServer("requestPurchase", pz.id)
        end)
        task.wait(0.6)
    end
end
lL = function(ew, ex, ey)
    task.spawn(function()
        while true do
            local pA = kQ() and not Library.Unloaded
            if pA then
                if ew() then
                    pcall(ey)
                end
                task.wait(ex())
                continue
            end
            break
        end
    end)
end
if not OuroborosHubGroup and lx or not OuroborosHubGroup and not ld or (not ld and not ld or (not lx or connection5)) or not (not OuroborosHubGroup and lx or not OuroborosHubGroup and not ld or (not ld and not ld or (not lx or connection5))) then
    CollectingGroup = lG.Collecting:AddRightGroupbox("Collecting", "coins")
else
    lG = CollectingGroup.Collecting:AddRightGroupbox("Collecting", "coins")
end
CollectingGroup:AddToggle("autoIncome", { Text = "Auto Collect Income", Default = false })
CollectingGroup:AddSlider("incomeInterval", { Text = "Interval", Min = 0.1, Max = 10, Default = 2, Rounding = 1, Suffix = "s" })
local CleaningGroup = lG.Collecting:AddLeftGroupbox("Cleaning", "trash-2")
CleaningGroup:AddToggle("autoTrash", { Text = "Auto Clean Trash", Default = false })
CleaningGroup:AddSlider("trashInterval", { Text = "Interval", Min = 0.1, Max = 10, Default = 1.5, Rounding = 1, Suffix = "s" })
local BuyingGroup = lG.Purchasing:AddRightGroupbox("Buying", "shopping-bag")
BuyingGroup:AddToggle("autoBuy", { Text = "Auto Buy All Buttons", Default = false })
BuyingGroup:AddSlider("buyBuffer", { Text = "Money Buffer", Min = 0, Max = 20, Default = 10, Rounding = 1, Suffix = "%" })
BuyingGroup:AddSlider("buyInterval", { Text = "Interval", Min = 0.1, Max = 10, Default = 2, Rounding = 1, Suffix = "s" })
local AutoUpgradeGroup = lG.Upgrading:AddRightGroupbox("Auto Upgrade", "trending-up")
AutoUpgradeGroup:AddToggle("upgradeSecurity", { Text = "Upgrade Security Lanes", Default = false })
AutoUpgradeGroup:AddToggle("upgradeGate", { Text = "Upgrade Gate Desk", Default = false })
AutoUpgradeGroup:AddToggle("upgradeAmenity", { Text = "Upgrade Amenities", Default = false })
AutoUpgradeGroup:AddToggle("upgradeRunway", { Text = "Upgrade Runway", Default = false })
AutoUpgradeGroup:AddSlider("upgradeInterval", { Text = "Interval", Min = 0.1, Max = 10, Default = 3, Rounding = 1, Suffix = "s" })
local RebirthGroup = lG.Rebirth:AddRightGroupbox("Rebirth", "refresh-cw")
RebirthGroup:AddToggle("autoRebirth", { Text = "Auto Rebirth", Default = false })
RebirthGroup:AddSlider("rebirthInterval", { Text = "Interval", Min = 0.1, Max = 10, Default = 5, Rounding = 1, Suffix = "s" })
RebirthGroup:AddToggle("autoRebirthUpg", { Text = "Auto Buy Rebirth Upgrades", Default = false })
RebirthGroup:AddSlider("rebirthUpgInterval", { Text = "Upgrade Interval", Min = 0.1, Max = 10, Default = 4, Rounding = 1, Suffix = "s" })
lL(fn167, fn285, fns.fn24)
lL(fn176, fn572, fn109)
lL(fn543, fn398, fn315)
lL(fn143, fn592, fn53)
kr = 0
lL(fn278, fn703, fn375)
lL(fn347, fn350, fn827)
local MovementGroup = lG.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = lG.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
k5 = fn62
if false and (lI or not lI) or (false or lx or (lx or lE)) or not (false and (lI or not lI) or (false or lx or (lx or lE))) then
    kV = fn513
    connection = lB.Stepped:Connect(onStepped)
else
    lB = fn513
    kV = connection.Stepped:Connect(onStepped)
end
connection2 = UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
connection3 = lB.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn795)
Toggles.WalkSpeedEnabled:OnChanged(fn65)
lo = function(fQ)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not fQ)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not fQ
        end
    end)
    if not fQ then
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
Toggles.AntiGameplayPause:OnChanged(fn221)
task.spawn(antiGameplayPauseLoop)
Library:OnUnload(fn824)
lJ = lG.Settings:AddLeftGroupbox("Menu")
lJ:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
kL = tick()
kI = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local qC = v
        pcall(function()
            qC:Disable()
        end)
    end
end)
ks = fn741
connection4 = UserInputService.InputBegan:Connect(onInputBegan)
connection5 = UserInputService.InputChanged:Connect(onInputChanged)
lJ:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(fns.antiAfkLoop)
lJ:AddButton("Unload", onUnload)
Library:OnUnload(fn740)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
ThemeManager:ApplyToTab(lG.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/AirportTycoon")
lx = SaveManager:BuildConfigSection(lG.Settings)
SaveManager:LoadAutoloadConfig()
kl = fn85
k8 = fn576
kY = fn638
lv = function(gY)
    local rj
    rj = nil
    local rk = type(gY) ~= "table" or type(gY.idx) ~= "string" or type(gY.type) ~= "string"
    local ro = if rk then 1 else 0
    local rm = 3900 * ro + 1979 * (1 - ro)
    local rn = 3357 * ro + 171 * (1 - ro)
    if not ((rm * 2609 + rn * 140 + rm * rn) % 16777213 == 6960167) then
        rk = SaveManager.Ignore[gY.idx]
    end
    if rk then
        return false
    end
    rj = kl(gY.type, gY.idx)
    if not rj then
        return false
    end
    local rk_1 = pcall(function()
        if gY.type == "Input" then
            if type(gY.text) ~= "string" then
                return
            end
            rj:SetValue(gY.text)
        elseif gY.type == "ColorPicker" then
            rj:SetValueRGB(Color3.fromHex(gY.value), gY.transparency)
        elseif gY.type == "KeyPicker" then
            rj:SetValue({ gY.key, gY.mode, gY.modifiers })
            if gY.mode == "Toggle" and gY.toggled ~= nil then
                rj.Toggled = gY.toggled
                rj:Update()
            end
        else
            rj:SetValue(gY.value)
        end
    end)
    return rk_1
end
if (false and not CollectingGroup or (false or not CollectingGroup)) and ("Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp" and (not ld and CollectingGroup)) or not ((false and not CollectingGroup or (false or not CollectingGroup)) and ("Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp" and (not ld and CollectingGroup))) then
    lx:AddDivider()
    lx:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    lx:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
    lx:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
else
    lx:AddDivider()
    lx:AddInput("SaveManager_ImportSource", { AllowEmpty = true, Text = "Paste exported config here", Finished = true })
    lx:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
    lx:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
end
