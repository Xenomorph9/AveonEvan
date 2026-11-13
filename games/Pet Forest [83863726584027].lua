local fns = {}
local tF_3, tF_4, tF_6, tF_8, tF_10, tF_12, tF_15, tF_17, tF_22, tF_25
local mB
local l_
local mH
local lH
local Library
local Options
local mN
local lN
local mu
local mb
local mT
local mh
local lZ
local mG
local lG
local mn
local l4
local mM
local Plants
local mt
local ma
local mS
local mz
local mg
local connection2
local mF
local lF
local mm
local mL
local connection3
local ms
local Toggles
local mR
local lR
local my
local mf
local mX
local lX
local mE
local ml
local l2
local mK
local mr
local mQ
local mx
local me
local lD
local mk
local l1
local mJ
local lJ
local mq
local l7
local mP
local lP
local Workspace
local SaveManager
local mV
local mC
local lC
local mj
local l0
local lI
local mp
local l6
local lO
local mv
local mc
function fns.fn14(gW, gX)
    local Type = gX.Type
    if Type == "Toggle" then
        return { idx = gW, type = "Toggle", value = gX.Value == true }
    elseif Type == "Slider" then
        return { idx = gW, type = "Slider", value = tostring(gX.Value) }
    elseif Type == "Dropdown" then
        return { idx = gW, type = "Dropdown", multi = gX.Multi == true, value = gX.Value }
    elseif Type == "Input" then
        local sf = gX.Value or ""
        return { idx = gW, type = "Input", text = tostring(sf) }
    elseif Type == "ColorPicker" then
        return { idx = gW, type = "ColorPicker", value = gX.Value:ToHex(), transparency = gX.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = gW,
            type = "KeyPicker",
            mode = gX.Mode,
            key = gX.Value,
            modifiers = gX.Modifiers,
            toggled = gX.Toggled
        }
    else
        return nil
    end
end
function fns.fn52(dy)
    local qm_1
    local ql_1
    local qk_1
    local qi = mT()
    if not qi then
        return nil, nil, nil
    end
    dy = dy or mf
    ql_1, qk_1, qm_1 = nil, nil, nil
    for i, child in ipairs(Plants:GetChildren()) do
        if child:IsA("Model") then
            local qj_1 = mG(child)
            local qy = if dy(qj_1) then 1 else 0
            if qy == 1 then
                local qj_2 = mu(child)
                if qj_2 and qj_2.Enabled then
                    local qn_1 = qj_2.Parent
                    local qo = qn_1 and qn_1:IsA("BasePart")
                    if not qo then
                        qn_1 = ml(child)
                    end
                    if qn_1 then
                        local Magnitude = (qn_1.Position - qi.Position).Magnitude
                        if not qm_1 or Magnitude < qm_1 then
                            qm_1 = Magnitude
                            ql_1 = child
                            qk_1 = qj_2
                        end
                    end
                end
            end
        end
    end
    return ql_1, qk_1, qm_1
end
function fns.fn94(aE, aF)
    local n_ = Options[aE]
    local n0 = n_ and tonumber(n_.Value)
    if n0 then
        return n0
    end
    return aF
end
function fns.worker9()
    while not Library.Unloaded do
        task.wait(2)
        if lF("AntiAfk") then
            local tx = tick() - mM
            local ty = tick() - mJ
            if tx >= 300 and ty >= 60 then
                pcall(mn)
            else
                if tx < 300 and ty >= 300 then
                    pcall(mn)
                end
            end
        end
    end
end
function fns.fn108()
    local sl = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local sm = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if sm then
                local sm_1 = mE(k, v)
                if sm_1 then
                    sl[#sl + 1] = sm_1
                end
            end
        end
    end
    table.sort(sl, function(g9, ha)
        if g9.type ~= ha.type then
            return g9.type < ha.type
        end
        return g9.idx < ha.idx
    end)
    return { objects = sl }
end
function fns.fn125(bq)
    local oC_1
    local oB_1
    local oA = bq
    local oG = if oA then 1 else 0
    local oE = 361 * oG + 3405 * (1 - oG)
    local oF = 3780 * oG + 3169 * (1 - oG)
    if not ((oE * 1161 + oF * 2968 + oE * oF) % 16777213 == 13002741) then
        oA = ""
    end
    oB_1, oC_1 = tostring(oA):lower():match("^%s*([%d%.]+)%s*(%a*)%s*$")
    local oA_1 = tonumber(oB_1)
    if not oA_1 then
        return nil
    elseif oC_1 ~= "" then
        local oB_2 = mV[oC_1:sub(1, 1)]
        if not oB_2 then
            return nil
        end
        return oA_1 * oB_2
    else
        return oA_1
    end
end
function fns.onInputBegan()
    mM = tick()
end
function fns.fn155()
    local Character = mv.Character
    local oh = Character and Character:FindFirstChild("HumanoidRootPart")
    return oh
end
function fns.fn164()
    l_(mm, "Copied Discord invite to clipboard")
end
function fns.antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            mK(true)
        end
    end
end
function fns.fn175(bw)
    return bw:FindFirstChildWhichIsA("ProximityPrompt", true)
end
function fns.onExportConfigToClipboard()
    local sG_1
    local sF_1
    sF_1, sG_1 = pcall(mL.JSONEncode, mL, mp())
    if not sF_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local sF_2 = setclipboard or toclipboard
    local sF_3 = type(sF_2) ~= "function" or not pcall(sF_2, sG_1)
    if sF_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
function fns.worker8()
    local tq_1
    local tp_1
    while not Library.Unloaded do
        if lF("AutoSpinEvent") then
            tp_1, tq_1 = pcall(mx)
            if tp_1 and tq_1 then
                task.wait(mQ("SpinDelay", 1))
            else
                task.wait(0.5)
            end
        else
            task.wait(0.4)
        end
    end
end
function fns.worker()
    local ro_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local rn = math.floor(os.clock() - lN)
        if rn < 60 then
            ro_1 = rn .. "s"
        elseif rn < 3600 then
            ro_1 = string.format("%dm %ds", rn // 60, rn % 60)
        else
            ro_1 = string.format("%dh %dm", rn // 3600, rn % 3600 // 60)
        end
        mb:SetText(mX("Session time", ro_1, my))
    end
end
local function fn205()
    connection2:Disconnect()
    connection3:Disconnect()
    mK(false)
    local tB = lG()
    if tB then
        tB.PlatformStand = false
        tB.WalkSpeed = 16
    end
end
local function fn206(aL)
    local n2 = {}
    if type(aL) == "table" then
        for k, v in pairs(aL) do
            if v == true then
                n2[k] = true
            elseif type(v) == "string" then
                n2[v] = true
            end
        end
    end
    return n2
end
local function onCopyBitcoinAddress()
    l_(mq, "Copied Bitcoin address")
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local rI_1 = lG()
        if rI_1 then
            rI_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn242(a8)
    return mC[a8] or "Unknown"
end
local function fn262(ac, ad, ae)
    return string.format("<b>%s</b> %s %s", ac, lJ("-", "#5a6070"), lJ(ad, ae))
end
local function fn272()
    local rj_1
    local ri_1
    if identifyexecutor then
        rj_1, ri_1 = identifyexecutor()
        local rk = rj_1 ~= ""
        local rl = type(rj_1) == "string" and rk
        if rl then
            local rk_1 = type(ri_1) == "string" and ri_1 ~= "" and rj_1 .. " " .. ri_1
            mF = rk_1 or rj_1
        end
    end
end
local function worker3()
    local s6_1
    local s5_1
    while not Library.Unloaded do
        if lF("AutoPlaceBest") then
            s5_1, s6_1 = pcall(mP)
            if s5_1 and s6_1 then
                task.wait(mQ("PlaceDelay", 0.45))
            else
                task.wait(0.35)
            end
        else
            task.wait(0.4)
        end
    end
end
local function fn311()
    if not Toggles.WalkSpeedEnabled.Value then
        local rU = lG()
        if rU then
            rU.WalkSpeed = 16
        end
    end
end
local function onCopyUSDTAddress()
    l_(me, "Copied USDT address")
end
local function onCopyPayPalLink()
    l_(l6, "Copied PayPal link")
end
local function fn371(bb)
    local oq = mt(bb)
    local ot = false
    if lF("AutoShakeTrees") then
        local ou_1 = lX("ShakeTreeChoice")
        local ov_1 = l1(ou_1) or ou_1[bb]
        if ov_1 then
            ot = true
        end
    end
    local ou_2 = oq == "Elusive"
    local ov_2 = lF("AutoShakeElusive") and ou_2
    if ov_2 then
        local ou_3 = lX("ShakeElusiveChoice")
        local ov_3 = l1(ou_3) or ou_3[bb]
        if ov_3 then
            ot = true
        end
    end
    if lF("AutoShakeRarity") then
        local ou_4 = lX("ShakeRarityChoice")
        local ov_4 = l1(ou_4) or ou_4[oq]
        if ov_4 then
            ot = true
        end
    end
    local ou_5 = oq == "Admin"
    local ov_5 = lF("AutoShakeAdmin") and ou_5
    if ov_5 then
        ot = true
    end
    return ot
end
local function worker4()
    local ta_1
    local s9_1
    while not Library.Unloaded do
        if lF("AutoEventCurrencies") then
            s9_1, ta_1 = pcall(lP)
            if s9_1 and ta_1 then
                task.wait(mQ("ShakeDelay", 0.35))
            else
                task.wait(0.2)
            end
        else
            task.wait(0.25)
        end
    end
end
local function fn418()
    mK(Toggles.AntiGameplayPause.Value)
end
local function fn420(S, T)
    if setclipboard then
        setclipboard(S)
    elseif toclipboard then
        toclipboard(S)
    end
    Library:Notify(T)
end
local function onOnClientEvent(B)
    if type(B) ~= "table" then
        return
    end
    lI = B
    lD = os.clock()
end
local function fn432(az)
    local nX = Toggles[az]
    return nX ~= nil and nX.Value == true
end
local function onCopyEthereumAddress()
    l_(mj, "Copied Ethereum address")
end
local function fn491(cm)
    local pr = cm and cm:FindFirstChild("FarmSlots")
    if not pr then
        return nil, nil
    end
    for i, child in ipairs(pr:GetChildren()) do
        local ProximityPrompt = child:FindFirstChildWhichIsA("ProximityPrompt")
        local ps_1 = ProximityPrompt and ProximityPrompt.Enabled and ProximityPrompt.ActionText:find("Place", 1, true)
        if ps_1 then
            return child, ProximityPrompt
        end
    end
    return nil, nil
end
local function fn507()
    if not Toggles.Fly.Value then
        local rS = lG()
        if rS then
            rS.PlatformStand = false
        end
    end
end
local function fn510()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    mN:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    mN:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    mJ = tick()
end
local function onUnload()
    Library:Unload()
end
local function fn529(aQ)
    return next(aQ) == nil
end
local function worker2()
    while not Library.Unloaded do
        local sZ = lF("AutoShakeTrees") or lF("AutoShakeElusive")
        local sZ_1
        local s4 = if sZ then 1 else 0
        local s2 = 2907 * s4 + 1997 * (1 - s4)
        local s3 = 2496 * s4 + 2729 * (1 - s4)
        if not ((s2 * 920 + s3 * 683 + s2 * s3) % 16777213 == 11635080) then
            sZ = lF("AutoShakeRarity")
        end
        if not sZ then
            sZ = lF("AutoShakeAdmin")
        end
        local s_ = sZ
        local s__1
        if s_ then
            sZ_1, s__1 = pcall(mz)
            if sZ_1 and s__1 then
                task.wait(mQ("ShakeDelay", 0.35))
            else
                task.wait(0.2)
            end
        else
            task.wait(0.25)
        end
    end
end
local function fn584(bH)
    return mc(bH)
end
local function onCopyLitecoinAddress()
    l_(ms, "Copied Litecoin address")
end
local function worker7()
    while not Library.Unloaded do
        pcall(l2)
        task.wait(0.2)
    end
end
local function fn623()
    local Character = mv.Character
    local oe = Character and Character:FindFirstChildOfClass("Humanoid")
    return oe
end
local function fn667()
    local pO = lH()
    if not pO then
        return false
    end
    local MoneyCollectPart = pO:FindFirstChild("MoneyCollectPart")
    local pO_1 = MoneyCollectPart and MoneyCollectPart:IsA("BasePart")
    if not pO_1 then
        return false
    end
    local ProximityPrompt = MoneyCollectPart:FindFirstChildWhichIsA("ProximityPrompt")
    if not ProximityPrompt or not ProximityPrompt.Enabled then
        return false
    end
    local AmountLabel = MoneyCollectPart:FindFirstChild("AmountLabel", true)
    local pR_1 = AmountLabel and AmountLabel.Text or ""
    if pR_1 == "$0" or pR_1 == "" then
        return false
    end
    local pQ_4 = mT()
    if not pQ_4 then
        return false
    end
    pQ_4.CFrame = MoneyCollectPart.CFrame + Vector3.new(0, 3, 0)
    task.wait(0.15)
    mc(ProximityPrompt)
    return true
end
local function onInputChanged(gH)
    local UserInputType = gH.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        mM = tick()
    end
end
local function fn676()
    local oS = mv.Name .. "'s base"
    for i, child in ipairs(Workspace:GetChildren()) do
        if child.Name:match("^Base%d+$") then
            for i, descendant in ipairs(child:GetDescendants()) do
                local oT = descendant:IsA("TextLabel") and descendant.Text == oS
                if oT then
                    return child
                end
            end
        end
    end
    return nil
end
local function onRenderStepped(f7)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local rK_1 = lG()
        if rK_1 then
            rK_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local rK_3 = mT()
        local rL = lG()
        mH = Workspace.CurrentCamera or mH
        if rK_3 and rL and mH then
            rL.PlatformStand = true
            local rL_1 = Vector3.zero
            if mR:IsKeyDown(Enum.KeyCode.W) then
                rL_1 = rL_1 + mH.CFrame.LookVector
            end
            if mR:IsKeyDown(Enum.KeyCode.S) then
                rL_1 = rL_1 - mH.CFrame.LookVector
            end
            if mR:IsKeyDown(Enum.KeyCode.A) then
                rL_1 = rL_1 - mH.CFrame.RightVector
            end
            if mR:IsKeyDown(Enum.KeyCode.D) then
                rL_1 = rL_1 + mH.CFrame.RightVector
            end
            if mR:IsKeyDown(Enum.KeyCode.Space) then
                rL_1 = rL_1 + Vector3.new(0, 1, 0)
            end
            if mR:IsKeyDown(Enum.KeyCode.LeftControl) then
                rL_1 = rL_1 - Vector3.new(0, 1, 0)
            end
            rK_3.Velocity = Vector3.zero
            if rL_1.Magnitude > 0 then
                rK_3.CFrame = rK_3.CFrame + rL_1.Unit * Options.FlySpeed.Value * f7
            end
        end
    end
end
local function onImportConfigFromClipboardTex()
    local sL_1
    local sJ = Options.SaveManager_ImportSource.Value
    local sJ_1
    local sP = if sJ then 1 else 0
    local sN = 376 * sP + 1045 * (1 - sP)
    local sO = 1052 * sP + 1294 * (1 - sP)
    if not ((sN * 2835 + sO * 1702 + sN * sO) % 16777213 == 3252016) then
        sJ = ""
    end
    local sK = tostring(sJ):match("^%s*(.-)%s*$")
    if sK == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    sJ_1, sL_1 = pcall(mL.JSONDecode, mL, sK)
    local sK_1 = not sJ_1 or type(sL_1) ~= "table" or type(sL_1.objects) ~= "table"
    if sK_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local sJ_2 = 0
    for i, v in ipairs(sL_1.objects) do
        if lC(v) then
            sJ_2 += 1
        end
    end
    if sJ_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local sL_2 = sJ_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(sJ_2, sL_2), 6)
end
local function worker5()
    local th_1
    local tg_1
    while not Library.Unloaded do
        if lF("AutoRelease") then
            tg_1, th_1 = pcall(mh)
            if tg_1 and th_1 then
                task.wait(0.25)
            else
                task.wait(0.6)
            end
        else
            task.wait(0.5)
        end
    end
end
local function fn758(dT)
    local qA_1
    local qz_1
    qz_1, qA_1 = mk(dT)
    local qB = not qA_1
    local qC = not qz_1
    local qH = if qC then 1 else 0
    local qF = 3123 * qH + 592 * (1 - qH)
    local qG = 3472 * qH + 2729 * (1 - qH)
    if not ((qF * 945 + qG * 2809 + qF * qG) % 16777213 == 6769926) then
        qC = qB
    end
    if qC then
        return false
    end
    local qB_1 = mT()
    local qC_1 = qA_1.Parent
    local qD = qC_1 and qC_1:IsA("BasePart")
    if not qD then
        qC_1 = ml(qz_1)
    end
    if qB_1 and qC_1 then
        qB_1.CFrame = CFrame.new(qC_1.Position + Vector3.new(0, 4, 0))
    end
    lO(qA_1)
    return true
end
local function fn776(aS)
    local oa = Options[aS]
    local ob = oa and oa.Value
    return mr(ob)
end
local function worker6()
    local tl_1
    local tk_1
    while not Library.Unloaded do
        if lF("AutoCollectMoney") then
            tk_1, tl_1 = pcall(mS)
            if tk_1 and tl_1 then
                task.wait(0.35)
            else
                task.wait(0.5)
            end
        else
            task.wait(0.5)
        end
    end
end
local function fn882(by)
    if not by then
        return nil
    elseif by.PrimaryPart then
        return by.PrimaryPart
    else
        return by:FindFirstChildWhichIsA("BasePart", true)
    end
end
local function fn886(b0)
    local pa = lD
    pcall(function()
        lZ:FireServer()
    end)
    local pb = os.clock()
    local pd = pb + (b0 or 1.5)
    while true do
        local pb_1 = lD == pa and os.clock() < pd and not Library.Unloaded
        if pb_1 then
            task.wait(0.05)
            continue
        end
        break
    end
    return lI
end
local function onRscripts()
    l_(mg, "Copied Rscripts profile to clipboard")
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = mv.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local rx_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if rx_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function onCopyJoinScript_JobID()
    local e6 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, l7)
    l_(e6, "Copied join script to clipboard")
end
local function fn941(Z, aa)
    return string.format('<font color="%s">%s</font>', aa, Z)
end
local function fn972(a5)
    local attr = a5:GetAttribute("TreeId")
    local ol = attr ~= ""
    local om = type(attr) == "string" and ol
    if om then
        return attr
    end
    return a5.Name
end
local function onCopySolanaAddress()
    l_(ma, "Copied Solana address")
end
local function fn994(eQ)
    local DiscordGroup = eQ:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = lR })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = lR })
end
local function fn1006(gO, gP)
    local sb_1 = (gO == "Toggle" and Toggles or Options)[gP]
    local sa_2 = type(sb_1) == "table" and sb_1.Type == gO
    return sa_2 and sb_1 or nil
end
local function onCopyVenmoLink()
    l_(l0, "Copied Venmo link")
end
local function fn1031()
    local ph_1
    local pg_1
    local pf = l4(1.25)
    ph_1, pg_1 = nil, nil
    for k, v in pairs(pf) do
        local pf_1 = tonumber(k)
        local pi = pf_1 and type(v) == "table" and type(v.id) == "string" and v.id ~= ""
        if pi then
            local pi_1 = mB(v)
            if not pg_1 or pi_1 > pg_1 then
                pg_1 = pi_1
                ph_1 = pf_1
            end
        end
    end
    return ph_1, pg_1
end
local function fn1057(cu, cv)
    local pA = os.clock()
    local pC = pA + (cv or 2)
    while true do
        local pA_1 = os.clock() < pC and not Library.Unloaded
        if pA_1 then
            local attr = mv:GetAttribute("EquippedPetId")
            if cu then
                if tostring(attr) == tostring(cu) then
                    return true
                end
            else
                local pB_1 = attr ~= nil and tostring(attr) ~= ""
                if pB_1 then
                    return true
                end
            end
            task.wait(0.05)
            continue
        end
        break
    end
    return false
end
lC = nil
lD = nil
lF = nil
lG = nil
lH = nil
lI = nil
lJ = nil
connection3 = nil
Plants = nil
lN = nil
lO = nil
lP = nil
lR = nil
lX = nil
connection2 = nil
lZ = nil
l_ = nil
l0 = nil
l1 = nil
l2 = nil
l4 = nil
Options = nil
l6 = nil
l7 = nil
Toggles = nil
ma = nil
mb = nil
mc = nil
SaveManager = nil
me = nil
mf = nil
mg = nil
mh = nil
mj = nil
mk = nil
ml = nil
mm = nil
mn = nil
local lB, lE, PlayerGui, lQ, lS, lT, TriggerCrateSpin, lV, lW, l3, PetGenerator, mi
Library = nil
mp = nil
mq = nil
mr = nil
ms = nil
mt = nil
mu = nil
mv = nil
Workspace = nil
mx = nil
my = nil
mz = nil
mB = nil
mC = nil
mE = nil
mF = nil
mG = nil
mH = nil
mJ = nil
mK = nil
mL = nil
mM = nil
mN = nil
mP = nil
mQ = nil
mR = nil
mS = nil
mT = nil
mV = nil
mX = nil
local mA, mD, mI, mO, mU, mW
mA = nil
mD = nil
mI = nil
mO = nil
mU = nil
mW = nil
local nk
tF_10, mW, tF_6, mR, mN, mL, mI, mA, Workspace, mv, tF_22, mm, mg, tF_12, PetGenerator, l3, lZ, tF_4, lW, TriggerCrateSpin, lQ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local tF_19 = 22
repeat
    tF_15 = (tF_19 * 11 + 8) % 12 + 1
    if tF_15 <= 6 then
        if tF_15 <= 3 then
            if tF_15 <= 2 then
                if tF_15 <= 1 then
                    tF_25 = {
                        "evjvzwsav",
                        "jmhxteb",
                        "qvgw",
                        "qreedzum",
                        "zvnpmsfopak",
                        "hypctie",
                        "fizcsfu",
                        "elev",
                        "uyzofhgnx",
                        "rrawhqffgi",
                        "mjgal"
                    }
                    local uu = tF_19
                    tF_8 = tF_25[uu % 11 + 1]
                    if tF_8:len() >= tF_8:reverse():rep(uu % 3 + 2):len() then
                        mL = game:GetService("RunService")
                        tF_6 = game:GetService("UserInputService")
                        mR = game:GetService("VirtualUser")
                        mN = game:GetService("HttpService")
                    else
                        tF_6 = game:GetService("RunService")
                        mR = game:GetService("UserInputService")
                        mN = game:GetService("VirtualUser")
                        mL = game:GetService("HttpService")
                    end
                    tF_19 = (tF_19 + 95) % 96
                else
                    if tF_19 * 96934461 + 1 + 7 >= tF_19 * 96934461 + 1 + 7 + 1 then
                        mA = game:GetService("GuiService")
                        mI = game:GetService("CoreGui")
                    else
                        mI = game:GetService("GuiService")
                        mA = game:GetService("CoreGui")
                    end
                    tF_19 = (tF_19 + 23) % 96
                end
            else
                local um = bit32.rrotate(bit32.bxor(bit32.lrotate(tF_19, 25), string.byte(tostring(lZ))), 29)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(um, 373963253), 1490921832), (bit32.bxor(bit32.band(um, 3921004042), 4186321715))), 1490921832), 4186321715) ~= um then
                    mv = game:GetService("Workspace")
                    tF_10 = Workspace.LocalPlayer
                else
                    Workspace = game:GetService("Workspace")
                    mv = tF_10.LocalPlayer
                end
                tF_19 = (tF_19 + 47) % 96
            end
        elseif tF_15 <= 5 then
            if tF_15 <= 4 then
                tF_25 = { "uieng", "mdj", "jbgrndy", "zgqbjdufep", "qhiimvn", "dtcwxtw", "hnyda", "wvnen" }
                local uI = tF_19
                tF_8 = tF_25[uI % 8 + 1]
                if tF_8:len() <= tF_8:gsub("(.)", "%1%1", uI % 3 % 2 + 1):len() then
                    tF_22 = "Pet Forest"
                    mm = "https://discord.gg/ehKVq7pf7v"
                else
                    mm = "Pet Forest"
                    tF_22 = "https://discord.gg/ehKVq7pf7v"
                end
                tF_19 = (tF_19 + 35) % 96
            else
                tF_25 = {
                    "jqkubanwet",
                    "xfpgfrghlt",
                    "lomc",
                    "dqxtb",
                    "hunwtrm",
                    "ffgkojid",
                    "nhnjv",
                    "gjjhsrawamrn",
                    "dlxijbr",
                    "ksadfelceueb",
                    "ucjqqvxdk"
                }
                if tF_25[(tF_19 * 91 + 64) % 11 + 1] < tF_25[(tF_19 * 91 + 64) % 11 + 1] then
                    tF_6 = "https://rscripts.net/@Ouroboros"
                else
                    mg = "https://rscripts.net/@Ouroboros"
                end
                tF_19 = (tF_19 + 23) % 96
            end
        else
            tF_25 = {
                "jfhgldcksyfv",
                "cqhbaaik",
                "tlzuzvzfdh",
                "kuwgdbffbzrd",
                "sylpbtswsmss",
                "kgsw",
                "zsogylb",
                "mxaqawnr"
            }
            if tF_25[(tF_19 * 16 + 37) % 8 + 1] <= tF_25[(tF_19 * 16 + 37) % 8 + 1] then
                tF_12 = require(mW:WaitForChild("TreeIndex"))
            else
                mW = require(tF_12:WaitForChild("TreeIndex"))
            end
            tF_19 = (tF_19 + 83) % 96
        end
    elseif tF_15 <= 9 then
        if tF_15 <= 8 then
            if tF_15 <= 7 then
                tF_25 = (vector.create((tF_19 * 5 + 2) % 11 + 1, (tF_19 * 2 + 4) % 13 + 1, (tF_19 * 10 + 7) % 17 + 1))
                local uK = vector.floor(tF_25) + vector.ceil(tF_25 * -1)
                if vector.dot(uK, uK) == 5 then
                    mW = require(PetGenerator:WaitForChild("PetGenerator"))
                    lZ = PetGenerator:WaitForChild("EquipFromInventory")
                    l3 = PetGenerator:WaitForChild("RequestPetInventory")
                else
                    PetGenerator = require(mW:WaitForChild("PetGenerator"))
                    l3 = mW:WaitForChild("EquipFromInventory")
                    lZ = mW:WaitForChild("RequestPetInventory")
                end
                tF_19 = (tF_19 + 71) % 96
            else
                tF_25 = (vector.create((tF_19 * 4 + 9) % 11 + 1, (tF_19 * 3 + 3) % 13 + 1, (tF_19 * 9 + 11) % 17 + 1))
                tF_8 = (vector.create((tF_19 * 6 + 1) % 11 + 1, (tF_19 * 9 + 7) % 13 + 1, (tF_19 * 10 + 14) % 17 + 1))
                tF_17 = (vector.create((tF_19 * 5 + 1) % 11 + 1, (tF_19 * 4 + 2) % 13 + 1, (tF_19 * 8 + 5) % 17 + 1))
                if vector.dot(vector.cross(tF_25, tF_8), tF_17) == vector.dot(vector.cross(tF_8, tF_17), tF_25) + 2 then
                    mW = tF_4:WaitForChild("SyncPetInventory")
                else
                    tF_4 = mW:WaitForChild("SyncPetInventory")
                end
                tF_19 = (tF_19 + 35) % 96
            end
        else
            local uy = bit32.rrotate(bit32.bxor(bit32.lrotate(tF_19, 5), string.byte(tostring(mR))), 12)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(uy, 1671649105), 1140321165), (bit32.bxor(bit32.band(uy, 2623318190), 2934180989))), 1140321165), 2934180989) ~= uy then
                mW = TriggerCrateSpin:WaitForChild("ConfirmDeletePet")
                lW = TriggerCrateSpin:WaitForChild("TriggerCrateSpin")
            else
                lW = mW:WaitForChild("ConfirmDeletePet")
                TriggerCrateSpin = mW:WaitForChild("TriggerCrateSpin")
            end
            tF_19 = (tF_19 + 59) % 96
        end
    elseif tF_15 <= 11 then
        if tF_15 <= 10 then
            local ut = bit32.rrotate(bit32.bxor(bit32.lrotate(tF_19, 15), string.byte(tostring(tF_10))), 19)
            if bit32.bxor(bit32.lrotate(bit32.bxor(ut, 1576512194), 18), 2869524446) ~= bit32.lrotate(ut, 18) then
                mW = lQ:FindFirstChild("SpinFinished")
            else
                lQ = mW:FindFirstChild("SpinFinished")
            end
            tF_19 = (tF_19 + 11) % 96
        else
            tF_15 = { "bck", "vtzbhifnjc", "rym", "hbysmwlsg", "ediwa", "gchrtoxyvs", "pwynmjeyvedf", "ycpd" }
            if tF_15[(tF_19 * 84 + 44) % 8 + 1] <= tF_15[(tF_19 * 84 + 44) % 8 + 1] then
                tF_10 = game:GetService("Players")
            else
                l3 = game:GetService("Players")
            end
            tF_19 = (tF_19 + 71) % 96
        end
    else
        local uH = bit32.rrotate(bit32.bxor(bit32.lrotate(tF_19, 6), string.byte(tostring(mN))), 24)
        if bit32.bxor(bit32.lrotate(bit32.bxor(uH, 522320526), 4), 4062161121) == bit32.lrotate(uH, 4) then
            mW = game:GetService("ReplicatedStorage")
        else
            tF_12 = game:GetService("ReplicatedStorage")
        end
        tF_19 = (tF_19 + 11) % 96
    end
until (tF_19 * 95 + 85) % 96 == 75
if not lQ then
    tF_10 = 2
    repeat
        tF_19 = (tF_10 * 1 + 0) % 2 + 1
        if tF_19 <= 1 then
            if tF_10 * 91138073 + 11 + 3 <= tF_10 * 91138073 + 11 + 3 + 3 then
                lQ = Instance.new("BindableEvent")
            else
                lQ = Instance.new("BindableEvent")
            end
            tF_10 = (tF_10 + 5) % 8
        else
            if tF_10 * 41623693 + 12 + 4 >= tF_10 * 41623693 + 12 + 4 + 6 then
                mW.Name = "SpinFinished"
                mW.Parent = lQ
            else
                lQ.Name = "SpinFinished"
                lQ.Parent = mW
            end
            tF_10 = (tF_10 + 1) % 8
        end
    until (tF_10 * 3 + 4) % 8 == 4
end
Plants, PlayerGui, lI, lD, tF_8, mO, tF_25, mC = nil, nil, nil, nil, nil, nil, nil, nil
Plants = Workspace:WaitForChild("Plants")
PlayerGui = mv:WaitForChild("PlayerGui")
if (tF_25 or tF_25) and (not tF_8 and tF_25) and (not tF_8 and not tF_8 or (Plants or not tF_25)) and not ((tF_25 or tF_25) and (not tF_8 and tF_25) and (not tF_8 and not tF_8 or (Plants or not tF_25))) then
    lD = {}
    lI = 0
else
    lI = {}
    lD = 0
end
tF_4.OnClientEvent:Connect(onOnClientEvent)
tF_8 = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Elusive", "Ancient", "Admin" }
mO = { "Beech", "Birch", "Cornstalk", "PalmTree", "Sequoia", "WalkingPalm", "WaxMyrtle" }
tF_25 = {}
tF_15 = {}
mC = {}
for k, v in pairs(tF_12) do
    if type(v) == "table" then
        tF_25[#tF_25 + 1] = k
        tF_10 = v.rarity or "Unknown"
        mC[k] = tostring(tF_10)
        if v.rarity == "Elusive" then
            tF_15[#tF_15 + 1] = k
        end
    end
end
Library, SaveManager, Toggles, Options, my, ms, mq, mj, me, ma, l6, l0, mV, lV, lT, mD, l_, lR, lJ, mX, lF, mQ, mr, l1, lX, lG, mT, mG, mt, mf, mU, mu, ml, mc, lO, lH, mB, l4, lB, mi, lS, mP, mS, l2, mk, mz, lP, mh, mx = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(tF_25)
table.sort(tF_15)
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
l_ = fn420
lR = fns.fn164
lJ = fn941
mX = fn262
local tF_18 = "#7fd47f"
local tF_9 = "#6ec1ff"
my = "#e8a34d"
local tF_26 = "#8b93a3"
ms = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
mq = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
mj = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
me = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
ma = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
l6 = "https://paypal.me/TheTruckerGOD"
l0 = "https://venmo.com/u/miserablemusic"
local tF_7 = "#345d9d"
local tF_24 = "#f7931a"
local tF_14 = "#627eea"
local tF_5 = "#26a17b"
local tF_23 = "#14f195"
local tF_11 = "#0070ba"
local tF_1 = "#008cff"
lF = fn432
mQ = fns.fn94
mr = fn206
l1 = fn529
lX = fn776
lG = fn623
mT = fns.fn155
mG = fn972
mt = fn242
mf = fn371
mV = { k = 1000, m = 1000000, b = 1000000000, t = 1000000000000, q = 1000000000000000 }
mU = fns.fn125
mu = fns.fn175
ml = fn882
mc = function(bA)
    if not bA or not fireproximityprompt then
        return false
    end
    local HoldDuration = bA.HoldDuration
    local RequiresLineOfSight = bA.RequiresLineOfSight
    bA.HoldDuration = 0
    bA.RequiresLineOfSight = false
    local oN = pcall(fireproximityprompt, bA) or pcall(fireproximityprompt, bA, 0) or pcall(function()
        bA:InputHoldBegin()
        task.wait(0.05)
        bA:InputHoldEnd()
    end)
    bA.HoldDuration = HoldDuration
    bA.RequiresLineOfSight = RequiresLineOfSight
    return oN
end
lO = fn584
lH = fn676
mB = function(bT)
    local o7_1
    local o6_1
    if type(bT) ~= "table" then
        return 0
    end
    o6_1, o7_1 = pcall(function()
        return PetGenerator:PetValueAdjustment(bT.model, bT.baseValue, bT.mutation, bT.weight, bT.shiny)
    end)
    local o8 = o6_1 and type(o7_1) == "number"
    if o8 then
        return o7_1
    end
    local o6_2 = tonumber(bT.baseValue) or 0
    return o6_2
end
l4 = fn886
lB = fn1031
mi = fn491
lS = fn1057
mP = function()
    local pE
    local pI_3
    local pF = lH()
    if not pF then
        return false
    end
    local attr = mv:GetAttribute("EquippedPetId")
    local pG_3, pG_5
    local pH = attr == nil or tostring(attr) == ""
    local pH_2, pH_3
    if pH then
        pE = lB()
        if not pE then
            return false
        end
        local pG_1 = lI[pE]
        local pH_1 = pG_1 and pG_1.id
        pcall(function()
            l3:FireServer(pE)
        end)
        if not lS(pH_1, 2) then
            return false
        end
        pG_3, pH_2 = mi(pF)
        if pI_3 then
            return false
        end
        local pF_2 = mT()
        local pI_2 = pG_3:FindFirstChild("TurnIntoPet")
        local pJ_1 = pI_2 and pI_2:IsA("BasePart")
        if not pJ_1 then
            pI_2 = pG_3:FindFirstChildWhichIsA("BasePart", true)
        end
        if not (pF_2 and pI_2) then
            return false
        end
        pF_2.CFrame = pI_2.CFrame + Vector3.new(0, 3, 0)
        task.wait(0.2)
        mc(pH_2)
        task.wait(0.35)
        return mv:GetAttribute("EquippedPetId") == nil
    end
    pG_5, pH_3 = mi(pF)
    pI_3 = not pG_5 or not pH_3
    if pI_3 then
        return false
    end
    local pF_4 = mT()
    local pI_4 = pG_5:FindFirstChild("TurnIntoPet")
    local pJ_2 = pI_4 and pI_4:IsA("BasePart")
    if not pJ_2 then
        pI_4 = pG_5:FindFirstChildWhichIsA("BasePart", true)
    end
    if not (pF_4 and pI_4) then
        return false
    end
    pF_4.CFrame = pI_4.CFrame + Vector3.new(0, 3, 0)
    task.wait(0.2)
    mc(pH_3)
    task.wait(0.35)
    return mv:GetAttribute("EquippedPetId") == nil
end
mS = fn667
l2 = function()
    local qa
    local p9
    local p8
    p8 = nil
    p9 = nil
    qa = nil
    local LootCrateGui = PlayerGui:FindFirstChild("LootCrateGui")
    if not LootCrateGui or not LootCrateGui.Enabled then
        return false
    end
    local RevealHint = LootCrateGui:FindFirstChild("RevealHint", true)
    local qd = not RevealHint or not RevealHint.Visible
    local qh = if qd then 1 else 0
    local qf = 1707 * qh + 2731 * (1 - qh)
    local qg = 1852 * qh + 3514 * (1 - qh)
    if not ((qf * 3126 + qg * 2073 + qf * qg) % 16777213 == 12336642) then
        qd = RevealHint.Text ~= "Click to continue"
    end
    if qd then
        return false
    end
    local qd_1 = (LootCrateGui:FindFirstChild("MainFrame"))
    local qh_1 = if qd_1 then 1 else 0
    local qf_1 = 4091 * qh_1 + 2970 * (1 - qh_1)
    local qg_1 = 2302 * qh_1 + 3845 * (1 - qh_1)
    if not ((qf_1 * 3623 + qg_1 * 3883 + qf_1 * qg_1) % 16777213 == 16400628) then
        qd_1 = RevealHint.Parent
    end
    p9 = qd_1
    if not p9 then
        return false
    end
    local MouseButton1 = Enum.UserInputType.MouseButton1
    local Unknown = Enum.KeyCode.Unknown
    qa = false
    p8 = { UserInputType = MouseButton1, KeyCode = Unknown }
    pcall(function()
        if firesignal then
            firesignal(p9.InputBegan, p8)
            qa = true
        end
    end)
    pcall(function()
        for i, v in ipairs(getconnections(p9.InputBegan)) do
            local p7 = v
            pcall(function()
                if p7.Fire then
                    p7:Fire(p8)
                    qa = true
                elseif typeof(p7.Function) == "function" then
                    p7.Function(p8)
                    qa = true
                end
            end)
        end
    end)
    return qa
end
mk = fns.fn52
mz = fn758
lV = 1
lT = 0
lP = function()
    local qI
    qI = nil
    local qJ = lX("EventTreeChoice")
    local qK = {}
    for i, v in ipairs(mO) do
        local qL = l1(qJ) or qJ[v]
        if qL then
            qK[#qK + 1] = v
        end
    end
    if #qK == 0 then
        return false
    end
    if lV > #qK then
        lV = 1
    end
    qI = qK[lV]
    local qJ_1 = mz(function(d7)
        return d7 == qI
    end)
    if qJ_1 then
        lT += 1
        if lT >= mQ("EventShakesPerTree", 10) then
            lT = 0
            lV = lV % #qK + 1
        end
    else
        lT = 0
        lV = lV % #qK + 1
    end
    return qJ_1
end
mh = function()
    local qW
    local id
    local qX = mU(Options.ReleaseThreshold.Value)
    if not qX then
        return false
    end
    local qY = l4(1.25)
    qW, id = nil, nil
    for k, v in pairs(qY) do
        local qY_1 = tonumber(k)
        local q_ = qY_1 and type(v) == "table" and type(v.id) == "string" and v.id ~= "" and mB(v) < qX
        if q_ then
            qW = qY_1
            id = v.id
            break
        end
    end
    if not qW then
        return false
    end
    pcall(function()
        l3:FireServer(qW)
    end)
    if not lS(id, 2) then
        return false
    end
    pcall(function()
        lW:FireServer()
    end)
    task.wait(0.25)
    return mv:GetAttribute("EquippedPetId") == nil
end
mD = false
mx = function()
    local ra
    ra = nil
    if mD then
        return false
    end
    local lootCrateCharges = mv:FindFirstChild("lootCrateCharges")
    if not lootCrateCharges or lootCrateCharges.Value <= 0 then
        return false
    end
    local rh = if mW:GetAttribute("UiButtonsEnabled") == false then 1 else 0
    if rh == 1 then
        return false
    end
    mD = true
    ra = false
    local connection = lQ.Event:Connect(function()
        ra = true
    end)
    local rc_1 = pcall(function()
        TriggerCrateSpin:Fire()
    end)
    if not rc_1 then
        if connection then
            connection:Disconnect()
        end
        mD = false
        return false
    end
    local rc_2 = os.clock() + 20
    while true do
        local rd = not ra and os.clock() < rc_2 and not Library.Unloaded
        if rd then
            task.wait(0.1)
            continue
        end
        break
    end
    if connection then
        connection:Disconnect()
    end
    mD = false
    return ra
end
tF_10 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = mm, Copyable = true }, "|", tF_22 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
tF_17 = {
    Info = tF_10:AddTab("Info", "info"),
    Main = tF_10:AddTab("Main", "tree-deciduous"),
    Player = tF_10:AddTab("Player", "person-standing"),
    Settings = tF_10:AddTab("Settings", "settings")
}
tF_12 = fn994
for k, v in tF_17 do
    tF_12(v)
end
mF, tF_19, tF_3, mb, l7, tF_4 = nil, nil, nil, nil, nil, nil
tF_10 = 19
repeat
    tF_12 = (tF_10 * 1 + 2) % 3 + 1
    if tF_12 <= 2 then
        if tF_12 <= 1 then
            tF_12 = (vector.create((tF_10 * 3 + 9) % 11 + 1, (tF_10 * 8 + 9) % 13 + 1, (tF_10 * 6 + 17) % 17 + 1))
            local nj = (vector.create((tF_10 * 1 + 5) % 11 + 1, (tF_10 * 8 + 2) % 13 + 1, (tF_10 * 8 + 3) % 17 + 1))
            nk = (vector.create((tF_10 * 1 + 1) % 11 + 1, (tF_10 * 11 + 12) % 13 + 1, (tF_10 * 3 + 14) % 17 + 1))
            if vector.dot(vector.cross(tF_12, nj), nk) == vector.dot(vector.cross(nj, nk), tF_12) then
                mF = "Unknown"
                pcall(fn272)
                tF_19 = tF_17.Info:AddLeftGroupbox("Account", "circle-user")
                tF_19:AddLabel(mX("User", mv.Name, tF_18), true)
                tF_19:AddLabel(mX("Status", "Keyless", tF_18), true)
                tF_19:AddLabel(mX("Executor", mF, tF_18), true)
                tF_3 = tF_17.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                tF_3:AddLabel(lJ(tF_22 .. " [" .. tostring(game.PlaceId) .. "]", tF_9), true)
                tF_3:AddLabel(mX("Place ID", tostring(game.PlaceId), tF_9), true)
                mb = tF_3:AddLabel(mX("Session time", "0s", my), true)
            else
                tF_17 = "Unknown"
                pcall(fn272)
                tF_3 = mb.Info:AddLeftGroupbox("Account", "circle-user")
                tF_3:AddLabel(tF_18("User", mF.Name, my), true)
                tF_3:AddLabel(tF_18("Status", "Keyless", my), true)
                tF_3:AddLabel(tF_18("Executor", "Unknown", my), true)
                lJ = mb.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                lJ:AddLabel(tF_22(tF_9 .. " [" .. tostring(game.PlaceId) .. "]", mv), true)
                lJ:AddLabel(tF_18("Place ID", tostring(game.PlaceId), mv), true)
                mX = lJ:AddLabel(tF_18("Session time", "0s", tF_19), true)
            end
            tF_10 = (tF_10 + 16) % 24
        else
            if tF_10 * 119115797 + 2 + 7 >= tF_10 * 119115797 + 2 + 7 + 3 then
                mb = tostring(game.JobId)
            else
                l7 = tostring(game.JobId)
            end
            tF_10 = (tF_10 + 1) % 24
        end
    else
        if tF_10 * 97554289 + 1 + 6 <= tF_10 * 97554289 + 1 + 6 + 5 then
            tF_4 = #l7 > 18
        else
            l7 = #tF_4 > 18
        end
        tF_10 = (tF_10 + 19) % 24
    end
until (tF_10 * 7 + 22) % 24 == 23
if tF_4 then
    tF_10 = 2
    repeat
        if (tF_10 * 1 + 7) * 21 % 4 == ((tF_10 * 1 + 7) * 21 + 4) % 4 then
            tF_4 = string.sub(l7, 1, 18) .. "..."
        else
            l7 = string.sub(tF_4, 1, 18) .. "..."
        end
        tF_10 = (tF_10 + 1) % 4
    until (tF_10 * 3 + 2) % 4 == 3
end
tF_10 = tF_4 or l7
lN, mH, mM, mJ, connection2, connection3, mK, mn, lE, mE, mp, lC = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
tF_12 = tF_10
tF_3:AddLabel(mX("Server", tF_12, tF_26), true)
tF_3:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
lN = os.clock()
task.spawn(fns.worker)
local ScriptsGroup = tF_17.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(lJ("Included in this hub", tF_26), true)
ScriptsGroup:AddLabel(lJ(tF_22, tF_9), true)
local FeaturesGroup = tF_17.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(lJ("Auto Shake", tF_9), true)
FeaturesGroup:AddLabel(lJ("Auto Place", my), true)
FeaturesGroup:AddLabel(lJ("Auto Collect", tF_18), true)
FeaturesGroup:AddLabel(lJ("Auto Release", my), true)
FeaturesGroup:AddLabel(lJ("Event Currencies", tF_18), true)
FeaturesGroup:AddLabel(lJ("Event Spin", tF_26), true)
FeaturesGroup:AddLabel(lJ("Player Utilities", tF_9), true)
local SocialsGroup = tF_17.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = lR })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = tF_17.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = lR })
nk = tF_17.Info:AddRightGroupbox("Donations", "heart")
nk:AddLabel(lJ("All donations are optional but appreciated.", my), true)
nk:AddLabel(lJ("If you donate you get a special role, just PING after you donate.", tF_18), true)
nk:AddDivider()
nk:AddLabel(lJ("LTC / Litecoin", tF_7), true)
nk:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
nk:AddLabel(lJ("BTC / Bitcoin", tF_24), true)
nk:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
nk:AddLabel(lJ("ETH / Ethereum", tF_14), true)
nk:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
nk:AddLabel(lJ("USDT", tF_5), true)
nk:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
nk:AddLabel(lJ("Solana", tF_23), true)
nk:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
nk:AddLabel(lJ("PayPal", tF_11), true)
nk:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
nk:AddLabel(lJ("Venmo", tF_1), true)
nk:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
nk:AddDivider()
nk:AddLabel(lJ("Don't have any of the listed currencies but still wanna donate?", tF_26), true)
nk:AddLabel(lJ("DM me and we'll work something out.", tF_9), true)
tF_19 = tF_17.Info:AddRightGroupbox("FAQ", "circle-help")
tF_19:AddLabel("Where do I get a good config?", true)
tF_19:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
tF_19:AddLabel("How do I import / export configs?", true)
tF_19:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
tF_19:AddLabel("How do I report bugs?", true)
tF_19:AddLabel("Join the Discord and post it in the bugs channel.", true)
tF_19:AddLabel("How do I make suggestions?", true)
tF_19:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
tF_19:AddLabel("How do I get help or updates?", true)
tF_19:AddLabel("Join the Discord, updates and support are posted there first.", true)
local AutoShakeGroup = tF_17.Main:AddLeftGroupbox("Auto Shake", "tree-pine")
AutoShakeGroup:AddToggle("AutoShakeTrees", { Text = "Auto Shake Trees", Default = false })
AutoShakeGroup:AddDropdown("ShakeTreeChoice", {
    Text = "Trees",
    Values = tF_25,
    Multi = true,
    Default = {},
    Searchable = true,
    AllowNull = true,
    Expandable = true
})
AutoShakeGroup:AddToggle("AutoShakeElusive", { Text = "Auto Shake Elusive Trees", Default = false })
AutoShakeGroup:AddDropdown("ShakeElusiveChoice", {
    Text = "Elusive Trees",
    Values = tF_15,
    Multi = true,
    Default = {},
    Searchable = true,
    AllowNull = true,
    Expandable = true
})
AutoShakeGroup:AddToggle("AutoShakeRarity", { Text = "Auto Shake Tree Rarity", Default = false })
AutoShakeGroup:AddDropdown("ShakeRarityChoice", {
    Text = "Rarities",
    Values = tF_8,
    Multi = true,
    Default = {},
    Searchable = true,
    AllowNull = true
})
AutoShakeGroup:AddToggle("AutoShakeAdmin", { Text = "Auto Shake Admin Trees", Default = false })
AutoShakeGroup:AddSlider("ShakeDelay", { Text = "Shake Delay", Default = 0.35, Min = 0.05, Max = 2, Rounding = 2 })
local PetsGroup = tF_17.Main:AddRightGroupbox("Pets", "paw-print")
PetsGroup:AddToggle("AutoPlaceBest", { Text = "Auto Place Best Pets", Default = false })
PetsGroup:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
PetsGroup:AddSlider("PlaceDelay", { Text = "Place Delay", Default = 0.45, Min = 0.1, Max = 2, Rounding = 2 })
PetsGroup:AddToggle("AutoRelease", { Text = "Auto Release Pets", Default = false })
PetsGroup:AddInput("ReleaseThreshold", { Text = "Release Under", Default = "1b", Finished = true, Placeholder = "1b" })
local EventGroup = tF_17.Main:AddRightGroupbox("Event", "gift")
EventGroup:AddToggle("AutoSpinEvent", { Text = "Auto Spin Event", Default = false })
EventGroup:AddToggle("AutoEventCurrencies", { Text = "Auto Event Currencies", Default = false })
EventGroup:AddDropdown("EventTreeChoice", {
    Text = "Event Trees",
    Values = mO,
    Multi = true,
    Default = {},
    Searchable = true,
    AllowNull = true
})
EventGroup:AddSlider("EventShakesPerTree", { Text = "Shakes Per Tree", Default = 10, Min = 1, Max = 50, Rounding = 0 })
EventGroup:AddSlider("SpinDelay", { Text = "Spin Delay", Default = 1, Min = 0.25, Max = 5, Rounding = 2 })
local MovementGroup = tF_17.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = tF_17.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
mK = function(fI)
    pcall(function()
        mI:SetGameplayPausedNotificationEnabled(not fI)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = mA:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not fI
        end
    end)
    if not fI then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(mv, "GameplayPaused", false)
        else
            mv.GameplayPaused = false
        end
    end)
end
Toggles.AntiGameplayPause:OnChanged(fn418)
tF_6.Stepped:Connect(onStepped)
mR.JumpRequest:Connect(onJumpRequest)
mH = Workspace.CurrentCamera
tF_6.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn507)
Toggles.WalkSpeedEnabled:OnChanged(fn311)
local MenuGroup = tF_17.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
mM = tick()
mJ = tick()
pcall(function()
    for i, v in ipairs(getconnections(mv.Idled)) do
        local r4 = v
        pcall(function()
            r4:Disable()
        end)
    end
end)
mn = fn510
connection2 = mR.InputBegan:Connect(fns.onInputBegan)
connection3 = mR.InputChanged:Connect(onInputChanged)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/PetForest")
tF_4 = SaveManager:BuildConfigSection(tF_17.Settings)
if (OuroborosHubGroup or OuroborosHubGroup) and (not PetsGroup or tF_19) or not PetsGroup and tF_19 and (tF_19 or PetsGroup) or not ((OuroborosHubGroup or OuroborosHubGroup) and (not PetsGroup or tF_19) or not PetsGroup and tF_19 and (tF_19 or PetsGroup)) then
    lE = fn1006
    mE = fns.fn14
else
    mE = fn1006
    lE = fns.fn14
end
mp = fns.fn108
lC = function(hc)
    local sC
    sC = nil
    local sD = type(hc) ~= "table" or type(hc.idx) ~= "string" or type(hc.type) ~= "string" or SaveManager.Ignore[hc.idx]
    if sD then
        return false
    end
    sC = lE(hc.type, hc.idx)
    if not sC then
        return false
    end
    local sD_1 = pcall(function()
        if hc.type == "Input" then
            if type(hc.text) ~= "string" then
                return
            end
            sC:SetValue(hc.text)
        elseif hc.type == "ColorPicker" then
            sC:SetValueRGB(Color3.fromHex(hc.value), hc.transparency)
        elseif hc.type == "KeyPicker" then
            sC:SetValue({ hc.key, hc.mode, hc.modifiers })
            if hc.mode == "Toggle" and hc.toggled ~= nil then
                sC.Toggled = hc.toggled
                sC:Update()
            end
        else
            sC:SetValue(hc.value)
        end
    end)
    return sD_1
end
tF_4:AddDivider()
tF_4:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
tF_4:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
tF_4:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
ThemeManager:ApplyToTab(tF_17.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(worker6)
task.spawn(worker7)
task.spawn(fns.worker8)
task.spawn(fns.antiGameplayPauseLoop)
task.spawn(fns.worker9)
Library:OnUnload(fn205)
Library:Notify(tF_22 .. " loaded")
