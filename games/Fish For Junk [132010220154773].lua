local fns = {}
local p7_10, p7_12
local kk
local k2
local j1
local kK
local ItemData
local PurchaseUpgrade
local VirtualUser
local jP
local kx
local SellItem
local kW
local kD
local kj
local Library
local Toggles
local kp
local j6
local kP
local jO
local kc
local kV
local kC
local PurchaseRod
local k0
local j_
local kI
local ko
local j5
local SaveManager
local kv
local kb
local Label
local jT
local kB
local kh
local connection
local jZ
local LocalPlayer
local UpgradesData
local j4
local HttpService
local jM
local kt
local SellAllItems
local UserInputService
local jS
local kA
local kg
local kZ
local AutoCast
local connection2
local km
local j3
local kM
local ks
local j9
local kS
local kz
local EquipRod
local kY
local jX
local CurrentCamera
local kl
local k3
local j2
local kL
local kr
local j8
local kR
local jQ
local ReplicaClient
local ke
local kX
local jW
local Options
function fns.fn29(cl, cm)
    return string.format('<font color="%s">%s</font>', cm, cl)
end
function fns.onRenderStepped(e8)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local ox_1 = kt()
        if ox_1 then
            ox_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local ox_3 = kh()
        local oy = kt()
        if ox_3 and oy then
            oy.PlatformStand = true
            local oy_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                oy_1 = oy_1 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                oy_1 = oy_1 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                oy_1 = oy_1 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                oy_1 = oy_1 + CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                oy_1 = oy_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                oy_1 = oy_1 - Vector3.new(0, 1, 0)
            end
            ox_3.Velocity = Vector3.zero
            if oy_1.Magnitude > 0 then
                ox_3.CFrame = ox_3.CFrame + oy_1.Unit * Options.FlySpeed.Value * e8
            end
        end
    end
end
function fns.onCopySolanaAddress()
    jW(kV, "Copied Solana address")
end
function fns.fn59(ah)
    local DiscordGroup = ah:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = kY })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = kY })
end
function fns.fn74()
    local ne = Options.AutoBuyRodMax and Options.AutoBuyRodMax.Value
    local nf = ne
    if ne then
        ne = j3[nf]
    end
    local nf_1 = ne
    if ne then
        ne = nf_1.Price
    end
    return ne or math.huge
end
function fns.fn101(gl, gm)
    local Type = gm.Type
    if Type == "Toggle" then
        return { idx = gl, type = "Toggle", value = gm.Value == true }
    elseif Type == "Slider" then
        return { idx = gl, type = "Slider", value = tostring(gm.Value) }
    elseif Type == "Dropdown" then
        return { idx = gl, type = "Dropdown", multi = gm.Multi == true, value = gm.Value }
    elseif Type == "Input" then
        local pj = gm.Value or ""
        return { idx = gl, type = "Input", text = tostring(pj) }
    elseif Type == "ColorPicker" then
        return { idx = gl, type = "ColorPicker", value = gm.Value:ToHex(), transparency = gm.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = gl,
            type = "KeyPicker",
            mode = gm.Mode,
            key = gm.Value,
            modifiers = gm.Modifiers,
            toggled = gm.Toggled
        }
    else
        return nil
    end
end
function fns.fn103()
    local oa_1 = Options.AutoBuyUpgradeTarget and Options.AutoBuyUpgradeTarget.Value or kl
    if oa_1 == kj then
        j8("LuckMultiplier")
        return
    end
    if oa_1 == kg then
        j8("ValueMultiplier")
        return
    end
    if j8("LuckMultiplier") then
        return
    end
    j8("ValueMultiplier")
end
local function fn136()
    local nl_1
    local nk_1
    if identifyexecutor then
        nl_1, nk_1 = identifyexecutor()
        local nm = nl_1 ~= ""
        local nn = type(nl_1) == "string" and nm
        if nn then
            local nm_1 = type(nk_1) == "string" and nk_1 ~= "" and nl_1 .. " " .. nk_1
            j1 = nm_1 or nl_1
        end
    end
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local ov_1 = kt()
        if ov_1 then
            ov_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function onInputChanged(fS)
    local UserInputType = fS.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        ke = tick()
    end
end
local function onCopyLitecoinAddress()
    jW(jT, "Copied Litecoin address")
end
local function fn156()
    local nV = kb()
    local nW = kr()
    local nX = j_()
    for k, v in j9 do
        local nY = v.Price > 0 and v.Price <= nW and v.Price <= nV and not kX(v.Name)
        if nY then
            if v.World ~= "ForestWorld" or nX then
                j2(PurchaseRod, v.Name)
                task.wait(0.2)
                j2(EquipRod, v.Name)
                return
            end
        end
    end
end
local function fn212(co, cp, cq)
    return string.format("<b>%s</b> %s %s", co, kA("-", "#5a6070"), kA(cp, cq))
end
local function worker5()
    while not Library.Unloaded do
        task.wait(0.5)
        if j6("AutoBuyUpgrades") then
            pcall(kK)
        end
    end
end
local function onImportConfigFromClipboardTex()
    local pV_1
    local pT = Options.SaveManager_ImportSource.Value
    local pT_1
    local pZ = if pT then 1 else 0
    local pX = 878 * pZ + 3699 * (1 - pZ)
    local pY = 3117 * pZ + 3052 * (1 - pZ)
    if not ((pX * 706 + pY * 371 + pX * pY) % 16777213 == 4513001) then
        pT = ""
    end
    local pU = tostring(pT):match("^%s*(.-)%s*$")
    if pU == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    pT_1, pV_1 = pcall(HttpService.JSONDecode, HttpService, pU)
    local pU_1 = not pT_1 or type(pV_1) ~= "table" or type(pV_1.objects) ~= "table"
    if pU_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local pT_2 = 0
    for k, v in pV_1.objects do
        if jQ(v) then
            pT_2 += 1
        end
    end
    if pT_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local pV_2 = pT_2 == 1 and ""
    local pZ_1 = if pV_2 then 1 else 0
    local pX_1 = 3565 * pZ_1 + 2048 * (1 - pZ_1)
    local pY_1 = 561 * pZ_1 + 810 * (1 - pZ_1)
    if not ((pX_1 * 3393 + pY_1 * 1925 + pX_1 * pY_1) % 16777213 == 15175935) then
        pV_2 = "s"
    end
    Library:Notify(("Imported %d setting%s"):format(pT_2, pV_2), 6)
end
local function onCopyUSDTAddress()
    jW(kZ, "Copied USDT address")
end
local function fn245()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    kc = tick()
end
local function fn251()
    connection:Disconnect()
    connection2:Disconnect()
    kW(false)
    pcall(function()
        AutoCast.Stop()
    end)
    print("Unloaded!")
end
local function fn288()
    Library.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
local function fn293(bc)
    local mE = typeof(bc.Rarity) == "string" and bc.Rarity ~= ""
    if mE then
        return bc.Rarity
    end
    local mE_1 = typeof(bc.ItemId) == "string" and ItemData.GetItemById(bc.ItemId)
    local mF = mE_1
    if mE_1 then
        mE_1 = mF.Rarity
    end
    return mE_1 or "Common"
end
local function fn306()
    if not Toggles.Fly.Value then
        local oH = kt()
        if oH then
            oH.PlatformStand = false
        end
    end
end
local function onCopyPayPalLink()
    jW(kS, "Copied PayPal link")
end
local function fn352()
    local m2 = kk()
    local m3 = m2 and m2.UnlockedWorlds
    local m3_1 = typeof(m3) == "table" and m3.ForestWorld == true
    return m3_1
end
local function fn392(bQ)
    local m8 = kk()
    local m9 = m8 and m8.Inventory
    local m8_1 = m9
    if m9 then
        m9 = m8_1.Rods
    end
    local m8_2 = m9
    local m9_1 = typeof(m8_2) == "table" and m8_2[bQ] ~= nil
    return m9_1
end
local function fn407()
    ReplicaClient.OnNew("PlayerData", jO)
end
local function fn419()
    local l0 = kB()
    local l1 = l0 and l0:FindFirstChildOfClass("Humanoid")
    return l1
end
local function onCopyBitcoinAddress()
    jW(jP, "Copied Bitcoin address")
end
local function fn431()
    jW(kC, "Copied Discord invite to clipboard")
end
local function worker2()
    local nv_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local nu = math.floor(os.clock() - kx)
        if nu < 60 then
            nv_1 = nu .. "s"
        elseif nu < 3600 then
            nv_1 = string.format("%dm %ds", nu // 60, nu % 60)
        else
            nv_1 = string.format("%dh %dm", nu // 3600, nu % 3600 // 60)
        end
        Label:SetText(kp("Session time", nv_1, j5))
    end
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            kW(true)
        end
    end
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local oh_1 = kB()
        if oh_1 then
            for i, descendant in oh_1:GetDescendants() do
                local oh_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if oh_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function onUnload()
    Library:Unload()
end
local function fn491()
    local mn = kk()
    local mo = mn and typeof(mn.Money) == "number"
    if mo then
        return mn.Money
    end
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local mo_1 = leaderstats and leaderstats:FindFirstChild("Money")
    local mn_2 = mo_1
    if mo_1 then
        mo_1 = tonumber(mn_2.Value)
    end
    return mo_1 or 0
end
local function fn513(ew)
    local n6 = kk()
    if not n6 then
        return false
    end
    local Upgrades = n6.Upgrades
    local NormalizeLevel = UpgradesData.NormalizeLevel
    local n8 = typeof(Upgrades) == "table" and Upgrades[ew]
    local n7_1 = n8 or 0
    local n8_1 = NormalizeLevel(n7_1)
    local n6_2 = UpgradesData.GetCost(ew, n8_1)
    local n7_2 = typeof(n6_2) == "number" and n6_2 > 0 and kb() >= n6_2
    if n7_2 then
        j2(PurchaseUpgrade, ew)
        return true
    end
    return false
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local o7 = tick() - ke
            local o8 = tick() - kc
            if o7 >= 300 and o8 >= 60 then
                pcall(jZ)
            else
                if o7 < 300 and o8 >= 300 then
                    pcall(jZ)
                end
            end
        end
    end
end
local function fn529()
    return LocalPlayer.Character
end
local function onExportConfigToClipboard()
    local pN_1
    local pM_1
    pM_1, pN_1 = pcall(HttpService.JSONEncode, HttpService, kv())
    if not pM_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local pM_2 = setclipboard or toclipboard
    local pM_3 = type(pM_2) ~= "function" or not pcall(pM_2, pN_1)
    if pM_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function fn548(aa, ab)
    if setclipboard then
        setclipboard(aa)
    elseif toclipboard then
        toclipboard(aa)
    end
    Library:Notify(ab)
end
local function worker()
    local mb, mc, md, mh, mi
    local me = 10
    while true do
        local me_1 = 2844 - me
        do
            if me_1 < 2833 then
                if me_1 < 2828 then
                    if me_1 < 2826 then
                        if me_1 < 2825 then
                            if me_1 < 2824 then
                                break
                            elseif me_1 == 2824 then
                                md = mc.Data.Inventory
                                me = 16
                            else
                                me = 2833
                                continue
                            end
                        else
                            mh = 1
                            me = 15
                        end
                    elseif me_1 < 2827 then
                        if me_1 == 2826 then
                            mh += 1
                            me = 15
                        else
                            me = 9555
                            continue
                        end
                    else
                        mc = os.clock() < mb
                        me = 7
                    end
                elseif me_1 < 2830 then
                    if me_1 < 2829 then
                        me = if md then 0 else 5
                    else
                        me = if mh <= 128 then 9 else 1
                    end
                elseif me_1 < 2831 then
                    if me_1 == 2830 then
                        me = 13
                    else
                        me = 1339
                        continue
                    end
                elseif me_1 < 2832 then
                    if me_1 == 2831 then
                        me = 8
                    else
                        me = 2830
                        continue
                    end
                else
                    md = mc.Data
                    me = 6
                end
            elseif me_1 < 2840 then
                if me_1 < 2839 then
                    if me_1 < 2836 then
                        if me_1 < 2834 then
                            if me_1 == 2833 then
                                me = 4
                            else
                                me = 2824
                                continue
                            end
                        elseif me_1 < 2835 then
                            if me_1 == 2834 then
                                mb = os.clock() + 30
                                me = 4
                            else
                                me = 7993
                                continue
                            end
                        elseif me_1 == 2835 then
                            mi = mh
                            me = 3
                        else
                            me = 12426
                            continue
                        end
                    elseif me_1 < 2837 then
                        break
                    elseif me_1 < 2838 then
                        if me_1 == 2837 then
                            me = if mc then 19 else 14
                        else
                            me = 2838
                            continue
                        end
                    elseif me_1 == 2838 then
                        me = if md then 20 else 16
                    else
                        me = 2833
                        continue
                    end
                else
                    me = 18
                end
            elseif me_1 < 2843 then
                if me_1 < 2842 then
                    if me_1 < 2841 then
                        if me_1 == 2840 then
                            me = 2
                        else
                            me = 2832
                            continue
                        end
                    elseif me_1 == 2841 then
                        mc = ReplicaClient.FromId(mi)
                        md = mc
                        me = if md then 12 else 6
                    else
                        me = 2839
                        continue
                    end
                elseif me_1 == 2842 then
                    mc = not jS
                    me = if mc then 17 else 7
                else
                    me = 2825
                    continue
                end
            elseif me_1 < 7993 then
                if me_1 < 2844 then
                    if me_1 == 2843 then
                        task.wait(0.25)
                        me = 11
                    else
                        me = 2827
                        continue
                    end
                elseif me_1 == 2844 then
                    jO(mc)
                    return
                else
                    break
                end
            else
                break
            end
        end
    end
end
local function fn555(av)
    local l6 = Toggles[av]
    return l6 ~= nil and l6.Value == true
end
local function fn578()
    kW(Toggles.AntiGameplayPause.Value)
end
local function worker4()
    while not Library.Unloaded do
        task.wait(0.6)
        if j6("AutoBuyRods") then
            pcall(jM)
        end
    end
end
local function worker3()
    while not Library.Unloaded do
        task.wait(0.4)
        if j6("AutoSell") then
            pcall(kM)
        end
    end
end
local function onCopyJoinScript_JobID()
    local ns = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, kR)
    if setclipboard then
        setclipboard(ns)
    elseif toclipboard then
        toclipboard(ns)
    end
    Library:Notify("Copied join script to clipboard")
end
local function fn656(bq)
    for k, v in bq do
        if v then
            return true
        end
    end
    return false
end
local function onCopyEthereumAddress()
    jW(k2, "Copied Ethereum address")
end
local function fn680(bu)
    if typeof(bu) ~= "table" then
        return false
    end
    if (Options.AutoSellMode and Options.AutoSellMode.Value or ks) ~= ko then
        return true
    end
    local mW_2 = jX(Options.AutoSellRarities)
    local mX_1 = jX(Options.AutoSellVariants)
    local mY = k0(mW_2) and not mW_2[km(bu)]
    if mY then
        return false
    end
    local mY_1 = k0(mX_1) and not mX_1[j4(bu)]
    if mY_1 then
        return false
    end
    local mY_2 = k0(mW_2) or k0(mX_1)
    return mY_2
end
local function fn681()
    local l3 = kB()
    local l4 = l3 and l3:FindFirstChild("HumanoidRootPart")
    return l4
end
local function fn683(aB)
    if aB and aB.Data then
        jS = aB
    end
end
local function fn722(a7)
    local mw = 0
    for k, v in a7 do
        if typeof(v) == "table" then
            mw += 1
        end
    end
    return mw
end
local function fn737()
    local nK = k3()
    if kD(nK) <= 0 then
        return
    end
    if (Options.AutoSellMode and Options.AutoSellMode.Value or ks) ~= ko then
        j2(SellAllItems)
        return
    end
    local nL_2 = 0
    for k, v in nK do
        local nK_1 = typeof(k) == "string" and kL(v)
        if nK_1 then
            j2(SellItem, k)
            nL_2 += 1
            task.wait(0.15)
        end
    end
    if nL_2 == 0 then
        return
    end
end
local function onCopyVenmoLink()
    jW(kP, "Copied Venmo link")
end
local function fn799()
    local mq = kk()
    local mr = mq and mq.Inventory
    local mq_1 = mr
    if mr then
        mr = mq_1.Items
    end
    local mq_2 = mr
    if typeof(mq_2) ~= "table" then
        return {}
    end
    return mq_2
end
local function fn805()
    return jS and jS.Data or nil
end
local function onInputBegan()
    ke = tick()
end
local function onRscripts()
    jW(kz, "Copied Rscripts profile to clipboard")
end
local function fn880(bj)
    local mK = typeof(bj.Variant) == "string" and bj.Variant ~= ""
    if mK then
        return bj.Variant
    end
    return "Normal"
end
local function fn893()
    local pp = {}
    for k, v in { Toggles, Options } do
        for k, v in v do
            local pq = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if pq then
                local pq_1 = kI(k, v)
                if pq_1 then
                    pp[#pp + 1] = pq_1
                end
            end
        end
    end
    table.sort(pp, function(gy, gz)
        if gy.type ~= gz.type then
            return gy.type < gz.type
        end
        return gy.idx < gz.idx
    end)
    return { objects = pp }
end
local function fn895(gd, ge)
    local pc_1 = (gd == "Toggle" and Toggles or Options)[ge]
    local pb_2 = type(pc_1) == "table" and pc_1.Type == gd
    return pb_2 and pc_1 or nil
end
local function fn906(bm)
    local mM = bm and bm.Value
    if typeof(mM) ~= "table" then
        return {}
    end
    return mM
end
local function fn918()
    if Toggles.AutoPerfectCast.Value then
        pcall(function()
            AutoCast.Stop()
        end)
    end
end
local function fn934()
    if not Toggles.WalkSpeedEnabled.Value then
        local oJ = kt()
        if oJ then
            oJ.WalkSpeed = 16
        end
    end
end
jM = nil
jO = nil
jP = nil
jQ = nil
jS = nil
jT = nil
jW = nil
jX = nil
AutoCast = nil
jZ = nil
j_ = nil
j1 = nil
j2 = nil
j3 = nil
j4 = nil
j5 = nil
j6 = nil
PurchaseUpgrade = nil
j8 = nil
j9 = nil
SellAllItems = nil
kb = nil
kc = nil
SellItem = nil
ke = nil
EquipRod = nil
kg = nil
kh = nil
PurchaseRod = nil
kj = nil
kk = nil
kl = nil
km = nil
UpgradesData = nil
ko = nil
kp = nil
ItemData = nil
kr = nil
ks = nil
kt = nil
kv = nil
kx = nil
ReplicaClient = nil
kz = nil
local jN, Hold, jU, PowerBar, Effects, kw
kA = nil
kB = nil
kC = nil
kD = nil
Options = nil
CurrentCamera = nil
connection2 = nil
LocalPlayer = nil
kI = nil
Toggles = nil
kK = nil
kL = nil
kM = nil
HttpService = nil
SaveManager = nil
kP = nil
VirtualUser = nil
kR = nil
kS = nil
UserInputService = nil
Label = nil
kV = nil
kW = nil
kX = nil
kY = nil
kZ = nil
connection = nil
k0 = nil
Library = nil
k2 = nil
k3 = nil
local lh, li, lj, lk, ll
local lu
UserInputService, VirtualUser, HttpService, LocalPlayer = nil, nil, nil, nil
local p7_13 = game:GetService("Players")
local p7_9 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
LocalPlayer = p7_13.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
if setthreadidentity then
    setthreadidentity(8)
end
ReplicaClient, ItemData, UpgradesData, PurchaseRod, EquipRod, SellItem, SellAllItems, PurchaseUpgrade, Effects, AutoCast, PowerBar, Hold, Library, SaveManager, Toggles, Options, kC, kz, kw, ks, ko, kl, kj, kg, j9, j3 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local p7_14 = "Fish For Junk"
ReplicaClient = require(p7_9:WaitForChild("ReplicaClient"))
local p7_5 = require(p7_9:WaitForChild("Handlers"):WaitForChild("RodData"))
ItemData = require(p7_9:WaitForChild("Handlers"):WaitForChild("ItemData"))
UpgradesData = require(p7_9:WaitForChild("Handlers"):WaitForChild("UpgradesData"))
local p7_16 = p7_9:WaitForChild("Remotes"):WaitForChild("Gameplay")
PurchaseRod = p7_16:WaitForChild("PurchaseRod")
EquipRod = p7_16:WaitForChild("EquipRod")
SellItem = p7_16:WaitForChild("SellItem")
SellAllItems = p7_16:WaitForChild("SellAllItems")
PurchaseUpgrade = p7_16:WaitForChild("PurchaseUpgrade")
local p7_4 = LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("ClientLoader")
local p7_2 = p7_4:WaitForChild("Handlers"):WaitForChild("ItemController")
Effects = require(p7_2:WaitForChild("Effects"))
AutoCast = require(p7_2:WaitForChild("AutoCast"))
PowerBar = require(p7_2:WaitForChild("PowerBar"))
Hold = require(p7_2:WaitForChild("Hold"))
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
pcall(fn288)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
kC = "https://discord.gg/ehKVq7pf7v"
kz = "https://rscripts.net/@Ouroboros"
kw = 2
ks = "All"
ko = "Filtered"
kl = "Both"
kj = "Luck Multiplier"
kg = "Value Multiplier"
local RarityOrder = ItemData.RarityOrder
local VariantOrder = ItemData.VariantOrder
j9 = p7_5.GetAllRods()
if ((SellItem or SellItem) and SellItem or "https://rscripts.net/@Ouroboros" and (SellItem and kz)) and (SellItem and (SellItem and 29) or false and (not SellItem or 29)) and (false and (not SellItem and SellItem) and (not SellItem or false or SellItem and SellItem) or (kz and not SellItem or false or false)) and not (((SellItem or SellItem) and SellItem or "https://rscripts.net/@Ouroboros" and (SellItem and kz)) and (SellItem and (SellItem and 29) or false and (not SellItem or 29)) and (false and (not SellItem and SellItem) and (not SellItem or false or SellItem and SellItem) or (kz and not SellItem or false or false))) then
    j3 = {}
    p7_12 = {}
else
    p7_12 = {}
    j3 = {}
end
for k, v in j9 do
    p7_12[#p7_12 + 1] = v.DisplayName
    j3[v.DisplayName] = v
end
jS, jW, kY, kB, kt, kh, j6, jO, kk, kb, k3, kD, km, j4, jX, k0, kL, j_, kX, kr, j2, jN = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
jW = fn548
kY = fn431
p7_9 = fns.fn59
kB = fn529
kt = fn419
kh = fn681
j6 = fn555
jO = fn683
pcall(fn407)
task.spawn(worker)
kk = fn805
if not kY and not j4 and false and (kB and j4 or (kk or not kY)) or not (not kY and not j4 and false and (kB and j4 or (kk or not kY))) then
    kb = fn491
    k3 = fn799
else
    k3 = fn491
    kb = fn799
end
kD = fn722
km = fn293
j4 = fn880
jX = fn906
k0 = fn656
kL = fn680
j_ = fn352
kX = fn392
kr = fns.fn74
j2 = function(b7, ...)
    local b8
    b8 = { ... }
    pcall(function()
        b7:FireServer(table.unpack(b8))
    end)
end
jN = function(cc, ...)
    local nh = 8
    if getthreadidentity then
        pcall(function()
            nh = getthreadidentity()
        end)
    end
    if setthreadidentity then
        pcall(setthreadidentity, 2)
    end
    local ni = table.pack(pcall(cc, ...))
    if setthreadidentity then
        pcall(setthreadidentity, nh)
    end
    if ni[1] then
        return table.unpack(ni, 2, ni.n)
    end
    return nil
end
p7_2 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = kC, Copyable = true }, "|", p7_14 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
p7_4 = {
    Info = p7_2:AddTab("Info", "info"),
    Main = p7_2:AddTab("Main", "fish"),
    Player = p7_2:AddTab("Player", "person-standing"),
    Settings = p7_2:AddTab("Settings", "settings")
}
for k, v in { p7_4.Main, p7_4.Player, p7_4.Settings } do
    p7_9(v)
end
lh, p7_5, j5, p7_16, j1, p7_2, li, Label, kR, p7_10, kA, kp = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
p7_13 = 13
repeat
    p7_9 = (p7_13 * 5 + 6) % 8 + 1
    if p7_9 <= 4 then
        if p7_9 <= 2 then
            if p7_9 <= 1 then
                lj = {
                    "xvuzftfi",
                    "jtwvnhc",
                    "qmex",
                    "mfzpilwswwj",
                    "dwejffi",
                    "uiafldgfmse",
                    "fipy",
                    "wghzwhub",
                    "ojcwocpdci"
                }
                local q7 = p7_13
                lk = lj[q7 % 9 + 1]
                if lk:len() >= lk:gsub("(.)", "%1%1", q7 % 3 % 2 + 1):len() then
                    j5 = fn212
                else
                    kp = fn212
                end
                p7_13 = (p7_13 + 29) % 64
            else
                if (kp or p7_2) and (not kA or not p7_2) and (not p7_13 and p7_2 and (not kA or p7_13)) or not ((kp or p7_2) and (not kA or not p7_2) and (not p7_13 and p7_2 and (not kA or p7_13))) then
                    lh = "#7fd47f"
                else
                    p7_16 = "#7fd47f"
                end
                p7_13 = (p7_13 + 61) % 64
            end
        elseif p7_9 <= 3 then
            lj = (vector.create((p7_13 * 5 + 9) % 11 + 1, (p7_13 * 10 + 12) % 13 + 1, (p7_13 * 1 + 6) % 17 + 1))
            lk = (vector.create((p7_13 * 1 + 7) % 11 + 1, (p7_13 * 1 + 1) % 13 + 1, (p7_13 * 15 + 14) % 17 + 1))
            ll = (vector.create((p7_13 * 2 + 2) % 5 + 1, (p7_13 * 2 + 1) % 7 + 1, (p7_13 * 1 + 6) % 9 + 1))
            if math.abs((vector.angle(lj, lk, ll))) - math.abs((vector.angle(lk, lj, ll))) == 2 then
                li = "#6ec1ff"
            else
                p7_5 = "#6ec1ff"
            end
            p7_13 = (p7_13 + 29) % 64
        else
            lj = { "rhxstzjxq", "xyabhxk", "ibxhjbcdu", "luyo", "uniesfn", "oqm", "cwm", "kyneizpjsi" }
            local qK = p7_13
            lk = lj[qK % 8 + 1]
            if lk:len() <= lk:reverse():rep(qK % 3 + 2):len() then
                j5 = "#e8a34d"
            else
                lh = "#e8a34d"
            end
            p7_13 = (p7_13 + 37) % 64
        end
    elseif p7_9 <= 6 then
        if p7_9 <= 5 then
            if (p7_13 * 2 + 2) * 16 % 3 == ((p7_13 * 2 + 2) * 16 + 4) % 3 then
                p7_2 = "#8b93a3"
                p7_16 = "Unknown"
                pcall(fn136)
                p7_5 = (nil):AddLeftGroupbox("Account", "circle-user")
                p7_5:AddLabel(kA("User", lh.Name, p7_4), true)
                p7_5:AddLabel(kA("Status", "Keyless", p7_4), true)
                p7_5:AddLabel(kA("Executor", "Unknown", p7_4), true)
                j1 = (nil):AddLeftGroupbox("Game Info", "gamepad-2")
                j1:AddLabel(li(Label .. " [" .. tostring(game.PlaceId) .. "]", j5), true)
                j1:AddLabel(kA("Place ID", tostring(game.PlaceId), j5), true)
                kp = j1:AddLabel(kA("Session time", "0s", LocalPlayer), true)
            else
                p7_16 = "#8b93a3"
                j1 = "Unknown"
                pcall(fn136)
                p7_2 = p7_4.Info:AddLeftGroupbox("Account", "circle-user")
                p7_2:AddLabel(kp("User", LocalPlayer.Name, lh), true)
                p7_2:AddLabel(kp("Status", "Keyless", lh), true)
                p7_2:AddLabel(kp("Executor", j1, lh), true)
                li = p7_4.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                li:AddLabel(kA(p7_14 .. " [" .. tostring(game.PlaceId) .. "]", p7_5), true)
                li:AddLabel(kp("Place ID", tostring(game.PlaceId), p7_5), true)
                Label = li:AddLabel(kp("Session time", "0s", j5), true)
            end
            p7_13 = (p7_13 + 21) % 64
        else
            local qz = bit32.rrotate(bit32.bxor(bit32.lrotate(p7_13, 27), string.byte(tostring(li))), 12)
            if bit32.bxor(bit32.lrotate(bit32.bxor(qz, 2690852204), 30), 672713051) == bit32.lrotate(qz, 30) then
                kR = tostring(game.JobId)
            else
                p7_10 = tostring(game.JobId)
            end
            p7_13 = (p7_13 + 5) % 64
        end
    elseif p7_9 <= 7 then
        p7_9 = (vector.create((p7_13 * 2 + 4) % 11 + 1, (p7_13 * 6 + 11) % 13 + 1, (p7_13 * 6 + 3) % 17 + 1))
        lj = (vector.create((p7_13 * 3 + 9) % 11 + 1, (p7_13 * 2 + 11) % 13 + 1, (p7_13 * 9 + 1) % 17 + 1))
        lk = (vector.create((p7_13 * 3 + 7) % 5 + 1, (p7_13 * 3 + 4) % 7 + 1, (p7_13 * 2 + 4) % 9 + 1))
        if math.abs((vector.angle(p7_9, lj, lk))) - math.abs((vector.angle(lj, p7_9, lk))) == 1 then
            kR = #p7_10 > 18
        else
            p7_10 = #kR > 18
        end
        p7_13 = (p7_13 + 21) % 64
    else
        p7_9 = {
            "ygqea",
            "fanls",
            "rvdhkzcuay",
            "rnvoy",
            "khccvyugr",
            "nmmexhtq",
            "cgakfeg",
            "fepb",
            "hkxizionx",
            "pwsl",
            "cei"
        }
        local qy = p7_13
        lj = p7_9[qy % 11 + 1]
        if lj:len() >= lj:gsub("(.)", "%1%1", qy % 3 % 2 + 1):len() then
            p7_2 = fns.fn29
        else
            kA = fns.fn29
        end
        p7_13 = (p7_13 + 21) % 64
    end
until (p7_13 * 35 + 40) % 64 == 15
if p7_10 then
    p7_13 = 0
    repeat
        p7_2 = {
            "tvbno",
            "flarj",
            "mxqglksrdyds",
            "odbdv",
            "wdpl",
            "pcncb",
            "hqwnam",
            "hyn",
            "xhtvquwjkqc",
            "khjptgwtrfbu"
        }
        if p7_2[(p7_13 * 62 + 75) % 10 + 1] <= p7_2[(p7_13 * 62 + 75) % 10 + 1] then
            p7_10 = string.sub(kR, 1, 18) .. "..."
        else
            kR = string.sub(p7_10, 1, 18) .. "..."
        end
        p7_13 = (p7_13 + 7) % 8
    until (p7_13 * 7 + 7) % 8 == 0
end
p7_13 = p7_10 or kR
kx, jT, jP, k2, kZ, kV, kS, kP, lu, CurrentCamera, ke, kc, connection, connection2, kM, jM, j8, kK, kW, jZ, jU, kI, kv, jQ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local lv = p7_13
li:AddLabel(kp("Server", lv, p7_16), true)
li:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
kx = os.clock()
task.spawn(worker2)
ll = p7_4.Info:AddRightGroupbox("Scripts", "package")
ll:AddLabel(kA("Included in this hub", p7_16), true)
ll:AddLabel(kA(p7_14, p7_5), true)
lj = p7_4.Info:AddRightGroupbox("Features", "list")
lj:AddLabel(kA("Auto Perfect Cast", p7_5), true)
lj:AddLabel(kA("Auto Sell", j5), true)
lj:AddLabel(kA("Auto Buy Rods", lh), true)
lj:AddLabel(kA("Auto Buy Upgrades", p7_16), true)
p7_10 = p7_4.Info:AddRightGroupbox("Socials", "link")
p7_10:AddButton({ Text = "Discord", Func = kY })
p7_10:AddButton({ Text = "Rscripts", Func = onRscripts })
p7_2 = p7_4.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
p7_2:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
p7_2:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
p7_2:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
p7_2:AddButton({ Text = "Copy Discord Invite", Func = kY })
jT = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
jP = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
k2 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
kZ = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
kV = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
kS = "https://paypal.me/TheTruckerGOD"
kP = "https://venmo.com/u/miserablemusic"
local lw = "#345d9d"
if ((not kx and not p7_10 or not p7_10 and kx) and ((not p7_10 or kI) and (not kI or not kI)) or ((not kx or p7_10) and (kx and kx) or (not kI or p7_10 or (kx or kI)))) and ((not kx and kI and (p7_10 or kI) or (not kI and not kI or kI and not kI)) and (kx and p7_10 and (not kI and not kI) and (kx and not kI or (not kI or not kx)))) or not (((not kx and not p7_10 or not p7_10 and kx) and ((not p7_10 or kI) and (not kI or not kI)) or ((not kx or p7_10) and (kx and kx) or (not kI or p7_10 or (kx or kI)))) and ((not kx and kI and (p7_10 or kI) or (not kI and not kI or kI and not kI)) and (kx and p7_10 and (not kI and not kI) and (kx and not kI or (not kI or not kx))))) then
    lu = "#f7931a"
end
local lt = "#627eea"
local ls = "#26a17b"
local lr = "#14f195"
local lq = "#0070ba"
local lp = "#008cff"
local DonationsGroup = p7_4.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(kA("All donations are optional but appreciated.", j5), true)
DonationsGroup:AddLabel(kA("If you donate you get a special role, just PING after you donate.", lh), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(kA("LTC / Litecoin", lw), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(kA("BTC / Bitcoin", lu), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(kA("ETH / Ethereum", lt), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(kA("USDT", ls), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(kA("Solana", lr), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
DonationsGroup:AddLabel(kA("PayPal", lq), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(kA("Venmo", lp), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(kA("Don't have any of the listed currencies but still wanna donate?", p7_16), true)
DonationsGroup:AddLabel(kA("DM me and we'll work something out.", p7_5), true)
local FaqGroup = p7_4.Info:AddRightGroupbox("FAQ", "circle-help")
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
local FishingGroup = p7_4.Main:AddLeftGroupbox("Fishing", "fish")
FishingGroup:AddToggle("AutoPerfectCast", { Text = "Auto Perfect Cast", Default = false })
local ShopGroup = p7_4.Main:AddLeftGroupbox("Shop", "shopping-cart")
ShopGroup:AddToggle("AutoBuyRods", { Text = "Auto Buy Rods", Default = false })
ShopGroup:AddDropdown("AutoBuyRodMax", { Text = "Max Rod", Values = p7_12, Default = p7_12[#p7_12] })
ShopGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
ShopGroup:AddDropdown("AutoBuyUpgradeTarget", { Text = "Upgrade", Values = { kj, kg, kl }, Default = kl })
local SellingGroup = p7_4.Main:AddRightGroupbox("Selling", "tag")
SellingGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
SellingGroup:AddDropdown("AutoSellMode", { Text = "Sell Mode", Values = { ks, ko }, Default = ko })
SellingGroup:AddDropdown("AutoSellRarities", {
    Text = "Rarities",
    Values = RarityOrder,
    Default = { "Common", "Uncommon", "Rare" },
    Multi = true,
    SelectAllButtons = true,
    Expandable = true
})
SellingGroup:AddDropdown("AutoSellVariants", {
    Text = "Variants",
    Values = VariantOrder,
    Default = { "Normal", "Big", "Huge" },
    Multi = true,
    SelectAllButtons = true
})
Toggles.AutoPerfectCast:OnChanged(fn918)
task.spawn(function()
    local nJ = false
    repeat
        local nE
        if not Library.Unloaded then
            if not j6("AutoPerfectCast") then
                task.wait(0.15)
            else
                if AutoCast.IsEnabled() then
                    pcall(function()
                        AutoCast.Stop()
                    end)
                end
                local nF = PowerBar.IsOpen() or Effects.IsBusy()
                if nF then
                    task.wait(0.1)
                else
                    nE = false
                    jN(function()
                        Hold.UnequipCaughtItem()
                        Effects.BeginCast(nil, kw, function()
                            nE = true
                        end)
                    end)
                    local nF_1 = os.clock()
                    while true do
                        local nG_1 = not nE and os.clock() - nF_1 < 30 and j6("AutoPerfectCast") and not Library.Unloaded
                        if nG_1 then
                            task.wait(0.05)
                            continue
                        end
                        break
                    end
                    local nG_2 = 3.5 - (os.clock() - nF_1)
                    if nG_2 > 0 then
                        local nF_2 = os.clock() + nG_2
                        while true do
                            local nG_3 = os.clock() < nF_2 and j6("AutoPerfectCast") and not Library.Unloaded
                            if nG_3 then
                                task.wait(0.05)
                                continue
                            end
                            break
                        end
                    end
                end
            end
        else
            nJ = true
        end
    until nJ
end)
kM = fn737
task.spawn(worker3)
jM = fn156
task.spawn(worker4)
j8 = fn513
kK = fns.fn103
task.spawn(worker5)
local MovementGroup = p7_4.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
lk = p7_4.Player:AddRightGroupbox("Fly", "feather")
lk:AddToggle("Fly", { Text = "Fly", Default = false })
lk:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
RunService.RenderStepped:Connect(fns.onRenderStepped)
Toggles.Fly:OnChanged(fn306)
Toggles.WalkSpeedEnabled:OnChanged(fn934)
kW = function(fu)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not fu)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not fu
        end
    end)
    if not fu then
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
Toggles.AntiGameplayPause:OnChanged(fn578)
task.spawn(antiGameplayPauseLoop)
local MenuGroup = p7_4.Settings:AddLeftGroupbox("Menu", "menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
ke = tick()
kc = tick()
pcall(function()
    for k, v in getconnections(LocalPlayer.Idled) do
        local oZ = v
        pcall(function()
            oZ:Disable()
        end)
    end
end)
jZ = fn245
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
task.spawn(antiAfkLoop)
Library:OnUnload(fn251)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Linoria")
ThemeManager:ApplyToTab(p7_4.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/FishForJunk")
p7_9 = SaveManager:BuildConfigSection(p7_4.Settings)
if (false and lv and (not ll or not ll) or (not ll or lu or (not lv or lu))) and (not lv or lu or (not lv or lu) or lv and lu and (lv and lu)) and not ((false and lv and (not ll or not ll) or (not ll or lu or (not lv or lu))) and (not lv or lu or (not lv or lu) or lv and lu and (lv and lu))) then
    jT = fn895
else
    jU = fn895
end
kI = fns.fn101
kv = fn893
jQ = function(gB)
    local pG
    pG = nil
    local pH = type(gB) ~= "table"
    local pL = if pH then 1 else 0
    local pJ = 2515 * pL + 2366 * (1 - pL)
    local pK = 2401 * pL + 3285 * (1 - pL)
    if not ((pJ * 3613 + pK * 2642 + pJ * pK) % 16777213 == 4691439) then
        pH = type(gB.idx) ~= "string"
    end
    if not pH then
        pH = type(gB.type) ~= "string"
    end
    if not pH then
        pH = SaveManager.Ignore[gB.idx]
    end
    if pH then
        return false
    end
    pG = jU(gB.type, gB.idx)
    if not pG then
        return false
    end
    local pH_1 = pcall(function()
        if gB.type == "Input" then
            if type(gB.text) ~= "string" then
                return
            end
            pG:SetValue(gB.text)
        elseif gB.type == "ColorPicker" then
            pG:SetValueRGB(Color3.fromHex(gB.value), gB.transparency)
        elseif gB.type == "KeyPicker" then
            pG:SetValue({ gB.key, gB.mode, gB.modifiers })
            if gB.mode == "Toggle" and gB.toggled ~= nil then
                pG.Toggled = gB.toggled
                pG:Update()
            end
        else
            pG:SetValue(gB.value)
        end
    end)
    return pH_1
end
p7_9:AddDivider()
p7_9:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
p7_9:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
p7_9:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
