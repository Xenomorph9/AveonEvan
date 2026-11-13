local fns = {}
local RequestRebirth
local UpgradesConfig
local Workspace
local l2
local Toggles
local mr
local lr
local l8
local Label
local lW
local mD
local lD
local l1
local lJ
local VirtualUser
local lq
local l7
local lP
local mw
local lw
local lV
local mC
local lC
local mj
local l0
local CurrentCamera2
local mp
local l6
local lO
local lv
local mc
local RequestBaseUpgrade
local mB
local lB
local mi
local SaveManager
local lH
local mo
local lo
local l5
local lN
local UserInputService
local lu
local mb
local lT
local mA
local lA
local connection
local lZ
local Options
local HttpService
local l4
local PlaceBestRequested
local mt
local ma
local mz
local lz
local mg
local SetNotifySide
local lF
local mm
local connection2
local ms
local ls
local Library
local lR
local my
local ly
local mf
function fns.onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local sm_1 = l4()
        if sm_1 then
            sm_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.onRscripts()
    lz(l8, "Copied Rscripts profile to clipboard")
end
function fns.fn30()
    local Character = mi.Character
    local of = Character and Character:FindFirstChild("CarryModelsLocal")
    if of then
        return #of:GetChildren()
    end
    return 0
end
function fns.fn40()
    connection:Disconnect()
    connection2:Disconnect()
    mo(false)
    l0(false)
end
function fns.fn45()
    Library.ScreenGui.Parent = mi:WaitForChild("PlayerGui")
end
function fns.fn78()
    if not Toggles.Fly.Value then
        local sa = l4()
        if sa then
            sa.PlatformStand = false
        end
    end
end
function fns.fn84(Y, Z)
    if setclipboard then
        setclipboard(Y)
    elseif toclipboard then
        toclipboard(Y)
    end
    Library:Notify(Z)
end
function fns.fn119()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    ly = tick()
end
function fns.fn130()
    local oD = (lT()) or lv() >= lC()
    return oD
end
local function fn134()
    local Character = mi.Character
    local nV = Character and Character:FindFirstChild("HumanoidRootPart")
    return nV
end
local function fn143()
    local Upgrades = mi:FindFirstChild("Upgrades")
    local oi = Upgrades and Upgrades:FindFirstChild("CarryLevel")
    local oh_1 = oi
    if oi then
        oi = oh_1.Value
    end
    local oh_2 = oi or 1
    local Carry = UpgradesConfig.Carry
    local ol = Carry and Carry.Base or 1
    local oh_4 = Carry and Carry.GrowthPerLevel
    local ow = if oh_4 then 1 else 0
    local ou = 3150 * ow + 630 * (1 - ow)
    local ov = 2854 * ow + 465 * (1 - ow)
    if not ((ou * 2361 + ov * 1240 + ou * ov) % 16777213 == 3188997) then
        oh_4 = 1
    end
    return ol + oh_4 * (oh_2 - 1)
end
local function fn172()
    lz(mc, "Copied Discord invite to clipboard")
end
local function fn187()
    local p9 = lr(0) or lr(3)
    if not p9 then
        return false
    end
    lB(p9.Position)
    lN(p9, true)
    task.wait(0.2)
    mf(2.5)
    local p9_1 = lr(0)
    if p9_1 then
        lN(p9_1, true)
        task.wait(0.1)
    end
    mo(false)
    return true
end
local function onInputBegan()
    lF = tick()
end
local function fn190()
    local ox = ms()
    local oy = lv() >= ox and ox > 0
    return oy
end
local function fn192(ca)
    local oS = ca or 0
    local oT = mf(oS)
    if oT then
        mC(oT)
    end
    return lJ
end
local function fn196(f1, f2)
    local q7_1 = (f1 == "Toggle" and Toggles or Options)[f2]
    local q6_2 = type(q7_1) == "table" and q7_1.Type == f1
    return q6_2 and q7_1 or nil
end
local function fn205(cN, cO)
    local pj = {}
    local ItemSpawners = Workspace:FindFirstChild("ItemSpawners")
    if not ItemSpawners then
        return pj
    end
    for i, child in ipairs(ItemSpawners:GetChildren()) do
        if child:IsA("BasePart") then
            for i, child2 in ipairs(child:GetChildren()) do
                local pk_1 = (child2:IsA("Model")) and mw(child2, cN, cO, child.Name)
                if pk_1 then
                    table.insert(pj, child2)
                end
            end
        end
    end
    return pj
end
local function fn215()
    pcall(function()
        RequestRebirth:FireServer()
    end)
end
local function fn238(cx)
    local attr = cx:GetAttribute("Mutation")
    local o6 = attr == ""
    local o7 = typeof(attr) ~= "string" or o6
    if o7 then
        return "Normal"
    end
    return attr
end
local function worker4()
    local sA, sB, sC, sD, sE, sF
    local sG = 32
    while true do
        local sG_1 = 8452 - sG
        do
            if sG_1 < 8431 then
                if sG_1 < 8420 then
                    if sG_1 < 8417 then
                        if sG_1 < 8415 then
                            if sG_1 < 8413 then
                                if sG_1 < 8409 then
                                    break
                                elseif sG_1 < 8411 then
                                    if sG_1 < 8410 then
                                        if sG_1 == 8409 then
                                            mo(false)
                                            task.wait(0.35)
                                            sG = 21
                                        else
                                            sG = 8415
                                            continue
                                        end
                                    else
                                        sG = if sB then 37 else 10
                                    end
                                elseif sG_1 < 8412 then
                                    task.wait(0.05)
                                    sG = 25
                                elseif sG_1 == 8412 then
                                    sG = 8
                                else
                                    sG = 12193
                                    continue
                                end
                            elseif sG_1 < 8414 then
                                sG = 18
                            else
                                lZ(sD)
                                sG = if lo() then 22 else 29
                            end
                        elseif sG_1 < 8416 then
                            if sG_1 == 8415 then
                                sB = ma("MutationFilter")
                                sG = 10
                            else
                                sG = 8410
                                continue
                            end
                        else
                            sG = if sF then 30 else 11
                        end
                    elseif sG_1 < 8419 then
                        if sG_1 < 8418 then
                            sF = not lo()
                            sG = 19
                        elseif sG_1 == 8418 then
                            sG = 33
                        else
                            sG = 765
                            continue
                        end
                    elseif sG_1 == 8419 then
                        sG = 4
                    else
                        sG = 2772
                        continue
                    end
                elseif sG_1 < 8429 then
                    if sG_1 < 8424 then
                        if sG_1 < 8423 then
                            if sG_1 < 8421 then
                                sA = 1
                                sG = 40
                            elseif sG_1 < 8422 then
                                if sG_1 == 8421 then
                                    sG = if sB then 6 else 2
                                else
                                    sG = 8417
                                    continue
                                end
                            elseif sG_1 == 8422 then
                                sF = not Library.Unloaded
                                sG = 11
                            else
                                sG = 8416
                                continue
                            end
                        else
                            sD = lu(l5(sB, sC))
                            sG = if not sD then 16 else 24
                        end
                    elseif sG_1 < 8426 then
                        if sG_1 < 8425 then
                            if sG_1 == 8424 then
                                mo(false)
                                task.wait(0.1)
                                sG = 9
                            else
                                sG = 8435
                                continue
                            end
                        else
                            sD = {}
                            for i, v in ipairs(lw) do
                                if sB[v] then
                                    table.insert(sD, v)
                                end
                            end
                            sG = if #sD == 0 then 43 else 26
                        end
                    elseif sG_1 < 8427 then
                        sE = sD[(sA - 1) % #sD + 1]
                        sA += 1
                        sD = l6(sE, sB, sC, 3.5)
                        sG = if sD then 34 else 28
                    elseif sG_1 < 8428 then
                        sG = 40
                    elseif sG_1 == 8428 then
                        sG = 23
                    else
                        sG = 8419
                        continue
                    end
                elseif sG_1 < 8430 then
                    sG = 33
                elseif sG_1 == 8430 then
                    sG = 13
                else
                    sG = 8423
                    continue
                end
            elseif sG_1 < 8439 then
                if sG_1 < 8435 then
                    if sG_1 < 8434 then
                        if sG_1 < 8433 then
                            if sG_1 < 8432 then
                                sG = 12
                            elseif sG_1 == 8432 then
                                sG = 13
                            else
                                sG = 8450
                                continue
                            end
                        else
                            sG = if sF then 7 else 36
                        end
                    else
                        sG = 14
                    end
                elseif sG_1 < 8437 then
                    if sG_1 < 8436 then
                        if sG_1 == 8435 then
                            sB = mA("RarityFilter")
                            sC = mA("MutationFilter")
                            sG = if lo() then 15 else 27
                        else
                            sG = 8429
                            continue
                        end
                    else
                        sD = l6(sE, sB, sC, 1.8)
                        sG = 24
                    end
                elseif sG_1 < 8438 then
                    if sG_1 == 8437 then
                        l2()
                        task.wait(0.45)
                        sG = 12
                    else
                        sG = 8426
                        continue
                    end
                else
                    break
                end
            elseif sG_1 < 8446 then
                if sG_1 < 8445 then
                    if sG_1 < 8442 then
                        if sG_1 < 8440 then
                            if sG_1 == 8439 then
                                sB = lv() > 0
                                sG = if sB then 1 else 31
                            else
                                sG = 8442
                                continue
                            end
                        elseif sG_1 < 8441 then
                            sG = 41
                        elseif sG_1 == 8441 then
                            sG = if sF then 38 else 20
                        else
                            sG = 8419
                            continue
                        end
                    elseif sG_1 < 8443 then
                        if sG_1 == 8442 then
                            sG = if sB then 17 else 3
                        else
                            sG = 8420
                            continue
                        end
                    elseif sG_1 < 8444 then
                        if sG_1 == 8443 then
                            sG = 21
                        else
                            sG = 8409
                            continue
                        end
                    else
                        sG = if not Library.Unloaded then 5 else 39
                    end
                elseif sG_1 == 8445 then
                    sF = lV("AutoCollectBrainrots")
                    sG = 36
                else
                    sG = 8432
                    continue
                end
            elseif sG_1 < 8449 then
                if sG_1 < 8447 then
                    if sG_1 == 8446 then
                        l2()
                        task.wait(0.45)
                        sG = 2
                    else
                        sG = 11955
                        continue
                    end
                elseif sG_1 < 8448 then
                    sB = (lV("AutoCollectBrainrots"))
                    sG = if sB then 0 else 42
                else
                    sF = sD
                    sG = if sF then 35 else 19
                end
            elseif sG_1 < 8452 then
                if sG_1 < 8451 then
                    if sG_1 < 8450 then
                        if sG_1 == 8449 then
                            mo(false)
                            task.wait(0.35)
                            sG = 41
                        else
                            sG = 8431
                            continue
                        end
                    elseif sG_1 == 8450 then
                        sG = 9
                    else
                        sG = 8411
                        continue
                    end
                else
                    sB = lo()
                    sG = 31
                end
            elseif sG_1 < 11955 then
                if sG_1 == 8452 then
                    sB = ma("RarityFilter")
                    sG = 42
                else
                    sG = 8427
                    continue
                end
            else
                break
            end
        end
    end
end
local function fn302(b4, b5)
    local oM = lR()
    local oN = not oM or typeof(b4) ~= "CFrame"
    if oN then
        return false
    end
    if b5 then
        oM.Anchored = true
    end
    oM.AssemblyLinearVelocity = Vector3.zero
    oM.AssemblyAngularVelocity = Vector3.zero
    oM.CFrame = b4 + Vector3.new(0, 3, 0)
    return true
end
local function onUnload()
    Library:Unload()
end
local function fn321()
    local ItemSpawners = Workspace:FindFirstChild("ItemSpawners")
    if not ItemSpawners then
        return
    end
    for i, child in ipairs(ItemSpawners:GetChildren()) do
        if child:IsA("BasePart") then
            mm[child.Name] = child.Position + Vector3.new(0, 8, 0)
        end
    end
end
local function onExportConfigToClipboard()
    local rF_1
    local rE_1
    rE_1, rF_1 = pcall(HttpService.JSONEncode, HttpService, mt())
    if not rE_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local rE_2 = setclipboard or toclipboard
    local rE_3 = type(rE_2) ~= "function" or not pcall(rE_2, rF_1)
    if rE_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function fn348()
    local Character = mi.Character
    local nS = Character and Character:FindFirstChildOfClass("Humanoid")
    return nS
end
local function fn355(aK)
    return next(mA(aK)) ~= nil
end
local function fn374()
    local rk = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local rl = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if rl then
                local rl_1 = lq(k, v)
                if rl_1 then
                    rk[#rk + 1] = rl_1
                end
            end
        end
    end
    table.sort(rk, function(gn, go)
        if gn.type ~= go.type then
            return gn.type < go.type
        end
        return gn.idx < go.idx
    end)
    return { objects = rk }
end
local function fn390(aC)
    local nI = lA(aC, {})
    if typeof(nI) ~= "table" then
        return {}
    end
    local nJ = {}
    for k, v in pairs(nI) do
        if v == true then
            nJ[k] = true
        else
            local nI_1 = typeof(k) == "number" and typeof(v) == "string"
            if nI_1 then
                nJ[v] = true
            end
        end
    end
    return nJ
end
local function fn412(f9, ga)
    local Type = ga.Type
    if Type == "Toggle" then
        return { idx = f9, type = "Toggle", value = ga.Value == true }
    elseif Type == "Slider" then
        return { idx = f9, type = "Slider", value = tostring(ga.Value) }
    elseif Type == "Dropdown" then
        return { idx = f9, type = "Dropdown", multi = ga.Multi == true, value = ga.Value }
    elseif Type == "Input" then
        local re = ga.Value or ""
        return { idx = f9, type = "Input", text = tostring(re) }
    elseif Type == "ColorPicker" then
        return { idx = f9, type = "ColorPicker", value = ga.Value:ToHex(), transparency = ga.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = f9,
            type = "KeyPicker",
            mode = ga.Mode,
            key = ga.Value,
            modifiers = ga.Modifiers,
            toggled = ga.Toggled
        }
    else
        return nil
    end
end
local function fn466()
    local qZ_1
    local qY_1
    if identifyexecutor then
        qZ_1, qY_1 = identifyexecutor()
        local q_ = qZ_1 ~= ""
        local q0 = type(qZ_1) == "string" and q_
        if q0 then
            local q__1 = type(qY_1) == "string" and qY_1 ~= "" and qZ_1 .. " " .. qY_1
            mB = q__1 or qZ_1
        end
    end
end
local function worker6()
    while not Library.Unloaded do
        if lV("AutoUpgradeBase") then
            lD()
        end
        if lV("AutoUpgradeBrainrots") then
            mg()
        end
        if lV("AutoBuyUpgrades") then
            my()
        end
        if lV("AutoRebirth") then
            lO()
        end
        task.wait(1)
    end
end
local function worker()
    local q3_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local q2 = math.floor(os.clock() - lW)
        if q2 < 60 then
            q3_1 = q2 .. "s"
        elseif q2 < 3600 then
            q3_1 = string.format("%dm %ds", q2 // 60, q2 % 60)
        else
            q3_1 = string.format("%dh %dm", q2 // 3600, q2 % 3600 // 60)
        end
        Label:SetText(mj("Session time", q3_1, l1))
    end
end
local function fn481()
    local oA = (tonumber(lA("CarryBeforeBase", 1))) or 1
    return math.clamp(math.floor(oA), 1, ms())
end
local function fn482(db, dc, dd, de)
    local pL = os.clock()
    local pL_3
    local pM = de or 4
    local pM_1
    local pN = pL + pM
    local pL_1 = l7(db)
    if not pL_1 then
        return nil
    end
    mo(true)
    lB(pL_1)
    lN(CFrame.new(pL_1), true)
    while true do
        if not (os.clock() < pN) then
            return nil
        end
        local pL_2 = Library.Unloaded or not lV("AutoCollectBrainrots")
        if pL_2 then
            break
        end
        if lo() then
            return nil
        end
        pL_3, pM_1 = l7(db)
        if pL_3 then
            lB(pL_3)
            lN(CFrame.new(pL_3), true)
        end
        if pM_1 then
            local pL_4 = {}
            for i, child in ipairs(pM_1:GetChildren()) do
                local pO = (child:IsA("Model")) and mw(child, dc, dd, pM_1.Name)
                if pO then
                    table.insert(pL_4, child)
                end
            end
            local pM_2 = lu(pL_4)
            if pM_2 then
                return pM_2
            end
        else
            local pL_5 = lu(l5(dc, dd))
            local pM_3 = pL_5 and ls(pL_5, db) == db
            if pM_3 then
                return pL_5
            end
        end
        task.wait(0.3)
    end
    return nil
end
local function fn487(ai, aj, ak)
    return string.format("<b>%s</b> %s %s", ai, mr("-", "#5a6070"), mr(aj, ak))
end
local function worker5()
    while not Library.Unloaded do
        if lV("AutoEquipBest") then
            pcall(function()
                PlaceBestRequested:FireServer()
            end)
        end
        task.wait(0.75)
    end
end
local function fn519(ar)
    if Library.Unloaded then
        return false
    end
    local nA = Toggles[ar]
    return nA ~= nil and nA.Value == true
end
local function fn524(af, ag)
    return string.format('<font color="%s">%s</font>', ag, af)
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = mi.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local se_2 = (descendant:IsA("BasePart")) and descendant.CanCollide
                if se_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn551()
    local qb = mf()
    local qc = qb and qb:FindFirstChild("BaseUpgrade")
    local qb_1 = qc
    if qc then
        qc = qb_1:FindFirstChild("GUIPart")
    end
    local qb_2 = qc
    if not qb_2 then
        pcall(function()
            RequestBaseUpgrade:FireServer()
        end)
        return
    end
    local qc_1 = (qb_2:GetAttribute("CurrentLevel")) or 0
    local qc_2 = (qb_2:GetAttribute("MaxLevel")) or 1
    if qc_1 >= qc_2 then
        return
    end
    pcall(function()
        RequestBaseUpgrade:FireServer()
    end)
end
local function onCopyJoinScript_JobID()
    local fz = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, mb)
    lz(fz, "Copied join script to clipboard")
end
local function onImportConfigFromClipboardTex()
    local rK_1
    local rI = Options.SaveManager_ImportSource.Value or ""
    local rI_1
    local rJ = tostring(rI):match("^%s*(.-)%s*$")
    if rJ == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    rI_1, rK_1 = pcall(HttpService.JSONDecode, HttpService, rJ)
    local rJ_1 = not rI_1 or type(rK_1) ~= "table" or type(rK_1.objects) ~= "table"
    if rJ_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local rI_2 = 0
    for i, v in ipairs(rK_1.objects) do
        if lP(v) then
            rI_2 += 1
        end
    end
    if rI_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local rK_2 = rI_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(rI_2, rK_2), 6)
end
local function onRenderStepped(hG)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local so_1 = l4()
        if so_1 then
            so_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local so_3 = lR()
        local sp = l4()
        if so_3 and sp then
            sp.PlatformStand = true
            local sp_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                sp_1 = sp_1 + CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                sp_1 = sp_1 - CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                sp_1 = sp_1 - CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                sp_1 = sp_1 + CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                sp_1 = sp_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                sp_1 = sp_1 - Vector3.new(0, 1, 0)
            end
            so_3.Velocity = Vector3.zero
            if sp_1.Magnitude > 0 then
                so_3.CFrame = so_3.CFrame + sp_1.Unit * Options.FlySpeed.Value * hG
            end
        end
    end
end
local function onInputChanged(g4)
    local UserInputType = g4.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        lF = tick()
    end
end
local function fn611(fi)
    local DiscordGroup = fi:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = mD })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = mD })
end
local function fn612()
    if not Toggles.WalkSpeedEnabled.Value then
        local sc = l4()
        if sc then
            sc.WalkSpeed = 16
        end
    end
end
local function fn616(cn)
    mp()
    local ItemSpawners = Workspace:FindFirstChild("ItemSpawners")
    local o3 = ItemSpawners and ItemSpawners:FindFirstChild(cn)
    local o2_1 = o3
    if o3 then
        o3 = o2_1:IsA("BasePart")
    end
    if o3 then
        local o3_1 = o2_1.Position + Vector3.new(0, 8, 0)
        mm[cn] = o3_1
        return o3_1, o2_1
    end
    return mm[cn], nil
end
local function fn659(ax, ay)
    local nG = Options[ax]
    if nG == nil then
        return ay
    end
    return nG.Value
end
local function fn673(R, S)
    Library.NotifySide = S
    pcall(SetNotifySide, R, S)
end
local function fn687(a7)
    local n5 = "Plot_" .. mi.Name
    local Plots2 = Workspace:FindFirstChild("Plots")
    local n7 = Plots2 and Plots2:FindFirstChild(n5)
    if n7 then
        mC(n7)
        return n7
    end
    local n7_1 = a7
    local od = if n7_1 then 1 else 0
    local ob = 3707 * od + 1816 * (1 - od)
    local oc = 3852 * od + 2330 * (1 - od)
    if not ((ob * 2484 + oc * 2696 + ob * oc) % 16777213 == 318118) then
        n7_1 = 0
    end
    local n9 = n7_1
    if n9 <= 0 then
        return nil
    end
    if lJ then
        lB(lJ.Position)
    end
    local n7_2 = os.clock() + n9
    while true do
        if not (os.clock() < n7_2) then
            return nil
        end
        if Library.Unloaded then
            break
        end
        local Plots = Workspace:FindFirstChild("Plots")
        local n9_1 = Plots and Plots:FindFirstChild(n5)
        if n9_1 then
            mC(n9_1)
            return n9_1
        end
        if lJ then
            lB(lJ.Position)
        end
        task.wait(0.15)
    end
    return nil
end
local function fn726(cA, cB)
    local attr = cA:GetAttribute("Rarity")
    local pd = attr ~= ""
    local pe = typeof(attr) == "string" and pd
    if pe then
        return attr
    end
    return cB
end
local function fn733()
    l0(Toggles.AntiGameplayPause.Value)
end
local function fn754(bS)
    local oF = lR()
    if not oF then
        return nil
    end
    oF.Anchored = bS and true or false
    if bS then
        oF.AssemblyLinearVelocity = Vector3.zero
        oF.AssemblyAngularVelocity = Vector3.zero
    end
    return oF
end
local function worker3()
    while not Library.Unloaded do
        task.wait(1)
        if lV("AntiGameplayPause") then
            l0(true)
        end
    end
end
local function fn815(cE, cF, cG, cH)
    if cE:GetAttribute("IsSpawnedItem") ~= true then
        return false
    end
    local pg = ls(cE, cH)
    local ph = lH(cE)
    if not cF[pg] then
        return false
    elseif not cG[ph] then
        return false
    else
        return true
    end
end
local function onTeleportBackToBase()
    if l2() then
        Library:Notify("Teleported to base")
    else
        Library:Notify("Base not found")
    end
end
local function worker2()
    while not Library.Unloaded do
        task.wait(2)
        if lV("AntiAfk") then
            local sv = tick() - lF
            local sw = tick() - ly
            if sv >= 300 and sw >= 60 then
                pcall(mz)
            else
                if sv < 300 and sw >= 300 then
                    pcall(mz)
                end
            end
        end
    end
end
lo = nil
local onChildAdded
lq = nil
lr = nil
ls = nil
lu = nil
lv = nil
lw = nil
ly = nil
lz = nil
lA = nil
lB = nil
lC = nil
lD = nil
UpgradesConfig = nil
lF = nil
Options = nil
lH = nil
CurrentCamera2 = nil
lJ = nil
Toggles = nil
PlaceBestRequested = nil
lN = nil
lO = nil
lP = nil
lR = nil
lT = nil
RequestBaseUpgrade = nil
lV = nil
lW = nil
RequestRebirth = nil
SetNotifySide = nil
lZ = nil
SaveManager = nil
l0 = nil
l1 = nil
l2 = nil
connection2 = nil
l4 = nil
l5 = nil
l6 = nil
l7 = nil
l8 = nil
Library = nil
ma = nil
local lt, UpgradesController, UpgradeRequested, RequestSlotUpgrade, lS
mb = nil
mc = nil
Label = nil
mf = nil
mg = nil
connection = nil
mi = nil
mj = nil
local mk
Workspace = nil
mm = nil
HttpService = nil
mo = nil
mp = nil
VirtualUser = nil
mr = nil
ms = nil
mt = nil
UserInputService = nil
mw = nil
my = nil
mz = nil
mA = nil
mB = nil
mC = nil
mD = nil
local md, mv, mx
local mW_1
local GameInfoGroup
local mQ_1
md = nil
mv = nil
mx = nil
local SocialsGroup
UserInputService, VirtualUser, HttpService, Workspace, mi, mc, l8, RequestRebirth, RequestBaseUpgrade, RequestSlotUpgrade, PlaceBestRequested, UpgradeRequested, UpgradesConfig, UpgradesController, lw = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
Workspace = game:GetService("Workspace")
mi = Players.LocalPlayer
local mN = "+1 Wings for Brainrots"
mc = "https://discord.gg/ehKVq7pf7v"
l8 = "https://rscripts.net/@Ouroboros"
local Events = ReplicatedStorage:WaitForChild("Events")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local Configs = ReplicatedStorage:WaitForChild("Configs")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local sR_10_4
RequestRebirth = Events:WaitForChild("RequestRebirth")
RequestBaseUpgrade = Events:WaitForChild("RequestBaseUpgrade")
RequestSlotUpgrade = Events:WaitForChild("RequestSlotUpgrade")
PlaceBestRequested = Remotes:WaitForChild("PlaceBestRequested")
UpgradeRequested = Remotes:WaitForChild("UpgradeRequested")
local MutationConfigurations = require(Modules:WaitForChild("MutationConfigurations"))
UpgradesConfig = require(Configs:WaitForChild("UpgradesConfig"))
UpgradesController = require(Modules:WaitForChild("UpgradesController"))
lw = {
    "Common",
    "Uncommon",
    "Rare",
    "Epic",
    "Legendary",
    "Mythical",
    "Secret",
    "Celestial",
    "Cosmic",
    "God",
    "Exclusive"
}
local mM = {}
local mP = {}
local sR_10_1 = MutationConfigurations.Mutations or {}
for k in pairs(sR_10_1) do
    table.insert(mP, k)
end
local sR_2_2 = 5
repeat
    local sR_10_2 = {
        "jrxkjbzo",
        "idctspjauxs",
        "lfsgytc",
        "alafzsa",
        "voitfidwo",
        "gjcyrsclsw",
        "zax",
        "xwmdoez",
        "gijxwycw",
        "vwq",
        "gqvtmxhpuy",
        "qqipz",
        "sxngcz",
        "mjyddandx"
    }
    if sR_10_2[(sR_2_2 * 43 + 31) % 14 + 1] <= sR_10_2[(sR_2_2 * 43 + 31) % 14 + 1] then
        table.sort(mP)
        mM = mP
    else
        table.sort(mM)
        mP = mM
    end
    sR_2_2 = (sR_2_2 + 7) % 8
until (sR_2_2 * 7 + 6) % 8 == 2
mx, mv, mm = nil, nil, nil
mx = { "Floor1", "Floor2", "Floor3" }
mv = { "Speed", "Carry", "Stamina" }
local sR_4_1 = { "1", "5", "10", "Max" }
local sR_7_1 = {
    Common = Vector3.new(34, 8, 134),
    Uncommon = Vector3.new(35, 8, 295),
    Rare = Vector3.new(32, 8, 516),
    Epic = Vector3.new(32, 8, 825),
    Legendary = Vector3.new(34, 8, 1253),
    Mythical = Vector3.new(33, 8, 1822),
    Secret = Vector3.new(32, 8, 2555),
    Celestial = Vector3.new(35, 8, 4052),
    Cosmic = Vector3.new(33, 8, 6135),
    God = Vector3.new(33, 8, 10007)
}
mm = {}
for k, v in pairs(sR_7_1) do
    mm[k] = v
end
Library, SaveManager = nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
pcall(fns.fn45)
local sR_7_2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
SetNotifySide = nil
SetNotifySide = Library.SetNotifySide
Library.SetNotifySide = fn673
Toggles, Options, l1, lJ, lz, mD, mr, mj, lV, lA, mA, ma, l4, lR, lB, mC, mf, lv, ms, lT, lC, lo, mo, md, lN, lr, mp, l7, lH, ls, mw, l5, lu, l6, lZ, l2, lD, mg, my, lO = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Toggles = Library.Toggles
Options = Library.Options
lz = fns.fn84
mD = fn172
mr = fn524
mj = fn487
local mL_1 = "#7fd47f"
local mK_1 = "#6ec1ff"
l1 = "#e8a34d"
local mJ = "#8b93a3"
lV = fn519
lA = fn659
mA = fn390
ma = fn355
l4 = fn348
if (not lO and not Toggles and (mD and Toggles) or (not mD or Toggles) and (not lO or not mD) or (Toggles and not Toggles and (not Toggles or not lO) or (Toggles and lO or Toggles and mD))) and ((not Toggles or lO) and (mD and lO) and ((Toggles or not lO) and (mD or mD)) and (not lO or Toggles or (Toggles or not Toggles) or (lO or Toggles) and (not Toggles or mD))) and not ((not lO and not Toggles and (mD and Toggles) or (not mD or Toggles) and (not lO or not mD) or (Toggles and not Toggles and (not Toggles or not lO) or (Toggles and lO or Toggles and mD))) and ((not Toggles or lO) and (mD and lO) and ((Toggles or not lO) and (mD or mD)) and (not lO or Toggles or (Toggles or not Toggles) or (lO or Toggles) and (not Toggles or mD)))) then
    lB = fn134
    lR = nil
    lJ = function(aW)
        if typeof(aW) ~= "Vector3" then
            return
        end
        pcall(function()
            mi:RequestStreamAroundAsync(aW)
        end)
    end
else
    lR = fn134
    lJ = nil
    lB = function(aW)
        if typeof(aW) ~= "Vector3" then
            return
        end
        pcall(function()
            mi:RequestStreamAroundAsync(aW)
        end)
    end
end
mC = function(a0)
    local n__1
    local nZ_1
    if not a0 then
        return
    end
    local Spawn = a0:FindFirstChild("Spawn")
    if not Spawn then
        return
    end
    if Spawn:IsA("BasePart") then
        lJ = Spawn.CFrame
    else
        nZ_1, n__1 = pcall(function()
            return Spawn:GetPivot()
        end)
        if nZ_1 and n__1 then
            lJ = n__1
        end
    end
end
mf = fn687
lv = fns.fn30
ms = fn143
lT = fn190
lC = fn481
lo = fns.fn130
mo = fn754
md = function(bW)
    local oJ
    if not bW or not bW.Parent then
        return false
    elseif fireproximityprompt then
        local oK_1 = pcall(fireproximityprompt, bW)
        if oK_1 then
            return true
        end
        oJ = bW.HoldDuration
        local oK_2 = pcall(function()
            bW.HoldDuration = 0
            bW:InputHoldBegin()
            task.wait(0.05)
            bW:InputHoldEnd()
        end)
        pcall(function()
            bW.HoldDuration = oJ
        end)
        return oK_2
    else
        oJ = bW.HoldDuration
        local oK_3 = pcall(function()
            bW.HoldDuration = 0
            bW:InputHoldBegin()
            task.wait(0.05)
            bW:InputHoldEnd()
        end)
        pcall(function()
            bW.HoldDuration = oJ
        end)
        return oK_3
    end
end
lN = fn302
lr = fn192
mp = fn321
l7 = fn616
lH = fn238
ls = fn726
mw = fn815
l5 = fn205
lu = function(cZ)
    local pC_1
    local pB_1
    local py = lR()
    if not py or #cZ == 0 then
        return nil
    end
    local pz_1 = math.huge
    local pA
    for i, v in ipairs(cZ) do
        local pK = v
        pB_1, pC_1 = pcall(function()
            return pK:GetPivot()
        end)
        if pB_1 and pC_1 then
            local Magnitude = (pC_1.Position - py.Position).Magnitude
            if Magnitude < pz_1 then
                pz_1 = Magnitude
                pA = pK
            end
        end
    end
    return pA
end
l6 = fn482
lZ = function(dD)
    local pY_1
    local pX_1
    if not dD or not dD.Parent then
        return false
    end
    local ProximityPrompt = dD:FindFirstChildWhichIsA("ProximityPrompt", true)
    pX_1, pY_1 = pcall(function()
        return dD:GetPivot()
    end)
    if not (ProximityPrompt and pX_1 and pY_1) then
        return false
    end
    local Parent = ProximityPrompt.Parent
    local pZ_1 = lv()
    local p_ = Parent and Parent:IsA("BasePart") and Parent.Position
    local pX_4 = p_ or pY_1.Position
    lB(pX_4)
    mo(false)
    local pX_5 = lR()
    if not pX_5 then
        return false
    end
    pX_5.CFrame = CFrame.new(pX_4 + Vector3.new(0, 3, 0))
    task.wait(0.2)
    local pY_3 = not dD.Parent
    local p3 = if pY_3 then 1 else 0
    local p1 = 4079 * p3 + 918 * (1 - p3)
    local p2 = 2280 * p3 + 3315 * (1 - p3)
    if not ((p1 * 2308 + p2 * 846 + p1 * p2) % 16777213 == 3866119) then
        pY_3 = not ProximityPrompt.Parent
    end
    if pY_3 then
        return lv() > pZ_1
    end
    local p6 = 1
    while p6 <= 5 do
        md(ProximityPrompt)
        task.wait(0.35)
        local pY_4 = lv() > pZ_1 or lT()
        if pY_4 then
            return true
        end
        local pY_5 = dD.Parent and ProximityPrompt.Parent and ProximityPrompt.Parent:IsA("BasePart")
        if pY_5 then
            pX_5.CFrame = CFrame.new(ProximityPrompt.Parent.Position + Vector3.new(0, 2.5, 0))
        end
        task.wait(0.08)
        p6 += 1
    end
    local pW_2 = lv() > pZ_1 or lT()
    return pW_2
end
l2 = fn187
lD = fn551
mg = function()
    local qf = mf()
    if not qf then
        return
    end
    local qg = mA("BrainrotUpgradeFloors")
    if not next(qg) then
        return
    end
    for i, v in ipairs(mx) do
        local qp = v
        if qg[qp] then
            local qh = qf:FindFirstChild(qp)
            local qi = qh and qh:FindFirstChild("Slots")
            if qi then
                for i, child in ipairs(qi:GetChildren()) do
                    local qv = child
                    if qv.Name:find("Slot", 1, true) then
                        local Spawn = qv:FindFirstChild("Spawn")
                        local qi_1 = Spawn and Spawn:FindFirstChild("VisualItem")
                        if qi_1 then
                            pcall(function()
                                RequestSlotUpgrade:FireServer(qp, qv.Name)
                            end)
                            task.wait(0.05)
                        end
                    end
                end
            end
        end
    end
end
my = function()
    local qx = mA("BuyUpgradeTypes")
    if not next(qx) then
        return
    end
    local qy = tostring(lA("BuyUpgradeAmount", "1"))
    for i, v in ipairs(mv) do
        local qw
        local qG = v
        if qx[qG] then
            if qy == "Max" then
                pcall(function()
                    UpgradesController:Upgrade(qG, "Max")
                end)
            else
                local qz = (tonumber(qy)) or 1
                qw = qz
                pcall(function()
                    UpgradeRequested:FireServer(qG, qw)
                end)
            end
            task.wait(0.08)
        end
    end
end
lO = fn215
local sR_10_3 = Workspace:FindFirstChild("ItemSpawners")
if sR_10_3 then
    sR_10_3.ChildAdded:Connect(function(eU)
        if eU:IsA("BasePart") then
            mm[eU.Name] = eU.Position + Vector3.new(0, 8, 0)
        end
    end)
end
mp()
lt, mk, onChildAdded = nil, nil, nil
lt = "Plot_" .. mi.Name
onChildAdded = function(eY)
    if eY.Name ~= lt then
        return
    end
    mC(eY)
    eY.ChildAdded:Connect(function(e0)
        if e0.Name == "Spawn" then
            mC(eY)
        end
    end)
end
mk = Workspace:FindFirstChild("Plots")
if mk then
    for i, child in ipairs(mk:GetChildren()) do
        onChildAdded(child)
    end
    mk.ChildAdded:Connect(onChildAdded)
else
    task.spawn(function()
        mk = Workspace:WaitForChild("Plots", 30)
        if not mk then
            return
        end
        for i, child in ipairs(mk:GetChildren()) do
            onChildAdded(child)
        end
        mk.ChildAdded:Connect(onChildAdded)
    end)
end
task.spawn(function()
    local qV = 1
    while qV <= 40 do
        local qR = (mf(0)) or Library.Unloaded
        if qR then
            break
        end
        task.wait(0.25)
        qV += 1
    end
end)
local sR_2_3 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = mc, Copyable = true }, "|", mN },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local mP_1 = {
    Info = sR_2_3:AddTab("Info", "info"),
    Main = sR_2_3:AddTab("Main", "gamepad-2"),
    Player = sR_2_3:AddTab("Player", "person-standing"),
    Settings = sR_2_3:AddTab("Settings", "settings")
}
mP_1.Farm = mP_1.Main:AddSubTab("Farm", "sprout")
mP_1.Upgrades = mP_1.Main:AddSubTab("Upgrades", "arrow-up")
for k, v in mP_1 do
    if v ~= mP_1.Main then
        fn611(v)
    end
end
mB, sR_10_4, GameInfoGroup, Label, mb, mQ_1 = nil, nil, nil, nil, nil, nil
local sR_2_4 = 8
repeat
    local mI_2 = (sR_2_4 * 2 + 0) % 3 + 1
    if mI_2 <= 2 then
        if mI_2 <= 1 then
            if (not mB and Label or sR_2_4 and not mb or (not mB or mb) and (not Label and sR_2_4)) and not (not mB and Label or sR_2_4 and not mb or (not mB or mb) and (not Label and sR_2_4)) then
                mb = #mQ_1 > 18
            else
                mQ_1 = #mb > 18
            end
            sR_2_4 = (sR_2_4 + 5) % 12
        else
            local mI_3 = {
                "vibdid",
                "jkmuvnfqi",
                "lrvihfbip",
                "vadzrmmgw",
                "ufzext",
                "vpxcys",
                "jsjj",
                "olprwriq",
                "cjimdpjmn",
                "npc",
                "nrs"
            }
            local tG = sR_2_4
            local mS_1 = mI_3[tG % 11 + 1]
            if mS_1:len() >= mS_1:reverse():rep(tG % 3 + 2):len() then
                l1 = "Unknown"
                pcall(fn466)
                mN = (nil):AddLeftGroupbox("Account", "circle-user")
                mN:AddLabel(mP_1("User", mj.Name, Label), true)
                mN:AddLabel(mP_1("Status", "Keyless", Label), true)
                mN:AddLabel(mP_1("Executor", l1, Label), true)
                mi = (nil):AddLeftGroupbox("Game Info", "gamepad-2")
                mi:AddLabel(mK_1(GameInfoGroup .. " [" .. tostring(game.PlaceId) .. "]", mB), true)
                mi:AddLabel(mP_1("Place ID", tostring(game.PlaceId), mB), true)
                mr = mi:AddLabel(mP_1("Session time", "0s", sR_10_4), true)
            else
                mB = "Unknown"
                pcall(fn466)
                sR_10_4 = mP_1.Info:AddLeftGroupbox("Account", "circle-user")
                sR_10_4:AddLabel(mj("User", mi.Name, mL_1), true)
                sR_10_4:AddLabel(mj("Status", "Keyless", mL_1), true)
                sR_10_4:AddLabel(mj("Executor", mB, mL_1), true)
                GameInfoGroup = mP_1.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                GameInfoGroup:AddLabel(mr(mN .. " [" .. tostring(game.PlaceId) .. "]", mK_1), true)
                GameInfoGroup:AddLabel(mj("Place ID", tostring(game.PlaceId), mK_1), true)
                Label = GameInfoGroup:AddLabel(mj("Session time", "0s", l1), true)
            end
            sR_2_4 = (sR_2_4 + 8) % 12
        end
    else
        local uc = bit32.rrotate(bit32.bxor(bit32.lrotate(sR_2_4, 9), string.byte(tostring(mb))), 11)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(uc, 974832337), 3512606524), (bit32.bxor(bit32.band(uc, 3320134958), 978774094))), 3512606524), 978774094) == uc then
            mb = tostring(game.JobId)
        else
            mQ_1 = tostring(game.JobId)
        end
        sR_2_4 = (sR_2_4 + 5) % 12
    end
until (sR_2_4 * 7 + 10) % 12 == 0
if mQ_1 then
    local sR_2_5 = 6
    repeat
        local t0 = bit32.rrotate(bit32.bxor(bit32.lrotate(sR_2_5, 6), string.byte(tostring(sR_2_5))), 24)
        if bit32.bxor(bit32.lrotate(bit32.bxor(t0, 1915839365), 20), 945234710) ~= bit32.lrotate(t0, 20) then
            mb = string.sub(mQ_1, 1, 18) .. "..."
        else
            mQ_1 = string.sub(mb, 1, 18) .. "..."
        end
        sR_2_5 = (sR_2_5 + 3) % 8
    until (sR_2_5 * 7 + 7) % 8 == 6
end
local sR_2_6 = mQ_1 or mb
lW, SocialsGroup, mW_1, lF, ly, connection, connection2, CurrentCamera2, lS, lq, mt, lP, mz, l0 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
GameInfoGroup:AddLabel(mj("Server", sR_2_6, mJ), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
lW = os.clock()
task.spawn(worker)
local ScriptsGroup = mP_1.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(mr("Included in this hub", mJ), true)
ScriptsGroup:AddLabel(mr(mN, mK_1), true)
local sR_10_5 = mP_1.Info:AddRightGroupbox("Features", "list")
if ((not ScriptsGroup or not mW_1) and (mt or not lW)) and not ((not ScriptsGroup or not mW_1) and (mt or not lW)) then
    mK_1:AddLabel(SocialsGroup("Auto Farm", l1), true)
    mK_1:AddLabel(SocialsGroup("Auto Upgrades", mP_1), true)
    mK_1:AddLabel(SocialsGroup("Misc Utilities", sR_10_5), true)
    mr.Info:AddRightGroupbox("Socials", "link")
else
    sR_10_5:AddLabel(mr("Auto Farm", mK_1), true)
    sR_10_5:AddLabel(mr("Auto Upgrades", l1), true)
    sR_10_5:AddLabel(mr("Misc Utilities", mJ), true)
    SocialsGroup = mP_1.Info:AddRightGroupbox("Socials", "link")
end
SocialsGroup:AddButton({ Text = "Discord", Func = mD })
SocialsGroup:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
local OuroborosHubGroup = mP_1.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = mD })
local FaqGroup = mP_1.Info:AddRightGroupbox("FAQ", "circle-help")
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
local BrainrotsGroup = mP_1.Farm:AddLeftGroupbox("Brainrots")
BrainrotsGroup:AddToggle("AutoCollectBrainrots", { Text = "Auto Collect Brainrots", Default = false })
BrainrotsGroup:AddDropdown("RarityFilter", {
    Text = "Rarity",
    Values = lw,
    Default = { "Common" },
    Multi = true,
    Searchable = true,
    AllowNull = true
})
BrainrotsGroup:AddDropdown("MutationFilter", { Text = "Mutation", Values = mM, Default = mM, Multi = true, Searchable = true, AllowNull = true })
BrainrotsGroup:AddSlider("CarryBeforeBase", { Text = "Carry Before Base", Default = 1, Min = 1, Max = 6, Rounding = 0 })
BrainrotsGroup:AddButton({ Text = "Teleport Back to Base", Func = onTeleportBackToBase })
BrainrotsGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
BrainrotsGroup:AddLabel(mr("(Use this if you wanna collect money, it's better)", mL_1), true)
local MoneyGroup = mP_1.Farm:AddRightGroupbox("Money")
MoneyGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local BaseGroup = mP_1.Upgrades:AddLeftGroupbox("Base")
BaseGroup:AddToggle("AutoUpgradeBase", { Text = "Auto Upgrade Base", Default = false })
BaseGroup:AddToggle("AutoUpgradeBrainrots", { Text = "Auto Upgrade Brainrots", Default = false })
BaseGroup:AddDropdown("BrainrotUpgradeFloors", { Text = "Floors", Values = mx, Default = mx, Multi = true, AllowNull = true })
local BuyUpgradesGroup = mP_1.Upgrades:AddRightGroupbox("Buy Upgrades")
BuyUpgradesGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
BuyUpgradesGroup:AddDropdown("BuyUpgradeTypes", { Text = "Upgrades", Values = mv, Default = { "Speed" }, Multi = true, AllowNull = true })
BuyUpgradesGroup:AddDropdown("BuyUpgradeAmount", { Text = "Amount", Values = sR_4_1, Default = "1" })
local MovementGroup = mP_1.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = mP_1.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
local MenuGroup = mP_1.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
Library.ToggleKeybind = Options.MenuKeybind
sR_7_2:SetLibrary(Library)
sR_7_2:SetFolder("OuroborosHub")
sR_7_2:SaveDefault("Monochrome")
sR_7_2:ApplyToTab(mP_1.Settings)
sR_7_2:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/WingsForBrainrots")
local mS_2 = SaveManager:BuildConfigSection(mP_1.Settings)
lS = fn196
if ((not CurrentCamera2 or CurrentCamera2) and (not lF or not CurrentCamera2) or (not MoneyGroup or CurrentCamera2) and (MoneyGroup and l0)) and (l0 and not lF and (CurrentCamera2 and MoneyGroup) and (MoneyGroup and not MoneyGroup or (not MoneyGroup or l0))) and ((MoneyGroup or not lF) and (not CurrentCamera2 or not MoneyGroup) and (not MoneyGroup and not CurrentCamera2 and (lF or false)) or (false or not lF or (not CurrentCamera2 or not lF) or (not CurrentCamera2 or not MoneyGroup or (false or not MoneyGroup)))) or not (((not CurrentCamera2 or CurrentCamera2) and (not lF or not CurrentCamera2) or (not MoneyGroup or CurrentCamera2) and (MoneyGroup and l0)) and (l0 and not lF and (CurrentCamera2 and MoneyGroup) and (MoneyGroup and not MoneyGroup or (not MoneyGroup or l0))) and ((MoneyGroup or not lF) and (not CurrentCamera2 or not MoneyGroup) and (not MoneyGroup and not CurrentCamera2 and (lF or false)) or (false or not lF or (not CurrentCamera2 or not lF) or (not CurrentCamera2 or not MoneyGroup or (false or not MoneyGroup))))) then
    lq = fn412
    mt = fn374
else
    mt = fn412
    lq = fn374
end
lP = function(gq)
    local rB
    rB = nil
    local rC = type(gq) ~= "table" or type(gq.idx) ~= "string" or type(gq.type) ~= "string" or SaveManager.Ignore[gq.idx]
    if rC then
        return false
    end
    rB = lS(gq.type, gq.idx)
    if not rB then
        return false
    end
    local rC_1 = pcall(function()
        if gq.type == "Input" then
            if type(gq.text) ~= "string" then
                return
            end
            rB:SetValue(gq.text)
        elseif gq.type == "ColorPicker" then
            rB:SetValueRGB(Color3.fromHex(gq.value), gq.transparency)
        elseif gq.type == "KeyPicker" then
            rB:SetValue({ gq.key, gq.mode, gq.modifiers })
            if gq.mode == "Toggle" and gq.toggled ~= nil then
                rB.Toggled = gq.toggled
                rB:Update()
            end
        else
            rB:SetValue(gq.value)
        end
    end)
    return rC_1
end
mS_2:AddDivider()
mS_2:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
mS_2:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
mS_2:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
lF = tick()
ly = tick()
pcall(function()
    for i, v in ipairs(getconnections(mi.Idled)) do
        local rY = v
        pcall(function()
            rY:Disable()
        end)
    end
end)
mz = fns.fn119
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
l0 = function(ha)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not ha)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not ha
        end
    end)
    if not ha then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(mi, "GameplayPaused", false)
        else
            mi.GameplayPaused = false
        end
    end)
end
Toggles.AntiGameplayPause:OnChanged(fn733)
Toggles.Fly:OnChanged(fns.fn78)
Toggles.WalkSpeedEnabled:OnChanged(fn612)
Library:OnUnload(fns.fn40)
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(fns.onJumpRequest)
CurrentCamera2 = Workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(worker6)
