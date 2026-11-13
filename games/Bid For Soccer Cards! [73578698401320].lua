local fns = {}
local vW_2, vW_4, vW_5, vW_7, vW_10, vW_13, vW_14, vW_18, vW_19, MoneyBroadcast
local ox
local ob
local UserInputService
local nT
local EquipChair
local oh
local Tables
local nZ
local SellAll
local oo
local o7
local GetTableOptionConfig
local oP
local EquipBest
local oa
local oV
local ClaimOfflineEarnings
local oC
local og
local RequestIndex
local nY
local oI
local nF
local on
local o6
local CurrentCamera
local oO
local nL
local ov
local TableOptionRequest
local VirtualUser
local nR
local oB
local BidSubmitted
local HttpService
local oH
local nE
local om
local o5
local n2
local nK
local BrainrotInfo
local promptId
local QuickJoin
local oT
local nQ
local Label
local oe
local connection2
local nW
local PurchaseChair
local nD
local ol
local PurchaseLuckUpgrade
local RequestInventory
local oM
local nJ
local ot
local pa
local n7
local oS
local nP
local oz
local od
local oY
local SpinRequest
local LocalPlayer
local SellItem
local oj
local o3
local n0
local connection
local oq
local RebirthRequest
local n6
local oR
local BrainrotEconomy
local SaveManager
local CollectCash
local oE
local oi
local o2
local n_
local oK
local nH
local op
local o8
local n5
local oQ
local nN
function fns.worker2()
    while not o5.Unloaded do
        RequestInventory:FireServer()
        RequestIndex:FireServer()
        task.wait(10)
    end
end
function fns.worker8()
    while not o5.Unloaded do
        task.wait(2)
        if oI("AntiAfk") then
            local uS = tick() - oo
            local uT = tick() - ol
            if uS >= 300 and uT >= 60 then
                pcall(n5)
            else
                if uS < 300 and uT >= 300 then
                    pcall(n5)
                end
            end
        end
    end
end
function fns.fn24(ez, eA, eB)
    return string.format("<b>%s</b> %s %s", ez, ob("-", "#5a6070"), ob(eA, eB))
end
function fns.fn47(ew, ex)
    return string.format('<font color="%s">%s</font>', ex, ew)
end
function fns.onInputBegan()
    oo = tick()
end
function fns.onOnClientEvent9(ej, ek, el, em, en, eo, ep, eq)
    local s_ = o5.Unloaded or not oI("WebhookWins") or em ~= "win" or type(en) ~= "string"
    if s_ then
        return
    end
    task.spawn(nN, en, eo, eq)
end
function fns.fn76(bt)
    local qG_1
    if type(bt) ~= "table" then
        return "Common"
    end
    local qF = type(bt.soccerRarity) == "string" and bt.soccerRarity ~= ""
    local qF_2
    if qF then
        return bt.soccerRarity
    end
    local qF_1 = type(bt.rarity) == "string" and bt.rarity ~= ""
    if qF_1 then
        return bt.rarity
    end
    qF_2, qG_1 = pcall(om.getItemData, bt.name)
    local qH = qF_2 and type(qG_1) == "table"
    if qH then
        local qF_3 = type(qG_1.Rarity) == "string" and qG_1.Rarity ~= ""
        if qF_3 then
            return qG_1.Rarity
        end
        return "Common"
    end
    return "Common"
end
function fns.fn96(dV)
    local sC = oR.WebhookUrl and oR.WebhookUrl.Value or ""
    local sB_1 = not o8 or type(sC) ~= "string" or not sC:match("^https://")
    if sB_1 then
        return false
    end
    local sB_2 = pcall(o8, {
        Url = sC,
        Method = "POST",
        Headers = { ["Content-Type"] = "application/json" },
        Body = HttpService:JSONEncode(dV)
    })
    return sB_2
end
function fns.worker4()
    while not o5.Unloaded do
        if oI("AutoSell") then
            local vd_1 = n7("SellRarities")
            for k, v in oh do
                if vd_1[v] then
                    SellAll:FireServer(v)
                    task.wait(0.3)
                end
            end
        end
        if oI("AutoSellEarn") then
            local vd_2 = oq("SellUnderEarn", 0)
            if vd_2 > 0 then
                for k, v in n6 do
                    local ve = type(v) == "table" and v.id
                    if ve then
                        if oi(v) < vd_2 then
                            SellItem:FireServer(v.id)
                            task.wait(0.2)
                        end
                    end
                end
            end
        end
        task.wait(oq("SellDelay", 5))
    end
end
function fns.fn127()
    if not oV.WalkSpeedEnabled.Value then
        local tB = nL()
        if tB then
            tB.WalkSpeed = 16
        end
    end
end
function fns.fn189()
    local uk = {}
    for k, v in { oV, oR } do
        for k, v in pairs(v) do
            local ul = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if ul then
                local ul_1 = n_(k, v)
                if ul_1 then
                    uk[#uk + 1] = ul_1
                end
            end
        end
    end
    table.sort(uk, function(hB, hC)
        if hB.type ~= hC.type then
            return hB.type < hC.type
        end
        return hB.idx < hC.idx
    end)
    return { objects = uk }
end
function fns.worker6()
    while not o5.Unloaded do
        local u6 = oI("AutoSpin") and not o7
        if u6 then
            local u7 = LocalPlayer:GetAttribute("SpinRounds") or 0
            u6 = u7 > 0
        end
        if u6 then
            o7 = true
            SpinRequest:FireServer()
            task.delay(oq("SpinDelay", 8) + 5, function()
                o7 = false
            end)
        end
        task.wait(oq("SpinDelay", 8))
    end
end
function fns.onOnClientEvent5(aP)
    if type(aP) == "table" then
        nP = aP
    end
end
function fns.fn225()
    if not oV.Fly.Value then
        local tz = nL()
        if tz then
            tz.PlatformStand = false
        end
    end
end
function fns.onOnClientEvent(aD)
    local qa = type(aD) == "table" and aD
    n6 = qa or {}
end
function fns.fn231(b5)
    local q_ = n7("BidRarities")
    local q0 = n7("BidVariants")
    local q1 = next(q_) ~= nil
    local q2 = next(q0) ~= nil
    local q3 = not q2
    local q4 = not q1
    if q4 ~= false then
        q4 = q3
    end
    if q4 then
        return true
    elseif not b5 then
        return true
    else
        local q3_1 = q1 and q_[oT(b5)] == true
        local q__1 = q3_1
        local rb = if q__1 then 1 else 0
        local q9 = 3679 * rb + 1585 * (1 - rb)
        local ra = 3755 * rb + 2508 * (1 - rb)
        if not ((q9 * 1864 + ra * 3332 + q9 * ra) % 16777213 == 16406748) then
            q__1 = q2 and q0[b5.variant] == true
        end
        return q__1
    end
end
function fns.fn235(ai, aj)
    if setclipboard then
        setclipboard(ai)
    elseif toclipboard then
        toclipboard(ai)
    end
    o5:Notify(aj)
end
function fns.fn253()
    oK(nH, "Copied Discord invite to clipboard")
end
function fns.onExportConfigToClipboard()
    local uF_1
    local uE_1
    uE_1, uF_1 = pcall(HttpService.JSONEncode, HttpService, nK())
    if not uE_1 then
        o5:Notify("Failed to encode the config")
        return
    end
    local uE_2 = setclipboard or toclipboard
    local uE_3 = type(uE_2) ~= "function" or not pcall(uE_2, uF_1)
    if uE_3 then
        o5:Notify("Your executor does not support copying to the clipboard")
        return
    end
    o5:Notify("Config copied to clipboard", 6)
end
function fns.fn285(bb, bc)
    local qs = oR[bb]
    local qt = qs and tonumber(qs.Value)
    local qs_1 = qt
    local qx = if qs_1 then 1 else 0
    local qv = 1932 * qx + 3579 * (1 - qx)
    local qw = 1010 * qx + 1341 * (1 - qx)
    if not ((qv * 3451 + qw * 1113 + qv * qw) % 16777213 == 9742782) then
        qs_1 = bc
    end
    return qs_1
end
function fns.luckAmountLoop()
    while not o5.Unloaded do
        local u9 = oI("AutoLuck") and nF() > oq("LuckReserve", 0)
        if u9 then
            local va = oR.LuckAmount and oR.LuckAmount.Value or "100"
            PurchaseLuckUpgrade:FireServer(va)
        end
        task.wait(oq("LuckDelay", 2))
    end
end
function fns.fn315(cW)
    local r0 = on()
    local r1
    local r2 = oI("IndexPriority") and oe(r0)
    if r2 then
        r1 = oS(cW, true)
    else
        local r2_1 = (n2(r0))
        if r2_1 then
            local r3 = oI("AutoPassCheap") and pa(r0)
            r2_1 = not r3
        end
        if r2_1 then
            r1 = oS(cW, false)
        end
    end
    if r1 then
        local r0_1 = cW.options[r1]
        BidSubmitted:FireServer({ action = "bid", auctionId = cW.auctionId, promptId = cW.promptId, amount = r0_1.amount })
        return
    end
    if cW.canPass == true then
        BidSubmitted:FireServer({ action = "pass", auctionId = cW.auctionId, promptId = cW.promptId })
    end
end
function fns.fn367()
    local rc = type(nJ) == "table" and nJ.participants
    if type(rc) ~= "table" then
        return false
    end
    local rc_1 = oq("MinOpponentLuck", 0)
    local re = oq("MinOpponentMoney", 0)
    for k, v in rc do
        local rd_1 = type(v) == "table" and v.userId
        local rf = rd_1
        if rd_1 then
            rd_1 = rf ~= LocalPlayer.UserId
        end
        if rd_1 then
            local rd_2 = nW[rf] or 0
            local rd_3 = (tonumber(v.money))
            local rq = if rd_3 then 1 else 0
            local ro = 2160 * rq + 2182 * (1 - rq)
            local rp = 3162 * rq + 1480 * (1 - rq)
            if not ((ro * 2753 + rp * 4004 + ro * rp) % 16777213 == 8659835) then
                rd_3 = nT[rf]
            end
            local rf_1 = rd_3 or 0
            if rc_1 > 0 and rd_2 < rc_1 then
                return true
            end
            if re > 0 and rf_1 < re then
                return true
            end
        end
    end
    return false
end
function fns.fn380(d3, d4, d5)
    local sF = o2(d3)
    local sG = d4 ~= ""
    local sH = type(d4) == "string" and sG
    local sH_1 = sH and d4 or "Normal"
    local sI = sH_1 == "Normal" and d3 or sH_1 .. " " .. d3
    local sI_1 = BrainrotEconomy.getRollValue(d3, sH_1, 0)
    local sJ = oi({ name = d3, variant = sH_1, rarity = sF })
    local sK = {
        name = LocalPlayer.DisplayName .. " (@" .. LocalPlayer.Name .. ")",
        icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. LocalPlayer.UserId .. "&width=150&height=150&format=png"
    }
    local sL = "**" .. sI .. "**"
    local sM = od(sF)
    local sN = { name = "Rarity", value = "`" .. sF .. "`", inline = true }
    local sO = { name = "Variant", value = "`" .. sH_1 .. "`", inline = true }
    local sP = {
        name = "Multiplier",
        value = "`x" .. BrainrotEconomy.getVariantMultiplier(sH_1) .. "`",
        inline = true
    }
    local sQ = { name = "Cash / Second", value = "`" .. n0(sJ) .. "`", inline = true }
    local sR = { name = "Value", value = "`" .. n0(sI_1) .. "`", inline = true }
    local sS = d5
    local sW = if sS then 1 else 0
    local sU = 889 * sW + 3486 * (1 - sW)
    local sV = 1373 * sW + 1308 * (1 - sW)
    if not ((sU * 1692 + sV * 2314 + sU * sV) % 16777213 == 5901907) then
        sS = 0
    end
    return {
        author = sK,
        title = "Auction Won",
        description = sL,
        color = sM,
        fields = { sN, sO, sP, sQ, sR, { name = "Paid", value = "`" .. n0(sS) .. "`", inline = true } },
        footer = { text = "Ouroboros Hub | Bid For Soccer Cards!" },
        timestamp = DateTime.now():ToIsoDate()
    }
end
function fns.fn415()
    local Character = LocalPlayer.Character
    local ta = Character and Character:FindFirstChildOfClass("Humanoid")
    return ta
end
function fns.onUnload()
    o5:Unload()
end
function fns.fn427()
    og(oV.AntiGameplayPause.Value)
end
function fns.onSendTestWebhook()
    if not o8 then
        o5:Notify("Your executor does not support http requests")
        return
    end
    local tO = next(BrainrotInfo)
    if nN(tO, "Rainbow", 1000000) == false then
        o5:Notify("Webhook failed, check the URL")
    else
        o5:Notify("Test webhook sent")
    end
end
function fns.fn479(a6)
    local qm = oV[a6]
    return qm ~= nil and qm.Value == true
end
function fns.onClaimOfflineEarnings()
    ClaimOfflineEarnings:FireServer()
end
function fns.onCopySolanaAddress()
    oK(oB, "Copied Solana address")
end
function fns.onOnClientEvent4(aM, aN)
    local qi = tonumber(aN) or 0
    nT[aM] = qi
end
function fns.fn578(bh)
    local qy = oR[bh]
    local qz = qy and qy.Value
    local qz_1 = type(qz) == "table" and qz
    return qz_1 or {}
end
function fns.fn595()
    local s2_1
    local s1_1
    if identifyexecutor then
        s2_1, s1_1 = identifyexecutor()
        local s3 = s2_1 ~= ""
        local s4 = type(s2_1) == "string" and s3
        if s4 then
            local s3_1 = type(s1_1) == "string" and s1_1 ~= "" and s2_1 .. " " .. s1_1
            oY = s3_1 or s2_1
        end
    end
end
function fns.fn609()
    nJ = nil
    nE = nil
end
function fns.fn655()
    connection:Disconnect()
    connection2:Disconnect()
    og(false)
    local t4 = nL()
    if t4 then
        t4.PlatformStand = false
        t4.WalkSpeed = 16
    end
end
function fns.fn682(cy)
    local rr = oq("PassUnder", 0)
    if rr <= 0 or not cy then
        return false
    end
    return oi(cy) < rr
end
function fns.fn692()
    local Character = LocalPlayer.Character
    local qR = Character and Character:FindFirstChildOfClass("Humanoid")
    local qQ_1 = qR
    if qR then
        qR = qQ_1.SeatPart
    end
    local qQ_2 = qR
    local qR_1 = qQ_2 ~= nil and qQ_2:IsDescendantOf(Tables)
    return qR_1
end
function fns.worker()
    local s7_1
    while true do
        task.wait(1)
        if o5.Unloaded then
            break
        end
        local s6 = math.floor(os.clock() - oa)
        if s6 < 60 then
            s7_1 = s6 .. "s"
        elseif s6 < 3600 then
            s7_1 = string.format("%dm %ds", s6 // 60, s6 % 60)
        else
            s7_1 = string.format("%dh %dm", s6 // 3600, s6 % 3600 // 60)
        end
        Label:SetText(nY("Session time", s7_1, o6))
    end
end
function fns.onJumpRequest()
    if o5.Unloaded then
        return
    end
    if oV.InfJump and oV.InfJump.Value then
        local tq_1 = nL()
        if tq_1 then
            tq_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.onOnClientEvent3(aJ, aK)
    local qg = tonumber(aK) or 0
    nW[aJ] = qg
end
function fns.fn740(aS)
    if type(aS) == "table" then
        nJ = aS
    end
end
function fns.onCopyVenmoLink()
    oK(ot, "Copied Venmo link")
end
local function fn767(a0)
    local DiscordGroup = a0:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = oz })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = oz })
end
local function fn769(he, hf)
    local ua_1 = (he == "Toggle" and oV or oR)[hf]
    local t9_2 = type(ua_1) == "table" and ua_1.Type == he
    return t9_2 and ua_1 or nil
end
local function worker5()
    while not o5.Unloaded do
        if oI("AutoCollect") then
            CollectCash:FireServer()
        end
        if oI("AutoEquipBest") then
            EquipBest:FireServer()
        end
        if oI("AutoRebirth") then
            RebirthRequest:FireServer()
        end
        task.wait(oq("CashDelay", 2))
    end
end
local function onOnClientEvent6()
    o7 = false
end
local function onOnClientEvent2(aF, aG)
    local qe = aF == "__FULL__" and type(aG) == "table"
    if qe then
        nZ = aG
    end
end
local function onRscripts()
    oK(nD, "Copied Rscripts profile to clipboard")
end
local function onRenderStepped(f9)
    if o5.Unloaded then
        return
    end
    if oV.WalkSpeedEnabled and oV.WalkSpeedEnabled.Value then
        local ts_1 = nL()
        if ts_1 then
            ts_1.WalkSpeed = oR.WalkSpeed.Value
        end
    end
    if oV.Fly and oV.Fly.Value then
        local ts_3 = o3()
        local tt = nL()
        if ts_3 and tt then
            tt.PlatformStand = true
            local tt_1 = Vector3.zero
            local ty = if UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
            if ty == 1 then
                tt_1 += CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                tt_1 -= CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                tt_1 -= CurrentCamera.CFrame.RightVector
            end
            local ty_1 = if UserInputService:IsKeyDown(Enum.KeyCode.D) then 1 else 0
            if ty_1 == 1 then
                tt_1 += CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                tt_1 += Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                tt_1 -= Vector3.new(0, 1, 0)
            end
            ts_3.AssemblyLinearVelocity = Vector3.zero
            if tt_1.Magnitude > 0 then
                ts_3.CFrame = ts_3.CFrame + tt_1.Unit * oR.FlySpeed.Value * f9
            end
        end
    end
end
local function fn853(eg, eh, ei)
    local sX = oI("WebhookPing") and "@everyone"
    local sY = sX or nil
    return nR({ username = "Ouroboros Hub", content = sY, embeds = { oP(eg, eh, ei) } })
end
local function fn858(hm, hn)
    local Type = hn.Type
    if Type == "Toggle" then
        return { idx = hm, type = "Toggle", value = hn.Value == true }
    elseif Type == "Slider" then
        return { idx = hm, type = "Slider", value = tostring(hn.Value) }
    elseif Type == "Dropdown" then
        return { idx = hm, type = "Dropdown", multi = hn.Multi == true, value = hn.Value }
    elseif Type == "Input" then
        local ue = hn.Value or ""
        return { idx = hm, type = "Input", text = tostring(ue) }
    elseif Type == "ColorPicker" then
        return { idx = hm, type = "ColorPicker", value = hn.Value:ToHex(), transparency = hn.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = hm,
            type = "KeyPicker",
            mode = hn.Mode,
            key = hn.Value,
            modifiers = hn.Modifiers,
            toggled = hn.Toggled
        }
    else
        return nil
    end
end
local function onStepped()
    if o5.Unloaded then
        return
    end
    if oV.NoClip and oV.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in Character:GetDescendants() do
                local ti_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if ti_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function onCopyUSDTAddress()
    oK(oC, "Copied USDT address")
end
local function fn867(dO)
    local ss = oj.RARITY_COLOURS[dO]
    if typeof(ss) ~= "Color3" then
        return 3092790
    end
    return math.floor(ss.R * 255 + 0.5) * 65536 + math.floor(ss.G * 255 + 0.5) * 256 + math.floor(ss.B * 255 + 0.5)
end
local function fn941()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    ol = tick()
end
local function antiGameplayPauseLoop()
    while not o5.Unloaded do
        task.wait(1)
        if oV.AntiGameplayPause.Value then
            og(true)
        end
    end
end
local function worker7()
    while not o5.Unloaded do
        local uW = oI("AutoJoin") and LocalPlayer:GetAttribute("ClientInDuel") ~= true and not nQ()
        if uW then
            QuickJoin:FireServer()
        end
        task.wait(oq("JoinDelay", 0.5))
    end
end
local function onCopyJoinScript_JobID()
    local eT = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, ov)
    oK(eT, "Copied join script to clipboard")
end
local function onImportConfigFromClipboardTex()
    local uK_1
    local uI = oR.SaveManager_ImportSource.Value or ""
    local uI_1
    local uJ = tostring(uI):match("^%s*(.-)%s*$")
    if uJ == "" then
        o5:Notify("Paste an exported config into the box first")
        return
    end
    uI_1, uK_1 = pcall(HttpService.JSONDecode, HttpService, uJ)
    local uJ_1 = not uI_1 or type(uK_1) ~= "table" or type(uK_1.objects) ~= "table"
    if uJ_1 then
        o5:Notify("That is not a valid exported config")
        return
    end
    local uI_2 = 0
    for k, v in uK_1.objects do
        if op(v) then
            uI_2 += 1
        end
    end
    if uI_2 == 0 then
        o5:Notify("No settings in that config matched this script")
        return
    end
    oR.SaveManager_ImportSource:SetValue("")
    local uK_2 = uI_2 == 1 and "" or "s"
    o5:Notify(("Imported %d setting%s"):format(uI_2, uK_2), 6)
end
local function onCopyBitcoinAddress()
    oK(oH, "Copied Bitcoin address")
end
local function onInputChanged(g1)
    local UserInputType = g1.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        oo = tick()
    end
end
local function tableOptionLoop()
    while not o5.Unloaded do
        local uY = not nJ
        local uY_1
        local uZ = oI("AutoTableOption") and uY
        local uZ_1
        if uZ then
            uY_1, uZ_1 = pcall(function()
                return GetTableOptionConfig:InvokeServer()
            end)
            local u_ = uY_1 and type(uZ_1) == "table"
            if u_ then
                local uY_2 = oR.TableOption and oR.TableOption.Value
                local u__1 = uY_2
                if uY_2 then
                    uY_2 = uZ_1[u__1]
                end
                local u0 = uY_2
                if uY_2 then
                    local u1 = tonumber(u0.tokenCount) or 0
                    uY_2 = u1 > 0
                end
                if uY_2 then
                    uY_2 = uZ_1._activeKey ~= u__1
                end
                if uY_2 then
                    TableOptionRequest:FireServer(u__1)
                end
            end
        end
        task.wait(5)
    end
end
local function worker3()
    local vv_1
    while not o5.Unloaded do
        if oI("AutoBuyChair") then
            if not nP then
                PurchaseChair:FireServer("DefaultChair")
            else
                local vs = type(nP.normal) == "table" and nP.normal
                local vt = {}
                local vt_2
                local vu = vs or vt
                local vu_1, vu_2
                local vt_1 = nF()
                vv_1, vu_1 = nil, -1
                for k, v in vu do
                    local vw_1 = type(v) == "table" and v.owned ~= true
                    if vw_1 then
                        local vx_1 = tonumber(v.price) or math.huge
                        vw_1 = vx_1 <= vt_1
                    end
                    if vw_1 then
                        local vw_2 = tonumber(v.luck) or 0
                        if vw_2 > vu_1 then
                            vv_1, vu_1 = k, vw_2
                        end
                    end
                end
                if vv_1 then
                    PurchaseChair:FireServer(vv_1)
                else
                    vu_2, vt_2 = nil, -1
                    local vv_2 = type(nP.special) == "table" and nP.special
                    local vx_3 = vv_2 or {}
                    for k, v in { vu, vx_3 } do
                        for k, v in v do
                            local vs_2 = type(v) == "table" and v.owned == true
                            if vs_2 then
                                local vs_3 = tonumber(v.luck) or 0
                                if vs_3 > vt_2 then
                                    vu_2, vt_2 = k, vs_3
                                end
                            end
                        end
                    end
                    if vu_2 and nP.equippedChair ~= vu_2 then
                        EquipChair:FireServer(vu_2)
                        nP.equippedChair = vu_2
                    end
                end
            end
        end
        task.wait(oq("ChairDelay", 5))
    end
end
local function fn1132()
    local Character = LocalPlayer.Character
    local tg = Character and Character:FindFirstChild("HumanoidRootPart")
    return tg
end
local function fn1163(dB)
    local sj_1, sj_4
    local si_1, si_8
    si_1, sj_1 = pcall(om.getItemData, dB)
    local sk = si_1 and type(sj_1) == "table"
    if sk then
        local si_2 = type(sj_1.Rarity) == "string" and sj_1.Rarity ~= ""
        if si_2 then
            return sj_1.Rarity
        end
        local si_3 = type(dB) == "string" and BrainrotInfo[dB]
        if type(sj_4) == "table" then
            if si_8 then
                return si_3.SoccerRarity
            end
            local Rarities = si_3.Rarities
            local sj_3 = type(Rarities) == "table" and Rarities[1]
            return sj_3 or "Unknown"
        end
        return "Unknown"
    end
    local si_7 = type(dB) == "string" and BrainrotInfo[dB]
    sj_4 = si_7
    if type(sj_4) == "table" then
        si_8 = type(sj_4.SoccerRarity) == "string" and sj_4.SoccerRarity ~= ""
        if si_8 then
            return sj_4.SoccerRarity
        end
        local Rarities = sj_4.Rarities
        local sj_5 = type(Rarities) == "table" and Rarities[1]
        return sj_5 or "Unknown"
    end
    return "Unknown"
end
local function onCopyLitecoinAddress()
    oK(oM, "Copied Litecoin address")
end
local function fn1197()
    if type(nJ) ~= "table" then
        return nil
    elseif type(nJ.brainrot) == "table" then
        return nJ.brainrot
    elseif type(nJ.card) == "table" then
        return nJ.card
    elseif type(nJ.item) == "table" then
        return nJ.item
    else
        return nil
    end
end
local function onOnClientEvent7()
    local r5 = o5.Unloaded
    local r9 = if r5 then 1 else 0
    local r7 = 2688 * r9 + 3659 * (1 - r9)
    local r8 = 48 * r9 + 1792 * (1 - r9)
    if not ((r7 * 3057 + r8 * 2952 + r7 * r8) % 16777213 == 8487936) then
        r5 = not oI("AutoLeaveBad")
    end
    if r5 then
        return
    end
    local r9_1 = if oQ() then 1 else 0
    if r9_1 == 1 then
        oO()
    end
end
local function fn1210()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local qD = leaderstats and leaderstats:FindFirstChild("Money")
    local qC_1 = qD
    if qD then
        qD = qC_1.Value
    end
    return qD or 0
end
local function fn1232(b1)
    if not b1 or not b1.sourceType or not b1.name or not b1.variant then
        return false
    end
    return nZ[b1.sourceType .. "|" .. b1.name .. "|" .. b1.variant] ~= true
end
local function onCopyPayPalLink()
    oK(ox, "Copied PayPal link")
end
local function fn1269(dS)
    local sy = tonumber(dS) or 0
    local sz = math.floor(sy)
    if sz >= 1000000000 then
        return "$" .. string.format("%.1f", sz / 1000000000):gsub("%.0$", "") .. "B"
    elseif sz >= 1000000 then
        return "$" .. string.format("%.1f", sz / 1000000):gsub("%.0$", "") .. "M"
    elseif sz >= 1000 then
        return "$" .. string.format("%.1f", sz / 1000):gsub("%.0$", "") .. "K"
    else
        return "$" .. tostring(sz)
    end
end
local function onOnClientEvent8(dn)
    local sg = not oI("AutoBid") or type(nE) ~= "table" or not nE.active
    if sg then
        return
    end
    local sg_1 = type(dn) == "table" and dn.promptId and dn.promptId ~= promptId
    if sg_1 then
        return
    end
    if nE.canPass == true then
        BidSubmitted:FireServer({ action = "pass", auctionId = nE.auctionId, promptId = nE.promptId })
    end
end
local function onCopyEthereumAddress()
    oK(oE, "Copied Ethereum address")
end
SellItem = nil
nD = nil
nE = nil
nF = nil
SellAll = nil
nH = nil
connection = nil
nJ = nil
nK = nil
nL = nil
EquipBest = nil
nN = nil
nP = nil
nQ = nil
nR = nil
ClaimOfflineEarnings = nil
nT = nil
CollectCash = nil
SpinRequest = nil
nW = nil
nY = nil
nZ = nil
n_ = nil
n0 = nil
RequestInventory = nil
n2 = nil
CurrentCamera = nil
GetTableOptionConfig = nil
n5 = nil
n6 = nil
n7 = nil
QuickJoin = nil
TableOptionRequest = nil
oa = nil
ob = nil
od = nil
oe = nil
BidSubmitted = nil
og = nil
oh = nil
oi = nil
oj = nil
ol = nil
om = nil
on = nil
oo = nil
op = nil
local nX, oc
oq = nil
ot = nil
BrainrotInfo = nil
ov = nil
ox = nil
BrainrotEconomy = nil
oz = nil
Label = nil
oB = nil
oC = nil
EquipChair = nil
oE = nil
LocalPlayer = nil
PurchaseChair = nil
oH = nil
oI = nil
oK = nil
oM = nil
oO = nil
oP = nil
oQ = nil
oR = nil
oS = nil
oT = nil
VirtualUser = nil
oV = nil
UserInputService = nil
SaveManager = nil
oY = nil
connection2 = nil
HttpService = nil
RequestIndex = nil
Tables = nil
o2 = nil
o3 = nil
PurchaseLuckUpgrade = nil
o5 = nil
o6 = nil
o7 = nil
o8 = nil
RebirthRequest = nil
pa = nil
promptId = nil
local ow, CoreGui, oL, GuiService
ow = nil
CoreGui = nil
oL = nil
GuiService = nil
HttpService, UserInputService, VirtualUser, GuiService, CoreGui, LocalPlayer = nil, nil, nil, nil, nil, nil
local vW_24 = game:GetService("Players")
local vW_1 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
HttpService = game:GetService("HttpService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
LocalPlayer = vW_24.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
BrainrotEconomy, BrainrotInfo, om, oj, vW_5, QuickJoin, RequestInventory, vW_14, CollectCash, ClaimOfflineEarnings, EquipBest, SellAll, SellItem, RebirthRequest, PurchaseLuckUpgrade, RequestIndex, vW_10, MoneyBroadcast, PurchaseChair, EquipChair, vW_13, vW_7, vW_19, BidSubmitted, vW_2, TableOptionRequest, GetTableOptionConfig, SpinRequest, nH, nD, o5, SaveManager, oV, oR, vW_4, oh, oc, n6, nZ, nW, nT, nP, nJ, nE, promptId, o7, Tables, vW_18, oK, oz, nX = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local vW_9 = vW_1:WaitForChild("BrainrotsThings"):WaitForChild("Misc")
BrainrotEconomy = require(vW_9:WaitForChild("BrainrotEconomy"))
if GetTableOptionConfig and TableOptionRequest and (TableOptionRequest or not MoneyBroadcast) and (TableOptionRequest or MoneyBroadcast or (MoneyBroadcast or Tables)) and ((not TableOptionRequest or Tables) and (Tables or not TableOptionRequest) and (not TableOptionRequest or MoneyBroadcast or not GetTableOptionConfig and not GetTableOptionConfig)) and not (GetTableOptionConfig and TableOptionRequest and (TableOptionRequest or not MoneyBroadcast) and (TableOptionRequest or MoneyBroadcast or (MoneyBroadcast or Tables)) and ((not TableOptionRequest or Tables) and (Tables or not TableOptionRequest) and (not TableOptionRequest or MoneyBroadcast or not GetTableOptionConfig and not GetTableOptionConfig))) then
    vW_9 = require(BrainrotInfo:WaitForChild("BrainrotInfo"))
    oj = require(BrainrotInfo:WaitForChild("SoccerCardCatalog"))
    om = require(BrainrotInfo:WaitForChild("InventoryConfig"))
else
    BrainrotInfo = require(vW_9:WaitForChild("BrainrotInfo"))
    om = require(vW_9:WaitForChild("SoccerCardCatalog"))
    oj = require(vW_9:WaitForChild("InventoryConfig"))
end
local vW_30 = vW_9:WaitForChild("Events")
if not vW_30 and not vW_30 and (not vW_5 and PurchaseChair) or (vW_13 and not PurchaseChair or not vW_5 and PurchaseChair) or not (not vW_30 and not vW_30 and (not vW_5 and PurchaseChair) or (vW_13 and not PurchaseChair or not vW_5 and PurchaseChair)) then
    vW_5 = vW_30:WaitForChild("Player")
else
    vW_30 = vW_5:WaitForChild("Player")
end
local vW_16 = vW_30:WaitForChild("Tables")
QuickJoin = vW_5:WaitForChild("QuickJoin")
RequestInventory = vW_5:WaitForChild("RequestInventory")
if (not oV or not oV) and (vW_7 and vW_7) and ((Tables or vW_19) and (not nZ and not nZ)) and not ((not oV or not oV) and (vW_7 and vW_7) and ((Tables or vW_19) and (not nZ and not nZ))) then
    vW_5 = vW_14:WaitForChild("InventoryUpdated")
else
    vW_14 = vW_5:WaitForChild("InventoryUpdated")
end
CollectCash = vW_5:WaitForChild("CollectCash")
ClaimOfflineEarnings = vW_5:WaitForChild("ClaimOfflineEarnings")
EquipBest = vW_5:WaitForChild("EquipBest")
SellAll = vW_5:WaitForChild("SellAll")
SellItem = vW_5:WaitForChild("SellItem")
RebirthRequest = vW_5:WaitForChild("RebirthRequest")
PurchaseLuckUpgrade = vW_5:WaitForChild("PurchaseLuckUpgrade")
RequestIndex = vW_5:WaitForChild("RequestIndex")
local vW_35 = vW_5:WaitForChild("IndexUpdated")
if ((MoneyBroadcast or not MoneyBroadcast or vW_2 and not om) and (om and 142 and (not BrainrotInfo and not BrainrotInfo)) or ((om or not vW_4) and (om or BrainrotInfo))) and not ((MoneyBroadcast or not MoneyBroadcast or vW_2 and not om) and (om and 142 and (not BrainrotInfo and not BrainrotInfo)) or ((om or not vW_4) and (om or BrainrotInfo))) then
    vW_5 = vW_10:WaitForChild("LuckBroadcast")
else
    vW_10 = vW_5:WaitForChild("LuckBroadcast")
end
MoneyBroadcast = vW_5:WaitForChild("MoneyBroadcast")
local vW_34 = vW_5:WaitForChild("ChairShopUpdated")
PurchaseChair = vW_5:WaitForChild("PurchaseChair")
EquipChair = vW_5:WaitForChild("EquipChair")
vW_13 = vW_16:WaitForChild("AuctionStarted")
local vW_21 = vW_16:WaitForChild("AuctionStateUpdated")
vW_7 = vW_16:WaitForChild("AuctionEnded")
vW_19 = vW_16:WaitForChild("AuctionCancelled")
local vW_25 = vW_16:WaitForChild("AuctionPrompt")
BidSubmitted = vW_16:WaitForChild("BidSubmitted")
local vW_36 = vW_16:WaitForChild("BidRejected")
vW_2 = vW_16:WaitForChild("MatchResolved")
TableOptionRequest = vW_16:WaitForChild("TableOptionRequest")
GetTableOptionConfig = vW_16:WaitForChild("GetTableOptionConfig")
local vW_3 = vW_1:WaitForChild("SpinWheelRemotes")
SpinRequest = vW_3:WaitForChild("SpinRequest")
local vW_12 = vW_3:WaitForChild("SpinResult")
local nO = "Bid For Soccer Cards!"
nH = "https://discord.gg/ehKVq7pf7v"
nD = "https://rscripts.net/@Ouroboros"
o5 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
if not nW and not RequestIndex and (not nW or not RequestIndex) and (not oR and nP or (not nW or not nW)) and ((RequestIndex or oR) and (RequestIndex or RequestIndex) or not oh and not oh and (not nW and vW_18)) or not (not nW and not RequestIndex and (not nW or not RequestIndex) and (not oR and nP or (not nW or not nW)) and ((RequestIndex or oR) and (RequestIndex or RequestIndex) or not oh and not oh and (not nW and vW_18))) then
    oV = o5.Toggles
    oR = o5.Options
    oK = fns.fn235
else
    o5 = oK.Toggles
    oV = oK.Options
    oR = fns.fn235
end
oz = fns.fn253
vW_4 = {
    "Common",
    "Uncommon",
    "Rare",
    "Epic",
    "Legendary",
    "Mythic",
    "Mythical",
    "Cosmic",
    "Secret",
    "Celestial",
    "Divine",
    "Eternal",
    "Exclusive",
    "Hacked"
}
oh = {
    "Common",
    "Uncommon",
    "Rare",
    "Epic",
    "Legendary",
    "Mythic",
    "Mythical",
    "Divine",
    "Celestial",
    "Cosmic",
    "Eternal",
    "Exclusive",
    "Hacked",
    "Secret"
}
local vW_15 = { "Normal", "Golden", "Diamond", "Galaxy", "Lava", "Volcanic", "Rainbow", "Hacked", "Void" }
oc = { "Small", "Medium", "High", "Extreme" }
local vW_27 = { "DivinePlus", "EternalPlus", "RandomSecret" }
n6 = {}
nZ = {}
if (oz or oz or (SaveManager or nX) or (nX or not nX or CollectCash and oz)) and ((CollectCash and SaveManager or nX and not oz) and ((SaveManager or not oz) and (not CollectCash and nX))) and not ((oz or oz or (SaveManager or nX) or (nX or not nX or CollectCash and oz)) and ((CollectCash and SaveManager or nX and not oz) and ((SaveManager or not oz) and (not CollectCash and nX)))) then
else
    nW = {}
end
if (vW_30 or SaveManager) and (not SaveManager and not vW_30) and ((vW_36 or SaveManager) and (vW_36 or not SaveManager)) and ((vW_30 and SaveManager or not SaveManager and vW_30) and (vW_36 and vW_36 or (vW_36 or SaveManager))) or ((vW_36 or not vW_36) and (vW_36 or not vW_30) or (not SaveManager and vW_36 or not vW_36 and vW_36)) and ((vW_30 or vW_30) and (SaveManager or not vW_36) and ((not vW_36 or vW_30) and (vW_36 or not vW_30))) or not ((vW_30 or SaveManager) and (not SaveManager and not vW_30) and ((vW_36 or SaveManager) and (vW_36 or not SaveManager)) and ((vW_30 and SaveManager or not SaveManager and vW_30) and (vW_36 and vW_36 or (vW_36 or SaveManager))) or ((vW_36 or not vW_36) and (vW_36 or not vW_30) or (not SaveManager and vW_36 or not vW_36 and vW_36)) and ((vW_30 or vW_30) and (SaveManager or not vW_36) and ((not vW_36 or vW_30) and (vW_36 or not vW_30)))) then
    nT = {}
    nP = nil
else
    nP = {}
    nT = nil
end
nJ = nil
nE = nil
promptId = nil
o7 = false
Tables = workspace:WaitForChild("Map"):WaitForChild("Tables")
vW_14.OnClientEvent:Connect(fns.onOnClientEvent)
vW_35.OnClientEvent:Connect(onOnClientEvent2)
vW_10.OnClientEvent:Connect(fns.onOnClientEvent3)
MoneyBroadcast.OnClientEvent:Connect(fns.onOnClientEvent4)
vW_34.OnClientEvent:Connect(fns.onOnClientEvent5)
local vW_28 = fns.fn740
vW_13.OnClientEvent:Connect(vW_28)
vW_21.OnClientEvent:Connect(vW_28)
nX = fns.fn609
vW_7.OnClientEvent:Connect(nX)
vW_19.OnClientEvent:Connect(nX)
vW_12.OnClientEvent:Connect(onOnClientEvent6)
RequestInventory:FireServer()
vW_24 = o5:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = nH, Copyable = true }, "|", nO },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
vW_18 = {
    Info = vW_24:AddTab("Info", "info"),
    Auction = vW_24:AddTab("Auction", "gavel"),
    Luck = vW_24:AddTab("Luck", "clover"),
    Economy = vW_24:AddTab("Economy", "coins"),
    Player = vW_24:AddTab("Player", "person-standing"),
    Webhook = vW_24:AddTab("Webhook", "webhook"),
    Settings = vW_24:AddTab("Settings", "settings")
}
local vW_11 = fn767
for k, v in vW_18 do
    vW_11(v)
end
oI, oq, n7, nF, oT, oi, nQ, oO, on, oe, n2, oQ, pa, oS, oL = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
oI = fns.fn479
oq = fns.fn285
n7 = fns.fn578
nF = fn1210
oT = fns.fn76
oi = function(bC)
    local qN_1
    local qM_1
    if type(bC) ~= "table" then
        return 0
    end
    qM_1, qN_1 = pcall(function()
        return BrainrotEconomy.getCashPerSecondForItem(bC, 1, 0)
    end)
    local qO = qM_1
    if qO then
        local qM_2 = tonumber(qN_1) or 0
        qO = qM_2
    end
    return qO or 0
end
nQ = fns.fn692
oO = function()
    local Character = LocalPlayer.Character
    local qV = Character and Character:FindFirstChildOfClass("Humanoid")
    local qT = qV
    if qT then
        qT.Sit = false
        qT.Jump = true
        pcall(function()
            qT:ChangeState(Enum.HumanoidStateType.GettingUp)
        end)
    end
    nX()
end
on = fn1197
oe = fn1232
n2 = fns.fn231
oQ = fns.fn367
pa = fns.fn682
oS = function(cB, cC)
    local rF
    local rE
    rE = nil
    rF = nil
    local rG = cC and 0
    local rH = rG or oq("MaxBid", 0)
    rE = rH
    local rH_1 = cC and "Highest Affordable"
    if not rH_1 then
        rH_1 = oR.BidStrategy and oR.BidStrategy.Value or "Highest Affordable"
    end
    local rG_3 = rH_1
    local rH_2 = type(cB.options) == "table" and cB.options
    rF = rH_2 or {}
    local function rH_3(cM)
        local ry = rF[cM]
        if not ry or ry.canAfford ~= true then
            return false
        end
        local rz_1 = (tonumber(ry.amount))
        local rD = if rz_1 then 1 else 0
        local rB = 2102 * rD + 1062 * (1 - rD)
        local rC = 2183 * rD + 533 * (1 - rD)
        if not ((rB * 1085 + rC * 3978 + rB * rC) % 16777213 == 15553310) then
            rz_1 = 0
        end
        return rE <= 0 or rz_1 <= rE
    end
    for k, v in oc do
        if rG_3 == v then
            local rI_3 = rH_3(k) and k
            return rI_3 or nil
        end
    end
    if rG_3 == "Lowest" then
        local rG_4 = #oc
        local rT = 1
        while rT <= rG_4 do
            local rU = rT
            if rH_3(rU) then
                return rU
            end
            rT += 1
        end
        return nil
    end
    local rY = #oc
    local rX = -1
    while false and rY <= 1 or true and rY >= 1 do
        local rZ = rY
        if rH_3(rZ) then
            return rZ
        end
        rY += rX
    end
    return nil
end
oL = fns.fn315
vW_13.OnClientEvent:Connect(onOnClientEvent7)
vW_25.OnClientEvent:Connect(function(c9)
    if type(c9) ~= "table" then
        return
    end
    nE = c9
    local se = not c9.active or o5.Unloaded or not oI("AutoBid")
    if se then
        return
    end
    promptId = c9.promptId
    task.delay(oq("BidDelay", 0.5), function()
        local sa = o5.Unloaded or not oI("AutoBid")
        if sa or nE ~= c9 then
            return
        end
        oL(c9)
    end)
end)
vW_36.OnClientEvent:Connect(onOnClientEvent8)
vW_12 = syn and syn.request
vW_24 = vW_12
if not vW_24 then
    vW_12 = http and http.request
    vW_24 = vW_12
end
if not vW_24 then
    vW_24 = http_request
end
if not vW_24 then
    vW_24 = request
end
o8, o6, oY, Label, ov, vW_14, o2, od, n0, nR, oP, nN, ob, nY = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
o8 = vW_24
o2 = fn1163
od = fn867
n0 = fn1269
nR = fns.fn96
oP = fns.fn380
nN = fn853
vW_2.OnClientEvent:Connect(fns.onOnClientEvent9)
ob = fns.fn47
nY = fns.fn24
vW_3 = "#7fd47f"
vW_5 = "#6ec1ff"
o6 = "#e8a34d"
vW_16 = "#8b93a3"
oY = "Unknown"
pcall(fns.fn595)
vW_12 = vW_18.Info:AddLeftGroupbox("Account", "circle-user")
vW_12:AddLabel(nY("User", LocalPlayer.Name, vW_3), true)
vW_12:AddLabel(nY("Status", "Keyless", vW_3), true)
vW_12:AddLabel(nY("Executor", oY, vW_3), true)
vW_28 = vW_18.Info:AddLeftGroupbox("Game Info", "gamepad-2")
vW_28:AddLabel(ob(nO .. " [" .. tostring(game.PlaceId) .. "]", vW_5), true)
vW_28:AddLabel(nY("Place ID", tostring(game.PlaceId), vW_5), true)
Label = vW_28:AddLabel(nY("Session time", "0s", o6), true)
ov = tostring(game.JobId)
if ((not od or od) and (not vW_12 or not vW_12) or not od and not vW_12 and (ov or oP) or (not oP and od or (not od or vW_12) or (ov and ov or ov and vW_12))) and ((oP or ov or vW_12 and not ov or (not ov and not od or (oP or not od))) and ((vW_12 or oP or not ov and not od) and (not od or oP or (ov or not oP)))) and not (((not od or od) and (not vW_12 or not vW_12) or not od and not vW_12 and (ov or oP) or (not oP and od or (not od or vW_12) or (ov and ov or ov and vW_12))) and ((oP or ov or vW_12 and not ov or (not ov and not od or (oP or not od))) and ((vW_12 or oP or not ov and not od) and (not od or oP or (ov or not oP))))) then
    ov = #vW_14 > 18
else
    vW_14 = #ov > 18
end
if vW_14 then
    vW_24 = 1
    repeat
        if vW_24 and not vW_24 or (not vW_24 or not vW_24) or (not vW_24 or vW_24) and (not vW_24 and not vW_24) or (not vW_24 and vW_24 or not vW_24 and not vW_24 or (vW_24 or vW_24) and (not vW_24 and vW_24)) or ((not vW_24 and not vW_24 or not vW_24 and not vW_24) and ((vW_24 or vW_24) and (vW_24 or not vW_24)) or (vW_24 or not vW_24) and (vW_24 and vW_24) and (vW_24 and not vW_24 and (vW_24 and not vW_24))) or not (vW_24 and not vW_24 or (not vW_24 or not vW_24) or (not vW_24 or vW_24) and (not vW_24 and not vW_24) or (not vW_24 and vW_24 or not vW_24 and not vW_24 or (vW_24 or vW_24) and (not vW_24 and vW_24)) or ((not vW_24 and not vW_24 or not vW_24 and not vW_24) and ((vW_24 or vW_24) and (vW_24 or not vW_24)) or (vW_24 or not vW_24) and (vW_24 and vW_24) and (vW_24 and not vW_24 and (vW_24 and not vW_24)))) then
            vW_14 = string.sub(ov, 1, 18) .. "..."
        else
            ov = string.sub(vW_14, 1, 18) .. "..."
        end
        vW_24 = (vW_24 + 0) % 4
    until (vW_24 * 3 + 0) % 4 == 3
end
vW_24 = vW_14 or ov
vW_25, oa, oM, oH, oE, oC, oB, ox, ot, vW_35, vW_36, vW_9, vW_1, CurrentCamera, oo, ol, connection, connection2, nL, o3, og, n5, ow, n_, nK, op = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if oC and n_ or (n_ or n5) or (not vW_35 and vW_36 or n_ and n5) or not (oC and n_ or (n_ or n5) or (not vW_35 and vW_36 or n_ and n5)) then
    vW_25 = vW_24
    vW_28:AddLabel(nY("Server", vW_25, vW_16), true)
    vW_28:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
    oa = os.clock()
else
    vW_16 = vW_25
    nY:AddLabel(oa("Server", vW_16, vW_28), true)
    nY:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
    os.clock()
end
task.spawn(fns.worker)
local ScriptsGroup = vW_18.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(ob("Included in this hub", vW_16), true)
ScriptsGroup:AddLabel(ob(nO, vW_5), true)
local FeaturesGroup = vW_18.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(ob("Auto Auction", vW_5), true)
FeaturesGroup:AddLabel(ob("Auto Economy", o6), true)
FeaturesGroup:AddLabel(ob("Luck & Chairs", vW_16), true)
local SocialsGroup = vW_18.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = oz })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = vW_18.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = oz })
oM = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
oH = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
oE = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
oC = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
oB = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
ox = "https://paypal.me/TheTruckerGOD"
ot = "https://venmo.com/u/miserablemusic"
vW_13, vW_11, vW_35, vW_34, vW_21, vW_7, vW_19 = "#345d9d", "#f7931a", "#627eea", "#26a17b", "#14f195", "#0070ba", "#008cff"
vW_14 = vW_18.Info:AddRightGroupbox("Donations", "heart")
vW_14:AddLabel(ob("All donations are optional but appreciated.", o6), true)
vW_14:AddLabel(ob("If you donate you get a special role, just PING after you donate.", vW_3), true)
vW_14:AddDivider()
vW_14:AddLabel(ob("LTC / Litecoin", vW_13), true)
vW_14:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
vW_14:AddLabel(ob("BTC / Bitcoin", vW_11), true)
vW_14:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
vW_14:AddLabel(ob("ETH / Ethereum", vW_35), true)
vW_14:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
vW_14:AddLabel(ob("USDT", vW_34), true)
vW_14:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
vW_14:AddLabel(ob("Solana", vW_21), true)
vW_14:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
vW_14:AddLabel(ob("PayPal", vW_7), true)
vW_14:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
vW_14:AddLabel(ob("Venmo", vW_19), true)
vW_14:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
vW_14:AddDivider()
vW_14:AddLabel(ob("Don't have any of the listed currencies but still wanna donate?", vW_16), true)
vW_14:AddLabel(ob("DM me and we'll work something out.", vW_5), true)
local FaqGroup = vW_18.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutoJoinGroup = vW_18.Auction:AddLeftGroupbox("Auto Join", "door-open")
AutoJoinGroup:AddToggle("AutoJoin", { Text = "Auto Join Auction", Default = false })
AutoJoinGroup:AddSlider("JoinDelay", { Text = "Join Delay", Default = 0.5, Min = 0.1, Max = 20, Rounding = 1 })
local AutoLeaveGroup = vW_18.Auction:AddLeftGroupbox("Auto Leave", "door-closed")
AutoLeaveGroup:AddToggle("AutoLeaveBad", { Text = "Leave Bad Opponents", Default = false })
AutoLeaveGroup:AddInput("MinOpponentLuck", { Text = "Min Opponent Luck", Default = "0", Numeric = true, Finished = true })
AutoLeaveGroup:AddInput("MinOpponentMoney", { Text = "Min Opponent Money", Default = "0", Numeric = true, Finished = true })
vW_2 = vW_18.Auction:AddRightGroupbox("Auto Bid", "gavel")
if (vW_9 or oH) and (vW_9 and not vW_1) and (vW_9 or false or vW_9 and vW_1) and not ((vW_9 or oH) and (vW_9 and not vW_1) and (vW_9 or false or vW_9 and vW_1)) then
    vW_15:AddToggle("AutoBid", { Text = "Auto Bid", Default = false })
    vW_15:AddDropdown("BidStrategy", {
        Default = "Highest Affordable",
        Values = { "Lowest", "Highest Affordable", "High", "Medium", "Small", "Extreme" },
        Text = "Bid Strategy"
    })
    vW_15:AddInput("MaxBid", { Finished = true, Default = "0", Numeric = true, Text = "Max Bid" })
    vW_15:AddDropdown("BidRarities", { Text = "Only Bid Rarities", Default = {}, Multi = true, Values = vW_2 })
    vW_15:AddDropdown("BidVariants", { Multi = true, Text = "Only Bid Variants", Default = {}, Values = vW_4 })
    vW_15:AddToggle("IndexPriority", { Text = "Always Bid For Index", Default = false })
    vW_15:AddToggle("AutoPassCheap", { Text = "Auto Pass Cheap Cards", Default = false })
    vW_15:AddInput("PassUnder", { Default = "0", Text = "Pass Under Cash Per Second", Finished = true, Numeric = true })
    vW_15:AddSlider("BidDelay", { Text = "Bid Delay", Max = 8, Rounding = 1, Min = 0, Default = 0.5 })
    vW_18 = vW_36.Luck:AddLeftGroupbox("Spin Wheel", "disc-3")
else
    vW_2:AddToggle("AutoBid", { Text = "Auto Bid", Default = false })
    vW_2:AddDropdown("BidStrategy", {
        Values = { "Highest Affordable", "Lowest", "Small", "Medium", "High", "Extreme" },
        Default = "Highest Affordable",
        Text = "Bid Strategy"
    })
    vW_2:AddInput("MaxBid", { Text = "Max Bid", Default = "0", Numeric = true, Finished = true })
    vW_2:AddDropdown("BidRarities", { Values = vW_4, Default = {}, Multi = true, Text = "Only Bid Rarities" })
    vW_2:AddDropdown("BidVariants", { Values = vW_15, Default = {}, Multi = true, Text = "Only Bid Variants" })
    vW_2:AddToggle("IndexPriority", { Text = "Always Bid For Index", Default = false })
    vW_2:AddToggle("AutoPassCheap", { Text = "Auto Pass Cheap Cards", Default = false })
    vW_2:AddInput("PassUnder", { Text = "Pass Under Cash Per Second", Default = "0", Numeric = true, Finished = true })
    vW_2:AddSlider("BidDelay", { Text = "Bid Delay", Default = 0.5, Min = 0, Max = 8, Rounding = 1 })
    vW_36 = vW_18.Luck:AddLeftGroupbox("Spin Wheel", "disc-3")
end
vW_36:AddToggle("AutoSpin", { Text = "Auto Spin", Default = false })
vW_36:AddSlider("SpinDelay", { Text = "Spin Delay", Default = 8, Min = 3, Max = 30, Rounding = 1 })
local LuckUpgradesGroup = vW_18.Luck:AddRightGroupbox("Luck Upgrades", "trending-up")
LuckUpgradesGroup:AddToggle("AutoLuck", { Text = "Auto Buy Luck", Default = false })
LuckUpgradesGroup:AddDropdown("LuckAmount", { Values = { "10", "50", "100" }, Default = "100", Text = "Luck Per Purchase" })
LuckUpgradesGroup:AddInput("LuckReserve", { Text = "Keep Money Reserve", Default = "0", Numeric = true, Finished = true })
LuckUpgradesGroup:AddSlider("LuckDelay", { Text = "Loop Delay", Default = 2, Min = 0.5, Max = 30, Rounding = 1 })
vW_10 = vW_18.Luck:AddRightGroupbox("Chairs", "armchair")
vW_10:AddToggle("AutoBuyChair", { Text = "Auto Buy Best Chair", Default = false })
vW_10:AddSlider("ChairDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
vW_9 = vW_18.Luck:AddLeftGroupbox("Lucky Blocks", "package-open")
vW_9:AddToggle("AutoTableOption", { Text = "Auto Use Tokens", Default = false })
vW_9:AddDropdown("TableOption", { Values = vW_27, Default = "DivinePlus", Text = "Token Type" })
local CashGroup = vW_18.Economy:AddLeftGroupbox("Cash", "hand-coins")
CashGroup:AddToggle("AutoCollect", { Text = "Auto Collect Cash", Default = false })
CashGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
CashGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
CashGroup:AddSlider("CashDelay", { Text = "Loop Delay", Default = 2, Min = 0.5, Max = 30, Rounding = 1 })
CashGroup:AddButton({ Text = "Claim Offline Earnings", Func = fns.onClaimOfflineEarnings })
vW_30 = vW_18.Economy:AddRightGroupbox("Auto Sell", "banknote")
vW_30:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
vW_30:AddDropdown("SellRarities", { Values = oh, Default = {}, Multi = true, Text = "Sell Rarities" })
vW_30:AddToggle("AutoSellEarn", { Text = "Auto Sell By Earn", Default = false })
vW_30:AddInput("SellUnderEarn", { Text = "Sell Under Cash Per Second", Default = "0", Numeric = true, Finished = true })
vW_30:AddSlider("SellDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
vW_1 = vW_18.Player:AddLeftGroupbox("Movement", "footprints")
vW_1:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
vW_1:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
vW_1:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
vW_1:AddToggle("NoClip", { Text = "NoClip", Default = false })
vW_1:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
vW_12 = vW_18.Player:AddRightGroupbox("Fly", "feather")
vW_12:AddToggle("Fly", { Text = "Fly", Default = false })
vW_12:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
nL = fns.fn415
o3 = fn1132
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(fns.onJumpRequest)
CurrentCamera = workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
oV.Fly:OnChanged(fns.fn225)
oV.WalkSpeedEnabled:OnChanged(fns.fn127)
og = function(gu)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not gu)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not gu
        end
    end)
    if not gu then
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
oV.AntiGameplayPause:OnChanged(fns.fn427)
task.spawn(antiGameplayPauseLoop)
local DiscordWebhookGroup = vW_18.Webhook:AddRightGroupbox("Discord Webhook", "webhook")
DiscordWebhookGroup:AddInput("WebhookUrl", {
    Text = "Webhook URL",
    Default = "",
    Placeholder = "https://discord.com/api/webhooks/...",
    Finished = true
})
DiscordWebhookGroup:AddToggle("WebhookWins", { Text = "Send Auction Wins", Default = false })
DiscordWebhookGroup:AddToggle("WebhookPing", { Text = "Ping Everyone", Default = false })
DiscordWebhookGroup:AddButton({ Text = "Send Test Webhook", Func = fns.onSendTestWebhook })
local MenuGroup = vW_18.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
oo = tick()
ol = tick()
pcall(function()
    for k, v in getconnections(LocalPlayer.Idled) do
        local tZ = v
        pcall(function()
            tZ:Disable()
        end)
    end
end)
n5 = fn941
connection = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", fns.onUnload)
o5.ToggleKeybind = oR.MenuKeybind
o5:OnUnload(fns.fn655)
ThemeManager:SetLibrary(o5)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
SaveManager:SetLibrary(o5)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/BidForSoccerCards")
local vW_8 = SaveManager:BuildConfigSection(vW_18.Settings)
ThemeManager:ApplyToTab(vW_18.Settings)
ThemeManager:LoadDefault()
ow = fn769
n_ = fn858
nK = fns.fn189
op = function(hE)
    local uB
    uB = nil
    local uC = type(hE) ~= "table" or type(hE.idx) ~= "string" or type(hE.type) ~= "string" or SaveManager.Ignore[hE.idx]
    if uC then
        return false
    end
    uB = ow(hE.type, hE.idx)
    if not uB then
        return false
    end
    local uC_1 = pcall(function()
        if hE.type == "Input" then
            if type(hE.text) ~= "string" then
                return
            end
            uB:SetValue(hE.text)
        elseif hE.type == "ColorPicker" then
            uB:SetValueRGB(Color3.fromHex(hE.value), hE.transparency)
        elseif hE.type == "KeyPicker" then
            uB:SetValue({ hE.key, hE.mode, hE.modifiers })
            if hE.mode == "Toggle" and hE.toggled ~= nil then
                uB.Toggled = hE.toggled
                uB:Update()
            end
        else
            uB:SetValue(hE.value)
        end
    end)
    return uC_1
end
do
    vW_8:AddDivider()
    vW_8:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    vW_8:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
    vW_8:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
    SaveManager:LoadAutoloadConfig()
    task.spawn(fns.worker8)
    task.spawn(worker7)
    task.spawn(tableOptionLoop)
    task.spawn(fns.worker6)
    task.spawn(fns.luckAmountLoop)
    task.spawn(worker5)
    task.spawn(fns.worker4)
    task.spawn(worker3)
    task.spawn(fns.worker2)
end
