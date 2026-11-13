local fns = {}
local xv_9, xv_10, xv_12, xv_14
local oq
local n6
local oR
local nO
local oy
local nv
local oc
local nU
local oE
local SaveManager
local oi
local n_
local VirtualUser
local Library
local op
local n5
local oQ
local nN
local ox
local nu
local ob
local nT
local HttpService
local Toggles
local oh
local nZ
local oJ
local nG
local SkillTreeConfig
local n4
local UserInputService
local nM
local Network
local nt
local oa
local nS
local oC
local og
local nY
local oI
local connection3
local LocalPlayer
local n3
local oO
local nL
local CoreGui
local ns
local nR
local oB
local ny
local of
local connection
local nE
local om
local n2
local oN
local nK
local Constants
local n8
local oT
local nQ
local Label
local Options
local oe
local nW
local oG
local nD
local ol
local n1
local oM
local nJ
local Workspace
local n7
local oS
local nP
local nw
local od
local connection2
local nC
local oj
local n0
local oL
local nI
function fns.fn68()
    local q4 = Options.BlessingTypes and Options.BlessingTypes.Value
    local q5 = {}
    if type(q4) == "table" then
        for k, v in q4 do
            if v then
                local q4_1 = oi[k]
                if q4_1 then
                    q5[q4_1] = true
                end
            end
        end
    end
    return q5
end
function fns.fn70(gr)
    local DiscordGroup = gr:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = nK })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = nK })
end
function fns.autoRollLoop()
    while not Library.Unloaded do
        if Toggles.AutoRoll.Value then
            pcall(nG)
        end
        task.wait(0.35)
    end
end
function fns.autoFillObservatoriesLoop()
    while not Library.Unloaded do
        if Toggles.AutoFillObservatories.Value then
            pcall(oy)
        end
        task.wait(2)
    end
end
function fns.onRenderStepped2(hK)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local vT_1 = op()
        if vT_1 then
            vT_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local vT_3 = oG()
        local vU = op()
        nv = Workspace.CurrentCamera or nv
        if vT_3 and vU and nv then
            vU.PlatformStand = true
            local vU_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                vU_1 = vU_1 + nv.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                vU_1 = vU_1 - nv.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                vU_1 = vU_1 - nv.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                vU_1 = vU_1 + nv.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                vU_1 = vU_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                vU_1 = vU_1 - Vector3.new(0, 1, 0)
            end
            vT_3.Velocity = Vector3.zero
            if vU_1.Magnitude > 0 then
                vT_3.CFrame = vT_3.CFrame + vU_1.Unit * Options.FlySpeed.Value * hK
            end
        end
    end
end
function fns.fn116()
    nZ(Toggles.AntiGameplayPause.Value)
end
function fns.autoPolishStarsLoop()
    while not Library.Unloaded do
        if Toggles.AutoPolishStars.Value then
            pcall(nT)
        end
        task.wait(0.4)
    end
end
function fns.onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local vO_1 = op()
        if vO_1 then
            vO_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.fn136()
    if not Toggles.Fly.Value then
        local vz = op()
        if vz then
            vz.PlatformStand = false
        end
    end
end
function fns.fn138()
    local tu = oa()
    if not tu then
        return
    end
    local tv = ns(tu)
    local tw = tonumber(tu.stardust) or 0
    local tx = tw
    local tw_1 = tonumber(tu.meteorDebris) or tonumber(LocalPlayer:GetAttribute("MeteorDebris"))
    local tw_2 = tw_1 or 0
    local tu_2 = tonumber(LocalPlayer:GetAttribute("TotalRolls")) or 0
    for i, v in ipairs(SkillTreeConfig.nodes) do
        local tu_3 = type(v) == "table" and v.id and not tv[v.id]
        if tu_3 then
            local tu_4 = tonumber(v.cost) or 0
            local tu_5 = tonumber(v.debrisCost) or 0
            local tu_6 = tonumber(v.minRolls) or 0
            local tu_7 = tu_4 <= tx and tu_5 <= tw_2 and tu_6 <= tu_2 and oh(v, tv)
            if tu_7 then
                oN("UnlockSkillNode", v.id)
                tv[v.id] = true
                tx -= tu_4
                tw_2 -= tu_5
                task.wait(0.2)
            end
        end
    end
end
function fns.onInputChanged(is)
    local UserInputType = is.UserInputType
    local we = UserInputType == Enum.UserInputType.MouseMovement
    local wi = if we then 1 else 0
    local wg = 348 * wi + 419 * (1 - wi)
    local wh = 1464 * wi + 2838 * (1 - wi)
    if not ((wg * 1418 + wh * 823 + wg * wh) % 16777213 == 2207808) then
        we = UserInputType == Enum.UserInputType.Gamepad1
    end
    if we then
        oJ = tick()
    end
end
function fns.onCopyEthereumAddress()
    n2(n_, "Copied Ethereum address")
end
function fns.fn220()
    n2(of, "Copied Discord invite to clipboard")
end
function fns.antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local xm = tick() - oJ
            local xn = tick() - oC
            if xm >= 300 and xn >= 60 then
                pcall(oj)
            else
                if xm < 300 and xn >= 300 then
                    pcall(oj)
                end
            end
        end
    end
end
function fns.fn246()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    oC = tick()
end
function fns.fn249()
    if os.clock() - nW < 0.4 then
        return
    end
    local sC = oq()
    if type(sC) ~= "table" then
        return
    end
    local sD = nY()
    local sE = tonumber(LocalPlayer:GetAttribute("StarWax")) or 0
    for k, v in sC do
        local sC_1 = type(v) == "table" and v.isPolished ~= true
        if sC_1 then
            local sC_2 = v.uuid or ""
            local sE_1 = tostring(sC_2)
            if sE_1 ~= "" and sE_1 ~= sD then
                nW = os.clock()
                oN("Polish_Star", sE_1, sE >= 1)
                return
            end
        end
    end
end
function fns.autoSellStarsLoop()
    while not Library.Unloaded do
        if Toggles.AutoSellStars.Value then
            pcall(oI)
        end
        task.wait(2)
    end
end
function fns.fn283()
    local p6 = nL("RequestInventoryData")
    local p7 = type(p6) == "table" and type(p6.inventory) == "table"
    if p7 then
        return p6.inventory
    end
    return nil
end
function fns.fn292(bF)
    if not bF or not fireproximityprompt then
        return
    end
    local qN_1 = pcall(fireproximityprompt, bF)
    if not qN_1 then
        pcall(fireproximityprompt, bF, 0)
    end
end
function fns.onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local vD_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if vD_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.autoEquipBestStarsLoop()
    while not Library.Unloaded do
        if Toggles.AutoEquipBestStars.Value then
            pcall(oT)
        end
        task.wait(1)
    end
end
function fns.fn368()
    local pD_1
    local pC_1
    if gethui then
        pC_1, pD_1 = pcall(gethui)
        if pC_1 and pD_1 then
            return pD_1
        end
        return CoreGui
    end
    return CoreGui
end
function fns.fn396()
    local ScreenGui = Library.ScreenGui
    if not ScreenGui then
        return
    end
    local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
    local pI = PlayerGui and ScreenGui:IsDescendantOf(PlayerGui)
    if pI then
        ScreenGui.Parent = nt()
    end
    ScreenGui.IgnoreGuiInset = true
    ScreenGui.ClipToDeviceSafeArea = false
    ScreenGui.DisplayOrder = 999
    ScreenGui.ResetOnSpawn = false
    local MainFrame = Library.MainFrame
    local pI_1 = MainFrame and MainFrame:IsA("GuiButton")
    if pI_1 then
        MainFrame.AutoButtonColor = false
    end
    for i, descendant in ScreenGui:GetDescendants() do
        if descendant:IsA("CanvasGroup") then
            if descendant.BackgroundTransparency >= 1 then
                descendant.BackgroundTransparency = 0.99
            end
            if descendant.Visible then
                descendant.GroupTransparency = 0
            end
        elseif descendant:IsA("GuiButton") then
            descendant.AutoButtonColor = false
        end
    end
end
function fns.fn428()
    local qc = nL("Astro_GetState")
    local qd = type(qc) == "table" and qc
    return qd or nil
end
function fns.fn436(cb)
    if cb:IsA("BasePart") then
        return cb.Position
    elseif cb:IsA("Model") then
        return cb:GetPivot().Position
    else
        return nil
    end
end
function fns.fn446()
    local qr = Options.SellRarity and Options.SellRarity.Value
    if type(qr) ~= "string" then
        return 1
    end
    for i, v in ipairs(n7) do
        if v == qr then
            return i
        end
    end
    return 1
end
local function fn454()
    local qf = (LocalPlayer:GetAttribute("EquippedStarPetUuid"))
    local qj = if qf then 1 else 0
    local qh = 3217 * qj + 547 * (1 - qj)
    local qi = 2722 * qj + 3426 * (1 - qj)
    if not ((qh * 3877 + qi * 2711 + qh * qi) % 16777213 == 11831112) then
        qf = ""
    end
    return tostring(qf)
end
local function fn457(bQ)
    local qY = oG()
    if not (qY and bQ) then
        return
    end
    if bQ:IsA("BasePart") then
        qY.CFrame = bQ.CFrame + Vector3.new(0, 5, 0)
    elseif bQ:IsA("Model") then
        local qZ_1 = bQ.PrimaryPart
        local q3 = if qZ_1 then 1 else 0
        local q1 = 2689 * q3 + 2059 * (1 - q3)
        local q2 = 3520 * q3 + 954 * (1 - q3)
        if not ((q1 * 3231 + q2 * 1138 + q1 * q2) % 16777213 == 5381986) then
            qZ_1 = bQ:FindFirstChildWhichIsA("BasePart", true)
        end
        local q_ = qZ_1
        if q_ then
            qY.CFrame = q_.CFrame + Vector3.new(0, 5, 0)
        else
            qY.CFrame = bQ:GetPivot() + Vector3.new(0, 5, 0)
        end
    end
end
local function fn474()
    local uH = nL("GetQuestStatus")
    local uI = type(uH) ~= "table" or type(uH.DailyQuests) ~= "table"
    if uI then
        return
    end
    for i, v in ipairs(uH.DailyQuests) do
        local uH_1 = type(v) == "table" and v.completed == true and v.claimed ~= true and v.id
        if uH_1 then
            nL("ClaimQuest", v.id)
            task.wait(0.15)
        end
    end
end
local function onInputBegan()
    oJ = tick()
end
local function fn482()
    local Islands = Workspace:FindFirstChild("Islands")
    if not Islands then
        return nil
    end
    local UserId = LocalPlayer.UserId
    for i, child in Islands:GetChildren() do
        if child:GetAttribute("OwnerUserId") == UserId then
            return child
        end
    end
    return nil
end
local function fn485()
    local us = og()
    if next(us) == nil then
        return
    end
    local ut = oa()
    if not ut then
        return
    end
    local uv = ut.Blessings or {}
    local uv_1 = tonumber(ut.meteorDebris) or 0
    local ut_1 = uv_1
    local BLESSINGS = Constants.BLESSINGS
    for k in us do
        local us_1 = oc[k]
        local uw = us_1 and uv[us_1]
        if uw == false or uw == 0 or uw == nil then
            local us_4 = BLESSINGS and BLESSINGS[k]
            local uw_3 = us_4
            if us_4 then
                us_4 = tonumber(uw_3.cost)
            end
            local uw_4 = us_4 or 0
            if uw_4 <= ut_1 then
                nL("Astro_Purchase", "Blessing", k, 1)
                ut_1 -= uw_4
                task.wait(0.2)
            end
        end
    end
end
local function fn497()
    if os.clock() - nR >= 3 then
        nR = os.clock()
        oN("Garden_EquipBestStars")
    end
    if os.clock() - nN < 4 then
        return
    end
    nN = os.clock()
    local sn = oq()
    if type(sn) ~= "table" then
        return
    end
    local so = -1
    local sp
    for k, v in sn do
        if type(v) == "table" then
            local starId = v.starId
            local sq = v.variant or "Normal"
            local sr = om(starId, sq)
            if sr > so then
                so = sr
                sp = v
            end
        end
    end
    if not sp then
        return
    end
    local so_1 = sp.uuid or sp.id or ""
    local sn_3 = tostring(so_1)
    local so_2 = sn_3 == ""
    local sB = if so_2 then 1 else 0
    local sz = 1819 * sB + 1683 * (1 - sB)
    local sA = 22 * sB + 3882 * (1 - sB)
    if not ((sz * 3494 + sA * 1347 + sz * sA) % 16777213 == 6425238) then
        so_2 = sn_3 == nY()
    end
    if so_2 then
        return
    end
    oN("ToggleEquipStarPet", sn_3)
end
local function fn504()
    local sO = oq()
    if type(sO) ~= "table" then
        return
    end
    local sP = oQ()
    local sQ = nY()
    local sR = {}
    local sS = {}
    for k, v in sO do
        if type(v) == "table" then
            local sT = v.uuid or v.id or ""
            local sO_2 = tostring(sT)
            if sO_2 ~= sQ then
                local sO_3 = v.variant or "Normal"
                if nO(v.starId, sO_3) <= sP then
                    local sO_4 = tostring(v.starId) .. "_" .. tostring(sO_3) .. "_" .. tostring(v.isPolished == true)
                    local sU = sS[sO_4]
                    if sU then
                        sU.count = sU.count + 1
                    else
                        local sU_1 = { starId = v.starId, variant = sO_3, isPolished = v.isPolished == true, count = 1 }
                        sS[sO_4] = sU_1
                        sR[#sR + 1] = sO_4
                    end
                end
            end
        end
    end
    local sO_5 = {}
    for i, v in ipairs(sR) do
        sO_5[#sO_5 + 1] = sS[v]
    end
    if #sO_5 > 0 then
        oN("SellCart", sO_5)
    end
end
local function fn510(ea, eb)
    if type(ea.requires) ~= "table" then
        return true
    end
    for k, v in ea.requires do
        local tm = type(v) == "string" and not eb[v]
        if tm then
            return false
        end
    end
    return true
end
local function autoClaimQuestsLoop()
    while not Library.Unloaded do
        if Toggles.AutoClaimQuests.Value then
            pcall(nD)
        end
        if Toggles.AutoClaimMail.Value then
            pcall(oO)
        end
        if Toggles.AutoClaimRewards.Value then
            pcall(oe)
        end
        if Toggles.AutoClaimNet.Value then
            pcall(nE)
        end
        task.wait(2)
    end
end
local function fn527()
    local vk_1
    local vj_1
    if identifyexecutor then
        vk_1, vj_1 = identifyexecutor()
        local vl = vk_1 ~= ""
        local vm = type(vk_1) == "string" and vl
        if vm then
            local vl_1 = type(vj_1) == "string" and vj_1 ~= "" and vk_1 .. " " .. vj_1
            nw = vl_1 or vk_1
        end
    end
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            nZ(true)
        end
    end
end
local function onCopySolanaAddress()
    n2(nP, "Copied Solana address")
end
local function fn570()
    local tT = oa()
    if not tT then
        return
    end
    local tU = tonumber(tT.calibrationLevel) or 0
    local tV_1 = Constants.CALIBRATION and Constants.CALIBRATION[tU + 1]
    if type(tV_1) ~= "table" then
        return
    end
    local tU_2 = tonumber(tV_1.cost) or 0
    local tU_3 = tonumber(tT.stardust) or 0
    if tU_2 > 0 and tU_3 >= tU_2 then
        nL("Astro_Purchase", "Calibration", "")
    end
end
local function fn593(d1)
    local s7 = d1
    local s8 = {}
    if s7 then
        s7 = type(d1.unlockedSkillNodes) == "table"
    end
    if s7 then
        for k, v in d1.unlockedSkillNodes do
            if v then
                s8[k] = true
            end
        end
    end
    local s7_1 = nL("GetUnlockedNodes")
    if type(s7_1) == "table" then
        for k, v in s7_1 do
            if type(v) == "string" then
                s8[v] = true
            end
        end
    end
    local s7_2 = SkillTreeConfig.ORIGIN_NODE_ID or "backpack"
    s8[s7_2] = true
    return s8
end
local function onCopyJoinScript_JobID()
    local gI = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, ox)
    n2(gI, "Copied join script to clipboard")
end
local function onCopyPayPalLink()
    n2(nM, "Copied PayPal link")
end
local function worker()
    local vp_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local vo = math.floor(os.clock() - n8)
        if vo < 60 then
            vp_1 = vo .. "s"
        elseif vo < 3600 then
            vp_1 = string.format("%dm %ds", vo // 60, vo % 60)
        else
            vp_1 = string.format("%dh %dm", vo // 3600, vo % 3600 // 60)
        end
        Label:SetText(nu("Session time", vp_1, oL))
    end
end
local function fn687(iG, iH)
    local wm_1 = (iG == "Toggle" and Toggles or Options)[iH]
    local wl_2 = type(wm_1) == "table" and wm_1.Type == iG
    return wl_2 and wm_1 or nil
end
local function fn707(aO)
    return Network:GetRemoteFunction(aO)
end
local function fn708()
    local ww = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local wx = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if wx then
                local wx_1 = n6(k, v)
                if wx_1 then
                    ww[#ww + 1] = wx_1
                end
            end
        end
    end
    table.sort(ww, function(i2, i3)
        if i2.type ~= i3.type then
            return i2.type < i3.type
        end
        return i2.idx < i3.idx
    end)
    return { objects = ww }
end
local function fn714()
    local Character = LocalPlayer.Character
    local pY = Character and Character:FindFirstChildOfClass("Humanoid")
    return pY
end
local function fn728(aL)
    return Network:GetRemoteEvent(aL)
end
local function onCopyLitecoinAddress()
    n2(n5, "Copied Litecoin address")
end
local function onRscripts()
    n2(ob, "Copied Rscripts profile to clipboard")
end
local function onUnload()
    Library:Unload()
end
local function autoBuyDecorTodayLoop()
    while not Library.Unloaded do
        if Toggles.AutoBuyDecorToday.Value then
            pcall(ol)
        end
        if Toggles.AutoBuyStarWax.Value then
            pcall(n4)
        end
        if Toggles.AutoBuyBlessings.Value then
            pcall(oS)
        end
        task.wait(3)
    end
end
local function onRenderStepped()
    if Library.Unloaded then
        return
    end
    local ScreenGui = Library.ScreenGui
    if not ScreenGui then
        return
    end
    for i, descendant in ScreenGui:GetDescendants() do
        local vr_1 = descendant:IsA("CanvasGroup") and descendant.Visible and descendant.GroupTransparency ~= 0
        if vr_1 then
            descendant.GroupTransparency = 0
        end
    end
end
local function autoUpgradeNetLoop()
    while not Library.Unloaded do
        if Toggles.AutoUpgradeNet.Value then
            pcall(od)
        end
        if Toggles.AutoUpgradeTree.Value then
            pcall(nQ)
        end
        if Toggles.AutoCalibration.Value then
            pcall(ny)
        end
        task.wait(2)
    end
end
local function fn838()
    local rA = oG()
    if not rA then
        return
    end
    local rB = oM()
    if #rB == 0 then
        return
    end
    local rC = math.huge
    local rD
    for k, v in rB do
        local rB_1 = oR(v)
        if rB_1 then
            local Magnitude = (rA.Position - rB_1).Magnitude
            if Magnitude < rC then
                rC = Magnitude
                rD = v
            end
        end
    end
    if not rD then
        return
    end
    if rC > 8 then
        oE(rD)
        task.wait(0.08)
    end
    oN("SC_ScreenTapped")
    local ProximityPrompt = rD:FindFirstChildWhichIsA("ProximityPrompt", true)
    if ProximityPrompt and ProximityPrompt.Enabled then
        nI(ProximityPrompt)
    end
end
local function fn865(ay, az, aA)
    return string.format("<b>%s</b> %s %s", ay, nC("-", "#5a6070"), nC(az, aA))
end
local function fn883(av, aw)
    return string.format('<font color="%s">%s</font>', aw, av)
end
local function fn907(iO, iP)
    local Type = iP.Type
    if Type == "Toggle" then
        return { idx = iO, type = "Toggle", value = iP.Value == true }
    elseif Type == "Slider" then
        return { idx = iO, type = "Slider", value = tostring(iP.Value) }
    elseif Type == "Dropdown" then
        return { idx = iO, type = "Dropdown", multi = iP.Multi == true, value = iP.Value }
    elseif Type == "Input" then
        local wt = iP.Value or ""
        return { idx = iO, type = "Input", text = tostring(wt) }
    elseif Type == "ColorPicker" then
        return { idx = iO, type = "ColorPicker", value = iP.Value:ToHex(), transparency = iP.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = iO,
            type = "KeyPicker",
            mode = iP.Mode,
            key = iP.Value,
            modifiers = iP.Modifiers,
            toggled = iP.Toggled
        }
    else
        return nil
    end
end
local function onImportConfigFromClipboardTex()
    local w1_1
    local w_ = Options.SaveManager_ImportSource.Value or ""
    local w__1
    local w0 = tostring(w_):match("^%s*(.-)%s*$")
    if w0 == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    w__1, w1_1 = pcall(HttpService.JSONDecode, HttpService, w0)
    local w0_1 = not w__1 or type(w1_1) ~= "table" or type(w1_1.objects) ~= "table"
    if w0_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local w__2 = 0
    for i, v in ipairs(w1_1.objects) do
        if oB(v) then
            w__2 += 1
        end
    end
    if w__2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local w1_2 = w__2 == 1 and ""
    local xb = if w1_2 then 1 else 0
    local w9 = 1209 * xb + 3734 * (1 - xb)
    local xa = 3921 * xb + 933 * (1 - xb)
    if not ((w9 * 33 + xa * 1042 + w9 * xa) % 16777213 == 8866068) then
        w1_2 = "s"
    end
    Library:Notify(("Imported %d setting%s"):format(w__2, w1_2), 6)
end
local function fn918()
    if connection then
        connection:Disconnect()
    end
    connection2:Disconnect()
    connection3:Disconnect()
    nZ(false)
    local wj = op()
    if wj then
        wj.PlatformStand = false
        wj.WalkSpeed = 16
    end
end
local function onCopyUSDTAddress()
    n2(nU, "Copied USDT address")
end
local function fn927()
    local uQ = nL("Mailbox_GetState")
    local uR = type(uQ) ~= "table"
    local uV = if uR then 1 else 0
    local uT = 3504 * uV + 375 * (1 - uV)
    local uU = 1483 * uV + 3566 * (1 - uV)
    if not ((uT * 1899 + uU * 4057 + uT * uU) % 16777213 == 1089846) then
        uR = type(uQ.mailbox) ~= "table"
    end
    if uR then
        return
    end
    for i, v in ipairs(uQ.mailbox) do
        local uQ_1 = type(v) == "table" and v.claimed ~= true and type(v.mailId) == "string" and v.mailId ~= ""
        if uQ_1 then
            oN("Mailbox_ClaimMail", v.mailId)
            task.wait(0.1)
        end
    end
end
local function fn942()
    local rh = LocalPlayer:GetAttribute("AutoRollUnlocked") == true and LocalPlayer:GetAttribute("AutoRollEnabled") ~= true
    if rh then
        oN("SC_ToggleAutoRoll")
    end
    local rh_1 = LocalPlayer:GetAttribute("SkillManualRollInterval")
    local ri = type(rh_1) ~= "number"
    local rm = if ri then 1 else 0
    local rk = 1420 * rm + 3180 * (1 - rm)
    local rl = 2483 * rm + 2319 * (1 - rm)
    if not ((rk * 1489 + rl * 2952 + rk * rl) % 16777213 == 12970056) then
        ri = rh_1 <= 0
    end
    if ri then
        rh_1 = 5
    end
    if os.clock() - n0 < rh_1 then
        return
    end
    n0 = os.clock()
    oN("SC_ManualRoll")
end
local function onExportConfigToClipboard()
    local wU_1
    local wT_1
    wT_1, wU_1 = pcall(HttpService.JSONEncode, HttpService, nS())
    if not wT_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local wT_2 = setclipboard or toclipboard
    local wT_3 = type(wT_2) ~= "function" or not pcall(wT_2, wU_1)
    if wT_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function fn965()
    local Character = LocalPlayer.Character
    local pV = Character and Character:FindFirstChild("HumanoidRootPart")
    return pV
end
local function fn998()
    local tJ = oa()
    if not tJ then
        return
    end
    local tK = (tonumber(tJ.netTier))
    local tS = if tK then 1 else 0
    local tQ = 633 * tS + 3605 * (1 - tS)
    local tR = 3078 * tS + 328 * (1 - tS)
    if not ((tQ * 1342 + tR * 110 + tQ * tR) % 16777213 == 3136440) then
        tK = 1
    end
    local tL_1 = Constants.NET_TIERS and Constants.NET_TIERS[tK + 1]
    local tK_2 = type(tL_1) ~= "table" or tL_1.locked == true
    if tK_2 then
        return
    end
    local tK_3 = tonumber(tL_1.cost) or 0
    local tK_4 = tonumber(tJ.stardust) or 0
    if tK_3 > 0 and tK_4 >= tK_3 then
        nL("Astro_Purchase", "Net", "")
    end
end
local function fn1014()
    local u4 = nL("GetDailyRewardsStatus")
    local u5 = type(u4) == "table" and u4.CanClaimNow == true
    if u5 then
        nL("ClaimDailyReward")
    end
    local u4_1 = nL("GetTimeRewardsStatus")
    local u5_1 = type(u4_1) == "table" and type(u4_1.Tiers) == "table"
    if u5_1 then
        for i, v in ipairs(u4_1.Tiers) do
            local u4_2 = type(v) == "table" and v.Unlocked == true and v.Claimed ~= true
            if u4_2 then
                nL("ClaimTimeReward", i)
                task.wait(0.15)
            end
        end
    end
    oN("GroupReward_Claim")
    oN("GroupReward_RequestStatus", false)
end
local function onCopyVenmoLink()
    n2(nJ, "Copied Venmo link")
end
local function onCopyBitcoinAddress()
    n2(n3, "Copied Bitcoin address")
end
local function fn1045(ao, ap)
    if setclipboard then
        setclipboard(ao)
    elseif toclipboard then
        toclipboard(ao)
    end
    Library:Notify(ap)
end
local function fn1050()
    if not Toggles.WalkSpeedEnabled.Value then
        local vB = op()
        if vB then
            vB.WalkSpeed = 16
        end
    end
end
local function autoCrackMeteorsLoop()
    while not Library.Unloaded do
        if Toggles.AutoCrackMeteors.Value then
            pcall(n1)
        end
        task.wait(0.15)
    end
end
local function fn1082()
    local uj = tonumber(LocalPlayer:GetAttribute("StarWax")) or 0
    local uk = uj
    if uk >= 5 then
        return
    end
    local uj_1 = oa()
    local ul = uj_1 and tonumber(uj_1.stardust)
    local ul_1 = ul or 0
    local uj_3 = tonumber(Constants.STAR_WAX_COST_PER_UNIT) or 8
    local uj_4 = tonumber(Constants.STAR_WAX_BULK_LIMIT) or 20
    while true do
        if uk < 5 and uk < uj_4 and ul_1 >= uj_3 then
            local uj_6 = nL("Bench_BuyStarWax", 1)
            if uj_6 ~= true then
                break
            end
            uk += 1
            ul_1 -= uj_3
            task.wait(0.15)
            continue
        end
        break
    end
end
ns = nil
nt = nil
nu = nil
nv = nil
nw = nil
Options = nil
ny = nil
Toggles = nil
SaveManager = nil
nC = nil
nD = nil
nE = nil
connection3 = nil
nG = nil
Library = nil
nI = nil
nJ = nil
nK = nil
nL = nil
nM = nil
nN = nil
nO = nil
nP = nil
nQ = nil
nR = nil
nS = nil
nT = nil
nU = nil
connection2 = nil
nW = nil
nY = nil
nZ = nil
n_ = nil
n0 = nil
n1 = nil
n2 = nil
n3 = nil
n4 = nil
n5 = nil
n6 = nil
n7 = nil
n8 = nil
oa = nil
ob = nil
oc = nil
od = nil
oe = nil
local nz, nX, n9
of = nil
og = nil
oh = nil
oi = nil
oj = nil
ol = nil
om = nil
LocalPlayer = nil
SkillTreeConfig = nil
op = nil
oq = nil
Workspace = nil
Constants = nil
CoreGui = nil
Network = nil
ox = nil
oy = nil
Label = nil
oB = nil
oC = nil
HttpService = nil
oE = nil
oG = nil
connection = nil
oI = nil
oJ = nil
VirtualUser = nil
oL = nil
oM = nil
oN = nil
oO = nil
UserInputService = nil
oQ = nil
oR = nil
oS = nil
oT = nil
local GuiService
GuiService = nil
local oF
local AutoUpgradeGroup, Polish_SellGroup, FaqGroup, DonationsGroup, OuroborosHubGroup
UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, LocalPlayer, of, ob, n5, n3, n_, nU, nP, nM, nJ, xv_9, oL, Network, Constants, SkillTreeConfig, oi, oc, n7, xv_12 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local xv_3 = game:GetService("Players")
local xv_6 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
LocalPlayer = xv_3.LocalPlayer
local xv_5 = "Star Catchers"
of = "https://discord.gg/ehKVq7pf7v"
ob = "https://rscripts.net/@Ouroboros"
n5 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
n3 = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
n_ = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
nU = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
if (not xv_12 or xv_5) and (false or not RunService) or (not xv_12 or xv_5 or xv_9 and not UserInputService) or not ((not xv_12 or xv_5) and (false or not RunService) or (not xv_12 or xv_5 or xv_9 and not UserInputService)) then
    nP = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
    nM = "https://paypal.me/TheTruckerGOD"
    nJ = "https://venmo.com/u/miserablemusic"
    xv_14 = "#345d9d"
    xv_9 = "#f7931a"
else
    xv_9 = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
    nP = "https://paypal.me/TheTruckerGOD"
    xv_14 = "https://venmo.com/u/miserablemusic"
    nJ = "#345d9d"
    nM = "#f7931a"
end
local xv_2 = "#627eea"
local xv_13 = "#26a17b"
local xv_7 = "#14f195"
local xv_1 = "#0070ba"
local o9 = "#008cff"
local o8 = "#7fd47f"
local o7 = "#6ec1ff"
oL = "#e8a34d"
local o6 = "#8b93a3"
local xv_15 = xv_6:WaitForChild("Shared")
Network = require(xv_15:WaitForChild("Network"))
Constants = require(xv_15.Definitions:WaitForChild("Constants"))
SkillTreeConfig = require(xv_6:WaitForChild("Modules"):WaitForChild("SkillTree"):WaitForChild("SkillTreeConfig"))
local xv_11 = { "Silver Rolls", "Gold Rolls", "Celestial Strike" }
oi = { ["Silver Rolls"] = "Silver", ["Gold Rolls"] = "Gold", ["Celestial Strike"] = "Celestial" }
oc = { Silver = "SilverRolls", Gold = "GoldRolls", Celestial = "CelestialStrike" }
n7 = Constants.RARITY_NAMES
xv_12 = type(n7) ~= "table"
if not xv_12 then
    xv_3 = 1
    repeat
        local yh = bit32.rrotate(bit32.bxor(bit32.lrotate(xv_3, 28), string.byte(tostring(xv_3))), 16)
        if bit32.bxor(bit32.lrotate(bit32.bxor(yh, 2896113342), 8), 2670640812) ~= bit32.lrotate(yh, 8) then
            n7 = #xv_12 == 0
        else
            xv_12 = #n7 == 0
        end
        xv_3 = (xv_3 + 4) % 8
    until (xv_3 * 5 + 6) % 8 == 7
end
if xv_12 then
    xv_3 = 0
    repeat
        if xv_3 * 35637535 + 4 + 1 <= xv_3 * 35637535 + 4 + 1 + 1 then
            n7 = { "Basic", "Uncommon", "Rare", "Epic", "Legendary" }
        else
            n7 = { "Uncommon", "Basic", "Epic", "Legendary", "Rare" }
        end
        xv_3 = (xv_3 + 2) % 4
    until (xv_3 * 3 + 0) % 4 == 2
end
n0, nW, nR, nN, Library, SaveManager, Toggles, Options, nt, n2, nK, nC, nu, oG, op, n9, nX, nL, oN, oq, oa, nY, nO, oQ, om, nI, nz, oE, og, nG, oR, oM, n1, oy, oT, nT, oI, ns, oh, nQ, od, ny, ol, n4, oS, nD, oO, oe, nE = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
n0 = 0
nW = 0
nR = 0
nN = 0
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
nt = fns.fn368
n2 = fn1045
nK = fns.fn220
nC = fn883
nu = fn865
oG = fn965
op = fn714
n9 = fn728
nX = fn707
nL = function(aR, ...)
    local p_
    p_ = nil
    local p4_1
    local p3_1
    local p2_1
    local p1_1
    local p0_1
    p_ = nX(aR)
    p0_1, p3_1, p2_1, p4_1, p1_1 = pcall(function(...)
        return p_:InvokeServer(...)
    end, ...)
    if not p0_1 then
        return nil
    end
    return p3_1, p2_1, p4_1, p1_1
end
oN = function(a0, ...)
    local a2
    a2 = n9(a0)
    pcall(function(...)
        a2:FireServer(...)
    end, ...)
end
if oq and not n1 and (nE and oq) and ((od or not od) and (not nX or od)) and not (oq and not n1 and (nE and oq) and ((od or not od) and (not nX or od))) then
    nO = fns.fn283
    oQ = fns.fn428
    oa = fn454
    nY = function(be, bf)
        local qo_2
        local qn_2
        qn_2, qo_2 = pcall(function()
            local getDisplayRarityRank = Constants.getDisplayRarityRank
            local ql = bf or "Normal"
            return getDisplayRarityRank(be, ql)
        end)
        local qp = qn_2 and type(qo_2) == "number"
        if qp then
            return qo_2
        end
        return 1
    end
    oq = fns.fn446
else
    oq = fns.fn283
    oa = fns.fn428
    nY = fn454
    nO = function(be, bf)
        local qo_1
        local qn_1
        qn_1, qo_1 = pcall(function()
            local getDisplayRarityRank = Constants.getDisplayRarityRank
            local ql = bf or "Normal"
            return getDisplayRarityRank(be, ql)
        end)
        local qp = qn_1 and type(qo_1) == "number"
        if qp then
            return qo_1
        end
        return 1
    end
    oQ = fns.fn446
end
om = function(bv, bw)
    local qK_1
    local qJ_1
    qJ_1, qK_1 = pcall(function()
        local getCombinedOdds = Constants.getCombinedOdds
        local qE = bw
        local qI = if qE then 1 else 0
        local qG = 80 * qI + 3929 * (1 - qI)
        local qH = 2899 * qI + 1949 * (1 - qI)
        if not ((qG * 3645 + qH * 784 + qG * qH) % 16777213 == 2796336) then
            qE = "Normal"
        end
        return getCombinedOdds(bv, qE)
    end)
    local qL = qJ_1 and type(qK_1) == "number"
    if qL then
        return qK_1
    end
    return 0
end
nI = fns.fn292
nz = fn482
oE = fn457
og = fns.fn68
if ((oS and oS or not ny and not nD) and ((ny or not Library) and (nG or Library)) or (Library or not nG or not oS and Toggles) and ((not nG or nD) and (Toggles or Toggles))) and not ((oS and oS or not ny and not nD) and ((ny or not Library) and (nG or Library)) or (Library or not nG or not oS and Toggles) and ((not nG or nD) and (Toggles or Toggles))) then
    oR = fn942
    n1 = fns.fn436
    nG = function()
        local ro
        ro = nil
        local rr_2
        local rq_3
        local rp = {}
        ro = nz()
        if not ro then
            return rp
        end
        rq_3, rr_2 = pcall(function()
            return ro:QueryDescendants("#StarCallerMeteor")
        end)
        local rs = rq_3 and type(rr_2) == "table"
        if rs then
            for k, v in rr_2 do
                if v.Parent then
                    rp[#rp + 1] = v
                end
            end
        end
        if #rp == 0 then
            local StarCallerMeteor = ro:FindFirstChild("StarCallerMeteor", true)
            if StarCallerMeteor then
                rp[1] = StarCallerMeteor
            end
        end
        return rp
    end
    oM = fn838
else
    nG = fn942
    oR = fns.fn436
    oM = function()
        local ro
        ro = nil
        local rr_1
        local rq_1
        local rp = {}
        ro = nz()
        if not ro then
            return rp
        end
        rq_1, rr_1 = pcall(function()
            return ro:QueryDescendants("#StarCallerMeteor")
        end)
        local rs = rq_1 and type(rr_1) == "table"
        if rs then
            for k, v in rr_1 do
                if v.Parent then
                    rp[#rp + 1] = v
                end
            end
        end
        if #rp == 0 then
            local StarCallerMeteor = ro:FindFirstChild("StarCallerMeteor", true)
            if StarCallerMeteor then
                rp[1] = StarCallerMeteor
            end
        end
        return rp
    end
    n1 = fn838
end
oy = function()
    local rO = oq()
    if type(rO) ~= "table" then
        return
    end
    local rP = nL("GetConstellationData")
    if type(rP) ~= "table" then
        return
    end
    local rQ = nY()
    local rR = {}
    for k, v in rO do
        if type(v) == "table" then
            local rT_1 = v.uuid or v.id or ""
            local rS_2 = tostring(rT_1)
            if rS_2 ~= "" and rS_2 ~= rQ then
                local rS_3 = tostring(v.starId)
                local rT_3 = v.variant or "Normal"
                local rU_2 = rS_3 .. "\x00" .. tostring(rT_3)
                local rS_4 = rR[rU_2] or 0
                rR[rU_2] = rS_4 + 1
            end
        end
    end
    for k, v in rP do
        local rP_1 = type(v) == "table" and v.unlocked == true and v.completed ~= true
        if rP_1 then
            local rP_2 = Constants.CONSTELLATIONS[k]
            local rQ_1 = rP_2 and rP_2.slots
            if type(rQ_1) == "table" then
                for i, v2 in ipairs(rQ_1) do
                    local sg = v2
                    local rP_4 = v.slots
                    if rP_4 then
                        local rQ_2 = v.slots[tostring(i)] or v.slots[i]
                        rP_4 = rQ_2
                    end
                    local rQ_3 = rP_4
                    if rQ_3 == nil or rQ_3 == false then
                        local rP_6 = nil
                        local rQ_4 = nil
                        local rS_6 = nil
                        for k, v in rO do
                            local rM
                            local sm = v
                            local rT_4 = type(sm) == "table" and type(sg) == "table"
                            if rT_4 then
                                local rN = sm.variant or "Normal"
                                local rT_6 = tostring(sm.starId) .. "\x00" .. tostring(rN)
                                if (rR[rT_6] or 0) > 0 then
                                    rM = false
                                    local rU_4 = pcall(function()
                                        rM = Constants.doesStarMatchSlot(sm.starId, rN, sg) == true
                                    end)
                                    if rU_4 and rM then
                                        local rU_5 = om(sm.starId, rN)
                                        if rP_6 == nil or rU_5 < rP_6 then
                                            rS_6 = sm
                                            rP_6 = rU_5
                                            rQ_4 = rT_6
                                        end
                                    end
                                end
                            end
                        end
                        if rS_6 then
                            rR[rQ_4] = rR[rQ_4] - 1
                            local starId = rS_6.starId
                            local rQ_5 = rS_6.variant or "Normal"
                            nL("PlaceConstellationStar", k, i, starId, rQ_5)
                            task.wait(0.15)
                        end
                    end
                end
            end
        end
    end
end
oT = fn497
nT = fns.fn249
oI = fn504
ns = fn593
oh = fn510
nQ = fns.fn138
od = fn998
ny = fn570
ol = function()
    local t2
    local t8_1
    local t3 = oa()
    local t4 = t3 and tonumber(t3.stardust)
    local t5 = t4 or 0
    local t5_6
    local t4_1 = t3
    local t6 = t5
    if t4_1 then
        t4_1 = t3.ownedDecor
    end
    local t5_1 = t4_1 or {}
    t2 = nil
    local t4_2 = pcall(function()
        t2 = Constants.getRotatingDecor(nil, true, LocalPlayer.UserId)
    end)
    local t5_2 = not t4_2
    local uc = if t5_2 then 1 else 0
    local ua = 3152 * uc + 1710 * (1 - uc)
    local ub = 2160 * uc + 1926 * (1 - uc)
    if not ((ua * 3569 + ub * 1235 + ua * ub) % 16777213 == 3948195) then
        t5_2 = type(t2) ~= "table"
    end
    if t5_2 then
        return
    end
    for i, v in ipairs(t2) do
        if type(v) == "string" then
            local t4_3 = t5_1[v]
            if t4_3 == nil or t4_3 == 0 then
                local t4_4 = Constants.getDecorDef and Constants.getDecorDef(v)
                local t5_4 = t4_4
                if t4_4 then
                    t4_4 = tonumber(t5_4.cost)
                end
                local t5_5 = t4_4 or 0
                local t4_5 = true
                if Constants.isDecorBuyable then
                    t5_6, t8_1 = pcall(Constants.isDecorBuyable, v)
                    if t5_6 then
                        t4_5 = t8_1 ~= false
                    end
                end
                local t5_7 = t4_5
                if t5_7 then
                    t5_7 = t5_5 <= 0 or t6 >= t5_5
                end
                if t5_7 then
                    nL("Decor_Purchase", "Buy", v)
                    t6 -= t5_5
                    task.wait(0.2)
                end
            end
        end
    end
end
n4 = fn1082
oS = fn485
nD = fn474
oO = fn927
oe = fn1014
nE = function()
    oN("AFK_SetState", false)
    local ve = tonumber(LocalPlayer:GetAttribute("TimeAwaySeconds")) or 0
    local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
    local vg = PlayerGui and PlayerGui:FindFirstChild("AFKClaimUI")
    local vg_1 = ve <= 0
    if vg_1 then
        vg_1 = not (vg and vg.Enabled ~= false)
    end
    if vg_1 then
        return
    end
    local vf_2 = nz()
    local vg_2 = vf_2 and vf_2:FindFirstChild("AFK_Net")
    local vh = vg_2
    local vg_3 = not vh
    if vg_3 ~= false then
        vg_3 = vf_2
    end
    if vg_3 then
        vh = vf_2:FindFirstChild("AFK_Net", true)
    end
    if vh then
        oE(vh)
    end
    if not vg then
        return
    end
    local vf_3 = vg:FindFirstChild("AcceptBtn", true) or vg:FindFirstChild("Accept", true)
    local vd = vf_3
    local ve_3 = vd and vd:IsA("GuiButton")
    if ve_3 then
        pcall(function()
            firesignal(vd.Activated)
        end)
        pcall(function()
            firesignal(vd.MouseButton1Click)
        end)
    end
end
xv_15 = Library:CreateWindow({
    Title = "Ouroboros Hub[Beta]",
    Footer = { { Text = of, Copyable = true }, "|", xv_5 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
Library.ShowCustomCursor = false
local pc = {
    Info = xv_15:AddTab("Info", "info"),
    Main = xv_15:AddTab("Main", "sparkles"),
    Player = xv_15:AddTab("Player", "person-standing"),
    Settings = xv_15:AddTab("Settings", "settings")
}
pc.Farm = pc.Main:AddSubTab("Farm", "sparkles")
pc.Upgrades = pc.Main:AddSubTab("Upgrades", "trending-up")
pc.Shop = pc.Main:AddSubTab("Shop", "shopping-bag")
pc.Claim = pc.Main:AddSubTab("Claim", "gift")
xv_12 = fns.fn70
for k, v in pc do
    if v ~= pc.Main then
        xv_12(v)
    end
end
nw = nil
xv_3 = 6
repeat
    xv_10 = (xv_3 * 1 + 1) % 2 + 1
    if xv_10 <= 1 then
        xv_10 = {
            "pikxbwx",
            "pcnpicxj",
            "uzvc",
            "fpxhrzcqeg",
            "jjb",
            "jmmsft",
            "viuqqwx",
            "qsk",
            "kexfdlessw",
            "hzp",
            "azrq",
            "jgmoahtuy",
            "ywileiq",
            "djtydvutt",
            "qyvcmowofgoo",
            "mcju"
        }
        if xv_10[(xv_3 * 18 + 36) % 16 + 1] <= xv_10[(xv_3 * 18 + 36) % 16 + 1] then
            pcall(fn527)
        else
            pcall(fn527)
        end
        xv_3 = (xv_3 + 9) % 16
    else
        xv_10 = {
            "awrrasmf",
            "qvywkbaydyom",
            "ywa",
            "hgla",
            "dfrkv",
            "qmtwpolbfvt",
            "psbvamxyruvf",
            "ckdqbjpteww",
            "uzhoqqmjbrbj",
            "tkccqybzyuz",
            "klvvvrxnml",
            "voqdrekjker",
            "hkexnuhztz",
            "eax"
        }
        if xv_10[(xv_3 * 42 + 25) % 14 + 1] < xv_10[(xv_3 * 42 + 25) % 14 + 1] then
            nw = "Unknown"
        else
            nw = "Unknown"
        end
        xv_3 = (xv_3 + 3) % 16
    end
until (xv_3 * 5 + 8) % 16 == 2
xv_12, Label, ox, xv_6 = nil, nil, nil, nil
xv_10 = 3
repeat
    xv_3 = (xv_10 * 1 + 2) % 3 + 1
    if xv_3 <= 2 then
        if xv_3 <= 1 then
            local yK = bit32.rrotate(bit32.bxor(bit32.lrotate(xv_10, 19), string.byte(tostring(ox))), 30)
            if bit32.bxor(bit32.lrotate(bit32.bxor(yK, 2750190681), 18), 1365675954) ~= bit32.lrotate(yK, 18) then
                xv_6 = tostring(game.JobId)
            else
                ox = tostring(game.JobId)
            end
            xv_10 = (xv_10 + 4) % 12
        else
            if ((xv_12 and xv_6 or (xv_6 or not ox)) and ((xv_6 or ox) and (not ox or xv_6)) and (not ox or xv_6 or not xv_6 and not xv_12 or ox and xv_6 and (not ox or not xv_12)) or (xv_6 and not xv_12 or xv_6 and xv_12 or (not xv_12 or xv_6 or (xv_12 or ox))) and (not xv_6 and not ox and (xv_12 and not xv_6) and (not xv_6 and not xv_12 or xv_6 and not xv_6))) and not ((xv_12 and xv_6 or (xv_6 or not ox)) and ((xv_6 or ox) and (not ox or xv_6)) and (not ox or xv_6 or not xv_6 and not xv_12 or ox and xv_6 and (not ox or not xv_12)) or (xv_6 and not xv_12 or xv_6 and xv_12 or (not xv_12 or xv_6 or (xv_12 or ox))) and (not xv_6 and not ox and (xv_12 and not xv_6) and (not xv_6 and not xv_12 or xv_6 and not xv_6))) then
                ox = #xv_6 > 18
            else
                xv_6 = #ox > 18
            end
            xv_10 = (xv_10 + 4) % 12
        end
    else
        local yE = bit32.rrotate(bit32.bxor(bit32.lrotate(xv_10, 1), string.byte(tostring(xv_6))), 23)
        if bit32.bxor(bit32.lrotate(bit32.bxor(yE, 1147590442), 8), 1725377092) ~= bit32.lrotate(yE, 8) then
            xv_12 = nu.Info:AddLeftGroupbox("Account", "circle-user")
            xv_12:AddLabel(nw("User", nil, xv_5), true)
            xv_12:AddLabel(nw("Status", "Keyless", xv_5), true)
            xv_12:AddLabel(nw("Executor", LocalPlayer, xv_5), true)
            pc = nu.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            pc:AddLabel(Label(o8 .. " [" .. tostring(game.PlaceId) .. "]", oL), true)
            pc:AddLabel(nw("Place ID", tostring(game.PlaceId), oL), true)
            pc:AddLabel(nw("Session time", "0s", nC), true)
        else
            xv_15 = pc.Info:AddLeftGroupbox("Account", "circle-user")
            xv_15:AddLabel(nu("User", LocalPlayer.Name, o8), true)
            xv_15:AddLabel(nu("Status", "Keyless", o8), true)
            xv_15:AddLabel(nu("Executor", nw, o8), true)
            xv_12 = pc.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            xv_12:AddLabel(nC(xv_5 .. " [" .. tostring(game.PlaceId) .. "]", o7), true)
            xv_12:AddLabel(nu("Place ID", tostring(game.PlaceId), o7), true)
            Label = xv_12:AddLabel(nu("Session time", "0s", oL), true)
        end
        xv_10 = (xv_10 + 7) % 12
    end
until (xv_10 * 11 + 7) % 12 == 1
if xv_6 then
    xv_3 = 3
    repeat
        xv_10 = (vector.create((xv_3 * 5 + 9) % 11 + 1, (xv_3 * 8 + 13) % 13 + 1, (xv_3 * 2 + 8) % 17 + 1))
        xv_15 = (vector.create((xv_3 * 3 + 8) % 11 + 1, (xv_3 * 10 + 13) % 13 + 1, (xv_3 * 5 + 1) % 17 + 1))
        local yi = vector.cross(xv_10, xv_15)
        local yj = vector.dot(xv_10, xv_15)
        if vector.dot(yi, yi) + yj * yj == vector.dot(xv_10, xv_10) * vector.dot(xv_15, xv_15) + 3 then
            ox = string.sub(xv_6, 1, 18) .. "..."
        else
            xv_6 = string.sub(ox, 1, 18) .. "..."
        end
        xv_3 = (xv_3 + 2) % 8
    until (xv_3 * 7 + 5) % 8 == 0
end
xv_3 = xv_6 or ox
n8, OuroborosHubGroup, DonationsGroup, FaqGroup, Polish_SellGroup, AutoUpgradeGroup, xv_6 = nil, nil, nil, nil, nil, nil, nil
local pn = xv_3
xv_12:AddLabel(nu("Server", pn, o6), true)
xv_12:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
n8 = os.clock()
task.spawn(worker)
local ScriptsGroup = pc.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(nC("Included in this hub", o6), true)
ScriptsGroup:AddLabel(nC(xv_5, o7), true)
local FeaturesGroup = pc.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(nC("Auto Farm", o7), true)
FeaturesGroup:AddLabel(nC("Auto Upgrade", oL), true)
FeaturesGroup:AddLabel(nC("Auto Shop", o8), true)
FeaturesGroup:AddLabel(nC("Auto Claim", o6), true)
xv_15 = pc.Info:AddRightGroupbox("Socials", "link")
if ((not pn or not xv_6) and (not pn and pn) or (not pn and not pn or (xv_6 or not pn))) and ((not pn or pn) and (pn and pn) or (xv_6 or xv_6) and (not xv_6 or not pn)) and not (((not pn or not xv_6) and (not pn and pn) or (not pn and not pn or (xv_6 or not pn))) and ((not pn or pn) and (pn and pn) or (xv_6 or xv_6) and (not xv_6 or not pn))) then
    nK:AddButton({ Text = "Discord", Func = xv_15 })
    nK:AddButton({ Text = "Rscripts", Func = onRscripts })
    pc = OuroborosHubGroup.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
else
    xv_15:AddButton({ Text = "Discord", Func = nK })
    xv_15:AddButton({ Text = "Rscripts", Func = onRscripts })
    OuroborosHubGroup = pc.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
end
if AutoUpgradeGroup and not Polish_SellGroup and (AutoUpgradeGroup and not OuroborosHubGroup) and (AutoUpgradeGroup and not Polish_SellGroup or (OuroborosHubGroup or not OuroborosHubGroup)) or (not AutoUpgradeGroup or not AutoUpgradeGroup or Polish_SellGroup and not OuroborosHubGroup) and (Polish_SellGroup and Polish_SellGroup or (not AutoUpgradeGroup or AutoUpgradeGroup)) or not (AutoUpgradeGroup and not Polish_SellGroup and (AutoUpgradeGroup and not OuroborosHubGroup) and (AutoUpgradeGroup and not Polish_SellGroup or (OuroborosHubGroup or not OuroborosHubGroup)) or (not AutoUpgradeGroup or not AutoUpgradeGroup or Polish_SellGroup and not OuroborosHubGroup) and (Polish_SellGroup and Polish_SellGroup or (not AutoUpgradeGroup or AutoUpgradeGroup))) then
    OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = nK })
    DonationsGroup = pc.Info:AddRightGroupbox("Donations", "heart")
else
    nK:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    nK:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    nK:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    nK:AddButton({ Text = "Copy Discord Invite", Func = OuroborosHubGroup })
    pc = DonationsGroup.Info:AddRightGroupbox("Donations", "heart")
end
if (xv_6 or false) and not (xv_6 or false) then
    o6:AddLabel(xv_2("All donations are optional but appreciated.", o7), true)
    o6:AddLabel(xv_2("If you donate you get a special role, just PING after you donate.", pc), true)
    o6:AddDivider()
    o6:AddLabel(xv_2("LTC / Litecoin", xv_7), true)
    o6:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
    o6:AddLabel(xv_2("BTC / Bitcoin", nC), true)
    o6:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
    o6:AddLabel(xv_2("ETH / Ethereum", xv_14), true)
    o6:AddButton({ Text = "Copy Ethereum Address", Func = fns.onCopyEthereumAddress })
    o6:AddLabel(xv_2("USDT", o8), true)
    o6:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
    o6:AddLabel(xv_2("Solana", o9), true)
    o6:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
    o6:AddLabel(xv_2("PayPal", oL), true)
    o6:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
    o6:AddLabel(xv_2("Venmo", xv_1), true)
    o6:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
    o6:AddDivider()
    o6:AddLabel(xv_2("Don't have any of the listed currencies but still wanna donate?", xv_9), true)
    o6:AddLabel(xv_2("DM me and we'll work something out.", xv_13), true)
    FaqGroup.Info:AddRightGroupbox("FAQ", "circle-help")
else
    DonationsGroup:AddLabel(nC("All donations are optional but appreciated.", oL), true)
    DonationsGroup:AddLabel(nC("If you donate you get a special role, just PING after you donate.", o8), true)
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(nC("LTC / Litecoin", xv_14), true)
    DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
    DonationsGroup:AddLabel(nC("BTC / Bitcoin", xv_9), true)
    DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
    DonationsGroup:AddLabel(nC("ETH / Ethereum", xv_2), true)
    DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = fns.onCopyEthereumAddress })
    DonationsGroup:AddLabel(nC("USDT", xv_13), true)
    DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
    DonationsGroup:AddLabel(nC("Solana", xv_7), true)
    DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
    DonationsGroup:AddLabel(nC("PayPal", xv_1), true)
    DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
    DonationsGroup:AddLabel(nC("Venmo", o9), true)
    DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(nC("Don't have any of the listed currencies but still wanna donate?", o6), true)
    DonationsGroup:AddLabel(nC("DM me and we'll work something out.", o7), true)
    FaqGroup = pc.Info:AddRightGroupbox("FAQ", "circle-help")
end
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
local AutoFarmGroup = pc.Farm:AddLeftGroupbox("Auto Farm", "sparkles")
AutoFarmGroup:AddToggle("AutoFillObservatories", { Text = "Auto Fill Observatories", Default = false })
AutoFarmGroup:AddToggle("AutoEquipBestStars", { Text = "Auto Equip Best Stars", Default = false })
AutoFarmGroup:AddToggle("AutoCrackMeteors", { Text = "Auto Crack Meteors", Default = false })
AutoFarmGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
Polish_SellGroup = pc.Farm:AddRightGroupbox("Polish & Sell", "star")
Polish_SellGroup:AddToggle("AutoPolishStars", { Text = "Auto Polish Stars", Default = false })
Polish_SellGroup:AddToggle("AutoSellStars", { Text = "Auto Sell Stars", Default = false })
Polish_SellGroup:AddDropdown("SellRarity", { Text = "Sell Up To", Values = n7, Default = "Uncommon" })
AutoUpgradeGroup = pc.Upgrades:AddLeftGroupbox("Auto Upgrade", "trending-up")
AutoUpgradeGroup:AddToggle("AutoUpgradeNet", { Text = "Auto Upgrade Net", Default = false })
AutoUpgradeGroup:AddToggle("AutoUpgradeTree", { Text = "Auto Upgrade Tree", Default = false })
AutoUpgradeGroup:AddToggle("AutoCalibration", { Text = "Auto Calibration Telescope", Default = false })
local AutoBuyGroup = pc.Shop:AddLeftGroupbox("Auto Buy", "shopping-bag")
AutoBuyGroup:AddToggle("AutoBuyDecorToday", { Text = "Auto Buy Today's Selection", Default = false })
AutoBuyGroup:AddToggle("AutoBuyStarWax", { Text = "Auto Buy Star Wax", Default = false })
AutoBuyGroup:AddToggle("AutoBuyBlessings", { Text = "Auto Buy Blessings", Default = false })
AutoBuyGroup:AddDropdown("BlessingTypes", { Text = "Blessings", Values = xv_11, Default = { "Silver Rolls" }, Multi = true })
local AutoClaimGroup = pc.Claim:AddLeftGroupbox("Auto Claim", "gift")
AutoClaimGroup:AddToggle("AutoClaimQuests", { Text = "Auto Claim Quests", Default = false })
AutoClaimGroup:AddToggle("AutoClaimMail", { Text = "Auto Claim Mail", Default = false })
AutoClaimGroup:AddToggle("AutoClaimRewards", { Text = "Auto Claim Rewards", Default = false })
AutoClaimGroup:AddToggle("AutoClaimNet", { Text = "Auto Claim Net", Default = false })
xv_6 = pc.Player:AddLeftGroupbox("Movement", "footprints")
xv_6:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
xv_6:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
xv_6:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
xv_6:AddToggle("NoClip", { Text = "NoClip", Default = false })
xv_6:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
xv_10 = pc.Player:AddRightGroupbox("Fly", "feather")
xv_10:AddToggle("Fly", { Text = "Fly", Default = false })
xv_10:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
connection, nv, oJ, oC, connection2, connection3, nZ, oj, oF, n6, nS, oB = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
fns.fn396()
connection = RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fns.fn136)
Toggles.WalkSpeedEnabled:OnChanged(fn1050)
RunService.Stepped:Connect(fns.onStepped)
UserInputService.JumpRequest:Connect(fns.onJumpRequest)
nv = Workspace.CurrentCamera
RunService.RenderStepped:Connect(fns.onRenderStepped2)
nZ = function(h_)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not h_)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not h_
        end
    end)
    if not h_ then
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
Toggles.AntiGameplayPause:OnChanged(fns.fn116)
local MenuGroup = pc.Settings:AddLeftGroupbox("Menu", "wrench")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
oJ = tick()
oC = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local wa = v
        pcall(function()
            wa:Disable()
        end)
    end
end)
oj = fns.fn246
connection2 = UserInputService.InputBegan:Connect(onInputBegan)
connection3 = UserInputService.InputChanged:Connect(fns.onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
Library:OnUnload(fn918)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/StarCatchers")
local pr = SaveManager:BuildConfigSection(pc.Settings)
oF = fn687
n6 = fn907
if (MenuGroup or oJ) and (not oJ and MenuGroup) and ((MenuGroup or not MenuGroup) and (not oJ and MenuGroup)) and not ((MenuGroup or oJ) and (not oJ and MenuGroup) and ((MenuGroup or not MenuGroup) and (not oJ and MenuGroup))) then
    oB = fn708
    nS = function(i5)
        local wQ
        wQ = nil
        local wR = type(i5) ~= "table" or type(i5.idx) ~= "string" or type(i5.type) ~= "string" or SaveManager.Ignore[i5.idx]
        if wR then
            return false
        end
        wQ = oF(i5.type, i5.idx)
        if not wQ then
            return false
        end
        local wR_2 = pcall(function()
            if i5.type == "Input" then
                if type(i5.text) ~= "string" then
                    return
                end
                wQ:SetValue(i5.text)
            elseif i5.type == "ColorPicker" then
                wQ:SetValueRGB(Color3.fromHex(i5.value), i5.transparency)
            elseif i5.type == "KeyPicker" then
                wQ:SetValue({ i5.key, i5.mode, i5.modifiers })
                if i5.mode == "Toggle" and i5.toggled ~= nil then
                    wQ.Toggled = i5.toggled
                    wQ:Update()
                end
            else
                wQ:SetValue(i5.value)
            end
        end)
        return wR_2
    end
else
    nS = fn708
    oB = function(i5)
        local wQ
        wQ = nil
        local wR = type(i5) ~= "table" or type(i5.idx) ~= "string" or type(i5.type) ~= "string" or SaveManager.Ignore[i5.idx]
        if wR then
            return false
        end
        wQ = oF(i5.type, i5.idx)
        if not wQ then
            return false
        end
        local wR_1 = pcall(function()
            if i5.type == "Input" then
                if type(i5.text) ~= "string" then
                    return
                end
                wQ:SetValue(i5.text)
            elseif i5.type == "ColorPicker" then
                wQ:SetValueRGB(Color3.fromHex(i5.value), i5.transparency)
            elseif i5.type == "KeyPicker" then
                wQ:SetValue({ i5.key, i5.mode, i5.modifiers })
                if i5.mode == "Toggle" and i5.toggled ~= nil then
                    wQ.Toggled = i5.toggled
                    wQ:Update()
                end
            else
                wQ:SetValue(i5.value)
            end
        end)
        return wR_1
    end
end
do
    pr:AddDivider()
    pr:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    pr:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
    pr:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
    ThemeManager:ApplyToTab(pc.Settings)
    ThemeManager:LoadDefault()
    SaveManager:LoadAutoloadConfig()
    task.spawn(fns.autoRollLoop)
    task.spawn(autoCrackMeteorsLoop)
    task.spawn(fns.autoFillObservatoriesLoop)
    task.spawn(fns.autoEquipBestStarsLoop)
    task.spawn(fns.autoPolishStarsLoop)
    task.spawn(fns.autoSellStarsLoop)
    task.spawn(autoUpgradeNetLoop)
    task.spawn(autoBuyDecorTodayLoop)
    task.spawn(autoClaimQuestsLoop)
    task.spawn(antiGameplayPauseLoop)
    task.spawn(fns.antiAfkLoop)
    Library:Notify("Star Catchers loaded")
end
