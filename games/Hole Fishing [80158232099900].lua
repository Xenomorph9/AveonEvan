local fns = {}
local wU_1, wU_4, wU_7, wU_10, wU_11, wU_13, wU_14, wU_16, wU_19, wU_22, wU_25, wU_27, wU_28, wU_30, wU_31, wU_34, wU_36, wU_38, wU_39, wU_41, wU_42
local oy
local ob
local oX
local nT
local oE
local CaughtFish
local oh
local o2
local nZ
local oK
local nG
local op
local o8
local n4
local oQ
local connection2
local ox
local oa
local oW
local nS
local oD
local og
local o1
local nY
local oJ
local nF
local oo
local o7
local n3
local nL
local ow
local n9
local oV
local nR
local oC
local of
local o0
local nX
local oI
local nE
local om
local o6
local connection
local oO
local nK
local ov
local n8
local oU
local nQ
local oB
local oe
local o_
local nW
local oH
local nD
local ol
local o5
local n1
local oN
local nJ
local n7
local oT
local nP
local oA
local oZ
local EquipRod
local oG
local nC
local o4
local n0
local oM
local nI
local ot
local pa
local n6
local oS
local nO
local oz
local oc
local oY
local nU
local oF
local nB
local oi
local o3
local n_
local SellInventory
local o9
local n5
local oR
local nN
function fns.fn7()
    local attr = oJ:GetAttribute("BagCap")
    if typeof(attr) ~= "number" then
        return false
    end
    return nF() >= attr
end
function fns.fn26()
    local tO_1
    local tN_1
    if identifyexecutor then
        tO_1, tN_1 = identifyexecutor()
        local tP = tO_1 ~= ""
        local tQ = type(tO_1) == "string" and tP
        if tQ then
            local tP_1 = type(tN_1) == "string" and tN_1 ~= "" and tO_1 .. " " .. tN_1
            nW = tP_1 or tO_1
        end
    end
end
function fns.fn50(bj, bk)
    if bj.Costs and bj.Costs[bk + 1] then
        return math.floor(bj.Costs[bk + 1])
    end
    return math.floor(bj.BaseCost * bj.CostGrowth ^ bk)
end
function fns.fn57(bU)
    local rK = nG(ov.AutoSellRarities)
    local rL = nG(ov.AutoSellVariants)
    local rM = bU:GetAttribute("Rarity") or ""
    local rN = tostring(rM)
    local rM_1 = nT(bU)
    local rO = o_(rK) and not rK[rN]
    if rO then
        return false
    end
    local rN_1 = o_(rL) and not rL[rM_1]
    if rN_1 then
        return false
    end
    local rM_2 = o_(rK) or o_(rL)
    return rM_2
end
function fns.fn58()
    local sr = oJ:GetAttribute("FishState") or "idle"
    return tostring(sr)
end
function fns.fn84()
    if not oz.Fly.Value then
        local vu = nK()
        if vu then
            vu.PlatformStand = false
        end
    end
end
function fns.fn86()
    local attr = oJ:GetAttribute("EquippedRod")
    local r4_4
    local r5 = nS()
    local Backpack = oJ:FindFirstChildOfClass("Backpack")
    if attr and attr ~= "" then
        if r5 then
            local r7_1 = r5:FindFirstChild(attr)
            local r8_1 = r7_1 and r7_1:IsA("Tool")
            if r8_1 then
                return r7_1
            elseif Backpack then
                local r7_2 = Backpack:FindFirstChild(attr)
                local r4_1 = r7_2 and r7_2:IsA("Tool")
                if r4_4 then
                    return r7_2
                end
                for i, v in ipairs({ r5, Backpack }) do
                    if v then
                        for i, child in ipairs(v:GetChildren()) do
                            local r4_2 = child:IsA("Tool") and child:GetAttribute("ToolType") ~= "Fish" and string.find(child.Name, "Rod", 1, true)
                            if r4_2 then
                                return child
                            end
                        end
                    end
                end
                return nil
            else
                for i, v in ipairs({ r5, Backpack }) do
                    if v then
                        for i, child in ipairs(v:GetChildren()) do
                            local r4_3 = child:IsA("Tool") and child:GetAttribute("ToolType") ~= "Fish" and string.find(child.Name, "Rod", 1, true)
                            if r4_3 then
                                return child
                            end
                        end
                    end
                end
                return nil
            end
        elseif Backpack then
            local r7_3 = Backpack:FindFirstChild(attr)
            r4_4 = r7_3 and r7_3:IsA("Tool")
            if r4_4 then
                return r7_3
            end
            for i, v in ipairs({ r5, Backpack }) do
                if v then
                    for i, child in ipairs(v:GetChildren()) do
                        local r4_5 = child:IsA("Tool") and child:GetAttribute("ToolType") ~= "Fish" and string.find(child.Name, "Rod", 1, true)
                        if r4_5 then
                            return child
                        end
                    end
                end
            end
            return nil
        else
            for i, v in ipairs({ r5, Backpack }) do
                if v then
                    for i, child in ipairs(v:GetChildren()) do
                        local r4_6 = child:IsA("Tool") and child:GetAttribute("ToolType") ~= "Fish" and string.find(child.Name, "Rod", 1, true)
                        if r4_6 then
                            return child
                        end
                    end
                end
            end
            return nil
        end
    else
        for i, v in ipairs({ r5, Backpack }) do
            if v then
                for i, child in ipairs(v:GetChildren()) do
                    local r4_7 = child:IsA("Tool") and child:GetAttribute("ToolType") ~= "Fish" and string.find(child.Name, "Rod", 1, true)
                    if r4_7 then
                        return child
                    end
                end
            end
        end
        return nil
    end
end
function fns.fn110()
    local qG = {}
    local qI = oJ:GetAttribute("OwnedRods") or ""
    for i, v in ipairs(string.split(qI, ",")) do
        if v ~= "" then
            qG[v] = true
        end
    end
    return qG
end
function fns.onCopyVenmoLink()
    oR(oV, "Copied Venmo link")
end
function fns.onCopyLitecoinAddress()
    oR(nI, "Copied Litecoin address")
end
function fns.fn151(aR)
    local qu = oz[aR]
    return qu ~= nil and qu.Value == true
end
function fns.fn176(aN)
    local DiscordGroup = aN:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = oC })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = oC })
end
function fns.fn178()
    if not workspace.CurrentCamera then
        return
    end
    oW:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    oW:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    oI = tick()
end
function fns.fn216()
    oS(true)
    connection:Disconnect()
    connection2:Disconnect()
    n9(false)
    print("Unloaded!")
end
function fns.fn233()
    local qA = nS()
    local qB = qA and qA:FindFirstChild("HumanoidRootPart")
    return qB
end
function fns.fn236()
    return oD
end
function fns.worker()
    local tV_1
    while true do
        task.wait(1)
        if oU.Unloaded then
            break
        end
        local tU = math.floor(os.clock() - oB)
        if tU < 60 then
            tV_1 = tU .. "s"
        elseif tU < 3600 then
            tV_1 = string.format("%dm %ds", tU // 60, tU % 60)
        else
            tV_1 = string.format("%dh %dm", tU // 3600, tU % 3600 // 60)
        end
        o0:SetText(oo("Session time", tV_1, n_))
    end
end
function fns.fn257()
    if not oz.WalkSpeedEnabled.Value then
        local vz = nK()
        if vz then
            vz.WalkSpeed = 16
        end
    end
end
function fns.fn262(cS)
    local sx = oA()
    local sy = not cS
    if sy ~= false then
        sy = sx
    end
    if sy then
        sy = ow.rod == sx
    end
    if sy then
        sy = ow.startCharge
    end
    if sy then
        sy = ow.releaseCast
    end
    if sy then
        sy = ow.finishCatch
    end
    if sy then
        return true
    end
    ow.rod = sx
    ow.startCharge = og("startCharge")
    ow.releaseCast = og("releaseCast")
    ow.finishCatch = og("finishCatch")
    return ow.startCharge ~= nil and ow.releaseCast ~= nil and ow.finishCatch ~= nil
end
function fns.onRenderStepped(hv)
    if oU.Unloaded then
        return
    end
    oN = workspace.CurrentCamera
    if oz.WalkSpeedEnabled and oz.WalkSpeedEnabled.Value then
        local vm_1 = nK()
        if vm_1 then
            vm_1.WalkSpeed = ov.WalkSpeed.Value
        end
    end
    if oz.Fly and oz.Fly.Value then
        local vm_3 = o4()
        local vn = nK()
        if vm_3 and vn and oN then
            vn.PlatformStand = true
            local vn_1 = Vector3.zero
            local vt = if oZ:IsKeyDown(Enum.KeyCode.W) then 1 else 0
            if vt == 1 then
                vn_1 += oN.CFrame.LookVector
            end
            if oZ:IsKeyDown(Enum.KeyCode.S) then
                vn_1 -= oN.CFrame.LookVector
            end
            if oZ:IsKeyDown(Enum.KeyCode.A) then
                vn_1 -= oN.CFrame.RightVector
            end
            if oZ:IsKeyDown(Enum.KeyCode.D) then
                vn_1 += oN.CFrame.RightVector
            end
            local vt_1 = if oZ:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
            if vt_1 == 1 then
                vn_1 += Vector3.new(0, 1, 0)
            end
            if oZ:IsKeyDown(Enum.KeyCode.LeftControl) then
                vn_1 -= Vector3.new(0, 1, 0)
            end
            vm_3.AssemblyLinearVelocity = Vector3.zero
            if vn_1.Magnitude > 0 then
                vm_3.CFrame = vm_3.CFrame + vn_1.Unit * ov.FlySpeed.Value * hv
            end
        end
    end
end
function fns.fn310(iF, iG)
    local v__1 = (iF == "Toggle" and oz or ov)[iG]
    local vZ_2 = type(v__1) == "table" and v__1.Type == iF
    return vZ_2 and v__1 or nil
end
function fns.fn312(bJ)
    local rx = bJ:GetAttribute("Mutations") or ""
    local ry = tostring(rx)
    if ry == "" then
        return "Normal"
    elseif string.find(ry, "Huge", 1, true) then
        return "Huge"
    elseif string.find(ry, "Big", 1, true) then
        return "Big"
    else
        return "Normal"
    end
end
function fns.fn318()
    local qx = nS()
    local qy = qx and qx:FindFirstChildOfClass("Humanoid")
    return qy
end
function fns.fn330()
    n9(oz.AntiGameplayPause.Value)
end
function fns.worker2()
    while not oU.Unloaded do
        if not n7("AutoPerfectCast") then
            oS(true)
            task.wait(0.2)
            continue
        end
        oS(false)
        if oJ:GetAttribute("TutNoFish") then
            task.wait(0.25)
        elseif oH() then
            if n7("AutoSell") then
                pcall(nL)
            end
            task.wait(0.3)
        elseif not nC() then
            task.wait(0.4)
        else
            local uP = oG()
            if uP == "caught" then
                local uQ_1 = oJ:GetAttribute("LastCatch") or ""
                local uR_1 = tostring(uQ_1)
                if uR_1 == "" or uR_1 == "nil|nil|" then
                    task.wait(1)
                    if oG() == "caught" then
                        local uQ_3 = og("reset")
                        if uQ_3 then
                            pcall(uQ_3)
                        end
                    end
                else
                    task.wait(0.2)
                end
            elseif uP == "bite" then
                n4()
                task.wait(0.15)
            elseif uP == "casting" then
                task.wait(0.1)
            elseif uP == "charging" then
                local uQ_4 = n1(false) and ow.releaseCast
                if uQ_4 then
                    local uQ_5 = nZ()
                    if uQ_5 >= oe then
                        o7()
                        pcall(ow.releaseCast)
                    end
                end
                task.wait(0.05)
            else
                if uP == "idle" or uP == "lost" then
                    pcall(ot)
                    task.wait(0.1)
                else
                    task.wait(0.15)
                end
            end
        end
    end
end
function fns.fn348()
    gethui = function()
        return oD
    end
end
function fns.fn395()
    if oz.AutoPerfectCast.Value then
        oS(false)
        n1(true)
    else
        oS(true)
    end
end
function fns.fn404()
    return oJ.Character
end
function fns.fn433(aG, aH)
    if setclipboard then
        setclipboard(aG)
    elseif toclipboard then
        toclipboard(aG)
    end
    oU:Notify(aH)
end
function fns.onUnload()
    oU:Unload()
end
function fns.fn446()
    local ri = {}
    for i, v in ipairs({ nS(), oJ:FindFirstChildOfClass("Backpack") }) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                local rj = child:IsA("Tool") and child:GetAttribute("ToolType") == "Fish"
                if rj then
                    ri[#ri + 1] = child
                end
            end
        end
    end
    return ri
end
function fns.fn466(aD, aE)
    return aD.Id < aE.Id
end
function fns.fn480()
    local uE = ov.AutoBuyUpgradeTarget and ov.AutoBuyUpgradeTarget.Value or n0
    if uE ~= n0 then
        local uE_1 = nD[uE]
        if uE_1 then
            oy(uE_1)
        end
        return
    end
    for i, v in ipairs(nO) do
        if oy(v.Key) then
            return
        end
    end
end
function fns.onInputBegan()
    oK = tick()
end
function fns.fn503()
    local leaderstats = oJ:FindFirstChild("leaderstats")
    local qE = leaderstats and leaderstats:FindFirstChild("Cash")
    local qD_1 = qE
    if qE then
        qE = qD_1.Value
    end
    return qE or 0
end
function fns.fn504()
    local t0_1
    local t__1
    local tY = nK()
    if not tY then
        return false
    end
    local tZ = false
    for i, v in ipairs(om()) do
        if oM(v) then
            tY:EquipTool(v)
            task.wait(0.12)
            t__1, t0_1 = pcall(function()
                return nN:InvokeServer()
            end)
            local t1 = t__1 and type(t0_1) == "table" and t0_1.sold
            if t1 then
                tZ = true
            end
            task.wait(0.12)
        end
    end
    return tZ
end
function fns.fn507()
    local uc = ov.AutoBuyRodMax and ov.AutoBuyRodMax.Value
    for i, v in ipairs(of) do
        if v.Name == uc then
            return v.Price
        end
    end
    return of[#of] and of[#of].Price or 0
end
function fns.onCopyBitcoinAddress()
    oR(nE, "Copied Bitcoin address")
end
function fns.fn519(cN)
    local su_1
    local st_1
    if typeof(filtergc) ~= "function" then
        return nil
    end
    st_1, su_1 = pcall(filtergc, "function", { Name = cN, IgnoreExecutor = true }, true)
    local sv = st_1 and typeof(su_1) == "function"
    if sv then
        return su_1
    end
    return nil
end
function fns.fn521()
    local q_ = 0
    for i, v in ipairs({ nS(), oJ:FindFirstChildOfClass("Backpack") }) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                local q0 = child:IsA("Tool") and child:GetAttribute("ToolType") == "Fish"
                if q0 then
                    q_ += 1
                end
            end
        end
    end
    return q_
end
local function fn547()
    local sX = not n1(false)
    local s2 = if sX then 1 else 0
    local s0 = 3341 * s2 + 3558 * (1 - s2)
    local s1 = 100 * s2 + 646 * (1 - s2)
    if not ((s0 * 2920 + s1 * 455 + s0 * s1) % 16777213 == 10135320) then
        sX = not ow.finishCatch
    end
    if sX then
        return false
    end
    local sX_1 = os.clock() + 2.5
    local sY
    while true do
        local sZ = os.clock() < sX_1 and oG() == "bite" and n7("AutoPerfectCast") and not oU.Unloaded
        if sZ then
            sY = oQ()
            if sY then
                break
            end
            task.wait(0.05)
            continue
        end
        break
    end
    if oG() ~= "bite" then
        return false
    elseif not sY then
        if mouse1press then
            local sX_2 = os.clock() + 10
            while true do
                local sY_1 = oG() == "bite" and os.clock() < sX_2 and n7("AutoPerfectCast") and not oU.Unloaded
                if sY_1 then
                    mouse1press()
                    task.wait(0.05)
                    continue
                end
                break
            end
            if mouse1release then
                mouse1release()
            end
            return oG() ~= "bite"
        end
        return false
    else
        pcall(ow.finishCatch, true)
        return true
    end
end
local function fn549()
    if not n1(false) then
        n1(true)
    end
    if not ow.startCharge or not ow.releaseCast then
        return false
    end
    local tF_1 = oG()
    if tF_1 == "caught" then
        o5({ idle = true, lost = true }, 5)
        return false
    end
    if tF_1 ~= "idle" and tF_1 ~= "lost" then
        return false
    end
    local tG_1 = pcall(ow.startCharge)
    if not tG_1 then
        n1(true)
        local tH_1 = ow.startCharge ~= nil and pcall(ow.startCharge)
        tG_1 = tH_1
    end
    if not tG_1 then
        return false
    end
    local tF_2 = o5({ charging = true }, 1)
    if tF_2 ~= "charging" then
        return false
    end
    local tG_2 = os.clock()
    while true do
        local tH_2 = n7("AutoPerfectCast") and not oU.Unloaded and oG() == "charging"
        if tH_2 then
            local tH_3 = nZ()
            local tI = tH_3 >= oe or os.clock() - tG_2 >= 1.25
            if tI then
                o7()
                pcall(ow.releaseCast)
                break
            end
            task.wait(0.02)
            continue
        end
        break
    end
    local tF_3 = o5({ bite = true, idle = true, lost = true, caught = true }, 8)
    if tF_3 == "bite" then
        n4()
        o5({ idle = true, lost = true }, 4)
    elseif tF_3 == "caught" then
        o5({ idle = true, lost = true }, 5)
    end
    return true
end
local function onCopyJoinScript_JobID()
    local tS = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, oX)
    if setclipboard then
        setclipboard(tS)
    elseif toclipboard then
        toclipboard(tS)
    end
    oU:Notify("Copied join script to clipboard")
end
local function onInputChanged(ij)
    local UserInputType = ij.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        oK = tick()
    end
end
local function onExportConfigToClipboard()
    local wA_1
    local wz_1
    wz_1, wA_1 = pcall(oT.JSONEncode, oT, o9())
    if not wz_1 then
        oU:Notify("Failed to encode the config")
        return
    end
    local wz_2 = setclipboard or toclipboard
    local wz_3 = type(wz_2) ~= "function" or not pcall(wz_2, wA_1)
    if wz_3 then
        oU:Notify("Your executor does not support copying to the clipboard")
        return
    end
    oU:Notify("Config copied to clipboard", 6)
end
local function fn601(bg)
    local qQ = (oJ:GetAttribute("Lv_" .. bg))
    local qU = if qQ then 1 else 0
    local qS = 549 * qU + 2769 * (1 - qU)
    local qT = 1937 * qU + 2129 * (1 - qU)
    if not ((qS * 2449 + qT * 3189 + qS * qT) % 16777213 == 8585007) then
        qQ = 0
    end
    return qQ
end
local function fn642(at, au)
    if at.Price ~= au.Price then
        return at.Price < au.Price
    end
    return at.Id < au.Id
end
local function fn648(ah, ai)
    local qo = nB[ah.Rarity] or 99
    local qo_1 = nB[ai.Rarity] or 99
    if qo ~= qo_1 then
        return qo < qo_1
    end
    return ah.Name < ai.Name
end
local function onCopyEthereumAddress()
    oR(pa, "Copied Ethereum address")
end
local function fn675()
    oU.ScreenGui.Parent = oD
end
local function antiGameplayPauseLoop()
    while not oU.Unloaded do
        task.wait(1)
        if oz.AntiGameplayPause.Value then
            n9(true)
        end
    end
end
local function onImportConfigFromClipboardTex()
    local wF_1
    local wD = ov.SaveManager_ImportSource.Value or ""
    local wD_1
    local wE = tostring(wD):match("^%s*(.-)%s*$")
    if wE == "" then
        oU:Notify("Paste an exported config into the box first")
        return
    end
    wD_1, wF_1 = pcall(oT.JSONDecode, oT, wE)
    local wE_1 = not wD_1 or type(wF_1) ~= "table"
    local wJ = if wE_1 then 1 else 0
    local wH = 1017 * wJ + 4075 * (1 - wJ)
    local wI = 3231 * wJ + 547 * (1 - wJ)
    if not ((wH * 1688 + wI * 1967 + wH * wI) % 16777213 == 11358000) then
        wE_1 = type(wF_1.objects) ~= "table"
    end
    if wE_1 then
        oU:Notify("That is not a valid exported config")
        return
    end
    local wD_2 = 0
    for i, v in ipairs(wF_1.objects) do
        if oa(v) then
            wD_2 += 1
        end
    end
    if wD_2 == 0 then
        oU:Notify("No settings in that config matched this script")
        return
    end
    ov.SaveManager_ImportSource:SetValue("")
    local wF_2 = wD_2 == 1 and "" or "s"
    oU:Notify(("Imported %d setting%s"):format(wD_2, wF_2), 6)
end
local function fn743()
    local v9 = {}
    for i, v in ipairs({ oz, ov }) do
        for k, v in pairs(v) do
            local wa = type(v) == "table" and type(v.Type) == "string" and not oF.Ignore[k]
            if wa then
                local wa_1 = nR(k, v)
                if wa_1 then
                    v9[#v9 + 1] = wa_1
                end
            end
        end
    end
    table.sort(v9, function(i_, i0)
        if i_.type ~= i0.type then
            return i_.type < i0.type
        end
        return i_.idx < i0.idx
    end)
    return { objects = v9 }
end
local function fn778(bQ)
    for k, v in bQ do
        if v then
            return true
        end
    end
    return false
end
local function onCopyPayPalLink()
    oR(oY, "Copied PayPal link")
end
local function fn788()
    local releaseCast = ow.releaseCast
    local sE = typeof(releaseCast) ~= "function" or typeof(debug) ~= "table" or typeof(debug.setupvalue) ~= "function"
    if sE then
        return
    end
    pcall(debug.setupvalue, releaseCast, 1, 1)
end
local function fn817(el, em, en)
    return string.format("<b>%s</b> %s %s", el, oE("-", "#5a6070"), oE(em, en))
end
local function onStepped()
    if oU.Unloaded then
        return
    end
    if oz.NoClip and oz.NoClip.Value then
        local u9_1 = nS()
        if u9_1 then
            for i, descendant in ipairs(u9_1:GetDescendants()) do
                local u9_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if u9_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn877()
    if oH() then
        if n7("AutoSell") then
            pcall(nL)
        end
        return false
    end
    local uU = ov.AutoGiveFishSelect and ov.AutoGiveFishSelect.Value
    local uV = uU
    if uU then
        uU = o2[uV]
    end
    local uV_1 = uU
    if not uV_1 then
        return false
    end
    local uU_1 = uV_1.MinKg
    if uV_1.MaxKg > uV_1.MinKg then
        uU_1 = uV_1.MinKg + (uV_1.MaxKg - uV_1.MinKg) * 0.5
    end
    local uW = uV_1.MinScale
    if uV_1.MaxScale > uV_1.MinScale then
        uW = uV_1.MinScale + (uV_1.MaxScale - uV_1.MinScale) * 0.5
    end
    CaughtFish:FireServer(uV_1.Name, uU_1, "", uW, nil)
    return true
end
local function onCopySolanaAddress()
    oR(o3, "Copied Solana address")
end
local function fn903()
    if nF() <= 0 then
        return
    end
    local ua = ov.AutoSellWhen and ov.AutoSellWhen.Value or n6
    local ua_1 = ua == n3 and not oH()
    if ua_1 then
        return
    end
    if (ov.AutoSellMode and ov.AutoSellMode.Value or ob) == n8 then
        ox()
        return
    end
    pcall(function()
        SellInventory:InvokeServer()
    end)
end
local function fn911(iN, iO)
    local Type = iO.Type
    if Type == "Toggle" then
        return { idx = iN, type = "Toggle", value = iO.Value == true }
    elseif Type == "Slider" then
        return { idx = iN, type = "Slider", value = tostring(iO.Value) }
    elseif Type == "Dropdown" then
        return { idx = iN, type = "Dropdown", multi = iO.Multi == true, value = iO.Value }
    elseif Type == "Input" then
        local v3 = iO.Value or ""
        return { idx = iN, type = "Input", text = tostring(v3) }
    elseif Type == "ColorPicker" then
        return { idx = iN, type = "ColorPicker", value = iO.Value:ToHex(), transparency = iO.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = iN,
            type = "KeyPicker",
            mode = iO.Mode,
            key = iO.Value,
            modifiers = iO.Modifiers,
            toggled = iO.Toggled
        }
    else
        return nil
    end
end
local function fn922(ei, ej)
    return string.format('<font color="%s">%s</font>', ej, ei)
end
local function fn930()
    local FishingUI = oD:FindFirstChild("FishingUI")
    local rR = FishingUI and FishingUI:FindFirstChild("Cast")
    if not rR or not rR.Visible then
        return 0
    end
    for i, descendant in ipairs(rR:GetDescendants()) do
        if descendant:IsA("TextLabel") then
            local rR_2 = tonumber(string.match(descendant.Text, "^x([%d%.]+)"))
            if rR_2 then
                return math.clamp(rR_2 - 1, 0, 1)
            end
        end
    end
    local CastTrack = rR:FindFirstChild("CastTrack")
    local rQ_2 = CastTrack and CastTrack:FindFirstChild("Frame")
    if rQ_2 then
        for i, child in ipairs(rQ_2:GetChildren()) do
            local rQ_3 = child:IsA("Frame") and child.AnchorPoint == Vector2.new(0.5, 1)
            if rQ_3 then
                return child.Size.Y.Scale
            end
        end
    end
    return 0
end
local function fn955()
    local sm = nS()
    local sn = nK()
    if not sm or not sn then
        return false
    end
    local Tool = sm:FindFirstChildOfClass("Tool")
    local sm_1 = Tool and Tool:GetAttribute("ToolType") ~= "Fish" and string.find(Tool.Name, "Rod", 1, true)
    if sm_1 then
        return true
    end
    local sm_2 = oA()
    if not sm_2 then
        return false
    end
    sn:EquipTool(sm_2)
    return true
end
local function antiAfkLoop()
    while not oU.Unloaded do
        task.wait(2)
        if oz.AntiAfk.Value then
            local vV = tick() - oK
            local vW = tick() - oI
            if vV >= 300 and vW >= 60 then
                pcall(oh)
            else
                if vV < 300 and vW >= 300 then
                    pcall(oh)
                end
            end
        end
    end
end
local function fn959()
    local ul = oO()
    local um = oc()
    local un = ol()
    for i, v in ipairs(of) do
        if v.Price > 0 and v.Price <= um and v.Price <= ul and not un[v.Name] then
            nY:FireServer(v.Name)
            task.wait(0.25)
            EquipRod:FireServer(v.Name)
            return
        end
    end
end
local function onJumpRequest()
    if oU.Unloaded then
        return
    end
    if oz.InfJump and oz.InfJump.Value then
        local vh_1 = nK()
        if vh_1 then
            vh_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function onCopyUSDTAddress()
    oR(o6, "Copied USDT address")
end
local function fn1000(gk)
    local uw = nJ[gk]
    if not uw then
        return false
    end
    local ux = n5(gk)
    if ux >= uw.Max then
        return false
    end
    local uy = nX(uw, ux)
    local uw_1 = uy <= 0 or oO() < uy
    if uw_1 then
        return false
    end
    nQ:FireServer(gk)
    return true
end
local function fn1003(dQ, dR)
    local tB = os.clock()
    local tD = tB + (dR or 3)
    while true do
        local tB_1 = os.clock() < tD and not oU.Unloaded and n7("AutoPerfectCast")
        if not tB_1 then
            return oG()
        end
        tB = oG()
        if dQ[tB] then
            break
        end
        task.wait(0.03)
    end
    return tB
end
local function autoSellDelayLoop()
    while not oU.Unloaded do
        if n7("AutoSell") then
            pcall(nL)
            local u3 = ov.AutoSellDelay and ov.AutoSellDelay.Value or 0.5
            task.wait(u3)
        else
            task.wait(0.25)
        end
    end
end
local function onRscripts()
    oR(oi, "Copied Rscripts profile to clipboard")
end
local function worker3()
    while not oU.Unloaded do
        task.wait(0.55)
        if n7("AutoBuyRods") then
            pcall(nP)
        end
        local u8 = if n7("AutoBuyUpgrades") then 1 else 0
        if u8 == 1 then
            pcall(nU)
        end
    end
end
local function fn1114()
    local sN_1
    local sM_1
    local sL_1
    local finishCatch = ow.finishCatch
    local sK = typeof(finishCatch) ~= "function" or typeof(debug) ~= "table"
    local sR = if sK then 1 else 0
    local sP = 4028 * sR + 1741 * (1 - sR)
    local sQ = 44 * sR + 955 * (1 - sR)
    if not ((sP * 616 + sQ * 2603 + sP * sQ) % 16777213 == 2773012) then
        sK = typeof(debug.getupvalue) ~= "function"
    end
    if sK then
        return nil
    end
    local FishConfig = require(o8:WaitForChild("FishConfig"))
    local sU = 1
    while sU <= 40 do
        local sV = sU
        sL_1, sN_1, sM_1 = pcall(debug.getupvalue, finishCatch, sV)
        if not sL_1 then
            break
        end
        local sL_3 = sM_1 ~= nil and sM_1 or sN_1
        local sM_3 = type(sL_3) == "string" and FishConfig[sL_3] ~= nil
        if sM_3 then
            return sL_3
        end
        sU += 1
    end
    return nil
end
local function fn1129()
    oR(op, "Copied Discord invite to clipboard")
end
local function fn1159(bM)
    local rA = bM and bM.Value
    if typeof(rA) ~= "table" then
        return {}
    end
    return rA
end
local function autoGiveFishDelayLoop()
    while not oU.Unloaded do
        if n7("AutoGiveFish") then
            pcall(o1)
            local u_ = ov.AutoGiveFishDelay and ov.AutoGiveFishDelay.Value or 0.35
            task.wait(u_)
        else
            task.wait(0.25)
        end
    end
end
CaughtFish = nil
nB = nil
nC = nil
nD = nil
nE = nil
nF = nil
nG = nil
SellInventory = nil
nI = nil
nJ = nil
nK = nil
nL = nil
connection2 = nil
nN = nil
nO = nil
nP = nil
nQ = nil
nR = nil
nS = nil
nT = nil
nU = nil
EquipRod = nil
nW = nil
nX = nil
nY = nil
nZ = nil
n_ = nil
n0 = nil
n1 = nil
connection = nil
n3 = nil
n4 = nil
n5 = nil
n6 = nil
n7 = nil
n8 = nil
n9 = nil
oa = nil
ob = nil
oc = nil
oe = nil
of = nil
og = nil
oh = nil
oi = nil
ol = nil
om = nil
oo = nil
local od, oj
op = nil
ot = nil
ov = nil
ow = nil
ox = nil
oy = nil
oz = nil
oA = nil
oB = nil
oC = nil
oD = nil
oE = nil
oF = nil
oG = nil
oH = nil
oI = nil
oJ = nil
oK = nil
oM = nil
oN = nil
oO = nil
oQ = nil
oR = nil
oS = nil
oT = nil
oU = nil
oV = nil
oW = nil
oX = nil
oY = nil
oZ = nil
o_ = nil
o0 = nil
o1 = nil
o2 = nil
o3 = nil
o4 = nil
o5 = nil
o6 = nil
o7 = nil
o8 = nil
o9 = nil
pa = nil
local oq, CoreGui, oP
oq = nil
CoreGui = nil
oP = nil
local pR, pS, pT
wU_14, o8, wU_31, oZ, oW, oT, oP, CoreGui, oJ, oD = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local wU_44 = 3
repeat
    wU_16 = (wU_44 * 3 + 1) % 4 + 1
    if wU_16 <= 2 then
        if wU_16 <= 1 then
            if wU_44 * 27166673 + 1 + 7 <= wU_44 * 27166673 + 1 + 7 + 2 then
                oZ = game:GetService("UserInputService")
                oW = game:GetService("VirtualUser")
                oT = game:GetService("HttpService")
                oP = game:GetService("GuiService")
            else
                oW = game:GetService("UserInputService")
                oT = game:GetService("VirtualUser")
                oP = game:GetService("HttpService")
                oZ = game:GetService("GuiService")
            end
            wU_44 = (wU_44 + 7) % 16
        else
            wU_1 = (vector.create((wU_44 * 4 + 5) % 11 + 1, (wU_44 * 5 + 4) % 13 + 1, (wU_44 * 7 + 14) % 17 + 1))
            local xK = vector.floor(wU_1) + vector.ceil(wU_1 * -1)
            if vector.dot(xK, xK) == 2 then
                oJ = game:GetService("CoreGui")
                oD = CoreGui.LocalPlayer
                wU_14 = oD:WaitForChild("PlayerGui")
            else
                CoreGui = game:GetService("CoreGui")
                oJ = wU_14.LocalPlayer
                oD = oJ:WaitForChild("PlayerGui")
            end
            wU_44 = (wU_44 + 3) % 16
        end
    elseif wU_16 <= 3 then
        if (oT and oT or (oP or not wU_44)) and (oZ and wU_44 and (oZ and not o8)) or not ((oT and oT or (oP or not wU_44)) and (oZ and wU_44 and (oZ and not o8))) then
            wU_14 = game:GetService("Players")
        else
            oJ = game:GetService("Players")
        end
        wU_44 = (wU_44 + 11) % 16
    else
        wU_16 = {
            "knfuzwex",
            "apybykasgvi",
            "gbdqztsgqs",
            "indrponvtn",
            "zpzeaxfiz",
            "kwpp",
            "dtocxku",
            "wtfkrsqzhhhr",
            "rgwfl",
            "sqalcj",
            "dnwuvyngf",
            "uzsl",
            "ssmvzrqsxr",
            "xaqamtzaeecq",
            "wzegziwrwc"
        }
        if wU_16[(wU_44 * 86 + 9) % 15 + 1] <= wU_16[(wU_44 * 86 + 9) % 15 + 1] then
            o8 = game:GetService("ReplicatedStorage")
            wU_31 = game:GetService("RunService")
        else
            wU_31 = game:GetService("ReplicatedStorage")
            o8 = game:GetService("RunService")
        end
        wU_44 = (wU_44 + 15) % 16
    end
until (wU_44 * 1 + 5) % 16 == 12
if getgenv then
    getgenv().gethui = fns.fn236
    local __OuroborosHoleFishLib = getgenv().__OuroborosHoleFishLib
    wU_44 = __OuroborosHoleFishLib and __OuroborosHoleFishLib.Unload
    if wU_44 then
        pcall(function()
            __OuroborosHoleFishLib:Unload()
        end)
    end
    wU_14 = getgenv()
    wU_44 = getgenv().__OuroborosHoleFishCast
    pT = if wU_44 then 1 else 0
    pR = 785 * pT + 450 * (1 - pT)
    pS = 2857 * pT + 3469 * (1 - pT)
    if not ((pR * 1019 + pS * 2978 + pR * pS) % 16777213 == 11550806) then
        wU_44 = 0
    end
    wU_14.__OuroborosHoleFishCast = wU_44 + 1
end
wU_14 = getgenv and getgenv().__OuroborosHoleFishCast
pcall(fns.fn348)
if setthreadidentity then
    setthreadidentity(8)
end
wU_36, wU_14, nY, EquipRod, nQ, nN, SellInventory, CaughtFish, wU_19, wU_4, wU_1, wU_44, oU, wU_27, oF, oz, ov, op, oi, oe, ob, n8, n6, n3, n0, wU_39, wU_10, wU_25, wU_38, wU_7, nB, wU_34, wU_22, o2 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
wU_16 = 53
repeat
    wU_11 = (wU_16 * 9 + 5) % 14 + 1
    if wU_11 <= 7 then
        if wU_11 <= 4 then
            if wU_11 <= 2 then
                if wU_11 <= 1 then
                    wU_41 = { "jstu", "eivajmrai", "gusiiyqc", "pvdxalnk", "vmmjq", "rztgq", "fhypcpi", "askesl" }
                    if wU_41[(wU_16 * 61 + 47) % 8 + 1] < wU_41[(wU_16 * 61 + 47) % 8 + 1] then
                        oe = "https://discord.gg/ehKVq7pf7v"
                        op = "https://rscripts.net/@Ouroboros"
                        oi = 0.87
                        n8 = "All"
                        ob = "Filtered"
                    else
                        op = "https://discord.gg/ehKVq7pf7v"
                        oi = "https://rscripts.net/@Ouroboros"
                        oe = 0.87
                        ob = "All"
                        n8 = "Filtered"
                    end
                    wU_16 = (wU_16 + 95) % 112
                else
                    wU_41 = (vector.create((wU_16 * 6 + 7) % 11 + 1, (wU_16 * 8 + 2) % 13 + 1, (wU_16 * 13 + 4) % 17 + 1))
                    wU_28 = (vector.create((wU_16 * 7 + 7) % 11 + 1, (wU_16 * 8 + 4) % 13 + 1, (wU_16 * 6 + 9) % 17 + 1))
                    wU_13 = (vector.create((wU_16 * 3 + 5) % 11 + 1, (wU_16 * 2 + 8) % 13 + 1, (wU_16 * 6 + 3) % 17 + 1))
                    if vector.dot(vector.cross(wU_41, wU_28), wU_13) == vector.dot(vector.cross(wU_28, wU_13), wU_41) then
                        n6 = "Always"
                        n3 = "Bag Full"
                        n0 = "All"
                    else
                        n0 = "Always"
                        n6 = "Bag Full"
                        n3 = "All"
                    end
                    wU_16 = (wU_16 + 25) % 112
                end
            elseif wU_11 <= 3 then
                if (nQ and nY and (not nY or not nQ) or (not nY or not nY or not nQ and not nY)) and (not nQ and not nY and (not nY and not nQ) or (not nY and not nY or (not nQ or nQ))) or not ((nQ and nY and (not nY or not nQ) or (not nY or not nY or not nQ and not nY)) and (not nQ and not nY and (not nY and not nQ) or (not nY and not nY or (not nQ or nQ)))) then
                    wU_39 = "Hole Size"
                    wU_10 = "Sell Value"
                    wU_25 = "Backpack"
                    wU_38 = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Secret" }
                    wU_7 = { "Normal", "Big", "Huge" }
                else
                    wU_25 = "Hole Size"
                    wU_39 = "Sell Value"
                    wU_10 = "Backpack"
                    wU_7 = { "Rare", "Epic", "Secret", "Uncommon", "Common", "Mythic", "Legendary" }
                    wU_38 = { "Big", "Huge", "Normal" }
                end
                wU_16 = (wU_16 + 53) % 112
            else
                wU_41 = (vector.create((wU_16 * 6 + 8) % 11 + 1, (wU_16 * 4 + 5) % 13 + 1, (wU_16 * 7 + 16) % 17 + 1))
                local x9 = vector.floor(wU_41) + vector.ceil(wU_41 * -1)
                if vector.dot(x9, x9) == 0 then
                    nB = { Common = 1, Uncommon = 2, Rare = 3, Epic = 4, Legendary = 5, Mythic = 6, Secret = 7 }
                    wU_34 = {}
                else
                    wU_34 = { Secret = 7, Common = 1, Legendary = 5, Rare = 3, Mythic = 6, Uncommon = 2, Epic = 4 }
                    nB = {}
                end
                wU_16 = (wU_16 + 11) % 112
            end
        elseif wU_11 <= 6 then
            if wU_11 <= 5 then
                if wU_16 * 68614341 + 9 + 2 >= wU_16 * 68614341 + 9 + 2 + 1 then
                    wU_10 = {}
                else
                    wU_22 = {}
                end
                wU_16 = (wU_16 + 39) % 112
            else
                if (wU_16 * 3 + 2) * 17 % 4 == ((wU_16 * 3 + 2) * 17 + 12) % 4 then
                    o2 = {}
                else
                    wU_36 = {}
                end
                wU_16 = (wU_16 + 11) % 112
            end
        else
            wU_41 = {
                "lvlstjhctqt",
                "zzlonsokt",
                "kbyooth",
                "nkjykcdm",
                "hcwuxdxga",
                "tzjurzvcgg",
                "wsywlj",
                "btsvo",
                "bgmhskghex",
                "huxwf",
                "btqdbmdz",
                "rluan"
            }
            local x_ = wU_16
            wU_28 = wU_41[x_ % 12 + 1]
            if wU_28:len() <= wU_28:reverse():rep(x_ % 3 + 2):len() then
                wU_36 = "Hole Fishing"
            else
                wU_19 = "Hole Fishing"
            end
            wU_16 = (wU_16 + 11) % 112
        end
    elseif wU_11 <= 11 then
        if wU_11 <= 9 then
            if wU_11 <= 8 then
                local xT = bit32.rrotate(bit32.bxor(bit32.lrotate(wU_16, 10), string.byte(tostring(oU))), 9)
                if bit32.bxor(bit32.lrotate(bit32.bxor(xT, 3775202582), 22), 1169703233) == bit32.lrotate(xT, 22) then
                    wU_14 = o8:WaitForChild("Remotes")
                else
                    o8 = wU_14:WaitForChild("Remotes")
                end
                wU_16 = (wU_16 + 67) % 112
            else
                wU_41 = {
                    "rohba",
                    "kciotwqgl",
                    "asxaw",
                    "kfgevr",
                    "xtre",
                    "ejrcoecdm",
                    "mjnicrtnzc",
                    "wxnfyxbr",
                    "nocoht",
                    "mmnlz",
                    "fvkjeek"
                }
                local xM = wU_16
                wU_28 = wU_41[xM % 11 + 1]
                if wU_28:len() >= wU_28:gsub("(.)", "%1%1", xM % 3 % 2 + 1):len() then
                    wU_14 = EquipRod:WaitForChild("BuyRod")
                    nY = EquipRod:WaitForChild("EquipRod")
                else
                    nY = wU_14:WaitForChild("BuyRod")
                    EquipRod = wU_14:WaitForChild("EquipRod")
                end
                wU_16 = (wU_16 + 39) % 112
            end
        elseif wU_11 <= 10 then
            wU_41 = (vector.create((wU_16 * 6 + 1) % 11 + 1, (wU_16 * 6 + 4) % 13 + 1, (wU_16 * 9 + 12) % 17 + 1))
            wU_28 = (vector.create((wU_16 * 7 + 5) % 11 + 1, (wU_16 * 6 + 8) % 13 + 1, (wU_16 * 2 + 8) % 17 + 1))
            local xF = vector.cross(wU_41, wU_28)
            local xG = vector.dot(wU_41, wU_28)
            if vector.dot(xF, xF) + xG * xG == vector.dot(wU_41, wU_41) * vector.dot(wU_28, wU_28) then
                nQ = wU_14:WaitForChild("BuyUpgrade")
                nN = wU_14:WaitForChild("SellHeldFish")
                SellInventory = wU_14:WaitForChild("SellInventory")
            else
                nN = SellInventory:WaitForChild("BuyUpgrade")
                wU_14 = SellInventory:WaitForChild("SellHeldFish")
                nQ = SellInventory:WaitForChild("SellInventory")
            end
            wU_16 = (wU_16 + 11) % 112
        else
            wU_41 = {
                "lwekekgm",
                "gwcvfkbpazz",
                "atws",
                "tisbpcpnn",
                "cjlqufcc",
                "nyjvumxvuy",
                "beejy",
                "jdngnf",
                "gxlmyd",
                "opwfa",
                "tdhwxent",
                "bedvqzvskq",
                "fzdkjkaol",
                "hwxdhr",
                "eaqvi"
            }
            if wU_41[(wU_16 * 21 + 59) % 15 + 1] < wU_41[(wU_16 * 21 + 59) % 15 + 1] then
                wU_4 = o8:WaitForChild("CaughtFish")
                wU_14 = require(CaughtFish:WaitForChild("RodsConfig"))
                wU_19 = require(CaughtFish:WaitForChild("UpgradesConfig"))
            else
                CaughtFish = wU_14:WaitForChild("CaughtFish")
                wU_19 = require(o8:WaitForChild("RodsConfig"))
                wU_4 = require(o8:WaitForChild("UpgradesConfig"))
            end
            wU_16 = (wU_16 + 11) % 112
        end
    elseif wU_11 <= 13 then
        if wU_11 <= 12 then
            local yd = bit32.rrotate(bit32.bxor(bit32.lrotate(wU_16, 14), string.byte(tostring(wU_36))), 4)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(yd, 888944471), 1469473079), (bit32.bxor(bit32.band(yd, 3406022824), 1692413050))), 1469473079), 1692413050) == yd then
                wU_1 = require(o8:WaitForChild("FishConfig"))
            else
                o8 = require(wU_1:WaitForChild("FishConfig"))
            end
            wU_16 = (wU_16 + 11) % 112
        else
            if wU_16 * 128508907 + 4 + 4 <= wU_16 * 128508907 + 4 + 4 + 3 then
                wU_44 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
            else
                wU_22 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
            end
            wU_16 = (wU_16 + 39) % 112
        end
    else
        local xX = bit32.rrotate(bit32.bxor(bit32.lrotate(wU_16, 7), string.byte(tostring(wU_27))), 31)
        if bit32.bxor(bit32.lrotate(bit32.bxor(xX, 3041276416), 4), 1415782411) == bit32.lrotate(xX, 4) then
            oU = loadstring(game:HttpGet(wU_44 .. "Library.lua"))()
            pcall(fn675)
            wU_27 = loadstring(game:HttpGet(wU_44 .. "addons/ThemeManager.lua"))()
            oF = loadstring(game:HttpGet(wU_44 .. "addons/SaveManager.lua"))()
            oz = oU.Toggles
            ov = oU.Options
        else
            wU_44 = loadstring(game:HttpGet(oF .. "Library.lua"))()
            pcall(fn675)
            oU = loadstring(game:HttpGet(oF .. "addons/ThemeManager.lua"))()
            ov = loadstring(game:HttpGet(oF .. "addons/SaveManager.lua"))()
            wU_27 = wU_44.Toggles
            oz = wU_44.Options
        end
        wU_16 = (wU_16 + 81) % 112
    end
until (wU_16 * 67 + 49) % 112 == 72
for k, v in pairs(wU_1) do
    wU_14 = #wU_34 + 1
    wU_44 = v.rarity or "Common"
    wU_16 = v.minKg or 1
    wU_1 = v.maxKg or 1
    wU_11 = v.minScale or 1
    wU_41 = v.maxScale or 1
    wU_34[wU_14] = { Name = k, Rarity = wU_44, MinKg = wU_16, MaxKg = wU_1, MinScale = wU_11, MaxScale = wU_41 }
end
wU_28 = 1
repeat
    wU_14 = {
        "nuiadvkz",
        "pqjrky",
        "plrnv",
        "bllfzqgsd",
        "oxyszmwaceg",
        "kkmhqiy",
        "okjuaworncx",
        "trjopusrmjj",
        "akxwmmdgkj"
    }
    local xE = wU_28
    wU_44 = wU_14[xE % 9 + 1]
    if wU_44:len() <= wU_44:reverse():rep(xE % 3 + 2):len() then
        table.sort(wU_34, fn648)
    else
        table.sort(wU_34, fn648)
    end
    wU_28 = (wU_28 + 1) % 8
until (wU_28 * 3 + 4) % 8 == 2
for i, v in ipairs(wU_34) do
    wU_14 = v.Name .. " | " .. v.Rarity
    wU_22[#wU_22 + 1] = wU_14
    o2[wU_14] = v
end
wU_14 = {}
of = {}
for k, v in pairs(wU_19) do
    wU_44 = tonumber(k) or 0
    wU_16 = wU_44
    wU_44 = #of + 1
    wU_1 = v.name
    wU_34 = v.price or 0
    wU_19 = v.maxKg or 0
    wU_11 = v.reel or 1
    of[wU_44] = { Id = wU_16, Name = wU_1, Price = wU_34, MaxKg = wU_19, Reel = wU_11 }
end
wU_1 = 3
repeat
    if (wU_1 * 2 + 4) * 4 % 3 == ((wU_1 * 2 + 4) * 4 + 6) % 3 then
        table.sort(of, fn642)
    else
        table.sort(of, fn642)
    end
    wU_1 = (wU_1 + 0) % 4
until (wU_1 * 3 + 3) % 4 == 0
for i, v in ipairs(of) do
    wU_14[#wU_14 + 1] = v.Name
end
nO, nJ, nD = nil, nil, nil
wU_44 = 1
repeat
    wU_16 = (vector.create((wU_44 * 7 + 7) % 11 + 1, (wU_44 * 1 + 10) % 13 + 1, (wU_44 * 6 + 7) % 17 + 1))
    wU_1 = (vector.create((wU_44 * 5 + 6) % 11 + 1, (wU_44 * 4 + 3) % 13 + 1, (wU_44 * 15 + 7) % 17 + 1))
    wU_34 = (vector.create((wU_44 * 4 + 5) % 11 + 1, (wU_44 * 2 + 8) % 13 + 1, (wU_44 * 15 + 13) % 17 + 1))
    wU_19 = (vector.create((wU_44 * 3 + 6) % 11 + 1, (wU_44 * 3 + 7) % 13 + 1, (wU_44 * 6 + 16) % 17 + 1))
    if vector.dot(vector.cross(wU_16, wU_1), (vector.cross(wU_34, wU_19))) == vector.dot(wU_16, wU_34) * vector.dot(wU_1, wU_19) - vector.dot(wU_16, wU_19) * vector.dot(wU_1, wU_34) + 2 then
        nD = {}
        wU_39 = {}
        nO = { [wU_25] = "Sell", [wU_10] = "Bag", [nJ] = "Hole" }
    else
        nO = {}
        nJ = {}
        nD = { [wU_39] = "Hole", [wU_10] = "Sell", [wU_25] = "Bag" }
    end
    wU_44 = (wU_44 + 5) % 8
until (wU_44 * 5 + 6) % 8 == 4
for k, v in pairs(wU_4) do
    wU_44 = tonumber(k) or 0
    wU_16 = v.key
    wU_1 = v.name
    wU_34 = v.max or 0
    wU_19 = v.baseCost or 0
    wU_4 = v.costGrowth or 1
    wU_11 = {
        Id = wU_44,
        Key = wU_16,
        Name = wU_1,
        Max = wU_34,
        BaseCost = wU_19,
        CostGrowth = wU_4,
        Costs = v.costs
    }
    nO[#nO + 1] = wU_11
    nJ[wU_11.Key] = wU_11
end
wU_44 = 1
repeat
    wU_16 = { "xglo", "bhibrlgsg", "swjtk", "frkhrhl", "dprnn", "nzrspxygih", "mig", "snujwar", "syvwdpqsqi" }
    local x1 = wU_44
    wU_1 = wU_16[x1 % 9 + 1]
    if wU_1:len() >= wU_1:gsub("(.)", "%1%1", x1 % 3 % 2 + 1):len() then
        table.sort(nO, fns.fn466)
    else
        table.sort(nO, fns.fn466)
    end
    wU_44 = (wU_44 + 2) % 4
until (wU_44 * 1 + 2) % 4 == 1
ow, oq, oj, oR, oC, n7, nS, nK, o4, oO, ol, n5, nX, nF, oH, om, nT, nG, o_, oM, nZ, oA, nC, oG, og, n1, o7, oQ, n4, oS, o5, ot = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
oR = fns.fn433
oC = fn1129
wU_34 = fns.fn176
n7 = fns.fn151
nS = fns.fn404
nK = fns.fn318
o4 = fns.fn233
oO = fns.fn503
ol = fns.fn110
n5 = fn601
nX = fns.fn50
nF = fns.fn521
oH = fns.fn7
om = fns.fn446
nT = fns.fn312
nG = fn1159
o_ = fn778
oM = fns.fn57
nZ = fn930
oA = fns.fn86
nC = fn955
oG = fns.fn58
ow = { startCharge = nil, releaseCast = nil, finishCatch = nil, rod = nil }
oq = {}
oj = false
og = fns.fn519
n1 = fns.fn262
o7 = fn788
oQ = fn1114
n4 = fn547
oS = function(du)
    local tj_1
    local ti_1
    if typeof(getconnections) ~= "function" then
        return
    end
    if du then
        for i, v in ipairs(oq) do
            local tr = v
            pcall(function()
                tr:Enable()
            end)
        end
        oq = {}
        oj = false
        return
    end
    if oj then
        return
    end
    oj = true
    ti_1, tj_1 = pcall(getconnections, oZ.InputEnded)
    local tk = not ti_1 or typeof(tj_1) ~= "table"
    if tk then
        return
    end
    for i, v in ipairs(tj_1) do
        local th
        local tA = v
        local Function = tA.Function
        if not (typeof(Function) ~= "function") then
            th = false
            pcall(function()
                local td = 1
                while td <= 25 do
                    local tf = td
                    local s6 = debug.getconstant(Function, tf)
                    if s6 == "TutNoFish" or s6 == "ButtonR2" or s6 == "charging" then
                        th = true
                        break
                    end
                    td += 1
                end
            end)
            local ti_2 = th and pcall(function()
                tA:Disable()
            end)
            if ti_2 then
                oq[#oq + 1] = tA
            end
        end
    end
end
o5 = fn1003
ot = fn549
wU_1 = oU:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = op, Copyable = true }, "|", wU_36 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
wU_19 = {
    Info = wU_1:AddTab("Info", "info"),
    Main = wU_1:AddTab("Main", "fish"),
    Player = wU_1:AddTab("Player", "person-standing"),
    Settings = wU_1:AddTab("Settings", "settings")
}
for k, v in wU_19 do
    wU_34(v)
end
wU_41, wU_11, n_, wU_4, nW, wU_28, o0, oX, wU_1, oE, oo = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
wU_44 = 36
repeat
    wU_34 = (wU_44 * 4 + 1) % 9 + 1
    if wU_34 <= 5 then
        if wU_34 <= 3 then
            if wU_34 <= 2 then
                if wU_34 <= 1 then
                    wU_13 = { "atauf", "wljgzkgrom", "gggnng", "nexejnhqww", "eldvtsdu", "plcdn", "znoe", "ukinisgv" }
                    local x8 = wU_44
                    wU_42 = wU_13[x8 % 8 + 1]
                    if wU_42:len() >= wU_42:gsub("(.)", "%1%1", x8 % 3 % 2 + 1):len() then
                        oX = #wU_1 > 18
                    else
                        wU_1 = #oX > 18
                    end
                    wU_44 = (wU_44 + 16) % 72
                else
                    wU_13 = (vector.create((wU_44 * 6 + 4) % 11 + 1, (wU_44 * 5 + 3) % 13 + 1, (wU_44 * 1 + 10) % 17 + 1))
                    local ya = vector.floor(wU_13) + vector.ceil(wU_13 * -1)
                    if vector.dot(ya, ya) == 1 then
                        oo = fn922
                    else
                        oE = fn922
                    end
                    wU_44 = (wU_44 + 43) % 72
                end
            else
                if wU_44 * 105848389 + 7 + 2 <= wU_44 * 105848389 + 7 + 2 + 6 then
                    oo = fn817
                else
                    nW = fn817
                end
                wU_44 = (wU_44 + 52) % 72
            end
        elseif wU_34 <= 4 then
            wU_13 = (vector.create((wU_44 * 6 + 7) % 11 + 1, (wU_44 * 3 + 9) % 13 + 1, (wU_44 * 2 + 7) % 17 + 1))
            wU_42 = (vector.create((wU_44 * 1 + 6) % 11 + 1, (wU_44 * 3 + 1) % 13 + 1, (wU_44 * 14 + 9) % 17 + 1))
            wU_30 = (vector.create((wU_44 * 5 + 5) % 5 + 1, (wU_44 * 5 + 5) % 7 + 1, (wU_44 * 5 + 5) % 9 + 1))
            if math.abs((vector.angle(wU_13, wU_42, wU_30))) - math.abs((vector.angle(wU_42, wU_13, wU_30))) == 0 then
                wU_41 = "#7fd47f"
            end
            wU_44 = (wU_44 + 61) % 72
        else
            wU_13 = { "jgponu", "nstwrc", "snq", "fkbeqjcv", "hadslrwt", "dxmnpbcmog", "jrkgoei" }
            local xS = wU_44
            wU_42 = wU_13[xS % 7 + 1]
            if wU_42:len() <= wU_42:reverse():rep(xS % 3 + 2):len() then
                wU_11 = "#6ec1ff"
            end
            wU_44 = (wU_44 + 61) % 72
        end
    elseif wU_34 <= 7 then
        if wU_34 <= 6 then
            if (wU_44 * 3 + 1) * 13 % 4 == ((wU_44 * 3 + 1) * 13 + 8) % 4 then
                n_ = "#e8a34d"
            else
                o0 = "#e8a34d"
            end
            wU_44 = (wU_44 + 43) % 72
        else
            wU_13 = {
                "tmwkxyvafedx",
                "zjkbeq",
                "fdd",
                "ogzyroeb",
                "dvclzhwlgmua",
                "ppkiscvfmbfi",
                "ayogmghp",
                "def",
                "ufls",
                "niloiyndx",
                "djsxtblrnk",
                "rhwbbjxdecj",
                "wmkmmkkx",
                "cuuuxrf",
                "vdexwfwkpdm",
                "aiwl"
            }
            if wU_13[(wU_44 * 63 + 73) % 16 + 1] < wU_13[(wU_44 * 63 + 73) % 16 + 1] then
                wU_11 = "#8b93a3"
            else
                wU_4 = "#8b93a3"
            end
            wU_44 = (wU_44 + 7) % 72
        end
    elseif wU_34 <= 8 then
        wU_34 = (vector.create((wU_44 * 2 + 6) % 11 + 1, (wU_44 * 8 + 2) % 13 + 1, (wU_44 * 14 + 4) % 17 + 1))
        wU_13 = (vector.create((wU_44 * 4 + 2) % 11 + 1, (wU_44 * 8 + 4) % 13 + 1, (wU_44 * 5 + 13) % 17 + 1))
        wU_42 = (vector.create((wU_44 * 2 + 1) % 11 + 1, (wU_44 * 4 + 2) % 13 + 1, (wU_44 * 9 + 9) % 17 + 1))
        wU_30 = (vector.create((wU_44 * 4 + 9) % 11 + 1, (wU_44 * 5 + 5) % 13 + 1, (wU_44 * 11 + 11) % 17 + 1))
        if vector.dot(vector.cross(wU_34, wU_13), (vector.cross(wU_42, wU_30))) == vector.dot(wU_34, wU_42) * vector.dot(wU_13, wU_30) - vector.dot(wU_34, wU_30) * vector.dot(wU_13, wU_42) then
            nW = "Unknown"
            pcall(fns.fn26)
            wU_16 = wU_19.Info:AddLeftGroupbox("Account", "circle-user")
            wU_16:AddLabel(oo("User", oJ.Name, wU_41), true)
            wU_16:AddLabel(oo("Status", "Keyless", wU_41), true)
            wU_16:AddLabel(oo("Executor", nW, wU_41), true)
            wU_28 = wU_19.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            wU_28:AddLabel(oE(wU_36 .. " [" .. tostring(game.PlaceId) .. "]", wU_11), true)
            wU_28:AddLabel(oo("Place ID", tostring(game.PlaceId), wU_11), true)
            o0 = wU_28:AddLabel(oo("Session time", "0s", n_), true)
        else
            pcall(fns.fn26)
            oo = nW.Info:AddLeftGroupbox("Account", "circle-user")
            oo:AddLabel(n_("User", o0.Name, oE), true)
            oo:AddLabel(n_("Status", "Keyless", oE), true)
            oo:AddLabel(n_("Executor", "Unknown", oE), true)
            wU_11 = nW.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            wU_11:AddLabel(wU_28(wU_41 .. " [" .. tostring(game.PlaceId) .. "]", oJ), true)
            wU_11:AddLabel(n_("Place ID", tostring(game.PlaceId), oJ), true)
            wU_19 = wU_11:AddLabel(n_("Session time", "0s", wU_36), true)
        end
        wU_44 = (wU_44 + 16) % 72
    else
        if wU_44 * 115838673 + 10 + 1 >= wU_44 * 115838673 + 10 + 1 + 1 then
            nW = tostring(game.JobId)
        else
            oX = tostring(game.JobId)
        end
        wU_44 = (wU_44 + 61) % 72
    end
until (wU_44 * 53 + 5) % 72 == 41
if wU_1 then
    wU_44 = 7
    repeat
        if (wU_44 * 3 + 6) * 9 % 4 == ((wU_44 * 3 + 6) * 9 + 4) % 4 then
            wU_1 = string.sub(oX, 1, 18) .. "..."
        else
            oX = string.sub(wU_1, 1, 18) .. "..."
        end
        wU_44 = (wU_44 + 7) % 8
    until (wU_44 * 1 + 3) % 8 == 1
end
wU_44 = wU_1
pT = if wU_44 then 1 else 0
pR = 3551 * pT + 777 * (1 - pT)
pS = 3890 * pT + 3585 * (1 - pT)
if not ((pR * 23 + pS * 2226 + pR * pS) % 16777213 == 5776990) then
    wU_44 = oX
end
oB, nI, nE, pa, o6, o3, oY, oV = nil, nil, nil, nil, nil, nil, nil, nil
local wU_23 = wU_44
wU_28:AddLabel(oo("Server", wU_23, wU_4), true)
wU_28:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
oB = os.clock()
task.spawn(fns.worker)
wU_13 = wU_19.Info:AddRightGroupbox("Scripts", "package")
wU_13:AddLabel(oE("Included in this hub", wU_4), true)
wU_13:AddLabel(oE(wU_36, wU_11), true)
wU_34 = wU_19.Info:AddRightGroupbox("Features", "list")
wU_34:AddLabel(oE("Auto Perfect Cast", wU_11), true)
wU_34:AddLabel(oE("Auto Give Fish", wU_41), true)
wU_34:AddLabel(oE("Auto Sell", n_), true)
wU_34:AddLabel(oE("Auto Buy Rods", wU_4), true)
wU_34:AddLabel(oE("Auto Buy Upgrades", wU_4), true)
wU_1 = wU_19.Info:AddRightGroupbox("Socials", "link")
wU_1:AddButton({ Text = "Discord", Func = oC })
wU_1:AddButton({ Text = "Rscripts", Func = onRscripts })
wU_16 = wU_19.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
wU_16:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
wU_16:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
wU_16:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
wU_16:AddButton({ Text = "Copy Discord Invite", Func = oC })
nI = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
nE = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
pa = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
o6 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
o3 = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
oY = "https://paypal.me/TheTruckerGOD"
oV = "https://venmo.com/u/miserablemusic"
local wU_6 = "#345d9d"
local wU_35 = "#f7931a"
local wU_5 = "#627eea"
local wU_18 = "#26a17b"
local wU_45 = "#14f195"
local wU_17 = "#0070ba"
wU_30 = "#008cff"
wU_42 = wU_19.Info:AddRightGroupbox("Donations", "heart")
wU_42:AddLabel(oE("All donations are optional but appreciated.", n_), true)
wU_42:AddLabel(oE("If you donate you get a special role, just PING after you donate.", wU_41), true)
wU_42:AddDivider()
wU_42:AddLabel(oE("LTC / Litecoin", wU_6), true)
wU_42:AddButton({ Text = "Copy Litecoin Address", Func = fns.onCopyLitecoinAddress })
wU_42:AddLabel(oE("BTC / Bitcoin", wU_35), true)
wU_42:AddButton({ Text = "Copy Bitcoin Address", Func = fns.onCopyBitcoinAddress })
wU_42:AddLabel(oE("ETH / Ethereum", wU_5), true)
wU_42:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
wU_42:AddLabel(oE("USDT", wU_18), true)
wU_42:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
wU_42:AddLabel(oE("Solana", wU_45), true)
wU_42:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
wU_42:AddLabel(oE("PayPal", wU_17), true)
wU_42:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
wU_42:AddLabel(oE("Venmo", wU_30), true)
wU_42:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
wU_42:AddDivider()
wU_42:AddLabel(oE("Don't have any of the listed currencies but still wanna donate?", wU_4), true)
wU_42:AddLabel(oE("DM me and we'll work something out.", wU_11), true)
local FaqGroup = wU_19.Info:AddRightGroupbox("FAQ", "circle-help")
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
local FishingGroup = wU_19.Main:AddLeftGroupbox("Fishing", "fish")
FishingGroup:AddToggle("AutoPerfectCast", { Text = "Auto Perfect Cast", Default = false })
oz.AutoPerfectCast:OnChanged(fns.fn395)
local GiveFishGroup = wU_19.Main:AddRightGroupbox("Give Fish", "gift")
GiveFishGroup:AddToggle("AutoGiveFish", { Text = "Auto Give Fish", Default = false })
wU_44 = #wU_22 > 0 and wU_22
wU_16 = { "Goldfish | Common" }
wU_1 = wU_44 or wU_16
wU_44 = wU_22[1] or "Goldfish | Common"
GiveFishGroup:AddDropdown("AutoGiveFishSelect", { Text = "Fish", Values = wU_1, Default = wU_44, Searchable = true, Expandable = true })
GiveFishGroup:AddSlider("AutoGiveFishDelay", { Text = "Give Delay", Default = 0.35, Min = 0.1, Max = 5, Rounding = 2 })
wU_34 = wU_19.Main:AddLeftGroupbox("Shop", "shopping-cart")
wU_34:AddToggle("AutoBuyRods", { Text = "Auto Buy Rods", Default = false })
wU_44 = #wU_14 > 0 and wU_14
wU_16 = { "Wooden Rod" }
wU_1 = wU_44 or wU_16
wU_44 = wU_14[#wU_14] or "Wooden Rod"
oN, oK, oI, connection, connection2, ox, nL, oc, nP, oy, nU, o1, n9, oh, od, nR, o9, oa = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
wU_34:AddDropdown("AutoBuyRodMax", { Text = "Max Rod", Values = wU_1, Default = wU_44 })
wU_34:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
wU_34:AddDropdown("AutoBuyUpgradeTarget", { Text = "Upgrade", Values = { n0, wU_39, wU_10, wU_25 }, Default = n0 })
wU_16 = wU_19.Main:AddRightGroupbox("Selling", "tag")
wU_16:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
wU_16:AddDropdown("AutoSellMode", { Text = "Sell Mode", Values = { ob, n8 }, Default = ob })
wU_16:AddDropdown("AutoSellWhen", { Text = "Sell When", Values = { n6, n3 }, Default = n3 })
wU_16:AddDropdown("AutoSellRarities", {
    Text = "Rarities",
    Values = wU_38,
    Default = { "Common", "Uncommon", "Rare" },
    Multi = true,
    SelectAllButtons = true,
    Expandable = true
})
wU_16:AddDropdown("AutoSellVariants", {
    Text = "Variants",
    Values = wU_7,
    Default = { "Normal", "Big", "Huge" },
    Multi = true,
    SelectAllButtons = true
})
wU_16:AddSlider("AutoSellDelay", { Text = "Sell Delay", Default = 0.5, Min = 0.2, Max = 10, Rounding = 1 })
ox = fns.fn504
nL = fn903
oc = fns.fn507
nP = fn959
oy = fn1000
nU = fns.fn480
task.spawn(fns.worker2)
o1 = fn877
task.spawn(autoGiveFishDelayLoop)
task.spawn(autoSellDelayLoop)
task.spawn(worker3)
wU_22 = wU_19.Player:AddLeftGroupbox("Movement", "footprints")
wU_22:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
wU_22:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
wU_22:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
wU_22:AddToggle("NoClip", { Text = "NoClip", Default = false })
wU_22:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
wU_36 = wU_19.Player:AddRightGroupbox("Fly", "feather")
wU_36:AddToggle("Fly", { Text = "Fly", Default = false })
wU_36:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
oN = workspace.CurrentCamera
wU_31.Stepped:Connect(onStepped)
oZ.JumpRequest:Connect(onJumpRequest)
wU_31.RenderStepped:Connect(fns.onRenderStepped)
oz.Fly:OnChanged(fns.fn84)
oz.WalkSpeedEnabled:OnChanged(fns.fn257)
n9 = function(hQ)
    pcall(function()
        oP:SetGameplayPausedNotificationEnabled(not hQ)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not hQ
        end
    end)
    if not hQ then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(oJ, "GameplayPaused", false)
        else
            oJ.GameplayPaused = false
        end
    end)
end
oz.AntiGameplayPause:OnChanged(fns.fn330)
task.spawn(antiGameplayPauseLoop)
wU_4 = wU_19.Settings:AddLeftGroupbox("Menu")
if (connection or oc) and (o9 or not oc) or (not od or connection) and (connection or not o9) or (oc and not o9 or not od and connection or not oc and connection and (connection or od)) or not ((connection or oc) and (o9 or not oc) or (not od or connection) and (connection or not o9) or (oc and not o9 or not od and connection or not oc and connection and (connection or od))) then
    wU_4:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    oU.ToggleKeybind = ov.MenuKeybind
    oK = tick()
    oI = tick()
    pcall(function()
        for i, v in ipairs(getconnections(oJ.Idled)) do
            local vP = v
            pcall(function()
                vP:Disable()
            end)
        end
    end)
    oh = fns.fn178
else
    oh:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { NoUI = true, Text = "Menu keybind", Default = "RightShift" })
    wU_4.ToggleKeybind = oK.MenuKeybind
    ov = tick()
    oU = tick()
    pcall(function()
        for i, v in ipairs(getconnections(oJ.Idled)) do
            local vP = v
            pcall(function()
                vP:Disable()
            end)
        end
    end)
    oI = fns.fn178
end
connection = oZ.InputBegan:Connect(fns.onInputBegan)
connection2 = oZ.InputChanged:Connect(onInputChanged)
wU_4:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
wU_4:AddButton("Unload", fns.onUnload)
task.spawn(antiAfkLoop)
oU:OnUnload(fns.fn216)
wU_27:SetLibrary(oU)
wU_27:SetFolder("OuroborosHub")
wU_27:SaveDefault("Evil Hello Kitty")
wU_27:ApplyToTab(wU_19.Settings)
wU_27:LoadDefault()
oF:SetLibrary(oU)
oF:IgnoreThemeSettings()
oF:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
oF:SetFolder("OuroborosHub/HoleFishing")
wU_14 = oF:BuildConfigSection(wU_19.Settings)
od = fns.fn310
nR = fn911
o9 = fn743
oa = function(i2)
    local wt
    wt = nil
    local wu = type(i2) ~= "table" or type(i2.idx) ~= "string" or type(i2.type) ~= "string"
    local wy = if wu then 1 else 0
    local ww = 3502 * wy + 2429 * (1 - wy)
    local wx = 1679 * wy + 1462 * (1 - wy)
    if not ((ww * 962 + wx * 1568 + ww * wx) % 16777213 == 11881454) then
        wu = oF.Ignore[i2.idx]
    end
    if wu then
        return false
    end
    wt = od(i2.type, i2.idx)
    if not wt then
        return false
    end
    local wu_1 = pcall(function()
        if i2.type == "Input" then
            if type(i2.text) ~= "string" then
                return
            end
            wt:SetValue(i2.text)
        elseif i2.type == "ColorPicker" then
            wt:SetValueRGB(Color3.fromHex(i2.value), i2.transparency)
        elseif i2.type == "KeyPicker" then
            wt:SetValue({ i2.key, i2.mode, i2.modifiers })
            if i2.mode == "Toggle" and i2.toggled ~= nil then
                wt.Toggled = i2.toggled
                wt:Update()
            end
        else
            wt:SetValue(i2.value)
        end
    end)
    return wu_1
end
wU_14:AddDivider()
wU_14:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
wU_14:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
wU_14:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
oF:LoadAutoloadConfig()
