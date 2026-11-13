local ki
local connection2
local j_
local TitleFunction
local ko
local ClickTrainEvent
local j5
local kO
local kv
local kU
local kB
local kh
local k_
local kH
local connection
local Library
local j4
local SaveManager
local kA
local kg
local kZ
local kG
local km
local j3
local kM
local ks
local j9
local kS
local kf
local kY
local Options
local kl
local k3
local j2
local Toggles
local kr
local k9
local j8
local UserInputService
local ky
local ke
local PetFunction
local HttpService
local kk
local RebirthFunction
local j1
local VirtualUser
local kq
local k8
local j7
local kQ
local kx
local kd
local kW
local kj
local k1
local j0
local kJ
local kp
local k7
local j6
local kP
local CurrentCamera2
local kV
local function fn38()
    if not Toggles.Fly.Value then
        local qN = kq()
        if qN then
            qN.PlatformStand = false
        end
    end
end
local function worker9()
    while not Library.Unloaded do
        if j0("AutoBuyBoosts") then
            pcall(j7)
        end
        task.wait(kG("BoostDelay", 2))
    end
end
local function fn56()
    local CurrentCamera = kx.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    j9 = tick()
end
local function worker12()
    while not Library.Unloaded do
        if j0("AutoRollTitle") then
            pcall(kH)
        end
        task.wait(kG("TitleRollDelay", 1))
    end
end
local function fn72()
    local nb = {}
    local nc = {
        kx:FindFirstChild("PrototypeTrainingArea"),
        kx:FindFirstChild("World2"),
        kx:FindFirstChild("World3")
    }
    for i, v in ipairs(nc) do
        if v then
            for i, descendant in ipairs(v:GetDescendants()) do
                local nc_1 = descendant:IsA("BasePart") and descendant.Name:find("TrainingPad", 1, true) and not descendant.Name:find("_Base", 1, true)
                if nc_1 then
                    local nc_2 = tonumber(descendant:GetAttribute("Multiplier")) or 0
                    local nc_3 = tonumber(descendant:GetAttribute("RebirthReq")) or 0
                    local attr = descendant:GetAttribute("PassId")
                    nb[#nb + 1] = { Part = descendant, Multiplier = nc_2, RebirthReq = nc_3, PassId = attr }
                end
            end
        end
    end
    return nb
end
local function fn92()
    local leaderstats = kr:FindFirstChild("leaderstats")
    local mE = leaderstats and leaderstats:FindFirstChild("Rebirths")
    if mE then
        local mE_1 = tonumber(mE.Value) or 0
        return mE_1
    end
    local Rebirths = kr:FindFirstChild("Rebirths")
    local mE_2 = Rebirths
    if mE_2 then
        local mF = tonumber(Rebirths.Value) or 0
        mE_2 = mF
    end
    return mE_2 or 0
end
local function onImportConfigFromClipboardTex()
    local qy_1
    local qw = Options.SaveManager_ImportSource.Value
    local qw_1
    local qC = if qw then 1 else 0
    local qA = 2183 * qC + 2362 * (1 - qC)
    local qB = 1413 * qC + 930 * (1 - qC)
    if not ((qA * 2446 + qB * 546 + qA * qB) % 16777213 == 9195695) then
        qw = ""
    end
    local qx = tostring(qw):match("^%s*(.-)%s*$")
    if qx == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    qw_1, qy_1 = pcall(HttpService.JSONDecode, HttpService, qx)
    local qx_1 = not qw_1 or type(qy_1) ~= "table" or type(qy_1.objects) ~= "table"
    if qx_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local qw_2 = 0
    for i, v in ipairs(qy_1.objects) do
        if j5(v) then
            qw_2 += 1
        end
    end
    if qw_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local qy_2 = qw_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(qw_2, qy_2), 6)
end
local function fn124()
    local Character = kr.Character
    local mr = Character and Character:FindFirstChild("HumanoidRootPart")
    return mr
end
local function onRenderStepped(gx)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local q3_1 = kq()
        if q3_1 then
            q3_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local q3_3 = j2()
        local q4 = kq()
        if q3_3 and q4 then
            q4.PlatformStand = true
            local q4_1 = Vector3.zero
            local q9 = if UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
            if q9 == 1 then
                q4_1 = q4_1 + CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                q4_1 = q4_1 - CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                q4_1 = q4_1 - CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                q4_1 = q4_1 + CurrentCamera2.CFrame.RightVector
            end
            local rc = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
            if rc == 1 then
                q4_1 = q4_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                q4_1 = q4_1 - Vector3.new(0, 1, 0)
            end
            q3_3.Velocity = Vector3.zero
            if q4_1.Magnitude > 0 then
                q3_3.CFrame = q3_3.CFrame + q4_1.Unit * Options.FlySpeed.Value * gx
            end
        end
    end
end
local function fn142()
    local nI_1
    local nH_1
    nH_1, nI_1 = pcall(function()
        return RebirthFunction:InvokeServer("GetState")
    end)
    local nJ = not nH_1 or type(nI_1) ~= "table"
    if nJ then
        return
    end
    if nI_1.CanRebirth then
        pcall(function()
            RebirthFunction:InvokeServer("Rebirth")
        end)
    end
end
local function fn149()
    pcall(function()
        PetFunction:InvokeServer("EquipBest")
    end)
end
local function fn154(es)
    local DiscordGroup = es:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = kg })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = kg })
end
local function fn180(Q, R)
    return string.format('<font color="%s">%s</font>', R, Q)
end
local function onInputChanged(gY)
    local UserInputType = gY.UserInputType
    local rn = UserInputType == Enum.UserInputType.MouseMovement
    local rr = if rn then 1 else 0
    local rp = 1227 * rr + 805 * (1 - rr)
    local rq = 2334 * rr + 1009 * (1 - rr)
    if not ((rp * 3748 + rq * 182 + rp * rq) % 16777213 == 7887402) then
        rn = UserInputType == Enum.UserInputType.Gamepad1
    end
    if rn then
        kj = tick()
    end
end
local function fn188()
    local n1_1
    local EggHatchUI = kl:FindFirstChild("EggHatchUI")
    local n__2
    local n0 = not EggHatchUI or not getsenv
    local n0_1, n0_2
    if n0 then
        return false
    end
    n0_1, n1_1 = pcall(getsenv, EggHatchUI)
    local n__1 = n0_1 and type(n1_1) == "table" and type(n1_1._G) == "table" and type(n1_1._G.IsEggRollAnimating) == "function"
    if n__1 then
        n__2, n0_2 = pcall(n1_1._G.IsEggRollAnimating)
        return n__2 and n0_2 == true
    end
    return false
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            kY(true)
        end
    end
end
local function fn205()
    kk()
end
local function worker6()
    while not Library.Unloaded do
        if j0("AutoTrain") then
            pcall(km)
        end
        task.wait(kG("TrainDelay", 0.05))
    end
end
local function fn250()
    local ns = kS()
    local nt = -1
    local Part
    for i, v in ipairs(j1()) do
        local nv = v.RebirthReq <= ns and k3(v.PassId) and v.Multiplier > nt
        if nv then
            Part = v.Part
            nt = v.Multiplier
        end
    end
    return Part
end
local function fn259()
    local mV_1
    local AutoWinsClient = kl:FindFirstChild("AutoWinsClient")
    local mU = not AutoWinsClient or not getsenv
    local mU_1
    if mU then
        return nil
    end
    mU_1, mV_1 = pcall(getsenv, AutoWinsClient)
    local mT_1 = not mU_1 or type(mV_1) ~= "table"
    if mT_1 then
        return nil
    end
    local _G = mV_1._G
    local mU_2 = type(_G) == "table" and type(_G.AutoPlaySetOn) == "function"
    if mU_2 then
        return _G
    end
    return nil
end
local function fn280(J, K)
    if setclipboard then
        setclipboard(J)
    elseif toclipboard then
        toclipboard(J)
    end
    Library:Notify(K)
end
local function fn283()
    pcall(function()
        ClickTrainEvent:FireServer(nil)
    end)
end
local function onInputBegan()
    kj = tick()
end
local function fn297()
    kY(Toggles.AntiGameplayPause.Value)
end
local function fn311(aF)
    local Character = kr.Character
    if not Character then
        return
    end
    if Character.PrimaryPart then
        Character:PivotTo(aF)
    else
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
        if HumanoidRootPart then
            HumanoidRootPart.CFrame = aF
        end
    end
end
local function fn319()
    pcall(function()
        TitleFunction:InvokeServer("Roll", "base")
    end)
end
local function fn342(ac)
    local lW = Toggles[ac]
    return lW ~= nil and lW.Value == true
end
local function fn348(fc, fd)
    local pT_1 = (fc == "Toggle" and Toggles or Options)[fd]
    local pS_2 = type(pT_1) == "table" and pT_1.Type == fc
    return pS_2 and pT_1 or nil
end
local function worker11()
    while not Library.Unloaded do
        if j0("AutoEquipBestPet") then
            pcall(k1)
        end
        task.wait(kG("EquipBestDelay", 5))
    end
end
local function onUnload()
    Library:Unload()
end
local function fn384()
    local p5 = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local p6 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if p6 then
                local p6_1 = kA(k, v)
                if p6_1 then
                    p5[#p5 + 1] = p6_1
                end
            end
        end
    end
    table.sort(p5, function(fy, fz)
        if fy.type ~= fz.type then
            return fy.type < fz.type
        end
        return fy.idx < fz.idx
    end)
    return { objects = p5 }
end
local function onExportConfigToClipboard()
    local qq_1
    local qp_1
    qp_1, qq_1 = pcall(HttpService.JSONEncode, HttpService, kh())
    if not qp_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local qp_2 = setclipboard or toclipboard
    local qp_3 = type(qp_2) ~= "function" or not pcall(qp_2, qq_1)
    if qp_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function fn405()
    kB(j8, "Copied Discord invite to clipboard")
end
local function fn443()
    local pI_1
    local pH_1
    if identifyexecutor then
        pI_1, pH_1 = identifyexecutor()
        local pJ = pI_1 ~= ""
        local pK = type(pI_1) == "string" and pJ
        if pK then
            local pJ_1 = type(pH_1) == "string" and pH_1 ~= "" and pI_1 .. " " .. pH_1
            kv = pJ_1 or pI_1
        end
    end
end
local function fn460()
    local Character = kr.Character
    local ml = Character and Character:FindFirstChildOfClass("Humanoid")
    return ml
end
local function fn478(T, U, V)
    return string.format("<b>%s</b> %s %s", T, k8("-", "#5a6070"), k8(U, V))
end
local function fn480(fk, fl)
    local Type = fl.Type
    if Type == "Toggle" then
        return { idx = fk, type = "Toggle", value = fl.Value == true }
    elseif Type == "Slider" then
        return { idx = fk, type = "Slider", value = tostring(fl.Value) }
    elseif Type == "Dropdown" then
        return { idx = fk, type = "Dropdown", multi = fl.Multi == true, value = fl.Value }
    elseif Type == "Input" then
        local pX = fl.Value or ""
        return { idx = fk, type = "Input", text = tostring(pX) }
    elseif Type == "ColorPicker" then
        return { idx = fk, type = "ColorPicker", value = fl.Value:ToHex(), transparency = fl.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = fk,
            type = "KeyPicker",
            mode = fl.Mode,
            key = fl.Value,
            modifiers = fl.Modifiers,
            toggled = fl.Toggled
        }
    else
        return nil
    end
end
local function fn499()
    ky(false)
    connection:Disconnect()
    connection2:Disconnect()
    kY(false)
end
local function worker()
    local pN_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local pM = math.floor(os.clock() - ko)
        if pM < 60 then
            pN_1 = pM .. "s"
        elseif pM < 3600 then
            pN_1 = string.format("%dm %ds", pM // 60, pM % 60)
        else
            pN_1 = string.format("%dh %dm", pM // 3600, pM % 3600 // 60)
        end
        k_:SetText(kP("Session time", pN_1, kd))
    end
end
local function worker7()
    while not Library.Unloaded do
        if j0("AutoRebirth") then
            pcall(kJ)
        end
        task.wait(kG("RebirthDelay", 1))
    end
end
local function fn520(an)
    local l7 = Options[an]
    local l7_1 = l7 and l7.Value
    local mc = if l7_1 then 1 else 0
    local ma = 2316 * mc + 64 * (1 - mc)
    local mb = 2174 * mc + 3161 * (1 - mc)
    if not ((ma * 50 + mb * 969 + ma * mb) % 16777213 == 7257390) then
        l7_1 = nil
    end
    return l7_1
end
local function fn522()
    ky(Toggles.AutoWin.Value)
end
local function worker2()
    local pQ_1
    local pP_1
    pP_1, pQ_1 = pcall(function()
        return PetFunction:InvokeServer("GetState")
    end)
    if pP_1 then
        kU(pQ_1)
    end
end
local function fn549(ah, ai)
    local l1 = Options[ah]
    local l2 = l1 and tonumber(l1.Value)
    local l1_1 = l2
    local l6 = if l1_1 then 1 else 0
    local l4 = 1653 * l6 + 336 * (1 - l6)
    local l5 = 3477 * l6 + 3392 * (1 - l6)
    if not ((l4 * 2799 + l5 * 3105 + l4 * l5) % 16777213 == 4393100) then
        l1_1 = ai
    end
    return l1_1
end
local function fn589()
    local oR = {}
    local oS = { kx:FindFirstChild("ShopStands") }
    local World2 = kx:FindFirstChild("World2")
    local World3 = kx:FindFirstChild("World3")
    if World2 then
        oS[#oS + 1] = World2:FindFirstChild("ShopStands")
    end
    if World3 then
        oS[#oS + 1] = World3:FindFirstChild("ShopStands")
    end
    for i, v in ipairs(oS) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                local oS_1 = child:IsA("Model") and not child:GetAttribute("GamepassId")
                if oS_1 then
                    local oS_2 = tonumber(child:GetAttribute("SwordCost"))
                    local oT_1 = tonumber(child:GetAttribute("SwordPower"))
                    if oS_2 and oT_1 then
                        oR[#oR + 1] = { Model = child, Cost = oS_2, Power = oT_1 }
                    end
                end
            end
        end
    end
    return oR
end
local function worker4()
    while not Library.Unloaded do
        if j0("AutoWin") then
            ky(true)
        end
        task.wait(1)
    end
end
local function worker5()
    while not Library.Unloaded do
        if j0("AutoClick") then
            pcall(k7)
        end
        task.wait(kG("ClickDelay", 0.05))
    end
end
local function fn619()
    if not Toggles.WalkSpeedEnabled.Value then
        local qP = kq()
        if qP then
            qP.WalkSpeed = 16
        end
    end
end
local function onRscripts()
    kB(j3, "Copied Rscripts profile to clipboard")
end
local function worker10()
    while not Library.Unloaded do
        if j0("AutoBuySword") then
            pcall(k9)
        end
        task.wait(kG("SwordDelay", 2))
    end
end
local function fn632()
    local og = kQ("BoostChoices")
    local oh = {}
    if type(og) == "table" then
        for k, v in pairs(og) do
            if v then
                oh[#oh + 1] = k
            end
        end
    end
    return oh
end
local function onCopyJoinScript_JobID()
    local eJ = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, kW)
    kB(eJ, "Copied join script to clipboard")
end
local function worker13()
    while not Library.Unloaded do
        if j0("AutoEquipBestTitle") then
            pcall(ks)
        end
        task.wait(kG("EquipBestTitleDelay", 5))
    end
end
local function fn666()
    local nD = j4()
    if not nD then
        kk()
        return
    end
    local nE = j2()
    if not nE or (nE.Position - nD.Position).Magnitude > 6 then
        kM(nD.CFrame + Vector3.new(0, 3, 0))
    end
    kk()
end
local function fn672()
    local EquippedDumbbellPower = kr:FindFirstChild("EquippedDumbbellPower")
    local mL = EquippedDumbbellPower
    if mL then
        local mM = tonumber(EquippedDumbbellPower.Value) or 0
        mL = mM
    end
    return mL or 0
end
local function fn709()
    local ph = kp()
    local pi = kf()
    local pj = pi
    local pi_1 = nil
    for i, v in ipairs(kZ()) do
        if v.Cost <= ph and v.Power > pj then
            pi_1 = v
            pj = v.Power
        end
    end
    if not pi_1 then
        return
    end
    local ph_1 = kV(pi_1.Model)
    if not ph_1 then
        return
    end
    kM(CFrame.new(ph_1.Position + Vector3.new(0, 3, 0)))
    task.wait(1.25)
end
local function fn713(as)
    local md = Options[as]
    local me = md and md.Value
    local md_1 = {}
    local mf = me
    local mj = if mf then 1 else 0
    local mh = 2881 * mj + 3613 * (1 - mj)
    local mi = 678 * mj + 3425 * (1 - mj)
    if not ((mh * 1922 + mi * 1308 + mh * mi) % 16777213 == 8377424) then
        mf = md_1
    end
    return mf
end
local function worker8()
    while not Library.Unloaded do
        if j0("AutoHatchEggs") then
            pcall(ke)
        end
        task.wait(kG("HatchDelay", 1))
    end
end
local function fn779(dG)
    local ShopPedestal = dG:FindFirstChild("ShopPedestal")
    if ShopPedestal then
        local o8
        for i, descendant in ipairs(ShopPedestal:GetDescendants()) do
            local o7_1 = descendant:IsA("BasePart") and (not o8 or descendant.Position.Y > o8.Position.Y)
            if o7_1 then
                o8 = descendant
            end
        end
        if o8 then
            return o8
        end
        local o7_2 = dG.PrimaryPart or dG:FindFirstChildWhichIsA("BasePart", true)
        return o7_2
    end
    local o7_3 = dG.PrimaryPart or dG:FindFirstChildWhichIsA("BasePart", true)
    return o7_3
end
local function fn803(cf)
    local nO = type(cf) ~= "table"
    local nT = if nO then 1 else 0
    local nR = 2519 * nT + 2990 * (1 - nT)
    local nS = 422 * nT + 1264 * (1 - nT)
    if not ((nR * 2801 + nS * 960 + nR * nS) % 16777213 == 8523857) then
        nO = type(cf.eggs) ~= "table"
    end
    if nO then
        return
    end
    table.clear(j6)
    table.clear(j_)
    local nO_1 = {}
    for i, v in ipairs(cf.eggs) do
        local nP = type(v) == "table" and type(v.name) == "string"
        if nP then
            nO_1[#nO_1 + 1] = v.name
            j6[v.name] = i
            j_[v.name] = v
            if type(v.display) == "string" then
                j6[v.display] = i
                j_[v.display] = v
            end
        end
    end
    if #nO_1 > 0 then
        ki = nO_1
        if Options.EggChoice then
            Options.EggChoice:SetValues(nO_1)
        end
    end
end
local function worker3()
    while not Library.Unloaded do
        task.wait(2)
        if j0("AntiAfk") then
            local rw = tick() - kj
            local rx = tick() - j9
            if rw >= 300 and rx >= 60 then
                pcall(kO)
            else
                if rw < 300 and rx >= 300 then
                    pcall(kO)
                end
            end
        end
    end
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local q1_1 = kq()
        if q1_1 then
            q1_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = kr.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local qR_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if qR_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn872()
    local leaderstats = kr:FindFirstChild("leaderstats")
    local mx = leaderstats and leaderstats:FindFirstChild("Wins")
    if mx then
        local mx_1 = (tonumber(mx.Value))
        local mC = if mx_1 then 1 else 0
        local mA = 1006 * mC + 4009 * (1 - mC)
        local mB = 1354 * mC + 2673 * (1 - mC)
        if not ((mA * 3748 + mB * 603 + mA * mB) % 16777213 == 5949074) then
            mx_1 = 0
        end
        return mx_1
    end
    local Wins = kr:FindFirstChild("Wins")
    local mx_2 = Wins
    if mx_2 then
        local my = tonumber(Wins.Value) or 0
        mx_2 = my
    end
    return mx_2 or 0
end
j_ = nil
j0 = nil
j1 = nil
j2 = nil
j3 = nil
j4 = nil
j5 = nil
j6 = nil
j7 = nil
j8 = nil
j9 = nil
kd = nil
ke = nil
kf = nil
kg = nil
kh = nil
ki = nil
kj = nil
kk = nil
kl = nil
km = nil
connection = nil
ko = nil
kp = nil
kq = nil
kr = nil
ks = nil
kv = nil
CurrentCamera2 = nil
kx = nil
ky = nil
kA = nil
kB = nil
HttpService = nil
Options = nil
kG = nil
kH = nil
TitleFunction = nil
kJ = nil
VirtualUser = nil
Toggles = nil
kM = nil
local ka, kb, kc, kt, kz, TitleConfig, kD, UpgradeFunction
kO = nil
kP = nil
kQ = nil
UserInputService = nil
kS = nil
SaveManager = nil
kU = nil
kV = nil
kW = nil
PetFunction = nil
kY = nil
kZ = nil
k_ = nil
connection2 = nil
k1 = nil
RebirthFunction = nil
k3 = nil
Library = nil
ClickTrainEvent = nil
k7 = nil
k8 = nil
k9 = nil
local k4, lf, ll, ln, ShopGroup
local GameInfoGroup
UserInputService, VirtualUser, HttpService, kz, kx, kr, kl, j8, j3, ClickTrainEvent, RebirthFunction, PetFunction, UpgradeFunction, TitleFunction, TitleConfig, lf, kt, ki = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local lc = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
if (not lf or false) and (not Players and j8) or (Players or not lc) and 54 or not ((not lf or false) and (not Players and j8) or (Players or not lc) and 54) then
    HttpService = game:GetService("HttpService")
    kz = game:GetService("MarketplaceService")
    kx = game:GetService("Workspace")
    kr = Players.LocalPlayer
    kl = kr:WaitForChild("PlayerGui")
else
    game:GetService("HttpService")
    kr = game:GetService("MarketplaceService")
    kz = game:GetService("Workspace")
    kl = HttpService.LocalPlayer
    kx = kl:WaitForChild("PlayerGui")
end
local le = "+1 Power Per Click"
j8 = "https://discord.gg/ehKVq7pf7v"
j3 = "https://rscripts.net/@Ouroboros"
ClickTrainEvent = lc:WaitForChild("ClickTrainEvent")
RebirthFunction = lc:WaitForChild("RebirthFunction")
PetFunction = lc:WaitForChild("PetFunction")
UpgradeFunction = lc:WaitForChild("UpgradeFunction")
TitleFunction = lc:WaitForChild("TitleFunction")
TitleConfig = require(lc:WaitForChild("TitleConfig"))
lf = {
    "Damage",
    "Wins",
    "Click Power",
    "Attack Speed",
    "Speed",
    "Egg Luck",
    "Title Luck",
    "Pet Storage"
}
kt = {
    Damage = "damage",
    Wins = "wins",
    ["Click Power"] = "clickPower",
    ["Attack Speed"] = "attackSpeed",
    Speed = "walkSpeed",
    ["Egg Luck"] = "luck",
    ["Title Luck"] = "rollLuck",
    ["Pet Storage"] = "petStorage"
}
local ld = {
    "Basic Egg",
    "Gold Egg",
    "Lava Egg",
    "Diamond Egg",
    "Hacker Egg",
    "Galaxy Egg",
    "Cloud Egg",
    "Candy Egg",
    "Angel Egg",
    "W3 Candy Egg",
    "W3 Stitched Egg",
    "W3 Alien Egg"
}
ki = {}
for i, v in ipairs(ld) do
    ki[#ki + 1] = v
end
Library, SaveManager, Toggles, Options, kd, j6, j_, kB, kg, k8, kP, j0, kG, ka, kQ, kq, j2, kM, kp, kS, kf, k3, kc, ky, kk, j1, j4, km, kJ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
kB = fn280
kg = fn405
k8 = fn180
kP = fn478
local lh = "#7fd47f"
ld = "#6ec1ff"
kd = "#e8a34d"
lc = "#8b93a3"
j0 = fn342
kG = fn549
ka = fn520
kQ = fn713
kq = fn460
j2 = fn124
kM = fn311
if ((lh or j_) and (not kM and j_) or (not kM and j_ or not kg and not kM)) and not ((lh or j_) and (not kM and j_) or (not kM and j_ or not kg and not kM)) then
    kc = fn872
    kf = fn92
    kS = fn672
    kp = function(a1)
        local mP_2
        local mO_2
        if not a1 then
            return true
        end
        mO_2, mP_2 = pcall(function()
            return kz:UserOwnsGamePassAsync(kr.UserId, a1)
        end)
        return mO_2 and mP_2 == true
    end
    k3 = fn259
else
    kp = fn872
    kS = fn92
    kf = fn672
    k3 = function(a1)
        local mP_1
        local mO_1
        if not a1 then
            return true
        end
        mO_1, mP_1 = pcall(function()
            return kz:UserOwnsGamePassAsync(kr.UserId, a1)
        end)
        return mO_1 and mP_1 == true
    end
    kc = fn259
end
ky = function(bj)
    local mY = kc()
    if mY then
        pcall(mY.AutoPlaySetOn, bj)
        return
    end
    local AutoWinsUI = kl:FindFirstChild("AutoWinsUI")
    local mZ = AutoWinsUI and AutoWinsUI:FindFirstChild("AutoWinsButton")
    local mY_2 = mZ
    if mZ then
        mZ = mY_2:FindFirstChild("StateTag")
    end
    local m_ = mZ
    if mZ then
        mZ = m_.Text == "ON"
    end
    if mY_2 and mZ ~= bj then
        if firesignal then
            pcall(firesignal, mY_2.MouseButton1Click)
        elseif getconnections then
            for i, v in ipairs(getconnections(mY_2.MouseButton1Click)) do
                local m7 = v
                pcall(function()
                    if m7.Fire then
                        m7:Fire()
                    elseif m7.Function then
                        m7.Function()
                    end
                end)
            end
        end
    end
end
kk = fn283
j1 = fn72
j4 = fn250
km = fn666
kJ = fn142
j6 = {}
j_ = {}
for i, v in ipairs(ki) do
    j6[v] = i
end
kU, k4, ke, kD, j7, k7, kZ, kV, k9, k1, kH, ks = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
kU = fn803
k4 = fn188
ke = function()
    local oa
    local oe_1
    local ob = ka("EggChoice")
    local oc = ob == ""
    local od = type(ob) ~= "string" or oc
    local od_1
    if od then
        return
    end
    if k4() then
        return
    end
    oa = j6[ob]
    local oc_1 = j_[ob]
    if not oa then
        od_1, oe_1 = pcall(function()
            return PetFunction:InvokeServer("GetState")
        end)
        if od_1 then
            kU(oe_1)
            oa = j6[ob]
            oc_1 = j_[ob]
        end
    end
    if not oa then
        return
    end
    local ob_1 = oc_1 and typeof(oc_1.worldPos) == "Vector3"
    if ob_1 then
        local ob_2 = j2()
        if ob_2 and (ob_2.Position - oc_1.worldPos).Magnitude > 12 then
            kM(CFrame.new(oc_1.worldPos + Vector3.new(0, 3, 0)))
            task.wait(0.2)
        end
    end
    pcall(function()
        PetFunction:InvokeServer("HatchEgg", oa, 1)
    end)
end
kD = fn632
j7 = function()
    local oy_1
    local ox_1
    local ow = kD()
    if #ow == 0 then
        return
    end
    ox_1, oy_1 = pcall(function()
        return UpgradeFunction:InvokeServer("GetState")
    end)
    local oz = not ox_1 or type(oy_1) ~= "table"
    local oE = if oz then 1 else 0
    local oC = 2924 * oE + 3195 * (1 - oE)
    local oD = 1583 * oE + 3199 * (1 - oE)
    if not ((oC * 2104 + oD * 1346 + oC * oD) % 16777213 == 12911506) then
        oz = type(oy_1.upgrades) ~= "table"
    end
    if oz then
        return
    end
    local ox_2 = tonumber(oy_1.wins) or kp()
    local oz_1 = {}
    local oA = ox_2
    for i, v in ipairs(oy_1.upgrades) do
        local ox_3 = type(v) == "table" and type(v.id) == "string"
        if ox_3 then
            oz_1[v.id] = v
        end
    end
    for i, v in ipairs(ow) do
        local ov = kt[v]
        local ow_1 = ov and oz_1[ov]
        local ox_4 = ow_1
        if ow_1 then
            ow_1 = not ox_4.maxed
        end
        if ow_1 then
            local ow_2 = tonumber(ox_4.cost)
            if ow_2 and oA >= ow_2 then
                local ox_6 = pcall(function()
                    UpgradeFunction:InvokeServer("Buy", ov)
                end)
                if ox_6 then
                    oA -= ow_2
                end
            end
        end
    end
end
k7 = fn205
kZ = fn589
kV = fn779
k9 = fn709
k1 = fn149
kH = fn319
ks = function()
    local px_1
    local pw_1
    pw_1, px_1 = pcall(function()
        return TitleFunction:InvokeServer("GetState")
    end)
    local py = not pw_1 or type(px_1) ~= "table" or type(px_1.titles) ~= "table"
    if py then
        return
    end
    local pw_2 = -1
    local id
    for i, v in ipairs(px_1.titles) do
        if v.owned then
            local py_1 = TitleConfig.BY_ID[v.id]
            local pz = py_1 and tonumber(py_1.mult)
            local py_2 = pz or 0
            if py_2 > pw_2 then
                pw_2 = py_2
                id = v.id
            end
        end
    end
    if id and px_1.equipped ~= id then
        pcall(function()
            TitleFunction:InvokeServer("Equip", id)
        end)
    end
end
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = j8, Copyable = true }, "|", le },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local lk = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "swords"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in lk do
    fn154(v)
end
kv, GameInfoGroup, k_, kW, ll = nil, nil, nil, nil, nil
local lb = 3
local lb_2
repeat
    local lj_1 = (lb * 2 + 2) % 3 + 1
    if lj_1 <= 2 then
        if lj_1 <= 1 then
            local lj_2 = (vector.create((lb * 4 + 3) % 11 + 1, (lb * 3 + 5) % 13 + 1, (lb * 2 + 10) % 17 + 1))
            ln = (vector.create((lb * 2 + 2) % 11 + 1, (lb * 11 + 4) % 13 + 1, (lb * 10 + 9) % 17 + 1))
            local sF = vector.dot(lj_2, ln)
            if sF * sF <= vector.dot(lj_2, lj_2) * vector.dot(ln, ln) then
                kW = tostring(game.JobId)
            else
                k_ = tostring(game.JobId)
            end
            lb = (lb + 23) % 24
        else
            local lj_3 = {
                "dsukiieugiho",
                "sqlu",
                "wkamsbg",
                "ugckxopuup",
                "msnxhdwanj",
                "sbztwirlab",
                "jormusxs",
                "ozbhbynrwvpp",
                "dboqkp",
                "dbyjafb",
                "vkdxdttrf",
                "kvcsz",
                "fikjxjwoa",
                "dyquwslsfhzk"
            }
            if lj_3[(lb * 14 + 19) % 14 + 1] <= lj_3[(lb * 14 + 19) % 14 + 1] then
                ll = #kW > 18
            else
                kW = #ll > 18
            end
            lb = (lb + 23) % 24
        end
    else
        if lb and GameInfoGroup and (GameInfoGroup and not GameInfoGroup) and (lb and lb or not GameInfoGroup and lb) or (not kW and kW and (kW or lb) or (not GameInfoGroup and GameInfoGroup or lb and GameInfoGroup)) or not (lb and GameInfoGroup and (GameInfoGroup and not GameInfoGroup) and (lb and lb or not GameInfoGroup and lb) or (not kW and kW and (kW or lb) or (not GameInfoGroup and GameInfoGroup or lb and GameInfoGroup))) then
            kv = "Unknown"
            pcall(fn443)
            local AccountGroup = lk.Info:AddLeftGroupbox("Account", "circle-user")
            AccountGroup:AddLabel(kP("User", kr.Name, lh), true)
            AccountGroup:AddLabel(kP("Status", "Keyless", lh), true)
            AccountGroup:AddLabel(kP("Executor", kv, lh), true)
            GameInfoGroup = lk.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            GameInfoGroup:AddLabel(k8(le .. " [" .. tostring(game.PlaceId) .. "]", ld), true)
            GameInfoGroup:AddLabel(kP("Place ID", tostring(game.PlaceId), ld), true)
            k_ = GameInfoGroup:AddLabel(kP("Session time", "0s", kd), true)
        else
            pcall(fn443)
            kv = (nil):AddLeftGroupbox("Account", "circle-user")
            kv:AddLabel(kr("User", kP.Name, le), true)
            kv:AddLabel(kr("Status", "Keyless", le), true)
            kv:AddLabel(kr("Executor", "Unknown", le), true)
            k8 = (nil):AddLeftGroupbox("Game Info", "gamepad-2")
            k8:AddLabel(ld(lh .. " [" .. tostring(game.PlaceId) .. "]", GameInfoGroup), true)
            k8:AddLabel(kr("Place ID", tostring(game.PlaceId), GameInfoGroup), true)
            lk = k8:AddLabel(kr("Session time", "0s", k_), true)
        end
        lb = (lb + 5) % 24
    end
until (lb * 11 + 13) % 24 == 7
if ll then
    local la_3 = 1
    repeat
        local lb_1 = {
            "yvrrrn",
            "qqpyv",
            "ukskzhxu",
            "ilcgihk",
            "kfz",
            "jnsmnvsyu",
            "ujpamdwtpl",
            "jmvjyvtkxoqk",
            "xhciv",
            "vlssqanj",
            "icyhtrn",
            "htzl",
            "emywuqwhlh",
            "uxl",
            "ari"
        }
        if lb_1[(la_3 * 49 + 102) % 15 + 1] < lb_1[(la_3 * 49 + 102) % 15 + 1] then
            kW = string.sub(ll, 1, 18) .. "..."
        else
            ll = string.sub(kW, 1, 18) .. "..."
        end
        la_3 = (la_3 + 3) % 4
    until (la_3 * 1 + 2) % 4 == 2
end
local la_4 = ll or kW
ko, ln, lb_2, ShopGroup = nil, nil, nil, nil
GameInfoGroup:AddLabel(kP("Server", la_4, lc), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
ko = os.clock()
task.spawn(worker)
local ScriptsGroup = lk.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(k8("Included in this hub", lc), true)
ScriptsGroup:AddLabel(k8(le, ld), true)
local FeaturesGroup = lk.Info:AddRightGroupbox("Features", "list")
if (ShopGroup and not ShopGroup and (not ko and la_4) or (ShopGroup and not ko or not lb_2 and lb_2) or (la_4 and not ko or not lb_2 and la_4) and (lb_2 and lb_2 and (la_4 or not lb_2))) and ((la_4 or ShopGroup) and (la_4 and ko) or (lb_2 or not lb_2) and (not la_4 and not ShopGroup) or (not la_4 or not ko) and (ko or not ShopGroup) and (la_4 and not ShopGroup or not lb_2 and ko)) or not ((ShopGroup and not ShopGroup and (not ko and la_4) or (ShopGroup and not ko or not lb_2 and lb_2) or (la_4 and not ko or not lb_2 and la_4) and (lb_2 and lb_2 and (la_4 or not lb_2))) and ((la_4 or ShopGroup) and (la_4 and ko) or (lb_2 or not lb_2) and (not la_4 and not ShopGroup) or (not la_4 or not ko) and (ko or not ShopGroup) and (la_4 and not ShopGroup or not lb_2 and ko))) then
    FeaturesGroup:AddLabel(k8("Auto Farm", ld), true)
    FeaturesGroup:AddLabel(k8("Auto Shop", lh), true)
    FeaturesGroup:AddLabel(k8("Auto Progress", kd), true)
    FeaturesGroup:AddLabel(k8("Misc Utilities", lc), true)
    ln = lk.Info:AddRightGroupbox("Socials", "link")
else
    ld:AddLabel(kd("Auto Farm", ln), true)
    ld:AddLabel(kd("Auto Shop", FeaturesGroup), true)
    ld:AddLabel(kd("Auto Progress", k8), true)
    ld:AddLabel(kd("Misc Utilities", lh), true)
    lk = (nil):AddRightGroupbox("Socials", "link")
end
ln:AddButton({ Text = "Discord", Func = kg })
ln:AddButton({ Text = "Rscripts", Func = onRscripts })
ll = lk.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
ll:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
ll:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
ll:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
ll:AddButton({ Text = "Copy Discord Invite", Func = kg })
local FaqGroup = lk.Info:AddRightGroupbox("FAQ", "circle-help")
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
local FarmGroup = lk.Main:AddLeftGroupbox("Farm", "swords")
FarmGroup:AddToggle("AutoWin", { Text = "Auto Win", Default = false })
FarmGroup:AddToggle("AutoClick", { Text = "Auto Click", Default = false })
FarmGroup:AddSlider("ClickDelay", { Text = "Click delay", Default = 0.05, Min = 0.05, Max = 1, Rounding = 2, Suffix = "s" })
FarmGroup:AddToggle("AutoTrain", { Text = "Auto Train", Default = false })
FarmGroup:AddSlider("TrainDelay", { Text = "Train delay", Default = 0.05, Min = 0.05, Max = 1, Rounding = 2, Suffix = "s" })
FarmGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
FarmGroup:AddSlider("RebirthDelay", { Text = "Rebirth delay", Default = 1, Min = 0.5, Max = 30, Rounding = 1, Suffix = "s" })
ShopGroup = lk.Main:AddRightGroupbox("Shop", "shopping-bag")
ShopGroup:AddToggle("AutoHatchEggs", { Text = "Auto Hatch Eggs", Default = false })
local la_5 = ki[1] or "Basic Egg"
CurrentCamera2, kj, j9, connection, connection2, kb, kA, kh, j5, kY, kO = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ShopGroup:AddDropdown("EggChoice", { Text = "Egg", Values = ki, Default = la_5 })
task.spawn(worker2)
ShopGroup:AddSlider("HatchDelay", { Text = "Hatch delay", Default = 1, Min = 0.5, Max = 10, Rounding = 1, Suffix = "s" })
ShopGroup:AddToggle("AutoBuyBoosts", { Text = "Auto Buy Boosts", Default = false })
ShopGroup:AddDropdown("BoostChoices", { Text = "Boosts", Values = lf, Multi = true, AllowNull = true, Default = lf })
ShopGroup:AddSlider("BoostDelay", { Text = "Boost delay", Default = 2, Min = 0.5, Max = 30, Rounding = 1, Suffix = "s" })
ShopGroup:AddToggle("AutoBuySword", { Text = "Auto Buy Sword", Default = false })
ShopGroup:AddSlider("SwordDelay", { Text = "Sword delay", Default = 2, Min = 0.5, Max = 30, Rounding = 1, Suffix = "s" })
ShopGroup:AddToggle("AutoEquipBestPet", { Text = "Auto Equip Best Pet", Default = false })
ShopGroup:AddSlider("EquipBestDelay", { Text = "Equip best delay", Default = 5, Min = 1, Max = 60, Rounding = 1, Suffix = "s" })
ShopGroup:AddToggle("AutoRollTitle", { Text = "Auto Roll Title", Default = false })
ShopGroup:AddSlider("TitleRollDelay", { Text = "Title roll delay", Default = 1, Min = 0.5, Max = 10, Rounding = 1, Suffix = "s" })
ShopGroup:AddToggle("AutoEquipBestTitle", { Text = "Auto Equip Best Title", Default = false })
ShopGroup:AddSlider("EquipBestTitleDelay", { Text = "Equip best title delay", Default = 5, Min = 1, Max = 60, Rounding = 1, Suffix = "s" })
local MovementGroup = lk.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
lh = lk.Player:AddRightGroupbox("Fly", "feather")
lh:AddToggle("Fly", { Text = "Fly", Default = false })
lh:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
ld = lk.Settings:AddLeftGroupbox("Menu", "menu")
ld:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
ld:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
ld:AddButton({ Text = "Unload", Func = onUnload })
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
ThemeManager:ApplyToTab(lk.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/plus1-power-per-click")
lc = SaveManager:BuildConfigSection(lk.Settings)
kb = fn348
kA = fn480
kh = fn384
j5 = function(fB)
    local qm
    qm = nil
    local qn = type(fB) ~= "table" or type(fB.idx) ~= "string" or type(fB.type) ~= "string" or SaveManager.Ignore[fB.idx]
    if qn then
        return false
    end
    qm = kb(fB.type, fB.idx)
    if not qm then
        return false
    end
    local qn_1 = pcall(function()
        if fB.type == "Input" then
            if type(fB.text) ~= "string" then
                return
            end
            qm:SetValue(fB.text)
        elseif fB.type == "ColorPicker" then
            qm:SetValueRGB(Color3.fromHex(fB.value), fB.transparency)
        elseif fB.type == "KeyPicker" then
            qm:SetValue({ fB.key, fB.mode, fB.modifiers })
            if fB.mode == "Toggle" and fB.toggled ~= nil then
                qm.Toggled = fB.toggled
                qm:Update()
            end
        else
            qm:SetValue(fB.value)
        end
    end)
    return qn_1
end
lc:AddDivider()
lc:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
lc:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
lc:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
kY = function(f3)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not f3)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not f3
        end
    end)
    if not f3 then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(kr, "GameplayPaused", false)
        else
            kr.GameplayPaused = false
        end
    end)
end
Toggles.AntiGameplayPause:OnChanged(fn297)
Toggles.AutoWin:OnChanged(fn522)
Toggles.Fly:OnChanged(fn38)
Toggles.WalkSpeedEnabled:OnChanged(fn619)
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera2 = kx.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
kj = tick()
j9 = tick()
pcall(function()
    for i, v in ipairs(getconnections(kr.Idled)) do
        local rj = v
        pcall(function()
            rj:Disable()
        end)
    end
end)
kO = fn56
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
Library:OnUnload(fn499)
kY(Toggles.AntiGameplayPause.Value)
task.spawn(antiGameplayPauseLoop)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(worker6)
task.spawn(worker7)
task.spawn(worker8)
task.spawn(worker9)
task.spawn(worker10)
task.spawn(worker11)
task.spawn(worker12)
task.spawn(worker13)
Library:Notify("+1 Power Per Click loaded")
