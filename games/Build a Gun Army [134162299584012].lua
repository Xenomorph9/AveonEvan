local hW
local Toggles
local ii
local il
local hZ
local iI
local h1
local ip
local h4
local h7
local iv
local hM
local ia
local hP
local connection
local id
local hS
local iB
local iE
local hY
local iH
local ik
local h0
local io
local ir
local h3
local hL
local iu
local h6
local hO
local h9
local ix
local hR
local iA
local hU
local iD
local ig
local hX
local ij
local iG
local h_
local im
local iJ
local h2
local iq
local h5
local it
local connection2
local iw
local hN
local ib
local hQ
local iz
local hT
local WeaponConfigModule
local ie
local function onCopyEthereumAddress()
    iv(hP, "Copied Ethereum address")
end
local function fn41(M, N)
    return string.format('<font color="%s">%s</font>', N, M)
end
local function fn52()
    local CurrentCamera = h7.CurrentCamera
    if not CurrentCamera then
        return
    end
    iq:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    iq:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    ir = tick()
end
local function antiGameplayPauseLoop()
    while not hW.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            io(true)
        end
    end
end
local function onJumpRequest()
    if hW.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local k5_1 = h1()
        if k5_1 then
            k5_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn135(F, G)
    if setclipboard then
        setclipboard(F)
    elseif toclipboard then
        toclipboard(F)
    end
    hW:Notify(G)
end
local function fn144()
    local Character = h2.Character
    local jF = Character and Character:FindFirstChildOfClass("Humanoid")
    return jF
end
local function onCopyVenmoLink()
    iv(ix, "Copied Venmo link")
end
local function fn150()
    if not Toggles.Fly.Value then
        local kU = h1()
        if kU then
            kU.PlatformStand = false
        end
    end
end
local function fn159(eh, ei)
    local Type = ei.Type
    if Type == "Toggle" then
        return { idx = eh, type = "Toggle", value = ei.Value == true }
    elseif Type == "Slider" then
        return { idx = eh, type = "Slider", value = tostring(ei.Value) }
    elseif Type == "Dropdown" then
        return { idx = eh, type = "Dropdown", multi = ei.Multi == true, value = ei.Value }
    elseif Type == "Input" then
        local lC = ei.Value
        local lG = if lC then 1 else 0
        local lE = 631 * lG + 1892 * (1 - lG)
        local lF = 271 * lG + 294 * (1 - lG)
        if not ((lE * 601 + lF * 2232 + lE * lF) % 16777213 == 1155104) then
            lC = ""
        end
        return { idx = eh, type = "Input", text = tostring(lC) }
    elseif Type == "ColorPicker" then
        return { idx = eh, type = "ColorPicker", value = ei.Value:ToHex(), transparency = ei.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = eh,
            type = "KeyPicker",
            mode = ei.Mode,
            key = ei.Value,
            modifiers = ei.Modifiers,
            toggled = ei.Toggled
        }
    else
        return nil
    end
end
local function fn170(aU)
    local jT = aU and aU:FindFirstChild("RolledWeapon")
    if not jT then
        return nil
    end
    local attr = jT:GetAttribute("unitName")
    local jV = tonumber(jT:GetAttribute("unitTier"))
    local jW = tonumber(jT:GetAttribute("Cost"))
    local jU_1 = not jV
    local jX = type(attr) ~= "string" or jU_1
    if jX or not jW then
        return nil
    end
    local jU_3 = WeaponConfigModule.WeaponStats[attr]
    local jX_2 = jU_3 and jU_3.Rarity or 1
    local jU_5 = iI.getRarityName(jX_2)
    return { unitName = attr, unitTier = jV, cost = jW, rarityName = jU_5, tierName = h4[jV] or "Normal" }
end
local function onCopyJoinScript_JobID()
    local kK = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, iz)
    if setclipboard then
        setclipboard(kK)
    elseif toclipboard then
        toclipboard(kK)
    end
    hW:Notify("Copied join script to clipboard")
end
local function fn222()
    local lI = {}
    for i, v in ipairs({ Toggles, iA }) do
        for k, v in pairs(v) do
            local lJ = type(v) == "table" and type(v.Type) == "string" and not hL.Ignore[k]
            if lJ then
                local lJ_1 = ii(k, v)
                if lJ_1 then
                    lI[#lI + 1] = lJ_1
                end
            end
        end
    end
    table.sort(lI, function(ev, ew)
        if ev.type ~= ew.type then
            return ev.type < ew.type
        end
        return ev.idx < ew.idx
    end)
    return { objects = lI }
end
local function fn225()
    iv(hS, "Copied Discord invite to clipboard")
end
local function fn230()
    return iI.findPlayersPlot(h2)
end
local function fn250()
    local Character = h2.Character
    local jI = Character and Character:FindFirstChild("HumanoidRootPart")
    return jI
end
local function fn258(aI)
    local Character = h2.Character
    if not Character then
        return false
    end
    Character:PivotTo(aI)
    return true
end
local function worker2()
    while not hW.Unloaded do
        if hT("AutoCollectCoin") then
            pcall(h3)
        end
        if hT("AutoPlaceWeapon") then
            pcall(h5)
        end
        local mo = hT("AutoOpenMysteryBox") or hT("AutoBuyMysteryBox")
        if mo then
            pcall(hU)
        end
        task.wait(0.2)
    end
end
local function fn280(as)
    local jA = iA[as]
    return jA and jA.Value or {}
end
local function fn295(aO, aP)
    local jN = iH()
    if not (jN and aO) then
        return false
    end
    if (jN.Position - aO.Position).Magnitude > aP then
        h9(CFrame.new(aO.Position + Vector3.new(0, 3, 0)))
        task.wait(0.05)
    end
    return true
end
local function worker3()
    while not hW.Unloaded do
        task.wait(2)
        if hT("AntiAfk") then
            local mr = tick() - it
            local ms = tick() - ir
            if mr >= 300 and ms >= 60 then
                pcall(h0)
            else
                if mr < 300 and ms >= 300 then
                    pcall(h0)
                end
            end
        end
    end
end
local function fn309(am)
    if hW.Unloaded then
        return false
    end
    local ju = Toggles[am]
    return ju and ju.Value == true
end
local function onRenderStepped(dz)
    if hW.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local k7_1 = h1()
        if k7_1 then
            k7_1.WalkSpeed = iA.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local k7_3 = iH()
        local k8 = h1()
        hR = h7.CurrentCamera or hR
        if k7_3 and k8 and hR then
            k8.PlatformStand = true
            local k8_1 = Vector3.zero
            if iu:IsKeyDown(Enum.KeyCode.W) then
                k8_1 = k8_1 + hR.CFrame.LookVector
            end
            local lh = if iu:IsKeyDown(Enum.KeyCode.S) then 1 else 0
            if lh == 1 then
                k8_1 = k8_1 - hR.CFrame.LookVector
            end
            if iu:IsKeyDown(Enum.KeyCode.A) then
                k8_1 = k8_1 - hR.CFrame.RightVector
            end
            if iu:IsKeyDown(Enum.KeyCode.D) then
                k8_1 = k8_1 + hR.CFrame.RightVector
            end
            if iu:IsKeyDown(Enum.KeyCode.Space) then
                k8_1 = k8_1 + Vector3.new(0, 1, 0)
            end
            if iu:IsKeyDown(Enum.KeyCode.LeftControl) then
                k8_1 = k8_1 - Vector3.new(0, 1, 0)
            end
            k7_3.Velocity = Vector3.zero
            if k8_1.Magnitude > 0 then
                k7_3.CFrame = k7_3.CFrame + k8_1.Unit * iA.FlySpeed.Value * dz
            end
        end
    end
end
local function fn319()
    connection:Disconnect()
    connection2:Disconnect()
    io(false)
    local mv = h1()
    if mv then
        mv.PlatformStand = false
        mv.WalkSpeed = 16
    end
end
local function fn321(ca)
    local DiscordGroup = ca:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = ie })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = ie })
end
local function fn334()
    if not Toggles.WalkSpeedEnabled.Value then
        local kW = h1()
        if kW then
            kW.WalkSpeed = 16
        end
    end
end
local function fn351()
    local kv = il()
    local kw = kv and kv:FindFirstChild("WeaponBox")
    if not kw then
        return
    end
    local ProxPromptPart = kw:FindFirstChild("ProxPromptPart")
    local ky = ProxPromptPart and ProxPromptPart:FindFirstChild("WeaponBoxPrompt")
    local Zone = kw:FindFirstChild("Zone")
    local kw_2 = Zone or ProxPromptPart
    local ky_2 = id(kw)
    if ky_2 then
        local kx_1 = ia(kv, ky_2.unitName)
        local kv_1 = hT("SkipOwnedMysteryBox") and kx_1
        if kv_1 then
            iE(kw_2, 8)
            pcall(function()
                ij:FireServer()
            end)
            return
        elseif hT("AutoBuyMysteryBox") then
            if not iw(ky_2) then
                iE(kw_2, 8)
                pcall(function()
                    ij:FireServer()
                end)
                return
            end
            local kv_2 = tonumber(h2:GetAttribute("currency")) or 0
            if kv_2 >= ky_2.cost then
                iE(kw_2, 8)
                pcall(function()
                    im:FireServer()
                end)
            end
            return
        else
            return
        end
    end
    local kE = if not hT("AutoOpenMysteryBox") then 1 else 0
    if kE == 1 then
        return
    end
    if type(h2:GetAttribute("PendingWeapon")) == "string" then
        return
    end
    if not ky or not ky.Enabled or ky.ActionText ~= "Open" then
        return
    end
    iE(kw_2, 8)
    hO(ky)
end
local function fn411(P, Q, R)
    return string.format("<b>%s</b> %s %s", P, hZ("-", "#5a6070"), hZ(Q, R))
end
local function onStepped()
    if hW.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = h2.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local kY_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if kY_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function worker()
    local kN_1
    while true do
        task.wait(1)
        if hW.Unloaded then
            break
        end
        local kM = math.floor(os.clock() - h6)
        if kM < 60 then
            kN_1 = kM .. "s"
        elseif kM < 3600 then
            kN_1 = string.format("%dm %ds", kM // 60, kM % 60)
        else
            kN_1 = string.format("%dh %dm", kM // 3600, kM % 3600 // 60)
        end
        iD:SetText(iJ("Session time", kN_1, ib))
    end
end
local function onExportConfigToClipboard()
    local l8_1
    local l7_1
    l7_1, l8_1 = pcall(ik.JSONEncode, ik, hY())
    if not l7_1 then
        hW:Notify("Failed to encode the config")
        return
    end
    local l7_2 = setclipboard or toclipboard
    local l7_3 = type(l7_2) ~= "function" or not pcall(l7_2, l8_1)
    if l7_3 then
        hW:Notify("Your executor does not support copying to the clipboard")
        return
    end
    hW:Notify("Config copied to clipboard", 6)
end
local function fn453()
    local kG_1
    local kF_1
    if identifyexecutor then
        kG_1, kF_1 = identifyexecutor()
        local kH = kG_1 ~= ""
        local kI = type(kG_1) == "string" and kH
        if kI then
            local kH_1 = type(kF_1) == "string" and kF_1 ~= "" and kG_1 .. " " .. kF_1
            ig = kH_1 or kG_1
        end
    end
end
local function onInputBegan()
    it = tick()
end
local function fn503()
    local attr = h2:GetAttribute("PendingWeapon")
    local kn = attr == ""
    local ko = type(attr) ~= "string" or kn
    if ko then
        return
    end
    local kn_1 = il()
    local ko_1 = kn_1 and kn_1:FindFirstChild("Units")
    local kn_2 = ko_1
    if ko_1 then
        ko_1 = kn_2:FindFirstChild(attr)
    end
    local km_1 = ko_1
    if not km_1 then
        return
    end
    local WeaponBasePart = km_1:FindFirstChild("WeaponBasePart")
    local ko_2 = WeaponBasePart and WeaponBasePart:FindFirstChild("WeaponProxPrompt")
    if not ko_2 then
        return
    end
    local ko_3 = km_1:FindFirstChild("MainPart") or WeaponBasePart
    iE(ko_3, 12)
    hO(ko_2)
end
local function fn507(be)
    local j8 = ip("MysteryBoxRarities")
    local j9 = ip("MysteryBoxTiers")
    return j8[be.rarityName] == true and j9[be.tierName] == true
end
local function onRscripts()
    if setclipboard then
        setclipboard(hN)
    elseif toclipboard then
        toclipboard(hN)
    end
    hW:Notify("Copied Rscripts profile to clipboard")
end
local function onImportConfigFromClipboardTex()
    local md_1
    local mb = iA.SaveManager_ImportSource.Value or ""
    local mb_1
    local mc = tostring(mb):match("^%s*(.-)%s*$")
    if mc == "" then
        hW:Notify("Paste an exported config into the box first")
        return
    end
    mb_1, md_1 = pcall(ik.JSONDecode, ik, mc)
    local mc_1 = not mb_1 or type(md_1) ~= "table"
    local mh = if mc_1 then 1 else 0
    local mf = 1413 * mh + 1730 * (1 - mh)
    local mg = 1505 * mh + 2610 * (1 - mh)
    if not ((mf * 3661 + mg * 2054 + mf * mg) % 16777213 == 10390828) then
        mc_1 = type(md_1.objects) ~= "table"
    end
    if mc_1 then
        hW:Notify("That is not a valid exported config")
        return
    end
    local mb_2 = 0
    for i, v in ipairs(md_1.objects) do
        if hQ(v) then
            mb_2 += 1
        end
    end
    if mb_2 == 0 then
        hW:Notify("No settings in that config matched this script")
        return
    end
    iA.SaveManager_ImportSource:SetValue("")
    local md_2 = mb_2 == 1 and "" or "s"
    hW:Notify(("Imported %d setting%s"):format(mb_2, md_2), 6)
end
local function fn606(aM)
    if not aM then
        return
    end
    if fireproximityprompt then
        pcall(fireproximityprompt, aM)
    end
end
local function fn609(a6, a7)
    local j2 = a6 and a6:FindFirstChild("Units")
    local j3 = j2
    if j2 then
        j2 = j3:FindFirstChild(a7)
    end
    local j3_1 = j2
    local j2_1 = j3_1 ~= nil and j3_1:GetAttribute("Placed") == true
    return j2_1
end
local function onCopyUSDTAddress()
    iv(hM, "Copied USDT address")
end
local function onCopyLitecoinAddress()
    iv(h_, "Copied Litecoin address")
end
local function fn661()
    io(Toggles.AntiGameplayPause.Value)
end
local function fn666(d9, ea)
    local lv_1 = (d9 == "Toggle" and Toggles or iA)[ea]
    local lu_2 = type(lv_1) == "table" and lv_1.Type == d9
    return lu_2 and lv_1 or nil
end
local function onCopySolanaAddress()
    iv(iG, "Copied Solana address")
end
local function onInputChanged(d1)
    local UserInputType = d1.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        it = tick()
    end
end
local function onUnload()
    hW:Unload()
end
local function onCopyBitcoinAddress()
    iv(hX, "Copied Bitcoin address")
end
local function onCopyPayPalLink()
    iv(iB, "Copied PayPal link")
end
hL = nil
hM = nil
hN = nil
hO = nil
hP = nil
hQ = nil
hR = nil
hS = nil
hT = nil
hU = nil
hW = nil
hX = nil
hY = nil
hZ = nil
h_ = nil
h0 = nil
h1 = nil
h2 = nil
h3 = nil
h4 = nil
h5 = nil
h6 = nil
h7 = nil
connection2 = nil
h9 = nil
ia = nil
ib = nil
id = nil
ie = nil
ig = nil
ii = nil
ij = nil
ik = nil
il = nil
im = nil
io = nil
ip = nil
iq = nil
ir = nil
it = nil
iu = nil
iv = nil
iw = nil
ix = nil
connection = nil
iz = nil
local hV, ic, ih, is
iA = nil
iB = nil
WeaponConfigModule = nil
iD = nil
iE = nil
Toggles = nil
iG = nil
iH = nil
iI = nil
iJ = nil
local iK, iL, iN, iP, iQ, iR, iS, iT, iU, iV, iW, iX, iY, iZ, i_, i0, i1, i2, i3, i4, RunService, i6, i9, ja, FarmGroup
local iM_1, iM_2
iK, iQ, RunService, iu, iq, ik, ih, ic, h7, h2, iU, hS, hN, iI, WeaponConfigModule, iP, is, im, ij, iN, iZ, h4, iM_1, hW, iT, hL, Toggles, iA, i2, i0, ib, iX, h_, hX, hP, hM, iG, iB, ix, i4, i3, i1, i_, iY, iW, iV, iL, iS, iv, ie, hZ, iJ, hT, ip, h1, iH, il, h9, hO, iE, id, ia, iw, h3, h5, hU, iR = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local iO = 209
repeat
    i6 = (iO * 1 + 16) % 31 + 1
    if i6 <= 16 then
        if i6 <= 8 then
            if i6 <= 4 then
                if i6 <= 2 then
                    if i6 <= 1 then
                        local i7_1 = { "owhdcgadqa", "yraia", "vdypsy", "ywkiaxqy", "stg", "srfoaauwdt", "azbvje" }
                        local m3 = iO
                        local i8_1 = i7_1[m3 % 7 + 1]
                        if i8_1:len() >= i8_1:gsub("(.)", "%1%1", m3 % 3 % 2 + 1):len() then
                            ip = "#0070ba"
                            iW = "#008cff"
                            h1 = fn309
                            hT = fn280
                            iV = fn144
                        else
                            iW = "#0070ba"
                            iV = "#008cff"
                            hT = fn309
                            ip = fn280
                            h1 = fn144
                        end
                        iO = (iO + 94) % 248
                    else
                        local i7_2 = (vector.create((iO * 5 + 3) % 11 + 1, (iO * 4 + 3) % 13 + 1, (iO * 9 + 13) % 17 + 1))
                        local i8_2 = (vector.create((iO * 3 + 3) % 11 + 1, (iO * 3 + 12) % 13 + 1, (iO * 7 + 6) % 17 + 1))
                        i9 = (vector.create((iO * 5 + 3) % 5 + 1, (iO * 3 + 1) % 7 + 1, (iO * 4 + 7) % 9 + 1))
                        if math.abs((vector.angle(i7_2, i8_2, i9))) - math.abs((vector.angle(i8_2, i7_2, i9))) == 0 then
                            iH = fn250
                        else
                            iA = fn250
                        end
                        iO = (iO + 125) % 248
                    end
                elseif i6 <= 3 then
                    local ng = bit32.rrotate(bit32.bxor(bit32.lrotate(iO, 13), string.byte(tostring(iW))), 27)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(ng, 1533117179), 0), 1533117179) ~= bit32.lrotate(ng, 0) then
                        hO = fn230
                        il = fn258
                        iE = fn606
                        h9 = fn295
                    else
                        il = fn230
                        h9 = fn258
                        hO = fn606
                        iE = fn295
                    end
                    iO = (iO + 1) % 248
                else
                    local i7_3 = (vector.create((iO * 5 + 5) % 11 + 1, (iO * 10 + 12) % 13 + 1, (iO * 4 + 12) % 17 + 1))
                    local i8_3 = (vector.create((iO * 1 + 7) % 11 + 1, (iO * 9 + 5) % 13 + 1, (iO * 2 + 7) % 17 + 1))
                    local m0 = vector.dot(i7_3, i8_3)
                    if m0 * m0 <= vector.dot(i7_3, i7_3) * vector.dot(i8_3, i8_3) then
                        id = fn170
                    else
                        iM_1 = fn170
                    end
                    iO = (iO + 218) % 248
                end
            elseif i6 <= 6 then
                if i6 <= 5 then
                    if (iO * 1 + 9) * 13 % 4 == ((iO * 1 + 9) * 13 + 4) % 4 then
                        ia = fn609
                        iw = fn507
                        h3 = function()
                            local kd = il()
                            if not kd then
                                return
                            end
                            local LootSpawned = kd:FindFirstChild("LootSpawned")
                            if not LootSpawned then
                                return
                            end
                            local kc = {}
                            for i, child in LootSpawned:GetChildren() do
                                kc[#kc + 1] = child.Name
                                if #kc >= 40 then
                                    pcall(function()
                                        is:FireServer(kc)
                                    end)
                                    kc = {}
                                end
                            end
                            if #kc > 0 then
                                pcall(function()
                                    is:FireServer(kc)
                                end)
                            end
                        end
                        h5 = fn503
                        hU = fn351
                    else
                        hU = fn609
                        ia = fn507
                        h5 = function()
                            local kd = il()
                            if not kd then
                                return
                            end
                            local LootSpawned = kd:FindFirstChild("LootSpawned")
                            if not LootSpawned then
                                return
                            end
                            local kc = {}
                            for i, child in LootSpawned:GetChildren() do
                                kc[#kc + 1] = child.Name
                                if #kc >= 40 then
                                    pcall(function()
                                        is:FireServer(kc)
                                    end)
                                    kc = {}
                                end
                            end
                            if #kc > 0 then
                                pcall(function()
                                    is:FireServer(kc)
                                end)
                            end
                        end
                        h3 = fn503
                        iw = fn351
                    end
                    iO = (iO + 94) % 248
                else
                    local nc = bit32.rrotate(bit32.bxor(bit32.lrotate(iO, 27), string.byte(tostring(RunService))), 28)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(nc, 1140943942), 2), 268808473) ~= bit32.lrotate(nc, 2) then
                        iU = hS:CreateWindow({
                            Footer = { { Text = iL, Copyable = true }, "|", hW },
                            NotifySide = "Right",
                            ShowCustomCursor = false,
                            CornerRadius = 10,
                            Icon = 12645376577,
                            Title = "Ouroboros Hub"
                        })
                    else
                        iL = hW:CreateWindow({
                            Title = "Ouroboros Hub",
                            Footer = { { Text = hS, Copyable = true }, "|", iU },
                            Icon = 12645376577,
                            NotifySide = "Right",
                            ShowCustomCursor = false,
                            CornerRadius = 10
                        })
                    end
                    iO = (iO + 125) % 248
                end
            elseif i6 <= 7 then
                if iO * 2531357 + 13 + 5 >= iO * 2531357 + 13 + 5 + 1 then
                    iL = {
                        Player = iS:AddTab("Player", "person-standing"),
                        Settings = iS:AddTab("Settings", "settings"),
                        Main = iS:AddTab("Main", "gamepad-2"),
                        Info = iS:AddTab("Info", "info")
                    }
                else
                    iS = {
                        Info = iL:AddTab("Info", "info"),
                        Main = iL:AddTab("Main", "gamepad-2"),
                        Player = iL:AddTab("Player", "person-standing"),
                        Settings = iL:AddTab("Settings", "settings")
                    }
                end
                iO = (iO + 94) % 248
            else
                local i7_4 = {
                    "ihzfsllov",
                    "mdjnqeij",
                    "euufxebnnegh",
                    "hwbznp",
                    "rnvhcq",
                    "rhacmycd",
                    "rfz",
                    "zfxx",
                    "pnfcq",
                    "ncwu"
                }
                if i7_4[(iO * 86 + 42) % 10 + 1] <= i7_4[(iO * 86 + 42) % 10 + 1] then
                    iR = fn321
                else
                    h3 = fn321
                end
                iO = (iO + 187) % 248
            end
        elseif i6 <= 12 then
            if i6 <= 10 then
                if i6 <= 9 then
                    local i7_5 = { "aem", "yeszlrv", "scawgjj", "ioikdfb", "ziewwazgt", "mfwpt", "bkswmfovkfx", "dijsffn" }
                    if i7_5[(iO * 25 + 9) % 8 + 1] <= i7_5[(iO * 25 + 9) % 8 + 1] then
                        iK = game:GetService("Players")
                    else
                        iB = game:GetService("Players")
                    end
                    iO = (iO + 187) % 248
                else
                    if (not ih or ih) and (not ih or ih) and (not iP and not iP and (iP or ih)) and not ((not ih or ih) and (not ih or ih) and (not iP and not iP and (iP or ih))) then
                        i3 = game:GetService("ReplicatedStorage")
                    else
                        iQ = game:GetService("ReplicatedStorage")
                    end
                    iO = (iO + 218) % 248
                end
            elseif i6 <= 11 then
                local i7_6 = {
                    "ebboqarrf",
                    "xojyogu",
                    "dajttrfcac",
                    "eppfdwnhh",
                    "gldwqtsfqp",
                    "cnngv",
                    "tfmvgiwq",
                    "itqifrc",
                    "eax",
                    "kvelrvbx",
                    "vigoh"
                }
                local ni = iO
                local i8_4 = i7_6[ni % 11 + 1]
                if i8_4:len() >= i8_4:reverse():rep(ni % 3 + 2):len() then
                    ik = game:GetService("RunService")
                else
                    RunService = game:GetService("RunService")
                end
                iO = (iO + 63) % 248
            else
                local i7_7 = {
                    "lpdzhnnpe",
                    "vmtwhmbrxwl",
                    "zswq",
                    "smv",
                    "ohmhf",
                    "rlnbept",
                    "hydgqmifjys",
                    "uqunvgyxz",
                    "kfbewtjvxw",
                    "ghhcbewrymy"
                }
                if i7_7[(iO * 41 + 107) % 10 + 1] < i7_7[(iO * 41 + 107) % 10 + 1] then
                    ik = game:GetService("UserInputService")
                    iu = game:GetService("VirtualUser")
                    iq = game:GetService("HttpService")
                else
                    iu = game:GetService("UserInputService")
                    iq = game:GetService("VirtualUser")
                    ik = game:GetService("HttpService")
                end
                iO = (iO + 94) % 248
            end
        elseif i6 <= 14 then
            if i6 <= 13 then
                local i7_8 = {
                    "cjjifzk",
                    "febnj",
                    "udla",
                    "azy",
                    "oejqkdkg",
                    "klluzvaxb",
                    "jfaz",
                    "vmk",
                    "lbboykg",
                    "zxtwm",
                    "uvu",
                    "rkdl",
                    "gdmewt"
                }
                if i7_8[(iO * 69 + 50) % 13 + 1] < i7_8[(iO * 69 + 50) % 13 + 1] then
                    ic = game:GetService("GuiService")
                    ih = game:GetService("CoreGui")
                else
                    ih = game:GetService("GuiService")
                    ic = game:GetService("CoreGui")
                end
                iO = (iO + 63) % 248
            else
                if (iO * 3 + 3) * 9 % 4 == ((iO * 3 + 3) * 9 + 3) % 4 then
                    iW = game:GetService("Workspace")
                else
                    h7 = game:GetService("Workspace")
                end
                iO = (iO + 1) % 248
            end
        elseif i6 <= 15 then
            if (not i0 or not ij or not iu and not i0) and (ij and not i0 or (iu or iu)) or not ((not i0 or not ij or not iu and not i0) and (ij and not i0 or (iu or iu))) then
                h2 = iK.LocalPlayer
            else
                iK = h2.LocalPlayer
            end
            iO = (iO + 125) % 248
        else
            local i7_9 = (vector.create((iO * 4 + 3) % 11 + 1, (iO * 8 + 5) % 13 + 1, (iO * 5 + 16) % 17 + 1))
            local i8_5 = (vector.create((iO * 5 + 2) % 11 + 1, (iO * 9 + 3) % 13 + 1, (iO * 12 + 12) % 17 + 1))
            i9 = (vector.create((iO * 5 + 1) % 11 + 1, (iO * 2 + 1) % 13 + 1, (iO * 3 + 2) % 17 + 1))
            if vector.dot(vector.cross(i7_9, i8_5), i9) == vector.dot(vector.cross(i8_5, i9), i7_9) then
                iU = "Build a Gun Army"
            else
                iL = "Build a Gun Army"
            end
            iO = (iO + 218) % 248
        end
    elseif i6 <= 24 then
        if i6 <= 20 then
            if i6 <= 18 then
                if i6 <= 17 then
                    local i7_10 = {
                        "zrrnvmpfkb",
                        "oprqx",
                        "vpkyjp",
                        "odnnayxt",
                        "ywtr",
                        "iffdonebrv",
                        "ewib",
                        "udziabvzb",
                        "ovk",
                        "kgbohwikd",
                        "mcbfenrqxfk"
                    }
                    local m2 = iO
                    local i8_6 = i7_10[m2 % 11 + 1]
                    if i8_6:len() >= i8_6:reverse():rep(m2 % 3 + 2):len() then
                        h2 = "https://discord.gg/ehKVq7pf7v"
                    else
                        hS = "https://discord.gg/ehKVq7pf7v"
                    end
                    iO = (iO + 218) % 248
                else
                    local i7_11 = {
                        "lcnvjeziwsv",
                        "wblmtqq",
                        "bpcwo",
                        "wkhgbdgfx",
                        "ximqjkpodznl",
                        "fbyefbrjt",
                        "oeaqrbehxa",
                        "yxrwuv",
                        "zsxwzky"
                    }
                    if i7_11[(iO * 50 + 96) % 9 + 1] <= i7_11[(iO * 50 + 96) % 9 + 1] then
                        hN = "https://rscripts.net/@Ouroboros"
                        iI = require(iQ:WaitForChild("HelperModule"))
                    else
                        iI = "https://rscripts.net/@Ouroboros"
                        iQ = require(hN:WaitForChild("HelperModule"))
                    end
                    iO = (iO + 218) % 248
                end
            elseif i6 <= 19 then
                if (not ic or ic) and (not h3 and not h3) and (not ic and not ic or (not ic or not h3)) and not ((not ic or ic) and (not h3 and not h3) and (not ic and not ic or (not ic or not h3))) then
                    iQ = require(WeaponConfigModule:WaitForChild("WeaponConfigModule"))
                else
                    WeaponConfigModule = require(iQ:WaitForChild("WeaponConfigModule"))
                end
                iO = (iO + 1) % 248
            else
                if (not iw and iw and (not iw and iN) or (iw and not iN or iN and iw) or (iw and iw or not iN and iw or (iw and iw or not iw and iN))) and (not iN and iN and (iw or iw) or iN and not iw and (not iN and not iN) or (iw and not iw or (not iw or iN)) and (not iw or iN or not iw and iN)) or not ((not iw and iw and (not iw and iN) or (iw and not iN or iN and iw) or (iw and iw or not iN and iw or (iw and iw or not iw and iN))) and (not iN and iN and (iw or iw) or iN and not iw and (not iN and not iN) or (iw and not iw or (not iw or iN)) and (not iw or iN or not iw and iN))) then
                    iP = iQ:WaitForChild("RemoteEvents")
                    is = iP:WaitForChild("CurrencyPickup")
                    im = iP:WaitForChild("WeaponBoxBuy")
                    ij = iP:WaitForChild("WeaponBoxDiscard")
                else
                    im = iP:WaitForChild("RemoteEvents")
                    ij = im:WaitForChild("CurrencyPickup")
                    is = im:WaitForChild("WeaponBoxBuy")
                    iQ = im:WaitForChild("WeaponBoxDiscard")
                end
                iO = (iO + 63) % 248
            end
        elseif i6 <= 22 then
            if i6 <= 21 then
                if (iu and not iB or (iB or not iu)) and ((iL or not i3) and (i3 or not iL)) and ((iu or not iu or not iB and i3) and ((iu or i3) and (iB or i3))) and ((iL and iB or not iB and not iB) and (not i3 and i3 or (not iL or iB)) and ((i3 or not iL) and (not i3 or not iu) or iu and not iB and (not iL or not i3))) or not ((iu and not iB or (iB or not iu)) and ((iL or not i3) and (i3 or not iL)) and ((iu or not iu or not iB and i3) and ((iu or i3) and (iB or i3))) and ((iL and iB or not iB and not iB) and (not i3 and i3 or (not iL or iB)) and ((i3 or not iL) and (not i3 or not iu) or iu and not iB and (not iL or not i3)))) then
                    iN = h7:WaitForChild("Plots")
                    iZ = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Secret" }
                    h4 = { "Normal", "Shiny", "Electric", "Cosmic" }
                else
                    h7 = h4:WaitForChild("Plots")
                    iN = { "Secret", "Epic", "Common", "Mythic", "Rare", "Uncommon", "Legendary" }
                    iZ = { "Cosmic", "Shiny", "Normal", "Electric" }
                end
                iO = (iO + 187) % 248
            else
                if ((iY or iY) and (RunService and iY) or (not iZ and iZ or not iZ and not iY) or (not iY and not iZ or RunService and not iZ or (not iY and iZ or iZ and not RunService))) and ((not iZ or not iY or (iY or not RunService) or iY and RunService and (not iZ or not iZ)) and (not iZ and RunService and (RunService and iY) or (iZ or iY or (iY or not RunService)))) and not (((iY or iY) and (RunService and iY) or (not iZ and iZ or not iZ and not iY) or (not iY and not iZ or RunService and not iZ or (not iY and iZ or iZ and not RunService))) and ((not iZ or not iY or (iY or not RunService) or iY and RunService and (not iZ or not iZ)) and (not iZ and RunService and (RunService and iY) or (iZ or iY or (iY or not RunService))))) then
                    iq = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                else
                    iM_1 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                end
                iO = (iO + 32) % 248
            end
        elseif i6 <= 23 then
            if ((not iO or not iO) and (not ij and not iO) and ((not ij or ij) and (ij and ij)) or (not iO and iG or (not iO or iG)) and (ij and iO or (not ij or not ij))) and (ij and iO or (iG or not iG) or (not ij or not iO) and (ij and not iG) or iG and ij and (iO or iO) and (iO or iG or (not iO or ij))) or not (((not iO or not iO) and (not ij and not iO) and ((not ij or ij) and (ij and ij)) or (not iO and iG or (not iO or iG)) and (ij and iO or (not ij or not ij))) and (ij and iO or (iG or not iG) or (not ij or not iO) and (ij and not iG) or iG and ij and (iO or iO) and (iO or iG or (not iO or ij)))) then
                hW = loadstring(game:HttpGet(iM_1 .. "Library.lua"))()
            else
                iM_1 = loadstring(game:HttpGet(hW .. "Library.lua"))()
            end
            iO = (iO + 32) % 248
        else
            local m4 = bit32.rrotate(bit32.bxor(bit32.lrotate(iO, 27), string.byte(tostring(hT))), 10)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(m4, 323441313), 4042662955), (bit32.bxor(bit32.band(m4, 3971525982), 2126238833))), 4042662955), 2126238833) == m4 then
                iT = loadstring(game:HttpGet(iM_1 .. "addons/ThemeManager.lua"))()
                hL = loadstring(game:HttpGet(iM_1 .. "addons/SaveManager.lua"))()
                Toggles = hW.Toggles
                iA = hW.Options
                iv = fn135
            else
                iM_1 = loadstring(game:HttpGet(iA .. "addons/ThemeManager.lua"))()
                iT = loadstring(game:HttpGet(iA .. "addons/SaveManager.lua"))()
                hL = Toggles.Toggles
                iv = Toggles.Options
                hW = fn135
            end
            iO = (iO + 94) % 248
        end
    elseif i6 <= 28 then
        if i6 <= 26 then
            if i6 <= 25 then
                local i7_12 = (vector.create((iO * 5 + 2) % 11 + 1, (iO * 8 + 6) % 13 + 1, (iO * 9 + 5) % 17 + 1))
                local i8_7 = (vector.create((iO * 6 + 9) % 11 + 1, (iO * 6 + 6) % 13 + 1, (iO * 2 + 10) % 17 + 1))
                local m6 = vector.cross(i7_12, i8_7)
                local m7 = vector.dot(i7_12, i8_7)
                if vector.dot(m6, m6) + m7 * m7 == vector.dot(i7_12, i7_12) * vector.dot(i8_7, i8_7) then
                    ie = fn225
                    hZ = fn41
                else
                    hZ = fn225
                    ie = fn41
                end
                iO = (iO + 63) % 248
            else
                if (not h4 and h4 or (not h4 or h5)) and ((not h4 or hM) and (not hU or hU)) or (hM and hM or (not hU or not h4) or (not hM and not h5 or hM and h5)) or not ((not h4 and h4 or (not h4 or h5)) and ((not h4 or hM) and (not hU or hU)) or (hM and hM or (not hU or not h4) or (not hM and not h5 or hM and h5))) then
                    iJ = fn411
                    i2 = "#7fd47f"
                    i0 = "#6ec1ff"
                    ib = "#e8a34d"
                    iX = "#8b93a3"
                else
                    i2 = fn411
                    i0 = "#7fd47f"
                    iX = "#6ec1ff"
                    iJ = "#e8a34d"
                    ib = "#8b93a3"
                end
                iO = (iO + 32) % 248
            end
        elseif i6 <= 27 then
            local mY = bit32.rrotate(bit32.bxor(bit32.lrotate(iO, 30), string.byte(tostring(i1))), 24)
            if bit32.bxor(bit32.lrotate(bit32.bxor(mY, 1611756429), 8), 292785504) ~= bit32.lrotate(mY, 8) then
                hX = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
                h_ = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
            else
                h_ = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
                hX = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
            end
            iO = (iO + 187) % 248
        else
            local i7_13 = (vector.create((iO * 5 + 6) % 11 + 1, (iO * 2 + 7) % 13 + 1, (iO * 15 + 8) % 17 + 1))
            local i8_8 = (vector.create((iO * 2 + 7) % 11 + 1, (iO * 11 + 3) % 13 + 1, (iO * 2 + 3) % 17 + 1))
            i9 = (vector.create((iO * 7 + 5) % 11 + 1, (iO * 2 + 9) % 13 + 1, (iO * 14 + 7) % 17 + 1))
            ja = (vector.create((iO * 3 + 7) % 5 + 1, (iO * 5 + 1) % 7 + 1, (iO * 3 + 4) % 9 + 1))
            if vector.dot(vector.cross(i7_13, (vector.cross(i8_8, i9))), ja) == vector.dot(i8_8 * vector.dot(i7_13, i9) - i9 * vector.dot(i7_13, i8_8), ja) then
                hP = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                hM = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                iG = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
                iB = "https://paypal.me/TheTruckerGOD"
            else
                iB = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                iG = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                hP = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
                hM = "https://paypal.me/TheTruckerGOD"
            end
            iO = (iO + 63) % 248
        end
    elseif i6 <= 30 then
        if i6 <= 29 then
            local mQ = bit32.rrotate(bit32.bxor(bit32.lrotate(iO, 11), string.byte(tostring(RunService))), 25)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(mQ, 2311900853), 3500280754), (bit32.bxor(bit32.band(mQ, 1983066442), 2814150224))), 3500280754), 2814150224) == mQ then
                ix = "https://venmo.com/u/miserablemusic"
            else
                iN = "https://venmo.com/u/miserablemusic"
            end
            iO = (iO + 63) % 248
        else
            i6 = (vector.create((iO * 1 + 3) % 11 + 1, (iO * 8 + 8) % 13 + 1, (iO * 6 + 16) % 17 + 1))
            local i7_14 = (vector.create((iO * 6 + 2) % 11 + 1, (iO * 11 + 5) % 13 + 1, (iO * 15 + 1) % 17 + 1))
            local i8_9 = (vector.create((iO * 5 + 9) % 11 + 1, (iO * 11 + 3) % 13 + 1, (iO * 6 + 9) % 17 + 1))
            i9 = (vector.create((iO * 6 + 8) % 11 + 1, (iO * 11 + 7) % 13 + 1, (iO * 6 + 9) % 17 + 1))
            if vector.dot(vector.cross(i6, i7_14), (vector.cross(i8_9, i9))) == vector.dot(i6, i8_9) * vector.dot(i7_14, i9) - vector.dot(i6, i9) * vector.dot(i7_14, i8_9) then
                i4 = "#345d9d"
                i3 = "#f7931a"
                i1 = "#627eea"
            else
                i1 = "#345d9d"
                i4 = "#f7931a"
                i3 = "#627eea"
            end
            iO = (iO + 1) % 248
        end
    else
        if (not h4 or id or (i2 or iP)) and ((not iP or id) and (not iP or not h4)) or not ((not h4 or id or (i2 or iP)) and ((not iP or id) and (not iP or not h4))) then
            i_ = "#26a17b"
            iY = "#14f195"
        else
            iY = "#26a17b"
            i_ = "#14f195"
        end
        iO = (iO + 156) % 248
    end
until (iO * 165 + 120) % 248 == 102
for k, v in iS do
    iR(v)
end
ig, iK, iN, iD, iz, iM_2 = nil, nil, nil, nil, nil, nil
iL = 7
repeat
    iO = (iL * 2 + 2) % 3 + 1
    if iO <= 2 then
        if iO <= 1 then
            local m_ = bit32.rrotate(bit32.bxor(bit32.lrotate(iL, 18), string.byte(tostring(iM_2))), 2)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(m_, 169729729), 2696082079), (bit32.bxor(bit32.band(m_, 4125237566), 43467359))), 2696082079), 43467359) ~= m_ then
                iz = #iM_2 > 18
            else
                iM_2 = #iz > 18
            end
            iL = (iL + 8) % 12
        else
            local m9 = bit32.rrotate(bit32.bxor(bit32.lrotate(iL, 20), string.byte(tostring(iM_2))), 29)
            if bit32.bxor(bit32.lrotate(bit32.bxor(m9, 4049075671), 28), 2132115421) ~= bit32.lrotate(m9, 28) then
                iS = "Unknown"
                pcall(fn453)
                hZ = iN.Info:AddLeftGroupbox("Account", "circle-user")
                hZ:AddLabel(iD("User", ig.Name, iK), true)
                hZ:AddLabel(iD("Status", "Keyless", iK), true)
                hZ:AddLabel(iD("Executor", "Unknown", iK), true)
                iJ = iN.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                iJ:AddLabel(iU(h2 .. " [" .. tostring(game.PlaceId) .. "]", ib), true)
                iJ:AddLabel(iD("Place ID", tostring(game.PlaceId), ib), true)
                i2 = iJ:AddLabel(iD("Session time", "0s", i0), true)
            else
                ig = "Unknown"
                pcall(fn453)
                iK = iS.Info:AddLeftGroupbox("Account", "circle-user")
                iK:AddLabel(iJ("User", h2.Name, i2), true)
                iK:AddLabel(iJ("Status", "Keyless", i2), true)
                iK:AddLabel(iJ("Executor", ig, i2), true)
                iN = iS.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                iN:AddLabel(hZ(iU .. " [" .. tostring(game.PlaceId) .. "]", i0), true)
                iN:AddLabel(iJ("Place ID", tostring(game.PlaceId), i0), true)
                iD = iN:AddLabel(iJ("Session time", "0s", ib), true)
            end
            iL = (iL + 11) % 12
        end
    else
        iO = (vector.create((iL * 6 + 3) % 11 + 1, (iL * 5 + 3) % 13 + 1, (iL * 5 + 6) % 17 + 1))
        local mW = vector.floor(iO) + vector.ceil(iO * -1)
        if vector.dot(mW, mW) == 0 then
            iz = tostring(game.JobId)
        else
            iD = tostring(game.JobId)
        end
        iL = (iL + 11) % 12
    end
until (iL * 11 + 10) % 12 == 9
if iM_2 then
    iK = 0
    repeat
        iL = {
            "lvyi",
            "saxkmpkc",
            "xwc",
            "miuhsyduxwk",
            "uxxpatucwa",
            "wun",
            "hkydwbxbdy",
            "iobc",
            "sauwji",
            "ijgpt",
            "gkjtnyrpryn",
            "zrmzzso"
        }
        local mZ = iK
        iO = iL[mZ % 12 + 1]
        if iO:len() >= iO:gsub("(.)", "%1%1", mZ % 3 % 2 + 1):len() then
            iz = string.sub(iM_2, 1, 18) .. "..."
        else
            iM_2 = string.sub(iz, 1, 18) .. "..."
        end
        iK = (iK + 1) % 4
    until (iK * 1 + 2) % 4 == 3
end
iK = iM_2 or iz
h6, iL, FarmGroup, hR, it, ir, connection, connection2, io, h0, hV, ii, hY, hQ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
i6 = iK
iN:AddLabel(iJ("Server", i6, iX), true)
iN:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
h6 = os.clock()
task.spawn(worker)
local ScriptsGroup = iS.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(hZ("Included in this hub", iX), true)
ScriptsGroup:AddLabel(hZ(iU, i0), true)
iR = iS.Info:AddRightGroupbox("Features", "list")
iR:AddLabel(hZ("Auto Mystery Box", i0), true)
iR:AddLabel(hZ("Auto Collect", ib), true)
iR:AddLabel(hZ("Auto Place", i2), true)
iR:AddLabel(hZ("Misc Utilities", iX), true)
iQ = iS.Info:AddRightGroupbox("Socials", "link")
iQ:AddButton({ Text = "Discord", Func = ie })
iQ:AddButton({ Text = "Rscripts", Func = onRscripts })
iP = iS.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
iP:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
iP:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
iP:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
iP:AddButton({ Text = "Copy Discord Invite", Func = ie })
local DonationsGroup = iS.Info:AddRightGroupbox("Donations", "heart")
if h0 and not i6 and (not i6 and iQ) and (not ii or FarmGroup or (not ii or not i6)) and not (h0 and not i6 and (not i6 and iQ) and (not ii or FarmGroup or (not ii or not i6))) then
    i2:AddLabel(i_("All donations are optional but appreciated.", i0), true)
    i2:AddLabel(i_("If you donate you get a special role, just PING after you donate.", iY), true)
    i2:AddDivider()
    i2:AddLabel(i_("LTC / Litecoin", hZ), true)
    i2:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
    i2:AddLabel(i_("BTC / Bitcoin", iW), true)
    i2:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
    i2:AddLabel(i_("ETH / Ethereum", iX), true)
    i2:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
    i2:AddLabel(i_("USDT", i3), true)
    i2:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
    i2:AddLabel(i_("Solana", iS), true)
    i2:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
    i2:AddLabel(i_("PayPal", iL), true)
    i2:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
    i2:AddLabel(i_("Venmo", DonationsGroup), true)
    i2:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
    i2:AddDivider()
    i2:AddLabel(i_("Don't have any of the listed currencies but still wanna donate?", ib), true)
    i2:AddLabel(i_("DM me and we'll work something out.", i4), true)
    iV.Info:AddRightGroupbox("FAQ", "circle-help")
else
    DonationsGroup:AddLabel(hZ("All donations are optional but appreciated.", ib), true)
    DonationsGroup:AddLabel(hZ("If you donate you get a special role, just PING after you donate.", i2), true)
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(hZ("LTC / Litecoin", i4), true)
    DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
    DonationsGroup:AddLabel(hZ("BTC / Bitcoin", i3), true)
    DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
    DonationsGroup:AddLabel(hZ("ETH / Ethereum", i1), true)
    DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
    DonationsGroup:AddLabel(hZ("USDT", i_), true)
    DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
    DonationsGroup:AddLabel(hZ("Solana", iY), true)
    DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
    DonationsGroup:AddLabel(hZ("PayPal", iW), true)
    DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
    DonationsGroup:AddLabel(hZ("Venmo", iV), true)
    DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(hZ("Don't have any of the listed currencies but still wanna donate?", iX), true)
    DonationsGroup:AddLabel(hZ("DM me and we'll work something out.", i0), true)
    iL = iS.Info:AddRightGroupbox("FAQ", "circle-help")
end
iL:AddLabel("Where do I get a good config?", true)
iL:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
iL:AddLabel("How do I import / export configs?", true)
iL:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
iL:AddLabel("How do I report bugs?", true)
iL:AddLabel("Join the Discord and post it in the bugs channel.", true)
iL:AddLabel("How do I make suggestions?", true)
iL:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
iL:AddLabel("How do I get help or updates?", true)
iL:AddLabel("Join the Discord, updates and support are posted there first.", true)
local MysteryBoxGroup = iS.Main:AddLeftGroupbox("Mystery Box", "package")
MysteryBoxGroup:AddToggle("AutoOpenMysteryBox", { Text = "Auto Open Mystery Box", Default = false })
MysteryBoxGroup:AddToggle("AutoBuyMysteryBox", { Text = "Auto Buy", Default = false })
MysteryBoxGroup:AddDropdown("MysteryBoxRarities", { Text = "Rarities", Values = iZ, Default = iZ, Multi = true, AllowNull = true })
MysteryBoxGroup:AddDropdown("MysteryBoxTiers", { Text = "Tiers", Values = h4, Default = h4, Multi = true, AllowNull = true })
MysteryBoxGroup:AddToggle("SkipOwnedMysteryBox", { Text = "Skip if Already Owned", Default = true })
FarmGroup = iS.Main:AddRightGroupbox("Farm", "coins")
FarmGroup:AddToggle("AutoCollectCoin", { Text = "Auto Collect Coin", Default = false })
FarmGroup:AddToggle("AutoPlaceWeapon", { Text = "Auto Place Weapon", Default = false })
ja = iS.Player:AddLeftGroupbox("Movement", "footprints")
ja:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
ja:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
ja:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
ja:AddToggle("NoClip", { Text = "NoClip", Default = false })
ja:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = iS.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
io = function(c1)
    pcall(function()
        ih:SetGameplayPausedNotificationEnabled(not c1)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = ic:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not c1
        end
    end)
    if not c1 then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(h2, "GameplayPaused", false)
        else
            h2.GameplayPaused = false
        end
    end)
end
Toggles.AntiGameplayPause:OnChanged(fn661)
Toggles.Fly:OnChanged(fn150)
Toggles.WalkSpeedEnabled:OnChanged(fn334)
RunService.Stepped:Connect(onStepped)
iu.JumpRequest:Connect(onJumpRequest)
hR = h7.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
local MenuGroup = iS.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
hW.ToggleKeybind = iA.MenuKeybind
it = tick()
ir = tick()
pcall(function()
    for i, v in ipairs(getconnections(h2.Idled)) do
        local lo = v
        pcall(function()
            lo:Disable()
        end)
    end
end)
h0 = fn52
connection = iu.InputBegan:Connect(onInputBegan)
connection2 = iu.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton({ Text = "Unload", Func = onUnload })
iT:SetLibrary(hW)
iT:SetFolder("OuroborosHub")
iT:SaveDefault("Monochrome")
hL:SetLibrary(hW)
hL:IgnoreThemeSettings()
hL:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
hL:SetFolder("OuroborosHub/build-a-gun-army")
iO = hL:BuildConfigSection(iS.Settings)
hV = fn666
ii = fn159
hY = fn222
hQ = function(ey)
    local l1
    l1 = nil
    local l2 = type(ey) ~= "table" or type(ey.idx) ~= "string" or type(ey.type) ~= "string" or hL.Ignore[ey.idx]
    if l2 then
        return false
    end
    l1 = hV(ey.type, ey.idx)
    if not l1 then
        return false
    end
    local l2_1 = pcall(function()
        if ey.type == "Input" then
            if type(ey.text) ~= "string" then
                return
            end
            l1:SetValue(ey.text)
        elseif ey.type == "ColorPicker" then
            l1:SetValueRGB(Color3.fromHex(ey.value), ey.transparency)
        elseif ey.type == "KeyPicker" then
            l1:SetValue({ ey.key, ey.mode, ey.modifiers })
            if ey.mode == "Toggle" and ey.toggled ~= nil then
                l1.Toggled = ey.toggled
                l1:Update()
            end
        else
            l1:SetValue(ey.value)
        end
    end)
    return l2_1
end
iO:AddDivider()
iO:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
iO:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
iO:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
iT:ApplyToTab(iS.Settings)
iT:LoadDefault()
hL:LoadAutoloadConfig()
task.spawn(worker2)
task.spawn(antiGameplayPauseLoop)
task.spawn(worker3)
hW:OnUnload(fn319)
hW:Notify(iU .. " loaded")
