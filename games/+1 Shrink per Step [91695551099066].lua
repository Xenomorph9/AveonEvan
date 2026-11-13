local fns = {}
local uS_9, uS_12, uS_14
local mX
local nE
local mE
local nl
local m2
local UserInputService
local mK
local nr
local RebirthRequest
local nQ
local mQ
local nx
local mx
local ne
local mW
local nD
local mD
local LocalPlayer
local nJ
local connection2
local nq
local mq
local m7
local nP
local mP
local nw
local mw
local nd
local mC
local connection
local nI
local mI
local Eggs
local mp
local m6
local nO
local mO
local mv
local mU
local HttpService
local Toggles
local ni
local m_
local nH
local mH
local no
local mo
local m5
local RunService
local mN
local nu
local mu
local nb
local nT
local mT
local nA
local mA
local nh
local nG
local mG
local Workspace
local nM
local mM
local nt
local mt
local na
local nS
local mS
local nz
local mz
local mY
local VirtualUser
local mF
local nm
local m3
local nL
local mL
local CurrentCamera2
local ms
local m9
local nR
local mR
local Options
function fns.onCopyVenmoLink()
    mw(mI, "Copied Venmo link")
end
function fns.fn4()
    local rG = nh()
    local rH = nM("EquippedItem", "") or ""
    local rI = tostring(rH)
    local rH_1 = nil
    local rJ
    for k, v in nm() do
        local rK = mH(v.Model)
        if rK == "Buy" and rG >= v.Required then
            if not rJ then
                rJ = v
            end
        elseif ms(v, rG) then
            if not rH_1 then
                rH_1 = v
            end
        end
    end
    if os.clock() - nG < 1.5 then
        return
    end
    if rJ then
        nG = os.clock()
        nT(rJ.Model)
        return
    end
    if rH_1 and rI ~= rH_1.Name then
        nG = os.clock()
        nT(rH_1.Model)
    end
end
function fns.onCopyJoinScript_JobID()
    local fZ = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, ni)
    mw(fZ, "Copied join script to clipboard")
end
function fns.fn17(ag, ah)
    return string.format('<font color="%s">%s</font>', ah, ag)
end
function fns.fn24()
    local sp = na()
    local sq = mW(sp)
    if nt() < sq then
        return
    end
    pcall(function()
        RebirthRequest:FireServer()
    end)
end
function fns.onJumpRequest()
    if mM.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local tr_1 = mF()
        if tr_1 then
            tr_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.fn83()
    local si = m6()
    if not si then
        return
    end
    if nM("OnTreadmill", false) == true then
        local sj = mt()
        if sj and (sj.Position - si.Conveyor.Position).Magnitude > 14 then
            mP(si.Conveyor)
        end
        return
    end
    mP(si.Conveyor)
end
function fns.fn87()
    return LocalPlayer.Character
end
function fns.fn132(aQ)
    return (aQ + 1) * 25
end
function fns.worker4()
    while not mM.Unloaded do
        task.wait(1)
        if m5("AutoRebirth") then
            pcall(mo)
        end
    end
end
function fns.onCopyBitcoinAddress()
    mw(m_, "Copied Bitcoin address")
end
function fns.fn163(cm)
    local p6 = nJ(cm)
    local p7 = p6 and p6:GetAttribute("SpawnPos")
    if typeof(p7) == "Vector3" then
        return p7
    end
    return Vector3.new(-33.763, 0.923, nw(cm))
end
function fns.fn176()
    local rW = {}
    local rX = {}
    for i, child in Eggs:GetChildren() do
        local Cost = child:FindFirstChild("Cost")
        local rZ = Cost and tonumber(Cost.Value)
        local rY_1 = rZ or 0
        if rY_1 > 0 then
            rW[#rW + 1] = { Name = child.Name, Cost = rY_1 }
        end
    end
    table.sort(rW, function(eF, eG)
        return eF.Cost < eG.Cost
    end)
    for k, v in rW do
        rX[#rX + 1] = v.Name
    end
    return rX
end
function fns.fn182(aj, ak, al)
    return string.format("<b>%s</b> %s %s", aj, nE("-", "#5a6070"), nE(ak, al))
end
function fns.fn199()
    local oP = mN()
    local oQ = oP and oP:FindFirstChild("HumanoidRootPart")
    return oQ
end
function fns.fn204(cA)
    local qc = mt()
    local qd = not qc or not cA or not cA:IsA("BasePart")
    if qd then
        return
    end
    if not firetouchinterest then
        return
    end
    if os.clock() - mp < 0.2 then
        return
    end
    mp = os.clock()
    pcall(firetouchinterest, qc, cA, 0)
    pcall(firetouchinterest, qc, cA, 1)
end
function fns.onUnload()
    mM:Unload()
end
function fns.fn254()
    local o_ = tonumber(nM("CurrentWorld", 1)) or 1
    return o_
end
function fns.fn263(b1, b2)
    local pU_1
    if b1 == 1 then
        pU_1 = "WinZoneLevel" .. b2 .. "Model"
    else
        pU_1 = "WinZoneLevel" .. b2 .. "ModelW" .. b1
    end
    local pV = Workspace:FindFirstChild(pU_1)
    if not pV then
        return nil
    end
    return pV:FindFirstChild("TouchWin", true)
end
function fns.onCopyUSDTAddress()
    mw(mT, "Copied USDT address")
end
function fns.fn283()
    if not Toggles.Fly.Value then
        local tD = mF()
        if tD then
            tD.PlatformStand = false
        end
    end
end
function fns.fn298()
    local rm = {}
    for i, child in Workspace:GetChildren() do
        local rn = child:IsA("Model") and child:GetAttribute("RequiredWins") ~= nil
        if rn then
            local rn_1 = tonumber(child:GetAttribute("RequiredWins"))
            local ro = (tonumber(child:GetAttribute("ThinBoost")))
            local rA = if ro then 1 else 0
            local ry = 636 * rA + 2525 * (1 - rA)
            local rz = 376 * rA + 3104 * (1 - rA)
            if not ((ry * 3774 + rz * 2452 + ry * rz) % 16777213 == 3561352) then
                ro = 0
            end
            local rp = rn_1
            local rq = ro
            if rp then
                rp = rn_1 == rn_1
            end
            if rp then
                rp = rn_1 ~= math.huge
            end
            if rp then
                rm[#rm + 1] = { Model = child, Name = child.Name, Required = rn_1, Boost = rq }
            end
        end
    end
    table.sort(rm, function(d2, d3)
        return d2.Boost > d3.Boost
    end)
    return rm
end
function fns.onImportConfigFromClipboardTex()
    local uy_1
    local uw = Options.SaveManager_ImportSource.Value or ""
    local uw_1
    local ux = tostring(uw):match("^%s*(.-)%s*$")
    if ux == "" then
        mM:Notify("Paste an exported config into the box first")
        return
    end
    uw_1, uy_1 = pcall(HttpService.JSONDecode, HttpService, ux)
    local ux_1 = not uw_1 or type(uy_1) ~= "table" or type(uy_1.objects) ~= "table"
    if ux_1 then
        mM:Notify("That is not a valid exported config")
        return
    end
    local uw_2 = 0
    for i, v in ipairs(uy_1.objects) do
        if ne(v) then
            uw_2 += 1
        end
    end
    if uw_2 == 0 then
        mM:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local uy_2 = uw_2 == 1 and ""
    local uL = if uy_2 then 1 else 0
    local uJ = 3673 * uL + 1571 * (1 - uL)
    local uK = 2483 * uL + 1419 * (1 - uL)
    if not ((uJ * 946 + uK * 774 + uJ * uK) % 16777213 == 14516559) then
        uy_2 = "s"
    end
    mM:Notify(("Imported %d setting%s"):format(uw_2, uy_2), 6)
end
function fns.fn325()
    local oW = tonumber(nM("Wins", 0)) or 0
    return oW
end
function fns.worker2()
    while not mM.Unloaded do
        task.wait(1.25)
        if m5("AutoBuyFoods") then
            pcall(nD)
        end
    end
end
function fns.fn377(dv)
    local Name = dv.Model.Name
    if Name == "HackerTreadmill" then
        return nM("HasHacker", false) == true
    elseif Name == "GalaxyTreadmill" then
        return nM("HasGalaxy", false) == true
    elseif Name == "LavaTreadmill" then
        return nM("HasLava", false) == true
    else
        local qP = Name == "W2GoldenCrownTreadmill"
        local qQ = Name == "W1GoldenCrownTreadmill"
        local qY = if qQ then 1 else 0
        local qW = 318 * qY + 3575 * (1 - qY)
        local qX = 1516 * qY + 166 * (1 - qY)
        if not ((qW * 4074 + qX * 582 + qW * qX) % 16777213 == 2659932) then
            qQ = qP
        end
        if qQ or Name == "W3GoldenCrownTreadmill" then
            return nM("HasVIP", false) == true
        end
        return na() >= dv.Required
    end
end
function fns.fn378()
    local tF = not Toggles.WalkSpeedEnabled.Value and not m5("AutoWin")
    if tF then
        local tF_1 = mF()
        if tF_1 then
            tF_1.WalkSpeed = 16
        end
    end
end
function fns.fn391(ao)
    local oJ = Toggles[ao]
    return oJ ~= nil and oJ.Value == true
end
function fns.fn396()
    local qC = {}
    for i, child in Workspace:GetChildren() do
        local qD = child:IsA("Model") and child.Name:find("Treadmill") and child.Name ~= "TreadmillsGUI"
        if qD then
            local qD_1 = tonumber(child:GetAttribute("RequiredRebirths")) or 0
            local qD_2 = tonumber(child:GetAttribute("Multiplier")) or 0
            local Conveyor = child:FindFirstChild("Conveyor", true)
            local qG = Conveyor and Conveyor:IsA("BasePart")
            if qG then
                qC[#qC + 1] = { Model = child, Required = qD_1, Multiplier = qD_2, Conveyor = Conveyor }
            end
        end
    end
    table.sort(qC, function(dr, ds)
        return dr.Multiplier > ds.Multiplier
    end)
    return qC
end
function fns.hatchDelayLoop()
    while not mM.Unloaded do
        local tV_1 = Options.HatchDelay and Options.HatchDelay.Value or 0.35
        task.wait(tV_1)
        if m5("AutoHatch") then
            pcall(mq)
        end
    end
end
function fns.fn476()
    nI(Toggles.AntiGameplayPause.Value)
end
function fns.fn487(eK)
    local sc = Eggs:FindFirstChild(eK)
    local sd = sc and sc:FindFirstChild("Cost")
    local sc_1 = sd
    if sd then
        sd = tonumber(sc_1.Value)
    end
    return sd or 0
end
function fns.fn493(il, im)
    local tZ_1 = (il == "Toggle" and Toggles or Options)[im]
    local tY_2 = type(tZ_1) == "table" and tZ_1.Type == il
    return tY_2 and tZ_1 or nil
end
function fns.fn513()
    if not Toggles.AutoWin.Value then
        nR(true)
        local tK = mF()
        if tK then
            tK:Move(Vector3.zero, false)
            if not (Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value) then
                tK.WalkSpeed = 16
            end
        end
    end
end
function fns.fn522(d5)
    local rB = mz(d5)
    return rB and rB.ActionText or nil
end
function fns.fn529(bm)
    local px = nJ(bm)
    if not px then
        return nil
    end
    local py = nt()
    local Value
    local pA = -1
    for i, child in px:GetChildren() do
        local px_1 = tonumber(child.Name)
        local pB = px_1 and child:IsA("Vector3Value") and px_1 <= py and px_1 > pA
        if pB then
            pA = px_1
            Value = child.Value
        end
    end
    if not Value then
        return nil
    end
    return pA, Value
end
function fns.fn531(aV)
    return mO(nM("OwnedFruits", ""), aV)
end
function fns.fn533()
    local pL_1
    local pM_1, pM_2
    local pJ = Options.WinPlate and Options.WinPlate.Value
    local pJ_2, pJ_4
    local pK = pJ or "Best"
    local pK_1
    pK_1, pL_1 = mG(pK)
    if not pK_1 then
        local pK_2 = m2()
        pM_1, pJ_2 = mv(pK_2)
        if not pM_1 then
            return nil
        end
        return pK_2, pM_1, pJ_2
    end
    local pJ_3 = nt()
    if pL_1 > pJ_3 then
        pJ_4, pM_2 = mv(pK_1)
        if not pJ_4 then
            return nil
        end
        return pK_1, pJ_4, pM_2
    end
    local pJ_5 = nJ(pK_1)
    local pM_3 = pJ_5 and pJ_5:FindFirstChild(tostring(pL_1))
    local pJ_6 = pM_3
    if pM_3 then
        pM_3 = pJ_6:IsA("Vector3Value")
    end
    if pM_3 then
        return pK_1, pL_1, pJ_6.Value
    end
    return nil
end
function fns.onExportConfigToClipboard()
    local ut_1
    local us_1
    us_1, ut_1 = pcall(HttpService.JSONEncode, HttpService, mA())
    if not us_1 then
        mM:Notify("Failed to encode the config")
        return
    end
    local us_2 = setclipboard or toclipboard
    local us_3 = type(us_2) ~= "function" or not pcall(us_2, ut_1)
    if us_3 then
        mM:Notify("Your executor does not support copying to the clipboard")
        return
    end
    mM:Notify("Config copied to clipboard", 6)
end
function fns.fn554()
    for k, v in mD() do
        if nu(v) then
            return v
        end
    end
    return nil
end
function fns.fn567(a2)
    local o3 = (nA:FindFirstChild("W" .. tostring(a2)))
    local o7 = if o3 then 1 else 0
    local o5 = 2523 * o7 + 165 * (1 - o7)
    local o6 = 642 * o7 + 1889 * (1 - o7)
    if not ((o5 * 3126 + o6 * 360 + o5 * o6) % 16777213 == 9737784) then
        o3 = nA:FindFirstChild("W1")
    end
    return o3
end
local function fn594(ea, eb)
    local rE = mC(ea.Name) or eb >= ea.Required
    return rE
end
local function onInputChanged(gO)
    local UserInputType = gO.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        nO = tick()
    end
end
local function worker3()
    while not mM.Unloaded do
        task.wait(1)
        if m5("AutoBuyTrail") then
            pcall(nr)
        end
    end
end
local function fn625(cG, cH, cI)
    local qn_1
    local qi = mt()
    local qj = mF()
    if not qi or not qj or qj.Health <= 0 then
        return false
    end
    qj.Sit = false
    qj.PlatformStand = false
    local qk_1 = nw(cI)
    local Position = qi.Position
    if math.abs(Position.Z - qk_1) >= 24 then
        mK(cI)
        return false
    end
    local qi_1 = cG.X - Position.X
    local qm = qk_1 - Position.Z
    if math.abs(qi_1) <= 15 then
        qn_1 = Vector3.new(cG.X, Position.Y, cG.Z)
    elseif math.abs(qm) > 2.5 then
        qn_1 = Vector3.new(Position.X, Position.Y, qk_1)
    else
        qn_1 = Vector3.new(cG.X, Position.Y, qk_1)
    end
    local qk_2 = (qn_1 - Position) * Vector3.new(1, 0, 1)
    if qk_2.Magnitude < 0.5 then
        qj.WalkSpeed = math.min(cH, 16)
        qj:Move(Vector3.zero, false)
        return math.abs(qi_1) <= 5
    end
    if math.abs(qi_1) < 24 then
        qj.WalkSpeed = math.min(cH, 16)
    else
        qj.WalkSpeed = cH
    end
    qj:Move(qk_2.Unit, false)
    return false
end
local function fn643()
    local oM = mN()
    local oN = oM and oM:FindFirstChildOfClass("Humanoid")
    return oN
end
local function onRscripts()
    mw(m7, "Copied Rscripts profile to clipboard")
end
local function fn663()
    local t8 = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local t9 = type(v) == "table" and type(v.Type) == "string" and not mE.Ignore[k]
            if t9 then
                local t9_1 = mQ(k, v)
                if t9_1 then
                    t8[#t8 + 1] = t9_1
                end
            end
        end
    end
    table.sort(t8, function(iD, iE)
        if iD.type ~= iE.type then
            return iD.type < iE.type
        end
        return iD.idx < iE.idx
    end)
    return { objects = t8 }
end
local function onCopyLitecoinAddress()
    mw(m3, "Copied Litecoin address")
end
local function onCopyEthereumAddress()
    mw(mY, "Copied Ethereum address")
end
local function fn691(dJ)
    local BuyPrompt = dJ:FindFirstChild("BuyPrompt", true)
    local rd = BuyPrompt and BuyPrompt:IsA("ProximityPrompt")
    if rd then
        return BuyPrompt
    end
    return nil
end
local function worker5()
    while not mM.Unloaded do
        task.wait(0.35)
        if m5("AutoTrain") then
            pcall(mS)
        end
    end
end
local function antiAfkLoop()
    while not mM.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local s7 = tick() - nO
            local s8 = tick() - nL
            if s7 >= 300 and s8 >= 60 then
                pcall(no)
            else
                if s7 < 300 and s8 >= 300 then
                    pcall(no)
                end
            end
        end
    end
end
local function fn723(aZ)
    return mO(nM("OwnedTrails", ""), aZ)
end
local function onRenderStepped(hv)
    if mM.Unloaded then
        return
    end
    local tt = Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value and not m5("AutoWin")
    if tt then
        local tt_1 = mF()
        if tt_1 then
            tt_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local tt_3 = mt()
        local tu = mF()
        if tt_3 and tu then
            tu.PlatformStand = true
            local tu_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                tu_1 = tu_1 + CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                tu_1 = tu_1 - CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                tu_1 = tu_1 - CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                tu_1 = tu_1 + CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                tu_1 = tu_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                tu_1 = tu_1 - Vector3.new(0, 1, 0)
            end
            tt_3.AssemblyLinearVelocity = Vector3.zero
            if tu_1.Magnitude > 0 then
                tt_3.CFrame = tt_3.CFrame + tu_1.Unit * Options.FlySpeed.Value * hv
            end
        end
    end
end
local function fn726(ch)
    local p3 = nJ(ch)
    local p4 = p3 and p3:GetAttribute("LaneZ")
    local p3_1 = tonumber(p4) or 0
    return p3_1
end
local function fn731(aD, aE)
    local attr = LocalPlayer:GetAttribute(aD)
    if attr == nil then
        return aE
    end
    return attr
end
local function fn745()
    local o8 = { "Best" }
    local pf = 1
    while pf <= 3 do
        local pg = pf
        local o9 = nJ(pg)
        if o9 then
            local pa = {}
            for i, child in o9:GetChildren() do
                local o9_1 = tonumber(child.Name)
                local pb = o9_1 and child:IsA("Vector3Value")
                if pb then
                    pa[#pa + 1] = o9_1
                end
            end
            table.sort(pa)
            for k, v in pa do
                o8[#o8 + 1] = string.format("W%d | Lv %d", pg, v)
            end
        end
        pf += 1
    end
    return o8
end
local function antiGameplayPauseLoop()
    while not mM.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            nI(true)
        end
    end
end
local function fn786()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    nL = tick()
end
local function onCopyPayPalLink()
    mw(mL, "Copied PayPal link")
end
local function fn832()
    local oU = tonumber(nM("Level", 1)) or 1
    return oU
end
local function fn841()
    local qt_1
    local qu_1
    local qs_1
    qu_1, qs_1, qt_1 = nd()
    local qv = not qt_1
    local qw = not qu_1
    local qB = if qw then 1 else 0
    local qz = 3608 * qB + 1097 * (1 - qB)
    local qA = 522 * qB + 2874 * (1 - qB)
    if not ((qz * 1975 + qA * 716 + qz * qA) % 16777213 == 9382928) then
        qw = qv
    end
    if qw then
        return
    end
    if m2() ~= qu_1 then
        nz(qu_1)
        return
    end
    nR(false)
    local qv_2 = Options.AutoWinWalkSpeed and Options.AutoWinWalkSpeed.Value or 60
    local qw_2 = mU(qu_1, qs_1)
    local qs_3 = qw_2 and qw_2.Position or qt_1
    local qt_2 = nx(qs_3, qv_2, qu_1)
    local qs_4 = mt()
    if qw_2 and qs_4 then
        local Magnitude = Vector3.new(qw_2.Position.X - qs_4.Position.X, 0, qw_2.Position.Z - qs_4.Position.Z).Magnitude
        if qt_2 or Magnitude <= 12 then
            nS(qw_2)
        end
    end
end
local function onCopySolanaAddress()
    mw(mR, "Copied Solana address")
end
local function fn848(aS, aT)
    local o1 = aS or ""
    return ("," .. tostring(o1) .. ","):find("," .. aT .. ",", 1, true) ~= nil
end
local function worker()
    local sU_1
    while true do
        task.wait(1)
        if mM.Unloaded then
            break
        end
        local sT = math.floor(os.clock() - mX)
        if sT < 60 then
            sU_1 = sT .. "s"
        elseif sT < 3600 then
            sU_1 = string.format("%dm %ds", sT // 60, sT % 60)
        else
            sU_1 = string.format("%dh %dm", sT // 3600, sT % 3600 // 60)
        end
        nl:SetText(nq("Session time", sU_1, nH))
    end
end
local function worker6()
    while not mM.Unloaded do
        RunService.Heartbeat:Wait()
        if m5("AutoWin") then
            pcall(mu)
        end
    end
end
local function fn889(dF)
    local q5 = mt()
    local q6 = not dF
    local q7 = not q5
    local rb = if q7 then 1 else 0
    local q9 = 951 * rb + 2361 * (1 - rb)
    local ra = 1506 * rb + 2861 * (1 - rb)
    if not ((q9 * 1958 + ra * 3395 + q9 * ra) % 16777213 == 8407134) then
        q7 = q6
    end
    if q7 then
        return
    end
    q5.CFrame = dF.CFrame + Vector3.new(0, 3, 0)
end
local function onInputBegan()
    nO = tick()
end
local function fn901(is, it)
    local Type = it.Type
    if Type == "Toggle" then
        return { idx = is, type = "Toggle", value = it.Value == true }
    elseif Type == "Slider" then
        return { idx = is, type = "Slider", value = tostring(it.Value) }
    elseif Type == "Dropdown" then
        return { idx = is, type = "Dropdown", multi = it.Multi == true, value = it.Value }
    elseif Type == "Input" then
        local t2 = it.Value
        local t6 = if t2 then 1 else 0
        local t4 = 2697 * t6 + 2757 * (1 - t6)
        local t5 = 516 * t6 + 3217 * (1 - t6)
        if not ((t4 * 677 + t5 * 903 + t4 * t5) % 16777213 == 3683469) then
            t2 = ""
        end
        return { idx = is, type = "Input", text = tostring(t2) }
    elseif Type == "ColorPicker" then
        return { idx = is, type = "ColorPicker", value = it.Value:ToHex(), transparency = it.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = is,
            type = "KeyPicker",
            mode = it.Mode,
            key = it.Value,
            modifiers = it.Modifiers,
            toggled = it.Toggled
        }
    else
        return nil
    end
end
local function fn911()
    local oY = tonumber(nM("Rebirths", 0)) or 0
    return oY
end
local function fn920(ct)
    local p9 = mt()
    if not p9 then
        return
    end
    local qa = m9(ct)
    p9.CFrame = CFrame.new(qa + Vector3.new(0, 3, 0))
    p9.AssemblyLinearVelocity = Vector3.zero
    p9.AssemblyAngularVelocity = Vector3.zero
end
local function onStepped()
    if mM.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local tj_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if tj_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn923()
    local sM_1
    local sL_1
    if identifyexecutor then
        sM_1, sL_1 = identifyexecutor()
        local sN = sM_1 ~= ""
        local sO = type(sM_1) == "string" and sN
        if sO then
            local sN_1 = type(sL_1) == "string" and sL_1 ~= "" and sM_1 .. " " .. sL_1
            nQ = sN_1 or sM_1
        end
    end
end
local function fn929()
    connection:Disconnect()
    connection2:Disconnect()
    nI(false)
    nR(true)
    local uM = mF()
    if uM then
        uM:Move(Vector3.zero, false)
        uM.PlatformStand = false
        uM.WalkSpeed = 16
    end
    print("Unloaded!")
end
local function fn936()
    mx = require(LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("PlayerModule")):GetControls()
end
local function fn940()
    mw(nb, "Copied Discord invite to clipboard")
end
local function fn964(bi)
    local pu = bi == "Best"
    local pu_1
    local pv = not bi or pu
    local pv_1
    if pv then
        return nil
    end
    pv_1, pu_1 = string.match(bi, "^W(%d+) | Lv (%d+)$")
    if not pv_1 then
        return nil
    end
    return tonumber(pv_1), tonumber(pu_1)
end
local function fn986(Z, aa)
    if setclipboard then
        setclipboard(Z)
    elseif toclipboard then
        toclipboard(Z)
    end
    mM:Notify(aa)
end
local function fn1003(fI)
    local DiscordGroup = fI:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = nP })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = nP })
end
mo = nil
mp = nil
mq = nil
ms = nil
mt = nil
mu = nil
mv = nil
mw = nil
mx = nil
Options = nil
mz = nil
mA = nil
Toggles = nil
mC = nil
mD = nil
mE = nil
mF = nil
mG = nil
mH = nil
mI = nil
connection2 = nil
mK = nil
mL = nil
mM = nil
mN = nil
mO = nil
mP = nil
mQ = nil
mR = nil
mS = nil
mT = nil
mU = nil
mW = nil
mX = nil
mY = nil
m_ = nil
connection = nil
m2 = nil
m3 = nil
m5 = nil
m6 = nil
m7 = nil
RebirthRequest = nil
m9 = nil
local mn, mr, mV, mZ, TeleportRequest, TrailEquipRequest
na = nil
nb = nil
nd = nil
ne = nil
nh = nil
ni = nil
LocalPlayer = nil
nl = nil
nm = nil
Workspace = nil
no = nil
Eggs = nil
nq = nil
nr = nil
CurrentCamera2 = nil
nt = nil
nu = nil
nw = nil
nx = nil
nz = nil
nA = nil
HttpService = nil
nD = nil
nE = nil
VirtualUser = nil
nG = nil
nH = nil
nI = nil
nJ = nil
UserInputService = nil
nL = nil
nM = nil
RunService = nil
nO = nil
nP = nil
nQ = nil
nR = nil
nS = nil
nT = nil
local EquipBest, BuyEgg, ng, nj, nC
EquipBest = nil
BuyEgg = nil
ng = nil
nj = nil
local CoreGui
local GuiService
nC = nil
local om
RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, LocalPlayer, nb, m7, m3, m_, mY, mT, mR, mL, mI, nH, uS_12, nA, Eggs, BuyEgg, EquipBest, RebirthRequest, TrailEquipRequest, TeleportRequest, mZ, mV, uS_14, mM, mE, Toggles, Options, nC, mx, mn, mp, nG, mw, nP, nE, nq, m5, mN, mF, mt, nM, nt, nh, na, m2, mW, mO, mC, mr, nJ, mG, mv, nd, nz, mU, nR, nw, m9, mK, nS, nx, mu, mD, nu, m6, mP, mz, nT, nm, mH, ms, nD, ng, mS, mo, nr, mq = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local uS_21 = game:GetService("Players")
local uS_11 = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
LocalPlayer = uS_21.LocalPlayer
local uS_3 = "+1 Skinny Per Step"
nb = "https://discord.gg/ehKVq7pf7v"
m7 = "https://rscripts.net/@Ouroboros"
m3 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
m_ = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
mY = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
mT = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
mR = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
mL = "https://paypal.me/TheTruckerGOD"
mI = "https://venmo.com/u/miserablemusic"
local uS_15 = "#345d9d"
local uS_8 = "#f7931a"
local uS_20 = "#627eea"
local uS_13 = "#26a17b"
local uS_4 = "#14f195"
local uS_18 = "#0070ba"
local oe = "#008cff"
local uS_6 = "#7fd47f"
local uS_19 = "#6ec1ff"
if ((not m6 and nx and (uS_13 or m6) or m6 and not m6 and (not nx and not nx)) and (false and not m6 and (false and nx) or (not m6 or uS_13) and (uS_13 or m6)) or (not m6 and m6 or "#26a17b" or (m6 and not m6 or (nx or m6)) or "#26a17b" and (nx or not nx) and ((false or not nx) and (not m6 and nx)))) and not ((not m6 and nx and (uS_13 or m6) or m6 and not m6 and (not nx and not nx)) and (false and not m6 and (false and nx) or (not m6 or uS_13) and (uS_13 or m6)) or (not m6 and m6 or "#26a17b" or (m6 and not m6 or (nx or m6)) or "#26a17b" and (nx or not nx) and ((false or not nx) and (not m6 and nx)))) then
    uS_11 = "#e8a34d"
    nA = "#8b93a3"
    nH = uS_12:WaitForChild("AutoWinsRoute")
else
    nH = "#e8a34d"
    uS_12 = "#8b93a3"
    nA = uS_11:WaitForChild("AutoWinsRoute")
end
local uS_2 = uS_11:WaitForChild("Resources")
Eggs = uS_2:WaitForChild("Eggs")
local uS_23 = uS_11:WaitForChild("Remotes")
BuyEgg = uS_23:WaitForChild("Eggs"):WaitForChild("BuyEgg")
EquipBest = uS_23:WaitForChild("Pets"):WaitForChild("EquipBest")
RebirthRequest = uS_11:WaitForChild("RebirthRequest")
TrailEquipRequest = uS_11:WaitForChild("TrailEquipRequest")
TeleportRequest = uS_11:WaitForChild("TeleportRequest")
mZ = { [1] = 0, [2] = 16, [3] = 33 }
mV = {
    { Name = "WhiteTrail", Cost = 5, Speed = 17 },
    { Name = "RedTrail", Cost = 100, Speed = 22 },
    { Name = "BlueTrail", Cost = 1000, Speed = 25 },
    { Name = "YellowTrail", Cost = 50000, Speed = 28 },
    { Name = "GreenTrail", Cost = 500000, Speed = 31 },
    { Name = "PurpleTrail", Cost = 1000000, Speed = 35 },
    { Name = "RainbowTrail", Cost = 10000000, Speed = 40 },
    { Name = "AuroraTrail", Cost = 50000000, Speed = 45 },
    { Name = "LavaTrail", Cost = 100000000, Speed = 50 },
    { Name = "BeachTrail", Cost = 1000000000, Speed = 54 },
    { Name = "ObsidianTrail", Cost = 1000000000000, Speed = 59 },
    { Name = "DiamondTrail", Cost = 1000000000000000, Speed = 65 }
}
if m9 and false and (uS_13 or m9) or (m9 or uS_8) and (false and not m9) or ((not m9 or not m9) and (uS_8 or m9) or (false or not m9) and (false and m9)) or (false and (m9 and uS_8) or (uS_8 and not m9 or false)) and (not m9 and false and false and ((false or m9) and "#f7931a")) or not (m9 and false and (uS_13 or m9) or (m9 or uS_8) and (false and not m9) or ((not m9 or not m9) and (uS_8 or m9) or (false or not m9) and (false and m9)) or (false and (m9 and uS_8) or (uS_8 and not m9 or false)) and (not m9 and false and false and ((false or m9) and "#f7931a"))) then
    uS_14 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
else
    nG = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
end
mM = loadstring(game:HttpGet(uS_14 .. "Library.lua"))()
local uS_1 = loadstring(game:HttpGet(uS_14 .. "addons/ThemeManager.lua"))()
mE = loadstring(game:HttpGet(uS_14 .. "addons/SaveManager.lua"))()
Toggles = mM.Toggles
Options = mM.Options
mw = fn986
nP = fn940
nE = fns.fn17
nq = fns.fn182
m5 = fns.fn391
mN = fns.fn87
mF = fn643
mt = fns.fn199
if ((not mF or not nw) and false or (not na and not mF or nw and not nE) or (mF or not uS_1 or (not nE or not nE) or uS_4 and not uS_1 and (not nw and na))) and not ((not mF or not nw) and false or (not na and not mF or nw and not nE) or (mF or not uS_1 or (not nE or not nE) or uS_4 and not uS_1 and (not nw and na))) then
    na = fn731
    m2 = fn832
    nt = fns.fn325
    nh = fn911
    nM = fns.fn254
else
    nM = fn731
    nt = fn832
    nh = fns.fn325
    na = fn911
    m2 = fns.fn254
end
mW = fns.fn132
mO = fn848
mC = fns.fn531
mr = fn723
nJ = fns.fn567
local uS_16 = fn745
mG = fn964
mv = fns.fn529
nd = fns.fn533
nC = 0
nz = function(bT)
    if m2() == bT then
        return true
    end
    local pR = mZ[bT] or 0
    if na() < pR then
        return false
    elseif os.clock() - nC < 2 then
        return false
    else
        nC = os.clock()
        pcall(function()
            TeleportRequest:FireServer(bT)
        end)
        return false
    end
end
mU = fns.fn263
mx = nil
pcall(fn936)
mn = true
nR = function(cb)
    if not mx or mn == cb then
        return
    end
    mn = cb
    pcall(function()
        if cb then
            mx:Enable()
        else
            mx:Disable()
        end
    end)
end
nw = fn726
m9 = fns.fn163
mK = fn920
mp = 0
if ((not na and nP and (not mW and false) or (na and na or (mL or mW))) and (false and mW and (not nP or false) and (not na or not nC or (mL or not nP))) or ((not nP and not mW or (nC or not nP)) and ((not nP or nC) and false) or (not nP and not nC or (false or nC)) and (false or (mL or nP)))) and not ((not na and nP and (not mW and false) or (na and na or (mL or mW))) and (false and mW and (not nP or false) and (not na or not nC or (mL or not nP))) or ((not nP and not mW or (nC or not nP)) and ((not nP or nC) and false) or (not nP and not nC or (false or nC)) and (false or (mL or nP)))) then
    uS_20 = fns.fn204
else
    nS = fns.fn204
end
nx = fn625
mu = fn841
mD = fns.fn396
if ((nb or not mC or (not mC or not mC)) and (not mC or mC or (not nD or not mC)) or mH and not mH and (not nD and not mH) and (nD and mC or nD and not mH) or ((nb or nD) and (false or mH) or (false and nD or (mH or nD))) and ((false or not nD or (mH or not mC)) and (nb and mH and (not mH or nb)))) and not ((nb or not mC or (not mC or not mC)) and (not mC or mC or (not nD or not mC)) or mH and not mH and (not nD and not mH) and (nD and mC or nD and not mH) or ((nb or nD) and (false or mH) or (false and nD or (mH or nD))) and ((false or not nD or (mH or not mC)) and (nb and mH and (not mH or nb)))) then
    m6 = fns.fn377
    nu = fns.fn554
    mz = fn889
    mP = fn691
else
    nu = fns.fn377
    m6 = fns.fn554
    mP = fn889
    mz = fn691
end
nT = function(dN)
    local rf
    rf = nil
    rf = mz(dN)
    if not rf then
        return false
    end
    local Parent = rf.Parent
    local rh = Parent and Parent:IsA("BasePart")
    if rh then
        mP(Parent)
        task.wait(0.1)
    end
    if fireproximityprompt then
        pcall(fireproximityprompt, rf)
        return true
    end
    pcall(function()
        rf:InputHoldBegin()
        task.wait(0.05)
        rf:InputHoldEnd()
    end)
    return true
end
nm = fns.fn298
mH = fns.fn522
ms = fn594
nG = 0
nD = fns.fn4
local uS_7 = fns.fn176
if (VirtualUser or uS_7 or (not VirtualUser or mr)) and (uS_23 and mr and (not mr or uS_23)) and not ((VirtualUser or uS_7 or (not VirtualUser or mr)) and (uS_23 and mr and (not mr or uS_23))) then
    mV = fns.fn487
else
    ng = fns.fn487
end
mS = fns.fn83
mo = fns.fn24
nr = function()
    local st = nh()
    local su = -1
    local ss
    for k, v in mV do
        local sC = v
        if mr(sC.Name) then
            if sC.Speed > su then
                su = sC.Speed
                ss = sC.Name
            end
        elseif st >= sC.Cost then
            pcall(function()
                TrailEquipRequest:FireServer(sC.Name)
            end)
            task.wait(0.15)
            local sv_1 = mr(sC.Name) and sC.Speed > su
            if sv_1 then
                su = sC.Speed
                ss = sC.Name
            end
        end
    end
    local st_1 = nM("EquippedTrail", "") or ""
    local su_1 = tostring(st_1)
    if ss and su_1 ~= ss then
        pcall(function()
            TrailEquipRequest:FireServer(ss)
        end)
    end
end
mq = function()
    local sD
    local sE = Options.HatchEgg and Options.HatchEgg.Value
    local sE_3
    local sF_1
    local sE_1 = sE == ""
    local sG = type(sE) ~= "string" or sE_1
    if sG then
        return
    end
    sD = Eggs:FindFirstChild(sE)
    if not sD then
        return
    end
    local sE_2 = ng(sE)
    if nh() < sE_2 then
        return
    end
    sE_3, sF_1 = pcall(function()
        return BuyEgg:InvokeServer(sD)
    end)
    if sE_3 and sF_1 then
        if m5("AutoEquipBestPets") then
            pcall(function()
                EquipBest:FireServer()
            end)
        end
    end
end
local uS_17 = uS_16()
local uS_10 = uS_7()
if #uS_10 == 0 then
    uS_10 = { "Common" }
end
uS_14 = nil
uS_21 = mM:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = nb, Copyable = true }, "|", uS_3 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
uS_23 = {
    Info = uS_21:AddTab("Info", "info"),
    Main = uS_21:AddTab("Main", "gauge"),
    Player = uS_21:AddTab("Player", "person-standing"),
    Settings = uS_21:AddTab("Settings", "settings")
}
if not uS_21 and not uS_21 and (uS_23 or uS_21) or uS_21 and (uS_14 and not uS_23) or not (not uS_21 and not uS_21 and (uS_23 or uS_21) or uS_21 and (uS_14 and not uS_23)) then
    uS_14 = fn1003
end
for k, v in uS_23 do
    if v ~= uS_23.Info then
        uS_14(v)
    end
end
nQ, uS_7, uS_16, nl, ni, uS_9 = nil, nil, nil, nil, nil, nil
uS_21 = 1
repeat
    uS_14 = (uS_21 * 2 + 0) % 3 + 1
    if uS_14 <= 2 then
        if uS_14 <= 1 then
            if uS_21 * 96200757 + 9 + 4 >= uS_21 * 96200757 + 9 + 4 + 4 then
                nl = tostring(game.JobId)
            else
                ni = tostring(game.JobId)
            end
            uS_21 = (uS_21 + 17) % 24
        else
            uS_14 = {
                "cqjzozcxlna",
                "ifdisbtuf",
                "obemguijguq",
                "uyzzhhlxutqz",
                "sbtauvzxxhh",
                "scwzcvem",
                "uaby",
                "sdmtf",
                "eclekzitbm",
                "tqzido"
            }
            if uS_14[(uS_21 * 21 + 70) % 10 + 1] < uS_14[(uS_21 * 21 + 70) % 10 + 1] then
                ni = #uS_9 > 18
            else
                uS_9 = #ni > 18
            end
            uS_21 = (uS_21 + 2) % 24
        end
    else
        uS_14 = {
            "cbbiddowjl",
            "plbruo",
            "jmvfclenvin",
            "zlmjtyctq",
            "vkclgzypepc",
            "xnpniocs",
            "kndpjufnqmx",
            "jtei",
            "fbmprlm",
            "plfehv",
            "hasaam",
            "egahu"
        }
        local vw = uS_21
        uS_2 = uS_14[vw % 12 + 1]
        if uS_2:len() >= uS_2:gsub("(.)", "%1%1", vw % 3 % 2 + 1):len() then
            uS_6 = "Unknown"
            pcall(fn923)
            nl = (nil):AddLeftGroupbox("Account", "circle-user")
            nl:AddLabel(nE("User", uS_7.Name, nH), true)
            nl:AddLabel(nE("Status", "Keyless", nH), true)
            nl:AddLabel(nE("Executor", "Unknown", nH), true)
            uS_23 = (nil):AddLeftGroupbox("Game Info", "gamepad-2")
            uS_23:AddLabel(uS_3(nq .. " [" .. tostring(game.PlaceId) .. "]", LocalPlayer), true)
            uS_23:AddLabel(nE("Place ID", tostring(game.PlaceId), LocalPlayer), true)
            uS_16 = uS_23:AddLabel(nE("Session time", "0s", nQ), true)
        else
            nQ = "Unknown"
            pcall(fn923)
            uS_7 = uS_23.Info:AddLeftGroupbox("Account", "circle-user")
            uS_7:AddLabel(nq("User", LocalPlayer.Name, uS_6), true)
            uS_7:AddLabel(nq("Status", "Keyless", uS_6), true)
            uS_7:AddLabel(nq("Executor", nQ, uS_6), true)
            uS_16 = uS_23.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            uS_16:AddLabel(nE(uS_3 .. " [" .. tostring(game.PlaceId) .. "]", uS_19), true)
            uS_16:AddLabel(nq("Place ID", tostring(game.PlaceId), uS_19), true)
            nl = uS_16:AddLabel(nq("Session time", "0s", nH), true)
        end
        uS_21 = (uS_21 + 2) % 24
    end
until (uS_21 * 7 + 22) % 24 == 8
if uS_9 then
    uS_21 = 6
    repeat
        if (uS_21 * 2 + 9) * 16 % 3 == ((uS_21 * 2 + 9) * 16 + 0) % 3 then
            uS_9 = string.sub(ni, 1, 18) .. "..."
        else
            ni = string.sub(uS_9, 1, 18) .. "..."
        end
        uS_21 = (uS_21 + 5) % 8
    until (uS_21 * 1 + 3) % 8 == 6
end
uS_21 = uS_9
local oy = if uS_21 then 1 else 0
local ow = 923 * oy + 1989 * (1 - oy)
local ox = 1387 * oy + 2597 * (1 - oy)
if not ((ow * 398 + ox * 354 + ow * ox) % 16777213 == 2138553) then
    uS_21 = ni
end
mX, nO, nL, connection, connection2, CurrentCamera2, om, no, nI, nj, mQ, mA, ne = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local ol = uS_21
uS_16:AddLabel(nq("Server", ol, uS_12), true)
uS_16:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
mX = os.clock()
task.spawn(worker)
uS_2 = uS_23.Info:AddRightGroupbox("Scripts", "package")
uS_2:AddLabel(nE("Included in this hub", uS_12), true)
uS_2:AddLabel(nE(uS_3, uS_19), true)
uS_14 = uS_23.Info:AddRightGroupbox("Features", "list")
uS_14:AddLabel(nE("Auto Win", nH), true)
uS_14:AddLabel(nE("Auto Train", uS_19), true)
uS_14:AddLabel(nE("Auto Shop", uS_6), true)
uS_14:AddLabel(nE("Auto Hatch", uS_19), true)
uS_14:AddLabel(nE("Player Utilities", uS_12), true)
local SocialsGroup = uS_23.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = nP })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = uS_23.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = nP })
local DonationsGroup = uS_23.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(nE("All donations are optional but appreciated.", nH), true)
DonationsGroup:AddLabel(nE("If you donate you get a special role, just PING after you donate.", uS_6), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(nE("LTC / Litecoin", uS_15), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(nE("BTC / Bitcoin", uS_8), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = fns.onCopyBitcoinAddress })
DonationsGroup:AddLabel(nE("ETH / Ethereum", uS_20), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(nE("USDT", uS_13), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
DonationsGroup:AddLabel(nE("Solana", uS_4), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(nE("PayPal", uS_18), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(nE("Venmo", oe), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(nE("Don't have any of the listed currencies but still wanna donate?", uS_12), true)
DonationsGroup:AddLabel(nE("DM me and we'll work something out.", uS_19), true)
local FaqGroup = uS_23.Info:AddRightGroupbox("FAQ", "circle-help")
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
local FarmGroup = uS_23.Main:AddLeftGroupbox("Farm", "bot")
FarmGroup:AddToggle("AutoWin", { Text = "Auto Win", Default = false })
FarmGroup:AddDropdown("WinPlate", { Text = "Win Plate", Values = uS_17, Default = "Best", Expandable = true, ExpandColumns = 2 })
FarmGroup:AddSlider("AutoWinWalkSpeed", { Text = "Auto Win WalkSpeed", Default = 60, Min = 16, Max = 250, Rounding = 0 })
FarmGroup:AddToggle("AutoTrain", { Text = "Auto Train", Default = false })
FarmGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local ShopGroup = uS_23.Main:AddRightGroupbox("Shop", "shopping-bag")
ShopGroup:AddToggle("AutoBuyTrail", { Text = "Auto Buy Trail", Default = false })
ShopGroup:AddToggle("AutoBuyFoods", { Text = "Auto Buy Foods", Default = false })
local PetsGroup = uS_23.Main:AddRightGroupbox("Pets", "paw-print")
PetsGroup:AddToggle("AutoHatch", { Text = "Auto Hatch Pets", Default = false })
PetsGroup:AddDropdown("HatchEgg", { Text = "Egg", Values = uS_10, Default = uS_10[1] })
PetsGroup:AddSlider("HatchDelay", { Text = "Hatch Delay", Default = 0.35, Min = 0.1, Max = 3, Rounding = 2 })
PetsGroup:AddToggle("AutoEquipBestPets", { Text = "Auto Equip Best Pets", Default = true })
uS_11 = uS_23.Player:AddLeftGroupbox("Movement", "footprints")
uS_11:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
uS_11:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
uS_11:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
uS_11:AddToggle("NoClip", { Text = "NoClip", Default = false })
uS_11:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
uS_9 = uS_23.Player:AddRightGroupbox("Fly", "feather")
uS_9:AddToggle("Fly", { Text = "Fly", Default = false })
uS_9:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
uS_7 = uS_23.Settings:AddLeftGroupbox("Menu")
uS_7:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
mM.ToggleKeybind = Options.MenuKeybind
uS_7:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
uS_7:AddButton({ Text = "Unload", Func = fns.onUnload })
nO = tick()
nL = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local s1 = v
        pcall(function()
            s1:Disable()
        end)
    end
end)
no = fn786
connection = UserInputService.InputBegan:Connect(onInputBegan)
do
    connection2 = UserInputService.InputChanged:Connect(onInputChanged)
    task.spawn(antiAfkLoop)
    nI = function(g2)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not g2)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not g2
            end
        end)
        if not g2 then
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
    Toggles.AntiGameplayPause:OnChanged(fns.fn476)
    task.spawn(antiGameplayPauseLoop)
    RunService.Stepped:Connect(onStepped)
    UserInputService.JumpRequest:Connect(fns.onJumpRequest)
    CurrentCamera2 = Workspace.CurrentCamera
end
if (false or not connection) and (not uS_9 or not uS_14) and (not uS_9 and not nL and (not connection and not OuroborosHubGroup)) or not ((false or not connection) and (not uS_9 or not uS_14) and (not uS_9 and not nL and (not connection and not OuroborosHubGroup))) then
    RunService.RenderStepped:Connect(onRenderStepped)
    Toggles.Fly:OnChanged(fns.fn283)
    Toggles.WalkSpeedEnabled:OnChanged(fns.fn378)
    Toggles.AutoWin:OnChanged(fns.fn513)
    task.spawn(worker6)
    task.spawn(worker5)
    task.spawn(fns.worker4)
    task.spawn(worker3)
    task.spawn(fns.worker2)
    task.spawn(fns.hatchDelayLoop)
    uS_1:SetLibrary(mM)
    uS_1:SetFolder("OuroborosHub")
    uS_1:SaveDefault("Evil Hello Kitty")
    uS_1:ApplyToTab(uS_23.Settings)
    uS_1:LoadDefault()
    mE:SetLibrary(mM)
    mE:IgnoreThemeSettings()
    mE:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    mE:SetFolder("OuroborosHub/SkinnyPerStep")
    om = mE:BuildConfigSection(uS_23.Settings)
else
    Toggles.RenderStepped:Connect(onRenderStepped)
    RunService.Fly:OnChanged(fns.fn283)
    RunService.WalkSpeedEnabled:OnChanged(fns.fn378)
    RunService.AutoWin:OnChanged(fns.fn513)
    task.spawn(worker6)
    task.spawn(worker5)
    task.spawn(fns.worker4)
    task.spawn(worker3)
    task.spawn(fns.worker2)
    task.spawn(fns.hatchDelayLoop)
    mE:SetLibrary(uS_23)
    mE:SetFolder("OuroborosHub")
    mE:SaveDefault("Evil Hello Kitty")
    mE:ApplyToTab(mM.Settings)
    mE:LoadDefault()
    om:SetLibrary(uS_23)
    om:IgnoreThemeSettings()
    om:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    om:SetFolder("OuroborosHub/SkinnyPerStep")
    om:BuildConfigSection(mM.Settings)
end
nj = fns.fn493
mQ = fn901
mA = fn663
ne = function(iG)
    local up
    up = nil
    local uq = type(iG) ~= "table" or type(iG.idx) ~= "string" or type(iG.type) ~= "string" or mE.Ignore[iG.idx]
    if uq then
        return false
    end
    up = nj(iG.type, iG.idx)
    if not up then
        return false
    end
    local uq_1 = pcall(function()
        if iG.type == "Input" then
            if type(iG.text) ~= "string" then
                return
            end
            up:SetValue(iG.text)
        elseif iG.type == "ColorPicker" then
            up:SetValueRGB(Color3.fromHex(iG.value), iG.transparency)
        elseif iG.type == "KeyPicker" then
            up:SetValue({ iG.key, iG.mode, iG.modifiers })
            if iG.mode == "Toggle" and iG.toggled ~= nil then
                up.Toggled = iG.toggled
                up:Update()
            end
        else
            up:SetValue(iG.value)
        end
    end)
    return uq_1
end
om:AddDivider()
om:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
om:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
om:AddButton("Import Config from Clipboard Text", fns.onImportConfigFromClipboardTex)
mE:LoadAutoloadConfig()
mM:OnUnload(fn929)
