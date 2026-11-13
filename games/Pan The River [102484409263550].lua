local fns = {}
local se_6, se_8, se_14, se_17, se_21
local k6
local lO
local kO
local lv
local lc
local UserInputService
local kU
local CollectionService
local li
local l_
local k_
local lH
local PlayerGui
local k5
local kN
local lu
local lT
local kT
local lA
local lh
local lZ
local kZ
local ln
local k4
local VirtualUser
local kM
local LocalPlayer
local lS
local kS
local lz
local lg
local connection
local lF
local connection5
local l3
local k3
local lL
local ls
local PanConfig
local lR
local Library
local Toggles
local kX
local lE
local ll
local SaveManager
local UpgradeConfig
local lK
local lr
local PanningConfig
local lQ
local kQ
local Workspace
local le
local lW
local connection4
local lk
local l1
local k1
local HttpService
local lq
local connection3
local Label
local kP
local lw
local ld
local Options
local kV
local lj
local connection2
local AutoPanLuck
local lI
local lp
function fns.fn5()
    local oN_1
    local oK = { [PanConfig.DefaultPan] = true }
    local Inventory = LocalPlayer:FindFirstChild("Inventory")
    local oM = Inventory and Inventory:FindFirstChild(PanConfig.InventoryCategory)
    local oM_1
    local oL_1 = oM
    if oM then
        oM = oL_1:IsA("StringValue")
    end
    if oM then
        oM = oL_1.Value ~= ""
    end
    if oM then
        oM_1, oN_1 = pcall(HttpService.JSONDecode, HttpService, oL_1.Value)
        local oL_2 = oM_1 and type(oN_1) == "table"
        if oL_2 then
            for k, v in oN_1 do
                local oL_3 = type(k) == "string" and tonumber(v) and tonumber(v) > 0
                if oL_3 then
                    oK[k] = true
                elseif type(v) == "string" then
                    oK[v] = true
                end
            end
        end
    end
    return oK
end
function fns.fn14()
    local oC = {}
    for k, v in lI() do
        if not lc(v:GetAttribute("Rarity")) then
            oC[#oC + 1] = v
        end
    end
    return oC
end
function fns.onCopyJoinScript_JobID()
    local eK = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, lL)
    lg(eK, "Copied join script to clipboard")
end
function fns.onCopyBitcoinAddress()
    lg(lv, "Copied Bitcoin address")
end
function fns.fn57()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local nv = leaderstats and leaderstats:FindFirstChild("Cash")
    if nv then
        local nv_1 = (tonumber(nv.Value))
        local nA_1 = if nv_1 then 1 else 0
        local ny_1 = 2671 * nA_1 + 1511 * (1 - nA_1)
        local nz_1 = 461 * nA_1 + 1734 * (1 - nA_1)
        if not ((ny_1 * 727 + nz_1 * 285 + ny_1 * nz_1) % 16777213 == 3304533) then
            nv_1 = 0
        end
        return nv_1
    end
    local PrivateStats = LocalPlayer:FindFirstChild("PrivateStats")
    local nv_2 = PrivateStats and PrivateStats:FindFirstChild("Currency")
    local nu_3 = nv_2
    if nv_2 then
        local nw = (tonumber(nu_3.Value))
        local nA_2 = if nw then 1 else 0
        local ny_2 = 2098 * nA_2 + 1407 * (1 - nA_2)
        local nz_2 = 2145 * nA_2 + 2493 * (1 - nA_2)
        if not ((ny_2 * 50 + nz_2 * 2625 + ny_2 * nz_2) % 16777213 == 10235735) then
            nw = 0
        end
        nv_2 = nw
    end
    return nv_2 or 0
end
local function onRscripts()
    lg(lK, "Copied Rscripts profile to clipboard")
end
local function fn87()
    local pz = lQ("AutoBuyUpgrade")
    local pA = lR()
    local Upgrades = LocalPlayer:FindFirstChild("Upgrades")
    if not Upgrades then
        return
    end
    for k, v in lz do
        if pz[v] then
            local pC = lu[v]
            local pD = Upgrades:FindFirstChild(pC)
            if pD then
                local pE = UpgradeConfig.GetLevel(pC, pD.Value)
                if not UpgradeConfig.IsMaxed(pC, pE) then
                    local pD_1 = UpgradeConfig.GetCost(pC, pE)
                    if pA >= pD_1 then
                        lS("UpgradeService", "Purchase", pC)
                        task.wait(0.15)
                        pA = lR()
                    end
                end
            end
        end
    end
end
local function fn95()
    local Equipment = LocalPlayer:FindFirstChild("Equipment")
    local oW = Equipment and Equipment:FindFirstChild(PanConfig.EquipmentKey)
    local oV_1 = oW
    if oW then
        oW = oV_1:IsA("StringValue")
    end
    if oW then
        oW = oV_1.Value ~= ""
    end
    if oW then
        return oV_1.Value
    end
    return PanConfig.DefaultPan
end
local function onRenderStepped(gg)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local qO_1 = kV()
        if qO_1 then
            qO_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local qO_3 = kN()
        local qP = kV()
        local qQ = Workspace.CurrentCamera
        local qV = if qQ then 1 else 0
        local qT = 3074 * qV + 3906 * (1 - qV)
        local qU = 3678 * qV + 3630 * (1 - qV)
        if not ((qT * 3698 + qU * 1439 + qT * qU) % 16777213 == 11189253) then
            qQ = lW
        end
        lW = qQ
        if qO_3 and qP and lW then
            qP.PlatformStand = true
            local qP_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                qP_1 = qP_1 + lW.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                qP_1 = qP_1 - lW.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                qP_1 = qP_1 - lW.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                qP_1 = qP_1 + lW.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                qP_1 = qP_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                qP_1 = qP_1 - Vector3.new(0, 1, 0)
            end
            qO_3.Velocity = Vector3.zero
            if qP_1.Magnitude > 0 then
                qO_3.CFrame = qO_3.CFrame + qP_1.Unit * Options.FlySpeed.Value * gg
            end
        end
    end
end
local function fn105(aE)
    local m7 = Options[aE]
    local m8 = m7 and m7.Value
    local m7_1 = {}
    if type(m8) ~= "table" then
        local m8_1 = m8 ~= ""
        local na = type(m8) == "string" and m8_1
        if na then
            m7_1[m8] = true
        end
        return m7_1
    end
    for k, v in m8 do
        local m8_2 = v == true
        local m9_1 = type(k) == "string" and m8_2
        if m9_1 then
            m7_1[k] = true
        elseif type(v) == "string" then
            m7_1[v] = true
        end
    end
    return m7_1
end
local function onInputBegan()
    k_ = tick()
end
local function fn159(cr)
    local ct = lQ("KeepRarities")
    return ct[cr] == true
end
local function fn168()
    Library.ScreenGui.Parent = PlayerGui
end
local function fn175()
    local py = if not kP("AutoSell") then 1 else 0
    if py == 1 then
        return false
    end
    local ps = k1()
    local pt = lk("AutoSellMode", lH)
    if pt == lE then
        local pt_1 = #ps
        local pu = tonumber(lk("AutoSellCount", 10)) or 10
        return pt_1 >= pu
    end
    return #ps > 0
end
local function fn199()
    lg(lO, "Copied Discord invite to clipboard")
end
local function worker4()
    while not Library.Unloaded do
        if kP("AutoBuyUpgrades") then
            pcall(lT)
        end
        if kP("AutoBuyPans") then
            pcall(kZ)
        end
        task.wait(0.6)
    end
end
local function fn203(ab, ac, ad)
    return string.format("<b>%s</b> %s %s", ab, kT("-", "#5a6070"), kT(ac, ad))
end
local function onImportConfigFromClipboardTex()
    local rR_1
    local rP = Options.SaveManager_ImportSource.Value or ""
    local rP_1
    local rQ = tostring(rP):match("^%s*(.-)%s*$")
    if rQ == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    rP_1, rR_1 = pcall(HttpService.JSONDecode, HttpService, rQ)
    local rQ_1 = not rP_1 or type(rR_1) ~= "table" or type(rR_1.objects) ~= "table"
    if rQ_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local rP_2 = 0
    for i, v in ipairs(rR_1.objects) do
        if ld(v) then
            rP_2 += 1
        end
    end
    if rP_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local rR_2 = rP_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(rP_2, rR_2), 6)
end
local function fn244()
    kQ(false)
    local r9 = ll("PanningController")
    if r9 then
        r9._autoPan = false
    end
    connection:Disconnect()
    connection2:Disconnect()
    connection3:Disconnect()
    connection4:Disconnect()
    connection5:Disconnect()
    k6(false)
    local r9_1 = kV()
    if r9_1 then
        r9_1.PlatformStand = false
        r9_1.WalkSpeed = 16
    end
end
local function worker2()
    while not Library.Unloaded do
        if lp then
            task.wait(0.15)
            continue
        end
        if kP("AutoPerfectPan") then
            pcall(lw, ll("PanningController"))
        end
        task.wait(0.2)
    end
end
local function fn260(aN, aO)
    local nl = Options[aN]
    if nl == nil or nl.Value == nil then
        return aO
    end
    return nl.Value
end
local function fn270()
    for k, v in CollectionService:GetTagged("LiveProximityPrompt") do
        local nW_1 = v:IsA("ProximityPrompt") and v:GetAttribute("Action") == "Sell"
        if nW_1 then
            return v
        end
    end
    local Game = Workspace:FindFirstChild("Game")
    local nX = Game and Game:FindFirstChild("ScriptingProperties")
    local nW_3 = nX
    if nX then
        nX = nW_3:FindFirstChild("_nodes")
    end
    local nW_4 = nX
    if nX then
        nX = nW_4:FindFirstChild("_shops")
    end
    local nW_5 = nX
    if nX then
        nX = nW_5:FindFirstChild("Sell")
    end
    local nW_6 = nX
    if nX then
        nX = nW_6:FindFirstChildWhichIsA("ProximityPrompt", true)
    end
    return nX
end
local function fn276()
    local rl = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local rm = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if rm then
                local rm_1 = kO(k, v)
                if rm_1 then
                    rl[#rl + 1] = rm_1
                end
            end
        end
    end
    table.sort(rl, function(hd, he)
        if hd.type ~= he.type then
            return hd.type < he.type
        end
        return hd.idx < he.idx
    end)
    return { objects = rl }
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local qJ_1 = kV()
        if qJ_1 then
            qJ_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn304()
    kQ(Toggles.AutoPerfectPan.Value)
    if not Toggles.AutoPerfectPan.Value then
        local qc = ll("PanningController")
        if qc then
            qc._autoPan = false
        end
    end
end
local function fn305()
    k6(Toggles.AntiGameplayPause.Value)
end
local function fn334()
    Library.ScreenGui.Parent = PlayerGui
end
local function fn353()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    kU = tick()
end
local function fn358(R, S)
    if setclipboard then
        setclipboard(R)
    elseif toclipboard then
        toclipboard(R)
    end
    Library:Notify(S)
end
local function onCopyVenmoLink()
    lg(lh, "Copied Venmo link")
end
local function fn390(cd)
    local op = kN()
    if not (op and cd) then
        return false
    end
    op.AssemblyLinearVelocity = Vector3.zero
    op.CFrame = cd
    return true
end
local function onCopyEthereumAddress()
    lg(ls, "Copied Ethereum address")
end
local function worker3()
    while not Library.Unloaded do
        local qi = kP("AutoSell") and kX()
        if qi and not lp then
            lp = true
            local qi_1 = ll("PanningController")
            pcall(l_, qi_1)
            pcall(k5)
            lp = false
        end
        task.wait(0.35)
    end
end
local function fn441(gS, gT)
    local q8_1 = (gS == "Toggle" and Toggles or Options)[gT]
    local q7_2 = type(q8_1) == "table" and q8_1.Type == gS
    return q7_2 and q8_1 or nil
end
local function fn466()
    local no = k4()
    local np = no and no:FindFirstChildOfClass("Humanoid")
    return np
end
local function onCopySolanaAddress()
    lg(lj, "Copied Solana address")
end
local function onExportConfigToClipboard()
    local rJ_1
    local rI_1
    rI_1, rJ_1 = pcall(HttpService.JSONEncode, HttpService, lZ())
    if not rI_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local rI_2 = setclipboard or toclipboard
    local rI_3 = type(rI_2) ~= "function"
    local rO = if rI_3 then 1 else 0
    local rM = 3688 * rO + 1618 * (1 - rO)
    local rN = 3455 * rO + 327 * (1 - rO)
    if not ((rM * 1598 + rN * 2292 + rM * rN) % 16777213 == 9777111) then
        rI_3 = not pcall(rI_2, rJ_1)
    end
    if rI_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function onCopyPayPalLink()
    lg(li, "Copied PayPal link")
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in Character:GetDescendants() do
                local qy_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if qy_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn521(bR)
    if not bR then
        return nil
    end
    local Parent = bR.Parent
    local n8 = Parent and Parent:IsA("BasePart")
    if n8 then
        return Parent.CFrame + Vector3.new(0, 3, 0)
    end
    local n8_1 = Parent and Parent:IsA("Model")
    if n8_1 then
        return Parent:GetPivot() * CFrame.new(0, 3, 0)
    end
    return nil
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            k6(true)
        end
    end
end
local function worker()
    local qa_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local p9 = math.floor(os.clock() - lr)
        if p9 < 60 then
            qa_1 = p9 .. "s"
        elseif p9 < 3600 then
            qa_1 = string.format("%dm %ds", p9 // 60, p9 % 60)
        else
            qa_1 = string.format("%dh %dm", p9 // 3600, p9 % 3600 // 60)
        end
        Label:SetText(kM("Session time", qa_1, lF))
    end
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local r2 = tick() - k_
            local r3 = tick() - kU
            if r2 >= 300 and r3 >= 60 then
                pcall(l1)
            else
                if r2 < 300 and r3 >= 300 then
                    pcall(l1)
                end
            end
        end
    end
end
local function fn570()
    gethui = function()
        return PlayerGui
    end
end
local function fn618()
    local pQ_1
    local pP_2
    local pM = l3()
    local pN = lR()
    local Name
    for k, v in lq do
        if v.Price > 0 and not pM[v.Name] and pN >= v.Price then
            pP_2, pQ_1 = lS("PanShopService", "Purchase", v.Name)
            local pR = pP_2 and type(pQ_1) == "table" and pQ_1.status == "Success"
            if pR then
                Name = v.Name
                pM[v.Name] = true
                break
            end
        end
    end
    local pP_3 = Name and le() ~= Name
    if pP_3 then
        lS("PanShopService", "Equip", Name)
    end
end
local function onCopyLitecoinAddress()
    lg(lA, "Copied Litecoin address")
end
local function fn636(et)
    local DiscordGroup = et:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = k3 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = k3 })
end
local function onCopyUSDTAddress()
    lg(ln, "Copied USDT address")
end
local function fn653(ay)
    if Library.Unloaded then
        return false
    end
    local m4 = Toggles[ay]
    return m4 ~= nil and m4.Value == true
end
local function fn670()
    local p2_1
    local p1_1
    if identifyexecutor then
        p2_1, p1_1 = identifyexecutor()
        local p3 = p2_1 ~= ""
        local p4 = type(p2_1) == "string" and p3
        if p4 then
            local p3_1 = type(p1_1) == "string" and p1_1 ~= "" and p2_1 .. " " .. p1_1
            kS = p3_1 or p2_1
        end
    end
end
local function fn673()
    local oi_1
    local od = PanningConfig.ResolveRegion()
    if not od then
        return nil
    end
    local oe = od.Size / 2
    local of = PanningConfig.EdgeAxis == "Z"
    local oh = PanningConfig.EdgeSign < 0 and -1 or 1
    local EdgeInset = PanningConfig.EdgeInset
    if of then
        oi_1 = Vector3.new(0, 0, oh * math.max(0, oe.Z - EdgeInset))
    else
        oi_1 = Vector3.new(oh * math.max(0, oe.X - EdgeInset), 0, 0)
    end
    local oe_1 = oi_1
    local of_1 = od.CFrame:PointToWorldSpace(oe_1)
    local oe_2 = RaycastParams.new()
    oe_2.FilterType = Enum.RaycastFilterType.Exclude
    local og_2 = k4()
    oe_2.FilterDescendantsInstances = { og_2, od }
    local od_1 = Workspace:Raycast(of_1 + Vector3.new(0, 20, 0), Vector3.new(0, -80, 0), oe_2)
    local od_2 = od_1 and od_1.Position or of_1
    return CFrame.new(od_2 + Vector3.new(0, 3, 0))
end
local function fn678()
    return LocalPlayer.Character
end
local function fn700()
    if not Toggles.Fly.Value then
        local qr = kV()
        if qr then
            qr.PlatformStand = false
        end
    end
end
local function fn813()
    local nr = k4()
    local ns = nr and nr:FindFirstChild("HumanoidRootPart")
    return ns
end
local function onInputChanged(gK)
    local UserInputType = gK.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        k_ = tick()
    end
end
local function fn852(Y, Z)
    return string.format('<font color="%s">%s</font>', Z, Y)
end
local function fn889(cX)
    if cX then
        PanningConfig.AutoPanLuck = PanningConfig.LuckMax
    else
        PanningConfig.AutoPanLuck = AutoPanLuck
    end
end
local function fn917(g_, g0)
    local Type = g0.Type
    if Type == "Toggle" then
        return { idx = g_, type = "Toggle", value = g0.Value == true }
    elseif Type == "Slider" then
        return { idx = g_, type = "Slider", value = tostring(g0.Value) }
    elseif Type == "Dropdown" then
        return { idx = g_, type = "Dropdown", multi = g0.Multi == true, value = g0.Value }
    elseif Type == "Input" then
        local rf = g0.Value
        local rj = if rf then 1 else 0
        local rh = 248 * rj + 3225 * (1 - rj)
        local ri = 3785 * rj + 3260 * (1 - rj)
        if not ((rh * 2414 + ri * 3033 + rh * ri) % 16777213 == 13017257) then
            rf = ""
        end
        return { idx = g_, type = "Input", text = tostring(rf) }
    elseif Type == "ColorPicker" then
        return { idx = g_, type = "ColorPicker", value = g0.Value:ToHex(), transparency = g0.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = g_,
            type = "KeyPicker",
            mode = g0.Mode,
            key = g0.Value,
            modifiers = g0.Modifiers,
            toggled = g0.Toggled
        }
    else
        return nil
    end
end
local function onUnload()
    Library:Unload()
end
local function fn987()
    if not Toggles.WalkSpeedEnabled.Value then
        local qt = kV()
        if qt then
            qt.WalkSpeed = 16
        end
    end
end
kM = nil
kN = nil
kO = nil
kP = nil
kQ = nil
Library = nil
kS = nil
kT = nil
kU = nil
kV = nil
kX = nil
connection = nil
kZ = nil
k_ = nil
AutoPanLuck = nil
k1 = nil
UpgradeConfig = nil
k3 = nil
k4 = nil
k5 = nil
k6 = nil
connection3 = nil
PanningConfig = nil
PanConfig = nil
lc = nil
ld = nil
le = nil
lg = nil
lh = nil
li = nil
lj = nil
lk = nil
ll = nil
connection5 = nil
ln = nil
PlayerGui = nil
lp = nil
lq = nil
lr = nil
ls = nil
LocalPlayer = nil
lu = nil
lv = nil
lw = nil
Workspace = nil
local kW, la, Knit, lf, ly
lz = nil
lA = nil
CollectionService = nil
connection4 = nil
lE = nil
lF = nil
lH = nil
lI = nil
HttpService = nil
lK = nil
lL = nil
VirtualUser = nil
lO = nil
Label = nil
lQ = nil
lR = nil
lS = nil
lT = nil
UserInputService = nil
Options = nil
lW = nil
Toggles = nil
lZ = nil
l_ = nil
connection2 = nil
l1 = nil
SaveManager = nil
l3 = nil
local CoreGui, GuiService, lN, lY
CoreGui = nil
GuiService = nil
lN = nil
lY = nil
local GameInfoGroup, mo, mp, mq
UserInputService, VirtualUser, HttpService, GuiService, CoreGui, CollectionService, Workspace, LocalPlayer, PlayerGui = nil, nil, nil, nil, nil, nil, nil, nil, nil
local se_7 = game:GetService("Players")
local se_1 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
CollectionService = game:GetService("CollectionService")
Workspace = game:GetService("Workspace")
LocalPlayer = se_7.LocalPlayer
PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
if getgenv then
    getgenv().gethui = function()
        return PlayerGui
    end
end
Knit, PanConfig, PanningConfig, UpgradeConfig, AutoPanLuck, Library = nil, nil, nil, nil, nil, nil
pcall(fn570)
local se_18 = "Pan The River"
Knit = require(se_1:WaitForChild("Packages"):WaitForChild("Knit"))
PanConfig = require(se_1:WaitForChild("Modules"):WaitForChild("Shops"):WaitForChild("PanConfig"))
PanningConfig = require(se_1:WaitForChild("Modules"):WaitForChild("Panning"):WaitForChild("PanningConfig"))
UpgradeConfig = require(se_1:WaitForChild("Modules"):WaitForChild("Upgrades"):WaitForChild("UpgradeConfig"))
AutoPanLuck = PanningConfig.AutoPanLuck
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
pcall(fn168)
if setthreadidentity then
    setthreadidentity(8)
end
SaveManager, Toggles, Options, lO, lK, lH, lE, lz, lu, lq = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
lO = "https://discord.gg/ehKVq7pf7v"
lK = "https://rscripts.net/@Ouroboros"
lH = "Always"
lE = "Count"
local Rarities = PanningConfig.Rarities
lz = { "Luck Multiplier", "Value Multiplier" }
lu = { ["Luck Multiplier"] = "LuckMultiplier", ["Value Multiplier"] = "ValueMultiplier" }
lq = PanConfig.GetAllPans()
se_1 = {}
for k, v in lq do
    se_1[#se_1 + 1] = v.Name
end
lF, lA, lv, ls, ln, lj, li, lh, lp, lg, k3, kT, kM, kP, lQ, lk, k4, kV, kN, lR, ll, kW, lS, la, lN, ly, lY, lI, lc, k1, l3, le, kQ, l_, lw, k5, kX, lT, kZ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
lg = fn358
k3 = fn199
kT = fn852
kM = fn203
local mm = "#7fd47f"
local ml = "#6ec1ff"
lF = "#e8a34d"
local se_5 = "#8b93a3"
lA = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
lv = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
ls = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
ln = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
lj = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
li = "https://paypal.me/TheTruckerGOD"
lh = "https://venmo.com/u/miserablemusic"
local se_13 = "#345d9d"
local se_2 = "#f7931a"
if (l3 and not l3 or (lp or lp)) and (lp or not l3 or (l3 or l3)) or not ((l3 and not l3 or (lp or lp)) and (lp or not l3 or (l3 or l3))) then
    se_17 = "#627eea"
    se_8 = "#26a17b"
    se_21 = "#14f195"
    se_14 = "#0070ba"
    se_6 = "#008cff"
else
    se_21 = "#627eea"
    se_17 = "#26a17b"
    se_6 = "#14f195"
    se_8 = "#0070ba"
    se_14 = "#008cff"
end
kP = fn653
lQ = fn105
lk = fn260
k4 = fn678
kV = fn466
kN = fn813
lR = fns.fn57
ll = function(bb)
    local nC_1
    local nB_1
    nB_1, nC_1 = pcall(function()
        return Knit.GetController(bb)
    end)
    local nD = nB_1 and type(nC_1) == "table"
    if nD then
        return nC_1
    end
    return nil
end
kW = function(bj)
    local nG_1
    local nF_1
    nF_1, nG_1 = pcall(function()
        return Knit.GetService(bj)
    end)
    local nH = nF_1 and type(nG_1) == "table"
    if nH then
        return nG_1
    end
    return nil
end
lS = function(br, bs, ...)
    local nN
    local nO
    local nM
    nM = nil
    nN = nil
    nO = nil
    local nR_1
    local nQ_1
    local nP_1
    nO = kW(br)
    if not nO then
        return false, nil
    end
    nM = nO[bs]
    if type(nM) ~= "function" then
        return false, nil
    end
    nN = table.pack(...)
    nP_1, nQ_1, nR_1 = pcall(function()
        return nM(nO, table.unpack(nN, 1, nN.n)):await()
    end)
    if not nP_1 then
        return false, nil
    end
    return nQ_1, nR_1
end
la = fn270
lN = fn521
ly = fn673
lY = fn390
lI = function()
    local ch
    ch = {}
    local function ci(cj)
        if not cj then
            return
        end
        for i, child in cj:GetChildren() do
            local ou = child:IsA("Tool") and typeof(child:GetAttribute("Rarity")) == "string"
            if ou then
                ch[#ch + 1] = child
            end
        end
    end
    ci(LocalPlayer:FindFirstChild("Backpack"))
    ci(k4())
    return ch
end
lc = fn159
k1 = fns.fn14
l3 = fns.fn5
le = fn95
kQ = fn889
l_ = function(c0)
    if not c0 then
        return
    end
    c0._autoPan = false
    if not (c0._inStance or c0._panning or c0._inRegion or c0._entering) then
        return
    end
    pcall(function()
        c0:_requestExit()
    end)
    local oZ_1 = os.clock() + 8
    while true do
        local o_ = os.clock() < oZ_1 and not Library.Unloaded
        if o_ then
            if not c0._inStance and not c0._panning and not c0._exiting and not c0._entering then
                break
            end
            task.wait(0.1)
            continue
        end
        break
    end
end
lw = function(c8)
    if not c8 then
        return
    end
    kQ(true)
    if c8._active then
        c8._fill = 1
        pcall(function()
            c8:_collect()
        end)
        return
    end
    if c8._panning or c8._entering or c8._exiting then
        if c8._inStance then
            c8._autoPan = true
        end
        return
    end
    if not c8._inRegion then
        lY(ly())
        return
    end
    if not c8._inStance then
        pcall(function()
            c8:_enterStance()
        end)
        return
    end
    c8._autoPan = true
    pcall(function()
        c8:_beginPanCycle()
    end)
end
k5 = function()
    local pd = k1()
    local pd_2
    if #pd == 0 then
        return false
    end
    local pe = la()
    if not pe then
        return false
    end
    local pf = lQ("KeepRarities")
    local pf_1
    local pg = next(pf) ~= nil
    local pg_1, pg_2
    lY(lN(pe))
    task.wait(0.2)
    if not pg then
        pf_1, pg_1 = lS("SellService", "SellAll", pe)
        local ph_1 = pf_1 and type(pg_1) == "table" and pg_1.status == "Success"
        return ph_1
    end
    local pf_2 = false
    local pc = kV()
    for k, v in pd do
        local pr = v
        local pd_1 = Library.Unloaded or not kP("AutoSell")
        if pd_1 then
            break
        elseif not not pr.Parent then
            if pc then
                pcall(function()
                    pc:EquipTool(pr)
                end)
                task.wait(0.12)
            end
            pd_2, pg_2 = lS("SellService", "SellEquipped", pe)
            local ph_2 = pd_2 and type(pg_2) == "table" and pg_2.status == "Success"
            if ph_2 then
                pf_2 = true
            end
            task.wait(0.08)
        end
    end
    return pf_2
end
kX = fn175
lT = fn87
kZ = fn618
lp = false
local se_15 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = lO, Copyable = true }, "|", se_18 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
pcall(fn334)
local se_19 = {
    Info = se_15:AddTab("Info", "info"),
    Main = se_15:AddTab("Main", "pickaxe"),
    Player = se_15:AddTab("Player", "person-standing"),
    Settings = se_15:AddTab("Settings", "settings")
}
local se_20 = fn636
for k, v in se_19 do
    se_20(v)
end
kS, se_15, GameInfoGroup, Label, lL, se_1 = nil, nil, nil, nil, nil, nil
se_7 = 5
repeat
    se_20 = (se_7 * 2 + 0) % 3 + 1
    if se_20 <= 2 then
        if se_20 <= 1 then
            local s3 = bit32.rrotate(bit32.bxor(bit32.lrotate(se_7, 8), string.byte(tostring(kS))), 25)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(s3, 869263585), 2420423429), (bit32.bxor(bit32.band(s3, 3425703710), 1413670397))), 2420423429), 1413670397) == s3 then
                se_1 = #lL > 18
            else
                lL = #se_1 > 18
            end
            se_7 = (se_7 + 2) % 24
        else
            se_20 = (vector.create((se_7 * 7 + 6) % 11 + 1, (se_7 * 5 + 2) % 13 + 1, (se_7 * 14 + 6) % 17 + 1))
            mo = (vector.create((se_7 * 4 + 6) % 11 + 1, (se_7 * 11 + 3) % 13 + 1, (se_7 * 6 + 4) % 17 + 1))
            mp = (vector.create((se_7 * 7 + 7) % 11 + 1, (se_7 * 4 + 13) % 13 + 1, (se_7 * 10 + 9) % 17 + 1))
            mq = (vector.create((se_7 * 6 + 3) % 11 + 1, (se_7 * 3 + 6) % 13 + 1, (se_7 * 7 + 12) % 17 + 1))
            if vector.dot(vector.cross(se_20, mo), (vector.cross(mp, mq))) == vector.dot(se_20, mp) * vector.dot(mo, mq) - vector.dot(se_20, mq) * vector.dot(mo, mp) then
                kS = "Unknown"
                pcall(fn670)
                se_15 = se_19.Info:AddLeftGroupbox("Account", "circle-user")
                se_15:AddLabel(kM("User", LocalPlayer.Name, mm), true)
                se_15:AddLabel(kM("Status", "Keyless", mm), true)
                se_15:AddLabel(kM("Executor", kS, mm), true)
                GameInfoGroup = se_19.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                GameInfoGroup:AddLabel(kT(se_18 .. " [" .. tostring(game.PlaceId) .. "]", ml), true)
                GameInfoGroup:AddLabel(kM("Place ID", tostring(game.PlaceId), ml), true)
                Label = GameInfoGroup:AddLabel(kM("Session time", "0s", lF), true)
            else
                mm = "Unknown"
                pcall(fn670)
                ml = GameInfoGroup.Info:AddLeftGroupbox("Account", "circle-user")
                ml:AddLabel(LocalPlayer("User", kS.Name, kM), true)
                ml:AddLabel(LocalPlayer("Status", "Keyless", kM), true)
                ml:AddLabel(LocalPlayer("Executor", "Unknown", kM), true)
                kT = GameInfoGroup.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                kT:AddLabel(se_19(lF .. " [" .. tostring(game.PlaceId) .. "]", Label), true)
                kT:AddLabel(LocalPlayer("Place ID", tostring(game.PlaceId), Label), true)
                se_18 = kT:AddLabel(LocalPlayer("Session time", "0s", se_15), true)
            end
            se_7 = (se_7 + 11) % 24
        end
    else
        se_20 = { "vknuyemookj", "xcpnqyn", "trwikt", "pvquykivspzo", "trscxnk", "gjj", "sepbcebqyu", "jkqo" }
        if se_20[(se_7 * 5 + 91) % 8 + 1] < se_20[(se_7 * 5 + 91) % 8 + 1] then
            se_1 = tostring(game.JobId)
        else
            lL = tostring(game.JobId)
        end
        se_7 = (se_7 + 23) % 24
    end
until (se_7 * 1 + 5) % 24 == 22
if se_1 then
    se_7 = 0
    repeat
        se_15 = {
            "oiqvncytjbyb",
            "yjlnxx",
            "sqq",
            "hfet",
            "muuquqbzcdr",
            "ctxrd",
            "yjvysc",
            "yyhfv",
            "xgj",
            "opymtplnw",
            "ctvpu",
            "kaybhqtf",
            "rpnwltmiqifu",
            "avqhf"
        }
        if se_15[(se_7 * 96 + 79) % 14 + 1] < se_15[(se_7 * 96 + 79) % 14 + 1] then
            lL = string.sub(se_1, 1, 18) .. "..."
        else
            se_1 = string.sub(lL, 1, 18) .. "..."
        end
        se_7 = (se_7 + 3) % 4
    until (se_7 * 1 + 3) % 4 == 2
end
se_7 = se_1 or lL
lr, connection, connection2, lW, connection3, k_, kU, connection4, connection5, k6, l1, lf, kO, lZ, ld = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local mA = se_7
GameInfoGroup:AddLabel(kM("Server", mA, se_5), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
lr = os.clock()
task.spawn(worker)
local ScriptsGroup = se_19.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(kT("Included in this hub", se_5), true)
ScriptsGroup:AddLabel(kT(se_18, ml), true)
mp = se_19.Info:AddRightGroupbox("Features", "list")
mp:AddLabel(kT("Auto Farm", ml), true)
mp:AddLabel(kT("Auto Sell", lF), true)
mp:AddLabel(kT("Auto Buy", se_5), true)
se_20 = se_19.Info:AddRightGroupbox("Socials", "link")
se_20:AddButton({ Text = "Discord", Func = k3 })
se_20:AddButton({ Text = "Rscripts", Func = onRscripts })
se_1 = se_19.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
se_1:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
se_1:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
se_1:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
se_1:AddButton({ Text = "Copy Discord Invite", Func = k3 })
se_15 = se_19.Info:AddRightGroupbox("Donations", "heart")
se_15:AddLabel(kT("All donations are optional but appreciated.", lF), true)
se_15:AddLabel(kT("If you donate you get a special role, just PING after you donate.", mm), true)
se_15:AddDivider()
se_15:AddLabel(kT("LTC / Litecoin", se_13), true)
se_15:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
se_15:AddLabel(kT("BTC / Bitcoin", se_2), true)
se_15:AddButton({ Text = "Copy Bitcoin Address", Func = fns.onCopyBitcoinAddress })
se_15:AddLabel(kT("ETH / Ethereum", se_17), true)
se_15:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
se_15:AddLabel(kT("USDT", se_8), true)
se_15:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
se_15:AddLabel(kT("Solana", se_21), true)
se_15:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
se_15:AddLabel(kT("PayPal", se_14), true)
se_15:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
se_15:AddLabel(kT("Venmo", se_6), true)
se_15:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
se_15:AddDivider()
se_15:AddLabel(kT("Don't have any of the listed currencies but still wanna donate?", se_5), true)
se_15:AddLabel(kT("DM me and we'll work something out.", ml), true)
local FaqGroup = se_19.Info:AddRightGroupbox("FAQ", "circle-help")
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
local PanningGroup = se_19.Main:AddLeftGroupbox("Panning", "waves")
PanningGroup:AddToggle("AutoPerfectPan", { Text = "Auto Perfect Pan", Default = false })
local SellGroup = se_19.Main:AddLeftGroupbox("Sell", "circle-dollar-sign")
SellGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
SellGroup:AddDropdown("AutoSellMode", { Text = "When", Values = { lH, lE }, Default = lH })
SellGroup:AddSlider("AutoSellCount", { Text = "Item Count", Default = 10, Min = 1, Max = 200, Rounding = 0 })
SellGroup:AddDropdown("KeepRarities", {
    Text = "Keep Rarities",
    Values = Rarities,
    Default = {},
    Multi = true,
    Expandable = true,
    ExpandColumns = 2
})
local UpgradesGroup = se_19.Main:AddRightGroupbox("Upgrades", "trending-up")
UpgradesGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
UpgradesGroup:AddDropdown("AutoBuyUpgrade", {
    Text = "Upgrade",
    Values = lz,
    Default = { "Luck Multiplier" },
    Multi = true,
    Expandable = true,
    ExpandColumns = 1
})
local PansGroup = se_19.Main:AddRightGroupbox("Pans", "shopping-bag")
PansGroup:AddToggle("AutoBuyPans", { Text = "Auto Buy Pans", Default = false })
mq = se_19.Player:AddLeftGroupbox("Movement", "footprints")
mq:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
mq:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
mq:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
mq:AddToggle("NoClip", { Text = "NoClip", Default = false })
mq:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
mo = se_19.Player:AddRightGroupbox("Fly", "feather")
mo:AddToggle("Fly", { Text = "Fly", Default = false })
mo:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
Toggles.AutoPerfectPan:OnChanged(fn304)
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
k6 = function(fJ)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not fJ)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not fJ
        end
    end)
    if not fJ then
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
Toggles.AntiGameplayPause:OnChanged(fn305)
Toggles.Fly:OnChanged(fn700)
Toggles.WalkSpeedEnabled:OnChanged(fn987)
connection = RunService.Stepped:Connect(onStepped)
connection2 = UserInputService.JumpRequest:Connect(onJumpRequest)
lW = Workspace.CurrentCamera
connection3 = RunService.RenderStepped:Connect(onRenderStepped)
local MenuGroup = se_19.Settings:AddLeftGroupbox("Menu", "menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
k_ = tick()
kU = tick()
pcall(function()
    for k, v in getconnections(LocalPlayer.Idled) do
        local q1 = v
        pcall(function()
            q1:Disable()
        end)
    end
end)
l1 = fn353
connection4 = UserInputService.InputBegan:Connect(onInputBegan)
connection5 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(se_19.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/PanTheRiver")
local mz = SaveManager:BuildConfigSection(se_19.Settings)
lf = fn441
kO = fn917
lZ = fn276
ld = function(hg)
    local rF
    rF = nil
    local rG = type(hg) ~= "table" or type(hg.idx) ~= "string" or type(hg.type) ~= "string" or SaveManager.Ignore[hg.idx]
    if rG then
        return false
    end
    rF = lf(hg.type, hg.idx)
    if not rF then
        return false
    end
    local rG_1 = pcall(function()
        if hg.type == "Input" then
            if type(hg.text) ~= "string" then
                return
            end
            rF:SetValue(hg.text)
        elseif hg.type == "ColorPicker" then
            rF:SetValueRGB(Color3.fromHex(hg.value), hg.transparency)
        elseif hg.type == "KeyPicker" then
            rF:SetValue({ hg.key, hg.mode, hg.modifiers })
            if hg.mode == "Toggle" and hg.toggled ~= nil then
                rF.Toggled = hg.toggled
                rF:Update()
            end
        else
            rF:SetValue(hg.value)
        end
    end)
    return rG_1
end
mz:AddDivider()
mz:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
mz:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
mz:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
task.spawn(antiGameplayPauseLoop)
task.spawn(antiAfkLoop)
Library:OnUnload(fn244)
Library:Notify(se_18 .. " loaded")
