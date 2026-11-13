local fns = {}
local v__19, v__37
local n8
local SaveManager
local oA
local ph
local oe
local PetConfig
local GetWorldState
local oG
local ol
local RebirthConfig
local GetTrailState
local Options
local ot
local pa
local oS
local nP
local connection
local pg
local LeaveDummy
local nV
local oF
local oj
local VirtualUser
local n0
local oL
local nI
local ToggleSpinjitsu
local o9
local GetSpinjitsuState
local oR
local nO
local pf
local connection2
local oX
local nU
local oE
local LevelConfig
local n_
local oK
local nH
local op
local o8
local n5
local oQ
local ox
local pe
local ob
local oW
local oD
local oh
local HttpService
local Library
local oJ
local nG
local oo
local o7
local n4
local oP
local pd
local oa
local oC
local pj
local og
local o0
local nY
local nF
local RequestRebirth
local o6
local n3
local oO
local nL
local ov
local pc
local n9
local WorldUtil
local nR
local oB
local pi
local of
local o_
local nX
local oH
local nE
local om
local oN
local nK
local ou
local pb
function fns.fn10()
    local rk = ox("WinPlate")
    if type(rk) == "string" then
        local rl = tonumber(rk:match("%d+"))
        if rl then
            return math.clamp(rl, 1, oO)
        end
        return 1
    end
    return 1
end
function fns.onJumpRequest()
    if Library.Unloaded then
        return
    end
    if nO.InfJump and nO.InfJump.Value then
        local us_1 = nI()
        if us_1 then
            us_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.fn32(eP)
    for i, v in ipairs(WorldUtil.CollectChildren("Dummies")) do
        if v.Name == eP then
            return v
        end
    end
    return nil
end
function fns.fn42(ao, ap)
    if ao.WinsCost == ap.WinsCost then
        return ao.JitsuPerSecond < ap.JitsuPerSecond
    end
    return ao.WinsCost < ap.WinsCost
end
function fns.fn52(aA, aB)
    if setclipboard then
        setclipboard(aA)
    elseif toclipboard then
        toclipboard(aA)
    end
    Library:Notify(aB)
end
function fns.fn73(cS)
    local ry = om[cS]
    if ry and ry.Parent then
        return ry
    end
    local ry_1 = n3(cS)
    local Map = oN:FindFirstChild("Map")
    local rA = Map and Map:FindFirstChild("World" .. ry_1)
    local rz_2 = rA and rA:FindFirstChild("Stages")
    local ry_3 = rz_2
    if rz_2 then
        rz_2 = ry_3:FindFirstChild("Stage" .. cS)
    end
    local ry_4 = rz_2
    if ry_4 then
        om[cS] = ry_4
    end
    return ry_4
end
function fns.fn75(dG)
    return dG ~= nil and dG.Parent ~= nil and dG.CanCollide == true and dG.Transparency < 1
end
function fns.onCopyJoinScript_JobID()
    local g6 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, oE)
    nG(g6, "Copied join script to clipboard")
end
function fns.worker8()
    while not Library.Unloaded do
        if oQ("AutoHatch") then
            pcall(op)
        end
        task.wait(ob("HatchDelay", 0.4))
    end
end
function fns.onUnload()
    Library:Unload()
end
function fns.onRenderStepped(id)
    if Library.Unloaded then
        return
    end
    if nO.WalkSpeedEnabled and nO.WalkSpeedEnabled.Value then
        local ux_1 = nI()
        if ux_1 then
            ux_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if nO.Fly and nO.Fly.Value then
        local ux_3 = o9()
        local uy = nI()
        oR = oN.CurrentCamera or oR
        if ux_3 and uy and oR then
            uy.PlatformStand = true
            local uy_1 = Vector3.zero
            if pa:IsKeyDown(Enum.KeyCode.W) then
                uy_1 = uy_1 + oR.CFrame.LookVector
            end
            if pa:IsKeyDown(Enum.KeyCode.S) then
                uy_1 = uy_1 - oR.CFrame.LookVector
            end
            if pa:IsKeyDown(Enum.KeyCode.A) then
                uy_1 = uy_1 - oR.CFrame.RightVector
            end
            if pa:IsKeyDown(Enum.KeyCode.D) then
                uy_1 = uy_1 + oR.CFrame.RightVector
            end
            if pa:IsKeyDown(Enum.KeyCode.Space) then
                uy_1 = uy_1 + Vector3.new(0, 1, 0)
            end
            if pa:IsKeyDown(Enum.KeyCode.LeftControl) then
                uy_1 = uy_1 - Vector3.new(0, 1, 0)
            end
            ux_3.Velocity = Vector3.zero
            if uy_1.Magnitude > 0 then
                ux_3.CFrame = ux_3.CFrame + uy_1.Unit * Options.FlySpeed.Value * id
            end
        end
    end
end
function fns.worker6()
    while not Library.Unloaded do
        if oQ("AutoSpinjitsuMode") then
            pcall(oo)
        end
        task.wait(0.5)
    end
end
function fns.fn163(c6, c7)
    local rC = n9(c6)
    if rC then
        return rC
    end
    o7(n3(c6))
    local rD = os.clock()
    local rF = rD + (c7 or 6)
    while true do
        local rD_1 = os.clock() < rF and not Library.Unloaded
        if rD_1 then
            local rC_1 = n9(c6)
            if rC_1 then
                return rC_1
            end
            task.wait(0.15)
            continue
        end
        break
    end
    return n9(c6)
end
function fns.fn168()
    if not nO.Fly.Value then
        local ud = nI()
        if ud then
            ud.PlatformStand = false
        end
    end
end
function fns.worker7()
    while not Library.Unloaded do
        if oQ("AutoRebirth") then
            pcall(nV)
        end
        task.wait(ob("RebirthDelay", 1))
    end
end
function fns.fn236()
    return pc("Wins")
end
function fns.fn240()
    ph(nO.AntiGameplayPause.Value)
end
function fns.fn242(d1)
    if not o7(n3(d1)) then
        return false
    end
    local r8 = oP(d1, 6)
    if not r8 then
        return false
    end
    local sd = 1
    local sb = oK
    while true do
        if not (sd <= sb) then
            return true
        end
        local se = sd
        local r9 = Library.Unloaded or not oQ("AutoWin")
        if r9 then
            break
        end
        local r9_1 = oa(r8, se)
        if oh(r9_1) then
            nL(r8, se)
            task.wait(0.15)
        end
        sd += 1
    end
    return false
end
function fns.fn258(dp)
    local rN = dp and dp:FindFirstChild("Won")
    local rO = rN
    if rN then
        rN = rO:FindFirstChild("Win")
    end
    local rO_1 = rN
    if rN then
        rN = rO_1:FindFirstChild("TouchPart")
    end
    local rO_2 = rN
    if rN then
        rN = rO_2:IsA("BasePart")
    end
    if rN then
        return rO_2
    end
    return nil
end
function fns.fn259(iQ, iR)
    local uS_1 = (iQ == "Toggle" and nO or Options)[iR]
    local uR_2 = type(uS_1) == "table" and uS_1.Type == iQ
    return uR_2 and uS_1 or nil
end
function fns.fn260()
    return pc("Rebirths")
end
function fns.fn261()
    local rh_1
    local rg_1
    rg_1, rh_1 = pcall(function()
        return GetTrailState:InvokeServer()
    end)
    local ri = rg_1 and type(rh_1) == "table" and type(rh_1.Owned) == "table"
    if ri then
        n8 = rh_1.Owned
    end
end
function fns.fn264(cu)
    return math.clamp(math.ceil(cu / 15), 1, 3)
end
function fns.fn272()
    local tC_1
    local tB_1
    local tA_1
    local ty = ot()
    local ty_1
    local tz = RebirthConfig.GetRequiredLevel(ty)
    tB_1, ty_1, tA_1, tC_1 = LevelConfig.Resolve(oB(), tz)
    if tC_1 == true then
        pcall(function()
            RequestRebirth:FireServer()
        end)
    end
end
function fns.fn289(aK, aL, aM)
    return string.format("<b>%s</b> %s %s", aK, oW("-", "#5a6070"), oW(aL, aM))
end
function fns.fn315()
    local t2_1
    local t1_1
    if identifyexecutor then
        t2_1, t1_1 = identifyexecutor()
        local t3 = t2_1 ~= ""
        local t4 = type(t2_1) == "string" and t3
        if t4 then
            local t3_1 = type(t1_1) == "string" and t1_1 ~= "" and t2_1 .. " " .. t1_1
            pf = t3_1 or t2_1
        end
    end
end
function fns.onInputChanged(iJ)
    local UserInputType = iJ.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        pj = tick()
    end
end
function fns.worker3()
    while not Library.Unloaded do
        task.wait(1)
        if oQ("AntiGameplayPause") then
            ph(true)
        end
    end
end
function fns.onRscripts()
    nG(oA, "Copied Rscripts profile to clipboard")
end
function fns.onCopySolanaAddress()
    nG(nP, "Copied Solana address")
end
function fns.fn349()
    return pc("Jitsu")
end
function fns.fn361(a6)
    local qA = nO[a6]
    return qA ~= nil and qA.Value == true
end
function fns.fn400(ac, ad)
    if ac.WinsCost == ad.WinsCost then
        return ac.GainMultiplier < ad.GainMultiplier
    end
    return ac.WinsCost < ad.WinsCost
end
function fns.fn421()
    local CurrentCamera = oN.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    pg = tick()
end
function fns.fn438(fj)
    for i, v in ipairs(WorldUtil.CollectChildren("Pads")) do
        local SettingsFolder = v:FindFirstChild("SettingsFolder")
        local s1 = SettingsFolder and SettingsFolder:FindFirstChild("TornadoName")
        local s0_1 = s1
        if s1 then
            s1 = s0_1.Value == fj
        end
        if s1 then
            return v
        end
    end
    return nil
end
function fns.worker()
    local t7_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local t6 = math.floor(os.clock() - ol)
        if t6 < 60 then
            t7_1 = t6 .. "s"
        elseif t6 < 3600 then
            t7_1 = string.format("%dm %ds", t6 // 60, t6 % 60)
        else
            t7_1 = string.format("%dh %dm", t6 // 3600, t6 % 3600 // 60)
        end
        oL:SetText(oG("Session time", t7_1, og))
    end
end
function fns.fn449()
    local rr_1
    local attr = oJ:GetAttribute("CurrentWorld")
    local rq_1
    if type(attr) == "number" then
        return attr
    end
    rq_1, rr_1 = pcall(function()
        return GetWorldState:InvokeServer()
    end)
    local rs = rq_1 and type(rr_1) == "table" and type(rr_1.Current) == "number"
    if rs then
        return rr_1.Current
    end
    return 1
end
function fns.fn460()
    if oJ:GetAttribute("AttachedDummy") then
        pcall(function()
            LeaveDummy:FireServer()
        end)
        task.wait(0.2)
    end
end
function fns.fn480()
    local sn = ou()
    oj()
    nX()
    local ss = 1
    while ss <= sn do
        local st = ss
        local so_1 = Library.Unloaded or not oQ("AutoWin")
        if so_1 then
            return
        end
        if not ov(st) then
            task.wait(0.5)
            return
        end
        ss += 1
    end
    local so_2 = Library.Unloaded or not oQ("AutoWin")
    if so_2 then
        return
    end
    if not pb(sn) then
        task.wait(0.5)
        return
    end
    task.wait(0.2)
end
function fns.fn483(iY, iZ)
    local Type = iZ.Type
    if Type == "Toggle" then
        return { idx = iY, type = "Toggle", value = iZ.Value == true }
    elseif Type == "Slider" then
        return { idx = iY, type = "Slider", value = tostring(iZ.Value) }
    elseif Type == "Dropdown" then
        return { idx = iY, type = "Dropdown", multi = iZ.Multi == true, value = iZ.Value }
    elseif Type == "Input" then
        local uZ = iZ.Value or ""
        return { idx = iY, type = "Input", text = tostring(uZ) }
    elseif Type == "ColorPicker" then
        return { idx = iY, type = "ColorPicker", value = iZ.Value:ToHex(), transparency = iZ.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = iY,
            type = "KeyPicker",
            mode = iZ.Mode,
            key = iZ.Value,
            modifiers = iZ.Modifiers,
            toggled = iZ.Toggled
        }
    else
        return nil
    end
end
function fns.fn490()
    if oJ:GetAttribute("AttachedDummy") then
        oj()
    end
    if oJ:GetAttribute("SpinjitsuActive") ~= true then
        pcall(function()
            ToggleSpinjitsu:FireServer()
        end)
        task.wait(0.2)
    end
end
function fns.fn491()
    nG(oC, "Copied Discord invite to clipboard")
end
function fns.fn500(ai, aj)
    if ai.GainMultiplier == aj.GainMultiplier then
        return ai.RebirthReq < aj.RebirthReq
    end
    return ai.GainMultiplier < aj.GainMultiplier
end
function fns.fn521()
    if oJ:GetAttribute("AttachedDummy") then
        return
    end
    if oJ:GetAttribute("InPvP") then
        return
    end
    local t0 = if oJ:GetAttribute("SpinjitsuActive") ~= true then 1 else 0
    if t0 == 1 then
        pcall(function()
            ToggleSpinjitsu:FireServer()
        end)
    end
end
function fns.onCopyPayPalLink()
    nG(nK, "Copied PayPal link")
end
function fns.onInputBegan()
    pj = tick()
end
function fns.onCopyUSDTAddress()
    nG(nR, "Copied USDT address")
end
local function fn560()
    if not nO.WalkSpeedEnabled.Value then
        local uf = nI()
        if uf then
            uf.WalkSpeed = 16
        end
    end
end
local function fn565()
    nE()
    local tf = oD()
    for i, v in ipairs(oF) do
        local tg = Library.Unloaded or not oQ("AutoBuySpinjitsus")
        if tg then
            return
        end
        if of[v.Key] ~= true and v.WinsCost <= tf then
            local tg_2 = n4(v.Key)
            local th = tg_2 and o7(pd(tg_2))
            if th then
                local th_1 = n4(v.Key) or tg_2
                local TouchPart = th_1:FindFirstChild("TouchPart")
                local tg_4 = TouchPart and TouchPart:IsA("BasePart")
                if tg_4 then
                    oj()
                    oS(TouchPart.CFrame)
                    task.wait(0.35)
                    nE()
                    tf = oD()
                end
            end
        end
    end
end
local function fn566(S, T)
    local qn = PetConfig.Eggs[S] and PetConfig.Eggs[S].Cost or 0
    local qo = PetConfig.Eggs[T] and PetConfig.Eggs[T].Cost
    local qs = if qo then 1 else 0
    local qq = 1430 * qs + 3811 * (1 - qs)
    local qr = 3435 * qs + 1943 * (1 - qs)
    if not ((qq * 1392 + qr * 2661 + qq * qr) % 16777213 == 16043145) then
        qo = 0
    end
    return qn < qo
end
local function fn568(bb)
    local qD = Options[bb]
    local qD_1 = qD and qD.Value
    local qI = if qD_1 then 1 else 0
    local qG = 1705 * qI + 4068 * (1 - qI)
    local qH = 1342 * qI + 193 * (1 - qI)
    if not ((qG * 612 + qH * 2688 + qG * qH) % 16777213 == 6938866) then
        qD_1 = nil
    end
    return qD_1
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if nO.NoClip and nO.NoClip.Value then
        local Character = oJ.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local uh_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if uh_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function onExportConfigToClipboard()
    local vp_1
    local vo_1
    vo_1, vp_1 = pcall(HttpService.JSONEncode, HttpService, o_())
    if not vo_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local vo_2 = setclipboard or toclipboard
    local vo_3 = type(vo_2) ~= "function" or not pcall(vo_2, vp_1)
    if vo_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function worker10()
    while not Library.Unloaded do
        if oQ("AutoBuySpinjitsus") then
            pcall(oH)
        end
        task.wait(ob("SpinjitsuBuyDelay", 1))
    end
end
local function onCopyVenmoLink()
    nG(nH, "Copied Venmo link")
end
local function onImportConfigFromClipboardTex()
    local vu_1
    local vs = Options.SaveManager_ImportSource.Value
    local vs_1
    local vy = if vs then 1 else 0
    local vw = 443 * vy + 2277 * (1 - vy)
    local vx = 1169 * vy + 2246 * (1 - vy)
    if not ((vw * 680 + vx * 1929 + vw * vx) % 16777213 == 3074108) then
        vs = ""
    end
    local vt = tostring(vs):match("^%s*(.-)%s*$")
    if vt == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    vs_1, vu_1 = pcall(HttpService.JSONDecode, HttpService, vt)
    local vt_1 = not vs_1
    local vy_1 = if vt_1 then 1 else 0
    local vw_1 = 1474 * vy_1 + 2246 * (1 - vy_1)
    local vx_1 = 101 * vy_1 + 2185 * (1 - vy_1)
    if not ((vw_1 * 3804 + vx_1 * 3613 + vw_1 * vx_1) % 16777213 == 6120883) then
        vt_1 = type(vu_1) ~= "table"
    end
    if not vt_1 then
        vt_1 = type(vu_1.objects) ~= "table"
    end
    if vt_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local vs_2 = 0
    for i, v in ipairs(vu_1.objects) do
        if nY(v) then
            vs_2 += 1
        end
    end
    if vs_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local vu_2 = vs_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(vs_2, vu_2), 6)
end
local function worker2()
    while not Library.Unloaded do
        task.wait(2)
        if oQ("AntiAfk") then
            local vF = tick() - pj
            local vG = tick() - pg
            if vF >= 300 and vG >= 60 then
                pcall(oX)
            else
                if vF < 300 and vG >= 300 then
                    pcall(oX)
                end
            end
        end
    end
end
local function worker4()
    while not Library.Unloaded do
        if oQ("AutoWin") then
            pcall(oe)
        end
        task.wait(0.35)
    end
end
local function fn695(bg, bh)
    local qJ = Options[bg]
    local qK = qJ and tonumber(qJ.Value)
    if qK then
        return qK
    end
    return bh
end
local function fn698()
    local Character = oJ.Character
    local qQ = Character and Character:FindFirstChildOfClass("Humanoid")
    return qQ
end
local function onCopyLitecoinAddress()
    nG(n5, "Copied Litecoin address")
end
local function worker9()
    while not Library.Unloaded do
        if oQ("AutoBuyTrails") then
            pcall(o0)
        end
        task.wait(ob("TrailBuyDelay", 1))
    end
end
local function fn709()
    local Character = oJ.Character
    local qT = Character and Character:FindFirstChild("HumanoidRootPart")
    return qT
end
local function fn717(dJ)
    local r1 = o9()
    if not r1 then
        return
    end
    r1.AssemblyLinearVelocity = Vector3.zero
    r1.AssemblyAngularVelocity = Vector3.zero
    r1.CFrame = dJ
end
local function fn782(ge)
    for i, v in ipairs(WorldUtil.CollectFolders("Eggs")) do
        local tH = v.Folder:FindFirstChild(ge)
        if tH then
            return tH, v.World
        end
    end
    return nil, nil
end
local function onCopyEthereumAddress()
    nG(nU, "Copied Ethereum address")
end
local function onCopyBitcoinAddress()
    nG(n_, "Copied Bitcoin address")
end
local function fn818()
    connection:Disconnect()
    connection2:Disconnect()
    ph(false)
end
local function worker5()
    while not Library.Unloaded do
        local vL = oQ("AutoTrain") and not oQ("AutoWin")
        if vL then
            pcall(nF)
        end
        task.wait(ob("TrainDelay", 0.5))
    end
end
local function fn833(bv)
    local Character = oJ.Character
    if not Character then
        return
    end
    if Character.PrimaryPart then
        Character:PivotTo(bv)
    else
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
        if HumanoidRootPart then
            HumanoidRootPart.CFrame = bv
        end
    end
end
local function fn843()
    local sv = ot()
    local sw = -1
    local sx
    for i, v in ipairs(o6) do
        if v.RebirthReq <= sv and v.GainMultiplier >= sw then
            sx = v
            sw = v.GainMultiplier
        end
    end
    return sx
end
local function fn857(aH, aI)
    return string.format('<font color="%s">%s</font>', aI, aH)
end
local function fn863(dN, dO)
    local r3 = os.clock() + 60
    local r4 = false
    while true do
        local r5 = os.clock() < r3 and not Library.Unloaded and oQ("AutoWin")
        if r5 then
            local r5_1 = oa(dN, dO)
            if not oh(r5_1) then
                return true
            end
            local r6 = not r4 or oJ:GetAttribute("SpinjitsuActive") ~= true
            if r6 then
                nX()
                r4 = true
            end
            n0(r5_1.CFrame * CFrame.new(0, 0, 4))
            task.wait(0.2)
            if oh(r5_1) then
                n0(r5_1.CFrame + Vector3.new(0, 2, 0))
                task.wait(0.25)
            end
            continue
        end
        break
    end
    return not oh(oa(dN, dO))
end
local function fn900(eU)
    local sN = eU and eU.Parent
    local sO = sN
    if sN then
        sN = sO.Parent
    end
    local sO_1 = sN
    if sN then
        sN = sO_1.Name:match("^World%d+$")
    end
    if sN then
        local sN_1 = (tonumber(sO_1.Name:match("%d+")))
        local sS = if sN_1 then 1 else 0
        local sQ = 2833 * sS + 2931 * (1 - sS)
        local sR = 744 * sS + 2167 * (1 - sS)
        if not ((sQ * 246 + sR * 1524 + sQ * sR) % 16777213 == 3938526) then
            sN_1 = 1
        end
        return sN_1
    end
    return 1
end
local function fn913(bQ)
    local leaderstats = oJ:FindFirstChild("leaderstats")
    local q4 = leaderstats and leaderstats:FindFirstChild(bQ)
    local q3_1 = q4
    if q4 then
        local q5 = tonumber(q3_1.Value) or 0
        q4 = q5
    end
    return q4 or 0
end
local function fn914()
    local rd_1
    local rc_1
    rc_1, rd_1 = pcall(function()
        return GetSpinjitsuState:InvokeServer()
    end)
    local re = rc_1 and type(rd_1) == "table"
    if re then
        of = rd_1
    end
end
local function fn932(gQ)
    local DiscordGroup = gQ:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = o8 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = o8 })
end
local function fn961()
    local u1 = {}
    for i, v in ipairs({ nO, Options }) do
        for k, v in pairs(v) do
            local u2 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if u2 then
                local u2_1 = pe(k, v)
                if u2_1 then
                    u1[#u1 + 1] = u2_1
                end
            end
        end
    end
    table.sort(u1, function(jb, jc)
        if jb.type ~= jc.type then
            return jb.type < jc.type
        end
        return jb.idx < jc.idx
    end)
    return { objects = u1 }
end
local function fn1061(dg, dh)
    local rH = dg and dg:FindFirstChild("Wall" .. dh)
    local rI = rH
    if rH then
        rH = rI:FindFirstChild("Part")
    end
    local rI_1 = rH
    if rH then
        rH = rI_1:IsA("BasePart")
    end
    if rH then
        return rI_1
    end
    return nil
end
local function fn1077(eg)
    local sg = oP(eg, 6)
    if not sg then
        return false
    end
    local sh = pi(sg)
    if not sh then
        return false
    end
    local sg_1 = oD()
    n0(sh.CFrame + Vector3.new(0, 3, 0))
    local sh_1 = os.clock() + math.max(ob("WinDelay", 0.5), 0.3)
    while true do
        local sm = if os.clock() < sh_1 then 1 else 0
        local sk = 3161 * sm + 2779 * (1 - sm)
        local sl = 3704 * sm + 2296 * (1 - sm)
        if not ((sk * 2531 + sl * 2669 + sk * sl) % 16777213 == 12817598) then
            task.wait(0.15)
            return true
        end
        local si = Library.Unloaded or not oQ("AutoWin")
        if si then
            break
        end
        if oD() > sg_1 then
            task.wait(0.15)
            return true
        end
        task.wait(0.1)
    end
    return false
end
local function fn1097(fs)
    local s9 = fs and fs.Parent
    local ta = s9
    if s9 then
        s9 = ta.Parent
    end
    local ta_1 = s9
    if s9 then
        s9 = ta_1.Name:match("^World%d+$")
    end
    if s9 then
        local s9_1 = tonumber(ta_1.Name:match("%d+")) or 1
        return s9_1
    end
    return 1
end
nE = nil
nF = nil
nG = nil
nH = nil
nI = nil
Options = nil
nK = nil
nL = nil
nO = nil
nP = nil
SaveManager = nil
nR = nil
nU = nil
nV = nil
GetWorldState = nil
nX = nil
nY = nil
Library = nil
n_ = nil
n0 = nil
GetTrailState = nil
n3 = nil
n4 = nil
n5 = nil
GetSpinjitsuState = nil
n8 = nil
n9 = nil
oa = nil
ob = nil
connection2 = nil
LeaveDummy = nil
oe = nil
of = nil
og = nil
oh = nil
oj = nil
ol = nil
om = nil
RequestRebirth = nil
oo = nil
op = nil
ToggleSpinjitsu = nil
ot = nil
local Hatch, nN, RequestWorldTeleport, nT, n2, n7, BuyTrail
ou = nil
ov = nil
ox = nil
connection = nil
oA = nil
oB = nil
oC = nil
oD = nil
oE = nil
oF = nil
oG = nil
oH = nil
oJ = nil
oK = nil
oL = nil
oN = nil
oO = nil
oP = nil
oQ = nil
oR = nil
oS = nil
WorldUtil = nil
oW = nil
oX = nil
PetConfig = nil
o_ = nil
o0 = nil
HttpService = nil
LevelConfig = nil
VirtualUser = nil
RebirthConfig = nil
o6 = nil
o7 = nil
o8 = nil
o9 = nil
pa = nil
pb = nil
pc = nil
pd = nil
pe = nil
pf = nil
pg = nil
local ow, oy, oI, oM, CoreGui, oV, GuiService, o5
ph = nil
pi = nil
pj = nil
pa, VirtualUser, HttpService, GuiService, CoreGui, oN, oJ, oC, oA, ToggleSpinjitsu, RequestRebirth, BuyTrail, LeaveDummy, GetSpinjitsuState, GetTrailState, GetWorldState, RequestWorldTeleport, Hatch, RebirthConfig, LevelConfig, PetConfig, WorldUtil, oO = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local v__4 = game:GetService("Players")
local v__23 = game:GetService("ReplicatedStorage")
local v__28 = game:GetService("RunService")
pa = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
oN = game:GetService("Workspace")
oJ = v__4.LocalPlayer
local v__40 = "+1 Spinjitsu Escape"
oC = "https://discord.gg/ehKVq7pf7v"
oA = "https://rscripts.net/@Ouroboros"
local v__36 = v__23:WaitForChild("Remotes")
ToggleSpinjitsu = v__36:WaitForChild("ToggleSpinjitsu")
RequestRebirth = v__36:WaitForChild("RequestRebirth")
BuyTrail = v__36:WaitForChild("BuyTrail")
LeaveDummy = v__36:WaitForChild("LeaveDummy")
GetSpinjitsuState = v__36:WaitForChild("GetSpinjitsuState")
GetTrailState = v__36:WaitForChild("GetTrailState")
GetWorldState = v__36:WaitForChild("GetWorldState")
RequestWorldTeleport = v__36:WaitForChild("RequestWorldTeleport")
local v__20 = v__36:WaitForChild("PetSystem")
Hatch = v__20:WaitForChild("Hatch")
local v__34 = v__23:WaitForChild("Modules")
local v__12 = require(v__34:WaitForChild("Spinjitsu"):WaitForChild("SpinjitsuConfig"))
local v__9 = require(v__34:WaitForChild("Stages"):WaitForChild("StageConfig"))
local v__38 = require(v__34:WaitForChild("Trails"):WaitForChild("TrailConfig"))
local v__25 = require(v__34:WaitForChild("Dummies"):WaitForChild("DummyConfig"))
RebirthConfig = require(v__34:WaitForChild("Rebirth"):WaitForChild("RebirthConfig"))
LevelConfig = require(v__34:WaitForChild("Level"):WaitForChild("LevelConfig"))
if (false and (oC or not v__12) or (not v__12 or GetWorldState) and (false or v__12)) and not (false and (oC or not v__12) or (not v__12 or GetWorldState) and (false or v__12)) then
    v__34 = require(PetConfig:WaitForChild("Pets"):WaitForChild("PetConfig"))
else
    PetConfig = require(v__34:WaitForChild("Pets"):WaitForChild("PetConfig"))
end
WorldUtil = require(v__34:WaitForChild("World"):WaitForChild("WorldUtil"))
oO = v__9.GetCount()
v__4 = v__9.WallsPerStage or 5
v__34 = {}
oK = v__4
local pW = 1
local pU = oO
while pW <= pU do
    local pX = pW
    v__34[pX] = "Stage " .. pX
    pW += 1
end
v__4 = {}
v__20 = {}
local v__7 = PetConfig.Eggs
local pT = if v__7 then 1 else 0
local pR = 976 * pT + 2342 * (1 - pT)
local pS = 1235 * pT + 1755 * (1 - pT)
if not ((pR * 2257 + pS * 2646 + pR * pS) % 16777213 == 6676002) then
    v__7 = v__20
end
for k, v in pairs(v__7) do
    v__20 = type(v) == "table" and v.Exclusive ~= true and type(v.Cost) == "number"
    if v__20 then
        v__4[#v__4 + 1] = k
    end
end
nN = nil
table.sort(v__4, fn566)
nN = {}
v__20 = {}
v__7 = v__38.Trails
pT = if v__7 then 1 else 0
pR = 2264 * pT + 528 * (1 - pT)
pS = 2142 * pT + 51 * (1 - pT)
if not ((pR * 1827 + pS * 2172 + pR * pS) % 16777213 == 13638240) then
    v__7 = v__20
end
for k, v in pairs(v__7) do
    v__20 = type(v) == "table" and v.Hidden ~= true and type(v.WinsCost) == "number" and type(v.Id) == "string"
    if v__20 then
        v__20 = #nN + 1
        v__7 = v.Id
        v__36 = v.WinsCost
        v__23 = tonumber(v.GainMultiplier) or 0
        nN[v__20] = { Id = v__7, WinsCost = v__36, GainMultiplier = v__23 }
    end
end
o6 = nil
v__7 = 3
repeat
    v__20 = {
        "rsrfeznas",
        "wxby",
        "htxe",
        "wwdar",
        "gwllbz",
        "xerxlpsg",
        "jaadtlzbshw",
        "zhib",
        "iuxfudtvm",
        "ziykhyvch",
        "jthhgoyk",
        "idmawktbtk",
        "vnmdhhkfz"
    }
    if v__20[(v__7 * 25 + 93) % 13 + 1] <= v__20[(v__7 * 25 + 93) % 13 + 1] then
        table.sort(nN, fns.fn400)
        o6 = {}
    else
        table.sort(o6, fns.fn400)
        nN = {}
    end
    v__7 = (v__7 + 0) % 4
until (v__7 * 3 + 0) % 4 == 1
v__20 = {}
v__7 = v__25.Dummies or v__20
for k, v in pairs(v__7) do
    v__20 = type(v) == "table" and v.IsVIP ~= true
    if v__20 then
        v__20 = #o6 + 1
        v__7 = tostring(k)
        v__36 = tonumber(v.RebirthReq) or 0
        v__23 = tonumber(v.GainMultiplier) or 0
        o6[v__20] = { Name = v__7, RebirthReq = v__36, GainMultiplier = v__23 }
    end
end
oF = nil
table.sort(o6, fns.fn500)
oF = {}
v__20 = {}
v__7 = v__12.Variants
pT = if v__7 then 1 else 0
pR = 844 * pT + 1165 * (1 - pT)
pS = 1968 * pT + 3192 * (1 - pT)
if not ((pR * 1783 + pS * 3020 + pR * pS) % 16777213 == 9109204) then
    v__7 = v__20
end
for k, v in pairs(v__7) do
    v__20 = type(v) == "table" and v.IsVIP ~= true and type(v.WinsCost) == "number"
    if v__20 then
        v__20 = #oF + 1
        v__7 = tostring(k)
        v__36 = v.WinsCost
        v__23 = tonumber(v.JitsuPerSecond) or 0
        oF[v__20] = { Key = v__7, WinsCost = v__36, JitsuPerSecond = v__23 }
    end
end
om, of, n8, Library, SaveManager, nO, Options, og, n5, n_, nU, nR, nP, nK, nH, v__36, v__19, nG, o8, oW, oG, oQ, ox, ob, nI, o9, oS, oy, pc, oD, oB, ot, oj, nX, nE, oV, ou, n3, nT, o7, n9, oP, oa, pi, oI, oh, n0, nL, ov, pb, oe, o5, ow, n7, nF, n4, pd, oH, o0, nV, oM, op, oo = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(oF, fns.fn42)
om = {}
of = {}
n8 = {}
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local v__32 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
nO = Library.Toggles
Options = Library.Options
nG = fns.fn52
o8 = fns.fn491
oW = fn857
oG = fns.fn289
local v__13 = "#7fd47f"
v__12 = "#6ec1ff"
og = "#e8a34d"
v__25 = "#8b93a3"
n5 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
n_ = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
nU = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
nR = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
nP = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
nK = "https://paypal.me/TheTruckerGOD"
nH = "https://venmo.com/u/miserablemusic"
local v__3 = "#345d9d"
local v__17 = "#f7931a"
local v__31 = "#627eea"
local v__1 = "#26a17b"
local v__15 = "#14f195"
local v__29 = "#0070ba"
local v__42 = "#008cff"
oQ = fns.fn361
ox = fn568
ob = fn695
nI = fn698
o9 = fn709
oS = fn833
oy = function(bA, bB)
    local q_
    if typeof(bA) ~= "Vector3" then
        return
    end
    if not oN.StreamingEnabled then
        return
    end
    q_ = false
    task.spawn(function()
        pcall(function()
            local qY = bB or 5
            oJ:RequestStreamAroundAsync(bA, qY)
        end)
        q_ = true
    end)
    local q0 = os.clock()
    local q0_1 = q0 + (bB or 5) + 0.25
    while true do
        local q1_1 = not q_ and os.clock() < q0_1 and not Library.Unloaded
        if q1_1 then
            task.wait()
            continue
        end
        break
    end
end
pc = fn913
oD = fns.fn236
oB = fns.fn349
ot = fns.fn260
oj = fns.fn460
nX = fns.fn490
nE = fn914
oV = fns.fn261
ou = fns.fn10
n3 = fns.fn264
nT = fns.fn449
o7 = function(cE)
    local rv_1
    local ru_1
    if nT() == cE then
        return true
    end
    ru_1, rv_1 = pcall(function()
        return GetWorldState:InvokeServer()
    end)
    local rw = ru_1 and type(rv_1) == "table" and type(rv_1.Max) == "number" and rv_1.Max < cE
    if rw then
        return false
    end
    pcall(function()
        RequestWorldTeleport:FireServer(cE)
    end)
    local ru_2 = os.clock() + 8
    while true do
        local rv_2 = os.clock() < ru_2 and not Library.Unloaded
        if not rv_2 then
            return nT() == cE
        end
        if nT() == cE then
            break
        end
        task.wait(0.2)
    end
    return true
end
n9 = fns.fn73
oP = fns.fn163
oa = fn1061
pi = fns.fn258
oI = function(dz)
    local rU_1
    local rT_1
    if not dz then
        return nil
    elseif dz:IsA("BasePart") then
        return dz.Position
    elseif dz:IsA("Model") then
        rT_1, rU_1 = pcall(function()
            return dz:GetPivot()
        end)
        if rT_1 and rU_1 then
            return rU_1.Position
        elseif dz.PrimaryPart then
            return dz.PrimaryPart.Position
        else
            local BasePart = dz:FindFirstChildWhichIsA("BasePart", true)
            return BasePart and BasePart.Position or nil
        end
    else
        local BasePart = dz:FindFirstChildWhichIsA("BasePart", true)
        return BasePart and BasePart.Position or nil
    end
end
oh = fns.fn75
n0 = fn717
nL = fn863
ov = fns.fn242
pb = fn1077
oe = fns.fn480
o5 = fn843
ow = fns.fn32
n7 = fn900
nF = function()
    local sU = o5()
    if not sU then
        return
    end
    if oJ:GetAttribute("AttachedDummy") == sU.Name then
        return
    end
    oj()
    local sV = ow(sU.Name)
    if not sV then
        return
    end
    if not o7(n7(sV)) then
        return
    end
    local sW = ow(sU.Name) or sV
    local sU_1 = sW:FindFirstChild("FreezePart")
    local sW_1 = not sU_1 or not sU_1:IsA("BasePart")
    if sW_1 then
        local sW_2 = oI(sW)
        if sW_2 then
            oy(sW_2, 3)
        end
        sU_1 = sW:FindFirstChild("FreezePart")
    end
    local sV_2 = not sU_1
    local s_ = if sV_2 then 1 else 0
    local sY = 1957 * s_ + 3007 * (1 - s_)
    local sZ = 1932 * s_ + 2151 * (1 - s_)
    if not ((sY * 809 + sZ * 3013 + sY * sZ) % 16777213 == 11185253) then
        sV_2 = not sU_1:IsA("BasePart")
    end
    if sV_2 then
        return
    end
    oS(sU_1.CFrame + Vector3.new(0, 3, 0))
    task.wait(0.15)
    local ProximityPrompt = sU_1:FindFirstChildWhichIsA("ProximityPrompt")
    if ProximityPrompt and fireproximityprompt then
        pcall(function()
            fireproximityprompt(ProximityPrompt)
        end)
    end
end
n4 = fns.fn438
pd = fn1097
oH = fn565
o0 = function()
    oV()
    local tp = oD()
    for i, v in ipairs(nN) do
        local tx = v
        local tq = Library.Unloaded or not oQ("AutoBuyTrails")
        if tq then
            return
        end
        if n8[tx.Id] ~= true and tx.WinsCost <= tp then
            pcall(function()
                BuyTrail:FireServer(tx.Id)
            end)
            task.wait(0.25)
            oV()
            tp = oD()
        end
    end
end
nV = fns.fn272
oM = fn782
if (v__32 and oG or not oG and not v__36) and (oG or not v__36 or (v__36 or not v__32)) or (not n0 or v__32 or (not n0 or not v__36) or (v__32 and v__32 or oG and not oG)) or not ((v__32 and oG or not oG and not v__36) and (oG or not v__36 or (v__36 or not v__32)) or (not n0 or v__32 or (not n0 or not v__36) or (v__32 and v__32 or oG and not oG))) then
    op = function()
        local tP
        tP = ox("HatchEgg")
        local tQ = tP == ""
        local tQ_10
        local tR = type(tP) ~= "string" or tQ
        local tR_9
        if tR then
            return
        end
        local tQ_7 = PetConfig.Eggs and PetConfig.Eggs[tP]
        local tR_6 = tQ_7
        if tQ_7 then
            tQ_7 = tonumber(tR_6.Cost)
        end
        local tR_7 = tQ_7 or 0
        if oD() < tR_7 then
            return
        end
        local Pets = oJ:FindFirstChild("Pets")
        local tR_8 = PetConfig.InventoryLimit or 50
        local tS = Pets
        if tS then
            tS = #Pets:GetChildren() >= tR_8
        end
        if tS then
            return
        end
        tR_9, tQ_10 = oM(tP)
        if tR_9 and tQ_10 then
            local tS_4 = WorldUtil.GetWorldNumber(tQ_10)
            o7(tS_4)
            local tQ_11 = oM(tP) or tR_9
            local tQ_12 = oI(tQ_11)
            if tQ_12 then
                oy(tQ_12, 3)
                oS(CFrame.new(tQ_12 + Vector3.new(0, 3, 0)))
                task.wait(0.1)
            end
        end
        pcall(function()
            Hatch:FireServer(tP, "auto")
        end)
    end
    oo = fns.fn521
else
    oo = function()
        local tP
        tP = ox("HatchEgg")
        local tQ = tP == ""
        local tQ_4
        local tR = type(tP) ~= "string" or tQ
        local tR_4
        if tR then
            return
        end
        local tQ_1 = PetConfig.Eggs and PetConfig.Eggs[tP]
        local tR_1 = tQ_1
        if tQ_1 then
            tQ_1 = tonumber(tR_1.Cost)
        end
        local tR_2 = tQ_1 or 0
        if oD() < tR_2 then
            return
        end
        local Pets = oJ:FindFirstChild("Pets")
        local tR_3 = PetConfig.InventoryLimit or 50
        local tS = Pets
        if tS then
            tS = #Pets:GetChildren() >= tR_3
        end
        if tS then
            return
        end
        tR_4, tQ_4 = oM(tP)
        if tR_4 and tQ_4 then
            local tS_2 = WorldUtil.GetWorldNumber(tQ_4)
            o7(tS_2)
            local tQ_5 = oM(tP) or tR_4
            local tQ_6 = oI(tQ_5)
            if tQ_6 then
                oy(tQ_6, 3)
                oS(CFrame.new(tQ_6 + Vector3.new(0, 3, 0)))
                task.wait(0.1)
            end
        end
        pcall(function()
            Hatch:FireServer(tP, "auto")
        end)
    end
    op = fns.fn521
end
v__36 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = oC, Copyable = true }, "|", v__40 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
if ((oy or om or false and Library) and (not Library and false and (not v__36 and om)) or (om and oy or om and not Library) and (oy or Library or (Library or om))) and not ((oy or om or false and Library) and (not Library and false and (not v__36 and om)) or (om and oy or om and not Library) and (oy or Library or (Library or om))) then
    v__36 = {
        Info = v__19:AddTab("Info", "info"),
        Shop = v__19:AddTab("Shop", "shopping-bag"),
        Player = v__19:AddTab("Player", "person-standing"),
        Settings = v__19:AddTab("Settings", "settings"),
        Main = v__19:AddTab("Main", "tornado")
    }
else
    v__19 = {
        Info = v__36:AddTab("Info", "info"),
        Main = v__36:AddTab("Main", "tornado"),
        Shop = v__36:AddTab("Shop", "shopping-bag"),
        Player = v__36:AddTab("Player", "person-standing"),
        Settings = v__36:AddTab("Settings", "settings")
    }
end
v__38 = fn932
for k, v in v__19 do
    v__38(v)
end
pf, v__7, v__23, oL, oE, v__36 = nil, nil, nil, nil, nil, nil
v__20 = 12
repeat
    v__9 = (v__20 * 2 + 2) % 3 + 1
    if v__9 <= 2 then
        if v__9 <= 1 then
            if ((oE or v__7 or not v__23 and not v__36) and (not v__36 or v__36 or (not oE or not v__7)) or (v__36 or not v__7) and (v__23 or v__7) and ((not v__7 or v__36) and (not v__7 and oE))) and ((not v__36 or v__7) and (v__7 or not oE) or (v__23 or oE or (v__23 or v__23)) or (v__36 and v__23 or (not v__7 or v__7)) and (not v__36 or not v__23 or not v__7 and not v__36)) or not (((oE or v__7 or not v__23 and not v__36) and (not v__36 or v__36 or (not oE or not v__7)) or (v__36 or not v__7) and (v__23 or v__7) and ((not v__7 or v__36) and (not v__7 and oE))) and ((not v__36 or v__7) and (v__7 or not oE) or (v__23 or oE or (v__23 or v__23)) or (v__36 and v__23 or (not v__7 or v__7)) and (not v__36 or not v__23 or not v__7 and not v__36))) then
                oE = tostring(game.JobId)
            else
                pf = tostring(game.JobId)
            end
            v__20 = (v__20 + 23) % 24
        else
            v__9 = (vector.create((v__20 * 1 + 8) % 11 + 1, (v__20 * 3 + 2) % 13 + 1, (v__20 * 11 + 4) % 17 + 1))
            v__38 = (vector.create((v__20 * 2 + 5) % 11 + 1, (v__20 * 8 + 3) % 13 + 1, (v__20 * 7 + 14) % 17 + 1))
            local w7 = vector.cross(v__9, v__38)
            local w8 = vector.dot(v__9, v__38)
            if vector.dot(w7, w7) + w8 * w8 == vector.dot(v__9, v__9) * vector.dot(v__38, v__38) then
                v__36 = #oE > 18
            else
                oE = #v__36 > 18
            end
            v__20 = (v__20 + 8) % 24
        end
    else
        if (not oL and oL and (oL and v__7) or (not v__7 or not v__7 or not oL and not oL)) and (v__7 or not v__7 or (v__7 or not v__7) or not oL and oL and (v__7 or v__7)) or not ((not oL and oL and (oL and v__7) or (not v__7 or not v__7 or not oL and not oL)) and (v__7 or not v__7 or (v__7 or not v__7) or not oL and oL and (v__7 or v__7))) then
            pf = "Unknown"
            pcall(fns.fn315)
            v__7 = v__19.Info:AddLeftGroupbox("Account", "circle-user")
            v__7:AddLabel(oG("User", oJ.Name, v__13), true)
            v__7:AddLabel(oG("Status", "Keyless", v__13), true)
            v__7:AddLabel(oG("Executor", pf, v__13), true)
            v__23 = v__19.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            v__23:AddLabel(oW(v__40 .. " [" .. tostring(game.PlaceId) .. "]", v__12), true)
            v__23:AddLabel(oG("Place ID", tostring(game.PlaceId), v__12), true)
            oL = v__23:AddLabel(oG("Session time", "0s", og), true)
        else
            oL = "Unknown"
            pcall(fns.fn315)
            v__19 = v__7.Info:AddLeftGroupbox("Account", "circle-user")
            v__19:AddLabel(og("User", pf.Name, oW), true)
            v__19:AddLabel(og("Status", "Keyless", oW), true)
            v__19:AddLabel(og("Executor", oL, oW), true)
            oG = v__7.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            oG:AddLabel(v__13(v__23 .. " [" .. tostring(game.PlaceId) .. "]", v__40), true)
            oG:AddLabel(og("Place ID", tostring(game.PlaceId), v__40), true)
            oJ = oG:AddLabel(og("Session time", "0s", v__12), true)
        end
        v__20 = (v__20 + 17) % 24
    end
until (v__20 * 5 + 22) % 24 == 10
if v__36 then
    v__20 = 5
    repeat
        v__7 = { "flbejtfvu", "pgxldgxgba", "uikkl", "ivkefeam", "zrajkmssbfbl", "pypxzeplb", "mtl", "bghikhsih" }
        if v__7[(v__20 * 95 + 7) % 8 + 1] <= v__7[(v__20 * 95 + 7) % 8 + 1] then
            v__36 = string.sub(oE, 1, 18) .. "..."
        else
            oE = string.sub(v__36, 1, 18) .. "..."
        end
        v__20 = (v__20 + 3) % 8
    until (v__20 * 7 + 1) % 8 == 1
end
v__20 = v__36 or oE
ol, v__37 = nil, nil
local v__6 = v__20
v__23:AddLabel(oG("Server", v__6, v__25), true)
v__23:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
ol = os.clock()
task.spawn(fns.worker)
v__36 = v__19.Info:AddRightGroupbox("Scripts", "package")
v__36:AddLabel(oW("Included in this hub", v__25), true)
v__36:AddLabel(oW(v__40, v__12), true)
v__7 = v__19.Info:AddRightGroupbox("Features", "list")
v__7:AddLabel(oW("Auto Farm", v__12), true)
v__7:AddLabel(oW("Auto Shop", v__13), true)
v__7:AddLabel(oW("Auto Progress", og), true)
v__7:AddLabel(oW("Misc Utilities", v__25), true)
local v__8 = v__19.Info:AddRightGroupbox("Socials", "link")
v__8:AddButton({ Text = "Discord", Func = o8 })
v__8:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
local v__22 = v__19.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
v__22:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
v__22:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
v__22:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
v__22:AddButton({ Text = "Copy Discord Invite", Func = o8 })
local v__35 = v__19.Info:AddRightGroupbox("Donations", "heart")
v__35:AddLabel(oW("All donations are optional but appreciated.", og), true)
v__35:AddLabel(oW("If you donate you get a special role, just PING after you donate.", v__13), true)
v__35:AddDivider()
v__35:AddLabel(oW("LTC / Litecoin", v__3), true)
v__35:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
v__35:AddLabel(oW("BTC / Bitcoin", v__17), true)
v__35:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
v__35:AddLabel(oW("ETH / Ethereum", v__31), true)
v__35:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
v__35:AddLabel(oW("USDT", v__1), true)
v__35:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
v__35:AddLabel(oW("Solana", v__15), true)
v__35:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
v__35:AddLabel(oW("PayPal", v__29), true)
v__35:AddButton({ Text = "Copy PayPal Link", Func = fns.onCopyPayPalLink })
v__35:AddLabel(oW("Venmo", v__42), true)
v__35:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
v__35:AddDivider()
v__35:AddLabel(oW("Don't have any of the listed currencies but still wanna donate?", v__25), true)
v__35:AddLabel(oW("DM me and we'll work something out.", v__12), true)
v__38 = v__19.Info:AddRightGroupbox("FAQ", "circle-help")
if not v__35 and v__22 and 1 and ((ol or not ol) and (not v__35)) or not (not v__35 and v__22 and 1 and ((ol or not ol) and (not v__35))) then
    v__38:AddLabel("Where do I get a good config?", true)
    v__38:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
    v__38:AddLabel("How do I import / export configs?", true)
    v__38:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
    v__38:AddLabel("How do I report bugs?", true)
    v__38:AddLabel("Join the Discord and post it in the bugs channel.", true)
    v__38:AddLabel("How do I make suggestions?", true)
    v__38:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
    v__38:AddLabel("How do I get help or updates?", true)
    v__38:AddLabel("Join the Discord, updates and support are posted there first.", true)
    v__37 = v__19.Main:AddLeftGroupbox("Farm", "tornado")
else
    v__37:AddLabel("Where do I get a good config?", true)
    v__37:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
    v__37:AddLabel("How do I import / export configs?", true)
    v__37:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
    v__37:AddLabel("How do I report bugs?", true)
    v__37:AddLabel("Join the Discord and post it in the bugs channel.", true)
    v__37:AddLabel("How do I make suggestions?", true)
    v__37:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
    v__37:AddLabel("How do I get help or updates?", true)
    v__37:AddLabel("Join the Discord, updates and support are posted there first.", true)
    v__19 = v__38.Main:AddLeftGroupbox("Farm", "tornado")
end
v__37:AddToggle("AutoWin", { Text = "Auto Win", Default = false })
v__20 = v__34[1] or "Stage 1"
v__37:AddDropdown("WinPlate", { Text = "Win stage", Values = v__34, Default = v__20 })
v__37:AddSlider("WinDelay", { Text = "Win delay", Default = 0.35, Min = 0.1, Max = 5, Rounding = 2, Suffix = "s" })
v__37:AddToggle("AutoTrain", { Text = "Auto Train based on Rebirth Amount", Default = false })
v__37:AddSlider("TrainDelay", { Text = "Train delay", Default = 0.5, Min = 0.25, Max = 5, Rounding = 2, Suffix = "s" })
v__37:AddToggle("AutoSpinjitsuMode", { Text = "Auto Spinjitsu Mode", Default = false })
v__36 = v__19.Main:AddRightGroupbox("Progress", "rotate-ccw")
v__36:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
v__36:AddSlider("RebirthDelay", { Text = "Rebirth delay", Default = 1, Min = 0.5, Max = 30, Rounding = 1, Suffix = "s" })
v__36:AddToggle("AutoHatch", { Text = "Auto Hatch", Default = false })
v__34 = v__4[1] or "Grass Egg"
v__9, v__20, oR, v__23, pj, pg, connection, connection2, ph, oX, n2, pe, o_, nY = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (v__23 or not v__9) and (not v__20 or oX) and (v__23 or not v__9 or not connection2 and v__20) or not ((v__23 or not v__9) and (not v__20 or oX) and (v__23 or not v__9 or not connection2 and v__20)) then
    v__36:AddDropdown("HatchEgg", { Text = "Egg", Values = v__4, Default = v__34 })
    v__36:AddSlider("HatchDelay", { Text = "Hatch delay", Default = 0.4, Min = 0.35, Max = 5, Rounding = 2, Suffix = "s" })
    v__9 = v__19.Shop:AddLeftGroupbox("Shop", "shopping-bag")
    v__9:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
    v__9:AddSlider("TrailBuyDelay", { Text = "Trail buy delay", Default = 1, Min = 0.25, Max = 10, Rounding = 2, Suffix = "s" })
    v__9:AddToggle("AutoBuySpinjitsus", { Text = "Auto Buy Spinjitsus", Default = false })
    v__9:AddSlider("SpinjitsuBuyDelay", { Text = "Spinjitsu buy delay", Default = 1, Min = 0.25, Max = 10, Rounding = 2, Suffix = "s" })
    v__7 = v__19.Player:AddLeftGroupbox("Movement", "footprints")
    v__7:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    v__7:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    v__7:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    v__7:AddToggle("NoClip", { Text = "NoClip", Default = false })
    v__7:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    v__20 = v__19.Player:AddRightGroupbox("Fly", "feather")
    v__20:AddToggle("Fly", { Text = "Fly", Default = false })
    v__20:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    ph = function(hI)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not hI)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not hI
            end
        end)
        if not hI then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(oJ, "GameplayPaused", false)
            else
                oJ.GameplayPaused = false
            end
        end)
    end
    nO.AntiGameplayPause:OnChanged(fns.fn240)
    nO.Fly:OnChanged(fns.fn168)
    nO.WalkSpeedEnabled:OnChanged(fn560)
    v__28.Stepped:Connect(onStepped)
    pa.JumpRequest:Connect(fns.onJumpRequest)
    oR = oN.CurrentCamera
else
    v__36:AddDropdown("HatchEgg", { Values = v__4, Default = oR, Text = "Egg" })
    v__20:AddSlider("HatchDelay", { Default = 0.4, Min = 0.35, Suffix = "s", Max = 5, Text = "Hatch delay", Rounding = 2 })
    pa = v__28.Shop:AddLeftGroupbox("Shop", "shopping-bag")
    pa:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
    pa:AddSlider("TrailBuyDelay", { Min = 0.25, Default = 1, Text = "Trail buy delay", Max = 10, Rounding = 2, Suffix = "s" })
    pa:AddToggle("AutoBuySpinjitsus", { Text = "Auto Buy Spinjitsus", Default = false })
    pa:AddSlider("SpinjitsuBuyDelay", { Default = 1, Suffix = "s", Max = 10, Min = 0.25, Text = "Spinjitsu buy delay", Rounding = 2 })
    v__9 = v__28.Player:AddLeftGroupbox("Movement", "footprints")
    v__9:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    v__9:AddSlider("WalkSpeed", { Rounding = 0, Default = 32, Min = 16, Text = "WalkSpeed Amount", Max = 250 })
    v__9:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    v__9:AddToggle("NoClip", { Text = "NoClip", Default = false })
    v__9:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    oN = v__28.Player:AddRightGroupbox("Fly", "feather")
    oN:AddToggle("Fly", { Text = "Fly", Default = false })
    oN:AddSlider("FlySpeed", { Max = 400, Default = 60, Min = 10, Rounding = 0, Text = "Fly Speed" })
    v__19.AntiGameplayPause:OnChanged(fns.fn240)
    v__19.Fly:OnChanged(fns.fn168)
    v__19.WalkSpeedEnabled:OnChanged(fn560)
    ph.Stepped:Connect(onStepped)
    v__36.JumpRequest:Connect(fns.onJumpRequest)
    nO = v__34.CurrentCamera
end
v__28.RenderStepped:Connect(fns.onRenderStepped)
v__23 = v__19.Settings:AddLeftGroupbox("Menu")
v__23:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
v__23:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
v__23:AddButton("Unload", fns.onUnload)
pj = tick()
pg = tick()
pcall(function()
    for i, v in ipairs(getconnections(oJ.Idled)) do
        local uL = v
        pcall(function()
            uL:Disable()
        end)
    end
end)
oX = fns.fn421
connection = pa.InputBegan:Connect(fns.onInputBegan)
connection2 = pa.InputChanged:Connect(fns.onInputChanged)
v__32:SetLibrary(Library)
v__32:SetFolder("OuroborosHub")
v__32:SaveDefault("Monochrome")
v__32:ApplyToTab(v__19.Settings)
v__32:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/plus1-spinjitsu-escape")
v__38 = SaveManager:BuildConfigSection(v__19.Settings)
if (false and not n2 or (false or n2)) and (not v__23 and ph and (n2 or false)) or not ((false and not n2 or (false or n2)) and (not v__23 and ph and (n2 or false))) then
    n2 = fns.fn259
    pe = fns.fn483
else
    pe = fns.fn259
    n2 = fns.fn483
end
o_ = fn961
nY = function(je)
    local vl
    vl = nil
    local vm = type(je) ~= "table" or type(je.idx) ~= "string" or type(je.type) ~= "string" or SaveManager.Ignore[je.idx]
    if vm then
        return false
    end
    vl = n2(je.type, je.idx)
    if not vl then
        return false
    end
    local vm_1 = pcall(function()
        if je.type == "Input" then
            if type(je.text) ~= "string" then
                return
            end
            vl:SetValue(je.text)
        elseif je.type == "ColorPicker" then
            vl:SetValueRGB(Color3.fromHex(je.value), je.transparency)
        elseif je.type == "KeyPicker" then
            vl:SetValue({ je.key, je.mode, je.modifiers })
            if je.mode == "Toggle" and je.toggled ~= nil then
                vl.Toggled = je.toggled
                vl:Update()
            end
        else
            vl:SetValue(je.value)
        end
    end)
    return vm_1
end
v__38:AddDivider()
v__38:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
v__38:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
v__38:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
nE()
oV()
task.spawn(worker2)
task.spawn(fns.worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(fns.worker6)
task.spawn(fns.worker7)
task.spawn(fns.worker8)
task.spawn(worker9)
task.spawn(worker10)
Library:OnUnload(fn818)
Library:Notify("+1 Spinjitsu Escape loaded")
