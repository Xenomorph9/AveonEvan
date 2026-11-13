local fns = {}
local vB_1, GameInfoGroup, vB_7, vB_9, vB_16, vB_18, vB_19, vB_21, vB_22, vB_26, vB_28, MovementGroup
local nr
local n8
local nQ
local nx
local nD
local ol
local nk
local nJ
local nq
local n7
local nw
local CollectionService
local nd
local nV
local nj
local VirtualUser
local PlayerGui
local np
local m6
local ToggleShop
local Options
local nc
local nU
local nB
local n_
local connection
local no
local UserInputService
local nN
local nu
local nb
local Workspace
local nA
local oh
local HireCashier
local ReplicaControllerManager
local nG
local oo
local nn
local n4
local m4
local LocalPlayer
local nt
local oa
local na
local nS
local nz
local Toggles
local FoodShop
local nY
local mY
local nF
local on
local CurrentCamera2
local Library
local nL
local n9
local m9
local nR
local ny
local of
local nf
local nX
local nE
local om
local nl
local CookingActionConfig
function fns.fn1()
    if not nt("AutoCashier") then
        return
    end
    local sZ = m4()
    if not sZ then
        return
    end
    no(sZ)
    local s2 = if sZ:GetAttribute("HasHiredCashier") == true then 1 else 0
    if s2 == 1 then
        return
    end
    of(sZ)
end
function fns.fn60()
    local Character = LocalPlayer.Character
    if Character then
        for i, child in ipairs(Character:GetChildren()) do
            local ql_1 = child:IsA("Tool") and CollectionService:HasTag(child, "CookedItem")
            if ql_1 then
                return child
            end
        end
    end
    for i, child in ipairs(LocalPlayer.Backpack:GetChildren()) do
        local ql_2 = child:IsA("Tool") and CollectionService:HasTag(child, "CookedItem")
        if ql_2 then
            return child
        end
    end
    return nil
end
function fns.fn61(aJ, aK)
    local pG = Options[aJ]
    local pH = pG and tonumber(pG.Value)
    if pH ~= nil then
        return pH
    end
    return aK
end
function fns.fn63(bP)
    local qD = bP
    local qI = if qD then 1 else 0
    local qG = 829 * qI + 3106 * (1 - qI)
    local qH = 1338 * qI + 1380 * (1 - qI)
    if not ((qG * 2919 + qH * 1003 + qG * qH) % 16777213 == 4871067) then
        qD = m4()
    end
    bP = qD
    if qD then
        qD = bP:FindFirstChild("Counters")
    end
    local qE = qD
    if not qE then
        return nil, nil
    end
    for i, child in ipairs(qE:GetChildren()) do
        local qD_1 = child:IsA("Model") and CollectionService:HasTag(child, "ItemCounter")
        if qD_1 then
            if FoodShop.DoesPlayerOwnComponent(LocalPlayer, child) then
                for i, child2 in ipairs(child:GetChildren()) do
                    local qD_2 = CollectionService:HasTag(child2, "CounterSlot") and child2:GetAttribute("Taken") ~= true
                    if qD_2 then
                        local qD_3 = tonumber(child2.Name)
                        if qD_3 then
                            return child, qD_3
                        end
                    end
                end
            end
        end
    end
    return nil, nil
end
function fns.fn66(an)
    local DiscordGroup = an:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = nQ })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = nQ })
end
function fns.worker5()
    while not Library.Unloaded do
        pcall(oh)
        task.wait(1)
    end
end
function fns.fn86()
    local Character = LocalPlayer.Character
    local qg = Character and Character:FindFirstChildOfClass("Humanoid")
    return qg
end
function fns.fn102(aC, aD)
    local pz = Options[aC]
    local pA = pz and pz.Value
    local pA_1 = pA ~= ""
    local pB = type(pA) == "string" and pA_1
    if pB then
        return pA
    end
    return aD
end
function fns.onCopyVenmoLink()
    n7(nA, "Copied Venmo link")
end
function fns.onImportConfigFromClipboardTex()
    local vi_1
    local vg = Options.SaveManager_ImportSource.Value or ""
    local vg_1
    local vh = tostring(vg):match("^%s*(.-)%s*$")
    if vh == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    vg_1, vi_1 = pcall(nX.JSONDecode, nX, vh)
    local vh_1 = not vg_1
    local vm = if vh_1 then 1 else 0
    local vk = 2044 * vm + 1633 * (1 - vm)
    local vl = 1481 * vm + 3331 * (1 - vm)
    if not ((vk * 4012 + vl * 2970 + vk * vl) % 16777213 == 15626262) then
        vh_1 = type(vi_1) ~= "table"
    end
    if not vh_1 then
        vh_1 = type(vi_1.objects) ~= "table"
    end
    if vh_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local vg_2 = 0
    for i, v in ipairs(vi_1.objects) do
        if m6(v) then
            vg_2 += 1
        end
    end
    if vg_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local vi_2 = vg_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(vg_2, vi_2), 6)
end
function fns.fn173()
    local uN = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local uO = type(v) == "table" and type(v.Type) == "string" and not om.Ignore[k]
            if uO then
                local uO_1 = oa(k, v)
                if uO_1 then
                    uN[#uN + 1] = uO_1
                end
            end
        end
    end
    table.sort(uN, function(iQ, iR)
        if iQ.type ~= iR.type then
            return iQ.type < iR.type
        end
        return iQ.idx < iR.idx
    end)
    return { objects = uN }
end
function fns.onExportConfigToClipboard()
    local vd_1
    local vc_1
    vc_1, vd_1 = pcall(nX.JSONEncode, nX, nU())
    if not vc_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local vc_2 = setclipboard or toclipboard
    local vc_3 = type(vc_2) ~= "function" or not pcall(vc_2, vd_1)
    if vc_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
function fns.worker()
    local tJ_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local tI = math.floor(os.clock() - nj)
        if tI < 60 then
            tJ_1 = tI .. "s"
        elseif tI < 3600 then
            tJ_1 = string.format("%dm %ds", tI // 60, tI % 60)
        else
            tJ_1 = string.format("%dh %dm", tI // 3600, tI % 3600 // 60)
        end
        nF:SetText(nd("Session time", tJ_1, ol))
    end
end
function fns.worker2()
    while not Library.Unloaded do
        pcall(nn)
        task.wait(1.5)
    end
end
function fns.fn240(ar)
    local pp = Toggles[ar]
    return pp ~= nil and pp.Value == true
end
function fns.onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local t0_1 = mY()
        if t0_1 then
            t0_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.fn252(ag, ah)
    if setclipboard then
        setclipboard(ag)
    elseif toclipboard then
        toclipboard(ag)
    end
    Library:Notify(ah)
end
function fns.onCopyPayPalLink()
    n7(nE, "Copied PayPal link")
end
function fns.onInputBegan()
    nx = tick()
end
function fns.onCopyEthereumAddress()
    n7(nN, "Copied Ethereum address")
end
function fns.fn302()
    local r5 = if not nt("AutoPlaceFood") then 1 else 0
    if r5 == 1 then
        return
    end
    local r0 = m4()
    while true do
        local r1 = nS() and not Library.Unloaded and nt("AutoPlaceFood")
        if r1 then
            if not nk(r0) then
                break
            end
            task.wait(0.2)
            continue
        end
        break
    end
end
function fns.fn303(cr)
    local rb = cr or m4()
    cr = rb
    if rb then
        rb = cr:FindFirstChild(CookingActionConfig.IngredientFolderName)
    end
    local rc = {}
    local rd = rb
    if not rd then
        return rc
    end
    for i, child in ipairs(rd:GetChildren()) do
        if child:IsA("BasePart") then
            local attr3 = child:GetAttribute(CookingActionConfig.IngredientSlotIndexAttribute)
            local attr2 = child:GetAttribute(CookingActionConfig.IngredientOwnerUserIdAttribute)
            local attr = child:GetAttribute(CookingActionConfig.IngredientStateAttribute)
            local rf = typeof(attr3) == "number" and (attr2 == LocalPlayer.UserId or attr2 == nil) and attr ~= CookingActionConfig.StateMovingToPot and attr ~= CookingActionConfig.StateDroppingIntoPot
            if rf then
                table.insert(rc, attr3)
            end
        end
    end
    table.sort(rc)
    return rc
end
function fns.fn308()
    local Character = LocalPlayer.Character
    local qj = Character and Character:FindFirstChild("HumanoidRootPart")
    return qj
end
local function fn321()
    return FoodShop.GetPlayerPlot(LocalPlayer)
end
local function onCopyJoinScript_JobID()
    local tG = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, nB)
    if setclipboard then
        setclipboard(tG)
    elseif toclipboard then
        toclipboard(tG)
    end
    Library:Notify("Copied join script to clipboard")
end
local function worker6()
    while not Library.Unloaded do
        pcall(nf)
        task.wait(0.45)
    end
end
local function worker7()
    while not Library.Unloaded do
        pcall(nq)
        task.wait(nR("CookDelay", 0.5))
    end
end
local function onCopyLitecoinAddress()
    n7(nY, "Copied Litecoin address")
end
local function onUnload()
    Library:Unload()
end
local function fn458()
    if not Toggles.Fly.Value then
        local uc = mY()
        if uc then
            uc.PlatformStand = false
        end
    end
end
local function onInputChanged(h9)
    local UserInputType = h9.UserInputType
    local ut = UserInputType == Enum.UserInputType.MouseMovement
    local ux = if ut then 1 else 0
    local uv = 2290 * ux + 719 * (1 - ux)
    local uw = 1641 * ux + 3374 * (1 - ux)
    if not ((uv * 326 + uw * 3697 + uv * uw) % 16777213 == 10571207) then
        ut = UserInputType == Enum.UserInputType.Gamepad1
    end
    if ut then
        nx = tick()
    end
end
local function fn470(f3, f4, f5)
    return string.format("<b>%s</b> %s %s", f3, np("-", "#5a6070"), np(f4, f5))
end
local function fn474(er)
    local sx = er or m4()
    er = sx
    local NPCReplicas = ReplicaControllerManager.NPCReplicas
    local sy = not er
    local sz = type(NPCReplicas) ~= "table"
    local sD = if sz then 1 else 0
    local sB = 3219 * sD + 4049 * (1 - sD)
    local sC = 2109 * sD + 3837 * (1 - sD)
    if not ((sB * 4037 + sC * 2711 + sB * sC) % 16777213 == 8724260) then
        sz = sy
    end
    if sz then
        return nil, nil
    end
    for k, v in pairs(NPCReplicas) do
        local sx_2 = typeof(k) == "Instance" and k:IsDescendantOf(er) and type(v) == "table" and type(v.Data) == "table" and v.Data.QueuePosition == 1
        if sx_2 then
            return k, v
        end
    end
    return nil, nil
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            nl(true)
        end
    end
end
local function fn501(a_)
    local pW = a_ or m4()
    a_ = pW
    if pW then
        pW = a_:FindFirstChild("CookingPotServerModel")
    end
    return pW
end
local function fn553()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    nw = tick()
end
local function fn567()
    n7(nz, "Copied Discord invite to clipboard")
end
local function fn579()
    connection:Disconnect()
    n_:Disconnect()
    nl(false)
    print("Unloaded!")
end
local function onRscripts()
    n7(ny, "Copied Rscripts profile to clipboard")
end
local function worker4()
    while not Library.Unloaded do
        pcall(na)
        task.wait(0.6)
    end
end
local function fn680(a8)
    local p0 = a8 or m4()
    a8 = p0
    if not a8 then
        return false
    end
    local ShopSign = a8:FindFirstChild("ShopSign")
    if not ShopSign then
        return false
    end
    for i, descendant in ipairs(ShopSign:GetDescendants()) do
        if descendant:IsA("TextLabel") then
            local Text = descendant.Text
            if Text == "Shop Open" then
                return true
            end
            if Text == "Closed" or Text == "Shop Closed" then
                return false
            end
        end
    end
    return false
end
local function fn684()
    Library.ScreenGui.Parent = PlayerGui
end
local function fn719()
    if not Toggles.WalkSpeedEnabled.Value then
        local uh = mY()
        if uh then
            uh.WalkSpeed = 16
        end
    end
end
local function fn720(d7)
    local sk = d7 or m4()
    d7 = sk
    if sk then
        sk = d7:FindFirstChild("Checkout")
    end
    local sl = sk
    if sk then
        sk = sl:FindFirstChild("CashRegister")
    end
    local sl_1 = sk
    if sk then
        sk = sl_1:FindFirstChild("PromptAttachment")
    end
    local sl_2 = sk
    if sk then
        sk = sl_2:FindFirstChild("CashPrompt")
    end
    local sl_3 = sk
    if sk then
        sk = sl_3:IsA("ProximityPrompt")
    end
    if sk then
        return sl_3
    end
    return nil
end
local function onCopyBitcoinAddress()
    n7(nV, "Copied Bitcoin address")
end
local function fn762()
    local rA = nu()
    local rB = rA and rA.UncookedProducts
    if type(rB) ~= "table" then
        return nil
    end
    local rB_1 = nb("CookRecipes")
    local rC = false
    for k, v in pairs(rB_1) do
        if v == true then
            rC = true
            break
        end
    end
    local rD = {}
    for k, v in pairs(rB) do
        local rA_2 = tonumber(v) and tonumber(v) > 0
        if rA_2 then
            local rA_3 = nD[k] or k
            local rE = not rC
            if not rE then
                rE = rB_1[rA_3] == true
            end
            if rE then
                table.insert(rD, k)
            end
        end
    end
    table.sort(rD)
    return rD[1]
end
local function onRenderStepped(hC)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local t2_1 = mY()
        if t2_1 then
            t2_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local t2_3 = n8()
        local t3 = mY()
        if t2_3 and t3 then
            t3.PlatformStand = true
            local t3_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                t3_1 = t3_1 + CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                t3_1 = t3_1 - CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                t3_1 = t3_1 - CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                t3_1 = t3_1 + CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                t3_1 = t3_1 + Vector3.new(0, 1, 0)
            end
            local t8 = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
            if t8 == 1 then
                t3_1 = t3_1 - Vector3.new(0, 1, 0)
            end
            t2_3.Velocity = Vector3.zero
            if t3_1.Magnitude > 0 then
                t2_3.CFrame = t2_3.CFrame + t3_1.Unit * Options.FlySpeed.Value * hC
            end
        end
    end
end
local function fn840(f0, f1)
    return string.format('<font color="%s">%s</font>', f1, f0)
end
local function fn845(ch)
    if not ch then
        return true
    elseif ch:GetAttribute("Cooking") == true then
        return true
    elseif ch:GetAttribute("ReadyToClaim") == true then
        return true
    else
        local q7 = if ch:GetAttribute("IsUpgrading") == true then 1 else 0
        if q7 == 1 then
            return true
        end
        local q2 = tonumber(ch:GetAttribute("IngredientCount")) or 0
        return q2 > 0
    end
end
local function worker3()
    while not Library.Unloaded do
        pcall(on)
        task.wait(1.25)
    end
end
local function fn855()
    nl(Toggles.AntiGameplayPause.Value)
end
local function fn862()
    local tC_1
    local tB_1
    if identifyexecutor then
        tC_1, tB_1 = identifyexecutor()
        local tD = tC_1 ~= ""
        local tE = type(tC_1) == "string" and tD
        if tE then
            local tD_1 = type(tB_1) == "string" and tB_1 ~= "" and tC_1 .. " " .. tB_1
            n9 = tD_1 or tC_1
        end
    end
end
local function fn874(aw)
    local ps = Options[aw]
    local pt = ps and ps.Value
    local pt_1 = type(pt) == "table" and pt
    return pt_1 or {}
end
local function fn885(bg)
    local qa = bg or m4()
    bg = qa
    if qa then
        qa = not nL(bg)
    end
    if qa then
        pcall(function()
            ToggleShop:FireServer()
        end)
        task.wait(0.35)
    end
end
local function fn890()
    local pY = nu()
    local pZ = pY and tonumber(pY.Cash)
    return pZ or 0
end
local function onCopySolanaAddress()
    n7(nG, "Copied Solana address")
end
local function fn904()
    if not nt("AutoHire") then
        return
    end
    local tr = oo("HireWorker", "Cashier")
    local tr_5
    local ts = m9[tr]
    local ts_3
    if ts ~= "cashier" then
        return
    end
    local tr_1 = m4()
    if not tr_1 then
        return
    end
    if tr_1:GetAttribute("HasHiredCashier") == true then
        nr = true
        return
    end
    local tr_2 = nr and not nt("HireRehire")
    if tr_2 then
        return
    end
    local tr_3 = nu()
    local ts_1 = tr_3 and tonumber(tr_3.NextCashierHireAt)
    local tr_4 = ts_1
    local tA = if tr_4 then 1 else 0
    local ty = 3291 * tA + 108 * (1 - tA)
    local tz = 4011 * tA + 4085 * (1 - tA)
    if not ((ty * 1033 + tz * 1402 + ty * tz) % 16777213 == 5446013) then
        tr_4 = 0
    end
    local ts_2 = tr_4
    if ts_2 > Workspace:GetServerTimeNow() then
        return
    end
    if n4() < 200 then
        return
    end
    tr_5, ts_3 = pcall(function()
        return HireCashier:InvokeServer()
    end)
    local tt = tr_5 and type(ts_3) == "table" and ts_3.success
    if tt then
        nr = true
    end
    task.wait(0.4)
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local uB = tick() - nx
            local uC = tick() - nw
            if uB >= 300 and uC >= 60 then
                pcall(nc)
            else
                if uB < 300 and uC >= 300 then
                    pcall(nc)
                end
            end
        end
    end
end
local function onCopyUSDTAddress()
    n7(nJ, "Copied USDT address")
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local tT_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if tT_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn1014(iD, iE)
    local Type = iE.Type
    if Type == "Toggle" then
        return { idx = iD, type = "Toggle", value = iE.Value == true }
    elseif Type == "Slider" then
        return { idx = iD, type = "Slider", value = tostring(iE.Value) }
    elseif Type == "Dropdown" then
        return { idx = iD, type = "Dropdown", multi = iE.Multi == true, value = iE.Value }
    elseif Type == "Input" then
        local uK = iE.Value or ""
        return { idx = iD, type = "Input", text = tostring(uK) }
    elseif Type == "ColorPicker" then
        return { idx = iD, type = "ColorPicker", value = iE.Value:ToHex(), transparency = iE.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = iD,
            type = "KeyPicker",
            mode = iE.Mode,
            key = iE.Value,
            modifiers = iE.Modifiers,
            toggled = iE.Toggled
        }
    else
        return nil
    end
end
local function fn1027()
    local pR_1
    local pP = ReplicaControllerManager.PlayerDataReplica
    local pQ = pP == nil and ReplicaControllerManager.GetPlayerDataReplicaAsync
    local pQ_1
    if pQ then
        pQ_1, pR_1 = pcall(ReplicaControllerManager.GetPlayerDataReplicaAsync)
        if pQ_1 then
            pP = pR_1
        end
    end
    return pP and pP.Data or nil
end
local function fn1039(iv, iw)
    local uG_1 = (iv == "Toggle" and Toggles or Options)[iw]
    local uF_2 = type(uG_1) == "table" and uG_1.Type == iv
    return uF_2 and uG_1 or nil
end
mY = nil
ReplicaControllerManager = nil
CookingActionConfig = nil
Library = nil
m4 = nil
m6 = nil
m9 = nil
na = nil
nb = nil
nc = nil
nd = nil
nf = nil
FoodShop = nil
nj = nil
nk = nil
nl = nil
CurrentCamera2 = nil
nn = nil
no = nil
np = nil
nq = nil
nr = nil
nt = nil
nu = nil
nw = nil
nx = nil
ny = nil
nz = nil
nA = nil
nB = nil
nD = nil
nE = nil
nF = nil
nG = nil
PlayerGui = nil
local mW, mX, m_, CartDisplayUtils, m1, CheckoutUpgradeData, m7, PotUpgradeData, ProductData, nh, ni, ns, nv, nC, nH
nJ = nil
nL = nil
LocalPlayer = nil
nN = nil
ToggleShop = nil
nQ = nil
nR = nil
nS = nil
Workspace = nil
nU = nil
nV = nil
nX = nil
nY = nil
HireCashier = nil
n_ = nil
VirtualUser = nil
n4 = nil
UserInputService = nil
n7 = nil
n8 = nil
n9 = nil
oa = nil
Options = nil
CollectionService = nil
of = nil
Toggles = nil
oh = nil
ol = nil
om = nil
on = nil
oo = nil
connection = nil
local nK, nP, ManualCheckoutProgress, BuyCheckoutUpgrade, n2, n3, BuyPotUpgrade, BuyRecipeItem, PlaceDownItem, oi, oj
nK = nil
nP = nil
ManualCheckoutProgress = nil
BuyCheckoutUpgrade = nil
n2 = nil
n3 = nil
BuyPotUpgrade = nil
BuyRecipeItem = nil
PlaceDownItem = nil
oi = nil
oj = nil
local MenuGroup, FaqGroup
vB_21, vB_1, CollectionService, UserInputService, VirtualUser, nX, Workspace, LocalPlayer, PlayerGui = nil, nil, nil, nil, nil, nil, nil, nil, nil
if (not CollectionService or nX or (not nX or not UserInputService) or CollectionService and UserInputService and (CollectionService and not CollectionService)) and (CollectionService and nX or not CollectionService and not nX or not UserInputService and vB_1 and (CollectionService and not vB_1)) and ((nX or UserInputService or UserInputService and CollectionService) and (vB_1 and nX or (CollectionService or CollectionService)) or (not nX or nX or (not nX or vB_1) or not CollectionService and CollectionService and (not UserInputService and not UserInputService))) and not ((not CollectionService or nX or (not nX or not UserInputService) or CollectionService and UserInputService and (CollectionService and not CollectionService)) and (CollectionService and nX or not CollectionService and not nX or not UserInputService and vB_1 and (CollectionService and not vB_1)) and ((nX or UserInputService or UserInputService and CollectionService) and (vB_1 and nX or (CollectionService or CollectionService)) or (not nX or nX or (not nX or vB_1) or not CollectionService and CollectionService and (not UserInputService and not UserInputService)))) then
    nX = game:GetService("Players")
else
    vB_21 = game:GetService("Players")
end
vB_1 = game:GetService("ReplicatedStorage")
CollectionService = game:GetService("CollectionService")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
nX = game:GetService("HttpService")
Workspace = game:GetService("Workspace")
LocalPlayer = vB_21.LocalPlayer
PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
if getgenv then
    getgenv().gethui = function()
        return PlayerGui
    end
end
if setthreadidentity then
    setthreadidentity(8)
end
nz, ny, FoodShop, ProductData, PotUpgradeData, CheckoutUpgradeData, CookingActionConfig, CartDisplayUtils, ReplicaControllerManager, mW, oj, PlaceDownItem, BuyRecipeItem, BuyPotUpgrade, BuyCheckoutUpgrade, HireCashier, ManualCheckoutProgress, ToggleShop, nK, nH, nD = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local vB_15 = "Cook & Sell"
nz = "https://discord.gg/ehKVq7pf7v"
ny = "https://rscripts.net/@Ouroboros"
local vB_3 = vB_1:WaitForChild("Riese")
local vB_13 = vB_3:WaitForChild("Remotes")
local vB_11 = vB_3:WaitForChild("Shared")
vB_21 = vB_3:WaitForChild("Client")
FoodShop = require(vB_11:WaitForChild("FoodShop"))
ProductData = require(vB_11:WaitForChild("ProductData"))
PotUpgradeData = require(vB_11:WaitForChild("PotUpgradeData"))
CheckoutUpgradeData = require(vB_11:WaitForChild("CheckoutUpgradeData"))
if (PotUpgradeData and BuyRecipeItem and (vB_11 or false) or not PotUpgradeData and false and (vB_11 or false)) and ((BuyRecipeItem or not PotUpgradeData) and (not BuyRecipeItem or BuyRecipeItem) and ((not BuyRecipeItem or vB_11) and (not BuyRecipeItem and vB_11))) or not PotUpgradeData and not vB_11 and (BuyRecipeItem or vB_11) and (PotUpgradeData and vB_11 or (nz or not PotUpgradeData)) and (vB_11 and not PotUpgradeData and (PotUpgradeData and PotUpgradeData) and (nz and not PotUpgradeData or (false or not BuyRecipeItem))) or not ((PotUpgradeData and BuyRecipeItem and (vB_11 or false) or not PotUpgradeData and false and (vB_11 or false)) and ((BuyRecipeItem or not PotUpgradeData) and (not BuyRecipeItem or BuyRecipeItem) and ((not BuyRecipeItem or vB_11) and (not BuyRecipeItem and vB_11))) or not PotUpgradeData and not vB_11 and (BuyRecipeItem or vB_11) and (PotUpgradeData and vB_11 or (nz or not PotUpgradeData)) and (vB_11 and not PotUpgradeData and (PotUpgradeData and PotUpgradeData) and (nz and not PotUpgradeData or (false or not BuyRecipeItem)))) then
    CookingActionConfig = require(vB_11:WaitForChild("CookingActionConfig"))
    CartDisplayUtils = require(vB_11:WaitForChild("CartDisplayUtils"))
    ReplicaControllerManager = require(vB_21:WaitForChild("ReplicaControllerManager"))
    mW = vB_13:WaitForChild("CookingAction")
    oj = vB_13:WaitForChild("StartCooking")
else
    oj = require(ReplicaControllerManager:WaitForChild("CookingActionConfig"))
    require(ReplicaControllerManager:WaitForChild("CartDisplayUtils"))
    require(CookingActionConfig:WaitForChild("ReplicaControllerManager"))
    vB_13 = CartDisplayUtils:WaitForChild("CookingAction")
    mW = CartDisplayUtils:WaitForChild("StartCooking")
end
PlaceDownItem = vB_13:WaitForChild("PlaceDownItem")
BuyRecipeItem = vB_13:WaitForChild("BuyRecipeItem")
BuyPotUpgrade = vB_13:WaitForChild("BuyPotUpgrade")
BuyCheckoutUpgrade = vB_13:WaitForChild("BuyCheckoutUpgrade")
HireCashier = vB_13:WaitForChild("HireCashier")
ManualCheckoutProgress = vB_13:WaitForChild("ManualCheckoutProgress")
ToggleShop = vB_13:WaitForChild("ToggleShop")
nK = {}
nH = {}
nD = {}
for i, v in ipairs(ProductData.GetCatalog()) do
    if v.VIP ~= true then
        vB_21 = v.ItemName or v.ProductId
        vB_11 = vB_21
        table.insert(nK, vB_11)
        nH[vB_11] = v.ProductId
        nD[v.ProductId] = vB_11
    end
end
table.sort(nK)
vB_1 = { "Checkout" }
for i, v in ipairs(ProductData.CategoryOrder) do
    table.insert(vB_1, v)
end
m9, Library, om, Toggles, Options, nv, nr, n7, nQ, nt, nb, oo, nR, nu, m4, mX, n4, nL, no, mY, n8, nS, ni, oi, nk, n2, nP, ns, n3, m1, nq, nf, oh, m_, nC, nh, of, na, on, nn = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local vB_4 = { "Cashier", "Cook", "Stocker" }
m9 = { Cashier = "cashier", Cook = "cook", Stocker = "stocker" }
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
pcall(fn684)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
om = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
n7 = fns.fn252
nQ = fn567
vB_3 = fns.fn66
nt = fns.fn240
nb = fn874
oo = fns.fn102
nR = fns.fn61
nu = fn1027
m4 = fn321
mX = fn501
n4 = fn890
nL = fn680
no = fn885
mY = fns.fn86
if (na and nn and (nn or not ThemeManager) or (ThemeManager and nn or ThemeManager and not nn)) and (not na or nn or (not ThemeManager or na) or (not na and nn or (not na or not nn))) and (not nn and na and (na and ThemeManager) and (not ThemeManager and not nn and (ThemeManager or nn)) or (na or not na or (not na or not ThemeManager)) and ((nn or not na) and (nn and ThemeManager))) or not ((na and nn and (nn or not ThemeManager) or (ThemeManager and nn or ThemeManager and not nn)) and (not na or nn or (not ThemeManager or na) or (not na and nn or (not na or not nn))) and (not nn and na and (na and ThemeManager) and (not ThemeManager and not nn and (ThemeManager or nn)) or (na or not na or (not na or not ThemeManager)) and ((nn or not na) and (nn and ThemeManager)))) then
    n8 = fns.fn308
else
    om = fns.fn308
end
nS = fns.fn60
ni = function(bG)
    local Character = LocalPlayer.Character
    local qz = mY()
    if not (bG and Character and qz and qz.Health > 0) then
        return false
    end
    if bG.Parent ~= Character then
        pcall(function()
            qz:EquipTool(bG)
        end)
        task.wait(0.1)
    end
    return bG.Parent == Character
end
oi = fns.fn63
nk = function(b4)
    local qV, qW, qX
    qW = nS()
    if not qW then
        return false
    end
    local q1 = if not ni(qW) then 1 else 0
    if q1 == 1 then
        return false
    end
    qX, qV = oi(b4)
    if not (qX and qV) then
        return false
    end
    pcall(function()
        PlaceDownItem:FireServer(qW, qX, qV)
    end)
    task.wait(0.45)
    return nS() == nil
end
n2 = fn845
nP = function(ck)
    local Remote
    Remote = nil
    local q9 = ck or mX()
    ck = q9
    local q9_1 = not ck or ck:GetAttribute("ReadyToClaim") ~= true
    if q9_1 then
        return false
    end
    Remote = ck:FindFirstChild("Remote")
    if not Remote then
        return false
    end
    pcall(function()
        Remote:FireServer("ClaimDessert")
    end)
    task.wait(0.35)
    return true
end
ns = fns.fn303
n3 = function(cG)
    local rq_1, rq_2
    local rp = ns(cG)
    local rp_2, rp_3
    for i, v in ipairs(rp) do
        local rz = v
        local rp_1 = Library.Unloaded or not nt("AutoCook")
        if rp_1 then
            return false
        end
        rp_2, rq_1 = pcall(function()
            return mW:InvokeServer("PickUp", rz)
        end)
        if not (rp_2 and rq_1 == true) then
            task.wait(0.2)
        else
            task.wait(0.2)
            rp_3, rq_2 = pcall(function()
                return mW:InvokeServer("AddToPot", nil)
            end)
            if not (rp_3 and rq_2 == true) then
                pcall(function()
                    mW:InvokeServer("PutBack", nil)
                end)
            end
            task.wait(0.25)
        end
    end
    return true
end
m1 = fn762
nv = false
nq = function()
    local rT
    local rW_1
    local rX_1
    local rU = nv or not nt("AutoCook")
    if rU then
        return
    end
    local rU_1 = m4()
    local rV = mX(rU_1)
    if not rV then
        return
    end
    if rV:GetAttribute("ReadyToClaim") == true then
        if nt("CookClaimReady") then
            nP(rV)
            if nt("AutoPlaceFood") then
                nk(rU_1)
            end
        end
        return
    end
    if n2(rV) then
        return
    end
    rT = m1()
    if not rT then
        return
    end
    nv = true
    rW_1, rX_1 = pcall(function()
        return oj:InvokeServer(rT, true)
    end)
    if not (rW_1 and rX_1 == true) then
        nv = false
        return
    end
    task.wait(0.35)
    if nt("CookDragToPot") then
        n3(rU_1)
    end
    local rW_2 = os.clock()
    while true do
        local rX_2 = not Library.Unloaded and nt("AutoCook") and os.clock() - rW_2 < 45
        if rX_2 then
            local rV_1 = mX(rU_1)
            local rX_3 = rV_1 and rV_1:GetAttribute("ReadyToClaim") == true
            if rX_3 then
                break
            end
            local rX_4 = rV_1 and rV_1:GetAttribute("Cooking") ~= true
            if rX_4 then
                local rX_5 = ns(rU_1)
                local rY_1 = #rX_5 > 0 and nt("CookDragToPot")
                if rY_1 then
                    n3(rU_1)
                end
            end
            task.wait(0.35)
            continue
        end
        break
    end
    local rV_2 = mX(rU_1)
    local rW_3 = rV_2 and rV_2:GetAttribute("ReadyToClaim") == true and nt("CookClaimReady")
    if rW_3 then
        nP(rV_2)
        if nt("AutoPlaceFood") then
            nk(rU_1)
        end
    end
    nv = false
end
nf = fns.fn302
oh = function()
    if not nt("AutoBuyShop") then
        return
    end
    local r7 = nb("ShopRecipes")
    local r8 = n4()
    for i, v in ipairs(nK) do
        if r7[v] == true then
            local r6 = nH[v]
            local r9 = 0
            if r6 then
                local sa_1 = ProductData.GetProductInfo(r6)
                local sb = sa_1 and (sa_1.UnitCost or sa_1.Cost or sa_1.Price)
                local sa_2 = tonumber(sb) or 0
                r9 = sa_2
                if r9 <= 0 and ProductData.GetTotalCost then
                    local sa_4 = tonumber(ProductData.GetTotalCost(r6)) or 0
                    r9 = sa_4
                end
            end
            if r6 and r8 >= r9 then
                pcall(function()
                    BuyRecipeItem:FireServer(r6, 1)
                end)
                r8 -= math.max(r9, 0)
                task.wait(0.2)
            end
        end
    end
end
m_ = fn720
nC = function(ek)
    local sr = m_(ek)
    local ss = not sr
    local sw = if ss then 1 else 0
    local su = 1361 * sw + 4017 * (1 - sw)
    local sv = 1560 * sw + 1074 * (1 - sw)
    if not ((su * 4012 + sv * 1747 + su * sv) % 16777213 == 10308812) then
        ss = sr.Enabled ~= true
    end
    if ss then
        return false
    end
    if fireproximityprompt then
        pcall(fireproximityprompt, sr)
    else
        pcall(function()
            sr:InputHoldBegin()
            local sp = sr.HoldDuration > 0 and sr.HoldDuration or 0.05
            task.wait(sp)
            sr:InputHoldEnd()
        end)
    end
    return true
end
nh = fn474
of = function(eA)
    local sL
    local sM_1
    sL, sM_1 = nh(eA)
    if not (sL and sM_1) then
        return false
    end
    local GetDisplayItems = CartDisplayUtils.GetDisplayItems
    local sO = {}
    local sP = sM_1.Data.Cart
    local sT = if sP then 1 else 0
    local sR = 2443 * sT + 2374 * (1 - sT)
    local sS = 2655 * sT + 3343 * (1 - sT)
    if not ((sR * 3867 + sS * 2777 + sR * sS) % 16777213 == 6528968) then
        sP = sO
    end
    local sM_2 = GetDisplayItems(sP)
    local sN_2 = math.min(#sM_2, 5)
    if sN_2 <= 0 then
        sN_2 = 1
    end
    local sK = {}
    local sW = 1
    local sU = sN_2
    while sW <= sU do
        local sX = sW
        sK[sX] = tostring(sX)
        pcall(function()
            ManualCheckoutProgress:FireServer("Set", sL, sK)
        end)
        task.wait(0.12)
        sW += 1
    end
    task.wait(0.15)
    local sM_3 = m_(eA)
    if sM_3 and sM_3.Enabled == true then
        nC(eA)
        task.wait(0.2)
    end
    return true
end
na = fns.fn1
on = function()
    local s3, s6
    local th = if not nt("AutoBuyUpgrades") then 1 else 0
    if th == 1 then
        return
    end
    local s8 = nb("UpgradeChoices")
    local s4 = nu()
    if not s4 then
        return
    end
    local s9 = tonumber(s4.Cash) or 0
    local ta = s9
    if s8.Checkout == true then
        local s9_1 = tonumber(s4.CheckoutQueueLevel) or 0
        s6 = false
        s3 = s9_1
        pcall(function()
            s6 = CheckoutUpgradeData.IsUpgradeLocked(s3, s4) == true
        end)
        local s9_2 = CheckoutUpgradeData.GetNextUpgrade(s3)
        local tb_1 = s9_2 and tonumber(s9_2.Price)
        local s9_3 = tb_1 or nil
        local tb_2 = not s6
        if tb_2 then
            tb_2 = s9_3
        end
        if tb_2 then
            tb_2 = ta >= s9_3
        end
        if tb_2 then
            tb_2 = s3 < (CheckoutUpgradeData.MAX_LEVEL or 4)
        end
        if tb_2 then
            pcall(function()
                BuyCheckoutUpgrade:FireServer()
            end)
            ta -= s9_3
            task.wait(0.25)
        end
    end
    local s9_5 = type(s4.PotUpgrades) == "table" and s4.PotUpgrades
    local tb_3 = {}
    local tc_2 = s9_5
    local tk = if tc_2 then 1 else 0
    local ti = 1656 * tk + 2160 * (1 - tk)
    local tj = 1019 * tk + 2652 * (1 - tk)
    if not ((ti * 2383 + tj * 3301 + ti * tj) % 16777213 == 8997431) then
        tc_2 = tb_3
    end
    local s9_6 = tc_2
    for i, v in ipairs(ProductData.CategoryOrder) do
        local s5
        local tq = v
        if s8[tq] == true then
            local tb_4 = tonumber(s9_6[tq]) or 0
            local s7 = tb_4
            if s7 < (PotUpgradeData.MAX_LEVEL or 3) then
                s5 = false
                pcall(function()
                    s5 = PotUpgradeData.IsUpgradeLocked(tq, s7, s4) == true
                end)
                local tb_6 = PotUpgradeData.GetNextUpgrade(tq, s7)
                local tc_3 = tb_6 and tonumber(tb_6.Price)
                local tb_7 = tc_3 or nil
                local tc_4 = not s5
                if tc_4 then
                    tc_4 = tb_7
                end
                if tc_4 then
                    tc_4 = ta >= tb_7
                end
                if tc_4 then
                    pcall(function()
                        BuyPotUpgrade:FireServer(tq)
                    end)
                    ta -= tb_7
                    task.wait(0.25)
                end
            end
        end
    end
end
nr = false
nn = fn904
vB_11 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = nz, Copyable = true }, "|", vB_15 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
local vB_25 = {
    Info = vB_11:AddTab("Info", "info"),
    Main = vB_11:AddTab("Main", "cooking-pot"),
    Player = vB_11:AddTab("Player", "person-standing"),
    Settings = vB_11:AddTab("Settings", "settings")
}
for k, v in { vB_25.Main, vB_25.Player, vB_25.Settings } do
    vB_3(v)
end
vB_16, vB_18, ol, vB_26, n9, GameInfoGroup, nF, nB, vB_13, np, nd = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
vB_21 = 6
repeat
    vB_3 = (vB_21 * 7 + 6) % 8 + 1
    if vB_3 <= 4 then
        if vB_3 <= 2 then
            if vB_3 <= 1 then
                vB_7 = (vector.create((vB_21 * 7 + 8) % 11 + 1, (vB_21 * 1 + 4) % 13 + 1, (vB_21 * 1 + 1) % 17 + 1))
                vB_28 = (vector.create((vB_21 * 4 + 4) % 11 + 1, (vB_21 * 3 + 2) % 13 + 1, (vB_21 * 5 + 12) % 17 + 1))
                vB_19 = (vector.create((vB_21 * 3 + 1) % 11 + 1, (vB_21 * 8 + 7) % 13 + 1, (vB_21 * 14 + 10) % 17 + 1))
                vB_9 = (vector.create((vB_21 * 4 + 8) % 11 + 1, (vB_21 * 3 + 9) % 13 + 1, (vB_21 * 10 + 8) % 17 + 1))
                if vector.dot(vector.cross(vB_7, vB_28), (vector.cross(vB_19, vB_9))) == vector.dot(vB_7, vB_19) * vector.dot(vB_28, vB_9) - vector.dot(vB_7, vB_9) * vector.dot(vB_28, vB_19) + 3 then
                    nF = fn840
                else
                    np = fn840
                end
                vB_21 = (vB_21 + 15) % 32
            else
                if nF and vB_26 and (nB or not nB) and ((vB_21 or not nB) and (vB_26 or not vB_21)) or (false or not vB_18 and vB_26) and ((false or not vB_21) and (nF and not nB)) or (not nF and false and (not vB_18 and vB_18) and (not nF or not nF or (nF or false)) or (vB_26 or not vB_18) and (nF or not nB) and (false or nF or nB and vB_18)) or not (nF and vB_26 and (nB or not nB) and ((vB_21 or not nB) and (vB_26 or not vB_21)) or (false or not vB_18 and vB_26) and ((false or not vB_21) and (nF and not nB)) or (not nF and false and (not vB_18 and vB_18) and (not nF or not nF or (nF or false)) or (vB_26 or not vB_18) and (nF or not nB) and (false or nF or nB and vB_18))) then
                    nd = fn470
                else
                    vB_18 = fn470
                end
                vB_21 = (vB_21 + 7) % 32
            end
        elseif vB_3 <= 3 then
            vB_7 = {
                "owqr",
                "kzizvsuc",
                "ywmg",
                "dhkunurmmjyp",
                "ncbtqarp",
                "ofdevu",
                "hdrppf",
                "yebxwp",
                "ivfrlzg",
                "glmixubvdci",
                "tqk",
                "dswlubuy",
                "iingyzjqwgs",
                "ldvzsvshni"
            }
            if vB_7[(vB_21 * 20 + 28) % 14 + 1] <= vB_7[(vB_21 * 20 + 28) % 14 + 1] then
                vB_16 = "#7fd47f"
            else
                np = "#7fd47f"
            end
            vB_21 = (vB_21 + 7) % 32
        else
            vB_7 = (vector.create((vB_21 * 4 + 3) % 11 + 1, (vB_21 * 7 + 13) % 13 + 1, (vB_21 * 11 + 7) % 17 + 1))
            vB_28 = (vector.create((vB_21 * 6 + 8) % 11 + 1, (vB_21 * 3 + 13) % 13 + 1, (vB_21 * 2 + 15) % 17 + 1))
            local wx = vector.cross(vB_7, vB_28)
            local wy = vector.dot(vB_7, vB_28)
            if vector.dot(wx, wx) + wy * wy == vector.dot(vB_7, vB_7) * vector.dot(vB_28, vB_28) then
                vB_18 = "#6ec1ff"
            else
                ol = "#6ec1ff"
            end
            vB_21 = (vB_21 + 31) % 32
        end
    elseif vB_3 <= 6 then
        if vB_3 <= 5 then
            vB_7 = {
                "jiaynjsfq",
                "rsd",
                "nus",
                "uplvxy",
                "orjsyvbi",
                "rzpzvfyi",
                "mgzvcnjobaj",
                "aidrhkiunbz",
                "dfhuprdetjj",
                "maepsfl",
                "lts",
                "brma",
                "apord"
            }
            if vB_7[(vB_21 * 49 + 53) % 13 + 1] < vB_7[(vB_21 * 49 + 53) % 13 + 1] then
                vB_16 = "#e8a34d"
            else
                ol = "#e8a34d"
            end
            vB_21 = (vB_21 + 7) % 32
        else
            local wm = bit32.rrotate(bit32.bxor(bit32.lrotate(vB_21, 18), string.byte(tostring(nd))), 6)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(wm, 2834331139), 241988913), (bit32.bxor(bit32.band(wm, 1460636156), 1201361442))), 241988913), 1201361442) == wm then
                vB_26 = "#8b93a3"
                n9 = "Unknown"
                pcall(fn862)
                vB_11 = vB_25.Info:AddLeftGroupbox("Account", "circle-user")
                vB_11:AddLabel(nd("User", LocalPlayer.Name, vB_16), true)
                vB_11:AddLabel(nd("Status", "Keyless", vB_16), true)
                vB_11:AddLabel(nd("Executor", n9, vB_16), true)
                GameInfoGroup = vB_25.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                GameInfoGroup:AddLabel(np(vB_15 .. " [" .. tostring(game.PlaceId) .. "]", vB_18), true)
                GameInfoGroup:AddLabel(nd("Place ID", tostring(game.PlaceId), vB_18), true)
                nF = GameInfoGroup:AddLabel(nd("Session time", "0s", ol), true)
            else
                vB_16 = "#8b93a3"
                pcall(fn862)
                vB_15 = n9.Info:AddLeftGroupbox("Account", "circle-user")
                vB_15:AddLabel(vB_25("User", vB_18.Name, vB_26), true)
                vB_15:AddLabel(vB_25("Status", "Keyless", vB_26), true)
                vB_15:AddLabel(vB_25("Executor", "Unknown", vB_26), true)
                nd = n9.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                nd:AddLabel(GameInfoGroup(nF .. " [" .. tostring(game.PlaceId) .. "]", np), true)
                nd:AddLabel(vB_25("Place ID", tostring(game.PlaceId), np), true)
                ol = nd:AddLabel(vB_25("Session time", "0s", LocalPlayer), true)
            end
            vB_21 = (vB_21 + 31) % 32
        end
    elseif vB_3 <= 7 then
        vB_3 = {
            "vitosrwg",
            "yamnphpuyu",
            "aijpmu",
            "rlstlw",
            "rrp",
            "wuokvwuq",
            "jkmjp",
            "tmrxet",
            "sbfmytcodbxk",
            "fdikbeijmisf",
            "conacqjskr",
            "hlon",
            "ixjnjbvnu",
            "lcam",
            "alcafqx",
            "yrudujlydqm"
        }
        if vB_3[(vB_21 * 77 + 94) % 16 + 1] <= vB_3[(vB_21 * 77 + 94) % 16 + 1] then
            nB = tostring(game.JobId)
        else
            vB_16 = tostring(game.JobId)
        end
        vB_21 = (vB_21 + 23) % 32
    else
        vB_3 = { "afkacqed", "cdpiougw", "tmgf", "jjkel", "olppjs", "ptrlph", "nvnzcv", "jhocgmncf" }
        if vB_3[(vB_21 * 56 + 71) % 8 + 1] <= vB_3[(vB_21 * 56 + 71) % 8 + 1] then
            vB_13 = #nB > 18
        else
            nB = #vB_13 > 18
        end
        vB_21 = (vB_21 + 7) % 32
    end
until (vB_21 * 25 + 0) % 32 == 22
if vB_13 then
    vB_21 = 0
    repeat
        vB_11 = { "ycqjvrgy", "retanowl", "qucbpwkpm", "shilvx", "ivjwfyilc", "kahdfh", "tgcps" }
        local wR = vB_21
        vB_3 = vB_11[wR % 7 + 1]
        if vB_3:len() >= vB_3:reverse():rep(wR % 3 + 2):len() then
            nB = string.sub(vB_13, 1, 18) .. "..."
        else
            vB_13 = string.sub(nB, 1, 18) .. "..."
        end
        vB_21 = (vB_21 + 2) % 8
    until (vB_21 * 5 + 0) % 8 == 2
end
vB_21 = vB_13
local o7 = if vB_21 then 1 else 0
local o5 = 1761 * o7 + 361 * (1 - o7)
local o6 = 2406 * o7 + 24 * (1 - o7)
if not ((o5 * 3784 + o6 * 2875 + o5 * o6) % 16777213 == 1040627) then
    vB_21 = nB
end
nj, nY, nV, nN, nJ, nG, nE, nA, vB_22, vB_9, FaqGroup, MovementGroup, CurrentCamera2, MenuGroup, nx, nw, connection, n_, nl, nc, m7, oa, nU, m6 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local oQ = vB_21
GameInfoGroup:AddLabel(nd("Server", oQ, vB_26), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
nj = os.clock()
task.spawn(fns.worker)
vB_11 = vB_25.Info:AddRightGroupbox("Scripts", "package")
vB_11:AddLabel(np("Included in this hub", vB_26), true)
vB_11:AddLabel(np(vB_15, vB_18), true)
local FeaturesGroup = vB_25.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(np("Auto Cook", vB_18), true)
FeaturesGroup:AddLabel(np("Auto Shop", ol), true)
FeaturesGroup:AddLabel(np("Auto Service", vB_16), true)
FeaturesGroup:AddLabel(np("Player Utilities", vB_26), true)
local SocialsGroup = vB_25.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = nQ })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = vB_25.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = nQ })
nY = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
nV = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
nN = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
nJ = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
nG = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
nE = "https://paypal.me/TheTruckerGOD"
nA = "https://venmo.com/u/miserablemusic"
local oR = "#345d9d"
if (not MenuGroup and MenuGroup or connection and MenuGroup) and (not connection or not connection or (nl or nl)) or not ((not MenuGroup and MenuGroup or connection and MenuGroup) and (not connection or not connection or (nl or nl))) then
    vB_22 = "#f7931a"
else
    n_ = "#f7931a"
end
local vB_10 = "#627eea"
if ((not FeaturesGroup and not n_ or (FeaturesGroup or not n_)) and (not FeaturesGroup and FeaturesGroup or (not n_ or FeaturesGroup)) or (FeaturesGroup and n_ or n_ and not FeaturesGroup) and ((not n_ or FeaturesGroup) and (not FeaturesGroup and not FeaturesGroup))) and not ((not FeaturesGroup and not n_ or (FeaturesGroup or not n_)) and (not FeaturesGroup and FeaturesGroup or (not n_ or FeaturesGroup)) or (FeaturesGroup and n_ or n_ and not FeaturesGroup) and ((not n_ or FeaturesGroup) and (not FeaturesGroup and not FeaturesGroup))) then
    nN = "#26a17b"
else
    vB_9 = "#26a17b"
end
vB_19 = "#14f195"
vB_28 = "#0070ba"
vB_7 = "#008cff"
vB_13 = vB_25.Info:AddRightGroupbox("Donations", "heart")
if (false or nx) and "#008cff" and ((false or nw) and (nx and not MovementGroup)) or not ((false or nx) and "#008cff" and ((false or nw) and (nx and not MovementGroup))) then
    vB_13:AddLabel(np("All donations are optional but appreciated.", ol), true)
    vB_13:AddLabel(np("If you donate you get a special role, just PING after you donate.", vB_16), true)
    vB_13:AddDivider()
    vB_13:AddLabel(np("LTC / Litecoin", oR), true)
    vB_13:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
    vB_13:AddLabel(np("BTC / Bitcoin", vB_22), true)
    vB_13:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
    vB_13:AddLabel(np("ETH / Ethereum", vB_10), true)
    vB_13:AddButton({ Text = "Copy Ethereum Address", Func = fns.onCopyEthereumAddress })
    vB_13:AddLabel(np("USDT", vB_9), true)
    vB_13:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
    vB_13:AddLabel(np("Solana", vB_19), true)
    vB_13:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
    vB_13:AddLabel(np("PayPal", vB_28), true)
    vB_13:AddButton({ Text = "Copy PayPal Link", Func = fns.onCopyPayPalLink })
    vB_13:AddLabel(np("Venmo", vB_7), true)
    vB_13:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
    vB_13:AddDivider()
    vB_13:AddLabel(np("Don't have any of the listed currencies but still wanna donate?", vB_26), true)
    vB_13:AddLabel(np("DM me and we'll work something out.", vB_18), true)
    FaqGroup = vB_25.Info:AddRightGroupbox("FAQ", "circle-help")
else
    vB_7:AddLabel(vB_25("All donations are optional but appreciated.", vB_19), true)
    vB_7:AddLabel(vB_25("If you donate you get a special role, just PING after you donate.", np), true)
    vB_7:AddDivider()
    vB_7:AddLabel(vB_25("LTC / Litecoin", vB_22), true)
    vB_7:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
    vB_7:AddLabel(vB_25("BTC / Bitcoin", oR), true)
    vB_7:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
    vB_7:AddLabel(vB_25("ETH / Ethereum", vB_26), true)
    vB_7:AddButton({ Text = "Copy Ethereum Address", Func = fns.onCopyEthereumAddress })
    vB_7:AddLabel(vB_25("USDT", FaqGroup), true)
    vB_7:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
    vB_7:AddLabel(vB_25("Solana", vB_9), true)
    vB_7:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
    vB_7:AddLabel(vB_25("PayPal", ol), true)
    vB_7:AddButton({ Text = "Copy PayPal Link", Func = fns.onCopyPayPalLink })
    vB_7:AddLabel(vB_25("Venmo", vB_10), true)
    vB_7:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
    vB_7:AddDivider()
    vB_7:AddLabel(vB_25("Don't have any of the listed currencies but still wanna donate?", vB_28), true)
    vB_7:AddLabel(vB_25("DM me and we'll work something out.", vB_16), true)
    vB_18.Info:AddRightGroupbox("FAQ", "circle-help")
end
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
local CookingGroup = vB_25.Main:AddLeftGroupbox("Cooking", "flame")
CookingGroup:AddToggle("AutoCook", { Text = "Auto Cook", Default = false })
CookingGroup:AddToggle("CookDragToPot", { Text = "Drag Onto Pot", Default = true })
CookingGroup:AddToggle("CookClaimReady", { Text = "Claim Ready Food", Default = true })
CookingGroup:AddDropdown("CookRecipes", { Text = "Cook Recipes", Values = nK, Multi = true, AllowNull = true, Default = {} })
CookingGroup:AddSlider("CookDelay", { Text = "Cook Delay", Default = 0.5, Min = 0.2, Max = 3, Rounding = 1 })
local StockGroup = vB_25.Main:AddLeftGroupbox("Stock", "package")
StockGroup:AddToggle("AutoPlaceFood", { Text = "Auto Place Food", Default = false })
local ShopGroup = vB_25.Main:AddRightGroupbox("Shop", "shopping-bag")
ShopGroup:AddToggle("AutoBuyShop", { Text = "Auto Buy Shop", Default = false })
ShopGroup:AddDropdown("ShopRecipes", { Text = "Shop Recipes", Values = nK, Multi = true, AllowNull = true, Default = {} })
local ServiceGroup = vB_25.Main:AddRightGroupbox("Service", "hand-platter")
ServiceGroup:AddToggle("AutoCashier", { Text = "Auto Cashier", Default = false })
ServiceGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
ServiceGroup:AddDropdown("UpgradeChoices", { Text = "Upgrades", Values = vB_1, Multi = true, AllowNull = true, Default = {} })
ServiceGroup:AddToggle("AutoHire", { Text = "Auto Hire", Default = false })
ServiceGroup:AddDropdown("HireWorker", { Text = "Hire Worker", Values = vB_4, Default = "Cashier" })
ServiceGroup:AddToggle("HireRehire", { Text = "Rehire After Shift", Default = true })
MovementGroup = vB_25.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = vB_25.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
nl = function(hd)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not hd)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not hd
        end
    end)
    if not hd then
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
Toggles.AntiGameplayPause:OnChanged(fn855)
task.spawn(antiGameplayPauseLoop)
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(fns.onJumpRequest)
CurrentCamera2 = Workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn458)
Toggles.WalkSpeedEnabled:OnChanged(fn719)
MenuGroup = vB_25.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
nx = tick()
nw = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local up = v
        pcall(function()
            up:Disable()
        end)
    end
end)
nc = fn553
connection = UserInputService.InputBegan:Connect(fns.onInputBegan)
n_ = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
task.spawn(antiAfkLoop)
Library:OnUnload(fn579)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(vB_25.Settings)
ThemeManager:LoadDefault()
om:SetLibrary(Library)
om:IgnoreThemeSettings()
om:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
om:SetFolder("OuroborosHub/CookAndSell")
vB_3 = om:BuildConfigSection(vB_25.Settings)
m7 = fn1039
oa = fn1014
nU = fns.fn173
m6 = function(iT)
    local u6
    u6 = nil
    local u7 = type(iT) ~= "table" or type(iT.idx) ~= "string" or type(iT.type) ~= "string" or om.Ignore[iT.idx]
    if u7 then
        return false
    end
    u6 = m7(iT.type, iT.idx)
    if not u6 then
        return false
    end
    local u7_1 = pcall(function()
        if iT.type == "Input" then
            if type(iT.text) ~= "string" then
                return
            end
            u6:SetValue(iT.text)
        elseif iT.type == "ColorPicker" then
            u6:SetValueRGB(Color3.fromHex(iT.value), iT.transparency)
        elseif iT.type == "KeyPicker" then
            u6:SetValue({ iT.key, iT.mode, iT.modifiers })
            if iT.mode == "Toggle" and iT.toggled ~= nil then
                u6.Toggled = iT.toggled
                u6:Update()
            end
        else
            u6:SetValue(iT.value)
        end
    end)
    return u7_1
end
do
    vB_3:AddDivider()
    vB_3:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    vB_3:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
    vB_3:AddButton("Import Config from Clipboard Text", fns.onImportConfigFromClipboardTex)
    om:LoadAutoloadConfig()
    task.spawn(worker7)
    task.spawn(worker6)
    task.spawn(fns.worker5)
    task.spawn(worker4)
    task.spawn(worker3)
    task.spawn(fns.worker2)
end
