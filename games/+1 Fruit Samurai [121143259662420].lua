local fns = {}
local x4_1, x4_5, x4_7, x4_12, x4_14, x4_16, x4_18, x4_21, x4_24, x4_31, x4_33, x4_35, x4_36, x4_38, x4_39, ScriptsGroup, x4_47, x4_49, x4_51
local oy
local pf
local oX
local oE
local pl
local oi
local o2
local VirtualUser
local oK
local CoreGui
local connection3
local o8
local pQ
local oQ
local px
local connection5
local oW
local pD
local BossQTEEvent
local pk
local oh
local o1
local pJ
local oJ
local oo
local o7
local connection
local oP
local GuiService
local pd
local pV
local oV
local pC
local oC
local pj
local og
local o0
local pI
local oI
local Label
local o6
local pO
local pv
local ov
local pc
local pU
local pB
local GetDataFunc
local pi
local of
local o_
local pH
local UEquipEvent
local Workspace
local om
local o5
local UserInputService
local oN
local pu
local ou
local pb
local oT
local pA
local connection4
local ph
local oe
local oZ
local HttpService
local CurrentCamera2
local pn
local ol
local o4
local pM
local oM
local pt
local ot
local pa
local pS
local oS
local pz
local RebirthModule
local PlayerGui
local pF
local connection2
local oj
local o3
local pL
local ps
local oq
local o9
local pR
local URebirthEvent
local py
function fns.fn2()
    local rB = pv("WinStage") or oq[1]
    local rC = tostring(rB)
    local rB_1 = tonumber(string.match(rC, "Stage (%d+)"))
    return rB_1 or 1
end
function fns.fn6()
    local q0_1
    local q__1
    if typeof(gethui) == "function" then
        q__1, q0_1 = pcall(gethui)
        if q__1 and q0_1 then
            return q0_1
        end
        return CoreGui
    end
    return CoreGui
end
function fns.fn9()
    return pk.Character
end
function fns.fn19(ef)
    local tR = typeof(mousemoveabs) == "function" and typeof(mouse1click) == "function"
    if tR then
        pcall(mousemoveabs, ef.X, ef.Y)
        pcall(mouse1click)
        return true
    end
    return px(ef, ef + Vector2.new(24, 0))
end
function fns.worker2()
    while not pt.Unloaded do
        if pV("AutoGetWin") then
            local wv = pR()
            if not wv then
                pcall(pI)
            end
            local ww = not pk:GetAttribute("IsDash") and not py and not wv and os.clock() - oy >= 0.75
            if ww then
                pcall(pu)
            end
            task.wait(0.2)
        else
            task.wait(0.25)
        end
    end
end
function fns.fn62()
    local LocalFruits = Workspace:FindFirstChild("LocalFruits")
    if not LocalFruits then
        return nil
    end
    local uB
    local uC
    for i, child in ipairs(LocalFruits:GetChildren()) do
        local uA_1 = child:IsA("Model") and child:GetAttribute("IsBoss") and not child:GetAttribute("Sliced")
        if uA_1 then
            uB = uB or child
            local uA_3 = child:FindFirstChild("TargetHighlight") or child:GetAttribute("InSlowMo")
            local uM = if uA_3 then 1 else 0
            local uK = 1145 * uM + 3730 * (1 - uM)
            local uL = 1168 * uM + 2420 * (1 - uM)
            if not ((uK * 2218 + uL * 2327 + uK * uL) % 16777213 == 6594906) then
                uA_3 = child:FindFirstChildWhichIsA("Highlight")
            end
            if uA_3 then
                uC = child
                break
            end
        end
    end
    return uC or uB
end
function fns.fn72(T, U)
    if setclipboard then
        setclipboard(T)
    elseif toclipboard then
        toclipboard(T)
    end
    pt:Notify(U)
end
function fns.fn106(aa, ab)
    return string.format('<font color="%s">%s</font>', ab, aa)
end
function fns.onCharacterAdded()
    py = false
end
function fns.onRscripts()
    oI(oM, "Copied Rscripts profile to clipboard")
end
function fns.onCopySolanaAddress()
    oI(oT, "Copied Solana address")
end
function fns.fn206(gZ)
    local DiscordGroup = gZ:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = ov })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = ov })
end
function fns.fn209(c0)
    local sQ = pJ()
    if #sQ == 0 then
        return nil
    end
    for i, v in ipairs(sQ) do
        if v:GetAttribute("IsBoss") then
            return v
        end
    end
    if c0 then
        for i, v in ipairs(sQ) do
            local sR = (v:GetAttribute("IsTrophy"))
            if sR then
                local sS = pb(v) or 1
                sR = sS == c0
            end
            if sR then
                return v
            end
        end
        for i, v in ipairs(sQ) do
            if not v:GetAttribute("IsTrophy") then
                return v
            end
        end
    end
    for i, v in ipairs(sQ) do
        if not v:GetAttribute("IsTrophy") then
            return v
        end
    end
    return sQ[1]
end
function fns.fn215()
    local leaderstats = pk:FindFirstChild("leaderstats")
    local rw = leaderstats and leaderstats:FindFirstChild("Damage")
    if rw then
        local rw_1 = tonumber(rw.Value) or 1
        return rw_1
    end
    return 1
end
function fns.fn217()
    local vT_1
    local vS_1
    if identifyexecutor then
        vT_1, vS_1 = identifyexecutor()
        local vU = vT_1 ~= ""
        local vV = type(vT_1) == "string" and vU
        if vV then
            local vU_1 = type(vS_1) == "string" and vS_1 ~= "" and vT_1 .. " " .. vS_1
            local vS_2 = vU_1
            local vZ = if vS_2 then 1 else 0
            local vX = 1571 * vZ + 2021 * (1 - vZ)
            local vY = 24 * vZ + 2330 * (1 - vZ)
            if not ((vX * 1848 + vY * 3921 + vX * vY) % 16777213 == 3035016) then
                vS_2 = vT_1
            end
            oN = vS_2
        end
    end
end
function fns.onStepped()
    if pt.Unloaded then
        return
    end
    if o_.NoClip and o_.NoClip.Value then
        local Character = pk.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local v2_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if v2_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.fn234()
    local BossQTEGui = PlayerGui:FindFirstChild("BossQTEGui")
    if BossQTEGui and BossQTEGui.Enabled then
        return BossQTEGui
    end
    return nil
end
function fns.worker3()
    while not pt.Unloaded do
        if pV("AutoTrain2x") then
            pcall(pn)
            task.wait(0.08)
        else
            task.wait(0.25)
        end
    end
end
function fns.fn270()
    local sG = {}
    local LocalFruits = Workspace:FindFirstChild("LocalFruits")
    if not LocalFruits then
        return sG
    end
    for i, child in ipairs(LocalFruits:GetChildren()) do
        local sH_1 = child:IsA("Model") and not child:GetAttribute("Sliced")
        if sH_1 then
            local sH_2 = child:FindFirstChild("TargetHighlight") or child:GetAttribute("IsChoiceTarget")
            if not sH_2 then
                local sI = child:GetAttribute("IsBoss") and child:FindFirstChildWhichIsA("Highlight")
                sH_2 = sI
            end
            if sH_2 then
                sG[#sG + 1] = child
            end
        end
    end
    return sG
end
function fns.fn275()
    if not o_.WalkSpeedEnabled.Value then
        local wo = o1()
        if wo then
            wo.WalkSpeed = 16
        end
    end
end
function fns.onCopyPayPalLink()
    oI(oP, "Copied PayPal link")
end
function fns.fn323()
    connection:Disconnect()
    connection2:Disconnect()
    connection3:Disconnect()
    connection4:Disconnect()
    connection5:Disconnect()
    pH(false)
    print("Unloaded!")
end
function fns.onJumpRequest()
    if pt.Unloaded then
        return
    end
    if o_.InfJump and o_.InfJump.Value then
        local wa_1 = o1()
        if wa_1 then
            wa_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.fn357()
    local q6 = pQ()
    if syn and syn.protect_gui then
        syn.protect_gui(pt.ScreenGui)
    elseif protect_gui then
        protect_gui(pt.ScreenGui)
    end
    pt.ScreenGui.Parent = q6
end
function fns.antiAfkLoop()
    while not pt.Unloaded do
        task.wait(2)
        if o_.AntiAfk.Value then
            local w1 = tick() - pl
            local w2 = tick() - pi
            if w1 >= 300 and w2 >= 60 then
                pcall(oZ)
            else
                if w1 < 300 and w2 >= 300 then
                    pcall(oZ)
                end
            end
        end
    end
end
function fns.fn376(cz)
    local sx
    if not cz then
        return nil
    end
    local sr = cz:GetAttribute("FruitName") or cz.Name
    local ss = tostring(sr)
    local sw = 8
    local sv = -1
    while true do
        if not (false and sw <= 1 or true and sw >= 1) then
            return nil
        end
        sx = sw
        if string.find(ss, "Stage" .. sx, 1, true) then
            break
        end
        sw += sv
    end
    return sx
end
function fns.fn382()
    local rm = pc()
    local rn = rm and rm:FindFirstChildOfClass("Humanoid")
    return rn
end
function fns.fn400()
    if not pk:GetAttribute("IsDash") then
        oy = os.clock()
    end
end
function fns.worker4()
    while not pt.Unloaded do
        if pV("AutoOpenChest") then
            pcall(o7)
            task.wait(1.25)
        else
            task.wait(0.35)
        end
    end
end
function fns.fn423()
    pC("Trail", "TrailBuy")
end
function fns.antiGameplayPauseLoop()
    while not pt.Unloaded do
        task.wait(1)
        if o_.AntiGameplayPause.Value then
            pH(true)
        end
    end
end
function fns.fn433()
    local r3 = oQ()
    local r4 = oK()
    local r5 = not r4
    local r6 = not r3
    local sa = if r6 then 1 else 0
    local r8 = 3605 * sa + 927 * (1 - sa)
    local r9 = 3348 * sa + 1803 * (1 - sa)
    if not ((r8 * 1143 + r9 * 2454 + r8 * r9) % 16777213 == 7628834) then
        r6 = r5
    end
    if r6 then
        return false
    end
    r4.AssemblyLinearVelocity = Vector3.zero
    r4.AssemblyAngularVelocity = Vector3.zero
    r4.CFrame = CFrame.new(r3.Position + Vector3.new(0, 3, 0), r3.Position + Vector3.new(0, 3, -10))
    return true
end
function fns.fn434()
    local vA_1
    local vB_1
    vA_1, vB_1 = pcall(function()
        return GetDataFunc:InvokeServer("Weapon")
    end)
    local vC = not vA_1 or type(vB_1) ~= "table" or type(vB_1.Catalog) ~= "table"
    if vC then
        return
    end
    local vD = vB_1.DataInv and vB_1.DataInv.Inventory or {}
    local vC_2 = vB_1.DataInv and vB_1.DataInv.Equipped
    local vD_1 = nil
    for k, v in pairs(vB_1.Catalog) do
        local vB_2 = type(v) == "table" and type(v.ItemName) == "string" and vD[v.ItemName]
        if vB_2 then
            local vB_3 = tonumber(v.DamagePer) or 0
            local vB_4 = tonumber(v.Order) or 0
            local vF = not vD_1
            if not vF then
                local vB_5 = tonumber(vD_1.DamagePer) or 0
                vF = vB_3 > vB_5
            end
            if not vF then
                local vB_6 = (tonumber(vD_1.DamagePer))
                local vR = if vB_6 then 1 else 0
                local vP = 3966 * vR + 211 * (1 - vR)
                local vQ = 1601 * vR + 2888 * (1 - vR)
                if not ((vP * 2501 + vQ * 3290 + vP * vQ) % 16777213 == 4758609) then
                    vB_6 = 0
                end
                local vH = vB_3 == vB_6
                if vH then
                    local vB_7 = tonumber(vD_1.Order) or 0
                    vH = vB_4 > vB_7
                end
                vF = vH
            end
            if vF then
                vD_1 = v
            end
        end
    end
    if not vD_1 or vD_1.ItemName == vC_2 then
        return
    end
    UEquipEvent:FireServer("Weapon", vD_1, "Normal")
end
function fns.fn435(j1, j2)
    local Type = j2.Type
    if Type == "Toggle" then
        return { idx = j1, type = "Toggle", value = j2.Value == true }
    elseif Type == "Slider" then
        return { idx = j1, type = "Slider", value = tostring(j2.Value) }
    elseif Type == "Dropdown" then
        return { idx = j1, type = "Dropdown", multi = j2.Multi == true, value = j2.Value }
    elseif Type == "Input" then
        local xg = j2.Value or ""
        return { idx = j1, type = "Input", text = tostring(xg) }
    elseif Type == "ColorPicker" then
        return { idx = j1, type = "ColorPicker", value = j2.Value:ToHex(), transparency = j2.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = j1,
            type = "KeyPicker",
            mode = j2.Mode,
            key = j2.Value,
            modifiers = j2.Modifiers,
            toggled = j2.Toggled
        }
    else
        return nil
    end
end
function fns.fn440()
    local Maps = Workspace:FindFirstChild("Maps")
    local rF = Maps and Maps:FindFirstChild("Stairs")
    local rE_1 = rF
    if rF then
        rF = rE_1:FindFirstChild("ChargeZoneTrigger")
    end
    return rF
end
function fns.fn464()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    pi = tick()
end
function fns.fn480()
    local uR = pR()
    if not uR then
        return false
    end
    local uR_1 = pz()
    if uR_1 == 0 then
        ol()
        return true
    elseif os.clock() - oe < 0.12 then
        return true
    else
        oe = os.clock()
        local CurrentCamera = Workspace.CurrentCamera
        local uS = CurrentCamera and Vector2.new(CurrentCamera.ViewportSize.X * 0.5, CurrentCamera.ViewportSize.Y * 0.5)
        local uR_3 = uS or Vector2.new(400, 300)
        local uR_4 = o9()
        if typeof(uR_4) == "function" then
            pcall(uR_4, oE(), uR_3)
        else
            om()
        end
        if pz() == 0 then
            ol()
        end
        return true
    end
end
function fns.onCopyJoinScript_JobID()
    local hf = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, oh)
    oI(hf, "Copied join script to clipboard")
end
function fns.fn488()
    if os.clock() - pU < 0.35 then
        return false
    end
    pU = os.clock()
    local us = ot()
    if typeof(us) == "function" then
        return pcall(us)
    end
    return pcall(function()
        BossQTEEvent:FireServer("ClaimWin")
    end)
end
function fns.fn508()
    if pR() then
        return
    end
    local CurrentCamera = Workspace.CurrentCamera
    if CurrentCamera and CurrentCamera.CameraType ~= Enum.CameraType.Custom then
        CurrentCamera.CameraType = Enum.CameraType.Custom
        CurrentCamera.FieldOfView = 70
    end
    local uu_1 = oK()
    local uv_1 = uu_1 and uu_1.Anchored and not pk:GetAttribute("IsDash")
    if uv_1 then
        uu_1.Anchored = false
    end
    py = false
end
function fns.fn511()
    local r__1
    local rZ_1
    rZ_1, r__1 = pcall(function()
        return game:GetService("VirtualInputManager")
    end)
    if rZ_1 then
        return r__1
    end
    return nil
end
function fns.onInputBegan()
    pl = tick()
end
function fns.onInputChanged(jx)
    local UserInputType = jx.UserInputType
    local wU = UserInputType == Enum.UserInputType.MouseMovement
    local wY = if wU then 1 else 0
    local wW = 3603 * wY + 1920 * (1 - wY)
    local wX = 593 * wY + 2972 * (1 - wY)
    if not ((wW * 2353 + wX * 2548 + wW * wX) % 16777213 == 12125402) then
        wU = UserInputType == Enum.UserInputType.Gamepad1
    end
    if wU then
        pl = tick()
    end
end
function fns.onImportConfigFromClipboardTex()
    local xS_1
    local xQ = oV.SaveManager_ImportSource.Value or ""
    local xQ_1
    local xR = tostring(xQ):match("^%s*(.-)%s*$")
    if xR == "" then
        pt:Notify("Paste an exported config into the box first")
        return
    end
    xQ_1, xS_1 = pcall(HttpService.JSONDecode, HttpService, xR)
    local xR_1 = not xQ_1 or type(xS_1) ~= "table" or type(xS_1.objects) ~= "table"
    if xR_1 then
        pt:Notify("That is not a valid exported config")
        return
    end
    local xQ_2 = 0
    for i, v in ipairs(xS_1.objects) do
        if oC(v) then
            xQ_2 += 1
        end
    end
    if xQ_2 == 0 then
        pt:Notify("No settings in that config matched this script")
        return
    end
    oV.SaveManager_ImportSource:SetValue("")
    local xS_2 = xQ_2 == 1 and "" or "s"
    pt:Notify(("Imported %d setting%s"):format(xQ_2, xS_2), 6)
end
function fns.worker6()
    while not pt.Unloaded do
        if pV("AutoBuyAura") then
            pcall(pM)
        end
        if pV("AutoBuyTrail") then
            pcall(pF)
        end
        if pV("AutoEquipBestWeapon") then
            pcall(o3)
        end
        task.wait(1)
    end
end
function fns.fn580()
    pC("Aura", "AuraBuy")
end
function fns.fn584(jU, jV)
    local w9_1 = (jU == "Toggle" and o_ or oV)[jV]
    local w8_2 = type(w9_1) == "table" and w9_1.Type == jU
    local w8_3 = w8_2 and w9_1
    local xe = if w8_3 then 1 else 0
    local xc = 3827 * xe + 1807 * (1 - xe)
    local xd = 3376 * xe + 3367 * (1 - xe)
    if not ((xc * 3518 + xd * 1055 + xc * xd) % 16777213 == 13167805) then
        w8_3 = nil
    end
    return w8_3
end
function fns.onRenderStepped(h6)
    if pt.Unloaded then
        return
    end
    if o_.WalkSpeedEnabled and o_.WalkSpeedEnabled.Value then
        local wf_1 = o1()
        if wf_1 then
            wf_1.WalkSpeed = oV.WalkSpeed.Value
        end
    end
    if o_.Fly and o_.Fly.Value then
        local wf_3 = oK()
        local wg = o1()
        if wf_3 and wg then
            wg.PlatformStand = true
            local wg_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                wg_1 = wg_1 + CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                wg_1 = wg_1 - CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                wg_1 = wg_1 - CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                wg_1 = wg_1 + CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                wg_1 = wg_1 + Vector3.new(0, 1, 0)
            end
            local wl = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
            if wl == 1 then
                wg_1 = wg_1 - Vector3.new(0, 1, 0)
            end
            wf_3.Velocity = Vector3.zero
            if wg_1.Magnitude > 0 then
                wf_3.CFrame = wf_3.CFrame + wg_1.Unit * oV.FlySpeed.Value * h6
            end
        end
    end
end
function fns.fn687()
    local uN = oX()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return false
    end
    local uP
    if uN then
        uP = oj(uN:GetPivot().Position)
    end
    if not uP then
        local ViewportSize = CurrentCamera.ViewportSize
        uP = Vector2.new(ViewportSize.X * 0.5, ViewportSize.Y * 0.45)
    end
    px(uP - Vector2.new(80, 20), uP + Vector2.new(80, 20))
    return true
end
function fns.fn718()
    local leaderstats = pk:FindFirstChild("leaderstats")
    local rz = leaderstats and leaderstats:FindFirstChild("Level")
    if rz then
        local rz_1 = tonumber(rz.Value) or 1
        return rz_1
    end
    return 1
end
function fns.fn775()
    if not filtergc or not getupvalues then
        return false
    end
    if not pj then
        pj = filtergc("function", { Constants = { "Air_Charge" }, IgnoreExecutor = true }, true)
    end
    if not pf then
        pf = filtergc("function", { Constants = { "Dash_Start" }, IgnoreExecutor = true }, true)
    end
    local rW_1 = filtergc("function", { Constants = { "GamepadPromptGui" }, IgnoreExecutor = true }, true)
    if rW_1 then
        local rX = getupvalues(rW_1)
        pd = rX[10]
        o6 = rX[9]
    end
    return pd ~= nil
end
function fns.onCopyEthereumAddress()
    oI(o0, "Copied Ethereum address")
end
function fns.fn799()
    local QTE_Icon = PlayerGui:FindFirstChild("QTE_Icon")
    if not QTE_Icon then
        return false
    end
    local tx = false
    for i, descendant in ipairs(QTE_Icon:GetDescendants()) do
        local tw_1 = descendant:IsA("ImageButton") or descendant:IsA("TextButton")
        if tw_1 then
            if descendant.Visible and descendant.AbsoluteSize.X > 0 then
                ou(descendant.MouseButton1Down)
                ou(descendant.Activated)
                local AbsolutePosition = descendant.AbsolutePosition
                local AbsoluteSize = descendant.AbsoluteSize
                local tz = GuiService:GetGuiInset()
                screenClick(Vector2.new(AbsolutePosition.X + AbsoluteSize.X * 0.5, AbsolutePosition.Y + AbsoluteSize.Y * 0.5 + tz.Y))
                tx = true
            end
        end
    end
    return tx
end
function fns.fn823()
    local t2 = not filtergc or not getupvalues or not getconstants
    local t2_2
    if t2 then
        return nil
    end
    local t2_1 = filtergc("function", { Constants = { "MISS!" }, IgnoreExecutor = true }, true)
    if not t2_1 then
        return nil
    end
    local t3 = getupvalues(t2_1)
    local t3_1
    for k, v in pairs(t3) do
        if typeof(v) == "function" then
            t2_2, t3_1 = pcall(getconstants, v)
            local t4 = t2_2 and type(t3_1) == "table"
            if t4 then
                for k, v2 in pairs(t3_1) do
                    if v2 == "Damage" then
                        return v
                    end
                end
            end
        end
    end
    return nil
end
function fns.worker()
    local v0_1
    while true do
        task.wait(1)
        if pt.Unloaded then
            break
        end
        local v_ = math.floor(os.clock() - pA)
        if v_ < 60 then
            v0_1 = v_ .. "s"
        elseif v_ < 3600 then
            v0_1 = string.format("%dm %ds", v_ // 60, v_ % 60)
        else
            v0_1 = string.format("%dh %dm", v_ // 3600, v_ % 3600 // 60)
        end
        Label:SetText(pO("Session time", v0_1, ph))
    end
end
function fns.fn918()
    local leaderstats = pk:FindFirstChild("leaderstats")
    local tU = leaderstats and leaderstats:FindFirstChild("Damage")
    local tT_1 = tU
    if tU then
        tU = tonumber(tT_1.Value)
    end
    return tU or 1
end
local function onCopyVenmoLink()
    oI(oJ, "Copied Venmo link")
end
local function fn952()
    local sj = py or pk:GetAttribute("IsDash")
    if sj then
        return false
    end
    local sj_1 = o1()
    if not sj_1 or sj_1.Health <= 0 then
        return false
    end
    py = true
    ps()
    task.wait(0.15)
    if not o8(1.25) then
        py = false
        return false
    end
    o2()
    local sj_2 = false
    local sk_1 = typeof(pj) == "function" and typeof(pf) == "function"
    if sk_1 then
        local sk_2 = pcall(pj)
        if sk_2 then
            sj_2 = true
            local ChargeUI = PlayerGui:FindFirstChild("ChargeUI")
            local sl_1 = ChargeUI and ChargeUI:FindFirstChild("ChargeBarBack") and ChargeUI.ChargeBarBack:FindFirstChild("Txt_Percent")
            local sl_2 = os.clock()
            while true do
                local sm = os.clock() - sl_2 < 1.55 and not pt.Unloaded
                if sm then
                    if not _G.IsInZone then
                        ps()
                    end
                    local sm_1 = sl_1 and sl_1.Text == "100%" and os.clock() - sl_2 >= 1.45
                    if sm_1 then
                        break
                    end
                    task.wait(0.03)
                    continue
                end
                break
            end
            pcall(pf)
        end
    end
    if not sj_2 then
        local ChargeUI = PlayerGui:FindFirstChild("ChargeUI")
        local sk_5 = ChargeUI and ChargeUI:FindFirstChild("ChargeButton")
        oi(Enum.KeyCode.LeftShift, true)
        if sk_5 then
            ou(sk_5.MouseButton1Down)
        end
        local sk_6 = os.clock()
        while true do
            local sl_3 = os.clock() - sk_6 < 1.55 and not pt.Unloaded
            if sl_3 then
                if not _G.IsInZone then
                    ps()
                end
                task.wait(0.03)
                continue
            end
            break
        end
        oi(Enum.KeyCode.LeftShift, false)
        if sk_5 then
            ou(sk_5.MouseButton1Up)
        end
    end
    py = false
    return true
end
local function onCopyLitecoinAddress()
    oI(pa, "Copied Litecoin address")
end
local function fn963(d_)
    local tK_1
    local tJ_1
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return nil
    end
    tK_1, tJ_1 = CurrentCamera:WorldToViewportPoint(d_)
    if not tJ_1 or tK_1.Z <= 0 then
        return nil
    end
    return Vector2.new(tK_1.X, tK_1.Y)
end
local function fn967()
    local rp = pc()
    local rq = rp and rp:FindFirstChild("HumanoidRootPart")
    return rq
end
local function fn982(ad, ae, af)
    return string.format("<b>%s</b> %s %s", ad, og("-", "#5a6070"), og(ae, af))
end
local function fn989(bY)
    local sb = os.clock()
    local sc = bY
    local si = if sc then 1 else 0
    local sg = 4024 * si + 952 * (1 - si)
    local sh = 1663 * si + 3088 * (1 - si)
    if not ((sg * 1648 + sh * 3631 + sg * sh) % 16777213 == 2584604) then
        sc = 1.25
    end
    local sd = sb + sc
    while true do
        local sb_1 = os.clock() < sd and not pt.Unloaded
        if sb_1 then
            local ChargeUI = PlayerGui:FindFirstChild("ChargeUI")
            local sc_1 = ChargeUI and ChargeUI:FindFirstChild("ChargeButton")
            if _G.IsInZone or sc_1 and sc_1.Visible then
                return true
            end
            ps()
            task.wait(0.05)
            continue
        end
        break
    end
    local ChargeUI = PlayerGui:FindFirstChild("ChargeUI")
    local sc_3 = ChargeUI and ChargeUI:FindFirstChild("ChargeButton")
    local sc_4 = _G.IsInZone == true
    if not sc_4 then
        sc_4 = (sc_3 and sc_3.Visible) == true
    end
    return sc_4
end
local function onExportConfigToClipboard()
    local xK_1
    local xJ_1
    xJ_1, xK_1 = pcall(HttpService.JSONEncode, HttpService, pD())
    if not xJ_1 then
        pt:Notify("Failed to encode the config")
        return
    end
    local xJ_2 = setclipboard
    local xP = if xJ_2 then 1 else 0
    local xN = 1478 * xP + 801 * (1 - xP)
    local xO = 2351 * xP + 3082 * (1 - xP)
    if not ((xN * 2893 + xO * 1607 + xN * xO) % 16777213 == 11528689) then
        xJ_2 = toclipboard
    end
    local xL = xJ_2
    local xJ_3 = type(xL) ~= "function" or not pcall(xL, xK_1)
    if xJ_3 then
        pt:Notify("Your executor does not support copying to the clipboard")
        return
    end
    pt:Notify("Config copied to clipboard", 6)
end
local function fn1023()
    local uU = pk:GetAttribute("Rebirth") or 0
    local uU_1 = RebirthModule.GetRequiredLevel(uU)
    if type(uU_1) ~= "number" then
        return
    end
    local uZ = if pB() >= uU_1 then 1 else 0
    if uZ == 1 then
        URebirthEvent:FireServer("Level")
    end
end
local function worker5()
    while not pt.Unloaded do
        if pV("AutoRebirth") then
            pcall(oo)
        end
        task.wait(0.35)
    end
end
local function fn1054()
    pH(o_.AntiGameplayPause.Value)
end
local function fn1063(cE)
    o2()
    local sz = filtergc and filtergc("function", { Constants = { "GamepadPromptGui" }, IgnoreExecutor = true }, true)
    if not sz or not getupvalues then
        return nil, nil, nil, nil, nil
    end
    local sz_2 = getupvalues(sz)
    local sA_1 = sz_2[1]
    local sB = sz_2[2]
    local sC = sz_2[9]
    local sD = sz_2[10]
    local sE = sz_2[7]
    local sz_3 = type(sA_1) == "table" and sA_1.model == cE
    if sz_3 then
        return sA_1, sB, sC, sD, sE
    end
    return { model = cE, fruitName = cE.Name }, sB, sC, sD, sE
end
local function fn1072()
    local Win = pk:FindFirstChild("Win")
    local rt = Win and tonumber(Win.Value)
    return rt or 0
end
local function fn1122()
    local xm = {}
    for i, v in ipairs({ o_, oV }) do
        for k, v in pairs(v) do
            local xn = type(v) == "table" and type(v.Type) == "string" and not o4.Ignore[k]
            if xn then
                local xn_1 = pS(k, v)
                if xn_1 then
                    xm[#xm + 1] = xn_1
                end
            end
        end
    end
    table.sort(xm, function(ke, kf)
        if ke.type ~= kf.type then
            return ke.type < kf.type
        end
        return ke.idx < kf.idx
    end)
    return { objects = xm }
end
local function fn1151(aA)
    if pt.Unloaded then
        return false
    end
    local rd = o_[aA]
    return rd ~= nil and rd.Value == true
end
local function fn1177()
    if not filtergc then
        return nil
    end
    return filtergc("function", { Constants = { "ClaimWin" }, IgnoreExecutor = true }, true)
end
local function fn1179()
    local t0_1
    local tZ = pR()
    local tZ_1
    if not tZ then
        return nil, nil
    end
    local Txt_Health = tZ:FindFirstChild("Txt_Health", true)
    if not Txt_Health then
        return nil, nil
    end
    tZ_1, t0_1 = tostring(Txt_Health.Text):match("(%d+)%s*/%s*(%d+)")
    return tonumber(tZ_1), tonumber(t0_1)
end
local function fn1184(aG)
    local rg = oV[aG]
    local rg_1 = rg and rg.Value
    local rl = if rg_1 then 1 else 0
    local rj = 845 * rl + 3031 * (1 - rl)
    local rk = 291 * rl + 1297 * (1 - rl)
    if not ((rj * 3371 + rk * 1826 + rj * rk) % 16777213 == 3625756) then
        rg_1 = nil
    end
    return rg_1
end
local function fn1188()
    if not o_.Fly.Value then
        local wm = o1()
        if wm then
            wm.PlatformStand = false
        end
    end
end
local function onUnload()
    pt:Unload()
end
local function onCopyUSDTAddress()
    oI(oW, "Copied USDT address")
end
local function fn1205()
    local vm = (pv("ChestRarity"))
    local vr = if vm then 1 else 0
    local vp = 2803 * vr + 3707 * (1 - vr)
    local vq = 3880 * vr + 2521 * (1 - vr)
    if not ((vp * 2340 + vq * 1949 + vp * vq) % 16777213 == 8219567) then
        vm = of[1]
    end
    local vn = tostring(vm)
    return vn
end
local function fn1207()
    oI(oS, "Copied Discord invite to clipboard")
end
local function onCopyBitcoinAddress()
    oI(o5, "Copied Bitcoin address")
end
local function fn1243()
    pcall(pL)
end
oe = nil
of = nil
og = nil
oh = nil
oi = nil
oj = nil
ol = nil
om = nil
Label = nil
oo = nil
connection3 = nil
oq = nil
ot = nil
ou = nil
ov = nil
oy = nil
RebirthModule = nil
connection4 = nil
GetDataFunc = nil
oC = nil
BossQTEEvent = nil
oE = nil
CurrentCamera2 = nil
UEquipEvent = nil
oI = nil
oJ = nil
oK = nil
oM = nil
oN = nil
oP = nil
oQ = nil
URebirthEvent = nil
oS = nil
oT = nil
oV = nil
oW = nil
oX = nil
oZ = nil
o_ = nil
o0 = nil
o1 = nil
o2 = nil
o3 = nil
local ow, ox, oF, UBuyChestEvent, oO, BuyItemEvent, oY
o4 = nil
o5 = nil
o6 = nil
o7 = nil
o8 = nil
o9 = nil
pa = nil
pb = nil
pc = nil
pd = nil
pf = nil
PlayerGui = nil
ph = nil
pi = nil
pj = nil
pk = nil
pl = nil
connection2 = nil
pn = nil
Workspace = nil
CoreGui = nil
ps = nil
pt = nil
pu = nil
pv = nil
GuiService = nil
px = nil
py = nil
pz = nil
pA = nil
pB = nil
pC = nil
pD = nil
pF = nil
HttpService = nil
pH = nil
pI = nil
pJ = nil
VirtualUser = nil
pL = nil
pM = nil
UserInputService = nil
pO = nil
connection = nil
pQ = nil
pR = nil
local pe, pp, pq, pE
pS = nil
pU = nil
pV = nil
connection5 = nil
local pT
UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, pk, PlayerGui = nil, nil, nil, nil, nil, nil, nil, nil
local x4_3 = game:GetService("Players")
local x4_23 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
pk = x4_3.LocalPlayer
PlayerGui = pk:WaitForChild("PlayerGui")
if setthreadidentity then
    setthreadidentity(8)
end
x4_38, BuyItemEvent, URebirthEvent, UBuyChestEvent, UEquipEvent, BossQTEEvent, GetDataFunc, RebirthModule, oq = nil, nil, nil, nil, nil, nil, nil, nil, nil
local x4_44 = "+1 Fruit Samurai"
local x4_26 = x4_23:WaitForChild("RemoteGUI")
local x4_41 = x4_23:WaitForChild("Functions")
if ((not UBuyChestEvent or not x4_38) and (x4_38 and x4_38) and ((not BossQTEEvent or not BossQTEEvent) and (BossQTEEvent or not BossQTEEvent)) and ((x4_38 or not UBuyChestEvent) and (BossQTEEvent and x4_38) and (x4_38 and x4_38 or x4_38 and not UBuyChestEvent)) or (not x4_38 or UBuyChestEvent or (not BossQTEEvent or not UBuyChestEvent) or (UBuyChestEvent or not UBuyChestEvent or UBuyChestEvent and not UBuyChestEvent)) and ((BossQTEEvent or not BossQTEEvent or not UBuyChestEvent and UBuyChestEvent) and (not BossQTEEvent and UBuyChestEvent or (not BossQTEEvent or not UBuyChestEvent)))) and not ((not UBuyChestEvent or not x4_38) and (x4_38 and x4_38) and ((not BossQTEEvent or not BossQTEEvent) and (BossQTEEvent or not BossQTEEvent)) and ((x4_38 or not UBuyChestEvent) and (BossQTEEvent and x4_38) and (x4_38 and x4_38 or x4_38 and not UBuyChestEvent)) or (not x4_38 or UBuyChestEvent or (not BossQTEEvent or not UBuyChestEvent) or (UBuyChestEvent or not UBuyChestEvent or UBuyChestEvent and not UBuyChestEvent)) and ((BossQTEEvent or not BossQTEEvent or not UBuyChestEvent and UBuyChestEvent) and (not BossQTEEvent and UBuyChestEvent or (not BossQTEEvent or not UBuyChestEvent)))) then
    x4_23 = x4_38:WaitForChild("Modules")
else
    x4_38 = x4_23:WaitForChild("Modules")
end
BuyItemEvent = x4_26:WaitForChild("BuyItemEvent")
URebirthEvent = x4_26:WaitForChild("URebirthEvent")
UBuyChestEvent = x4_26:WaitForChild("UBuyChestEvent")
UEquipEvent = x4_26:WaitForChild("UEquipEvent")
BossQTEEvent = x4_23:WaitForChild("BossQTEEvent")
GetDataFunc = x4_41:WaitForChild("GetDataFunc")
RebirthModule = require(x4_38:WaitForChild("RebirthModule"))
local x4_9 = { 0, 100, 200, 300, 400, 500, 600, 700 }
oq = {}
x4_3 = 8
local x4_40 = 1
local x4_22 = x4_3
while x4_40 <= x4_22 do
    local x4_25 = x4_40
    oq[x4_25] = string.format("Stage %d (%d Wins)", x4_25, x4_9[x4_25])
    x4_40 += 1
end
of, pT, x4_41, pt, x4_35, o4, o_, oV, oS, oM, x4_21, x4_36, ph, x4_18, pa, o5, o0, oW, oT, oP, oJ, x4_51, x4_16, x4_33, x4_49, x4_14, x4_31, x4_47, pj, pf, pd, o6, py, oy, oe, pU, x4_38, x4_1, pQ, oI, ov, og, pO, pV, pv, pc, o1, oK, ow, pB, pe, oQ, ou, pE, o2, ox, oi, ps, o8, pu, pb, oO, pJ, oY, pL, pn, oj, px, oE, pR, pz, o9, ot, ol, pI, oX, om, pp, oo, pC, pM, pF, pq, o7, o3, x4_12 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
x4_26 = 178
repeat
    x4_9 = (x4_26 * 11 + 19) % 35 + 1
    if x4_9 <= 18 then
        if x4_9 <= 9 then
            if x4_9 <= 5 then
                if x4_9 <= 3 then
                    if x4_9 <= 2 then
                        if x4_9 <= 1 then
                            local y6 = bit32.rrotate(bit32.bxor(bit32.lrotate(x4_26, 27), string.byte(tostring(pJ))), 22)
                            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(y6, 1477197349), 3333280070), (bit32.bxor(bit32.band(y6, 2817769946), 846142070))), 3333280070), 846142070) == y6 then
                                pj = nil
                                pf = nil
                            else
                                pf = nil
                                pj = nil
                            end
                            x4_26 = (x4_26 + 51) % 280
                        else
                            local zF = bit32.rrotate(bit32.bxor(bit32.lrotate(x4_26, 13), string.byte(tostring(o7))), 31)
                            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(zF, 106642257), 29381044), (bit32.bxor(bit32.band(zF, 4188325038), 1326391342))), 29381044), 1326391342) == zF then
                                pd = nil
                                o6 = nil
                                o2 = fns.fn775
                                pcall(o2)
                                ox = fns.fn511
                            else
                                ox = nil
                                pd = nil
                                o6 = fns.fn775
                                pcall(o6)
                                o2 = fns.fn511
                            end
                            x4_26 = (x4_26 + 191) % 280
                        end
                    else
                        local yO = bit32.rrotate(bit32.bxor(bit32.lrotate(x4_26, 30), string.byte(tostring(om))), 11)
                        if bit32.bxor(bit32.lrotate(bit32.bxor(yO, 1806398285), 18), 3442847405) ~= bit32.lrotate(yO, 18) then
                            oK = function(bL, bM)
                                local r1
                                r1 = nil
                                r1 = ox()
                                if not r1 then
                                    return false
                                end
                                return pcall(function()
                                    r1:SendKeyEvent(bM, bL, false, game)
                                end)
                            end
                        else
                            oi = function(bL, bM)
                                local r1
                                r1 = nil
                                r1 = ox()
                                if not r1 then
                                    return false
                                end
                                return pcall(function()
                                    r1:SendKeyEvent(bM, bL, false, game)
                                end)
                            end
                        end
                        x4_26 = (x4_26 + 191) % 280
                    end
                elseif x4_9 <= 4 then
                    if (x4_26 * 2 + 9) * 16 % 3 == ((x4_26 * 2 + 9) * 16 + 6) % 3 then
                        ps = fns.fn433
                        o8 = fn989
                    else
                        o8 = fns.fn433
                        ps = fn989
                    end
                    x4_26 = (x4_26 + 226) % 280
                else
                    x4_5 = (vector.create((x4_26 * 2 + 4) % 11 + 1, (x4_26 * 11 + 9) % 13 + 1, (x4_26 * 12 + 1) % 17 + 1))
                    local zc = vector.floor(x4_5) + vector.ceil(x4_5 * -1)
                    if vector.dot(zc, zc) == 3 then
                        oO = false
                        pb = fn952
                        pu = fns.fn376
                        py = fn1063
                    else
                        py = false
                        pu = fn952
                        pb = fns.fn376
                        oO = fn1063
                    end
                    x4_26 = (x4_26 + 86) % 280
                end
            elseif x4_9 <= 7 then
                if x4_9 <= 6 then
                    x4_5 = (vector.create((x4_26 * 2 + 8) % 11 + 1, (x4_26 * 9 + 7) % 13 + 1, (x4_26 * 6 + 12) % 17 + 1))
                    x4_39 = (vector.create((x4_26 * 5 + 7) % 11 + 1, (x4_26 * 10 + 2) % 13 + 1, (x4_26 * 14 + 13) % 17 + 1))
                    local zu = vector.dot(x4_5, x4_39)
                    if zu * zu <= vector.dot(x4_5, x4_5) * vector.dot(x4_39, x4_39) then
                        pJ = fns.fn270
                        oY = fns.fn209
                        pL = function()
                            local td
                            local tj_2
                            local ti_2
                            local th_3
                            local tg_4
                            if not pk:GetAttribute("IsDash") then
                                return false
                            elseif not pV("AutoGetWin") then
                                return false
                            else
                                local te = pe()
                                local tf = oY(te)
                                if not tf then
                                    return false
                                end
                                local te_2 = oK()
                                if not te_2 then
                                    return false
                                end
                                th_3, ti_2, tg_4, tj_2, td = oO(tf)
                                if typeof(td) == "RBXScriptConnection" then
                                    pcall(function()
                                        td:Disconnect()
                                    end)
                                end
                                if typeof(tg_4) == "function" then
                                    pcall(tg_4)
                                end
                                for i, v in ipairs(pJ()) do
                                    if v ~= tf then
                                        v:SetAttribute("IsChoiceTarget", nil)
                                        v:SetAttribute("IsStruggling", nil)
                                        v:SetAttribute("Sliced", true)
                                        local TargetHighlight = v:FindFirstChild("TargetHighlight")
                                        if TargetHighlight then
                                            TargetHighlight:Destroy()
                                        end
                                    end
                                end
                                local TargetHighlight = tf:FindFirstChild("TargetHighlight")
                                if TargetHighlight then
                                    TargetHighlight:Destroy()
                                end
                                tf:SetAttribute("IsChoiceTarget", nil)
                                tf:SetAttribute("IsStruggling", nil)
                                if typeof(tj_2) ~= "function" then
                                    o2()
                                    tj_2 = pd
                                end
                                if typeof(tj_2) ~= "function" then
                                    local tg_5 = worldToScreen(tf:GetPivot().Position)
                                    if tg_5 then
                                        screenClick(tg_5)
                                        return true
                                    end
                                    return false
                                end
                                local tg_6 = tf:GetPivot().Position.Y
                                if tf:GetAttribute("IsBoss") then
                                    tg_6 = te_2.Position.Y
                                end
                                local tk_6 = th_3
                                local th_4 = type(tk_6) ~= "table" or tk_6.model ~= tf
                                if th_4 then
                                    tk_6 = { model = tf, fruitName = tf.Name }
                                end
                                local tf_2 = tonumber(ti_2) or 0
                                return pcall(tj_2, te_2, tk_6, tf_2 + 1, tg_6)
                            end
                        end
                    else
                        pL = fns.fn270
                        pJ = fns.fn209
                        oY = function()
                            local td
                            local tj_1
                            local ti_1
                            local th_1
                            local tg_1
                            if not pk:GetAttribute("IsDash") then
                                return false
                            elseif not pV("AutoGetWin") then
                                return false
                            else
                                local te = pe()
                                local tf = oY(te)
                                if not tf then
                                    return false
                                end
                                local te_1 = oK()
                                if not te_1 then
                                    return false
                                end
                                th_1, ti_1, tg_1, tj_1, td = oO(tf)
                                if typeof(td) == "RBXScriptConnection" then
                                    pcall(function()
                                        td:Disconnect()
                                    end)
                                end
                                if typeof(tg_1) == "function" then
                                    pcall(tg_1)
                                end
                                for i, v in ipairs(pJ()) do
                                    if v ~= tf then
                                        v:SetAttribute("IsChoiceTarget", nil)
                                        v:SetAttribute("IsStruggling", nil)
                                        v:SetAttribute("Sliced", true)
                                        local TargetHighlight = v:FindFirstChild("TargetHighlight")
                                        if TargetHighlight then
                                            TargetHighlight:Destroy()
                                        end
                                    end
                                end
                                local TargetHighlight = tf:FindFirstChild("TargetHighlight")
                                if TargetHighlight then
                                    TargetHighlight:Destroy()
                                end
                                tf:SetAttribute("IsChoiceTarget", nil)
                                tf:SetAttribute("IsStruggling", nil)
                                if typeof(tj_1) ~= "function" then
                                    o2()
                                    tj_1 = pd
                                end
                                if typeof(tj_1) ~= "function" then
                                    local tg_2 = worldToScreen(tf:GetPivot().Position)
                                    if tg_2 then
                                        screenClick(tg_2)
                                        return true
                                    end
                                    return false
                                end
                                local tg_3 = tf:GetPivot().Position.Y
                                if tf:GetAttribute("IsBoss") then
                                    tg_3 = te_1.Position.Y
                                end
                                local tk_3 = th_1
                                local th_2 = type(tk_3) ~= "table" or tk_3.model ~= tf
                                if th_2 then
                                    tk_3 = { model = tf, fruitName = tf.Name }
                                end
                                local tf_1 = tonumber(ti_1) or 0
                                return pcall(tj_1, te_1, tk_3, tf_1 + 1, tg_3)
                            end
                        end
                    end
                    x4_26 = (x4_26 + 16) % 280
                else
                    local zi = bit32.rrotate(bit32.bxor(bit32.lrotate(x4_26, 19), string.byte(tostring(ph))), 9)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(zi, 3453316017), 10), 1437517623) == bit32.lrotate(zi, 10) then
                    else
                        ot = fn1243
                    end
                    x4_26 = (x4_26 + 191) % 280
                end
            elseif x4_9 <= 8 then
                x4_5 = { "ftdl", "ctbgn", "rhpzygyv", "otmzbd", "zil", "uuoatiptc", "bad", "mqopuef" }
                local zl = x4_26
                x4_39 = x4_5[zl % 8 + 1]
                if x4_39:len() <= x4_39:reverse():rep(zl % 3 + 2):len() then
                    pn = fns.fn799
                    oy = 0
                    pk:GetAttributeChangedSignal("IsDash"):Connect(fns.fn400)
                    oj = fn963
                else
                    pk = fns.fn799
                    oj = 0
                    oy:GetAttributeChangedSignal("IsDash"):Connect(fns.fn400)
                    pn = fn963
                end
                x4_26 = (x4_26 + 51) % 280
            else
                x4_5 = {
                    "oiss",
                    "ooyjjd",
                    "iwekm",
                    "ljz",
                    "rwkivnzj",
                    "demh",
                    "aguvr",
                    "rsemk",
                    "qpadhdhqvfd",
                    "kze",
                    "shrgyqzru",
                    "fowuqggsjf"
                }
                local yK = x4_26
                x4_39 = x4_5[yK % 12 + 1]
                if x4_39:len() >= x4_39:reverse():rep(yK % 3 + 2):len() then
                    oE = function(d6, d7)
                        local tM
                        tM = nil
                        local tN = typeof(mousemoveabs) == "function" and typeof(mouse1press) == "function" and typeof(mouse1release) == "function"
                        local tN_2
                        if tN then
                            pcall(mousemoveabs, d6.X, d6.Y)
                            pcall(mouse1press)
                            task.wait(0.03)
                            pcall(mousemoveabs, d7.X, d7.Y)
                            task.wait(0.03)
                            pcall(mouse1release)
                            return true
                        end
                        tN_2, tM = pcall(function()
                            return game:GetService("VirtualInputManager")
                        end)
                        if not tN_2 or not tM then
                            return false
                        end
                        return pcall(function()
                            tM:SendMouseMoveEvent(d6.X, d6.Y, game)
                            tM:SendMouseButtonEvent(d6.X, d6.Y, 0, true, game, 0)
                            task.wait(0.03)
                            tM:SendMouseMoveEvent(d7.X, d7.Y, game)
                            task.wait(0.03)
                            tM:SendMouseButtonEvent(d7.X, d7.Y, 0, false, game, 0)
                        end)
                    end
                    px = fns.fn19
                else
                    px = function(d6, d7)
                        local tM
                        tM = nil
                        local tN = typeof(mousemoveabs) == "function" and typeof(mouse1press) == "function" and typeof(mouse1release) == "function"
                        local tN_1
                        if tN then
                            pcall(mousemoveabs, d6.X, d6.Y)
                            pcall(mouse1press)
                            task.wait(0.03)
                            pcall(mousemoveabs, d7.X, d7.Y)
                            task.wait(0.03)
                            pcall(mouse1release)
                            return true
                        end
                        tN_1, tM = pcall(function()
                            return game:GetService("VirtualInputManager")
                        end)
                        if not tN_1 or not tM then
                            return false
                        end
                        return pcall(function()
                            tM:SendMouseMoveEvent(d6.X, d6.Y, game)
                            tM:SendMouseButtonEvent(d6.X, d6.Y, 0, true, game, 0)
                            task.wait(0.03)
                            tM:SendMouseMoveEvent(d7.X, d7.Y, game)
                            task.wait(0.03)
                            tM:SendMouseButtonEvent(d7.X, d7.Y, 0, false, game, 0)
                        end)
                    end
                    oE = fns.fn918
                end
                x4_26 = (x4_26 + 121) % 280
            end
        elseif x4_9 <= 14 then
            if x4_9 <= 12 then
                if x4_9 <= 11 then
                    if x4_9 <= 10 then
                        local zk = bit32.rrotate(bit32.bxor(bit32.lrotate(x4_26, 25), string.byte(tostring(pC))), 22)
                        if bit32.bxor(bit32.lrotate(bit32.bxor(zk, 3950587881), 26), 2813191359) == bit32.lrotate(zk, 26) then
                            oe = 0
                            pU = 0
                            pR = fns.fn234
                        else
                            pR = 0
                            oe = 0
                            pU = fns.fn234
                        end
                        x4_26 = (x4_26 + 156) % 280
                    else
                        local zD = bit32.rrotate(bit32.bxor(bit32.lrotate(x4_26, 11), string.byte(tostring(pc))), 4)
                        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(zD, 2603035885), 4195249969), (bit32.bxor(bit32.band(zD, 1691931410), 1876268971))), 4195249969), 1876268971) == zD then
                            pz = fn1179
                            o9 = fns.fn823
                            ot = fn1177
                            ol = fns.fn488
                            pI = fns.fn508
                        else
                            ot = fn1179
                            ol = fns.fn823
                            pz = fn1177
                            pI = fns.fn488
                            o9 = fns.fn508
                        end
                        x4_26 = (x4_26 + 86) % 280
                    end
                else
                    local zo = bit32.rrotate(bit32.bxor(bit32.lrotate(x4_26, 26), string.byte(tostring(oo))), 8)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(zo, 2602751691), 383436408), (bit32.bxor(bit32.band(zo, 1692215604), 1645262481))), 383436408), 1645262481) ~= zo then
                        pC = fns.fn62
                        oo = fns.fn687
                        om = fns.fn480
                        oX = fn1023
                        pp = function(fH, fI)
                            local u3_4
                            local u2_4
                            u2_4, u3_4 = pcall(function()
                                return GetDataFunc:InvokeServer(fH)
                            end)
                            local u4 = not u2_4 or type(u3_4) ~= "table"
                            local u9 = if u4 then 1 else 0
                            local u7 = 1282 * u9 + 3888 * (1 - u9)
                            local u8 = 3726 * u9 + 1924 * (1 - u9)
                            if not ((u7 * 3653 + u8 * 3181 + u7 * u8) % 16777213 == 4535071) then
                                u4 = type(u3_4.Catalog) ~= "table"
                            end
                            if u4 then
                                return
                            end
                            local u2_5 = u3_4.DataInv and u3_4.DataInv.Inventory
                            local u4_3 = {}
                            local u5 = u2_5
                            local u9_2 = if u5 then 1 else 0
                            local u7_2 = 3705 * u9_2 + 1616 * (1 - u9_2)
                            local u8_2 = 1922 * u9_2 + 1858 * (1 - u9_2)
                            if not ((u7_2 * 2786 + u8_2 * 831 + u7_2 * u8_2) % 16777213 == 2263109) then
                                u5 = u4_3
                            end
                            local u2_6 = u5
                            local u4_4 = ow()
                            local u5_3 = {}
                            for k, v in pairs(u3_4.Catalog) do
                                local u3_5 = type(v) == "table" and type(v.ItemName) == "string"
                                if u3_5 then
                                    u5_3[#u5_3 + 1] = v
                                end
                            end
                            table.sort(u5_3, function(fX, fY)
                                local u_ = tonumber(fX.Price) or 0
                                local u0 = tonumber(fY.Price) or 0
                                return u_ < u0
                            end)
                            for i, v in ipairs(u5_3) do
                                if not u2_6[v.ItemName] then
                                    local u3_6 = tonumber(v.Price) or 0
                                    if u4_4 >= u3_6 then
                                        BuyItemEvent:FireServer(fI, v)
                                        return
                                    end
                                    return
                                end
                            end
                        end
                    else
                        oX = fns.fn62
                        om = fns.fn687
                        pp = fns.fn480
                        oo = fn1023
                        pC = function(fH, fI)
                            local u3_1
                            local u2_1
                            u2_1, u3_1 = pcall(function()
                                return GetDataFunc:InvokeServer(fH)
                            end)
                            local u4 = not u2_1 or type(u3_1) ~= "table"
                            local u9 = if u4 then 1 else 0
                            local u7 = 1282 * u9 + 3888 * (1 - u9)
                            local u8 = 3726 * u9 + 1924 * (1 - u9)
                            if not ((u7 * 3653 + u8 * 3181 + u7 * u8) % 16777213 == 4535071) then
                                u4 = type(u3_1.Catalog) ~= "table"
                            end
                            if u4 then
                                return
                            end
                            local u2_2 = u3_1.DataInv and u3_1.DataInv.Inventory
                            local u4_1 = {}
                            local u5 = u2_2
                            local u9_1 = if u5 then 1 else 0
                            local u7_1 = 3705 * u9_1 + 1616 * (1 - u9_1)
                            local u8_1 = 1922 * u9_1 + 1858 * (1 - u9_1)
                            if not ((u7_1 * 2786 + u8_1 * 831 + u7_1 * u8_1) % 16777213 == 2263109) then
                                u5 = u4_1
                            end
                            local u2_3 = u5
                            local u4_2 = ow()
                            local u5_1 = {}
                            for k, v in pairs(u3_1.Catalog) do
                                local u3_2 = type(v) == "table" and type(v.ItemName) == "string"
                                if u3_2 then
                                    u5_1[#u5_1 + 1] = v
                                end
                            end
                            table.sort(u5_1, function(fX, fY)
                                local u_ = tonumber(fX.Price) or 0
                                local u0 = tonumber(fY.Price) or 0
                                return u_ < u0
                            end)
                            for i, v in ipairs(u5_1) do
                                if not u2_3[v.ItemName] then
                                    local u3_3 = tonumber(v.Price) or 0
                                    if u4_2 >= u3_3 then
                                        BuyItemEvent:FireServer(fI, v)
                                        return
                                    end
                                    return
                                end
                            end
                        end
                    end
                    x4_26 = (x4_26 + 191) % 280
                end
            elseif x4_9 <= 13 then
                local zH = bit32.rrotate(bit32.bxor(bit32.lrotate(x4_26, 17), string.byte(tostring(pC))), 17)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(zH, 4256416225), 3359105174), (bit32.bxor(bit32.band(zH, 38551070), 301468841))), 3359105174), 301468841) ~= zH then
                    pF = fns.fn580
                    pM = fns.fn423
                else
                    pM = fns.fn580
                    pF = fns.fn423
                end
                x4_26 = (x4_26 + 86) % 280
            else
                x4_5 = (vector.create((x4_26 * 5 + 8) % 11 + 1, (x4_26 * 5 + 5) % 13 + 1, (x4_26 * 8 + 13) % 17 + 1))
                x4_39 = (vector.create((x4_26 * 1 + 1) % 11 + 1, (x4_26 * 3 + 9) % 13 + 1, (x4_26 * 3 + 5) % 17 + 1))
                local yQ = vector.dot(x4_5, x4_39)
                if yQ * yQ >= vector.dot(x4_5, x4_5) * vector.dot(x4_39, x4_39) + 1 then
                    o3 = fn1205
                    pq = function()
                        local vs
                        local vt = pk:GetAttribute("IsDash") or py
                        if vt then
                            return
                        end
                        local vt_5 = pq()
                        local vu = pT[vt_5] or 0
                        if ow() < vu then
                            return
                        end
                        local Chests = Workspace:FindFirstChild("Chests")
                        local vv_3 = Chests and Chests:FindFirstChild(vt_5)
                        vs = vv_3
                        if not vs then
                            return
                        end
                        local vt_6 = oK()
                        local vu_8 = vs:FindFirstChild("PromptPart") or vs.PrimaryPart or vs:FindFirstChildWhichIsA("BasePart")
                        if vt_6 and vu_8 then
                            vt_6.AssemblyLinearVelocity = Vector3.zero
                            vt_6.CFrame = vu_8.CFrame * CFrame.new(0, 3, 4)
                        end
                        local ProximityPrompt = vs:FindFirstChildWhichIsA("ProximityPrompt", true)
                        local vu_10 = ProximityPrompt and typeof(fireproximityprompt) == "function"
                        if vu_10 then
                            pcall(fireproximityprompt, ProximityPrompt)
                            task.wait(0.2)
                        end
                        pcall(function()
                            UBuyChestEvent:FireServer(vs)
                        end)
                        local Chest = PlayerGui:FindFirstChild("Chest")
                        if Chest and Chest.Enabled then
                            local Btn_Open = Chest:FindFirstChild("Btn_Open", true)
                            if Btn_Open then
                                pE(Btn_Open)
                            end
                        end
                    end
                    o7 = fns.fn434
                else
                    pq = fn1205
                    o7 = function()
                        local vs
                        local vt = pk:GetAttribute("IsDash") or py
                        if vt then
                            return
                        end
                        local vt_1 = pq()
                        local vu = pT[vt_1] or 0
                        if ow() < vu then
                            return
                        end
                        local Chests = Workspace:FindFirstChild("Chests")
                        local vv_1 = Chests and Chests:FindFirstChild(vt_1)
                        vs = vv_1
                        if not vs then
                            return
                        end
                        local vt_2 = oK()
                        local vu_2 = vs:FindFirstChild("PromptPart") or vs.PrimaryPart or vs:FindFirstChildWhichIsA("BasePart")
                        if vt_2 and vu_2 then
                            vt_2.AssemblyLinearVelocity = Vector3.zero
                            vt_2.CFrame = vu_2.CFrame * CFrame.new(0, 3, 4)
                        end
                        local ProximityPrompt = vs:FindFirstChildWhichIsA("ProximityPrompt", true)
                        local vu_4 = ProximityPrompt and typeof(fireproximityprompt) == "function"
                        if vu_4 then
                            pcall(fireproximityprompt, ProximityPrompt)
                            task.wait(0.2)
                        end
                        pcall(function()
                            UBuyChestEvent:FireServer(vs)
                        end)
                        local Chest = PlayerGui:FindFirstChild("Chest")
                        if Chest and Chest.Enabled then
                            local Btn_Open = Chest:FindFirstChild("Btn_Open", true)
                            if Btn_Open then
                                pE(Btn_Open)
                            end
                        end
                    end
                    o3 = fns.fn434
                end
                x4_26 = (x4_26 + 51) % 280
            end
        elseif x4_9 <= 16 then
            if x4_9 <= 15 then
                if x4_26 * 59519095 + 7 + 6 >= x4_26 * 59519095 + 7 + 6 + 5 then
                    pt = oS:CreateWindow({
                        Title = "Ouroboros",
                        CornerRadius = 0,
                        ShowCustomCursor = false,
                        Font = Enum.Font.BuilderSans,
                        Footer = { x4_38, "|", { Text = x4_44, Copyable = true } },
                        Icon = 78539693571783,
                        NotifySide = "Right"
                    })
                else
                    x4_38 = pt:CreateWindow({
                        Title = "Ouroboros",
                        Font = Enum.Font.BuilderSans,
                        Footer = { { Text = oS, Copyable = true }, "|", x4_44 },
                        Icon = 78539693571783,
                        NotifySide = "Right",
                        ShowCustomCursor = false,
                        CornerRadius = 0
                    })
                end
                x4_26 = (x4_26 + 226) % 280
            else
                if (x4_26 * 2 + 4) * 7 % 3 == ((x4_26 * 2 + 4) * 7 + 5) % 3 then
                    x4_38 = {
                        Main = x4_1:AddTab("Main", "sword"),
                        Player = x4_1:AddTab("Player", "person-standing"),
                        Info = x4_1:AddTab("Info", "info"),
                        Shop = x4_1:AddTab("Shop", "shopping-bag"),
                        Settings = x4_1:AddTab("Settings", "settings")
                    }
                else
                    x4_1 = {
                        Info = x4_38:AddTab("Info", "info"),
                        Main = x4_38:AddTab("Main", "sword"),
                        Shop = x4_38:AddTab("Shop", "shopping-bag"),
                        Player = x4_38:AddTab("Player", "person-standing"),
                        Settings = x4_38:AddTab("Settings", "settings")
                    }
                end
                x4_26 = (x4_26 + 156) % 280
            end
        elseif x4_9 <= 17 then
            x4_5 = {
                "xxme",
                "bvwh",
                "eukra",
                "oiyhjawde",
                "fjz",
                "fip",
                "yghsjmyhcqu",
                "zecfjnfvg",
                "fiurpcwhkv",
                "tcyaj",
                "fnigavpspzx"
            }
            local zB = x4_26
            x4_39 = x4_5[zB % 11 + 1]
            if x4_39:len() <= x4_39:gsub("(.)", "%1%1", zB % 3 % 2 + 1):len() then
                x4_12 = fns.fn206
            else
                o0 = fns.fn206
            end
            x4_26 = (x4_26 + 261) % 280
        else
            if (oy or oy or not oy and not pV or (not oy or pV or not oy and not pV)) and (not oy and not oy and (not pV and not pV) or not oy and not oy and (pV or not pV)) and not ((oy or oy or not oy and not pV or (not oy or pV or not oy and not pV)) and (not oy and not oy and (not pV and not pV) or not oy and not oy and (pV or not pV))) then
                pQ = { "Common", "Legendary", "Epic", "Rare", "Uncommon", "Mythic" }
                of = { Epic = 1600, Rare = 800, Mythic = 6400, Common = 200, Uncommon = 400, Legendary = 3200 }
                pT = fns.fn6
            else
                of = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic" }
                pT = { Common = 200, Uncommon = 400, Rare = 800, Epic = 1600, Legendary = 3200, Mythic = 6400 }
                pQ = fns.fn6
            end
            x4_26 = (x4_26 + 226) % 280
        end
    elseif x4_9 <= 27 then
        if x4_9 <= 23 then
            if x4_9 <= 21 then
                if x4_9 <= 20 then
                    if x4_9 <= 19 then
                        local yS = bit32.rrotate(bit32.bxor(bit32.lrotate(x4_26, 27), string.byte(tostring(x4_12))), 24)
                        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(yS, 3243254351), 955223725), (bit32.bxor(bit32.band(yS, 1051712944), 3233739261))), 955223725), 3233739261) == yS then
                            x4_41 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                        else
                            x4_51 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                        end
                        x4_26 = (x4_26 + 121) % 280
                    else
                        x4_5 = {
                            "veuxnxiwp",
                            "lfe",
                            "lfqdiphaby",
                            "waetmjnc",
                            "bknhujq",
                            "cldvgwfudbj",
                            "efrs",
                            "nco",
                            "nygvujsxbu"
                        }
                        local zK = x4_26
                        x4_39 = x4_5[zK % 9 + 1]
                        if x4_39:len() <= x4_39:gsub("(.)", "%1%1", zK % 3 % 2 + 1):len() then
                            pt = loadstring(game:HttpGet(x4_41 .. "Library.lua"))()
                        else
                            x4_41 = loadstring(game:HttpGet(pt .. "Library.lua"))()
                        end
                        x4_26 = (x4_26 + 156) % 280
                    end
                else
                    if x4_26 * 50193385 + 5 + 5 >= x4_26 * 50193385 + 5 + 5 + 5 then
                        pcall(fns.fn357)
                        pt = loadstring(game:HttpGet(x4_35 .. "addons/ThemeManager.lua"))()
                        o_ = loadstring(game:HttpGet(x4_35 .. "addons/SaveManager.lua"))()
                        oV = o4.Toggles
                        x4_41 = o4.Options
                    else
                        pcall(fns.fn357)
                        x4_35 = loadstring(game:HttpGet(x4_41 .. "addons/ThemeManager.lua"))()
                        o4 = loadstring(game:HttpGet(x4_41 .. "addons/SaveManager.lua"))()
                        o_ = pt.Toggles
                        oV = pt.Options
                    end
                    x4_26 = (x4_26 + 86) % 280
                end
            elseif x4_9 <= 22 then
                x4_5 = {
                    "azlytp",
                    "vcpe",
                    "mqxllvbf",
                    "ljuqofuorj",
                    "wapvlfclv",
                    "yyvskz",
                    "rctztiixdqc",
                    "dvs",
                    "ykmzx",
                    "fvayfgrpluit",
                    "fkuvabfpx",
                    "dgqqmpr",
                    "zmkdp",
                    "wizgevbuhbe",
                    "nsqzixs",
                    "egquyr"
                }
                if x4_5[(x4_26 * 83 + 71) % 16 + 1] <= x4_5[(x4_26 * 83 + 71) % 16 + 1] then
                    oS = "https://discord.gg/ehKVq7pf7v"
                else
                    x4_18 = "https://discord.gg/ehKVq7pf7v"
                end
                x4_26 = (x4_26 + 156) % 280
            else
                x4_5 = (vector.create((x4_26 * 2 + 6) % 11 + 1, (x4_26 * 2 + 3) % 13 + 1, (x4_26 * 1 + 11) % 17 + 1))
                local y3 = vector.floor(x4_5) + vector.ceil(x4_5 * -1)
                if vector.dot(y3, y3) == 0 then
                    oM = "https://rscripts.net/@Ouroboros"
                    oI = fns.fn72
                else
                    oI = "https://rscripts.net/@Ouroboros"
                    oM = fns.fn72
                end
                x4_26 = (x4_26 + 261) % 280
            end
        elseif x4_9 <= 25 then
            if x4_9 <= 24 then
                local zj = bit32.rrotate(bit32.bxor(bit32.lrotate(x4_26, 24), string.byte(tostring(pQ))), 6)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(zj, 898965993), 3026443007), (bit32.bxor(bit32.band(zj, 3396001302), 2242385234))), 3026443007), 2242385234) == zj then
                    ov = fn1207
                    og = fns.fn106
                else
                    og = fn1207
                    ov = fns.fn106
                end
                x4_26 = (x4_26 + 51) % 280
            else
                x4_5 = { "hftcs", "binbsun", "wztwjie", "vzvqmvepm", "icbp", "wdvxrdlucnz", "pzdj" }
                local zn = x4_26
                x4_39 = x4_5[zn % 7 + 1]
                if x4_39:len() <= x4_39:gsub("(.)", "%1%1", zn % 3 % 2 + 1):len() then
                    pO = fn982
                    x4_21 = "#7fd47f"
                    x4_36 = "#6ec1ff"
                    ph = "#e8a34d"
                else
                    ph = fn982
                    x4_36 = "#7fd47f"
                    x4_21 = "#6ec1ff"
                    pO = "#e8a34d"
                end
                x4_26 = (x4_26 + 16) % 280
            end
        elseif x4_9 <= 26 then
            x4_5 = {
                "wjbd",
                "nfcdbfhu",
                "sfin",
                "uuiquxs",
                "fvpxplaqb",
                "etheow",
                "plnh",
                "inwvcjygex",
                "fmmzeshaaz",
                "ggc",
                "ixifyznljnz",
                "txioe"
            }
            local zg = x4_26
            x4_39 = x4_5[zg % 12 + 1]
            if x4_39:len() >= x4_39:gsub("(.)", "%1%1", zg % 3 % 2 + 1):len() then
                oi = "#8b93a3"
            else
                x4_18 = "#8b93a3"
            end
            x4_26 = (x4_26 + 16) % 280
        else
            x4_5 = (vector.create((x4_26 * 2 + 6) % 11 + 1, (x4_26 * 9 + 1) % 13 + 1, (x4_26 * 1 + 4) % 17 + 1))
            x4_39 = (vector.create((x4_26 * 7 + 9) % 11 + 1, (x4_26 * 3 + 5) % 13 + 1, (x4_26 * 9 + 10) % 17 + 1))
            x4_24 = (vector.create((x4_26 * 2 + 7) % 11 + 1, (x4_26 * 6 + 3) % 13 + 1, (x4_26 * 1 + 6) % 17 + 1))
            x4_7 = (vector.create((x4_26 * 2 + 4) % 11 + 1, (x4_26 * 7 + 3) % 13 + 1, (x4_26 * 7 + 9) % 17 + 1))
            if vector.dot(vector.cross(x4_5, x4_39), (vector.cross(x4_24, x4_7))) == vector.dot(x4_5, x4_24) * vector.dot(x4_39, x4_7) - vector.dot(x4_5, x4_7) * vector.dot(x4_39, x4_24) then
                pa = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
                o5 = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
                o0 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                oW = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
            else
                o5 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
                pa = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
                oW = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                o0 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
            end
            x4_26 = (x4_26 + 191) % 280
        end
    elseif x4_9 <= 31 then
        if x4_9 <= 29 then
            if x4_9 <= 28 then
                x4_5 = (vector.create((x4_26 * 5 + 2) % 11 + 1, (x4_26 * 6 + 2) % 13 + 1, (x4_26 * 6 + 8) % 17 + 1))
                local zO = vector.floor(x4_5) + vector.ceil(x4_5 * -1)
                if vector.dot(zO, zO) == 0 then
                    oT = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
                    oP = "https://paypal.me/TheTruckerGOD"
                    oJ = "https://venmo.com/u/miserablemusic"
                    x4_51 = "#345d9d"
                    x4_16 = "#f7931a"
                else
                    oJ = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
                    oT = "https://paypal.me/TheTruckerGOD"
                    x4_51 = "https://venmo.com/u/miserablemusic"
                    x4_16 = "#345d9d"
                    oP = "#f7931a"
                end
                x4_26 = (x4_26 + 156) % 280
            else
                local yL = bit32.rrotate(bit32.bxor(bit32.lrotate(x4_26, 14), string.byte(tostring(o6))), 23)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(yL, 882780991), 497324251), (bit32.bxor(bit32.band(yL, 3412186304), 1858691250))), 497324251), 1858691250) == yL then
                    x4_33 = "#627eea"
                    x4_49 = "#26a17b"
                else
                    x4_49 = "#627eea"
                    x4_33 = "#26a17b"
                end
                x4_26 = (x4_26 + 86) % 280
            end
        elseif x4_9 <= 30 then
            x4_5 = (vector.create((x4_26 * 2 + 7) % 11 + 1, (x4_26 * 5 + 13) % 13 + 1, (x4_26 * 11 + 3) % 17 + 1))
            local yZ = vector.floor(x4_5) + vector.ceil(x4_5 * -1)
            if vector.dot(yZ, yZ) == 4 then
                x4_38 = "#14f195"
            else
                x4_14 = "#14f195"
            end
            x4_26 = (x4_26 + 121) % 280
        else
            x4_5 = {
                "qhmv",
                "unolihrhhae",
                "cbvdpu",
                "nww",
                "hpogftxwz",
                "ywd",
                "ngzjuwnam",
                "kzknknhepx",
                "sqz",
                "jdvew",
                "khugwblgm"
            }
            local zI = x4_26
            x4_39 = x4_5[zI % 11 + 1]
            if x4_39:len() <= x4_39:reverse():rep(zI % 3 + 2):len() then
                x4_31 = "#0070ba"
            else
                pF = "#0070ba"
            end
            x4_26 = (x4_26 + 191) % 280
        end
    elseif x4_9 <= 33 then
        if x4_9 <= 32 then
            x4_5 = { "irsc", "vylwmoph", "jatnkw", "yesjpdpz", "ufuictzoo", "nwcncmg", "jcijgzrhfgy", "uotc" }
            local zJ = x4_26
            x4_39 = x4_5[zJ % 8 + 1]
            if x4_39:len() <= x4_39:gsub("(.)", "%1%1", zJ % 3 % 2 + 1):len() then
                x4_47 = "#008cff"
            else
                o1 = "#008cff"
            end
            x4_26 = (x4_26 + 51) % 280
        else
            x4_5 = (vector.create((x4_26 * 4 + 3) % 11 + 1, (x4_26 * 11 + 8) % 13 + 1, (x4_26 * 11 + 14) % 17 + 1))
            x4_39 = (vector.create((x4_26 * 6 + 9) % 11 + 1, (x4_26 * 2 + 4) % 13 + 1, (x4_26 * 11 + 5) % 17 + 1))
            x4_24 = (vector.create((x4_26 * 1 + 3) % 11 + 1, (x4_26 * 6 + 11) % 13 + 1, (x4_26 * 4 + 7) % 17 + 1))
            if vector.dot(vector.cross(x4_5, x4_39), x4_24) == vector.dot(vector.cross(x4_39, x4_24), x4_5) then
                pV = fn1151
                pv = fn1184
                pc = fns.fn9
            else
                pc = fn1151
                pV = fn1184
                pv = fns.fn9
            end
            x4_26 = (x4_26 + 191) % 280
        end
    elseif x4_9 <= 34 then
        x4_9 = { "vdaoifh", "yjjlmchwhml", "tkdpvwsxyqa", "mrbgutdnzmn", "ymwpx", "gcawqzmky", "plf" }
        local yV = x4_26
        x4_5 = x4_9[yV % 7 + 1]
        if x4_5:len() >= x4_5:reverse():rep(yV % 3 + 2):len() then
            pB = fn967
            oK = fn1072
            ow = fns.fn215
            o1 = fns.fn718
        else
            o1 = fns.fn382
            oK = fn967
            ow = fn1072
            pB = fns.fn718
        end
        x4_26 = (x4_26 + 51) % 280
    else
        local yX = bit32.rrotate(bit32.bxor(bit32.lrotate(x4_26, 31), string.byte(tostring(o8))), 13)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(yX, 2393819575), 2804943265), (bit32.bxor(bit32.band(yX, 1901147720), 1082673081))), 2804943265), 1082673081) == yX then
            pe = fns.fn2
            oQ = fns.fn440
            ou = function(bk)
                local rJ_2
                local rI_2
                if typeof(firesignal) == "function" then
                    pcall(firesignal, bk)
                    return true
                elseif typeof(getconnections) == "function" then
                    rI_2, rJ_2 = pcall(getconnections, bk)
                    local rK = rI_2 and type(rJ_2) == "table"
                    if rK then
                        for i, v in ipairs(rJ_2) do
                            local rR = v
                            pcall(function()
                                if rR.Fire then
                                    rR:Fire()
                                elseif rR.Function then
                                    rR.Function()
                                end
                            end)
                        end
                        return true
                    end
                    return false
                else
                    return false
                end
            end
            pE = function(bs)
                if not bs then
                    return
                end
                if bs:IsA("GuiButton") then
                    pcall(function()
                        bs:Activate()
                    end)
                end
                ou(bs.MouseButton1Down)
                ou(bs.MouseButton1Click)
                ou(bs.Activated)
            end
        else
            pE = fns.fn2
            ou = fns.fn440
            pe = function(bk)
                local rJ_1
                local rI_1
                if typeof(firesignal) == "function" then
                    pcall(firesignal, bk)
                    return true
                elseif typeof(getconnections) == "function" then
                    rI_1, rJ_1 = pcall(getconnections, bk)
                    local rK = rI_1 and type(rJ_1) == "table"
                    if rK then
                        for i, v in ipairs(rJ_1) do
                            local rR = v
                            pcall(function()
                                if rR.Fire then
                                    rR:Fire()
                                elseif rR.Function then
                                    rR.Function()
                                end
                            end)
                        end
                        return true
                    end
                    return false
                else
                    return false
                end
            end
            oQ = function(bs)
                if not bs then
                    return
                end
                if bs:IsA("GuiButton") then
                    pcall(function()
                        bs:Activate()
                    end)
                end
                ou(bs.MouseButton1Down)
                ou(bs.MouseButton1Click)
                ou(bs.Activated)
            end
        end
        x4_26 = (x4_26 + 156) % 280
    end
until (x4_26 * 61 + 75) % 280 == 153
for k, v in x4_1 do
    x4_12(v)
end
oN, x4_41, Label, oh, x4_23 = nil, nil, nil, nil, nil
x4_3 = 16
repeat
    x4_26 = (x4_3 * 2 + 0) % 3 + 1
    if x4_26 <= 2 then
        if x4_26 <= 1 then
            x4_26 = {
                "relolgcr",
                "eliuuujrmb",
                "vvr",
                "sjshwetf",
                "camcutyom",
                "accecs",
                "fsx",
                "ron",
                "lklwbdssxqx",
                "puqaiaaz"
            }
            local yY = x4_3
            x4_9 = x4_26[yY % 10 + 1]
            if x4_9:len() <= x4_9:gsub("(.)", "%1%1", yY % 3 % 2 + 1):len() then
                oh = tostring(game.JobId)
            else
                x4_41 = tostring(game.JobId)
            end
            x4_3 = (x4_3 + 11) % 24
        else
            x4_26 = (vector.create((x4_3 * 1 + 6) % 11 + 1, (x4_3 * 6 + 8) % 13 + 1, (x4_3 * 13 + 9) % 17 + 1))
            x4_9 = (vector.create((x4_3 * 6 + 5) % 11 + 1, (x4_3 * 8 + 5) % 13 + 1, (x4_3 * 8 + 9) % 17 + 1))
            local zz = vector.cross(x4_26, x4_9)
            local zA = vector.dot(x4_26, x4_9)
            if vector.dot(zz, zz) + zA * zA == vector.dot(x4_26, x4_26) * vector.dot(x4_9, x4_9) + 1 then
                oh = #x4_23 > 18
            else
                x4_23 = #oh > 18
            end
            x4_3 = (x4_3 + 5) % 24
        end
    else
        x4_26 = {
            "hmrwjsbk",
            "dbkyjxdzozdq",
            "fzn",
            "dunvpixan",
            "nbinxc",
            "pflsk",
            "npmfevx",
            "dghpq",
            "nuz",
            "pgw",
            "rpbgs",
            "skxapwz",
            "kjejuydq"
        }
        if x4_26[(x4_3 * 70 + 35) % 13 + 1] < x4_26[(x4_3 * 70 + 35) % 13 + 1] then
            pO = "Unknown"
            pcall(fns.fn217)
            x4_36 = oN.Info:AddLeftGroupbox("Account", "circle-user")
            x4_36:AddLabel(x4_21("User", nil, Label), true)
            x4_36:AddLabel(x4_21("Status", "Keyless", Label), true)
            x4_36:AddLabel(x4_21("Executor", pO, Label), true)
            x4_38 = oN.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            x4_38:AddLabel(x4_41(ph .. " [" .. tostring(game.PlaceId) .. "]", og), true)
            x4_38:AddLabel(x4_21("Place ID", tostring(game.PlaceId), og), true)
            x4_1 = x4_38:AddLabel(x4_21("Session time", "0s", pk), true)
        else
            oN = "Unknown"
            pcall(fns.fn217)
            x4_38 = x4_1.Info:AddLeftGroupbox("Account", "circle-user")
            x4_38:AddLabel(pO("User", pk.Name, x4_21), true)
            x4_38:AddLabel(pO("Status", "Keyless", x4_21), true)
            x4_38:AddLabel(pO("Executor", oN, x4_21), true)
            x4_41 = x4_1.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            x4_41:AddLabel(og(x4_44 .. " [" .. tostring(game.PlaceId) .. "]", x4_36), true)
            x4_41:AddLabel(pO("Place ID", tostring(game.PlaceId), x4_36), true)
            Label = x4_41:AddLabel(pO("Session time", "0s", ph), true)
        end
        x4_3 = (x4_3 + 23) % 24
    end
until (x4_3 * 23 + 21) % 24 == 14
if x4_23 then
    x4_3 = 3
    repeat
        if x4_3 * 85925365 + 10 + 3 >= x4_3 * 85925365 + 10 + 3 + 2 then
            oh = string.sub(x4_23, 1, 18) .. "..."
        else
            x4_23 = string.sub(oh, 1, 18) .. "..."
        end
        x4_3 = (x4_3 + 3) % 4
    until (x4_3 * 3 + 2) % 4 == 0
end
x4_3 = x4_23
local qN = if x4_3 then 1 else 0
local x4_46 = 2651 * qN + 1081 * (1 - qN)
local qM = 2747 * qN + 2717 * (1 - qN)
if not ((x4_46 * 2399 + qM * 3193 + x4_46 * qM) % 16777213 == 5636004) then
    x4_3 = oh
end
pA, ScriptsGroup, CurrentCamera2, connection, connection2, connection3, pl, pi, connection4, connection5, x4_9, pH, oZ, oF, pS, pD, oC = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local x4_32 = x4_3
x4_41:AddLabel(pO("Server", x4_32, x4_18), true)
x4_41:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
pA = os.clock()
if (not pD or not pD or not pD and x4_32) and ((not pD or pD) and (not x4_32 or not x4_32)) or not ((not pD or not pD or not pD and x4_32) and ((not pD or pD) and (not x4_32 or not x4_32))) then
    task.spawn(fns.worker)
    ScriptsGroup = x4_1.Info:AddRightGroupbox("Scripts", "package")
else
    task.spawn(fns.worker)
    x4_1 = ScriptsGroup.Info:AddRightGroupbox("Scripts", "package")
end
ScriptsGroup:AddLabel(og("Included in this hub", x4_18), true)
ScriptsGroup:AddLabel(og(x4_44, x4_36), true)
x4_24 = x4_1.Info:AddRightGroupbox("Features", "list")
x4_24:AddLabel(og("Auto Farm", x4_36), true)
x4_24:AddLabel(og("Auto Shop", x4_21), true)
x4_24:AddLabel(og("Misc Utilities", x4_18), true)
x4_5 = x4_1.Info:AddRightGroupbox("Socials", "link")
x4_5:AddButton({ Text = "Discord", Func = ov })
x4_5:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
x4_26 = x4_1.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
x4_26:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
x4_26:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
x4_26:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
x4_26:AddButton({ Text = "Copy Discord Invite", Func = ov })
x4_23 = x4_1.Info:AddRightGroupbox("Donations", "heart")
x4_23:AddLabel(og("All donations are optional but appreciated.", ph), true)
x4_23:AddLabel(og("If you donate you get a special role, just PING after you donate.", x4_21), true)
x4_23:AddDivider()
x4_23:AddLabel(og("LTC / Litecoin", x4_51), true)
x4_23:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
x4_23:AddLabel(og("BTC / Bitcoin", x4_16), true)
x4_23:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
x4_23:AddLabel(og("ETH / Ethereum", x4_33), true)
x4_23:AddButton({ Text = "Copy Ethereum Address", Func = fns.onCopyEthereumAddress })
x4_23:AddLabel(og("USDT", x4_49), true)
x4_23:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
x4_23:AddLabel(og("Solana", x4_14), true)
x4_23:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
x4_23:AddLabel(og("PayPal", x4_31), true)
x4_23:AddButton({ Text = "Copy PayPal Link", Func = fns.onCopyPayPalLink })
x4_23:AddLabel(og("Venmo", x4_47), true)
x4_23:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
x4_23:AddDivider()
x4_23:AddLabel(og("Don't have any of the listed currencies but still wanna donate?", x4_18), true)
x4_23:AddLabel(og("DM me and we'll work something out.", x4_36), true)
local FaqGroup = x4_1.Info:AddRightGroupbox("FAQ", "circle-help")
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
local FarmGroup = x4_1.Main:AddLeftGroupbox("Farm", "sword")
FarmGroup:AddToggle("AutoGetWin", { Text = "Auto Get Win", Default = false })
FarmGroup:AddDropdown("WinStage", { Text = "Stop At Win", Values = oq, Default = oq[2] })
local TrainGroup = x4_1.Main:AddRightGroupbox("Train", "dumbbell")
TrainGroup:AddLabel(og("game has auto train no point to add it", x4_21), true)
TrainGroup:AddToggle("AutoTrain2x", { Text = "Auto 2x", Default = false })
local ChestGroup = x4_1.Main:AddRightGroupbox("Chest", "package")
ChestGroup:AddToggle("AutoOpenChest", { Text = "Auto Open Chest", Default = false })
ChestGroup:AddDropdown("ChestRarity", { Text = "Chest", Values = of, Default = of[1] })
local RebirthGroup = x4_1.Main:AddRightGroupbox("Rebirth", "rotate-ccw")
RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
x4_7 = x4_1.Shop:AddLeftGroupbox("Cosmetics", "sparkles")
x4_7:AddToggle("AutoBuyAura", { Text = "Auto Buy Aura", Default = false })
x4_7:AddToggle("AutoBuyTrail", { Text = "Auto Buy Trail", Default = false })
x4_39 = x4_1.Shop:AddRightGroupbox("Weapons", "swords")
x4_39:AddToggle("AutoEquipBestWeapon", { Text = "Auto Equip Best Owned Weapon", Default = false })
x4_12 = x4_1.Player:AddLeftGroupbox("Movement", "footprints")
x4_12:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
x4_12:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
x4_12:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
x4_12:AddToggle("NoClip", { Text = "NoClip", Default = false })
x4_12:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = x4_1.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
CurrentCamera2 = Workspace.CurrentCamera
connection = RunService.Stepped:Connect(fns.onStepped)
connection2 = UserInputService.JumpRequest:Connect(fns.onJumpRequest)
connection3 = RunService.RenderStepped:Connect(fns.onRenderStepped)
o_.Fly:OnChanged(fn1188)
o_.WalkSpeedEnabled:OnChanged(fns.fn275)
pH = function(iu)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not iu)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not iu
        end
    end)
    if not iu then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(pk, "GameplayPaused", false)
        else
            pk.GameplayPaused = false
        end
    end)
end
o_.AntiGameplayPause:OnChanged(fn1054)
task.spawn(fns.antiGameplayPauseLoop)
task.spawn(fns.worker2)
task.spawn(function()
    local wF = false
    repeat
        local wy, wz
        if not pt.Unloaded then
            if pV("AutoGetWin") then
                wy = false
                pcall(function()
                    wy = pp()
                end)
                if wy then
                    task.wait(0.05)
                else
                    pcall(pI)
                    wz = false
                    pcall(function()
                        wz = pL()
                    end)
                    local wC = wz and 0.15 or 0.05
                    task.wait(wC)
                end
            else
                task.wait(0.2)
            end
        else
            wF = true
        end
    until wF
end)
task.spawn(fns.worker3)
task.spawn(fns.worker4)
task.spawn(worker5)
task.spawn(fns.worker6)
pk.CharacterAdded:Connect(fns.onCharacterAdded)
local MenuGroup = x4_1.Settings:AddLeftGroupbox("Menu", "menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
pt.ToggleKeybind = oV.MenuKeybind
pl = tick()
pi = tick()
pcall(function()
    for k, v in getconnections(pk.Idled) do
        local wQ = v
        pcall(function()
            wQ:Disable()
        end)
    end
end)
oZ = fns.fn464
connection4 = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection5 = UserInputService.InputChanged:Connect(fns.onInputChanged)
if ((not x4_26 or false or x4_26 and x4_26) and ((oC or oC) and (not x4_26 or x4_26)) and (x4_26 and false and (x4_26 or oC) and ((x4_26 or x4_26) and (oC or oC))) or ((false and not x4_26 or (oC or not x4_26)) and (false or (x4_26 or oC)) or (false or (oC or not x4_26)) and (not x4_26 or not x4_26 or (not x4_26 or not x4_26)))) and not ((not x4_26 or false or x4_26 and x4_26) and ((oC or oC) and (not x4_26 or x4_26)) and (x4_26 and false and (x4_26 or oC) and ((x4_26 or x4_26) and (oC or oC))) or ((false and not x4_26 or (oC or not x4_26)) and (false or (x4_26 or oC)) or (false or (oC or not x4_26)) and (not x4_26 or not x4_26 or (not x4_26 or not x4_26)))) then
    x4_1:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    x4_1:AddButton("Unload", onUnload)
    task.spawn(fns.antiAfkLoop)
    MenuGroup:OnUnload(fns.fn323)
    o4:SetLibrary(MenuGroup)
    o4:SetFolder("OuroborosHub")
    o4:SaveDefault("Evil Hello Kitty")
    o4:ApplyToTab(x4_35.Settings)
    o4:LoadDefault()
    x4_9:SetLibrary(MenuGroup)
    x4_9:IgnoreThemeSettings()
    x4_9:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    x4_9:SetFolder("OuroborosHub/Plus1FruitSamurai")
    pt = x4_9:BuildConfigSection(x4_35.Settings)
else
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    MenuGroup:AddButton("Unload", onUnload)
    task.spawn(fns.antiAfkLoop)
    pt:OnUnload(fns.fn323)
    x4_35:SetLibrary(pt)
    x4_35:SetFolder("OuroborosHub")
    x4_35:SaveDefault("Evil Hello Kitty")
    x4_35:ApplyToTab(x4_1.Settings)
    x4_35:LoadDefault()
    o4:SetLibrary(pt)
    o4:IgnoreThemeSettings()
    o4:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    o4:SetFolder("OuroborosHub/Plus1FruitSamurai")
    x4_9 = o4:BuildConfigSection(x4_1.Settings)
end
oF = fns.fn584
pS = fns.fn435
pD = fn1122
oC = function(kh)
    local xD
    xD = nil
    local xE = type(kh) ~= "table" or type(kh.idx) ~= "string" or type(kh.type) ~= "string"
    local xI = if xE then 1 else 0
    local xG = 1109 * xI + 2979 * (1 - xI)
    local xH = 1761 * xI + 1703 * (1 - xI)
    if not ((xG * 3562 + xH * 2743 + xG * xH) % 16777213 == 10733630) then
        xE = o4.Ignore[kh.idx]
    end
    if xE then
        return false
    end
    xD = oF(kh.type, kh.idx)
    if not xD then
        return false
    end
    local xE_1 = pcall(function()
        if kh.type == "Input" then
            if type(kh.text) ~= "string" then
                return
            end
            xD:SetValue(kh.text)
        elseif kh.type == "ColorPicker" then
            xD:SetValueRGB(Color3.fromHex(kh.value), kh.transparency)
        elseif kh.type == "KeyPicker" then
            xD:SetValue({ kh.key, kh.mode, kh.modifiers })
            if kh.mode == "Toggle" and kh.toggled ~= nil then
                xD.Toggled = kh.toggled
                xD:Update()
            end
        else
            xD:SetValue(kh.value)
        end
    end)
    return xE_1
end
x4_9:AddDivider()
x4_9:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
x4_9:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
x4_9:AddButton("Import Config from Clipboard Text", fns.onImportConfigFromClipboardTex)
o4:LoadAutoloadConfig()
pt:Notify("+1 Fruit Samurai loaded")
