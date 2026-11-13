local fns = {}
local Ae_2, Ae_3, Ae_4, Ae_12, Ae_13, Ae_15, Ae_16, Ae_18, Ae_19, Ae_21, Ae_31, Ae_33, Ae_35, Ae_37, Ae_41, GeneralsGroup, Ae_43, Ae_45, Ae_47, Ae_49
Ae_2 = nil
Ae_4 = nil
Ae_12 = nil
Ae_15 = nil
Ae_18 = nil
local qJ
local pJ
local pq
local p7
local qP
local q7
local pP
local qw
local onBuyBlackMarketNow2
local qd
local Label9
local rj
local pC
local q0
local p0
local qI
local qp
local Label6
local p6
local pO
local pv
local qc
local LocalPlayer
local CollectionService
local pU
local qB
local pB
local ri
local qi
local q_
local qH
local pH
local qo
local p5
local onBuyBlackMarketNow
local qu
local rb
local qb
local qT
local Label3
local qA
local rh
local pA
local qh
local pZ
local qG
local pG
local qn
local q4
local ConvertCurrency
local qM
local pM
local pt
local Label14
local onBuySelectedNow
local AlienExtractorConfig
local pS
local qz
local pz
local Label13
local qg
local pY
local Label8
local Label12
local Label10
local Label2
local VirtualUser
local p3
local qL
local pL
local qs
local Label7
local p9
local Label11
local Label4
local qy
local py
local qf
local qX
local pX
local pE
local Label5
local q2
local ql
local connection
local pK
local qr
local p8
local Label
local pQ
local ClientData
local re
local px
function fns.fn1(aI)
    local si = pE[aI]
    return si and si.Value or nil
end
function fns.fn7()
    p5.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
function fns.onClearAutoConquerQueue()
    pcall(function()
        qy:Fire({ queue = {} })
    end)
end
function fns.onRscripts()
    pz(qg, "Copied Rscripts profile to clipboard")
end
function fns.fn62()
    if pA.cover and pA.cover.Parent then
        return
    end
    local xI_1 = LocalPlayer:FindFirstChild("PlayerGui") or LocalPlayer:WaitForChild("PlayerGui")
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "OuroborosBlackScreen"
    screenGui.ResetOnSpawn = false
    screenGui.IgnoreGuiInset = true
    screenGui.DisplayOrder = 100
    if syn and syn.protect_gui then
        syn.protect_gui(screenGui)
    end
    screenGui.Parent = xI_1
    local frame = Instance.new("Frame")
    frame.Size = UDim2.fromScale(1, 1)
    frame.BackgroundColor3 = Color3.new(0, 0, 0)
    frame.BorderSizePixel = 0
    frame.Parent = screenGui
    local uIListLayout = Instance.new("UIListLayout")
    uIListLayout.Padding = UDim.new(0, 4)
    uIListLayout.FillDirection = Enum.FillDirection.Vertical
    uIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    uIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    uIListLayout.Parent = frame
    pA.labels = {
        brand = px(frame, 14, Color3.fromRGB(96, 102, 112), 1),
        moneyTitle = px(frame, 18, Color3.fromRGB(196, 199, 206), 2),
        moneyValue = px(frame, 36, Color3.fromRGB(126, 214, 160), 3),
        moneyGain = px(frame, 18, Color3.fromRGB(126, 214, 160), 4),
        gemsTitle = px(frame, 18, Color3.fromRGB(196, 199, 206), 5),
        gemsValue = px(frame, 36, Color3.fromRGB(110, 193, 255), 6),
        gemsGain = px(frame, 18, Color3.fromRGB(110, 193, 255), 7),
        coresTitle = px(frame, 18, Color3.fromRGB(196, 199, 206), 8),
        coresValue = px(frame, 36, Color3.fromRGB(232, 163, 77), 9),
        coresGain = px(frame, 18, Color3.fromRGB(232, 163, 77), 10),
        bpTitle = px(frame, 18, Color3.fromRGB(196, 199, 206), 11),
        bpValue = px(frame, 36, Color3.fromRGB(196, 199, 206), 12),
        bpGain = px(frame, 18, Color3.fromRGB(196, 199, 206), 13)
    }
    pA.labels.brand.Text = "OUROBOROS HUB"
    pA.labels.moneyTitle.Text = "Money"
    pA.labels.gemsTitle.Text = "Gems"
    pA.labels.coresTitle.Text = "Alien Cores"
    pA.labels.bpTitle.Text = "Pass Points"
    pA.cover = screenGui
end
function fns.fn100()
    local vp = {}
    for k, v in pairs(rb("DeployArmy")) do
        if v then
            local vq = table.find(qH, k)
            if vq then
                table.insert(vp, vq)
            end
        end
    end
    table.sort(vp)
    if #vp == 0 then
        vp[1] = 1
    end
    return vp
end
function fns.onSellAllBuildingsInBackpack()
    pcall(function()
        py:Fire()
    end)
end
function fns.fn165(aN)
    for k, v in pairs(aN) do
        if v then
            return true
        end
    end
    return false
end
function fns.fn166()
    if not pA.labels then
        return
    end
    pU()
    local xM = qp()
    local xN = pY or xM
    pA.labels.moneyValue.Text = q7(xM.money)
    pA.labels.moneyGain.Text = qA(xM.money - xN.money)
    pA.labels.gemsValue.Text = q7(xM.gems)
    pA.labels.gemsGain.Text = qA(xM.gems - xN.gems)
    pA.labels.coresValue.Text = q7(xM.alienCore)
    pA.labels.coresGain.Text = qA(xM.alienCore - xN.alienCore)
    pA.labels.bpValue.Text = q7(xM.bpPoints)
    pA.labels.bpGain.Text = qA(xM.bpPoints - xN.bpPoints)
end
function fns.fn167()
    local Character = LocalPlayer.Character
    local s_ = Character and Character:FindFirstChild("HumanoidRootPart")
    return s_
end
function fns.fn181(hF, hG, hH, hI)
    local textLabel = Instance.new("TextLabel")
    textLabel.BackgroundTransparency = 1
    textLabel.Size = UDim2.new(1, -40, 0, hG + 10)
    textLabel.Font = Enum.Font.GothamBold
    textLabel.TextSize = hG
    textLabel.TextColor3 = hH
    textLabel.Text = ""
    textLabel.LayoutOrder = hI
    textLabel.Parent = hF
    return textLabel
end
function fns.fn187(fJ)
    local ws = Ae_15.generals[fJ]
    local wt = ws and ws.rarity
    local ws_1 = wt
    if wt then
        wt = table.find(Ae_15.rarityOrder, ws_1)
    end
    if not wt then
        wt = 0
    end
    return wt
end
function fns.fn203()
    local s1 = qs()
    local s2 = s1 and s1:FindFirstChild("Plot")
    local s1_1 = s2
    if s2 then
        s2 = s1_1:FindFirstChild("Buildings")
    end
    local s1_2 = s2
    if s2 then
        s2 = s1_2:GetChildren()
    end
    return s2 or {}
end
function fns.fn205(fR)
    local wv = p3()
    local ww = wv and wv.generals
    if not ww then
        return ""
    end
    local equippedSlots = ww.equippedSlots
    local wx = type(equippedSlots) == "table" and equippedSlots[fR]
    if wx then
        return equippedSlots[fR]
    elseif fR == 1 then
        return ww.equipped or ""
    elseif fR == 2 then
        local ww_3 = ww.equipped2
        local wB = if ww_3 then 1 else 0
        local wz = 665 * wB + 3303 * (1 - wB)
        local wA = 3689 * wB + 4057 * (1 - wB)
        if not ((wz * 611 + wA * 3963 + wz * wA) % 16777213 == 701794) then
            ww_3 = ""
        end
        return ww_3
    else
        return ""
    end
end
function fns.onInputBegan()
    qX = tick()
end
function fns.fn211()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    qT = tick()
end
function fns.onInputChanged(hy)
    local UserInputType = hy.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        qX = tick()
    end
end
function fns.onExtractHeldItemNow()
    pcall(function()
        Ae_12:Fire()
    end)
end
function fns.worker4()
    while not p5.Unloaded do
        if Ae_18("AutoWarPassPoints") then
            for k, v in pZ() do
                pJ(v)
            end
        end
        task.wait(1)
    end
end
function fns.worker10()
    while not p5.Unloaded do
        for k, v in Ae_2 do
            local z0_1 = pE[v.option]
            if z0_1 then
                z0_1:SetValues(onBuyBlackMarketNow2(v.shop))
            end
        end
        local BuyBlackMarket = pE.BuyBlackMarket
        if BuyBlackMarket then
            BuyBlackMarket:SetValues(onBuyBlackMarketNow2("BlackMarket"))
        end
        task.wait(30)
    end
end
function fns.fn308(aX)
    if type(aX) == "number" then
        return aX
    end
    local sw = aX == ""
    local sw_2
    local sx = type(aX) ~= "string" or sw
    local sx_1
    if sx then
        return 0
    end
    local sw_1 = tonumber(aX)
    if sw_1 then
        return sw_1
    end
    sw_2, sx_1 = pcall(ConvertCurrency.StringToNumber, aX)
    return sw_2 and sx_1 or 0
end
function fns.fn336()
    pz(ql, "Copied Discord invite to clipboard")
end
function fns.onCopyJoinScript_JobID()
    local em = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, qJ)
    pz(em, "Copied join script to clipboard")
end
function fns.worker3()
    while not p5.Unloaded do
        local yr = Ae_18("BlackScreen")
        if yr ~= pA.active then
            pt(yr)
        elseif yr then
            pt(true)
            p8()
        end
        task.wait(1)
    end
end
function fns.onExtractAllNow()
    pcall(function()
        pL:Fire()
    end)
end
function fns.fn393()
    local w9 = p9(rb("EventTypes"))
    local xa = {}
    for k, v in w9 do
        if table.find(qG, tostring(v.point:GetAttribute("baseType"))) then
            table.insert(xa, v)
        end
    end
    table.sort(xa, function(gS, gT)
        return gS.distance < gT.distance
    end)
    return xa
end
function fns.worker9()
    local zz_1
    while not p5.Unloaded do
        local zv = pP()
        local zw = {}
        local zw_5
        for k, v in pairs(zv) do
            table.insert(zw, string.format("%s x%d", k, v))
        end
        table.sort(zw)
        local zx = #zw > 0 and table.concat(zw, ", ")
        local zx_2, zx_5
        local zw_1 = zx or "No farms on your base yet."
        Label2:SetText(zw_1)
        local zw_2 = ri()
        local zx_1 = zw_2 and zw_2.market and zw_2.market.stock
        if zx_1 then
            zz_1, zx_2 = nil, 0
            for k in pairs(zv) do
                local zv_1 = zx_1[k]
                if zv_1 and zv_1 > zx_2 then
                    zz_1, zx_2 = k, zv_1
                end
            end
            local zv_2 = zz_1 and string.format("%s at %d%%", zz_1, math.floor(zx_2 * 100))
            local zx_3 = zv_2 or "none"
            Label3:SetText(qM("Best price", zx_3, qc))
            Label14:SetText(qM("Weather", tostring(zw_2.weather), p6))
        end
        local zv_3 = {}
        for k, v in pv() do
            local insert = table.insert
            local format = string.format
            local floor = math.floor
            local zB = zx_1 and zx_1[v] or 0
            insert(zv_3, format("%s at %d%%", v, floor(zB * 100)))
        end
        local zw_4 = #zv_3 > 0 and table.concat(zv_3, ", ")
        local zv_4 = zw_4 or "none"
        Label4:SetText(qM("Above threshold", zv_4, qn))
        local zv_5 = p3()
        if zv_5 then
            zw_5, zx_5 = 0, 0
            local zA_3 = zv_5.questData and zv_5.questData.activeQuests or {}
            for k, v in pairs(zA_3) do
                if type(v) == "table" then
                    if v.completed then
                        zw_5 += 1
                    end
                end
            end
            local zA_4 = zv_5.questData and zv_5.questData.claimedTier or {}
            for k in pairs(zA_4) do
                zx_5 += 1
            end
            Label7:SetText(qM("Quests", string.format("%d ready, %d claimed", zw_5, zx_5), qn))
            local zx_6 = zv_5.battlepass and zv_5.battlepass.bpPoints or 0
            Label6:SetText(qM("Pass points", tostring(zx_6), qh))
            local zw_7 = 0
            local zy_3 = zv_5.backpack or {}
            for k, v in pairs(zy_3) do
                local zx_8 = type(v) == "table" and qI(k)
                if zx_8 then
                    local zx_9 = v.amount or 0
                    zw_7 += zx_9
                end
            end
            local format = string.format
            local zy_4 = zv_5.alienCore or 0
            Label5:SetText(qM("Alien cores", format("%d | %d alien items", zy_4, zw_7), qn))
            local zw_8 = qz()
            local zy_5 = #zw_8
            local zz_5 = zv_5.gems or 0
            local zv_6 = q2(1) ~= "" and q2(1)
            local zA_5 = zv_6 or "none"
            Label8:SetText(qM("Generals", format("%d owned | %d gems | %s", zy_5, zz_5, zA_5), p6))
        end
        Label9:SetText(qM("Ready", string.format("%d skills", #qi()), p6))
        local zv_7 = qB()
        local zw_9 = p9(rb("TargetTypes"))
        Label11:SetText(qM("Held bases", tostring(zv_7), qn))
        Label12:SetText(qM("Available", tostring(#zw_9), qh))
        local zv_8 = pO()
        local zv_9 = zv_8 and zv_8.Name or "none"
        Label13:SetText(qM("Next target", zv_9, qc))
        local zv_10 = p0()
        local zw_11 = zv_10[1] and string.format("%d | %s", #zv_10, tostring(zv_10[1].point:GetAttribute("baseType")))
        local zv_11 = zw_11 or "0"
        Label10:SetText(qM("Sites open", zv_11, qc))
        task.wait(2)
    end
end
function fns.fn410()
    local st_1
    local ss_1
    ss_1, st_1 = pcall(function()
        return ClientData.playerProducer:getState().player
    end)
    local su = ss_1 and type(st_1) == "table"
    if su then
        return st_1
    end
    return nil
end
function fns.fn425()
    local sW_1
    local sV_1
    sV_1, sW_1 = pcall(function()
        return ClientData.gameProducer:getState()
    end)
    local sX = sV_1 and type(sW_1) == "table"
    if sX then
        return sW_1
    end
    return nil
end
function fns.worker2()
    local vK_1
    while true do
        task.wait(1)
        if p5.Unloaded then
            break
        end
        local vJ = math.floor(os.clock() - qf)
        if vJ < 60 then
            vK_1 = vJ .. "s"
        elseif vJ < 3600 then
            vK_1 = string.format("%dm %ds", vJ // 60, vJ % 60)
        else
            vK_1 = string.format("%dh %dm", vJ // 3600, vJ % 3600 // 60)
        end
        Label:SetText(qM("Session time", vK_1, qc))
    end
end
function fns.fn468(b_)
    local tr = not pC(b_)
    local tv = if tr then 1 else 0
    local tt = 1833 * tv + 3186 * (1 - tv)
    local tu = 803 * tv + 822 * (1 - tv)
    if not ((tt * 2066 + tu * 3936 + tt * tu) % 16777213 == 8419485) then
        tr = rj(b_) <= 0
    end
    if tr then
        return false
    end
    local tv_1 = if Ae_18("AutoCollectAlienOnly") then 1 else 0
    if tv_1 == 1 then
        return qI(b_:GetAttribute("GrownResource"))
    end
    return true
end
function fns.fn505(c6, c7)
    local ux = p3()
    local uy = ux and ux.shopsStock and ux.shopsStock[c6]
    local ux_1 = uy
    if uy then
        uy = type(ux_1.stock) == "table"
    end
    if uy then
        return ux_1.stock[c7] or 0
    end
    return 0
end
function fns.onSellAllNow()
    pcall(function()
        pS:Fire()
    end)
end
function fns.fn534()
    if pY then
        return
    end
    if p3() then
        pY = qp()
    end
end
function fns.fn575()
    local tO = ri()
    return tO and tO.market and tO.market.stock
end
function fns.fn578(bV)
    local tn_1
    local tm_1
    tm_1, tn_1 = pcall(AlienExtractorConfig.isAlienItem, bV)
    return tm_1 and tn_1 == true
end
function fns.fn579(aj, ak, al)
    return string.format("<b>%s</b> %s %s", aj, q0("-", "#5a6070"), q0(ak, al))
end
function fns.fn597()
    return Ae_4(LocalPlayer)
end
function fns.onDeployNow()
    q4(pO())
end
function fns.onUnload()
    p5:Unload()
end
function fns.worker5()
    while not p5.Unloaded do
        task.wait(2)
        if Ae_18("AntiAfk") then
            local yA = tick() - qX
            local yB = tick() - qT
            if yA >= 300 and yB >= 60 then
                pcall(qr)
            else
                if yA < 300 and yB >= 300 then
                    pcall(qr)
                end
            end
        end
    end
end
function fns.fn650()
    local sI = p3()
    if not sI then
        return { money = 0, gems = 0, alienCore = 0, bpPoints = 0 }
    end
    local sJ = pB(sI.money)
    local sK = tonumber(sI.gems) or 0
    local sL = tonumber(sI.alienCore) or 0
    local sM = sI.battlepass and sI.battlepass.bpPoints
    local sN = tonumber(sM) or 0
    return { money = sJ, gems = sK, alienCore = sL, bpPoints = sN }
end
function fns.fn653(bK)
    if pK[bK:GetAttribute("type")] then
        return true
    end
    local s8 = bK.Name == "Vault"
    local tc = if s8 then 1 else 0
    local ta = 3276 * tc + 2467 * (1 - tc)
    local tb = 2702 * tc + 1894 * (1 - tc)
    if not ((ta * 363 + tb * 2490 + ta * tb) % 16777213 == 16768920) then
        s8 = bK.Name == "Vault2"
    end
    return s8
end
function fns.fn664(cI)
    local Character = LocalPlayer.Character
    local uf = Character and Character:FindFirstChild("Humanoid")
    if not uf then
        return
    end
    local uf_1 = LocalPlayer.Backpack:FindFirstChild(cI) or Character:FindFirstChild(cI)
    if not uf_1 then
        return
    end
    uf:EquipTool(uf_1)
    task.wait(0.15)
    pcall(function()
        pQ:Fire()
    end)
    task.wait(0.15)
    uf:UnequipTools()
end
function fns.fn669(dE)
    local vd = qs()
    local ve = vd and vd:GetPivot().Position
    local vd_1 = ve
    if not vd_1 then
        local ve_1 = qP() and qP().Position
        vd_1 = ve_1
    end
    local ve_2 = vd_1
    if not ve_2 then
        return {}
    end
    local vd_2 = {}
    for k, v in p7() do
        if not rh(v) then
            local vf = tostring(v:GetAttribute("baseType"))
            local vg = dE and qo(dE) and not dE[vf]
            if not vg then
                local insert = table.insert
                local Magnitude = (v:GetPivot().Position - ve_2).Magnitude
                local vh = v:GetAttribute("OwnerStrength") or 0
                insert(vd_2, { point = v, distance = Magnitude, strength = vh })
            end
        end
    end
    return vd_2
end
function fns.onDeployOnSiteNow()
    local xu = p0()
    if xu[1] then
        q4(xu[1].point)
    end
end
function fns.fn696(ax, ay)
    local r8 = pE[ax]
    local r9 = r8 and tonumber(r8.Value)
    return r9 or ay
end
function fns.fn701()
    connection:Disconnect()
    pH:Disconnect()
    if pA.active then
        pt(false)
    end
end
function fns.fn702(a8)
    if a8 > 0 then
        return "+" .. q7(a8)
    elseif a8 < 0 then
        return "-" .. q7(math.abs(a8))
    else
        return "+0"
    end
end
function fns.fn728(d4)
    local DiscordGroup = d4:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = re })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = re })
end
function fns.fn752(Z, aa)
    if setclipboard then
        setclipboard(Z)
    elseif toclipboard then
        toclipboard(Z)
    end
    p5:Notify(aa)
end
function fns.worker7()
    while not p5.Unloaded do
        if Ae_18("AutoExtractAlien") then
            pcall(function()
                pL:Fire()
            end)
        end
        task.wait(pG("AlienDelay", 15))
    end
end
function fns.fn791(bO)
    local td = bO:GetAttribute("ResourcesToCollect") or 0
    local te = td
    for k, v in pairs(bO:GetAttributes()) do
        local td_1 = k ~= "ResourcesToCollect" and k ~= "MaxCapacity" and k ~= "NextCropYield" and type(v) == "number"
        if td_1 then
            if qu[k] then
                te += v
            end
        end
    end
    return te
end
function fns.worker()
    while not pY and not p5.Unloaded do
        pU()
        if pY then
            break
        end
        task.wait(0.5)
    end
end
function fns.fn814()
    local uG = CollectionService:GetTagged("CapturePoint")
    local uH = {}
    for k, v in uG do
        uH[v] = true
    end
    for k, v in { "CapturePointKingOfTheHill", "CapturePointToxicKingOfTheHill", "CapturePointAlienKingOfTheHill" } do
        for k, v in CollectionService:GetTagged(v) do
            local uI = v:IsDescendantOf(workspace) and not uH[v]
            if uI then
                uH[v] = true
                table.insert(uG, v)
            end
        end
    end
    return uG
end
function fns.fn825(as)
    local r5 = pM[as]
    return r5 ~= nil and r5.Value == true
end
function fns.fn833()
    local vC_1
    local vB_1
    if identifyexecutor then
        vC_1, vB_1 = identifyexecutor()
        local vD = vC_1 ~= ""
        local vE = type(vC_1) == "string" and vD
        if vE then
            local vD_1 = type(vB_1) == "string" and vB_1 ~= "" and vC_1 .. " " .. vB_1
            pq = vD_1 or vC_1
        end
    end
end
local function fn842(cY)
    local up = p3()
    local uq = up and up.shopsStock and up.shopsStock[cY]
    local up_1 = {}
    local ur = uq
    if uq then
        uq = type(ur.stock) == "table"
    end
    if uq then
        for k in pairs(ur.stock) do
            table.insert(up_1, k)
        end
    end
    table.sort(up_1)
    return up_1
end
local function fn845()
    local t3 = qw()
    if not t3 then
        return {}
    end
    local t4 = 1 + pG("SellThreshold", 10) / 100
    local t5 = {}
    for k, v in qb() do
        if (t3[v] or 0) >= t4 then
            table.insert(t5, v)
        end
    end
    return t5
end
local function fn850(aD)
    local sb = pE[aD]
    local sc = sb and sb.Value
    local sb_1 = {}
    local sd = sc
    local sh = if sd then 1 else 0
    local sf = 4035 * sh + 3479 * (1 - sh)
    local sg = 1789 * sh + 980 * (1 - sh)
    if not ((sf * 816 + sg * 951 + sf * sg) % 16777213 == 12212514) then
        sd = sb_1
    end
    return sd
end
local function fn853(dq)
    local attr2 = dq:GetAttribute("Owner")
    local attr = dq:GetAttribute("CoOwner")
    return attr2 == LocalPlayer.Name or attr == LocalPlayer.Name
end
local function fn862()
    local we = p3()
    local wf = we and we.generals and we.generals.owned
    local we_1 = {}
    if type(wf) == "table" then
        for k, v in pairs(wf) do
            local wf_1 = type(k) == "string" and k
            local wg_1 = wf_1
            if not wg_1 then
                local wf_2 = type(v) == "string" and v
                wg_1 = wf_2 or nil
            end
            local wf_3 = wg_1
            if wg_1 then
                wg_1 = Ae_15.generals[wf_3]
            end
            if wg_1 then
                table.insert(we_1, wf_3)
            end
        end
    end
    return we_1
end
local function fn896()
    local tw = {}
    for k, v in qd() do
        if not not pC(v) then
            local attr = v:GetAttribute("GrownResource")
            local ty = v:GetAttribute("ResourcesToCollect") or 0
            local tz = attr
            if tz then
                tz = ty > 0
            end
            if tz then
                local ty_1 = tw[attr] or 0
                tw[attr] = ty_1 + ty
            end
            for k, v in pairs(v:GetAttributes()) do
                local tx_1 = type(v) == "number" and v > 0 and qu[k]
                if tx_1 then
                    local tx_2 = qu[k]
                    local ty_3 = tx_2.GrownResource and tx_2.GrownResource.ModelName or k
                    local tx_4 = tw[ty_3] or 0
                    tw[ty_3] = tx_4 + v
                end
            end
        end
    end
    return tw
end
local function worker8()
    while not p5.Unloaded do
        if Ae_18("AutoBuy") then
            onBuySelectedNow()
        end
        if Ae_18("AutoBlackMarket") then
            onBuyBlackMarketNow()
        end
        task.wait(pG("BuyDelay", 10))
    end
end
local function fn942()
    pcall(function()
        q_:Fire()
    end)
end
local function fn963()
    local x8 = {}
    for i, child in workspace:GetChildren() do
        if child.Name == "BATTLEPASS_POINT_PICKUP" then
            table.insert(x8, child)
        end
    end
    return x8
end
local function worker6()
    while not p5.Unloaded do
        if Ae_18("AutoSellAll") then
            pcall(function()
                pS:Fire()
            end)
        elseif Ae_18("AutoSellHighPrice") then
            pX()
        end
        task.wait(pG("SellDelay", 10))
    end
end
local function fn990()
    local tR = p3()
    local tS = tR and tR.backpack
    local tR_1 = {}
    if type(tS) == "table" then
        for k, v in pairs(tS) do
            local tS_1 = type(v) == "table" and v.type == "Crop"
            if tS_1 then
                tS_1 = (v.amount or 0) > 0
            end
            if tS_1 then
                table.insert(tR_1, k)
            end
        end
    end
    table.sort(tR_1)
    return tR_1
end
local function fn1004()
    local u5 = 0
    for k, v in p7() do
        if rh(v) then
            u5 += 1
        end
    end
    return u5
end
local function fn1012(a2)
    local sE_1
    local sD_1
    sD_1, sE_1 = pcall(ConvertCurrency.SuffixFormat, a2)
    local sF = sD_1 and type(sE_1) == "string"
    if sF then
        return sE_1
    end
    return tostring(a2)
end
local function fn1016()
    for k, v in pv() do
        qL(v)
    end
end
local function fn1028(ag, ah)
    return string.format('<font color="%s">%s</font>', ah, ag)
end
pq = nil
Label11 = nil
pt = nil
pv = nil
onBuyBlackMarketNow2 = nil
px = nil
py = nil
pz = nil
pA = nil
pB = nil
pC = nil
Ae_12 = nil
pE = nil
Label10 = nil
pG = nil
pH = nil
pJ = nil
pK = nil
pL = nil
pM = nil
onBuyBlackMarketNow = nil
pO = nil
pP = nil
pQ = nil
Label4 = nil
pS = nil
Label3 = nil
pU = nil
Label9 = nil
pX = nil
pY = nil
pZ = nil
p0 = nil
Ae_18 = nil
connection = nil
p3 = nil
ConvertCurrency = nil
p5 = nil
p6 = nil
p7 = nil
p8 = nil
p9 = nil
AlienExtractorConfig = nil
qb = nil
qc = nil
local pr, pu, pI, pW, p_
qd = nil
qf = nil
qg = nil
qh = nil
qi = nil
Ae_15 = nil
ql = nil
Label2 = nil
qn = nil
qo = nil
qp = nil
qr = nil
qs = nil
qu = nil
qw = nil
ClientData = nil
qy = nil
qz = nil
qA = nil
qB = nil
Ae_4 = nil
Label8 = nil
qG = nil
qH = nil
qI = nil
qJ = nil
qL = nil
qM = nil
qP = nil
Label = nil
onBuySelectedNow = nil
qT = nil
LocalPlayer = nil
Ae_2 = nil
qX = nil
q_ = nil
local BattlepassConfig, qj, SkillsConfig, onResearchNow, qv, qC, qE, qK, qN, qO, qR, qV, qY, RunService
q0 = nil
q2 = nil
VirtualUser = nil
q4 = nil
Label6 = nil
q7 = nil
Label7 = nil
Label14 = nil
rb = nil
CollectionService = nil
re = nil
Label13 = nil
rh = nil
ri = nil
rj = nil
Label5 = nil
Label12 = nil
local q1, q8, rd, onUnclaimNow, rk
q1 = nil
local q5
q8 = nil
rd = nil
onUnclaimNow = nil
rk = nil
CollectionService, VirtualUser, RunService, LocalPlayer = nil, nil, nil, nil
local Ae_7 = game:GetService("Players")
local Ae_27 = game:GetService("ReplicatedStorage")
CollectionService = game:GetService("CollectionService")
local UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
RunService = game:GetService("RunService")
LocalPlayer = Ae_7.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
Ae_13, Ae_4, ClientData, qu, SkillsConfig, Ae_15, BattlepassConfig, AlienExtractorConfig, ConvertCurrency, p_, pW, pS, pQ, pL, Ae_12, py, pu, pr, rk, rd, q8, q5, q_, qV, qR, qK, qE, qy, qv, Ae_33, ql, qg, Ae_43, p5, Ae_16, Ae_31, pM, pE, qn, qh, qc, p6, pY, pK, Ae_19, qG, qH, Ae_41, Ae_47, pz, re, q0, qM, Ae_18, pG, rb, qO, qo, p3, pB, q7, qA, qp, pU, ri, qP, qs, qd, pC, rj, qI, qj, pP, qw, qb, pv, qL, pX, onBuyBlackMarketNow2, qN, p7, rh, qB, p9, qC, Ae_45 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Ae_29 = 33
repeat
    Ae_49 = (Ae_29 * 25 + 12) % 36 + 1
    if Ae_49 <= 18 then
        if Ae_49 <= 9 then
            if Ae_49 <= 5 then
                if Ae_49 <= 3 then
                    if Ae_49 <= 2 then
                        if Ae_49 <= 1 then
                            if (Ae_29 * 3 + 6) * 5 % 4 == ((Ae_29 * 3 + 6) * 5 + 8) % 4 then
                                qI = fns.fn578
                                qj = fns.fn468
                            else
                                qj = fns.fn578
                                qI = fns.fn468
                            end
                            Ae_29 = (Ae_29 + 13) % 144
                        else
                            if (pX or rh) and (pX and not rh) and ((not rh or rh) and (not rh and not pX)) and (pX and not rh and (pX and not rh) or (rh or not pX) and (pX and not pX)) or (rh and not pX or (not pX or not pX) or (not pX or not pX or not rh and rh) or (not rh or rh) and (not pX and not rh) and ((not rh or not rh) and (pX or pX))) or not ((pX or rh) and (pX and not rh) and ((not rh or rh) and (not rh and not pX)) and (pX and not rh and (pX and not rh) or (rh or not pX) and (pX and not pX)) or (rh and not pX or (not pX or not pX) or (not pX or not pX or not rh and rh) or (not rh or rh) and (not pX and not rh) and ((not rh or not rh) and (pX or pX)))) then
                                pP = fn896
                                qw = fns.fn575
                                qb = fn990
                                pv = fn845
                            else
                                pv = fn896
                                pP = fns.fn575
                                qw = fn990
                                qb = fn845
                            end
                            Ae_29 = (Ae_29 + 85) % 144
                        end
                    else
                        Ae_35 = { "xwhlhamm", "hechtr", "aap", "rbbfvdwekxk", "fgrlcekz", "xpbnkvvyn", "ovtophvdbz" }
                        local By = Ae_29
                        Ae_21 = Ae_35[By % 7 + 1]
                        if Ae_21:len() >= Ae_21:gsub("(.)", "%1%1", By % 3 % 2 + 1):len() then
                            pX = fns.fn664
                            onBuyBlackMarketNow2 = { "Decor", "Farm", "Military", "House" }
                            qL = fn842
                        else
                            qL = fns.fn664
                            pX = fn1016
                            onBuyBlackMarketNow2 = fn842
                        end
                        Ae_29 = (Ae_29 + 13) % 144
                    end
                elseif Ae_49 <= 4 then
                    Ae_35 = {
                        "wlcbmmfe",
                        "ujqg",
                        "nfhvxc",
                        "mbkmprjqvc",
                        "jzpgimira",
                        "gffmv",
                        "tdi",
                        "vgdyuupsgxk",
                        "jnqyatlqys",
                        "levrsokovrh"
                    }
                    local Dh = Ae_29
                    Ae_21 = Ae_35[Dh % 10 + 1]
                    if Ae_21:len() >= Ae_21:gsub("(.)", "%1%1", Dh % 3 % 2 + 1):len() then
                        qG = fns.fn505
                        qN = fns.fn814
                        Ae_19 = fn853
                        rh = { "City", "Garnison", "MilitaryBase", "Camp", "Lab", "WaterRig" }
                        p7 = {
                            "RaidBase",
                            "HackerBase",
                            "KingOfTheHill",
                            "AlienKingOfTheHill",
                            "MechBeast",
                            "MeteorBase",
                            "CargoBase",
                            "ToxicKingOfTheHill"
                        }
                    else
                        qN = fns.fn505
                        p7 = fns.fn814
                        rh = fn853
                        Ae_19 = { "City", "Lab", "MilitaryBase", "WaterRig", "Garnison", "Camp" }
                        qG = {
                            "RaidBase",
                            "CargoBase",
                            "MeteorBase",
                            "HackerBase",
                            "MechBeast",
                            "KingOfTheHill",
                            "ToxicKingOfTheHill",
                            "AlienKingOfTheHill"
                        }
                    end
                    Ae_29 = (Ae_29 + 49) % 144
                else
                    if Ae_29 * 33685315 + 9 + 5 <= Ae_29 * 33685315 + 9 + 5 + 6 then
                        qB = fn1004
                        p9 = fns.fn669
                        qH = { "Army 1", "Army 2", "Army 3", "Army 4" }
                    else
                        qH = fn1004
                        qB = fns.fn669
                        p9 = { "Army 4", "Army 1", "Army 2", "Army 3" }
                    end
                    Ae_29 = (Ae_29 + 121) % 144
                end
            elseif Ae_49 <= 7 then
                if Ae_49 <= 6 then
                    local C7 = bit32.rrotate(bit32.bxor(bit32.lrotate(Ae_29, 1), string.byte(tostring(pz))), 1)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(C7, 1577885868), 10), 847425912) ~= bit32.lrotate(C7, 10) then
                        pB = fns.fn100
                    else
                        qC = fns.fn100
                    end
                    Ae_29 = (Ae_29 + 49) % 144
                else
                    local BJ = bit32.rrotate(bit32.bxor(bit32.lrotate(Ae_29, 21), string.byte(tostring(qE))), 1)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(BJ, 1628367496), 10), 1001005444) == bit32.lrotate(BJ, 10) then
                        Ae_41 = p5:CreateWindow({
                            Title = "Ouroboros Hub",
                            Footer = { { Text = ql, Copyable = true }, "|", Ae_33 },
                            Icon = 18657887261,
                            NotifySide = "Right",
                            ShowCustomCursor = false,
                            CornerRadius = 10
                        })
                    else
                        p5 = Ae_33:CreateWindow({
                            ShowCustomCursor = false,
                            Title = "Ouroboros Hub",
                            Footer = { ql, "|", { Text = Ae_41, Copyable = true } },
                            CornerRadius = 10,
                            Icon = 18657887261,
                            NotifySide = "Right"
                        })
                    end
                    Ae_29 = (Ae_29 + 85) % 144
                end
            elseif Ae_49 <= 8 then
                if Ae_29 * 63266447 + 8 + 7 >= Ae_29 * 63266447 + 8 + 7 + 6 then
                    Ae_41 = {
                        Conquer = Ae_47:AddTab("Conquer", "swords"),
                        Rewards = Ae_47:AddTab("Rewards", "gift"),
                        Settings = Ae_47:AddTab("Settings", "settings"),
                        Info = Ae_47:AddTab("Info", "info"),
                        Collect = Ae_47:AddTab("Collect", "hand-coins"),
                        Empire = Ae_47:AddTab("Empire", "crown"),
                        Shop = Ae_47:AddTab("Shop", "shopping-cart")
                    }
                else
                    Ae_47 = {
                        Info = Ae_41:AddTab("Info", "info"),
                        Collect = Ae_41:AddTab("Collect", "hand-coins"),
                        Rewards = Ae_41:AddTab("Rewards", "gift"),
                        Shop = Ae_41:AddTab("Shop", "shopping-cart"),
                        Empire = Ae_41:AddTab("Empire", "crown"),
                        Conquer = Ae_41:AddTab("Conquer", "swords"),
                        Settings = Ae_41:AddTab("Settings", "settings")
                    }
                end
                Ae_29 = (Ae_29 + 121) % 144
            else
                Ae_35 = (vector.create((Ae_29 * 4 + 7) % 11 + 1, (Ae_29 * 3 + 7) % 13 + 1, (Ae_29 * 7 + 4) % 17 + 1))
                Ae_21 = (vector.create((Ae_29 * 1 + 9) % 11 + 1, (Ae_29 * 8 + 8) % 13 + 1, (Ae_29 * 14 + 11) % 17 + 1))
                Ae_3 = (vector.create((Ae_29 * 3 + 1) % 11 + 1, (Ae_29 * 6 + 6) % 13 + 1, (Ae_29 * 4 + 8) % 17 + 1))
                Ae_37 = (vector.create((Ae_29 * 3 + 5) % 5 + 1, (Ae_29 * 3 + 3) % 7 + 1, (Ae_29 * 1 + 7) % 9 + 1))
                if vector.dot(vector.cross(Ae_35, (vector.cross(Ae_21, Ae_3))), Ae_37) == vector.dot(Ae_21 * vector.dot(Ae_35, Ae_3) - Ae_3 * vector.dot(Ae_35, Ae_21), Ae_37) then
                    Ae_47.Farming = Ae_47.Collect:AddSubTab("Farming", "hand-coins")
                    Ae_47.Selling = Ae_47.Collect:AddSubTab("Selling", "banknote")
                    Ae_47.Alien = Ae_47.Collect:AddSubTab("Alien", "atom")
                    Ae_47.Bases = Ae_47.Conquer:AddSubTab("Bases", "swords")
                    Ae_47.Events = Ae_47.Conquer:AddSubTab("Events", "siren")
                    Ae_47.Holdings = Ae_47.Conquer:AddSubTab("Holdings", "flag")
                    Ae_45 = fns.fn728
                else
                    Ae_45.Farming = Ae_45.Collect:AddSubTab("Farming", "hand-coins")
                    Ae_45.Selling = Ae_45.Collect:AddSubTab("Selling", "banknote")
                    Ae_45.Alien = Ae_45.Collect:AddSubTab("Alien", "atom")
                    Ae_45.Bases = Ae_45.Conquer:AddSubTab("Bases", "swords")
                    Ae_45.Events = Ae_45.Conquer:AddSubTab("Events", "siren")
                    Ae_45.Holdings = Ae_45.Conquer:AddSubTab("Holdings", "flag")
                    Ae_47 = fns.fn728
                end
                Ae_29 = (Ae_29 + 13) % 144
            end
        elseif Ae_49 <= 14 then
            if Ae_49 <= 12 then
                if Ae_49 <= 11 then
                    if Ae_49 <= 10 then
                        if (Ae_29 * 3 + 3) * 13 % 4 == ((Ae_29 * 3 + 3) * 13 + 4) % 4 then
                            Ae_13 = require(Ae_27.util.GetBridge)
                        else
                            Ae_27 = require(Ae_13.util.GetBridge)
                        end
                        Ae_29 = (Ae_29 + 13) % 144
                    else
                        Ae_35 = (vector.create((Ae_29 * 1 + 7) % 11 + 1, (Ae_29 * 11 + 8) % 13 + 1, (Ae_29 * 12 + 8) % 17 + 1))
                        Ae_21 = (vector.create((Ae_29 * 4 + 7) % 11 + 1, (Ae_29 * 1 + 3) % 13 + 1, (Ae_29 * 7 + 15) % 17 + 1))
                        local CQ = vector.cross(Ae_35, Ae_21)
                        local CR = vector.dot(Ae_35, Ae_21)
                        if vector.dot(CQ, CQ) + CR * CR == vector.dot(Ae_35, Ae_35) * vector.dot(Ae_21, Ae_21) + 2 then
                            Ae_27 = require(ClientData.util.GetPlotModel)
                            Ae_4 = require(ClientData.client.modules.ClientData)
                        else
                            Ae_4 = require(Ae_27.util.GetPlotModel)
                            ClientData = require(Ae_27.client.modules.ClientData)
                        end
                        Ae_29 = (Ae_29 + 121) % 144
                    end
                else
                    Ae_35 = {
                        "nafk",
                        "jaiygk",
                        "bbgkuciptha",
                        "htcp",
                        "eqjqodvqsoow",
                        "fmzu",
                        "hnavr",
                        "iqjegimsjb",
                        "bogucbivf",
                        "aezupgnuexp",
                        "cwbonpckzlg",
                        "wnspqcacexka",
                        "lryapxs"
                    }
                    if Ae_35[(Ae_29 * 80 + 100) % 13 + 1] < Ae_35[(Ae_29 * 80 + 100) % 13 + 1] then
                        Ae_27 = require(SkillsConfig.shared.config.BuildingsConfig)
                        qu = require(SkillsConfig.shared.config.SkillsConfig)
                    else
                        qu = require(Ae_27.shared.config.BuildingsConfig)
                        SkillsConfig = require(Ae_27.shared.config.SkillsConfig)
                    end
                    Ae_29 = (Ae_29 + 85) % 144
                end
            elseif Ae_49 <= 13 then
                if Ae_29 * 89322185 + 8 + 7 <= Ae_29 * 89322185 + 8 + 7 + 4 then
                    Ae_15 = require(Ae_27.shared.config.GeneralsConfig)
                    BattlepassConfig = require(Ae_27.shared.config.BattlepassConfig)
                else
                    Ae_27 = require(BattlepassConfig.shared.config.GeneralsConfig)
                    Ae_15 = require(BattlepassConfig.shared.config.BattlepassConfig)
                end
                Ae_29 = (Ae_29 + 13) % 144
            else
                Ae_35 = {
                    "nyo",
                    "uinfuufk",
                    "navfztm",
                    "hji",
                    "szsdogx",
                    "phqymve",
                    "opfnnq",
                    "vebtvqztns",
                    "ptgmfplc",
                    "vpjixwrvmij"
                }
                if Ae_35[(Ae_29 * 79 + 1) % 10 + 1] < Ae_35[(Ae_29 * 79 + 1) % 10 + 1] then
                    Ae_27 = require(ConvertCurrency.shared.config.AlienExtractorConfig)
                    p_ = require(ConvertCurrency.util.ConvertCurrency)
                    Ae_13 = AlienExtractorConfig("CollectResources")
                    pS = AlienExtractorConfig("collectOfflineMoney")
                    pW = AlienExtractorConfig("SellAll")
                else
                    AlienExtractorConfig = require(Ae_27.shared.config.AlienExtractorConfig)
                    ConvertCurrency = require(Ae_27.util.ConvertCurrency)
                    p_ = Ae_13("CollectResources")
                    pW = Ae_13("collectOfflineMoney")
                    pS = Ae_13("SellAll")
                end
                Ae_29 = (Ae_29 + 85) % 144
            end
        elseif Ae_49 <= 16 then
            if Ae_49 <= 15 then
                if (Ae_29 * 1 + 3) * 5 % 4 == ((Ae_29 * 1 + 3) * 5 + 4) % 4 then
                    pQ = Ae_13("SellSingularItem")
                    pL = Ae_13("ExtractAllAlienCores")
                    Ae_12 = Ae_13("ExtractSingleAlienCore")
                    py = Ae_13("SellAllBuildings")
                else
                    Ae_12 = pL("SellSingularItem")
                    pQ = pL("ExtractAllAlienCores")
                    py = pL("ExtractSingleAlienCore")
                    Ae_13 = pL("SellAllBuildings")
                end
                Ae_29 = (Ae_29 + 49) % 144
            else
                Ae_35 = (vector.create((Ae_29 * 4 + 1) % 11 + 1, (Ae_29 * 10 + 9) % 13 + 1, (Ae_29 * 3 + 3) % 17 + 1))
                Ae_21 = (vector.create((Ae_29 * 6 + 8) % 11 + 1, (Ae_29 * 1 + 2) % 13 + 1, (Ae_29 * 7 + 2) % 17 + 1))
                Ae_3 = (vector.create((Ae_29 * 4 + 7) % 11 + 1, (Ae_29 * 4 + 11) % 13 + 1, (Ae_29 * 8 + 14) % 17 + 1))
                Ae_37 = (vector.create((Ae_29 * 4 + 3) % 5 + 1, (Ae_29 * 4 + 7) % 7 + 1, (Ae_29 * 5 + 6) % 9 + 1))
                if vector.dot(vector.cross(Ae_35, (vector.cross(Ae_21, Ae_3))), Ae_37) == vector.dot(Ae_21 * vector.dot(Ae_35, Ae_3) - Ae_3 * vector.dot(Ae_35, Ae_21), Ae_37) then
                    pu = Ae_13("TryToCompleteQuest")
                    pr = Ae_13("ClaimQuestTier")
                    rk = Ae_13("ClaimBPReward")
                    rd = Ae_13("CollectBPPickup")
                else
                    rk = rd("TryToCompleteQuest")
                    pu = rd("ClaimQuestTier")
                    Ae_13 = rd("ClaimBPReward")
                    pr = rd("CollectBPPickup")
                end
                Ae_29 = (Ae_29 + 121) % 144
            end
        elseif Ae_49 <= 17 then
            Ae_35 = (vector.create((Ae_29 * 6 + 3) % 11 + 1, (Ae_29 * 5 + 9) % 13 + 1, (Ae_29 * 12 + 15) % 17 + 1))
            Ae_21 = (vector.create((Ae_29 * 1 + 6) % 11 + 1, (Ae_29 * 8 + 7) % 13 + 1, (Ae_29 * 7 + 12) % 17 + 1))
            Ae_3 = (vector.create((Ae_29 * 6 + 5) % 11 + 1, (Ae_29 * 2 + 11) % 13 + 1, (Ae_29 * 13 + 17) % 17 + 1))
            if vector.dot(vector.cross(Ae_35, Ae_21), Ae_3) == vector.dot(vector.cross(Ae_21, Ae_3), Ae_35) + 1 then
                Ae_13 = q8("BuyFromShop")
                qV = q8("BuyFromBlackMarketShop")
                q5 = q8("GeneralGemRoll")
                q_ = q8("GeneralEquipSlot")
            else
                q8 = Ae_13("BuyFromShop")
                q5 = Ae_13("BuyFromBlackMarketShop")
                q_ = Ae_13("GeneralGemRoll")
                qV = Ae_13("GeneralEquipSlot")
            end
            Ae_29 = (Ae_29 + 85) % 144
        else
            local Cm = bit32.rrotate(bit32.bxor(bit32.lrotate(Ae_29, 13), string.byte(tostring(pu))), 22)
            if bit32.bxor(bit32.lrotate(bit32.bxor(Cm, 1240413932), 0), 1240413932) == bit32.lrotate(Cm, 0) then
                qR = Ae_13("TryToBuySkill")
            else
                Ae_13 = qR("TryToBuySkill")
            end
            Ae_29 = (Ae_29 + 85) % 144
        end
    elseif Ae_49 <= 27 then
        if Ae_49 <= 23 then
            if Ae_49 <= 21 then
                if Ae_49 <= 20 then
                    if Ae_49 <= 19 then
                        Ae_35 = (vector.create((Ae_29 * 2 + 6) % 11 + 1, (Ae_29 * 5 + 3) % 13 + 1, (Ae_29 * 13 + 1) % 17 + 1))
                        Ae_21 = (vector.create((Ae_29 * 5 + 5) % 11 + 1, (Ae_29 * 2 + 13) % 13 + 1, (Ae_29 * 1 + 1) % 17 + 1))
                        Ae_3 = (vector.create((Ae_29 * 4 + 5) % 5 + 1, (Ae_29 * 3 + 2) % 7 + 1, (Ae_29 * 5 + 2) % 9 + 1))
                        if math.abs((vector.angle(Ae_35, Ae_21, Ae_3))) - math.abs((vector.angle(Ae_21, Ae_35, Ae_3))) == 1 then
                            qE = qv("SendTroopsToPoint")
                            qy = qv("SendRocketsToPoint")
                            Ae_13 = qv("SubmitAutoConquerQueue")
                            qK = qv("UnclaimBase")
                        else
                            qK = Ae_13("SendTroopsToPoint")
                            qE = Ae_13("SendRocketsToPoint")
                            qy = Ae_13("SubmitAutoConquerQueue")
                            qv = Ae_13("UnclaimBase")
                        end
                        Ae_29 = (Ae_29 + 49) % 144
                    else
                        if Ae_29 * 80307145 + 1 + 2 <= Ae_29 * 80307145 + 1 + 2 + 4 then
                            Ae_33 = "Mini War"
                        else
                            qo = "Mini War"
                        end
                        Ae_29 = (Ae_29 + 13) % 144
                    end
                else
                    if (Ae_29 * 2 + 5) * 10 % 3 == ((Ae_29 * 2 + 5) * 10 + 3) % 3 then
                        ql = "https://discord.gg/ehKVq7pf7v"
                    else
                        q8 = "https://discord.gg/ehKVq7pf7v"
                    end
                    Ae_29 = (Ae_29 + 121) % 144
                end
            elseif Ae_49 <= 22 then
                Ae_35 = (vector.create((Ae_29 * 3 + 9) % 11 + 1, (Ae_29 * 11 + 2) % 13 + 1, (Ae_29 * 13 + 16) % 17 + 1))
                Ae_21 = (vector.create((Ae_29 * 7 + 3) % 11 + 1, (Ae_29 * 5 + 11) % 13 + 1, (Ae_29 * 2 + 3) % 17 + 1))
                Ae_3 = (vector.create((Ae_29 * 2 + 5) % 11 + 1, (Ae_29 * 7 + 10) % 13 + 1, (Ae_29 * 14 + 9) % 17 + 1))
                Ae_37 = (vector.create((Ae_29 * 4 + 2) % 11 + 1, (Ae_29 * 2 + 12) % 13 + 1, (Ae_29 * 5 + 6) % 17 + 1))
                if vector.dot(vector.cross(Ae_35, Ae_21), (vector.cross(Ae_3, Ae_37))) == vector.dot(Ae_35, Ae_3) * vector.dot(Ae_21, Ae_37) - vector.dot(Ae_35, Ae_37) * vector.dot(Ae_21, Ae_3) then
                    qg = "https://rscripts.net/@Ouroboros"
                else
                    p5 = "https://rscripts.net/@Ouroboros"
                end
                Ae_29 = (Ae_29 + 121) % 144
            else
                local BI = bit32.rrotate(bit32.bxor(bit32.lrotate(Ae_29, 18), string.byte(tostring(ConvertCurrency))), 11)
                if bit32.bxor(bit32.lrotate(bit32.bxor(BI, 2936687302), 30), 2881655473) ~= bit32.lrotate(BI, 30) then
                    q8 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                else
                    Ae_43 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                end
                Ae_29 = (Ae_29 + 121) % 144
            end
        elseif Ae_49 <= 25 then
            if Ae_49 <= 24 then
                local CI = bit32.rrotate(bit32.bxor(bit32.lrotate(Ae_29, 4), string.byte(tostring(pu))), 17)
                if bit32.bxor(bit32.lrotate(bit32.bxor(CI, 3771661010), 30), 3090398900) == bit32.lrotate(CI, 30) then
                    p5 = loadstring(game:HttpGet(Ae_43 .. "Library.lua"))()
                else
                    Ae_43 = loadstring(game:HttpGet(p5 .. "Library.lua"))()
                end
                Ae_29 = (Ae_29 + 13) % 144
            else
                if (Ae_29 * 2 + 8) * 16 % 3 == ((Ae_29 * 2 + 8) * 16 + 7) % 3 then
                    pcall(fns.fn7)
                    pM = loadstring(game:HttpGet(pz .. "addons/ThemeManager.lua"))()
                    p5 = loadstring(game:HttpGet(pz .. "addons/SaveManager.lua"))()
                    pE = Ae_31.Toggles
                    Ae_16 = Ae_31.Options
                    Ae_43 = fns.fn752
                else
                    pcall(fns.fn7)
                    Ae_16 = loadstring(game:HttpGet(Ae_43 .. "addons/ThemeManager.lua"))()
                    Ae_31 = loadstring(game:HttpGet(Ae_43 .. "addons/SaveManager.lua"))()
                    pM = p5.Toggles
                    pE = p5.Options
                    pz = fns.fn752
                end
                Ae_29 = (Ae_29 + 85) % 144
            end
        elseif Ae_49 <= 26 then
            Ae_35 = (vector.create((Ae_29 * 3 + 6) % 11 + 1, (Ae_29 * 9 + 10) % 13 + 1, (Ae_29 * 4 + 3) % 17 + 1))
            Ae_21 = (vector.create((Ae_29 * 1 + 7) % 11 + 1, (Ae_29 * 4 + 3) % 13 + 1, (Ae_29 * 11 + 8) % 17 + 1))
            Ae_3 = (vector.create((Ae_29 * 4 + 2) % 5 + 1, (Ae_29 * 5 + 1) % 7 + 1, (Ae_29 * 5 + 3) % 9 + 1))
            if math.abs((vector.angle(Ae_35, Ae_21, Ae_3))) - math.abs((vector.angle(Ae_21, Ae_35, Ae_3))) == 2 then
                q0 = fns.fn336
                qM = fn1028
                re = fns.fn579
            else
                re = fns.fn336
                q0 = fn1028
                qM = fns.fn579
            end
            Ae_29 = (Ae_29 + 121) % 144
        else
            Ae_35 = (vector.create((Ae_29 * 2 + 9) % 11 + 1, (Ae_29 * 10 + 6) % 13 + 1, (Ae_29 * 7 + 9) % 17 + 1))
            Ae_21 = (vector.create((Ae_29 * 4 + 5) % 11 + 1, (Ae_29 * 5 + 8) % 13 + 1, (Ae_29 * 12 + 7) % 17 + 1))
            Ae_3 = (vector.create((Ae_29 * 6 + 2) % 11 + 1, (Ae_29 * 10 + 13) % 13 + 1, (Ae_29 * 3 + 15) % 17 + 1))
            Ae_37 = (vector.create((Ae_29 * 1 + 8) % 11 + 1, (Ae_29 * 3 + 10) % 13 + 1, (Ae_29 * 9 + 3) % 17 + 1))
            if vector.dot(vector.cross(Ae_35, Ae_21), (vector.cross(Ae_3, Ae_37))) == vector.dot(Ae_35, Ae_3) * vector.dot(Ae_21, Ae_37) - vector.dot(Ae_35, Ae_37) * vector.dot(Ae_21, Ae_3) + 4 then
                qE = "#7fd47f"
            else
                qn = "#7fd47f"
            end
            Ae_29 = (Ae_29 + 85) % 144
        end
    elseif Ae_49 <= 32 then
        if Ae_49 <= 30 then
            if Ae_49 <= 29 then
                if Ae_49 <= 28 then
                    if (Ae_29 * 2 + 4) * 13 % 3 == ((Ae_29 * 2 + 4) * 13 + 3) % 3 then
                        qh = "#6ec1ff"
                        qc = "#e8a34d"
                        p6 = "#8b93a3"
                        Ae_18 = fns.fn825
                    else
                        qc = "#6ec1ff"
                        qh = "#e8a34d"
                        Ae_18 = "#8b93a3"
                        p6 = fns.fn825
                    end
                    Ae_29 = (Ae_29 + 13) % 144
                else
                    Ae_35 = (vector.create((Ae_29 * 1 + 9) % 11 + 1, (Ae_29 * 4 + 5) % 13 + 1, (Ae_29 * 12 + 10) % 17 + 1))
                    Ae_21 = (vector.create((Ae_29 * 3 + 8) % 11 + 1, (Ae_29 * 8 + 3) % 13 + 1, (Ae_29 * 11 + 9) % 17 + 1))
                    Ae_3 = (vector.create((Ae_29 * 1 + 4) % 5 + 1, (Ae_29 * 4 + 6) % 7 + 1, (Ae_29 * 4 + 1) % 9 + 1))
                    if math.abs((vector.angle(Ae_35, Ae_21, Ae_3))) - math.abs((vector.angle(Ae_21, Ae_35, Ae_3))) == 0 then
                        pG = fns.fn696
                        rb = fn850
                    else
                        rb = fns.fn696
                        pG = fn850
                    end
                    Ae_29 = (Ae_29 + 85) % 144
                end
            else
                if (not qM or not qM) and (Ae_13 and Ae_13) or Ae_31 and not Ae_13 and (Ae_13 or not Ae_31) or not ((not qM or not qM) and (Ae_13 and Ae_13) or Ae_31 and not Ae_13 and (Ae_13 or not Ae_31)) then
                    qO = fns.fn1
                    qo = fns.fn165
                else
                    qo = fns.fn1
                    qO = fns.fn165
                end
                Ae_29 = (Ae_29 + 13) % 144
            end
        elseif Ae_49 <= 31 then
            if (Ae_29 * 3 + 2) * 21 % 4 == ((Ae_29 * 3 + 2) * 21 + 8) % 4 then
                p3 = fns.fn410
            else
                Ae_33 = fns.fn410
            end
            Ae_29 = (Ae_29 + 121) % 144
        else
            if (Ae_45 or not pr or Ae_45 and pr) and ((pr or pr) and (Ae_45 and pr)) or not ((Ae_45 or not pr or Ae_45 and pr) and ((pr or pr) and (Ae_45 and pr))) then
                pB = fns.fn308
            else
                re = fns.fn308
            end
            Ae_29 = (Ae_29 + 85) % 144
        end
    elseif Ae_49 <= 34 then
        if Ae_49 <= 33 then
            Ae_35 = (vector.create((Ae_29 * 5 + 8) % 11 + 1, (Ae_29 * 2 + 5) % 13 + 1, (Ae_29 * 13 + 7) % 17 + 1))
            Ae_21 = (vector.create((Ae_29 * 7 + 4) % 11 + 1, (Ae_29 * 5 + 5) % 13 + 1, (Ae_29 * 9 + 6) % 17 + 1))
            Ae_3 = (vector.create((Ae_29 * 5 + 1) % 5 + 1, (Ae_29 * 3 + 6) % 7 + 1, (Ae_29 * 2 + 6) % 9 + 1))
            if math.abs((vector.angle(Ae_35, Ae_21, Ae_3))) - math.abs((vector.angle(Ae_21, Ae_35, Ae_3))) == 3 then
                qA = fn1012
                qp = fns.fn702
                q7 = fns.fn650
            else
                q7 = fn1012
                qA = fns.fn702
                qp = fns.fn650
            end
            Ae_29 = (Ae_29 + 85) % 144
        else
            Ae_35 = (vector.create((Ae_29 * 4 + 7) % 11 + 1, (Ae_29 * 11 + 12) % 13 + 1, (Ae_29 * 8 + 5) % 17 + 1))
            Ae_21 = (vector.create((Ae_29 * 5 + 9) % 11 + 1, (Ae_29 * 4 + 12) % 13 + 1, (Ae_29 * 12 + 13) % 17 + 1))
            Ae_3 = (vector.create((Ae_29 * 6 + 5) % 11 + 1, (Ae_29 * 6 + 1) % 13 + 1, (Ae_29 * 14 + 4) % 17 + 1))
            if vector.dot(vector.cross(Ae_35, Ae_21), Ae_3) == vector.dot(vector.cross(Ae_21, Ae_3), Ae_35) + 1 then
                p9 = nil
            else
                pY = nil
            end
            Ae_29 = (Ae_29 + 121) % 144
        end
    elseif Ae_49 <= 35 then
        Ae_49 = (vector.create((Ae_29 * 4 + 6) % 11 + 1, (Ae_29 * 2 + 2) % 13 + 1, (Ae_29 * 14 + 14) % 17 + 1))
        Ae_35 = (vector.create((Ae_29 * 1 + 1) % 11 + 1, (Ae_29 * 7 + 13) % 13 + 1, (Ae_29 * 5 + 9) % 17 + 1))
        local BR = vector.dot(Ae_49, Ae_35)
        if BR * BR <= vector.dot(Ae_49, Ae_49) * vector.dot(Ae_35, Ae_35) then
            pU = fns.fn534
            task.spawn(fns.worker)
            ri = fns.fn425
            qP = fns.fn167
        else
            qP = fns.fn534
            task.spawn(fns.worker)
            pU = fns.fn425
            ri = fns.fn167
        end
        Ae_29 = (Ae_29 + 49) % 144
    else
        if (Ae_29 * 2 + 1) * 16 % 3 == ((Ae_29 * 2 + 1) * 16 + 2) % 3 then
            pK = fns.fn597
            pC = fns.fn203
            qs = { Storage = true, Farm = true, GemMine = true, CloneFacility = true }
            rj = fns.fn653
            qd = fns.fn791
        else
            qs = fns.fn597
            qd = fns.fn203
            pK = { Farm = true, GemMine = true, CloneFacility = true, Storage = true }
            pC = fns.fn653
            rj = fns.fn791
        end
        Ae_29 = (Ae_29 + 121) % 144
    end
until (Ae_29 * 77 + 92) % 144 == 77
for k, v in Ae_47 do
    Ae_7 = v ~= Ae_47.Collect and v ~= Ae_47.Conquer
    if Ae_7 then
        Ae_45(v)
    end
end
pq, Ae_41, Ae_43, Label, qJ, Ae_27 = nil, nil, nil, nil, nil, nil
Ae_7 = 8
repeat
    Ae_29 = (Ae_7 * 1 + 1) % 3 + 1
    if Ae_29 <= 2 then
        if Ae_29 <= 1 then
            if Ae_7 * 75989729 + 4 + 7 <= Ae_7 * 75989729 + 4 + 7 + 1 then
                pq = "Unknown"
                pcall(fns.fn833)
                Ae_41 = Ae_47.Info:AddLeftGroupbox("Account", "circle-user")
                Ae_41:AddLabel(qM("User", LocalPlayer.Name, qn), true)
                Ae_41:AddLabel(qM("Status", "Keyless", qn), true)
                Ae_41:AddLabel(qM("Executor", pq, qn), true)
                Ae_43 = Ae_47.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                Ae_43:AddLabel(q0(Ae_33 .. " [" .. tostring(game.PlaceId) .. "]", qh), true)
                Ae_43:AddLabel(qM("Place ID", tostring(game.PlaceId), qh), true)
                Label = Ae_43:AddLabel(qM("Session time", "0s", qc), true)
            else
                qh = "Unknown"
                pcall(fns.fn833)
                qc = qM.Info:AddLeftGroupbox("Account", "circle-user")
                qc:AddLabel(Ae_41("User", Label.Name, LocalPlayer), true)
                qc:AddLabel(Ae_41("Status", "Keyless", LocalPlayer), true)
                qc:AddLabel(Ae_41("Executor", qh, LocalPlayer), true)
                q0 = qM.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                q0:AddLabel(Ae_43(qn .. " [" .. tostring(game.PlaceId) .. "]", pq), true)
                q0:AddLabel(Ae_41("Place ID", tostring(game.PlaceId), pq), true)
                Ae_33 = q0:AddLabel(Ae_41("Session time", "0s", Ae_47), true)
            end
            Ae_7 = (Ae_7 + 7) % 12
        else
            local BS = bit32.rrotate(bit32.bxor(bit32.lrotate(Ae_7, 31), string.byte(tostring(Ae_41))), 22)
            if bit32.bxor(bit32.lrotate(bit32.bxor(BS, 3488891580), 28), 3439281195) ~= bit32.lrotate(BS, 28) then
                pq = tostring(game.JobId)
            else
                qJ = tostring(game.JobId)
            end
            Ae_7 = (Ae_7 + 4) % 12
        end
    else
        Ae_29 = {
            "ebsrdzvjhab",
            "bxbarjvgat",
            "rfiyrapizokt",
            "ldjbeuq",
            "bbtxp",
            "rkqvkcpkg",
            "tqldr",
            "vgagiepjzl",
            "vzdotoqi"
        }
        if Ae_29[(Ae_7 * 62 + 68) % 9 + 1] < Ae_29[(Ae_7 * 62 + 68) % 9 + 1] then
            qJ = #Ae_27 > 18
        else
            Ae_27 = #qJ > 18
        end
        Ae_7 = (Ae_7 + 1) % 12
    end
until (Ae_7 * 7 + 10) % 12 == 6
if Ae_27 then
    Ae_7 = 4
    repeat
        Ae_41 = (vector.create((Ae_7 * 1 + 8) % 11 + 1, (Ae_7 * 10 + 11) % 13 + 1, (Ae_7 * 12 + 17) % 17 + 1))
        Ae_29 = (vector.create((Ae_7 * 4 + 6) % 11 + 1, (Ae_7 * 6 + 9) % 13 + 1, (Ae_7 * 8 + 8) % 17 + 1))
        local Bx = vector.dot(Ae_41, Ae_29)
        if Bx * Bx <= vector.dot(Ae_41, Ae_41) * vector.dot(Ae_29, Ae_29) then
            Ae_27 = string.sub(qJ, 1, 18) .. "..."
        else
            qJ = string.sub(Ae_27, 1, 18) .. "..."
        end
        Ae_7 = (Ae_7 + 5) % 8
    until (Ae_7 * 3 + 7) % 8 == 2
end
Ae_7 = Ae_27
local Ae_22 = if Ae_7 then 1 else 0
local Ae_1 = 4035 * Ae_22 + 919 * (1 - Ae_22)
local Ae_36 = 2613 * Ae_22 + 1293 * (1 - Ae_22)
if not ((Ae_1 * 1125 + Ae_36 * 3074 + Ae_1 * Ae_36) % 16777213 == 6337979) then
    Ae_7 = qJ
end
qf, Label2, Label3, Label4, Label5, Label7, Label6, Ae_2, GeneralsGroup, Label8, Label9, Label10, Ae_13, Ae_27, Label11, Label12, Label13, Label14, qX, qT, connection, pH, pA, onBuySelectedNow, onBuyBlackMarketNow, qY, qz, pI, q2, qi, onResearchNow, pO, q4, p0, onUnclaimNow, qr, px, q1, p8, pt, pZ, pJ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Ae_39 = Ae_7
Ae_43:AddLabel(qM("Server", Ae_39, p6), true)
Ae_43:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
qf = os.clock()
task.spawn(fns.worker2)
Ae_45 = Ae_47.Info:AddRightGroupbox("Scripts", "package")
Ae_45:AddLabel(q0("Included in this hub", p6), true)
Ae_45:AddLabel(q0(Ae_33, qh), true)
Ae_29 = Ae_47.Info:AddRightGroupbox("Features", "list")
Ae_29:AddLabel(q0("Auto Collect", qh), true)
Ae_29:AddLabel(q0("Auto Sell", qc), true)
Ae_29:AddLabel(q0("Auto Rewards", qn), true)
Ae_29:AddLabel(q0("Auto Buy", qh), true)
Ae_29:AddLabel(q0("Generals and Research", qc), true)
Ae_29:AddLabel(q0("Auto Conquer", p6), true)
Ae_29:AddLabel(q0("Alien Event", qn), true)
Ae_41 = Ae_47.Info:AddRightGroupbox("Socials", "link")
Ae_41:AddButton({ Text = "Discord", Func = re })
Ae_41:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
local OuroborosHubGroup = Ae_47.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = re })
local FaqGroup = Ae_47.Info:AddRightGroupbox("FAQ", "circle-help")
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
local CollectGroup = Ae_47.Farming:AddLeftGroupbox("Collect", "hand-coins")
CollectGroup:AddToggle("AutoCollect", { Text = "Auto Collect", Default = false })
CollectGroup:AddToggle("AutoCollectAlienOnly", { Text = "Collect Alien Mutations Only", Default = false })
CollectGroup:AddSlider("CollectDelay", { Text = "Collect delay", Default = 5, Min = 0.5, Max = 60, Rounding = 1, Suffix = "s" })
CollectGroup:AddButton({
    Text = "Collect Now",
    Func = function()
        for k, v in qd() do
            local vS = v
            if qj(vS) then
                pcall(function()
                    p_:Fire(vS)
                end)
                task.wait(0.05)
            end
        end
    end
})
CollectGroup:AddToggle("AutoOfflineEarnings", { Text = "Auto Claim Offline Earnings", Default = true })
local YourResourcesGroup = Ae_47.Farming:AddRightGroupbox("Your Resources", "boxes")
Label2 = YourResourcesGroup:AddLabel("No farms on your base yet.", true)
Ae_37 = Ae_47.Selling:AddLeftGroupbox("Sell", "banknote")
Ae_37:AddToggle("AutoSellAll", { Text = "Auto Sell ALL", Default = false })
Ae_37:AddButton({ Text = "Sell All Now", Func = fns.onSellAllNow })
Ae_37:AddToggle("AutoSellHighPrice", { Text = "Auto Sell at High Price", Default = false })
Ae_37:AddSlider("SellThreshold", { Text = "Sell when above", Default = 10, Min = 0, Max = 100, Rounding = 0, Suffix = "%" })
Ae_37:AddButton({ Text = "Sell High Price Items Now", Func = pX })
Ae_37:AddSlider("SellDelay", { Text = "Sell delay", Default = 10, Min = 1, Max = 120, Rounding = 1, Suffix = "s" })
Ae_37:AddButton({ Text = "Sell All Buildings In Backpack", Func = fns.onSellAllBuildingsInBackpack })
Label3 = Ae_37:AddLabel(qM("Best price", "none", qc), true)
Label4 = Ae_37:AddLabel(qM("Above threshold", "none", qn), true)
Ae_49 = Ae_47.Alien:AddLeftGroupbox("Alien Event", "atom")
Ae_49:AddToggle("AutoExtractAlien", { Text = "Auto Extract Alien Resources", Default = false })
Ae_49:AddButton({ Text = "Extract All Now", Func = fns.onExtractAllNow })
Ae_49:AddButton({ Text = "Extract Held Item Now", Func = fns.onExtractHeldItemNow })
Ae_49:AddSlider("AlienDelay", { Text = "Extract delay", Default = 15, Min = 2, Max = 120, Rounding = 1, Suffix = "s" })
Label5 = Ae_49:AddLabel(qM("Alien cores", "0", qn), true)
local RewardsGroup = Ae_47.Rewards:AddLeftGroupbox("Rewards", "gift")
if (not Ae_27 and pt and (not Ae_29 and pt) or (Ae_27 or not pZ) and (pt and pZ) or (Ae_29 and not Ae_29 or (not Ae_27 or not Ae_27) or (Ae_27 and pZ or Ae_29 and not Ae_29))) and (((not Ae_27 or not Ae_27) and (pZ and Ae_29) or (not Ae_27 or not pZ) and (Ae_29 or not Ae_29)) and ((not Ae_27 and pt or (pt or Ae_27)) and (not Ae_29 and not Ae_27 and (not Ae_29 or pZ)))) or not ((not Ae_27 and pt and (not Ae_29 and pt) or (Ae_27 or not pZ) and (pt and pZ) or (Ae_29 and not Ae_29 or (not Ae_27 or not Ae_27) or (Ae_27 and pZ or Ae_29 and not Ae_29))) and (((not Ae_27 or not Ae_27) and (pZ and Ae_29) or (not Ae_27 or not pZ) and (Ae_29 or not Ae_29)) and ((not Ae_27 and pt or (pt or Ae_27)) and (not Ae_29 and not Ae_27 and (not Ae_29 or pZ))))) then
    RewardsGroup:AddToggle("AutoQuests", { Text = "Auto Claim Quests", Default = true })
    Label7 = RewardsGroup:AddLabel(qM("Quests", "0 ready, 0 claimed", qn), true)
    RewardsGroup:AddToggle("AutoBattlepass", { Text = "Auto Claim Battlepass", Default = true })
    RewardsGroup:AddToggle("AutoWarPassPoints", { Text = "Auto Collect War Pass Points", Default = true })
    Label6 = RewardsGroup:AddLabel(qM("Pass points", "0", qh), true)
else
    qh:AddToggle("AutoQuests", { Text = "Auto Claim Quests", Default = true })
    qn = qh:AddLabel(Label6("Quests", "0 ready, 0 claimed", RewardsGroup), true)
    qh:AddToggle("AutoBattlepass", { Text = "Auto Claim Battlepass", Default = true })
    qh:AddToggle("AutoWarPassPoints", { Text = "Auto Collect War Pass Points", Default = true })
    qM = qh:AddLabel(Label6("Pass points", "0", Label7), true)
end
RewardsGroup:AddSlider("RewardsDelay", { Text = "Rewards delay", Default = 10, Min = 2, Max = 120, Rounding = 1, Suffix = "s" })
local AutoBuyGroup = Ae_47.Shop:AddLeftGroupbox("Auto Buy", "shopping-cart")
AutoBuyGroup:AddToggle("AutoBuy", { Text = "Auto Buy", Default = false })
AutoBuyGroup:AddDropdown("BuyFarm", {
    Text = "Factory (Farms)",
    Values = onBuyBlackMarketNow2("Farm"),
    Multi = true,
    AllowNull = true,
    Default = {}
})
AutoBuyGroup:AddDropdown("BuyHouse", {
    Text = "Houses",
    Values = onBuyBlackMarketNow2("House"),
    Multi = true,
    AllowNull = true,
    Default = {}
})
AutoBuyGroup:AddDropdown("BuyMilitary", {
    Text = "Military",
    Values = onBuyBlackMarketNow2("Military"),
    Multi = true,
    AllowNull = true,
    Default = {}
})
AutoBuyGroup:AddDropdown("BuyDecor", {
    Text = "Special",
    Values = onBuyBlackMarketNow2("Decor"),
    Multi = true,
    AllowNull = true,
    Default = {}
})
Ae_2 = {
    { shop = "Farm", option = "BuyFarm" },
    { shop = "House", option = "BuyHouse" },
    { shop = "Military", option = "BuyMilitary" },
    { shop = "Decor", option = "BuyDecor" }
}
onBuySelectedNow = function()
    for k, v in Ae_2 do
        local v_ = v
        for k, v in pairs(rb(v_.option)) do
            local v3 = k
            local vT = v and qN(v_.shop, v3) > 0
            if vT then
                pcall(function()
                    q8:Fire({ shop = v_.shop, item = v3 })
                end)
                task.wait(0.2)
            end
        end
    end
end
if (qf and not qf or (not onBuyBlackMarketNow or not p8)) and (Label8 or not qf or qf and qf) and not ((qf and not qf or (not onBuyBlackMarketNow or not p8)) and (Label8 or not qf or qf and qf)) then
    qM:AddButton({ Text = "Buy Selected Now", Func = AutoBuyGroup })
    qM:AddSlider("BuyDelay", { Default = 10, Max = 120, Suffix = "s", Min = 2, Rounding = 1, Text = "Buy delay" })
    onBuyBlackMarketNow = onBuySelectedNow.Shop:AddRightGroupbox("Black Market", "store")
    onBuyBlackMarketNow:AddToggle("AutoBlackMarket", { Text = "Auto Buy Black Market", Default = false })
    onBuyBlackMarketNow:AddDropdown("BuyBlackMarket", {
        Multi = true,
        AllowNull = true,
        Default = {},
        Text = "Items to grab",
        Values = GeneralsGroup("BlackMarket")
    })
    onBuyBlackMarketNow2 = function()
        for k, v in pairs(rb("BuyBlackMarket")) do
            local wb = k
            local v6 = v and qN("BlackMarket", wb) > 0
            if v6 then
                pcall(function()
                    q5:Fire({ shop = "BlackMarket", item = wb })
                end)
                task.wait(0.2)
            end
        end
    end
    onBuyBlackMarketNow:AddButton({ Text = "Buy Black Market Now", Func = onBuyBlackMarketNow2 })
    qY = onBuySelectedNow.Empire:AddLeftGroupbox("Generals", "star")
    qY:AddToggle("AutoRollGenerals", { Text = "Auto Roll Generals", Default = false })
    qY:AddToggle("AutoEquipGenerals", { Text = "Auto Equip Generals", Default = true })
    qY:AddSlider("GemReserve", { Text = "Keep at least", Suffix = " gems", Default = 0, Min = 0, Max = 10000, Rounding = 0 })
    Ae_35 = fn942
    qY:AddButton({ Text = "Roll Now", Func = Ae_35 })
    p6 = qY:AddLabel(Ae_47("Generals", "0 owned", Label8), true)
else
    AutoBuyGroup:AddButton({ Text = "Buy Selected Now", Func = onBuySelectedNow })
    AutoBuyGroup:AddSlider("BuyDelay", { Text = "Buy delay", Default = 10, Min = 2, Max = 120, Rounding = 1, Suffix = "s" })
    Ae_35 = Ae_47.Shop:AddRightGroupbox("Black Market", "store")
    Ae_35:AddToggle("AutoBlackMarket", { Text = "Auto Buy Black Market", Default = false })
    Ae_35:AddDropdown("BuyBlackMarket", {
        Text = "Items to grab",
        Values = onBuyBlackMarketNow2("BlackMarket"),
        Multi = true,
        AllowNull = true,
        Default = {}
    })
    onBuyBlackMarketNow = function()
        for k, v in pairs(rb("BuyBlackMarket")) do
            local wb = k
            local v6 = v and qN("BlackMarket", wb) > 0
            if v6 then
                pcall(function()
                    q5:Fire({ shop = "BlackMarket", item = wb })
                end)
                task.wait(0.2)
            end
        end
    end
    Ae_35:AddButton({ Text = "Buy Black Market Now", Func = onBuyBlackMarketNow })
    GeneralsGroup = Ae_47.Empire:AddLeftGroupbox("Generals", "star")
    GeneralsGroup:AddToggle("AutoRollGenerals", { Text = "Auto Roll Generals", Default = false })
    GeneralsGroup:AddToggle("AutoEquipGenerals", { Text = "Auto Equip Generals", Default = true })
    GeneralsGroup:AddSlider("GemReserve", { Text = "Keep at least", Default = 0, Min = 0, Max = 10000, Rounding = 0, Suffix = " gems" })
    qY = fn942
    GeneralsGroup:AddButton({ Text = "Roll Now", Func = qY })
    Label8 = GeneralsGroup:AddLabel(qM("Generals", "0 owned", p6), true)
end
qz = fn862
pI = fns.fn187
q2 = fns.fn205
local ResearchGroup = Ae_47.Empire:AddRightGroupbox("Research", "flask-conical")
ResearchGroup:AddToggle("AutoResearch", { Text = "Auto Research", Default = false })
ResearchGroup:AddDropdown("ResearchPriority", {
    Text = "Prioritise path",
    Values = { "Smart (cheapest)", "Economy", "Military", "Special" },
    Default = "Smart (cheapest)"
})
qi = function()
    local wL
    local wM = p3()
    local wN = wM and wM.skills
    local wN_1 = {}
    local wO = wN and type(wN.skillsThatCanBeUnlocked) == "table"
    if wO then
        for k, v in pairs(wN.skillsThatCanBeUnlocked) do
            if v and SkillsConfig[k] then
                if not (wN.unlockedSkills and wN.unlockedSkills[k]) then
                    if not (wN.currentlyUnlockingSkills and wN.currentlyUnlockingSkills[k]) then
                        table.insert(wN_1, k)
                    end
                end
            end
        end
    end
    wL = qO("ResearchPriority")
    table.sort(wN_1, function(f9, ga)
        local wD_1
        local wC_1
        wC_1, wD_1 = SkillsConfig[f9], SkillsConfig[ga]
        local wF = wL == wC_1.Type and 1 or 0
        local wF_2 = wL == wD_1.Type and 1 or 0
        if wF ~= wF_2 then
            return wF > wF_2
        end
        local wE_2 = wC_1.Cost
        local wK = if wE_2 then 1 else 0
        local wI = 274 * wK + 2511 * (1 - wK)
        local wJ = 105 * wK + 779 * (1 - wK)
        if not ((wI * 2440 + wJ * 2805 + wI * wJ) % 16777213 == 991855) then
            wE_2 = 0
        end
        return wE_2 < (wD_1.Cost or 0)
    end)
    return wN_1
end
onResearchNow = function()
    local wX = qi()
    local wW = wX[1]
    if wW then
        pcall(function()
            qR:Fire(wW)
        end)
    end
    return wW
end
ResearchGroup:AddButton({ Text = "Research Now", Func = onResearchNow })
Label9 = ResearchGroup:AddLabel(qM("Ready", "0 skills", p6), true)
ResearchGroup:AddSlider("EmpireDelay", { Text = "Empire delay", Default = 10, Min = 2, Max = 120, Rounding = 1, Suffix = "s" })
Ae_21 = Ae_47.Bases:AddLeftGroupbox("Conquer", "swords")
Ae_21:AddDropdown("DeployArmy", { Text = "Armies", Values = qH, Multi = true, AllowNull = true, Default = { "Army 1" } })
Ae_21:AddDropdown("DeployTarget", {
    Text = "Deploy Target",
    Values = { "Nearest to base", "Weakest defender", "Strongest defender" },
    Default = "Nearest to base"
})
Ae_21:AddDropdown("TargetTypes", { Text = "Base types", Values = Ae_19, Multi = true, AllowNull = true, Default = {} })
pO = function()
    local w_
    w_ = nil
    local w0 = p9(rb("TargetTypes"))
    if #w0 == 0 then
        return nil
    end
    w_ = qO("DeployTarget")
    table.sort(w0, function(gu, gv)
        if w_ == "Weakest defender" then
            return gu.strength < gv.strength
        elseif w_ == "Strongest defender" then
            return gu.strength > gv.strength
        else
            return gu.distance < gv.distance
        end
    end)
    return w0[1].point
end
q4 = function(gy)
    if not gy then
        return
    end
    for k, v in qC() do
        local w8 = v
        pcall(function()
            qK:Fire({ armyIndex = w8, capturePoint = gy })
        end)
        task.wait(0.2)
    end
    if Ae_18("IncludeRockets") then
        pcall(function()
            qE:Fire({ capturePoint = gy })
        end)
    end
end
p0 = fns.fn393
onUnclaimNow = function()
    local xi = rb("UnclaimTypes")
    local xn = if not qo(xi) then 1 else 0
    if xn == 1 then
        return
    end
    for k, v in p7() do
        local xt = v
        local xj = rh(xt) and xi[tostring(xt:GetAttribute("baseType"))]
        if xj then
            pcall(function()
                qv:Fire(xt)
            end)
            task.wait(0.2)
        end
    end
end
Ae_21:AddButton({ Text = "Deploy Now", Func = fns.onDeployNow })
Ae_21:AddToggle("AutoConquer", { Text = "Auto Conquer", Default = false })
Ae_21:AddToggle("IncludeRockets", { Text = "Include Rockets", Default = false })
Ae_21:AddSlider("ConquerQueueSize", { Text = "Queue size", Default = 3, Min = 1, Max = 7, Rounding = 0 })
Ae_21:AddSlider("ConquerDelay", { Text = "Conquer delay", Default = 15, Min = 3, Max = 180, Rounding = 1, Suffix = "s" })
Ae_21:AddButton({ Text = "Clear Auto Conquer Queue", Func = fns.onClearAutoConquerQueue })
Ae_3 = Ae_47.Events:AddLeftGroupbox("Raid and Event Sites", "siren")
Ae_3:AddToggle("AutoEventDeploy", { Text = "Auto Deploy on Raid / Event Sites", Default = false })
Ae_3:AddToggle("EventPriority", { Text = "Pause Auto Conquer During Events", Default = true })
Ae_3:AddDropdown("EventTypes", { Text = "Site types", Values = qG, Multi = true, AllowNull = true, Default = qG })
Ae_3:AddButton({ Text = "Deploy on Site Now", Func = fns.onDeployOnSiteNow })
Label10 = Ae_3:AddLabel(qM("Sites open", "0", qc), true)
if ((not Label7 or not Label7 or (not Label2 or false)) and (not Label10 and qi and (Label2 or not Label10)) or (not Label3 and not qf and (not Label7 or Label2) or (not Label2 or false) and (not Label7 or false))) and not ((not Label7 or not Label7 or (not Label2 or false)) and (not Label10 and qi and (Label2 or not Label10)) or (not Label3 and not qf and (not Label7 or Label2) or (not Label2 or false) and (not Label7 or false))) then
    Ae_47 = Ae_13.Holdings:AddLeftGroupbox("Unclaim", "flag-off")
else
    Ae_13 = Ae_47.Holdings:AddLeftGroupbox("Unclaim", "flag-off")
end
Ae_13:AddToggle("AutoUnclaim", { Text = "Auto Unclaim Bases", Default = false })
Ae_13:AddDropdown("UnclaimTypes", {
    Text = "Types to drop",
    Values = Ae_19,
    Multi = true,
    AllowNull = true,
    Default = { "Garnison", "Camp" }
})
Ae_13:AddButton({ Text = "Unclaim Now", Func = onUnclaimNow })
Ae_27 = Ae_47.Holdings:AddRightGroupbox("Domination", "flag")
Label11 = Ae_27:AddLabel(qM("Held bases", "0", qn), true)
Label12 = Ae_27:AddLabel(qM("Available", "0", qh), true)
Label13 = Ae_27:AddLabel(qM("Next target", "none", qc), true)
Label14 = Ae_27:AddLabel(qM("Weather", "None", p6), true)
local MenuGroup = Ae_47.Settings:AddLeftGroupbox("Menu", "menu")
p5.ToggleKeybind = pE.MenuKeybind
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddToggle("BlackScreen", { Text = "Black Screen", Default = false })
MenuGroup:AddButton({ Text = "Unload", Func = fns.onUnload })
Ae_16:SetLibrary(p5)
Ae_16:SetFolder("OuroborosHub")
Ae_16:SaveDefault("Monochrome")
Ae_16:ApplyToTab(Ae_47.Settings)
Ae_16:LoadDefault()
Ae_31:SetLibrary(p5)
Ae_31:IgnoreThemeSettings()
Ae_31:SetIgnoreIndexes({ "MenuKeybind" })
Ae_31:SetFolder("OuroborosHub/mini-war")
Ae_31:BuildConfigSection(Ae_47.Settings)
Ae_31:LoadAutoloadConfig()
qX = tick()
qT = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local xC = v
        pcall(function()
            xC:Disable()
        end)
    end
end)
qr = fns.fn211
connection = UserInputService.InputBegan:Connect(fns.onInputBegan)
if ((not p8 or FaqGroup) and (Ae_13 or not Ae_13) or (not FaqGroup and FaqGroup or (Ae_13 or not Ae_13))) and ((not Ae_13 or p8 or Ae_13 and not FaqGroup) and ((not FaqGroup or not p8) and (not Ae_13 and FaqGroup))) and not (((not p8 or FaqGroup) and (Ae_13 or not Ae_13) or (not FaqGroup and FaqGroup or (Ae_13 or not Ae_13))) and ((not Ae_13 or p8 or Ae_13 and not FaqGroup) and ((not FaqGroup or not p8) and (not Ae_13 and FaqGroup)))) then
    pA.InputChanged:Connect(fns.onInputChanged)
    pH = { active = false, hidden = nil, labels = nil, cover = nil }
else
    pH = UserInputService.InputChanged:Connect(fns.onInputChanged)
    pA = { active = false, cover = nil, hidden = nil, labels = nil }
end
px = fns.fn181
q1 = fns.fn62
p8 = fns.fn166
pt = function(h4)
    local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
    pcall(function()
        RunService:Set3dRenderingEnabled(not h4)
    end)
    if h4 then
        local xS = pA.hidden or {}
        pA.hidden = xS
        if PlayerGui then
            for i, child in PlayerGui:GetChildren() do
                local xQ_1 = child:IsA("ScreenGui") and child.Enabled and child ~= p5.ScreenGui and child.Name ~= "OuroborosBlackScreen"
                if xQ_1 then
                    child.Enabled = false
                    table.insert(pA.hidden, child)
                end
            end
        end
        q1()
        p8()
    else
        local xR_2 = pA.hidden or {}
        for k, v in xR_2 do
            local x4 = v
            pcall(function()
                x4.Enabled = true
            end)
        end
        pA.hidden = nil
        if pA.cover then
            pcall(function()
                pA.cover:Destroy()
            end)
            pA.cover = nil
            pA.labels = nil
        end
    end
    pA.active = h4
end
pZ = fn963
pJ = function(is)
    local yh = qP()
    if not yh or not is.Parent then
        return
    end
    local CFrame2 = yh.CFrame
    local yj = CFrame.new(is:GetPivot().Position)
    local yk = os.clock() + 6
    while true do
        local yl = is.Parent and os.clock() < yk and not p5.Unloaded
        if yl then
            yh.CFrame = yj
            task.wait(0.1)
            continue
        end
        break
    end
    if is.Parent then
        local attr = is:GetAttribute("PickupId")
        if attr then
            pcall(function()
                rd:Fire(attr)
            end)
        end
    end
    yh.CFrame = CFrame2
end
p5:OnUnload(fns.fn701)
task.spawn(fns.worker3)
task.spawn(fns.worker4)
task.spawn(fns.worker5)
task.spawn(function()
    while not p5.Unloaded do
        if Ae_18("AutoCollect") then
            for k, v in qd() do
                local yK = v
                if p5.Unloaded then
                    break
                elseif qj(yK) then
                    pcall(function()
                        p_:Fire(yK)
                    end)
                    task.wait(0.05)
                end
            end
        end
        if Ae_18("AutoOfflineEarnings") then
            pcall(function()
                pW:Fire()
            end)
        end
        task.wait(pG("CollectDelay", 5))
    end
end)
task.spawn(worker6)
task.spawn(function()
    while not p5.Unloaded do
        local yM = p3()
        local yN = yM and Ae_18("AutoQuests")
        if yN then
            local questData = yM.questData
            if questData then
                local yP_1 = questData.activeQuests or {}
                for k, v in pairs(yP_1) do
                    local yW = k
                    local yO_2 = type(v) == "table" and v.completed
                    if yO_2 then
                        pcall(function()
                            pu:Fire(yW)
                        end)
                        task.wait(0.2)
                    end
                end
                local yP_2 = questData.claimedTier or {}
                local yP_3 = questData.tier or 0
                for i = 1, yP_3 do
                    local y1 = i
                    local yN_2 = not yP_2[y1] and not yP_2[tostring(y1)]
                    if yN_2 then
                        pcall(function()
                            pr:Fire(tostring(y1))
                        end)
                        task.wait(0.2)
                    end
                end
            end
        end
        local yN_3 = yM and Ae_18("AutoBattlepass")
        if yN_3 then
            local battlepass = yM.battlepass
            if battlepass then
                local yM_1 = battlepass.bpPoints or 0
                local yP_4 = battlepass.claimedFreeBP or {}
                local yQ = battlepass.claimedPremiumBP or {}
                local TOTAL_STAGES = BattlepassConfig.TOTAL_STAGES
                for i = 1, TOTAL_STAGES do
                    local y3 = i
                    local yQ_2 = BattlepassConfig.GetStagePointRequirement(y3)
                    local yR = type(yQ_2) ~= "number" or yM_1 < yQ_2
                    if yR then
                        break
                    end
                    local yQ_3 = not yP_4[y3] and not yP_4[tostring(y3)]
                    if yQ_3 then
                        pcall(function()
                            rk:Fire({ track = "Free", stage = y3 })
                        end)
                        task.wait(0.2)
                    end
                    local yQ_4 = battlepass.hasPremiumBP and not yQ[y3] and not yQ[tostring(y3)]
                    if yQ_4 then
                        pcall(function()
                            rk:Fire({ track = "Premium", stage = y3 })
                        end)
                        task.wait(0.2)
                    end
                end
            end
        end
        task.wait(pG("RewardsDelay", 10))
    end
end)
task.spawn(fns.worker7)
task.spawn(worker8)
task.spawn(function()
    while not p5.Unloaded do
        local y7 = p3()
        local y8 = y7 and Ae_18("AutoRollGenerals")
        if y8 then
            local y8_1 = y7.gems
            local zc = if y8_1 then 1 else 0
            local za = 1489 * zc + 1738 * (1 - zc)
            local zb = 426 * zc + 3434 * (1 - zc)
            if not ((za * 622 + zb * 2461 + za * zb) % 16777213 == 2608858) then
                y8_1 = 0
            end
            local y7_1 = y8_1
            if y7_1 - Ae_15.gemRollCost >= pG("GemReserve", 0) then
                qY()
            end
        end
        if Ae_18("AutoEquipGenerals") then
            local y7_2 = qz()
            table.sort(y7_2, function(ke, kf)
                return pI(ke) > pI(kf)
            end)
            local y8_2 = Ae_15.MAX_SLOTS or 1
            for i = 1, y8_2 do
                local zg = i
                local y6 = y7_2[zg]
                local y8_3 = y6 and q2(zg) ~= y6
                if y8_3 then
                    pcall(function()
                        qV:Fire({ generalKey = y6, slotIndex = zg })
                    end)
                    task.wait(0.3)
                end
            end
        end
        if Ae_18("AutoResearch") then
            onResearchNow()
        end
        task.wait(pG("EmpireDelay", 10))
    end
end)
task.spawn(function()
    local zp = false
    repeat
        local zj
        if not p5.Unloaded then
            if Ae_18("AutoUnclaim") then
                onUnclaimNow()
            end
            local zk = false
            if Ae_18("AutoEventDeploy") then
                local zl_1 = p0()
                if zl_1[1] then
                    zk = true
                    q4(zl_1[1].point)
                    pcall(function()
                        qy:Fire({ queue = {} })
                    end)
                end
            end
            local zl_2 = (Ae_18("AutoConquer"))
            if zl_2 then
                local zm = zk and Ae_18("EventPriority")
                zl_2 = not zm
            end
            if zl_2 then
                local zk_1 = p9(rb("TargetTypes"))
                zj = qO("DeployTarget")
                table.sort(zk_1, function(kJ, kK)
                    if zj == "Weakest defender" then
                        return kJ.strength < kK.strength
                    elseif zj == "Strongest defender" then
                        return kJ.strength > kK.strength
                    else
                        return kJ.distance < kK.distance
                    end
                end)
                local zi = {}
                local zl_3 = math.min(#zk_1, pG("ConquerQueueSize", 3))
                local zs = 1
                while zs <= zl_3 do
                    local zt = zs
                    table.insert(zi, zk_1[zt].point)
                    zs += 1
                end
                if #zi > 0 then
                    pcall(function()
                        qy:Fire({ queue = zi, deployType = qC()[1] })
                    end)
                    q4(zi[1])
                end
            end
            task.wait(pG("ConquerDelay", 15))
        else
            zp = true
        end
    until zp
end)
task.spawn(fns.worker9)
task.spawn(fns.worker10)
p5:Notify("Mini War loaded")
