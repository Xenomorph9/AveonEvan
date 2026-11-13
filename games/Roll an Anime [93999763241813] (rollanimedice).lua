local qX_1, qX_3, qX_7, qX_10, qX_12, qX_13, qX_15, qX_18, qX_20, qX_21, qX_23, qX_25
local kX
local lE
local kE
local ll
local k2
local kK
local lr
local kq
local k8
local kQ
local lx
local lD
local kD
local connection
local kJ
local k7
local kP
local kw
local kV
local GetPlayerPlot
local lj
local k0
local lp
local k6
local kO
local lv
local kv
local lc
local kU
local kB
local li
local k_
local kH
local connection2
local kN
local Rebirth
local kt
local kT
local lA
local lh
local ln
local k4
local kM
local ks
local la
local kS
local lz
local kz
local kY
local kF
local lm
local k3
local kL
local ls
local kr
local k9
local kR
local ly
local ky
local function antiGameplayPauseLoop()
    while not k3.Unloaded do
        task.wait(1)
        if kT.AntiGameplayPause.Value then
            kJ(true)
        end
    end
end
local function fn4()
    kJ(kT.AntiGameplayPause.Value)
end
local function fn15(bh)
    local m0 = kQ[bh]
    local m1 = m0 and m0.Value
    if typeof(m1) ~= "table" then
        return {}
    end
    local m1_1 = true
    local m2 = {}
    for k in m1 do
        if type(k) ~= "number" then
            m1_1 = false
            break
        end
    end
    if m1_1 then
        for i, v in ipairs(m1) do
            if type(v) == "string" then
                m2[v] = true
            end
        end
        return m2
    end
    return m1
end
local function fn16()
    pcall(function()
        Rebirth:InvokeServer()
    end)
end
local function onExportConfigToClipboard()
    local qq_1
    local qp_1
    qp_1, qq_1 = pcall(lm.JSONEncode, lm, lE())
    if not qp_1 then
        k3:Notify("Failed to encode the config")
        return
    end
    local qp_2 = setclipboard or toclipboard
    local qp_3 = type(qp_2) ~= "function" or not pcall(qp_2, qq_1)
    if qp_3 then
        k3:Notify("Your executor does not support copying to the clipboard")
        return
    end
    k3:Notify("Config copied to clipboard", 6)
end
local function fn67()
    pcall(function()
        k8:FireServer()
    end)
end
local function onCopyUSDTAddress()
    kN(kY, "Copied USDT address")
end
local function fn78(S, T)
    if setclipboard then
        setclipboard(S)
    elseif toclipboard then
        toclipboard(S)
    end
    k3:Notify(T)
end
local function onCopyPayPalLink()
    kN(kR, "Copied PayPal link")
end
local function onCopyVenmoLink()
    kN(kO, "Copied Venmo link")
end
local function onCopyBitcoinAddress()
    kN(k4, "Copied Bitcoin address")
end
local function fn198(a6, a7)
    return a6.price < a7.price
end
local function fn249(dZ)
    local DiscordGroup = dZ:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = kE })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = kE })
end
local function fn274()
    local Character = k7.Character
    local ni = Character and Character:FindFirstChild("HumanoidRootPart")
    return ni
end
local function worker4()
    while not k3.Unloaded do
        if kV("AutoBuyLuckyBlocks") then
            pcall(li)
        end
        if kV("AutoBuyPotions") then
            pcall(kD)
        end
        if kV("AutoBuyUpgrades") then
            pcall(lj)
        end
        if kV("AutoHatchEggs") then
            pcall(kP)
        end
        task.wait(0.5)
    end
end
local function fn330()
    local Character = k7.Character
    local nf = Character and Character:FindFirstChildOfClass("Humanoid")
    return nf
end
local function onRscripts()
    if setclipboard then
        setclipboard(k_)
    elseif toclipboard then
        toclipboard(k_)
    end
    k3:Notify("Copied Rscripts profile to clipboard")
end
local function fn353()
    pcall(function()
        ks:FireServer(false)
    end)
    connection:Disconnect()
    connection2:Disconnect()
    kJ(false)
    local qS = lr()
    if qS then
        qS.PlatformStand = false
        qS.WalkSpeed = 16
    end
end
local function fn370(ac, ad, ae)
    return string.format("<b>%s</b> %s %s", ac, kz("-", "#5a6070"), kz(ad, ae))
end
local function fn394()
    local Name
    local nt = -1
    local Blocks = k7:FindFirstChild("Blocks")
    if Blocks then
        for i, child in Blocks:GetChildren() do
            local nu_1 = (child:IsA("ValueBase"))
            if nu_1 then
                local nv_1 = tonumber(child.Value) or 0
                nu_1 = nv_1 > 0
            end
            if nu_1 then
                local nu_2 = lh[child.Name]
                if nu_2 and nu_2 > nt then
                    nt = nu_2
                    Name = child.Name
                end
            end
        end
    end
    local nt_1 = not Name
    if nt_1 ~= false then
        nt_1 = kv()
    end
    if nt_1 then
        return "CommonBlock"
    end
    return Name
end
local function fn406(az, aA)
    local mS = aA
    local mT = az
    if mS then
        mS = string.sub(mT, -#aA) == aA
    end
    if mS then
        mT = string.sub(mT, 1, #mT - #aA)
    end
    return (mT:gsub("(%l)(%u)", "%1 %2"))
end
local function fn413(f1, f2)
    local pN_1 = (f1 == "Toggle" and kT or kQ)[f2]
    local pM_2 = type(pN_1) == "table" and pN_1.Type == f1
    return pM_2 and pN_1 or nil
end
local function onRenderStepped(fr)
    if k3.Unloaded then
        return
    end
    if kT.WalkSpeedEnabled and kT.WalkSpeedEnabled.Value then
        local ps_1 = lr()
        if ps_1 then
            ps_1.WalkSpeed = kQ.WalkSpeed.Value
        end
    end
    if kT.Fly and kT.Fly.Value then
        local ps_3 = k9()
        local pt = lr()
        lA = la.CurrentCamera or lA
        if ps_3 and pt and lA then
            pt.PlatformStand = true
            local pt_1 = Vector3.zero
            if lv:IsKeyDown(Enum.KeyCode.W) then
                pt_1 = pt_1 + lA.CFrame.LookVector
            end
            if lv:IsKeyDown(Enum.KeyCode.S) then
                pt_1 = pt_1 - lA.CFrame.LookVector
            end
            if lv:IsKeyDown(Enum.KeyCode.A) then
                pt_1 = pt_1 - lA.CFrame.RightVector
            end
            if lv:IsKeyDown(Enum.KeyCode.D) then
                pt_1 = pt_1 + lA.CFrame.RightVector
            end
            if lv:IsKeyDown(Enum.KeyCode.Space) then
                pt_1 = pt_1 + Vector3.new(0, 1, 0)
            end
            if lv:IsKeyDown(Enum.KeyCode.LeftControl) then
                pt_1 = pt_1 - Vector3.new(0, 1, 0)
            end
            ps_3.Velocity = Vector3.zero
            if pt_1.Magnitude > 0 then
                ps_3.CFrame = ps_3.CFrame + pt_1.Unit * kQ.FlySpeed.Value * fr
            end
        end
    end
end
local function fn417()
    if not kT.WalkSpeedEnabled.Value then
        local pa = lr()
        if pa then
            pa.WalkSpeed = 16
        end
    end
end
local function onCopyJoinScript_JobID()
    local oQ = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, kr)
    if setclipboard then
        setclipboard(oQ)
    elseif toclipboard then
        toclipboard(oQ)
    end
    k3:Notify("Copied join script to clipboard")
end
local function onUnload()
    k3:Unload()
end
local function fn504(bE)
    local TempData = k7:FindFirstChild("TempData")
    local nn = TempData and TempData:FindFirstChild(bE)
    local nm_1 = nn
    if nn then
        nn = nm_1:IsA("BoolValue")
    end
    if nn then
        nn = nm_1.Value == true
    end
    return nn
end
local function onStepped()
    if k3.Unloaded then
        return
    end
    if kT.NoClip and kT.NoClip.Value then
        local Character = k7.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local pf_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if pf_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function worker()
    local oW_1
    while true do
        task.wait(1)
        if k3.Unloaded then
            break
        end
        local oV = math.floor(os.clock() - ln)
        if oV < 60 then
            oW_1 = oV .. "s"
        elseif oV < 3600 then
            oW_1 = string.format("%dm %ds", oV // 60, oV % 60)
        else
            oW_1 = string.format("%dh %dm", oV // 3600, oV % 3600 // 60)
        end
        kw:SetText(lD("Session time", oW_1, lc))
    end
end
local function fn555()
    pcall(function()
        ly:InvokeServer()
    end)
end
local function worker2()
    while not k3.Unloaded do
        if kV("AutoRoll") then
            kK(true)
            pcall(ky)
            task.wait(0.15)
        else
            kK(false)
            task.wait(0.25)
        end
    end
end
local function fn576(Z, aa)
    return string.format('<font color="%s">%s</font>', aa, Z)
end
local function fn579(b3)
    if b3 then
        if not kL("AutoSkipEnabled") then
            pcall(function()
                ks:FireServer(true)
            end)
        end
        return
    end
    if kL("AutoSkipEnabled") then
        pcall(function()
            ks:FireServer(false)
        end)
    end
end
local function worker5()
    while not k3.Unloaded do
        if kV("AutoClaimIndex") then
            pcall(ll)
        end
        task.wait(2)
    end
end
local function onCopyEthereumAddress()
    kN(k0, "Copied Ethereum address")
end
local function fn616(f9, ga)
    local Type = ga.Type
    if Type == "Toggle" then
        return { idx = f9, type = "Toggle", value = ga.Value == true }
    elseif Type == "Slider" then
        return { idx = f9, type = "Slider", value = tostring(ga.Value) }
    elseif Type == "Dropdown" then
        return { idx = f9, type = "Dropdown", multi = ga.Multi == true, value = ga.Value }
    elseif Type == "Input" then
        local pU = ga.Value or ""
        return { idx = f9, type = "Input", text = tostring(pU) }
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
local function fn635()
    local GamePasses = k7:FindFirstChild("GamePasses")
    local nq = GamePasses and GamePasses:FindFirstChild("InfCommonBlock")
    local np_1 = nq
    if nq then
        nq = np_1:IsA("BoolValue")
    end
    if nq then
        nq = np_1.Value == true
    end
    return nq
end
local function fn644()
    kN(k2, "Copied Discord invite to clipboard")
end
local function onInputChanged(fU)
    local UserInputType = fU.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        kH = tick()
    end
end
local function onJumpRequest()
    if k3.Unloaded then
        return
    end
    if kT.InfJump and kT.InfJump.Value then
        local pn_1 = lr()
        if pn_1 then
            pn_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function worker6()
    while not k3.Unloaded do
        task.wait(2)
        if kV("AntiAfk") then
            local qO = tick() - kH
            local qP = tick() - kF
            if qO >= 300 and qP >= 60 then
                pcall(kq)
            else
                if qO < 300 and qP >= 300 then
                    pcall(kq)
                end
            end
        end
    end
end
local function onCopyLitecoinAddress()
    kN(k6, "Copied Litecoin address")
end
local function fn700()
    local p_ = {}
    for i, v in ipairs({ kT, kQ }) do
        for k, v in pairs(v) do
            local p0 = type(v) == "table" and type(v.Type) == "string" and not kX.Ignore[k]
            if p0 then
                local p0_1 = kB(k, v)
                if p0_1 then
                    p_[#p_ + 1] = p0_1
                end
            end
        end
    end
    table.sort(p_, function(gn, go)
        if gn.type ~= go.type then
            return gn.type < go.type
        end
        return gn.idx < go.idx
    end)
    return { objects = p_ }
end
local function onInputBegan()
    kH = tick()
end
local function fn762()
    local nk = GetPlayerPlot(k7)
    if nk then
        return nk
    end
    return GetPlayerPlot()
end
local function fn790()
    kK(kT.AutoRoll.Value == true)
end
local function fn806()
    if not kT.Fly.Value then
        local o5 = lr()
        if o5 then
            o5.PlatformStand = false
        end
    end
end
local function fn815()
    local CurrentCamera = la.CurrentCamera
    if not CurrentCamera then
        return
    end
    ls:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    ls:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    kF = tick()
end
local function onImportConfigFromClipboardTex()
    local qy_1
    local qw = kQ.SaveManager_ImportSource.Value or ""
    local qw_1
    local qx = tostring(qw):match("^%s*(.-)%s*$")
    if qx == "" then
        k3:Notify("Paste an exported config into the box first")
        return
    end
    qw_1, qy_1 = pcall(lm.JSONDecode, lm, qx)
    local qx_1 = not qw_1 or type(qy_1) ~= "table" or type(qy_1.objects) ~= "table"
    if qx_1 then
        k3:Notify("That is not a valid exported config")
        return
    end
    local qw_2 = 0
    for i, v in ipairs(qy_1.objects) do
        if kS(v) then
            qw_2 += 1
        end
    end
    if qw_2 == 0 then
        k3:Notify("No settings in that config matched this script")
        return
    end
    kQ.SaveManager_ImportSource:SetValue("")
    local qy_2 = qw_2 == 1 and ""
    local qI = if qy_2 then 1 else 0
    local qG = 2863 * qI + 33 * (1 - qI)
    local qH = 156 * qI + 2064 * (1 - qI)
    if not ((qG * 3153 + qH * 3166 + qG * qH) % 16777213 == 9967563) then
        qy_2 = "s"
    end
    k3:Notify(("Imported %d setting%s"):format(qw_2, qy_2), 6)
end
local function onCopySolanaAddress()
    kN(kU, "Copied Solana address")
end
local function worker3()
    while not k3.Unloaded do
        if kV("AutoCollectMoney") then
            pcall(lp)
        end
        if kV("AutoEquipBest") then
            pcall(kt)
        end
        if kV("AutoUpgradePlaced") then
            pcall(lz)
        end
        if kV("AutoRebirth") then
            pcall(lx)
        end
        task.wait(0.35)
    end
end
local function fn893()
    local oJ_1
    local oI_1
    if identifyexecutor then
        oJ_1, oI_1 = identifyexecutor()
        local oK = oJ_1 ~= ""
        local oL = type(oJ_1) == "string" and oK
        if oL then
            local oK_1 = type(oI_1) == "string" and oI_1 ~= "" and oJ_1 .. " " .. oI_1
            kM = oK_1 or oJ_1
        end
    end
end
local function fn900(bc)
    local mY = kT[bc]
    return mY ~= nil and mY.Value == true
end
kq = nil
kr = nil
ks = nil
kt = nil
kv = nil
kw = nil
ky = nil
kz = nil
kB = nil
GetPlayerPlot = nil
kD = nil
kE = nil
kF = nil
kH = nil
kJ = nil
kK = nil
kL = nil
kM = nil
kN = nil
kO = nil
kP = nil
kQ = nil
kR = nil
kS = nil
kT = nil
kU = nil
kV = nil
kX = nil
kY = nil
k_ = nil
k0 = nil
k2 = nil
k3 = nil
k4 = nil
connection2 = nil
k6 = nil
k7 = nil
k8 = nil
k9 = nil
la = nil
lc = nil
local kp, kx, PlotSlots, kG, kI, kW, kZ, k1, lb
lh = nil
li = nil
lj = nil
connection = nil
ll = nil
lm = nil
ln = nil
lp = nil
lr = nil
ls = nil
Rebirth = nil
lv = nil
lx = nil
ly = nil
lz = nil
lA = nil
lD = nil
lE = nil
local ld, le, lf, lg, lo, lq, lt, lw, lB, ClaimCash, lS, lT, lU, lV, lW, lX, lY, lZ, l_
ld = nil
le = nil
lf = nil
lg = nil
lo = nil
lq = nil
lt = nil
lw = nil
lB = nil
ClaimCash = nil
local l0, l1, l2, l3, l4, l5, l6, l7, l8, l9
qX_10, qX_25, l4, lv, ls, lm, lf, ld, la, k7, l3, k2, k_, qX_23, qX_13, qX_3, qX_20, qX_7, qX_18, qX_1, qX_21, GetPlayerPlot, PlotSlots, kx, ks, kp, ClaimCash, ly, lw, Rebirth, lo, lg, le, lb, k8, qX_15, k3, l2, kX, kT, kQ, l0, l_, lc, lZ, k6, k4, k0, kY, kU, kR, kO, lY, lX, lW, lV, lU, lT, lS, l1, lq, lh, kN, kE, kz, lD, qX_12 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local qX_5 = 3
repeat
    l5 = (qX_5 * 19 + 8) % 27 + 1
    if l5 <= 14 then
        if l5 <= 7 then
            if l5 <= 4 then
                if l5 <= 2 then
                    if l5 <= 1 then
                        l6 = (vector.create((qX_5 * 6 + 8) % 11 + 1, (qX_5 * 5 + 8) % 13 + 1, (qX_5 * 5 + 6) % 17 + 1))
                        l7 = (vector.create((qX_5 * 4 + 2) % 11 + 1, (qX_5 * 8 + 1) % 13 + 1, (qX_5 * 13 + 12) % 17 + 1))
                        local rA = vector.cross(l6, l7)
                        local rB = vector.dot(l6, l7)
                        if vector.dot(rA, rA) + rB * rB == vector.dot(l6, l6) * vector.dot(l7, l7) + 5 then
                            lg = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                        else
                            qX_15 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                        end
                        qX_5 = (qX_5 + 64) % 216
                    else
                        local rO = bit32.rrotate(bit32.bxor(bit32.lrotate(qX_5, 23), string.byte(tostring(lv))), 6)
                        if bit32.bxor(bit32.lrotate(bit32.bxor(rO, 1210639517), 22), 659687993) ~= bit32.lrotate(rO, 22) then
                            kQ = loadstring(game:HttpGet(kX .. "Library.lua"))()
                            k3 = loadstring(game:HttpGet(kX .. "addons/ThemeManager.lua"))()
                            l2 = loadstring(game:HttpGet(kX .. "addons/SaveManager.lua"))()
                            qX_15 = kQ.Toggles
                            kT = kQ.Options
                        else
                            k3 = loadstring(game:HttpGet(qX_15 .. "Library.lua"))()
                            l2 = loadstring(game:HttpGet(qX_15 .. "addons/ThemeManager.lua"))()
                            kX = loadstring(game:HttpGet(qX_15 .. "addons/SaveManager.lua"))()
                            kT = k3.Toggles
                            kQ = k3.Options
                        end
                        qX_5 = (qX_5 + 172) % 216
                    end
                elseif l5 <= 3 then
                    if qX_5 * 124578313 + 3 + 2 <= qX_5 * 124578313 + 3 + 2 + 2 then
                        kN = fn78
                    else
                        k7 = fn78
                    end
                    qX_5 = (qX_5 + 37) % 216
                else
                    l6 = {
                        "kgfwekrecq",
                        "azhclyvcei",
                        "hfji",
                        "rtyrh",
                        "bjjclaoc",
                        "kccdnvixhpa",
                        "rrcapxfrnl",
                        "zse",
                        "cdnow",
                        "gwm"
                    }
                    local rS = qX_5
                    l7 = l6[rS % 10 + 1]
                    if l7:len() >= l7:reverse():rep(rS % 3 + 2):len() then
                        lh = fn644
                    else
                        kE = fn644
                    end
                    qX_5 = (qX_5 + 145) % 216
                end
            elseif l5 <= 6 then
                if l5 <= 5 then
                    l6 = (vector.create((qX_5 * 7 + 7) % 11 + 1, (qX_5 * 10 + 7) % 13 + 1, (qX_5 * 15 + 10) % 17 + 1))
                    local rU = vector.floor(l6) + vector.ceil(l6 * -1)
                    if vector.dot(rU, rU) == 5 then
                        l_ = fn576
                        kz = fn370
                        lD = "#7fd47f"
                        lc = "#6ec1ff"
                        l0 = "#e8a34d"
                    else
                        kz = fn576
                        lD = fn370
                        l0 = "#7fd47f"
                        l_ = "#6ec1ff"
                        lc = "#e8a34d"
                    end
                    qX_5 = (qX_5 + 64) % 216
                else
                    if (qX_5 * 2 + 1) * 4 % 3 == ((qX_5 * 2 + 1) * 4 + 5) % 3 then
                        k6 = "#8b93a3"
                        k4 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
                        k0 = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
                        lZ = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                    else
                        lZ = "#8b93a3"
                        k6 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
                        k4 = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
                        k0 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                    end
                    qX_5 = (qX_5 + 64) % 216
                end
            else
                l6 = (vector.create((qX_5 * 6 + 4) % 11 + 1, (qX_5 * 2 + 7) % 13 + 1, (qX_5 * 4 + 17) % 17 + 1))
                l7 = (vector.create((qX_5 * 6 + 2) % 11 + 1, (qX_5 * 5 + 8) % 13 + 1, (qX_5 * 11 + 4) % 17 + 1))
                local rV = vector.dot(l6, l7)
                if rV * rV >= vector.dot(l6, l6) * vector.dot(l7, l7) + 1 then
                    kU = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                    kY = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
                else
                    kY = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                    kU = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
                end
                qX_5 = (qX_5 + 118) % 216
            end
        elseif l5 <= 11 then
            if l5 <= 9 then
                if l5 <= 8 then
                    if (not ld or not l3 or (qX_3 or kx)) and (not qX_1 and ld or (ld or qX_3)) or not ((not ld or not l3 or (qX_3 or kx)) and (not qX_1 and ld or (ld or qX_3))) then
                        kR = "https://paypal.me/TheTruckerGOD"
                        kO = "https://venmo.com/u/miserablemusic"
                        lY = "#345d9d"
                    else
                        lY = "https://paypal.me/TheTruckerGOD"
                        kR = "https://venmo.com/u/miserablemusic"
                        kO = "#345d9d"
                    end
                    qX_5 = (qX_5 + 145) % 216
                else
                    l6 = (vector.create((qX_5 * 5 + 1) % 11 + 1, (qX_5 * 10 + 7) % 13 + 1, (qX_5 * 11 + 15) % 17 + 1))
                    local rH = vector.floor(l6) + vector.ceil(l6 * -1)
                    if vector.dot(rH, rH) == 0 then
                        lX = "#f7931a"
                        lW = "#627eea"
                    else
                        lW = "#f7931a"
                        lX = "#627eea"
                    end
                    qX_5 = (qX_5 + 199) % 216
                end
            elseif l5 <= 10 then
                l6 = { "xvv", "jlcdmj", "botqrehmaje", "vfupv", "gxguigojs", "eberv", "sgbgwifzshds", "gaykhngut" }
                if l6[(qX_5 * 23 + 105) % 8 + 1] < l6[(qX_5 * 23 + 105) % 8 + 1] then
                    lS = "#26a17b"
                    lV = "#14f195"
                    lU = "#0070ba"
                    lT = "#008cff"
                else
                    lV = "#26a17b"
                    lU = "#14f195"
                    lT = "#0070ba"
                    lS = "#008cff"
                end
                qX_5 = (qX_5 + 64) % 216
            else
                l6 = (vector.create((qX_5 * 4 + 9) % 11 + 1, (qX_5 * 11 + 10) % 13 + 1, (qX_5 * 6 + 9) % 17 + 1))
                local rh = vector.floor(l6) + vector.ceil(l6 * -1)
                if vector.dot(rh, rh) == 3 then
                    lh = fn406
                    qX_12 = {}
                    l1 = {}
                    lq = {}
                else
                    qX_12 = fn406
                    l1 = {}
                    lq = {}
                    lh = {}
                end
                qX_5 = (qX_5 + 10) % 216
            end
        elseif l5 <= 13 then
            if l5 <= 12 then
                l6 = {
                    "xjh",
                    "jfjxeldxe",
                    "ewldpl",
                    "wvpgdbzgbv",
                    "lnjut",
                    "wlqrboh",
                    "cglm",
                    "trv",
                    "frspgxpupqe",
                    "ovtn"
                }
                local rZ = qX_5
                l7 = l6[rZ % 10 + 1]
                if l7:len() >= l7:gsub("(.)", "%1%1", rZ % 3 % 2 + 1):len() then
                    l4 = game:GetService("Players")
                else
                    qX_10 = game:GetService("Players")
                end
                qX_5 = (qX_5 + 118) % 216
            else
                l6 = (vector.create((qX_5 * 7 + 5) % 11 + 1, (qX_5 * 3 + 1) % 13 + 1, (qX_5 * 11 + 14) % 17 + 1))
                l7 = (vector.create((qX_5 * 5 + 1) % 11 + 1, (qX_5 * 11 + 2) % 13 + 1, (qX_5 * 1 + 14) % 17 + 1))
                l8 = (vector.create((qX_5 * 1 + 5) % 11 + 1, (qX_5 * 6 + 1) % 13 + 1, (qX_5 * 11 + 6) % 17 + 1))
                l9 = (vector.create((qX_5 * 7 + 1) % 11 + 1, (qX_5 * 7 + 6) % 13 + 1, (qX_5 * 6 + 8) % 17 + 1))
                if vector.dot(vector.cross(l6, l7), (vector.cross(l8, l9))) == vector.dot(l6, l8) * vector.dot(l7, l9) - vector.dot(l6, l9) * vector.dot(l7, l8) then
                    qX_25 = game:GetService("ReplicatedStorage")
                else
                    l_ = game:GetService("ReplicatedStorage")
                end
                qX_5 = (qX_5 + 91) % 216
            end
        else
            l6 = (vector.create((qX_5 * 3 + 3) % 11 + 1, (qX_5 * 1 + 1) % 13 + 1, (qX_5 * 2 + 9) % 17 + 1))
            l7 = (vector.create((qX_5 * 4 + 2) % 11 + 1, (qX_5 * 8 + 4) % 13 + 1, (qX_5 * 3 + 16) % 17 + 1))
            l8 = (vector.create((qX_5 * 5 + 7) % 11 + 1, (qX_5 * 8 + 1) % 13 + 1, (qX_5 * 10 + 13) % 17 + 1))
            l9 = (vector.create((qX_5 * 4 + 2) % 5 + 1, (qX_5 * 1 + 1) % 7 + 1, (qX_5 * 2 + 6) % 9 + 1))
            if vector.dot(vector.cross(l6, (vector.cross(l7, l8))), l9) == vector.dot(l7 * vector.dot(l6, l8) - l8 * vector.dot(l6, l7), l9) + 5 then
                ls = game:GetService("RunService")
                l4 = game:GetService("UserInputService")
                lf = game:GetService("VirtualUser")
                lv = game:GetService("HttpService")
                lm = game:GetService("GuiService")
            else
                l4 = game:GetService("RunService")
                lv = game:GetService("UserInputService")
                ls = game:GetService("VirtualUser")
                lm = game:GetService("HttpService")
                lf = game:GetService("GuiService")
            end
            qX_5 = (qX_5 + 10) % 216
        end
    elseif l5 <= 21 then
        if l5 <= 18 then
            if l5 <= 16 then
                if l5 <= 15 then
                    l6 = {
                        "vbmtd",
                        "xirimlhypw",
                        "olpvkgfhjv",
                        "rqac",
                        "felspnuidjv",
                        "qdbbsncjc",
                        "bsflujqvn",
                        "wniwwmigum",
                        "ddvvmpxwjr",
                        "dyt",
                        "dsnwb"
                    }
                    local rs = qX_5
                    l7 = l6[rs % 11 + 1]
                    if l7:len() <= l7:gsub("(.)", "%1%1", rs % 3 % 2 + 1):len() then
                        ld = game:GetService("CoreGui")
                        la = game:GetService("Workspace")
                        k7 = qX_10.LocalPlayer
                        l3 = "Roll an Anime [🎲]"
                        k2 = "https://discord.gg/ehKVq7pf7v"
                    else
                        qX_10 = game:GetService("CoreGui")
                        l3 = game:GetService("Workspace")
                        ld = k7.LocalPlayer
                        k2 = "Roll an Anime [🎲]"
                        la = "https://discord.gg/ehKVq7pf7v"
                    end
                    qX_5 = (qX_5 + 145) % 216
                else
                    l6 = (vector.create((qX_5 * 5 + 8) % 11 + 1, (qX_5 * 3 + 6) % 13 + 1, (qX_5 * 9 + 17) % 17 + 1))
                    l7 = (vector.create((qX_5 * 2 + 4) % 11 + 1, (qX_5 * 2 + 13) % 13 + 1, (qX_5 * 13 + 13) % 17 + 1))
                    local rR = vector.dot(l6, l7)
                    if rR * rR >= vector.dot(l6, l6) * vector.dot(l7, l7) + 1 then
                        kx = "https://rscripts.net/@Ouroboros"
                    else
                        k_ = "https://rscripts.net/@Ouroboros"
                    end
                    qX_5 = (qX_5 + 64) % 216
                end
            elseif l5 <= 17 then
                if (qX_5 * 3 + 5) * 21 % 4 == ((qX_5 * 3 + 5) * 21 + 6) % 4 then
                    qX_25 = qX_23:WaitForChild("Network")
                else
                    qX_23 = qX_25:WaitForChild("Network")
                end
                qX_5 = (qX_5 + 199) % 216
            else
                if (lY or not l2 or qX_10 and l2 or (not l2 and not l2 or l2 and lY) or (not l2 or not lY or (lY or qX_10)) and ((l2 or qX_10) and (qX_10 and lY))) and ((not l2 or not lY or (lY or not l2)) and (qX_10 and not lY or (lY or not qX_10)) or (not lY or not qX_10 or not l2 and not lY) and (l2 and l2 and (not qX_10 or l2))) or not ((lY or not l2 or qX_10 and l2 or (not l2 and not l2 or l2 and lY) or (not l2 or not lY or (lY or qX_10)) and ((l2 or qX_10) and (qX_10 and lY))) and ((not l2 or not lY or (lY or not l2)) and (qX_10 and not lY or (lY or not qX_10)) or (not lY or not qX_10 or not l2 and not lY) and (l2 and l2 and (not qX_10 or l2)))) then
                    qX_13 = qX_23:WaitForChild("Client")
                else
                    qX_23 = qX_13:WaitForChild("Client")
                end
                qX_5 = (qX_5 + 199) % 216
            end
        elseif l5 <= 20 then
            if l5 <= 19 then
                l6 = {
                    "giiitz",
                    "yysesdso",
                    "chtje",
                    "foflncq",
                    "wcygaha",
                    "elckxiyrg",
                    "rysthyfcpj",
                    "mcmp",
                    "mcw",
                    "rhv",
                    "eyxnenkuji"
                }
                local ri = qX_5
                l7 = l6[ri % 11 + 1]
                if l7:len() >= l7:gsub("(.)", "%1%1", ri % 3 % 2 + 1):len() then
                    qX_25 = qX_3:WaitForChild("Config")
                else
                    qX_3 = qX_25:WaitForChild("Config")
                end
                qX_5 = (qX_5 + 172) % 216
            else
                l6 = { "ukg", "zlmwejjmma", "ytuskptl", "aegrwefv", "cijvfplm", "evoymwzvp", "hidrn" }
                local rG = qX_5
                l7 = l6[rG % 7 + 1]
                if l7:len() <= l7:gsub("(.)", "%1%1", rG % 3 % 2 + 1):len() then
                    qX_20 = qX_25:WaitForChild("Shared")
                else
                    qX_25 = qX_20:WaitForChild("Shared")
                end
                qX_5 = (qX_5 + 91) % 216
            end
        else
            local ru = bit32.rrotate(bit32.bxor(bit32.lrotate(qX_5, 20), string.byte(tostring(k7))), 27)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(ru, 3216661087), 1256688965), (bit32.bxor(bit32.band(ru, 1078306208), 1696951840))), 1256688965), 1696951840) == ru then
                qX_7 = require(qX_3:WaitForChild("BlockProgressionConfig"))
                qX_18 = require(qX_3:WaitForChild("BoostsConfig"))
            else
                qX_3 = require(qX_18:WaitForChild("BlockProgressionConfig"))
                qX_7 = require(qX_18:WaitForChild("BoostsConfig"))
            end
            qX_5 = (qX_5 + 10) % 216
        end
    elseif l5 <= 24 then
        if l5 <= 23 then
            if l5 <= 22 then
                if (qX_5 * 2 + 3) * 16 % 3 == ((qX_5 * 2 + 3) * 16 + 0) % 3 then
                    qX_1 = require(qX_3:WaitForChild("UpgradesConfig"))
                else
                    qX_3 = require(qX_1:WaitForChild("UpgradesConfig"))
                end
                qX_5 = (qX_5 + 199) % 216
            else
                l6 = {
                    "ivdycyvjwhe",
                    "axxncyd",
                    "wbfusk",
                    "ifhehvk",
                    "rfswukf",
                    "lxghdcnlbt",
                    "pstmrxzn",
                    "mmipovmjdvo",
                    "abpupzx",
                    "dcblkefsa",
                    "rfzobfbwimu"
                }
                if l6[(qX_5 * 78 + 34) % 11 + 1] < l6[(qX_5 * 78 + 34) % 11 + 1] then
                    qX_20 = require(GetPlayerPlot:WaitForChild("PetRegistry"))
                    qX_21 = require(GetPlayerPlot:WaitForChild("GetPlayerPlot"))
                else
                    qX_21 = require(qX_20:WaitForChild("PetRegistry"))
                    GetPlayerPlot = require(qX_20:WaitForChild("GetPlayerPlot"))
                end
                qX_5 = (qX_5 + 37) % 216
            end
        else
            local ro = bit32.rrotate(bit32.bxor(bit32.lrotate(qX_5, 22), string.byte(tostring(k7))), 9)
            if bit32.bxor(bit32.lrotate(bit32.bxor(ro, 2668768085), 12), 582310385) == bit32.lrotate(ro, 12) then
                PlotSlots = require(qX_20:WaitForChild("PlotSlots"))
                kx = require(qX_3:WaitForChild("BrainrotUpgradeConfig"))
                ks = qX_13:WaitForChild("ToggleAutoSkip")
            else
                ks = require(PlotSlots:WaitForChild("PlotSlots"))
                qX_3 = require(kx:WaitForChild("BrainrotUpgradeConfig"))
                qX_13 = qX_20:WaitForChild("ToggleAutoSkip")
            end
            qX_5 = (qX_5 + 145) % 216
        end
    elseif l5 <= 26 then
        if l5 <= 25 then
            l5 = (vector.create((qX_5 * 5 + 2) % 11 + 1, (qX_5 * 2 + 9) % 13 + 1, (qX_5 * 2 + 13) % 17 + 1))
            l6 = (vector.create((qX_5 * 7 + 3) % 11 + 1, (qX_5 * 8 + 4) % 13 + 1, (qX_5 * 3 + 5) % 17 + 1))
            l7 = (vector.create((qX_5 * 5 + 4) % 11 + 1, (qX_5 * 9 + 3) % 13 + 1, (qX_5 * 4 + 14) % 17 + 1))
            l8 = (vector.create((qX_5 * 2 + 7) % 11 + 1, (qX_5 * 2 + 3) % 13 + 1, (qX_5 * 9 + 3) % 17 + 1))
            if vector.dot(vector.cross(l5, l6), (vector.cross(l7, l8))) == vector.dot(l5, l7) * vector.dot(l6, l8) - vector.dot(l5, l8) * vector.dot(l6, l7) + 4 then
                qX_13 = ClaimCash:WaitForChild("RollBlock")
                ly = ClaimCash:WaitForChild("ClaimCash")
                kp = ClaimCash:WaitForChild("EquipBestEntities")
            else
                kp = qX_13:WaitForChild("RollBlock")
                ClaimCash = qX_13:WaitForChild("ClaimCash")
                ly = qX_13:WaitForChild("EquipBestEntities")
            end
            qX_5 = (qX_5 + 64) % 216
        else
            l5 = {
                "bsnlpby",
                "camqc",
                "wtv",
                "totjthzyswa",
                "rjgbaaolw",
                "efqdvrsnh",
                "erbsvmnhr",
                "yardkscjj",
                "spscdax",
                "acnjof",
                "pqcvybf"
            }
            local rM = qX_5
            l6 = l5[rM % 11 + 1]
            if l6:len() <= l6:reverse():rep(rM % 3 + 2):len() then
                lw = qX_13:WaitForChild("UpgradeBrainrot")
                Rebirth = qX_13:WaitForChild("Rebirth")
            else
                qX_13 = Rebirth:WaitForChild("UpgradeBrainrot")
                lw = Rebirth:WaitForChild("Rebirth")
            end
            qX_5 = (qX_5 + 118) % 216
        end
    else
        l5 = {
            "olpewd",
            "sput",
            "baclf",
            "ffqy",
            "chavcngvjms",
            "gqis",
            "jpdejdjbd",
            "iwnuspw",
            "tkyvlxovjj",
            "dnb",
            "yzsewltjov",
            "qlvce"
        }
        local ry = qX_5
        l6 = l5[ry % 12 + 1]
        if l6:len() >= l6:reverse():rep(ry % 3 + 2):len() then
            k8 = lg:WaitForChild("PurchaseItem")
            lo = lg:WaitForChild("PurchaseMaxItems")
            qX_13 = lg:WaitForChild("PurchaseUpgrade")
            le = lg:WaitForChild("Hatch")
            lb = lg:WaitForChild("ClaimAllIndexRewards")
        else
            lo = qX_13:WaitForChild("PurchaseItem")
            lg = qX_13:WaitForChild("PurchaseMaxItems")
            le = qX_13:WaitForChild("PurchaseUpgrade")
            lb = qX_13:WaitForChild("Hatch")
            k8 = qX_13:WaitForChild("ClaimAllIndexRewards")
        end
        qX_5 = (qX_5 + 199) % 216
    end
until (qX_5 * 113 + 65) % 216 == 107
qX_10 = {}
qX_20 = (qX_7.GetVisibleShopBlockNames(0))
local ml = if qX_20 then 1 else 0
local mj = 2161 * ml + 4053 * (1 - ml)
local mk = 1425 * ml + 1907 * (1 - ml)
if not ((mj * 658 + mk * 3142 + mj * mk) % 16777213 == 8978713) then
    qX_20 = qX_10
end
qX_10 = qX_20
for k, v in qX_10 do
    if type(v) == "string" then
        qX_10 = qX_12(v, "Block") .. " Block"
        l1[#l1 + 1] = qX_10
        lq[qX_10] = v
        lh[v] = k
    end
end
k1 = {}
qX_10 = {}
qX_20 = {}
for k, v in qX_18 do
    qX_3 = type(k) == "string" and type(v) == "table" and string.find(k, "Potion", 1, true)
    if qX_3 then
        qX_3 = qX_12(k, "Potion") .. " Potion"
        qX_20[#qX_20 + 1] = qX_3
        k1[qX_3] = k
    end
end
qX_13 = 0
repeat
    if qX_13 and qX_13 or qX_13 and not qX_13 or (qX_13 and not qX_13 or qX_13 and not qX_13) or not (qX_13 and qX_13 or qX_13 and not qX_13 or (qX_13 and not qX_13 or qX_13 and not qX_13)) then
        table.sort(qX_20)
        qX_10 = qX_20
    else
        table.sort(qX_10)
        qX_20 = qX_10
    end
    qX_13 = (qX_13 + 0) % 8
until (qX_13 * 5 + 7) % 8 == 7
kG = {}
qX_20 = {}
for i, v in ipairs(qX_1) do
    qX_3 = type(v) == "table" and v.Name
    if qX_3 then
        qX_3 = v.Display and v.Display.Title
        qX_13 = qX_3 or qX_12(v.Name)
        qX_3 = qX_13
        qX_20[#qX_20 + 1] = qX_3
        kG[qX_3] = v.Name
    end
end
lB = {}
qX_3 = {}
qX_13 = {}
for k, v in { "Basic", "Coconut", "Crocodile", "Yeti", "Cupcake", "GoldenBasic" } do
    qX_23 = qX_21.GetEggConfig(v)
    if type(qX_23) == "table" then
        qX_5 = qX_23.DisplayName or qX_12(v) .. " Egg"
        qX_15 = qX_5
        qX_5 = #qX_13 + 1
        qX_25 = qX_23.Price or 0
        qX_13[qX_5] = { display = qX_15, id = v, price = qX_25 }
        lB[qX_15] = v
    end
end
qX_23 = 1
repeat
    qX_5 = {
        "miqtes",
        "bqyijlwbcl",
        "knflbawyk",
        "ntcqaqos",
        "umtxrehtsm",
        "xycenxms",
        "rpkelb",
        "oqxvvxjbd",
        "yhqywrnv",
        "ogkussdohgo",
        "ktewxt",
        "zdwo"
    }
    local rz = qX_23
    qX_15 = qX_5[rz % 12 + 1]
    if qX_15:len() >= qX_15:gsub("(.)", "%1%1", rz % 3 % 2 + 1):len() then
        table.sort(qX_13, fn198)
    else
        table.sort(qX_13, fn198)
    end
    qX_23 = (qX_23 + 7) % 8
until (qX_23 * 3 + 7) % 8 == 7
for k, v in qX_13 do
    qX_3[#qX_3 + 1] = v.display
end
qX_25, kV, kI, lr, k9, kZ, kL, kv, lt, kK, ky, lp, kt, lz, lx, li, kD, lj, kP, ll = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
qX_15 = { "1", "3" }
kV = fn900
kI = fn15
lr = fn330
k9 = fn274
kZ = fn762
kL = fn504
kv = fn635
lt = fn394
kK = fn579
ky = function()
    local nH
    if kL("Rolling") then
        return
    end
    nH = lt()
    if not nH then
        return
    end
    pcall(function()
        kp:InvokeServer(nH)
    end)
end
lp = function()
    local nM = kZ()
    if not nM then
        return
    end
    local nN = PlotSlots.GetAllSlots(nM)
    if type(nN) ~= "table" then
        return
    end
    for k, v in nN do
        local nL
        local nX = v
        local nM_1 = k3.Unloaded or not kV("AutoCollectMoney")
        if nM_1 then
            return
        end
        local nM_2 = type(nX) == "table" and nX.Id
        if nM_2 then
            nL = 0
            pcall(function()
                local nJ = PlotSlots.GetAvailableCash(nX) or 0
                nL = nJ
            end)
            local nM_3 = typeof(nL) == "number" and nL > 0
            if nM_3 then
                pcall(function()
                    ClaimCash:FireServer(nX.Id)
                end)
            end
        end
    end
end
kt = fn555
lz = function()
    local n_ = kZ()
    if not n_ then
        return
    end
    local n0 = PlotSlots.GetAllSlots(n_)
    if type(n0) ~= "table" then
        return
    end
    local n__1 = kx.MaxLevel or 49
    for k, v in n0 do
        local nZ, nY
        local n8 = v
        local n__2 = k3.Unloaded or not kV("AutoUpgradePlaced")
        if n__2 then
            return
        end
        local n__3 = type(n8) == "table" and n8.Id
        if n__3 then
            nZ = false
            pcall(function()
                nZ = PlotSlots.IsOccupied(n8)
            end)
            if nZ then
                nY = nil
                pcall(function()
                    nY = PlotSlots.FindPlacedModel(n8)
                end)
                local n__4 = 0
                if nY then
                    local attr = nY:GetAttribute("UpgradeLevel")
                    if typeof(attr) == "number" then
                        n__4 = attr
                    end
                end
                if n__4 < n__1 then
                    pcall(function()
                        lw:InvokeServer(n8.Id)
                    end)
                end
            end
        end
    end
end
lx = fn16
li = function()
    local oa = kI("LuckyBlockChoice")
    local ob = kV("UseBuyAll")
    for k, v in oa do
        if v then
            local n9 = lq[k]
            if n9 then
                if ob then
                    pcall(function()
                        lg:InvokeServer(n9, 9999)
                    end)
                else
                    pcall(function()
                        lo:InvokeServer(n9)
                    end)
                end
            end
        end
    end
end
kD = function()
    local ok = kI("PotionChoice")
    for k, v in ok do
        if v then
            local oj = k1[k]
            if oj then
                pcall(function()
                    lo:InvokeServer(oj)
                end)
            end
        end
    end
end
lj = function()
    local ov = kI("UpgradeChoice")
    for k, v in ov do
        if v then
            local ou = kG[k]
            if ou then
                pcall(function()
                    le:InvokeServer(ou)
                end)
            end
        end
    end
end
kP = function()
    local oD, oE
    local EggChoice = kQ.EggChoice
    local oG = EggChoice and EggChoice.Value
    local oG_1 = type(oG) == "string" and lB[oG]
    oD = oG_1
    if not oD then
        return
    end
    local HatchAmount = kQ.HatchAmount
    local oG_2 = HatchAmount and HatchAmount.Value
    local oF_3 = tonumber(oG_2) or 1
    oE = oF_3
    pcall(function()
        lb:InvokeServer(oD, oE)
    end)
end
ll = fn67
qX_23 = k3:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = k2, Copyable = true }, "|", l3 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
if (false and not lt and (k9 or not lx) and (false or (not lx or not k9)) or (k9 and not lx or (lp or lx)) and (lt and false or (ky or false))) and ((lt and not lx or lt and false or (lt or lp) and (false or not lx)) and (false or k9 and ky or (false or not lt or lx and false))) or not ((false and not lt and (k9 or not lx) and (false or (not lx or not k9)) or (k9 and not lx or (lp or lx)) and (lt and false or (ky or false))) and ((lt and not lx or lt and false or (lt or lp) and (false or not lx)) and (false or k9 and ky or (false or not lt or lx and false)))) then
    qX_25 = {
        Info = qX_23:AddTab("Info", "info"),
        Main = qX_23:AddTab("Main", "gamepad-2"),
        Player = qX_23:AddTab("Player", "person-standing"),
        Settings = qX_23:AddTab("Settings", "settings")
    }
else
    qX_23 = {
        Main = qX_25:AddTab("Main", "gamepad-2"),
        Player = qX_25:AddTab("Player", "person-standing"),
        Info = qX_25:AddTab("Info", "info"),
        Settings = qX_25:AddTab("Settings", "settings")
    }
end
qX_25.Farm = qX_25.Main:AddSubTab("Farm", "sprout")
qX_25.Shop = qX_25.Main:AddSubTab("Shop", "shopping-cart")
qX_25.Eggs = qX_25.Main:AddSubTab("Eggs", "egg")
qX_5 = fn249
for k, v in qX_25 do
    if v ~= qX_25.Main then
        qX_5(v)
    end
end
kM, qX_13, qX_18, kw, kr, qX_7 = nil, nil, nil, nil, nil, nil
qX_23 = 23
repeat
    qX_5 = (qX_23 * 2 + 2) % 3 + 1
    if qX_5 <= 2 then
        if qX_5 <= 1 then
            if qX_23 * 22331147 + 4 + 5 <= qX_23 * 22331147 + 4 + 5 + 1 then
                kM = "Unknown"
                pcall(fn893)
                qX_13 = qX_25.Info:AddLeftGroupbox("Account", "circle-user")
                qX_13:AddLabel(lD("User", k7.Name, l0), true)
                qX_13:AddLabel(lD("Status", "Keyless", l0), true)
                qX_13:AddLabel(lD("Executor", kM, l0), true)
                qX_18 = qX_25.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                qX_18:AddLabel(kz(l3 .. " [" .. tostring(game.PlaceId) .. "]", l_), true)
                qX_18:AddLabel(lD("Place ID", tostring(game.PlaceId), l_), true)
                kw = qX_18:AddLabel(lD("Session time", "0s", lc), true)
            else
                kw = "Unknown"
                pcall(fn893)
                kz = lD.Info:AddLeftGroupbox("Account", "circle-user")
                kz:AddLabel(qX_13("User", l_.Name, k7), true)
                kz:AddLabel(qX_13("Status", "Keyless", k7), true)
                kz:AddLabel(qX_13("Executor", kw, k7), true)
                l3 = lD.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                l3:AddLabel(l0(qX_25 .. " [" .. tostring(game.PlaceId) .. "]", kM), true)
                l3:AddLabel(qX_13("Place ID", tostring(game.PlaceId), kM), true)
                lc = l3:AddLabel(qX_13("Session time", "0s", qX_18), true)
            end
            qX_23 = (qX_23 + 11) % 24
        else
            if qX_23 * 81887799 + 5 + 3 >= qX_23 * 81887799 + 5 + 3 + 6 then
                qX_13 = tostring(game.JobId)
            else
                kr = tostring(game.JobId)
            end
            qX_23 = (qX_23 + 2) % 24
        end
    else
        if (qX_23 * 2 + 4) * 16 % 3 == ((qX_23 * 2 + 4) * 16 + 3) % 3 then
            qX_7 = #kr > 18
        else
            kr = #qX_7 > 18
        end
        qX_23 = (qX_23 + 20) % 24
    end
until (qX_23 * 5 + 19) % 24 == 11
if qX_7 then
    qX_13 = 6
    repeat
        qX_23 = (vector.create((qX_13 * 5 + 3) % 11 + 1, (qX_13 * 2 + 9) % 13 + 1, (qX_13 * 11 + 12) % 17 + 1))
        qX_5 = (vector.create((qX_13 * 4 + 1) % 11 + 1, (qX_13 * 5 + 1) % 13 + 1, (qX_13 * 4 + 13) % 17 + 1))
        qX_1 = (vector.create((qX_13 * 2 + 4) % 11 + 1, (qX_13 * 1 + 8) % 13 + 1, (qX_13 * 12 + 6) % 17 + 1))
        qX_12 = (vector.create((qX_13 * 1 + 6) % 5 + 1, (qX_13 * 3 + 3) % 7 + 1, (qX_13 * 4 + 3) % 9 + 1))
        if vector.dot(vector.cross(qX_23, (vector.cross(qX_5, qX_1))), qX_12) == vector.dot(qX_5 * vector.dot(qX_23, qX_1) - qX_1 * vector.dot(qX_23, qX_5), qX_12) + 1 then
            kr = string.sub(qX_7, 1, 18) .. "..."
        else
            qX_7 = string.sub(kr, 1, 18) .. "..."
        end
        qX_13 = (qX_13 + 7) % 8
    until (qX_13 * 3 + 1) % 8 == 0
end
qX_13 = qX_7 or kr
ln = nil
local mb = qX_13
qX_18:AddLabel(lD("Server", mb, lZ), true)
qX_18:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
ln = os.clock()
task.spawn(worker)
qX_21 = qX_25.Info:AddRightGroupbox("Scripts", "package")
qX_21:AddLabel(kz("Included in this hub", lZ), true)
qX_21:AddLabel(kz(l3, l_), true)
qX_1 = qX_25.Info:AddRightGroupbox("Features", "list")
qX_1:AddLabel(kz("Auto Farm", l_), true)
qX_1:AddLabel(kz("Auto Shop", lc), true)
qX_1:AddLabel(kz("Auto Hatch", l0), true)
qX_1:AddLabel(kz("Misc Utilities", lZ), true)
qX_7 = qX_25.Info:AddRightGroupbox("Socials", "link")
qX_7:AddButton({ Text = "Discord", Func = kE })
qX_7:AddButton({ Text = "Rscripts", Func = onRscripts })
qX_5 = qX_25.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
qX_5:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
qX_5:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
qX_5:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
qX_5:AddButton({ Text = "Copy Discord Invite", Func = kE })
qX_23 = qX_25.Info:AddRightGroupbox("Donations", "heart")
qX_23:AddLabel(kz("All donations are optional but appreciated.", lc), true)
qX_23:AddLabel(kz("If you donate you get a special role, just PING after you donate.", l0), true)
qX_23:AddDivider()
qX_23:AddLabel(kz("LTC / Litecoin", lY), true)
qX_23:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
qX_23:AddLabel(kz("BTC / Bitcoin", lX), true)
qX_23:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
qX_23:AddLabel(kz("ETH / Ethereum", lW), true)
qX_23:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
qX_23:AddLabel(kz("USDT", lV), true)
qX_23:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
qX_23:AddLabel(kz("Solana", lU), true)
qX_23:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
qX_23:AddLabel(kz("PayPal", lT), true)
qX_23:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
qX_23:AddLabel(kz("Venmo", lS), true)
qX_23:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
qX_23:AddDivider()
qX_23:AddLabel(kz("Don't have any of the listed currencies but still wanna donate?", lZ), true)
qX_23:AddLabel(kz("DM me and we'll work something out.", l_), true)
local FaqGroup = qX_25.Info:AddRightGroupbox("FAQ", "circle-help")
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
l9 = qX_25.Farm:AddLeftGroupbox("Farm", "dices")
l9:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
l9:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
l9:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
l9:AddToggle("AutoUpgradePlaced", { Text = "Auto Upgrade Placed Anime", Default = false })
l9:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
l8 = qX_25.Farm:AddRightGroupbox("Claims", "gift")
l8:AddToggle("AutoClaimIndex", { Text = "Auto Claim All Index", Default = false })
l6 = qX_25.Shop:AddLeftGroupbox("Lucky Blocks", "package")
l6:AddToggle("AutoBuyLuckyBlocks", { Text = "Auto Buy Lucky Blocks", Default = false })
l6:AddToggle("UseBuyAll", { Text = "Use Buy All", Default = false })
l6:AddDropdown("LuckyBlockChoice", {
    Text = "Lucky Blocks",
    Values = l1,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
l5 = qX_25.Shop:AddLeftGroupbox("Potions", "flask-conical")
l5:AddToggle("AutoBuyPotions", { Text = "Auto Buy Potions", Default = false })
l5:AddDropdown("PotionChoice", {
    Text = "Potions",
    Values = qX_10,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
qX_12 = qX_25.Shop:AddRightGroupbox("Upgrades", "arrow-big-up")
qX_12:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
qX_12:AddDropdown("UpgradeChoice", {
    Text = "Upgrades",
    Values = qX_20,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
local EggsGroup = qX_25.Eggs:AddLeftGroupbox("Eggs", "egg")
EggsGroup:AddToggle("AutoHatchEggs", { Text = "Auto Hatch Eggs", Default = false })
qX_10 = qX_3[1]
ml = if qX_10 then 1 else 0
mj = 2984 * ml + 3832 * (1 - ml)
mk = 119 * ml + 844 * (1 - ml)
if not ((mj * 4052 + mk * 400 + mj * mk) % 16777213 == 12493864) then
    qX_10 = "Basic Egg"
end
lA, kH, kF, connection, connection2, qX_7, kJ, kq, kW, kB, lE, kS = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
EggsGroup:AddDropdown("EggChoice", { Text = "Egg", Values = qX_3, Default = qX_10 })
EggsGroup:AddDropdown("HatchAmount", { Text = "Amount", Values = qX_15, Default = "1" })
qX_5 = qX_25.Player:AddLeftGroupbox("Movement", "footprints")
qX_5:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
qX_5:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
qX_5:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
qX_5:AddToggle("NoClip", { Text = "NoClip", Default = false })
qX_5:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
qX_23 = qX_25.Player:AddRightGroupbox("Fly", "feather")
qX_23:AddToggle("Fly", { Text = "Fly", Default = false })
qX_23:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
kJ = function(eU)
    pcall(function()
        lf:SetGameplayPausedNotificationEnabled(not eU)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = ld:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not eU
        end
    end)
    if not eU then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(k7, "GameplayPaused", false)
        else
            k7.GameplayPaused = false
        end
    end)
end
kT.AntiGameplayPause:OnChanged(fn4)
kT.Fly:OnChanged(fn806)
kT.WalkSpeedEnabled:OnChanged(fn417)
kT.AutoRoll:OnChanged(fn790)
l4.Stepped:Connect(onStepped)
lv.JumpRequest:Connect(onJumpRequest)
lA = la.CurrentCamera
l4.RenderStepped:Connect(onRenderStepped)
qX_20 = qX_25.Settings:AddLeftGroupbox("Menu")
qX_20:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
k3.ToggleKeybind = kQ.MenuKeybind
kH = tick()
kF = tick()
pcall(function()
    for i, v in ipairs(getconnections(k7.Idled)) do
        local pG = v
        pcall(function()
            pG:Disable()
        end)
    end
end)
kq = fn815
connection = lv.InputBegan:Connect(onInputBegan)
connection2 = lv.InputChanged:Connect(onInputChanged)
if (connection and not kF or (not lA or not connection)) and ((not connection or not connection) and (not connection and not kF)) and not ((connection and not kF or (not lA or not connection)) and ((not connection or not connection) and (not connection and not kF))) then
    k3:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    k3:AddButton({ Text = "Unload", Func = onUnload })
    qX_20:SetLibrary(kX)
    qX_20:SetFolder("OuroborosHub")
    qX_20:SaveDefault("Monochrome")
    qX_25:SetLibrary(kX)
    qX_25:IgnoreThemeSettings()
    qX_25:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    qX_25:SetFolder("OuroborosHub/roll-an-anime-dice")
    l2 = qX_25:BuildConfigSection(qX_7.Settings)
else
    qX_20:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    qX_20:AddButton({ Text = "Unload", Func = onUnload })
    l2:SetLibrary(k3)
    l2:SetFolder("OuroborosHub")
    l2:SaveDefault("Monochrome")
    kX:SetLibrary(k3)
    kX:IgnoreThemeSettings()
    kX:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    kX:SetFolder("OuroborosHub/roll-an-anime-dice")
    qX_7 = kX:BuildConfigSection(qX_25.Settings)
end
kW = fn413
kB = fn616
lE = fn700
if (kF and false or not kF and kF) and (kF and 53 and false) and not ((kF and false or not kF and kF) and (kF and 53 and false)) then
    kF = function(gq)
        local qm
        qm = nil
        local qn = type(gq) ~= "table" or type(gq.idx) ~= "string" or type(gq.type) ~= "string" or kX.Ignore[gq.idx]
        if qn then
            return false
        end
        qm = kW(gq.type, gq.idx)
        if not qm then
            return false
        end
        local qn_2 = pcall(function()
            if gq.type == "Input" then
                if type(gq.text) ~= "string" then
                    return
                end
                qm:SetValue(gq.text)
            elseif gq.type == "ColorPicker" then
                qm:SetValueRGB(Color3.fromHex(gq.value), gq.transparency)
            elseif gq.type == "KeyPicker" then
                qm:SetValue({ gq.key, gq.mode, gq.modifiers })
                if gq.mode == "Toggle" and gq.toggled ~= nil then
                    qm.Toggled = gq.toggled
                    qm:Update()
                end
            else
                qm:SetValue(gq.value)
            end
        end)
        return qn_2
    end
else
    kS = function(gq)
        local qm
        qm = nil
        local qn = type(gq) ~= "table" or type(gq.idx) ~= "string" or type(gq.type) ~= "string" or kX.Ignore[gq.idx]
        if qn then
            return false
        end
        qm = kW(gq.type, gq.idx)
        if not qm then
            return false
        end
        local qn_1 = pcall(function()
            if gq.type == "Input" then
                if type(gq.text) ~= "string" then
                    return
                end
                qm:SetValue(gq.text)
            elseif gq.type == "ColorPicker" then
                qm:SetValueRGB(Color3.fromHex(gq.value), gq.transparency)
            elseif gq.type == "KeyPicker" then
                qm:SetValue({ gq.key, gq.mode, gq.modifiers })
                if gq.mode == "Toggle" and gq.toggled ~= nil then
                    qm.Toggled = gq.toggled
                    qm:Update()
                end
            else
                qm:SetValue(gq.value)
            end
        end)
        return qn_1
    end
end
qX_7:AddDivider()
qX_7:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
qX_7:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
qX_7:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
l2:ApplyToTab(qX_25.Settings)
l2:LoadDefault()
kX:LoadAutoloadConfig()
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(antiGameplayPauseLoop)
task.spawn(worker6)
k3:OnUnload(fn353)
k3:Notify(l3 .. " loaded")
