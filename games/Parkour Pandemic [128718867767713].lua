local fns = {}
local s1_23, s1_26
local l9
local mR
local lR
local connection3
local mf
local Library
local lX
local lE
local ml
local connection5
local l2
local mK
local connection4
local Options
local l8
local HttpService
local DisasterAmpCooldownRounds
local mx
local me
local VirtualUser
local lW
local mD
local MapBoundsHalfX
local connection2
local m1
local l1
local lJ
local mq
local m7
local BuyGearEvent
local mP
local lP
local mw
local md
local mV
local lV
local mC
local lC
local mj
local UserInputService
local l0
local mI
local lI
local mp
local m6
local l6
local connection
local lO
local Toggles
local mc
local mU
local Status
local mB
local lB
local mi
local m_
local RequestSpawn
local mH
local __ouroboros_gen
local mo
local m5
local ClaimDailyReward
local mN
local lN
local LocalPlayer
local mb
local mT
local lT
local SaveManager
local MapBoundsHalfZ
local mh
local mZ
local lZ
local Label
local lG
local mn
local m4
local RequestDailyRewardState
local mM
local lM
local mt
local BuyExtraDisaster
local PendingExtraDisasters
local Workspace
local ShopConfig
local mY
local DisasterActive
local mF
local MapCenterZ
local mm
local m3
local l3
local mL
local MapCenterX
local ms
function fns.fn12()
    if not Toggles.WalkSpeedEnabled.Value then
        local rl = lI()
        if rl then
            rl.WalkSpeed = 16
        end
    end
end
function fns.onImportConfigFromClipboardTex()
    local sy_1
    local sw = Options.SaveManager_ImportSource.Value or ""
    local sw_1
    local sx = tostring(sw):match("^%s*(.-)%s*$")
    if sx == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    sw_1, sy_1 = pcall(HttpService.JSONDecode, HttpService, sx)
    local sx_1 = not sw_1 or type(sy_1) ~= "table" or type(sy_1.objects) ~= "table"
    if sx_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local sw_2 = 0
    for i, v in ipairs(sy_1.objects) do
        if mL(v) then
            sw_2 += 1
        end
    end
    if sw_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local sy_2 = sw_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(sw_2, sy_2), 6)
end
function fns.onInputBegan()
    mq = tick()
end
function fns.onCopyUSDTAddress()
    mc(ms, "Copied USDT address")
end
function fns.fn81(ba)
    local oc = lR()
    if not oc then
        return
    end
    if oc.PrimaryPart then
        oc:PivotTo(ba)
    else
        local oc_1 = m5()
        if oc_1 then
            oc_1.CFrame = ba
        end
    end
end
function fns.fn107(ac, ad, ae)
    return string.format("<b>%s</b> %s %s", ac, lT("-", "#5a6070"), lT(ad, ae))
end
function fns.fn111()
    local pZ_1
    local pY_1
    local pX_1
    local pW_1
    local pU = tick()
    if pU - mI >= 0.12 then
        mM = mF()
        mI = pU
    end
    local pU_1 = mY(mM)
    local pV = me(pU_1)
    pX_1, pZ_1, pW_1, pY_1 = lP()
    if mV then
        local p_ = math.abs(mV.X - pX_1) > pW_1 + 50 or math.abs(mV.Z - pZ_1) > pY_1 + 50
        if p_ then
            mV = nil
        end
    end
    local pW_2 = pV[1]
    local pX_2 = -math.huge
    for i, v in ipairs(pV) do
        local pV_1 = lW(v.X, v.Z, mM)
        if pV_1 > pX_2 then
            pX_2 = pV_1
            pW_2 = v
        end
    end
    if mV then
        local pV_2 = Vector3.new(mV.X, pU_1, mV.Z)
        local pU_2 = lW(pV_2.X, pV_2.Z, mM)
        if pU_2 >= 55 and pU_2 >= pX_2 - 35 then
            mV = pV_2
            return CFrame.new(mV)
        end
        mV = pW_2
        return CFrame.new(mV)
    end
    mV = pW_2
    return CFrame.new(mV)
end
function fns.fn113()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local oj = leaderstats and leaderstats:FindFirstChild("Volts")
    local oi_1 = oj
    if oj then
        oj = tonumber(oi_1.Value)
    end
    local oi_2 = oj
    local oo = if oi_2 then 1 else 0
    local om = 1953 * oo + 997 * (1 - oo)
    local on = 3676 * oo + 4055 * (1 - oo)
    if not ((om * 3429 + on * 1557 + om * on) % 16777213 == 2822384) then
        oi_2 = 0
    end
    return oi_2
end
function fns.fn135()
    local n3 = lR()
    local n4 = n3 and n3:FindFirstChildOfClass("Humanoid")
    return n4
end
function fns.fn140(aL)
    if Library.Unloaded then
        return false
    end
    local nV = Toggles[aL]
    return nV ~= nil and nV.Value == true
end
function fns.onCopyVenmoLink()
    mc(md, "Copied Venmo link")
end
function fns.fn191()
    if not Toggles.Fly.Value then
        local rj = lI()
        if rj then
            rj.PlatformStand = false
        end
    end
end
function fns.worker2()
    while not Library.Unloaded and lM.__ouroboros_gen == __ouroboros_gen do
        task.wait(0.15)
        if mD("AutoFarm") then
            mt()
        end
    end
end
function fns.onStepped()
    if Library.Unloaded then
        return
    end
    local ro = Toggles.NoClip and Toggles.NoClip.Value
    if not ro then
        local rn_1 = lZ() and mD("AutoFarm")
        ro = rn_1
    end
    if ro then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local rn_3 = descendant:IsA("BasePart") and descendant.CanCollide
                if rn_3 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.onCopyLitecoinAddress()
    mc(mH, "Copied Litecoin address")
end
function fns.fn245(dK)
    local qm = lN()
    lC += dK * 10
    local qn = Vector3.new(math.cos(lC) * 22, math.sin(lC * 2) * 10, math.sin(lC) * 22)
    local qo = CFrame.new(qm.Position + qn)
    l2(qo.Position)
    mp(qo)
    local qm_1 = m5()
    if qm_1 then
        qm_1.AssemblyLinearVelocity = Vector3.zero
        qm_1.AssemblyAngularVelocity = Vector3.zero
    end
end
function fns.onRenderStepped(f1)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local rB_1 = lI()
        if rB_1 then
            rB_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    local rB_2 = lZ() and m5() ~= nil
    if rB_2 then
        if mD("AutoBeacons") then
            lO()
        end
        if mD("AutoFarm") then
            l6(f1)
            return
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local rB_4 = m5()
        local rC = lI()
        mf = Workspace.CurrentCamera or mf
        if rB_4 and rC and mf then
            rC.PlatformStand = true
            local rC_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                rC_1 = rC_1 + mf.CFrame.LookVector
            end
            local rI = if UserInputService:IsKeyDown(Enum.KeyCode.S) then 1 else 0
            if rI == 1 then
                rC_1 = rC_1 - mf.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                rC_1 = rC_1 - mf.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                rC_1 = rC_1 + mf.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                rC_1 = rC_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                rC_1 = rC_1 - Vector3.new(0, 1, 0)
            end
            rB_4.Velocity = Vector3.zero
            if rC_1.Magnitude > 0 then
                rB_4.CFrame = rB_4.CFrame + rC_1.Unit * Options.FlySpeed.Value * f1
            end
        end
    end
end
function fns.fn320()
    local oP = tonumber(MapCenterX.Value) or 0
    local oP_1 = tonumber(MapCenterZ.Value) or 0
    local oP_2 = tonumber(MapBoundsHalfX.Value) or 0
    local oP_3 = tonumber(MapBoundsHalfZ.Value) or 0
    return oP, oP_1, oP_2, oP_3
end
function fns.fn324(aP, aQ)
    local nY = Options[aP]
    local nZ = nY and tonumber(nY.Value)
    if nZ then
        return nZ
    end
    return aQ
end
function fns.fn336(bs)
    local OwnedGears = LocalPlayer:FindFirstChild("OwnedGears")
    local oq = OwnedGears ~= nil and OwnedGears:FindFirstChild(bs) ~= nil
    return oq
end
function fns.fn345(b6, b7, b8, b9)
    local pb = Workspace:FindFirstChild(b7)
    if not pb then
        return
    end
    local pc = 0
    for i, child in ipairs(pb:GetChildren()) do
        mm(b6, child, b8)
        pc += 1
        if pc >= b9 then
            break
        end
    end
end
function fns.onTeleportToBorder()
    local dW = lN()
    l2(dW.Position)
    mp(dW)
end
function fns.fn373()
    mN(RequestDailyRewardState)
    local qT = 1
    while qT <= 7 do
        local qU = qT
        mN(ClaimDailyReward, qU)
        qT += 1
    end
end
function fns.onExportConfigToClipboard()
    local sq_1
    local sp_1
    sp_1, sq_1 = pcall(HttpService.JSONEncode, HttpService, l1())
    if not sp_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local sp_2 = setclipboard or toclipboard
    local sp_3 = type(sp_2) ~= "function" or not pcall(sp_2, sq_1)
    if sp_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
function fns.fn435()
    return LocalPlayer.Character
end
local function fn438(gH, gI)
    local rZ_1 = (gH == "Toggle" and Toggles or Options)[gI]
    local rY_2 = type(rZ_1) == "table" and rZ_1.Type == gH
    return rY_2 and rZ_1 or nil
end
local function onCopyEthereumAddress()
    mc(mw, "Copied Ethereum address")
end
local function fn464()
    if DisasterActive.Value == true then
        return true
    end
    local oN = tostring(Status.Value)
    return string.find(oN, "Survive", 1, true) ~= nil
end
local function onInputChanged(gz)
    local UserInputType = gz.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        mq = tick()
    end
end
local function antiGameplayPauseLoop()
    while true do
        if not Library.Unloaded and lM.__ouroboros_gen == __ouroboros_gen then
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                lE(true)
            end
            local sI_1 = mD("AutoDaily") and tick() - m1 >= 8
            if sI_1 then
                m1 = tick()
                mh()
            end
            if tick() - m4 >= 1.2 then
                m4 = tick()
                if mD("AutoBuyDisasters") then
                    mP()
                end
                if mD("AutoBuyGears") then
                    lX()
                end
            end
            continue
        end
        break
    end
end
local function fn494()
    if lZ() then
        return
    end
    local qx = lJ()
    local qy = mx()
    local GEARS = ShopConfig.GEARS
    for i, v in ipairs(m3) do
        local qP = if not m_(v) then 1 else 0
        if qP == 1 then
            local qA = GEARS[v]
            if qA and not qA.locked then
                if qy >= (qA.questUnlock or 0) and qx >= (qA.price or 0) then
                    mN(BuyGearEvent, v)
                    return
                end
            end
        end
    end
end
local function fn505()
    local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
    if not PlayerGui then
        return 0
    end
    for i, v in ipairs({ "QuestHUD", "NewQuestHUDGui", "new quest gui" }) do
        local ov = PlayerGui:FindFirstChild(v)
        if ov then
            for i, descendant in ipairs(ov:GetDescendants()) do
                if descendant:IsA("TextLabel") then
                    local ov_1 = string.match(descendant.Text, "Quest%s+(%d+)")
                    if ov_1 then
                        local ow = tonumber(ov_1) or 0
                        return ow
                    end
                end
            end
        end
    end
    return 0
end
local function onUnload()
    Library:Unload()
end
local function fn548()
    local sQ = lM.__ouroboros_gen or 0
    lM.__ouroboros_gen = sQ + 1
    pcall(function()
        connection:Disconnect()
        connection2:Disconnect()
        connection3:Disconnect()
        connection4:Disconnect()
        connection5:Disconnect()
        lE(false)
        local sO = lI()
        if sO then
            sO.PlatformStand = false
            sO.WalkSpeed = 16
        end
    end)
    pcall(function()
        Library:Unload()
    end)
    lM.__ouroboros_cleanup = nil
end
local function onCopySolanaAddress()
    mc(mo, "Copied Solana address")
end
local function antiAfkLoop()
    while true do
        if not Library.Unloaded and lM.__ouroboros_gen == __ouroboros_gen then
            task.wait(2)
            if Toggles.AntiAfk.Value then
                local sK_1 = tick() - mq
                local sL = tick() - ml
                if sK_1 >= 300 and sL >= 60 then
                    pcall(l3)
                else
                    if sK_1 < 300 and sL >= 300 then
                        pcall(l3)
                    end
                end
            end
            continue
        end
        break
    end
end
local function fn596()
    Library.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
local function fn603(cw, cy, cA)
    local pz = math.huge
    for i, v in ipairs(cA) do
        local pA = cw - v.x
        local pB = cy - v.z
        local pC = math.sqrt(pA * pA + pB * pB) - v.radius
        if pC < pz then
            pz = pC
        end
    end
    if pz == math.huge then
        return 1000
    end
    return pz
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local rw_1 = lI()
        if rw_1 then
            rw_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn619(cI)
    local pK = 260
    local BaseplateWater = Workspace:FindFirstChild("BaseplateWater")
    local pM = BaseplateWater and BaseplateWater:IsA("BasePart")
    if pM then
        pK = math.max(pK, BaseplateWater.Position.Y + BaseplateWater.Size.Y * 0.5 + 50)
    end
    for i, v in ipairs(cI) do
        if v.top and v.radius >= 40 then
            pK = math.max(pK, v.top + 40)
        end
    end
    if pK > 520 then
        pK = 520
    end
    return pK
end
local function fn628()
    if LocalPlayer:GetAttribute("HasEntered") then
        return
    end
    if tick() - mZ < 2 then
        return
    end
    mZ = tick()
    mN(RequestSpawn)
end
local function fn637(Z, aa)
    return string.format('<font color="%s">%s</font>', aa, Z)
end
local function onRscripts()
    mc(mi, "Copied Rscripts profile to clipboard")
end
local function worker()
    local q7_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local q6 = math.floor(os.clock() - l8)
        if q6 < 60 then
            q7_1 = q6 .. "s"
        elseif q6 < 3600 then
            q7_1 = string.format("%dm %ds", q6 // 60, q6 % 60)
        else
            q7_1 = string.format("%dh %dm", q6 // 3600, q6 % 3600 // 60)
        end
        Label:SetText(lG("Session time", q7_1, mU))
    end
end
local function fn686()
    if lZ() then
        return
    end
    if DisasterAmpCooldownRounds.Value > 0 then
        return
    end
    local qq = l9("ExtraDisasterAmount", 1)
    local qr = tonumber(PendingExtraDisasters.Value) or 0
    if qr >= qq then
        return
    end
    if qr >= 10 then
        return
    end
    local qq_1 = lJ()
    if qr > 0 and qq_1 < m6 then
        return
    end
    mN(BuyExtraDisaster)
end
local function fn688()
    pcall(function()
        connection:Disconnect()
        connection2:Disconnect()
        connection3:Disconnect()
        connection4:Disconnect()
        connection5:Disconnect()
    end)
    lE(false)
    local sS = lI()
    if sS then
        sS.PlatformStand = false
        sS.WalkSpeed = 16
    end
end
local function fn718(ex)
    local DiscordGroup = ex:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = l0 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = l0 })
end
local function fn727()
    local r5 = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local r6 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if r6 then
                local r6_1 = mb(k, v)
                if r6_1 then
                    r5[#r5 + 1] = r6_1
                end
            end
        end
    end
    table.sort(r5, function(g2, g3)
        if g2.type ~= g3.type then
            return g2.type < g3.type
        end
        return g2.idx < g3.idx
    end)
    return { objects = r5 }
end
local function onCopyPayPalLink()
    mc(mj, "Copied PayPal link")
end
local function fn734()
    lE(Toggles.AntiGameplayPause.Value)
end
local function onCopyBitcoinAddress()
    mc(mC, "Copied Bitcoin address")
end
local function fn769(bZ, b_, b0)
    local o2_1
    local o1_1
    local o0_1
    if not b_ then
        return
    end
    o2_1, o0_1, o1_1 = mR(b_)
    if not o2_1 then
        return
    end
    local o3 = #bZ + 1
    local o4 = o2_1.X
    local o5 = o2_1.Z
    local o6 = o0_1 or 8
    local o0_2 = b0 or 12
    bZ[o3] = { x = o4, z = o5, top = o1_1, radius = o6 + o0_2 }
end
local function fn786(gP, gQ)
    local Type = gQ.Type
    if Type == "Toggle" then
        return { idx = gP, type = "Toggle", value = gQ.Value == true }
    elseif Type == "Slider" then
        return { idx = gP, type = "Slider", value = tostring(gQ.Value) }
    elseif Type == "Dropdown" then
        return { idx = gP, type = "Dropdown", multi = gQ.Multi == true, value = gQ.Value }
    elseif Type == "Input" then
        local r2 = gQ.Value or ""
        return { idx = gP, type = "Input", text = tostring(r2) }
    elseif Type == "ColorPicker" then
        return { idx = gP, type = "ColorPicker", value = gQ.Value:ToHex(), transparency = gQ.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = gP,
            type = "KeyPicker",
            mode = gQ.Mode,
            key = gQ.Value,
            modifiers = gQ.Modifiers,
            toggled = gQ.Toggled
        }
    else
        return nil
    end
end
local function onCopyJoinScript_JobID()
    local eO = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, mB)
    mc(eO, "Copied join script to clipboard")
end
local function fn845()
    local n9 = lR()
    local oa = n9 and n9:FindFirstChild("HumanoidRootPart")
    return oa
end
local function fn868()
    local pk = {}
    mm(pk, Workspace:FindFirstChild("TornadoModel2"), 48)
    mm(pk, Workspace:FindFirstChild("TornadoModel"), 48)
    mm(pk, Workspace:FindFirstChild("killzone"), 20)
    lV(pk, "FallingMeteors", 45, 25)
    lV(pk, "LooseParts", 14, 15)
    lV(pk, "BrokenParts", 14, 15)
    lV(pk, "TornadoJunk", 16, 15)
    lV(pk, "GhostedBHParts", 24, 12)
    for i, child in ipairs(Workspace:GetChildren()) do
        if not mK[child.Name] then
            local pl = string.lower(child.Name)
            for k, v in mT do
                if string.find(pl, k, 1, true) then
                    mm(pk, child, v)
                    break
                end
            end
        end
    end
    return pk
end
local function fn870(S, T)
    if setclipboard then
        setclipboard(S)
    elseif toclipboard then
        toclipboard(S)
    end
    Library:Notify(T)
end
local function fn877()
    if not firetouchinterest then
        return false
    end
    local p7 = m5()
    if not p7 then
        return false
    end
    local ClockRemnants = Workspace:FindFirstChild("ClockRemnants")
    if not ClockRemnants then
        return false
    elseif tick() - m7 < 0.2 then
        return false
    else
        m7 = tick()
        local p9 = false
        for i, child in ipairs(ClockRemnants:GetChildren()) do
            local p8_1 = child.Name == "Remanat(unactivated)" or child:GetAttribute("IsClockRemnant") == true
            if p8_1 then
                local Ray2 = child:FindFirstChild("Ray2")
                local qa_1 = Ray2 and Ray2:IsA("BasePart")
                if qa_1 then
                    pcall(firetouchinterest, Ray2, p7, 0)
                    pcall(firetouchinterest, Ray2, p7, 1)
                    p9 = true
                end
            end
        end
        return p9
    end
end
local function fn883()
    local qX_1
    local qW_1
    if identifyexecutor then
        qX_1, qW_1 = identifyexecutor()
        local qY = qX_1 ~= ""
        local qZ = type(qX_1) == "string" and qY
        if qZ then
            local qY_1 = type(qW_1) == "string" and qW_1 ~= "" and qX_1 .. " " .. qW_1
            lB = qY_1 or qX_1
        end
    end
end
local function fn891(cR)
    local cT, cU, cV, cW = lP()
    local cX = math.max(cV - 18, 24)
    local cY = math.max(cW - 18, 24)
    return {
        Vector3.new(cT + cX, cR, cU),
        Vector3.new(cT - cX, cR, cU),
        Vector3.new(cT, cR, cU + cY),
        Vector3.new(cT, cR, cU - cY),
        Vector3.new(cT + cX, cR, cU + cY),
        Vector3.new(cT + cX, cR, cU - cY),
        Vector3.new(cT - cX, cR, cU + cY),
        Vector3.new(cT - cX, cR, cU - cY)
    }
end
local function fn897()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    ml = tick()
end
local function fn921()
    mc(mn, "Copied Discord invite to clipboard")
end
MapBoundsHalfZ = nil
lB = nil
lC = nil
MapBoundsHalfX = nil
lE = nil
MapCenterZ = nil
lG = nil
__ouroboros_gen = nil
lI = nil
lJ = nil
connection4 = nil
MapCenterX = nil
lM = nil
lN = nil
lO = nil
lP = nil
DisasterAmpCooldownRounds = nil
lR = nil
PendingExtraDisasters = nil
lT = nil
Status = nil
lV = nil
lW = nil
lX = nil
DisasterActive = nil
lZ = nil
RequestSpawn = nil
l0 = nil
l1 = nil
l2 = nil
l3 = nil
RequestDailyRewardState = nil
ClaimDailyReward = nil
l6 = nil
BuyGearEvent = nil
l8 = nil
l9 = nil
BuyExtraDisaster = nil
mb = nil
mc = nil
md = nil
me = nil
mf = nil
ShopConfig = nil
mh = nil
mi = nil
mj = nil
connection2 = nil
ml = nil
mm = nil
mn = nil
mo = nil
mp = nil
mq = nil
Options = nil
ms = nil
mt = nil
LocalPlayer = nil
Toggles = nil
mw = nil
mx = nil
connection3 = nil
Workspace = nil
SaveManager = nil
mB = nil
mC = nil
mD = nil
mF = nil
Label = nil
mH = nil
mI = nil
mK = nil
mL = nil
mM = nil
mN = nil
connection = nil
mP = nil
HttpService = nil
mR = nil
mT = nil
mU = nil
mV = nil
VirtualUser = nil
Library = nil
mY = nil
mZ = nil
m_ = nil
UserInputService = nil
m1 = nil
connection5 = nil
m3 = nil
m4 = nil
m5 = nil
m6 = nil
m7 = nil
local CoreGui, GuiService, mS
CoreGui = nil
GuiService = nil
mS = nil
local ny, nB
UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, LocalPlayer = nil, nil, nil, nil, nil, nil, nil
local s1_16 = game:GetService("Players")
local s1_9 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
LocalPlayer = s1_16.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
if setthreadidentity then
    setthreadidentity(8)
end
ShopConfig, BuyExtraDisaster, BuyGearEvent, ClaimDailyReward, RequestDailyRewardState, RequestSpawn, DisasterActive, Status, PendingExtraDisasters, DisasterAmpCooldownRounds, MapCenterX, MapCenterZ, MapBoundsHalfX, MapBoundsHalfZ, m6, m3, Library, SaveManager, Toggles, Options, mn, mi, mU, mH, mC, mw, ms, mo, mj, md, mc, l0, lT, lG = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local s1_1 = "Parkour Pandemic"
ShopConfig = require(s1_9:WaitForChild("ShopConfig"))
BuyExtraDisaster = s1_9:WaitForChild("BuyExtraDisaster")
BuyGearEvent = s1_9:WaitForChild("BuyGearEvent")
ClaimDailyReward = s1_9:WaitForChild("ClaimDailyReward")
RequestDailyRewardState = s1_9:WaitForChild("RequestDailyRewardState")
RequestSpawn = s1_9:WaitForChild("RequestSpawn")
DisasterActive = s1_9:WaitForChild("DisasterActive")
Status = s1_9:WaitForChild("Status")
PendingExtraDisasters = s1_9:WaitForChild("PendingExtraDisasters")
DisasterAmpCooldownRounds = s1_9:WaitForChild("DisasterAmpCooldownRounds")
MapCenterX = s1_9:WaitForChild("MapCenterX")
MapCenterZ = s1_9:WaitForChild("MapCenterZ")
MapBoundsHalfX = s1_9:WaitForChild("MapBoundsHalfX")
MapBoundsHalfZ = s1_9:WaitForChild("MapBoundsHalfZ")
m6 = 2000
m3 = { "SpeedGear", "BoostGear", "PowerGear" }
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
pcall(fn596)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
mn = "https://discord.gg/ehKVq7pf7v"
mi = "https://rscripts.net/@Ouroboros"
mc = fn870
l0 = fn921
lT = fn637
lG = fns.fn107
local s1_13 = "#7fd47f"
local s1_3 = "#6ec1ff"
mU = "#e8a34d"
local s1_21 = "#8b93a3"
mH = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
mC = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
mw = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
ms = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
mo = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
mj = "https://paypal.me/TheTruckerGOD"
md = "https://venmo.com/u/miserablemusic"
local s1_17 = "#345d9d"
local s1_7 = "#f7931a"
local s1_25 = "#627eea"
local s1_14 = "#26a17b"
local s1_5 = "#14f195"
local s1_22 = "#0070ba"
local s1_12 = "#008cff"
local s1_2 = getgenv and getgenv()
s1_16 = {}
local s1_27 = s1_2
local nN = if s1_27 then 1 else 0
local nL = 3423 * nN + 2580 * (1 - nN)
local nM = 3811 * nN + 3086 * (1 - nN)
if not ((nL * 1242 + nM * 2527 + nL * nM) % 16777213 == 10149603) then
    s1_27 = s1_16
end
lM = s1_27
s1_16 = lM.__ouroboros_gen or 0
__ouroboros_gen, s1_9 = nil, nil
s1_27 = 5
repeat
    s1_2 = (s1_27 * 1 + 1) % 2 + 1
    if s1_2 <= 1 then
        s1_2 = {
            "apq",
            "knerqhcmwph",
            "xwcuusa",
            "hglkoccesgv",
            "cezbk",
            "vntxtau",
            "wlujcdhlx",
            "sviezk",
            "mxhfrvm",
            "vjhedqf",
            "alzhqoo",
            "bpggf"
        }
        if s1_2[(s1_27 * 57 + 79) % 12 + 1] <= s1_2[(s1_27 * 57 + 79) % 12 + 1] then
            lM.__ouroboros_gen = s1_16 + 1
            __ouroboros_gen = lM.__ouroboros_gen
        else
            lM.__ouroboros_gen = __ouroboros_gen + 1
            lM = s1_16.__ouroboros_gen
        end
        s1_27 = (s1_27 + 5) % 8
    else
        if s1_27 * 48064299 + 5 + 5 <= s1_27 * 48064299 + 5 + 5 + 5 then
            s1_9 = lM.__ouroboros_cleanup
        else
            lM = s1_9.__ouroboros_cleanup
        end
        s1_27 = (s1_27 + 7) % 8
    end
until (s1_27 * 3 + 4) % 8 == 7
if type(s1_9) == "function" then
    s1_16 = 4
    repeat
        s1_27 = {
            "nzzj",
            "bfcmfoo",
            "vomye",
            "jcabhb",
            "rjmuobwbc",
            "jazxmmukb",
            "ngcezyv",
            "bychqesmk",
            "jekv",
            "xfchj",
            "ovymioovsob",
            "ltss"
        }
        local tW = s1_16
        s1_2 = s1_27[tW % 12 + 1]
        if s1_2:len() <= s1_2:reverse():rep(tW % 3 + 2):len() then
            pcall(s1_9)
            lM.__ouroboros_cleanup = nil
        else
            pcall(lM)
            s1_9.__ouroboros_cleanup = nil
        end
        s1_16 = (s1_16 + 7) % 8
    until (s1_16 * 5 + 2) % 8 == 1
end
lC, m7, m4, m1, mZ, mV, mM, mI, mT, mK, s1_2, mD, l9, lR, lI, m5, mN, mp, l2, lJ, m_, mx, lZ, lP, mR, mm, lV, mF, lW, mY, me, lN, lO, mt, l6, mP, lX, mh, s1_23 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
lC = 0
m7 = 0
m4 = 0
m1 = 0
mZ = 0
mV = nil
mM = {}
mI = 0
mD = fns.fn140
l9 = fns.fn324
lR = fns.fn435
lI = fns.fn135
m5 = fn845
mN = function(a5, ...)
    local a6
    a6 = { ... }
    pcall(function()
        a5:FireServer(table.unpack(a6))
    end)
end
mp = fns.fn81
l2 = function(bg)
    if typeof(bg) ~= "Vector3" then
        return
    end
    if not Workspace.StreamingEnabled then
        return
    end
    pcall(function()
        LocalPlayer:RequestStreamAroundAsync(bg)
    end)
end
lJ = fns.fn113
m_ = fns.fn336
mx = fn505
lZ = fn464
lP = fns.fn320
mR = function(bT)
    local oW_1
    local oV_1
    if bT:IsA("BasePart") then
        return bT.Position, math.max(bT.Size.X, bT.Size.Z) * 0.5, bT.Position.Y + bT.Size.Y * 0.5
    elseif bT:IsA("Model") then
        oV_1, oW_1 = pcall(function()
            return bT:GetPivot()
        end)
        if not oV_1 then
            return nil
        end
        local oV_2 = bT:GetExtentsSize()
        return oW_1.Position, math.max(oV_2.X, oV_2.Z) * 0.5, oW_1.Position.Y + oV_2.Y * 0.5
    else
        return nil
    end
end
mm = fn769
lV = fns.fn345
mT = {
    tornado = 48,
    meteor = 40,
    blackhole = 40,
    wave = 30,
    tide = 30,
    star = 25,
    ember = 20,
    frost = 20
}
mK = {
    FallingMeteors = true,
    TornadoJunk = true,
    TornadoDirtVacuum = true,
    TornadoModel2 = true,
    TornadoModel = true,
    killzone = true,
    BaseplateWater = true,
    LooseParts = true,
    BrokenParts = true,
    GhostedBHParts = true,
    DisasterAmpModel = true,
    DisasterAmpDetectionCircle = true
}
mF = fn868
lW = fn603
mY = fn619
me = fn891
lN = fns.fn111
lO = fn877
mt = fn628
l6 = fns.fn245
mP = fn686
lX = fn494
mh = fns.fn373
if ((lN and not lI or not s1_23 and me) and (s1_23 or me or (not me or not s1_23)) or (not lN and s1_23 or (s1_23 or not me)) and ((lI or lI) and (me or not lI))) and not ((lN and not lI or not s1_23 and me) and (s1_23 or me or (not me or not s1_23)) or (not lN and s1_23 or (s1_23 or not me)) and ((lI or lI) and (me or not lI))) then
    s1_1 = s1_2:CreateWindow({
        CornerRadius = 0,
        Footer = { { Text = Library, Copyable = true }, mn, "|" },
        NotifySide = "Right",
        Title = "Ouroboros",
        ShowCustomCursor = false,
        Font = Enum.Font.BuilderSans,
        Icon = 78539693571783
    })
else
    s1_2 = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = mn, Copyable = true }, "|", s1_1 },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0
    })
end
local s1_6 = {
    Info = s1_2:AddTab("Info", "info"),
    Main = s1_2:AddTab("Main", "gamepad-2"),
    Shop = s1_2:AddTab("Shop", "shopping-bag"),
    Player = s1_2:AddTab("Player", "person-standing"),
    Settings = s1_2:AddTab("Settings", "settings")
}
s1_23 = fn718
for k, v in s1_6 do
    s1_23(v)
end
lB, s1_27, s1_2, Label, mB, s1_9 = nil, nil, nil, nil, nil, nil
s1_16 = 20
repeat
    s1_23 = (s1_16 * 2 + 1) % 3 + 1
    if s1_23 <= 2 then
        if s1_23 <= 1 then
            s1_23 = (vector.create((s1_16 * 1 + 3) % 11 + 1, (s1_16 * 2 + 3) % 13 + 1, (s1_16 * 13 + 6) % 17 + 1))
            s1_26 = (vector.create((s1_16 * 6 + 4) % 11 + 1, (s1_16 * 4 + 2) % 13 + 1, (s1_16 * 8 + 11) % 17 + 1))
            local t_ = vector.dot(s1_23, s1_26)
            if t_ * t_ <= vector.dot(s1_23, s1_23) * vector.dot(s1_26, s1_26) then
                mB = tostring(game.JobId)
            else
                s1_2 = tostring(game.JobId)
            end
            s1_16 = (s1_16 + 8) % 24
        else
            s1_23 = {
                "ugnujqxahsfs",
                "zgdhjkrh",
                "edetkvbas",
                "gjlcdcpcg",
                "ohyumxg",
                "jkiay",
                "crmdxeobm",
                "cacai",
                "jjk",
                "sdchacqjyogt",
                "rlrbax",
                "gxycxcse",
                "vqeni",
                "srfzpu"
            }
            if s1_23[(s1_16 * 71 + 6) % 14 + 1] < s1_23[(s1_16 * 71 + 6) % 14 + 1] then
                mB = #s1_9 > 18
            else
                s1_9 = #mB > 18
            end
            s1_16 = (s1_16 + 8) % 24
        end
    else
        if (s1_16 * 2 + 1) * 4 % 3 == ((s1_16 * 2 + 1) * 4 + 0) % 3 then
            lB = "Unknown"
            pcall(fn883)
            s1_27 = s1_6.Info:AddLeftGroupbox("Account", "circle-user")
            s1_27:AddLabel(lG("User", LocalPlayer.Name, s1_13), true)
            s1_27:AddLabel(lG("Status", "Keyless", s1_13), true)
            s1_27:AddLabel(lG("Executor", lB, s1_13), true)
            s1_2 = s1_6.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            s1_2:AddLabel(lT(s1_1 .. " [" .. tostring(game.PlaceId) .. "]", s1_3), true)
            s1_2:AddLabel(lG("Place ID", tostring(game.PlaceId), s1_3), true)
            Label = s1_2:AddLabel(lG("Session time", "0s", mU), true)
        else
            s1_1 = "Unknown"
            pcall(fn883)
            s1_6 = s1_27.Info:AddLeftGroupbox("Account", "circle-user")
            s1_6:AddLabel(s1_2("User", lG.Name, Label), true)
            s1_6:AddLabel(s1_2("Status", "Keyless", Label), true)
            s1_6:AddLabel(s1_2("Executor", "Unknown", Label), true)
            lB = s1_27.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            lB:AddLabel(LocalPlayer(s1_13 .. " [" .. tostring(game.PlaceId) .. "]", lT), true)
            lB:AddLabel(s1_2("Place ID", tostring(game.PlaceId), lT), true)
            mU = lB:AddLabel(s1_2("Session time", "0s", s1_3), true)
        end
        s1_16 = (s1_16 + 14) % 24
    end
until (s1_16 * 23 + 22) % 24 == 20
if s1_9 then
    s1_16 = 2
    repeat
        s1_27 = (vector.create((s1_16 * 3 + 1) % 11 + 1, (s1_16 * 5 + 10) % 13 + 1, (s1_16 * 10 + 5) % 17 + 1))
        local tJ = vector.floor(s1_27) + vector.ceil(s1_27 * -1)
        if vector.dot(tJ, tJ) == 2 then
            mB = string.sub(s1_9, 1, 18) .. "..."
        else
            s1_9 = string.sub(mB, 1, 18) .. "..."
        end
        s1_16 = (s1_16 + 2) % 4
    until (s1_16 * 3 + 0) % 4 == 0
end
s1_16 = s1_9 or mB
l8, connection, connection2, mf, connection3, mq, ml, connection4, connection5, nB, lE, l3, mS, mb, l1, mL, ny = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local nz = s1_16
s1_2:AddLabel(lG("Server", nz, s1_21), true)
s1_2:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
l8 = os.clock()
task.spawn(worker)
s1_26 = s1_6.Info:AddRightGroupbox("Scripts", "package")
s1_26:AddLabel(lT("Included in this hub", s1_21), true)
s1_26:AddLabel(lT(s1_1, s1_3), true)
s1_9 = s1_6.Info:AddRightGroupbox("Features", "list")
s1_9:AddLabel(lT("Auto Farm", s1_3), true)
s1_9:AddLabel(lT("Auto Shop", mU), true)
s1_9:AddLabel(lT("Misc Utilities", s1_21), true)
s1_27 = s1_6.Info:AddRightGroupbox("Socials", "link")
s1_27:AddButton({ Text = "Discord", Func = l0 })
s1_27:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = s1_6.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = l0 })
local DonationsGroup = s1_6.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(lT("All donations are optional but appreciated.", mU), true)
DonationsGroup:AddLabel(lT("If you donate you get a special role, just PING after you donate.", s1_13), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(lT("LTC / Litecoin", s1_17), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = fns.onCopyLitecoinAddress })
DonationsGroup:AddLabel(lT("BTC / Bitcoin", s1_7), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(lT("ETH / Ethereum", s1_25), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(lT("USDT", s1_14), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
DonationsGroup:AddLabel(lT("Solana", s1_5), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(lT("PayPal", s1_22), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(lT("Venmo", s1_12), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(lT("Don't have any of the listed currencies but still wanna donate?", s1_21), true)
DonationsGroup:AddLabel(lT("DM me and we'll work something out.", s1_3), true)
local FaqGroup = s1_6.Info:AddRightGroupbox("FAQ", "circle-help")
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
local FarmGroup = s1_6.Main:AddLeftGroupbox("Farm", "zap")
FarmGroup:AddToggle("AutoFarm", { Text = "Auto Farm", Default = false })
FarmGroup:AddToggle("AutoBeacons", { Text = "Auto Beacons", Default = false })
FarmGroup:AddToggle("AutoDaily", { Text = "Auto Claim Daily Rewards", Default = false })
local TeleportGroup = s1_6.Main:AddRightGroupbox("Teleport", "map-pin")
TeleportGroup:AddButton({ Text = "Teleport to Border", Func = fns.onTeleportToBorder })
local ShopGroup = s1_6.Shop:AddLeftGroupbox("Shop", "store")
ShopGroup:AddToggle("AutoBuyDisasters", { Text = "Auto Buy Extra Disasters", Default = false })
ShopGroup:AddSlider("ExtraDisasterAmount", { Text = "Extra Disasters", Default = 1, Min = 1, Max = 10, Rounding = 0 })
ShopGroup:AddToggle("AutoBuyGears", { Text = "Auto Buy Gears", Default = false })
local MovementGroup = s1_6.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
s1_23 = s1_6.Player:AddRightGroupbox("Fly", "feather")
s1_23:AddToggle("Fly", { Text = "Fly", Default = false })
s1_23:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
lE = function(fp)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not fp)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not fp
        end
    end)
    if not fp then
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
Toggles.AntiGameplayPause:OnChanged(fn734)
Toggles.Fly:OnChanged(fns.fn191)
Toggles.WalkSpeedEnabled:OnChanged(fns.fn12)
connection = RunService.Stepped:Connect(fns.onStepped)
connection2 = UserInputService.JumpRequest:Connect(onJumpRequest)
mf = Workspace.CurrentCamera
connection3 = RunService.RenderStepped:Connect(fns.onRenderStepped)
local MenuGroup = s1_6.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
mq = tick()
ml = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local rS = v
        pcall(function()
            rS:Disable()
        end)
    end
end)
l3 = fn897
connection4 = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection5 = UserInputService.InputChanged:Connect(onInputChanged)
if (DonationsGroup and not l1) or (MovementGroup and not MovementGroup or ny) or not ((DonationsGroup and not l1) or (MovementGroup and not MovementGroup or ny)) then
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    MenuGroup:AddButton({ Text = "Unload", Func = onUnload })
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("OuroborosHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(s1_6.Settings)
    ThemeManager:LoadDefault()
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/ParkourPandemic")
    nB = SaveManager:BuildConfigSection(s1_6.Settings)
else
    Library:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Library:AddButton({ Text = "Unload", Func = onUnload })
    s1_6:SetLibrary(nB)
    s1_6:SetFolder("OuroborosHub")
    s1_6:SaveDefault("Evil Hello Kitty")
    s1_6:ApplyToTab(SaveManager.Settings)
    s1_6:LoadDefault()
    ThemeManager:SetLibrary(nB)
    ThemeManager:IgnoreThemeSettings()
    ThemeManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    ThemeManager:SetFolder("OuroborosHub/ParkourPandemic")
    ThemeManager:BuildConfigSection(SaveManager.Settings)
end
mS = fn438
mb = fn786
l1 = fn727
mL = function(g5)
    local sm
    sm = nil
    local sn = type(g5) ~= "table" or type(g5.idx) ~= "string" or type(g5.type) ~= "string" or SaveManager.Ignore[g5.idx]
    if sn then
        return false
    end
    sm = mS(g5.type, g5.idx)
    if not sm then
        return false
    end
    local sn_1 = pcall(function()
        if g5.type == "Input" then
            if type(g5.text) ~= "string" then
                return
            end
            sm:SetValue(g5.text)
        elseif g5.type == "ColorPicker" then
            sm:SetValueRGB(Color3.fromHex(g5.value), g5.transparency)
        elseif g5.type == "KeyPicker" then
            sm:SetValue({ g5.key, g5.mode, g5.modifiers })
            if g5.mode == "Toggle" and g5.toggled ~= nil then
                sm.Toggled = g5.toggled
                sm:Update()
            end
        else
            sm:SetValue(g5.value)
        end
    end)
    return sn_1
end
do
    nB:AddDivider()
    nB:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    nB:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
    nB:AddButton("Import Config from Clipboard Text", fns.onImportConfigFromClipboardTex)
    SaveManager:LoadAutoloadConfig()
    task.spawn(fns.worker2)
    task.spawn(antiGameplayPauseLoop)
    task.spawn(antiAfkLoop)
    ny = fn548
end
lM.__ouroboros_cleanup = ny
Library:OnUnload(fn688)
