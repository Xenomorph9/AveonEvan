local fns = {}
local s0_4, s0_6, s0_11, s0_17, GameInfoGroup, s0_25, s0_27, s0_29, s0_35, s0_39, s0_41
local k1
local Label
local l8
local k7
local Toggles
local lx
local me
local ld
local lW
local lD
local mk
local lj
local lJ
local mq
local connection2
local k6
local lP
local lw
local md
local lc
local lV
local lC
local mj
local li
local lI
local mp
local lo
local l6
local connection6
local lO
local mv
local lu
local mc
local lb
local lU
local lB
local mi
local lh
local l_
local lH
local RarityTiers
local lN
local mu
local lt
local HttpService
local DataUtil
local lT
local lA
local connection4
local Workspace
local lG
local mn
local connection5
local l4
local k3
local lM
local mt
local ls
local ma
local k9
local PlayerGui
local lz
local mg
local lf
local lY
local connection3
local ll
local l3
local k2
local lL
local MutationUtil
local l9
local k8
local lR
local ly
local VirtualUser
local connection
local lX
local lE
local UserInputService
function fns.fn8()
    return lW:GetAttribute("Launched") == true
end
function fns.fn15(ax, ay, az)
    return string.format("<b>%s</b> %s %s", ax, lj("-", "#5a6070"), lj(ay, az))
end
function fns.onCopyJoinScript_JobID()
    local eN = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, lC)
    lL(eN, "Copied join script to clipboard")
end
function fns.fn34(a8, a9)
    local nY = lI[a8]
    if nY == nil or nY.Value == nil then
        return a9
    end
    return nY.Value
end
function fns.fn57()
    local n7_1
    local n6_1
    n6_1, n7_1 = pcall(function()
        return DataUtil:GetPlayerData(lW)
    end)
    if n6_1 then
        return n7_1
    end
    return nil
end
function fns.onExportConfigToClipboard()
    local st_1
    local ss_1
    ss_1, st_1 = pcall(HttpService.JSONEncode, HttpService, lD())
    if not ss_1 then
        l9:Notify("Failed to encode the config")
        return
    end
    local ss_2 = setclipboard or toclipboard
    local ss_3 = type(ss_2) ~= "function"
    local sB = if ss_3 then 1 else 0
    local sz = 1096 * sB + 3779 * (1 - sB)
    local sA = 2743 * sB + 2523 * (1 - sB)
    if not ((sz * 3894 + sA * 2606 + sz * sA) % 16777213 == 14422410) then
        ss_3 = not pcall(ss_2, st_1)
    end
    if ss_3 then
        l9:Notify("Your executor does not support copying to the clipboard")
        return
    end
    l9:Notify("Config copied to clipboard", 6)
end
function fns.onInputChanged(gP)
    local UserInputType = gP.UserInputType
    local rH = UserInputType == Enum.UserInputType.MouseMovement
    local rL = if rH then 1 else 0
    local rJ = 2083 * rL + 1245 * (1 - rL)
    local rK = 1722 * rL + 1492 * (1 - rL)
    if not ((rJ * 656 + rK * 2702 + rJ * rK) % 16777213 == 9606218) then
        rH = UserInputType == Enum.UserInputType.Gamepad1
    end
    if rH then
        l8 = tick()
    end
end
function fns.fn76(ai, aj)
    return ai[1] < aj[1]
end
function fns.onCopyPayPalLink()
    lL(lR, "Copied PayPal link")
end
function fns.fn101()
    local rX = {}
    for i, v in ipairs({ Toggles, lI }) do
        for k, v in pairs(v) do
            local rY = type(v) == "table" and type(v.Type) == "string" and not lT.Ignore[k]
            if rY then
                local rY_1 = lX(k, v)
                if rY_1 then
                    rX[#rX + 1] = rY_1
                end
            end
        end
    end
    table.sort(rX, function(hi, hj)
        if hi.type ~= hj.type then
            return hi.type < hj.type
        end
        return hi.idx < hj.idx
    end)
    return { objects = rX }
end
function fns.fn122()
    local pz = {}
    local pA = mv()
    local pB = pA and pA.Gears and type(pA.Gears.Owned) == "table"
    if not pB then
        return pz
    end
    local pB_1 = lM()
    for k, v in pA.Gears.Owned do
        local pA_1 = type(k) == "string" and type(v) == "number" and v > 0 and not pB_1[k]
        if pA_1 then
            local pA_2 = lh(k)
            local pC = pA_2
            if pC then
                local pD = pA_2:GetAttribute("Fuel") or pA_2:GetAttribute("Speed")
                pC = pD
            end
            if pC then
                local pC_1 = tonumber(pA_2:GetAttribute("Price")) or 0
                local pC_2 = pC_1 > 0 and not k7(mn(k))
                if pC_2 then
                    local pN = 1
                    while pN <= v do
                        pz[#pz + 1] = k
                        pN += 1
                    end
                end
            end
        end
    end
    return pz
end
function fns.fn126()
    local n9 = mv()
    local oa = n9 and type(n9.Currency) == "table"
    if oa then
        local oa_1 = tonumber(n9.Currency.Currency1) or 0
        return oa_1
    end
    return 0
end
function fns.fn128()
    l9.ScreenGui.Parent = PlayerGui
end
function fns.fn171()
    local oi = lO()
    if not oi then
        return nil
    end
    local AllCartsModel = oi:FindFirstChild("AllCartsModel")
    if AllCartsModel and AllCartsModel.Name == "OldCart" then
        return nil
    end
    return AllCartsModel
end
function fns.onRenderStepped(gl)
    if l9.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local rp_1 = lo()
        if rp_1 then
            rp_1.WalkSpeed = lI.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local rp_3 = k9()
        local rq = lo()
        lz = Workspace.CurrentCamera or lz
        if rp_3 and rq and lz then
            rq.PlatformStand = true
            local rq_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                rq_1 = rq_1 + lz.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                rq_1 = rq_1 - lz.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                rq_1 = rq_1 - lz.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                rq_1 = rq_1 + lz.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                rq_1 = rq_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                rq_1 = rq_1 - Vector3.new(0, 1, 0)
            end
            rp_3.Velocity = Vector3.zero
            if rq_1.Magnitude > 0 then
                rp_3.CFrame = rp_3.CFrame + rq_1.Unit * lI.FlySpeed.Value * gl
            end
        end
    end
end
function fns.fn194(cD)
    local pb = lh(cD)
    if not pb then
        return nil
    end
    local pc = pb:GetAttribute("Rarity") or pb:GetAttribute("Tier")
    local pb_1 = tonumber(pc)
    if not pb_1 then
        return nil
    end
    local pc_1 = RarityTiers.Tiers[pb_1]
    local pb_2 = type(pc_1) == "table" and pc_1.Name
    return pb_2 or nil
end
function fns.fn199(cW)
    if type(cW) ~= "string" then
        return false
    end
    local px = mu("KeepRarities")
    return px[cW] == true
end
function fns.fn205()
    me(Toggles.AntiGameplayPause.Value)
end
function fns.fn211(ew)
    local DiscordGroup = ew:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = lu })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = lu })
end
function fns.fn235()
    lP()
    connection:Disconnect()
    connection2:Disconnect()
    connection3:Disconnect()
    connection4:Disconnect()
    connection5:Disconnect()
    connection6:Disconnect()
    me(false)
    local sX = lo()
    if sX then
        sX.PlatformStand = false
        sX.WalkSpeed = 16
    end
end
function fns.onJumpRequest()
    if l9.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local rk_1 = lo()
        if rk_1 then
            rk_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.fn244()
    local n0 = lw()
    local n1 = n0 and n0:FindFirstChildOfClass("Humanoid")
    return n1
end
function fns.fn265()
    local og_1
    local of_1
    of_1, og_1 = pcall(function()
        return k6:GetPlayerPlot(lW)
    end)
    if of_1 then
        return og_1
    end
    return nil
end
function fns.fn282(g4, g5)
    local Type = g5.Type
    if Type == "Toggle" then
        return { idx = g4, type = "Toggle", value = g5.Value == true }
    elseif Type == "Slider" then
        return { idx = g4, type = "Slider", value = tostring(g5.Value) }
    elseif Type == "Dropdown" then
        return { idx = g4, type = "Dropdown", multi = g5.Multi == true, value = g5.Value }
    elseif Type == "Input" then
        local rR = g5.Value or ""
        return { idx = g4, type = "Input", text = tostring(rR) }
    elseif Type == "ColorPicker" then
        return { idx = g4, type = "ColorPicker", value = g5.Value:ToHex(), transparency = g5.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = g4,
            type = "KeyPicker",
            mode = g5.Mode,
            key = g5.Value,
            modifiers = g5.Modifiers,
            toggled = g5.Toggled
        }
    else
        return nil
    end
end
local function onUnload()
    l9:Unload()
end
local function fn287()
    l9.ScreenGui.Parent = PlayerGui
end
local function worker4()
    while not l9.Unloaded do
        if ld("AutoBuyShop") then
            pcall(lE)
        end
        if ld("AutoBuyUpgrades") then
            pcall(mq)
        end
        if ld("AutoSpin") then
            pcall(mg)
        end
        if ld("AutoRebirth") then
            pcall(lG)
        end
        task.wait(0.6)
    end
end
local function fn310(gX, gY)
    local rN_1 = (gX == "Toggle" and Toggles or lI)[gY]
    local rM_2 = type(rN_1) == "table" and rN_1.Type == gX
    return rM_2 and rN_1 or nil
end
local function fn321()
    lL(lA, "Copied Discord invite to clipboard")
end
local function onCopySolanaAddress()
    lL(lU, "Copied Solana address")
end
local function fn381()
    local pX = mt()
    for k, v in pX do
        local pX_1 = l9.Unloaded or not ld("AutoSell")
        if pX_1 then
            return
        end
        k2:FireServer(v)
        task.wait(0.2)
    end
end
local function fn398(bN, ...)
    local oq = ll and ll.RemoteEvent
    if not oq then
        return
    end
    oq:FireServer(bN, ...)
end
local function fn400()
    local qy_1
    local qx_1
    local qw = false
    qx_1, qy_1 = pcall(function()
        return lc:CanWheelSpin(lW)
    end)
    if qx_1 then
        qw = qy_1 == true
    end
    if qw then
        lc.RemoteEvent:FireServer("WheelSpin")
    end
end
local function onImportConfigFromClipboardTex()
    local sH_1
    local sF = lI.SaveManager_ImportSource.Value or ""
    local sF_1
    local sG = tostring(sF):match("^%s*(.-)%s*$")
    if sG == "" then
        l9:Notify("Paste an exported config into the box first")
        return
    end
    sF_1, sH_1 = pcall(HttpService.JSONDecode, HttpService, sG)
    local sG_1 = not sF_1 or type(sH_1) ~= "table"
    local sL = if sG_1 then 1 else 0
    local sJ = 3410 * sL + 992 * (1 - sL)
    local sK = 2553 * sL + 1149 * (1 - sL)
    if not ((sJ * 4091 + sK * 236 + sJ * sK) % 16777213 == 6481335) then
        sG_1 = type(sH_1.objects) ~= "table"
    end
    if sG_1 then
        l9:Notify("That is not a valid exported config")
        return
    end
    local sF_2 = 0
    for i, v in ipairs(sH_1.objects) do
        if mp(v) then
            sF_2 += 1
        end
    end
    if sF_2 == 0 then
        l9:Notify("No settings in that config matched this script")
        return
    end
    lI.SaveManager_ImportSource:SetValue("")
    local sH_2 = sF_2 == 1 and "" or "s"
    l9:Notify(("Imported %d setting%s"):format(sF_2, sH_2), 6)
end
local function fn429()
    if not Toggles.WalkSpeedEnabled.Value then
        local ra = lo()
        if ra then
            ra.WalkSpeed = 16
        end
    end
end
local function onRscripts()
    lL(ly, "Copied Rscripts profile to clipboard")
end
local function fn450(cu)
    local o5_1
    if type(cu) ~= "string" then
        return nil
    end
    local o3 = MutationUtil
    local o3_1
    local o4 = cu
    if o3 then
        o3 = type(MutationUtil.GetBaseId) == "function"
    end
    if o3 then
        o3_1, o5_1 = pcall(MutationUtil.GetBaseId, MutationUtil, cu)
        local o6 = o3_1 and type(o5_1) == "string"
        if o6 then
            o4 = o5_1
        end
    end
    return mi:FindFirstChild(o4, true)
end
local function onStepped()
    if l9.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = lW.Character
        if Character then
            for i, descendant in Character:GetDescendants() do
                local rc_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if rc_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function onInputBegan()
    l8 = tick()
end
local function fn467(bU)
    if not bU then
        mc = nil
        l6 = nil
        return
    end
    if l6 ~= bU then
        l6 = bU
        local ov = tonumber(bU:GetAttribute("Speed")) or 50
        mc = ov
    end
end
local function onCopyBitcoinAddress()
    lL(l4, "Copied Bitcoin address")
end
local function worker3()
    while not l9.Unloaded do
        if lb() then
            pcall(mk)
        end
        task.wait(0.4)
    end
end
local function fn489()
    if not Toggles.Fly.Value then
        local q5 = lo()
        if q5 then
            q5.PlatformStand = false
        end
    end
end
local function onCopyVenmoLink()
    lL(lN, "Copied Venmo link")
end
local function fn526()
    local oW = (k3())
    local o_ = if oW then 1 else 0
    local oY = 1270 * o_ + 458 * (1 - o_)
    local oZ = 259 * o_ + 985 * (1 - o_)
    if not ((oY * 1342 + oZ * 3906 + oY * oZ) % 16777213 == 3044924) then
        oW = lW:GetAttribute("Reviving")
    end
    local o2 = if oW then 1 else 0
    local o0 = 2384 * o2 + 1316 * (1 - o2)
    local o1 = 3486 * o2 + 658 * (1 - o2)
    if not ((o0 * 111 + o1 * 543 + o0 * o1) % 16777213 == 10468146) then
        oW = lW:GetAttribute("Dying")
    end
    if oW then
        return
    end
    if os.clock() - lJ < 2 then
        return
    end
    lJ = os.clock()
    k1("Launch")
end
local function fn543(an, ao)
    if setclipboard then
        setclipboard(an)
    elseif toclipboard then
        toclipboard(an)
    end
    l9:Notify(ao)
end
local function fn555()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    l3 = tick()
end
local function fn568()
    local pe = {}
    local pf = mv()
    local pg = pf and pf.Carts and type(pf.Carts.Equipped) == "table"
    if not pg then
        return pe
    end
    for k, v in pf.Carts.Equipped do
        local pf_1 = type(v) == "table" and type(v.Gears) == "table"
        if pf_1 then
            for k, v in v.Gears do
                if type(v) == "string" then
                    pe[v] = true
                end
            end
        end
    end
    return pe
end
local function fn596()
    gethui = function()
        return PlayerGui
    end
end
local function fn601()
    if Toggles.AutoDrive.Value then
        if not k3() then
            lB()
        end
    else
        lP()
    end
end
local function onCopyEthereumAddress()
    lL(l_, "Copied Ethereum address")
end
local function fn655()
    local qI_1
    local qH_1
    if identifyexecutor then
        qI_1, qH_1 = identifyexecutor()
        local qJ = qI_1 ~= ""
        local qK = type(qI_1) == "string" and qJ
        if qK then
            local qJ_1 = type(qH_1) == "string" and qH_1 ~= "" and qI_1 .. " " .. qH_1
            md = qJ_1 or qI_1
        end
    end
end
local function antiAfkLoop()
    while not l9.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local sT = tick() - l8
            local sU = tick() - l3
            if sT >= 300 and sU >= 60 then
                pcall(lH)
            else
                if sT < 300 and sU >= 300 then
                    pcall(lH)
                end
            end
        end
    end
end
local function onHeartbeat()
    if l9.Unloaded then
        return
    end
    local qV = ld("AutoDrive") and k3()
    if qV then
        pcall(ls)
    end
end
local function fn692()
    return lW.Character
end
local function fn725()
    if not ld("AutoSell") then
        return false
    end
    local pT = mt()
    local pU = lV("AutoSellMode", lx)
    if pU == lt then
        local pU_1 = #pT
        local pV = tonumber(lV("AutoSellCount", 10)) or 10
        return pU_1 >= pV
    end
    return #pT > 0
end
local function fn726(a_)
    local nK = lI[a_]
    local nL = nK and nK.Value
    local nK_1 = {}
    if type(nL) ~= "table" then
        local nL_1 = nL ~= ""
        local nN = type(nL) == "string" and nL_1
        if nN then
            nK_1[nL] = true
        end
        return nK_1
    end
    for k, v in nL do
        local nL_2 = v == true
        local nM_1 = type(k) == "string" and nL_2
        if nM_1 then
            nK_1[k] = true
        elseif type(v) == "string" then
            nK_1[v] = true
        end
    end
    return nK_1
end
local function onCopyUSDTAddress()
    lL(lY, "Copied USDT address")
end
local function fn803(au, av)
    return string.format('<font color="%s">%s</font>', av, au)
end
local function fn856()
    local n3 = lw()
    local n4 = n3 and n3:FindFirstChild("HumanoidRootPart")
    return n4
end
local function fn867()
    local qC_1
    local qB_1
    local qA = false
    qB_1, qC_1 = pcall(function()
        return lf:CanRebirth(lW)
    end)
    if qB_1 then
        qA = qC_1 == true
    end
    if qA then
        lf.RemoteEvent:FireServer("Rebirth")
    end
end
local function worker2()
    while not l9.Unloaded do
        local qQ = ld("AutoDrive") and k3()
        if qQ then
            pcall(ls)
        end
        task.wait(0.15)
    end
end
local function onCopyLitecoinAddress()
    lL(ma, "Copied Litecoin address")
end
local function antiGameplayPauseLoop()
    while not l9.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            me(true)
        end
    end
end
local function fn970()
    if l6 and mc then
        pcall(function()
            l6:SetAttribute("Speed", mc)
        end)
    end
    mc = nil
    l6 = nil
end
local function worker()
    local qN_1
    while true do
        task.wait(1)
        if l9.Unloaded then
            break
        end
        local qM = math.floor(os.clock() - li)
        if qM < 60 then
            qN_1 = qM .. "s"
        elseif qM < 3600 then
            qN_1 = string.format("%dm %ds", qM // 60, qM % 60)
        else
            qN_1 = string.format("%dh %dm", qM // 3600, qM % 3600 // 60)
        end
        Label:SetText(k8("Session time", qN_1, mj))
    end
end
local function fn990(aU)
    if l9.Unloaded then
        return false
    end
    local nE = Toggles[aU]
    return nE ~= nil and nE.Value == true
end
k1 = nil
k2 = nil
k3 = nil
RarityTiers = nil
connection6 = nil
k6 = nil
k7 = nil
k8 = nil
k9 = nil
DataUtil = nil
lb = nil
lc = nil
ld = nil
connection = nil
lf = nil
lh = nil
li = nil
lj = nil
ll = nil
connection5 = nil
lo = nil
MutationUtil = nil
ls = nil
lt = nil
lu = nil
lw = nil
lx = nil
ly = nil
lz = nil
lA = nil
lB = nil
lC = nil
lD = nil
lE = nil
connection3 = nil
lG = nil
lH = nil
lI = nil
lJ = nil
Label = nil
lL = nil
lM = nil
lN = nil
lO = nil
lP = nil
local lg, lk, ln, GearUtil, lq
Toggles = nil
lR = nil
PlayerGui = nil
lT = nil
lU = nil
lV = nil
lW = nil
lX = nil
lY = nil
Workspace = nil
l_ = nil
l3 = nil
l4 = nil
l6 = nil
connection2 = nil
l8 = nil
l9 = nil
ma = nil
HttpService = nil
mc = nil
md = nil
me = nil
VirtualUser = nil
mg = nil
connection4 = nil
mi = nil
mj = nil
mk = nil
UserInputService = nil
mn = nil
mp = nil
mq = nil
mt = nil
mu = nil
mv = nil
local l0, CoreGui, l2, GuiService, GetPlayerUpgrades, mo, mr, ms
l0 = nil
CoreGui = nil
l2 = nil
GuiService = nil
GetPlayerUpgrades = nil
mo = nil
mr = nil
ms = nil
UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, lW, PlayerGui = nil, nil, nil, nil, nil, nil, nil, nil
local s0_20 = game:GetService("Players")
local s0_36 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
lW = s0_20.LocalPlayer
PlayerGui = lW:WaitForChild("PlayerGui")
if getgenv then
    getgenv().gethui = function()
        return PlayerGui
    end
end
s0_25, s0_6, MutationUtil, GearUtil, ll, lf, lc, DataUtil, k6, RarityTiers, k2, mr, mo, GetPlayerUpgrades, mi, s0_39, l9 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local s0_8 = 15
repeat
    s0_11 = (s0_8 * 7 + 6) % 9 + 1
    if s0_11 <= 5 then
        if s0_11 <= 3 then
            if s0_11 <= 2 then
                if s0_11 <= 1 then
                    if not ll and false and (MutationUtil or k2) or (not k2 or GetPlayerUpgrades) and (not MutationUtil or mr) or (MutationUtil and false or k2 and MutationUtil or (not k2 and not mr or not mr and s0_25)) or (s0_25 and GetPlayerUpgrades and (not ll and mr) or (false or k2) and (not GetPlayerUpgrades or ll)) and (MutationUtil or mr or not k2 and MutationUtil or (not mr or GetPlayerUpgrades) and (not GetPlayerUpgrades and s0_25)) or not (not ll and false and (MutationUtil or k2) or (not k2 or GetPlayerUpgrades) and (not MutationUtil or mr) or (MutationUtil and false or k2 and MutationUtil or (not k2 and not mr or not mr and s0_25)) or (s0_25 and GetPlayerUpgrades and (not ll and mr) or (false or k2) and (not GetPlayerUpgrades or ll)) and (MutationUtil or mr or not k2 and MutationUtil or (not mr or GetPlayerUpgrades) and (not GetPlayerUpgrades and s0_25))) then
                        s0_20 = s0_36:WaitForChild("Remotes")
                        k2 = s0_20:WaitForChild("SellItemEvent")
                        mr = s0_20:WaitForChild("BuyUpgrade")
                        mo = s0_20:WaitForChild("GetUpgradeStats")
                        GetPlayerUpgrades = s0_20:WaitForChild("GetPlayerUpgrades")
                    else
                        mo = GetPlayerUpgrades:WaitForChild("Remotes")
                        mo:WaitForChild("SellItemEvent")
                        k2 = mo:WaitForChild("BuyUpgrade")
                        s0_36 = mo:WaitForChild("GetUpgradeStats")
                        mr = mo:WaitForChild("GetPlayerUpgrades")
                    end
                    s0_8 = (s0_8 + 31) % 36
                else
                    if s0_8 * 82728897 + 2 + 5 >= s0_8 * 82728897 + 2 + 5 + 4 then
                        s0_36 = s0_39:WaitForChild("Assets"):WaitForChild("Gears")
                        l9 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                        mi = loadstring(game:HttpGet(l9 .. "Library.lua"))()
                    else
                        mi = s0_36:WaitForChild("Assets"):WaitForChild("Gears")
                        s0_39 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                        l9 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
                    end
                    s0_8 = (s0_8 + 22) % 36
                end
            else
                s0_41 = {
                    "dmqblcrv",
                    "aoiqnx",
                    "bzrubmea",
                    "malpqxlax",
                    "gtevz",
                    "dgzivwf",
                    "efwcwoxc",
                    "ukvdvy",
                    "lpwdxgzwbrh",
                    "qagwzhyvuhc",
                    "hhcikk"
                }
                local t2 = s0_8
                s0_27 = s0_41[t2 % 11 + 1]
                if s0_27:len() <= s0_27:reverse():rep(t2 % 3 + 2):len() then
                    pcall(fns.fn128)
                else
                    pcall(fns.fn128)
                end
                s0_8 = (s0_8 + 31) % 36
            end
        elseif s0_11 <= 4 then
            local tu = bit32.rrotate(bit32.bxor(bit32.lrotate(s0_8, 9), string.byte(tostring(ll))), 11)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(tu, 581827057), 1537715370), (bit32.bxor(bit32.band(tu, 3713140238), 3653187548))), 1537715370), 3653187548) == tu then
                pcall(fn596)
                s0_25 = "Build A Cart"
            else
                pcall(fn596)
                ll = "Build A Cart"
            end
            s0_8 = (s0_8 + 4) % 36
        else
            local tJ = bit32.rrotate(bit32.bxor(bit32.lrotate(s0_8, 20), string.byte(tostring(mr))), 14)
            if bit32.bxor(bit32.lrotate(bit32.bxor(tJ, 3978683819), 18), 2528097431) == bit32.lrotate(tJ, 18) then
                s0_6 = require(s0_36:WaitForChild("Framework"))
            else
                s0_36 = require(s0_6:WaitForChild("Framework"))
            end
            s0_8 = (s0_8 + 22) % 36
        end
    elseif s0_11 <= 7 then
        if s0_11 <= 6 then
            s0_41 = (vector.create((s0_8 * 4 + 5) % 11 + 1, (s0_8 * 10 + 10) % 13 + 1, (s0_8 * 6 + 15) % 17 + 1))
            local tB = vector.floor(s0_41) + vector.ceil(s0_41 * -1)
            if vector.dot(tB, tB) == 3 then
                s0_6 = MutationUtil.Modules.MutationUtil
            else
                MutationUtil = s0_6.Modules.MutationUtil
            end
            s0_8 = (s0_8 + 4) % 36
        else
            s0_41 = {
                "jwsscmhjvgzm",
                "fgs",
                "vfnahwldqcty",
                "upnfetbresa",
                "uiniktxynq",
                "ntjndmf",
                "qvcdto",
                "bjymfv",
                "emabthimo",
                "alqeimr",
                "cpurkstkg",
                "ufjqc",
                "nsznk",
                "bocn",
                "ocop",
                "wwtk"
            }
            if s0_41[(s0_8 * 75 + 2) % 16 + 1] <= s0_41[(s0_8 * 75 + 2) % 16 + 1] then
                GearUtil = s0_6.Modules.GearUtil
                ll = s0_6.Modules.LaunchUtil
                lf = s0_6.Modules.RebirthUtil
            else
                s0_6 = GearUtil.Modules.GearUtil
                lf = GearUtil.Modules.LaunchUtil
                ll = GearUtil.Modules.RebirthUtil
            end
            s0_8 = (s0_8 + 31) % 36
        end
    elseif s0_11 <= 8 then
        s0_11 = (vector.create((s0_8 * 3 + 5) % 11 + 1, (s0_8 * 6 + 6) % 13 + 1, (s0_8 * 9 + 4) % 17 + 1))
        s0_41 = (vector.create((s0_8 * 2 + 7) % 11 + 1, (s0_8 * 10 + 11) % 13 + 1, (s0_8 * 4 + 1) % 17 + 1))
        local tx = vector.cross(s0_11, s0_41)
        local ty = vector.dot(s0_11, s0_41)
        if vector.dot(tx, tx) + ty * ty == vector.dot(s0_11, s0_11) * vector.dot(s0_41, s0_41) + 5 then
            s0_6 = DataUtil.Modules.SpinsUtil
            lc = DataUtil.Modules.DataUtil
        else
            lc = s0_6.Modules.SpinsUtil
            DataUtil = s0_6.Modules.DataUtil
        end
        s0_8 = (s0_8 + 31) % 36
    else
        if s0_8 * 118912725 + 11 + 4 >= s0_8 * 118912725 + 11 + 4 + 6 then
            s0_6 = RarityTiers.Modules.PlotsUtil
            k6 = RarityTiers.Modules.RarityTiers
        else
            k6 = s0_6.Modules.PlotsUtil
            RarityTiers = s0_6.Modules.RarityTiers
        end
        s0_8 = (s0_8 + 22) % 36
    end
until (s0_8 * 11 + 28) % 36 == 31
if setthreadidentity then
    setthreadidentity(8)
end
s0_6, lT, Toggles, lI, lA, ly, lx, lt, lq, ln, lg = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
s0_20 = 8
repeat
    s0_36 = (s0_20 * 2 + 1) % 3 + 1
    if s0_36 <= 2 then
        if s0_36 <= 1 then
            if s0_20 * 4987803 + 11 + 3 >= s0_20 * 4987803 + 11 + 3 + 1 then
                ly = "https://discord.gg/ehKVq7pf7v"
                lA = "https://rscripts.net/@Ouroboros"
                lt = "Always"
                lx = "Count"
            else
                lA = "https://discord.gg/ehKVq7pf7v"
                ly = "https://rscripts.net/@Ouroboros"
                lx = "Always"
                lt = "Count"
            end
            s0_20 = (s0_20 + 17) % 24
        else
            s0_36 = (vector.create((s0_20 * 7 + 7) % 11 + 1, (s0_20 * 5 + 10) % 13 + 1, (s0_20 * 3 + 10) % 17 + 1))
            s0_8 = (vector.create((s0_20 * 3 + 2) % 11 + 1, (s0_20 * 2 + 9) % 13 + 1, (s0_20 * 3 + 4) % 17 + 1))
            s0_11 = (vector.create((s0_20 * 5 + 4) % 11 + 1, (s0_20 * 7 + 1) % 13 + 1, (s0_20 * 8 + 4) % 17 + 1))
            if vector.dot(vector.cross(s0_36, s0_8), s0_11) == vector.dot(vector.cross(s0_8, s0_11), s0_36) then
                lq = { "Distance Per Currency", "Currency Multiplier", "Currency" }
                ln = {
                    ["Distance Per Currency"] = "DPC",
                    ["Currency Multiplier"] = "CurrencyMulti",
                    Currency = "CurrencyBuff"
                }
                lg = {}
            else
                lg = { "Currency", "Currency Multiplier", "Distance Per Currency" }
                lq = {
                    ["Distance Per Currency"] = "DPC",
                    ["Currency Multiplier"] = "CurrencyMulti",
                    Currency = "CurrencyBuff"
                }
                ln = {}
            end
            s0_20 = (s0_20 + 23) % 24
        end
    else
        if (s0_20 * 2 + 5) * 7 % 3 == ((s0_20 * 2 + 5) * 7 + 5) % 3 then
            lI = loadstring(game:HttpGet(lT .. "addons/ThemeManager.lua"))()
            l9 = loadstring(game:HttpGet(lT .. "addons/SaveManager.lua"))()
            s0_39 = Toggles.Toggles
            s0_6 = Toggles.Options
        else
            s0_6 = loadstring(game:HttpGet(s0_39 .. "addons/ThemeManager.lua"))()
            lT = loadstring(game:HttpGet(s0_39 .. "addons/SaveManager.lua"))()
            Toggles = l9.Toggles
            lI = l9.Options
        end
        s0_20 = (s0_20 + 20) % 24
    end
until (s0_20 * 13 + 12) % 24 == 8
s0_36 = {}
for i, child in mi:GetChildren() do
    for i, child in child:GetChildren() do
        s0_20 = not s0_36[child.Name]
        if s0_20 ~= false then
            s0_20 = typeof(child:GetAttribute("Price")) == "number"
        end
        if s0_20 then
            s0_36[child.Name] = true
            lg[#lg + 1] = child.Name
        end
    end
end
table.sort(lg)
s0_20 = {}
s0_36 = RarityTiers.Tiers
if type(s0_36) == "table" then
    s0_8 = {}
    for k, v in s0_36 do
        s0_36 = tonumber(k)
        s0_39 = s0_36 and type(v) == "table" and type(v.Name) == "string"
        if s0_39 then
            s0_8[#s0_8 + 1] = { s0_36, v.Name }
        end
    end
    s0_39 = 3
    repeat
        s0_36 = {
            "ozsfwckqaf",
            "lshuiyqad",
            "jgmkj",
            "sqtg",
            "thfwjesme",
            "gyyldgyjnqy",
            "uwxhcp",
            "rsuvyes",
            "tkdqjtmf"
        }
        if s0_36[(s0_39 * 36 + 77) % 9 + 1] <= s0_36[(s0_39 * 36 + 77) % 9 + 1] then
            table.sort(s0_8, fns.fn76)
        else
            table.sort(s0_8, fns.fn76)
        end
        s0_39 = (s0_39 + 2) % 8
    until (s0_39 * 3 + 5) % 8 == 4
    for k, v in s0_8 do
        s0_20[#s0_20 + 1] = v[2]
    end
end
if #s0_20 == 0 then
    s0_36 = 2
    repeat
        s0_8 = {
            "nfvltei",
            "nclssikkipk",
            "rsii",
            "hcuwxzkuggmy",
            "xynrs",
            "hkobrnkisq",
            "uqu",
            "zocgbkpteyq",
            "chreqekwk"
        }
        if s0_8[(s0_36 * 90 + 41) % 9 + 1] < s0_8[(s0_36 * 90 + 41) % 9 + 1] then
            s0_20 = {
                "Divine",
                "Common",
                "Rare",
                "Mythic",
                "Transcendent",
                "Infinite",
                "Legendary",
                "Pinnacle",
                "Secret",
                "Eternal",
                "Epic",
                "Heavenly"
            }
        else
            s0_20 = {
                "Common",
                "Rare",
                "Epic",
                "Legendary",
                "Mythic",
                "Divine",
                "Secret",
                "Heavenly",
                "Pinnacle",
                "Transcendent",
                "Eternal",
                "Infinite"
            }
        end
        s0_36 = (s0_36 + 0) % 8
    until (s0_36 * 3 + 1) % 8 == 7
end
mj, ma, l4, l_, lY, lU, lR, lN, s0_29, s0_27, mc, l6, lJ, lL, lu, lj, k8, ld, mu, lV, lw, lo, k9, mv, l0, lO, lk, k3, k1, l2, lP, ls, lB, lh, mn, lM, k7, mt, lb, mk, lE, mq, mg, lG = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
lL = fn543
lu = fn321
lj = fn803
k8 = fns.fn15
local s0_33 = "#7fd47f"
local s0_3 = "#6ec1ff"
mj = "#e8a34d"
if (mg or false) and (mv or not mv) and ((not mv or mg) and (not lP and not s0_27)) and ((not mv or lP) and (s0_27 and not lP) or not mg and not s0_27 and (not lP or not s0_27)) or (s0_29 and not s0_27 or (mv or s0_29)) and ((not lP or s0_29) and (s0_29 or not lP)) and (not mg and not lP and (not mv and not lP) and (not mg and not mv and (not lP or s0_27))) or not ((mg or false) and (mv or not mv) and ((not mv or mg) and (not lP and not s0_27)) and ((not mv or lP) and (s0_27 and not lP) or not mg and not s0_27 and (not lP or not s0_27)) or (s0_29 and not s0_27 or (mv or s0_29)) and ((not lP or s0_29) and (s0_29 or not lP)) and (not mg and not lP and (not mv and not lP) and (not mg and not mv and (not lP or s0_27)))) then
    s0_17 = "#8b93a3"
    ma = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
    l4 = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
else
    l4 = "#8b93a3"
    s0_17 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
    ma = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
end
l_ = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
lY = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
lU = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
lR = "https://paypal.me/TheTruckerGOD"
lN = "https://venmo.com/u/miserablemusic"
local s0_32 = "#345d9d"
local s0_1 = "#f7931a"
local s0_16 = "#627eea"
s0_29 = "#26a17b"
local s0_44 = "#14f195"
local s0_13 = "#0070ba"
s0_27 = "#008cff"
if (not mn or false) and (mn and not mv) and (not mv or s0_27 or (not mg or not mn)) or not ((not mn or false) and (mn and not mv) and (not mv or s0_27 or (not mg or not mn))) then
    ld = fn990
    mu = fn726
    lV = fns.fn34
    lw = fn692
else
    lw = fn990
    lV = fn726
    ld = fns.fn34
    mu = fn692
end
lo = fns.fn244
k9 = fn856
mv = fns.fn57
l0 = fns.fn126
lO = fns.fn265
lk = fns.fn171
k3 = fns.fn8
k1 = fn398
mc = nil
l6 = nil
l2 = fn467
lP = fn970
ls = function()
    local oz
    oz = nil
    oz = lk()
    local oB = oz and k3()
    if not oB then
        return
    end
    l2(oz)
    local oB_1 = tonumber(lV("DriveSpeed", 4)) or 4
    local oC_1
    local max = math.max
    local oD = mc or 50
    local oD_1
    local oE = max(oD * oB_1, 20)
    oz:SetAttribute("Speed", oE)
    local VehicleSeat = oz:FindFirstChildWhichIsA("VehicleSeat", true)
    if VehicleSeat then
        VehicleSeat.Throttle = 1
        pcall(function()
            VehicleSeat.ThrottleFloat = 1
        end)
    end
    local oB_3 = {}
    oC_1, oD_1 = pcall(function()
        return oz:QueryDescendants("LinearVelocity")
    end)
    local oF = oC_1 and type(oD_1) == "table"
    if oF then
        oB_3 = oD_1
    else
        for i, descendant in oz:GetDescendants() do
            if descendant:IsA("LinearVelocity") then
                oB_3[#oB_3 + 1] = descendant
            end
        end
    end
    for k, v in oB_3 do
        v.VectorVelocity = Vector3.new(0, 0, -oE * 1.25)
    end
end
if (false or not lM) and (lM or false) or mq and mq and (not lM and not lM) or not ((false or not lM) and (lM or false) or mq and mq and (not lM and not lM)) then
    lJ = 0
    lB = fn526
    lh = fn450
    mn = fns.fn194
else
    lh = 0
    lJ = fn526
    mn = fn450
    lB = fns.fn194
end
lM = fn568
k7 = fns.fn199
mt = fns.fn122
lb = fn725
if ((lV or k8) and (not s0_17 or l4) and (not k8 and not k8 or (l4 or false)) or (not k8 or lV) and (s0_17 or false) and (k8 or s0_13 or (not lV or k8))) and not ((lV or k8) and (not s0_17 or l4) and (not k8 and not k8 or (l4 or false)) or (not k8 or lV) and (s0_17 or false) and (k8 or s0_13 or (not lV or k8))) then
    s0_32 = fn381
else
    mk = fn381
end
lE = function()
    local p7_1
    local p6_1
    local p4 = mu("AutoBuyShopItems")
    if next(p4) == nil then
        return
    end
    for k, v in lg do
        local qe = v
        if p4[qe] then
            local p5 = false
            p6_1, p7_1 = pcall(function()
                return GearUtil:CanBuyGear(lW, qe)
            end)
            if p6_1 then
                p5 = p7_1 == true
            end
            if p5 then
                GearUtil.RemoteEvent:FireServer("BuyGear", qe)
                task.wait(0.2)
            end
        end
    end
end
mq = function()
    local ql_1
    local qk_1
    local qj_1, qj_4
    local qh = mu("AutoBuyUpgrade")
    local qi
    qj_1, qk_1 = pcall(function()
        return GetPlayerUpgrades:InvokeServer()
    end)
    if qj_1 then
        qi = qk_1
    end
    if type(qi) ~= "table" then
        return
    end
    for k, v in lq do
        local qf, qg
        if qh[v] then
            qf = ln[v]
            local qj_2 = qi[qf]
            local qk_2 = type(qj_2) == "table" and #qj_2
            qg = qk_2 or 0
            local qk_3 = nil
            qj_4, ql_1 = pcall(function()
                return mo:InvokeServer(qf, qg)
            end)
            if qj_4 then
                qk_3 = ql_1
            end
            local qj_5 = type(qk_3) == "table" and type(qk_3.Cost) == "number" and l0() >= qk_3.Cost
            if qj_5 then
                pcall(function()
                    mr:InvokeServer(qf)
                end)
                task.wait(0.25)
            end
        end
    end
end
mg = fn400
lG = fn867
s0_8 = l9:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = lA, Copyable = true }, "|", s0_25 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
pcall(fn287)
s0_41 = {
    Info = s0_8:AddTab("Info", "info"),
    Main = s0_8:AddTab("Main", "gauge"),
    Player = s0_8:AddTab("Player", "person-standing"),
    Settings = s0_8:AddTab("Settings", "settings")
}
s0_11 = fns.fn211
for k, v in s0_41 do
    s0_11(v)
end
md, GameInfoGroup, Label, lC, s0_39 = nil, nil, nil, nil, nil
s0_8 = 4
repeat
    s0_11 = (s0_8 * 2 + 2) % 3 + 1
    if s0_11 <= 2 then
        if s0_11 <= 1 then
            if s0_8 * 67132555 + 9 + 3 >= s0_8 * 67132555 + 9 + 3 + 1 then
                lC = #s0_39 > 18
            else
                s0_39 = #lC > 18
            end
            s0_8 = (s0_8 + 2) % 24
        else
            s0_11 = (vector.create((s0_8 * 6 + 3) % 11 + 1, (s0_8 * 9 + 2) % 13 + 1, (s0_8 * 4 + 5) % 17 + 1))
            s0_4 = (vector.create((s0_8 * 2 + 4) % 11 + 1, (s0_8 * 11 + 13) % 13 + 1, (s0_8 * 2 + 15) % 17 + 1))
            s0_35 = (vector.create((s0_8 * 6 + 7) % 11 + 1, (s0_8 * 9 + 3) % 13 + 1, (s0_8 * 9 + 3) % 17 + 1))
            if vector.dot(vector.cross(s0_11, s0_4), s0_35) == vector.dot(vector.cross(s0_4, s0_35), s0_11) + 3 then
                s0_41 = "Unknown"
                pcall(fn655)
                s0_3 = GameInfoGroup.Info:AddLeftGroupbox("Account", "circle-user")
                s0_3:AddLabel(mj("User", Label.Name, lj), true)
                s0_3:AddLabel(mj("Status", "Keyless", lj), true)
                s0_3:AddLabel(mj("Executor", "Unknown", lj), true)
                s0_36 = GameInfoGroup.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                s0_36:AddLabel(k8(s0_33 .. " [" .. tostring(game.PlaceId) .. "]", s0_25), true)
                s0_36:AddLabel(mj("Place ID", tostring(game.PlaceId), s0_25), true)
                lW = s0_36:AddLabel(mj("Session time", "0s", md), true)
            else
                md = "Unknown"
                pcall(fn655)
                s0_36 = s0_41.Info:AddLeftGroupbox("Account", "circle-user")
                s0_36:AddLabel(k8("User", lW.Name, s0_33), true)
                s0_36:AddLabel(k8("Status", "Keyless", s0_33), true)
                s0_36:AddLabel(k8("Executor", md, s0_33), true)
                GameInfoGroup = s0_41.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                GameInfoGroup:AddLabel(lj(s0_25 .. " [" .. tostring(game.PlaceId) .. "]", s0_3), true)
                GameInfoGroup:AddLabel(k8("Place ID", tostring(game.PlaceId), s0_3), true)
                Label = GameInfoGroup:AddLabel(k8("Session time", "0s", mj), true)
            end
            s0_8 = (s0_8 + 5) % 24
        end
    else
        s0_11 = {
            "urhrqzsn",
            "szzlhic",
            "ctztzcf",
            "uyiwkcvge",
            "xqluiug",
            "ers",
            "xuuztra",
            "wily",
            "rgigxvgw",
            "brzla",
            "moh",
            "ptdrohwas"
        }
        local t6 = s0_8
        s0_4 = s0_11[t6 % 12 + 1]
        if s0_4:len() <= s0_4:gsub("(.)", "%1%1", t6 % 3 % 2 + 1):len() then
            lC = tostring(game.JobId)
        else
            md = tostring(game.JobId)
        end
        s0_8 = (s0_8 + 14) % 24
    end
until (s0_8 * 11 + 5) % 24 == 16
if s0_39 then
    s0_36 = 0
    repeat
        s0_8 = {
            "lpynsoqtwq",
            "qabjusjww",
            "digaqal",
            "enkykrn",
            "qxziwilekt",
            "fxlrr",
            "dcgfw",
            "icugwfgn",
            "idvkqshsvi",
            "jssparyaofh",
            "qjwnvmlg"
        }
        local tq = s0_36
        s0_11 = s0_8[tq % 11 + 1]
        if s0_11:len() >= s0_11:reverse():rep(tq % 3 + 2):len() then
            lC = string.sub(s0_39, 1, 18) .. "..."
        else
            s0_39 = string.sub(lC, 1, 18) .. "..."
        end
        s0_36 = (s0_36 + 3) % 8
    until (s0_36 * 3 + 6) % 8 == 7
end
s0_36 = s0_39 or lC
li, s0_11, connection, connection2, connection3, lz, connection4, l8, l3, connection5, connection6, s0_8, me, lH, ms, lX, lD, mp = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
s0_35 = s0_36
GameInfoGroup:AddLabel(k8("Server", s0_35, s0_17), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
li = os.clock()
task.spawn(worker)
local ScriptsGroup = s0_41.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(lj("Included in this hub", s0_17), true)
ScriptsGroup:AddLabel(lj(s0_25, s0_3), true)
local FeaturesGroup = s0_41.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(lj("Auto Farm", s0_3), true)
FeaturesGroup:AddLabel(lj("Auto Sell", mj), true)
FeaturesGroup:AddLabel(lj("Auto Buy", s0_17), true)
local SocialsGroup = s0_41.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = lu })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = s0_41.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = lu })
local DonationsGroup = s0_41.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(lj("All donations are optional but appreciated.", mj), true)
DonationsGroup:AddLabel(lj("If you donate you get a special role, just PING after you donate.", s0_33), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(lj("LTC / Litecoin", s0_32), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(lj("BTC / Bitcoin", s0_1), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(lj("ETH / Ethereum", s0_16), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(lj("USDT", s0_29), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(lj("Solana", s0_44), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(lj("PayPal", s0_13), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = fns.onCopyPayPalLink })
DonationsGroup:AddLabel(lj("Venmo", s0_27), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(lj("Don't have any of the listed currencies but still wanna donate?", s0_17), true)
DonationsGroup:AddLabel(lj("DM me and we'll work something out.", s0_3), true)
s0_4 = s0_41.Info:AddRightGroupbox("FAQ", "circle-help")
if ((not lz or lz) and (s0_8 and not s0_8) or not lz and not lz and (lz and s0_8) or (not lz and not lz and (not lz or s0_8) or (not s0_8 or s0_8) and (s0_8 and not lz))) and not ((not lz or lz) and (s0_8 and not s0_8) or not lz and not lz and (lz and s0_8) or (not lz and not lz and (not lz or s0_8) or (not s0_8 or s0_8) and (s0_8 and not lz))) then
    s0_11:AddLabel("Where do I get a good config?", true)
    s0_11:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
    s0_11:AddLabel("How do I import / export configs?", true)
    s0_11:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
    s0_11:AddLabel("How do I report bugs?", true)
    s0_11:AddLabel("Join the Discord and post it in the bugs channel.", true)
    s0_11:AddLabel("How do I make suggestions?", true)
    s0_11:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
    s0_11:AddLabel("How do I get help or updates?", true)
    s0_11:AddLabel("Join the Discord, updates and support are posted there first.", true)
    s0_41 = s0_4.Main:AddLeftGroupbox("Drive", "gauge")
else
    s0_4:AddLabel("Where do I get a good config?", true)
    s0_4:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
    s0_4:AddLabel("How do I import / export configs?", true)
    s0_4:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
    s0_4:AddLabel("How do I report bugs?", true)
    s0_4:AddLabel("Join the Discord and post it in the bugs channel.", true)
    s0_4:AddLabel("How do I make suggestions?", true)
    s0_4:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
    s0_4:AddLabel("How do I get help or updates?", true)
    s0_4:AddLabel("Join the Discord, updates and support are posted there first.", true)
    s0_11 = s0_41.Main:AddLeftGroupbox("Drive", "gauge")
end
s0_11:AddToggle("AutoDrive", { Text = "Auto Drive", Default = false })
s0_11:AddSlider("DriveSpeed", { Text = "Drive Speed", Default = 4, Min = 1, Max = 100, Rounding = 1 })
s0_39 = s0_41.Main:AddLeftGroupbox("Sell", "circle-dollar-sign")
s0_39:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
s0_39:AddDropdown("AutoSellMode", { Text = "When", Values = { lx, lt }, Default = lx })
s0_39:AddSlider("AutoSellCount", { Text = "Item Count", Default = 10, Min = 1, Max = 200, Rounding = 0 })
s0_39:AddDropdown("KeepRarities", {
    Text = "Keep Rarities",
    Values = s0_20,
    Default = {},
    Multi = true,
    Expandable = true,
    ExpandColumns = 2
})
local ShopGroup = s0_41.Main:AddRightGroupbox("Shop", "shopping-bag")
ShopGroup:AddToggle("AutoBuyShop", { Text = "Auto Buy Shop", Default = false })
ShopGroup:AddDropdown("AutoBuyShopItems", { Text = "Items", Values = lg, Default = {}, Multi = true, Expandable = true, ExpandColumns = 2 })
local UpgradesGroup = s0_41.Main:AddRightGroupbox("Upgrades", "trending-up")
UpgradesGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Cart Upgrades", Default = false })
UpgradesGroup:AddDropdown("AutoBuyUpgrade", {
    Text = "Upgrade",
    Values = lq,
    Default = { "Distance Per Currency", "Currency Multiplier", "Currency" },
    Multi = true,
    Expandable = true,
    ExpandColumns = 1
})
local MiscGroup = s0_41.Main:AddRightGroupbox("Misc", "sparkles")
MiscGroup:AddToggle("AutoSpin", { Text = "Auto Spin Wheel", Default = false })
MiscGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local MovementGroup = s0_41.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = s0_41.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
Toggles.AutoDrive:OnChanged(fn601)
task.spawn(worker2)
connection = RunService.Heartbeat:Connect(onHeartbeat)
task.spawn(worker3)
task.spawn(worker4)
me = function(fO)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not fO)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not fO
        end
    end)
    if not fO then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(lW, "GameplayPaused", false)
        else
            lW.GameplayPaused = false
        end
    end)
end
Toggles.AntiGameplayPause:OnChanged(fns.fn205)
Toggles.Fly:OnChanged(fn489)
Toggles.WalkSpeedEnabled:OnChanged(fn429)
connection2 = RunService.Stepped:Connect(onStepped)
connection3 = UserInputService.JumpRequest:Connect(fns.onJumpRequest)
lz = Workspace.CurrentCamera
connection4 = RunService.RenderStepped:Connect(fns.onRenderStepped)
local MenuGroup = s0_41.Settings:AddLeftGroupbox("Menu", "menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
l9.ToggleKeybind = lI.MenuKeybind
l8 = tick()
l3 = tick()
pcall(function()
    for k, v in getconnections(lW.Idled) do
        local rD = v
        pcall(function()
            rD:Disable()
        end)
    end
end)
lH = fn555
connection5 = UserInputService.InputBegan:Connect(onInputBegan)
connection6 = UserInputService.InputChanged:Connect(fns.onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
s0_6:SetLibrary(l9)
s0_6:SetFolder("OuroborosHub")
s0_6:SaveDefault("Evil Hello Kitty")
s0_6:ApplyToTab(s0_41.Settings)
s0_6:LoadDefault()
lT:SetLibrary(l9)
lT:IgnoreThemeSettings()
lT:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
lT:SetFolder("OuroborosHub/BuildACart")
s0_8 = lT:BuildConfigSection(s0_41.Settings)
ms = fn310
lX = fns.fn282
lD = fns.fn101
mp = function(hl)
    local sj
    sj = nil
    local sk = type(hl) ~= "table" or type(hl.idx) ~= "string" or type(hl.type) ~= "string"
    local so = if sk then 1 else 0
    local sm = 2588 * so + 3008 * (1 - so)
    local sn = 3592 * so + 14 * (1 - so)
    if not ((sm * 1 + sn * 1816 + sm * sn) % 16777213 == 15821756) then
        sk = lT.Ignore[hl.idx]
    end
    if sk then
        return false
    end
    sj = ms(hl.type, hl.idx)
    if not sj then
        return false
    end
    local sk_1 = pcall(function()
        if hl.type == "Input" then
            if type(hl.text) ~= "string" then
                return
            end
            sj:SetValue(hl.text)
        elseif hl.type == "ColorPicker" then
            sj:SetValueRGB(Color3.fromHex(hl.value), hl.transparency)
        elseif hl.type == "KeyPicker" then
            sj:SetValue({ hl.key, hl.mode, hl.modifiers })
            if hl.mode == "Toggle" and hl.toggled ~= nil then
                sj.Toggled = hl.toggled
                sj:Update()
            end
        else
            sj:SetValue(hl.value)
        end
    end)
    return sk_1
end
s0_8:AddDivider()
s0_8:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
s0_8:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
s0_8:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
lT:LoadAutoloadConfig()
task.spawn(antiGameplayPauseLoop)
task.spawn(antiAfkLoop)
l9:OnUnload(fns.fn235)
l9:Notify("Build A Cart loaded")
