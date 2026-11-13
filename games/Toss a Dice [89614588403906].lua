local qs_2, qs_3
local kf
local jX
local kF
local jE
local kl
local ProfileEvent
local kL
local jK
local kr
local j8
local jQ
local ky
local DiceEvent
local jW
local kE
local jD
local kk
local j1
local kK
local jJ
local kq
local j7
local jP
local connection
local kd
local jV
local kD
local jC
local kj
local j0
local kJ
local Options
local kp
local j6
local jO
local kw
local kc
local jU
local UserInputService
local connection2
local j_
local kI
local ko
local j5
local jN
local kv
local kb
local jT
local kB
local kh
local jZ
local kH
local jG
local kn
local j4
local jM
local kt
local ka
local jS
local kA
local CurrentCamera
local jY
local kG
local jF
local km
local j3
local jL
local HttpService
local j9
local jR
local VirtualUser
local function fn12()
    return ko.Character
end
local function fn37()
    local l0 = jU()
    local l1 = l0 and typeof(l0.Money) == "number"
    if l1 then
        return l0.Money
    end
    local leaderstats = ko:FindFirstChild("leaderstats")
    local l1_1 = leaderstats and leaderstats:FindFirstChild("Money")
    local l0_2 = l1_1
    if l1_1 then
        l1_1 = tonumber(l0_2.Value)
    end
    return l1_1 or 0
end
local function fn40()
    local ov_1
    local ou_1
    if identifyexecutor then
        ov_1, ou_1 = identifyexecutor()
        local ow = ov_1 ~= ""
        local ox = type(ov_1) == "string" and ow
        if ox then
            local ow_1 = type(ou_1) == "string" and ou_1 ~= "" and ov_1 .. " " .. ou_1
            jM = ow_1 or ov_1
        end
    end
end
local function onRscripts()
    kj(kK, "Copied Rscripts profile to clipboard")
end
local function fn88(dn, dp)
    return string.format('<font color="%s">%s</font>', dp, dn)
end
local function fn92(ai)
    local lP = jK[ai]
    return lP ~= nil and lP.Value == true
end
local function fn93()
    local pN = {}
    for k, v in { jK, Options } do
        for k, v in v do
            local pO = type(v) == "table" and type(v.Type) == "string" and not jN.Ignore[k]
            if pO then
                local pO_1 = kl(k, v)
                if pO_1 then
                    pN[#pN + 1] = pO_1
                end
            end
        end
    end
    table.sort(pN, function(gm, gn)
        if gm.type ~= gn.type then
            return gm.type < gn.type
        end
        return gm.idx < gn.idx
    end)
    return { objects = pN }
end
local function fn106(aJ)
    if typeof(aJ) ~= "string" then
        return nil
    elseif string.lower(aJ) == "free" then
        return 0
    else
        local l3 = aJ == "Equipped"
        local l4 = aJ == "Equip"
        local l8 = if l4 then 1 else 0
        local l6 = 511 * l8 + 53 * (1 - l8)
        local l7 = 3365 * l8 + 3050 * (1 - l8)
        if not ((l6 * 1365 + l7 * 2558 + l6 * l7) % 16777213 == 11024700) then
            l4 = l3
        end
        if l4 then
            return nil
        end
        local l3_1 = string.gsub(aJ, "[^%d.]", "")
        return tonumber(l3_1)
    end
end
local function fn109(dr, ds, du)
    return string.format("<b>%s</b> %s %s", dr, kd("-", "#5a6070"), kd(ds, du))
end
local function fn118()
    local DicesNotActive = kI:FindFirstChild("DicesNotActive")
    if not DicesNotActive then
        return
    end
    local ne = ko.UserId .. ":Dice"
    local nf = os.clock() + 5
    while true do
        if os.clock() < nf then
            if DicesNotActive:FindFirstChild(ne) then
                break
            end
            task.wait()
            continue
        end
        return
    end
    return
end
local function worker2()
    while not jX.Unloaded do
        if kw("AutoPerfectToss") then
            pcall(kH)
        end
        task.wait(0.15)
    end
end
local function fn138()
    local oq = if ko:GetAttribute("TossInCooldown") == true then 1 else 0
    if oq == 1 then
        return false
    elseif not ko:GetAttribute("DiceFinished") then
        return false
    elseif ko:GetAttribute("InStallDialog") == true then
        return false
    else
        return true
    end
end
local function worker4()
    while not jX.Unloaded do
        task.wait(1)
        local oS = if kw("AutoBuyDice") then 1 else 0
        if oS == 1 then
            pcall(jZ)
        end
    end
end
local function fn144()
    kj(jD, "Copied Discord invite to clipboard")
end
local function fn146()
    local lJ = jQ()
    local lK = lJ and lJ:FindFirstChildOfClass("Humanoid")
    return lK
end
local function fn168(U)
    local DiscordGroup = U:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = j5 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = j5 })
end
local function fn184()
    local lY = kf(ProfileEvent, "GetData")
    local lZ = type(lY) == "table" and lY
    return lZ or nil
end
local function fn192(N, O)
    if setclipboard then
        setclipboard(N)
    elseif toclipboard then
        toclipboard(N)
    end
    jX:Notify(O)
end
local function onImportConfigFromClipboardTex()
    local qf_1
    local qd = Options.SaveManager_ImportSource.Value or ""
    local qd_1
    local qe = tostring(qd):match("^%s*(.-)%s*$")
    if qe == "" then
        jX:Notify("Paste an exported config into the box first")
        return
    end
    qd_1, qf_1 = pcall(HttpService.JSONDecode, HttpService, qe)
    local qe_1 = not qd_1 or type(qf_1) ~= "table" or type(qf_1.objects) ~= "table"
    if qe_1 then
        jX:Notify("That is not a valid exported config")
        return
    end
    local qd_2 = 0
    for k, v in qf_1.objects do
        if jC(v) then
            qd_2 += 1
        end
    end
    if qd_2 == 0 then
        jX:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local qf_2 = qd_2 == 1 and "" or "s"
    jX:Notify(("Imported %d setting%s"):format(qd_2, qf_2), 6)
end
local function onRenderStepped(e_)
    if jX.Unloaded then
        return
    end
    if jK.WalkSpeedEnabled and jK.WalkSpeedEnabled.Value then
        local o3_1 = jO()
        if o3_1 then
            o3_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if jK.Fly and jK.Fly.Value then
        local o3_3 = kL()
        local o4 = jO()
        if o3_3 and o4 then
            o4.PlatformStand = true
            local o4_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                o4_1 = o4_1 + CurrentCamera.CFrame.LookVector
            end
            local o9 = if UserInputService:IsKeyDown(Enum.KeyCode.S) then 1 else 0
            if o9 == 1 then
                o4_1 = o4_1 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                o4_1 = o4_1 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                o4_1 = o4_1 + CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                o4_1 = o4_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                o4_1 = o4_1 - Vector3.new(0, 1, 0)
            end
            o3_3.Velocity = Vector3.zero
            if o4_1.Magnitude > 0 then
                o3_3.CFrame = o3_3.CFrame + o4_1.Unit * Options.FlySpeed.Value * e_
            end
        end
    end
end
local function onInputChanged(fI)
    local UserInputType = fI.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        jV = tick()
    end
end
local function onExportConfigToClipboard()
    local qa_1
    local p9_1
    p9_1, qa_1 = pcall(HttpService.JSONEncode, HttpService, ka())
    if not p9_1 then
        jX:Notify("Failed to encode the config")
        return
    end
    local p9_2 = setclipboard or toclipboard
    local p9_3 = type(p9_2) ~= "function" or not pcall(p9_2, qa_1)
    if p9_3 then
        jX:Notify("Your executor does not support copying to the clipboard")
        return
    end
    jX:Notify("Config copied to clipboard", 6)
end
local function worker5()
    while not jX.Unloaded do
        task.wait(1)
        if kw("AutoBuyUpgrades") then
            pcall(jR)
        end
    end
end
local function onCopyUSDTAddress()
    kj(kD, "Copied USDT address")
end
local function onCopyEthereumAddress()
    kj(kF, "Copied Ethereum address")
end
local function fn271()
    local n4 = kk(Options.AutoBuyUpgradeTarget)
    if not j7(n4) then
        return
    end
    local n5 = jU()
    if not n5 then
        return
    end
    local n6 = kf(j4, "GetConfigTable")
    if type(n6) ~= "table" then
        n6 = jW
    end
    local n7 = typeof(n5.Money) == "number" and n5.Money
    local n8 = n7 or jL()
    local n7_1 = n8
    local n8_1 = n5.DiceUpgrades
    if type(n8_1) ~= "table" then
        return
    end
    for k, v in jT do
        if n4[v] then
            local n9 = n6[v]
            local oa = n8_1[v]
            local ob = type(n9) == "table" and type(oa) == "table"
            if ob then
                local ob_1 = tonumber(n9.MaxUpgrades) or math.huge
                local ob_2 = tonumber(oa.Level) or 0
                if ob_2 < ob_1 then
                    local ob_3 = tonumber(oa.CurrentPrice)
                    if not ob_3 or ob_3 <= 0 then
                        local oa_2 = tonumber(n9.Cost) or 0
                        ob_3 = oa_2
                    end
                    if ob_3 <= n7_1 then
                        local n9_1 = kf(j4, "BuyUpgrade", v)
                        if type(n9_1) == "table" then
                            local oa_3 = typeof(n9_1.Money) == "number" and n9_1.Money
                            n7_1 = oa_3 or n7_1 - ob_3
                            n8_1 = n9_1.DiceUpgrades or n8_1
                        end
                    end
                end
            end
        end
    end
end
local function fn277()
    local lM = jQ()
    local lN = lM and lM:FindFirstChild("HumanoidRootPart")
    return lN
end
local function fn278()
    local mF = {}
    for k, v in j6() do
        mF[#mF + 1] = v.Name
    end
    return mF
end
local function fn335(bD, bE)
    if bD.BuyText == "Equip" or bD.BuyText == "Equipped" then
        return true
    end
    local m0_1 = bE and bE.EquippedDice
    local m1 = m0_1 or ko:GetAttribute("Dice")
    if m1 == bD.Name then
        return true
    end
    local m0_3 = bE and bE.OwnedDices
    if type(m0_3) == "table" then
        if m0_3[bD.Name] == true then
            return true
        end
        local m0_4 = m0_3[bD.Name]
        local m2 = type(m0_4) == "table" and m0_4.Owned
        if m2 then
            return true
        end
        for k, v in m0_3 do
            if v == bD.Name then
                return true
            end
        end
        return false
    end
    return false
end
local function fn339(aM)
    local l9 = aM or ""
    local ma = tostring(l9):match("([%d%.]+)x")
    local l9_1 = tonumber(ma) or 1
    return l9_1
end
local function onJumpRequest()
    if jX.Unloaded then
        return
    end
    if jK.InfJump and jK.InfJump.Value then
        local o1_1 = jO()
        if o1_1 then
            o1_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function onCopyLitecoinAddress()
    kj(jE, "Copied Litecoin address")
end
local function fn394()
    if not jK.Fly.Value then
        local pa = jO()
        if pa then
            pa.PlatformStand = false
        end
    end
end
local function onUnload()
    jX:Unload()
end
local function antiAfkLoop()
    while not jX.Unloaded do
        task.wait(2)
        if jK.AntiAfk.Value then
            local py = tick() - jV
            local pz = tick() - jS
            if py >= 300 and pz >= 60 then
                pcall(jG)
            else
                if py < 300 and pz >= 300 then
                    pcall(jG)
                end
            end
        end
    end
end
local function fn451(bi, bj)
    local mN = jW[bi]
    local mO = jW[bj]
    local mP = type(mN) == "table" and tonumber(mN.LayoutOrder)
    local mN_1 = mP or 0
    local mN_2 = type(mO) == "table" and tonumber(mO.LayoutOrder)
    return mN_1 < (mN_2 or 0)
end
local function fn476()
    jX.ScreenGui.Parent = ko:WaitForChild("PlayerGui")
end
local function fn525()
    if not jF() then
        return
    end
    kf(DiceEvent, "DiceToss", kG)
end
local function antiGameplayPauseLoop()
    while not jX.Unloaded do
        task.wait(1)
        if jK.AntiGameplayPause.Value then
            kq(true)
        end
    end
end
local function worker()
    local oI_1
    while true do
        task.wait(1)
        if jX.Unloaded then
            break
        end
        local oH = math.floor(os.clock() - j9)
        if oH < 60 then
            oI_1 = oH .. "s"
        elseif oH < 3600 then
            oI_1 = string.format("%dm %ds", oH // 60, oH % 60)
        else
            oI_1 = string.format("%dh %dm", oH // 3600, oH % 3600 // 60)
        end
        ky:SetText(j3("Session time", oI_1, jP))
    end
end
local function fn540(bz)
    for k, v in bz do
        if v then
            return true
        end
    end
    return false
end
local function fn553()
    kq(jK.AntiGameplayPause.Value)
end
local function onCopyVenmoLink()
    kj(kp, "Copied Venmo link")
end
local function worker3()
    while not jX.Unloaded do
        task.wait(1)
        if kw("AutoSell") then
            pcall(j1)
        end
    end
end
local function onCopyPayPalLink()
    kj(kv, "Copied PayPal link")
end
local function onCopyJoinScript_JobID()
    local oC = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, kr)
    if setclipboard then
        setclipboard(oC)
    elseif toclipboard then
        toclipboard(oC)
    end
    jX:Notify("Copied join script to clipboard")
end
local function onCopySolanaAddress()
    kj(kA, "Copied Solana address")
end
local function fn626()
    local md = {}
    local Content = j0:FindFirstChild("Content")
    if Content then
        for i, child in Content:GetChildren() do
            local me_1 = child:IsA("Frame") and child.Name ~= "Template"
            if me_1 then
                local Text
                for i, descendant in child:GetDescendants() do
                    local me_2 = descendant.Name == "LuckDisplayLabel" and descendant:IsA("TextLabel")
                    if me_2 then
                        Text = descendant.Text
                        break
                    end
                end
                local ButtonHolder = child:FindFirstChild("ButtonHolder")
                local mg = ButtonHolder and ButtonHolder:FindFirstChild("BuyButton")
                local me_4 = mg
                if mg then
                    mg = me_4:FindFirstChild("TextLabel")
                end
                local me_5 = mg
                if mg then
                    mg = me_5.Text
                end
                local mh = kn(mg)
                if mh == nil then
                    local mg_1 = tonumber(child.LayoutOrder) or 0
                    mh = mg_1
                end
                local mg_2 = #md + 1
                local Name = child.Name
                local mj = kh(Text)
                local me_6 = me_5 and me_5.Text or ""
                md[mg_2] = { Name = Name, Price = mh, Luck = mj, BuyText = me_6 }
            end
        end
    end
    if #md == 0 then
        for k, v in km do
            md[#md + 1] = { Name = v.Name, Price = v.Price, Luck = v.Luck, BuyText = "" }
        end
    end
    table.sort(md, function(a8, a9)
        if a8.Luck ~= a9.Luck then
            return a8.Luck < a9.Luck
        end
        return a8.Price < a9.Price
    end)
    return md
end
local function fn648(ct)
    if #ct == 0 then
        return false
    end
    if (Options.AutoSellMode and Options.AutoSellMode.Value or kE) ~= kB then
        return true
    end
    local nR_2 = kk(Options.AutoSellRarities)
    local nS_1 = kk(Options.AutoSellMutations)
    local nT = not j7(nR_2) and not j7(nS_1)
    if nT then
        return false
    end
    for k, v in ct do
        local nT_1 = j7(nR_2) and not nR_2[v.Rarity]
        if nT_1 then
            return false
        end
        local nT_2 = j7(nS_1) and not nS_1[v.Mutation]
        if nT_2 then
            return false
        end
    end
    return true
end
local function fn657(bX)
    kf(kb, "Equip", bX)
    kt()
    kf(DiceEvent, "ChangeDice", bX)
end
local function onStepped()
    if jX.Unloaded then
        return
    end
    if jK.NoClip and jK.NoClip.Value then
        local oU_1 = jQ()
        if oU_1 then
            for i, descendant in oU_1:GetDescendants() do
                local oU_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if oU_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn670()
    local Name
    local nl_1
    local nh = j6()
    local ni = Options.AutoBuyDiceMax and Options.AutoBuyDiceMax.Value
    local nj = math.huge
    for k, v in nh do
        if v.Name == ni then
            nj = v.Luck
            break
        end
    end
    local ni_1 = jU()
    local nk_1 = jL()
    Name, nl_1 = nil, -1
    local nn
    for k, v in nh do
        if v.Luck <= nj then
            local nD = if j_(v, ni_1) then 1 else 0
            if nD == 1 then
                if v.Luck > nl_1 then
                    nl_1 = v.Luck
                    Name = v.Name
                end
            elseif v.Price <= nk_1 then
                if not nn or v.Luck > nn.Luck then
                    nn = v
                end
            end
        end
    end
    if nn then
        local nh_2 = kf(kb, "BuyByCurrency", nn.Name)
        if nh_2 then
            kc(nn.Name)
        end
        return
    end
    local attr = ko:GetAttribute("Dice")
    if Name and attr ~= Name then
        kc(Name)
    end
end
local function fn719()
    if not jJ(jY()) then
        return
    end
    kf(j8, "SellItems")
end
local function fn722(f9, ga)
    local Type = ga.Type
    if Type == "Toggle" then
        return { idx = f9, type = "Toggle", value = ga.Value == true }
    elseif Type == "Slider" then
        return { idx = f9, type = "Slider", value = tostring(ga.Value) }
    elseif Type == "Dropdown" then
        return { idx = f9, type = "Dropdown", multi = ga.Multi == true, value = ga.Value }
    elseif Type == "Input" then
        local pK = ga.Value or ""
        return { idx = f9, type = "Input", text = tostring(pK) }
    elseif Type == "ColorPicker" then
        return { idx = f9, type = "ColorPicker", value = ga.Value:ToHex(), transparency = ga.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = f9,
            type = "KeyPicker",
            mode = ga.Mode,
            key = ga.Value,
            modifiers = ga.Modifiers,
            toggled = ga.Toggled
        }
    else
        return nil
    end
end
local function onInputBegan()
    jV = tick()
end
local function fn751()
    local nE = {}
    local Items = ko:FindFirstChild("Items")
    if not Items then
        return nE
    end
    for i, child in Items:GetChildren() do
        if child:IsA("IntValue") then
            local nF_1 = #nE + 1
            local Name = child.Name
            local Value = child.Value
            local nI = child:GetAttribute("Rarity") or "Common"
            local nJ = child:GetAttribute("Mutation") or "Normal"
            nE[nF_1] = { Name = Name, Stack = Value, Rarity = nI, Mutation = nJ }
        end
    end
    return nE
end
local function onCopyBitcoinAddress()
    kj(kJ, "Copied Bitcoin address")
end
local function fn760()
    if not jK.WalkSpeedEnabled.Value then
        local pc = jO()
        if pc then
            pc.WalkSpeed = 16
        end
    end
end
local function fn770()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    jS = tick()
end
local function fn790(f1, f2)
    local pD_1 = (f1 == "Toggle" and jK or Options)[f2]
    local pC_2 = type(pD_1) == "table" and pD_1.Type == f1
    return pC_2 and pD_1 or nil
end
local function fn818(bv)
    local mR = bv and bv.Value
    if typeof(mR) ~= "table" then
        return {}
    end
    return mR
end
local function fn832()
    connection:Disconnect()
    connection2:Disconnect()
    kq(false)
    print("Unloaded!")
end
jC = nil
jD = nil
jE = nil
jF = nil
jG = nil
Options = nil
jJ = nil
jK = nil
jL = nil
jM = nil
jN = nil
jO = nil
jP = nil
jQ = nil
jR = nil
jS = nil
jT = nil
jU = nil
jV = nil
jW = nil
jX = nil
jY = nil
jZ = nil
j_ = nil
j0 = nil
j1 = nil
ProfileEvent = nil
j3 = nil
j4 = nil
j5 = nil
j6 = nil
j7 = nil
j8 = nil
j9 = nil
ka = nil
kb = nil
kc = nil
kd = nil
DiceEvent = nil
kf = nil
CurrentCamera = nil
kh = nil
connection2 = nil
kj = nil
kk = nil
kl = nil
km = nil
kn = nil
ko = nil
local jH
kp = nil
kq = nil
kr = nil
HttpService = nil
kt = nil
kv = nil
kw = nil
connection = nil
ky = nil
VirtualUser = nil
kA = nil
kB = nil
UserInputService = nil
kD = nil
kE = nil
kF = nil
kG = nil
kH = nil
kI = nil
kJ = nil
kK = nil
kL = nil
local kR, kS, kT, kU, kV, kW, kX, kY, kZ, k_, k0, lc
local TossingGroup
kI, UserInputService, VirtualUser, HttpService, ko = nil, nil, nil, nil, nil
local qs_4 = game:GetService("Players")
kI = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
ko = qs_4.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return ko:WaitForChild("PlayerGui")
    end
end
if setthreadidentity then
    setthreadidentity(8)
end
kV, qs_3, DiceEvent, kb, j8, j4, ProfileEvent, qs_2, j0, qs_4, jX, kU, jN, jK, Options, jD, kK, kG, kE, kB, kX, kW, km, kR, jW, kj, j5, kT, jQ, jO, kL, kw, kf, jU, jL, kn, kh, j6, kS = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local qs_7 = 109
repeat
    kY = (qs_7 * 7 + 4) % 16 + 1
    if kY <= 8 then
        if kY <= 4 then
            if kY <= 2 then
                if kY <= 1 then
                    if (qs_7 * 3 + 8) * 17 % 4 == ((qs_7 * 3 + 8) * 17 + 8) % 4 then
                        qs_3 = kI:WaitForChild("Remotes")
                    else
                        kI = qs_3:WaitForChild("Remotes")
                    end
                    qs_7 = (qs_7 + 87) % 128
                else
                    if (qs_7 * 3 + 2) * 17 % 4 == ((qs_7 * 3 + 2) * 17 + 4) % 4 then
                        DiceEvent = qs_3:WaitForChild("DiceEvent")
                        kb = qs_3:WaitForChild("BuyEvent")
                        j8 = qs_3:WaitForChild("SellEvent")
                    else
                        kb = DiceEvent:WaitForChild("DiceEvent")
                        j8 = DiceEvent:WaitForChild("BuyEvent")
                        qs_3 = DiceEvent:WaitForChild("SellEvent")
                    end
                    qs_7 = (qs_7 + 119) % 128
                end
            elseif kY <= 3 then
                if qs_7 * 47919333 + 6 + 5 <= qs_7 * 47919333 + 6 + 5 + 2 then
                    j4 = qs_3:WaitForChild("DiceUpgradeEvent")
                else
                    qs_3 = j4:WaitForChild("DiceUpgradeEvent")
                end
                qs_7 = (qs_7 + 103) % 128
            else
                if qs_7 * 24294527 + 8 + 2 <= qs_7 * 24294527 + 8 + 2 + 1 then
                    ProfileEvent = qs_3:WaitForChild("ProfileEvent")
                    qs_2 = ko:WaitForChild("PlayerGui"):WaitForChild("HUD")
                    j0 = qs_2:WaitForChild("DiceShopFrame")
                else
                    ko = qs_2:WaitForChild("ProfileEvent")
                    j0 = ProfileEvent:WaitForChild("PlayerGui"):WaitForChild("HUD")
                    qs_3 = j0:WaitForChild("DiceShopFrame")
                end
                qs_7 = (qs_7 + 23) % 128
            end
        elseif kY <= 6 then
            if kY <= 5 then
                kZ = (vector.create((qs_7 * 1 + 1) % 11 + 1, (qs_7 * 8 + 12) % 13 + 1, (qs_7 * 14 + 6) % 17 + 1))
                k_ = (vector.create((qs_7 * 6 + 5) % 11 + 1, (qs_7 * 9 + 8) % 13 + 1, (qs_7 * 1 + 17) % 17 + 1))
                local q1 = vector.dot(kZ, k_)
                if q1 * q1 <= vector.dot(kZ, kZ) * vector.dot(k_, k_) then
                    qs_4 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                else
                    kb = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                end
                qs_7 = (qs_7 + 39) % 128
            else
                kZ = (vector.create((qs_7 * 4 + 5) % 11 + 1, (qs_7 * 4 + 4) % 13 + 1, (qs_7 * 12 + 14) % 17 + 1))
                k_ = (vector.create((qs_7 * 3 + 9) % 11 + 1, (qs_7 * 6 + 3) % 13 + 1, (qs_7 * 11 + 16) % 17 + 1))
                local rn = vector.dot(kZ, k_)
                if rn * rn <= vector.dot(kZ, kZ) * vector.dot(k_, k_) then
                    jX = loadstring(game:HttpGet(qs_4 .. "Library.lua"))()
                    pcall(fn476)
                    kU = loadstring(game:HttpGet(qs_4 .. "addons/ThemeManager.lua"))()
                    jN = loadstring(game:HttpGet(qs_4 .. "addons/SaveManager.lua"))()
                    jK = jX.Toggles
                    Options = jX.Options
                else
                    qs_4 = loadstring(game:HttpGet(Options .. "Library.lua"))()
                    pcall(fn476)
                    jX = loadstring(game:HttpGet(Options .. "addons/ThemeManager.lua"))()
                    kU = loadstring(game:HttpGet(Options .. "addons/SaveManager.lua"))()
                    jN = qs_4.Toggles
                    jK = qs_4.Options
                end
                qs_7 = (qs_7 + 39) % 128
            end
        elseif kY <= 7 then
            local rg = bit32.rrotate(bit32.bxor(bit32.lrotate(qs_7, 24), string.byte(tostring(ProfileEvent))), 12)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(rg, 1796128863), 3884359954), (bit32.bxor(bit32.band(rg, 2498838432), 3861468929))), 3884359954), 3861468929) ~= rg then
                kE = "https://discord.gg/ehKVq7pf7v"
                jD = "https://rscripts.net/@Ouroboros"
                kK = 1
                kG = "All"
            else
                jD = "https://discord.gg/ehKVq7pf7v"
                kK = "https://rscripts.net/@Ouroboros"
                kG = 1
                kE = "All"
            end
            qs_7 = (qs_7 + 71) % 128
        else
            if false and (kK and false) or (not kK or not kK) and (j4 or false) or (not kK and not j4 or not kK and false or not j4 and kf and (kK and j4)) or not (false and (kK and false) or (not kK or not kK) and (j4 or false) or (not kK and not j4 or not kK and false or not j4 and kf and (kK and j4))) then
                kB = "Filtered"
                kX = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic" }
                kW = { "Normal", "Big", "Gigantic", "Gold" }
                km = {
                    { Name = "Normal", Price = 0, Luck = 1 },
                    { Name = "Golden", Price = 1250, Luck = 1.3 },
                    { Name = "Diamond", Price = 7000, Luck = 2 },
                    { Name = "Glass", Price = 30000, Luck = 3 },
                    { Name = "Fire", Price = 42000, Luck = 5 },
                    { Name = "Moon", Price = 55000, Luck = 7 },
                    { Name = "Sun", Price = 100000, Luck = 10 },
                    { Name = "Phoenix", Price = 225000, Luck = 15 }
                }
                kR = {
                    "Sell Multiplier I",
                    "Luck Multiplier I",
                    "Roll Cooldown I",
                    "Multiple Items Luck I",
                    "Max Items Pull I"
                }
            else
                kX = "Filtered"
                km = { "Common", "Legendary", "Uncommon", "Rare", "Epic", "Mythic" }
                kR = { "Gigantic", "Big", "Normal", "Gold" }
                kB = {
                    { Luck = 3, Name = "Glass", Price = 30000 },
                    { Price = 55000, Luck = 7, Name = "Moon" },
                    { Price = 42000, Name = "Fire", Luck = 5 },
                    { Price = 1250, Luck = 1.3, Name = "Golden" },
                    { Name = "Sun", Luck = 10, Price = 100000 },
                    { Price = 0, Luck = 1, Name = "Normal" },
                    { Luck = 15, Name = "Phoenix", Price = 225000 },
                    { Name = "Diamond", Luck = 2, Price = 7000 }
                }
                kW = {
                    "Roll Cooldown I",
                    "Luck Multiplier I",
                    "Multiple Items Luck I",
                    "Sell Multiplier I",
                    "Max Items Pull I"
                }
            end
            qs_7 = (qs_7 + 23) % 128
        end
    elseif kY <= 12 then
        if kY <= 10 then
            if kY <= 9 then
                kZ = (vector.create((qs_7 * 2 + 5) % 11 + 1, (qs_7 * 7 + 4) % 13 + 1, (qs_7 * 6 + 5) % 17 + 1))
                k_ = (vector.create((qs_7 * 4 + 8) % 11 + 1, (qs_7 * 8 + 13) % 13 + 1, (qs_7 * 7 + 6) % 17 + 1))
                local qR = vector.cross(kZ, k_)
                local qS = vector.dot(kZ, k_)
                if vector.dot(qR, qR) + qS * qS == vector.dot(kZ, kZ) * vector.dot(k_, k_) + 4 then
                    jQ = fn192
                    kT = fn144
                    kj = fn168
                    j5 = fn12
                else
                    kj = fn192
                    j5 = fn144
                    kT = fn168
                    jQ = fn12
                end
                qs_7 = (qs_7 + 23) % 128
            else
                kZ = (vector.create((qs_7 * 5 + 7) % 11 + 1, (qs_7 * 5 + 4) % 13 + 1, (qs_7 * 6 + 6) % 17 + 1))
                k_ = (vector.create((qs_7 * 5 + 9) % 11 + 1, (qs_7 * 2 + 6) % 13 + 1, (qs_7 * 9 + 9) % 17 + 1))
                k0 = (vector.create((qs_7 * 7 + 5) % 11 + 1, (qs_7 * 6 + 7) % 13 + 1, (qs_7 * 3 + 3) % 17 + 1))
                if vector.dot(vector.cross(kZ, k_), k0) == vector.dot(vector.cross(k_, k0), kZ) + 4 then
                    kL = fn146
                    jO = fn277
                else
                    jO = fn146
                    kL = fn277
                end
                qs_7 = (qs_7 + 71) % 128
            end
        elseif kY <= 11 then
            kZ = {
                "men",
                "huneztyupjp",
                "idayzxzgncc",
                "hkezpgl",
                "wiq",
                "uxeqgilq",
                "qoi",
                "zcvwo",
                "sniysffcjvw",
                "zdcnzkt",
                "zgfy",
                "wfim",
                "lfmkvrf",
                "wethojmfwx",
                "eyrjrun"
            }
            if kZ[(qs_7 * 92 + 34) % 15 + 1] < kZ[(qs_7 * 92 + 34) % 15 + 1] then
                kR = fn92
            else
                kw = fn92
            end
            qs_7 = (qs_7 + 23) % 128
        else
            if (kW or not kW) and (kw or kW) or (not km and not jN or kw and not kW) or not ((kW or not kW) and (kw or kW) or (not km and not jN or kw and not kW)) then
                kf = function(an, ...)
                    local lS
                    lS = nil
                    local lW_2
                    local lV_2
                    local lU_2
                    local lT_2
                    lS = { ... }
                    lT_2, lV_2, lW_2, lU_2 = pcall(function()
                        return an:InvokeServer(table.unpack(lS))
                    end)
                    if not lT_2 then
                        return nil
                    end
                    return lV_2, lW_2, lU_2
                end
            else
                jN = function(an, ...)
                    local lS
                    lS = nil
                    local lW_1
                    local lV_1
                    local lU_1
                    local lT_1
                    lS = { ... }
                    lT_1, lV_1, lW_1, lU_1 = pcall(function()
                        return an:InvokeServer(table.unpack(lS))
                    end)
                    if not lT_1 then
                        return nil
                    end
                    return lV_1, lW_1, lU_1
                end
            end
            qs_7 = (qs_7 + 55) % 128
        end
    elseif kY <= 14 then
        if kY <= 13 then
            local ri = bit32.rrotate(bit32.bxor(bit32.lrotate(qs_7, 11), string.byte(tostring(jO))), 14)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(ri, 3708247575), 852868953), (bit32.bxor(bit32.band(ri, 586719720), 2495502529))), 852868953), 2495502529) == ri then
                jU = fn184
                jL = fn37
                kn = fn106
                kh = fn339
            else
                kh = fn184
                kn = fn37
                jU = fn106
                jL = fn339
            end
            qs_7 = (qs_7 + 7) % 128
        else
            if (qs_7 * 1 + 1) * 9 % 4 == ((qs_7 * 1 + 1) * 9 + 12) % 4 then
                j6 = fn626
                kS = fn278
            else
                kS = fn626
                j6 = fn278
            end
            qs_7 = (qs_7 + 87) % 128
        end
    elseif kY <= 15 then
        kY = (vector.create((qs_7 * 1 + 9) % 11 + 1, (qs_7 * 1 + 2) % 13 + 1, (qs_7 * 15 + 8) % 17 + 1))
        kZ = (vector.create((qs_7 * 6 + 4) % 11 + 1, (qs_7 * 8 + 12) % 13 + 1, (qs_7 * 4 + 14) % 17 + 1))
        k_ = (vector.create((qs_7 * 5 + 3) % 11 + 1, (qs_7 * 9 + 2) % 13 + 1, (qs_7 * 7 + 12) % 17 + 1))
        k0 = (vector.create((qs_7 * 1 + 2) % 5 + 1, (qs_7 * 2 + 7) % 7 + 1, (qs_7 * 2 + 4) % 9 + 1))
        if vector.dot(vector.cross(kY, (vector.cross(kZ, k_))), k0) == vector.dot(kZ * vector.dot(kY, k_) - k_ * vector.dot(kY, kZ), k0) then
            jW = kf(j4, "GetConfigTable")
        else
            j4 = jW(kf, "GetConfigTable")
        end
        qs_7 = (qs_7 + 71) % 128
    else
        kY = (vector.create((qs_7 * 6 + 4) % 11 + 1, (qs_7 * 5 + 8) % 13 + 1, (qs_7 * 15 + 12) % 17 + 1))
        kZ = (vector.create((qs_7 * 1 + 8) % 11 + 1, (qs_7 * 1 + 13) % 13 + 1, (qs_7 * 2 + 4) % 17 + 1))
        local q8 = vector.cross(kY, kZ)
        local q9 = vector.dot(kY, kZ)
        if vector.dot(q8, q8) + q9 * q9 == vector.dot(kY, kY) * vector.dot(kZ, kZ) then
            kV = "Toss a Dice"
        else
            jU = "Toss a Dice"
        end
        qs_7 = (qs_7 + 87) % 128
    end
until (qs_7 * 69 + 31) % 128 == 32
if type(jW) ~= "table" then
    jW = {}
end
jT = {}
for k in jW do
    jT[#jT + 1] = k
end
if #jT == 0 then
    for k, v in kR do
        jT[#jT + 1] = v
    end
else
    qs_4 = 0
    repeat
        qs_2 = {
            "noydhqia",
            "argbvrqfen",
            "yqhtgekbtxo",
            "vmaivryl",
            "jgyuwkq",
            "cqqxkq",
            "jkjnqmh",
            "xefqbhosmf",
            "neorv",
            "tsiaceyth",
            "arkok",
            "djpbapvw"
        }
        local rl = qs_4
        qs_7 = qs_2[rl % 12 + 1]
        if qs_7:len() <= qs_7:gsub("(.)", "%1%1", rl % 3 % 2 + 1):len() then
            table.sort(jT, fn451)
        else
            table.sort(jT, fn451)
        end
        qs_4 = (qs_4 + 1) % 4
    until (qs_4 * 3 + 2) % 4 == 1
end
kk, j7, j_, kt, kc, jZ, jY, jJ, j1, jR, jF, kH = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
kR = kS()
kk = fn818
j7 = fn540
j_ = fn335
kt = fn118
kc = fn657
jZ = fn670
jY = fn751
jJ = fn648
j1 = fn719
jR = fn271
jF = fn138
kH = fn525
qs_7 = jX:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = jD, Copyable = true }, "|", kV },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
qs_3 = {
    Info = qs_7:AddTab("Info", "info"),
    Main = qs_7:AddTab("Main", "dices"),
    Player = qs_7:AddTab("Player", "person-standing"),
    Settings = qs_7:AddTab("Settings", "settings")
}
for k, v in { qs_3.Main, qs_3.Player, qs_3.Settings } do
    kT(v)
end
kZ, kY, jP, kS, jM, k_, ky, kr, qs_7, kd, j3 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
qs_4 = 28
repeat
    kT = (qs_4 * 3 + 5) % 8 + 1
    if kT <= 4 then
        if kT <= 2 then
            if kT <= 1 then
                if false and not kZ or (qs_4 or false) or (false or (qs_4 or kd)) or (jP or kd or (kZ or not kZ)) and ((not kZ or qs_4) and (not qs_4 or jP)) or not (false and not kZ or (qs_4 or false) or (false or (qs_4 or kd)) or (jP or kd or (kZ or not kZ)) and ((not kZ or qs_4) and (not qs_4 or jP))) then
                    qs_7 = #kr > 18
                else
                    kr = #qs_7 > 18
                end
                qs_4 = (qs_4 + 3) % 32
            else
                k0 = {
                    "awavijzbdkpb",
                    "bodpov",
                    "zustirkus",
                    "qebcrnia",
                    "rotdouqjr",
                    "hhvczmndxfcn",
                    "xpjrnvm",
                    "jrefqqhauzl",
                    "ceyqq",
                    "ggqn",
                    "lznsya",
                    "xiqljvstwt",
                    "gmpulpdg"
                }
                if k0[(qs_4 * 36 + 19) % 13 + 1] < k0[(qs_4 * 36 + 19) % 13 + 1] then
                    ky = fn88
                else
                    kd = fn88
                end
                qs_4 = (qs_4 + 19) % 32
            end
        elseif kT <= 3 then
            k0 = {
                "czbpvde",
                "njrqybq",
                "kavyvpyy",
                "xummlqura",
                "esa",
                "cuktlvaunx",
                "oihqndtpst",
                "ktjtxjxt",
                "pntcctz",
                "ujriquazmexf"
            }
            if k0[(qs_4 * 15 + 57) % 10 + 1] < k0[(qs_4 * 15 + 57) % 10 + 1] then
                kd = fn109
            else
                j3 = fn109
            end
            qs_4 = (qs_4 + 27) % 32
        else
            if (qs_4 * 3 + 4) * 9 % 4 == ((qs_4 * 3 + 4) * 9 + 7) % 4 then
                kd = "#7fd47f"
            else
                kZ = "#7fd47f"
            end
            qs_4 = (qs_4 + 3) % 32
        end
    elseif kT <= 6 then
        if kT <= 5 then
            k0 = {
                "csnqvbbeeoc",
                "basarwugnfb",
                "leqcxdoak",
                "wyyndzhgoiu",
                "ebydnnfv",
                "knokryphtet",
                "fxvudnxuuy",
                "elhwrf",
                "anbevgxc",
                "zaanutdrpou",
                "ettkqcepnof",
                "tqtgjapzx"
            }
            local q6 = qs_4
            local k1_1 = k0[q6 % 12 + 1]
            if k1_1:len() <= k1_1:gsub("(.)", "%1%1", q6 % 3 % 2 + 1):len() then
                kY = "#6ec1ff"
            else
                kS = "#6ec1ff"
            end
            qs_4 = (qs_4 + 27) % 32
        else
            k0 = (vector.create((qs_4 * 7 + 8) % 11 + 1, (qs_4 * 11 + 7) % 13 + 1, (qs_4 * 9 + 10) % 17 + 1))
            local k1_2 = (vector.create((qs_4 * 5 + 2) % 11 + 1, (qs_4 * 10 + 11) % 13 + 1, (qs_4 * 8 + 15) % 17 + 1))
            local rj = vector.dot(k0, k1_2)
            if rj * rj >= vector.dot(k0, k0) * vector.dot(k1_2, k1_2) + 1 then
                ky = "#e8a34d"
            else
                jP = "#e8a34d"
            end
            qs_4 = (qs_4 + 27) % 32
        end
    elseif kT <= 7 then
        kT = {
            "ovrawtsckc",
            "fdgocerop",
            "fak",
            "zbj",
            "kvgnjnjhpv",
            "pjc",
            "rqe",
            "gusmelyhopci",
            "xuf",
            "zxoruqaxx"
        }
        if kT[(qs_4 * 35 + 104) % 10 + 1] < kT[(qs_4 * 35 + 104) % 10 + 1] then
            k_ = "Unknown"
            pcall(fn40)
            j3 = jM.Info:AddLeftGroupbox("Account", "circle-user")
            j3:AddLabel(kV("User", nil, kd), true)
            j3:AddLabel(kV("Status", "Keyless", kd), true)
            j3:AddLabel(kV("Executor", "Unknown", kd), true)
            kZ = jM.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            kZ:AddLabel(ky(ko .. " [" .. tostring(game.PlaceId) .. "]", qs_3), true)
            kZ:AddLabel(kV("Place ID", tostring(game.PlaceId), qs_3), true)
            kS = kZ:AddLabel(kV("Session time", "0s", kY), true)
        else
            kS = "#8b93a3"
            jM = "Unknown"
            pcall(fn40)
            qs_2 = qs_3.Info:AddLeftGroupbox("Account", "circle-user")
            qs_2:AddLabel(j3("User", ko.Name, kZ), true)
            qs_2:AddLabel(j3("Status", "Keyless", kZ), true)
            qs_2:AddLabel(j3("Executor", jM, kZ), true)
            k_ = qs_3.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            k_:AddLabel(kd(kV .. " [" .. tostring(game.PlaceId) .. "]", kY), true)
            k_:AddLabel(j3("Place ID", tostring(game.PlaceId), kY), true)
            ky = k_:AddLabel(j3("Session time", "0s", jP), true)
        end
        qs_4 = (qs_4 + 27) % 32
    else
        kT = (vector.create((qs_4 * 3 + 6) % 11 + 1, (qs_4 * 2 + 13) % 13 + 1, (qs_4 * 5 + 11) % 17 + 1))
        k0 = (vector.create((qs_4 * 4 + 8) % 11 + 1, (qs_4 * 5 + 4) % 13 + 1, (qs_4 * 12 + 5) % 17 + 1))
        local rr = vector.dot(kT, k0)
        if rr * rr >= vector.dot(kT, kT) * vector.dot(k0, k0) + 1 then
            kS = tostring(game.JobId)
        else
            kr = tostring(game.JobId)
        end
        qs_4 = (qs_4 + 3) % 32
    end
until (qs_4 * 29 + 23) % 32 == 11
if qs_7 then
    qs_4 = 7
    repeat
        qs_2 = (vector.create((qs_4 * 7 + 8) % 11 + 1, (qs_4 * 6 + 8) % 13 + 1, (qs_4 * 7 + 2) % 17 + 1))
        kT = (vector.create((qs_4 * 3 + 7) % 11 + 1, (qs_4 * 6 + 2) % 13 + 1, (qs_4 * 10 + 13) % 17 + 1))
        k0 = (vector.create((qs_4 * 4 + 3) % 5 + 1, (qs_4 * 3 + 6) % 7 + 1, (qs_4 * 4 + 6) % 9 + 1))
        if math.abs((vector.angle(qs_2, kT, k0))) - math.abs((vector.angle(kT, qs_2, k0))) == 0 then
            qs_7 = string.sub(kr, 1, 18) .. "..."
        else
            kr = string.sub(qs_7, 1, 18) .. "..."
        end
        qs_4 = (qs_4 + 4) % 8
    until (qs_4 * 7 + 6) % 8 == 3
end
qs_4 = qs_7 or kr
j9, jE, kJ, kF, kD, kA, kv, kp, lc, TossingGroup, CurrentCamera, jV, jS, connection, connection2, qs_7, kq, jG, jH, kl, ka, jC = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local ld = qs_4
k_:AddLabel(j3("Server", ld, kS), true)
k_:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
j9 = os.clock()
task.spawn(worker)
local ScriptsGroup = qs_3.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(kd("Included in this hub", kS), true)
ScriptsGroup:AddLabel(kd(kV, kY), true)
local FeaturesGroup = qs_3.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(kd("Auto Perfect Toss", kY), true)
FeaturesGroup:AddLabel(kd("Auto Sell", jP), true)
FeaturesGroup:AddLabel(kd("Auto Buy Dice", kZ), true)
FeaturesGroup:AddLabel(kd("Auto Buy Upgrades", kS), true)
kT = qs_3.Info:AddRightGroupbox("Socials", "link")
kT:AddButton({ Text = "Discord", Func = j5 })
kT:AddButton({ Text = "Rscripts", Func = onRscripts })
qs_2 = qs_3.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
qs_2:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
qs_2:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
qs_2:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
qs_2:AddButton({ Text = "Copy Discord Invite", Func = j5 })
jE = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
kJ = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
kF = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
kD = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
kA = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
kv = "https://paypal.me/TheTruckerGOD"
kp = "https://venmo.com/u/miserablemusic"
local le = "#345d9d"
if not connection and 86 and (not connection or not ScriptsGroup) or (not j9 or jC) and (not ScriptsGroup and connection) or not (not connection and 86 and (not connection or not ScriptsGroup) or (not j9 or jC) and (not ScriptsGroup and connection)) then
    lc = "#f7931a"
else
    kJ = "#f7931a"
end
local lb = "#627eea"
local la = "#26a17b"
local k8 = "#14f195"
local k7 = "#0070ba"
local k6 = "#008cff"
local DonationsGroup = qs_3.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(kd("All donations are optional but appreciated.", jP), true)
DonationsGroup:AddLabel(kd("If you donate you get a special role, just PING after you donate.", kZ), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(kd("LTC / Litecoin", le), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(kd("BTC / Bitcoin", lc), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(kd("ETH / Ethereum", lb), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(kd("USDT", la), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(kd("Solana", k8), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(kd("PayPal", k7), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(kd("Venmo", k6), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(kd("Don't have any of the listed currencies but still wanna donate?", kS), true)
DonationsGroup:AddLabel(kd("DM me and we'll work something out.", kY), true)
local FaqGroup = qs_3.Info:AddRightGroupbox("FAQ", "circle-help")
if (kJ or qs_2) and (kJ or qs_2) and (kF and qs_7 and (not qs_2 or not TossingGroup)) and not ((kJ or qs_2) and (kJ or qs_2) and (kF and qs_7 and (not qs_2 or not TossingGroup))) then
    qs_3:AddLabel("Where do I get a good config?", true)
    qs_3:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
    qs_3:AddLabel("How do I import / export configs?", true)
    qs_3:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
    qs_3:AddLabel("How do I report bugs?", true)
    qs_3:AddLabel("Join the Discord and post it in the bugs channel.", true)
    qs_3:AddLabel("How do I make suggestions?", true)
    qs_3:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
    qs_3:AddLabel("How do I get help or updates?", true)
    qs_3:AddLabel("Join the Discord, updates and support are posted there first.", true)
    TossingGroup.Main:AddLeftGroupbox("Tossing", "dices")
else
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
    TossingGroup = qs_3.Main:AddLeftGroupbox("Tossing", "dices")
end
TossingGroup:AddToggle("AutoPerfectToss", { Text = "Auto Perfect Toss", Default = false })
local ShopGroup = qs_3.Main:AddLeftGroupbox("Shop", "shopping-cart")
ShopGroup:AddToggle("AutoBuyDice", { Text = "Auto Buy Dice", Default = false })
ShopGroup:AddDropdown("AutoBuyDiceMax", { Text = "Max Dice", Values = kR, Default = kR[#kR] })
ShopGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
ShopGroup:AddDropdown("AutoBuyUpgradeTarget", { Text = "Upgrades", Values = jT, Default = jT, Multi = true, SelectAllButtons = true })
local SellingGroup = qs_3.Main:AddRightGroupbox("Selling", "tag")
SellingGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
SellingGroup:AddDropdown("AutoSellMode", { Text = "Sell Mode", Values = { kE, kB }, Default = kB })
SellingGroup:AddDropdown("AutoSellRarities", {
    Text = "Rarities",
    Values = kX,
    Default = { "Common", "Uncommon", "Rare" },
    Multi = true,
    SelectAllButtons = true,
    Expandable = true
})
SellingGroup:AddDropdown("AutoSellMutations", {
    Text = "Mutations",
    Values = kW,
    Default = { "Normal", "Big" },
    Multi = true,
    SelectAllButtons = true
})
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
local MovementGroup = qs_3.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
k0 = qs_3.Player:AddRightGroupbox("Fly", "feather")
k0:AddToggle("Fly", { Text = "Fly", Default = false })
k0:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
jK.Fly:OnChanged(fn394)
jK.WalkSpeedEnabled:OnChanged(fn760)
kq = function(fk)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not fk)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not fk
        end
    end)
    if not fk then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(ko, "GameplayPaused", false)
        else
            ko.GameplayPaused = false
        end
    end)
end
jK.AntiGameplayPause:OnChanged(fn553)
task.spawn(antiGameplayPauseLoop)
local MenuGroup = qs_3.Settings:AddLeftGroupbox("Menu", "menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
jX.ToggleKeybind = Options.MenuKeybind
jV = tick()
jS = tick()
pcall(function()
    for k, v in getconnections(ko.Idled) do
        local ps = v
        pcall(function()
            ps:Disable()
        end)
    end
end)
jG = fn770
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
task.spawn(antiAfkLoop)
jX:OnUnload(fn832)
kU:SetLibrary(jX)
kU:SetFolder("OuroborosHub")
kU:SaveDefault("Linoria")
kU:ApplyToTab(qs_3.Settings)
kU:LoadDefault()
jN:SetLibrary(jX)
jN:IgnoreThemeSettings()
jN:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
jN:SetFolder("OuroborosHub/TossADice")
qs_7 = jN:BuildConfigSection(qs_3.Settings)
jH = fn790
kl = fn722
ka = fn93
jC = function(gp)
    local p6
    p6 = nil
    local p7 = type(gp) ~= "table" or type(gp.idx) ~= "string" or type(gp.type) ~= "string" or jN.Ignore[gp.idx]
    if p7 then
        return false
    end
    p6 = jH(gp.type, gp.idx)
    if not p6 then
        return false
    end
    local p7_1 = pcall(function()
        if gp.type == "Input" then
            if type(gp.text) ~= "string" then
                return
            end
            p6:SetValue(gp.text)
        elseif gp.type == "ColorPicker" then
            p6:SetValueRGB(Color3.fromHex(gp.value), gp.transparency)
        elseif gp.type == "KeyPicker" then
            p6:SetValue({ gp.key, gp.mode, gp.modifiers })
            if gp.mode == "Toggle" and gp.toggled ~= nil then
                p6.Toggled = gp.toggled
                p6:Update()
            end
        else
            p6:SetValue(gp.value)
        end
    end)
    return p7_1
end
qs_7:AddDivider()
qs_7:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
qs_7:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
qs_7:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
jN:LoadAutoloadConfig()
