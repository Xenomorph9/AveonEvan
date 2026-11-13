local Toggles
local kc
local jU
local connection2
local ki
local j_
local jH
local j5
local jN
local ju
local kb
local jT
local CurrentCamera
local OuroborosGen
local jZ
local jG
local j4
local jM
local RingConfig
local ka
local HttpService
local SpiritDex
local kg
local jY
local jF
local j3
local Options
local j9
local jR
local jy
local kf
local jX
local jE
local j2
local jK
local RebirthConfig
local j8
local jQ
local PendantConfig
local ke
local jW
local jD
local kk
local j1
local jJ
local jq
local j7
local connection
local jw
local kd
local jV
local Remotes
local kj
local j0
local jI
local jO
local function fn16()
    kc("EquipBest")
end
local function onInputChanged(dO)
    local UserInputType = dO.UserInputType
    local nw = UserInputType == Enum.UserInputType.MouseMovement
    local nA = if nw then 1 else 0
    local ny = 1368 * nA + 2461 * (1 - nA)
    local nz = 1102 * nA + 3207 * (1 - nA)
    if not ((ny * 2917 + nz * 2170 + ny * nz) % 16777213 == 7889332) then
        nw = UserInputType == Enum.UserInputType.Gamepad1
    end
    if nw then
        kd = tick()
    end
end
local function fn41(bo, bp, bq)
    return string.format("<b>%s</b> %s %s", bo, jT("-", "#5a6070"), jT(bp, bq))
end
local function onRscripts()
    if setclipboard then
        setclipboard(jG)
    elseif toclipboard then
        toclipboard(jG)
    end
    jI:Notify("Copied Rscripts profile to clipboard")
end
local function worker()
    local mv_1
    while true do
        task.wait(1)
        if jI.Unloaded then
            break
        end
        local mu = math.floor(os.clock() - jR)
        if mu < 60 then
            mv_1 = mu .. "s"
        elseif mu < 3600 then
            mv_1 = string.format("%dm %ds", mu // 60, mu % 60)
        else
            mv_1 = string.format("%dh %dm", mu // 3600, mu % 3600 // 60)
        end
        j3:SetText(jJ("Session time", mv_1, jw))
    end
end
local function fn77()
    local ml_1
    local mk_1
    if identifyexecutor then
        ml_1, mk_1 = identifyexecutor()
        local mm = ml_1 ~= ""
        local mn = type(ml_1) == "string" and mm
        if mn then
            local mm_1 = type(mk_1) == "string" and mk_1 ~= "" and ml_1 .. " " .. mk_1
            kk = mm_1 or ml_1
        end
    end
end
local function fn88()
    jD()
    jX("ClaimOffline")
end
local function fn117()
    pcall(function()
        connection:Disconnect()
    end)
    pcall(function()
        connection2:Disconnect()
    end)
    jM(false)
end
local function fn135(cv)
    local my = jV[cv]
    if my then
        return ("%s  ($%s)"):format(my.name, tostring(my.price))
    end
    return cv
end
local function onExportConfigToClipboard()
    local oj_1
    local oi_1
    oi_1, oj_1 = pcall(HttpService.JSONEncode, HttpService, jF())
    if not oi_1 then
        jI:Notify("Failed to encode the config")
        return
    end
    local oi_2 = setclipboard or toclipboard
    local oi_3 = type(oi_2) ~= "function"
    local op = if oi_3 then 1 else 0
    local on = 2755 * op + 3517 * (1 - op)
    local oo = 3212 * op + 2460 * (1 - op)
    if not ((on * 1854 + oo * 684 + on * oo) % 16777213 == 16153838) then
        oi_3 = not pcall(oi_2, oj_1)
    end
    if oi_3 then
        jI:Notify("Your executor does not support copying to the clipboard")
        return
    end
    jI:Notify("Config copied to clipboard", 6)
end
local function onCopyJoinScript_JobID()
    local ms = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, j0)
    if setclipboard then
        setclipboard(ms)
    elseif toclipboard then
        toclipboard(ms)
    end
    jI:Notify("Copied join script to clipboard")
end
local function fn162()
    local leaderstats = jN:FindFirstChild("leaderstats")
    local lO = leaderstats and leaderstats:FindFirstChild("Rebirths")
    if lO then
        return lO.Value or 0
    end
    return 0
end
local function onCopyLitecoinAddress()
    kj(ke, "Copied Litecoin address")
end
local function antiAfkLoop()
    while not jI.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local nE = tick() - kd
            local nF = tick() - ka
            if nE >= 300 and nF >= 60 then
                pcall(jZ)
            else
                if nE < 300 and nF >= 300 then
                    pcall(jZ)
                end
            end
        end
    end
end
local function fn231()
    if jK() < PendantConfig.ForgeCost then
        return
    end
    local oX = kc("ForgePendant")
    if oX and oX.ok and oX.rolled then
        local oY_1 = PendantConfig.Pendants[oX.rolled]
        if oY_1 and oX.rolled > (oX.equipped or 0) then
            kc("EquipPendant", oY_1.id)
        end
    end
end
local function onCopyUSDTAddress()
    kj(j7, "Copied USDT address")
end
local function fn243()
    local oM = RebirthConfig.requirementFor(jy())
    local oM_1 = oM and oM.cashCost or math.huge
    if jK() >= oM_1 then
        kc("Rebirth")
    end
end
local function fn259()
    if not jO.graveIndex then
        j2()
        return
    end
    if jO.rank >= (jY[Options.BuyRarityTier and Options.BuyRarityTier.Value or "ash"] or 1) then
        if jK() >= jO.price then
            local oR_3 = kc("ClaimSpirit", jO.graveIndex)
            if oR_3 and oR_3.ok then
                jO = { graveIndex = nil, rank = 0, price = 0 }
            end
        end
    else
        j2()
        jO = { graveIndex = nil, rank = 0, price = 0 }
    end
end
local function fn264(P, ...)
    local lz_1
    local lx = ki(P)
    local ly = lx and lx:IsA("RemoteFunction")
    local ly_1
    if not ly then
        return nil
    end
    ly_1, lz_1 = pcall(lx.InvokeServer, lx, ...)
    if ly_1 then
        return lz_1
    end
    return nil
end
local function fn273(M)
    return Remotes:FindFirstChild(M)
end
local function fn278(d4, d5)
    local nJ_1 = (d4 == "Toggle" and Toggles or Options)[d5]
    local nI_2 = type(nJ_1) == "table" and nJ_1.Type == d4
    return nI_2 and nJ_1 or nil
end
local function antiGameplayPauseLoop()
    while not jI.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            jM(true)
        end
    end
end
local function fn348()
    if not Toggles.WalkSpeedEnabled.Value then
        local m9 = ju()
        if m9 then
            m9.WalkSpeed = 16
        end
    end
end
local function fn363()
    local l3 = jN.RespawnLocation and jN.RespawnLocation.Parent
    local l4 = l3
    if l3 then
        l3 = l4:FindFirstChild("Objects")
    end
    local l4_1 = l3
    if not l4_1 then
        return false
    end
    local Character = jN.Character
    local l5 = Character and Character:FindFirstChild("HumanoidRootPart")
    if not l5 then
        return false
    end
    local l5_1 = false
    for i, descendant in ipairs(l4_1:GetDescendants()) do
        local l4_2 = descendant:IsA("BasePart") and descendant.Name == "CollectPad"
        if l4_2 then
            l5.CFrame = CFrame.new(descendant.Position + Vector3.new(0, 3, 0))
            l5_1 = true
            task.wait(0.35)
        end
    end
    return l5_1
end
local function fn365(bf)
    local DiscordGroup = bf:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = j9 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = j9 })
end
local function onImportConfigFromClipboardTex()
    local ou_1
    local oq = Options.SaveManager_ImportSource.Value or ""
    local oq_1
    local ot = tostring(oq):match("^%s*(.-)%s*$")
    if ot == "" then
        jI:Notify("Paste an exported config into the box first")
        return
    end
    oq_1, ou_1 = pcall(HttpService.JSONDecode, HttpService, ot)
    local ot_1 = not oq_1 or type(ou_1) ~= "table" or type(ou_1.objects) ~= "table"
    if ot_1 then
        jI:Notify("That is not a valid exported config")
        return
    end
    local oq_2 = 0
    for i, v in ipairs(ou_1.objects) do
        if j5(v) then
            oq_2 += 1
        end
    end
    if oq_2 == 0 then
        jI:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local ou_2 = oq_2 == 1 and "" or "s"
    jI:Notify(("Imported %d setting%s"):format(oq_2, ou_2), 6)
end
local function fn395(a8, a9)
    if setclipboard then
        setclipboard(a8)
    elseif toclipboard then
        toclipboard(a8)
    end
    jI:Notify(a9)
end
local function fn427()
    local BuyChests = Options.BuyChests
    if not BuyChests then
        return
    end
    local pc = BuyChests:GetActiveValues()
    for i, v in ipairs(pc) do
        local pb_1 = jV[v]
        local pc_1 = pb_1 and jK() >= pb_1.price
        if pc_1 then
            kc("BuyBox", v)
        end
    end
end
local function fn435(bl, bm)
    return string.format('<font color="%s">%s</font>', bm, bl)
end
local function onCopySolanaAddress()
    kj(j4, "Copied Solana address")
end
local function fn454(W, ...)
    local lE = ki(W)
    local lF = lE and lE:IsA("RemoteEvent")
    if lF then
        pcall(lE.FireServer, lE, ...)
    end
end
local function onCopyPayPalLink()
    kj(j1, "Copied PayPal link")
end
local function onInputBegan()
    kd = tick()
end
local function onRenderStepped(c2)
    if jI.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local mY_1 = ju()
        if mY_1 then
            mY_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local mY_3 = kf()
        local mZ = ju()
        if mY_3 and mZ then
            mZ.PlatformStand = true
            local mZ_1 = Vector3.zero
            local m3 = if jU:IsKeyDown(Enum.KeyCode.W) then 1 else 0
            if m3 == 1 then
                mZ_1 = mZ_1 + CurrentCamera.CFrame.LookVector
            end
            if jU:IsKeyDown(Enum.KeyCode.S) then
                mZ_1 = mZ_1 - CurrentCamera.CFrame.LookVector
            end
            if jU:IsKeyDown(Enum.KeyCode.A) then
                mZ_1 = mZ_1 - CurrentCamera.CFrame.RightVector
            end
            if jU:IsKeyDown(Enum.KeyCode.D) then
                mZ_1 = mZ_1 + CurrentCamera.CFrame.RightVector
            end
            if jU:IsKeyDown(Enum.KeyCode.Space) then
                mZ_1 = mZ_1 + Vector3.new(0, 1, 0)
            end
            if jU:IsKeyDown(Enum.KeyCode.LeftControl) then
                mZ_1 = mZ_1 - Vector3.new(0, 1, 0)
            end
            mY_3.Velocity = Vector3.zero
            if mZ_1.Magnitude > 0 then
                mY_3.CFrame = mY_3.CFrame + mZ_1.Unit * Options.FlySpeed.Value * c2
            end
        end
    end
end
local function fn504()
    local pQ_1
    local pO = kc("GetInventory")
    local pO_1
    if typeof(pO) ~= "table" then
        return
    end
    local pP = {}
    for k, v in pairs(pO) do
        pQ_1, pO_1 = string.match(k, "^(.-)#(%d+)$")
        if pQ_1 then
            local pS = tonumber(pO_1) or 1
            table.insert(pP, { key = pQ_1, level = pS })
        end
    end
    table.sort(pP, function(gB, gC)
        return gB.level > gC.level
    end)
    local pO_2 = {}
    local pQ_2 = math.min(3, #pP)
    local p1 = 1
    while p1 <= pQ_2 do
        local p2 = p1
        table.insert(pO_2, pP[p2].key)
        p1 += 1
    end
    if #pO_2 > 0 then
        kc("TowerBattle", pO_2)
    end
end
local function fn517(cy)
    local mA = jV[cy]
    if mA then
        return ("%s  ($%s)"):format(mA.name, tostring(mA.price))
    end
    return cy
end
local function onCopyBitcoinAddress()
    kj(kb, "Copied Bitcoin address")
end
local function fn539()
    if Toggles.AutoBuyRarity and Toggles.AutoBuyRarity.Value then
        return
    end
    j2()
end
local function fn593()
    local lY = kg()
    if not lY then
        return false
    end
    local RollPrompt = lY:FindFirstChild("RollPrompt", true)
    local lY_1 = RollPrompt and RollPrompt:IsA("ProximityPrompt")
    if not lY_1 then
        return false
    end
    local Parent = RollPrompt.Parent
    local Character = jN.Character
    local l0 = Character and Character:FindFirstChild("HumanoidRootPart")
    local l__1 = Parent
    if l__1 then
        l__1 = Parent:IsA("BasePart")
    end
    if l__1 and l0 then
        l0.CFrame = CFrame.new(Parent.Position + Vector3.new(0, 0, 5))
        task.wait(0.3)
    end
    if typeof(fireproximityprompt) == "function" then
        fireproximityprompt(RollPrompt)
        return true
    end
    return false
end
local function onJumpRequest()
    if jI.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local mW_1 = ju()
        if mW_1 then
            mW_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn669()
    local Character = jN.Character
    local mJ = Character and Character:FindFirstChild("HumanoidRootPart")
    return mJ
end
local function fn676()
    kj(jH, "Copied Discord invite to clipboard")
end
local function fn686(ec, ed)
    local Type = ed.Type
    if Type == "Toggle" then
        return { idx = ec, type = "Toggle", value = ed.Value == true }
    elseif Type == "Slider" then
        return { idx = ec, type = "Slider", value = tostring(ed.Value) }
    elseif Type == "Dropdown" then
        return { idx = ec, type = "Dropdown", multi = ed.Multi == true, value = ed.Value }
    elseif Type == "Input" then
        local nQ = ed.Value or ""
        return { idx = ec, type = "Input", text = tostring(nQ) }
    elseif Type == "ColorPicker" then
        return { idx = ec, type = "ColorPicker", value = ed.Value:ToHex(), transparency = ed.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = ec,
            type = "KeyPicker",
            mode = ed.Mode,
            key = ed.Value,
            modifiers = ed.Modifiers,
            toggled = ed.Toggled
        }
    else
        return nil
    end
end
local function fn687()
    jM(Toggles.AntiGameplayPause.Value)
end
local function onStepped()
    if jI.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = jN.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local mL_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if mL_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn740()
    local pv_1
    local pu_1
    local pt = kc("GetSpirits")
    if typeof(pt) ~= "table" then
        return
    end
    pv_1, pu_1 = nil, 0
    for k, v in pairs(pt) do
        local pt_1 = typeof(v) == "table" and v.id
        if pt_1 then
            local pt_2 = SpiritDex.byId[v.id]
            if pt_2 then
                local pt_3 = (jY[pt_2.tier] or 0) * 1000000 + (pt_2.oneIn or 0)
                if pt_3 > pu_1 then
                    pu_1 = pt_3
                    pv_1 = k
                end
            end
        end
    end
    if pv_1 ~= nil then
        kc("EquipSpirit", pv_1)
    end
end
local function fn747()
    return not jI.Unloaded and jq.OuroborosGen == OuroborosGen
end
local function fn752()
    local nW = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local nX = type(v) == "table" and type(v.Type) == "string" and not jE.Ignore[k]
            if nX then
                local nX_1 = jQ(k, v)
                if nX_1 then
                    nW[#nW + 1] = nX_1
                end
            end
        end
    end
    table.sort(nW, function(eq, er)
        if eq.type ~= er.type then
            return eq.type < er.type
        end
        return eq.idx < er.idx
    end)
    return { objects = nW }
end
local function fn760()
    local Character = jN.Character
    local mD = Character and Character:FindFirstChildOfClass("Humanoid")
    return mD
end
local function onUnload()
    jI:Unload()
end
local function fn835()
    if not Toggles.Fly.Value then
        local m4 = ju()
        if m4 then
            m4.PlatformStand = false
        end
    end
end
local function fn870()
    local UseChests = Options.UseChests
    if not UseChests then
        return
    end
    local pl = UseChests:GetActiveValues()
    for i, v in ipairs(pl) do
        kc("OpenBox", v)
    end
end
local function fn881()
    if jK() < RingConfig.ForgeCost then
        return
    end
    local o5 = kc("ForgeRing")
    if o5 and o5.ok and o5.rolled then
        local o6_1 = RingConfig.Rings[o5.rolled]
        if o6_1 and o5.rolled > (o5.equipped or 0) then
            kc("EquipRing", o6_1.id)
        end
    end
end
local function onCopyEthereumAddress()
    kj(j8, "Copied Ethereum address")
end
local function onCopyVenmoLink()
    kj(j_, "Copied Venmo link")
end
local function fn921()
    local pG = kc("GetInventory")
    if typeof(pG) ~= "table" then
        return
    end
    for k, v in pairs(pG) do
        local pG_1 = type(v) == "number" and v >= 2
        if pG_1 then
            kc("SelectItem", k)
        end
    end
end
local function fn947()
    local leaderstats = jN:FindFirstChild("leaderstats")
    local lL = leaderstats and leaderstats:FindFirstChild("Cash")
    local lK_1 = lL
    if lL then
        lL = lK_1:IsA("IntValue")
    end
    if lL then
        return lK_1.Value
    end
    return 0
end
local function fn961()
    if not workspace.CurrentCamera then
        return
    end
    jW:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    jW:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    ka = tick()
end
local function fn968()
    local Graves = workspace:FindFirstChild("Graves")
    if not Graves then
        return nil
    end
    for i, child in ipairs(Graves:GetChildren()) do
        local lQ_1 = child:IsA("Model") and child:GetAttribute("OwnerUserId") == jN.UserId
        if lQ_1 then
            return child
        end
    end
    return nil
end
jq = nil
RebirthConfig = nil
Options = nil
RingConfig = nil
ju = nil
Toggles = nil
jw = nil
PendantConfig = nil
jy = nil
SpiritDex = nil
CurrentCamera = nil
connection2 = nil
Remotes = nil
jD = nil
jE = nil
jF = nil
jG = nil
jH = nil
jI = nil
jJ = nil
jK = nil
jM = nil
jN = nil
jO = nil
connection = nil
jQ = nil
jR = nil
HttpService = nil
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
j2 = nil
j3 = nil
j4 = nil
j5 = nil
j7 = nil
j8 = nil
j9 = nil
ka = nil
kb = nil
kc = nil
local jL, j6
kd = nil
ke = nil
kf = nil
kg = nil
OuroborosGen = nil
ki = nil
kj = nil
kk = nil
local kn, ko, kp, kq, kr, ks, kt, kv, kw, kx, ky, kz, kA, kB, kD, EquipBestGroup
jq = getgenv()
local kl = jq.OuroborosGen or 0
OuroborosGen, kn = nil, nil
local km = 4
local Players, km_9
repeat
    ko = (km * 1 + 0) % 2 + 1
    if ko <= 1 then
        ko = (vector.create((km * 1 + 8) % 11 + 1, (km * 9 + 3) % 13 + 1, (km * 1 + 4) % 17 + 1))
        kp = (vector.create((km * 1 + 7) % 11 + 1, (km * 6 + 2) % 13 + 1, (km * 2 + 6) % 17 + 1))
        kq = (vector.create((km * 7 + 5) % 11 + 1, (km * 1 + 5) % 13 + 1, (km * 13 + 14) % 17 + 1))
        kr = (vector.create((km * 4 + 5) % 5 + 1, (km * 5 + 3) % 7 + 1, (km * 5 + 2) % 9 + 1))
        if vector.dot(vector.cross(ko, (vector.cross(kp, kq))), kr) == vector.dot(kp * vector.dot(ko, kq) - kq * vector.dot(ko, kp), kr) then
            jq.OuroborosGen = kl + 1
            OuroborosGen = jq.OuroborosGen
        else
            jq.OuroborosGen = jq + 1
            kl = OuroborosGen.OuroborosGen
        end
        km = (km + 5) % 16
    else
        if (km * 2 + 6) * 13 % 3 == ((km * 2 + 6) * 13 + 7) % 3 then
            jq = kn.OuroborosLib
        else
            kn = jq.OuroborosLib
        end
        km = (km + 15) % 16
    end
until (km * 1 + 8) % 16 == 0
if kn then
    kl = 4
    repeat
        local km_1 = (vector.create((kl * 5 + 7) % 11 + 1, (kl * 8 + 6) % 13 + 1, (kl * 14 + 14) % 17 + 1))
        local qv = vector.floor(km_1) + vector.ceil(km_1 * -1)
        if vector.dot(qv, qv) == 1 then
            jq = type(kn.OuroborosLib.Unload) == "function"
        else
            kn = type(jq.OuroborosLib.Unload) == "function"
        end
        kl = (kl + 4) % 8
    until (kl * 7 + 5) % 8 == 5
end
if kn then
    pcall(function()
        jq.OuroborosLib:Unload()
    end)
end
local km_2 = nil
kl = 0
repeat
    if (km_2 and kl or not kl and kl or (km_2 or not kl) and (km_2 or not kl)) and (kl and km_2 or (km_2 or kl) or (km_2 or kl or (kl or km_2))) or not ((km_2 and kl or not kl and kl or (km_2 or not kl) and (km_2 or not kl)) and (kl and km_2 or (km_2 or kl) or (km_2 or kl or (kl or km_2)))) then
        km_2 = typeof(gethui) == "function"
    else
        km_2 = typeof(gethui) == "function"
    end
    kl = (kl + 0) % 8
until (kl * 7 + 1) % 8 == 1
if km_2 then
    km_2 = gethui()
end
kl = km_2 or nil
local km_3 = kl
if km_3 then
    for i, child in ipairs(km_3:GetChildren()) do
        local le = child
        if le:GetAttribute("OuroborosHubUI") == true then
            pcall(function()
                le:Destroy()
            end)
        end
    end
end
Players, jW, jU, HttpService, jN, kq, jH, jG, Remotes, SpiritDex, ko, kp, PendantConfig, RingConfig, RebirthConfig, ks, ki, kc, jX, jK, jy, kg, j2, jD = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (RingConfig and not ks or (kq or not ks) or (RingConfig and not RingConfig or RingConfig and jN)) and (not RingConfig and not kq and (not RingConfig or not jN) and (not kq or not ks or kq and kq)) and not ((RingConfig and not ks or (kq or not ks) or (RingConfig and not RingConfig or RingConfig and jN)) and (not RingConfig and not kq and (not RingConfig or not jN) and (not kq or not ks or kq and kq))) then
    ko = game:GetService("Players")
else
    Players = game:GetService("Players")
end
kl = game:GetService("ReplicatedStorage")
if (kc or ko or not SpiritDex and not SpiritDex) and (ko and not ko or (not kp or not RebirthConfig)) and ((not kp or ko or (not RebirthConfig or not kc)) and (not SpiritDex and kc or not RebirthConfig and kp)) or not ((kc or ko or not SpiritDex and not SpiritDex) and (ko and not ko or (not kp or not RebirthConfig)) and ((not kp or ko or (not RebirthConfig or not kc)) and (not SpiritDex and kc or not RebirthConfig and kp))) then
    jW = game:GetService("VirtualUser")
    jU = game:GetService("UserInputService")
    kr = game:GetService("RunService")
    HttpService = game:GetService("HttpService")
    jN = Players.LocalPlayer
else
    jN = game:GetService("VirtualUser")
    game:GetService("UserInputService")
    jW = game:GetService("RunService")
    jU = game:GetService("HttpService")
    kr = HttpService.LocalPlayer
end
kq = "Roll a Spirit"
jH = "https://discord.gg/ehKVq7pf7v"
jG = "https://rscripts.net/@Ouroboros"
Remotes = kl:WaitForChild("Remotes")
SpiritDex = require(kl.Shared.SpiritDex)
ko = require(kl.Shared.SpiritTierConfig)
kp = require(kl.Shared.BoxConfig)
PendantConfig = require(kl.Shared.PendantConfig)
RingConfig = require(kl.Shared.RingConfig)
RebirthConfig = require(kl.Shared.RebirthConfig)
ki = fn273
kc = fn264
jX = fn454
jK = fn947
if (jy or kp) and (not jy and not jy) or (not jy or jy) and (kp or jy) or not ((jy or kp) and (not jy and not jy) or (not jy or jy) and (kp or jy)) then
    jy = fn162
    kg = fn968
    j2 = fn593
    jD = fn363
    ks = {}
else
    ks = fn162
    jy = fn968
    jD = fn593
    j2 = fn363
    kg = {}
end
for i, v in ipairs(ko.tiers) do
    table.insert(ks, v.id)
end
kl = {}
local km_5 = ko.rankOf or kl
jY, ko, jV = nil, nil, nil
kn = 3
repeat
    kl = {
        "zkdkipyfgbzs",
        "fnkoopnqcy",
        "cyqcctugt",
        "ehqheqrtp",
        "tli",
        "tepihsbwpq",
        "wwctfavfnmf",
        "ehbbrkziyfe",
        "kdywxzvo"
    }
    if kl[(kn * 72 + 81) % 9 + 1] < kl[(kn * 72 + 81) % 9 + 1] then
        km_5 = jY
        jV = {}
        ko = {}
    else
        jY = km_5
        ko = {}
        jV = {}
    end
    kn = (kn + 1) % 4
until (kn * 3 + 3) % 4 == 3
for i, v in ipairs(kp) do
    table.insert(ko, v.id)
    jV[v.id] = v
end
jO, kl, jI, kt, jE, kp, kn = nil, nil, nil, nil, nil, nil, nil
local km_6 = 8
repeat
    kv = (km_6 * 1 + 1) % 5 + 1
    if kv <= 3 then
        if kv <= 2 then
            if kv <= 1 then
                if (km_6 * 2 + 8) * 7 % 3 == ((km_6 * 2 + 8) * 7 + 6) % 3 then
                    kl = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                else
                    jO = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                end
                km_6 = (km_6 + 16) % 20
            else
                kw = {
                    "wgtb",
                    "ull",
                    "akjqsqgtwx",
                    "fcinrsrmx",
                    "pehcm",
                    "lyiqoyd",
                    "hsbixhlw",
                    "fdrhsaejxfk",
                    "jjidnbja",
                    "nemynxlqme"
                }
                local qU = km_6
                kx = kw[qU % 10 + 1]
                if kx:len() >= kx:gsub("(.)", "%1%1", qU % 3 % 2 + 1):len() then
                    kl = loadstring(game:HttpGet(jI .. "Library.lua"))()
                else
                    jI = loadstring(game:HttpGet(kl .. "Library.lua"))()
                end
                km_6 = (km_6 + 16) % 20
            end
        else
            kw = (vector.create((km_6 * 2 + 1) % 11 + 1, (km_6 * 6 + 10) % 13 + 1, (km_6 * 9 + 14) % 17 + 1))
            local qG = vector.floor(kw) + vector.ceil(kw * -1)
            if vector.dot(qG, qG) == 5 then
                kq = loadstring(game:HttpGet(kp .. "addons/ThemeManager.lua"))()
                kt = loadstring(game:HttpGet(kp .. "addons/SaveManager.lua"))()
                setthreadidentity(8)
                jE = jH:CreateWindow({
                    ShowCustomCursor = false,
                    NotifySide = "Right",
                    CornerRadius = 0,
                    Footer = { kl, { Text = jI, Copyable = true }, "|" },
                    Title = "Ouroboros Hub",
                    Icon = "ghost"
                })
            else
                kt = loadstring(game:HttpGet(kl .. "addons/ThemeManager.lua"))()
                jE = loadstring(game:HttpGet(kl .. "addons/SaveManager.lua"))()
                setthreadidentity(8)
                kp = jI:CreateWindow({
                    Title = "Ouroboros Hub",
                    Footer = { { Text = jH, Copyable = true }, "|", kq },
                    Icon = "ghost",
                    NotifySide = "Right",
                    ShowCustomCursor = false,
                    CornerRadius = 0
                })
            end
            km_6 = (km_6 + 1) % 20
        end
    elseif kv <= 4 then
        kv = (vector.create((km_6 * 3 + 8) % 11 + 1, (km_6 * 11 + 13) % 13 + 1, (km_6 * 10 + 4) % 17 + 1))
        kw = (vector.create((km_6 * 4 + 6) % 11 + 1, (km_6 * 3 + 11) % 13 + 1, (km_6 * 3 + 7) % 17 + 1))
        local qF = vector.dot(kv, kw)
        if qF * qF >= vector.dot(kv, kv) * vector.dot(kw, kw) + 1 then
            jI = kn.MainFrame
        else
            kn = jI.MainFrame
        end
        km_6 = (km_6 + 1) % 20
    else
        if (km_6 * 2 + 9) * 7 % 3 == ((km_6 * 2 + 9) * 7 + 5) % 3 then
            kl = { graveIndex = nil, rank = 0, price = 0 }
        else
            jO = { graveIndex = nil, rank = 0, price = 0 }
        end
        km_6 = (km_6 + 6) % 20
    end
until (km_6 * 3 + 1) % 20 == 5
if kn then
    kl = 1
    repeat
        local km_7 = {
            "wxt",
            "qidsrfy",
            "inriaitmfrz",
            "lwpmzwpooat",
            "pqcsssxbnsa",
            "ghukjjipot",
            "zlbod",
            "fsljzfdqtr",
            "uskbhwvjn"
        }
        local q2 = kl
        kv = km_7[q2 % 9 + 1]
        if kv:len() <= kv:reverse():rep(q2 % 3 + 2):len() then
            kn = jI.MainFrame:FindFirstAncestorWhichIsA("ScreenGui")
        else
            jI = kn.MainFrame:FindFirstAncestorWhichIsA("ScreenGui")
        end
        kl = (kl + 6) % 8
    until (kl * 1 + 4) % 8 == 3
end
local km_8 = kn
if km_8 then
    km_8:SetAttribute("OuroborosHubUI", true)
end
Toggles, Options, kj, j9 = nil, nil, nil, nil
jq.OuroborosLib = jI
kv = {
    Info = kp:AddTab("Info", "info"),
    Main = kp:AddTab("Main", "gamepad-2"),
    Combat = kp:AddTab("Combat", "swords"),
    Farming = kp:AddTab("Farming", "wheat"),
    Inventory = kp:AddTab("Inventory", "package"),
    Player = kp:AddTab("Player", "person-standing"),
    Settings = kp:AddTab("Settings", "settings")
}
Toggles = jI.Toggles
Options = jI.Options
kj = fn395
j9 = fn676
kn = fn365
for k, v in kv do
    if v ~= kv.Info then
        kn(v)
    end
end
ky, kx, jw, kw, kk, km_9, kz, j3, j0, kp, jT, jJ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
kl = 38
repeat
    kn = (kl * 1 + 5) % 9 + 1
    if kn <= 5 then
        if kn <= 3 then
            if kn <= 2 then
                if kn <= 1 then
                    if (not km_9 or km_9) and (not ky and not ky) and ((not km_9 or km_9) and (not km_9 and not ky)) or not ((not km_9 or km_9) and (not ky and not ky) and ((not km_9 or km_9) and (not km_9 and not ky))) then
                        ky = "#7fd47f"
                    else
                        j0 = "#7fd47f"
                    end
                    kl = (kl + 1) % 72
                else
                    if kl * 98732275 + 6 + 1 >= kl * 98732275 + 6 + 1 + 1 then
                        jw = "#6ec1ff"
                    else
                        kx = "#6ec1ff"
                    end
                    kl = (kl + 1) % 72
                end
            else
                kA = (vector.create((kl * 1 + 3) % 11 + 1, (kl * 9 + 1) % 13 + 1, (kl * 11 + 15) % 17 + 1))
                kB = (vector.create((kl * 5 + 9) % 11 + 1, (kl * 8 + 11) % 13 + 1, (kl * 5 + 17) % 17 + 1))
                local qD = vector.cross(kA, kB)
                local qE = vector.dot(kA, kB)
                if vector.dot(qD, qD) + qE * qE == vector.dot(kA, kA) * vector.dot(kB, kB) + 4 then
                    jT = "#e8a34d"
                else
                    jw = "#e8a34d"
                end
                kl = (kl + 10) % 72
            end
        elseif kn <= 4 then
            kA = {
                "oqsclwzu",
                "qspocgg",
                "lhoorkls",
                "trjiml",
                "ywemedfr",
                "nzgucpb",
                "yknd",
                "xnmsqn",
                "jouv",
                "vweeize",
                "rtlwtepwlbn",
                "yveclfmpvc",
                "xyidrf",
                "fhldrylr",
                "piro",
                "zvevgqq"
            }
            if kA[(kl * 55 + 103) % 16 + 1] < kA[(kl * 55 + 103) % 16 + 1] then
                jw = "#8b93a3"
            else
                kw = "#8b93a3"
            end
            kl = (kl + 28) % 72
        else
            if (kl * 3 + 7) * 17 % 4 == ((kl * 3 + 7) * 17 + 2) % 4 then
                ky = "Unknown"
                pcall(fn77)
                kx = jT.Info:AddLeftGroupbox("Account", "circle-user")
                kx:AddLabel(kv("User", kk.Name, km_9), true)
                kx:AddLabel(kv("Status", "Keyless", km_9), true)
                kx:AddLabel(kv("Executor", "Unknown", km_9), true)
                jw = jT.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                jw:AddLabel(kq(jN .. " [" .. tostring(game.PlaceId) .. "]", jJ), true)
                jw:AddLabel(kv("Place ID", tostring(game.PlaceId), jJ), true)
                kz = jw:AddLabel(kv("Session time", "0s", j3), true)
            else
                kk = "Unknown"
                pcall(fn77)
                km_9 = kv.Info:AddLeftGroupbox("Account", "circle-user")
                km_9:AddLabel(jJ("User", jN.Name, ky), true)
                km_9:AddLabel(jJ("Status", "Keyless", ky), true)
                km_9:AddLabel(jJ("Executor", kk, ky), true)
                kz = kv.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                kz:AddLabel(jT(kq .. " [" .. tostring(game.PlaceId) .. "]", kx), true)
                kz:AddLabel(jJ("Place ID", tostring(game.PlaceId), kx), true)
                j3 = kz:AddLabel(jJ("Session time", "0s", jw), true)
            end
            kl = (kl + 37) % 72
        end
    elseif kn <= 7 then
        if kn <= 6 then
            if kk and not kk and (jJ or jJ) or (not kk and not jJ or kk and kk) or not (kk and not kk and (jJ or jJ) or (not kk and not jJ or kk and kk)) then
                j0 = tostring(game.JobId)
            else
                j3 = tostring(game.JobId)
            end
            kl = (kl + 46) % 72
        else
            kA = {
                "zwjjhrx",
                "uew",
                "zrxiilncuu",
                "zfh",
                "ibuz",
                "yatn",
                "aeqvjcp",
                "gdpwcgbnbyl",
                "zvpw",
                "otigrqsihi"
            }
            if kA[(kl * 53 + 93) % 10 + 1] <= kA[(kl * 53 + 93) % 10 + 1] then
                kp = #j0 > 18
            else
                j0 = #kp > 18
            end
            kl = (kl + 46) % 72
        end
    elseif kn <= 8 then
        local q3 = bit32.rrotate(bit32.bxor(bit32.lrotate(kl, 20), string.byte(tostring(kw))), 31)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(q3, 1903191041), 1507190304), (bit32.bxor(bit32.band(q3, 2391776254), 3399915641))), 1507190304), 3399915641) ~= q3 then
            km_9 = fn435
        else
            jT = fn435
        end
        kl = (kl + 28) % 72
    else
        kn = {
            "wnu",
            "fkwdffw",
            "xowqc",
            "xrzkffobdry",
            "mwmjihq",
            "mabuupsjmbb",
            "lgl",
            "uhwwtkx",
            "stlyto",
            "pgonulivxt"
        }
        local q1 = kl
        kA = kn[q1 % 10 + 1]
        if kA:len() >= kA:reverse():rep(q1 % 3 + 2):len() then
            jw = fn41
        else
            jJ = fn41
        end
        kl = (kl + 28) % 72
    end
until (kl * 47 + 48) % 72 == 25
if kp then
    kl = 0
    repeat
        if kl * 28102447 + 12 + 2 >= kl * 28102447 + 12 + 2 + 1 then
            j0 = string.sub(kp, 1, 18) .. "..."
        else
            kp = string.sub(j0, 1, 18) .. "..."
        end
        kl = (kl + 1) % 8
    until (kl * 7 + 4) % 8 == 3
end
kl = kp
local lh = if kl then 1 else 0
local lf = 3630 * lh + 3521 * (1 - lh)
local lg = 1842 * lh + 486 * (1 - lh)
if not ((lf * 3905 + lg * 2538 + lf * lg) % 16777213 == 8759393) then
    kl = j0
end
jR, ke, kb, j8, j7, j4, j1, j_, EquipBestGroup, CurrentCamera, kd, ka, connection, connection2, ju, kf, jM, jZ, j6, jQ, jF, j5, jL, kD = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local kQ = kl
kz:AddLabel(jJ("Server", kQ, kw), true)
kz:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
jR = os.clock()
task.spawn(worker)
kA = kv.Info:AddRightGroupbox("Scripts", "package")
kA:AddLabel(jT("Included in this hub", kw), true)
kA:AddLabel(jT(kq, kx), true)
kn = kv.Info:AddRightGroupbox("Features", "list")
kn:AddLabel(jT("Auto Roll", kx), true)
kn:AddLabel(jT("Auto Forge", jw), true)
kn:AddLabel(jT("Auto Chests", ky), true)
kn:AddLabel(jT("Auto Battle", kx), true)
kn:AddLabel(jT("Auto Rebirth", jw), true)
local SocialsGroup = kv.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = j9 })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = kv.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = j9 })
ke = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
kb = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
j8 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
j7 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
j4 = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
j1 = "https://paypal.me/TheTruckerGOD"
j_ = "https://venmo.com/u/miserablemusic"
local kR = "#345d9d"
local kO = "#f7931a"
local kN = "#627eea"
local kM = "#26a17b"
local kK = "#14f195"
local kJ = "#0070ba"
local kI = "#008cff"
local DonationsGroup = kv.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(jT("All donations are optional but appreciated.", jw), true)
DonationsGroup:AddLabel(jT("If you donate you get a special role, just PING after you donate.", ky), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(jT("LTC / Litecoin", kR), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(jT("BTC / Bitcoin", kO), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(jT("ETH / Ethereum", kN), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(jT("USDT", kM), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(jT("Solana", kK), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(jT("PayPal", kJ), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(jT("Venmo", kI), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(jT("Don't have any of the listed currencies but still wanna donate?", kw), true)
DonationsGroup:AddLabel(jT("DM me and we'll work something out.", kx), true)
local FaqGroup = kv.Info:AddRightGroupbox("FAQ", "circle-help")
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
local Rebirth_PrestigeGroup = kv.Main:AddRightGroupbox("Rebirth / Prestige", "refresh-cw")
Rebirth_PrestigeGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
Rebirth_PrestigeGroup:AddSlider("RebirthInterval", { Text = "Rebirth Interval", Default = 1, Min = 0.1, Max = 10, Rounding = 2, Suffix = "s" })
local SpiritsGroup = kv.Farming:AddRightGroupbox("Spirits", "ghost")
SpiritsGroup:AddToggle("AutoRollSpirits", { Text = "Auto Roll Spirits", Default = false })
SpiritsGroup:AddSlider("RollInterval", { Text = "Roll Interval", Default = 1, Min = 0.1, Max = 10, Rounding = 2, Suffix = "s" })
SpiritsGroup:AddToggle("AutoBuyRarity", { Text = "Auto Buy Spirit Rarity", Default = false })
SpiritsGroup:AddDropdown("BuyRarityTier", { Values = ks, Default = "ash", Text = "Minimum Rarity" })
SpiritsGroup:AddSlider("BuyRarityInterval", { Text = "Buy Interval", Default = 1, Min = 0.1, Max = 10, Rounding = 2, Suffix = "s" })
local ForgeEquipmentGroup = kv.Farming:AddRightGroupbox("Forge Equipment", "hammer")
ForgeEquipmentGroup:AddToggle("AutoForgePendant", { Text = "Auto Forge Pendant", Default = false })
ForgeEquipmentGroup:AddToggle("AutoForgeRing", { Text = "Auto Forge Ring", Default = false })
ForgeEquipmentGroup:AddSlider("ForgeInterval", { Text = "Forge Interval", Default = 1, Min = 0.1, Max = 10, Rounding = 2, Suffix = "s" })
local ChestsGroup = kv.Farming:AddLeftGroupbox("Chests", "box")
ChestsGroup:AddToggle("AutoBuyChests", { Text = "Auto Buy Chests", Default = false })
ChestsGroup:AddDropdown("BuyChests", {
    Values = ko,
    Default = nil,
    Multi = true,
    Text = "Chests to Buy",
    Searchable = true,
    Expandable = true,
    FormatDisplayValue = fn135
})
ChestsGroup:AddSlider("BuyChestInterval", { Text = "Buy Chest Interval", Default = 1, Min = 0.1, Max = 10, Rounding = 2, Suffix = "s" })
ChestsGroup:AddToggle("AutoUseChests", { Text = "Auto Use Chests", Default = false })
ChestsGroup:AddDropdown("UseChests", {
    Values = ko,
    Default = nil,
    Multi = true,
    Text = "Chests to Open",
    Searchable = true,
    Expandable = true,
    FormatDisplayValue = fn517
})
ChestsGroup:AddSlider("UseChestInterval", { Text = "Use Chest Interval", Default = 1, Min = 0.1, Max = 10, Rounding = 2, Suffix = "s" })
local IncomeGroup = kv.Farming:AddLeftGroupbox("Income", "coins")
if (IncomeGroup and 66 or IncomeGroup and IncomeGroup or "0xaE95A405D007a6F858E5d35714111B075fEFb40a" or (IncomeGroup or false or false)) and ((IncomeGroup and 66 or not IncomeGroup or (not IncomeGroup or IncomeGroup or false)) and (false or (not IncomeGroup and false or (false or not IncomeGroup)))) or not ((IncomeGroup and 66 or IncomeGroup and IncomeGroup or "0xaE95A405D007a6F858E5d35714111B075fEFb40a" or (IncomeGroup or false or false)) and ((IncomeGroup and 66 or not IncomeGroup or (not IncomeGroup or IncomeGroup or false)) and (false or (not IncomeGroup and false or (false or not IncomeGroup))))) then
    IncomeGroup:AddToggle("AutoCollectIncome", { Text = "Auto Collect Income", Default = false })
    IncomeGroup:AddSlider("CollectInterval", { Text = "Collect Interval", Default = 3, Min = 0.1, Max = 10, Rounding = 2, Suffix = "s" })
    EquipBestGroup = kv.Inventory:AddRightGroupbox("Equip Best", "wand")
else
    EquipBestGroup:AddToggle("AutoCollectIncome", { Text = "Auto Collect Income", Default = false })
    EquipBestGroup:AddSlider("CollectInterval", { Text = "Collect Interval", Min = 0.1, Rounding = 2, Max = 10, Suffix = "s", Default = 3 })
    kv = IncomeGroup.Inventory:AddRightGroupbox("Equip Best", "wand")
end
EquipBestGroup:AddToggle("AutoEquipSpirits", { Text = "Auto Equip Best Spirits", Default = false })
EquipBestGroup:AddToggle("AutoEquipCards", { Text = "Auto Equip Best Cards", Default = false })
EquipBestGroup:AddSlider("EquipInterval", { Text = "Equip Interval", Default = 2, Min = 0.1, Max = 10, Rounding = 2, Suffix = "s" })
local CardsGroup = kv.Inventory:AddLeftGroupbox("Cards", "layers")
CardsGroup:AddToggle("AutoLevelCards", { Text = "Auto Level Up Cards", Default = false })
CardsGroup:AddSlider("LevelCardsInterval", { Text = "Level Up Interval", Default = 2, Min = 0.1, Max = 10, Rounding = 2, Suffix = "s" })
local TowerGroup = kv.Combat:AddLeftGroupbox("Tower", "tower-control")
TowerGroup:AddToggle("AutoBattleTower", { Text = "Auto Battle Tower", Default = false })
TowerGroup:AddSlider("TowerInterval", { Text = "Battle Interval", Default = 5, Min = 0.1, Max = 10, Rounding = 2, Suffix = "s" })
kB = kv.Player:AddLeftGroupbox("Movement", "footprints")
kB:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
kB:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
kB:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
kB:AddToggle("NoClip", { Text = "NoClip", Default = false })
kB:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
kp = kv.Player:AddRightGroupbox("Fly", "feather")
kp:AddToggle("Fly", { Text = "Fly", Default = false })
kp:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
ju = fn760
kf = fn669
kr.Stepped:Connect(onStepped)
jU.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
kr.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn835)
Toggles.WalkSpeedEnabled:OnChanged(fn348)
jM = function(dp)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not dp)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not dp
        end
    end)
    if not dp then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(jN, "GameplayPaused", false)
        else
            jN.GameplayPaused = false
        end
    end)
end
Toggles.AntiGameplayPause:OnChanged(fn687)
task.spawn(antiGameplayPauseLoop)
local MenuGroup = kv.Settings:AddLeftGroupbox("Menu", "wrench")
kd = tick()
ka = tick()
pcall(function()
    for i, v in ipairs(getconnections(jN.Idled)) do
        local ns = v
        pcall(function()
            ns:Disable()
        end)
    end
end)
jZ = fn961
connection = jU.InputBegan:Connect(onInputBegan)
connection2 = jU.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(antiAfkLoop)
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
MenuGroup:AddButton("Unload", onUnload)
jI.ToggleKeybind = Options.MenuKeybind
kt:SetLibrary(jI)
kt:SetFolder("OuroborosHub")
kt:SaveDefault("Monochrome")
kt:ApplyToTab(kv.Settings)
kt:LoadDefault()
jE:SetLibrary(jI)
jE:IgnoreThemeSettings()
jE:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
jE:SetFolder("OuroborosHub/RollASpirit")
local kW = jE:BuildConfigSection(kv.Settings)
j6 = fn278
jQ = fn686
jF = fn752
j5 = function(et)
    local of
    of = nil
    local og = type(et) ~= "table" or type(et.idx) ~= "string" or type(et.type) ~= "string" or jE.Ignore[et.idx]
    if og then
        return false
    end
    of = j6(et.type, et.idx)
    if not of then
        return false
    end
    local og_1 = pcall(function()
        if et.type == "Input" then
            if type(et.text) ~= "string" then
                return
            end
            of:SetValue(et.text)
        elseif et.type == "ColorPicker" then
            of:SetValueRGB(Color3.fromHex(et.value), et.transparency)
        elseif et.type == "KeyPicker" then
            of:SetValue({ et.key, et.mode, et.modifiers })
            if et.mode == "Toggle" and et.toggled ~= nil then
                of.Toggled = et.toggled
                of:Update()
            end
        else
            of:SetValue(et.value)
        end
    end)
    return og_1
end
kW:AddDivider()
kW:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
kW:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
kW:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
jE:LoadAutoloadConfig()
jI:OnUnload(fn117)
jI:Notify({
    Title = "Ouroboros Hub loaded",
    Description = "Press RightShift to open or close the window.",
    Time = 5
})
jL = fn747
if (not kn and not kn or kR and EquipBestGroup or (EquipBestGroup or not EquipBestGroup or "#345d9d")) and ((false or (kR or kn)) and (kn or false or false)) and ((kB and false or (kB or kR) or false and (kR or not EquipBestGroup)) and ((j7 or kB or kn and kR) and ((kB or EquipBestGroup) and (j7 or not EquipBestGroup)))) and not ((not kn and not kn or kR and EquipBestGroup or (EquipBestGroup or not EquipBestGroup or "#345d9d")) and ((false or (kR or kn)) and (kn or false or false)) and ((kB and false or (kB or kR) or false and (kR or not EquipBestGroup)) and ((j7 or kB or kn and kR) and ((kB or EquipBestGroup) and (j7 or not EquipBestGroup))))) then
else
    kD = function(e5, e6, e7)
        task.spawn(function()
            while jL() do
                local oH = Toggles[e5]
                if oH and oH.Value then
                    pcall(e7)
                end
                local oH_1 = Options[e6]
                local oH_2 = oH_1 and oH_1.Value or 1
                local wait = task.wait
                local oK = tonumber(oH_2) or 1
                wait(math.max(oK, 0.1))
            end
        end)
    end
end
kD("AutoRebirth", "RebirthInterval", fn243)
kD("AutoRollSpirits", "RollInterval", fn539)
kD("AutoBuyRarity", "BuyRarityInterval", fn259)
kD("AutoForgePendant", "ForgeInterval", fn231)
kD("AutoForgeRing", "ForgeInterval", fn881)
kD("AutoBuyChests", "BuyChestInterval", fn427)
kD("AutoUseChests", "UseChestInterval", fn870)
kD("AutoCollectIncome", "CollectInterval", fn88)
kD("AutoEquipSpirits", "EquipInterval", fn740)
kD("AutoEquipCards", "EquipInterval", fn16)
kD("AutoLevelCards", "LevelCardsInterval", fn921)
kD("AutoBattleTower", "TowerInterval", fn504)
local k_ = ki("SpiritRolled")
local kZ = k_ and k_:IsA("RemoteEvent")
if kZ then
    k_.OnClientEvent:Connect(function(gH, gI)
        local p4 = SpiritDex.byId[gI]
        if not p4 then
            return
        end
        local p5 = jY[p4.tier] or 1
        jO = { graveIndex = gH, spiritId = gI, rank = p5, price = SpiritDex.claimPrice(p4) }
    end)
end
