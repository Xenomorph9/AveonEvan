local fns = {}
local wS_2, wS_3, wS_4, wS_7, wS_8, wS_11, wS_12, wS_16, wS_17, wS_18, wS_20, GemShopGroup, wS_22, wS_24, wS_25, wS_28, wS_29, wS_32, wS_33, wS_34, wS_35, wS_38, FeaturesGroup, wS_40, wS_43, wS_44, wS_47, wS_48, wS_49, wS_50
local oQ
local pe
local oc
local oW
local connection2
local status
local ReplicaController
local oJ
local pq
local oo
local o7
local oP
local ow
local pd
local ob
local oV
local oC
local pj
local oh
local nZ
local oI
local gemPurchase
local o6
local Label
local ov
local RebirthData
local oB
local pi
local og
local oH
local po
local om
local o5
local n3
local ou
local n9
local oT
local oA
local ph
local of
local oZ
local nX
local oG
local rebirth
local ol
local o4
local n2
local oM
local ot
local pa
local n8
local oS
local oz
local oe
local connection
local nW
local oF
local pm
local ok
local n1
local oq
local oR
local oy
local pf
local nV
local oE
local pl
local oj
local o2
local n0
local PlayerGui
local op
local n6
function fns.fn8(T, U)
    if setclipboard then
        setclipboard(T)
    elseif toclipboard then
        toclipboard(T)
    end
    oH:Notify(U)
end
function fns.worker3()
    while not oH.Unloaded do
        if nW("AutoBuyDice") then
            pcall(oW)
        end
        if nW("AutoBuyPotions") then
            pcall(o2)
        end
        if nW("AutoBuyUpgrades") then
            pcall(oZ)
        end
        if nW("AutoBuyGemUpgrades") then
            pcall(oR)
        end
        if nW("AutoBuyCharacterSlots") then
            pcall(n0)
        end
        if nW("AutoBuyLuckyBlocks") then
            pcall(o7)
        end
        task.wait(0.75)
    end
end
function fns.fn44()
    local tX = pe()
    if not tX then
        return
    end
    local tY = tX.Rebirths
    local t2 = if tY then 1 else 0
    local t0 = 450 * t2 + 2903 * (1 - t2)
    local t1 = 822 * t2 + 1248 * (1 - t2)
    if not ((t0 * 207 + t1 * 859 + t0 * t1) % 16777213 == 1169148) then
        tY = 0
    end
    local tY_1 = RebirthData[tY + 1]
    if not tY_1 then
        return
    end
    local tZ_1 = tX.Coins or 0
    local tX_1 = tY_1.Price
    local t2_1 = if tX_1 then 1 else 0
    local t0_1 = 1302 * t2_1 + 690 * (1 - t2_1)
    local t1_1 = 1938 * t2_1 + 717 * (1 - t2_1)
    if not ((t0_1 * 1492 + t1_1 * 2700 + t0_1 * t1_1) % 16777213 == 9698460) then
        tX_1 = 0
    end
    if tZ_1 < tX_1 then
        return
    end
    pcall(function()
        rebirth:InvokeServer()
    end)
end
function fns.fn64()
    local rI = oP("WeatherChoice")
    local attr = status:GetAttribute("event")
    local rK = type(attr) == "string" and attr ~= "" and rI[attr]
    if rK then
        return true
    end
    local rJ_1 = status:GetAttribute("nullity_active") == true and rI.Nullity == true
    return rJ_1
end
function fns.fn77(by)
    local q_ = oo[by]
    local q0 = q_ and q_.Value
    if typeof(q0) ~= "table" then
        return {}
    end
    local q0_1 = true
    local q1 = {}
    for k in q0 do
        if type(k) ~= "number" then
            q0_1 = false
            break
        end
    end
    if q0_1 then
        for i, v in ipairs(q0) do
            if type(v) == "string" then
                q1[v] = true
            end
        end
        return q1
    end
    return q0
end
function fns.worker5()
    while not oH.Unloaded do
        if nW("AutoRebirth") then
            pcall(pi)
        end
        if nW("AutoCollectMoney") then
            pcall(oB)
        end
        if nW("AutoPlaceBest") then
            pcall(oJ)
        end
        if nW("AutoEquipBestPets") then
            pcall(oh)
        end
        if nW("AutoSpinWheel") then
            pcall(oe)
        end
        task.wait(1)
    end
end
function fns.onRscripts()
    ok(oy, "Copied Rscripts profile to clipboard")
end
function fns.fn114(iw, ix)
    local vS_1 = (iw == "Toggle" and ov or oo)[ix]
    local vR_2 = type(vS_1) == "table" and vS_1.Type == iw
    return vR_2 and vS_1 or nil
end
function fns.fn115(aF, aG)
    if aF.order == aG.order then
        return aF.luck < aG.luck
    end
    return aF.order < aG.order
end
function fns.onInputChanged(io)
    local UserInputType = io.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        n8 = tick()
    end
end
function fns.onExportConfigToClipboard()
    local wm_1
    local wl_1
    wl_1, wm_1 = pcall(o5.JSONEncode, o5, pm())
    if not wl_1 then
        oH:Notify("Failed to encode the config")
        return
    end
    local wl_2 = setclipboard or toclipboard
    local wl_3 = type(wl_2) ~= "function" or not pcall(wl_2, wm_1)
    if wl_3 then
        oH:Notify("Your executor does not support copying to the clipboard")
        return
    end
    oH:Notify("Config copied to clipboard", 6)
end
function fns.onCopyUSDTAddress()
    ok(oA, "Copied USDT address")
end
function fns.fn171()
    for k, v in { "Rolling", "Opening", "LuckyBlock" } do
        local rA = PlayerGui:FindFirstChild(v)
        if rA then
            rA.Enabled = false
        end
    end
end
function fns.fn182()
    connection:Disconnect()
    connection2:Disconnect()
    of(false)
    local wO = n9()
    if wO then
        wO.PlatformStand = false
        wO.WalkSpeed = 16
    end
end
function fns.fn197()
    local uW_1
    local uV_1
    if identifyexecutor then
        uW_1, uV_1 = identifyexecutor()
        local uX = uW_1 ~= ""
        local uY = type(uW_1) == "string" and uX
        if uY then
            local uX_1 = type(uV_1) == "string" and uV_1 ~= "" and uW_1 .. " " .. uV_1
            ou = uX_1 or uW_1
        end
    end
end
function fns.fn241()
    local rj = type(_G.Profile) == "table" and type(_G.Profile.Data) == "table"
    if rj then
        return _G.Profile.Data
    end
    local _replicas = ReplicaController._replicas
    if type(_replicas) == "table" then
        for k, v in _replicas do
            local rj_2 = v.Class == "PlayerProfile" and type(v.Data) == "table"
            if rj_2 then
                return v.Data
            end
        end
    end
    return nil
end
function fns.fn245()
    local Character = oQ.Character
    local re = Character and Character:FindFirstChildOfClass("Humanoid")
    return re
end
function fns.fn275()
    pcall(function()
        o4:InvokeServer()
    end)
end
function fns.fn310(ad, ae, af)
    return string.format("<b>%s</b> %s %s", ad, n1("-", "#5a6070"), n1(ae, af))
end
function fns.fn318(be, bf)
    return oC[be] < oC[bf]
end
function fns.fn331(aP, aQ)
    return aP.order < aQ.order
end
function fns.fn334()
    local rR = pe()
    if not rR then
        return nil
    end
    local rT = rR.dices or {}
    local rR_1 = nil
    local rS_1 = -1
    for k, v in nV do
        if (rT[k] or 0) > 0 then
            local rT_2 = v.Luck_Percentage or 0
            if rT_2 >= rS_1 then
                rS_1 = rT_2
                rR_1 = k
            end
        end
    end
    return rR_1
end
function fns.fn345()
    local plot = oQ:FindFirstChild("plot")
    return plot and plot.Value or nil
end
function fns.onJumpRequest()
    if oH.Unloaded then
        return
    end
    if ov.InfJump and ov.InfJump.Value then
        local vs_1 = n9()
        if vs_1 then
            vs_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.fn501(bt)
    local qX = oo[bt]
    return qX and qX.Value or nil
end
function fns.onCopyLitecoinAddress()
    ok(oM, "Copied Litecoin address")
end
function fns.onCopyEthereumAddress()
    ok(oF, "Copied Ethereum address")
end
function fns.fn546()
    if not ov.WalkSpeedEnabled.Value then
        local vc = n9()
        if vc then
            vc.WalkSpeed = 16
        end
    end
end
local function worker7()
    while not oH.Unloaded do
        task.wait(2)
        local wN = if nW("AntiAfk") then 1 else 0
        if wN == 1 then
            local wH = tick() - n8
            local wI = tick() - n3
            if wH >= 300 and wI >= 60 then
                pcall(po)
            else
                if wH < 300 and wI >= 300 then
                    pcall(po)
                end
            end
        end
    end
end
local function onRenderStepped(hS)
    if oH.Unloaded then
        return
    end
    if nW("HideAnimation") then
        oj()
    end
    if ov.WalkSpeedEnabled and ov.WalkSpeedEnabled.Value then
        local vx_1 = n9()
        if vx_1 then
            vx_1.WalkSpeed = oo.WalkSpeed.Value
        end
    end
    if ov.Fly and ov.Fly.Value then
        local vx_3 = nX()
        local vy = n9()
        pj = workspace.CurrentCamera or pj
        if vx_3 and vy and pj then
            vy.PlatformStand = true
            local vy_1 = Vector3.zero
            if pd:IsKeyDown(Enum.KeyCode.W) then
                vy_1 = vy_1 + pj.CFrame.LookVector
            end
            if pd:IsKeyDown(Enum.KeyCode.S) then
                vy_1 = vy_1 - pj.CFrame.LookVector
            end
            if pd:IsKeyDown(Enum.KeyCode.A) then
                vy_1 = vy_1 - pj.CFrame.RightVector
            end
            if pd:IsKeyDown(Enum.KeyCode.D) then
                vy_1 = vy_1 + pj.CFrame.RightVector
            end
            if pd:IsKeyDown(Enum.KeyCode.Space) then
                vy_1 = vy_1 + Vector3.new(0, 1, 0)
            end
            if pd:IsKeyDown(Enum.KeyCode.LeftControl) then
                vy_1 = vy_1 - Vector3.new(0, 1, 0)
            end
            vx_3.Velocity = Vector3.zero
            if vy_1.Magnitude > 0 then
                vx_3.CFrame = vx_3.CFrame + vy_1.Unit * oo.FlySpeed.Value * hS
            end
        end
    end
end
local function onInputBegan()
    n8 = tick()
end
local function fn608()
    if not ov.Fly.Value then
        local va = n9()
        if va then
            va.PlatformStand = false
        end
    end
end
local function fn611(gm)
    local DiscordGroup = gm:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = ob })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = ob })
end
local function fn639()
    local tA = pe()
    if not tA then
        return
    end
    local tB = ph(tA, "+EquipSlot") or ph(tA, "+1PetEquip")
    if tB then
        return
    end
    pcall(function()
        gemPurchase:InvokeServer("+EquipSlot")
    end)
end
local function fn645(dS)
    local s0 = 0
    if type(dS.Increments) == "table" then
        for k in dS.Increments do
            local s1 = type(k) == "number" and k > s0
            if s1 then
                s0 = k
            end
        end
    end
    return s0
end
local function fn646()
    pcall(function()
        o6:InvokeServer()
    end)
end
local function fn659(aa, ab)
    return string.format('<font color="%s">%s</font>', ab, aa)
end
local function worker6()
    while not oH.Unloaded do
        if nW("AutoClaimIndex") then
            pcall(oG)
        end
        if nW("AutoClaimRewards") then
            pcall(pl)
        end
        if nW("AutoClaimQuests") then
            pcall(ot)
        end
        task.wait(2)
    end
end
local function worker4()
    while not oH.Unloaded do
        if nW("AutoOpenEggs") then
            pcall(op)
        end
        task.wait(0.5)
    end
end
local function onUnload()
    oH:Unload()
end
local function fn682(c7)
    local Base = c7:FindFirstChild("Base")
    if not Base then
        return false
    end
    for i, child in Base:GetChildren() do
        if child:IsA("Model") then
            return true
        end
    end
    return false
end
local function onCopyBitcoinAddress()
    ok(oI, "Copied Bitcoin address")
end
local function fn726()
    local uO = pe()
    local uP_1 = uO and uO.spins or 0
    local rewards = oQ:FindFirstChild("rewards")
    local uQ = rewards and rewards:FindFirstChild("SpinCount")
    local uO_3 = uQ
    if uQ then
        uQ = typeof(uO_3.Value) == "number"
    end
    if uQ then
        uP_1 = math.max(uP_1, uO_3.Value)
    end
    if uP_1 <= 0 then
        return
    end
    pcall(function()
        oS:InvokeServer()
    end)
end
local function onCopyPayPalLink()
    ok(oq, "Copied PayPal link")
end
local function worker()
    local u3_1
    while true do
        task.wait(1)
        if oH.Unloaded then
            break
        end
        local u2 = math.floor(os.clock() - pf)
        if u2 < 60 then
            u3_1 = u2 .. "s"
        elseif u2 < 3600 then
            u3_1 = string.format("%dm %ds", u2 // 60, u2 % 60)
        else
            u3_1 = string.format("%dh %dm", u2 // 3600, u2 % 3600 // 60)
        end
        Label:SetText(pq("Session time", u3_1, oV))
    end
end
local function fn770()
    local Character = oQ.Character
    local rh = Character and Character:FindFirstChild("HumanoidRootPart")
    return rh
end
local function onCopyJoinScript_JobID()
    local gD = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, n2)
    ok(gD, "Copied join script to clipboard")
end
local function worker2()
    while not oH.Unloaded do
        local wz = (nW("AutoRoll"))
        if not wz then
            local wA = nW("AutoRollEvent") and n6()
            wz = wA
        end
        if wz then
            pcall(oc)
        end
        task.wait(0.35)
    end
end
local function fn807(iE, iF)
    local Type = iF.Type
    if Type == "Toggle" then
        return { idx = iE, type = "Toggle", value = iF.Value == true }
    elseif Type == "Slider" then
        return { idx = iE, type = "Slider", value = tostring(iF.Value) }
    elseif Type == "Dropdown" then
        return { idx = iE, type = "Dropdown", multi = iF.Multi == true, value = iF.Value }
    elseif Type == "Input" then
        local vW = iF.Value or ""
        return { idx = iE, type = "Input", text = tostring(vW) }
    elseif Type == "ColorPicker" then
        return { idx = iE, type = "ColorPicker", value = iF.Value:ToHex(), transparency = iF.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = iE,
            type = "KeyPicker",
            mode = iF.Mode,
            key = iF.Value,
            modifiers = iF.Modifiers,
            toggled = iF.Toggled
        }
    else
        return nil
    end
end
local function fn816(ff)
    if type(ff) ~= "table" then
        return 0
    end
    local t3 = tonumber(ff.Multiplier) or tonumber(ff.multiplier) or tonumber(ff.mult)
    return t3 or 0
end
local function fn818()
    local Main = PlayerGui:FindFirstChild("Main")
    local rv = Main and Main:FindFirstChild("Dice")
    local ru_1 = rv
    if rv then
        rv = ru_1:FindFirstChild("RollState")
    end
    return rv
end
local function onCopyVenmoLink()
    ok(ol, "Copied Venmo link")
end
local function fn848()
    local vZ = {}
    for i, v in ipairs({ ov, oo }) do
        for k, v in pairs(v) do
            local v_ = type(v) == "table" and type(v.Type) == "string" and not oz.Ignore[k]
            if v_ then
                local v__1 = nZ(k, v)
                if v__1 then
                    vZ[#vZ + 1] = v__1
                end
            end
        end
    end
    table.sort(vZ, function(iS, iT)
        if iS.type ~= iT.type then
            return iS.type < iT.type
        end
        return iS.idx < iT.idx
    end)
    return { objects = vZ }
end
local function fn868()
    local CurrentCamera = oT.CurrentCamera
    if not CurrentCamera then
        return
    end
    pa:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    pa:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    n3 = tick()
end
local function fn876()
    of(ov.AntiGameplayPause.Value)
end
local function onStepped()
    if oH.Unloaded then
        return
    end
    if ov.NoClip and ov.NoClip.Value then
        local Character = oQ.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local ve_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if ve_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn884()
    if ov.HideAnimation.Value then
        og()
    end
end
local function fn888(cf, cg)
    local gamepasses = cf.gamepasses
    if type(gamepasses) ~= "table" then
        return false
    end
    return gamepasses[cg] == true
end
local function fn902()
    ok(oE, "Copied Discord invite to clipboard")
end
local function fn941()
    oj()
end
local function antiGameplayPauseLoop()
    while not oH.Unloaded do
        task.wait(1)
        if ov.AntiGameplayPause.Value then
            of(true)
        end
    end
end
local function onCopySolanaAddress()
    ok(ow, "Copied Solana address")
end
local function onImportConfigFromClipboardTex()
    local wr_1
    local wp = oo.SaveManager_ImportSource.Value or ""
    local wp_1
    local wq = tostring(wp):match("^%s*(.-)%s*$")
    if wq == "" then
        oH:Notify("Paste an exported config into the box first")
        return
    end
    wp_1, wr_1 = pcall(o5.JSONDecode, o5, wq)
    local wq_1 = not wp_1 or type(wr_1) ~= "table" or type(wr_1.objects) ~= "table"
    if wq_1 then
        oH:Notify("That is not a valid exported config")
        return
    end
    local wp_2 = 0
    for i, v in ipairs(wr_1.objects) do
        if om(v) then
            wp_2 += 1
        end
    end
    if wp_2 == 0 then
        oH:Notify("No settings in that config matched this script")
        return
    end
    oo.SaveManager_ImportSource:SetValue("")
    local wr_2 = wp_2 == 1 and "" or "s"
    oH:Notify(("Imported %d setting%s"):format(wp_2, wr_2), 6)
end
local function fn981(bo)
    local qU = ov[bo]
    return qU ~= nil and qU.Value == true
end
nV = nil
nW = nil
nX = nil
nZ = nil
ReplicaController = nil
n0 = nil
n1 = nil
n2 = nil
n3 = nil
Label = nil
n6 = nil
n8 = nil
n9 = nil
RebirthData = nil
ob = nil
oc = nil
oe = nil
of = nil
og = nil
oh = nil
status = nil
oj = nil
ok = nil
ol = nil
om = nil
oo = nil
op = nil
oq = nil
ot = nil
ou = nil
ov = nil
ow = nil
oy = nil
oz = nil
oA = nil
oB = nil
oC = nil
connection2 = nil
oE = nil
oF = nil
oG = nil
oH = nil
oI = nil
local nU, nY, TimeRewards, n7, od, on, ox
oJ = nil
PlayerGui = nil
oM = nil
oP = nil
oQ = nil
oR = nil
oS = nil
oT = nil
oV = nil
oW = nil
connection = nil
oZ = nil
o2 = nil
o4 = nil
o5 = nil
o6 = nil
o7 = nil
pa = nil
pd = nil
pe = nil
pf = nil
ph = nil
pi = nil
pj = nil
pl = nil
pm = nil
rebirth = nil
po = nil
gemPurchase = nil
pq = nil
local oL, oN, oO, oU, oX, o_, QuestRemote, o1, o3, o8, o9, pb, pc, pg, pk
oL = nil
oN = nil
oO = nil
oU = nil
oX = nil
o_ = nil
QuestRemote = nil
o1 = nil
o3 = nil
o8 = nil
o9 = nil
pb = nil
pc = nil
pg = nil
pk = nil
local ScriptsGroup, DiceGroup, RollingGroup
wS_47, wS_17, wS_33, pd, pa, o5, o3, o_, oT, oQ, PlayerGui, wS_48, oE, oy, wS_49, wS_29, status, wS_2, wS_35, wS_20, RebirthData, TimeRewards, wS_4, ReplicaController, nY, nU, gemPurchase, rebirth, pg, pb, o6, o4, QuestRemote, oU, oS, wS_32, oH, wS_12, oz, ov, oo, wS_28, wS_44, oV, wS_11, oM, oI, oF, oA, ow, oq, ol, wS_25, wS_43, wS_8, wS_24, wS_40, wS_7, wS_22, wS_38, nV, ok, ob, n1, pq = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local wS_15 = 95
repeat
    wS_16 = (wS_15 * 4 + 17) % 25 + 1
    if wS_16 <= 13 then
        if wS_16 <= 7 then
            if wS_16 <= 4 then
                if wS_16 <= 2 then
                    if wS_16 <= 1 then
                        if (wS_15 * 2 + 2) * 10 % 3 == ((wS_15 * 2 + 2) * 10 + 4) % 3 then
                            o5 = game:GetService("VirtualUser")
                            pa = game:GetService("HttpService")
                        else
                            pa = game:GetService("VirtualUser")
                            o5 = game:GetService("HttpService")
                        end
                        wS_15 = (wS_15 + 119) % 200
                    else
                        if (wS_15 * 2 + 8) * 13 % 3 == ((wS_15 * 2 + 8) * 13 + 3) % 3 then
                            o3 = game:GetService("GuiService")
                            o_ = game:GetService("CoreGui")
                            oT = game:GetService("Workspace")
                        else
                            oT = game:GetService("GuiService")
                            o3 = game:GetService("CoreGui")
                            o_ = game:GetService("Workspace")
                        end
                        wS_15 = (wS_15 + 144) % 200
                    end
                elseif wS_16 <= 3 then
                    if wS_15 * 57861901 + 3 + 1 >= wS_15 * 57861901 + 3 + 1 + 5 then
                        wS_47 = PlayerGui.LocalPlayer
                        oQ = wS_47:WaitForChild("PlayerGui")
                    else
                        oQ = wS_47.LocalPlayer
                        PlayerGui = oQ:WaitForChild("PlayerGui")
                    end
                    wS_15 = (wS_15 + 19) % 200
                else
                    wS_50 = (vector.create((wS_15 * 5 + 5) % 11 + 1, (wS_15 * 4 + 3) % 13 + 1, (wS_15 * 11 + 6) % 17 + 1))
                    wS_34 = (vector.create((wS_15 * 7 + 3) % 11 + 1, (wS_15 * 11 + 4) % 13 + 1, (wS_15 * 14 + 12) % 17 + 1))
                    wS_18 = (vector.create((wS_15 * 3 + 2) % 5 + 1, (wS_15 * 1 + 5) % 7 + 1, (wS_15 * 5 + 2) % 9 + 1))
                    if math.abs((vector.angle(wS_50, wS_34, wS_18))) - math.abs((vector.angle(wS_34, wS_50, wS_18))) == 0 then
                        wS_48 = "Spin a Superhero"
                        oE = "https://discord.gg/ehKVq7pf7v"
                        oy = "https://rscripts.net/@Ouroboros"
                    else
                        oE = "Spin a Superhero"
                        oy = "https://discord.gg/ehKVq7pf7v"
                        wS_48 = "https://rscripts.net/@Ouroboros"
                    end
                    wS_15 = (wS_15 + 119) % 200
                end
            elseif wS_16 <= 6 then
                if wS_16 <= 5 then
                    if (wS_15 * 2 + 7) * 4 % 3 == ((wS_15 * 2 + 7) * 4 + 1) % 3 then
                        wS_17 = wS_49:WaitForChild("Events")
                    else
                        wS_49 = wS_17:WaitForChild("Events")
                    end
                    wS_15 = (wS_15 + 144) % 200
                else
                    wS_50 = (vector.create((wS_15 * 2 + 2) % 11 + 1, (wS_15 * 3 + 5) % 13 + 1, (wS_15 * 5 + 14) % 17 + 1))
                    wS_34 = (vector.create((wS_15 * 1 + 2) % 11 + 1, (wS_15 * 7 + 7) % 13 + 1, (wS_15 * 1 + 13) % 17 + 1))
                    wS_18 = (vector.create((wS_15 * 3 + 2) % 5 + 1, (wS_15 * 5 + 6) % 7 + 1, (wS_15 * 5 + 3) % 9 + 1))
                    if math.abs((vector.angle(wS_50, wS_34, wS_18))) - math.abs((vector.angle(wS_34, wS_50, wS_18))) == 0 then
                        wS_29 = wS_17:WaitForChild("Modules")
                    else
                        wS_17 = wS_29:WaitForChild("Modules")
                    end
                    wS_15 = (wS_15 + 44) % 200
                end
            else
                if wS_15 * 19643871 + 9 + 7 >= wS_15 * 19643871 + 9 + 7 + 5 then
                    wS_2 = status:WaitForChild("status")
                    wS_29 = require(wS_35:WaitForChild("DiceData"))
                    wS_17 = require(wS_35:WaitForChild("PotionData"))
                else
                    status = wS_17:WaitForChild("status")
                    wS_2 = require(wS_29:WaitForChild("DiceData"))
                    wS_35 = require(wS_29:WaitForChild("PotionData"))
                end
                wS_15 = (wS_15 + 44) % 200
            end
        elseif wS_16 <= 10 then
            if wS_16 <= 9 then
                if wS_16 <= 8 then
                    local x5 = bit32.rrotate(bit32.bxor(bit32.lrotate(wS_15, 20), string.byte(tostring(wS_47))), 17)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(x5, 3986309829), 3245950982), (bit32.bxor(bit32.band(x5, 308657466), 2929864635))), 3245950982), 2929864635) ~= x5 then
                        wS_29 = require(wS_20:WaitForChild("UpgradeData"))
                    else
                        wS_20 = require(wS_29:WaitForChild("UpgradeData"))
                    end
                    wS_15 = (wS_15 + 194) % 200
                else
                    local x_ = bit32.rrotate(bit32.bxor(bit32.lrotate(wS_15, 29), string.byte(tostring(o3))), 19)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(x_, 2816684227), 2), 2676802318) ~= bit32.lrotate(x_, 2) then
                        wS_29 = require(RebirthData:WaitForChild("RebirthData"))
                    else
                        RebirthData = require(wS_29:WaitForChild("RebirthData"))
                    end
                    wS_15 = (wS_15 + 69) % 200
                end
            else
                wS_50 = (vector.create((wS_15 * 1 + 4) % 11 + 1, (wS_15 * 5 + 6) % 13 + 1, (wS_15 * 8 + 16) % 17 + 1))
                wS_34 = (vector.create((wS_15 * 5 + 3) % 11 + 1, (wS_15 * 4 + 11) % 13 + 1, (wS_15 * 13 + 3) % 17 + 1))
                wS_18 = (vector.create((wS_15 * 2 + 2) % 11 + 1, (wS_15 * 1 + 12) % 13 + 1, (wS_15 * 4 + 9) % 17 + 1))
                wS_3 = (vector.create((wS_15 * 2 + 8) % 11 + 1, (wS_15 * 7 + 6) % 13 + 1, (wS_15 * 2 + 16) % 17 + 1))
                if vector.dot(vector.cross(wS_50, wS_34), (vector.cross(wS_18, wS_3))) == vector.dot(wS_50, wS_18) * vector.dot(wS_34, wS_3) - vector.dot(wS_50, wS_3) * vector.dot(wS_34, wS_18) + 3 then
                    wS_29 = require(TimeRewards:WaitForChild("TimeRewards"))
                else
                    TimeRewards = require(wS_29:WaitForChild("TimeRewards"))
                end
                wS_15 = (wS_15 + 169) % 200
            end
        elseif wS_16 <= 12 then
            if wS_16 <= 11 then
                if (wS_15 * 1 + 1) * 9 % 4 == ((wS_15 * 1 + 1) * 9 + 3) % 4 then
                    nU = require(ReplicaController:WaitForChild("Mutations"))
                    wS_29 = require(wS_4:WaitForChild("ReplicaController"))
                    wS_17 = gemPurchase:WaitForChild("buy")
                    wS_49 = gemPurchase:WaitForChild("upgrade")
                    nY = gemPurchase:WaitForChild("gemPurchase")
                else
                    wS_4 = require(wS_29:WaitForChild("Mutations"))
                    ReplicaController = require(wS_17:WaitForChild("ReplicaController"))
                    nY = wS_49:WaitForChild("buy")
                    nU = wS_49:WaitForChild("upgrade")
                    gemPurchase = wS_49:WaitForChild("gemPurchase")
                end
                wS_15 = (wS_15 + 144) % 200
            else
                wS_50 = {
                    "oopgqwuoh",
                    "wqbcksurqxl",
                    "ywmd",
                    "jwdu",
                    "rgmxvrsxms",
                    "uwhsys",
                    "fmqd",
                    "mvhoc",
                    "exqzbj",
                    "yop",
                    "zcbxsmakp"
                }
                local xi = wS_15
                wS_34 = wS_50[xi % 11 + 1]
                if wS_34:len() >= wS_34:gsub("(.)", "%1%1", xi % 3 % 2 + 1):len() then
                    o6 = rebirth:WaitForChild("rebirth")
                    wS_49 = rebirth:WaitForChild("RegularPet")
                    pg = rebirth:WaitForChild("PetState")
                    pb = rebirth:WaitForChild("PlaceBestBaddies")
                else
                    rebirth = wS_49:WaitForChild("rebirth")
                    pg = wS_49:WaitForChild("RegularPet")
                    pb = wS_49:WaitForChild("PetState")
                    o6 = wS_49:WaitForChild("PlaceBestBaddies")
                end
                wS_15 = (wS_15 + 69) % 200
            end
        else
            local xY = bit32.rrotate(bit32.bxor(bit32.lrotate(wS_15, 31), string.byte(tostring(ok))), 2)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(xY, 2122451357), 2322929208), (bit32.bxor(bit32.band(xY, 2172515938), 432623996))), 2322929208), 432623996) ~= xY then
                wS_49 = QuestRemote:WaitForChild("claimAll")
                oS = QuestRemote:WaitForChild("QuestRemote")
                o4 = QuestRemote:WaitForChild("ClaimTimeReward")
                oU = QuestRemote:WaitForChild("spinrequest")
            else
                o4 = wS_49:WaitForChild("claimAll")
                QuestRemote = wS_49:WaitForChild("QuestRemote")
                oU = wS_49:WaitForChild("ClaimTimeReward")
                oS = wS_49:WaitForChild("spinrequest")
            end
            wS_15 = (wS_15 + 94) % 200
        end
    elseif wS_16 <= 19 then
        if wS_16 <= 16 then
            if wS_16 <= 15 then
                if wS_16 <= 14 then
                    local x6 = bit32.rrotate(bit32.bxor(bit32.lrotate(wS_15, 31), string.byte(tostring(wS_29))), 21)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(x6, 3561565651), 2394694393), (bit32.bxor(bit32.band(x6, 733401644), 1933532870))), 2394694393), 1933532870) == x6 then
                        wS_32 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                    else
                        wS_12 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                    end
                    wS_15 = (wS_15 + 119) % 200
                else
                    wS_50 = {
                        "saspz",
                        "uqlrza",
                        "vxsa",
                        "jnkm",
                        "rbpfw",
                        "aaspevm",
                        "xle",
                        "vdpyawxra",
                        "vluqzaaa",
                        "hhbbpilhtyh"
                    }
                    local xl = wS_15
                    wS_34 = wS_50[xl % 10 + 1]
                    if wS_34:len() >= wS_34:reverse():rep(xl % 3 + 2):len() then
                        wS_32 = loadstring(game:HttpGet(wS_12 .. "Library.lua"))()
                        oz = loadstring(game:HttpGet(wS_12 .. "addons/ThemeManager.lua"))()
                        ov = loadstring(game:HttpGet(wS_12 .. "addons/SaveManager.lua"))()
                        oo = wS_32.Toggles
                        oH = wS_32.Options
                    else
                        oH = loadstring(game:HttpGet(wS_32 .. "Library.lua"))()
                        wS_12 = loadstring(game:HttpGet(wS_32 .. "addons/ThemeManager.lua"))()
                        oz = loadstring(game:HttpGet(wS_32 .. "addons/SaveManager.lua"))()
                        ov = oH.Toggles
                        oo = oH.Options
                    end
                    wS_15 = (wS_15 + 69) % 200
                end
            else
                wS_50 = (vector.create((wS_15 * 1 + 2) % 11 + 1, (wS_15 * 4 + 8) % 13 + 1, (wS_15 * 12 + 9) % 17 + 1))
                wS_34 = (vector.create((wS_15 * 1 + 3) % 11 + 1, (wS_15 * 1 + 8) % 13 + 1, (wS_15 * 5 + 3) % 17 + 1))
                local xw = vector.cross(wS_50, wS_34)
                local xx = vector.dot(wS_50, wS_34)
                if vector.dot(xw, xw) + xx * xx == vector.dot(wS_50, wS_50) * vector.dot(wS_34, wS_34) then
                    ok = fns.fn8
                    ob = fn902
                    n1 = fn659
                    pq = fns.fn310
                    wS_28 = "#7fd47f"
                else
                    wS_28 = fns.fn8
                    ok = fn902
                    ob = fn659
                    n1 = fns.fn310
                    pq = "#7fd47f"
                end
                wS_15 = (wS_15 + 69) % 200
            end
        elseif wS_16 <= 18 then
            if wS_16 <= 17 then
                if (wS_15 * 3 + 5) * 21 % 4 == ((wS_15 * 3 + 5) * 21 + 3) % 4 then
                    wS_11 = "#6ec1ff"
                    wS_44 = "#e8a34d"
                    oV = "#8b93a3"
                else
                    wS_44 = "#6ec1ff"
                    oV = "#e8a34d"
                    wS_11 = "#8b93a3"
                end
                wS_15 = (wS_15 + 119) % 200
            else
                wS_50 = (vector.create((wS_15 * 3 + 4) % 11 + 1, (wS_15 * 10 + 3) % 13 + 1, (wS_15 * 10 + 16) % 17 + 1))
                wS_34 = (vector.create((wS_15 * 3 + 2) % 11 + 1, (wS_15 * 6 + 5) % 13 + 1, (wS_15 * 13 + 17) % 17 + 1))
                wS_18 = (vector.create((wS_15 * 3 + 4) % 5 + 1, (wS_15 * 1 + 7) % 7 + 1, (wS_15 * 4 + 3) % 9 + 1))
                if math.abs((vector.angle(wS_50, wS_34, wS_18))) - math.abs((vector.angle(wS_34, wS_50, wS_18))) == 0 then
                    oM = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
                    oI = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
                    oF = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                    oA = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                    ow = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
                else
                    oF = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
                    ow = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
                    oI = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                    oM = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                    oA = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
                end
                wS_15 = (wS_15 + 194) % 200
            end
        else
            if (wS_15 * 1 + 5) * 9 % 4 == ((wS_15 * 1 + 5) * 9 + 6) % 4 then
                ol = "https://paypal.me/TheTruckerGOD"
                oq = "https://venmo.com/u/miserablemusic"
            else
                oq = "https://paypal.me/TheTruckerGOD"
                ol = "https://venmo.com/u/miserablemusic"
            end
            wS_15 = (wS_15 + 44) % 200
        end
    elseif wS_16 <= 22 then
        if wS_16 <= 21 then
            if wS_16 <= 20 then
                if (wS_15 * 3 + 8) * 17 % 4 == ((wS_15 * 3 + 8) * 17 + 4) % 4 then
                    wS_25 = "#345d9d"
                    wS_43 = "#f7931a"
                    wS_8 = "#627eea"
                else
                    wS_8 = "#345d9d"
                    wS_25 = "#f7931a"
                    wS_43 = "#627eea"
                end
                wS_15 = (wS_15 + 119) % 200
            else
                wS_50 = {
                    "uqxviry",
                    "lnxlv",
                    "uzvxrjag",
                    "qxxikx",
                    "wnqxihrd",
                    "awxikhenw",
                    "tzz",
                    "tguvp",
                    "iborfmgbnzv",
                    "pszrtwi",
                    "nnlarkuo"
                }
                local xB = wS_15
                wS_34 = wS_50[xB % 11 + 1]
                if wS_34:len() >= wS_34:gsub("(.)", "%1%1", xB % 3 % 2 + 1):len() then
                    wS_22 = "#26a17b"
                    wS_24 = "#14f195"
                    wS_40 = "#0070ba"
                    wS_7 = "#008cff"
                else
                    wS_24 = "#26a17b"
                    wS_40 = "#14f195"
                    wS_7 = "#0070ba"
                    wS_22 = "#008cff"
                end
                wS_15 = (wS_15 + 69) % 200
            end
        else
            wS_50 = (vector.create((wS_15 * 7 + 2) % 11 + 1, (wS_15 * 9 + 10) % 13 + 1, (wS_15 * 8 + 5) % 17 + 1))
            wS_34 = (vector.create((wS_15 * 1 + 8) % 11 + 1, (wS_15 * 9 + 12) % 13 + 1, (wS_15 * 5 + 9) % 17 + 1))
            local xk = vector.dot(wS_50, wS_34)
            if xk * xk <= vector.dot(wS_50, wS_50) * vector.dot(wS_34, wS_34) then
                wS_38 = {}
                nV = {}
            else
                nV = {}
                wS_38 = {}
            end
            wS_15 = (wS_15 + 194) % 200
        end
    elseif wS_16 <= 24 then
        if wS_16 <= 23 then
            local xW = bit32.rrotate(bit32.bxor(bit32.lrotate(wS_15, 13), string.byte(tostring(pd))), 10)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(xW, 583731181), 4282033569), (bit32.bxor(bit32.band(xW, 3711236114), 2574143802))), 4282033569), 2574143802) == xW then
                wS_47 = game:GetService("Players")
            else
                nV = game:GetService("Players")
            end
            wS_15 = (wS_15 + 19) % 200
        else
            local x7 = bit32.rrotate(bit32.bxor(bit32.lrotate(wS_15, 23), string.byte(tostring(wS_2))), 7)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(x7, 1715269371), 3763734387), (bit32.bxor(bit32.band(x7, 2579697924), 3844504780))), 3763734387), 3844504780) == x7 then
                wS_17 = game:GetService("ReplicatedStorage")
            else
                pg = game:GetService("ReplicatedStorage")
            end
            wS_15 = (wS_15 + 94) % 200
        end
    else
        if (pd and wS_28 or QuestRemote and not wS_28) and (pd and not pd or not nY and not wS_28) or (wS_25 or wS_28 or pd and not wS_28) and (not pd and wS_28 or (pd or not wS_28)) or not ((pd and wS_28 or QuestRemote and not wS_28) and (pd and not pd or not nY and not wS_28) or (wS_25 or wS_28 or pd and not wS_28) and (not pd and wS_28 or (pd or not wS_28))) then
            wS_33 = game:GetService("RunService")
            pd = game:GetService("UserInputService")
        else
            pd = game:GetService("RunService")
            wS_33 = game:GetService("UserInputService")
        end
        wS_15 = (wS_15 + 94) % 200
    end
until (wS_15 * 199 + 140) % 200 == 70
wS_16 = {}
for k, v in wS_2 do
    wS_47 = type(v) == "table"
    if wS_47 then
        wS_29 = v.Cost or 0
        wS_47 = wS_29 > 0
    end
    if wS_47 then
        wS_47 = #wS_16 + 1
        wS_29 = v.Layout_Order or 0
        wS_15 = v.Luck_Percentage or 0
        wS_16[wS_47] = { name = k, order = wS_29, luck = wS_15 }
        nV[k] = v
    end
end
wS_47 = 3
repeat
    wS_29 = {
        "zojcvdifbbij",
        "gyhhqqlinbvn",
        "hbtxerjhrbxk",
        "iilshamktw",
        "cdu",
        "rrcwmnd",
        "rntdvbeva",
        "idiubcpy",
        "atgoyppqn",
        "pslgp",
        "jxa",
        "efwioizdqsw",
        "vjthhxszt",
        "ohlx",
        "lud",
        "gkam"
    }
    if wS_29[(wS_47 * 64 + 66) % 16 + 1] <= wS_29[(wS_47 * 64 + 66) % 16 + 1] then
        table.sort(wS_16, fns.fn115)
    else
        table.sort(wS_16, fns.fn115)
    end
    wS_47 = (wS_47 + 7) % 8
until (wS_47 * 3 + 4) % 8 == 2
for k, v in wS_16 do
    wS_38[#wS_38 + 1] = v.name
end
oN = {}
wS_47 = {}
wS_29 = {}
for k, v in wS_35 do
    wS_15 = type(v) == "table"
    if wS_15 then
        wS_49 = v.Cost or 0
        wS_15 = wS_49 > 0
    end
    if wS_15 then
        wS_15 = not v.Not_Restockable
    end
    if wS_15 then
        wS_15 = #wS_29 + 1
        wS_49 = v.Layout_Order or 0
        wS_29[wS_15] = { name = k, order = wS_49 }
        oN[k] = v
    end
end
table.sort(wS_29, fns.fn331)
for k, v in wS_29 do
    wS_47[#wS_47 + 1] = v.name
end
wS_15, od, n7 = nil, nil, nil
wS_29 = 0
repeat
    wS_49 = { "lgdgoff", "fncft", "ctmdor", "bkxusb", "brkr", "mgamwqnrp", "ylbyiymsxc" }
    local xq = wS_29
    wS_32 = wS_49[xq % 7 + 1]
    if wS_32:len() >= wS_32:gsub("(.)", "%1%1", xq % 3 % 2 + 1):len() then
        n7 = {}
        wS_15 = {}
        od = {}
    else
        wS_15 = {}
        od = {}
        n7 = {}
    end
    wS_29 = (wS_29 + 3) % 8
until (wS_29 * 3 + 1) % 8 == 2
for i, v in ipairs(wS_20) do
    wS_29 = type(v) == "table" and v.Name
    if wS_29 then
        wS_29 = v.Display and v.Display.Title
        wS_49 = wS_29 or v.Name
        wS_29 = wS_49
        wS_15[#wS_15 + 1] = wS_29
        od[wS_29] = v.Name
        n7[v.Name] = v
    end
end
o8 = nil
wS_49 = {
    { name = "Auto Skip", id = "AutoSkip" },
    { name = "Egg Luck", id = "EggLuck" },
    { name = "Fast Hatch", id = "FastHatch" },
    { name = "Super Egg Luck", id = "SuperEggLuck" },
    { name = "VIP", id = "VIP" },
    { name = "+1 Pet Slot", id = "+EquipSlot" }
}
wS_32 = {}
o8 = {}
for k, v in wS_49 do
    wS_32[#wS_32 + 1] = v.name
    o8[v.name] = v.id
end
oO = nil
wS_49 = {
    { name = "Abnormal Lucky Block", id = "AbnormalLuckyBlock" },
    { name = "Galaxy Lucky Block", id = "GalaxyLuckyBlock" }
}
wS_17 = {}
oO = {}
for k, v in wS_49 do
    wS_17[#wS_17 + 1] = v.name
    oO[v.name] = v.id
end
oC = nil
oC = {
    ["Basic Egg"] = 45000,
    ["Samurai Egg"] = 2100000,
    ["Ancient Egg"] = 11500000,
    ["Tiki Egg"] = 125000000,
    ["Magic Egg"] = 400000000,
    ["Jurassic Egg"] = 2500000000,
    ["Heaven Egg"] = 1200000000000,
    ["Meme Egg"] = 100000000000000,
    ["Void Egg"] = 1e+16
}
wS_49 = {}
for k in oC do
    wS_49[#wS_49 + 1] = k
end
wS_35, wS_2 = nil, nil
wS_29 = 1
repeat
    wS_20 = { "axxe", "kxdg", "wxjpu", "ljflg", "oxbctcma", "eswzdvkwpo", "tlvptrriso", "uzbczvdzwf" }
    if wS_20[(wS_29 * 78 + 102) % 8 + 1] < wS_20[(wS_29 * 78 + 102) % 8 + 1] then
        table.sort(wS_2, fns.fn318)
        wS_49 = { "1", "3" }
        wS_35 = {}
    else
        table.sort(wS_49, fns.fn318)
        wS_35 = { "1", "3" }
        wS_2 = {}
    end
    wS_29 = (wS_29 + 1) % 4
until (wS_29 * 3 + 0) % 4 == 2
wS_20 = {}
for k, v in wS_4 do
    wS_29 = type(v) == "table" and type(v.Event) == "string" and v.Event ~= "" and not wS_20[v.Event]
    if wS_29 then
        wS_20[v.Event] = true
        wS_2[#wS_2 + 1] = v.Event
    end
end
table.sort(wS_2)
wS_2[#wS_2 + 1] = "Nullity"
nW, o9, oP, n9, nX, pe, oL, oj, n6, ph, o1, og, oc, oW, pc, oX, oB, o2, pk, oZ, oR, n0, o7, op, pi, oJ, ox, oh, oG, ot, pl, oe = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
nW = fn981
o9 = fns.fn501
oP = fns.fn77
n9 = fns.fn245
nX = fn770
pe = fns.fn241
oL = fn818
oj = fns.fn171
n6 = fns.fn64
ph = fn888
o1 = fns.fn334
og = fn941
oc = function()
    local r3
    local r2
    r2 = nil
    r3 = nil
    if nW("HideAnimation") then
        oj()
    end
    r3 = o1()
    if not r3 then
        return
    end
    r2 = oL()
    if not r2 then
        return
    end
    local Main = PlayerGui:FindFirstChild("Main")
    local r5 = Main and Main:FindFirstChild("Dice")
    if r5 then
        r5:SetAttribute("DiceSelected", r3)
    end
    pcall(function()
        r2:InvokeServer(r3)
    end)
    if nW("HideAnimation") then
        oj()
    end
end
oW = function()
    local r8 = pe()
    if not r8 then
        return
    end
    local r9 = oP("DiceChoice")
    local sa = r8.Coins
    local si = if sa then 1 else 0
    local sg = 2176 * si + 1263 * (1 - si)
    local sh = 1169 * si + 2534 * (1 - si)
    if not ((sg * 462 + sh * 3730 + sg * sh) % 16777213 == 7909426) then
        sa = 0
    end
    local sb = sa
    local sa_1 = r8.Rebirths or 0
    local sd = r8.dice_stock or {}
    for k, v in r9 do
        local sm = k
        if v then
            local r9_1 = nV[sm]
            if r9_1 then
                local sd_1 = r9_1.RebirthsRequired or 0
                local sa_4 = r9_1.Cost or 0
                local sa_5 = sd[sm] or 0
                if sa_1 >= sd_1 and sa_5 > 0 and sa_4 > 0 and sb >= sa_4 then
                    local r7 = math.floor(math.min(sa_5, sb / sa_4))
                    if r7 > 0 then
                        pcall(function()
                            nY:InvokeServer(sm, r7, "dice")
                        end)
                        sb -= sa_4 * r7
                    end
                end
            end
        end
    end
end
pc = fns.fn345
oX = fn682
oB = function()
    local sC = pc()
    if not sC then
        return
    end
    local Slots = sC:FindFirstChild("Slots")
    if not Slots then
        return
    end
    local sB = nX()
    if not sB then
        return
    end
    local CFrame = sB.CFrame
    for i, child in Slots:GetChildren() do
        local sD_1 = oH.Unloaded or not nW("AutoCollectMoney")
        if sD_1 then
            break
        elseif oX(child) then
            local Collect = child:FindFirstChild("Collect")
            local sE = Collect and Collect:FindFirstChild("Touch")
            local sA = sE
            local sD_3 = sA and sA:IsA("BasePart")
            if sD_3 then
                sB.CFrame = sA.CFrame + Vector3.new(0, 2.5, 0)
                if firetouchinterest then
                    pcall(function()
                        firetouchinterest(sB, sA, 0)
                        task.wait(0.05)
                        firetouchinterest(sB, sA, 1)
                    end)
                end
                task.wait(0.12)
            end
        end
    end
    if sB.Parent then
        sB.CFrame = CFrame
    end
end
o2 = function()
    local sN = pe()
    if not sN then
        return
    end
    local sO = oP("PotionChoice")
    local sQ = sN.Coins or 0
    local sP_1 = sN.Rebirths or 0
    local sS = sN.potion_stock or {}
    for k, v in sO do
        local sY = k
        if v then
            local sO_1 = oN[sY]
            if sO_1 then
                local sS_1 = sO_1.RebirthsRequired or 0
                local sP_4 = sO_1.Cost or 0
                local sP_5 = sS[sY] or 0
                if sP_1 >= sS_1 and sP_5 > 0 and sP_4 > 0 and sQ >= sP_4 then
                    local sM = math.floor(math.min(sP_5, sQ / sP_4))
                    if sM > 0 then
                        pcall(function()
                            nY:InvokeServer(sY, sM, "potion")
                        end)
                        sQ -= sP_4 * sM
                    end
                end
            end
        end
    end
end
pk = fn645
oZ = function()
    local s8 = pe()
    if not s8 then
        return
    end
    local s9 = oP("UpgradeChoice")
    local tb = s8.Coins or 0
    local ta_1 = s8.Rebirths or 0
    local td = s8.upgrades or {}
    for k, v in s9 do
        if v then
            local s7 = od[k]
            local s9_1 = s7 and n7[s7]
            if s9_1 then
                local s9_2 = s9_1.RebirthsRequired or 0
                local s9_3 = td[s7] or 0
                local s9_4 = pk(s9_1)
                if ta_1 >= s9_2 and s9_3 < s9_4 then
                    local s9_5 = s9_1.Increments[s9_3 + 1]
                    local ta_5 = s9_5 and s9_5.Price or 0
                    if ta_5 > 0 and tb >= ta_5 then
                        pcall(function()
                            nU:InvokeServer(s7)
                        end)
                        tb -= ta_5
                    end
                end
            end
        end
    end
end
oR = function()
    local to = pe()
    if not to then
        return
    end
    local tp = oP("GemUpgradeChoice")
    for k, v in tp do
        if v then
            local tn = o8[k]
            local tp_1 = tn and not ph(to, tn) and not ph(to, k)
            if tp_1 then
                pcall(function()
                    gemPurchase:InvokeServer(tn)
                end)
            end
        end
    end
end
n0 = fn639
o7 = function()
    local tH = oP("LuckyBlockChoice")
    for k, v in tH do
        if v then
            local tG = oO[k]
            if tG then
                pcall(function()
                    gemPurchase:InvokeServer(tG)
                end)
            end
        end
    end
end
op = function()
    local tP, tQ
    if nW("HideAnimation") then
        oj()
    end
    tQ = o9("EggChoice")
    local tR = tQ == ""
    local tS = type(tQ) ~= "string"
    local tW = if tS then 1 else 0
    local tU = 3882 * tW + 2910 * (1 - tW)
    local tV = 1040 * tW + 3713 * (1 - tW)
    if not ((tU * 2125 + tV * 424 + tU * tV) % 16777213 == 12727490) then
        tS = tR
    end
    if tS then
        return
    end
    local Eggs = oT:FindFirstChild("Eggs")
    local tS_1 = Eggs and not Eggs:FindFirstChild(tQ)
    if tS_1 then
        return
    end
    local tR_2 = tonumber(o9("HatchAmount")) or 1
    tP = tR_2
    pcall(function()
        pg:InvokeServer(tQ, tP)
    end)
    if nW("HideAnimation") then
        oj()
    end
end
pi = fns.fn44
oJ = fn646
ox = fn816
oh = function()
    local t7 = pe()
    if not t7 then
        return
    end
    local pets = t7.pets
    if type(pets) ~= "table" then
        return
    end
    local t9 = {}
    for k, v in pets do
        if type(v) == "table" then
            t9[#t9 + 1] = { guid = k, mult = ox(v) }
        end
    end
    table.sort(t9, function(fp, fq)
        return fp.mult > fq.mult
    end)
    local equipped_pets = t7.equipped_pets
    local ua = type(equipped_pets) == "table" and #equipped_pets
    local ua_1 = ua or 1
    local t8_3 = ph(t7, "+EquipSlot") or ph(t7, "+1PetEquip")
    if t8_3 then
        ua_1 = math.max(ua_1, 2)
    end
    for i = 1, ua_1 do
        local t6 = t9[i]
        if t6 then
            pcall(function()
                pb:InvokeServer("Equip", t6.guid)
            end)
        end
    end
end
oG = fns.fn275
ot = function()
    pcall(function()
        QuestRemote:InvokeServer("ClaimReward")
    end)
    local uo = pe()
    local uo_1 = uo and uo.quests and uo.quests.active_quests
    if type(uo_1) == "table" then
        for k, v in uo_1 do
            local uu = k
            local uw = v
            local uo_2 = type(uw) == "table" and uw.completed == true and uw.claimed ~= true
            if uo_2 then
                pcall(function()
                    local um = uw.id or uu
                    QuestRemote:InvokeServer("ClaimReward", um)
                end)
            end
        end
    end
end
pl = function()
    local uy = pe()
    if not uy then
        return
    end
    local uz = uy.playtime or 0
    local uz_1 = {}
    local uB = uy.time_rewards
    local uH = if uB then 1 else 0
    local uF = 2262 * uH + 3098 * (1 - uH)
    local uG = 631 * uH + 2665 * (1 - uH)
    if not ((uF * 3050 + uG * 2000 + uF * uG) % 16777213 == 9588422) then
        uB = uz_1
    end
    local uy_1 = uB
    for i, v in ipairs(TimeRewards) do
        local uL = i
        local uz_2 = v.Duration or 0
        local Title = v.Title
        local uz_3 = uy_1[uL] or uy_1[tostring(uL)] or uy_1[Title]
        if uz >= uz_2 and not uz_3 then
            pcall(function()
                oU:InvokeServer(Title)
            end)
            pcall(function()
                oU:InvokeServer(uL)
            end)
        end
    end
end
oe = fn726
wS_4 = oH:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = oE, Copyable = true }, "|", wS_48 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
wS_50 = {
    Info = wS_4:AddTab("Info", "info"),
    Main = wS_4:AddTab("Main", "gamepad-2"),
    Player = wS_4:AddTab("Player", "person-standing"),
    Settings = wS_4:AddTab("Settings", "settings")
}
wS_50.Roll = wS_50.Main:AddSubTab("Roll", "dices")
wS_50.Shop = wS_50.Main:AddSubTab("Shop", "shopping-bag")
wS_50.Eggs = wS_50.Main:AddSubTab("Eggs", "egg")
wS_50.Extra = wS_50.Main:AddSubTab("Extra", "sparkles")
wS_16 = fn611
for k, v in wS_50 do
    if v ~= wS_50.Main then
        wS_16(v)
    end
end
ou, Label, n2, wS_4 = nil, nil, nil, nil
ou = "Unknown"
pcall(fns.fn197)
wS_29 = wS_50.Info:AddLeftGroupbox("Account", "circle-user")
wS_29:AddLabel(pq("User", oQ.Name, wS_28), true)
wS_29:AddLabel(pq("Status", "Keyless", wS_28), true)
wS_29:AddLabel(pq("Executor", ou, wS_28), true)
wS_34 = wS_50.Info:AddLeftGroupbox("Game Info", "gamepad-2")
wS_34:AddLabel(n1(wS_48 .. " [" .. tostring(game.PlaceId) .. "]", wS_44), true)
wS_34:AddLabel(pq("Place ID", tostring(game.PlaceId), wS_44), true)
Label = wS_34:AddLabel(pq("Session time", "0s", oV), true)
n2 = tostring(game.JobId)
if ((Label or not Label) and false or false) and not ((Label or not Label) and false or false) then
    n2 = #wS_4 > 18
else
    wS_4 = #n2 > 18
end
if wS_4 then
    wS_29 = 4
    repeat
        if wS_29 * 80374493 + 11 + 6 >= wS_29 * 80374493 + 11 + 6 + 4 then
            n2 = string.sub(wS_4, 1, 18) .. "..."
        else
            wS_4 = string.sub(n2, 1, 18) .. "..."
        end
        wS_29 = (wS_29 + 1) % 8
    until (wS_29 * 3 + 1) % 8 == 0
end
wS_29 = wS_4 or n2
pf, ScriptsGroup, FeaturesGroup, wS_4, RollingGroup, DiceGroup, GemShopGroup = nil, nil, nil, nil, nil, nil, nil
wS_20 = wS_29
wS_34:AddLabel(pq("Server", wS_20, wS_11), true)
wS_34:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
pf = os.clock()
if (pf and not pf and (not pf or not pf) or (not pf and not pf or not FeaturesGroup and pf)) and not (pf and not pf and (not pf or not pf) or (not pf and not pf or not FeaturesGroup and pf)) then
    task.spawn(worker)
    wS_50 = ScriptsGroup.Info:AddRightGroupbox("Scripts", "package")
else
    task.spawn(worker)
    ScriptsGroup = wS_50.Info:AddRightGroupbox("Scripts", "package")
end
ScriptsGroup:AddLabel(n1("Included in this hub", wS_11), true)
ScriptsGroup:AddLabel(n1(wS_48, wS_44), true)
FeaturesGroup = wS_50.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(n1("Auto Roll", wS_44), true)
FeaturesGroup:AddLabel(n1("Auto Shop", oV), true)
FeaturesGroup:AddLabel(n1("Auto Eggs", wS_28), true)
FeaturesGroup:AddLabel(n1("Pets & Claims", wS_11), true)
wS_18 = wS_50.Info:AddRightGroupbox("Socials", "link")
wS_18:AddButton({ Text = "Discord", Func = ob })
wS_18:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
wS_16 = wS_50.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
if ((RollingGroup or wS_4 or DiceGroup and DiceGroup or (RollingGroup and wS_4 or wS_4 and not DiceGroup)) and ((wS_4 or wS_4) and (RollingGroup or not DiceGroup) and (not DiceGroup or RollingGroup or (not wS_4 or DiceGroup))) or (wS_4 or DiceGroup or not RollingGroup and RollingGroup or (not RollingGroup or RollingGroup) and (RollingGroup and not DiceGroup)) and (RollingGroup and wS_4 or (not DiceGroup or not RollingGroup) or RollingGroup and RollingGroup and (not wS_4 and DiceGroup))) and not ((RollingGroup or wS_4 or DiceGroup and DiceGroup or (RollingGroup and wS_4 or wS_4 and not DiceGroup)) and ((wS_4 or wS_4) and (RollingGroup or not DiceGroup) and (not DiceGroup or RollingGroup or (not wS_4 or DiceGroup))) or (wS_4 or DiceGroup or not RollingGroup and RollingGroup or (not RollingGroup or RollingGroup) and (RollingGroup and not DiceGroup)) and (RollingGroup and wS_4 or (not DiceGroup or not RollingGroup) or RollingGroup and RollingGroup and (not wS_4 and DiceGroup))) then
    wS_4:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    wS_4:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    wS_4:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    wS_4:AddButton({ Text = "Copy Discord Invite", Func = wS_16 })
    wS_50 = ob.Info:AddRightGroupbox("Donations", "heart")
else
    wS_16:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    wS_16:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    wS_16:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    wS_16:AddButton({ Text = "Copy Discord Invite", Func = ob })
    wS_4 = wS_50.Info:AddRightGroupbox("Donations", "heart")
end
wS_4:AddLabel(n1("All donations are optional but appreciated.", oV), true)
wS_4:AddLabel(n1("If you donate you get a special role, just PING after you donate.", wS_28), true)
wS_4:AddDivider()
wS_4:AddLabel(n1("LTC / Litecoin", wS_25), true)
wS_4:AddButton({ Text = "Copy Litecoin Address", Func = fns.onCopyLitecoinAddress })
wS_4:AddLabel(n1("BTC / Bitcoin", wS_43), true)
wS_4:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
wS_4:AddLabel(n1("ETH / Ethereum", wS_8), true)
wS_4:AddButton({ Text = "Copy Ethereum Address", Func = fns.onCopyEthereumAddress })
wS_4:AddLabel(n1("USDT", wS_24), true)
wS_4:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
wS_4:AddLabel(n1("Solana", wS_40), true)
wS_4:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
wS_4:AddLabel(n1("PayPal", wS_7), true)
wS_4:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
wS_4:AddLabel(n1("Venmo", wS_22), true)
wS_4:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
wS_4:AddDivider()
wS_4:AddLabel(n1("Don't have any of the listed currencies but still wanna donate?", wS_11), true)
wS_4:AddLabel(n1("DM me and we'll work something out.", wS_44), true)
local FaqGroup = wS_50.Info:AddRightGroupbox("FAQ", "circle-help")
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
RollingGroup = wS_50.Roll:AddLeftGroupbox("Rolling", "dices")
RollingGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
RollingGroup:AddToggle("AutoRollEvent", { Text = "Roll On Weather", Default = false })
RollingGroup:AddDropdown("WeatherChoice", { Text = "Weather", Values = wS_2, Default = {}, Multi = true, Searchable = true, AllowNull = true })
RollingGroup:AddToggle("HideAnimation", { Text = "Hide Animation", Default = false })
DiceGroup = wS_50.Shop:AddLeftGroupbox("Dice", "dices")
DiceGroup:AddToggle("AutoBuyDice", { Text = "Auto Buy Dice", Default = false })
DiceGroup:AddDropdown("DiceChoice", { Text = "Dice", Values = wS_38, Default = {}, Multi = true, Searchable = true, AllowNull = true })
local PotionsGroup = wS_50.Shop:AddLeftGroupbox("Potions", "flask-conical")
PotionsGroup:AddToggle("AutoBuyPotions", { Text = "Auto Buy Potions", Default = false })
PotionsGroup:AddDropdown("PotionChoice", {
    Text = "Potions",
    Values = wS_47,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
local UpgradesGroup = wS_50.Shop:AddRightGroupbox("Upgrades", "arrow-big-up")
if (not pf or pf or (not pf or ScriptsGroup)) and (not RollingGroup and not pf or (pf or not RollingGroup)) and ((RollingGroup and RollingGroup or not pf and not ScriptsGroup) and (not RollingGroup and not ScriptsGroup or pf and not ScriptsGroup)) or not ((not pf or pf or (not pf or ScriptsGroup)) and (not RollingGroup and not pf or (pf or not RollingGroup)) and ((RollingGroup and RollingGroup or not pf and not ScriptsGroup) and (not RollingGroup and not ScriptsGroup or pf and not ScriptsGroup))) then
    UpgradesGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
    UpgradesGroup:AddDropdown("UpgradeChoice", {
        Text = "Upgrades",
        Values = wS_15,
        Default = {},
        Multi = true,
        Searchable = true,
        AllowNull = true
    })
    GemShopGroup = wS_50.Shop:AddRightGroupbox("Gem Shop", "gem")
else
    GemShopGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
    GemShopGroup:AddDropdown("UpgradeChoice", {
        Multi = true,
        Searchable = true,
        Text = "Upgrades",
        AllowNull = true,
        Default = {},
        Values = UpgradesGroup
    })
    wS_50 = wS_15.Shop:AddRightGroupbox("Gem Shop", "gem")
end
GemShopGroup:AddToggle("AutoBuyGemUpgrades", { Text = "Auto Buy Gem Shop Upgrades", Default = false })
GemShopGroup:AddDropdown("GemUpgradeChoice", {
    Text = "Gem Upgrades",
    Values = wS_32,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
GemShopGroup:AddToggle("AutoBuyCharacterSlots", { Text = "Auto Buy Character Slots", Default = false })
wS_3 = wS_50.Shop:AddLeftGroupbox("Lucky Blocks", "package")
wS_3:AddToggle("AutoBuyLuckyBlocks", { Text = "Auto Buy Lucky Blocks", Default = false })
wS_3:AddDropdown("LuckyBlockChoice", { Text = "Lucky Blocks", Values = wS_17, Default = {}, Multi = true, AllowNull = true })
local EggsGroup = wS_50.Eggs:AddLeftGroupbox("Eggs", "egg")
EggsGroup:AddToggle("AutoOpenEggs", { Text = "Auto Open Eggs", Default = false })
wS_47 = wS_49[1] or "Basic Egg"
pj, n8, n3, connection, connection2, of, po, on, nZ, pm, om = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
EggsGroup:AddDropdown("EggChoice", { Text = "Egg", Values = wS_49, Default = wS_47 })
EggsGroup:AddDropdown("HatchAmount", { Text = "Amount", Values = wS_35, Default = "1" })
wS_2 = wS_50.Extra:AddLeftGroupbox("Progress", "trending-up")
wS_2:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
wS_2:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
wS_2:AddToggle("AutoPlaceBest", { Text = "Auto Place Best", Default = false })
wS_2:AddToggle("AutoEquipBestPets", { Text = "Auto Equip Best Pets", Default = false })
wS_2:AddToggle("AutoSpinWheel", { Text = "Auto Spin Wheel", Default = false })
wS_17 = wS_50.Extra:AddRightGroupbox("Claims", "gift")
wS_17:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
wS_17:AddToggle("AutoClaimRewards", { Text = "Auto Claim Rewards", Default = false })
wS_17:AddToggle("AutoClaimQuests", { Text = "Auto Claim Quests", Default = false })
wS_32 = wS_50.Player:AddLeftGroupbox("Movement", "footprints")
wS_32:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
wS_32:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
wS_32:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
wS_32:AddToggle("NoClip", { Text = "NoClip", Default = false })
wS_32:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
wS_15 = wS_50.Player:AddRightGroupbox("Fly", "feather")
wS_15:AddToggle("Fly", { Text = "Fly", Default = false })
wS_15:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
of = function(hk)
    pcall(function()
        o3:SetGameplayPausedNotificationEnabled(not hk)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = o_:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not hk
        end
    end)
    if not hk then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(oQ, "GameplayPaused", false)
        else
            oQ.GameplayPaused = false
        end
    end)
end
ov.AntiGameplayPause:OnChanged(fn876)
ov.HideAnimation:OnChanged(fn884)
ov.Fly:OnChanged(fn608)
ov.WalkSpeedEnabled:OnChanged(fns.fn546)
wS_33.Stepped:Connect(onStepped)
pd.JumpRequest:Connect(fns.onJumpRequest)
pj = workspace.CurrentCamera
wS_33.RenderStepped:Connect(onRenderStepped)
wS_29 = wS_50.Settings:AddLeftGroupbox("Menu")
wS_29:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
oH.ToggleKeybind = oo.MenuKeybind
n8 = tick()
n3 = tick()
pcall(function()
    for i, v in ipairs(getconnections(oQ.Idled)) do
        local vL = v
        pcall(function()
            vL:Disable()
        end)
    end
end)
po = fn868
connection = pd.InputBegan:Connect(onInputBegan)
connection2 = pd.InputChanged:Connect(fns.onInputChanged)
wS_29:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
wS_29:AddButton({ Text = "Unload", Func = onUnload })
wS_12:SetLibrary(oH)
wS_12:SetFolder("OuroborosHub")
wS_12:SaveDefault("Monochrome")
oz:SetLibrary(oH)
oz:IgnoreThemeSettings()
oz:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
oz:SetFolder("OuroborosHub/spin-a-superhero")
wS_20 = oz:BuildConfigSection(wS_50.Settings)
on = fns.fn114
nZ = fn807
pm = fn848
om = function(iV)
    local wi
    wi = nil
    local wj = type(iV) ~= "table" or type(iV.idx) ~= "string" or type(iV.type) ~= "string" or oz.Ignore[iV.idx]
    if wj then
        return false
    end
    wi = on(iV.type, iV.idx)
    if not wi then
        return false
    end
    local wj_1 = pcall(function()
        if iV.type == "Input" then
            if type(iV.text) ~= "string" then
                return
            end
            wi:SetValue(iV.text)
        elseif iV.type == "ColorPicker" then
            wi:SetValueRGB(Color3.fromHex(iV.value), iV.transparency)
        elseif iV.type == "KeyPicker" then
            wi:SetValue({ iV.key, iV.mode, iV.modifiers })
            if iV.mode == "Toggle" and iV.toggled ~= nil then
                wi.Toggled = iV.toggled
                wi:Update()
            end
        else
            wi:SetValue(iV.value)
        end
    end)
    return wj_1
end
wS_20:AddDivider()
wS_20:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
wS_20:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
wS_20:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
wS_12:ApplyToTab(wS_50.Settings)
wS_12:LoadDefault()
oz:LoadAutoloadConfig()
task.spawn(worker2)
task.spawn(fns.worker3)
task.spawn(worker4)
task.spawn(fns.worker5)
task.spawn(worker6)
task.spawn(antiGameplayPauseLoop)
task.spawn(worker7)
oH:OnUnload(fns.fn182)
oH:Notify(wS_48 .. " loaded")
