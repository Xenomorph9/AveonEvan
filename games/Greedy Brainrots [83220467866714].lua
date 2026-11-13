local fns = {}
local zW_18, zW_27, zW_41, zW_54, GameInfoGroup
local pX
local ql
local pl
local qK
local pK
local p8
local o8
local HttpService
local BrainrotVisual
local qk
local Label5
local qJ
local pJ
local p7
local o7
local qw
local pw
local pV
local qj
local pj
local qI
local pI
local connection2
local qv
local Label3
local pU
local Net
local pi
local qH
local State
local Directory
local Toggles
local qu
local connection
local qT
local pT
local qh
local ph
local UserInputService
local pG
local p4
local o4
local pt
local Label
local pS
local CollectionService
local pg
local qF
local pF
local Prompt
local o3
local qs
local ps
local qR
local pR
local qf
local pf
local qE
local pE
local p2
local o2
local CurrentCamera
local pr
local qQ
local pQ
local qe
local pe
local qD
local RideReadout
local p1
local o1
local qq
local Label4
local qP
local World
local qd
local pd
local qC
local pC
local p0
local o0
local qp
local pp
local qO
local pO
local Balancing
local pc
local VirtualUser
local pB
local p_
local po
local qN
local pN
local pb
local qA
local Label2
local Trader
local qn
local pn
local qM
local pM
local LocalPlayer
local pa
local qz
local pz
local pY
local qm
local pm
local qL
local pL
local p9
local o9
local qy
local py
function fns.fn1(a5, a6)
    return string.format('<font color="%s">%s</font>', a6, a5)
end
function fns.worker2()
    while not pj.Unloaded do
        task.wait(0.35)
        local yu = if pJ("AutoBuy") then 1 else 0
        if yu == 1 then
            pcall(qv)
        end
    end
end
function fns.fn18()
    local Character = LocalPlayer.Character
    local sa = Character and Character:FindFirstChildOfClass("Humanoid")
    return sa
end
function fns.fn26(ex)
    for i, descendant in ipairs(ex:GetDescendants()) do
        local u5 = descendant.Name == "PedestalBrainrot" or descendant:HasTag(BrainrotVisual.PedestalBrainrotTag)
        if u5 then
            return true
        end
    end
    return false
end
function fns.onCopyEthereumAddress()
    qR(pL, "Copied Ethereum address")
end
function fns.fn75()
    if os.clock() - pd < 0.75 then
        return
    end
    local v0 = pV()
    local v1 = pG(v0)
    if #v1 == 0 then
        return
    end
    pd = os.clock()
    for i, v in ipairs(v1) do
        local v0_1 = pj.Unloaded or not pJ("AutoCollectMoney")
        if v0_1 then
            return
        end
        if qL(v.instance) then
            local v0_2 = qj(v.instance)
            if v0_2 then
                qe(v0_2)
                task.wait(0.05)
            end
        end
    end
end
function fns.fn77(bT, bU)
    local ta = pb(bT)
    if not ta then
        return nil
    end
    return Balancing.BuyPriceAt(ta.BuyPrice, qH(bU))
end
function fns.fn89(bd)
    if pj.Unloaded then
        return false
    end
    local sE = Toggles[bd]
    return sE ~= nil and sE.Value == true
end
function fns.fn102()
    local tp = {}
    for i, v in ipairs(CollectionService:GetTagged(Prompt.ConveyorGrabTag)) do
        local tq = v:IsA("ProximityPrompt") and v.Enabled
        if tq then
            local Model = v:FindFirstAncestorWhichIsA("Model")
            local tr = Model and Model.Parent
            local ts = Model
            if ts then
                ts = tr
            end
            if ts then
                ts = tr:IsA("Folder")
            end
            if ts then
                local attr = Model:GetAttribute(BrainrotVisual.BrainrotIdAttribute)
                local ts_1 = qH(Model:GetAttribute(BrainrotVisual.FormAttribute))
                local tq_2 = attr ~= ""
                local tu = typeof(attr) == "string" and tq_2
                if tu then
                    local tq_3 = qp(attr, ts_1)
                    local tu_1 = pE(attr)
                    if tq_3 ~= nil then
                        tp[#tp + 1] = {
                            slotId = tr.Name,
                            brainrotId = attr,
                            form = ts_1,
                            price = tq_3,
                            rarity = tu_1,
                            rank = pO(tu_1),
                            formRank = pm(ts_1)
                        }
                    end
                end
            end
        end
    end
    return tp
end
function fns.fn119()
    local zd = {}
    for i, v in ipairs({ Toggles, o1 }) do
        for k, v in pairs(v) do
            local ze = type(v) == "table" and type(v.Type) == "string" and not o9.Ignore[k]
            if ze then
                local ze_1 = pC(k, v)
                if ze_1 then
                    zd[#zd + 1] = ze_1
                end
            end
        end
    end
    table.sort(zd, function(k3, k4)
        if k3.type ~= k4.type then
            return k3.type < k4.type
        end
        return k3.idx < k4.idx
    end)
    return { objects = zd }
end
function fns.fn144(bJ)
    local s2_1
    local s1_1
    s1_1, s2_1 = pcall(Directory.Brainrots.get, bJ)
    local s3 = s1_1 and typeof(s2_1) == "table"
    if s3 then
        return s2_1
    end
    return nil
end
function fns.fn166()
    local tU = qP("SellRarities")
    local tV = qP("SellForms")
    local tW = {}
    for i, v in ipairs(State.brainrots()) do
        if v.state ~= "ungrown" and v.form ~= nil and v.form ~= "" then
            local tX_1 = pE(v.brainrotId)
            if qM(tX_1, v.form, tU, tV) then
                tW[#tW + 1] = v.instanceId
            end
        end
    end
    return tW
end
function fns.fn201(cc, cd, ce, cf)
    if not p9(ce) then
        if cc == nil or ce[cc] ~= true then
            return false
        elseif not p9(cf) then
            if cf[qH(cd)] ~= true then
                return false
            end
            return true
        else
            return true
        end
    elseif not p9(cf) then
        if cf[qH(cd)] ~= true then
            return false
        end
        return true
    else
        return true
    end
end
function fns.worker()
    local xX_1
    while true do
        task.wait(1)
        if pj.Unloaded then
            break
        end
        local xW = math.floor(os.clock() - qm)
        if xW < 60 then
            xX_1 = xW .. "s"
        elseif xW < 3600 then
            xX_1 = string.format("%dm %ds", xW // 60, xW % 60)
        else
            xX_1 = string.format("%dh %dm", xW // 3600, xW % 3600 // 60)
        end
        Label:SetText(p4("Session time", xX_1, qD))
    end
end
function fns.fn210()
    local wa = qP("PlaceRarities")
    local wb = qP("PlaceForms")
    local wc = {}
    for i, v in ipairs(State.brainrots()) do
        if v.state == "grown" then
            local wd = pE(v.brainrotId)
            if qM(wd, v.form, wa, wb) then
                local we = qH(v.form)
                local wf = #wc + 1
                local instanceId = v.instanceId
                local brainrotId = v.brainrotId
                local wi = typeof(v.growth) == "number" and v.growth
                local wj = wi or 0
                wc[wf] = {
                    instanceId = instanceId,
                    brainrotId = brainrotId,
                    form = we,
                    growth = wj,
                    rarity = wd,
                    rank = pO(wd),
                    formRank = pm(we),
                    quality = py(v.brainrotId, we, v.growth)
                }
            end
        end
    end
    table.sort(wc, function(fZ, f_)
        if fZ.quality ~= f_.quality then
            return fZ.quality > f_.quality
        end
        return fZ.instanceId < f_.instanceId
    end)
    return wc
end
function fns.fn211()
    local uy = p0(pf("PullAt", "2"), 2)
    if uy < 0 then
        uy = 0
    end
    return uy
end
function fns.fn229(kP, kQ)
    local Type = kQ.Type
    if Type == "Toggle" then
        return { idx = kP, type = "Toggle", value = kQ.Value == true }
    elseif Type == "Slider" then
        return { idx = kP, type = "Slider", value = tostring(kQ.Value) }
    elseif Type == "Dropdown" then
        return { idx = kP, type = "Dropdown", multi = kQ.Multi == true, value = kQ.Value }
    elseif Type == "Input" then
        local y7 = kQ.Value or ""
        return { idx = kP, type = "Input", text = tostring(y7) }
    elseif Type == "ColorPicker" then
        return { idx = kP, type = "ColorPicker", value = kQ.Value:ToHex(), transparency = kQ.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = kP,
            type = "KeyPicker",
            mode = kQ.Mode,
            key = kQ.Value,
            modifiers = kQ.Modifiers,
            toggled = kQ.Toggled
        }
    else
        return nil
    end
end
function fns.fn250(ay)
    local su = typeof(ay) ~= "table" or ay.ok
    if su then
        return
    end
    local su_1 = ay.message or ""
    local sv = tostring(su_1):lower()
    local su_2 = sv:find("ghost", 1, true) or sv:find("replay", 1, true)
    if su_2 then
        qk(1.75)
    end
end
function fns.fn255(gx)
    local wS
    local wT = pV()
    for i, v in ipairs(pG(wT)) do
        if qQ(v.instance) then
            local wT_1 = qs(v.instance)
            local wU = wT_1 and qz(gx, wT_1)
            if wU then
                local wU_1 = py(wT_1.brainrotId, wT_1.form, wT_1.growth)
                if wS == nil or wU_1 < wS.quality then
                    wS = { index = v.index, instance = v.instance, info = wT_1, quality = wU_1 }
                end
            end
        end
    end
    return wS
end
function fns.fn275(bj, bk)
    local sH = o1[bj]
    if sH == nil then
        return bk
    end
    return sH.Value
end
function fns.fn287()
    if p_() then
        return
    end
    if os.clock() - o7 < 0.9 then
        return
    end
    local xb = State.hasSlot() and not State.slotCooked()
    if xb then
        return
    end
    local xb_1 = #pp() > 0 and pJ("AutoPlace")
    if xb_1 then
        return
    end
    local xb_2 = pa()
    if xb_2 == nil then
        return
    end
    local xc = qC(xb_2)
    if xc == nil then
        return
    end
    o7 = os.clock()
    Net.TakePedestal.send(xc.index)
    task.wait(0.35)
    local xj = if p_() then 1 else 0
    if xj == 1 then
        return
    end
    qT(xb_2.instanceId)
    if p_() then
        return
    end
    Net.PlacePedestal.send({ pad = xc.index, instanceId = xb_2.instanceId })
end
function fns.onUnload()
    pj:Unload()
end
function fns.onCopyUSDTAddress()
    qR(pF, "Copied USDT address")
end
function fns.fn316()
    return World.plotForUser(LocalPlayer.UserId)
end
function fns.fn333(by, bz)
    local sV = by or ""
    local sW = tostring(sV):gsub(",", ""):match("[%d%.]+")
    local sV_1 = tonumber(sW)
    if sV_1 == nil then
        return bz
    end
    return sV_1
end
function fns.fn334()
    local sg_1
    local sf_1
    if os.clock() < o3 then
        return true
    end
    sf_1, sg_1 = pcall(function()
        return RideReadout.ghostForPad(RideReadout.LocalPadKey)
    end)
    if sf_1 and sg_1 ~= nil then
        return true
    end
    local GreedyBrainrotGhosts = workspace:FindFirstChild("__GreedyBrainrotGhosts")
    if GreedyBrainrotGhosts then
        for i, child in ipairs(GreedyBrainrotGhosts:GetChildren()) do
            if child:IsA("Model") then
                return true
            end
        end
    end
    return false
end
function fns.fn339(bw)
    return next(bw) == nil
end
function fns.onStepped()
    if pj.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local x3_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if x3_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.onCopyBitcoinAddress()
    qR(pN, "Copied Bitcoin address")
end
function fns.fn387(fl, fm)
    if fm == nil then
        return true
    end
    return py(fl.brainrotId, fl.form, fl.growth) > py(fm.brainrotId, fm.form, fm.growth)
end
function fns.onCopyJoinScript_JobID()
    local h8 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, qO)
    qR(h8, "Copied join script to clipboard")
end
function fns.fn414()
    local f2 = qF()
    return f2[1]
end
function fns.fn421()
    local xP_1
    local xO_1
    if identifyexecutor then
        xP_1, xO_1 = identifyexecutor()
        local xQ = xP_1 ~= ""
        local xR = type(xP_1) == "string" and xQ
        if xR then
            local xQ_1 = type(xO_1) == "string" and xO_1 ~= "" and xP_1 .. " " .. xO_1
            pt = xQ_1 or xP_1
        end
    end
end
function fns.fn458(eV)
    local vr = pi(eV)
    if vr == nil then
        return qL(eV)
    end
    local vs = vr.ActionText or ""
    local vr_1 = tostring(vs)
    local vs_1 = vr_1 == "Unlock Pad"
    local vt = vr_1 == "Buy"
    local vx = if vt then 1 else 0
    local vv = 1663 * vx + 3846 * (1 - vx)
    local vw = 3209 * vx + 2876 * (1 - vx)
    if not ((vv * 1242 + vw * 3107 + vv * vw) % 16777213 == 595163) then
        vt = vs_1
    end
    if vt then
        return false
    end
    return true
end
function fns.fn462()
    local Character = LocalPlayer.Character
    local r4 = Character and Character:FindFirstChild("HumanoidRootPart")
    return r4
end
function fns.fn463()
    local uF = if not State.hasSlot() then 1 else 0
    if uF == 1 then
        return 0
    end
    local uF_1 = if State.slotCooked() then 1 else 0
    if uF_1 == 1 then
        return State.slotGrowth()
    end
    local uA = State.slotPlantedAt()
    local uB = typeof(uA) ~= "number" or uA <= 0
    if uB then
        return State.slotGrowth()
    end
    if ps ~= uA then
        ps = uA
        pn = os.clock() - math.max(0, workspace:GetServerTimeNow() - uA)
    end
    return Balancing.GrowthAt(uA, uA + (os.clock() - pn), State.fertilizerTier())
end
function fns.onJumpRequest()
    if pj.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local yb_1 = qE()
        if yb_1 then
            yb_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.fn468(bD)
    local sZ_1
    local sY_1
    sY_1, sZ_1 = pcall(Directory.Brainrots.get, bD)
    local s_ = sY_1 and typeof(sZ_1) == "table"
    if s_ then
        return sZ_1.Rarity
    end
    return nil
end
function fns.antiAfkLoop()
    while not pj.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local yZ = tick() - qn
            local y_ = tick() - qf
            if yZ >= 300 and y_ >= 60 then
                pcall(pT)
            else
                if yZ < 300 and y_ >= 300 then
                    pcall(pT)
                end
            end
        end
    end
end
function fns.worker8()
    while not pj.Unloaded do
        task.wait(0.8)
        if pJ("AutoCollectMoney") then
            pcall(pS)
        end
    end
end
function fns.fn499()
    if p_() then
        return
    end
    if os.clock() - o7 < 0.75 then
        return
    end
    local w2 = State.hasSlot() and not State.slotCooked()
    if w2 then
        return
    end
    local w2_1 = pa()
    if w2_1 == nil then
        return
    end
    local w3 = pp()
    if #w3 == 0 then
        return
    end
    o7 = os.clock()
    qT(w2_1.instanceId)
    local xa = if p_() then 1 else 0
    if xa == 1 then
        return
    end
    Net.PlacePedestal.send({ pad = w3[1].index, instanceId = w2_1.instanceId })
end
function fns.onInputBegan()
    qn = tick()
end
function fns.fn511(hE)
    local xG_1
    if not State.hasSlot() then
        return nil
    end
    local xD = pb(State.slotBrainrotId())
    if xD == nil then
        return nil
    end
    local xE = hE
    if typeof(xE) ~= "number" then
        xE = pK()
    end
    local xF = qH(State.slotForm())
    if State.slotCooked() then
        xG_1 = Balancing.CookedValue(xD.BuyPrice, xD.BaseValue, State.slotCookedForm(), xE)
    else
        xG_1 = Balancing.PullValue(xD.BaseValue, xF, xE)
    end
    local xD_1 = xG_1 * Balancing.CashMult(State.rebirths(), State.boosts(), State.friendsBoost(), State.now(), State.hasPass("CashBoost"))
    return math.round(xD_1)
end
function fns.fn521(kH, kI)
    local y3_1 = (kH == "Toggle" and Toggles or o1)[kI]
    local y2_2 = type(y3_1) == "table" and y3_1.Type == kH
    return y2_2 and y3_1 or nil
end
function fns.fn550()
    local t4 = qN()
    if #t4 == 0 then
        return
    end
    Net.SellBrainrots.send({ instanceIds = t4 })
end
function fns.onExportConfigToClipboard()
    local zE_1
    local zD_1
    zD_1, zE_1 = pcall(HttpService.JSONEncode, HttpService, pg())
    if not zD_1 then
        pj:Notify("Failed to encode the config")
        return
    end
    local zD_2 = setclipboard or toclipboard
    local zD_3 = type(zD_2) ~= "function" or not pcall(zD_2, zE_1)
    if zD_3 then
        pj:Notify("Your executor does not support copying to the clipboard")
        return
    end
    pj:Notify("Config copied to clipboard", 6)
end
function fns.fn557(aZ, a_)
    if setclipboard then
        setclipboard(aZ)
    elseif toclipboard then
        toclipboard(aZ)
    end
    pj:Notify(a_)
end
function fns.worker7()
    while not pj.Unloaded do
        task.wait(0.5)
        if pJ("AutoPlace") then
            pcall(pl)
        end
        if pJ("AutoReplaceBetter") then
            pcall(qu)
        end
    end
end
function fns.onCopyPayPalLink()
    qR(pw, "Copied PayPal link")
end
function fns.fn614(e0)
    for i, descendant in ipairs(e0:GetDescendants()) do
        local vy = descendant.Name == "PedestalBrainrot" or descendant:HasTag(BrainrotVisual.PedestalBrainrotTag)
        if vy then
            local attr3 = descendant:GetAttribute(BrainrotVisual.BrainrotIdAttribute)
            local vz = qH(descendant:GetAttribute(BrainrotVisual.FormAttribute))
            local attr2 = descendant:GetAttribute(BrainrotVisual.PedestalGrowthAttribute)
            local attr = descendant:GetAttribute(BrainrotVisual.PedestalIncomeAttribute)
            local vC = typeof(attr2) == "number" and attr2
            local vA_1 = vC or 0
            local vC_1 = typeof(attr) == "number" and attr
            return { brainrotId = attr3, form = vz, growth = vA_1, income = vC_1 or 0 }
        end
    end
    return nil
end
function fns.fn621()
    local uM = not State.hasSlot() or not State.slotCooked()
    if uM then
        return
    end
    if os.clock() - qq < 0.5 then
        return
    end
    qq = os.clock()
    Net.ClaimBrainrot.send(0)
end
function fns.worker6()
    while not pj.Unloaded do
        task.wait(0.05)
        if pJ("AutoPull") then
            pcall(pc)
        end
        if pJ("AutoCollectCooked") then
            pcall(qh)
        end
    end
end
function fns.worker4()
    while not pj.Unloaded do
        task.wait(0.75)
        if pJ("AutoSell") then
            pcall(pR)
        end
    end
end
function fns.fn694()
    if State.traderWindow() ~= Trader.WindowIndex(State.now()) then
        return 0
    end
    return State.traderRerolls()
end
function fns.onRenderStepped(jp)
    if pj.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local yd_1 = qE()
        if yd_1 then
            yd_1.WalkSpeed = o1.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local yd_3 = o0()
        local ye = qE()
        if yd_3 and ye then
            ye.PlatformStand = true
            local ye_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                ye_1 = ye_1 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                ye_1 = ye_1 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                ye_1 = ye_1 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                ye_1 = ye_1 + CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                ye_1 = ye_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                ye_1 = ye_1 - Vector3.new(0, 1, 0)
            end
            yd_3.Velocity = Vector3.zero
            if ye_1.Magnitude > 0 then
                yd_3.CFrame = yd_3.CFrame + ye_1.Unit * o1.FlySpeed.Value * jp
            end
        end
    end
end
function fns.fn711(bP)
    local s8 = typeof(bP) == "string" and bP ~= "" and Balancing.IsValidForm(bP)
    if s8 then
        return bP
    end
    return Balancing.FormOrder[1]
end
function fns.onImportConfigFromClipboardTex()
    local zJ_1
    local zH = o1.SaveManager_ImportSource.Value or ""
    local zH_1
    local zI = tostring(zH):match("^%s*(.-)%s*$")
    if zI == "" then
        pj:Notify("Paste an exported config into the box first")
        return
    end
    zH_1, zJ_1 = pcall(HttpService.JSONDecode, HttpService, zI)
    local zI_1 = not zH_1 or type(zJ_1) ~= "table" or type(zJ_1.objects) ~= "table"
    if zI_1 then
        pj:Notify("That is not a valid exported config")
        return
    end
    local zH_2 = 0
    for i, v in ipairs(zJ_1.objects) do
        if p7(v) then
            zH_2 += 1
        end
    end
    if zH_2 == 0 then
        pj:Notify("No settings in that config matched this script")
        return
    end
    o1.SaveManager_ImportSource:SetValue("")
    local zJ_2 = zH_2 == 1 and "" or "s"
    pj:Notify(("Imported %d setting%s"):format(zH_2, zJ_2), 6)
end
function fns.onRscripts()
    qR(pY, "Copied Rscripts profile to clipboard")
end
function fns.fn736()
    local wJ = {}
    local wK = pV()
    for i, v in ipairs(pG(wK)) do
        local wK_1 = qQ(v.instance) and not qL(v.instance)
        if wK_1 then
            wJ[#wJ + 1] = v
        end
    end
    return wJ
end
function fns.fn741(b_)
    local tc = b_ == ""
    local tc_1
    local td = typeof(b_) ~= "string" or tc
    local td_1
    if td then
        return 0
    end
    tc_1, td_1 = pcall(Balancing.ConveyorRarityRank, b_)
    local te = tc_1 and typeof(td_1) == "number"
    if te then
        return td_1
    end
    return 0
end
function fns.worker9()
    while not pj.Unloaded do
        task.wait(1)
        if pJ("AutoTrader") then
            pcall(o8)
        end
    end
end
function fns.fn749(ai)
    local sc = typeof(ai) == "number" and ai
    local sc_1 = sc or 1
    if sc_1 < 0.35 then
        sc_1 = 0.35
    end
    o3 = math.max(o3, os.clock() + sc_1)
end
function fns.fn755()
    if p_() then
        return
    end
    if State.hasSlot() then
        return
    end
    local uq = qw()
    if uq == nil then
        return
    end
    local ur = pe()
    local us = pb(uq.brainrotId)
    local ut = 0
    if us then
        ut = Balancing.BuyPriceAt(us.BaseValue, uq.form)
    end
    if Balancing.FoodCost(ur, ut) > State.cash() then
        ur = 0
    end
    Net.SetHeldBrainrot.send(uq.instanceId)
    task.wait(0.15)
    local ux = if p_() then 1 else 0
    if ux == 1 then
        return
    end
    Net.PlantBrainrot.send({ instanceId = uq.instanceId, food = ur })
end
function fns.fn810()
    if p_() then
        return
    end
    local uG = not State.hasSlot() or State.slotCooked()
    if uG then
        return
    end
    local uG_1 = pK()
    local uH = uG_1 >= p1() and os.clock() - ph >= 0.35
    if uH then
        ph = os.clock()
        Net.Pull.send(0)
    end
end
function fns.fn814(au)
    local sq = 0
    if typeof(au) == "table" then
        local GhostLifetimeSec = Balancing.GhostLifetimeSec
        local ss = au.ghostDuration or 0
        sq = GhostLifetimeSec(ss)
    end
    qk(sq + 0.2)
end
function fns.fn823()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    qf = tick()
end
function fns.fn832(fb, fc, fd)
    local vK = pb(fb)
    local vM = vK and vK.PassiveRate or 0
    local vL_1 = vK
    if vL_1 then
        vL_1 = vK.Rarity
    end
    local vL_2 = vL_1 or nil
    local vK_2 = pO(vL_2) * 1000000000000 + pm(fc) * 1000000000 + vM * 1000
    local vM_1 = typeof(fd) == "number" and fd
    local vO = vM_1
    local vS = if vO then 1 else 0
    local vQ = 1302 * vS + 7 * (1 - vS)
    local vR = 1705 * vS + 3729 * (1 - vS)
    if not ((vQ * 3602 + vR * 3813 + vQ * vR) % 16777213 == 13410879) then
        vO = 0
    end
    return vK_2 + vO
end
function fns.fn846(em)
    local uR = {}
    if em == nil then
        return uR
    end
    local PlotTemplate = em:FindFirstChild("PlotTemplate")
    if PlotTemplate == nil then
        return uR
    end
    for i, child in ipairs(PlotTemplate:GetChildren()) do
        if child.Name:find("Floor", 1, true) == 1 then
            for i, child in ipairs(child:GetChildren()) do
                local uS_1 = tonumber(child.Name:match("^Pad(%d+)$"))
                if uS_1 ~= nil then
                    uR[#uR + 1] = { index = uS_1, instance = child }
                end
            end
        end
    end
    table.sort(uR, function(eu, ev)
        return eu.index < ev.index
    end)
    return uR
end
function fns.fn861()
    local t7 = pf("GrowFood", qd[1])
    local t8 = p8[t7]
    if typeof(t8) ~= "number" then
        t8 = 0
    end
    local t7_1 = Balancing.FoodUnlocked(State.rebirths())
    if t8 > t7_1 then
        t8 = t7_1
    end
    return t8
end
function fns.onCopySolanaAddress()
    qR(pB, "Copied Solana address")
end
function fns.fn890()
    local xl = qP("TraderOrders")
    if p9(xl) then
        return
    end
    local xm = Trader.OrdersAt(os.time(), po())
    local xn = State.traderClaimed()
    local xo = State.brainrots()
    for i, v in ipairs(xm) do
        local xm_1 = pX[v.index]
        if xm_1 and xl[xm_1] == true and xn[v.index] ~= true then
            if Trader.Satisfied(v, xo) then
                Net.GiveTraderOrder.send(v.index)
                return
            end
        end
    end
end
function fns.fn901()
    if Balancing.CanRebirth(State.rebirths(), State.cash()) then
        Net.Rebirth.send(1)
    end
end
function fns.worker10()
    while not pj.Unloaded do
        task.wait(2)
        if pJ("AutoTraderWeather") then
            pcall(pQ)
        end
    end
end
function fns.worker11()
    while not pj.Unloaded do
        task.wait(0.2)
        if pJ("StrikeReadout") then
            if not State.hasSlot() then
                Label2:SetText(p4("Status", "Idle", qy))
                Label3:SetText(p4("Growth", "0x", qD))
                Label4:SetText(p4("Est. Value", "$0", qK))
                Label5:SetText(ql("Exact crash point is server-side.", qy))
            elseif State.slotCooked() then
                local yD_1 = pK()
                local yE_1 = o4(yD_1)
                Label2:SetText(p4("Status", "Cooked", qD))
                Label3:SetText(p4("Growth", string.format("%.2fx", yD_1), qD))
                local FormatCompact = Balancing.FormatCompact
                local yF_1 = yE_1 or 0
                Label4:SetText(p4("Est. Value", "$" .. FormatCompact(yF_1), qK))
                Label5:SetText(ql("Cooked payout is 25% of pull value.", qy))
            else
                local yD_3 = pK()
                local yE_2 = o4(yD_3)
                local yF_2 = p1()
                local yH = yD_3 >= yF_2 and "Ready to pull" or "Climbing"
                local yI = yD_3 >= yF_2 and qK or qJ
                Label2:SetText(p4("Status", yH, yI))
                Label3:SetText(p4("Growth", string.format("%.2fx / %.2fx", yD_3, yF_2), qD))
                local FormatCompact = Balancing.FormatCompact
                local yF_3 = yE_2 or 0
                Label4:SetText(p4("Est. Value", "$" .. FormatCompact(yF_3), qK))
                Label5:SetText(ql(State.slotBrainrotId() .. " [" .. qH(State.slotForm()) .. "]", qJ))
            end
        end
    end
end
function fns.fn973(b5)
    local th_1
    local tg_1
    tg_1, th_1 = pcall(Balancing.FormRank, qH(b5))
    local ti = tg_1 and typeof(th_1) == "number"
    if ti then
        return th_1
    end
    return 0
end
function fns.fn978(a8, a9, ba)
    return string.format("<b>%s</b> %s %s", a8, ql("-", "#5a6070"), ql(a9, ba))
end
function fns.onInputChanged(kq)
    local UserInputType = kq.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        qn = tick()
    end
end
function fns.onCopyLitecoinAddress()
    qR(pU, "Copied Litecoin address")
end
function fns.worker3()
    while not pj.Unloaded do
        task.wait(1)
        if pJ("AutoRebirth") then
            pcall(pz)
        end
    end
end
function fns.fn1009()
    if not Toggles.Fly.Value then
        local yh = qE()
        if yh then
            yh.PlatformStand = false
        end
    end
end
function fns.fn1016(hS)
    local DiscordGroup = hS:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = qA })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = qA })
end
local function fn1052()
    local xx = pf("TraderWeather", pM[1])
    local xy = pI[xx]
    if typeof(xy) ~= "number" then
        return
    end
    local xx_1 = Balancing.Trader.WeatherCards[xy]
    if xx_1 == nil then
        return
    end
    if State.tung() < xx_1.Price then
        return
    end
    Net.BuyTraderWeather.send(xy)
end
local function fn1055()
    qI(false)
    if connection then
        connection:Disconnect()
    end
    if connection2 then
        connection2:Disconnect()
    end
    print("Unloaded!")
end
local function worker5()
    while not pj.Unloaded do
        task.wait(0.5)
        if pJ("AutoGrow") then
            pcall(o2)
        end
    end
end
local function fn1143()
    qR(p2, "Copied Discord invite to clipboard")
end
local function fn1160(eD)
    local ClaimButton = eD:FindFirstChild("ClaimButton")
    if ClaimButton == nil then
        return nil
    end
    local ve = ClaimButton:FindFirstChild(World.ClaimPlateName) or ClaimButton:FindFirstChild("Plate")
    local vd_1 = ve
    if ve then
        ve = vd_1:IsA("BasePart")
    end
    if ve then
        return vd_1
    end
    return nil
end
local function onCopyVenmoLink()
    qR(pr, "Copied Venmo link")
end
local function fn1168(bo)
    local sJ = pf(bo, {})
    if typeof(sJ) ~= "table" then
        return {}
    end
    local sK = {}
    for k, v in pairs(sJ) do
        if v == true then
            sK[k] = true
        else
            local sJ_1 = typeof(k) == "number" and typeof(v) == "string"
            if sJ_1 then
                sK[v] = true
            end
        end
    end
    return sK
end
local function fn1189(eQ)
    local UpgradeButton = eQ:FindFirstChild("UpgradeButton")
    local vp = UpgradeButton and UpgradeButton:FindFirstChild("Screen")
    if vp == nil then
        return nil
    end
    return vp:FindFirstChildWhichIsA("ProximityPrompt")
end
local function fn1191()
    qI(Toggles.AntiGameplayPause.Value)
end
local function fn1195()
    if not Toggles.WalkSpeedEnabled.Value then
        local ym = qE()
        if ym then
            ym.WalkSpeed = 16
        end
    end
end
local function fn1203(fp)
    local vU = o0()
    if vU == nil or fp == nil then
        return false
    end
    if firetouchinterest then
        pcall(firetouchinterest, vU, fp, 0)
        pcall(firetouchinterest, fp, vU, 0)
        task.wait(0.08)
        pcall(firetouchinterest, vU, fp, 1)
        pcall(firetouchinterest, fp, vU, 1)
    end
    local CFrame = vU.CFrame
    vU.CFrame = fp.CFrame + Vector3.new(0, 3, 0)
    task.wait(0.2)
    vU.CFrame = CFrame
    return true
end
local function antiGameplayPauseLoop()
    while not pj.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            qI(true)
        end
    end
end
o0 = nil
o1 = nil
o2 = nil
o3 = nil
o4 = nil
Toggles = nil
connection2 = nil
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
ph = nil
pi = nil
pj = nil
Label5 = nil
pl = nil
pm = nil
pn = nil
po = nil
pp = nil
Label4 = nil
pr = nil
ps = nil
pt = nil
connection = nil
Label3 = nil
pw = nil
py = nil
pz = nil
Label2 = nil
pB = nil
pC = nil
RideReadout = nil
pE = nil
pF = nil
pG = nil
State = nil
pI = nil
pJ = nil
pK = nil
pL = nil
pM = nil
pN = nil
local HeldBrainrot
pO = nil
World = nil
pQ = nil
pR = nil
pS = nil
pT = nil
pU = nil
pV = nil
BrainrotVisual = nil
pX = nil
pY = nil
Trader = nil
p_ = nil
p0 = nil
p1 = nil
p2 = nil
Prompt = nil
p4 = nil
Directory = nil
p7 = nil
p8 = nil
p9 = nil
LocalPlayer = nil
Balancing = nil
qd = nil
qe = nil
qf = nil
CollectionService = nil
qh = nil
Net = nil
qj = nil
qk = nil
ql = nil
qm = nil
qn = nil
qp = nil
qq = nil
CurrentCamera = nil
qs = nil
qu = nil
qv = nil
qw = nil
HttpService = nil
qy = nil
qz = nil
qA = nil
local p6, qb, CoreGui, GuiService
VirtualUser = nil
qC = nil
qD = nil
qE = nil
qF = nil
UserInputService = nil
qH = nil
qI = nil
qJ = nil
qK = nil
qL = nil
qM = nil
qN = nil
qO = nil
qP = nil
qQ = nil
qR = nil
Label = nil
qT = nil
UserInputService, VirtualUser, HttpService, GuiService, CoreGui, CollectionService, LocalPlayer, p2, pY, pU, pN, pL, pF, pB, pw, pr, zW_27, qK, qJ, qD, qy, GameInfoGroup, Net, Balancing, Directory, Prompt, Trader, BrainrotVisual, World, State, RideReadout, HeldBrainrot, ps, pn, ph, pd, o7, o3, zW_18, o0, qE, qk, p_ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local zW_34 = game:GetService("Players")
local zW_49 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
CollectionService = game:GetService("CollectionService")
LocalPlayer = zW_34.LocalPlayer
if (GameInfoGroup or zW_27) and (zW_18 or RideReadout) and (not GameInfoGroup or GameInfoGroup or not RideReadout and not GameInfoGroup) or not ((GameInfoGroup or zW_27) and (zW_18 or RideReadout) and (not GameInfoGroup or GameInfoGroup or not RideReadout and not GameInfoGroup)) then
    zW_41 = "Greedy Brainrots"
    p2 = "https://discord.gg/ehKVq7pf7v"
    pY = "https://rscripts.net/@Ouroboros"
    pU = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
    pN = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
else
    p2 = "Greedy Brainrots"
    pU = "https://discord.gg/ehKVq7pf7v"
    pN = "https://rscripts.net/@Ouroboros"
    zW_41 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
    pY = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
end
pL = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
pF = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
pB = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
pw = "https://paypal.me/TheTruckerGOD"
pr = "https://venmo.com/u/miserablemusic"
local zW_51 = "#345d9d"
local zW_61 = "#f7931a"
local zW_3 = "#627eea"
local zW_15 = "#26a17b"
zW_27 = "#14f195"
local zW_38 = "#0070ba"
local zW_64 = "#008cff"
qK = "#7fd47f"
qJ = "#6ec1ff"
qD = "#e8a34d"
qy = "#8b93a3"
local zW_58 = zW_49:WaitForChild("Shared")
zW_49:WaitForChild("Packages")
Net = require(zW_58:WaitForChild("Net"))
Balancing = require(zW_58:WaitForChild("Balancing"))
Directory = require(zW_58:WaitForChild("Directory"))
Prompt = require(zW_58:WaitForChild("Prompt"))
Trader = require(zW_58:WaitForChild("Trader"))
BrainrotVisual = require(zW_58:WaitForChild("BrainrotVisual"))
World = require(zW_58:WaitForChild("World"))
local zW_11 = LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("Client")
State = require(zW_11:WaitForChild("State"))
RideReadout = require(zW_11:WaitForChild("RideReadout"))
HeldBrainrot = require(zW_11:WaitForChild("HeldBrainrot"))
State.start()
ps = nil
pn = 0
ph = 0
pd = 0
o7 = 0
o3 = 0
o0 = fns.fn462
qE = fns.fn18
qk = fns.fn749
p_ = fns.fn334
Net.BrainrotPullResult.listen(fns.fn814)
Net.ActionResult.listen(fns.fn250)
zW_18 = {
    "Common",
    "Rare",
    "Epic",
    "Legendary",
    "Mythical",
    "Godly",
    "Secret",
    "Divine",
    "OG",
    "Celestial",
    "Eternal",
    "Forbidden"
}
local zW_30 = {}
for i, v in ipairs(Balancing.FormOrder) do
    zW_30[#zW_30 + 1] = v
end
p8 = {}
qd = {}
zW_34 = Balancing.Food.MaxLevel
local zW_31 = 0
local zW_52 = zW_34
while zW_31 <= zW_52 do
    local zW_19 = zW_31
    zW_34 = Balancing.FoodName(zW_19)
    qd[#qd + 1] = zW_34
    p8[zW_34] = zW_19
    zW_31 += 1
end
pX, pM, pI = nil, nil, nil
pX = { "Order 1", "Order 2", "Order 3" }
pM = {}
pI = {}
for i, v in ipairs(Balancing.Trader.WeatherCards) do
    zW_34 = string.format("%s ($%s)", v.Kind, tostring(v.Price))
    pM[#pM + 1] = zW_34
    pI[zW_34] = i
end
pj, o9, Toggles, o1, qq, qR, qA, ql, p4, pJ, pf, qP, p9, p0, pE, pb, qH, qp, pO, pm, qM, p6, qv, qN, pR, pz, pe, qw, o2, p1, pK, pc, qh, pV, pG, qL, qj, pi, qQ, qs, py, qz, qe, pS, qF, pa, qT, pp, qC, pl, qu, po, o8, pQ, o4 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pj = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
if not pO and not pO and (not qM and not qM) or qM and not qM and (pO and not pO) or not (not pO and not pO and (not qM and not qM) or qM and not qM and (pO and not pO)) then
    zW_54 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    o9 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = pj.Toggles
    o1 = pj.Options
    qR = fns.fn557
else
    o9 = loadstring(game:HttpGet(qR .. "addons/ThemeManager.lua"))()
    o1 = loadstring(game:HttpGet(qR .. "addons/SaveManager.lua"))()
    zW_54 = Toggles.Options
    pj = fns.fn557
end
qA = fn1143
ql = fns.fn1
p4 = fns.fn978
pJ = fns.fn89
pf = fns.fn275
qP = fn1168
p9 = fns.fn339
p0 = fns.fn333
pE = fns.fn468
pb = fns.fn144
qH = fns.fn711
qp = fns.fn77
pO = fns.fn741
pm = fns.fn973
qM = fns.fn201
p6 = fns.fn102
qv = function()
    local tG
    tG = nil
    local tH = qP("BuyRarities")
    local tI = qP("BuyForms")
    local tJ = p0(pf("BuyMaxPrice", ""), math.huge)
    if tJ < 0 then
        tJ = math.huge
    end
    local tK = State.cash()
    tG = pJ("BuyPreferBest")
    local tL = {}
    for i, v in ipairs(p6()) do
        if v.price <= tK and v.price <= tJ then
            if qM(v.rarity, v.form, tH, tI) then
                tL[#tL + 1] = v
            end
        end
    end
    if #tL == 0 then
        return
    end
    table.sort(tL, function(cP, cQ)
        if tG then
            if cP.rank ~= cQ.rank then
                return cP.rank > cQ.rank
            elseif cP.formRank ~= cQ.formRank then
                return cP.formRank > cQ.formRank
            elseif cP.price ~= cQ.price then
                return cP.price < cQ.price
            else
                return cP.slotId < cQ.slotId
            end
        elseif cP.price ~= cQ.price then
            return cP.price < cQ.price
        else
            return cP.slotId < cQ.slotId
        end
    end)
    Net.BuyBrainrot.send({ beltSlot = tL[1].slotId })
end
qN = fns.fn166
pR = fns.fn550
pz = fns.fn901
pe = fns.fn861
qw = function()
    local ue
    ue = nil
    local uf = qP("GrowRarities")
    local ug = qP("GrowForms")
    ue = pJ("GrowPreferBest")
    local uh = {}
    for i, v in ipairs(State.brainrots()) do
        if v.state == "ungrown" then
            local ui = pE(v.brainrotId)
            if qM(ui, v.form, uf, ug) then
                uh[#uh + 1] = {
                    instanceId = v.instanceId,
                    brainrotId = v.brainrotId,
                    form = qH(v.form),
                    rarity = ui,
                    rank = pO(ui),
                    formRank = pm(v.form)
                }
            end
        end
    end
    if #uh == 0 then
        return nil
    end
    table.sort(uh, function(dD, dE)
        if ue then
            if dD.rank ~= dE.rank then
                return dD.rank > dE.rank
            elseif dD.formRank ~= dE.formRank then
                return dD.formRank > dE.formRank
            else
                return dD.instanceId < dE.instanceId
            end
        else
            return dD.instanceId < dE.instanceId
        end
    end)
    return uh[1]
end
o2 = fns.fn755
p1 = fns.fn211
pK = fns.fn463
pc = fns.fn810
qq = 0
qh = fns.fn621
pV = fns.fn316
pG = fns.fn846
qL = fns.fn26
qj = fn1160
pi = fn1189
qQ = fns.fn458
qs = fns.fn614
py = fns.fn832
qz = fns.fn387
qe = fn1203
pS = fns.fn75
qF = fns.fn210
pa = fns.fn414
qT = function(f4)
    local Attributes = HeldBrainrot.Attributes
    local ws
    local Backpack = LocalPlayer:FindFirstChild("Backpack")
    local Character = LocalPlayer.Character
    if Backpack then
        for i, child in ipairs(Backpack:GetChildren()) do
            local wu_1 = child:IsA("Tool") and child:GetAttribute(Attributes.InstanceId) == f4
            if wu_1 then
                ws = child
                break
            end
        end
    end
    if ws == nil and Character then
        for i, child in ipairs(Character:GetChildren()) do
            local wu_3 = child:IsA("Tool") and child:GetAttribute(Attributes.InstanceId) == f4
            if wu_3 then
                ws = child
                break
            end
        end
    end
    Net.SetHeldBrainrot.send(f4)
    local wr = qE()
    if ws and wr then
        pcall(function()
            wr:EquipTool(ws)
        end)
    end
    task.wait(0.15)
end
pp = fns.fn736
qC = fns.fn255
pl = fns.fn499
qu = fns.fn287
po = fns.fn694
o8 = fns.fn890
pQ = fn1052
o4 = fns.fn511
zW_58 = pj:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = p2, Copyable = true }, "|", zW_41 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
local zW_44 = {
    Info = zW_58:AddTab("Info", "info"),
    Main = zW_58:AddTab("Main", "gamepad-2"),
    Player = zW_58:AddTab("Player", "person-standing"),
    Settings = zW_58:AddTab("Settings", "settings")
}
zW_44.Buy = zW_44.Main:AddSubTab("Buy", "shopping-cart")
zW_44.Grow = zW_44.Main:AddSubTab("Grow", "sprout")
zW_44.Sell = zW_44.Main:AddSubTab("Sell", "circle-dollar-sign")
zW_44.Trader = zW_44.Main:AddSubTab("Trader", "handshake")
zW_49 = fns.fn1016
for k, v in zW_44 do
    if v ~= zW_44.Main then
        zW_49(v)
    end
end
pt, zW_34, GameInfoGroup, Label, qO, zW_11 = nil, nil, nil, nil, nil, nil
local zW_23 = 5
repeat
    zW_58 = (zW_23 * 2 + 1) % 3 + 1
    if zW_58 <= 2 then
        if zW_58 <= 1 then
            if (zW_23 * 3 + 9) * 9 % 4 == ((zW_23 * 3 + 9) * 9 + 10) % 4 then
                zW_11 = tostring(game.JobId)
            else
                qO = tostring(game.JobId)
            end
            zW_23 = (zW_23 + 8) % 12
        else
            local Bi = bit32.rrotate(bit32.bxor(bit32.lrotate(zW_23, 20), string.byte(tostring(Label))), 9)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Bi, 1567152369), 3089810881), (bit32.bxor(bit32.band(Bi, 2727814926), 2495092804))), 3089810881), 2495092804) ~= Bi then
                qO = #zW_11 > 18
            else
                zW_11 = #qO > 18
            end
            zW_23 = (zW_23 + 8) % 12
        end
    else
        zW_58 = {
            "ohhydkr",
            "xssjimk",
            "nnfxsvbpht",
            "rybc",
            "cqotgmqztsbc",
            "bgsod",
            "pzsixug",
            "ovhnijldsvcg",
            "xlvnx"
        }
        if zW_58[(zW_23 * 13 + 21) % 9 + 1] <= zW_58[(zW_23 * 13 + 21) % 9 + 1] then
            pt = "Unknown"
            pcall(fns.fn421)
            zW_34 = zW_44.Info:AddLeftGroupbox("Account", "circle-user")
            zW_34:AddLabel(p4("User", LocalPlayer.Name, qK), true)
            zW_34:AddLabel(p4("Status", "Keyless", qK), true)
            zW_34:AddLabel(p4("Executor", pt, qK), true)
            GameInfoGroup = zW_44.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            GameInfoGroup:AddLabel(ql(zW_41 .. " [" .. tostring(game.PlaceId) .. "]", qJ), true)
            GameInfoGroup:AddLabel(p4("Place ID", tostring(game.PlaceId), qJ), true)
            Label = GameInfoGroup:AddLabel(p4("Session time", "0s", qD), true)
        else
            p4 = "Unknown"
            pcall(fns.fn421)
            qK = ql.Info:AddLeftGroupbox("Account", "circle-user")
            qK:AddLabel(Label("User", nil, zW_41), true)
            qK:AddLabel(Label("Status", "Keyless", zW_41), true)
            qK:AddLabel(Label("Executor", p4, zW_41), true)
            pt = ql.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            pt:AddLabel(zW_44(zW_34 .. " [" .. tostring(game.PlaceId) .. "]", GameInfoGroup), true)
            pt:AddLabel(Label("Place ID", tostring(game.PlaceId), GameInfoGroup), true)
            qD = pt:AddLabel(Label("Session time", "0s", LocalPlayer), true)
        end
        zW_23 = (zW_23 + 2) % 12
    end
until (zW_23 * 7 + 10) % 12 == 3
if zW_11 then
    zW_34 = 1
    repeat
        zW_23 = (vector.create((zW_34 * 3 + 8) % 11 + 1, (zW_34 * 3 + 12) % 13 + 1, (zW_34 * 8 + 9) % 17 + 1))
        zW_58 = (vector.create((zW_34 * 5 + 4) % 11 + 1, (zW_34 * 4 + 5) % 13 + 1, (zW_34 * 6 + 8) % 17 + 1))
        zW_49 = (vector.create((zW_34 * 7 + 8) % 11 + 1, (zW_34 * 2 + 2) % 13 + 1, (zW_34 * 11 + 9) % 17 + 1))
        local zW_33 = (vector.create((zW_34 * 5 + 4) % 11 + 1, (zW_34 * 7 + 5) % 13 + 1, (zW_34 * 11 + 16) % 17 + 1))
        if vector.dot(vector.cross(zW_23, zW_58), (vector.cross(zW_49, zW_33))) == vector.dot(zW_23, zW_49) * vector.dot(zW_58, zW_33) - vector.dot(zW_23, zW_33) * vector.dot(zW_58, zW_49) then
            zW_11 = string.sub(qO, 1, 18) .. "..."
        else
            qO = string.sub(zW_11, 1, 18) .. "..."
        end
        zW_34 = (zW_34 + 1) % 8
    until (zW_34 * 7 + 1) % 8 == 7
end
zW_34 = zW_11 or qO
qm, Label2, Label3, Label4, Label5, CurrentCamera, qn, qf, connection, connection2, qI, pT, qb, pC, pg, p7 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local zW_5 = zW_34
GameInfoGroup:AddLabel(p4("Server", zW_5, qy), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
qm = os.clock()
task.spawn(fns.worker)
local ScriptsGroup = zW_44.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(ql("Included in this hub", qy), true)
ScriptsGroup:AddLabel(ql(zW_41, qJ), true)
local FeaturesGroup = zW_44.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(ql("Auto Buy", qJ), true)
FeaturesGroup:AddLabel(ql("Auto Grow", qK), true)
FeaturesGroup:AddLabel(ql("Auto Sell", qD), true)
FeaturesGroup:AddLabel(ql("Auto Place", qJ), true)
FeaturesGroup:AddLabel(ql("Auto Replace", qD), true)
FeaturesGroup:AddLabel(ql("Auto Collect", qK), true)
FeaturesGroup:AddLabel(ql("Auto Collect Cooked", qD), true)
FeaturesGroup:AddLabel(ql("Auto Trader", qJ), true)
FeaturesGroup:AddLabel(ql("Strike Tools", qD), true)
FeaturesGroup:AddLabel(ql("Misc Utilities", qy), true)
local SocialsGroup = zW_44.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = qA })
SocialsGroup:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
local OuroborosHubGroup = zW_44.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = qA })
local DonationsGroup = zW_44.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(ql("All donations are optional but appreciated.", qD), true)
DonationsGroup:AddLabel(ql("If you donate you get a special role, just PING after you donate.", qK), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(ql("LTC / Litecoin", zW_51), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = fns.onCopyLitecoinAddress })
DonationsGroup:AddLabel(ql("BTC / Bitcoin", zW_61), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = fns.onCopyBitcoinAddress })
DonationsGroup:AddLabel(ql("ETH / Ethereum", zW_3), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = fns.onCopyEthereumAddress })
DonationsGroup:AddLabel(ql("USDT", zW_15), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
DonationsGroup:AddLabel(ql("Solana", zW_27), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
DonationsGroup:AddLabel(ql("PayPal", zW_38), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = fns.onCopyPayPalLink })
DonationsGroup:AddLabel(ql("Venmo", zW_64), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(ql("Don't have any of the listed currencies but still wanna donate?", qy), true)
DonationsGroup:AddLabel(ql("DM me and we'll work something out.", qJ), true)
local FaqGroup = zW_44.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutoBuyGroup = zW_44.Buy:AddLeftGroupbox("Auto Buy", "shopping-cart")
AutoBuyGroup:AddToggle("AutoBuy", { Text = "Auto Buy Brainrot", Default = false })
AutoBuyGroup:AddToggle("BuyPreferBest", { Text = "Prefer Best Rarity", Default = true })
AutoBuyGroup:AddDropdown("BuyRarities", { Text = "Buy Rarities", Values = zW_18, Multi = true, Default = {} })
AutoBuyGroup:AddDropdown("BuyForms", { Text = "Buy Forms", Values = zW_30, Multi = true, Default = {} })
AutoBuyGroup:AddInput("BuyMaxPrice", {
    Text = "Max Buy Price",
    Default = "",
    Numeric = false,
    Finished = true,
    AllowEmpty = true,
    Placeholder = "Empty = no limit"
})
local RebirthGroup = zW_44.Buy:AddRightGroupbox("Rebirth", "refresh-cw")
RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local GrowGroup = zW_44.Grow:AddLeftGroupbox("Grow", "sprout")
GrowGroup:AddToggle("AutoGrow", { Text = "Auto Grow Brainrot", Default = false })
GrowGroup:AddToggle("GrowPreferBest", { Text = "Prefer Best Rarity", Default = true })
GrowGroup:AddDropdown("GrowFood", { Text = "Food", Values = qd, Default = qd[1] })
GrowGroup:AddDropdown("GrowRarities", { Text = "Grow Rarities", Values = zW_18, Multi = true, Default = {} })
GrowGroup:AddDropdown("GrowForms", { Text = "Grow Forms", Values = zW_30, Multi = true, Default = {} })
local PullGroup = zW_44.Grow:AddRightGroupbox("Pull", "zap")
PullGroup:AddToggle("AutoPull", { Text = "Auto Pull Brainrot", Default = false })
PullGroup:AddInput("PullAt", {
    Text = "Pull At Multiplier",
    Default = "2",
    Numeric = false,
    Finished = false,
    AllowEmpty = false,
    Placeholder = "e.g. 2.5"
})
PullGroup:AddToggle("AutoCollectCooked", { Text = "Auto Collect Cooked Brainrots", Default = false })
local StrikeGroup = zW_44.Grow:AddRightGroupbox("Strike", "activity")
StrikeGroup:AddToggle("StrikeReadout", { Text = "Strike Readout", Default = true })
Label2 = StrikeGroup:AddLabel(p4("Status", "Idle", qy), true)
Label3 = StrikeGroup:AddLabel(p4("Growth", "0x", qD), true)
Label4 = StrikeGroup:AddLabel(p4("Est. Value", "$0", qK), true)
Label5 = StrikeGroup:AddLabel(ql("Exact crash point is server-side.", qy), true)
local AutoSellGroup = zW_44.Sell:AddLeftGroupbox("Auto Sell", "circle-dollar-sign")
AutoSellGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
AutoSellGroup:AddDropdown("SellRarities", { Text = "Sell Rarities", Values = zW_18, Multi = true, Default = {} })
AutoSellGroup:AddDropdown("SellForms", { Text = "Sell Forms", Values = zW_30, Multi = true, Default = {} })
zW_49 = zW_44.Sell:AddRightGroupbox("Place", "map-pin")
zW_49:AddToggle("AutoPlace", { Text = "Auto Place Brainrots", Default = false })
zW_49:AddToggle("AutoReplaceBetter", { Text = "Auto Replace With Better", Default = false })
zW_49:AddDropdown("PlaceRarities", { Text = "Place Rarities", Values = zW_18, Multi = true, Default = {} })
zW_49:AddDropdown("PlaceForms", { Text = "Place Forms", Values = zW_30, Multi = true, Default = {} })
zW_58 = zW_44.Sell:AddRightGroupbox("Collect", "coins")
zW_58:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
zW_11 = zW_44.Trader:AddLeftGroupbox("Auto Trader", "handshake")
zW_11:AddToggle("AutoTrader", { Text = "Auto Trader", Default = false })
zW_11:AddDropdown("TraderOrders", {
    Text = "Orders",
    Values = pX,
    Multi = true,
    Default = { ["Order 1"] = true, ["Order 2"] = true, ["Order 3"] = true }
})
zW_23 = zW_44.Trader:AddRightGroupbox("Weather", "cloud-lightning")
zW_23:AddToggle("AutoTraderWeather", { Text = "Auto Buy Trader Weather", Default = false })
zW_23:AddDropdown("TraderWeather", { Text = "Weather Card", Values = pM, Default = pM[1] })
local MovementGroup = zW_44.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = zW_44.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
qI = function(iX)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not iX)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not iX
        end
    end)
    if not iX then
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
Toggles.AntiGameplayPause:OnChanged(fn1191)
task.spawn(antiGameplayPauseLoop)
RunService.Stepped:Connect(fns.onStepped)
UserInputService.JumpRequest:Connect(fns.onJumpRequest)
CurrentCamera = workspace.CurrentCamera
RunService.RenderStepped:Connect(fns.onRenderStepped)
Toggles.Fly:OnChanged(fns.fn1009)
Toggles.WalkSpeedEnabled:OnChanged(fn1195)
task.spawn(fns.worker2)
task.spawn(fns.worker3)
task.spawn(fns.worker4)
task.spawn(worker5)
task.spawn(fns.worker6)
task.spawn(fns.worker7)
task.spawn(fns.worker8)
task.spawn(fns.worker9)
task.spawn(fns.worker10)
task.spawn(fns.worker11)
local MenuGroup = zW_44.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
pj.ToggleKeybind = o1.MenuKeybind
MenuGroup:AddButton("Unload", fns.onUnload)
qn = tick()
qf = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local yT = v
        pcall(function()
            yT:Disable()
        end)
    end
end)
pT = fns.fn823
connection = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection2 = UserInputService.InputChanged:Connect(fns.onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(fns.antiAfkLoop)
zW_54:SetLibrary(pj)
zW_54:SetFolder("OuroborosHub")
zW_54:SaveDefault("Evil Hello Kitty")
zW_54:ApplyToTab(zW_44.Settings)
zW_54:LoadDefault()
o9:SetLibrary(pj)
o9:IgnoreThemeSettings()
o9:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
o9:SetFolder("OuroborosHub/GreedyBrainrots")
local zW_29 = o9:BuildConfigSection(zW_44.Settings)
qb = fns.fn521
pC = fns.fn229
pg = fns.fn119
p7 = function(k6)
    local zx
    zx = nil
    local zy = type(k6) ~= "table" or type(k6.idx) ~= "string" or type(k6.type) ~= "string" or o9.Ignore[k6.idx]
    if zy then
        return false
    end
    zx = qb(k6.type, k6.idx)
    if not zx then
        return false
    end
    local zy_1 = pcall(function()
        if k6.type == "Input" then
            if type(k6.text) ~= "string" then
                return
            end
            zx:SetValue(k6.text)
        elseif k6.type == "ColorPicker" then
            zx:SetValueRGB(Color3.fromHex(k6.value), k6.transparency)
        elseif k6.type == "KeyPicker" then
            zx:SetValue({ k6.key, k6.mode, k6.modifiers })
            if k6.mode == "Toggle" and k6.toggled ~= nil then
                zx.Toggled = k6.toggled
                zx:Update()
            end
        else
            zx:SetValue(k6.value)
        end
    end)
    return zy_1
end
zW_29:AddDivider()
zW_29:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
zW_29:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
zW_29:AddButton("Import Config from Clipboard Text", fns.onImportConfigFromClipboardTex)
o9:LoadAutoloadConfig()
pj:OnUnload(fn1055)
