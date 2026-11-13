local fns = {}
local xa_12, xa_25
local ot
local pa
local oS
local VirtualUser
local oz
local pg
local Final
local pF
local pm
local oi
local o3
local oL
local SetAutoRoll
local oR
local RequestRoll
local Workspace
local oX
local oE
local oh
local o2
local pK
local oK
local Library
local op
local Options
local oQ
local px
local ox
local pe
local oW
local og
local o1
local pJ
local oJ
local o7
local oP
local pw
local connection2
local Toggles
local oV
local UserInputService
local oC
local SaveManager
local connection3
local o0
local pI
local oI
local pp
local om
local o6
local oO
local pc
local oU
local pB
local oB
local pi
local oe
local o_
local oH
local AutoCollectToggleEvent
local oN
local pu
local ou
local PlotPlayerCollectRequest
local oT
local oA
local oZ
local pG
local Label
local oj
local o4
local oM
local HttpService
function fns.fn3(b3)
    local sb = oR(b3)
    local sc = sb and sb:FindFirstChild("ProxPart")
    local sb_1 = sc
    if sc then
        sc = sb_1:FindFirstChildWhichIsA("ProximityPrompt")
    end
    return sc, sb_1
end
function fns.fn10()
    local sI = oQ()
    if not sI then
        return
    end
    local Upgrades = sI:FindFirstChild("Upgrades")
    if not Upgrades then
        return
    end
    for i, descendant in ipairs(Upgrades:GetDescendants()) do
        local attr = descendant:GetAttribute("UpgradePath")
        if attr then
            local UpgradeName = descendant:FindFirstChild("UpgradeName", true)
            local sK = UpgradeName and UpgradeName.Text
            local sK_1 = sK ~= ""
            local sL = typeof(sK) == "string" and sK_1
            if sL then
                oj({ label = sK, kind = "padLabel", path = attr, name = sK })
            end
        end
    end
    if Options.UpgradeSelect and Options.UpgradeSelect.SetValues then
        pcall(function()
            Options.UpgradeSelect:SetValues(ot)
        end)
    end
end
function fns.fn82()
    return pa.Character
end
function fns.onInputBegan()
    pi = tick()
end
function fns.fn113(am, an)
    if setclipboard then
        setclipboard(am)
    elseif toclipboard then
        toclipboard(am)
    end
    Library:Notify(an)
end
function fns.onCopyJoinScript_JobID()
    local vf = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, oA)
    if setclipboard then
        setclipboard(vf)
    elseif toclipboard then
        toclipboard(vf)
    end
    Library:Notify("Copied join script to clipboard")
end
function fns.fn134()
    pcall(function()
        if pa:GetAttribute("HasAutoRollGamePass") == true then
            SetAutoRoll:InvokeServer(false, oi())
        end
    end)
    pcall(function()
        AutoCollectToggleEvent:FireServer(false)
    end)
    pG(false)
    if connection2 then
        connection2:Disconnect()
    end
    if connection3 then
        connection3:Disconnect()
    end
    print("Unloaded!")
end
function fns.onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local vL_1 = pK()
        if vL_1 then
            vL_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.fn146()
    pG(Toggles.AntiGameplayPause.Value)
end
function fns.fn151()
    local rN = oM("AutoBuyTiers")
    local rO = {}
    for i, v in ipairs(o_) do
        rO[v] = rN[v] == true
    end
    return rO
end
function fns.fn154()
    if pw("AutoRoll") then
        return
    end
    local sA = oQ()
    local sB = oe(sA)
    local sA_1 = sB and pu(sB)
    if sA_1 then
        oz(sB)
    end
end
function fns.fn159(jz, jA)
    local Type = jA.Type
    if Type == "Toggle" then
        return { idx = jz, type = "Toggle", value = jA.Value == true }
    elseif Type == "Slider" then
        return { idx = jz, type = "Slider", value = tostring(jA.Value) }
    elseif Type == "Dropdown" then
        return { idx = jz, type = "Dropdown", multi = jA.Multi == true, value = jA.Value }
    elseif Type == "Input" then
        local wb = jA.Value or ""
        return { idx = jz, type = "Input", text = tostring(wb) }
    elseif Type == "ColorPicker" then
        return { idx = jz, type = "ColorPicker", value = jA.Value:ToHex(), transparency = jA.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = jz,
            type = "KeyPicker",
            mode = jA.Mode,
            key = jA.Value,
            modifiers = jA.Modifiers,
            toggled = jA.Toggled
        }
    else
        return nil
    end
end
function fns.onCopySolanaAddress()
    o3(oH, "Copied Solana address")
end
function fns.onCopyBitcoinAddress()
    o3(oT, "Copied Bitcoin address")
end
function fns.fn274(cb)
    if Final then
        return Final.Tier or Final.TierName
    end
    local sf_2 = oR(cb)
    local sg = sf_2 and sf_2:FindFirstChild("ActiveCoach")
    if not sg then
        return nil
    end
    local attr2 = sg:GetAttribute("FirstTimeRarityReveal")
    local sh = attr2 ~= ""
    local si = typeof(attr2) == "string" and sh
    if si then
        return attr2
    end
    local attr = sg:GetAttribute("CoachPoolTemplateFolder")
    local sf_4 = attr ~= ""
    local sh_1 = typeof(attr) == "string" and sf_4
    if sh_1 then
        return attr:gsub("Coach$", "")
    end
    return nil
end
function fns.onInputChanged(jj)
    local UserInputType = jj.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        pi = tick()
    end
end
function fns.antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            pG(true)
        end
    end
end
function fns.onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = pa.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local vA_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if vA_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.fn302(jr, js)
    local v7_1 = (jr == "Toggle" and Toggles or Options)[js]
    local v6_2 = type(v7_1) == "table" and v7_1.Type == jr
    return v6_2 and v7_1 or nil
end
function fns.fn360(b0)
    local r9 = b0 and b0:FindFirstChild("CoachRollSystem")
    return r9
end
function fns.worker4()
    while not Library.Unloaded do
        if pw("AutoSell") then
            pcall(o0)
        end
        if pw("AutoCollect") then
            pcall(pI)
        end
        task.wait(0.9)
    end
end
function fns.onRscripts()
    if setclipboard then
        setclipboard(oZ)
    elseif toclipboard then
        toclipboard(oZ)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
function fns.fn408(aw, ax, ay)
    return string.format("<b>%s</b> %s %s", aw, oB("-", "#5a6070"), oB(ax, ay))
end
function fns.fn413(bV)
    local r3_1
    local r2_1
    if typeof(bV) ~= "string" then
        return nil
    end
    local r1 = bV:gsub("[,$%s]", "")
    r2_1, r3_1 = r1:match("^(%d+%.?%d*)([kKmMbB]?)$")
    local r1_1 = tonumber(r2_1)
    if not r1_1 then
        return nil
    end
    if r3_1 == "k" or r3_1 == "K" then
        r1_1 *= 1000
    else
        local r2_3 = r3_1 == "M"
        local r4_1 = r3_1 == "m"
        local r8 = if r4_1 then 1 else 0
        local r6 = 219 * r8 + 1652 * (1 - r8)
        local r7 = 1585 * r8 + 3913 * (1 - r8)
        if not ((r6 * 3066 + r7 * 530 + r6 * r7) % 16777213 == 1858619) then
            r4_1 = r2_3
        end
        if r4_1 then
            r1_1 *= 1000000
        else
            if r3_1 == "b" or r3_1 == "B" then
                r1_1 *= 1000000000
            end
        end
    end
    return r1_1
end
function fns.fn416(aL, aM)
    local qS = Options[aL]
    if qS == nil then
        return aM
    end
    return qS.Value
end
function fns.worker6()
    while not Library.Unloaded do
        if pw("AutoRoll") then
            if pa:GetAttribute("HasAutoRollGamePass") == true then
                o6()
                if pw("AutoBuy") then
                    pcall(oX)
                end
                task.wait(o4("AutoRollDelay", 2.1))
            else
                pcall(oK)
                task.wait(o4("AutoRollDelay", 2.1))
            end
        else
            if pw("AutoBuy") then
                pcall(oX)
            end
            task.wait(0.6)
        end
    end
end
function fns.worker2()
    while not Library.Unloaded do
        task.wait(2)
        if pw("AntiAfk") then
            local w_ = tick() - pi
            local w0 = tick() - pc
            if w_ >= 300 and w0 >= 60 then
                pcall(oS)
            else
                if w_ < 300 and w0 >= 300 then
                    pcall(oS)
                end
            end
        end
    end
end
function fns.fn501()
    local q2 = oh()
    local q3 = q2 and q2:FindFirstChildOfClass("Humanoid")
    return q3
end
function fns.fn531(at, au)
    return string.format('<font color="%s">%s</font>', au, at)
end
function fns.worker3()
    while not Library.Unloaded do
        if pw("AutoFuse") then
            pcall(pp)
        end
        task.wait(1)
    end
end
local function fn579()
    local wh = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local wi = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if wi then
                local wi_1 = o2(k, v)
                if wi_1 then
                    wh[#wh + 1] = wi_1
                end
            end
        end
    end
    table.sort(wh, function(jN, jO)
        if jN.type ~= jO.type then
            return jN.type < jO.type
        end
        return jN.idx < jO.idx
    end)
    return { objects = wh }
end
local function fn604()
    local tr = oQ()
    if not tr then
        return
    end
    local Upgrades = tr:FindFirstChild("Upgrades")
    if not Upgrades then
        return
    end
    for i, descendant in ipairs(Upgrades:GetDescendants()) do
        local tr_1 = Library.Unloaded or not pw("AutoBuyPads")
        if tr_1 then
            break
        elseif descendant:GetAttribute("UpgradePath") then
            oI(descendant)
        end
    end
end
local function fn629(f4)
    if not f4 then
        return nil
    elseif f4:GetAttribute("IsLeaguePlayer") ~= true then
        return nil
    else
        local ug = (f4:GetAttribute("CardToolId"))
        local uq = if ug then 1 else 0
        local uo = 422 * uq + 3523 * (1 - uq)
        local up = 1624 * uq + 1757 * (1 - uq)
        if not ((uo * 1816 + up * 1723 + uo * up) % 16777213 == 4249832) then
            ug = f4:GetAttribute("InventoryCardId")
        end
        local uh = ug
        local ug_1 = uh == ""
        local ui = typeof(uh) ~= "string" or ug_1
        if ui then
            return nil
        end
        local ug_2 = o4("FuseMinOVR", 0)
        local ui_1 = o4("FuseMaxOVR", 99)
        local uj = o4("FuseMaxValue", 100000)
        local uk = (tonumber(f4:GetAttribute("OVR")))
        local ut = if uk then 1 else 0
        local ur = 1767 * ut + 1744 * (1 - ut)
        local us = 1010 * ut + 179 * (1 - ut)
        if not ((ur * 586 + us * 1413 + ur * us) % 16777213 == 4247262) then
            uk = 0
        end
        local ul = uk
        local uk_1 = tonumber(f4:GetAttribute("Valuation")) or 0
        if ul < ug_2 or ul > ui_1 then
            return nil
        elseif uk_1 > uj then
            return nil
        else
            local ug_3 = {
                ItemId = uh,
                LeagueId = f4:GetAttribute("LeagueId"),
                PlayerName = f4:GetAttribute("PlayerName"),
                OVR = ul
            }
            local ui_2 = (tonumber(f4:GetAttribute("Quantity")))
            local uq_1 = if ui_2 then 1 else 0
            local uo_1 = 3012 * uq_1 + 3955 * (1 - uq_1)
            local up_1 = 3626 * uq_1 + 600 * (1 - uq_1)
            if not ((uo_1 * 600 + up_1 * 1001 + uo_1 * up_1) % 16777213 == 16358338) then
                ui_2 = 1
            end
            return ug_3, ui_2
        end
    end
end
local function fn631(dh, di)
    local sG = typeof(dh) ~= "string" or typeof(di) ~= "string"
    if sG then
        return false
    elseif dh == di then
        return true
    elseif di == "TrainingGroundUpgrades" then
        return dh:find("^TrainingGroundUpgrades") ~= nil
    else
        return false
    end
end
local function fn633(bk)
    local rt = px()
    local ru = not rt or typeof(bk) ~= "Vector3"
    if ru then
        return false
    end
    rt.CFrame = CFrame.new(bk + Vector3.new(0, 3, 0))
    return true
end
local function fn647(aQ)
    local qU = o4(aQ, {})
    if typeof(qU) ~= "table" then
        return {}
    end
    local qV = {}
    for k, v in pairs(qU) do
        if v == true then
            qV[k] = true
        else
            local qU_1 = typeof(k) == "number" and typeof(v) == "string"
            if qU_1 then
                qV[v] = true
            end
        end
    end
    return qV
end
local function fn656()
    local leaderstats = pa:FindFirstChild("leaderstats")
    local rc = leaderstats and leaderstats:FindFirstChild("Cash")
    local rb_1 = rc
    if rc then
        rc = rb_1.Value
    end
    return rc or 0
end
local function fn694(ct)
    local sq_1
    local sp_1
    local so = oQ()
    sq_1, sp_1 = oE(so)
    if not sq_1 or not sp_1 or sq_1.Enabled ~= true then
        return false
    end
    local so_2 = o4("AutoBuyMaxPrice", 100000)
    local sr = pg(sq_1.ObjectText)
    if sr and sr > so_2 then
        return false
    end
    local so_3 = sr and pe() < sr
    if so_3 then
        return false
    end
    local so_4 = ct and not pu(ct)
    if so_4 then
        return false
    end
    op(sp_1.Position)
    task.wait(0.12)
    oU = nil
    pJ(sq_1)
    local so_5 = os.clock()
    while true do
        local sp_2 = not oU and os.clock() - so_5 < 2
        if sp_2 then
            task.wait(0.05)
            continue
        end
        break
    end
    return oU and oU.ok == true
end
local function fn715()
    pcall(function()
        AutoCollectToggleEvent:FireServer(true)
    end)
    pcall(function()
        PlotPlayerCollectRequest:FireServer()
    end)
    local t7 = oQ()
    if not t7 then
        return
    end
    for i, descendant in ipairs(t7:GetDescendants()) do
        local t7_1 = Library.Unloaded or not pw("AutoCollect")
        if t7_1 then
            break
        end
        local t7_2 = (descendant:IsA("ProximityPrompt"))
        if t7_2 then
            t7_2 = descendant.Name == "PlotPlayerPickupPrompt" or descendant.ActionText == "Pick Up"
        end
        if t7_2 then
            local Parent = descendant.Parent
            local t8_2 = Parent and Parent:IsA("BasePart")
            if t8_2 then
                op(Parent.Position)
                task.wait(0.1)
            end
            pJ(descendant)
            task.wait(0.15)
        end
    end
end
local function onExportConfigToClipboard()
    local wF_1
    local wE_1
    wE_1, wF_1 = pcall(HttpService.JSONEncode, HttpService, oO())
    if not wE_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local wE_2 = setclipboard or toclipboard
    local wE_3 = type(wE_2) ~= "function" or not pcall(wE_2, wF_1)
    if wE_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function onCopyLitecoinAddress()
    o3(oW, "Copied Litecoin address")
end
local function fn794()
    local sn = if pa:GetAttribute("HasAutoRollGamePass") ~= true then 1 else 0
    if sn == 1 then
        return
    end
    pcall(function()
        SetAutoRoll:InvokeServer(pw("AutoRoll"), oi())
    end)
end
local function fn836()
    o6()
end
local function fn845()
    local u8_1
    local u7_1
    if identifyexecutor then
        u8_1, u7_1 = identifyexecutor()
        local u9 = u8_1 ~= ""
        local va = type(u8_1) == "string" and u9
        if va then
            local u9_1 = type(u7_1) == "string" and u7_1 ~= "" and u8_1 .. " " .. u7_1
            o7 = u9_1 or u8_1
        end
    end
end
local function fn865(e2)
    if not e2 then
        return nil
    end
    local SigningOffice = e2:FindFirstChild("SigningOffice")
    local tL = SigningOffice and SigningOffice:FindFirstChild("SellPlayerPrompt")
    local tK_1 = tL
    if tL then
        tL = tK_1:FindFirstChildOfClass("ProximityPrompt")
    end
    return tL, tK_1
end
local function onOnClientEvent2(bH, bI)
    oU = { ok = bH == true, reason = bI }
end
local function fn869()
    local sx = oQ()
    local sy = oR(sx)
    local sx_1 = sy and sy:FindFirstChild("RollButton")
    if not sx_1 then
        return
    end
    op(sx_1.Position)
    task.wait(0.12)
    Final = nil
    pcall(function()
        RequestRoll:FireServer()
    end)
    local sx_2 = os.clock()
    while true do
        local sy_2 = not Final and os.clock() - sx_2 < 5
        if sy_2 then
            if Library.Unloaded then
                break
            end
            task.wait(0.05)
            continue
        end
        local sy_3 = Final
        if sy_3 then
            sy_3 = Final.Tier or Final.TierName
        end
        local sx_4 = sy_3
        local sy_4 = pw("AutoBuy") and sx_4 and pu(sx_4)
        if sy_4 then
            task.wait(0.45)
            oz(sx_4)
        end
        return
    end
    return
end
local function fn877(aF)
    if Library.Unloaded then
        return false
    end
    local qP = Toggles[aF]
    return qP ~= nil and qP.Value == true
end
local function fn879(Z)
    local qJ = not Z or typeof(Z.label) ~= "string" or Z.label == ""
    if qJ then
        return
    end
    if om[Z.label] then
        return
    end
    ot[#ot + 1] = Z.label
    om[Z.label] = Z
end
local function onOnClientEvent(bB, bC, bD)
    if bC ~= pa.UserId then
        return
    end
    local rL = typeof(bD) == "table" and typeof(bD.Final) == "table"
    if rL then
        Final = bD.Final
    end
end
local function fn898()
    pcall(function()
        AutoCollectToggleEvent:FireServer(Toggles.AutoCollect.Value == true)
    end)
end
local function worker()
    local vi_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local vh = math.floor(os.clock() - og)
        if vh < 60 then
            vi_1 = vh .. "s"
        elseif vh < 3600 then
            vi_1 = string.format("%dm %ds", vh // 60, vh % 60)
        else
            vi_1 = string.format("%dh %dm", vh // 3600, vh % 3600 // 60)
        end
        Label:SetText(ou("Session time", vi_1, pF))
    end
end
local function fn907(g0)
    local DiscordGroup = g0:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = oN })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = oN })
end
local function worker5()
    while not Library.Unloaded do
        if pw("AutoBuyUpgrades") then
            pcall(oV)
        end
        if pw("AutoBuyPads") then
            pcall(pm)
        end
        task.wait(0.8)
    end
end
local function fn953()
    local CreatedPlots = Workspace:FindFirstChild("CreatedPlots")
    if not CreatedPlots then
        return nil
    end
    local ri = CreatedPlots:FindFirstChild("Plot_" .. pa.UserId .. "_" .. pa.Name)
    if ri then
        return ri
    end
    for i, child in ipairs(CreatedPlots:GetChildren()) do
        if child:GetAttribute("PlotOwnerUserId") == pa.UserId then
            return child
        end
    end
    return nil
end
local function fn960(bS)
    local rW = bS == ""
    local rX = typeof(bS) ~= "string" or rW
    if rX then
        return false
    end
    return oM("AutoBuyTiers")[bS] == true
end
local function fn965()
    if not Toggles.Fly.Value then
        local vs = pK()
        if vs then
            vs.PlatformStand = false
        end
    end
end
local function onUnload()
    Library:Unload()
end
local function fn1010()
    local q5 = oh()
    local q6 = q5 and q5:FindFirstChild("HumanoidRootPart")
    return q6
end
local function onCopyEthereumAddress()
    o3(oP, "Copied Ethereum address")
end
local function onCopyUSDTAddress()
    o3(oL, "Copied USDT address")
end
local function fn1028()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    pc = tick()
end
local function onCopyVenmoLink()
    o3(ox, "Copied Venmo link")
end
local function fn1062()
    if pw("AutoRoll") then
        o6()
    end
end
local function onRenderStepped(iR)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local vN_1 = pK()
        if vN_1 then
            vN_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local vN_3 = px()
        local vO = pK()
        oJ = Workspace.CurrentCamera or oJ
        if vN_3 and vO and oJ then
            vO.PlatformStand = true
            local vO_1 = Vector3.zero
            local vU = if UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
            if vU == 1 then
                vO_1 = vO_1 + oJ.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                vO_1 = vO_1 - oJ.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                vO_1 = vO_1 - oJ.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                vO_1 = vO_1 + oJ.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                vO_1 = vO_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                vO_1 = vO_1 - Vector3.new(0, 1, 0)
            end
            vN_3.Velocity = Vector3.zero
            if vO_1.Magnitude > 0 then
                vN_3.CFrame = vN_3.CFrame + vO_1.Unit * Options.FlySpeed.Value * iR
            end
        end
    end
end
local function fn1091()
    if not Toggles.WalkSpeedEnabled.Value then
        local vu = pK()
        if vu then
            vu.WalkSpeed = 16
        end
    end
end
local function fn1106(bs)
    local rD = px()
    if not rD or not bs or not firetouchinterest then
        return false
    end
    pcall(firetouchinterest, rD, bs, 0)
    task.wait(0.05)
    pcall(firetouchinterest, rD, bs, 1)
    return true
end
local function onCopyPayPalLink()
    o3(oC, "Copied PayPal link")
end
local function fn1155(eP)
    local tA = not eP or not eP:IsA("Tool")
    if tA then
        return false
    elseif eP:GetAttribute("IsLeaguePlayer") == true then
        return false
    else
        local tA_1 = (eP:GetAttribute("CardToolId"))
        local tJ = if tA_1 then 1 else 0
        local tH = 393 * tJ + 3224 * (1 - tJ)
        local tI = 1283 * tJ + 1360 * (1 - tJ)
        if not ((tH * 786 + tI * 2114 + tH * tI) % 16777213 == 3525379) then
            tA_1 = eP:GetAttribute("InventoryCardId")
        end
        local tB = tA_1
        local tA_2 = tonumber(eP:GetAttribute("Valuation"))
        local tC = typeof(tB) ~= "string" or tB == "" or not tA_2
        local tJ_1 = if tC then 1 else 0
        local tH_1 = 1976 * tJ_1 + 2463 * (1 - tJ_1)
        local tI_1 = 2543 * tJ_1 + 4054 * (1 - tJ_1)
        if not ((tH_1 * 1336 + tI_1 * 2922 + tH_1 * tI_1) % 16777213 == 15095550) then
            tC = tA_2 <= 0
        end
        if tC then
            return false
        end
        local tB_1 = o4("SellMaxOVR", 99)
        local tC_1 = o4("SellMaxValue", 100000)
        local tD = pw("SellFusedOnly")
        local tE = tonumber(eP:GetAttribute("OVR")) or 0
        local tE_1 = eP:GetAttribute("IsFused") == true
        if tE > tB_1 then
            return false
        elseif tA_2 > tC_1 then
            return false
        else
            if tD and not tE_1 then
                return false
            end
            return true
        end
    end
end
local function fn1170()
    o3(o1, "Copied Discord invite to clipboard")
end
local function onRollOnce()
    task.spawn(oK)
end
local function onImportConfigFromClipboardTex()
    local wK_1
    local wI = Options.SaveManager_ImportSource.Value
    local wI_1
    local wO = if wI then 1 else 0
    local wM = 698 * wO + 116 * (1 - wO)
    local wN = 457 * wO + 1519 * (1 - wO)
    if not ((wM * 977 + wN * 2812 + wM * wN) % 16777213 == 2286016) then
        wI = ""
    end
    local wJ = tostring(wI):match("^%s*(.-)%s*$")
    if wJ == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    wI_1, wK_1 = pcall(HttpService.JSONDecode, HttpService, wJ)
    local wJ_1 = not wI_1 or type(wK_1) ~= "table" or type(wK_1.objects) ~= "table"
    if wJ_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local wI_2 = 0
    for i, v in ipairs(wK_1.objects) do
        if pB(v) then
            wI_2 += 1
        end
    end
    if wI_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local wK_2 = wI_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(wI_2, wK_2), 6)
end
oe = nil
connection3 = nil
og = nil
oh = nil
oi = nil
oj = nil
om = nil
op = nil
SetAutoRoll = nil
ot = nil
ou = nil
connection2 = nil
ox = nil
RequestRoll = nil
oz = nil
oA = nil
oB = nil
oC = nil
oE = nil
Label = nil
oH = nil
oI = nil
oJ = nil
oK = nil
oL = nil
oM = nil
oN = nil
oO = nil
oP = nil
oQ = nil
oR = nil
oS = nil
oT = nil
oU = nil
oV = nil
oW = nil
oX = nil
Final = nil
oZ = nil
o_ = nil
o0 = nil
o1 = nil
o2 = nil
o3 = nil
o4 = nil
local FuseMultiplierUpgrade, oo, ov, BuyUpgrade, oF
AutoCollectToggleEvent = nil
o6 = nil
o7 = nil
Options = nil
pa = nil
PlotPlayerCollectRequest = nil
pc = nil
Toggles = nil
pe = nil
Workspace = nil
pg = nil
pi = nil
SaveManager = nil
pm = nil
pp = nil
Library = nil
HttpService = nil
pu = nil
pw = nil
px = nil
VirtualUser = nil
pB = nil
UserInputService = nil
pF = nil
pG = nil
pI = nil
pJ = nil
pK = nil
local o9, RequestConfirmation, ConfirmPurchase, pn, CompleteFusionWalkout, ps, MachineInteract, py, RespondSellOffer, RequestSellOffer, pE, Purchase, pL
o9 = nil
RequestConfirmation = nil
local CoreGui
ConfirmPurchase = nil
pn = nil
local GuiService
CompleteFusionWalkout = nil
ps = nil
MachineInteract = nil
py = nil
RespondSellOffer = nil
RequestSellOffer = nil
pE = nil
Purchase = nil
pL = nil
local qg, qj
UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, pa, o1, oZ, xa_12, BuyUpgrade, RequestRoll, SetAutoRoll, FuseMultiplierUpgrade, Purchase, RequestSellOffer, RespondSellOffer, MachineInteract, CompleteFusionWalkout, ConfirmPurchase, RequestConfirmation, PlotPlayerCollectRequest, AutoCollectToggleEvent, o_ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local xa_29 = game:GetService("Players")
local xa_3 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
if (not xa_3 or xa_3) and (not SetAutoRoll or SetAutoRoll) and (xa_3 and xa_3 or xa_3 and xa_3) and not ((not xa_3 or xa_3) and (not SetAutoRoll or SetAutoRoll) and (xa_3 and xa_3 or xa_3 and xa_3)) then
    pa = game:GetService("Workspace")
else
    Workspace = game:GetService("Workspace")
    pa = xa_29.LocalPlayer
end
local xa_6 = "Make Soccer Players"
o1 = "https://discord.gg/ehKVq7pf7v"
oZ = "https://rscripts.net/@Ouroboros"
local xa_14 = xa_3:WaitForChild("Remotes")
local xa_23 = xa_14:WaitForChild("CoachRollRemotes")
local xa_2 = xa_14:WaitForChild("PlayerEconomy")
if (not RequestSellOffer and not RequestSellOffer or not RequestSellOffer and not RequestSellOffer) and (Workspace and not Workspace or (RunService or RequestSellOffer)) and not ((not RequestSellOffer and not RequestSellOffer or not RequestSellOffer and not RequestSellOffer) and (Workspace and not Workspace or (RunService or RequestSellOffer))) then
    xa_3 = xa_12:WaitForChild("PlotUpgradeRemotes")
else
    xa_12 = xa_3:WaitForChild("PlotUpgradeRemotes")
end
BuyUpgrade = xa_23:WaitForChild("BuyUpgrade")
RequestRoll = xa_23:WaitForChild("RequestRoll")
local xa_17 = xa_23:WaitForChild("RollPresentation")
if (Workspace or false or (not Purchase or oZ)) and ("Make Soccer Players" and (oZ or not Purchase)) or not ((Workspace or false or (not Purchase or oZ)) and ("Make Soccer Players" and (oZ or not Purchase))) then
    xa_25 = xa_23:WaitForChild("PurchaseResult")
    SetAutoRoll = xa_23:WaitForChild("SetAutoRoll")
else
    SetAutoRoll:WaitForChild("PurchaseResult")
    xa_25 = SetAutoRoll:WaitForChild("SetAutoRoll")
end
FuseMultiplierUpgrade = xa_14:WaitForChild("FuseMultiplierUpgrade")
FuseMultiplierUpgrade:WaitForChild("Purchase")
FuseMultiplierUpgrade:WaitForChild("PurchaseDoubleRollLuck")
FuseMultiplierUpgrade:WaitForChild("PurchaseDoubleRollUnlock")
local xa_24 = xa_14:WaitForChild("WalkspeedUpgrade")
Purchase = xa_24:WaitForChild("Purchase")
RequestSellOffer = xa_2:WaitForChild("RequestSellOffer")
RespondSellOffer = xa_2:WaitForChild("RespondSellOffer")
MachineInteract = xa_2:WaitForChild("MachineInteract")
CompleteFusionWalkout = xa_2:WaitForChild("CompleteFusionWalkout")
ConfirmPurchase = xa_12:WaitForChild("ConfirmPurchase")
RequestConfirmation = xa_12:WaitForChild("RequestConfirmation")
PlotPlayerCollectRequest = xa_3:WaitForChild("PlotPlayerCollectRequest")
AutoCollectToggleEvent = xa_3:WaitForChild("AutoCollectToggleEvent")
local xa_15 = require(xa_3:WaitForChild("Modules"):WaitForChild("PlotUpgradeConfig"))
o_ = {
    "Amateur",
    "Grumpy",
    "SemiPro",
    "Veteran",
    "Pro",
    "Iconic",
    "WorldClass",
    "HallOfFame",
    "Generational",
    "Elite",
    "Cyborg"
}
local xa_5 = {
    { label = "Faster Time", kind = "coach", id = "FasterTime" },
    { label = "Better Chances", kind = "coach", id = "BetterChances" },
    { label = "Fuse Multiplier", kind = "fuse", remote = "Purchase" },
    { label = "Double Roll Luck", kind = "fuse", remote = "PurchaseDoubleRollLuck" },
    { label = "Double Roll Unlock", kind = "fuse", remote = "PurchaseDoubleRollUnlock" },
    { label = "Walkspeed Upgrade", kind = "walkspeed" },
    { label = "Plot Upgrades", kind = "pad", path = "PlotUpgrades" },
    { label = "Treadmill Unlock", kind = "pad", path = "WalkspeedArea" },
    { label = "Trash Upgrades", kind = "pad", path = "TrashUpgrades" },
    { label = "Fuse Area Upgrades", kind = "pad", path = "FuseUpgrades" },
    { label = "Training Grounds", kind = "pad", path = "TrainingAreas" },
    { label = "Training Equipment", kind = "pad", path = "TrainingGroundUpgrades" },
    { label = "Office Upgrades", kind = "pad", path = "OfficeUpgrades" },
    { label = "Squad Builder", kind = "pad", path = "SquadBuilderUpgrade" },
    { label = "Podium", kind = "pad", path = "PodiumUpgrade" }
}
xa_29 = {}
local xa_20 = xa_15.PathOrder or xa_29
xa_29 = xa_20
for i, v in ipairs(xa_29) do
    xa_29 = xa_15.Paths and xa_15.Paths[v]
    xa_20 = xa_29
    if xa_29 then
        xa_29 = xa_20.DisplayName
    end
    xa_20 = xa_29 or v
    xa_29 = xa_20
    xa_5[#xa_5 + 1] = { label = xa_29, kind = "tile", path = v }
end
ot, om, oj = nil, nil, nil
ot = {}
om = {}
oj = fn879
for i, v in ipairs(xa_5) do
    oj(v)
end
Library, SaveManager, Toggles, Options, pF, Final, oU, xa_2, o3, oN, oB, ou, pw, o4, oM, oh, pK, px, pe, oQ, op, pJ, py, o9, oi, pu, pg, oR, oE, oe, o6, oz, oK, oX, oo, pL, oI, oV, pm, oF, ps, o0, pI, ov, pn, pp = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
o3 = fns.fn113
oN = fn1170
oB = fns.fn531
ou = fns.fn408
xa_14 = "#7fd47f"
xa_23 = "#6ec1ff"
pF = "#e8a34d"
xa_12 = "#8b93a3"
pw = fn877
if not SaveManager or not oE or (not SaveManager or pp) or (pn or not oB) and (not oE or not SaveManager) or not (not SaveManager or not oE or (not SaveManager or pp) or (pn or not oB) and (not oE or not SaveManager)) then
    o4 = fns.fn416
    oM = fn647
    oh = fns.fn82
else
    oh = fns.fn416
    o4 = fn647
    oM = fns.fn82
end
pK = fns.fn501
px = fn1010
pe = fn656
oQ = fn953
op = fn633
pJ = function(bp)
    if not bp then
        return
    end
    if fireproximityprompt then
        pcall(fireproximityprompt, bp)
        return
    end
    pcall(function()
        bp:InputHoldBegin()
        local rA = bp.HoldDuration or 0
        task.wait(rA)
        bp:InputHoldEnd()
    end)
end
py = fn1106
o9 = function(bx)
    if not bx then
        return
    end
    pcall(function()
        if firesignal then
            firesignal(bx.Activated)
            firesignal(bx.MouseButton1Click)
        else
            bx.Activated:Fire()
        end
    end)
end
Final = nil
oU = nil
xa_17.OnClientEvent:Connect(onOnClientEvent)
xa_25.OnClientEvent:Connect(onOnClientEvent2)
oi = fns.fn151
pu = fn960
pg = fns.fn413
oR = fns.fn360
oE = fns.fn3
oe = fns.fn274
o6 = fn794
oz = fn694
oK = fn869
oX = fns.fn154
oo = fn631
pL = fns.fn10
oI = function(dD)
    local sW
    local attr2 = dD:GetAttribute("UpgradeAvailable")
    local attr = dD:GetAttribute("UpgradeEnabled")
    local sZ = tonumber(dD:GetAttribute("UpgradePrice")) or math.huge
    local sZ_1 = attr2 == false or attr == false or pe() < sZ
    if sZ_1 then
        return false
    end
    local sX_1 = dD:FindFirstChild("Pad") or dD:FindFirstChildWhichIsA("BasePart", true)
    if not sX_1 then
        return false
    end
    sW = nil
    local connection = RequestConfirmation.OnClientEvent:Connect(function(dO, dP)
        sW = true
        ConfirmPurchase:FireServer(dO, dP)
    end)
    op(sX_1.Position)
    task.wait(0.12)
    py(sX_1)
    local sY_2 = os.clock()
    while true do
        local sZ_2 = not sW and os.clock() - sY_2 < 0.8
        if sZ_2 then
            task.wait(0.05)
            continue
        end
        break
    end
    connection:Disconnect()
    task.wait(0.2)
    return sW == true
end
oV = function()
    local s8 = oM("UpgradeSelect")
    if not next(s8) then
        return
    end
    pL()
    local s9 = oQ()
    for k in pairs(s8) do
        local s6
        local s8_1 = Library.Unloaded or not pw("AutoBuyUpgrades")
        if s8_1 then
            break
        else
            local s5 = om[k]
            if s5 then
                if s5.kind == "coach" then
                    pcall(function()
                        BuyUpgrade:InvokeServer(s5.id)
                    end)
                elseif s5.kind == "fuse" then
                    local s7 = FuseMultiplierUpgrade:FindFirstChild(s5.remote)
                    if s7 then
                        pcall(function()
                            s7:InvokeServer()
                        end)
                    end
                elseif s5.kind == "walkspeed" then
                    pcall(function()
                        Purchase:InvokeServer()
                    end)
                else
                    if s5.kind == "tile" and s5.path then
                        s6 = nil
                        local connection = RequestConfirmation.OnClientEvent:Connect(function(en, eo)
                            if en == s5.path then
                                s6 = true
                                ConfirmPurchase:FireServer(en, eo)
                            end
                        end)
                        pcall(function()
                            ConfirmPurchase:FireServer(s5.path, 1)
                        end)
                        task.wait(0.25)
                        connection:Disconnect()
                    else
                        local ta = (s5.kind == "pad" or s5.kind == "padLabel") and s9
                        local ta_2
                        if ta then
                            local Upgrades = s9:FindFirstChild("Upgrades")
                            if Upgrades then
                                for i, descendant in ipairs(Upgrades:GetDescendants()) do
                                    local s8_6 = Library.Unloaded or not pw("AutoBuyUpgrades")
                                    if s8_6 then
                                        break
                                    end
                                    local attr = descendant:GetAttribute("UpgradePath")
                                    if attr then
                                        local UpgradeName = descendant:FindFirstChild("UpgradeName", true)
                                        local tb = UpgradeName and UpgradeName.Text
                                        if s5.kind == "pad" then
                                            ta_2 = oo(attr, s5.path)
                                        else
                                            ta_2 = tb == s5.name or tb == k
                                        end
                                        if ta_2 then
                                            oI(descendant)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
pm = fn604
oF = fn1155
ps = fn865
o0 = function()
    local tR_1
    local tQ_1
    local tV_1
    local tP = oQ()
    tQ_1, tR_1 = ps(tP)
    local tS = not tQ_1 or not tR_1
    local tS_5
    if tS then
        return
    end
    local tP_2 = pK()
    local tS_1 = oh()
    if not tP_2 or not tS_1 then
        return
    end
    local tS_2 = pa:FindFirstChild("PlayerGui") and pa.PlayerGui:FindFirstChild("Frames")
    local tT_1 = tS_2
    if tS_2 then
        tS_2 = tT_1:FindFirstChild("ConfirmationSellPlayer")
    end
    local tT_2 = tS_2
    if tS_2 then
        tS_2 = tT_2:FindFirstChild("SellButton")
    end
    local tU_1 = tS_2
    for i, child in ipairs(pa.Backpack:GetChildren()) do
        local tN, tO
        local tS_3 = Library.Unloaded or not pw("AutoSell")
        if tS_3 then
            break
        elseif oF(child) then
            tP_2:EquipTool(child)
            task.wait(0.15)
            op(tR_1.Position)
            task.wait(0.2)
            local tS_4 = child:GetAttribute("CardToolId") or child:GetAttribute("InventoryCardId")
            tN = tS_4
            tS_5, tV_1, tO = pcall(function()
                return RequestSellOffer:InvokeServer(tN)
            end)
            local tW = tS_5 and tV_1 and typeof(tO) == "table" and tO.OfferId
            if tW then
                pcall(function()
                    RespondSellOffer:InvokeServer(tO.OfferId, true)
                end)
            else
                pJ(tQ_1)
                task.wait(0.35)
                if tT_2 and tT_2.Visible and tU_1 then
                    o9(tU_1)
                end
            end
            task.wait(o4("SellDelay", 0.75))
        end
    end
end
if (false or (not xa_2 or false)) and (xa_2 and false or false) or not ((false or (not xa_2 or false)) and (xa_2 and false or false)) then
    pI = fn715
    ov = fn629
else
    ov = fn715
    pI = fn629
end
pn = function(gf)
    local uD
    uD = {}
    local function uE(gi)
        local uv_1
        local uu_1
        uv_1, uu_1 = ov(gi)
        if not uv_1 then
            return
        end
        local uw = math.max(1, uu_1)
        local uA = 1
        while uA <= uw do
            uD[#uD + 1] = { ItemId = uv_1.ItemId, LeagueId = uv_1.LeagueId, PlayerName = uv_1.PlayerName, OVR = uv_1.OVR }
            if #uD >= gf then
                return true
            end
            uA += 1
        end
        return false
    end
    for i, child in ipairs(pa.Backpack:GetChildren()) do
        local uF_1 = child:IsA("Tool") and uE(child)
        if uF_1 then
            return uD
        end
    end
    local uF_2 = oh()
    if uF_2 then
        for i, child in ipairs(uF_2:GetChildren()) do
            local uF_3 = child:IsA("Tool") and uE(child)
            if uF_3 then
                return uD
            end
        end
    end
    local PlotInventory = pa:FindFirstChild("PlotInventory")
    if PlotInventory then
        for i, child in ipairs(PlotInventory:GetChildren()) do
            local uF_5 = child:IsA("StringValue") and uE(child)
            if uF_5 then
                return uD
            end
        end
    end
    return uD
end
pp = function()
    local uX, StartFuse, PlayerToAdd
    local u_ = oQ()
    local u__3
    if not u_ then
        return
    end
    local FuseMachine = u_:FindFirstChild("FuseMachine")
    local u0_2
    if not FuseMachine then
        return
    end
    PlayerToAdd = FuseMachine:FindFirstChild("PlayerToAdd", true)
    StartFuse = FuseMachine:FindFirstChild("StartFuse", true)
    if not PlayerToAdd or not StartFuse then
        return
    end
    local u__2 = o4("FuseMinInputs", 2)
    uX = pn(math.max(u__2, 2))
    if #uX < u__2 then
        return
    end
    op(PlayerToAdd.Position)
    task.wait(0.2)
    u__3, u0_2 = pcall(function()
        return MachineInteract:InvokeServer("AddPlayers", PlayerToAdd, uX)
    end)
    if not u__3 or u0_2 ~= true then
        return
    end
    task.wait(0.2)
    op(StartFuse.Position)
    task.wait(0.12)
    pcall(function()
        MachineInteract:InvokeServer("RunFuse", StartFuse)
    end)
    task.wait(0.35)
    pcall(function()
        CompleteFusionWalkout:InvokeServer()
    end)
    task.wait(o4("FuseDelay", 1.25))
end
local xa_10 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = o1, Copyable = true }, "|", xa_6 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
xa_2 = {
    Info = xa_10:AddTab("Info", "info"),
    Main = xa_10:AddTab("Main", "gamepad-2"),
    Player = xa_10:AddTab("Player", "person-standing"),
    Settings = xa_10:AddTab("Settings", "settings")
}
xa_2.Roll = xa_2.Main:AddSubTab("Roll", "dices")
xa_2.Buy = xa_2.Main:AddSubTab("Buy", "shopping-cart")
xa_2.Sell = xa_2.Main:AddSubTab("Sell", "banknote")
xa_2.Fuse = xa_2.Main:AddSubTab("Fuse", "combine")
local xa_31 = fn907
for k, v in xa_2 do
    if v ~= xa_2.Main then
        xa_31(v)
    end
end
o7, Label, oA = nil, nil, nil
o7 = "Unknown"
pcall(fn845)
xa_29 = xa_2.Info:AddLeftGroupbox("Account", "circle-user")
xa_29:AddLabel(ou("User", pa.Name, xa_14), true)
xa_29:AddLabel(ou("Status", "Keyless", xa_14), true)
xa_29:AddLabel(ou("Executor", o7, xa_14), true)
xa_3 = xa_2.Info:AddLeftGroupbox("Game Info", "gamepad-2")
xa_3:AddLabel(oB(xa_6 .. " [" .. tostring(game.PlaceId) .. "]", xa_23), true)
xa_3:AddLabel(ou("Place ID", tostring(game.PlaceId), xa_23), true)
Label = xa_3:AddLabel(ou("Session time", "0s", pF), true)
oA = tostring(game.JobId)
xa_10 = #oA > 18
if xa_10 then
    xa_29 = 3
    repeat
        if xa_29 * 34639471 + 12 + 1 <= xa_29 * 34639471 + 12 + 1 + 2 then
            xa_10 = string.sub(oA, 1, 18) .. "..."
        else
            oA = string.sub(xa_10, 1, 18) .. "..."
        end
        xa_29 = (xa_29 + 2) % 4
    until (xa_29 * 3 + 3) % 4 == 2
end
xa_29 = xa_10 or oA
og, oW, oT, oP, oL, oH, oC, ox, xa_25, xa_15, xa_31, oJ, pi, pc, connection2, connection3, pG, oS, pE, o2, oO, pB = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local xa_28 = xa_29
xa_3:AddLabel(ou("Server", xa_28, xa_12), true)
xa_3:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
og = os.clock()
task.spawn(worker)
local ScriptsGroup = xa_2.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(oB("Included in this hub", xa_12), true)
ScriptsGroup:AddLabel(oB(xa_6, xa_23), true)
local FeaturesGroup = xa_2.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(oB("Auto Roll", xa_23), true)
FeaturesGroup:AddLabel(oB("Auto Buy", pF), true)
FeaturesGroup:AddLabel(oB("Auto Sell / Collect", xa_14), true)
FeaturesGroup:AddLabel(oB("Auto Fuse", xa_12), true)
local SocialsGroup = xa_2.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = oN })
SocialsGroup:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
local OuroborosHubGroup = xa_2.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = oN })
oW = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
oT = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
oP = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
oL = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
oH = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
oC = "https://paypal.me/TheTruckerGOD"
ox = "https://venmo.com/u/miserablemusic"
local xa_19 = "#345d9d"
local xa_18 = "#f7931a"
if ((not xa_31 or xa_31) and (not xa_15 or not xa_15) or (not xa_31 or not xa_31) and (xa_15 and xa_15) or (not xa_31 and not xa_15 or (xa_31 or xa_15)) and (not xa_31 and xa_31 and (not xa_15 or not xa_15))) and ((xa_15 or not xa_31) and (not xa_15 and xa_31) and (xa_15 or xa_31 or not xa_15 and not xa_15) or ((not xa_15 or xa_31) and (xa_15 or not xa_31) or (not xa_31 and not xa_31 or not xa_31 and not xa_15))) or not (((not xa_31 or xa_31) and (not xa_15 or not xa_15) or (not xa_31 or not xa_31) and (xa_15 and xa_15) or (not xa_31 and not xa_15 or (xa_31 or xa_15)) and (not xa_31 and xa_31 and (not xa_15 or not xa_15))) and ((xa_15 or not xa_31) and (not xa_15 and xa_31) and (xa_15 or xa_31 or not xa_15 and not xa_15) or ((not xa_15 or xa_31) and (xa_15 or not xa_31) or (not xa_31 and not xa_31 or not xa_31 and not xa_15)))) then
    xa_25 = "#627eea"
else
    oS = "#627eea"
end
xa_15 = "#26a17b"
xa_31 = "#14f195"
xa_20 = "#0070ba"
local qi = "#008cff"
local DonationsGroup = xa_2.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(oB("All donations are optional but appreciated.", pF), true)
DonationsGroup:AddLabel(oB("If you donate you get a special role, just PING after you donate.", xa_14), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(oB("LTC / Litecoin", xa_19), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(oB("BTC / Bitcoin", xa_18), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = fns.onCopyBitcoinAddress })
DonationsGroup:AddLabel(oB("ETH / Ethereum", xa_25), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(oB("USDT", xa_15), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(oB("Solana", xa_31), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
DonationsGroup:AddLabel(oB("PayPal", xa_20), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(oB("Venmo", qi), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(oB("Don't have any of the listed currencies but still wanna donate?", xa_12), true)
DonationsGroup:AddLabel(oB("DM me and we'll work something out.", xa_23), true)
local FaqGroup = xa_2.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutoRollGroup = xa_2.Roll:AddLeftGroupbox("Auto Roll", "dices")
AutoRollGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
AutoRollGroup:AddSlider("AutoRollDelay", { Text = "Roll Delay", Default = 2.1, Min = 1, Max = 6, Rounding = 2 })
AutoRollGroup:AddButton({ Text = "Roll Once", Func = onRollOnce })
local AutoBuyGroup = xa_2.Roll:AddRightGroupbox("Auto Buy", "shopping-cart")
AutoBuyGroup:AddToggle("AutoBuy", { Text = "Auto Buy", Default = false })
AutoBuyGroup:AddDropdown("AutoBuyTiers", {
    Text = "Buy Tiers",
    Values = o_,
    Default = {
        Grumpy = true,
        SemiPro = true,
        Veteran = true,
        Pro = true,
        Iconic = true,
        WorldClass = true,
        HallOfFame = true,
        Generational = true,
        Elite = true,
        Cyborg = true
    },
    Multi = true,
    Searchable = true,
    AllowNull = true
})
AutoBuyGroup:AddSlider("AutoBuyMaxPrice", { Text = "Max Buy Price", Default = 100000, Min = 20, Max = 10000000, Rounding = 0 })
local AutoBuyUpgradesGroup = xa_2.Buy:AddLeftGroupbox("Auto Buy Upgrades", "arrow-big-up")
AutoBuyUpgradesGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
AutoBuyUpgradesGroup:AddDropdown("UpgradeSelect", { Text = "Upgrades", Values = ot, Default = {}, Multi = true, Searchable = true, AllowNull = true })
task.defer(pL)
xa_17 = xa_2.Buy:AddRightGroupbox("Pads", "layout-grid")
xa_17:AddToggle("AutoBuyPads", { Text = "Auto Buy Affordable Pads", Default = false })
xa_5 = xa_2.Sell:AddLeftGroupbox("Auto Sell", "banknote")
if ((not FeaturesGroup and FeaturesGroup or "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w") and (false and (false and not FeaturesGroup)) or ((not FeaturesGroup or not FeaturesGroup) and (false or FeaturesGroup) or (FeaturesGroup or not SocialsGroup) and (FeaturesGroup and false))) and not ((not FeaturesGroup and FeaturesGroup or "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w") and (false and (false and not FeaturesGroup)) or ((not FeaturesGroup or not FeaturesGroup) and (false or FeaturesGroup) or (FeaturesGroup or not SocialsGroup) and (FeaturesGroup and false))) then
    xa_2:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
    xa_2:AddToggle("SellFusedOnly", { Text = "Fused Only", Default = false })
    xa_2:AddSlider("SellMaxOVR", { Rounding = 0, Text = "Max OVR", Default = 70, Min = 1, Max = 99 })
    xa_2:AddSlider("SellMaxValue", { Max = 10000000, Default = 20000, Min = 100, Rounding = 0, Text = "Max Value" })
    xa_2:AddSlider("SellDelay", { Default = 0.75, Min = 0.2, Rounding = 2, Text = "Sell Delay", Max = 5 })
    xa_5 = pG.Sell:AddRightGroupbox("Auto Collect", "package-open")
    xa_5:AddToggle("AutoCollect", { Text = "Auto Collect", Default = false })
    qg = pG.Fuse:AddLeftGroupbox("Auto Fuse", "combine")
    qg:AddToggle("AutoFuse", { Text = "Auto Fuse", Default = false })
    qg:AddSlider("FuseMinOVR", { Min = 0, Default = 0, Rounding = 0, Text = "Min OVR", Max = 99 })
    qg:AddSlider("FuseMaxOVR", { Rounding = 0, Default = 99, Min = 1, Text = "Max OVR", Max = 99 })
    qg:AddSlider("FuseMaxValue", { Min = 100, Rounding = 0, Max = 10000000, Default = 50000, Text = "Max Value" })
    qg:AddSlider("FuseMinInputs", { Text = "Min Inputs", Max = 8, Rounding = 0, Min = 2, Default = 2 })
    qg:AddSlider("FuseDelay", { Default = 1.25, Rounding = 2, Text = "Fuse Delay", Min = 0.4, Max = 5 })
    xa_10 = pG.Player:AddLeftGroupbox("Movement", "footprints")
    xa_10:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    xa_10:AddSlider("WalkSpeed", { Max = 250, Default = 32, Rounding = 0, Text = "WalkSpeed Amount", Min = 16 })
    xa_10:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    xa_10:AddToggle("NoClip", { Text = "NoClip", Default = false })
    xa_10:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    qj = pG.Player:AddRightGroupbox("Fly", "feather")
    qj:AddToggle("Fly", { Text = "Fly", Default = false })
    qj:AddSlider("FlySpeed", { Min = 10, Text = "Fly Speed", Default = 60, Rounding = 0, Max = 400 })
else
    xa_5:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
    xa_5:AddToggle("SellFusedOnly", { Text = "Fused Only", Default = false })
    xa_5:AddSlider("SellMaxOVR", { Text = "Max OVR", Default = 70, Min = 1, Max = 99, Rounding = 0 })
    xa_5:AddSlider("SellMaxValue", { Text = "Max Value", Default = 20000, Min = 100, Max = 10000000, Rounding = 0 })
    xa_5:AddSlider("SellDelay", { Text = "Sell Delay", Default = 0.75, Min = 0.2, Max = 5, Rounding = 2 })
    xa_24 = xa_2.Sell:AddRightGroupbox("Auto Collect", "package-open")
    xa_24:AddToggle("AutoCollect", { Text = "Auto Collect", Default = false })
    xa_10 = xa_2.Fuse:AddLeftGroupbox("Auto Fuse", "combine")
    xa_10:AddToggle("AutoFuse", { Text = "Auto Fuse", Default = false })
    xa_10:AddSlider("FuseMinOVR", { Text = "Min OVR", Default = 0, Min = 0, Max = 99, Rounding = 0 })
    xa_10:AddSlider("FuseMaxOVR", { Text = "Max OVR", Default = 99, Min = 1, Max = 99, Rounding = 0 })
    xa_10:AddSlider("FuseMaxValue", { Text = "Max Value", Default = 50000, Min = 100, Max = 10000000, Rounding = 0 })
    xa_10:AddSlider("FuseMinInputs", { Text = "Min Inputs", Default = 2, Min = 2, Max = 8, Rounding = 0 })
    xa_10:AddSlider("FuseDelay", { Text = "Fuse Delay", Default = 1.25, Min = 0.4, Max = 5, Rounding = 2 })
    qj = xa_2.Player:AddLeftGroupbox("Movement", "footprints")
    qj:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    qj:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    qj:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    qj:AddToggle("NoClip", { Text = "NoClip", Default = false })
    qj:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    qg = xa_2.Player:AddRightGroupbox("Fly", "feather")
    qg:AddToggle("Fly", { Text = "Fly", Default = false })
    qg:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    pG = function(ib)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not ib)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not ib
            end
        end)
        if not ib then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(pa, "GameplayPaused", false)
            else
                pa.GameplayPaused = false
            end
        end)
    end
end
Toggles.AntiGameplayPause:OnChanged(fns.fn146)
Toggles.Fly:OnChanged(fn965)
Toggles.WalkSpeedEnabled:OnChanged(fn1091)
Toggles.AutoRoll:OnChanged(fn836)
Options.AutoBuyTiers:OnChanged(fn1062)
Toggles.AutoCollect:OnChanged(fn898)
RunService.Stepped:Connect(fns.onStepped)
UserInputService.JumpRequest:Connect(fns.onJumpRequest)
oJ = Workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
local MenuGroup = xa_2.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
pi = tick()
pc = tick()
pcall(function()
    for i, v in ipairs(getconnections(pa.Idled)) do
        local v0 = v
        pcall(function()
            v0:Disable()
        end)
    end
end)
oS = fn1028
connection2 = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection3 = UserInputService.InputChanged:Connect(fns.onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton({ Text = "Unload", Func = onUnload })
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/make-soccer-players")
local qe = SaveManager:BuildConfigSection(xa_2.Settings)
pE = fns.fn302
o2 = fns.fn159
oO = fn579
pB = function(jQ)
    local wy
    wy = nil
    local wz = type(jQ) ~= "table" or type(jQ.idx) ~= "string" or type(jQ.type) ~= "string" or SaveManager.Ignore[jQ.idx]
    if wz then
        return false
    end
    wy = pE(jQ.type, jQ.idx)
    if not wy then
        return false
    end
    local wz_1 = pcall(function()
        if jQ.type == "Input" then
            if type(jQ.text) ~= "string" then
                return
            end
            wy:SetValue(jQ.text)
        elseif jQ.type == "ColorPicker" then
            wy:SetValueRGB(Color3.fromHex(jQ.value), jQ.transparency)
        elseif jQ.type == "KeyPicker" then
            wy:SetValue({ jQ.key, jQ.mode, jQ.modifiers })
            if jQ.mode == "Toggle" and jQ.toggled ~= nil then
                wy.Toggled = jQ.toggled
                wy:Update()
            end
        else
            wy:SetValue(jQ.value)
        end
    end)
    return wz_1
end
if ("LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w" and (MenuGroup and false) or connection3 and not connection3 and (not connection3 or MenuGroup)) and not ("LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w" and (MenuGroup and false) or connection3 and not connection3 and (not connection3 or MenuGroup)) then
    ThemeManager:AddDivider()
    ThemeManager:AddInput("SaveManager_ImportSource", { AllowEmpty = true, Text = "Paste exported config here", Finished = true })
    ThemeManager:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
    ThemeManager:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
    qe:ApplyToTab(SaveManager.Settings)
    qe:LoadDefault()
    Library:LoadAutoloadConfig()
    task.spawn(fns.worker6)
    task.spawn(worker5)
    task.spawn(fns.worker4)
    task.spawn(fns.worker3)
    task.spawn(fns.antiGameplayPauseLoop)
    task.spawn(fns.worker2)
    xa_2:OnUnload(fns.fn134)
else
    qe:AddDivider()
    qe:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    qe:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
    qe:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
    ThemeManager:ApplyToTab(xa_2.Settings)
    ThemeManager:LoadDefault()
    SaveManager:LoadAutoloadConfig()
    task.spawn(fns.worker6)
    task.spawn(worker5)
    task.spawn(fns.worker4)
    task.spawn(fns.worker3)
    task.spawn(fns.antiGameplayPauseLoop)
    task.spawn(fns.worker2)
    Library:OnUnload(fns.fn134)
end
