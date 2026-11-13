local fns = {}
local vA_1, vA_2, vA_4, vA_5, vA_7, vA_8, vA_10, vA_13, vA_14, vA_15, vA_17, vA_19, vA_20, vA_21, vA_22, vA_23
local ns
local m9
local nR
local mR
local Label
local nf
local UserInputService
local mX
local nE
local nl
local n2
local m2
local DataMgr
local nQ
local mQ
local nx
local ne
local nW
local nD
local nk
local n1
local m1
local nJ
local nq
local Toggles
local mP
local nw
local nd
local mV
local nC
local n0
local m0
local nI
local np
local connection2
local nO
local mO
local nc
local nU
local mU
local nB
local ni
local m_
local nN
local CurrentCamera
local nb
local nT
local connection3
local nA
local nh
local nZ
local mZ
local nG
local n4
local m4
local nM
local nt
local na
local nS
local mS
local LocalPlayer
local ng
local nY
local mY
local Lighting
local nm
local connection
local m3
local nL
function fns.fn65(ef)
    if nI(ef) then
        ef.Visible = false
    end
end
function fns.fn71()
    return DataMgr:GetClientPlayer()
end
function fns.fn88()
    local pz = DataMgr:GetConfig("PoolData", 101)
    return pz and pz.pool or nil
end
function fns.fn97(b1, b2)
    local qm = m1()
    local qn = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("FishArea")
    if not qm or not qn then
        return {}
    end
    local qn_2 = b2
    local qt = if qn_2 then 1 else 0
    local qr = 3581 * qt + 2080 * (1 - qt)
    local qs = 1966 * qt + 501 * (1 - qt)
    if not ((qr * 76 + qs * 2019 + qr * qs) % 16777213 == 11281756) then
        qn_2 = 160
    end
    b2 = qn_2
    local qn_3 = {}
    for i, child in ipairs(qn:GetChildren()) do
        if b1 then
            local attr = child:GetAttribute("Owner")
            if not (attr ~= LocalPlayer.Name) then
                for i, child in ipairs(child:GetChildren()) do
                    if child:IsA("Model") then
                        if not nA(child) then
                            local qo_2 = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart")
                            local qp_1 = qo_2
                            if qo_2 then
                                qo_2 = (qp_1.Position - qm.Position).Magnitude <= b2
                            end
                            if qo_2 then
                                qn_3[#qn_3 + 1] = qp_1
                            end
                        end
                    end
                end
            end
        else
            for i, child in ipairs(child:GetChildren()) do
                if child:IsA("Model") then
                    if not nA(child) then
                        local qo_3 = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart")
                        local qp_2 = qo_3
                        if qo_3 then
                            qo_3 = (qp_2.Position - qm.Position).Magnitude <= b2
                        end
                        if qo_3 then
                            qn_3[#qn_3 + 1] = qp_2
                        end
                    end
                end
            end
        end
    end
    return qn_3
end
function fns.fn108()
    local pr = tonumber(DataMgr:GetPlayerBaseData("coin")) or 0
    return pr
end
function fns.fn112(d9)
    local ry = not d9 or not d9:IsA("GuiObject")
    local rD = if ry then 1 else 0
    local rB = 804 * rD + 104 * (1 - rD)
    local rC = 438 * rD + 2432 * (1 - rD)
    if not ((rB * 1793 + rC * 3042 + rB * rC) % 16777213 == 3126120) then
        ry = d9.Name ~= "Tip"
    end
    if ry then
        return false
    end
    local Content = d9:FindFirstChild("Content")
    local rz = Content and Content:IsA("TextLabel") and Content.Text == nL
    return rz
end
function fns.worker4()
    while not nh.Unloaded do
        task.wait(1.2)
        if nO("AutoUpgradeGear") then
            pcall(n4)
        end
    end
end
function fns.onCopyVenmoLink()
    mY(nS, "Copied Venmo link")
end
function fns.fn174()
    local Character = LocalPlayer.Character
    local px = Character and Character:FindFirstChildOfClass("Humanoid")
    return px
end
function fns.onCopyEthereumAddress()
    mY(mR, "Copied Ethereum address")
end
local function fn187(iw)
    m_()
    if not iw then
        return
    end
    local Rendering = settings().Rendering
    nW(Rendering, "QualityLevel", Enum.QualityLevel.Level01)
    nW(Lighting, "GlobalShadows", false)
    nW(Lighting, "EnvironmentDiffuseScale", 0)
    nW(Lighting, "EnvironmentSpecularScale", 0)
    local Terrain = workspace.Terrain
    nW(Terrain, "Decoration", false)
    nW(Terrain, "WaterWaveSize", 0)
    nW(Terrain, "WaterWaveSpeed", 0)
    nW(Terrain, "WaterReflectance", 0)
    for i, descendant in workspace:GetDescendants() do
        ng(descendant)
    end
    for i, descendant in Lighting:GetDescendants() do
        ng(descendant)
    end
    connection = game.DescendantAdded:Connect(ng)
end
local function fn224()
    local uR = {}
    for i, v in ipairs({ Toggles, m3 }) do
        for k, v in pairs(v) do
            local uS = type(v) == "table" and type(v.Type) == "string" and not na.Ignore[k]
            if uS then
                local uS_1 = m4(k, v)
                if uS_1 then
                    uR[#uR + 1] = uS_1
                end
            end
        end
    end
    table.sort(uR, function(jl, jm)
        if jl.type ~= jm.type then
            return jl.type < jm.type
        end
        return jl.idx < jm.idx
    end)
    return { objects = uR }
end
local function onRefreshNPCList()
    nT()
    if m3.TeleportNpc then
        local TeleportNpc = m3.TeleportNpc
        local rm = #n1 > 0 and n1 or { "None" }
        TeleportNpc:SetValues(rm)
        if n1[1] then
            m3.TeleportNpc:SetValue(n1[1])
        end
    end
    nh:Notify("NPC list refreshed")
end
local function fn248()
    nJ(Toggles.FpsBoost.Value)
end
local function onInputChanged(hT)
    local UserInputType = hT.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        nE = tick()
    end
end
local function onTeleportToNPC()
    local q8 = m3.TeleportNpc and m3.TeleportNpc.Value
    if not q8 or q8 == "None" then
        nh:Notify("No NPC selected")
        return
    end
    nT()
    local q8_2 = nZ[q8]
    local q9_1 = not q8_2
    local ri = if q9_1 then 1 else 0
    local rg = 1590 * ri + 2098 * (1 - ri)
    local rh = 803 * ri + 1482 * (1 - ri)
    if not ((rg * 2202 + rh * 578 + rg * rh) % 16777213 == 5242084) then
        q9_1 = not q8_2.Parent
    end
    if q9_1 then
        nh:Notify("NPC not found")
        return
    end
    local q9_2 = q8_2:FindFirstChild("HumanoidRootPart") or q8_2.PrimaryPart or q8_2:FindFirstChildWhichIsA("BasePart", true)
    local q9_3 = m1()
    if not q9_2 or not q9_3 then
        nh:Notify("Could not teleport to NPC")
        return
    end
    local LookVector = q9_2.CFrame.LookVector
    q9_3.CFrame = CFrame.new(q9_2.Position + LookVector * 4 + Vector3.new(0, 3, 0), q9_2.Position)
end
local function fn297()
    local Character = LocalPlayer.Character
    local pu = Character and Character:FindFirstChild("HumanoidRootPart")
    return pu
end
local function onCharacterAdded()
    task.wait(0.3)
    if Toggles.FreezePlayer and Toggles.FreezePlayer.Value then
        nb(true)
    end
end
local function onCopyBitcoinAddress()
    mY(mU, "Copied Bitcoin address")
end
local function onRscripts()
    mY(mZ, "Copied Rscripts profile to clipboard")
end
local function onJumpRequest()
    if nh.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local td_1 = mS()
        if td_1 then
            td_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn342(cv)
    local DiscordGroup = cv:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = n2 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = n2 })
end
local function fn350(aM)
    local po = nC()
    if not po or not po.skillList then
        return nil
    end
    local pp_1 = po.skillList[aM]
    return pp_1 and pp_1.skill or nil
end
local function onExportConfigToClipboard()
    local vh_1
    local vg_1
    vg_1, vh_1 = pcall(nN.JSONEncode, nN, mV())
    if not vg_1 then
        nh:Notify("Failed to encode the config")
        return
    end
    local vg_2 = setclipboard or toclipboard
    local vg_3 = type(vg_2) ~= "function" or not pcall(vg_2, vh_1)
    if vg_3 then
        nh:Notify("Your executor does not support copying to the clipboard")
        return
    end
    nh:Notify("Config copied to clipboard", 6)
end
local function onInputBegan()
    nE = tick()
end
local function fn369()
    nf(Toggles.AntiGameplayPause.Value)
end
local function onCopyJoinScript_JobID()
    local qX = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, nw)
    if setclipboard then
        setclipboard(qX)
    elseif toclipboard then
        toclipboard(qX)
    end
    nh:Notify("Copied join script to clipboard")
end
local function fn446(aq, ar)
    return string.format('<font color="%s">%s</font>', ar, aq)
end
local function onCopyPayPalLink()
    mY(nY, "Copied PayPal link")
end
local function onImportConfigFromClipboardTex()
    local vm_1
    local vk = m3.SaveManager_ImportSource.Value or ""
    local vk_1
    local vl = tostring(vk):match("^%s*(.-)%s*$")
    if vl == "" then
        nh:Notify("Paste an exported config into the box first")
        return
    end
    vk_1, vm_1 = pcall(nN.JSONDecode, nN, vl)
    local vl_1 = not vk_1
    local vq = if vl_1 then 1 else 0
    local vo = 3525 * vq + 3051 * (1 - vq)
    local vp = 799 * vq + 3893 * (1 - vq)
    if not ((vo * 177 + vp * 778 + vo * vp) % 16777213 == 4062022) then
        vl_1 = type(vm_1) ~= "table"
    end
    if not vl_1 then
        vl_1 = type(vm_1.objects) ~= "table"
    end
    if vl_1 then
        nh:Notify("That is not a valid exported config")
        return
    end
    local vk_2 = 0
    for i, v in ipairs(vm_1.objects) do
        if nt(v) then
            vk_2 += 1
        end
    end
    if vk_2 == 0 then
        nh:Notify("No settings in that config matched this script")
        return
    end
    m3.SaveManager_ImportSource:SetValue("")
    local vm_2 = vk_2 == 1 and "" or "s"
    nh:Notify(("Imported %d setting%s"):format(vk_2, vm_2), 6)
end
local function fn529()
    if not workspace.CurrentCamera then
        return
    end
    nR:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    nR:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    nD = tick()
end
local function antiGameplayPauseLoop()
    while not nh.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            nf(true)
        end
    end
end
local function fn537(i8, i9)
    local Type = i9.Type
    if Type == "Toggle" then
        return { idx = i8, type = "Toggle", value = i9.Value == true }
    elseif Type == "Slider" then
        return { idx = i8, type = "Slider", value = tostring(i9.Value) }
    elseif Type == "Dropdown" then
        return { idx = i8, type = "Dropdown", multi = i9.Multi == true, value = i9.Value }
    elseif Type == "Input" then
        local uL = i9.Value
        local uP = if uL then 1 else 0
        local uN = 3125 * uP + 1807 * (1 - uP)
        local uO = 3491 * uP + 757 * (1 - uP)
        if not ((uN * 1527 + uO * 3090 + uN * uO) % 16777213 == 9691227) then
            uL = ""
        end
        return { idx = i8, type = "Input", text = tostring(uL) }
    elseif Type == "ColorPicker" then
        return { idx = i8, type = "ColorPicker", value = i9.Value:ToHex(), transparency = i9.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = i8,
            type = "KeyPicker",
            mode = i9.Mode,
            key = i9.Value,
            modifiers = i9.Modifiers,
            toggled = i9.Toggled
        }
    else
        return nil
    end
end
local function fn544()
    mY(m0, "Copied Discord invite to clipboard")
end
local function onCopyLitecoinAddress()
    mY(mX, "Copied Litecoin address")
end
local function onRenderStepped(gL)
    if nh.Unloaded then
        return
    end
    if Toggles.FreezePlayer and Toggles.FreezePlayer.Value then
        local tf_1 = m1()
        local tg_1 = mS()
        if tf_1 then
            tf_1.Anchored = true
            tf_1.AssemblyLinearVelocity = Vector3.zero
            tf_1.AssemblyAngularVelocity = Vector3.zero
        end
        if tg_1 then
            tg_1.PlatformStand = true
        end
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local tf_3 = mS()
        if tf_3 then
            tf_3.WalkSpeed = m3.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local tf_5 = m1()
        local tg_2 = mS()
        if tf_5 and tg_2 then
            tg_2.PlatformStand = true
            local tg_3 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                tg_3 = tg_3 + CurrentCamera.CFrame.LookVector
            end
            local tl = if UserInputService:IsKeyDown(Enum.KeyCode.S) then 1 else 0
            if tl == 1 then
                tg_3 = tg_3 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                tg_3 = tg_3 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                tg_3 = tg_3 + CurrentCamera.CFrame.RightVector
            end
            local tl_1 = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
            if tl_1 == 1 then
                tg_3 = tg_3 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                tg_3 = tg_3 - Vector3.new(0, 1, 0)
            end
            tf_5.Velocity = Vector3.zero
            if tg_3.Magnitude > 0 then
                tf_5.CFrame = tf_5.CFrame + tg_3.Unit * m3.FlySpeed.Value * gL
            end
        end
    end
end
local function fn598(bj)
    if not bj then
        return 0
    end
    local pN = bj.rate or 1
    if pN <= 0 then
        pN = 1
    end
    local pM_1 = bj.atk
    local pR = if pM_1 then 1 else 0
    local pP = 771 * pR + 1765 * (1 - pR)
    local pQ = 1125 * pR + 3858 * (1 - pR)
    if not ((pP * 2069 + pQ * 1688 + pP * pQ) % 16777213 == 4361574) then
        pM_1 = 0
    end
    return pM_1 / pN
end
local function fn599(bm, bn)
    local pT_1
    local pS = nG(bm)
    if not pS then
        return math.huge
    end
    if pS.luck then
        pT_1 = pS.luck * 100
    else
        pT_1 = (pS.price or 0) * 50
    end
    return math.floor(pT_1 * 2.2 ^ bn)
end
local function autoSellDelayLoop()
    while not nh.Unloaded do
        local so_1 = m3.AutoSellDelay and m3.AutoSellDelay.Value or 1
        task.wait(so_1)
        if nO("AutoSell") then
            pcall(nM)
        end
    end
end
local function fn601(bd)
    local pF = DataMgr:GetPlayerBaseData("weaponInv")
    if not pF then
        return false
    end
    return pF[bd] ~= nil
end
local function worker2()
    local ro, rp, state, rr, rs, rt
    local ru = 41
    while true do
        local ru_1 = 13872 - ru
        do
            if ru_1 < 13845 then
                if ru_1 < 13835 then
                    if ru_1 < 13833 then
                        if ru_1 < 13826 then
                            if ru_1 < 13819 then
                                if ru_1 < 3645 then
                                    break
                                elseif ru_1 < 9803 then
                                    break
                                elseif ru_1 < 13818 then
                                    break
                                else
                                    ru = 10
                                end
                            elseif ru_1 < 13822 then
                                if ru_1 < 13821 then
                                    if ru_1 < 13820 then
                                        if ru_1 == 13819 then
                                            ru = 54
                                        else
                                            ru = 13860
                                            continue
                                        end
                                    elseif ru_1 == 13820 then
                                        ru = 54
                                    else
                                        ru = 2288
                                        continue
                                    end
                                else
                                    nQ = nil
                                    task.wait(0.1)
                                    ru = 17
                                end
                            elseif ru_1 < 13824 then
                                if ru_1 < 13823 then
                                    nQ = nil
                                    task.wait(0.5)
                                    ru = 24
                                elseif ru_1 == 13823 then
                                    ru = if not nQ then 43 else 2
                                else
                                    ru = 13841
                                    continue
                                end
                            elseif ru_1 < 13825 then
                                if ru_1 == 13824 then
                                    ru = if rp then 8 else 9
                                else
                                    ru = 13862
                                    continue
                                end
                            else
                                ru = if rr then 7 else 40
                            end
                        elseif ru_1 < 13829 then
                            if ru_1 < 13828 then
                                if ru_1 < 13827 then
                                    if ru_1 == 13826 then
                                        ru = if rr then 34 else 31
                                    else
                                        ru = 13836
                                        continue
                                    end
                                else
                                    ru = 21
                                end
                            elseif ru_1 == 13828 then
                                nQ = nil
                                nB(rp)
                                task.wait(0.05)
                                ru = 24
                            else
                                ru = 13847
                                continue
                            end
                        elseif ru_1 < 13831 then
                            if ru_1 < 13830 then
                                nQ = os.clock()
                                ru = 2
                            elseif ru_1 == 13830 then
                                nQ = nil
                                ru = if #ne(true, ro) > 0 then 18 else 29
                            else
                                ru = 13862
                                continue
                            end
                        elseif ru_1 < 13832 then
                            ru = 24
                        elseif ru_1 == 13832 then
                            ru = 35
                        else
                            ru = 13837
                            continue
                        end
                    elseif ru_1 < 13834 then
                        ru = if rt then 22 else 11
                    else
                        rt = rs <= 1.02
                        ru = 39
                    end
                elseif ru_1 < 13843 then
                    if ru_1 < 13839 then
                        if ru_1 < 13837 then
                            if ru_1 < 13836 then
                                rp = nx("Fish")
                                ru = if not rp then 6 else 27
                            else
                                rr = not nh.Unloaded
                                ru = 47
                            end
                        elseif ru_1 < 13838 then
                            if ru_1 == 13837 then
                                nQ = nil
                                rr = not rp
                                ru = if rr then 15 else 46
                            else
                                ru = 13822
                                continue
                            end
                        else
                            mO("Fish", "Exit")
                            ru = 31
                        end
                    elseif ru_1 < 13841 then
                        if ru_1 < 13840 then
                            ru = 24
                        elseif ru_1 == 13840 then
                            nQ = nil
                            task.wait(0.2)
                            ru = 24
                        else
                            ru = 13836
                            continue
                        end
                    elseif ru_1 < 13842 then
                        task.wait(0.2)
                        ru = 10
                    else
                        ru = 0
                    end
                elseif ru_1 < 13844 then
                    if ru_1 == 13843 then
                        task.wait(0.12)
                        ru = 53
                    else
                        ru = 13824
                        continue
                    end
                elseif ru_1 == 13844 then
                    mO("Fish", "Exit")
                    rp = true
                    ru = 35
                else
                    ru = 13835
                    continue
                end
            elseif ru_1 < 13860 then
                if ru_1 < 13851 then
                    if ru_1 < 13848 then
                        if ru_1 < 13847 then
                            if ru_1 < 13846 then
                                state = rp.state
                                ru = if state == 1 then 5 else 3
                            elseif ru_1 == 13846 then
                                task.wait(0.01)
                                ru = 19
                            else
                                ru = 13834
                                continue
                            end
                        else
                            nQ = nil
                            mO("Fish", "Enter")
                            task.wait(0.04)
                            ru = 17
                        end
                    elseif ru_1 < 13849 then
                        ru = 13
                    elseif ru_1 < 13850 then
                        break
                    else
                        mO("Fish", "Exit")
                        rp = true
                        ru = 35
                    end
                elseif ru_1 < 13854 then
                    if ru_1 < 13852 then
                        ru = 23
                    elseif ru_1 < 13853 then
                        ru = if state == 3 then 42 else 16
                    elseif ru_1 == 13853 then
                        ru = 30
                    else
                        ru = 13821
                        continue
                    end
                elseif ru_1 < 13857 then
                    if ru_1 < 13856 then
                        if ru_1 < 13855 then
                            ru = 24
                        else
                            ru = 53
                        end
                    else
                        ru = if state == 4 then 25 else 51
                    end
                elseif ru_1 < 13859 then
                    if ru_1 < 13858 then
                        if ru_1 == 13857 then
                            rr = nO("AutoPerfectCast")
                            ru = 46
                        else
                            ru = 13852
                            continue
                        end
                    elseif ru_1 == 13858 then
                        ru = if not nO("AutoPerfectCast") then 32 else 12
                    else
                        ru = 13852
                        continue
                    end
                elseif ru_1 == 13859 then
                    ru = if not nh.Unloaded then 14 else 45
                else
                    ru = 13819
                    continue
                end
            elseif ru_1 < 13866 then
                if ru_1 < 13863 then
                    if ru_1 < 13862 then
                        if ru_1 < 13861 then
                            ro = 160
                            rp = ne(true, ro)
                            ru = if #rp > 0 then 44 else 1
                        else
                            ru = if rr >= 6 then 28 else 26
                        end
                    elseif ru_1 == 13862 then
                        ru = 33
                    else
                        ru = 13827
                        continue
                    end
                elseif ru_1 < 13864 then
                    if ru_1 == 13863 then
                        task.wait(0.01)
                        ru = 52
                    else
                        ru = 13834
                        continue
                    end
                elseif ru_1 < 13865 then
                    if ru_1 == 13864 then
                        mO("Fish", "Exit")
                        nQ = nil
                        task.wait(0.2)
                        ru = 52
                    else
                        ru = 13826
                        continue
                    end
                elseif ru_1 == 13865 then
                    rr = os.clock() - nQ
                    rs = rr % 2
                    rt = rs >= 0.98
                    ru = if rt then 38 else 39
                else
                    ru = 13850
                    continue
                end
            elseif ru_1 < 16022 then
                if ru_1 < 13869 then
                    if ru_1 < 13868 then
                        if ru_1 < 13867 then
                            if ru_1 == 13866 then
                                nQ = nil
                                task.wait(0.2)
                                ru = 24
                            else
                                ru = 13850
                                continue
                            end
                        elseif ru_1 == 13867 then
                            mO("Fish", "Enter")
                            nQ = os.clock()
                            rp = false
                            ru = 30
                        else
                            ru = 13835
                            continue
                        end
                    else
                        rp = rr <= 1.02
                        ru = 48
                    end
                elseif ru_1 < 13871 then
                    if ru_1 < 13870 then
                        ru = if state == 2 then 49 else 20
                    elseif ru_1 == 13870 then
                        local rp_1 = os.clock() - nQ
                        rr = rp_1 % 2
                        rp = rr >= 0.98
                        ru = if rp then 4 else 48
                    else
                        ru = 712
                        continue
                    end
                elseif ru_1 < 13872 then
                    if ru_1 == 13871 then
                        ru = if not nk("Rod") then 50 else 37
                    else
                        ru = 3902
                        continue
                    end
                elseif ru_1 == 13872 then
                    rr = (nO("AutoPerfectCast"))
                    ru = if rr then 36 else 47
                else
                    ru = 3645
                    continue
                end
            else
                break
            end
        end
    end
end
local function antiAfkLoop()
    while not nh.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local uz = tick() - nE
            local uA = tick() - nD
            if uz >= 300 and uA >= 60 then
                pcall(nm)
            else
                if uz < 300 and uA >= 300 then
                    pcall(nm)
                end
            end
        end
    end
end
local function onCopySolanaAddress()
    mY(n0, "Copied Solana address")
end
local function fn696(ig)
    if ig:IsA("BasePart") then
        nW(ig, "CastShadow", false)
        nW(ig, "Reflectance", 0)
    else
        local t3 = (ig:IsA("Decal"))
        local t7 = if t3 then 1 else 0
        local t5 = 2228 * t7 + 342 * (1 - t7)
        local t6 = 1950 * t7 + 1243 * (1 - t7)
        if not ((t5 * 3016 + t6 * 888 + t5 * t6) % 16777213 == 12795848) then
            t3 = ig:IsA("Texture")
        end
        if t3 then
            nW(ig, "Transparency", 1)
        else
            local t3_1 = ig:IsA("ParticleEmitter") or ig:IsA("Trail") or ig:IsA("Beam")
            local t7_1 = if t3_1 then 1 else 0
            local t5_1 = 2738 * t7_1 + 3713 * (1 - t7_1)
            local t6_1 = 2693 * t7_1 + 3043 * (1 - t7_1)
            if not ((t5_1 * 305 + t6_1 * 1377 + t5_1 * t6_1) % 16777213 == 11916785) then
                t3_1 = ig:IsA("Smoke")
            end
            if not t3_1 then
                t3_1 = ig:IsA("Fire")
            end
            if not t3_1 then
                t3_1 = ig:IsA("Sparkles")
            end
            if not t3_1 then
                t3_1 = ig:IsA("PostEffect")
            end
            if t3_1 then
                nW(ig, "Enabled", false)
            elseif ig:IsA("Atmosphere") then
                nW(ig, "Density", 0)
            end
        end
    end
end
local function fn709(aF)
    local pl = Toggles[aF]
    return pl and pl.Value == true
end
local function onUnload()
    nh:Unload()
end
local function fn726(d3)
    local rv = m3.AutoSellQualities and m3.AutoSellQualities.Value
    if type(rv) ~= "table" then
        return true
    end
    return rv[d3] == true
end
local function fn737()
    connection2:Disconnect()
    connection3:Disconnect()
    m_()
    nf(false)
    nb(false)
    print("Unloaded!")
end
local function fn754(i0, i1)
    local uE_1 = (i0 == "Toggle" and Toggles or m3)[i1]
    local uD_2 = type(uE_1) == "table" and uE_1.Type == i0
    return uD_2 and uE_1 or nil
end
local function onStepped()
    if nh.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local s2_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if s2_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn823()
    local qQ_1
    local qP_1
    if identifyexecutor then
        qQ_1, qP_1 = identifyexecutor()
        local qR = qQ_1 ~= ""
        local qS = type(qQ_1) == "string" and qR
        if qS then
            local qR_1 = type(qP_1) == "string" and qP_1 ~= "" and qQ_1 .. " " .. qP_1
            nU = qR_1 or qQ_1
        end
    end
end
local function fn829()
    local SystemPanel = LocalPlayer.PlayerGui:FindFirstChild("SystemPanel")
    local rJ = SystemPanel and SystemPanel:FindFirstChild("Main")
    local rI_1 = rJ
    if rJ then
        rJ = rI_1:FindFirstChild("Red")
    end
    local rI_2 = rJ
    if not rI_2 then
        return
    end
    for i, child in ipairs(rI_2:GetChildren()) do
        ns(child)
    end
end
local function fn845(ay, az)
    if setclipboard then
        setclipboard(ay)
    elseif toclipboard then
        toclipboard(ay)
    end
    nh:Notify(az)
end
local function fn860()
    nb(Toggles.FreezePlayer.Value)
end
local function fn861()
    if not Toggles.Fly.Value and not (Toggles.FreezePlayer and Toggles.FreezePlayer.Value) then
        local tv_1 = mS()
        if tv_1 then
            tv_1.PlatformStand = false
        end
    end
end
local function fn871()
    table.clear(n1)
    table.clear(nZ)
    local EItem = workspace:FindFirstChild("EItem")
    if not EItem then
        return
    end
    for i, child in ipairs(EItem:GetChildren()) do
        local o7_1 = child:IsA("Model") and child.Name ~= "gatecam"
        if o7_1 then
            local Humanoid = child:FindFirstChildOfClass("Humanoid")
            local ProximityPrompt = child:FindFirstChildWhichIsA("ProximityPrompt", true)
            if Humanoid or ProximityPrompt then
                local o7_3 = child:FindFirstChild("HumanoidRootPart") or child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart", true)
                if o7_3 then
                    nZ[child.Name] = child
                    n1[#n1 + 1] = child.Name
                end
            end
        end
    end
    table.sort(n1)
end
local function fn890(bs)
    local pW = nC()
    if not pW or not pW.bag then
        return nil
    end
    local pX_1 = pW.bag.count or 0
    local p2 = 1
    while p2 <= pX_1 do
        local p3 = p2
        local pX_2 = pW.bag[p3]
        if pX_2 and pX_2.id then
            local pY_1 = nG(pX_2.id)
            if pY_1 and pY_1.type == bs then
                return p3, pX_2, pY_1
            end
        end
        p2 += 1
    end
    return nil
end
local function fn919()
    if not Toggles.WalkSpeedEnabled.Value then
        local tH = mS()
        if tH then
            tH.WalkSpeed = 16
        end
    end
end
local function fn923()
    local rZ = nC()
    if not rZ or not rZ.bag then
        return false
    end
    local r0 = m3.AutoSellMode and m3.AutoSellMode.Value or "Sell All"
    local r0_1 = rZ.bag.count or 0
    local r5 = 1
    while r5 <= r0_1 do
        local r0_2 = rZ.bag[r5]
        if r0_2 and r0_2.id then
            local r1_1 = nG(r0_2.id)
            if r1_1 and r1_1.type == "Fish" and r1_1.canSell ~= false then
                local r0_4 = r0 == "Sell All" or mQ(r1_1.quality)
                if r0_4 then
                    return true
                end
            end
        end
        r5 += 1
    end
    return false
end
local function fn929(at, au, av)
    return string.format("<b>%s</b> %s %s", at, nl("-", "#5a6070"), nl(au, av))
end
local function fn931(bh)
    if not bh then
        return 0
    end
    return (bh.strength or 0) * 1000 + (bh.luck or 0) * 100 + (bh.fish or 0)
end
local function fn939(g2)
    local tm = m1()
    local tn = mS()
    if g2 then
        if tm then
            tm.Anchored = true
            tm.AssemblyLinearVelocity = Vector3.zero
            tm.AssemblyAngularVelocity = Vector3.zero
        end
        if tn then
            tn.PlatformStand = true
        end
        return
    end
    if tm then
        tm.Anchored = false
    end
    if tn and not (Toggles.Fly and Toggles.Fly.Value) then
        tn.PlatformStand = false
    end
end
local function worker3()
    while not nh.Unloaded do
        task.wait(1)
        if nO("AutoBuyRod") then
            pcall(nq, "Rod", m9)
        end
        if nO("AutoBuyWeapon") then
            pcall(nq, "Weapon", m2)
        end
    end
end
local function onCopyUSDTAddress()
    mY(mP, "Copied USDT address")
end
local function fn948(bV)
    if not nO("SkipHighHpFish") then
        return false
    end
    local qg = m3.SkipFishHpOver and m3.SkipFishHpOver.Value
    local qh = tonumber(qg)
    if not qh then
        return false
    end
    local qg_1 = tonumber(bV:GetAttribute("hp"))
    if not qg_1 then
        return false
    end
    return qg_1 > qh
end
local function worker()
    local q2_1
    while true do
        task.wait(1)
        if nh.Unloaded then
            break
        end
        local q1 = math.floor(os.clock() - nd)
        if q1 < 60 then
            q2_1 = q1 .. "s"
        elseif q1 < 3600 then
            q2_1 = string.format("%dm %ds", q1 // 60, q1 % 60)
        else
            q2_1 = string.format("%dh %dm", q1 // 3600, q1 % 3600 // 60)
        end
        Label:SetText(nc("Session time", q2_1, np))
    end
end
mO = nil
mP = nil
mQ = nil
mR = nil
mS = nil
connection3 = nil
mU = nil
mV = nil
mX = nil
mY = nil
mZ = nil
m_ = nil
m0 = nil
m1 = nil
m2 = nil
m3 = nil
m4 = nil
connection2 = nil
Toggles = nil
m9 = nil
na = nil
nb = nil
nc = nil
nd = nil
ne = nil
nf = nil
ng = nil
nh = nil
ni = nil
nk = nil
nl = nil
nm = nil
np = nil
nq = nil
DataMgr = nil
ns = nil
nt = nil
CurrentCamera = nil
nw = nil
nx = nil
Label = nil
LocalPlayer = nil
nA = nil
local mW, m5, m8, nj, nn, GameMgr, nv
nB = nil
nC = nil
nD = nil
nE = nil
Lighting = nil
nG = nil
nI = nil
nJ = nil
nL = nil
nM = nil
nN = nil
nO = nil
nQ = nil
nR = nil
nS = nil
nT = nil
nU = nil
nW = nil
UserInputService = nil
nY = nil
nZ = nil
n0 = nil
n1 = nil
n2 = nil
connection = nil
n4 = nil
local nH, nK, nP, nV, n_
nH = nil
nK = nil
nP = nil
nV = nil
n_ = nil
local ou, ov, ow, oy
UserInputService, nR, nN, nK, nH, Lighting, LocalPlayer, DataMgr, GameMgr = nil, nil, nil, nil, nil, nil, nil, nil, nil
local vA_16 = game:GetService("Players")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
if not nN and not nN or GameMgr and not nK or (nN and not nR or nK and nN) or not (not nN and not nN or GameMgr and not nK or (nN and not nR or nK and nN)) then
    nR = game:GetService("VirtualUser")
    nN = game:GetService("HttpService")
else
    nN = game:GetService("VirtualUser")
    nR = game:GetService("HttpService")
end
if (not nK and nK and (nK or nR) and (not nK or nR or not nR and nK) or (nR or nK or (not nR or nR)) and ((not nK or not nK) and (not nR and not nR))) and ((not nK or nR or nK and nK) and ((not nR or nK) and (not nK or nK)) or ((not nK or not nR) and (nK and nK) or (nR and not nR or (not nR or not nR)))) or not ((not nK and nK and (nK or nR) and (not nK or nR or not nR and nK) or (nR or nK or (not nR or nR)) and ((not nK or not nK) and (not nR and not nR))) and ((not nK or nR or nK and nK) and ((not nR or nK) and (not nK or nK)) or ((not nK or not nR) and (nK and nK) or (nR and not nR or (not nR or not nR))))) then
    nK = game:GetService("GuiService")
    nH = game:GetService("CoreGui")
else
    nH = game:GetService("GuiService")
    nK = game:GetService("CoreGui")
end
Lighting = game:GetService("Lighting")
local vA_18 = game:GetService("ReplicatedFirst")
LocalPlayer = vA_16.LocalPlayer
local vA_3 = "Reeled"
local vA_9 = vA_18:WaitForChild("Scripts")
DataMgr = require(vA_9.BaseManager.DataMgr)
GameMgr = require(vA_9.BaseManager.GameMgr)
while not GameMgr.FinishLoad do
    task.wait(0.1)
end
vA_1, nh, vA_7, na, Toggles, m3, m0, mZ, mX, mU, mR, mP, n0, nY, nS, vA_10, vA_2, vA_17, vA_8, vA_22, vA_14, vA_5, vA_20, vA_18, np, vA_9, vA_21, vA_13, vA_4, vA_19, m5 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
vA_16 = 8
repeat
    vA_15 = (vA_16 * 9 + 12) % 14 + 1
    if vA_15 <= 7 then
        if vA_15 <= 4 then
            if vA_15 <= 2 then
                if vA_15 <= 1 then
                    if vA_16 * 89190711 + 7 + 5 <= vA_16 * 89190711 + 7 + 5 + 4 then
                        vA_1 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                    else
                        vA_2 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                    end
                    vA_16 = (vA_16 + 11) % 56
                else
                    vA_23 = {
                        "cisytsjc",
                        "tvwakchccm",
                        "mezt",
                        "rdpshuuhux",
                        "dfcanpxaihlf",
                        "qxx",
                        "vhtlzr",
                        "vxsb",
                        "hvldwionfpc"
                    }
                    if vA_23[(vA_16 * 79 + 60) % 9 + 1] < vA_23[(vA_16 * 79 + 60) % 9 + 1] then
                        vA_1 = loadstring(game:HttpGet(nh .. "Library.lua"))()
                    else
                        nh = loadstring(game:HttpGet(vA_1 .. "Library.lua"))()
                    end
                    vA_16 = (vA_16 + 53) % 56
                end
            elseif vA_15 <= 3 then
                if (nS or nS or (vA_8 or not vA_16)) and (not nY or vA_16 or not nY and vA_16) and (nS or vA_8 or (mZ or nY) or (vA_22 or nY or not nS and vA_8)) and (vA_22 and vA_8 or (mZ or vA_8) or (not nY or nY) and (not mZ and not vA_16) or ((vA_8 or vA_16) and (not nY or not vA_16) or (nY and not vA_22 or vA_8 and vA_8))) and not ((nS or nS or (vA_8 or not vA_16)) and (not nY or vA_16 or not nY and vA_16) and (nS or vA_8 or (mZ or nY) or (vA_22 or nY or not nS and vA_8)) and (vA_22 and vA_8 or (mZ or vA_8) or (not nY or nY) and (not mZ and not vA_16) or ((vA_8 or vA_16) and (not nY or not vA_16) or (nY and not vA_22 or vA_8 and vA_8)))) then
                    vA_1 = loadstring(game:HttpGet(na .. "addons/ThemeManager.lua"))()
                    vA_7 = loadstring(game:HttpGet(na .. "addons/SaveManager.lua"))()
                else
                    vA_7 = loadstring(game:HttpGet(vA_1 .. "addons/ThemeManager.lua"))()
                    na = loadstring(game:HttpGet(vA_1 .. "addons/SaveManager.lua"))()
                end
                vA_16 = (vA_16 + 25) % 56
            else
                local wg = bit32.rrotate(bit32.bxor(bit32.lrotate(vA_16, 7), string.byte(tostring(m3))), 5)
                if bit32.bxor(bit32.lrotate(bit32.bxor(wg, 918620459), 26), 2900034596) ~= bit32.lrotate(wg, 26) then
                    nh = Toggles.Toggles
                else
                    Toggles = nh.Toggles
                end
                vA_16 = (vA_16 + 25) % 56
            end
        elseif vA_15 <= 6 then
            if vA_15 <= 5 then
                vA_23 = { "pctmuyqmq", "qzsikxkql", "xqkr", "bbachof", "jihkq", "ottqhbtbst", "vdlybd" }
                local wM = vA_16
                ou = vA_23[wM % 7 + 1]
                if ou:len() >= ou:gsub("(.)", "%1%1", wM % 3 % 2 + 1):len() then
                    m0 = nil
                    nh = "https://discord.gg/ehKVq7pf7v"
                    m3 = "https://rscripts.net/@Ouroboros"
                    mZ = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
                    mX = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
                else
                    m3 = nh.Options
                    m0 = "https://discord.gg/ehKVq7pf7v"
                    mZ = "https://rscripts.net/@Ouroboros"
                    mX = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
                    mU = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
                end
                vA_16 = (vA_16 + 39) % 56
            else
                vA_23 = {
                    "fepzlvva",
                    "fnfp",
                    "ifreov",
                    "xnenghjbkp",
                    "scnuod",
                    "oicwdd",
                    "iosx",
                    "jnqly",
                    "blnmiuwyl",
                    "zylpzczzj",
                    "neqdharmtc",
                    "bpstqvrumm",
                    "vgkcb"
                }
                if vA_23[(vA_16 * 49 + 110) % 13 + 1] < vA_23[(vA_16 * 49 + 110) % 13 + 1] then
                    mP = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                    mR = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                else
                    mR = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                    mP = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                end
                vA_16 = (vA_16 + 39) % 56
            end
        else
            local wX = bit32.rrotate(bit32.bxor(bit32.lrotate(vA_16, 25), string.byte(tostring(np))), 5)
            if bit32.bxor(bit32.lrotate(bit32.bxor(wX, 464197241), 22), 2655447749) ~= bit32.lrotate(wX, 22) then
                vA_10 = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
            else
                n0 = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
            end
            vA_16 = (vA_16 + 25) % 56
        end
    elseif vA_15 <= 11 then
        if vA_15 <= 9 then
            if vA_15 <= 8 then
                vA_23 = (vector.create((vA_16 * 6 + 9) % 11 + 1, (vA_16 * 6 + 13) % 13 + 1, (vA_16 * 4 + 8) % 17 + 1))
                ou = (vector.create((vA_16 * 1 + 3) % 11 + 1, (vA_16 * 10 + 8) % 13 + 1, (vA_16 * 3 + 17) % 17 + 1))
                ov = (vector.create((vA_16 * 2 + 6) % 11 + 1, (vA_16 * 1 + 13) % 13 + 1, (vA_16 * 13 + 5) % 17 + 1))
                ow = (vector.create((vA_16 * 4 + 6) % 11 + 1, (vA_16 * 3 + 10) % 13 + 1, (vA_16 * 5 + 11) % 17 + 1))
                if vector.dot(vector.cross(vA_23, ou), (vector.cross(ov, ow))) == vector.dot(vA_23, ov) * vector.dot(ou, ow) - vector.dot(vA_23, ow) * vector.dot(ou, ov) then
                    nY = "https://paypal.me/TheTruckerGOD"
                    nS = "https://venmo.com/u/miserablemusic"
                    vA_10 = "#345d9d"
                    vA_2 = "#f7931a"
                    vA_17 = "#627eea"
                else
                    vA_2 = "https://paypal.me/TheTruckerGOD"
                    vA_17 = "https://venmo.com/u/miserablemusic"
                    nS = "#345d9d"
                    nY = "#f7931a"
                    vA_10 = "#627eea"
                end
                vA_16 = (vA_16 + 25) % 56
            else
                if (vA_16 * 1 + 2) * 5 % 4 == ((vA_16 * 1 + 2) * 5 + 9) % 4 then
                    vA_14 = "#26a17b"
                    vA_8 = "#14f195"
                    vA_22 = "#0070ba"
                else
                    vA_8 = "#26a17b"
                    vA_22 = "#14f195"
                    vA_14 = "#0070ba"
                end
                vA_16 = (vA_16 + 39) % 56
            end
        elseif vA_15 <= 10 then
            vA_23 = {
                "jyutqlvhj",
                "sqkinv",
                "uhrgogr",
                "flm",
                "dxonygtkh",
                "boofwxdfx",
                "ljqu",
                "jggxx",
                "rqwsdysqvlx",
                "bop",
                "cnbrr",
                "ixxleghkc"
            }
            local wQ = vA_16
            ou = vA_23[wQ % 12 + 1]
            if ou:len() <= ou:gsub("(.)", "%1%1", wQ % 3 % 2 + 1):len() then
                vA_5 = "#008cff"
                vA_20 = "#7fd47f"
                vA_18 = "#6ec1ff"
                np = "#e8a34d"
            else
                np = "#008cff"
                vA_5 = "#7fd47f"
                vA_20 = "#6ec1ff"
                vA_18 = "#e8a34d"
            end
            vA_16 = (vA_16 + 11) % 56
        else
            local wp = bit32.rrotate(bit32.bxor(bit32.lrotate(vA_16, 4), string.byte(tostring(Toggles))), 8)
            if bit32.bxor(bit32.lrotate(bit32.bxor(wp, 223952026), 18), 4066915684) ~= bit32.lrotate(wp, 18) then
                vA_13 = "#8b93a3"
                vA_9 = { "epic", "devil", "common", "legend", "elite" }
                vA_21 = { "Weapon", "Both", "Rod" }
            else
                vA_9 = "#8b93a3"
                vA_21 = { "common", "elite", "epic", "legend", "devil" }
                vA_13 = { "Rod", "Weapon", "Both" }
            end
            vA_16 = (vA_16 + 53) % 56
        end
    elseif vA_15 <= 13 then
        if vA_15 <= 12 then
            vA_15 = { "fgemzd", "oeguksv", "xmjfvarorx", "qsdsgyp", "alebdcpr", "uzkpuvycb", "dmnc" }
            local wI = vA_16
            vA_23 = vA_15[wI % 7 + 1]
            if vA_23:len() >= vA_23:gsub("(.)", "%1%1", wI % 3 % 2 + 1):len() then
                vA_9 = { "Sell All", "By Quality" }
            else
                vA_4 = { "Sell All", "By Quality" }
            end
            vA_16 = (vA_16 + 11) % 56
        else
            local wN = bit32.rrotate(bit32.bxor(bit32.lrotate(vA_16, 16), string.byte(tostring(mP))), 21)
            if bit32.bxor(bit32.lrotate(bit32.bxor(wN, 4024907668), 2), 3214728787) ~= bit32.lrotate(wN, 2) then
                nS = {}
            else
                vA_19 = {}
            end
            vA_16 = (vA_16 + 39) % 56
        end
    else
        if (not vA_18 and not m5 and (not mZ and not vA_18) or (not m5 or vA_18) and (vA_18 and not vA_18) or (vA_18 and not mZ and (mZ or vA_20) or not m5 and mZ and (vA_20 and mZ))) and ((not vA_20 or vA_20) and (vA_20 or not m5) and (not vA_18 and m5 or (mZ or mZ)) and (vA_20 or not vA_18 or not mZ and m5 or mZ and mZ and (not vA_20 or mZ))) and not ((not vA_18 and not m5 and (not mZ and not vA_18) or (not m5 or vA_18) and (vA_18 and not vA_18) or (vA_18 and not mZ and (mZ or vA_20) or not m5 and mZ and (vA_20 and mZ))) and ((not vA_20 or vA_20) and (vA_20 or not m5) and (not vA_18 and m5 or (mZ or mZ)) and (vA_20 or not vA_18 or not mZ and m5 or mZ and mZ and (not vA_20 or mZ)))) then
            vA_2 = {}
        else
            m5 = {}
        end
        vA_16 = (vA_16 + 53) % 56
    end
until (vA_16 * 45 + 8) % 56 == 32
for i = 2000, 2010 do
    local oM = i
    vA_16, vA_1 = pcall(function()
        return DataMgr:GetConfig("WorldData", oM)
    end)
    vA_15 = vA_16 and vA_1 and vA_1.name
    if vA_15 then
        vA_19[#vA_19 + 1] = vA_1.name
        m5[vA_1.name] = oM
    end
end
n1, nZ, vA_16, ou, nT, nl, nc, mY, n2, nO, nC, nx, m8, m1, mS, nV, nG, nn, m9, m2, mW, nP, nk, mO, nA, ne, nB, vA_23 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
n1 = {}
nZ = {}
nT = fn871
nT()
nl = fn446
nc = fn929
mY = fn845
n2 = fn544
nO = fn709
nC = fns.fn71
nx = fn350
m8 = fns.fn108
m1 = fn297
mS = fns.fn174
nV = fns.fn88
nG = function(a6)
    local pD_1
    local pC_1
    pC_1, pD_1 = pcall(function()
        return DataMgr:GetConfig("ItemData", a6)
    end)
    if pC_1 then
        return pD_1
    end
    return nil
end
nn = fn601
m9 = fn931
m2 = fn598
mW = fn599
nP = fn890
nk = function(bD)
    local p5
    local p6
    p5 = nil
    p6 = nil
    p5 = nC()
    if not p5 then
        return false
    end
    if p5.equippedItem and p5.equippedItem.data and p5.equippedItem.data.type == bD then
        return true
    end
    p6 = nP(bD)
    if not p6 then
        return false
    end
    pcall(function()
        p5:EquipItem(p6)
    end)
    local p7_1 = os.clock()
    while true do
        if not (os.clock() - p7_1 < 2) then
            return false
        end
        p5 = nC()
        if p5 and p5.equippedItem and p5.equippedItem.data and p5.equippedItem.data.type == bD then
            break
        end
        task.wait(0.05)
    end
    return true
end
mO = function(bM, bN, ...)
    local qd
    qd = nil
    qd = nC()
    if not qd then
        return false
    end
    local qe = pcall(function(...)
        qd:TrigerSkill(bM, bN, ...)
    end, ...)
    return qe
end
nA = fn948
ne = fns.fn97
nB = function(cj)
    if #cj == 0 then
        return false
    elseif not nk("Weapon") then
        return false
    else
        local qG = nx("GunFire")
        if not qG then
            return false
        end
        for i, v in ipairs(cj) do
            local qO = v
            if nh.Unloaded then
                break
            elseif not (not qO or not qO.Parent) then
                pcall(function()
                    qG:Fire("Atk", qO)
                end)
            end
        end
        task.wait(0.02)
        return true
    end
end
if (nZ and not nC and (nO or mY) and ((not vA_23 or nZ) and (not nC or mY)) or (not nO and vA_23 or (vA_23 or not nO)) and (not nO and not nO and (nC and not nZ))) and not (nZ and not nC and (nO or mY) and ((not vA_23 or nZ) and (not nC or mY)) or (not nO and vA_23 or (vA_23 or not nO)) and (not nO and not nO and (nC and not nZ))) then
    vA_3 = vA_16:CreateWindow({
        Footer = { "|", { Text = nh, Copyable = true }, m0 },
        NotifySide = "Right",
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        CornerRadius = 0,
        Icon = 78539693571783,
        ShowCustomCursor = false
    })
else
    vA_16 = nh:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = m0, Copyable = true }, "|", vA_3 },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0
    })
end
if (nx and not nP or not nC and ne) and ((nx or ne) and (nC or nP)) or (nx and nC or not nC and not ne or (nP or ne) and (not nx or not nx)) or not ((nx and not nP or not nC and ne) and ((nx or ne) and (nC or nP)) or (nx and nC or not nC and not ne or (nP or ne) and (not nx or not nx))) then
    ou = {
        Info = vA_16:AddTab("Info", "info"),
        Main = vA_16:AddTab("Main", "fish"),
        Player = vA_16:AddTab("Player", "person-standing"),
        Settings = vA_16:AddTab("Settings", "settings")
    }
else
    vA_16 = {
        Player = ou:AddTab("Player", "person-standing"),
        Main = ou:AddTab("Main", "fish"),
        Settings = ou:AddTab("Settings", "settings"),
        Info = ou:AddTab("Info", "info")
    }
end
vA_23 = fn342
for k, v in ou do
    vA_23(v)
end
nU, vA_1, ov, Label, nw, vA_15 = nil, nil, nil, nil, nil, nil
vA_16 = 7
repeat
    vA_23 = (vA_16 * 2 + 0) % 3 + 1
    if vA_23 <= 2 then
        if vA_23 <= 1 then
            vA_23 = { "mhnboznwaey", "hmmsgv", "mwyue", "moxiyqm", "gqpcl", "fzatxemfvk", "pdckvsjdksr", "iczdevf" }
            if vA_23[(vA_16 * 89 + 46) % 8 + 1] < vA_23[(vA_16 * 89 + 46) % 8 + 1] then
                nU = tostring(game.JobId)
            else
                nw = tostring(game.JobId)
            end
            vA_16 = (vA_16 + 11) % 24
        else
            if vA_16 * 132692897 + 9 + 3 >= vA_16 * 132692897 + 9 + 3 + 5 then
                nw = #vA_15 > 18
            else
                vA_15 = #nw > 18
            end
            vA_16 = (vA_16 + 17) % 24
        end
    else
        vA_23 = (vector.create((vA_16 * 2 + 7) % 11 + 1, (vA_16 * 7 + 5) % 13 + 1, (vA_16 * 9 + 9) % 17 + 1))
        ow = (vector.create((vA_16 * 5 + 5) % 11 + 1, (vA_16 * 3 + 9) % 13 + 1, (vA_16 * 14 + 14) % 17 + 1))
        local ox = (vector.create((vA_16 * 4 + 6) % 11 + 1, (vA_16 * 10 + 5) % 13 + 1, (vA_16 * 12 + 1) % 17 + 1))
        oy = (vector.create((vA_16 * 4 + 1) % 5 + 1, (vA_16 * 4 + 1) % 7 + 1, (vA_16 * 4 + 7) % 9 + 1))
        if vector.dot(vector.cross(vA_23, (vector.cross(ow, ox))), oy) == vector.dot(ow * vector.dot(vA_23, ox) - ox * vector.dot(vA_23, ow), oy) then
            nU = "Unknown"
            pcall(fn823)
            vA_1 = ou.Info:AddLeftGroupbox("Account", "circle-user")
            vA_1:AddLabel(nc("User", LocalPlayer.Name, vA_20), true)
            vA_1:AddLabel(nc("Status", "Keyless", vA_20), true)
            vA_1:AddLabel(nc("Executor", nU, vA_20), true)
            ov = ou.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            ov:AddLabel(nl(vA_3 .. " [" .. tostring(game.PlaceId) .. "]", vA_18), true)
            ov:AddLabel(nc("Place ID", tostring(game.PlaceId), vA_18), true)
            Label = ov:AddLabel(nc("Session time", "0s", np), true)
        else
            vA_20 = "Unknown"
            pcall(fn823)
            ov = vA_1.Info:AddLeftGroupbox("Account", "circle-user")
            ov:AddLabel(vA_18("User", nU.Name, Label), true)
            ov:AddLabel(vA_18("Status", "Keyless", Label), true)
            ov:AddLabel(vA_18("Executor", "Unknown", Label), true)
            ou = vA_1.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            ou:AddLabel(vA_3(nl .. " [" .. tostring(game.PlaceId) .. "]", np), true)
            ou:AddLabel(vA_18("Place ID", tostring(game.PlaceId), np), true)
            nc = ou:AddLabel(vA_18("Session time", "0s", LocalPlayer), true)
        end
        vA_16 = (vA_16 + 23) % 24
    end
until (vA_16 * 7 + 11) % 24 == 9
if vA_15 then
    vA_16 = 7
    repeat
        if (vA_16 * 2 + 8) * 4 % 3 == ((vA_16 * 2 + 8) * 4 + 5) % 3 then
            nw = string.sub(vA_15, 1, 18) .. "..."
        else
            vA_15 = string.sub(nw, 1, 18) .. "..."
        end
        vA_16 = (vA_16 + 6) % 8
    until (vA_16 * 7 + 2) % 8 == 5
end
vA_16 = vA_15 or nw
nd = nil
ow = vA_16
ov:AddLabel(nc("Server", ow, vA_9), true)
ov:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
nd = os.clock()
task.spawn(worker)
vA_1 = ou.Info:AddRightGroupbox("Scripts", "package")
vA_1:AddLabel(nl("Included in this hub", vA_9), true)
vA_1:AddLabel(nl(vA_3, vA_18), true)
local FeaturesGroup = ou.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(nl("Auto Perfect Cast", vA_18), true)
FeaturesGroup:AddLabel(nl("Skip High HP Fish", np), true)
FeaturesGroup:AddLabel(nl("Auto Sell", vA_20), true)
FeaturesGroup:AddLabel(nl("Hide No Sell Notify", vA_9), true)
FeaturesGroup:AddLabel(nl("Auto Buy", vA_9), true)
FeaturesGroup:AddLabel(nl("Auto Upgrade", vA_18), true)
FeaturesGroup:AddLabel(nl("Teleports", np), true)
FeaturesGroup:AddLabel(nl("FPS Boost", vA_9), true)
local SocialsGroup = ou.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = n2 })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = ou.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = n2 })
oy = ou.Info:AddRightGroupbox("Donations", "heart")
oy:AddLabel(nl("All donations are optional but appreciated.", np), true)
oy:AddLabel(nl("If you donate you get a special role, just PING after you donate.", vA_20), true)
oy:AddDivider()
oy:AddLabel(nl("LTC / Litecoin", vA_10), true)
oy:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
oy:AddLabel(nl("BTC / Bitcoin", vA_2), true)
oy:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
oy:AddLabel(nl("ETH / Ethereum", vA_17), true)
oy:AddButton({ Text = "Copy Ethereum Address", Func = fns.onCopyEthereumAddress })
oy:AddLabel(nl("USDT", vA_8), true)
oy:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
oy:AddLabel(nl("Solana", vA_22), true)
oy:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
oy:AddLabel(nl("PayPal", vA_14), true)
oy:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
oy:AddLabel(nl("Venmo", vA_5), true)
oy:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
oy:AddDivider()
oy:AddLabel(nl("Don't have any of the listed currencies but still wanna donate?", vA_9), true)
oy:AddLabel(nl("DM me and we'll work something out.", vA_18), true)
vA_23 = ou.Info:AddRightGroupbox("FAQ", "circle-help")
vA_23:AddLabel("Where do I get a good config?", true)
vA_23:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
vA_23:AddLabel("How do I import / export configs?", true)
vA_23:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
vA_23:AddLabel("How do I report bugs?", true)
vA_23:AddLabel("Join the Discord and post it in the bugs channel.", true)
vA_23:AddLabel("How do I make suggestions?", true)
vA_23:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
vA_23:AddLabel("How do I get help or updates?", true)
vA_23:AddLabel("Join the Discord, updates and support are posted there first.", true)
vA_15 = ou.Main:AddLeftGroupbox("Fishing", "fish")
vA_15:AddToggle("AutoPerfectCast", { Text = "Auto Perfect Cast", Default = false })
vA_15:AddToggle("SkipHighHpFish", { Text = "Skip Fish if Health Over", Default = false })
vA_15:AddInput("SkipFishHpOver", { Text = "Health Over", Default = "500", Numeric = true, Finished = true })
local TeleportGroup = ou.Main:AddRightGroupbox("Teleport", "map-pin")
vA_16 = #vA_19 > 0 and vA_19
vA_1 = { "Warm water Lake" }
vA_9 = vA_16 or vA_1
vA_16 = vA_19[1] or "Warm water Lake"
TeleportGroup:AddDropdown("TeleportZone", { Text = "Zone", Values = vA_9, Default = vA_16 })
vA_16 = #n1 > 0 and n1
vA_1 = { "None" }
vA_9 = vA_16
local o0 = if vA_9 then 1 else 0
local oZ = 1289 * o0 + 2549 * (1 - o0)
local o_ = 3703 * o0 + 419 * (1 - o0)
if not ((oZ * 3 + o_ * 1242 + oZ * o_) % 16777213 == 9376160) then
    vA_9 = vA_1
end
vA_16 = n1[1] or "None"
nQ, nL, mQ, nI, ns, ni = nil, nil, nil, nil, nil, nil
TeleportGroup:AddDropdown("TeleportNpc", { Text = "NPC", Values = vA_9, Default = vA_16 })
TeleportGroup:AddButton({
    Text = "Teleport to Zone",
    Func = function()
        local q4
        local q5 = m3.TeleportZone and m3.TeleportZone.Value
        local q6 = q5
        if q5 then
            q5 = m5[q6]
        end
        q4 = q5
        if not q4 then
            nh:Notify("Zone not found")
            return
        end
        pcall(function()
            GameMgr:Teleport(q4)
        end)
    end
})
TeleportGroup:AddButton({ Text = "Teleport to NPC", Func = onTeleportToNPC })
TeleportGroup:AddButton({ Text = "Refresh NPC List", Func = onRefreshNPCList })
vA_3 = ou.Main:AddRightGroupbox("Auto Sell", "tag")
vA_3:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
vA_3:AddToggle("HideNoSellNotify", { Text = "Hide No Sell Notify", Default = true })
vA_3:AddDropdown("AutoSellMode", { Text = "Sell Mode", Values = vA_4, Default = "Sell All" })
vA_3:AddDropdown("AutoSellQualities", {
    Text = "Qualities",
    Values = vA_21,
    Default = { "common", "elite" },
    Multi = true,
    SelectAllButtons = true,
    Expandable = true
})
vA_3:AddSlider("AutoSellDelay", { Text = "Sell Delay", Default = 1, Min = 0.2, Max = 10, Rounding = 1 })
vA_18 = ou.Main:AddLeftGroupbox("Shop", "shopping-cart")
vA_18:AddToggle("AutoBuyRod", { Text = "Auto Buy Best Affordable Rod", Default = false })
vA_18:AddToggle("AutoBuyWeapon", { Text = "Auto Buy Best Affordable Weapon", Default = false })
vA_18:AddToggle("AutoEquipBought", { Text = "Equip After Buy", Default = true })
vA_1 = ou.Main:AddLeftGroupbox("Upgrade", "arrow-up")
vA_1:AddToggle("AutoUpgradeGear", { Text = "Auto Upgrade Gear", Default = false })
vA_1:AddDropdown("AutoUpgradeTarget", { Text = "Upgrade Target", Values = vA_13, Default = "Both" })
vA_1:AddSlider("AutoUpgradeMaxLevel", { Text = "Max Level", Default = 10, Min = 1, Max = 10, Rounding = 0 })
nQ = nil
task.spawn(worker2)
mQ = fn726
nL = "There are no items available for sale!"
nI = fns.fn112
ns = fns.fn65
ni = fn829
task.spawn(function()
    local SystemPanel = LocalPlayer.PlayerGui:WaitForChild("SystemPanel", 60)
    if not SystemPanel then
        return
    end
    local Main = SystemPanel:WaitForChild("Main", 30)
    local rV_1 = Main and Main:WaitForChild("Red", 30)
    if not rV_1 then
        return
    end
    rV_1.ChildAdded:Connect(function(ew)
        if not nO("HideNoSellNotify") then
            return
        end
        task.defer(function()
            ns(ew)
        end)
    end)
    if nO("HideNoSellNotify") then
        ni()
    end
end)
if Toggles.HideNoSellNotify then
    Toggles.HideNoSellNotify:OnChanged(function()
        if nO("HideNoSellNotify") then
            ni()
        end
    end)
end
CurrentCamera, nE, nD, connection2, connection3, connection, n_, nj, nM, nq, n4, nb, nf, nm, nW, ng, m_, nJ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
nj = fn923
nM = function()
    if not nj() then
        return
    end
    if (m3.AutoSellMode and m3.AutoSellMode.Value or "Sell All") == "Sell All" then
        pcall(function()
            GameMgr:SellAllItem()
        end)
        return
    end
    local r8_2 = nC()
    if not r8_2 or not r8_2.bag then
        return
    end
    local r9_2 = {}
    local sa = r8_2.bag.count or 0
    local sf = 1
    while sf <= sa do
        local sg = sf
        local sa_1 = r8_2.bag[sg]
        if sa_1 and sa_1.id then
            local sb_1 = nG(sa_1.id)
            local sa_2 = sb_1 and sb_1.type == "Fish" and sb_1.canSell ~= false and mQ(sb_1.quality)
            if sa_2 then
                r9_2[#r9_2 + 1] = sg
            end
        end
        sf += 1
    end
    table.sort(r9_2, function(fa, fb)
        return fa > fb
    end)
    for i, v in ipairs(r9_2) do
        local sn = v
        local r8_3 = nh.Unloaded or not nO("AutoSell")
        if r8_3 then
            break
        end
        pcall(function()
            GameMgr:SellItem(sn)
        end)
        task.wait(0.15)
    end
end
task.spawn(autoSellDelayLoop)
nq = function(fq, fr)
    local sr
    local sv_1
    local su_1
    local ss = nV()
    if not ss then
        return
    end
    local st = m8()
    sr, su_1, sv_1 = nil, -1, nil
    for k, v in ss do
        local ss_1 = tonumber(k)
        local sw = tonumber(v)
        local sx = ss_1 and sw and sw <= st and not nn(ss_1)
        if sx then
            local sx_1 = nG(ss_1)
            if sx_1 and sx_1.type == fq then
                local sy_1 = fr(sx_1)
                if sy_1 > su_1 or sy_1 == su_1 and sw < (sv_1 or math.huge) then
                    sr = ss_1
                    su_1 = sy_1
                    sv_1 = sw
                end
            end
        end
    end
    if not sr then
        return
    end
    pcall(function()
        GameMgr:BuyUnLockItem(sr)
    end)
    if nO("AutoEquipBought") then
        task.wait(0.35)
        pcall(function()
            GameMgr:EquipWeapon(sr)
        end)
    end
end
task.spawn(worker3)
n4 = function()
    local sJ
    local sO_1
    local sK = DataMgr:GetPlayerBaseData("weaponInv")
    if not sK then
        return
    end
    local sM = m3.AutoUpgradeTarget and m3.AutoUpgradeTarget.Value
    local sV = if sM then 1 else 0
    local sT = 420 * sV + 3873 * (1 - sV)
    local sU = 1655 * sV + 1002 * (1 - sV)
    if not ((sT * 3288 + sU * 2549 + sT * sU) % 16777213 == 6294655) then
        sM = "Both"
    end
    local sL_1 = sM
    local sN = m3.AutoUpgradeMaxLevel and m3.AutoUpgradeMaxLevel.Value or 10
    local sN_1 = m8()
    sJ, sO_1 = nil, math.huge
    for k, v in sK do
        local sK_1 = (tonumber(k))
        if not sK_1 then
            local sP_1 = type(v) == "table" and v.id
            sK_1 = sP_1
        end
        local sP_2 = sK_1
        local sK_2 = type(v) == "table" and tonumber(v.exp)
        local sQ = sK_2 or nil
        local sK_3 = sP_2
        if sK_3 then
            sK_3 = sQ
        end
        if sK_3 then
            sK_3 = sQ < sN
        end
        if sK_3 then
            local sK_4 = nG(sP_2)
            if sK_4 then
                if sL_1 == "Both" or sK_4.type == sL_1 then
                    local sK_6 = mW(sP_2, sQ)
                    if sK_6 <= sN_1 and sK_6 < sO_1 then
                        sJ = sP_2
                        sO_1 = sK_6
                    end
                end
            end
        end
    end
    if sJ then
        pcall(function()
            GameMgr:UpgradeWeapon(sJ)
        end)
    end
end
if ((CurrentCamera and not connection3 or (nb or nb)) and (CurrentCamera and not connection2 or (not connection3 or connection3)) or ((nJ or connection3) and (not nJ and nb) or (nJ and not nb or (not nb or not connection2)))) and (connection2 and CurrentCamera and (not CurrentCamera or not connection2) and (not CurrentCamera and not connection2 and (connection2 and not nJ)) or (connection2 and not nJ or connection3 and nJ or CurrentCamera and not connection3 and (not connection2 and CurrentCamera))) or not (((CurrentCamera and not connection3 or (nb or nb)) and (CurrentCamera and not connection2 or (not connection3 or connection3)) or ((nJ or connection3) and (not nJ and nb) or (nJ and not nb or (not nb or not connection2)))) and (connection2 and CurrentCamera and (not CurrentCamera or not connection2) and (not CurrentCamera and not connection2 and (connection2 and not nJ)) or (connection2 and not nJ or connection3 and nJ or CurrentCamera and not connection3 and (not connection2 and CurrentCamera)))) then
    task.spawn(fns.worker4)
    vA_9 = ou.Player:AddLeftGroupbox("Movement", "footprints")
    vA_9:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    vA_9:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    vA_9:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    vA_9:AddToggle("NoClip", { Text = "NoClip", Default = false })
    vA_9:AddToggle("FreezePlayer", { Text = "Freeze Player", Default = false })
    vA_9:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    vA_1 = ou.Player:AddRightGroupbox("Fly", "feather")
    vA_1:AddToggle("Fly", { Text = "Fly", Default = false })
    vA_1:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    CurrentCamera = workspace.CurrentCamera
else
    task.spawn(fns.worker4)
    vA_1 = CurrentCamera.Player:AddLeftGroupbox("Movement", "footprints")
    vA_1:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    vA_1:AddSlider("WalkSpeed", { Min = 16, Default = 32, Max = 250, Text = "WalkSpeed Amount", Rounding = 0 })
    vA_1:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    vA_1:AddToggle("NoClip", { Text = "NoClip", Default = false })
    vA_1:AddToggle("FreezePlayer", { Text = "Freeze Player", Default = false })
    vA_1:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    ou = CurrentCamera.Player:AddRightGroupbox("Fly", "feather")
    ou:AddToggle("Fly", { Text = "Fly", Default = false })
    ou:AddSlider("FlySpeed", { Max = 400, Min = 10, Text = "Fly Speed", Rounding = 0, Default = 60 })
end
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
RunService.RenderStepped:Connect(onRenderStepped)
nb = fn939
Toggles.FreezePlayer:OnChanged(fn860)
LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
Toggles.Fly:OnChanged(fn861)
Toggles.WalkSpeedEnabled:OnChanged(fn919)
nf = function(hr)
    pcall(function()
        nK:SetGameplayPausedNotificationEnabled(not hr)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = nH:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not hr
        end
    end)
    if not hr then
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
Toggles.AntiGameplayPause:OnChanged(fn369)
task.spawn(antiGameplayPauseLoop)
vA_3 = ou.Settings:AddLeftGroupbox("Menu")
vA_3:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
nh.ToggleKeybind = m3.MenuKeybind
nE = tick()
nD = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local tU = v
        pcall(function()
            tU:Disable()
        end)
    end
end)
nm = fn529
connection2 = UserInputService.InputBegan:Connect(onInputBegan)
connection3 = UserInputService.InputChanged:Connect(onInputChanged)
vA_3:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
vA_16 = ou.Settings:AddRightGroupbox("Performance", "gauge")
vA_16:AddToggle("FpsBoost", { Text = "FPS Boost", Default = false })
connection = nil
n_ = setmetatable({}, { __mode = "k" })
nW = function(h1, h2, h3)
    local t1_1
    local t0_1
    local t_ = n_[h1]
    if not t_ then
        t_ = {}
        n_[h1] = t_
    end
    if t_[h2] == nil then
        t0_1, t1_1 = pcall(function()
            return h1[h2]
        end)
        if not t0_1 then
            return
        end
        t_[h2] = t1_1
    end
    pcall(function()
        h1[h2] = h3
    end)
end
ng = fn696
if (connection or nm) and (false and not nm) and (nm and false and (not nm or not nm)) or nq and nq and (not CurrentCamera or nm) and ((not CurrentCamera or connection) and (nq and nq)) or ((nq or connection) and (nq and not CurrentCamera) or not connection and not CurrentCamera and (nq and nm) or (not connection or not connection or not connection and CurrentCamera) and (connection and not connection or (CurrentCamera or not connection))) or not ((connection or nm) and (false and not nm) and (nm and false and (not nm or not nm)) or nq and nq and (not CurrentCamera or nm) and ((not CurrentCamera or connection) and (nq and nq)) or ((nq or connection) and (nq and not CurrentCamera) or not connection and not CurrentCamera and (nq and nm) or (not connection or not connection or not connection and CurrentCamera) and (connection and not connection or (CurrentCamera or not connection)))) then
    m_ = function()
        if connection then
            connection:Disconnect()
            connection = nil
        end
        for k, v in n_ do
            local uc = k
            for k, v in v do
                local ui = k
                local uk = v
                pcall(function()
                    uc[ui] = uk
                end)
            end
        end
        table.clear(n_)
    end
    nJ = fn187
else
    nJ = function()
        if connection then
            connection:Disconnect()
            connection = nil
        end
        for k, v in n_ do
            local uc = k
            for k, v in v do
                local ui = k
                local uk = v
                pcall(function()
                    uc[ui] = uk
                end)
            end
        end
        table.clear(n_)
    end
    m_ = fn187
end
Toggles.FpsBoost:OnChanged(fn248)
if Toggles.FpsBoost.Value then
    nJ(true)
end
nv, m4, mV, nt = nil, nil, nil, nil
vA_3:AddButton("Unload", onUnload)
task.spawn(antiAfkLoop)
nh:OnUnload(fn737)
vA_7:SetLibrary(nh)
vA_7:SetFolder("OuroborosHub")
vA_7:SaveDefault("Evil Hello Kitty")
vA_7:ApplyToTab(ou.Settings)
vA_7:LoadDefault()
na:SetLibrary(nh)
na:IgnoreThemeSettings()
na:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
na:SetFolder("OuroborosHub/Reeled")
vA_1 = na:BuildConfigSection(ou.Settings)
nv = fn754
m4 = fn537
mV = fn224
nt = function(jo)
    local va
    va = nil
    local vb = type(jo) ~= "table" or type(jo.idx) ~= "string"
    local vf = if vb then 1 else 0
    local vd = 3803 * vf + 656 * (1 - vf)
    local ve = 138 * vf + 2646 * (1 - vf)
    if not ((vd * 1096 + ve * 192 + vd * ve) % 16777213 == 4719398) then
        vb = type(jo.type) ~= "string"
    end
    if not vb then
        vb = na.Ignore[jo.idx]
    end
    if vb then
        return false
    end
    va = nv(jo.type, jo.idx)
    if not va then
        return false
    end
    local vb_1 = pcall(function()
        if jo.type == "Input" then
            if type(jo.text) ~= "string" then
                return
            end
            va:SetValue(jo.text)
        elseif jo.type == "ColorPicker" then
            va:SetValueRGB(Color3.fromHex(jo.value), jo.transparency)
        elseif jo.type == "KeyPicker" then
            va:SetValue({ jo.key, jo.mode, jo.modifiers })
            if jo.mode == "Toggle" and jo.toggled ~= nil then
                va.Toggled = jo.toggled
                va:Update()
            end
        else
            va:SetValue(jo.value)
        end
    end)
    return vb_1
end
vA_1:AddDivider()
vA_1:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
vA_1:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
vA_1:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
na:LoadAutoloadConfig()
