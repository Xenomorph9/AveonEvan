local fns = {}
local tn_8, tn_10, tn_11, tn_14, tn_20, tn_22, tn_25, tn_30, tn_33, tn_35, tn_37, tn_38, tn_39
local WaterPipeUpgradeConfig
local mJ
local lJ
local mq
local m7
local l7
local lP
local mw
local Options
local md
local mV
local lV
local LocalPlayer
local Toggles
local mj
local HttpService
local l0
local mI
local SaveManager
local mp
local m6
local mO
local lO
local pipes
local nc
local mc
local mU
local lU
local mB
local WaterPipeConfig
local mi
local m_
local l_
local mH
local lH
local CurrentCamera2
local m5
local WaterGainConfig
local mN
local mu
local nb
local PlotController
local mT
local WorkerConfig
local mA
local nh
local mh
local mZ
local SlotUpgradeConfig
local mG
local mn
local m4
local l4
local connection
local lM
local mt
local na
local ma
local mS
local lS
local mz
local ng
local mg
local mY
local lY
local Label
local connection2
local m3
local l3
local mL
local RebirthConfig
local ms
local WaterTankConfig
local mR
local Library
local my
local nf
local Packets
local ButtonConfig
local mE
local ml
local m2
local l2
local mK
local lK
local mr
local m8
local l8
local mQ
local ButtonWorkerConfig
local mx
local me
local mW
local lW
local mD
local nk
local mk
local m1
function fns.onCopyLitecoinAddress()
    na(m3, "Copied Litecoin address")
end
function fns.fn33(cA)
    mZ = cA.ownedButtons or mZ
end
function fns.fn46(dY, dZ, d_)
    local p7 = mD(dY, dZ)
    local p8 = p7 and lO() >= p7
    if p8 then
        l3(d_)
    end
end
function fns.fn68(ak, al)
    return string.format('<font color="%s">%s</font>', al, ak)
end
function fns.fn76()
    local qc = lO()
    for k, v in m8 do
        local qd = ButtonConfig[v]
        if qd and not mZ[v] and (qd.Cost or 0) > 0 and qc >= qd.Cost then
            l3(Packets.RequestBuyButton, { buttonName = v })
            return
        end
    end
end
function fns.fn77(cd)
    local pt = WaterPipeConfig.Pipes[cd]
    return pt and pt.MoneyMultiplier or 0
end
function fns.fn90()
    local sA = {}
    for k, v in { Toggles, Options } do
        for k, v in v do
            local sB = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if sB then
                local sB_1 = mU(k, v)
                if sB_1 then
                    sA[#sA + 1] = sB_1
                end
            end
        end
    end
    table.sort(sA, function(hE, hF)
        if hE.type ~= hF.type then
            return hE.type < hF.type
        end
        return hE.idx < hF.idx
    end)
    return { objects = sA }
end
function fns.fn114(hh, hi)
    local sn_1 = (hh == "Toggle" and Toggles or Options)[hi]
    local sm_2 = type(sn_1) == "table" and sn_1.Type == hh
    return sm_2 and sn_1 or nil
end
function fns.onCopyEthereumAddress()
    na(mV, "Copied Ethereum address")
end
function fns.fn140(bS, bT)
    return bS[tostring(bT)]
end
function fns.fn159(O, P)
    local oo = tonumber(O) or 0
    local op = tonumber(P) or 0
    return oo < op
end
function fns.fn163()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local oA = leaderstats and leaderstats:FindFirstChild("Money")
    local oz_1 = oA
    if oA then
        oA = tonumber(oz_1.Value)
    end
    return oA or 0
end
function fns.fn212()
    local oG_1
    local oF_1
    oF_1, oG_1 = pcall(PlotController.GetPlot)
    if oF_1 then
        return oG_1
    end
    return nil
end
function fns.fn221(b0)
    local b2 = math.min(b0, RebirthConfig.LateGrowthRebirth)
    return RebirthConfig.BaseCost * RebirthConfig.CostGrowth ^ b2 * RebirthConfig.LateCostGrowth ^ math.max(b0 - RebirthConfig.LateGrowthRebirth, 0)
end
function fns.fn229(bM)
    local pd = nc()
    local pe = pd and bM and bM:IsA("BasePart")
    if not pe then
        return
    end
    pd.CFrame = bM.CFrame * CFrame.new(0, 1.15, 0)
    pd.AssemblyLinearVelocity = Vector3.zero
    l4(bM)
end
function fns.fn246(eR)
    local qT = eR.Parent
    while true do
        if not qT then
            return nil
        end
        local qU = qT:IsA("Model") and WaterPipeConfig.Pipes[qT.Name]
        if qU then
            break
        end
        qT = qT.Parent
    end
    return qT.Name
end
function fns.fn259(bF)
    local pa = nc()
    if not (pa and bF) then
        return
    end
    if os.clock() - mh < 0.15 then
        return
    end
    mh = os.clock()
    if firetouchinterest then
        pcall(firetouchinterest, pa, bF, 0)
        pcall(firetouchinterest, bF, pa, 0)
        ma = true
        l7 = bF
    end
end
function fns.fn268(bV, bW)
    local pg = tonumber(bW) or 1
    local ph = mY(bV, pg + 1)
    return ph and ph.Cost or nil
end
function fns.fn276(bt)
    local o2 = nc()
    local o3 = o2 and bt and bt:IsA("BasePart")
    if not o3 then
        return
    end
    o2.CFrame = bt.CFrame * CFrame.new(0, bt.Size.Y / 2 + 3, 0)
    o2.AssemblyLinearVelocity = Vector3.zero
end
function fns.fn279(cL)
    mz = true
    pipes = cL.pipes
    local pX = tonumber(cL.rollDuration) or 1
    task.delay(pX + 0.4, function()
        mz = false
    end)
end
function fns.fn294(et, eu, ev, ew)
    local qn = lO()
    for k, v in et do
        if not eu[v] then
            local qo = ev[v]
            if qo and qn >= (qo.Cost or 0) then
                l3(ew)
            end
            return
        end
    end
end
function fns.fn303(ad, ae)
    if setclipboard then
        setclipboard(ad)
    elseif toclipboard then
        toclipboard(ad)
    end
    Library:Notify(ae)
end
function fns.fn336()
    local oL = m2()
    local oM = oL and oL:FindFirstChild("ButtonPart")
    if not oM then
        return nil
    end
    for i, child in oM:GetChildren() do
        if child:IsA("Model") then
            local Button = child:FindFirstChild("Button")
            local oM_1 = Button and Button:IsA("BasePart")
            if oM_1 then
                return Button
            end
        end
    end
    return nil
end
function fns.antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local si = tick() - lY
            local sj = tick() - lU
            if si >= 300 and sj >= 60 then
                pcall(nf)
            else
                if si < 300 and sj >= 300 then
                    pcall(nf)
                end
            end
        end
    end
end
function fns.fn361()
    m5(false)
    ms()
    if connection then
        connection:Disconnect()
    end
    if connection2 then
        connection2:Disconnect()
    end
    local tg = lP()
    if tg then
        tg.PlatformStand = false
        tg.WalkSpeed = 16
    end
end
function fns.worker()
    local p5_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local p4 = math.floor(os.clock() - me)
        if p4 < 60 then
            p5_1 = p4 .. "s"
        elseif p4 < 3600 then
            p5_1 = string.format("%dm %ds", p4 // 60, p4 % 60)
        else
            p5_1 = string.format("%dh %dm", p4 // 3600, p4 % 3600 // 60)
        end
        Label:SetText(mk("Session time", p5_1, l0))
    end
end
function fns.fn453(cp)
    lV = cp.waterAmount or lV
    lS = cp.maxWater or lS
    local pz_2 = tonumber(cp.waterTankLevel) or lM
    lM = pz_2
end
function fns.onRscripts()
    na(mp, "Copied Rscripts profile to clipboard")
end
function fns.fn475(an, ao, ap)
    return string.format("<b>%s</b> %s %s", an, my("-", "#5a6070"), my(ao, ap))
end
function fns.fn537()
    for k, v in mc do
        if mE[v.Id] ~= true then
            if (not v.ParentId or mE[v.ParentId] == true) and m1 >= (v.Cost or 0) then
                l3(Packets.RequestBuySkillTreeUpgrade, { upgradeId = v.Id })
                return
            end
        end
    end
end
function fns.fn571(cE)
    mN = cE or mN
end
function fns.fn574(cy)
    local pF = (tonumber(cy.level))
    local pJ = if pF then 1 else 0
    local pH = 3127 * pJ + 978 * (1 - pJ)
    local pI = 719 * pJ + 3835 * (1 - pJ)
    if not ((pH * 2838 + pI * 3577 + pH * pI) % 16777213 == 13694602) then
        pF = nb
    end
    nb = pF
end
function fns.onExportConfigToClipboard()
    local sY_1
    local sX_1
    sX_1, sY_1 = pcall(HttpService.JSONEncode, HttpService, mw())
    if not sX_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local sX_2 = setclipboard
    local s2 = if sX_2 then 1 else 0
    local s0 = 1791 * s2 + 792 * (1 - s2)
    local s1 = 454 * s2 + 3726 * (1 - s2)
    if not ((s0 * 1029 + s1 * 3978 + s0 * s1) % 16777213 == 4462065) then
        sX_2 = toclipboard
    end
    local sZ = sX_2
    local sX_3 = type(sZ) ~= "function"
    local s2_1 = if sX_3 then 1 else 0
    local s0_1 = 3998 * s2_1 + 2831 * (1 - s2_1)
    local s1_1 = 666 * s2_1 + 2018 * (1 - s2_1)
    if not ((s0_1 * 3932 + s1_1 * 2913 + s0_1 * s1_1) % 16777213 == 3545649) then
        sX_3 = not pcall(sZ, sY_1)
    end
    if sX_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
function fns.fn646(ct)
    local pB = tonumber(ct.level) or lJ
    lJ = pB
end
function fns.fn662()
    return lV <= 0.05
end
function fns.onImportConfigFromClipboardTex()
    local s5_1
    local s3 = Options.SaveManager_ImportSource.Value
    local s3_1
    local s9 = if s3 then 1 else 0
    local s7 = 3610 * s9 + 2426 * (1 - s9)
    local s8 = 1772 * s9 + 1271 * (1 - s9)
    if not ((s7 * 954 + s8 * 749 + s7 * s8) % 16777213 == 11168088) then
        s3 = ""
    end
    local s4 = tostring(s3):match("^%s*(.-)%s*$")
    if s4 == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    s3_1, s5_1 = pcall(HttpService.JSONDecode, HttpService, s4)
    local s4_1 = not s3_1
    local s9_1 = if s4_1 then 1 else 0
    local s7_1 = 1527 * s9_1 + 2537 * (1 - s9_1)
    local s8_1 = 793 * s9_1 + 1074 * (1 - s9_1)
    if not ((s7_1 * 2359 + s8_1 * 3713 + s7_1 * s8_1) % 16777213 == 7757513) then
        s4_1 = type(s5_1) ~= "table"
    end
    local s9_2 = if s4_1 then 1 else 0
    local s7_2 = 896 * s9_2 + 1943 * (1 - s9_2)
    local s8_2 = 3146 * s9_2 + 1763 * (1 - s9_2)
    if not ((s7_2 * 2223 + s8_2 * 325 + s7_2 * s8_2) % 16777213 == 5833074) then
        s4_1 = type(s5_1.objects) ~= "table"
    end
    if s4_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local s3_2 = 0
    for k, v in s5_1.objects do
        if lK(v) then
            s3_2 += 1
        end
    end
    if s3_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local s5_2 = s3_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(s3_2, s5_2), 6)
end
function fns.fn683()
    if lS <= 0 then
        return false
    end
    return lV >= lS * ((Options.LeaveAtPercent and Options.LeaveAtPercent.Value or 100) / 100)
end
function fns.fn696()
    m5(Toggles.AntiGameplayPause.Value)
end
function fns.onInputChanged(g1)
    local UserInputType = g1.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        lY = tick()
    end
end
function fns.fn711()
    na(mt, "Copied Discord invite to clipboard")
end
function fns.fn712(cv)
    local pD = tonumber(cv.luckLevel) or nk
    nk = pD
    local pD_1 = tonumber(cv.speedLevel) or ng
    ng = pD_1
end
function fns.fn715(cI)
    m1 = cI.crystals or m1
    mE = cI.ownedUpgrades or mE
    mE.Root = true
end
local function onCopyBitcoinAddress()
    na(m_, "Copied Bitcoin address")
end
local function fn723()
    local qa = l2("BuyUpgradeList")
    if qa["Water Gain"] then
        mn(WaterGainConfig, lJ, Packets.RequestBuyWaterGain)
    end
    if qa["Roll Luck"] then
        mn(WaterPipeUpgradeConfig.Luck, nk, Packets.RequestBuyRollLuck)
    end
    if qa["Roll Speed"] then
        mn(WaterPipeUpgradeConfig.Speed, ng, Packets.RequestBuyRollSpeed)
    end
    if qa.Slot then
        mn(SlotUpgradeConfig, nb, Packets.RequestBuySlot)
    end
end
local function fn725()
    pipes = nil
end
local function fn726()
    local o5 = nc()
    local o6 = ma
    local o7 = l7
    if o6 then
        o6 = firetouchinterest
    end
    if o6 and o5 and o7 then
        pcall(firetouchinterest, o5, o7, 1)
        pcall(firetouchinterest, o7, o5, 1)
    end
    ma = false
    l7 = nil
end
local function fn741(hp, hq)
    local Type = hq.Type
    if Type == "Toggle" then
        return { idx = hp, type = "Toggle", value = hq.Value == true }
    elseif Type == "Slider" then
        return { idx = hp, type = "Slider", value = tostring(hq.Value) }
    elseif Type == "Dropdown" then
        return { idx = hp, type = "Dropdown", multi = hq.Multi == true, value = hq.Value }
    elseif Type == "Input" then
        local su = hq.Value or ""
        return { idx = hp, type = "Input", text = tostring(su) }
    elseif Type == "ColorPicker" then
        return { idx = hp, type = "ColorPicker", value = hq.Value:ToHex(), transparency = hq.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = hp,
            type = "KeyPicker",
            mode = hq.Mode,
            key = hq.Value,
            modifiers = hq.Modifiers,
            toggled = hq.Toggled
        }
    else
        return nil
    end
end
local function autoUpgradeWaterTankLoop()
    while not Library.Unloaded do
        task.wait(0.2)
        if Toggles.AutoUpgradeWaterTank.Value then
            local ru_1 = mD(WaterTankConfig, lM)
            local rv_1 = ru_1 and lO() >= ru_1
            if rv_1 then
                l3(Packets.RequestUpgradeWaterTank)
            end
        end
        if Toggles.AutoBuyUpgrades.Value then
            lW()
        end
        if Toggles.AutoBuyButtons.Value then
            mJ()
        end
        if Toggles.AutoBuyWorkers.Value then
            l_(mK, mT, WorkerConfig, Packets.RequestBuyWorker)
        end
        if Toggles.AutoBuyButtonWorkers.Value then
            l_(mq, mN, ButtonWorkerConfig, Packets.RequestBuyButtonWorker)
        end
        if Toggles.AutoRebirth.Value then
            if lO() >= mg(m6) then
                l3(Packets.RequestRebirth)
            end
        end
        if Toggles.AutoBuyTreeNodes.Value then
            mQ()
        end
        local ru_2 = Toggles.AutoRoll.Value and not mz and not mS() and os.clock() - mj > 0.8
        if ru_2 then
            mj = os.clock()
            l3(Packets.RequestRollWaterPipe)
        end
        if Toggles.AutoPickupPipe.Value and not mz then
            mu()
        end
    end
end
local function onCopyUSDTAddress()
    na(mO, "Copied USDT address")
end
local function fn776()
    local CurrentCamera = mI.CurrentCamera
    if not CurrentCamera then
        return
    end
    m4:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    m4:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    lU = tick()
end
local function onCopyVenmoLink()
    na(mx, "Copied Venmo link")
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local rF_1 = lP()
        if rF_1 then
            rF_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function onInputBegan()
    lY = tick()
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            m5(true)
        end
    end
end
local function fn843()
    if not Toggles.WalkSpeedEnabled.Value then
        local rX = lP()
        if rX then
            rX.WalkSpeed = 16
        end
    end
end
local function fn844(U, V)
    return (U.Cost or 0) < (V.Cost or 0)
end
local function onCopyPayPalLink()
    na(mB, "Copied PayPal link")
end
local function fn856()
    local Character = LocalPlayer.Character
    local o0 = Character and Character:FindFirstChild("HumanoidRootPart")
    return o0
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in Character:GetDescendants() do
                local rx_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if rx_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function onCopySolanaAddress()
    na(mH, "Copied Solana address")
end
local function onCopyJoinScript_JobID()
    local c8 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, mA)
    na(c8, "Copied join script to clipboard")
end
local function fn899(cS)
    local DiscordGroup = cS:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = mR })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = mR })
end
local function fn910()
    local oU = m2()
    local oV = oU and oU:FindFirstChild("Spawn")
    local oU_1 = oV
    if oV then
        oV = oU_1:IsA("BasePart")
    end
    if oV then
        return oU_1
    end
    return nil
end
local function fn916(G, H)
    return (ButtonConfig[G].Cost or 0) < (ButtonConfig[H].Cost or 0)
end
local function fn949()
    local Character = LocalPlayer.Character
    local oY = Character and Character:FindFirstChildOfClass("Humanoid")
    return oY
end
local function fn965()
    local p0_1
    local p__1
    if identifyexecutor then
        p0_1, p__1 = identifyexecutor()
        local p1 = p0_1 ~= ""
        local p2 = type(p0_1) == "string" and p1
        if p2 then
            local p1_1 = type(p__1) == "string" and p__1 ~= "" and p0_1 .. " " .. p__1
            nh = p1_1 or p0_1
        end
    end
end
local function fn967(cG)
    local pQ = cG.rebirths
    local pU = if pQ then 1 else 0
    local pS = 1664 * pU + 1567 * (1 - pU)
    local pT = 725 * pU + 1665 * (1 - pU)
    if not ((pS * 2350 + pT * 3288 + pS * pT) % 16777213 == 7500600) then
        pQ = m6
    end
    m6 = pQ
end
local function fn985(cC)
    mT = cC or mT
end
local function onRenderStepped(f2)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local rK_1 = lP()
        if rK_1 then
            rK_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local rK_3 = nc()
        local rL_1 = lP()
        if rK_3 and rL_1 then
            rL_1.PlatformStand = true
            local rL_2 = Vector3.zero
            if m7:IsKeyDown(Enum.KeyCode.W) then
                rL_2 += CurrentCamera2.CFrame.LookVector
            end
            local rR_1 = if m7:IsKeyDown(Enum.KeyCode.S) then 1 else 0
            if rR_1 == 1 then
                rL_2 -= CurrentCamera2.CFrame.LookVector
            end
            if m7:IsKeyDown(Enum.KeyCode.A) then
                rL_2 -= CurrentCamera2.CFrame.RightVector
            end
            if m7:IsKeyDown(Enum.KeyCode.D) then
                rL_2 += CurrentCamera2.CFrame.RightVector
            end
            if m7:IsKeyDown(Enum.KeyCode.Space) then
                rL_2 += Vector3.new(0, 1, 0)
            end
            if m7:IsKeyDown(Enum.KeyCode.LeftControl) then
                rL_2 -= Vector3.new(0, 1, 0)
            end
            rK_3.AssemblyLinearVelocity = Vector3.zero
            if rL_2.Magnitude > 0 then
                rK_3.CFrame = rK_3.CFrame + rL_2.Unit * Options.FlySpeed.Value * f2
            end
        end
    end
    if os.clock() < mr then
        return
    end
    local rK_4 = Toggles.AutoFillTank and Toggles.AutoFillTank.Value
    local rK_5 = Toggles.AutoSellTank and Toggles.AutoSellTank.Value
    if rK_4 or rK_5 then
        if rK_5 then
            if mL() then
                ml = true
            else
                local rR_2 = if mi() then 1 else 0
                if rR_2 == 1 then
                    ml = false
                end
            end
        else
            ml = false
        end
        if rK_5 and ml then
            ms()
            mW(l8())
        elseif rK_4 then
            local rK_8 = mG()
            if rK_8 then
                local rL_4 = LocalPlayer:GetAttribute("OnFillButton") == true
                local rM_3 = nc()
                local rM_4 = rM_3 and (rM_3.Position - rK_8.Position).Magnitude > 6
                if rL_4 then
                    if rM_4 then
                        lH(rK_8)
                    end
                else
                    local rR_3 = if os.clock() - md > 0.4 then 1 else 0
                    if rR_3 == 1 then
                        md = os.clock()
                        lH(rK_8)
                    else
                        l4(rK_8)
                    end
                end
            end
        else
            ms()
        end
    end
end
local function fn1001(eJ)
    local qH = m2()
    local qI = qH and qH:FindFirstChild("WaterPipe")
    if not qI then
        return
    end
    for i, descendant in qI:GetDescendants() do
        local qH_2 = descendant:IsA("ProximityPrompt") and descendant.Enabled and descendant.ActionText == "Pick Up"
        if qH_2 then
            eJ(descendant)
        end
    end
end
local function fn1003(b4)
    local pj = Options[b4]
    local pk = {}
    if not pj then
        return pk
    end
    local Value = pj.Value
    if type(Value) ~= "table" then
        return pk
    end
    for k, v in Value do
        if v == true then
            pk[k] = true
        else
            local pj_1 = type(k) == "number" and type(v) == "string"
            if pj_1 then
                pk[v] = true
            end
        end
    end
    return pk
end
local function fn1008()
    if not Toggles.Fly.Value then
        local rV = lP()
        if rV then
            rV.PlatformStand = false
        end
    end
end
local function fn1018(K, L)
    local ol = tonumber(K) or 0
    local om = tonumber(L) or 0
    return ol < om
end
lH = nil
SaveManager = nil
lJ = nil
lK = nil
RebirthConfig = nil
lM = nil
lO = nil
lP = nil
ButtonWorkerConfig = nil
Library = nil
lS = nil
WorkerConfig = nil
lU = nil
lV = nil
lW = nil
ButtonConfig = nil
lY = nil
SlotUpgradeConfig = nil
l_ = nil
l0 = nil
WaterPipeUpgradeConfig = nil
l2 = nil
l3 = nil
l4 = nil
WaterGainConfig = nil
l7 = nil
l8 = nil
WaterTankConfig = nil
ma = nil
PlotController = nil
mc = nil
md = nil
me = nil
Packets = nil
mg = nil
mh = nil
mi = nil
mj = nil
mk = nil
ml = nil
connection2 = nil
mn = nil
CurrentCamera2 = nil
mp = nil
mq = nil
mr = nil
ms = nil
mt = nil
local lN, l6
mu = nil
pipes = nil
mw = nil
mx = nil
my = nil
mz = nil
mA = nil
mB = nil
LocalPlayer = nil
mD = nil
mE = nil
Label = nil
mG = nil
mH = nil
mI = nil
mJ = nil
mK = nil
mL = nil
connection = nil
mN = nil
mO = nil
mQ = nil
mR = nil
mS = nil
mT = nil
mU = nil
mV = nil
mW = nil
mY = nil
mZ = nil
m_ = nil
HttpService = nil
m1 = nil
m2 = nil
m3 = nil
m4 = nil
m5 = nil
m6 = nil
m7 = nil
m8 = nil
na = nil
nb = nil
nc = nil
Options = nil
nf = nil
ng = nil
local CoreGui, GuiService, m9, ne
nh = nil
WaterPipeConfig = nil
Toggles = nil
nk = nil
m7, m4, HttpService, GuiService, CoreGui, mI, LocalPlayer, mt, mp, Packets, PlotController, WaterTankConfig, WaterGainConfig, WaterPipeUpgradeConfig, SlotUpgradeConfig, ButtonConfig, WorkerConfig, ButtonWorkerConfig, RebirthConfig, WaterPipeConfig, m8 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local tn_26 = game:GetService("Players")
local tn_15 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
if (false and not HttpService and (HttpService or WaterPipeUpgradeConfig) and (not PlotController and RunService and (false or HttpService)) or RunService and WaterPipeUpgradeConfig and (not PlotController or PlotController) and (PlotController or PlotController or "https://discord.gg/ehKVq7pf7v")) and (HttpService and not WaterPipeUpgradeConfig and (HttpService and not WaterPipeUpgradeConfig) and (PlotController and WaterPipeUpgradeConfig and (not PlotController or PlotController)) or (PlotController and not WaterPipeUpgradeConfig and (false and not HttpService) or (not RunService or false) and (PlotController and PlotController))) or not ((false and not HttpService and (HttpService or WaterPipeUpgradeConfig) and (not PlotController and RunService and (false or HttpService)) or RunService and WaterPipeUpgradeConfig and (not PlotController or PlotController) and (PlotController or PlotController or "https://discord.gg/ehKVq7pf7v")) and (HttpService and not WaterPipeUpgradeConfig and (HttpService and not WaterPipeUpgradeConfig) and (PlotController and WaterPipeUpgradeConfig and (not PlotController or PlotController)) or (PlotController and not WaterPipeUpgradeConfig and (false and not HttpService) or (not RunService or false) and (PlotController and PlotController)))) then
    m7 = game:GetService("UserInputService")
    m4 = game:GetService("VirtualUser")
else
    m4 = game:GetService("UserInputService")
    m7 = game:GetService("VirtualUser")
end
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
mI = game:GetService("Workspace")
LocalPlayer = tn_26.LocalPlayer
local tn_31 = "Fill Water Tanks"
mt = "https://discord.gg/ehKVq7pf7v"
mp = "https://rscripts.net/@Ouroboros"
local tn_40 = tn_15:WaitForChild("Modules")
local tn_12 = tn_40:WaitForChild("Configs")
Packets = require(tn_40:WaitForChild("Packets"))
PlotController = require(tn_40:WaitForChild("PlotController"))
WaterTankConfig = require(tn_12:WaitForChild("WaterTankConfig"))
WaterGainConfig = require(tn_12:WaitForChild("WaterGainConfig"))
WaterPipeUpgradeConfig = require(tn_12:WaitForChild("WaterPipeUpgradeConfig"))
SlotUpgradeConfig = require(tn_12:WaitForChild("SlotUpgradeConfig"))
ButtonConfig = require(tn_12:WaitForChild("ButtonConfig"))
WorkerConfig = require(tn_12:WaitForChild("WorkerConfig"))
ButtonWorkerConfig = require(tn_12:WaitForChild("ButtonWorkerConfig"))
RebirthConfig = require(tn_12:WaitForChild("RebirthConfig"))
local tn_2 = require(tn_12:WaitForChild("SkillTreeConfig"))
WaterPipeConfig = require(tn_12:WaitForChild("WaterPipeConfig"))
local tn_5 = { "Water Gain", "Roll Luck", "Roll Speed", "Slot" }
m8 = {}
for k in ButtonConfig do
    m8[#m8 + 1] = k
end
mK = nil
tn_26 = 2
repeat
    tn_12 = { "knvsu", "lxoeqnf", "jmtoitjicwo", "tgxckj", "bmu", "osnrhhv", "hpwkjsvobt", "zypdmit" }
    local uf = tn_26
    tn_40 = tn_12[uf % 8 + 1]
    if tn_40:len() >= tn_40:gsub("(.)", "%1%1", uf % 3 % 2 + 1):len() then
        table.sort(mK, fn916)
        m8 = {}
    else
        table.sort(m8, fn916)
        mK = {}
    end
    tn_26 = (tn_26 + 2) % 4
until (tn_26 * 3 + 1) % 4 == 1
for k in WorkerConfig do
    mK[#mK + 1] = tostring(k)
end
mq = nil
tn_26 = 2
repeat
    local t1 = bit32.rrotate(bit32.bxor(bit32.lrotate(tn_26, 18), string.byte(tostring(mq))), 10)
    if bit32.bxor(bit32.lrotate(bit32.bxor(t1, 3704971204), 10), 1434391411) == bit32.lrotate(t1, 10) then
        table.sort(mK, fn1018)
        mq = {}
    else
        table.sort(mq, fn1018)
        mK = {}
    end
    tn_26 = (tn_26 + 0) % 8
until (tn_26 * 5 + 6) % 8 == 0
for k in ButtonWorkerConfig do
    mq[#mq + 1] = tostring(k)
end
mc = nil
tn_26 = 1
repeat
    local t3 = bit32.rrotate(bit32.bxor(bit32.lrotate(tn_26, 27), string.byte(tostring(mc))), 8)
    if bit32.bxor(bit32.lrotate(bit32.bxor(t3, 4195098610), 10), 813681640) ~= bit32.lrotate(t3, 10) then
        table.sort(mc, fns.fn159)
        mq = {}
    else
        table.sort(mq, fns.fn159)
        mc = {}
    end
    tn_26 = (tn_26 + 2) % 4
until (tn_26 * 1 + 0) % 4 == 3
for k, v in tn_2.Nodes do
    tn_26 = v.Id and v.Id ~= "Root"
    if tn_26 then
        mc[#mc + 1] = v
    end
end
Library, SaveManager, Toggles, Options, l0, lV, lS, na, mR, my, mk = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(mc, fn844)
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
tn_40 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
na = fns.fn303
mR = fns.fn711
my = fns.fn68
mk = fns.fn475
tn_2 = "#7fd47f"
tn_15 = "#6ec1ff"
l0 = "#e8a34d"
local tn_28 = "#8b93a3"
lV = 0
lS = 0
tn_26 = (tonumber(LocalPlayer:GetAttribute("WaterTankLevel")))
local oc = if tn_26 then 1 else 0
local oa = 1986 * oc + 2041 * (1 - oc)
local ob = 4088 * oc + 2182 * (1 - oc)
if not ((oa * 3804 + ob * 759 + oa * ob) % 16777213 == 1999091) then
    tn_26 = 1
end
lM, lJ, nk, ng, nb, m6, m1, mZ, mT, mN, mE, mz, pipes, mr, ml, mj, mh, md, ma, l7, l3, lO, m2, mG, l8, lP, nc, mW, ms, l4, lH, mY, mD, mg, l2, m9, mL, mi, tn_20 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if not l7 and mL and (not mZ and mr) and (mr or l7 or mr and not mL) or not (not l7 and mL and (not mZ and mr) and (mr or l7 or mr and not mL)) then
    lM = tn_26
end
lJ = 1
nk = 1
ng = 1
nb = 1
m6 = 0
m1 = 0
if ((mz or tn_20 or (mZ or not tn_20)) and (not mZ or tn_20 or (not tn_20 or tn_20)) or (not mz and mz and (mz or not mZ) or (not ng or mZ) and (not mz or not tn_20))) and ((not tn_20 or tn_20 or (not ng or not tn_20)) and ((tn_20 or not mZ) and (ng and not mz)) or (ng and ng and (not mz and mZ) or (not mZ or not mz) and (not mZ and ng))) or not (((mz or tn_20 or (mZ or not tn_20)) and (not mZ or tn_20 or (not tn_20 or tn_20)) or (not mz and mz and (mz or not mZ) or (not ng or mZ) and (not mz or not tn_20))) and ((not tn_20 or tn_20 or (not ng or not tn_20)) and ((tn_20 or not mZ) and (ng and not mz)) or (ng and ng and (not mz and mZ) or (not mZ or not mz) and (not mZ and ng)))) then
    mZ = {}
    mT = {}
    mN = {}
    mE = { Root = true }
    mz = false
else
    mT = {}
    mE = {}
    mz = {}
    mN = { Root = true }
    mZ = false
end
pipes = nil
mr = 0
ml = false
mj = 0
mh = 0
md = 0
ma = false
l7 = nil
l3 = function(aS, aT)
    if not aS then
        return
    end
    pcall(function()
        if aT == nil then
            aS.send()
        else
            aS.send(aT)
        end
    end)
end
lO = fns.fn163
m2 = fns.fn212
mG = fns.fn336
l8 = fn910
lP = fn949
nc = fn856
mW = fns.fn276
ms = fn726
l4 = fns.fn259
lH = fns.fn229
mY = fns.fn140
mD = fns.fn268
mg = fns.fn221
l2 = fn1003
m9 = fns.fn77
mL = fns.fn683
mi = fns.fn662
Packets.UpdateWater.listen(fns.fn453)
Packets.SyncWaterGain.listen(fns.fn646)
Packets.SyncRollUpgrades.listen(fns.fn712)
Packets.SyncSlot.listen(fns.fn574)
Packets.SyncButtons.listen(fns.fn33)
Packets.SyncWorkers.listen(fn985)
Packets.SyncButtonWorkers.listen(fns.fn571)
Packets.SyncRebirth.listen(fn967)
Packets.SyncSkillTree.listen(fns.fn715)
Packets.WaterPipeRollStarted.listen(fns.fn279)
Packets.WaterPipePickedUp.listen(fn725)
l3(Packets.RequestSyncWaterGain)
l3(Packets.RequestSyncRollUpgrades)
l3(Packets.RequestSyncSlot)
l3(Packets.RequestSyncButtons)
l3(Packets.RequestSyncWorkers)
l3(Packets.RequestSyncButtonWorkers)
l3(Packets.RequestSyncRebirth)
l3(Packets.RequestSyncSkillTree)
l3(Packets.RequestSyncWaterTank)
tn_12 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = mt, Copyable = true }, "|", tn_31 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
local tn_7 = {
    Info = tn_12:AddTab("Info", "info"),
    Main = tn_12:AddTab("Main", "droplets"),
    Player = tn_12:AddTab("Player", "person-standing"),
    Settings = tn_12:AddTab("Settings", "settings")
}
if (l8 and not lO or not l8 and mG or (not mZ or mG) and (l2 and mZ)) and (not mG or mG or (not l8 or not l2) or (mG and not l2 or (not lO or not l2))) and not ((l8 and not lO or not l8 and mG or (not mZ or mG) and (l2 and mZ)) and (not mG or mG or (not l8 or not l2) or (mG and not l2 or (not lO or not l2)))) then
    ng = fn899
else
    tn_20 = fn899
end
for k, v in tn_7 do
    tn_20(v)
end
nh, tn_12, tn_35, Label, mA, tn_33 = nil, nil, nil, nil, nil, nil
tn_26 = 10
repeat
    tn_20 = (tn_26 * 2 + 0) % 3 + 1
    if tn_20 <= 2 then
        if tn_20 <= 1 then
            tn_20 = {
                "mnmyakjai",
                "lndprktqprrm",
                "cusggdffh",
                "okuasnim",
                "yjiu",
                "qewk",
                "owkweojmyxvs",
                "oiitqipj",
                "tsccbytae",
                "tdpt",
                "oznxqdcogkne",
                "oum"
            }
            if tn_20[(tn_26 * 85 + 70) % 12 + 1] <= tn_20[(tn_26 * 85 + 70) % 12 + 1] then
                mA = tostring(game.JobId)
            else
                tn_35 = tostring(game.JobId)
            end
            tn_26 = (tn_26 + 11) % 12
        else
            tn_20 = {
                "nmbr",
                "exkz",
                "ftsgihpqvhg",
                "ccfgm",
                "kiufuszar",
                "bjwxvsyylzg",
                "kodbmvinhsla",
                "jremybjtmf",
                "rte",
                "dth",
                "pcrdwlhhmi",
                "oceidw",
                "uwuiyupwp",
                "vlfcwhgvgrw",
                "vnrkvrvmlb"
            }
            if tn_20[(tn_26 * 50 + 61) % 15 + 1] < tn_20[(tn_26 * 50 + 61) % 15 + 1] then
                mA = #tn_33 > 18
            else
                tn_33 = #mA > 18
            end
            tn_26 = (tn_26 + 8) % 12
        end
    else
        tn_20 = (vector.create((tn_26 * 5 + 8) % 11 + 1, (tn_26 * 11 + 4) % 13 + 1, (tn_26 * 14 + 14) % 17 + 1))
        tn_22 = (vector.create((tn_26 * 6 + 1) % 11 + 1, (tn_26 * 9 + 12) % 13 + 1, (tn_26 * 15 + 14) % 17 + 1))
        tn_8 = (vector.create((tn_26 * 3 + 3) % 11 + 1, (tn_26 * 1 + 6) % 13 + 1, (tn_26 * 8 + 12) % 17 + 1))
        tn_37 = (vector.create((tn_26 * 5 + 3) % 5 + 1, (tn_26 * 2 + 2) % 7 + 1, (tn_26 * 3 + 7) % 9 + 1))
        if vector.dot(vector.cross(tn_20, (vector.cross(tn_22, tn_8))), tn_37) == vector.dot(tn_22 * vector.dot(tn_20, tn_8) - tn_8 * vector.dot(tn_20, tn_22), tn_37) + 4 then
            l0 = "Unknown"
            pcall(fn965)
            nh = Label.Info:AddLeftGroupbox("Account", "circle-user")
            nh:AddLabel(tn_12("User", mk.Name, LocalPlayer), true)
            nh:AddLabel(tn_12("Status", "Keyless", LocalPlayer), true)
            nh:AddLabel(tn_12("Executor", l0, LocalPlayer), true)
            tn_31 = Label.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            tn_31:AddLabel(tn_2(tn_15 .. " [" .. tostring(game.PlaceId) .. "]", tn_7), true)
            tn_31:AddLabel(tn_12("Place ID", tostring(game.PlaceId), tn_7), true)
            my = tn_31:AddLabel(tn_12("Session time", "0s", tn_35), true)
        else
            nh = "Unknown"
            pcall(fn965)
            tn_12 = tn_7.Info:AddLeftGroupbox("Account", "circle-user")
            tn_12:AddLabel(mk("User", LocalPlayer.Name, tn_2), true)
            tn_12:AddLabel(mk("Status", "Keyless", tn_2), true)
            tn_12:AddLabel(mk("Executor", nh, tn_2), true)
            tn_35 = tn_7.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            tn_35:AddLabel(my(tn_31 .. " [" .. tostring(game.PlaceId) .. "]", tn_15), true)
            tn_35:AddLabel(mk("Place ID", tostring(game.PlaceId), tn_15), true)
            Label = tn_35:AddLabel(mk("Session time", "0s", l0), true)
        end
        tn_26 = (tn_26 + 5) % 12
    end
until (tn_26 * 5 + 5) % 12 == 7
if tn_33 then
    tn_26 = 6
    repeat
        tn_12 = {
            "hgaq",
            "nwbzshga",
            "ocq",
            "ndbfbhb",
            "qsc",
            "ojilwdbuw",
            "eqedzuvxki",
            "qanaakcrb",
            "qxhsvafwrar",
            "wvb",
            "cvd"
        }
        local tO = tn_26
        tn_20 = tn_12[tO % 11 + 1]
        if tn_20:len() <= tn_20:reverse():rep(tO % 3 + 2):len() then
            tn_33 = string.sub(mA, 1, 18) .. "..."
        else
            mA = string.sub(tn_33, 1, 18) .. "..."
        end
        tn_26 = (tn_26 + 3) % 8
    until (tn_26 * 5 + 1) % 8 == 6
end
tn_26 = tn_33 or mA
me, m3, m_, mV, mO, mH, mB, mx, CurrentCamera2, lY, lU, connection, connection2, mn, lW, mJ, l_, mQ, l6, ne, mS, mu, m5, nf, lN, mU, mw, lK = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local tn_1 = tn_26
tn_35:AddLabel(mk("Server", tn_1, tn_28), true)
tn_35:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
me = os.clock()
task.spawn(fns.worker)
tn_33 = tn_7.Info:AddRightGroupbox("Scripts", "package")
tn_33:AddLabel(my("Included in this hub", tn_28), true)
tn_33:AddLabel(my(tn_31, tn_15), true)
tn_12 = tn_7.Info:AddRightGroupbox("Features", "list")
tn_12:AddLabel(my("Automation", tn_15), true)
tn_12:AddLabel(my("Shop", l0), true)
tn_12:AddLabel(my("Player", tn_28), true)
local SocialsGroup = tn_7.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = mR })
SocialsGroup:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
local OuroborosHubGroup = tn_7.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = mR })
m3 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
m_ = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
mV = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
mO = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
mH = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
mB = "https://paypal.me/TheTruckerGOD"
mx = "https://venmo.com/u/miserablemusic"
tn_30, tn_14, tn_39, tn_11, tn_25, tn_38, tn_10 = "#345d9d", "#f7931a", "#627eea", "#26a17b", "#14f195", "#0070ba", "#008cff"
local DonationsGroup = tn_7.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(my("All donations are optional but appreciated.", l0), true)
DonationsGroup:AddLabel(my("If you donate you get a special role, just PING after you donate.", tn_2), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(my("LTC / Litecoin", tn_30), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = fns.onCopyLitecoinAddress })
DonationsGroup:AddLabel(my("BTC / Bitcoin", tn_14), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(my("ETH / Ethereum", tn_39), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = fns.onCopyEthereumAddress })
DonationsGroup:AddLabel(my("USDT", tn_11), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(my("Solana", tn_25), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(my("PayPal", tn_38), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(my("Venmo", tn_10), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(my("Don't have any of the listed currencies but still wanna donate?", tn_28), true)
DonationsGroup:AddLabel(my("DM me and we'll work something out.", tn_15), true)
local FaqGroup = tn_7.Info:AddRightGroupbox("FAQ", "circle-help")
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
local FarmGroup = tn_7.Main:AddLeftGroupbox("Farm", "droplets")
FarmGroup:AddToggle("AutoFillTank", { Text = "Auto Fill Tank", Default = false })
FarmGroup:AddToggle("AutoSellTank", { Text = "Auto Step Off Tank to Sell", Default = false })
FarmGroup:AddSlider("LeaveAtPercent", { Text = "Leave At", Default = 100, Min = 1, Max = 100, Rounding = 0, Suffix = "%" })
FarmGroup:AddToggle("AutoUpgradeWaterTank", { Text = "Auto Upgrade Water Tank", Default = false })
FarmGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local PipeGroup = tn_7.Main:AddLeftGroupbox("Pipe", "dices")
PipeGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
PipeGroup:AddToggle("AutoPickupPipe", { Text = "Auto Pick Up Pipe", Default = false })
local ShopGroup = tn_7.Main:AddRightGroupbox("Shop", "shopping-cart")
ShopGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
ShopGroup:AddDropdown("BuyUpgradeList", { Text = "Upgrades", Values = tn_5, Default = tn_5, Multi = true, SelectAllButtons = true })
ShopGroup:AddToggle("AutoBuyButtons", { Text = "Auto Buy Buttons", Default = false })
ShopGroup:AddToggle("AutoBuyWorkers", { Text = "Auto Buy Workers", Default = false })
ShopGroup:AddToggle("AutoBuyButtonWorkers", { Text = "Auto Buy Button Workers", Default = false })
ShopGroup:AddToggle("AutoBuyTreeNodes", { Text = "Auto Buy Tree Node Upgrades", Default = false })
mn = fns.fn46
lW = fn723
mJ = fns.fn76
l_ = fns.fn294
mQ = fns.fn537
l6 = fn1001
ne = fns.fn246
mS = function()
    local eW
    eW = false
    l6(function()
        eW = true
    end)
    return eW
end
mu = function()
    local ra, rb, rc, slot2
    rb = nil
    slot2 = nil
    rc = -1
    ra = nil
    l6(function(e4)
        local qW = ne(e4)
        local qX = qW and m9(qW)
        local qY = qX or 0
        if qY > rc then
            rc = qY
            ra = e4
            slot2 = nil
            local Parent = e4.Parent
            local qY_1 = Parent
            if qY_1 then
                local qZ = Parent:IsA("BasePart") and Parent
                local q_ = qZ or Parent:FindFirstChildWhichIsA("BasePart", true)
                qY_1 = q_
            end
            rb = qY_1
            if pipes then
                for k, v in pipes do
                    if v.pipeType == qW then
                        slot2 = v.slot
                        break
                    end
                end
            end
        end
    end)
    if not ra then
        if not pipes then
            return
        end
        local re = -1
        local slot
        for k, v in pipes do
            local rg = m9(v.pipeType)
            if rg > re then
                re = rg
                slot = v.slot
            end
        end
        if slot then
            l3(Packets.RequestPickupWaterPipe, { slot = slot })
        end
        return
    end
    if rb then
        mW(rb)
        mr = os.clock() + 0.6
    end
    if slot2 then
        l3(Packets.RequestPickupWaterPipe, { slot = slot2 })
    end
    if fireproximityprompt then
        pcall(fireproximityprompt, ra)
    end
end
if ((not OuroborosHubGroup or not mU) and (ShopGroup and not lW) and (not ShopGroup and OuroborosHubGroup and (lW and OuroborosHubGroup)) or (false or not ShopGroup or (lW or OuroborosHubGroup) or (not lW and m_ or not lW and false))) and (((not ShopGroup or lW) and (lW and mU) or (m_ or ShopGroup) and (lW or not OuroborosHubGroup)) and (false or not mU or (mU or not OuroborosHubGroup) or (lW or not OuroborosHubGroup or mU and lW))) and not (((not OuroborosHubGroup or not mU) and (ShopGroup and not lW) and (not ShopGroup and OuroborosHubGroup and (lW and OuroborosHubGroup)) or (false or not ShopGroup or (lW or OuroborosHubGroup) or (not lW and m_ or not lW and false))) and (((not ShopGroup or lW) and (lW and mU) or (m_ or ShopGroup) and (lW or not OuroborosHubGroup)) and (false or not mU or (mU or not OuroborosHubGroup) or (lW or not OuroborosHubGroup or mU and lW)))) then
    task.spawn(autoUpgradeWaterTankLoop)
    tn_20 = CurrentCamera2.Player:AddLeftGroupbox("Movement", "footprints")
    tn_20:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    tn_20:AddSlider("WalkSpeed", { Min = 16, Text = "WalkSpeed Amount", Rounding = 0, Max = 250, Default = 32 })
    tn_20:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    tn_20:AddToggle("NoClip", { Text = "NoClip", Default = false })
    tn_20:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    tn_8 = CurrentCamera2.Player:AddRightGroupbox("Fly", "feather")
    tn_8:AddToggle("Fly", { Text = "Fly", Default = false })
    tn_8:AddSlider("FlySpeed", { Default = 60, Min = 10, Rounding = 0, Text = "Fly Speed", Max = 400 })
    m7.Stepped:Connect(onStepped)
    RunService.JumpRequest:Connect(onJumpRequest)
    mI = tn_7.CurrentCamera
else
    task.spawn(autoUpgradeWaterTankLoop)
    tn_8 = tn_7.Player:AddLeftGroupbox("Movement", "footprints")
    tn_8:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    tn_8:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    tn_8:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    tn_8:AddToggle("NoClip", { Text = "NoClip", Default = false })
    tn_8:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    tn_20 = tn_7.Player:AddRightGroupbox("Fly", "feather")
    tn_20:AddToggle("Fly", { Text = "Fly", Default = false })
    tn_20:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    RunService.Stepped:Connect(onStepped)
    m7.JumpRequest:Connect(onJumpRequest)
    CurrentCamera2 = mI.CurrentCamera
end
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn1008)
Toggles.WalkSpeedEnabled:OnChanged(fn843)
m5 = function(gz)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not gz)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not gz
        end
    end)
    if not gz then
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
Toggles.AntiGameplayPause:OnChanged(fns.fn696)
task.spawn(antiGameplayPauseLoop)
tn_37 = tn_7.Settings:AddLeftGroupbox("Menu")
tn_37:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
lY = tick()
lU = tick()
pcall(function()
    for k, v in getconnections(LocalPlayer.Idled) do
        local sc = v
        pcall(function()
            sc:Disable()
        end)
    end
end)
nf = fn776
connection = m7.InputBegan:Connect(onInputBegan)
connection2 = m7.InputChanged:Connect(fns.onInputChanged)
tn_37:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(fns.antiAfkLoop)
tn_40:SetLibrary(Library)
tn_40:SetFolder("OuroborosHub")
tn_40:SaveDefault("Evil Hello Kitty")
tn_40:ApplyToTab(tn_7.Settings)
tn_40:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/FillWaterTanks")
tn_22 = SaveManager:BuildConfigSection(tn_7.Settings)
SaveManager:LoadAutoloadConfig()
lN = fns.fn114
mU = fn741
mw = fns.fn90
lK = function(hH)
    local sU
    sU = nil
    local sV = type(hH) ~= "table" or type(hH.idx) ~= "string" or type(hH.type) ~= "string" or SaveManager.Ignore[hH.idx]
    if sV then
        return false
    end
    sU = lN(hH.type, hH.idx)
    if not sU then
        return false
    end
    local sV_1 = pcall(function()
        if hH.type == "Input" then
            if type(hH.text) ~= "string" then
                return
            end
            sU:SetValue(hH.text)
        elseif hH.type == "ColorPicker" then
            sU:SetValueRGB(Color3.fromHex(hH.value), hH.transparency)
        elseif hH.type == "KeyPicker" then
            sU:SetValue({ hH.key, hH.mode, hH.modifiers })
            if hH.mode == "Toggle" and hH.toggled ~= nil then
                sU.Toggled = hH.toggled
                sU:Update()
            end
        else
            sU:SetValue(hH.value)
        end
    end)
    return sV_1
end
tn_22:AddDivider()
tn_22:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
tn_22:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
tn_22:AddButton("Import Config from Clipboard Text", fns.onImportConfigFromClipboardTex)
Library:OnUnload(fns.fn361)
