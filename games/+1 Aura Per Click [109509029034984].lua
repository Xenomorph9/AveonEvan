local fns = {}
local tL_3, tL_12, tL_18
local Rebirths
local m3
local mL
local ns
local StageDefinitions
local m9
local my
local mX
local mE
local nl
local ml
local m2
local mK
local UserInputService
local mr
local m8
local mQ
local nx
local mx
local ne
local mW
local HttpService
local mk
local LocalPlayer
local mJ
local nq
local Toggles
local Label
local AuraRunnerTrainClick
local nw
local nd
local mV
local mC
local nj
local mj
local m0
local AuraRunnerRebirth
local np
local m6
local mO
local nv
local connection2
local mU
local mB
local mi
local m_
local mH
local mo
local m5
local connection
local ClickUpgrades
local mu
local nb
local mT
local nh
local mh
local mZ
local mG
local VirtualUser
local Options
local Workspace
local nt
local SaveManager
local mz
local ng
local mY
local mF
local nm
function fns.fn51(cU)
    local Map = Workspace:FindFirstChild("Map")
    local p6 = Map and Map:FindFirstChild("Lobby")
    local p5_1 = p6
    if p6 then
        p6 = p5_1:FindFirstChild("Utility")
    end
    local p5_2 = p6
    if p6 then
        p6 = p5_2:FindFirstChild("Treadmills")
    end
    local p5_3 = p6
    if not p5_3 then
        return nil
    end
    for i, descendant in ipairs(p5_3:GetDescendants()) do
        local p6_1 = descendant:IsA("Model") and descendant.Name == cU
        if p6_1 then
            return descendant
        end
    end
    return p5_3:FindFirstChild(cU)
end
function fns.fn149(at, au)
    if at.Multiplier == au.Multiplier then
        return at.RequiredRebirthPoints < au.RequiredRebirthPoints
    end
    return at.Multiplier < au.Multiplier
end
function fns.worker6()
    while not mB.Unloaded do
        if m9("AutoWheelSpin") then
            pcall(nb)
            task.wait(mL("WheelDelay", 1))
        else
            task.wait(0.4)
        end
    end
end
function fns.fn170(gI, gJ)
    local Type = gJ.Type
    if Type == "Toggle" then
        return { idx = gI, type = "Toggle", value = gJ.Value == true }
    elseif Type == "Slider" then
        return { idx = gI, type = "Slider", value = tostring(gJ.Value) }
    elseif Type == "Dropdown" then
        return { idx = gI, type = "Dropdown", multi = gJ.Multi == true, value = gJ.Value }
    elseif Type == "Input" then
        local sn = gJ.Value or ""
        return { idx = gI, type = "Input", text = tostring(sn) }
    elseif Type == "ColorPicker" then
        return { idx = gI, type = "ColorPicker", value = gJ.Value:ToHex(), transparency = gJ.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = gI,
            type = "KeyPicker",
            mode = gJ.Mode,
            key = gJ.Value,
            modifiers = gJ.Modifiers,
            toggled = gJ.Toggled
        }
    else
        return nil
    end
end
function fns.onCopySolanaAddress()
    mi(mr, "Copied Solana address")
end
function fns.onInputChanged(hD)
    local UserInputType = hD.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        nm = tick()
    end
end
local function worker()
    local rI_1
    while true do
        task.wait(1)
        if mB.Unloaded then
            break
        end
        local rH = math.floor(os.clock() - mQ)
        if rH < 60 then
            rI_1 = rH .. "s"
        elseif rH < 3600 then
            rI_1 = string.format("%dm %ds", rH // 60, rH % 60)
        else
            rI_1 = string.format("%dh %dm", rH // 3600, rH % 3600 // 60)
        end
        Label:SetText(m0("Session time", rI_1, mO))
    end
end
local function fn220()
    local qz = mV()
    local qA = qz and qz.wins
    local qz_1 = tonumber(qA) or 0
    local qz_2 = Rebirths.getWinsUntilReady(qz_1)
    if qz_2 ~= nil and qz_2 > 0 then
        return false
    end
    local qz_3 = Rebirths.winsPerPoint
    local qI = if qz_3 then 1 else 0
    local qG = 383 * qI + 713 * (1 - qI)
    local qH = 1361 * qI + 1371 * (1 - qI)
    if not ((qG * 1231 + qH * 981 + qG * qH) % 16777213 == 2327877) then
        qz_3 = 1000
    end
    if qz_1 < qz_3 then
        return false
    end
    local qz_4 = pcall(function()
        AuraRunnerRebirth:InvokeServer({})
    end)
    return qz_4
end
local function antiGameplayPauseLoop()
    while not mB.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            mk(true)
        end
    end
end
local function fn254(a8)
    local oH = Toggles[a8]
    return oH ~= nil and oH.Value == true
end
local function worker2()
    while not mB.Unloaded do
        if m9("AutoWins") then
            local to = mJ()
            pcall(nd, to)
            task.wait(mL("WinDelay", 0.45))
        else
            task.wait(0.25)
        end
    end
end
local function fn275()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    nj = tick()
end
local function fn282()
    local rg = mV()
    local rh = rg and rg.wins
    local ri = tonumber(rh) or 0
    local rh_1 = rg
    if rh_1 then
        rh_1 = rg.clickUpgradeTier
    end
    local rg_1 = tonumber(rh_1) or 0
    local rh_2 = nil
    local rk = ClickUpgrades.Definitions or {}
    for k, v in pairs(rk) do
        if type(v) == "table" then
            local rg_3 = tonumber(v.tier) or 0
            local rg_4 = tonumber(v.winCost) or 0
            if rg_3 > rg_1 and rg_4 <= ri then
                local rg_6 = not rh_2
                if not rg_6 then
                    local rl_1 = tonumber(rh_2.tier) or 0
                    rg_6 = rg_3 > rl_1
                end
                if rg_6 then
                    rh_2 = v
                end
            end
        end
    end
    return rh_2
end
local function fn380()
    local rD_1
    local rC_1
    if identifyexecutor then
        rD_1, rC_1 = identifyexecutor()
        local rE = rD_1 ~= ""
        local rF = type(rD_1) == "string" and rE
        if rF then
            local rE_1 = type(rC_1) == "string" and rC_1 ~= "" and rD_1 .. " " .. rC_1
            nx = rE_1 or rD_1
        end
    end
end
local function fn382()
    if not Toggles.WalkSpeedEnabled.Value then
        local rW = ml()
        if rW then
            rW.WalkSpeed = 16
        end
    end
end
local function fn385()
    local qr = m3()
    if not qr then
        return false
    end
    local qs = mx(qr.ModelName)
    if not qs then
        return false
    end
    local qr_1 = qs.PrimaryPart
    local qy = if qr_1 then 1 else 0
    local qw = 935 * qy + 3094 * (1 - qy)
    local qx = 3809 * qy + 2537 * (1 - qy)
    if not ((qw * 2074 + qx * 2294 + qw * qx) % 16777213 == 14238451) then
        qr_1 = qs:FindFirstChildWhichIsA("BasePart", true)
    end
    local qs_1 = qr_1
    local qr_2 = nq()
    if not qs_1 or not qr_2 then
        return false
    elseif (qr_2.Position - qs_1.Position).Magnitude <= 6 then
        return true
    else
        qr_2.CFrame = qs_1.CFrame + Vector3.new(0, 3, 0)
        return true
    end
end
local function fn397(bd)
    local oK = Options[bd]
    local oK_1 = oK and oK.Value
    local oP = if oK_1 then 1 else 0
    local oN = 742 * oP + 1257 * (1 - oP)
    local oO = 1837 * oP + 3023 * (1 - oP)
    if not ((oN * 872 + oO * 2844 + oN * oO) % 16777213 == 7234506) then
        oK_1 = nil
    end
    return oK_1
end
local function fn405(ak, al)
    return ak.WinCost < al.WinCost
end
local function fn409()
    local Character = LocalPlayer.Character
    local oU = Character and Character:FindFirstChildOfClass("Humanoid")
    return oU
end
local function onUnload()
    mB:Unload()
end
local function fn471(cj)
    local pG = mz(cj)
    if pG then
        mT[cj] = pG.Position
        return pG
    end
    local pH = nl(cj)
    local pP = 1
    while true do
        if not (pP <= 12) then
            return nil
        end
        local pR = pP
        local pI = Vector3.new(-(pR - 1) * 25, 0, 0)
        local pL = pR % 2 == 0 and 30 or -30
        local pK_1 = Vector3.new(0, 0, pL)
        nv(pH + pI)
        nv(pH + pI + pK_1)
        task.wait(0.08)
        pG = mz(cj)
        if pG then
            break
        end
        pP += 1
    end
    mT[cj] = pG.Position
    return pG
end
local function worker3()
    while not mB.Unloaded do
        if m9("AutoClick") then
            mK()
            task.wait(mL("ClickDelay", 0.1))
        else
            task.wait(0.2)
        end
    end
end
local function fn506(bU)
    local pl = mT[bU]
    if pl then
        return pl
    end
    local pl_1 = nil
    local pv = bU - 1
    local pu = -1
    while false and pv <= 1 or true and pv >= 1 do
        local pw = pv
        if mT[pw] then
            pl_1 = mT[pw]
            break
        end
        pv += pu
    end
    local pn = nh == 2 and -130
    local pA = if pn then 1 else 0
    local py = 1593 * pA + 2332 * (1 - pA)
    local pz = 1894 * pA + 328 * (1 - pA)
    if not ((py * 2325 + pz * 1019 + py * pz) % 16777213 == 8650853) then
        pn = -115
    end
    local pm_2 = pn
    local pn_2 = nh == 2 and -978 or 22
    local pp = nh == 2 and -1020 or -20
    if pl_1 then
        local pp_1 = 1
        local pD = bU - 1
        local pC = -1
        while false and pD <= 1 or true and pD >= 1 do
            if mT[pD] then
                break
            end
            pp_1 += 1
            pD += pC
        end
        local pq_2 = bU % 2 == 0 and pn_2 or pp
        return Vector3.new(pl_1.X + pm_2 * pp_1, pl_1.Y, pq_2)
    end
    local pn_3 = bU % 2 == 0 and pn_2 or pp
    local new = Vector3.new
    local pp_2 = nh == 2 and -80 or -50
    return new(pp_2 + bU * pm_2, 30, pn_3)
end
local function fn522(gA, gB)
    local sg = gA == "Toggle" and Toggles
    local sl = if sg then 1 else 0
    local sj = 151 * sl + 1475 * (1 - sl)
    local sk = 955 * sl + 3699 * (1 - sl)
    if not ((sj * 3971 + sk * 2260 + sj * sk) % 16777213 == 2902126) then
        sg = Options
    end
    local sg_1 = sg[gB]
    local sf_2 = type(sg_1) == "table" and sg_1.Type == gA
    return sf_2 and sg_1 or nil
end
local function onCopyJoinScript_JobID()
    local fa = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, m2)
    mi(fa, "Copied join script to clipboard")
end
local function fn527()
    local o__1
    local oZ_1
    oZ_1, o__1 = pcall(function()
        return ns:Get("PlayerController")
    end)
    if oZ_1 then
        return o__1
    end
    return nil
end
local function onInputBegan()
    nm = tick()
end
local function worker8()
    while not mB.Unloaded do
        task.wait(2)
        if m9("AntiAfk") then
            local tD = tick() - nm
            local tE = tick() - nj
            if tD >= 300 and tE >= 60 then
                pcall(m_)
            else
                if tD < 300 and tE >= 300 then
                    pcall(m_)
                end
            end
        end
    end
end
local function fn568()
    if not Toggles.Fly.Value then
        local rR = ml()
        if rR then
            rR.PlatformStand = false
        end
    end
end
local function fn579(bK)
    local Map = Workspace:FindFirstChild("Map")
    if not Map then
        return nil
    end
    local pd = Map:FindFirstChild(string.format("Stage_%02d", bK))
    local pc_1 = pd and pd:FindFirstChild("Win")
    if not pc_1 then
        return nil
    end
    for i, descendant in ipairs(pc_1:GetDescendants()) do
        local pc_2 = descendant:IsA("BasePart") and descendant:FindFirstChildOfClass("TouchTransmitter")
        if pc_2 then
            return descendant
        end
    end
    return nil
end
local function fn580()
    local pS = mU("WinStage")
    local pT = mE[pS]
    if pT and pT > 0 then
        return pT
    end
    local pS_2 = -1
    local pT_1 = 1
    local pZ = 1
    local pX = m6
    while pZ <= pX do
        local p0 = pZ
        local pU = StageDefinitions[p0]
        local pV = pU and tonumber(pU.winReward)
        local pU_1 = pV or 0
        if pU_1 > pS_2 then
            pS_2 = pU_1
            pT_1 = p0
        end
        pZ += 1
    end
    return pT_1
end
local function onStepped()
    if mB.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local rY_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if rY_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function onRscripts()
    mi(mW, "Copied Rscripts profile to clipboard")
end
local function onImportConfigFromClipboardTex()
    local sW_1
    local sU = Options.SaveManager_ImportSource.Value or ""
    local sU_1
    local sV = tostring(sU):match("^%s*(.-)%s*$")
    if sV == "" then
        mB:Notify("Paste an exported config into the box first")
        return
    end
    sU_1, sW_1 = pcall(HttpService.JSONDecode, HttpService, sV)
    local sV_1 = not sU_1
    local s_ = if sV_1 then 1 else 0
    local sY = 978 * s_ + 2930 * (1 - s_)
    local sZ = 3946 * s_ + 1315 * (1 - s_)
    if not ((sY * 4091 + sZ * 3338 + sY * sZ) % 16777213 == 4254721) then
        sV_1 = type(sW_1) ~= "table"
    end
    local s2 = if sV_1 then 1 else 0
    local s0 = 3488 * s2 + 609 * (1 - s2)
    local s1 = 2222 * s2 + 3979 * (1 - s2)
    if not ((s0 * 2699 + s1 * 3653 + s0 * s1) % 16777213 == 8504201) then
        sV_1 = type(sW_1.objects) ~= "table"
    end
    if sV_1 then
        mB:Notify("That is not a valid exported config")
        return
    end
    local sU_2 = 0
    for i, v in ipairs(sW_1.objects) do
        if nw(v) then
            sU_2 += 1
        end
    end
    if sU_2 == 0 then
        mB:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local sW_2 = sU_2 == 1 and "" or "s"
    mB:Notify(("Imported %d setting%s"):format(sU_2, sW_2), 6)
end
local function fn647()
    pcall(function()
        AuraRunnerTrainClick:FireServer({})
    end)
end
local function fn655()
    connection:Disconnect()
    connection2:Disconnect()
    mk(false)
    local tH = ml()
    if tH then
        tH.PlatformStand = false
        tH.WalkSpeed = 16
    end
end
local function onCopyLitecoinAddress()
    mi(mF, "Copied Litecoin address")
end
local function fn690(aC, aD)
    if setclipboard then
        setclipboard(aC)
    elseif toclipboard then
        toclipboard(aC)
    end
    mB:Notify(aD)
end
local function fn719(dB)
    for i, v in ipairs(mh) do
        if v.DisplayName == dB then
            return v
        end
    end
    return mh[1]
end
local function fn742()
    local sq = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local sr = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if sr then
                local sr_1 = m5(k, v)
                if sr_1 then
                    sq[#sq + 1] = sr_1
                end
            end
        end
    end
    table.sort(sq, function(gW, gX)
        if gW.type ~= gX.type then
            return gW.type < gX.type
        end
        return gW.idx < gX.idx
    end)
    return { objects = sq }
end
local function fn753()
    local Character = LocalPlayer.Character
    local oX = Character and Character:FindFirstChild("HumanoidRootPart")
    return oX
end
local function worker7()
    while not mB.Unloaded do
        if m9("AutoOpenEggs") then
            pcall(mH)
            task.wait(mL("EggDelay", 0.5))
        else
            task.wait(0.35)
        end
    end
end
local function fn773(aJ, aK)
    return string.format('<font color="%s">%s</font>', aK, aJ)
end
local function fn774(aM, aN, aO)
    return string.format("<b>%s</b> %s %s", aM, ne("-", "#5a6070"), ne(aN, aO))
end
local function fn788()
    local qe = mV()
    local qf = qe and qe.rebirthPoints
    local qe_1 = (tonumber(qf))
    local qk = if qe_1 then 1 else 0
    local qi = 950 * qk + 801 * (1 - qk)
    local qj = 1519 * qk + 411 * (1 - qk)
    if not ((qi * 158 + qj * 667 + qi * qj) % 16777213 == 2606323) then
        qe_1 = 0
    end
    local qf_1 = nil
    local qg = qe_1
    for i, v in ipairs(mY) do
        if qg >= v.RequiredRebirthPoints then
            if not qf_1 or v.Multiplier > qf_1.Multiplier then
                qf_1 = v
            end
        end
    end
    return qf_1
end
local function fn810(bi, bj)
    local oQ = Options[bi]
    local oR = oQ and tonumber(oQ.Value)
    if oR then
        return oR
    end
    return bj
end
local function fn845()
    mi(mZ, "Copied Discord invite to clipboard")
end
local function worker5()
    while not mB.Unloaded do
        if m9("AutoRebirth") then
            pcall(nt)
            task.wait(mL("RebirthDelay", 1))
        else
            task.wait(0.4)
        end
    end
end
local function onJumpRequest()
    if mB.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local r5_1 = ml()
        if r5_1 then
            r5_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn930(eU)
    local DiscordGroup = eU:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = np })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = np })
end
local function onRenderStepped(gh)
    if mB.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local r7_1 = ml()
        if r7_1 then
            r7_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local r7_3 = nq()
        local r8 = ml()
        ng = Workspace.CurrentCamera or ng
        if r7_3 and r8 and ng then
            r8.PlatformStand = true
            local r8_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                r8_1 = r8_1 + ng.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                r8_1 = r8_1 - ng.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                r8_1 = r8_1 - ng.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                r8_1 = r8_1 + ng.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                r8_1 = r8_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                r8_1 = r8_1 - Vector3.new(0, 1, 0)
            end
            r7_3.Velocity = Vector3.zero
            if r8_1.Magnitude > 0 then
                r7_3.CFrame = r7_3.CFrame + r8_1.Unit * Options.FlySpeed.Value * gh
            end
        end
    end
end
local function fn944(d9)
    local Map = Workspace:FindFirstChild("Map")
    local q1 = Map and Map:FindFirstChild("Lobby")
    local q0_1 = q1
    if q1 then
        q1 = q0_1:FindFirstChild("Utility")
    end
    local q0_2 = q1
    if q1 then
        q1 = q0_2:FindFirstChild("Upgrades")
    end
    local q0_3 = q1
    if not q0_3 then
        return nil
    end
    local q1_1 = q0_3:FindFirstChild(tostring(d9))
    if not q1_1 then
        return nil
    end
    local touch = q1_1:FindFirstChild("touch")
    local q2 = touch and touch:IsA("BasePart") and touch:FindFirstChildOfClass("TouchTransmitter")
    if q2 then
        return touch
    end
    for i, descendant in ipairs(q1_1:GetDescendants()) do
        local q0_5 = descendant:IsA("BasePart") and descendant:FindFirstChildOfClass("TouchTransmitter")
        if q0_5 then
            return descendant
        end
    end
    return nil
end
local function onExportConfigToClipboard()
    local sR_1
    local sQ_1
    sQ_1, sR_1 = pcall(HttpService.JSONEncode, HttpService, mX())
    if not sQ_1 then
        mB:Notify("Failed to encode the config")
        return
    end
    local sQ_2 = setclipboard or toclipboard
    local sQ_3 = type(sQ_2) ~= "function" or not pcall(sQ_2, sR_1)
    if sQ_3 then
        mB:Notify("Your executor does not support copying to the clipboard")
        return
    end
    mB:Notify("Config copied to clipboard", 6)
end
local function onCopyPayPalLink()
    mi(mo, "Copied PayPal link")
end
local function onCopyUSDTAddress()
    mi(mu, "Copied USDT address")
end
local function fn1033()
    mk(Toggles.AntiGameplayPause.Value)
end
local function onCopyEthereumAddress()
    mi(my, "Copied Ethereum address")
end
local function worker4()
    while not mB.Unloaded do
        if m9("AutoTrain") then
            if os.clock() - m8 >= 2 then
                if pcall(mG) then
                    m8 = os.clock()
                end
            end
            mK()
            task.wait(mL("TrainDelay", 0.1))
        else
            task.wait(0.25)
        end
    end
end
local function onCopyBitcoinAddress()
    mi(mC, "Copied Bitcoin address")
end
local function onCopyVenmoLink()
    mi(mj, "Copied Venmo link")
end
mh = nil
mi = nil
mj = nil
mk = nil
ml = nil
Rebirths = nil
Options = nil
mo = nil
Toggles = nil
mr = nil
StageDefinitions = nil
SaveManager = nil
mu = nil
connection2 = nil
mx = nil
my = nil
mz = nil
mB = nil
mC = nil
mE = nil
mF = nil
mG = nil
mH = nil
AuraRunnerRebirth = nil
mJ = nil
mK = nil
mL = nil
connection = nil
mO = nil
AuraRunnerTrainClick = nil
mQ = nil
mT = nil
mU = nil
mV = nil
mW = nil
mX = nil
mY = nil
mZ = nil
m_ = nil
m0 = nil
LocalPlayer = nil
m2 = nil
local mg, mp, ClaimFreeSpin, GetFreeSpinStatus, GetReward, AuraRunnerHatchEgg, mR, mS
m3 = nil
Workspace = nil
m5 = nil
m6 = nil
Label = nil
m8 = nil
m9 = nil
nb = nil
nd = nil
ne = nil
ng = nil
nh = nil
nj = nil
HttpService = nil
nl = nil
nm = nil
VirtualUser = nil
np = nil
nq = nil
UserInputService = nil
ns = nil
nt = nil
ClickUpgrades = nil
nv = nil
nw = nil
nx = nil
local na, CoreGui, GuiService, ni, no, nJ, nK
na = nil
CoreGui = nil
GuiService = nil
ni = nil
no = nil
local nU, nV, nW, OuroborosHubGroup
tL_3, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, LocalPlayer, mZ, mW, AuraRunnerTrainClick, AuraRunnerHatchEgg, AuraRunnerRebirth, GetReward, GetFreeSpinStatus, ClaimFreeSpin, StageDefinitions, Rebirths, ClickUpgrades, tL_12, ns = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local tL_7 = game:GetService("Players")
if (not ns or CoreGui) and (Workspace or UserInputService) and (ns and ns and (not UserInputService or StageDefinitions)) and not ((not ns or CoreGui) and (Workspace or UserInputService) and (ns and ns and (not UserInputService or StageDefinitions))) then
    game:GetService("ReplicatedStorage")
else
    tL_3 = game:GetService("ReplicatedStorage")
end
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
LocalPlayer = tL_7.LocalPlayer
local nH = "+1 Aura Per Click"
mZ = "https://discord.gg/ehKVq7pf7v"
if ((not UserInputService or mZ) and 61) and not ((not UserInputService or mZ) and 61) then
    ns = "https://rscripts.net/@Ouroboros"
else
    mW = "https://rscripts.net/@Ouroboros"
end
local tL_9 = tL_3:WaitForChild("Shared")
local tL_2 = tL_3:WaitForChild("Remotes")
local tL_15 = tL_3:WaitForChild("SpinWheel")
AuraRunnerTrainClick = tL_2:WaitForChild("AuraRunnerTrainClick")
AuraRunnerHatchEgg = tL_2:WaitForChild("AuraRunnerHatchEgg")
AuraRunnerRebirth = tL_2:WaitForChild("AuraRunnerRebirth")
GetReward = tL_15:WaitForChild("GetReward")
GetFreeSpinStatus = tL_15:WaitForChild("GetFreeSpinStatus")
ClaimFreeSpin = tL_15:WaitForChild("ClaimFreeSpin")
StageDefinitions = require(tL_9.Config.StageDefinitions)
local tL_19 = require(tL_9.Config.Eggs)
Rebirths = require(tL_9.Config.Rebirths)
local tL_5 = require(tL_9.Config.Treadmills)
ClickUpgrades = require(tL_9.Config.ClickUpgrades)
if (not HttpService or HttpService or (not RunService or not tL_12) or (not RunService or RunService) and (RunService or not UserInputService)) and ((not tL_12 or mW or tL_12 and not UserInputService) and (tL_12 and false and (false or tL_12))) or not ((not HttpService or HttpService or (not RunService or not tL_12) or (not RunService or RunService) and (RunService or not UserInputService)) and ((not tL_12 or mW or tL_12 and not UserInputService) and (tL_12 and false and (false or tL_12)))) then
    tL_12 = require(tL_9.Config.ExampleRuntime)
else
    tL_9 = require(tL_12.Config.ExampleRuntime)
end
ns = require(tL_9.Core.ControllerLocator)
tL_7 = tonumber(tL_12.mainWorld2PlaceId) or 100807904956772
tL_15 = tonumber(tL_12.devWorld2PlaceId) or 115079279210014
tL_2 = { [tL_7] = true, [tL_15] = true }
tL_7 = tonumber(tL_12.mainWorld3PlaceId) or 121956648506820
tL_15 = (tonumber(tL_12.devWorld3PlaceId))
local n6 = if tL_15 then 1 else 0
local n4 = 2790 * n6 + 1662 * (1 - n6)
local n5 = 3951 * n6 + 913 * (1 - n6)
if not ((n4 * 2884 + n5 * 2876 + n4 * n5) % 16777213 == 13655513) then
    tL_15 = 113634845390514
end
tL_18, nh = nil, nil
tL_9 = 0
repeat
    tL_3 = { "lbyfvm", "tdibxx", "llgiedi", "wcvejnjghd", "ttqmnrsmtr", "iqqcvjlf", "itju" }
    local uu = tL_9
    tL_12 = tL_3[uu % 7 + 1]
    if tL_12:len() >= tL_12:reverse():rep(uu % 3 + 2):len() then
        tL_15 = { [tL_7] = true, [nh] = true }
        tL_18 = 1
    else
        tL_18 = { [tL_7] = true, [tL_15] = true }
        nh = 1
    end
    tL_9 = (tL_9 + 1) % 4
until (tL_9 * 3 + 1) % 4 == 0
if tL_2[game.PlaceId] then
    nh = 2
elseif tL_18[game.PlaceId] then
    nh = 3
end
tL_15, m6 = nil, nil
tL_7 = 2
repeat
    tL_2 = (tL_7 * 1 + 1) % 2 + 1
    if tL_2 <= 1 then
        local uR = bit32.rrotate(bit32.bxor(bit32.lrotate(tL_7, 16), string.byte(tostring(m6))), 15)
        if bit32.bxor(bit32.lrotate(bit32.bxor(uR, 177773386), 10), 1651320874) ~= bit32.lrotate(uR, 10) then
            tL_15 = 0
        else
            m6 = 0
        end
        tL_7 = (tL_7 + 5) % 8
    else
        tL_2 = (vector.create((tL_7 * 3 + 4) % 11 + 1, (tL_7 * 11 + 12) % 13 + 1, (tL_7 * 1 + 16) % 17 + 1))
        tL_9 = (vector.create((tL_7 * 3 + 3) % 11 + 1, (tL_7 * 9 + 8) % 13 + 1, (tL_7 * 4 + 12) % 17 + 1))
        tL_18 = (vector.create((tL_7 * 3 + 3) % 11 + 1, (tL_7 * 6 + 3) % 13 + 1, (tL_7 * 3 + 8) % 17 + 1))
        tL_3 = (vector.create((tL_7 * 3 + 7) % 5 + 1, (tL_7 * 1 + 5) % 7 + 1, (tL_7 * 2 + 1) % 9 + 1))
        if vector.dot(vector.cross(tL_2, (vector.cross(tL_9, tL_18))), tL_3) == vector.dot(tL_9 * vector.dot(tL_2, tL_18) - tL_18 * vector.dot(tL_2, tL_9), tL_3) then
            tL_15 = "World " .. tostring(nh)
        else
            nh = "World " .. tostring(tL_15)
        end
        tL_7 = (tL_7 + 3) % 8
    end
until (tL_7 * 3 + 1) % 8 == 7
for k in pairs(StageDefinitions) do
    tL_7 = tonumber(k)
    tL_2 = tL_7 and tL_7 > m6
    if tL_2 then
        m6 = tL_7
    end
end
if m6 < 1 then
    tL_7 = nh == 2 and 19
    tL_2 = tL_7 or 25
    m6 = tL_2
end
mT = nil
tL_9 = {
    [1] = {
        [1] = Vector3.new(-169.4, 22.3, 22.2),
        [3] = Vector3.new(-386.7, 21.6, 22.2),
        [4] = Vector3.new(-498.5, 21.6, -21),
        [5] = Vector3.new(-603, 22.3, 20.5),
        [6] = Vector3.new(-706.7, 22.3, -19.8),
        [7] = Vector3.new(-817.2, 22.3, 22.2),
        [8] = Vector3.new(-917.7, 22.3, 22.2),
        [9] = Vector3.new(-1046, 21.6, -20.5),
        [10] = Vector3.new(-1210.5, 53.3, -20.5),
        [25] = Vector3.new(-3485, 52.7, -20.5)
    },
    [2] = {
        [1] = Vector3.new(-210.2, 22.3, -1019.8),
        [2] = Vector3.new(-320.2, 22.3, -977.8),
        [3] = Vector3.new(-439.2, 22.3, -977.8),
        [4] = Vector3.new(-564.2, 22.3, -1019.8),
        [5] = Vector3.new(-686.2, 22.3, -977.8),
        [6] = Vector3.new(-808.2, 22.3, -977.8),
        [7] = Vector3.new(-1003.2, 22.3, -1019.8)
    }
}
mT = {}
tL_7 = tL_9[nh] or tL_9[1]
tL_2 = tL_7
for k, v in pairs(tL_2) do
    mT[k] = v
end
tL_2, mE = nil, nil
tL_7 = 2
repeat
    tL_9 = {
        "imjvyjetqq",
        "gyntny",
        "rsagiqhdbp",
        "nrdvcxin",
        "edxlhldbwj",
        "zthxe",
        "ydho",
        "hhqoq",
        "dhycadqmalt",
        "mnqiclgxtzk",
        "itwuea",
        "uwhy",
        "qwmij",
        "nepeen",
        "toaxy"
    }
    if tL_9[(tL_7 * 75 + 1) % 15 + 1] < tL_9[(tL_7 * 75 + 1) % 15 + 1] then
        mE = { "Best" }
        tL_2 = { Best = 0 }
    else
        tL_2 = { "Best" }
        mE = { Best = 0 }
    end
    tL_7 = (tL_7 + 7) % 8
until (tL_7 * 3 + 6) % 8 == 1
local oj = 1
local oh = m6
while oj <= oh do
    local ol = oj
    tL_7 = StageDefinitions[ol]
    tL_9 = tL_7 and tL_7.displayName
    tL_7 = tL_9 or "Stage " .. ol
    tL_9 = tL_7
    tL_2[#tL_2 + 1] = tL_9
    mE[tL_9] = ol
    oj += 1
end
tL_7 = {}
mh = {}
tL_9 = {}
tL_18 = tL_19.Definitions or tL_9
for k, v in pairs(tL_18) do
    if type(v) == "table" then
        tL_9 = tonumber(v.winCost) or 0
        tL_18 = tL_9
        tL_9 = v.autoOpenEnabled
        tL_3 = tL_9 ~= false
        tL_12 = tL_18 > 0 and tL_3
        if tL_12 then
            tL_9 = #mh + 1
            tL_3 = v.modelName or v.key
            tL_12 = tostring(tL_3)
            tL_19 = v.displayName or v.modelName or v.key
            mh[tL_9] = { ModelName = tL_12, DisplayName = tostring(tL_19), WinCost = tL_18 }
        end
    end
end
tL_12 = 0
repeat
    tL_9 = (vector.create((tL_12 * 6 + 2) % 11 + 1, (tL_12 * 2 + 2) % 13 + 1, (tL_12 * 8 + 4) % 17 + 1))
    local uq = vector.floor(tL_9) + vector.ceil(tL_9 * -1)
    if vector.dot(uq, uq) == 0 then
        table.sort(mh, fn405)
    else
        table.sort(mh, fn405)
    end
    tL_12 = (tL_12 + 0) % 4
until (tL_12 * 3 + 2) % 4 == 2
for i, v in ipairs(mh) do
    tL_7[#tL_7 + 1] = v.DisplayName
end
mY = {}
tL_9 = {}
tL_18 = tL_5.Definitions or tL_9
for k, v in pairs(tL_18) do
    tL_9 = type(v) == "table" and v.requiredGamePassFeatureId == nil
    if tL_9 then
        tL_9 = #mY + 1
        tL_18 = tostring(k)
        tL_3 = v.modelName or k
        tL_12 = tostring(tL_3)
        tL_19 = tonumber(v.multiplier) or 1
        tL_5 = tonumber(v.requiredRebirthPoints) or 0
        nJ = v.displayName or v.modelName
        nK = nJ or k
        mY[tL_9] = {
            Id = tL_18,
            ModelName = tL_12,
            Multiplier = tL_19,
            RequiredRebirthPoints = tL_5,
            DisplayName = tostring(nK)
        }
    end
end
tL_18 = 3
repeat
    local un = bit32.rrotate(bit32.bxor(bit32.lrotate(tL_18, 20), string.byte(tostring(tL_18))), 18)
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(un, 2339641623), 360998019), (bit32.bxor(bit32.band(un, 1955325672), 2392786281))), 360998019), 2392786281) == un then
        table.sort(mY, fns.fn149)
    else
        table.sort(mY, fns.fn149)
    end
    tL_18 = (tL_18 + 2) % 4
until (tL_18 * 3 + 3) % 4 == 2
mB, SaveManager, Toggles, Options, mO, mF, mC, my, mu, mr, mo, mj, mi, np, ne, m0, m9, mU, mL, ml, nq, na, mV, mz, nl, nv, ni, mJ, nd, mK, mx, m3, mG, nt, mS, mH, nb, mp, mR, no, tL_19 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
mB = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = mB.Toggles
Options = mB.Options
mi = fn690
np = fn845
if (mC and nb or not nb and false or (nv and nb or (nb or not tL_19))) and not (mC and nb or not nb and false or (nv and nb or (nb or not tL_19))) then
    mB = fn773
else
    ne = fn773
end
m0 = fn774
nK = "#7fd47f"
nJ = "#6ec1ff"
mO = "#e8a34d"
tL_5 = "#8b93a3"
mF = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
mC = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
my = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
mu = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
mr = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
mo = "https://paypal.me/TheTruckerGOD"
mj = "https://venmo.com/u/miserablemusic"
local nR = "#345d9d"
local nQ = "#f7931a"
local nP = "#627eea"
local nO = "#26a17b"
local nN = "#14f195"
local nM = "#0070ba"
local nL = "#008cff"
m9 = fn254
mU = fn397
mL = fn810
ml = fn409
nq = fn753
na = fn527
mV = function()
    local o6_1
    local o4 = na()
    local o5 = o4 and o4.getPlayerData
    local o5_1
    if o5 then
        o5_1, o6_1 = pcall(function()
            return o4:getPlayerData()
        end)
        local o7 = o5_1 and type(o6_1) == "table"
        if o7 then
            return o6_1
        end
        return nil
    end
    return nil
end
mz = fn579
nl = fn506
nv = function(ce)
    pcall(function()
        LocalPlayer:RequestStreamAroundAsync(ce, 5)
    end)
end
ni = fn471
mJ = fn580
nd = function(cI)
    local p2
    local p1
    p1 = nil
    p2 = nil
    p1 = nq()
    if not p1 or not firetouchinterest then
        return false
    end
    p2 = ni(cI)
    if not p2 then
        return false
    end
    pcall(function()
        firetouchinterest(p1, p2, 0)
    end)
    task.wait(0.08)
    pcall(function()
        firetouchinterest(p1, p2, 1)
    end)
    return true
end
mK = fn647
mx = fns.fn51
m3 = fn788
mG = fn385
if (((not nb or nN) and (not ni and mo) or (ni and mo or not ni and nb)) and (not nb and nN or (not nb or nb) or mo and not nb and "https://paypal.me/TheTruckerGOD") or ((false or not nb) and false and (nN and ni and (nN or not ni)) or "https://paypal.me/TheTruckerGOD" and ((nb or nb) and (nN and not nb)))) and not (((not nb or nN) and (not ni and mo) or (ni and mo or not ni and nb)) and (not nb and nN or (not nb or nb) or mo and not nb and "https://paypal.me/TheTruckerGOD") or ((false or not nb) and false and (nN and ni and (nN or not ni)) or "https://paypal.me/TheTruckerGOD" and ((nb or nb) and (nN and not nb)))) then
    mH = fn220
    nb = fn719
    nt = function()
        local qQ
        qQ = mS(mU("EggSelect"))
        if not qQ then
            return false
        end
        local qR = mV()
        local qR_4
        local qS = qR and qR.wins
        local qS_4
        local qR_3 = tonumber(qS) or 0
        if qR_3 < qQ.WinCost then
            return false
        end
        qR_4, qS_4 = pcall(function()
            return AuraRunnerHatchEgg:InvokeServer({ eggModelName = qQ.ModelName })
        end)
        local qT = qR_4 and type(qS_4) == "table" and qS_4.status == "hatched"
        return qT
    end
    mp = function()
        local result
        local qW = mV()
        local qX = qW and qW.spins
        local qY = tonumber(qX) or 0
        result = nil
        local qX_2 = qY
        pcall(function()
            result = GetFreeSpinStatus:InvokeServer()
        end)
        if type(result) == "table" then
            local qY_3 = tonumber(result.remainingSeconds) or 1
            if qY_3 <= 0 then
                pcall(function()
                    ClaimFreeSpin:InvokeServer()
                end)
                task.wait(0.2)
                local qW_4 = mV()
                local qY_4 = qW_4 and qW_4.spins
                local qW_5 = tonumber(qY_4) or qX_2
                qX_2 = qW_5
            end
        end
        if qX_2 <= 0 then
            return false
        end
        local qW_6 = pcall(function()
            GetReward:InvokeServer()
        end)
        return qW_6
    end
    mS = fn944
else
    nt = fn220
    mS = fn719
    mH = function()
        local qQ
        qQ = mS(mU("EggSelect"))
        if not qQ then
            return false
        end
        local qR = mV()
        local qR_2
        local qS = qR and qR.wins
        local qS_2
        local qR_1 = tonumber(qS) or 0
        if qR_1 < qQ.WinCost then
            return false
        end
        qR_2, qS_2 = pcall(function()
            return AuraRunnerHatchEgg:InvokeServer({ eggModelName = qQ.ModelName })
        end)
        local qT = qR_2 and type(qS_2) == "table" and qS_2.status == "hatched"
        return qT
    end
    nb = function()
        local result
        local qW = mV()
        local qX = qW and qW.spins
        local qY = tonumber(qX) or 0
        result = nil
        local qX_1 = qY
        pcall(function()
            result = GetFreeSpinStatus:InvokeServer()
        end)
        if type(result) == "table" then
            local qY_1 = tonumber(result.remainingSeconds) or 1
            if qY_1 <= 0 then
                pcall(function()
                    ClaimFreeSpin:InvokeServer()
                end)
                task.wait(0.2)
                local qW_1 = mV()
                local qY_2 = qW_1 and qW_1.spins
                local qW_2 = tonumber(qY_2) or qX_1
                qX_1 = qW_2
            end
        end
        if qX_1 <= 0 then
            return false
        end
        local qW_3 = pcall(function()
            GetReward:InvokeServer()
        end)
        return qW_3
    end
    mp = fn944
end
mR = fn282
no = function()
    local rv = mR()
    if not rv then
        return false
    end
    local rt = mp(rv.padName)
    local ru = nq()
    if not rt or not ru then
        return false
    end
    local rv_2 = {}
    local rw_1 = mV() or rv_2
    local rv_3 = tonumber(rw_1.clickUpgradeTier) or 0
    ru.CFrame = rt.CFrame + Vector3.new(0, 3, 0)
    task.wait(0.35)
    if firetouchinterest then
        pcall(function()
            firetouchinterest(ru, rt, 0)
        end)
        task.wait(0.08)
        pcall(function()
            firetouchinterest(ru, rt, 1)
        end)
        task.wait(0.25)
    end
    local rv_4 = {}
    local rx = mV() or rv_4
    local rv_5 = (tonumber(rx.clickUpgradeTier))
    local rB = if rv_5 then 1 else 0
    local rz = 2471 * rB + 3602 * (1 - rB)
    local rA = 951 * rB + 307 * (1 - rB)
    if not ((rz * 503 + rA * 3056 + rz * rA) % 16777213 == 6499090) then
        rv_5 = 0
    end
    return rv_5 > rv_3
end
tL_12 = mB:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = mZ, Copyable = true }, "|", nH .. " (" .. tL_15 .. ")" },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local nT = {
    Info = tL_12:AddTab("Info", "info"),
    Main = tL_12:AddTab("Main", "mouse-pointer-click"),
    Player = tL_12:AddTab("Player", "person-standing"),
    Settings = tL_12:AddTab("Settings", "settings")
}
tL_19 = fn930
for k, v in nT do
    tL_19(v)
end
nx, tL_18, tL_12, Label, m2, tL_3 = nil, nil, nil, nil, nil, nil
tL_9 = 4
repeat
    tL_19 = (tL_9 * 2 + 0) % 3 + 1
    if tL_19 <= 2 then
        if tL_19 <= 1 then
            tL_19 = (vector.create((tL_9 * 3 + 5) % 11 + 1, (tL_9 * 5 + 12) % 13 + 1, (tL_9 * 14 + 2) % 17 + 1))
            nU = (vector.create((tL_9 * 7 + 9) % 11 + 1, (tL_9 * 10 + 1) % 13 + 1, (tL_9 * 8 + 1) % 17 + 1))
            nV = (vector.create((tL_9 * 6 + 2) % 11 + 1, (tL_9 * 2 + 12) % 13 + 1, (tL_9 * 14 + 11) % 17 + 1))
            nW = (vector.create((tL_9 * 7 + 3) % 11 + 1, (tL_9 * 7 + 13) % 13 + 1, (tL_9 * 5 + 2) % 17 + 1))
            if vector.dot(vector.cross(tL_19, nU), (vector.cross(nV, nW))) == vector.dot(tL_19, nV) * vector.dot(nU, nW) - vector.dot(tL_19, nW) * vector.dot(nU, nV) + 5 then
                nx = tostring(game.JobId)
            else
                m2 = tostring(game.JobId)
            end
            tL_9 = (tL_9 + 2) % 12
        else
            if (tL_9 * 2 + 4) * 10 % 3 == ((tL_9 * 2 + 4) * 10 + 2) % 3 then
                m2 = #tL_3 > 18
            else
                tL_3 = #m2 > 18
            end
            tL_9 = (tL_9 + 8) % 12
        end
    else
        local vf = bit32.rrotate(bit32.bxor(bit32.lrotate(tL_9, 22), string.byte(tostring(Label))), 4)
        if bit32.bxor(bit32.lrotate(bit32.bxor(vf, 4064372268), 14), 1502297232) == bit32.lrotate(vf, 14) then
            nx = "Unknown"
            pcall(fn380)
            tL_18 = nT.Info:AddLeftGroupbox("Account", "circle-user")
            tL_18:AddLabel(m0("User", LocalPlayer.Name, nK), true)
            tL_18:AddLabel(m0("Status", "Keyless", nK), true)
            tL_18:AddLabel(m0("Executor", nx, nK), true)
            tL_12 = nT.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            tL_12:AddLabel(ne(nH .. " [" .. tostring(game.PlaceId) .. "]", nJ), true)
            tL_12:AddLabel(m0("World", tL_15, mO), true)
            tL_12:AddLabel(m0("Place ID", tostring(game.PlaceId), nJ), true)
            Label = tL_12:AddLabel(m0("Session time", "0s", mO), true)
        else
            ne = "Unknown"
            pcall(fn380)
            nx = (nil):AddLeftGroupbox("Account", "circle-user")
            nx:AddLabel(tL_18("User", nil, nJ), true)
            nx:AddLabel(tL_18("Status", "Keyless", nJ), true)
            nx:AddLabel(tL_18("Executor", ne, nJ), true)
            tL_15 = (nil):AddLeftGroupbox("Game Info", "gamepad-2")
            tL_15:AddLabel(nH(Label .. " [" .. tostring(game.PlaceId) .. "]", m0), true)
            tL_15:AddLabel(tL_18("World", tL_12, LocalPlayer), true)
            tL_15:AddLabel(tL_18("Place ID", tostring(game.PlaceId), m0), true)
            nT = tL_15:AddLabel(tL_18("Session time", "0s", LocalPlayer), true)
        end
        tL_9 = (tL_9 + 8) % 12
    end
until (tL_9 * 11 + 3) % 12 == 5
if tL_3 then
    tL_15 = 1
    repeat
        tL_9 = { "jfjgpcgzitt", "dlvj", "meggklk", "kqlkb", "kdjtsno", "fyhpt", "oxdueo" }
        local uB = tL_15
        tL_18 = tL_9[uB % 7 + 1]
        if tL_18:len() <= tL_18:reverse():rep(uB % 3 + 2):len() then
            tL_3 = string.sub(m2, 1, 18) .. "..."
        else
            m2 = string.sub(tL_3, 1, 18) .. "..."
        end
        tL_15 = (tL_15 + 3) % 4
    until (tL_15 * 1 + 1) % 4 == 1
end
tL_15 = tL_3 or m2
mQ, OuroborosHubGroup, nW, nU = nil, nil, nil, nil
local nX = tL_15
tL_12:AddLabel(m0("Server", nX, tL_5), true)
tL_12:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
mQ = os.clock()
task.spawn(worker)
tL_3 = nT.Info:AddRightGroupbox("Scripts", "package")
tL_3:AddLabel(ne("Included in this hub", tL_5), true)
tL_3:AddLabel(ne("+1 Aura Per Click (World 1)", nJ), true)
tL_3:AddLabel(ne("+1 Aura Per Click (World 2)", nJ), true)
tL_18 = nT.Info:AddRightGroupbox("Features", "list")
tL_18:AddLabel(ne("Auto Farm", nJ), true)
tL_18:AddLabel(ne("Auto Shop", nK), true)
tL_18:AddLabel(ne("Auto Progress", mO), true)
tL_18:AddLabel(ne("Misc Utilities", tL_5), true)
tL_9 = nT.Info:AddRightGroupbox("Socials", "link")
if (not nU and tL_9 and (tL_9 or not tL_9) and (not nU and false and (nU and not tL_9)) or (not nU or 32 or 32 or nU and not nW and (nU and not nW))) and not (not nU and tL_9 and (tL_9 or not tL_9) and (not nU and false and (nU and not tL_9)) or (not nU or 32 or 32 or nU and not nW and (nU and not nW))) then
    np:AddButton({ Text = "Discord", Func = tL_9 })
    np:AddButton({ Text = "Rscripts", Func = onRscripts })
    nT = OuroborosHubGroup.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
else
    tL_9:AddButton({ Text = "Discord", Func = np })
    tL_9:AddButton({ Text = "Rscripts", Func = onRscripts })
    OuroborosHubGroup = nT.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
end
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = np })
local DonationsGroup = nT.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(ne("All donations are optional but appreciated.", mO), true)
DonationsGroup:AddLabel(ne("If you donate you get a special role, just PING after you donate.", nK), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(ne("LTC / Litecoin", nR), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(ne("BTC / Bitcoin", nQ), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(ne("ETH / Ethereum", nP), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(ne("USDT", nO), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(ne("Solana", nN), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
DonationsGroup:AddLabel(ne("PayPal", nM), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(ne("Venmo", nL), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(ne("Don't have any of the listed currencies but still wanna donate?", tL_5), true)
DonationsGroup:AddLabel(ne("DM me and we'll work something out.", nJ), true)
nW = nT.Info:AddRightGroupbox("FAQ", "circle-help")
nW:AddLabel("Where do I get a good config?", true)
nW:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
nW:AddLabel("How do I import / export configs?", true)
nW:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
nW:AddLabel("How do I report bugs?", true)
nW:AddLabel("Join the Discord and post it in the bugs channel.", true)
nW:AddLabel("How do I make suggestions?", true)
nW:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
nW:AddLabel("How do I get help or updates?", true)
nW:AddLabel("Join the Discord, updates and support are posted there first.", true)
nV = nT.Main:AddLeftGroupbox("Farm", "trophy")
if ((not nX or not nX) and (not nU or nU) and (nX and nX and (nU or nX)) or (nX or not nU or (nX or not nX)) and (nX and nU or (not nU or nX)) or (nX or nU or (nX or not nX) or nU and nU and (not nU and not nU)) and (nX and nU and (not nX or not nX) or (nX and not nU or not nU and not nU))) and not ((not nX or not nX) and (not nU or nU) and (nX and nX and (nU or nX)) or (nX or not nU or (nX or not nX)) and (nX and nU or (not nU or nX)) or (nX or nU or (nX or not nX) or nU and nU and (not nU and not nU)) and (nX and nU and (not nX or not nX) or (nX and not nU or not nU and not nU))) then
    nU:AddToggle("AutoWins", { Text = "Auto Wins", Default = false })
    nU:AddDropdown("WinStage", { Text = "Win stage", Default = "Best", Values = nV })
    nU:AddSlider("WinDelay", { Default = 0.45, Text = "Win delay", Max = 5, Min = 0.15, Rounding = 2, Suffix = "s" })
    nU:AddToggle("AutoClick", { Text = "Auto Click", Default = false })
    nU:AddSlider("ClickDelay", { Max = 1, Rounding = 2, Suffix = "s", Text = "Click delay", Default = 0.1, Min = 0.05 })
    nU:AddToggle("AutoTrain", { Text = "Auto Train", Default = false })
    nU:AddSlider("TrainDelay", { Default = 0.1, Suffix = "s", Max = 1, Rounding = 2, Min = 0.05, Text = "Train delay" })
    nT = tL_2.Main:AddRightGroupbox("Shop", "shopping-bag")
else
    nV:AddToggle("AutoWins", { Text = "Auto Wins", Default = false })
    nV:AddDropdown("WinStage", { Text = "Win stage", Values = tL_2, Default = "Best" })
    nV:AddSlider("WinDelay", { Text = "Win delay", Default = 0.45, Min = 0.15, Max = 5, Rounding = 2, Suffix = "s" })
    nV:AddToggle("AutoClick", { Text = "Auto Click", Default = false })
    nV:AddSlider("ClickDelay", { Text = "Click delay", Default = 0.1, Min = 0.05, Max = 1, Rounding = 2, Suffix = "s" })
    nV:AddToggle("AutoTrain", { Text = "Auto Train", Default = false })
    nV:AddSlider("TrainDelay", { Text = "Train delay", Default = 0.1, Min = 0.05, Max = 1, Rounding = 2, Suffix = "s" })
    nU = nT.Main:AddRightGroupbox("Shop", "shopping-bag")
end
nU:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Best Affordable Upgrades", Default = false })
nU:AddSlider("UpgradeDelay", { Text = "Upgrade delay", Default = 0.75, Min = 0.25, Max = 10, Rounding = 2, Suffix = "s" })
local ProgressGroup = nT.Main:AddRightGroupbox("Progress", "rotate-ccw")
ProgressGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
ProgressGroup:AddSlider("RebirthDelay", { Text = "Rebirth delay", Default = 1, Min = 0.5, Max = 30, Rounding = 1, Suffix = "s" })
ProgressGroup:AddToggle("AutoWheelSpin", { Text = "Auto Wheel Spin", Default = false })
ProgressGroup:AddSlider("WheelDelay", { Text = "Wheel delay", Default = 1, Min = 0.5, Max = 15, Rounding = 1, Suffix = "s" })
ProgressGroup:AddToggle("AutoOpenEggs", { Text = "Auto Open Eggs", Default = false })
tL_15 = #tL_7 > 0 and tL_7
tL_2 = { "Egg 1" }
tL_9 = tL_15
n6 = if tL_9 then 1 else 0
n4 = 922 * n6 + 1352 * (1 - n6)
n5 = 3525 * n6 + 3991 * (1 - n6)
if not ((n4 * 3585 + n5 * 3294 + n4 * n5) % 16777213 == 1389557) then
    tL_9 = tL_2
end
tL_15 = tL_7[1] or "Egg 1"
ng, nm, nj, connection, connection2, m8, mk, mg, m5, mX, nw, m_ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ProgressGroup:AddDropdown("EggSelect", { Text = "Egg", Values = tL_9, Default = tL_15 })
ProgressGroup:AddSlider("EggDelay", { Text = "Egg delay", Default = 0.5, Min = 0.2, Max = 10, Rounding = 2, Suffix = "s" })
tL_3 = nT.Player:AddLeftGroupbox("Movement", "footprints")
tL_3:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
tL_3:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
tL_3:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
tL_3:AddToggle("NoClip", { Text = "NoClip", Default = false })
tL_3:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
tL_18 = nT.Player:AddRightGroupbox("Fly", "feather")
tL_18:AddToggle("Fly", { Text = "Fly", Default = false })
tL_18:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
mk = function(fM)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not fM)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not fM
        end
    end)
    if not fM then
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
Toggles.AntiGameplayPause:OnChanged(fn1033)
Toggles.Fly:OnChanged(fn568)
Toggles.WalkSpeedEnabled:OnChanged(fn382)
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
ng = Workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
tL_12 = nT.Settings:AddLeftGroupbox("Menu")
tL_12:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
mB.ToggleKeybind = Options.MenuKeybind
tL_12:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
tL_12:AddButton("Unload", onUnload)
ThemeManager:SetLibrary(mB)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
SaveManager:SetLibrary(mB)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/AuraPerClick/W" .. tostring(nh))
tL_7 = SaveManager:BuildConfigSection(nT.Settings)
mg = fn522
m5 = fns.fn170
mX = fn742
nw = function(gZ)
    local sK
    sK = nil
    local sL = type(gZ) ~= "table" or type(gZ.idx) ~= "string"
    local sP = if sL then 1 else 0
    local sN = 1573 * sP + 1081 * (1 - sP)
    local sO = 404 * sP + 3440 * (1 - sP)
    if not ((sN * 954 + sO * 257 + sN * sO) % 16777213 == 2239962) then
        sL = type(gZ.type) ~= "string"
    end
    if not sL then
        sL = SaveManager.Ignore[gZ.idx]
    end
    if sL then
        return false
    end
    sK = mg(gZ.type, gZ.idx)
    if not sK then
        return false
    end
    local sL_1 = pcall(function()
        if gZ.type == "Input" then
            if type(gZ.text) ~= "string" then
                return
            end
            sK:SetValue(gZ.text)
        elseif gZ.type == "ColorPicker" then
            sK:SetValueRGB(Color3.fromHex(gZ.value), gZ.transparency)
        elseif gZ.type == "KeyPicker" then
            sK:SetValue({ gZ.key, gZ.mode, gZ.modifiers })
            if gZ.mode == "Toggle" and gZ.toggled ~= nil then
                sK.Toggled = gZ.toggled
                sK:Update()
            end
        else
            sK:SetValue(gZ.value)
        end
    end)
    return sL_1
end
tL_7:AddDivider()
tL_7:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
tL_7:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
tL_7:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
ThemeManager:ApplyToTab(nT.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
nm = tick()
if mg and not nm and (mg or mg) and (false or not nm or (mg or false)) and (nw and nw and (nw or not nm) or (false or nm or mg and nm)) or (false or not mg and nm or (mg or nw or false)) and (not nm and not mg and (not nm or nw) or (not nm or nm) and (mg and not mg)) or not (mg and not nm and (mg or mg) and (false or not nm or (mg or false)) and (nw and nw and (nw or not nm) or (false or nm or mg and nm)) or (false or not mg and nm or (mg or nw or false)) and (not nm and not mg and (not nm or nw) or (not nm or nm) and (mg and not mg))) then
    nj = tick()
    pcall(function()
        for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
            local tf = v
            pcall(function()
                tf:Disable()
            end)
        end
    end)
    m_ = fn275
else
    m_ = tick()
    pcall(function()
        for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
            local tf = v
            pcall(function()
                tf:Disable()
            end)
        end
    end)
    nj = fn275
end
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(fns.onInputChanged)
mk(Toggles.AntiGameplayPause.Value)
task.spawn(worker2)
task.spawn(worker3)
m8 = 0
task.spawn(worker4)
task.spawn(function()
    local ty = false
    repeat
        local ts
        if not mB.Unloaded then
            if m9("AutoBuyUpgrades") then
                ts = false
                pcall(function()
                    ts = no()
                end)
                local tu = ts and mL("UpgradeDelay", 0.75)
                local tv = tu or 0.5
                task.wait(tv)
            else
                task.wait(0.4)
            end
        else
            ty = true
        end
    until ty
end)
task.spawn(worker5)
task.spawn(fns.worker6)
task.spawn(worker7)
task.spawn(antiGameplayPauseLoop)
task.spawn(worker8)
mB:OnUnload(fn655)
