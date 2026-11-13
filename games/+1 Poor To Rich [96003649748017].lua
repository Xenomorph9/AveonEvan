local kh
local k_
local kH
local lo
local Options
local k5
local kN
local kt
local DataAccessAPIClient
local kT
local kA
local lh
local kg
local kZ
local ln
local km
local VirtualUser
local Toggles
local la
local kS
local kz
local lg
local kf
local kY
local kF
local lm
local kl
local kL
local CurrentCamera2
local k9
local kR
local ky
local lf
local ke
local Label
local kE
local ll
local kk
local k2
local kK
local kq
local UserInputService
local Library
local kx
local le
local kd
local kW
local kD
local lk
local kj
local k1
local kJ
local kp
local k7
local kP
local kw
local connection
local kc
local kV
local connection2
local lj
local ki
local k0
local kI
local ko
local k6
local kO
local kv
local lc
local kb
local kU
local SaveManager
local li
local function fn16()
    local pi = Options.AutoWinMode and Options.AutoWinMode.Value or "Best"
    local pi_1 = kW(pi)
    if not pi_1 then
        return
    end
    local ph_2 = kF(pi_1.Stage, pi_1.Position)
    if ph_2 then
        k2(ph_2)
        return
    end
    lo(pi_1.Position, 8)
    k2(pi_1.Position)
    task.wait(0.35)
    local ph_3 = kF(pi_1.Stage, pi_1.Position)
    if ph_3 then
        k2(ph_3)
    end
end
local function fn31(bb)
    local mR = ky()
    local mS = mR and mR:FindFirstChild(tostring(bb))
    local mR_1 = mS
    if mS then
        mS = mR_1:FindFirstChild("StageButton")
    end
    local mR_2 = mS
    if mS then
        mS = mR_2:FindFirstChild("WinModel")
    end
    local mR_3 = mS
    if mS then
        mS = mR_3:FindFirstChild("WinPart")
    end
    local mR_4 = mS
    if mS then
        mS = mR_4:IsA("BasePart")
    end
    if mS then
        return mR_4
    end
    return nil
end
local function onCopySolanaAddress()
    ki(kv, "Copied Solana address")
end
local function onInputBegan()
    lf = tick()
end
local function fn67(b5)
    local MapPoorRich = kA:FindFirstChild("MapPoorRich")
    local nA = MapPoorRich and MapPoorRich:FindFirstChild("Spawn")
    local nz_1 = nA
    if nA then
        nA = nz_1:FindFirstChild("Training")
    end
    local nz_2 = nA
    if nA then
        nA = nz_2:FindFirstChild(b5)
    end
    local nz_3 = nA
    if nA then
        nA = nz_3:FindFirstChild(b5)
    end
    local nz_4 = nA
    if not nz_4 then
        return nil
    end
    return nz_4:FindFirstChildWhichIsA("BasePart", true)
end
local function fn77()
    local mi = kg()
    local mj = mi and mi:FindFirstChild("HumanoidRootPart")
    return mj
end
local function fn110()
    local pn = kw()
    if not pn then
        return
    end
    local po = kO(kH(pn))
    if not po then
        return
    end
    local pn_1 = kK(po.Name)
    if pn_1 then
        k2(pn_1)
    end
end
local function worker2()
    while not Library.Unloaded do
        task.wait(1)
        if kL("AutoWin") then
            pcall(lg)
        end
    end
end
local function onCopyPayPalLink()
    ki(ko, "Copied PayPal link")
end
local function fn114(fd)
    local DiscordGroup = fd:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = le })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = le })
end
local function fn127()
    local nO = {}
    local nP = ll:FindFirstChild("Inventory") and ll.Inventory:FindFirstChild("Trails")
    local nP_2
    local nQ_1
    if not nP then
        return nO
    end
    for i, child in ipairs(nP:GetChildren()) do
        local nP_1 = child:IsA("ModuleScript") and child.Name ~= "None"
        if nP_1 then
            nP_2, nQ_1 = pcall(require, child)
            local nR = nP_2 and type(nQ_1) == "table"
            if nR then
                local nP_3 = nQ_1.Costs and tonumber(nQ_1.Costs.Wins)
                local nR_1 = nP_3 or nil
                local nR_2 = #nO + 1
                local Name = child.Name
                local nT = tonumber(nQ_1.SpeedMultiplier) or 0
                nO[nR_2] = { Name = Name, Mult = nT, Wins = nR_1 }
            end
        end
    end
    table.sort(nO, function(cA, cB)
        return cA.Mult < cB.Mult
    end)
    return nO
end
local function worker4()
    while not Library.Unloaded do
        task.wait(2)
        if kL("AutoRebirth") then
            pcall(k_)
        end
        if kL("AutoBestTrails") then
            pcall(kt)
        end
        if kL("AutoBestTools") then
            pcall(k6)
        end
    end
end
local function worker3()
    while not Library.Unloaded do
        task.wait(1.5)
        if kL("AutoTrain") then
            pcall(kd)
        end
    end
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            kT(true)
        end
    end
end
local function fn181()
    local pd = kw()
    if not pd then
        return
    end
    local pe = kH(pd)
    local pf = km(pd)
    local pd_1 = lk.GetLevelRequirement(pe + 1)
    if pf >= pd_1 then
        kS:FireServer()
    end
end
local function fn185(gX, gY)
    local Type = gY.Type
    if Type == "Toggle" then
        return { idx = gX, type = "Toggle", value = gY.Value == true }
    elseif Type == "Slider" then
        return { idx = gX, type = "Slider", value = tostring(gY.Value) }
    elseif Type == "Dropdown" then
        return { idx = gX, type = "Dropdown", multi = gY.Multi == true, value = gY.Value }
    elseif Type == "Input" then
        local qD = gY.Value or ""
        return { idx = gX, type = "Input", text = tostring(qD) }
    elseif Type == "ColorPicker" then
        return { idx = gX, type = "ColorPicker", value = gY.Value:ToHex(), transparency = gY.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = gX,
            type = "KeyPicker",
            mode = gY.Mode,
            key = gY.Value,
            modifiers = gY.Modifiers,
            toggled = gY.Toggled
        }
    else
        return nil
    end
end
local function fn189()
    local mf = kg()
    local mg = mf and mf:FindFirstChildOfClass("Humanoid")
    return mg
end
local function fn219()
    pcall(function()
        connection:Disconnect()
    end)
    pcall(function()
        connection2:Disconnect()
    end)
    kT(false)
    local rj = lm()
    if rj then
        rj.PlatformStand = false
        rj.WalkSpeed = 16
    end
end
local function fn262(N, O)
    if setclipboard then
        setclipboard(N)
    elseif toclipboard then
        toclipboard(N)
    end
    Library:Notify(O)
end
local function fn293()
    local oD = kw()
    if not oD then
        return
    end
    local oE = k5(oD)
    local oF = oD.Trails and oD.Trails.Owned
    local oF_1 = oD.Trails and oD.Trails.Equipped
    local oD_1 = kN(oF_1)
    local oH
    for i, v in ipairs(ln()) do
        local oF_2 = lh(oF, v.Name)
        if oF_2 or v.Wins ~= nil and v.Wins > 0 and oE >= v.Wins then
            oH = v
        end
    end
    if not oH then
        return
    end
    if not lh(oF, oH.Name) then
        k0:FireServer(oH.Name)
        return
    end
    if oD_1 ~= oH.Name then
        k7:FireServer("Trails", oH.Name)
    end
end
local function fn332()
    local na = {}
    for k, v in pairs(kE) do
        local nb = ky()
        local nc = nb and nb:FindFirstChild(tostring(k))
        local nb_1 = nc
        if nc then
            nc = nb_1:FindFirstChild("StageButton")
        end
        local nb_2 = nc
        if nc then
            nc = nb_2:GetAttribute("Wins")
        end
        local nb_3 = tonumber(nc) or v.Wins
        na[#na + 1] = { Stage = k, Wins = nb_3, Position = v.Position }
    end
    table.sort(na, function(bP, bQ)
        return bP.Wins < bQ.Wins
    end)
    return na
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local qi_1 = lm()
        if qi_1 then
            qi_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = kq.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local p7_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if p7_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function onCopyVenmoLink()
    ki(kj, "Copied Venmo link")
end
local function onExportConfigToClipboard()
    local q0_1
    local q__1
    q__1, q0_1 = pcall(kV.JSONEncode, kV, lc())
    if not q__1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local q__2 = setclipboard or toclipboard
    local q__3 = type(q__2) ~= "function"
    local q5 = if q__3 then 1 else 0
    local q3 = 2845 * q5 + 1259 * (1 - q5)
    local q4 = 657 * q5 + 2545 * (1 - q5)
    if not ((q3 * 1565 + q4 * 3955 + q3 * q4) % 16777213 == 8920025) then
        q__3 = not pcall(q__2, q0_1)
    end
    if q__3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function onCopyBitcoinAddress()
    ki(kR, "Copied Bitcoin address")
end
local function fn412(ch)
    local nF
    for i, v in ipairs(kJ) do
        if ch >= v.Rebirths then
            if not nF or v.Mult > nF.Mult then
                nF = v
            end
        end
    end
    return nF
end
local function fn418()
    local n0 = {}
    local n1 = ll:FindFirstChild("Inventory") and ll.Inventory:FindFirstChild("Food")
    local n1_2
    local n2_1
    if not n1 then
        return n0
    end
    for i, child in ipairs(n1:GetChildren()) do
        local n1_1 = child:IsA("ModuleScript") and child.Name ~= "Config"
        if n1_1 then
            n1_2, n2_1 = pcall(require, child)
            local n3 = n1_2 and type(n2_1) == "table" and n2_1.SpeedMultiplier ~= nil
            if n3 then
                local n1_3 = tonumber(n2_1.WinsRequired) or 0
                local n1_4 = kx[child.Name] == true or n2_1.DevProductId ~= nil or n2_1.DevProductName ~= nil
                if not n1_4 then
                    n1_4 = n1_3 <= 0 and child.Name ~= "Carrot"
                end
                local n4_2 = n1_4
                local n1_5 = #n0 + 1
                local Name = child.Name
                local n6 = tonumber(n2_1.SpeedMultiplier) or 0
                local n2_2 = not n4_2
                if n2_2 ~= false then
                    n2_2 = n1_3 > 0
                end
                n0[n1_5] = { Name = Name, Mult = n6, Wins = n1_3, IsRobux = n4_2, CanBuy = n2_2 }
            end
        end
    end
    table.sort(n0, function(cU, cV)
        return cU.Mult < cV.Mult
    end)
    return n0
end
local function fn485(U, V)
    return string.format('<font color="%s">%s</font>', V, U)
end
local function fn491(gP, gQ)
    local qz_1 = (gP == "Toggle" and Toggles or Options)[gQ]
    local qy_2 = type(qz_1) == "table" and qz_1.Type == gP
    return qy_2 and qz_1 or nil
end
local function onCopyJoinScript_JobID()
    local eH = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, kP)
    ki(eH, "Copied join script to clipboard")
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local pT = tick() - lf
            local pU = tick() - li
            if pT >= 300 and pU >= 60 then
                pcall(kp)
            else
                if pT < 300 and pU >= 300 then
                    pcall(kp)
                end
            end
        end
    end
end
local function fn509()
    local mm_1
    local ml_1, ml_2
    ml_1, mm_1 = pcall(DataAccessAPIClient.GetAPI, DataAccessAPIClient)
    local mn = not ml_1
    local mn_1
    local mr = if mn then 1 else 0
    local mp = 1393 * mr + 3900 * (1 - mr)
    local mq = 4082 * mr + 3270 * (1 - mr)
    if not ((mp * 3615 + mq * 2503 + mp * mq) % 16777213 == 4161954) then
        mn = type(mm_1) ~= "table"
    end
    if mn then
        return nil
    end
    ml_2, mn_1 = pcall(mm_1.GetLocalProfile)
    local mm_2 = not ml_2 or type(mn_1) ~= "table"
    local mu = if mm_2 then 1 else 0
    local ms = 1028 * mu + 2113 * (1 - mu)
    local mt = 3811 * mu + 4003 * (1 - mu)
    if not ((ms * 2965 + mt * 1458 + ms * mt) % 16777213 == 12522166) then
        mm_2 = type(mn_1.Data) ~= "table"
    end
    if mm_2 then
        return nil
    end
    return mn_1.Data
end
local function onRenderStepped(gi)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local qk_1 = lm()
        if qk_1 then
            qk_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local qk_3 = k1()
        local ql = lm()
        if qk_3 and ql then
            ql.PlatformStand = true
            local ql_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                ql_1 = ql_1 + CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                ql_1 = ql_1 - CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                ql_1 = ql_1 - CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                ql_1 = ql_1 + CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                ql_1 = ql_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                ql_1 = ql_1 - Vector3.new(0, 1, 0)
            end
            qk_3.Velocity = Vector3.zero
            if ql_1.Magnitude > 0 then
                qk_3.CFrame = qk_3.CFrame + ql_1.Unit * Options.FlySpeed.Value * gi
            end
        end
    end
end
local function fn558(dd, de)
    if type(dd) ~= "table" then
        return false
    end
    local ow = dd[de]
    return ow ~= nil and ow ~= false and ow ~= 0
end
local function fn573()
    local MapPoorRich = kA:FindFirstChild("MapPoorRich")
    local mP = MapPoorRich and MapPoorRich:FindFirstChild("Stage's")
    return mP
end
local function fn584(aX)
    local mB = aX and aX.Levels
    local mC = mB
    if mB then
        mB = mC.Speed
    end
    local mC_1 = mB
    if mB then
        mB = mC_1.Level
    end
    local mC_2 = tonumber(mB) or 0
    return mC_2
end
local function onInputChanged(fB)
    local UserInputType = fB.UserInputType
    local pO = UserInputType == Enum.UserInputType.MouseMovement
    local pS = if pO then 1 else 0
    local pQ = 4065 * pS + 1499 * (1 - pS)
    local pR = 2200 * pS + 3696 * (1 - pS)
    if not ((pQ * 1369 + pR * 3485 + pQ * pR) % 16777213 == 5397772) then
        pO = UserInputType == Enum.UserInputType.Gamepad1
    end
    if pO then
        lf = tick()
    end
end
local function fn611()
    ki(kh, "Copied Discord invite to clipboard")
end
local function fn614(cX)
    local MapPoorRich = kA:FindFirstChild("MapPoorRich")
    local oi = MapPoorRich and MapPoorRich:FindFirstChild("Spawn")
    local oh_1 = oi
    if oi then
        oi = oh_1:FindFirstChild("Folder")
    end
    local oh_2 = oi
    if oi then
        oi = oh_2:FindFirstChild("FoodStand")
    end
    local oh_3 = oi
    if oi then
        oi = oh_3:FindFirstChild("FoodsStand")
    end
    local oh_4 = oi
    if not oh_4 then
        return nil
    end
    for i, descendant in ipairs(oh_4:GetDescendants()) do
        local oh_5 = descendant:IsA("BasePart") and descendant:GetAttribute("Name") == cX
        if oh_5 then
            local FoodPrompt = descendant:FindFirstChild("FoodPrompt")
            local oi_1 = FoodPrompt and FoodPrompt:IsA("ProximityPrompt")
            if oi_1 then
                return FoodPrompt
            end
        end
    end
    return nil
end
local function worker()
    local pz_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local py = math.floor(os.clock() - kf)
        if py < 60 then
            pz_1 = py .. "s"
        elseif py < 3600 then
            pz_1 = string.format("%dm %ds", py // 60, py % 60)
        else
            pz_1 = string.format("%dh %dm", py // 3600, py % 3600 // 60)
        end
        Label:SetText(kz("Session time", pz_1, k9))
    end
end
local function fn619()
    local pr_1
    local pq_1
    if identifyexecutor then
        pr_1, pq_1 = identifyexecutor()
        local ps = pr_1 ~= ""
        local pt = type(pr_1) == "string" and ps
        if pt then
            local ps_1 = type(pq_1) == "string" and pq_1 ~= "" and pr_1 .. " " .. pq_1
            local pq_2 = ps_1
            local px = if pq_2 then 1 else 0
            local pv = 1415 * px + 1090 * (1 - px)
            local pw = 207 * px + 1622 * (1 - px)
            if not ((pv * 3510 + pw * 1880 + pv * pw) % 16777213 == 5648715) then
                pq_2 = pr_1
            end
            kk = pq_2
        end
    end
end
local function fn627()
    local CurrentCamera = kA.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    li = tick()
end
local function fn639()
    local oU = kw()
    if not oU then
        return
    end
    local oV = k5(oU)
    local oW = oU.Food and oU.Food.Owned
    local oW_1 = oU.Food and oU.Food.Equipped
    local oU_1 = kN(oW_1)
    local oY
    local oW_2 = nil
    for i, v in ipairs(la()) do
        if lh(oW, v.Name) then
            oY = v
        else
            if v.CanBuy and oV >= v.Wins then
                oW_2 = v
            end
        end
    end
    local oZ_2 = oW_2
    local oV_1 = oY
    if oZ_2 then
        oZ_2 = not oY or oW_2.Mult > oY.Mult
    end
    if oZ_2 then
        oV_1 = oW_2
    end
    if not oV_1 then
        return
    end
    if not lh(oW, oV_1.Name) then
        if not oV_1.CanBuy or oV_1.IsRobux then
            return
        end
        local oW_4 = kl(oV_1.Name)
        if oW_4 and fireproximityprompt then
            fireproximityprompt(oW_4)
        end
        return
    end
    if oU_1 ~= oV_1.Name then
        k7:FireServer("Food", oV_1.Name)
    end
end
local function onCopyUSDTAddress()
    ki(kD, "Copied USDT address")
end
local function fn659(bS)
    local nk = lj()
    if #nk == 0 then
        return nil
    elseif bS == "Worst" then
        return nk[1]
    elseif bS == "Best" then
        return nk[#nk]
    elseif bS == "Random" then
        return nk[math.random(1, #nk)]
    else
        local nl = k1()
        if not nl then
            return nk[1]
        end
        local nm
        local nn = math.huge
        for i, v in ipairs(nk) do
            local nk_1 = v.Position
            local no = kb(v.Stage)
            if no then
                nk_1 = no.Position
            end
            local Magnitude = (nk_1 - nl.Position).Magnitude
            if Magnitude < nn then
                nn = Magnitude
                nm = v
            end
        end
        return nm
    end
end
local function onImportConfigFromClipboardTex()
    local q8_1
    local q6 = Options.SaveManager_ImportSource.Value
    local q6_1
    local rc = if q6 then 1 else 0
    local ra = 2083 * rc + 202 * (1 - rc)
    local rb = 1615 * rc + 1120 * (1 - rc)
    if not ((ra * 3365 + rb * 1654 + ra * rb) % 16777213 == 13044550) then
        q6 = ""
    end
    local q7 = tostring(q6):match("^%s*(.-)%s*$")
    if q7 == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    q6_1, q8_1 = pcall(kV.JSONDecode, kV, q7)
    local q7_1 = not q6_1
    local rc_1 = if q7_1 then 1 else 0
    local ra_1 = 198 * rc_1 + 2957 * (1 - rc_1)
    local rb_1 = 1771 * rc_1 + 3091 * (1 - rc_1)
    if not ((ra_1 * 480 + rb_1 * 3997 + ra_1 * rb_1) % 16777213 == 7524385) then
        q7_1 = type(q8_1) ~= "table"
    end
    if not q7_1 then
        q7_1 = type(q8_1.objects) ~= "table"
    end
    if q7_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local q6_2 = 0
    for i, v in ipairs(q8_1.objects) do
        if kY(v) then
            q6_2 += 1
        end
    end
    if q6_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local q8_2 = q6_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(q6_2, q8_2), 6)
end
local function fn675()
    return kq.Character
end
local function onCopyEthereumAddress()
    ki(kI, "Copied Ethereum address")
end
local function fn703()
    kT(Toggles.AntiGameplayPause.Value)
end
local function fn709()
    local qG = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local qH = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if qH then
                local qH_1 = ke(k, v)
                if qH_1 then
                    qG[#qG + 1] = qH_1
                end
            end
        end
    end
    table.sort(qG, function(g7, g8)
        if g7.type ~= g8.type then
            return g7.type < g8.type
        end
        return g7.idx < g8.idx
    end)
    return { objects = qG }
end
local function fn722()
    if not Toggles.Fly.Value then
        local qr = lm()
        if qr then
            qr.PlatformStand = false
        end
    end
end
local function fn740(aR)
    local mv = aR and aR.Wins
    local mw = tonumber(mv) or 0
    return mw
end
local function fn745(a3)
    local mH = k1()
    local mI = not a3
    local mJ = not mH
    local mN = if mJ then 1 else 0
    local mL = 1780 * mN + 376 * (1 - mN)
    local mM = 1472 * mN + 1996 * (1 - mN)
    if not ((mL * 2632 + mM * 3081 + mL * mM) % 16777213 == 11840352) then
        mJ = mI
    end
    if mJ then
        return false
    elseif typeof(a3) == "Instance" then
        if a3:IsA("Model") then
            a3 = a3:GetPivot().Position
            mH.CFrame = CFrame.new(a3 + Vector3.new(0, 3, 0))
            return true
        elseif a3:IsA("BasePart") then
            a3 = a3.Position
            mH.CFrame = CFrame.new(a3 + Vector3.new(0, 3, 0))
            return true
        else
            return false
        end
    else
        mH.CFrame = CFrame.new(a3 + Vector3.new(0, 3, 0))
        return true
    end
end
local function onRscripts()
    ki(kc, "Copied Rscripts profile to clipboard")
end
local function onUnload()
    Library:Unload()
end
local function fn797(X, Y, Z)
    return string.format("<b>%s</b> %s %s", X, kU("-", "#5a6070"), kU(Y, Z))
end
local function fn798(bv, bw)
    local m4 = kb(bv)
    if m4 then
        return m4
    elseif not bw then
        return nil
    else
        lo(bw, 8)
        local m5 = os.clock() + 2.5
        while true do
            if not (os.clock() < m5) then
                return kb(bv)
            end
            m4 = kb(bv)
            if m4 then
                break
            end
            task.wait(0.1)
        end
        return m4
    end
end
local function onCopyLitecoinAddress()
    ki(kZ, "Copied Litecoin address")
end
local function fn807(aU)
    local my = aU and aU.Rebirths
    local mz = tonumber(my) or 0
    return mz
end
local function fn821(dh)
    if type(dh) ~= "table" then
        return nil
    end
    return dh["1"] or dh[1]
end
local function fn864(au)
    local mc = Toggles[au]
    return mc ~= nil and mc.Value == true
end
local function fn920()
    if not Toggles.WalkSpeedEnabled.Value then
        local qt = lm()
        if qt then
            qt.WalkSpeed = 16
        end
    end
end
kb = nil
kc = nil
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
Options = nil
ko = nil
kp = nil
kq = nil
CurrentCamera2 = nil
Toggles = nil
kt = nil
kv = nil
kw = nil
kx = nil
ky = nil
kz = nil
kA = nil
SaveManager = nil
connection2 = nil
kD = nil
kE = nil
kF = nil
kH = nil
kI = nil
kJ = nil
kK = nil
kL = nil
kN = nil
kO = nil
kP = nil
Library = nil
kR = nil
kS = nil
kT = nil
kU = nil
kV = nil
kW = nil
Label = nil
kY = nil
kZ = nil
local CoreGui, kM
k_ = nil
k0 = nil
k1 = nil
k2 = nil
VirtualUser = nil
k5 = nil
k6 = nil
k7 = nil
UserInputService = nil
k9 = nil
la = nil
DataAccessAPIClient = nil
lc = nil
connection = nil
le = nil
lf = nil
lg = nil
lh = nil
li = nil
lj = nil
lk = nil
ll = nil
lm = nil
ln = nil
lo = nil
local k3, lp, lr, ls, RunService, lu, lv, lw, lx, ly, lz
lp, ll, RunService, UserInputService, VirtualUser, kV, kM, CoreGui, kA, kq, ls, kh, kc, lr, lk, DataAccessAPIClient, k7, k0, kS, kJ, kE, kx = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local lq = 75
repeat
    lu = (lq * 2 + 5) % 11 + 1
    if lu <= 6 then
        if lu <= 3 then
            if lu <= 2 then
                if lu <= 1 then
                    lv = (vector.create((lq * 3 + 6) % 11 + 1, (lq * 2 + 7) % 13 + 1, (lq * 4 + 8) % 17 + 1))
                    lw = (vector.create((lq * 2 + 6) % 11 + 1, (lq * 11 + 13) % 13 + 1, (lq * 13 + 6) % 17 + 1))
                    lx = (vector.create((lq * 3 + 1) % 11 + 1, (lq * 10 + 4) % 13 + 1, (lq * 12 + 14) % 17 + 1))
                    ly = (vector.create((lq * 1 + 5) % 5 + 1, (lq * 4 + 3) % 7 + 1, (lq * 4 + 5) % 9 + 1))
                    if vector.dot(vector.cross(lv, (vector.cross(lw, lx))), ly) == vector.dot(lw * vector.dot(lv, lx) - lx * vector.dot(lv, lw), ly) + 4 then
                        kJ = kx:RemoteEvent("Rebirth")
                        lr = {
                            { Name = "Trash", Mult = 3, Rebirths = 2 },
                            { Mult = 1, Rebirths = 0, Name = "Poor" },
                            { Mult = 5, Rebirths = 5, Name = "Coin" }
                        }
                        kS = {
                            [11] = { Wins = 1000, Position = Vector3.new(-526.94506835938, 101.22668457031, -264.19506835938) },
                            [6] = { Wins = 35, Position = Vector3.new(-526.94506835938, 76.226684570312, 590.80493164062) },
                            [2] = { Wins = 2, Position = Vector3.new(-526.94506835938, 76.226684570312, 1360.0549316406) },
                            [8] = { Wins = 100, Position = Vector3.new(-526.94506835938, 76.226684570312, 270.80493164062) },
                            [4] = { Wins = 10, Position = Vector3.new(-526.94506835938, 76.226684570312, 1040.0549316406) },
                            [5] = { Wins = 20, Position = Vector3.new(-526.94506835938, 76.226684570312, 865.80493164062) },
                            [12] = { Wins = 2000, Position = Vector3.new(-526.94506835938, 101.22668457031, -424.19506835938) },
                            [7] = { Wins = 50, Position = Vector3.new(-526.94506835938, 76.226684570312, 430.80493164062) },
                            [13] = { Wins = 10000, Position = Vector3.new(-527.05493164062, 74.526672363281, -895.19506835938) },
                            [10] = { Wins = 500, Position = Vector3.new(-526.94506835938, 101.22668457031, -104.19506835938) },
                            [9] = { Wins = 200, Position = Vector3.new(-526.94506835938, 101.22668457031, 55.804931640625) },
                            [3] = { Wins = 4, Position = Vector3.new(-526.94506835938, 76.226684570312, 1200.0549316406) }
                        }
                        kE = { ["Golden Apple"] = true, ["Treasure Chest"] = true, ["Golden Protein Bar"] = true }
                    else
                        kS = lr:RemoteEvent("Rebirth")
                        kJ = {
                            { Name = "Poor", Mult = 1, Rebirths = 0 },
                            { Name = "Trash", Mult = 3, Rebirths = 2 },
                            { Name = "Coin", Mult = 5, Rebirths = 5 }
                        }
                        kE = {
                            [2] = { Wins = 2, Position = Vector3.new(-526.94506835938, 76.226684570312, 1360.0549316406) },
                            [3] = { Wins = 4, Position = Vector3.new(-526.94506835938, 76.226684570312, 1200.0549316406) },
                            [4] = { Wins = 10, Position = Vector3.new(-526.94506835938, 76.226684570312, 1040.0549316406) },
                            [5] = { Wins = 20, Position = Vector3.new(-526.94506835938, 76.226684570312, 865.80493164062) },
                            [6] = { Wins = 35, Position = Vector3.new(-526.94506835938, 76.226684570312, 590.80493164062) },
                            [7] = { Wins = 50, Position = Vector3.new(-526.94506835938, 76.226684570312, 430.80493164062) },
                            [8] = { Wins = 100, Position = Vector3.new(-526.94506835938, 76.226684570312, 270.80493164062) },
                            [9] = { Wins = 200, Position = Vector3.new(-526.94506835938, 101.22668457031, 55.804931640625) },
                            [10] = { Wins = 500, Position = Vector3.new(-526.94506835938, 101.22668457031, -104.19506835938) },
                            [11] = { Wins = 1000, Position = Vector3.new(-526.94506835938, 101.22668457031, -264.19506835938) },
                            [12] = { Wins = 2000, Position = Vector3.new(-526.94506835938, 101.22668457031, -424.19506835938) },
                            [13] = { Wins = 10000, Position = Vector3.new(-527.05493164062, 74.526672363281, -895.19506835938) }
                        }
                        kx = { ["Golden Apple"] = true, ["Golden Protein Bar"] = true, ["Treasure Chest"] = true }
                    end
                    lq = (lq + 83) % 88
                else
                    lv = (vector.create((lq * 6 + 3) % 11 + 1, (lq * 6 + 5) % 13 + 1, (lq * 2 + 4) % 17 + 1))
                    local r3 = vector.floor(lv) + vector.ceil(lv * -1)
                    if vector.dot(r3, r3) == 0 then
                        lp = game:GetService("Players")
                    else
                        lk = game:GetService("Players")
                    end
                    lq = (lq + 61) % 88
                end
            else
                if (lq * 3 + 8) * 5 % 4 == ((lq * 3 + 8) * 5 + 15) % 4 then
                    kM = game:GetService("ReplicatedStorage")
                else
                    ll = game:GetService("ReplicatedStorage")
                end
                lq = (lq + 39) % 88
            end
        elseif lu <= 5 then
            if lu <= 4 then
                if (lq * 2 + 2) * 10 % 3 == ((lq * 2 + 2) * 10 + 0) % 3 then
                    RunService = game:GetService("RunService")
                else
                    lp = game:GetService("RunService")
                end
                lq = (lq + 17) % 88
            else
                lv = {
                    "zolfjlpahly",
                    "lfwuqebus",
                    "yqfptdqgp",
                    "kxkkulcaxpq",
                    "hmtk",
                    "wnrgypprdj",
                    "uqrdgxhmk",
                    "vhdilx"
                }
                local r5 = lq
                lw = lv[r5 % 8 + 1]
                if lw:len() >= lw:gsub("(.)", "%1%1", r5 % 3 % 2 + 1):len() then
                    lr = game:GetService("UserInputService")
                else
                    UserInputService = game:GetService("UserInputService")
                end
                lq = (lq + 61) % 88
            end
        else
            local sh = bit32.rrotate(bit32.bxor(bit32.lrotate(lq, 26), string.byte(tostring(k0))), 11)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(sh, 3284215601), 99190730), (bit32.bxor(bit32.band(sh, 1010751694), 67535871))), 99190730), 67535871) ~= sh then
                kc = game:GetService("VirtualUser")
            else
                VirtualUser = game:GetService("VirtualUser")
            end
            lq = (lq + 39) % 88
        end
    elseif lu <= 9 then
        if lu <= 8 then
            if lu <= 7 then
                lv = (vector.create((lq * 7 + 8) % 11 + 1, (lq * 11 + 6) % 13 + 1, (lq * 15 + 9) % 17 + 1))
                local sk = vector.floor(lv) + vector.ceil(lv * -1)
                if vector.dot(sk, sk) == 3 then
                    kA = game:GetService("HttpService")
                    kV = game:GetService("GuiService")
                    kq = game:GetService("CoreGui")
                    kM = game:GetService("Workspace")
                    lp = CoreGui.LocalPlayer
                else
                    kV = game:GetService("HttpService")
                    kM = game:GetService("GuiService")
                    CoreGui = game:GetService("CoreGui")
                    kA = game:GetService("Workspace")
                    kq = lp.LocalPlayer
                end
                lq = (lq + 83) % 88
            else
                if (lq * 3 + 8) * 5 % 4 == ((lq * 3 + 8) * 5 + 9) % 4 then
                    kh = "Poor to Rich"
                    ls = "https://discord.gg/ehKVq7pf7v"
                else
                    ls = "Poor to Rich"
                    kh = "https://discord.gg/ehKVq7pf7v"
                end
                lq = (lq + 50) % 88
            end
        else
            lv = (vector.create((lq * 4 + 6) % 11 + 1, (lq * 7 + 7) % 13 + 1, (lq * 2 + 6) % 17 + 1))
            lw = (vector.create((lq * 5 + 7) % 11 + 1, (lq * 11 + 7) % 13 + 1, (lq * 11 + 4) % 17 + 1))
            lx = (vector.create((lq * 5 + 8) % 11 + 1, (lq * 7 + 2) % 13 + 1, (lq * 1 + 13) % 17 + 1))
            ly = (vector.create((lq * 7 + 2) % 11 + 1, (lq * 9 + 3) % 13 + 1, (lq * 3 + 2) % 17 + 1))
            if vector.dot(vector.cross(lv, lw), (vector.cross(lx, ly))) == vector.dot(lv, lx) * vector.dot(lw, ly) - vector.dot(lv, ly) * vector.dot(lw, lx) + 1 then
                lr = "https://rscripts.net/@Ouroboros"
            else
                kc = "https://rscripts.net/@Ouroboros"
            end
            lq = (lq + 17) % 88
        end
    elseif lu <= 10 then
        if (lq * 2 + 7) * 4 % 3 == ((lq * 2 + 7) * 4 + 0) % 3 then
            lr = require(ll:WaitForChild("Packages"):WaitForChild("Net"))
        else
            ll = require(lr:WaitForChild("Packages"):WaitForChild("Net"))
        end
        lq = (lq + 83) % 88
    else
        lu = {
            "npq",
            "gmgxd",
            "brlgxc",
            "vozywmsbphl",
            "sznelyrplpys",
            "daoift",
            "uhbplgslbtq",
            "fdahbxxcix",
            "oqnaecsv",
            "zkofsfva",
            "nypiryfqd"
        }
        if lu[(lq * 18 + 112) % 11 + 1] < lu[(lq * 18 + 112) % 11 + 1] then
            k7 = require(lr:WaitForChild("GetRebirthInfo"))
            ll = require(lr:WaitForChild("Controllers"):WaitForChild("Data"):WaitForChild("DataAccessAPIClient"))
            k0 = DataAccessAPIClient:RemoteEvent("Equip")
            lk = DataAccessAPIClient:RemoteEvent("TrailsBuy")
        else
            lk = require(ll:WaitForChild("GetRebirthInfo"))
            DataAccessAPIClient = require(ll:WaitForChild("Controllers"):WaitForChild("Data"):WaitForChild("DataAccessAPIClient"))
            k7 = lr:RemoteEvent("Equip")
            k0 = lr:RemoteEvent("TrailsBuy")
        end
        lq = (lq + 6) % 88
    end
until (lq * 57 + 68) % 88 == 42
lu, lx = pcall(require, ll:WaitForChild("Inventory"):WaitForChild("Food"):WaitForChild("Config"))
lw = lu
if lw then
    lp = 4
    repeat
        lq = (vector.create((lp * 5 + 5) % 11 + 1, (lp * 8 + 3) % 13 + 1, (lp * 3 + 16) % 17 + 1))
        lr = (vector.create((lp * 5 + 4) % 11 + 1, (lp * 7 + 1) % 13 + 1, (lp * 5 + 5) % 17 + 1))
        local rZ = vector.cross(lq, lr)
        local r_ = vector.dot(lq, lr)
        if vector.dot(rZ, rZ) + r_ * r_ == vector.dot(lq, lq) * vector.dot(lr, lr) then
            lw = type(lx) == "table"
        else
            lx = type(lw) == "table"
        end
        lp = (lp + 7) % 8
    until (lp * 5 + 2) % 8 == 1
end
if lw then
    lp = 6
    repeat
        lq = {
            "zyuic",
            "gcsdhcn",
            "gdmiqgobtwky",
            "qkvbt",
            "vgwc",
            "lskocyydg",
            "qzcax",
            "bapgsmwepmu",
            "whmoq",
            "oflw",
            "oyxqlugs",
            "gkrigqknbtai",
            "blts"
        }
        if lq[(lp * 16 + 38) % 13 + 1] <= lq[(lp * 16 + 38) % 13 + 1] then
            lw = type(lx.FoodBalance) == "table"
        else
            lx = type(lw.FoodBalance) == "table"
        end
        lp = (lp + 5) % 8
    until (lp * 3 + 2) % 8 == 3
end
if lw then
    for k, v in pairs(lx.FoodBalance) do
        lp = type(v) == "table"
        if lp then
            lq = v.DevProductId or v.DevProductName
            lp = lq
        end
        if lp then
            kx[k] = true
        end
    end
end
Library, SaveManager, Toggles, Options, k9, kZ, kR, kI, kD, kv, ko, kj, kk, lu, Label, kP, ki, le, kU, kz, kL, kg, lm, k1, kw, k5, kH, km, k2, ky, kb, lo, kF, lj, kW, kK, kO, ln, la, kl, lh, kN, kt, k6, k_, lg, kd = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
ki = fn262
le = fn611
kU = fn485
kz = fn797
local lF = "#7fd47f"
local lD = "#6ec1ff"
k9 = "#e8a34d"
local lA = "#8b93a3"
kZ = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
kR = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
kI = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
kD = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
kv = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
ko = "https://paypal.me/TheTruckerGOD"
kj = "https://venmo.com/u/miserablemusic"
lw = "#345d9d"
local lG = "#f7931a"
local lE = "#627eea"
local lC = "#26a17b"
local lB = "#14f195"
ly = "#0070ba"
lx = "#008cff"
kL = fn864
kg = fn675
lm = fn189
k1 = fn77
kw = fn509
k5 = fn740
kH = fn807
km = fn584
k2 = fn745
ky = fn573
kb = fn31
lo = function(bo, bp)
    pcall(function()
        local m_ = bp
        local m3 = if m_ then 1 else 0
        local m1 = 1739 * m3 + 2149 * (1 - m3)
        local m2 = 3270 * m3 + 3438 * (1 - m3)
        if not ((m1 * 3317 + m2 * 1918 + m1 * m2) % 16777213 == 949440) then
            m_ = 5
        end
        kq:RequestStreamAroundAsync(bo, m_)
    end)
end
kF = fn798
lj = fn332
kW = fn659
kK = fn67
kO = fn412
ln = fn127
la = fn418
kl = fn614
lh = fn558
kN = fn821
kt = fn293
k6 = fn639
k_ = fn181
lg = fn16
kd = fn110
lp = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = kh, Copyable = true }, "|", ls },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local lH = {
    Info = lp:AddTab("Info", "info"),
    Main = lp:AddTab("Main", "coins"),
    Player = lp:AddTab("Player", "person-standing"),
    Settings = lp:AddTab("Settings", "settings")
}
if (not ki and ki and (not ki and not ki) or (ki or ki) and (ki or false)) and ("#e8a34d" and (ki and false or k9 and ki)) or not ((not ki and ki and (not ki and not ki) or (ki or ki) and (ki or false)) and ("#e8a34d" and (ki and false or k9 and ki))) then
    kk = "Unknown"
    pcall(fn619)
    lu = lH.Info:AddLeftGroupbox("Account", "circle-user")
    lu:AddLabel(kz("User", kq.Name, lF), true)
    lu:AddLabel(kz("Status", "Keyless", lF), true)
    lu:AddLabel(kz("Executor", kk, lF), true)
    lz = lH.Info:AddLeftGroupbox("Game Info", "gamepad-2")
    lz:AddLabel(kU(ls .. " [" .. tostring(game.PlaceId) .. "]", lD), true)
    lz:AddLabel(kz("Place ID", tostring(game.PlaceId), lD), true)
    Label = lz:AddLabel(kz("Session time", "0s", k9), true)
else
    lz = "Unknown"
    pcall(fn619)
    ls = kU.Info:AddLeftGroupbox("Account", "circle-user")
    ls:AddLabel(kk("User", Label.Name, lH), true)
    ls:AddLabel(kk("Status", "Keyless", lH), true)
    ls:AddLabel(kk("Executor", "Unknown", lH), true)
    lF = kU.Info:AddLeftGroupbox("Game Info", "gamepad-2")
    lF:AddLabel(lu(k9 .. " [" .. tostring(game.PlaceId) .. "]", kq), true)
    lF:AddLabel(kk("Place ID", tostring(game.PlaceId), kq), true)
    kz = lF:AddLabel(kk("Session time", "0s", lD), true)
end
kP = tostring(game.JobId)
lv = #kP > 18
if lv then
    lp = 7
    repeat
        lq = {
            "nkiirouw",
            "jbdeggybw",
            "usthopq",
            "cwus",
            "ynppvkpporm",
            "jnrwstwjtf",
            "xhbyemkec",
            "oeuhampphjr",
            "sam",
            "mvbv",
            "dbtqxq",
            "baymht"
        }
        if lq[(lp * 82 + 79) % 12 + 1] < lq[(lp * 82 + 79) % 12 + 1] then
            kP = string.sub(lv, 1, 18) .. "..."
        else
            lv = string.sub(kP, 1, 18) .. "..."
        end
        lp = (lp + 2) % 8
    until (lp * 7 + 4) % 8 == 3
end
lp = lv
local l1 = if lp then 1 else 0
local l_ = 583 * l1 + 297 * (1 - l1)
local l0 = 1339 * l1 + 391 * (1 - l1)
if not ((l_ * 2419 + l0 * 3555 + l_ * l0) % 16777213 == 6951059) then
    lp = kP
end
kf = nil
local lJ = lp
lz:AddLabel(kz("Server", lJ, lA), true)
lz:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
kf = os.clock()
task.spawn(worker)
local ScriptsGroup = lH.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(kU("Included in this hub", lA), true)
ScriptsGroup:AddLabel(kU(ls, lD), true)
lv = lH.Info:AddRightGroupbox("Features", "list")
lv:AddLabel(kU("Auto Win", lD), true)
lv:AddLabel(kU("Auto Rebirth", k9), true)
lv:AddLabel(kU("Auto Trails", lF), true)
lv:AddLabel(kU("Auto Tools", lD), true)
lv:AddLabel(kU("Auto Train", k9), true)
lv:AddLabel(kU("Player Utilities", lA), true)
lu = lH.Info:AddRightGroupbox("Socials", "link")
lu:AddButton({ Text = "Discord", Func = le })
lu:AddButton({ Text = "Rscripts", Func = onRscripts })
lq = lH.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
lq:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
lq:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
lq:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
lq:AddButton({ Text = "Copy Discord Invite", Func = le })
local DonationsGroup = lH.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(kU("All donations are optional but appreciated.", k9), true)
DonationsGroup:AddLabel(kU("If you donate you get a special role, just PING after you donate.", lF), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(kU("LTC / Litecoin", lw), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(kU("BTC / Bitcoin", lG), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(kU("ETH / Ethereum", lE), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(kU("USDT", lC), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(kU("Solana", lB), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(kU("PayPal", ly), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(kU("Venmo", lx), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(kU("Don't have any of the listed currencies but still wanna donate?", lA), true)
DonationsGroup:AddLabel(kU("DM me and we'll work something out.", lD), true)
local FaqGroup = lH.Info:AddRightGroupbox("FAQ", "circle-help")
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
for k, v in pairs(lH) do
    if v ~= lH.Info then
        fn114(v)
    end
end
lf, li, connection, connection2, CurrentCamera2, kp, kT, k3, ke, lc, kY = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ls = lH.Main:AddLeftGroupbox("Automation", "bot")
ls:AddToggle("AutoWin", { Text = "Auto Win", Default = false })
ls:AddDropdown("AutoWinMode", { Text = "Win Mode", Values = { "Best", "Worst", "Nearest", "Random" }, Default = "Best" })
ls:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
ls:AddToggle("AutoTrain", { Text = "Auto Train", Default = false })
lr = lH.Main:AddRightGroupbox("Shop", "shopping-bag")
lr:AddToggle("AutoBestTrails", { Text = "Auto Buy/Equip Best Trails", Default = false })
lr:AddToggle("AutoBestTools", { Text = "Auto Buy/Equip Best Tools", Default = false })
lq = lH.Player:AddLeftGroupbox("Movement", "footprints")
lq:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
lq:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
lq:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
lq:AddToggle("NoClip", { Text = "NoClip", Default = false })
lq:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
lw = lH.Player:AddRightGroupbox("Fly", "feather")
lw:AddToggle("Fly", { Text = "Fly", Default = false })
lw:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
lv = lH.Settings:AddLeftGroupbox("Menu")
lv:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
lv:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
lv:AddButton({ Text = "Unload", Func = onUnload })
lf = tick()
li = tick()
pcall(function()
    for i, v in ipairs(getconnections(kq.Idled)) do
        local pK = v
        pcall(function()
            pK:Disable()
        end)
    end
end)
kp = fn627
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
task.spawn(antiAfkLoop)
kT = function(fQ)
    pcall(function()
        kM:SetGameplayPausedNotificationEnabled(not fQ)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not fQ
        end
    end)
    if not fQ then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(kq, "GameplayPaused", false)
        else
            kq.GameplayPaused = false
        end
    end)
end
Toggles.AntiGameplayPause:OnChanged(fn703)
task.spawn(antiGameplayPauseLoop)
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera2 = kA.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn722)
Toggles.WalkSpeedEnabled:OnChanged(fn920)
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
ThemeManager:ApplyToTab(lH.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/PoorToRich")
lu = SaveManager:BuildConfigSection(lH.Settings)
k3 = fn491
ke = fn185
lc = fn709
kY = function(ha)
    local qX
    qX = nil
    local qY = type(ha) ~= "table" or type(ha.idx) ~= "string" or type(ha.type) ~= "string" or SaveManager.Ignore[ha.idx]
    if qY then
        return false
    end
    qX = k3(ha.type, ha.idx)
    if not qX then
        return false
    end
    local qY_1 = pcall(function()
        if ha.type == "Input" then
            if type(ha.text) ~= "string" then
                return
            end
            qX:SetValue(ha.text)
        elseif ha.type == "ColorPicker" then
            qX:SetValueRGB(Color3.fromHex(ha.value), ha.transparency)
        elseif ha.type == "KeyPicker" then
            qX:SetValue({ ha.key, ha.mode, ha.modifiers })
            if ha.mode == "Toggle" and ha.toggled ~= nil then
                qX.Toggled = ha.toggled
                qX:Update()
            end
        else
            qX:SetValue(ha.value)
        end
    end)
    return qY_1
end
lu:AddDivider()
lu:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
lu:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
lu:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
Library:OnUnload(fn219)
