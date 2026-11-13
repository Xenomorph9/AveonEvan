local vt_1, vt_3, vt_5, vt_7, vt_9, vt_12, vt_14, vt_15, vt_17, vt_20
local vt_22_3
local mY
local nF
local mF
local nm
local m3
local mL
local ns
local m9
local ny
local my
local nf
local mX
local connection4
local connection2
local nl
local m2
local mK
local nr
local m8
local Label
local Library
local mx
local ne
local mW
local nD
local Label3
local nk
local m1
local mJ
local nq
local m7
local mP
local UserInputService
local mw
local nd
local mV
local nC
local mC
local nj
local m0
local Label2
local connection3
local np
local m6
local mO
local connection
local mv
local nc
local mU
local nB
local mB
local Options
local m_
local nH
local mH
local Toggles
local m5
local mN
local nu
local nb
local mT
local nA
local mA
local nh
local mZ
local nG
local mG
local nn
local m4
local mM
local na
local mS
local nz
local mz
local ng
local function worker()
    local qd_1
    while not Library.Unloaded do
        task.wait(1)
        local qc = math.floor(os.clock() - nl)
        if qc < 60 then
            qd_1 = qc .. "s"
        elseif qc < 3600 then
            qd_1 = string.format("%dm %ds", qc // 60, qc % 60)
        else
            qd_1 = string.format("%dh %dm", qc // 3600, qc % 3600 // 60)
        end
        Label:SetText(nA("Session time", qd_1, nb))
    end
end
local function fn42(g7, g8)
    local Count = g7:FindFirstChild("Count")
    if not Count then
        return false
    end
    local tK = Count:FindFirstChild(("Count%d"):format(g8))
    if not tK then
        return false
    end
    local overlay = tK:FindFirstChild("overlay")
    return overlay ~= nil and overlay.Visible
end
local function autoPlayLoop()
    while not Library.Unloaded do
        task.wait(1)
        if nk and Toggles.AutoPlay.Value then
            mV()
            task.wait(Options.PlayRetry.Value)
        end
    end
end
local function fn63()
    local qx = mz(Options.PriorityList.Value)
    if #qx == 0 then
        Label3:SetText("Priority: empty")
        return
    end
    local qy = {}
    for i, v in ipairs(qx) do
        table.insert(qy, ("%d. %s"):format(i, v))
    end
    Label3:SetText(table.concat(qy, "\n"))
end
local function fn76()
    local CurrentCamera = nB.CurrentCamera
    if not CurrentCamera then
        return
    end
    ny:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    ny:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    m8 = tick()
end
local function fn78(bo, bp)
    return string.format('<font color="%s">%s</font>', bp, bo)
end
local function fn95(fx)
    local st = fx
    while true do
        if not (st and st ~= ns) then
            return true
        end
        local su_1 = st:IsA("GuiObject") and not st.Visible
        if su_1 then
            return false
        end
        local su_2 = st:IsA("LayerCollector") and not st.Enabled
        if su_2 then
            break
        end
        st = st.Parent
    end
    return false
end
local function fn100()
    local p__1
    local pZ_1
    if identifyexecutor then
        p__1, pZ_1 = identifyexecutor()
        local p0 = p__1 ~= ""
        local p1 = type(p__1) == "string" and p0
        if p1 then
            local p0_1 = type(pZ_1) == "string" and pZ_1 ~= "" and p__1 .. " " .. pZ_1
            m5 = p0_1 or p__1
        end
    end
end
local function fn122(c7, c8, c9, da, db)
    if c8.Magnitude < 0.05 then
        return
    end
    local q8 = c9 * da
    if db then
        q8 = math.min(q8, db)
    end
    c7.CFrame = CFrame.new(c7.Position + c8.Unit * q8)
end
local function fn132(cz)
    local cA = table.concat(cz, ", ")
    Options.PriorityList:SetValue(cA)
end
local function fn141(br, bs, bt)
    return string.format("<b>%s</b> %s %s", br, nG("-", "#5a6070"), nG(bs, bt))
end
local function onUnload()
    Library:Unload()
end
local function fn202(be)
    local DiscordGroup = be:AddLeftGroupbox("Discord", nil, nil, nil, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = m4 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = m4 })
    DiscordGroup:AddLabel(m7, true)
    for i, child in DiscordGroup.Container:GetChildren() do
        local pR_1 = child:IsA("TextLabel") and child.Text == m7
        if pR_1 then
            child.TextColor3 = Color3.fromRGB(255, 70, 70)
        end
    end
end
local function fn212()
    mT()
    connection:Disconnect()
    if connection2 then
        connection2:Disconnect()
    end
    connection3:Disconnect()
    connection4:Disconnect()
end
local function onCopyJoinScript_JobID()
    local p6 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, mN)
    if setclipboard then
        setclipboard(p6)
    elseif toclipboard then
        toclipboard(p6)
    end
    Library:Notify("Copied join script to clipboard")
end
local function fn220()
    local ps = mw and mw:get({ "stats", "keys" })
    return ps or 0
end
local function fn234(as, at)
    return mB[as].number < mB[at].number
end
local function autoSkillsLoop()
    while not Library.Unloaded do
        task.wait(1)
        if nk and Toggles.AutoSkills.Value then
            local ut_1 = tonumber(Options.SkillKeyReserve.Value) or 0
            local ut_2 = nr(ut_1)
            local uu_1 = nil
            if Options.SkillMode.Value == "Priority List" then
                for k, v in mz(Options.SkillPriority.Value) do
                    for k, v2 in ut_2 do
                        if v2.id == v then
                            uu_1 = v2
                            break
                        end
                    end
                    if uu_1 then
                        break
                    end
                end
            else
                for k, v in ut_2 do
                    if not uu_1 then
                        uu_1 = v
                    elseif Options.SkillMode.Value == "Cheapest" then
                        if v.amount < uu_1.amount then
                            uu_1 = v
                        end
                    elseif v.amount > uu_1.amount then
                        uu_1 = v
                    end
                end
            end
            if uu_1 then
                nz("SkillTree", "purchaseSkill", uu_1.id)
                task.wait(0.6)
            end
        end
    end
end
local function onAddToPriority2()
    local Value = Options.PriorityPick.Value
    if not Value or Value == "" then
        return
    end
    local qH_1 = mz(Options.PriorityList.Value)
    for k, v in qH_1 do
        if v == Value then
            return
        end
    end
    table.insert(qH_1, Value)
    mx(qH_1)
end
local function fn298(ax, ay)
    local pm = mO[ax].price
    local pr = if pm then 1 else 0
    local pp = 2088 * pr + 1279 * (1 - pr)
    local pq = 531 * pr + 1015 * (1 - pr)
    if not ((pp * 2632 + pq * 3427 + pp * pq) % 16777213 == 8424081) then
        pm = 0
    end
    return pm < (mO[ay].price or 0)
end
local function fn322(aL)
    local py = mw and mw:get({ "stats", "skillTree" })
    local py_1 = typeof(py) == "table" and py[aL] == true
    return py_1
end
local function fn333(h2)
    local ug = nC() - h2
    local uh = {}
    for k, v in pairs(mJ) do
        if not m9(k) then
            local uj = v.cost or {}
            local uj_1 = uj.amount or 0
            local uj_2 = (v.dependency == nil or m9(v.dependency)) and (uj.currency == nil or uj.currency == "keys") and uj_1 <= ug
            if uj_2 then
                table.insert(uh, { id = k, amount = uj_1 })
            end
        end
    end
    return uh
end
local function fn353(dF)
    local rs_1
    local rr_1
    local Chests = nB:FindFirstChild("Chests")
    if not Chests then
        return nil
    end
    rs_1, rr_1 = nil, Options.CollectRadius.Value
    for i, descendant in Chests:GetDescendants() do
        local rp_1 = descendant:IsA("ProximityPrompt") and descendant.Enabled
        if rp_1 then
            local Parent = descendant.Parent
            local rq_1 = Parent ~= nil and Parent:HasTag("Pot")
            local rt = Parent and Parent:IsA("BasePart")
            if rt then
                if rq_1 then
                    rq_1 = "Pots"
                end
                local ru = rq_1 or "Chests"
                rt = mS(ru)
            end
            if rt then
                local Magnitude = (Parent.Position - dF.Position).Magnitude
                if Magnitude < rr_1 then
                    rs_1, rr_1 = descendant, Magnitude
                end
            end
        end
    end
    return rs_1, rr_1
end
local function fn357(he)
    local tR, tS, tT
    local tP = mP()
    if not tP then
        return
    end
    local Holder = tP:FindFirstChild("Holder")
    if not Holder then
        return
    end
    local tW = false
    for i, v in ipairs(he) do
        local tV = 11
        while true do
            if tV < 11 then
                if tV < 5 then
                    if tV < 2 then
                        if tV < 1 then
                            tV = 22
                        else
                            tV = if tT then 19 else 6
                        end
                    elseif tV < 3 then
                        tT = Toggles.AutoCardRandom.Value
                        tV = 10
                    elseif tV < 4 then
                        return
                    else
                        return
                    end
                elseif tV < 8 then
                    if tV < 6 then
                        break
                    elseif tV < 7 then
                        tV = 12
                    else
                        tW = true
                        tV = 5
                    end
                elseif tV < 9 then
                    tV = 0
                elseif tV < 10 then
                    tV = if not tP.Visible then 3 else 20
                else
                    tV = if not tT then 17 else 15
                end
            elseif tV < 17 then
                if tV < 14 then
                    if tV < 12 then
                        tR = mK(v)
                        tV = if not tR then 4 else 21
                    elseif tV < 13 then
                        tV = 5
                    else
                        tT = tR < 40
                        tV = 1
                    end
                elseif tV < 15 then
                    task.wait(Options.CardDelay.Value)
                    tR = 0
                    tV = 0
                elseif tV < 16 then
                    firesignal(tS.MouseButton1Up)
                    task.wait(0.25)
                    tR += 1
                    tV = if my(tP, i) then 18 else 9
                else
                    return
                end
            elseif tV < 20 then
                if tV < 18 then
                    return
                elseif tV < 19 then
                    tV = 12
                else
                    tT = Toggles.AutoCard.Value
                    tV = if tT then 10 else 2
                end
            elseif tV < 21 then
                tV = 8
            elseif tV < 22 then
                tS = Holder:FindFirstChild(("Selection%d"):format(tR))
                tV = if not tS then 16 else 14
            else
                tT = not Library.Unloaded
                tV = if tT then 13 else 1
            end
        end
        if tW then
            break
        end
    end
end
local function fn445(aY)
    local pJ = {}
    local pK = aY or ""
    for k in tostring(pK):gmatch("[^,]+") do
        local pK_1 = k:match("^%s*(.-)%s*$")
        if pK_1 ~= "" then
            table.insert(pJ, pK_1)
        end
    end
    return pJ
end
local function fn450(gH)
    local td_1
    local ta = nc(gH)
    if #ta == 0 then
        return nil
    elseif not Toggles.AutoCard.Value then
        return ta[math.random(1, #ta)].index
    else
        local Value2 = Options.CardBlacklist.Value
        local tb_1
        local tc = {}
        for k, v in ta do
            if not Value2[v.key] then
                table.insert(tc, v)
            end
        end
        if #tc == 0 then
            tc = ta
        end
        local ta_1 = mz(Options.PriorityList.Value)
        td_1, tb_1 = nil, math.huge
        for k, v in tc do
            for i, v2 in ipairs(ta_1) do
                if v2 == v.key and i < tb_1 then
                    td_1, tb_1 = v, i
                end
            end
        end
        if td_1 then
            return td_1.index
        end
        if Toggles.PreferWeapons.Value then
            for k, v in tc do
                if v.isWeapon then
                    return v.index
                end
            end
        end
        local Value = Options.CardFallback.Value
        if Value == "First Card" then
            return tc[1].index
        end
        local tb_2 = tc[1]
        for k, v in tc do
            local tc_1 = mC[v.rarity] or 0
            local tc_2 = mC[tb_2.rarity] or 0
            if Value == "Highest Rarity" then
                if tc_1 > tc_2 then
                    tb_2 = v
                end
            elseif tc_1 < tc_2 then
                tb_2 = v
            end
        end
        return tb_2.index
    end
end
local function fn458(aG)
    local pv = mw and mw:get({ "inventory", "chests" })
    if typeof(pv) ~= "table" then
        return 0
    end
    return pv[aG] or 0
end
local function autoSkipFinalWaveLoop()
    while not Library.Unloaded do
        task.wait(0.5)
        if Library.Unloaded then
            break
        end
        if np then
            local PlayerGui = ns:FindFirstChildOfClass("PlayerGui")
            local sy = PlayerGui and PlayerGui:FindFirstChild("HUD")
            local sy_1 = tick()
            if Toggles.AutoSkipFinalWave.Value and sy_1 - nq >= 1 then
                local sA_1 = sy
                if sA_1 then
                    local sB_1 = sy:FindFirstChild("Top") and sy.Top:FindFirstChild("SkipWave")
                    local sC_1 = sy:FindFirstChild("SkipWave") and sy.SkipWave:FindFirstChild("SkipWave")
                    local sD_1 = sy:FindFirstChild("SkipWaveMobile") and sy.SkipWaveMobile:FindFirstChild("SkipWave")
                    sA_1 = { sB_1, sC_1, sD_1 }
                end
                local sC_2 = sA_1 or {}
                for k, v in sC_2 do
                    local sA_3 = v and m6(v)
                    if sA_3 then
                        firesignal(v.Activated)
                        nq = sy_1
                        break
                    end
                end
            end
            if not Toggles.EnableAutoSkipOnce.Value then
                na = false
            elseif not na then
                local sA_4 = sy
                if sA_4 then
                    local sB_3 = sy:FindFirstChild("Top") and sy.Top:FindFirstChild("AutoSkip")
                    local sC_3 = sy:FindFirstChild("SkipWave") and sy.SkipWave:FindFirstChild("AutoSkip")
                    local sD_2 = sy:FindFirstChild("SkipWaveMobile") and sy.SkipWaveMobile:FindFirstChild("AutoSkip")
                    sA_4 = { sB_3, sC_3, sD_2 }
                end
                local sB_4 = sA_4 or {}
                for k, v in sB_4 do
                    local sz_3 = v and m6(v)
                    if sz_3 then
                        local TextLabel = v:FindFirstChild("TextLabel")
                        local sA_5 = TextLabel and TextLabel:FindFirstChild("On")
                        local sz_5 = sA_5
                        if sA_5 then
                            sA_5 = not sz_5.Enabled
                        end
                        if sA_5 then
                            firesignal(v.Activated)
                        end
                        na = sz_5 ~= nil and sz_5.Enabled
                        if na then
                            break
                        end
                    end
                end
            end
            local sz_6 = PlayerGui and PlayerGui:FindFirstChild("Frames")
            local sx_1 = sz_6
            if sz_6 then
                sz_6 = sx_1:FindFirstChild("VictoryFrame")
            end
            local sA_7 = sz_6
            if Toggles.AutoPlayAgain.Value and sA_7 and sA_7.Visible and sy_1 - nn >= 1 then
                for k, v in getconnections(UserInputService.InputBegan) do
                    local Function = v.Function
                    local sA_8 = typeof(Function) == "function" and debug.getinfo(Function)
                    local sz_9 = sA_8 or nil
                    local sA_9 = sz_9
                    if sz_9 then
                        sz_9 = sA_9.short_src == "ReplicatedStorage.Shared.UI.Frames.RoundEnd"
                    end
                    if sz_9 then
                        v:Fire({ UserInputType = Enum.UserInputType.MouseButton1 }, false)
                        nn = sy_1
                        break
                    end
                end
            end
            local sz_10 = sx_1 and sx_1:FindFirstChild("RoundEnd")
            if Toggles.AutoPlayAgain.Value and sz_10 and sz_10.Visible and sy_1 - nh >= 2 then
                local Buttons = sz_10:FindFirstChild("Buttons")
                local sA_11 = Buttons and Buttons:FindFirstChild("Again")
                local sz_13 = sA_11
                if sA_11 then
                    sA_11 = sz_13.Visible
                end
                if sA_11 then
                    firesignal(sz_13.MouseButton1Click)
                    nh = sy_1
                end
            end
            local sz_14 = sx_1 and sx_1:FindFirstChild("DeathFrame")
            if Toggles.AutoGiveUp.Value and sz_14 and sz_14.Visible and sy_1 - nf >= 2 then
                local Buttons = sz_14:FindFirstChild("Buttons")
                local sx_3 = Buttons and Buttons:FindFirstChild("Continue")
                local sz_17 = sx_3
                if sx_3 then
                    sx_3 = sz_17.Visible
                end
                if sx_3 then
                    firesignal(sz_17.MouseButton1Click)
                    nf = sy_1
                end
            end
        end
    end
end
local function fn504()
    local qf = mz(Options.SkillPriority.Value)
    if #qf == 0 then
        Label2:SetText("Priority: empty")
        return
    end
    local qg = {}
    for i, v in ipairs(qf) do
        table.insert(qg, ("%d. %s"):format(i, v))
    end
    Label2:SetText(table.concat(qg, "\n"))
end
local function autoLobbyChestsLoop()
    while not Library.Unloaded do
        task.wait(1)
        if nk and Toggles.AutoLobbyChests.Value then
            local t5_1 = tonumber(Options.ChestKeyReserve.Value) or 0
            for k, v in mM do
                if Library.Unloaded or not Toggles.AutoLobbyChests.Value then
                    break
                elseif Options.ChestTypes.Value[v] then
                    local Value = Options.ChestBatch.Value
                    if Toggles.ChestBuy.Value then
                        local t7_1 = mO[v].price or 0
                        while true do
                            local t7_2 = t7_1 > 0 and nu(v) < Value and nC() - t5_1 >= t7_1
                            if t7_2 then
                                nz("ChestService", "PurchaseChest", v)
                                task.wait(0.35)
                                continue
                            end
                            break
                        end
                    end
                    local t7_3 = nu(v)
                    if t7_3 > 0 then
                        local t8_2 = math.min(t7_3, Value)
                        if t8_2 > 1 then
                            nz("ChestService", "OpenMultipleChests", v, t8_2)
                        else
                            nz("ChestService", "OpenChest", v)
                        end
                        task.wait(1)
                    end
                end
            end
            task.wait(Options.ChestDelay.Value)
        end
    end
end
local function onRemoveFromPriority()
    local Value = Options.PriorityPick.Value
    local qR = mz(Options.PriorityList.Value)
    for k, v in qR do
        if v == Value then
            table.remove(qR, k)
            break
        end
    end
    mx(qR)
end
local function fn535()
    local Character = ns.Character
    local sa = Character and Character:FindFirstChildOfClass("Humanoid")
    if not sa or sa.MaxHealth <= 0 then
        return 1
    end
    return sa.Health / sa.MaxHealth
end
local function fn541(n, o)
    local o3_1
    local o1 = n and n:FindFirstChild(o)
    local o1_1
    if not o1 then
        return {}
    end
    o1_1, o3_1 = pcall(require, o1)
    return o1_1 and o3_1 or {}
end
local function onClearPriority2()
    mx({})
end
local function fn595()
    if setclipboard then
        setclipboard(mL)
    elseif toclipboard then
        toclipboard(mL)
    end
    Library:Notify("Copied Discord invite to clipboard")
end
local function fn605(dW, dX)
    local Enemies = nB:FindFirstChild("Enemies")
    if not Enemies then
        return Vector3.new(0, 0, 0)
    end
    local rG = Vector3.new(0, 0, 0)
    for i, child in Enemies:GetChildren() do
        local rF_1 = (child:IsA("Model"))
        if rF_1 then
            local rH_1 = child.PrimaryPart or child:FindFirstChild("hitbox")
            rF_1 = rH_1
        end
        local rH_2 = rF_1 or nil
        if rH_2 then
            local rH_3 = dW.Position - rH_2.Position
            local rF_3 = Vector3.new(rH_3.X, 0, rH_3.Z)
            local Magnitude = rF_3.Magnitude
            if Magnitude > 0.1 and Magnitude < dX then
                rG += rF_3.Unit * ((dX - Magnitude) / dX)
            end
        end
    end
    return rG
end
local function onRscripts()
    if setclipboard then
        setclipboard(mG)
    elseif toclipboard then
        toclipboard(mG)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
local function onInputBegan()
    nd = tick()
end
local function autoQuestsLoop()
    while not Library.Unloaded do
        task.wait(1)
        if nk and Toggles.AutoQuests.Value then
            if Toggles.QuestDaily.Value then
                local uM_1 = mw and mw:get({ "quests", "daily", "slots" })
                if typeof(uM_1) == "table" then
                    for k, v in pairs(uM_1) do
                        local uM_2 = typeof(v) == "table" and not v.claimed
                        if uM_2 then
                            ne("Quests", "claimDaily", k)
                            task.wait(0.3)
                        end
                    end
                end
            end
            if Toggles.QuestAchievements.Value then
                local uN_2 = mF.achievements or {}
                for k, v in uN_2 do
                    if v.id then
                        ne("Quests", "claimAchievement", v.id)
                        task.wait(0.3)
                    end
                end
            end
            task.wait(Options.QuestDelay.Value)
        end
    end
end
local function onAddToPriority()
    local Value = Options.SkillPick.Value
    local qp = mz(Options.SkillPriority.Value)
    for k, v in qp do
        if v == Value then
            return
        end
    end
    table.insert(qp, Value)
    Options.SkillPriority:SetValue(table.concat(qp, ", "))
end
local function onMoveUp()
    local Value = Options.PriorityPick.Value
    local q_ = mz(Options.PriorityList.Value)
    for k, v in q_ do
        if v == Value and k > 1 then
            q_[k] = q_[k - 1]
            q_[k - 1] = v
            break
        end
    end
    mx(q_)
end
local function onInputChanged(iQ)
    local UserInputType = iQ.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        nd = tick()
    end
end
local function fn716()
    if m0 then
        m0:Cancel()
    end
    m0 = nil
    mY = nil
    mU = nil
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        local vk = not Library.Unloaded
        if vk then
            vk = Toggles.AntiAfk and Toggles.AntiAfk.Value
        end
        if vk then
            local vk_1 = tick() - nd
            local vl_2 = tick() - m8
            if vk_1 >= 300 and vl_2 >= 60 then
                pcall(mZ)
            else
                if vk_1 < 300 and vl_2 >= 300 then
                    pcall(mZ)
                end
            end
        end
    end
end
local function fn762(eb, ec)
    local Enemies = nB:FindFirstChild("Enemies")
    if not Enemies then
        return nil
    end
    local rR = Vector3.new(0, 0, 0)
    local rS = 0
    for i, child in Enemies:GetChildren() do
        local rQ_1 = (child:IsA("Model"))
        if rQ_1 then
            local rT_1 = child.PrimaryPart or child:FindFirstChild("hitbox")
            rQ_1 = rT_1
        end
        local rT_2 = rQ_1 or nil
        if rT_2 then
            local rT_3 = rT_2.Position - eb.Position
            if Vector3.new(rT_3.X, 0, rT_3.Z).Magnitude < ec then
                rR += rT_2.Position
                rS += 1
            end
        end
    end
    if rS == 0 then
        return nil
    end
    return rR / rS
end
local function fn821(de, df)
    de.CFrame = CFrame.new(df)
end
local function fn842(ex, ey)
    if m0 and mU == ex and mY and (mY - ey).Magnitude < 3 then
        return
    end
    mT()
    local Magnitude = (ey - ex.Position).Magnitude
    if Magnitude <= 0.5 then
        return
    end
    mY = ey
    mU = ex
    m0 = nD:Create(ex, TweenInfo.new(Magnitude / Options.FarmSpeed.Value, Enum.EasingStyle.Linear), { CFrame = CFrame.new(ey) })
    m0:Play()
end
local function fn852(dh)
    local Value = Options.CollectTypes.Value
    return Value.All == true or Value[dh] == true
end
local function fn871()
    nz("QueueService", "PlayPressed")
    task.wait(0.4)
    nz("WorldSelection", "SetWorld", Options.PlayWorld.Value)
    nz("WorldSelection", "SetDifficulty", Options.PlayDifficulty.Value)
    task.wait(0.2)
    nz("QueueService", "PartySizeSelected", tonumber(Options.PlayerLimit.Value))
    nz("QueueService", "FriendsOnlySelected", Toggles.FriendsOnly.Value)
    task.wait(0.2)
    nz("QueueService", "Created")
end
local function fn925()
    Library:Unload()
end
local function fn938()
    local Character = ns.Character
    if Character then
        return Character:FindFirstChild("HumanoidRootPart")
    end
    return nil
end
local function autoEquipLoop()
    while not Library.Unloaded do
        task.wait(1)
        if nk and Toggles.AutoEquip.Value then
            pcall(function()
                nH:equipBest()
            end)
            task.wait(Options.EquipDelay.Value)
        end
    end
end
local function fn952(dm)
    local rf_1
    local re_1
    local Value = Options.CollectRadius.Value
    rf_1, re_1 = nil, Value * Value
    local VFX = nB:FindFirstChild("VFX")
    if not VFX then
        return nil
    end
    for i, child in VFX:GetChildren() do
        if mS(child.Name) then
            local rd_2 = child:IsA("Model") and child:GetPivot().Position
            local rg = rd_2
            if not rg then
                local rd_3 = child:IsA("BasePart") and child.Position
                rg = rd_3
            end
            local rd_4 = rg
            if rd_4 then
                local rg_1 = rd_4 - dm.Position
                local rh = rg_1.X * rg_1.X + rg_1.Z * rg_1.Z
                if rh < re_1 then
                    rf_1, re_1 = rd_4, rh
                end
            end
        end
    end
    return rf_1
end
local function fn977()
    if not Toggles.AutoRetreat.Value then
        m1 = false
        return false
    end
    local sc = nm() * 100
    if m1 then
        if sc >= math.max(Options.RetreatResume.Value, Options.RetreatHealth.Value) then
            m1 = false
        end
    elseif sc <= Options.RetreatHealth.Value then
        m1 = true
    end
    return m1
end
local function onClearPriority()
    Options.SkillPriority:SetValue("")
end
local function onStartNow()
    task.spawn(mV)
end
local function onHeartbeat(eT)
    local so_1
    local sn_1, sn_4
    if not np then
        return
    end
    local sh = mW()
    if not sh then
        return
    end
    if m2() then
        mT()
        local si_1 = nj(sh, 90)
        if si_1.Magnitude > 0 then
            ng(sh, si_1, math.max(Options.FarmSpeed.Value, Options.CollectSpeed.Value), eT)
        end
        return
    end
    local si_2 = nil
    local sj
    local sj_2
    local Value3 = Options.FarmMethod.Value
    local Value2 = Options.FarmOffset.Value
    if Toggles.AutoFarm.Value then
        sj = mv(sh, Options.FarmSearch.Value)
        if sj then
            if Value3 == "Below" then
                si_2 = Vector3.new(sj.X, sj.Y - Value2, sj.Z)
            elseif Value3 == "Above" then
                si_2 = Vector3.new(sj.X, sj.Y + Value2, sj.Z)
            else
                m3 += eT * 1.5
                si_2 = sj + Vector3.new(math.cos(m3) * Value2, 0, math.sin(m3) * Value2)
            end
        end
    end
    local sm
    if Toggles.AutoCollect.Value then
        so_1, sn_1 = mX(sh)
        if so_1 then
            if sn_1 <= math.max(so_1.MaxActivationDistance - 2, 4) then
                pcall(fireproximityprompt, so_1, so_1.HoldDuration)
            else
                sm = so_1.Parent.Position
            end
        else
            sm = mA(sh)
        end
    end
    if sm and sj then
        local Value = Options.FarmSearch.Value
        local so_2 = sm - sj
        if Vector3.new(so_2.X, 0, so_2.Z).Magnitude > Value then
            sm = nil
        elseif Value3 ~= "Orbit" then
            if Value3 == "Below" then
                sn_4 = -Value2
            else
                sn_4 = Value2
            end
            local sk_1 = sn_4
            sm = Vector3.new(sm.X, sj.Y + sk_1, sm.Z)
        else
            sm = Vector3.new(sm.X, sh.Position.Y, sm.Z)
        end
    elseif sm then
        sm = Vector3.new(sm.X, sh.Position.Y, sm.Z)
    end
    local sk_2 = sm or si_2
    if not sk_2 then
        mT()
        return
    end
    if sm then
        sj_2 = Options.CollectSpeed.Value
    else
        sj_2 = Options.FarmSpeed.Value
    end
    local sl_1 = sj_2
    local sj_3 = Toggles.CollectInstant.Value
    if sj_3 then
        sj_3 = sm or Toggles.AutoCollect.Value
    end
    if sj_3 then
        mT()
        m_(sh, sk_2)
        return
    end
    if si_2 and not sm then
        mH(sh, si_2)
        return
    end
    mT()
    local si_3 = sk_2 - sh.Position
    local Magnitude = si_3.Magnitude
    if Magnitude > 0.5 then
        ng(sh, si_3, sl_1, eT, Magnitude)
    end
end
local function fn1044()
    local PlayerGui = ns:FindFirstChildOfClass("PlayerGui")
    if not PlayerGui then
        return nil
    end
    local Frames = PlayerGui:FindFirstChild("Frames")
    if not Frames then
        return nil
    end
    return Frames:FindFirstChild("Upgrades")
end
mv = nil
mw = nil
mx = nil
my = nil
mz = nil
mA = nil
mB = nil
mC = nil
Label3 = nil
connection2 = nil
mF = nil
mG = nil
mH = nil
connection3 = nil
mJ = nil
mK = nil
mL = nil
mM = nil
mN = nil
mO = nil
mP = nil
Label = nil
mS = nil
mT = nil
mU = nil
mV = nil
mW = nil
mX = nil
mY = nil
mZ = nil
m_ = nil
m0 = nil
m1 = nil
m2 = nil
m3 = nil
m4 = nil
m5 = nil
m6 = nil
m7 = nil
m8 = nil
m9 = nil
na = nil
nb = nil
nc = nil
nd = nil
ne = nil
nf = nil
ng = nil
nh = nil
local mR
Options = nil
nj = nil
nk = nil
nl = nil
nm = nil
nn = nil
Toggles = nil
np = nil
nq = nil
nr = nil
ns = nil
local nt
nu = nil
connection = nil
UserInputService = nil
Library = nil
ny = nil
nz = nil
nA = nil
nB = nil
nC = nil
nD = nil
connection4 = nil
nF = nil
nG = nil
nH = nil
Label2 = nil
local nV, nW, nX, nY, nZ, n_
vt_14, vt_20, vt_3, nD, nB, ny, UserInputService, ns, np, nk, vt_7, vt_12, vt_9, mR, mO, mJ, mF, mB, mw, nH, nF, vt_1, vt_17 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local vt_25 = 18
repeat
    local vt_22_1 = (vt_25 * 11 + 3) % 18 + 1
    if vt_22_1 <= 9 then
        if vt_22_1 <= 5 then
            if vt_22_1 <= 3 then
                if vt_22_1 <= 2 then
                    if vt_22_1 <= 1 then
                        local wI = bit32.rrotate(bit32.bxor(bit32.lrotate(vt_25, 2), string.byte(tostring(nF))), 3)
                        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(wI, 4082241455), 533236217), (bit32.bxor(bit32.band(wI, 212725840), 3518186887))), 533236217), 3518186887) ~= wI then
                            vt_20 = nH(vt_17.Packages, "DataService").client
                            mw = nH(vt_17.Shared.UI.Frames, "InventoryFrame")
                        else
                            mw = vt_17(vt_20.Packages, "DataService").client
                            nH = vt_17(vt_20.Shared.UI.Frames, "InventoryFrame")
                        end
                        vt_25 = (vt_25 + 23) % 72
                    else
                        local wL = bit32.rrotate(bit32.bxor(bit32.lrotate(vt_25, 3), string.byte(tostring(nB))), 20)
                        if bit32.bxor(bit32.lrotate(bit32.bxor(wL, 3403415401), 22), 3664951039) == bit32.lrotate(wL, 22) then
                            nF = vt_20.Packages:FindFirstChild("_Index")
                        else
                            vt_20 = nF.Packages:FindFirstChild("_Index")
                        end
                        vt_25 = (vt_25 + 5) % 72
                    end
                else
                    if vt_25 * 48372311 + 3 + 4 >= vt_25 * 48372311 + 3 + 4 + 4 then
                        nF = vt_1
                    else
                        vt_1 = nF
                    end
                    vt_25 = (vt_25 + 59) % 72
                end
            elseif vt_22_1 <= 4 then
                vt_5 = (vector.create((vt_25 * 4 + 8) % 11 + 1, (vt_25 * 9 + 11) % 13 + 1, (vt_25 * 10 + 11) % 17 + 1))
                vt_15 = (vector.create((vt_25 * 1 + 5) % 11 + 1, (vt_25 * 11 + 4) % 13 + 1, (vt_25 * 5 + 10) % 17 + 1))
                nV = (vector.create((vt_25 * 1 + 1) % 11 + 1, (vt_25 * 7 + 2) % 13 + 1, (vt_25 * 7 + 3) % 17 + 1))
                if vector.dot(vector.cross(vt_5, vt_15), nV) == vector.dot(vector.cross(vt_15, nV), vt_5) + 3 then
                    vt_1 = game:GetService("Players")
                else
                    vt_14 = game:GetService("Players")
                end
                vt_25 = (vt_25 + 59) % 72
            else
                vt_5 = (vector.create((vt_25 * 1 + 7) % 11 + 1, (vt_25 * 2 + 12) % 13 + 1, (vt_25 * 9 + 15) % 17 + 1))
                vt_15 = (vector.create((vt_25 * 3 + 6) % 11 + 1, (vt_25 * 6 + 6) % 13 + 1, (vt_25 * 4 + 12) % 17 + 1))
                nV = (vector.create((vt_25 * 6 + 9) % 11 + 1, (vt_25 * 1 + 2) % 13 + 1, (vt_25 * 6 + 1) % 17 + 1))
                nW = (vector.create((vt_25 * 3 + 8) % 11 + 1, (vt_25 * 4 + 13) % 13 + 1, (vt_25 * 2 + 11) % 17 + 1))
                if vector.dot(vector.cross(vt_5, vt_15), (vector.cross(nV, nW))) == vector.dot(vt_5, nV) * vector.dot(vt_15, nW) - vector.dot(vt_5, nW) * vector.dot(vt_15, nV) then
                    vt_20 = game:GetService("ReplicatedStorage")
                else
                    nk = game:GetService("ReplicatedStorage")
                end
                vt_25 = (vt_25 + 23) % 72
            end
        elseif vt_22_1 <= 7 then
            if vt_22_1 <= 6 then
                if (vt_25 * 2 + 3) * 10 % 3 == ((vt_25 * 2 + 3) * 10 + 8) % 3 then
                    nD = game:GetService("RunService")
                    vt_3 = game:GetService("TweenService")
                else
                    vt_3 = game:GetService("RunService")
                    nD = game:GetService("TweenService")
                end
                vt_25 = (vt_25 + 23) % 72
            else
                if (vt_25 * 2 + 5) * 4 % 3 == ((vt_25 * 2 + 5) * 4 + 5) % 3 then
                    ny = game:GetService("Workspace")
                else
                    nB = game:GetService("Workspace")
                end
                vt_25 = (vt_25 + 5) % 72
            end
        elseif vt_22_1 <= 8 then
            if (vt_25 * 3 + 3) * 21 % 4 == ((vt_25 * 3 + 3) * 21 + 12) % 4 then
                ny = game:GetService("VirtualUser")
                UserInputService = game:GetService("UserInputService")
                ns = vt_14.LocalPlayer
            else
                ns = game:GetService("VirtualUser")
                ny = game:GetService("UserInputService")
                vt_14 = UserInputService.LocalPlayer
            end
            vt_25 = (vt_25 + 59) % 72
        else
            vt_5 = {
                "abhpatilkhq",
                "hlfqafuyxy",
                "yprsvoq",
                "kaazratc",
                "onzzdzaoqq",
                "ecaqfndoqxco",
                "xapjfkrlan",
                "qbefsqubs",
                "wpfljjrgy",
                "vigpcgcixcks",
                "koqasli",
                "hrhwkhf",
                "opsvsd",
                "uifhqhmyzphr"
            }
            if vt_5[(vt_25 * 63 + 32) % 14 + 1] < vt_5[(vt_25 * 63 + 32) % 14 + 1] then
                vt_20 = nk.Assets:FindFirstChild("Collectables") ~= nil
                nB = np:FindFirstChild("Lobby") ~= nil
            else
                np = vt_20.Assets:FindFirstChild("Collectables") ~= nil
                nk = nB:FindFirstChild("Lobby") ~= nil
            end
            vt_25 = (vt_25 + 5) % 72
        end
    elseif vt_22_1 <= 14 then
        if vt_22_1 <= 12 then
            if vt_22_1 <= 11 then
                if vt_22_1 <= 10 then
                    if vt_25 * 33665927 + 6 + 6 <= vt_25 * 33665927 + 6 + 6 + 2 then
                        vt_17 = fn541
                    else
                        mB = fn541
                    end
                    vt_25 = (vt_25 + 23) % 72
                else
                    if (vt_25 * 1 + 9) * 21 % 4 == ((vt_25 * 1 + 9) * 21 + 5) % 4 then
                        vt_20 = vt_7.Shared.Modules.Data
                    else
                        vt_7 = vt_20.Shared.Modules.Data
                    end
                    vt_25 = (vt_25 + 23) % 72
                end
            else
                vt_5 = { "nrndaz", "itlleq", "sgaebqlas", "guesahxwev", "unydqarlr", "azj", "bxpxi", "xtzgkpcm" }
                local wF = vt_25
                vt_15 = vt_5[wF % 8 + 1]
                if vt_15:len() <= vt_15:gsub("(.)", "%1%1", wF % 3 % 2 + 1):len() then
                    vt_12 = vt_17(vt_20.Shared.Modules.Game, "SignalBankClient")
                else
                    vt_17 = vt_20(vt_12.Shared.Modules.Game, "SignalBankClient")
                end
                vt_25 = (vt_25 + 23) % 72
            end
        elseif vt_22_1 <= 13 then
            if (vt_25 or vt_25 or (nB or not vt_25)) and (not ns or not vt_25 or ns and vt_25) and (nB and not vt_25 and (ns or not nB) or (nB or not vt_25) and (not nB or not nB)) and ((nB or vt_25 or not nB and vt_25 or (not nB and vt_25 or nB and nB)) and ((nB or nB or (vt_25 or not ns)) and (vt_25 or not ns or nB and not vt_25))) or not ((vt_25 or vt_25 or (nB or not vt_25)) and (not ns or not vt_25 or ns and vt_25) and (nB and not vt_25 and (ns or not nB) or (nB or not vt_25) and (not nB or not nB)) and ((nB or vt_25 or not nB and vt_25 or (not nB and vt_25 or nB and nB)) and ((nB or nB or (vt_25 or not ns)) and (vt_25 or not ns or nB and not vt_25)))) then
                vt_9 = vt_17(vt_7, "UpgradeData")
            else
                vt_7 = vt_9(vt_17, "UpgradeData")
            end
            vt_25 = (vt_25 + 23) % 72
        else
            local v7 = bit32.rrotate(bit32.bxor(bit32.lrotate(vt_25, 9), string.byte(tostring(vt_14))), 28)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(v7, 1623413311), 1041832079), (bit32.bxor(bit32.band(v7, 2671553984), 2304367120))), 1041832079), 2304367120) ~= v7 then
                vt_7 = mR(vt_17, "WeaponData")
            else
                mR = vt_17(vt_7, "WeaponData")
            end
            vt_25 = (vt_25 + 23) % 72
        end
    elseif vt_22_1 <= 16 then
        if vt_22_1 <= 15 then
            if vt_25 * 104681669 + 4 + 1 <= vt_25 * 104681669 + 4 + 1 + 5 then
                mO = vt_17(vt_7, "ChestData")
            else
                vt_7 = mO(vt_17, "ChestData")
            end
            vt_25 = (vt_25 + 59) % 72
        else
            local ww = bit32.rrotate(bit32.bxor(bit32.lrotate(vt_25, 4), string.byte(tostring(mJ))), 11)
            if bit32.bxor(bit32.lrotate(bit32.bxor(ww, 1494878882), 6), 1182967958) == bit32.lrotate(ww, 6) then
                mJ = vt_17(vt_7, "SkillTreeData")
            else
                vt_7 = mJ(vt_17, "SkillTreeData")
            end
            vt_25 = (vt_25 + 5) % 72
        end
    elseif vt_22_1 <= 17 then
        if ((not nk or not nk) and (nB or not UserInputService) and (not vt_20 or vt_14 or not nB and nB) or ((vt_14 or vt_14) and (UserInputService or not UserInputService) or vt_20 and not vt_20 and (not UserInputService or not nB))) and not ((not nk or not nk) and (nB or not UserInputService) and (not vt_20 or vt_14 or not nB and nB) or ((vt_14 or vt_14) and (UserInputService or not UserInputService) or vt_20 and not vt_20 and (not UserInputService or not nB))) then
            vt_17 = vt_7(mF, "QuestData")
        else
            mF = vt_17(vt_7, "QuestData")
        end
        vt_25 = (vt_25 + 41) % 72
    else
        local vt_22_2 = (vector.create((vt_25 * 1 + 9) % 11 + 1, (vt_25 * 6 + 11) % 13 + 1, (vt_25 * 15 + 14) % 17 + 1))
        vt_5 = (vector.create((vt_25 * 1 + 5) % 11 + 1, (vt_25 * 7 + 5) % 13 + 1, (vt_25 * 15 + 11) % 17 + 1))
        vt_15 = (vector.create((vt_25 * 4 + 4) % 5 + 1, (vt_25 * 2 + 6) % 7 + 1, (vt_25 * 1 + 7) % 9 + 1))
        if math.abs((vector.angle(vt_22_2, vt_5, vt_15))) - math.abs((vector.angle(vt_5, vt_22_2, vt_15))) == 4 then
            vt_7 = mB(vt_17, "WaveData")
        else
            mB = vt_17(vt_7, "WaveData")
        end
        vt_25 = (vt_25 + 23) % 72
    end
until (vt_25 * 59 + 20) % 72 == 2
if vt_1 then
    vt_1 = nF:FindFirstChild("leifstout_networker@0.3.1")
end
nF = vt_1
vt_14 = nF
if vt_14 then
    vt_25 = 6
    repeat
        local wB = bit32.rrotate(bit32.bxor(bit32.lrotate(vt_25, 6), string.byte(tostring(vt_25))), 29)
        if bit32.bxor(bit32.lrotate(bit32.bxor(wB, 877345641), 30), 1293078234) == bit32.lrotate(wB, 30) then
            vt_14 = nF.networker:FindFirstChild("_remotes")
        else
            nF = vt_14.networker:FindFirstChild("_remotes")
        end
        vt_25 = (vt_25 + 6) % 8
    until (vt_25 * 5 + 1) % 8 == 5
end
nF = vt_14
nz = function(H, I, ...)
    local o8 = nF and nF:FindFirstChild(H)
    if o8 then
        o8.RemoteEvent:FireServer(I, ...)
    end
end
ne = function(M, N, ...)
    local pb
    pb = nil
    local pd_1
    local pc = nF and nF:FindFirstChild(M)
    local pc_1
    pb = pc
    if not pb then
        return nil
    end
    pc_1, pd_1 = pcall(function(...)
        return pb.RemoteFunction:InvokeServer(N, ...)
    end, ...)
    local pc_2 = pc_1 and pd_1
    local pl = if pc_2 then 1 else 0
    local pj = 1809 * pl + 2788 * (1 - pl)
    local pk = 2441 * pl + 1604 * (1 - pl)
    if not ((pj * 3988 + pk * 3355 + pj * pk) % 16777213 == 3042403) then
        pc_2 = nil
    end
    return pc_2
end
if getgenv().OuroborosFinalSwarmUnload then
    vt_14 = 0
    repeat
        vt_25 = (vector.create((vt_14 * 6 + 3) % 11 + 1, (vt_14 * 1 + 10) % 13 + 1, (vt_14 * 9 + 15) % 17 + 1))
        vt_7 = (vector.create((vt_14 * 4 + 2) % 11 + 1, (vt_14 * 11 + 10) % 13 + 1, (vt_14 * 11 + 8) % 17 + 1))
        vt_17 = (vector.create((vt_14 * 5 + 1) % 11 + 1, (vt_14 * 4 + 3) % 13 + 1, (vt_14 * 9 + 8) % 17 + 1))
        vt_1 = (vector.create((vt_14 * 3 + 9) % 11 + 1, (vt_14 * 10 + 7) % 13 + 1, (vt_14 * 9 + 10) % 17 + 1))
        if vector.dot(vector.cross(vt_25, vt_7), (vector.cross(vt_17, vt_1))) == vector.dot(vt_25, vt_17) * vector.dot(vt_7, vt_1) - vector.dot(vt_25, vt_1) * vector.dot(vt_7, vt_17) + 5 then
            pcall(getgenv().OuroborosFinalSwarmUnload)
        else
            pcall(getgenv().OuroborosFinalSwarmUnload)
        end
        vt_14 = (vt_14 + 0) % 4
    until (vt_14 * 1 + 0) % 4 == 0
end
mL, mG, mC, vt_7 = nil, nil, nil, nil
vt_1 = "Final Swarm"
mL = "https://discord.gg/ehKVq7pf7v"
mG = "https://rscripts.net/@Ouroboros"
mC = { Common = 1, Rare = 2, Epic = 3, Legendary = 4 }
vt_17 = {}
if (false or mC) and (false or (vt_17 or mG) or (false or vt_17 or 11)) or (false or (not mC and false or not mC and mC) and (mC and "https://discord.gg/ehKVq7pf7v")) or not ((false or mC) and (false or (vt_17 or mG) or (false or vt_17 or 11)) or (false or (not mC and false or not mC and mC) and (mC and "https://discord.gg/ehKVq7pf7v"))) then
    vt_7 = {}
else
    mC = {}
end
for k, v in pairs(mR) do
    vt_14 = typeof(v) == "table" and not v.isLocked
    if vt_14 then
        table.insert(vt_7, k)
        table.insert(vt_17, k)
    end
end
for k, v in pairs(vt_9) do
    vt_14 = typeof(v) == "table" and v.Rarity
    if vt_14 then
        table.insert(vt_17, k)
    end
end
table.sort(vt_17)
table.sort(vt_7)
if #vt_17 == 0 then
    vt_17 = { "None" }
end
vt_7 = { "double", "freeze", "heart", "keys", "magnet", "shield", "xp" }
vt_25 = vt_20.Assets:FindFirstChild("Collectables")
if vt_25 then
    vt_7 = {}
    for i, child in vt_25:GetChildren() do
        table.insert(vt_7, child.Name)
    end
    table.sort(vt_7)
end
vt_25 = nil
vt_14 = 1
repeat
    if (vt_14 and not vt_14 or vt_14 and vt_25) and (vt_25 or not vt_14 or (not vt_25 or not vt_25)) and not ((vt_14 and not vt_14 or vt_14 and vt_25) and (vt_25 or not vt_14 or (not vt_25 or not vt_25))) then
        vt_25 = { "All", "Chests", "Pots" }
    else
        vt_25 = { "All", "Chests", "Pots" }
    end
    vt_14 = (vt_14 + 0) % 4
until (vt_14 * 3 + 0) % 4 == 3
for k, v in vt_7 do
    if not v:match("Chest$") then
        table.insert(vt_25, v)
    end
end
vt_14 = {}
for k, v in pairs(mB) do
    vt_7 = typeof(v) == "table" and v.number
    if vt_7 then
        table.insert(vt_14, k)
    end
end
vt_7 = 4
repeat
    vt_9 = {
        "hch",
        "sdrccz",
        "nmadxpnf",
        "svmfjolxukd",
        "bni",
        "fzlcceojavbk",
        "zbptzxc",
        "zjtaygdm",
        "zrtblsv",
        "xlngtecahto",
        "hbog",
        "uwepqhsrnrbf",
        "mmig",
        "mvkmigrn",
        "ceptmjthcf",
        "pqsh"
    }
    if vt_9[(vt_7 * 46 + 66) % 16 + 1] < vt_9[(vt_7 * 46 + 66) % 16 + 1] then
        table.sort(vt_14, fn234)
    else
        table.sort(vt_14, fn234)
    end
    vt_7 = (vt_7 + 7) % 8
until (vt_7 * 3 + 5) % 8 == 6
if #vt_14 == 0 then
    vt_14 = { "Grasslands" }
end
mM = {}
for k in pairs(mO) do
    table.insert(mM, k)
end
table.sort(mM, fn298)
vt_9 = {}
for k in pairs(mJ) do
    table.insert(vt_9, k)
end
table.sort(vt_9)
if #vt_9 == 0 then
    vt_9 = { "None" }
end
Library, Toggles, Options, m7, nC, nu, m9, mW, mP, mz, m4 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
nC = fn220
nu = fn458
m9 = fn322
mW = fn938
mP = fn1044
mz = fn445
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
nW = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
nV = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
vt_7 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = mL, Copyable = true }, "|", vt_1 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
vt_15 = {
    Info = vt_7:AddTab("Info", "info"),
    Lobby = vt_7:AddTab("Lobby", "house"),
    Gamemode = vt_7:AddTab("Gamemode", "gamepad-2"),
    Settings = vt_7:AddTab("Settings", "settings")
}
if ((vt_7 or vt_7) and (not nu and vt_7) and (not vt_7 or nu or Options and not Options) or (not nu or Options or (not Options or not Options)) and (not Options and Options or vt_7 and Options) or (vt_7 or nu or not vt_7 and not Options or (not nu and not nu or (Options or not Options))) and ((not Options or Options) and (not Options or not Options) and ((not Options or Options) and (vt_7 or nu)))) and not ((vt_7 or vt_7) and (not nu and vt_7) and (not vt_7 or nu or Options and not Options) or (not nu or Options or (not Options or not Options)) and (not Options and Options or vt_7 and Options) or (vt_7 or nu or not vt_7 and not Options or (not nu and not nu or (Options or not Options))) and ((not Options or Options) and (not Options or not Options) and ((not Options or Options) and (vt_7 or nu)))) then
    m4 = "Join the Discord to suggest features for this script"
    m7 = fn595
else
    m7 = "Join the Discord to suggest features for this script"
    m4 = fn595
end
vt_5 = fn202
for k, v in vt_15 do
    vt_5(v)
end
vt_22_3, n_, nb, nZ, m5, vt_20, nY, Label, mN, nX, nG, nA = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
vt_7 = 14
repeat
    vt_5 = (vt_7 * 5 + 6) % 8 + 1
    if vt_5 <= 4 then
        if vt_5 <= 2 then
            if vt_5 <= 1 then
                if vt_7 * 80642007 + 13 + 1 >= vt_7 * 80642007 + 13 + 1 + 2 then
                    nZ = "#e8a34d"
                else
                    nb = "#e8a34d"
                end
                vt_7 = (vt_7 + 5) % 32
            else
                local wQ = bit32.rrotate(bit32.bxor(bit32.lrotate(vt_7, 6), string.byte(tostring(nG))), 21)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(wQ, 2899969823), 2314765128), (bit32.bxor(bit32.band(wQ, 1394997472), 2298333209))), 2314765128), 2298333209) == wQ then
                    nZ = "#8b93a3"
                    m5 = "Unknown"
                    pcall(fn100)
                    vt_20 = vt_15.Info:AddLeftGroupbox("Account", "circle-user")
                    vt_20:AddLabel(nA("User", ns.Name, vt_22_3), true)
                    vt_20:AddLabel(nA("Status", "Keyless", vt_22_3), true)
                    vt_20:AddLabel(nA("Executor", m5, vt_22_3), true)
                    nY = vt_15.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                    nY:AddLabel(nG(vt_1 .. " [" .. tostring(game.PlaceId) .. "]", n_), true)
                    nY:AddLabel(nA("Place ID", tostring(game.PlaceId), n_), true)
                    Label = nY:AddLabel(nA("Session time", "0s", nb), true)
                else
                    m5 = "#8b93a3"
                    nA = "Unknown"
                    pcall(fn100)
                    ns = nY.Info:AddLeftGroupbox("Account", "circle-user")
                    ns:AddLabel(nb("User", nil, n_), true)
                    ns:AddLabel(nb("Status", "Keyless", n_), true)
                    ns:AddLabel(nb("Executor", nA, n_), true)
                    vt_22_3 = nY.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                    vt_22_3:AddLabel(Label(vt_15 .. " [" .. tostring(game.PlaceId) .. "]", vt_20), true)
                    vt_22_3:AddLabel(nb("Place ID", tostring(game.PlaceId), vt_20), true)
                    nZ = vt_22_3:AddLabel(nb("Session time", "0s", nG), true)
                end
                vt_7 = (vt_7 + 21) % 32
            end
        elseif vt_5 <= 3 then
            if (vt_7 * 2 + 7) * 16 % 3 == ((vt_7 * 2 + 7) * 16 + 3) % 3 then
                mN = tostring(game.JobId)
            else
                vt_20 = tostring(game.JobId)
            end
            vt_7 = (vt_7 + 5) % 32
        else
            local wj = bit32.rrotate(bit32.bxor(bit32.lrotate(vt_7, 4), string.byte(tostring(Label))), 2)
            if bit32.bxor(bit32.lrotate(bit32.bxor(wj, 524173973), 2), 2096695892) ~= bit32.lrotate(wj, 2) then
                mN = #nX > 18
            else
                nX = #mN > 18
            end
            vt_7 = (vt_7 + 13) % 32
        end
    elseif vt_5 <= 6 then
        if vt_5 <= 5 then
            if (vt_7 * 2 + 6) * 10 % 3 == ((vt_7 * 2 + 6) * 10 + 2) % 3 then
                nX = fn78
            else
                nG = fn78
            end
            vt_7 = (vt_7 + 5) % 32
        else
            if vt_7 * 85063813 + 9 + 5 <= vt_7 * 85063813 + 9 + 5 + 1 then
                nA = fn141
            else
                nb = fn141
            end
            vt_7 = (vt_7 + 5) % 32
        end
    elseif vt_5 <= 7 then
        if vt_7 * 50756325 + 11 + 6 >= vt_7 * 50756325 + 11 + 6 + 4 then
            nY = "#7fd47f"
        else
            vt_22_3 = "#7fd47f"
        end
        vt_7 = (vt_7 + 29) % 32
    else
        vt_5 = {
            "vawrgfsklm",
            "ttmi",
            "nwekdsvb",
            "ydjnzbha",
            "qetkclkxjgh",
            "hak",
            "dklhjipzqryv",
            "imktydvkzfrh",
            "mpflfsil",
            "dryane",
            "jitt"
        }
        if vt_5[(vt_7 * 63 + 58) % 11 + 1] < vt_5[(vt_7 * 63 + 58) % 11 + 1] then
            nZ = "#6ec1ff"
        else
            n_ = "#6ec1ff"
        end
        vt_7 = (vt_7 + 5) % 32
    end
until (vt_7 * 31 + 10) % 32 == 4
if nX then
    vt_7 = 0
    repeat
        local we = bit32.rrotate(bit32.bxor(bit32.lrotate(vt_7, 31), string.byte(tostring(vt_7))), 30)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(we, 4214845259), 2631902467), (bit32.bxor(bit32.band(we, 80122036), 2193147454))), 2631902467), 2193147454) == we then
            nX = string.sub(mN, 1, 18) .. "..."
        else
            mN = string.sub(nX, 1, 18) .. "..."
        end
        vt_7 = (vt_7 + 3) % 4
    until (vt_7 * 3 + 3) % 4 == 0
end
vt_7 = nX or mN
nl, Label2, Label3, m3, m1, m0, mY, mU, connection, nq, nn, nh, nf, na, connection2, mV, mx, ng, m_, mS, mA, mX, nj, mv, mT, mH, nm, m2, m6, nc, mK, my, nt = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
vt_5 = vt_7
nY:AddLabel(nA("Server", vt_5, nZ), true)
nY:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
local ScriptsGroup = vt_15.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(nG("Included in this hub", nZ), true)
ScriptsGroup:AddLabel(nG(vt_1, n_), true)
local FeaturesGroup = vt_15.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(nG("Lobby Automation", n_), true)
FeaturesGroup:AddLabel(nG("Match Automation", nb), true)
FeaturesGroup:AddLabel(nG("Round Automation", nZ), true)
local SocialsGroup = vt_15.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = m4 })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = vt_15.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = m4 })
local FaqGroup = vt_15.Info:AddRightGroupbox("FAQ", "circle-help")
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
nl = os.clock()
task.spawn(worker)
local AutoPlayGroup = vt_15.Lobby:AddLeftGroupbox("Auto Play", "swords")
AutoPlayGroup:AddToggle("AutoPlay", { Text = "Auto Play", Default = false })
AutoPlayGroup:AddDropdown("PlayWorld", { Values = vt_14, Default = vt_14[1], Multi = false, Text = "World" })
AutoPlayGroup:AddDropdown("PlayDifficulty", {
    Values = { "Normal", "Hard", "Nightmare" },
    Default = "Normal",
    Multi = false,
    Text = "Difficulty"
})
AutoPlayGroup:AddDropdown("PlayerLimit", { Values = { "1", "2", "3", "4" }, Default = "1", Multi = false, Text = "Player Limit" })
AutoPlayGroup:AddToggle("FriendsOnly", { Text = "Friends Only", Default = false })
AutoPlayGroup:AddSlider("PlayRetry", { Text = "Retry Delay", Default = 10, Min = 3, Max = 60, Rounding = 0, Suffix = "s" })
mV = fn871
AutoPlayGroup:AddButton({ Text = "Start Now", Func = onStartNow })
nX = vt_15.Lobby:AddLeftGroupbox("Chests", "package")
nX:AddToggle("AutoLobbyChests", { Text = "Auto Open Chests", Default = false })
nX:AddDropdown("ChestTypes", { Values = mM, Default = {}, Multi = true, Text = "Chests" })
nX:AddToggle("ChestBuy", { Text = "Buy With Keys", Default = false })
nX:AddSlider("ChestBatch", { Text = "Open Per Cycle", Default = 1, Min = 1, Max = 10, Rounding = 0 })
nX:AddInput("ChestKeyReserve", { Text = "Keep Keys", Default = "0", Numeric = true, Finished = true })
nX:AddSlider("ChestDelay", { Text = "Cycle Delay", Default = 3, Min = 1, Max = 30, Rounding = 0, Suffix = "s" })
local vt_22_4 = vt_15.Lobby:AddLeftGroupbox("Quests", "scroll-text")
vt_22_4:AddToggle("AutoQuests", { Text = "Auto Claim Quests", Default = false })
vt_22_4:AddToggle("QuestDaily", { Text = "Daily", Default = true })
vt_22_4:AddToggle("QuestAchievements", { Text = "Achievements", Default = true })
vt_22_4:AddSlider("QuestDelay", { Text = "Cycle Delay", Default = 15, Min = 5, Max = 120, Rounding = 0, Suffix = "s" })
vt_20 = vt_15.Lobby:AddRightGroupbox("Skill Tree", "git-branch")
vt_20:AddToggle("AutoSkills", { Text = "Auto Buy Skill Nodes", Default = false })
vt_20:AddDropdown("SkillMode", {
    Values = { "Most Expensive", "Cheapest", "Priority List" },
    Default = "Most Expensive",
    Multi = false,
    Text = "Buy Order"
})
vt_20:AddDropdown("SkillPick", { Values = vt_9, Default = vt_9[1], Multi = false, Text = "Node" })
vt_20:AddInput("SkillPriority", { Text = "Priority Order", Default = "", Placeholder = "Damage1, MaxHealth1, ...", Finished = true })
Label2 = vt_20:AddLabel("Priority: empty", true)
Options.SkillPriority:OnChanged(fn504)
vt_20:AddButton({ Text = "Add To Priority", Func = onAddToPriority })
vt_20:AddButton({ Text = "Clear Priority", Func = onClearPriority })
fn504()
vt_20:AddInput("SkillKeyReserve", { Text = "Keep Keys", Default = "0", Numeric = true, Finished = true })
local GearGroup = vt_15.Lobby:AddRightGroupbox("Gear", "shield")
GearGroup:AddToggle("AutoEquip", { Text = "Auto Equip Available Gear", Default = false })
GearGroup:AddSlider("EquipDelay", { Text = "Cycle Delay", Default = 10, Min = 3, Max = 60, Rounding = 0, Suffix = "s" })
local CollectGroup = vt_15.Gamemode:AddLeftGroupbox("Collect", "sparkles")
CollectGroup:AddToggle("AutoCollect", { Text = "Auto Collect", Default = false })
CollectGroup:AddDropdown("CollectTypes", { Values = vt_25, Default = { "xp", "keys" }, Multi = true, Text = "Pickups" })
CollectGroup:AddSlider("CollectRadius", { Text = "Search Radius", Default = 120, Min = 20, Max = 400, Rounding = 0, Suffix = " studs" })
CollectGroup:AddSlider("CollectSpeed", { Text = "Travel Speed", Default = 60, Min = 16, Max = 250, Rounding = 0 })
CollectGroup:AddToggle("CollectInstant", { Text = "Instant Teleport", Default = false })
local FarmGroup = vt_15.Gamemode:AddRightGroupbox("Farm", "swords")
FarmGroup:AddToggle("AutoFarm", { Text = "Auto Farm", Default = false })
FarmGroup:AddDropdown("FarmMethod", { Values = { "Below", "Orbit", "Above" }, Default = "Above", Multi = false, Text = "Farm Method" })
FarmGroup:AddSlider("FarmOffset", { Text = "Offset", Default = 18, Min = 5, Max = 60, Rounding = 0, Suffix = " studs" })
FarmGroup:AddSlider("FarmSearch", { Text = "Enemy Search", Default = 90, Min = 20, Max = 300, Rounding = 0, Suffix = " studs" })
FarmGroup:AddSlider("FarmSpeed", { Text = "Tween Speed", Default = 24, Min = 8, Max = 60, Rounding = 0 })
local RoundGroup = vt_15.Gamemode:AddLeftGroupbox("Round", "rotate-cw")
RoundGroup:AddToggle("AutoSkipFinalWave", { Text = "Auto Skip Waves", Default = false })
RoundGroup:AddToggle("EnableAutoSkipOnce", { Text = "Enable Auto Skip Once", Default = false })
RoundGroup:AddToggle("AutoPlayAgain", { Text = "Auto Play Again", Default = false })
RoundGroup:AddToggle("AutoGiveUp", { Text = "Auto Give Up When Dead", Default = false })
local SurvivalGroup = vt_15.Gamemode:AddRightGroupbox("Survival", "shield")
SurvivalGroup:AddToggle("AutoRetreat", { Text = "Retreat At Low HP", Default = false })
SurvivalGroup:AddSlider("RetreatHealth", { Text = "Retreat At", Default = 35, Min = 5, Max = 95, Rounding = 0, Suffix = "%" })
SurvivalGroup:AddSlider("RetreatResume", { Text = "Resume At", Default = 70, Min = 10, Max = 100, Rounding = 0, Suffix = "%" })
local AutoCardGroup = vt_15.Gamemode:AddLeftGroupbox("Auto Card", "wand-sparkles")
AutoCardGroup:AddToggle("AutoCard", { Text = "Auto Pick Priority", Default = false })
AutoCardGroup:AddToggle("AutoCardRandom", { Text = "Auto Pick Random", Default = false })
AutoCardGroup:AddSlider("CardDelay", { Text = "Pick Delay", Default = 1.5, Min = 0.2, Max = 10, Rounding = 1, Suffix = "s" })
AutoCardGroup:AddDropdown("CardFallback", {
    Values = { "Highest Rarity", "Lowest Rarity", "First Card" },
    Default = "Highest Rarity",
    Multi = false,
    Text = "Fallback"
})
AutoCardGroup:AddToggle("PreferWeapons", { Text = "Prefer New Weapons", Default = false })
AutoCardGroup:AddDropdown("CardBlacklist", { Values = vt_17, Default = {}, Multi = true, Text = "Never Pick" })
local PriorityGroup = vt_15.Gamemode:AddRightGroupbox("Priority", "list-ordered")
PriorityGroup:AddDropdown("PriorityPick", { Values = vt_17, Default = vt_17[1], Multi = false, Text = "Card" })
PriorityGroup:AddInput("PriorityList", {
    Text = "Priority Order",
    Default = "",
    Placeholder = "Multishot, Damage Legendary, ...",
    Finished = true
})
Label3 = PriorityGroup:AddLabel("Priority: empty", true)
mx = fn132
Options.PriorityList:OnChanged(fn63)
PriorityGroup:AddButton({ Text = "Add To Priority", Func = onAddToPriority2 })
PriorityGroup:AddButton({ Text = "Remove From Priority", Func = onRemoveFromPriority })
PriorityGroup:AddButton({ Text = "Move Up", Func = onMoveUp })
PriorityGroup:AddButton({ Text = "Clear Priority", Func = onClearPriority2 })
fn63()
ng = fn122
if nf and not nm and (not nf or not nm) and (nf or not nf or (not nf or not CollectGroup)) and not (nf and not nm and (not nf or not nm) and (nf or not nf or (not nf or not CollectGroup))) then
    mX = fn821
    m_ = fn852
    mS = fn952
    mA = fn353
else
    m_ = fn821
    mS = fn852
    mA = fn952
    mX = fn353
end
nj = fn605
mv = fn762
m3 = 0
m1 = false
m0 = nil
mY = nil
mU = nil
mT = fn716
mH = fn842
nm = fn535
m2 = fn977
connection = vt_3.Heartbeat:Connect(onHeartbeat)
nq = 0
nn = 0
nh = 0
nf = 0
na = false
m6 = fn95
task.spawn(autoSkipFinalWaveLoop)
nc = function(gw)
    local sY = {}
    for k in pairs(gw) do
        table.insert(sY, k)
    end
    table.sort(sY, function(gz, gA)
        return gw[gz][3] < gw[gA][3]
    end)
    local sZ = {}
    for i, v in ipairs(sY) do
        table.insert(sZ, { key = v, index = i, rarity = gw[v][1], isWeapon = mR[v] ~= nil })
    end
    return sZ
end
mK = fn450
my = fn42
nt = fn357
connection2 = nil
if np and vt_12.LEVEL_UP then
    connection2 = vt_12.LEVEL_UP:Connect(function(hw)
        local t0 = Toggles.AutoCard.Value or Toggles.AutoCardRandom.Value
        local t0_1
        if not t0 then
            return
        end
        if not hw then
            return
        end
        local t1 = hw[1] == nil and next(hw) ~= nil
        if t1 then
            t0_1 = { hw }
        else
            t0_1 = hw
        end
        local t1_1 = t0_1
        task.spawn(nt, t1_1)
    end)
end
nd, m8, connection3, connection4, nr, mZ = nil, nil, nil, nil, nil, nil
task.spawn(autoPlayLoop)
task.spawn(autoLobbyChestsLoop)
nr = fn333
task.spawn(autoSkillsLoop)
task.spawn(autoQuestsLoop)
task.spawn(autoEquipLoop)
nd = tick()
m8 = tick()
pcall(function()
    for i, v in ipairs(getconnections(ns.Idled)) do
        local vb = v
        pcall(function()
            vb:Disable()
        end)
    end
end)
mZ = fn76
connection3 = UserInputService.InputBegan:Connect(onInputBegan)
connection4 = UserInputService.InputChanged:Connect(onInputChanged)
vt_25 = vt_15.Settings:AddLeftGroupbox("Menu", "menu")
vt_25:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
vt_25:AddButton("Unload", onUnload)
vt_25:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
task.spawn(antiAfkLoop)
getgenv().OuroborosFinalSwarmUnload = fn925
Library:OnUnload(fn212)
nW:SetLibrary(Library)
nV:SetLibrary(Library)
nW:SetFolder("OuroborosHub")
nV:SetFolder("OuroborosHub/final-swarm")
nV:IgnoreThemeSettings()
nV:SetIgnoreIndexes({ "MenuKeybind" })
nW:SaveDefault("Monochrome")
nW:ApplyToTab(vt_15.Settings)
nW:LoadDefault()
nV:BuildConfigSection(vt_15.Settings)
nV:LoadAutoloadConfig()
