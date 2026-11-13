local fns = {}
local uz_1, uz_2, uz_7, uz_9, uz_10, uz_11, uz_13, uz_18, uz_21, uz_22, uz_23, uz_25, uz_29, uz_32
local ItemConfigurations
local mL
local CurrentCamera2
local m9
local l9
local mR
local my
local nf
local mf
local mX
local lX
local ml
local m2
local mK
local m8
local mQ
local mx
local SaveManager
local Library
local mD
local mk
local m1
local l1
local mJ
local mq
local m7
local l7
local mP
local mw
local nd
local md
local mV
local lV
local mC
local mj
local m0
local l0
local RequestBaseUpgrade
local connection2
local l6
local mO
local mv
local nc
local mc
local mU
local mB
local m_
local connection
local mH
local mo
local m5
local l5
local LocalPlayer
local mu
local nb
local mA
local nh
local mh
local mZ
local lZ
local mG
local mn
local Options
local mM
local mt
local Toggles
local Label
local mS
local mz
local ng
local mg
local lY
local mF
local mm
local m3
function fns.onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local sV_1 = l6()
        if sV_1 then
            sV_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            mv(true)
        end
    end
end
function fns.fn20()
    local oS_1
    local attr = LocalPlayer:GetAttribute("MoneyNumber")
    local oR_1
    if typeof(attr) == "number" then
        return attr
    end
    oR_1, oS_1 = pcall(function()
        return l9:InvokeServer()
    end)
    local oT = oR_1 and type(oS_1) == "table" and type(oS_1.Data) == "table"
    if oT then
        local oR_2 = tonumber(oS_1.Data.Money) or 0
        return oR_2
    end
    return 0
end
function fns.onCopyEthereumAddress()
    m0(ng, "Copied Ethereum address")
end
function fns.fn46()
    if not Toggles.WalkSpeedEnabled.Value then
        local s8 = l6()
        if s8 then
            s8.WalkSpeed = 16
        end
    end
end
function fns.fn93()
    local Character = LocalPlayer.Character
    local ph = Character and Character:FindFirstChild("Gripped")
    if not ph then
        return nil
    end
    return ph:FindFirstChild("SpawnedItem")
end
function fns.fn104(fu)
    local DiscordGroup = fu:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = mP })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = mP })
end
function fns.onInputBegan()
    mF = tick()
end
function fns.onCopyJoinScript_JobID()
    local sD = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, l7)
    if setclipboard then
        setclipboard(sD)
    elseif toclipboard then
        toclipboard(sD)
    end
    Library:Notify("Copied join script to clipboard")
end
function fns.worker5()
    while not Library.Unloaded do
        task.wait(2)
        if mA("AntiAfk") then
            local ur = tick() - mF
            local us = tick() - my
            if ur >= 300 and us >= 60 then
                pcall(mk)
            else
                if ur < 300 and us >= 300 then
                    pcall(mk)
                end
            end
        end
    end
end
function fns.fn168()
    return mR:FindFirstChild("Plot_" .. LocalPlayer.Name)
end
function fns.onCopySolanaAddress()
    m0(nb, "Copied Solana address")
end
function fns.fn185(d_, d0, d1)
    local rl = d1[d_]
    if type(rl) ~= "table" then
        return nil
    end
    local rm = rl[d0]
    local rl_1 = type(rm) ~= "table" or type(rm.Item) ~= "table"
    if rl_1 then
        return nil
    end
    local Item = rm.Item
    local Name = Item.Name
    local ro = Item.Rarity or "Common"
    local ro_1 = Item.Mutation or "Normal"
    if not Name then
        return nil
    end
    local ro_2 = mh(Name, ro, ro_1)
    local rq = tonumber(rm.Level) or 1
    return { name = Name, rarity = ro, mutation = ro_1, score = ro_2, level = rq }
end
function fns.fn190()
    local ItemSpawners = mR:FindFirstChild("ItemSpawners")
    if not ItemSpawners then
        return {}
    end
    local qg = mm()
    local qg_1 = qg and qg.Position
    local qq = if qg_1 then 1 else 0
    local qo = 1668 * qq + 1417 * (1 - qq)
    local qp = 1148 * qq + 3602 * (1 - qq)
    if not ((qo * 1796 + qp * 3782 + qo * qp) % 16777213 == 9252328) then
        qg_1 = Vector3.zero
    end
    local qh_1 = {}
    local qi = qg_1
    for i, descendant in ipairs(ItemSpawners:GetDescendants()) do
        local qf_1 = descendant:IsA("Model") and descendant:GetAttribute("IsSpawnedItem") == true
        if qf_1 then
            local qg_2 = nil
            local Parent = nil
            for i, descendant in ipairs(descendant:GetDescendants()) do
                local qj_1 = descendant:IsA("ProximityPrompt") and descendant.ActionText == "Pick Up" and descendant.Enabled
                if qj_1 then
                    qg_2 = descendant
                    Parent = descendant.Parent
                    break
                end
            end
            local qj_2 = qg_2 and Parent and Parent:IsA("BasePart")
            if qj_2 then
                local qj_3 = descendant:GetAttribute("OriginalName") or qg_2.ObjectText or descendant.Name
                local qj_4 = descendant:GetAttribute("Rarity") or "Common"
                local qj_5 = descendant:GetAttribute("Mutation") or "Normal"
                qh_1[#qh_1 + 1] = {
                    model = descendant,
                    prompt = qg_2,
                    part = Parent,
                    name = qj_3,
                    rarity = qj_4,
                    mutation = qj_5,
                    distance = (Parent.Position - qi).Magnitude,
                    score = mh(qj_3, qj_4, qj_5)
                }
            end
        end
    end
    return qh_1
end
function fns.worker()
    local sG_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local sF = math.floor(os.clock() - nd)
        if sF < 60 then
            sG_1 = sF .. "s"
        elseif sF < 3600 then
            sG_1 = string.format("%dm %ds", sF // 60, sF % 60)
        else
            sG_1 = string.format("%dh %dm", sF // 3600, sF % 3600 // 60)
        end
        Label:SetText(mt("Session time", sG_1, l5))
    end
end
function fns.fn232(bg)
    local oN = mm()
    if not oN or not bg then
        return false
    elseif firetouchinterest then
        pcall(firetouchinterest, oN, bg, 0)
        task.wait(0.05)
        pcall(firetouchinterest, oN, bg, 1)
        return true
    else
        oN.CFrame = CFrame.new(bg.Position + Vector3.new(0, 3, 0))
        return true
    end
end
function fns.fn235(cv, cw)
    local pV = Options[cw] and Options[cw].Value
    if type(pV) ~= "table" then
        return true
    end
    local pV_1 = false
    for k, v in pairs(pV) do
        if v then
            pV_1 = true
            break
        end
    end
    if not pV_1 then
        return true
    end
    return pV[cv] == true
end
function fns.fn247()
    local Character = LocalPlayer.Character
    local oC = Character and Character:FindFirstChildOfClass("Humanoid")
    return oC
end
function fns.fn252()
    local sz_1
    local sy_1
    if identifyexecutor then
        sz_1, sy_1 = identifyexecutor()
        local sA = sz_1 ~= ""
        local sB = type(sz_1) == "string" and sA
        if sB then
            local sA_1 = type(sy_1) == "string" and sy_1 ~= "" and sz_1 .. " " .. sy_1
            mw = sA_1 or sz_1
        end
    end
end
function fns.onRscripts()
    if setclipboard then
        setclipboard(mD)
    elseif toclipboard then
        toclipboard(mD)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
function fns.fn275(bN)
    local CollectionZones = mR:FindFirstChild("CollectionZones")
    local o7 = not CollectionZones or typeof(bN) ~= "Vector3"
    if o7 then
        return false
    end
    for i, child in ipairs(CollectionZones:GetChildren()) do
        if child:IsA("BasePart") then
            local Position = child.Position
            local o7_1 = child.Size * 0.5
            if bN.X >= Position.X - o7_1.X and bN.X <= Position.X + o7_1.X and bN.Y >= Position.Y - o7_1.Y and bN.Y <= Position.Y + o7_1.Y and bN.Z >= Position.Z - o7_1.Z and bN.Z <= Position.Z + o7_1.Z then
                return true
            end
        end
    end
    return false
end
local function fn278(b1)
    return b1 and b1.Name == "Basic Bat"
end
local function fn283()
    pcall(function()
        RequestBaseUpgrade:FireServer()
    end)
end
local function onInputChanged(hl)
    local UserInputType = hl.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        mF = tick()
    end
end
local function fn330(bs)
    local oV = l1[bs]
    return oV and oV.Index or 0
end
local function onCopyLitecoinAddress()
    m0(l0, "Copied Litecoin address")
end
local function fn392(aq, ar, as)
    return string.format("<b>%s</b> %s %s", aq, mG("-", "#5a6070"), mG(ar, as))
end
local function fn408()
    local tD = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local tE = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if tE then
                local tE_1 = mu(k, v)
                if tE_1 then
                    tD[#tD + 1] = tE_1
                end
            end
        end
    end
    table.sort(tD, function(hP, hQ)
        if hP.type ~= hQ.type then
            return hP.type < hQ.type
        end
        return hP.idx < hQ.idx
    end)
    return { objects = tD }
end
local function onImportConfigFromClipboardTex()
    local t8_1
    local t6 = Options.SaveManager_ImportSource.Value
    local t6_1
    local uc = if t6 then 1 else 0
    local ua = 1534 * uc + 2782 * (1 - uc)
    local ub = 4075 * uc + 737 * (1 - uc)
    if not ((ua * 3232 + ub * 48 + ua * ub) % 16777213 == 11404538) then
        t6 = ""
    end
    local t7 = tostring(t6):match("^%s*(.-)%s*$")
    if t7 == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    t6_1, t8_1 = pcall(m_.JSONDecode, m_, t7)
    local t7_1 = not t6_1 or type(t8_1) ~= "table" or type(t8_1.objects) ~= "table"
    if t7_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local t6_2 = 0
    for i, v in ipairs(t8_1.objects) do
        if mS(v) then
            t6_2 += 1
        end
    end
    if t6_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local t8_2 = t6_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(t6_2, t8_2), 6)
end
local function fn422()
    if mK() then
        md()
        task.wait(0.2)
    end
    local rs = mj()
    if #rs == 0 then
        return
    end
    local rt = l6()
    if not rt then
        return
    end
    local ru = mX()
    local rv = mo()
    table.sort(rs, function(ej, ek)
        return mx(ej).score > mx(ek).score
    end)
    for i, v in ipairs(rs) do
        local rs_1 = mx(v)
        local rw = mc(rs_1.rarity, "PlaceRarities") and m5(rs_1.mutation, "PlaceMutations")
        if rw then
            local rx
            for i, v in ipairs(rv) do
                if v.empty then
                    rx = v
                    break
                end
            end
            local rw_1 = rx and mA("AutoPlace")
            if rw_1 then
                if v.Parent == LocalPlayer.Backpack then
                    rt:EquipTool(v)
                    task.wait(0.15)
                end
                m8(rx.spawn.Position)
                task.wait(0.15)
                mQ(rx.prompt)
                task.wait(0.45)
                rx.empty = false
            elseif mA("AutoReplace") then
                local rw_2 = nil
                local rx_1 = math.huge
                for i, v in ipairs(rv) do
                    if not v.empty then
                        local ry = mC(v.floor, v.slot, ru)
                        if ry and ry.score < rs_1.score and ry.score < rx_1 then
                            rw_2 = v
                            rx_1 = ry.score
                        end
                    end
                end
                if rw_2 then
                    if v.Parent == LocalPlayer.Backpack then
                        rt:EquipTool(v)
                        task.wait(0.15)
                    end
                    m8(rw_2.spawn.Position)
                    task.wait(0.15)
                    mQ(rw_2.prompt)
                    task.wait(0.45)
                end
            end
        end
    end
end
local function worker3()
    while not Library.Unloaded do
        if mA("AutoCollectMoney") then
            pcall(mL)
        end
        task.wait(0.8)
    end
end
local function onRenderStepped(gO)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local s__1 = l6()
        if s__1 then
            s__1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local s__3 = mm()
        local s0 = l6()
        if s__3 and s0 then
            s0.PlatformStand = true
            local s0_1 = Vector3.zero
            if m9:IsKeyDown(Enum.KeyCode.W) then
                s0_1 = s0_1 + CurrentCamera2.CFrame.LookVector
            end
            if m9:IsKeyDown(Enum.KeyCode.S) then
                s0_1 = s0_1 - CurrentCamera2.CFrame.LookVector
            end
            if m9:IsKeyDown(Enum.KeyCode.A) then
                s0_1 = s0_1 - CurrentCamera2.CFrame.RightVector
            end
            if m9:IsKeyDown(Enum.KeyCode.D) then
                s0_1 = s0_1 + CurrentCamera2.CFrame.RightVector
            end
            if m9:IsKeyDown(Enum.KeyCode.Space) then
                s0_1 = s0_1 + Vector3.new(0, 1, 0)
            end
            if m9:IsKeyDown(Enum.KeyCode.LeftControl) then
                s0_1 = s0_1 - Vector3.new(0, 1, 0)
            end
            s__3.Velocity = Vector3.zero
            if s0_1.Magnitude > 0 then
                s__3.CFrame = s__3.CFrame + s0_1.Unit * Options.FlySpeed.Value * gO
            end
        end
    end
end
local function fn480(aN)
    local ov = Toggles[aN]
    return ov and ov.Value == true
end
local function fn539()
    if not Toggles.Fly.Value then
        local s6 = l6()
        if s6 then
            s6.PlatformStand = false
        end
    end
end
local function onExportConfigToClipboard()
    local t3_1
    local t2_1
    t2_1, t3_1 = pcall(m_.JSONEncode, m_, mg())
    if not t2_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local t2_2 = setclipboard or toclipboard
    local t2_3 = type(t2_2) ~= "function" or not pcall(t2_2, t3_1)
    if t2_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function onCopyPayPalLink()
    m0(m7, "Copied PayPal link")
end
local function fn608()
    local qK = nh()
    local qL = qK and qK:FindFirstChild("Spawn")
    if not qL then
        return false
    end
    m8(qL.Position)
    task.wait(0.55)
    local qL_1 = mm()
    local qM = qL_1 and lV(qL_1.Position)
    if qM then
        m8(qL.Position + Vector3.new(0, 0, 12))
        task.wait(0.45)
    end
    return mK() == nil
end
local function worker2()
    while not Library.Unloaded do
        if mA("AutoCollectBrainrot") then
            pcall(mZ)
        end
        local uj = mA("AutoPlace") or mA("AutoReplace")
        if uj then
            pcall(lZ)
        end
        task.wait(0.55)
    end
end
local function worker4()
    while not Library.Unloaded do
        if mA("AutoBuyAura") then
            pcall(mf)
        end
        if mA("AutoBuyAuraUpgrades") then
            pcall(mV)
        end
        if mA("AutoBuySpeed") then
            pcall(ml)
        end
        if mA("AutoUpgradeBase") then
            pcall(lY)
        end
        if mA("AutoRebirth") then
            pcall(nc)
        end
        task.wait(1.1)
    end
end
local function fn634()
    local CurrentCamera = mR.CurrentCamera
    if not CurrentCamera then
        return
    end
    m3:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    m3:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    my = tick()
end
local function fn635(co)
    local pQ = co:GetAttribute("OriginalName") or co.Name
    local pQ_1 = co:GetAttribute("Rarity") or "Common"
    local pQ_2 = co:GetAttribute("Mutation") or "Normal"
    return { tool = co, name = pQ, rarity = pQ_1, mutation = pQ_2, score = mh(pQ, pQ_1, pQ_2) }
end
local function onCopyBitcoinAddress()
    m0(lX, "Copied Bitcoin address")
end
local function fn669(cE, cF)
    local p6 = Options[cF] and Options[cF].Value
    if type(p6) ~= "table" then
        return true
    end
    local p6_1 = false
    for k, v in pairs(p6) do
        if v then
            p6_1 = true
            break
        end
    end
    if not p6_1 then
        return true
    end
    return p6[cE] == true
end
local function fn683(hB, hC)
    local Type = hC.Type
    if Type == "Toggle" then
        return { idx = hB, type = "Toggle", value = hC.Value == true }
    elseif Type == "Slider" then
        return { idx = hB, type = "Slider", value = tostring(hC.Value) }
    elseif Type == "Dropdown" then
        return { idx = hB, type = "Dropdown", multi = hC.Multi == true, value = hC.Value }
    elseif Type == "Input" then
        local tx = hC.Value or ""
        return { idx = hB, type = "Input", text = tostring(tx) }
    elseif Type == "ColorPicker" then
        return { idx = hB, type = "ColorPicker", value = hC.Value:ToHex(), transparency = hC.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = hB,
            type = "KeyPicker",
            mode = hC.Mode,
            key = hC.Value,
            modifiers = hC.Modifiers,
            toggled = hC.Toggled
        }
    else
        return nil
    end
end
local function fn685()
    mv(false)
    if connection then
        connection:Disconnect()
    end
    if connection2 then
        connection2:Disconnect()
    end
    print("Unloaded!")
end
local function fn691()
    mv(Toggles.AntiGameplayPause.Value)
end
local function fn703(S, T)
    return S.idx < T.idx
end
local function fn722()
    local rW = nh()
    if not rW then
        return
    end
    local rX = mm()
    if not rX then
        return
    end
    for i, descendant in ipairs(rW:GetDescendants()) do
        local rW_1 = descendant.Name == "CollectTouch" and descendant:IsA("BasePart")
        if rW_1 then
            mn(descendant)
        end
    end
end
local function fn731(ht, hu)
    local tn = ht == "Toggle" and Toggles
    local ts = if tn then 1 else 0
    local tq = 2836 * ts + 215 * (1 - ts)
    local tr = 2789 * ts + 2730 * (1 - ts)
    if not ((tq * 3364 + tr * 3453 + tq * tr) % 16777213 == 10303112) then
        tn = Options
    end
    local tn_1 = tn[hu]
    local tm_2 = type(tn_1) == "table" and tn_1.Type == ht
    return tm_2 and tn_1 or nil
end
local function fn734()
    local Character = LocalPlayer.Character
    local oz = Character and Character:FindFirstChild("HumanoidRootPart")
    return oz
end
local function fn759()
    local pK_1
    local pJ_1
    pJ_1, pK_1 = pcall(function()
        return l9:InvokeServer()
    end)
    local pL = pJ_1 and type(pK_1) == "table" and type(pK_1.Data) == "table"
    if pL then
        local pJ_2 = (tonumber(pK_1.Data.MaxCarry))
        local pP = if pJ_2 then 1 else 0
        local pN = 2437 * pP + 84 * (1 - pP)
        local pO = 966 * pP + 297 * (1 - pP)
        if not ((pN * 2483 + pO * 2304 + pN * pO) % 16777213 == 10630877) then
            pJ_2 = 1
        end
        return pJ_2
    end
    return 1
end
local function fn769()
    if mK() then
        return md()
    end
    local qR = mj()
    if #qR >= mU() then
        return false
    end
    local qR_1 = mz()
    local qS = mJ(qR_1)
    if not qS then
        return false
    end
    m8(qS.part.Position)
    task.wait(0.2)
    mQ(qS.prompt)
    task.wait(0.45)
    if mK() then
        return md()
    end
    return false
end
local function fn771()
    local qX = nh()
    if not qX then
        return {}
    end
    local qY = {}
    for i, v in ipairs({ "Floor1", "Floor2", "Floor3" }) do
        local qZ = qX:FindFirstChild(v)
        local q_ = qZ and qZ:FindFirstChild("Slots")
        if q_ then
            for i, child in ipairs(q_:GetChildren()) do
                local Spawn = child:FindFirstChild("Spawn")
                local q__1 = Spawn and Spawn:FindFirstChildOfClass("ProximityPrompt")
                if Spawn and q__1 then
                    qY[#qY + 1] = {
                        floor = v,
                        slot = child.Name,
                        spawn = Spawn,
                        prompt = q__1,
                        empty = q__1.ActionText == "Place Item"
                    }
                end
            end
        end
    end
    return qY
end
local function fn791(bA)
    local o0_1
    local o__1
    o__1, o0_1 = pcall(ItemConfigurations.GetItemData, ItemConfigurations, bA)
    local o1 = o__1 and type(o0_1) == "table"
    if o1 then
        local o__2 = tonumber(o0_1.Income) or 0
        return o__2
    end
    return 0
end
local function fn806()
    pcall(function()
        mq:FireServer()
    end)
end
local function fn826(an, ao)
    return string.format('<font color="%s">%s</font>', ao, an)
end
local function fn831(a2)
    local oE = mm()
    local oF = not oE or typeof(a2) ~= "Vector3"
    if oF then
        return false
    end
    oE.CFrame = CFrame.new(a2 + Vector3.new(0, 3.5, 0))
    return true
end
local function fn846(bG, bH, bI)
    return m2(bH) * 1e+18 + mM(bI) * 1000000000000000 + mB(bG)
end
local function fn852()
    local rf_1
    local re_1
    re_1, rf_1 = pcall(function()
        return l9:InvokeServer()
    end)
    local rg = not re_1
    local rk = if rg then 1 else 0
    local ri = 2183 * rk + 2272 * (1 - rk)
    local rj = 2365 * rk + 437 * (1 - rk)
    if not ((ri * 3528 + rj * 4039 + ri * rj) % 16777213 == 5639441) then
        rg = type(rf_1) ~= "table"
    end
    if not rg then
        rg = type(rf_1.Data) ~= "table"
    end
    if rg then
        return {}
    end
    return rf_1.Data.Plots or {}
end
local function fn853(c9)
    if #c9 == 0 then
        return nil
    end
    local qF = Options.GrabPriority and Options.GrabPriority.Value
    local qJ = if qF then 1 else 0
    local qH = 1568 * qJ + 807 * (1 - qJ)
    local qI = 79 * qJ + 1215 * (1 - qJ)
    if not ((qH * 1310 + qI * 1564 + qH * qI) % 16777213 == 2301508) then
        qF = "Nearest"
    end
    local qE_1 = qF
    if qE_1 == "Random" then
        return c9[math.random(1, #c9)]
    elseif qE_1 == "Best" then
        table.sort(c9, function(dc, dd)
            if dc.score == dd.score then
                return dc.distance < dd.distance
            end
            return dc.score > dd.score
        end)
        return c9[1]
    else
        table.sort(c9, function(de, df)
            return de.distance < df.distance
        end)
        return c9[1]
    end
end
local function fn873(bx)
    return mO[bx] or 0
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local sN_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if sN_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function onUnload()
    Library:Unload()
end
local function onCopyVenmoLink()
    m0(m1, "Copied Venmo link")
end
local function fn944(ag, ah)
    if setclipboard then
        setclipboard(ag)
    elseif toclipboard then
        toclipboard(ag)
    end
    Library:Notify(ah)
end
local function fn947(G, H)
    return G.index < H.index
end
local function onCopyUSDTAddress()
    m0(nf, "Copied USDT address")
end
local function fn956()
    m0(mH, "Copied Discord invite to clipboard")
end
lV = nil
Library = nil
lX = nil
lY = nil
lZ = nil
connection = nil
l0 = nil
l1 = nil
ItemConfigurations = nil
l5 = nil
l6 = nil
l7 = nil
l9 = nil
Label = nil
mc = nil
md = nil
mf = nil
mg = nil
mh = nil
mj = nil
mk = nil
ml = nil
mm = nil
mn = nil
mo = nil
RequestBaseUpgrade = nil
mq = nil
CurrentCamera2 = nil
mt = nil
mu = nil
mv = nil
mw = nil
mx = nil
my = nil
mz = nil
mA = nil
mB = nil
mC = nil
mD = nil
mF = nil
mG = nil
mH = nil
local l2, l4, l8, mb, PurchaseSpeed, mi, mr, mE
mJ = nil
mK = nil
mL = nil
mM = nil
LocalPlayer = nil
mO = nil
mP = nil
mQ = nil
mR = nil
mS = nil
mU = nil
mV = nil
mX = nil
mZ = nil
m_ = nil
m0 = nil
m1 = nil
m2 = nil
m3 = nil
Options = nil
m5 = nil
connection2 = nil
m7 = nil
m8 = nil
m9 = nil
Toggles = nil
nb = nil
nc = nil
nd = nil
SaveManager = nil
nf = nil
ng = nil
nh = nil
local mI, mT, mW, mY
mI = nil
mT = nil
mW = nil
mY = nil
local MenuGroup
uz_7, uz_21, uz_11, m9, m3, m_, mY, mT, mR, LocalPlayer, uz_22, mH, mD, uz_9, uz_18, uz_29, mq, RequestBaseUpgrade, mi, PurchaseSpeed, mb, l9, ItemConfigurations, l1, uz_10, uz_32 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local uz_30 = 65
repeat
    uz_1 = (uz_30 * 7 + 8) % 12 + 1
    if uz_1 <= 6 then
        if uz_1 <= 3 then
            if uz_1 <= 2 then
                if uz_1 <= 1 then
                    if uz_30 * 21801829 + 7 + 2 >= uz_30 * 21801829 + 7 + 2 + 3 then
                        uz_21 = uz_9:WaitForChild("Events")
                    else
                        uz_9 = uz_21:WaitForChild("Events")
                    end
                    uz_30 = (uz_30 + 79) % 96
                else
                    if uz_30 * 71696275 + 9 + 1 >= uz_30 * 71696275 + 9 + 1 + 1 then
                        uz_21 = uz_18:WaitForChild("Modules")
                    else
                        uz_18 = uz_21:WaitForChild("Modules")
                    end
                    uz_30 = (uz_30 + 19) % 96
                end
            else
                if (uz_30 * 2 + 2) * 7 % 3 == ((uz_30 * 2 + 2) * 7 + 3) % 3 then
                    uz_29 = uz_21:WaitForChild("Functions")
                else
                    uz_21 = uz_29:WaitForChild("Functions")
                end
                uz_30 = (uz_30 + 31) % 96
            end
        elseif uz_1 <= 5 then
            if uz_1 <= 4 then
                uz_23 = {
                    "lxqyt",
                    "txlenbwxp",
                    "vsi",
                    "omco",
                    "risja",
                    "zlxfugp",
                    "rgmfeczt",
                    "xltlyewg",
                    "qrrwkdw",
                    "kqqjwfsve",
                    "qbjh"
                }
                local vB = uz_30
                uz_13 = uz_23[vB % 11 + 1]
                if uz_13:len() >= uz_13:reverse():rep(vB % 3 + 2):len() then
                    uz_9 = RequestBaseUpgrade:WaitForChild("RequestRebirth")
                    mq = RequestBaseUpgrade:WaitForChild("RequestBaseUpgrade")
                else
                    mq = uz_9:WaitForChild("RequestRebirth")
                    RequestBaseUpgrade = uz_9:WaitForChild("RequestBaseUpgrade")
                end
                uz_30 = (uz_30 + 91) % 96
            else
                uz_23 = { "mmi", "kbkvh", "pwttixii", "wfgsztfecwq", "qyshvgrloi", "lmfrud", "ipjhmf", "stwsyia" }
                if uz_23[(uz_30 * 51 + 31) % 8 + 1] <= uz_23[(uz_30 * 51 + 31) % 8 + 1] then
                    mi = uz_9:WaitForChild("PurchaseAuraUpgrade")
                    PurchaseSpeed = uz_9:WaitForChild("PurchaseSpeed")
                else
                    uz_9 = PurchaseSpeed:WaitForChild("PurchaseAuraUpgrade")
                    mi = PurchaseSpeed:WaitForChild("PurchaseSpeed")
                end
                uz_30 = (uz_30 + 55) % 96
            end
        else
            uz_23 = {
                "pnh",
                "pzoxtapxoo",
                "poktf",
                "vsmcxozhxam",
                "rbmnzis",
                "qberbnvzec",
                "hhoopkl",
                "pbviygoiazk",
                "ezmvabqr",
                "gybdkaw",
                "jzvdkeocfy",
                "uytu",
                "rdqhpoj",
                "ueyznhc"
            }
            if uz_23[(uz_30 * 95 + 82) % 14 + 1] < uz_23[(uz_30 * 95 + 82) % 14 + 1] then
                l9 = uz_29:WaitForChild("AuraSkinEvent")
                mb = uz_21:WaitForChild("GetProfile")
            else
                mb = uz_21:WaitForChild("AuraSkinEvent")
                l9 = uz_29:WaitForChild("GetProfile")
            end
            uz_30 = (uz_30 + 67) % 96
        end
    elseif uz_1 <= 9 then
        if uz_1 <= 8 then
            if uz_1 <= 7 then
                uz_23 = (vector.create((uz_30 * 4 + 4) % 11 + 1, (uz_30 * 10 + 3) % 13 + 1, (uz_30 * 1 + 13) % 17 + 1))
                uz_13 = (vector.create((uz_30 * 2 + 2) % 11 + 1, (uz_30 * 3 + 2) % 13 + 1, (uz_30 * 8 + 8) % 17 + 1))
                uz_2 = (vector.create((uz_30 * 7 + 1) % 11 + 1, (uz_30 * 2 + 8) % 13 + 1, (uz_30 * 11 + 8) % 17 + 1))
                uz_25 = (vector.create((uz_30 * 7 + 6) % 11 + 1, (uz_30 * 5 + 12) % 13 + 1, (uz_30 * 6 + 9) % 17 + 1))
                if vector.dot(vector.cross(uz_23, uz_13), (vector.cross(uz_2, uz_25))) == vector.dot(uz_23, uz_2) * vector.dot(uz_13, uz_25) - vector.dot(uz_23, uz_25) * vector.dot(uz_13, uz_2) then
                    ItemConfigurations = require(uz_18:WaitForChild("ItemConfigurations"))
                    l1 = require(uz_18:WaitForChild("RarityConfigurations"))
                    uz_10 = require(uz_21:WaitForChild("Configurations"):WaitForChild("GlobalConfiguration"))
                    uz_32 = {}
                else
                    l1 = require(ItemConfigurations:WaitForChild("ItemConfigurations"))
                    uz_32 = require(ItemConfigurations:WaitForChild("RarityConfigurations"))
                    uz_21 = require(uz_18:WaitForChild("Configurations"):WaitForChild("GlobalConfiguration"))
                    uz_10 = {}
                end
                uz_30 = (uz_30 + 67) % 96
            else
                if (not mi or not m3) and (not m_ or m_) and (not uz_10 or m3 or (mi or m3)) and ((not m3 or not uz_10) and (mi or not uz_10) or (not uz_10 or not m_) and (uz_29 or m3)) and not ((not mi or not m3) and (not m_ or m_) and (not uz_10 or m3 or (mi or m3)) and ((not m3 or not uz_10) and (mi or not uz_10) or (not uz_10 or not m_) and (uz_29 or m3))) then
                    mi = game:GetService("Players")
                else
                    uz_7 = game:GetService("Players")
                end
                uz_30 = (uz_30 + 79) % 96
            end
        else
            if (uz_30 * 2 + 9) * 10 % 3 == ((uz_30 * 2 + 9) * 10 + 4) % 3 then
                uz_22 = game:GetService("ReplicatedStorage")
            else
                uz_21 = game:GetService("ReplicatedStorage")
            end
            uz_30 = (uz_30 + 19) % 96
        end
    elseif uz_1 <= 11 then
        if uz_1 <= 10 then
            local vp = bit32.rrotate(bit32.bxor(bit32.lrotate(uz_30, 2), string.byte(tostring(uz_18))), 6)
            if bit32.bxor(bit32.lrotate(bit32.bxor(vp, 1751158712), 8), 1620031592) == bit32.lrotate(vp, 8) then
                uz_11 = game:GetService("RunService")
                m9 = game:GetService("UserInputService")
                m3 = game:GetService("VirtualUser")
                m_ = game:GetService("HttpService")
                mY = game:GetService("GuiService")
            else
                m3 = game:GetService("RunService")
                mY = game:GetService("UserInputService")
                m9 = game:GetService("VirtualUser")
                uz_11 = game:GetService("HttpService")
                m_ = game:GetService("GuiService")
            end
            uz_30 = (uz_30 + 43) % 96
        else
            uz_1 = (vector.create((uz_30 * 1 + 6) % 11 + 1, (uz_30 * 8 + 5) % 13 + 1, (uz_30 * 7 + 10) % 17 + 1))
            uz_23 = (vector.create((uz_30 * 6 + 1) % 11 + 1, (uz_30 * 10 + 3) % 13 + 1, (uz_30 * 3 + 7) % 17 + 1))
            uz_13 = (vector.create((uz_30 * 5 + 4) % 5 + 1, (uz_30 * 4 + 3) % 7 + 1, (uz_30 * 5 + 1) % 9 + 1))
            if math.abs((vector.angle(uz_1, uz_23, uz_13))) - math.abs((vector.angle(uz_23, uz_1, uz_13))) == 2 then
                mR = game:GetService("CoreGui")
                mH = game:GetService("Workspace")
                uz_7 = LocalPlayer.LocalPlayer
                mT = "Aura For Brainrots"
                uz_22 = "https://discord.gg/ehKVq7pf7v"
            else
                mT = game:GetService("CoreGui")
                mR = game:GetService("Workspace")
                LocalPlayer = uz_7.LocalPlayer
                uz_22 = "Aura For Brainrots"
                mH = "https://discord.gg/ehKVq7pf7v"
            end
            uz_30 = (uz_30 + 19) % 96
        end
    else
        if uz_30 * 12182591 + 2 + 3 <= uz_30 * 12182591 + 2 + 3 + 1 then
            mD = "https://rscripts.net/@Ouroboros"
        else
            m9 = "https://rscripts.net/@Ouroboros"
        end
        uz_30 = (uz_30 + 43) % 96
    end
until (uz_30 * 59 + 34) % 96 == 41
uz_1 = {}
for k, v in pairs(l1) do
    uz_7 = type(v) == "table" and type(v.Index) == "number"
    if uz_7 then
        uz_1[#uz_1 + 1] = { name = k, index = v.Index }
    end
end
uz_7 = 7
repeat
    uz_29 = { "kmbtgbc", "rfiewvrc", "znqje", "baiey", "rgsqfykzl", "jths", "ylaw", "pmmnxf" }
    if uz_29[(uz_7 * 35 + 100) % 8 + 1] <= uz_29[(uz_7 * 35 + 100) % 8 + 1] then
        table.sort(uz_1, fn947)
    else
        table.sort(uz_1, fn947)
    end
    uz_7 = (uz_7 + 7) % 8
until (uz_7 * 7 + 4) % 8 == 6
for i, v in ipairs(uz_1) do
    uz_32[#uz_32 + 1] = v.name
end
mO, uz_29, mI, mE = nil, nil, nil, nil
uz_7 = 19
repeat
    uz_18 = (uz_7 * 2 + 0) % 3 + 1
    if uz_18 <= 2 then
        if uz_18 <= 1 then
            if (uz_7 * 1 + 1) * 21 % 4 == ((uz_7 * 1 + 1) * 21 + 4) % 4 then
                mI = {}
            else
                mO = {}
            end
            uz_7 = (uz_7 + 23) % 24
        else
            uz_18 = (vector.create((uz_7 * 4 + 6) % 11 + 1, (uz_7 * 6 + 10) % 13 + 1, (uz_7 * 13 + 14) % 17 + 1))
            uz_9 = (vector.create((uz_7 * 5 + 2) % 11 + 1, (uz_7 * 11 + 5) % 13 + 1, (uz_7 * 5 + 16) % 17 + 1))
            uz_30 = (vector.create((uz_7 * 7 + 3) % 11 + 1, (uz_7 * 2 + 2) % 13 + 1, (uz_7 * 4 + 8) % 17 + 1))
            uz_21 = (vector.create((uz_7 * 3 + 4) % 5 + 1, (uz_7 * 5 + 4) % 7 + 1, (uz_7 * 1 + 5) % 9 + 1))
            if vector.dot(vector.cross(uz_18, (vector.cross(uz_9, uz_30))), uz_21) == vector.dot(uz_9 * vector.dot(uz_18, uz_30) - uz_30 * vector.dot(uz_18, uz_9), uz_21) + 4 then
                uz_29 = {}
            else
                mE = {}
            end
            uz_7 = (uz_7 + 20) % 24
        end
    else
        uz_18 = (vector.create((uz_7 * 7 + 8) % 11 + 1, (uz_7 * 5 + 13) % 13 + 1, (uz_7 * 12 + 13) % 17 + 1))
        uz_9 = (vector.create((uz_7 * 5 + 8) % 11 + 1, (uz_7 * 4 + 13) % 13 + 1, (uz_7 * 5 + 4) % 17 + 1))
        uz_30 = (vector.create((uz_7 * 1 + 7) % 11 + 1, (uz_7 * 4 + 8) % 13 + 1, (uz_7 * 14 + 3) % 17 + 1))
        uz_21 = (vector.create((uz_7 * 6 + 6) % 11 + 1, (uz_7 * 5 + 2) % 13 + 1, (uz_7 * 8 + 4) % 17 + 1))
        if vector.dot(vector.cross(uz_18, uz_9), (vector.cross(uz_30, uz_21))) == vector.dot(uz_18, uz_30) * vector.dot(uz_9, uz_21) - vector.dot(uz_18, uz_21) * vector.dot(uz_9, uz_30) then
            mO = { Normal = 1, Golden = 2, Diamond = 3, Galaxy = 4, Lava = 5, Rainbow = 6 }
            uz_29 = { "Normal", "Golden", "Diamond", "Galaxy", "Lava", "Rainbow" }
        else
            uz_29 = { Diamond = 3, Lava = 5, Galaxy = 4, Normal = 1, Rainbow = 6, Golden = 2 }
            mO = { "Golden", "Diamond", "Galaxy", "Lava", "Rainbow", "Normal" }
        end
        uz_7 = (uz_7 + 2) % 24
    end
until (uz_7 * 23 + 14) % 24 == 22
uz_18 = {}
for k, v in pairs(uz_10.AURA_SKINS) do
    uz_7 = type(v) == "table" and type(v.auraName) == "string"
    if uz_7 then
        uz_7 = #uz_18 + 1
        uz_9 = tonumber(k) or 0
        uz_30 = v.auraName
        uz_21 = tonumber(v.Price) or 0
        uz_10 = tonumber(v.multiplier) or 1
        uz_18[uz_7] = { idx = uz_9, name = uz_30, price = uz_21, mult = uz_10 }
    end
end
table.sort(uz_18, fn703)
for i, v in ipairs(uz_18) do
    mI[#mI + 1] = v.name
    mE[v.name] = v
end
l4, l2, Library, SaveManager, Toggles, Options, l5, l0, lX, ng, nf, nb, m7, m1, m0, mP, mG, mt, mA, mm, l6, nh, m8, mQ, mn, l8, m2, mM, mB, mh, lV, mK, mr, mj, mU, mx, mc, m5, mz, mJ, md, mZ, mo, mX, mC, lZ, mL, mf, mV, ml, lY, nc = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
uz_10 = { "+1", "+5", "+10" }
l4 = { ["+1"] = 1, ["+5"] = 5, ["+10"] = 10 }
l2 = { 1, 5, 10 }
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
m0 = fn944
mP = fn956
mG = fn826
mt = fn392
uz_23 = "#7fd47f"
uz_1 = "#6ec1ff"
l5 = "#e8a34d"
uz_21 = "#8b93a3"
l0 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
lX = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
ng = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
nf = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
nb = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
m7 = "https://paypal.me/TheTruckerGOD"
m1 = "https://venmo.com/u/miserablemusic"
local uz_5 = "#345d9d"
local uz_26 = "#f7931a"
local uz_4 = "#627eea"
local uz_14 = "#26a17b"
uz_25 = "#14f195"
uz_2 = "#0070ba"
uz_13 = "#008cff"
mA = fn480
mm = fn734
l6 = fns.fn247
nh = fns.fn168
m8 = fn831
mQ = function(a7)
    local HoldDuration
    local MaxActivationDistance
    MaxActivationDistance = nil
    HoldDuration = nil
    if not a7 then
        return false
    end
    HoldDuration = a7.HoldDuration
    MaxActivationDistance = a7.MaxActivationDistance
    pcall(function()
        a7.HoldDuration = 0
        a7.MaxActivationDistance = math.max(MaxActivationDistance, 20)
        a7:InputHoldBegin()
        task.wait(0.35)
        a7:InputHoldEnd()
    end)
    pcall(function()
        a7.HoldDuration = HoldDuration
        a7.MaxActivationDistance = MaxActivationDistance
    end)
    if fireproximityprompt then
        pcall(fireproximityprompt, a7)
    end
    return true
end
if (not nh or nh or (nh or not m2)) and (not m2 or mG or not m2 and false) or not ((not nh or nh or (nh or not m2)) and (not m2 or mG or not m2 and false)) then
    mn = fns.fn232
    l8 = fns.fn20
    m2 = fn330
else
    l8 = fns.fn232
    m2 = fns.fn20
    mn = fn330
end
mM = fn873
mB = fn791
mh = fn846
lV = fns.fn275
mK = fns.fn93
mr = fn278
mj = function()
    local pt
    pt = {}
    local function pu(b6)
        local po = b6:IsA("Tool") and not mr(b6)
        if po then
            pt[#pt + 1] = b6
        end
    end
    for i, child in ipairs(LocalPlayer.Backpack:GetChildren()) do
        pu(child)
    end
    local Character = LocalPlayer.Character
    if Character then
        for i, child in ipairs(Character:GetChildren()) do
            pu(child)
        end
    end
    return pt
end
mU = fn759
mx = fn635
mc = fns.fn235
m5 = fn669
mz = fns.fn190
mJ = fn853
md = fn608
mZ = fn769
mo = fn771
mX = fn852
mC = fns.fn185
lZ = fn422
mL = fn722
mf = function()
    local r4 = l8()
    for i, v in ipairs(mI) do
        local sd = v
        local r5 = mE[sd]
        if r5 and r5.price > 0 and r4 >= r5.price then
            if LocalPlayer:GetAttribute("SelectedAura") ~= sd then
                pcall(function()
                    mb:FireServer("EquipAuraOrBuy", sd)
                end)
                task.wait(0.15)
                r4 = l8()
            end
        end
    end
end
mV = function()
    local sf = Options.AuraUpgradeAmounts and Options.AuraUpgradeAmounts.Value
    if type(sf) ~= "table" then
        return
    end
    for k, v in pairs(sf) do
        if v then
            local se = l4[k]
            if se then
                pcall(function()
                    mi:FireServer(se)
                end)
                task.wait(0.12)
            end
        end
    end
end
ml = function()
    for i, v in ipairs(l2) do
        local sx = v
        pcall(function()
            PurchaseSpeed:FireServer(sx)
        end)
        task.wait(0.12)
    end
end
lY = fn283
nc = fn806
uz_9 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = mH, Copyable = true }, "|", uz_22 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
local uz_16 = {
    Info = uz_9:AddTab("Info", "info"),
    Main = uz_9:AddTab("Main", "gamepad-2"),
    Player = uz_9:AddTab("Player", "person-standing"),
    Settings = uz_9:AddTab("Settings", "settings")
}
uz_16.Collect = uz_16.Main:AddSubTab("Collect", "package")
uz_16.Place = uz_16.Main:AddSubTab("Place", "map-pin")
uz_16.Buy = uz_16.Main:AddSubTab("Buy", "shopping-cart")
uz_30 = fns.fn104
for k, v in uz_16 do
    if v ~= uz_16.Main then
        uz_30(v)
    end
end
mw, Label, l7 = nil, nil, nil
mw = "Unknown"
pcall(fns.fn252)
uz_7 = uz_16.Info:AddLeftGroupbox("Account", "circle-user")
uz_7:AddLabel(mt("User", LocalPlayer.Name, uz_23), true)
uz_7:AddLabel(mt("Status", "Keyless", uz_23), true)
uz_7:AddLabel(mt("Executor", mw, uz_23), true)
local GameInfoGroup = uz_16.Info:AddLeftGroupbox("Game Info", "gamepad-2")
GameInfoGroup:AddLabel(mG(uz_22 .. " [" .. tostring(game.PlaceId) .. "]", uz_1), true)
GameInfoGroup:AddLabel(mt("Place ID", tostring(game.PlaceId), uz_1), true)
Label = GameInfoGroup:AddLabel(mt("Session time", "0s", l5), true)
l7 = tostring(game.JobId)
uz_9 = #l7 > 18
if uz_9 then
    uz_7 = 3
    repeat
        if (uz_7 * 2 + 4) * 7 % 3 == ((uz_7 * 2 + 4) * 7 + 6) % 3 then
            uz_9 = string.sub(l7, 1, 18) .. "..."
        else
            l7 = string.sub(uz_9, 1, 18) .. "..."
        end
        uz_7 = (uz_7 + 3) % 4
    until (uz_7 * 3 + 1) % 4 == 3
end
uz_7 = uz_9 or l7
nd, CurrentCamera2, MenuGroup, mF, my, connection, connection2, mv, mk, mW, mu, mg, mS = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
uz_18 = uz_7
GameInfoGroup:AddLabel(mt("Server", uz_18, uz_21), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
nd = os.clock()
task.spawn(fns.worker)
local ScriptsGroup = uz_16.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(mG("Included in this hub", uz_21), true)
ScriptsGroup:AddLabel(mG(uz_22, uz_1), true)
local FeaturesGroup = uz_16.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(mG("Auto Collect", uz_1), true)
FeaturesGroup:AddLabel(mG("Auto Place", l5), true)
FeaturesGroup:AddLabel(mG("Auto Buy", uz_23), true)
FeaturesGroup:AddLabel(mG("Player", uz_21), true)
local SocialsGroup = uz_16.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = mP })
SocialsGroup:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
uz_30 = uz_16.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
uz_30:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
uz_30:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
uz_30:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
uz_30:AddButton({ Text = "Copy Discord Invite", Func = mP })
uz_9 = uz_16.Info:AddRightGroupbox("Donations", "heart")
uz_9:AddLabel(mG("All donations are optional but appreciated.", l5), true)
uz_9:AddLabel(mG("If you donate you get a special role, just PING after you donate.", uz_23), true)
uz_9:AddDivider()
uz_9:AddLabel(mG("LTC / Litecoin", uz_5), true)
uz_9:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
uz_9:AddLabel(mG("BTC / Bitcoin", uz_26), true)
uz_9:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
uz_9:AddLabel(mG("ETH / Ethereum", uz_4), true)
uz_9:AddButton({ Text = "Copy Ethereum Address", Func = fns.onCopyEthereumAddress })
uz_9:AddLabel(mG("USDT", uz_14), true)
uz_9:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
uz_9:AddLabel(mG("Solana", uz_25), true)
uz_9:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
uz_9:AddLabel(mG("PayPal", uz_2), true)
uz_9:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
uz_9:AddLabel(mG("Venmo", uz_13), true)
uz_9:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
uz_9:AddDivider()
uz_9:AddLabel(mG("Don't have any of the listed currencies but still wanna donate?", uz_21), true)
uz_9:AddLabel(mG("DM me and we'll work something out.", uz_1), true)
local FaqGroup = uz_16.Info:AddRightGroupbox("FAQ", "circle-help")
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
local BrainrotsGroup = uz_16.Collect:AddLeftGroupbox("Brainrots", "package")
BrainrotsGroup:AddToggle("AutoCollectBrainrot", { Text = "Auto Collect Brainrot", Default = false })
BrainrotsGroup:AddDropdown("GrabPriority", { Text = "Grab Priority", Values = { "Random", "Nearest", "Best" }, Default = "Best" })
local MoneyGroup = uz_16.Collect:AddRightGroupbox("Money", "coins")
MoneyGroup:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
local PlaceGroup = uz_16.Place:AddLeftGroupbox("Place", "map-pin")
PlaceGroup:AddToggle("AutoPlace", { Text = "Auto Place", Default = false })
PlaceGroup:AddToggle("AutoReplace", { Text = "Auto Replace", Default = false })
PlaceGroup:AddDropdown("PlaceRarities", { Text = "Place Rarities", Values = uz_32, Multi = true, Default = uz_32 })
PlaceGroup:AddDropdown("PlaceMutations", { Text = "Place Mutations", Values = uz_29, Multi = true, Default = uz_29 })
local UpgradesGroup = uz_16.Buy:AddLeftGroupbox("Upgrades", "shopping-cart")
UpgradesGroup:AddToggle("AutoBuyAura", { Text = "Auto Buy Aura", Default = false })
UpgradesGroup:AddToggle("AutoBuyAuraUpgrades", { Text = "Auto Buy Aura Upgrades", Default = false })
UpgradesGroup:AddDropdown("AuraUpgradeAmounts", { Text = "Aura Upgrade Amounts", Values = uz_10, Multi = true, Default = { "+1" } })
UpgradesGroup:AddToggle("AutoBuySpeed", { Text = "Auto Buy Speed Upgrades", Default = false })
UpgradesGroup:AddToggle("AutoUpgradeBase", { Text = "Auto Upgrade Base", Default = false })
local RebirthGroup = uz_16.Buy:AddRightGroupbox("Rebirth", "refresh-cw")
RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local MovementGroup = uz_16.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = uz_16.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
mv = function(go)
    pcall(function()
        mY:SetGameplayPausedNotificationEnabled(not go)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = mT:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not go
        end
    end)
    if not go then
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
if not MenuGroup or not nd or not FeaturesGroup and not MenuGroup or not PlaceGroup and PlaceGroup and (not FeaturesGroup or nd) or (nd or not FeaturesGroup or (not nd or not nd)) and ((nd or not nd) and (not PlaceGroup and not nd)) or ((not MenuGroup or PlaceGroup) and (MenuGroup and not MenuGroup) and (not MenuGroup and nd and (not PlaceGroup or MenuGroup)) or not nd and MenuGroup and (not FeaturesGroup and PlaceGroup) and (not FeaturesGroup or PlaceGroup or (not PlaceGroup or MenuGroup))) or not (not MenuGroup or not nd or not FeaturesGroup and not MenuGroup or not PlaceGroup and PlaceGroup and (not FeaturesGroup or nd) or (nd or not FeaturesGroup or (not nd or not nd)) and ((nd or not nd) and (not PlaceGroup and not nd)) or ((not MenuGroup or PlaceGroup) and (MenuGroup and not MenuGroup) and (not MenuGroup and nd and (not PlaceGroup or MenuGroup)) or not nd and MenuGroup and (not FeaturesGroup and PlaceGroup) and (not FeaturesGroup or PlaceGroup or (not PlaceGroup or MenuGroup)))) then
    Toggles.AntiGameplayPause:OnChanged(fn691)
    uz_11.Stepped:Connect(onStepped)
    m9.JumpRequest:Connect(fns.onJumpRequest)
    CurrentCamera2 = mR.CurrentCamera
else
    mR.AntiGameplayPause:OnChanged(fn691)
    CurrentCamera2.Stepped:Connect(onStepped)
    uz_11.JumpRequest:Connect(fns.onJumpRequest)
    m9 = Toggles.CurrentCamera
end
uz_11.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn539)
Toggles.WalkSpeedEnabled:OnChanged(fns.fn46)
MenuGroup = uz_16.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
mF = tick()
my = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local tg = v
        pcall(function()
            tg:Disable()
        end)
    end
end)
mk = fn634
connection = m9.InputBegan:Connect(fns.onInputBegan)
connection2 = m9.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton({ Text = "Unload", Func = onUnload })
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/aura-for-brainrots")
local nQ = SaveManager:BuildConfigSection(uz_16.Settings)
mW = fn731
mu = fn683
mg = fn408
mS = function(hS)
    local tU
    tU = nil
    local tV = type(hS) ~= "table" or type(hS.idx) ~= "string" or type(hS.type) ~= "string"
    local tZ = if tV then 1 else 0
    local tX = 2400 * tZ + 402 * (1 - tZ)
    local tY = 1639 * tZ + 2999 * (1 - tZ)
    if not ((tX * 2921 + tY * 606 + tX * tY) % 16777213 == 11937234) then
        tV = SaveManager.Ignore[hS.idx]
    end
    if tV then
        return false
    end
    tU = mW(hS.type, hS.idx)
    if not tU then
        return false
    end
    local tV_1 = pcall(function()
        if hS.type == "Input" then
            if type(hS.text) ~= "string" then
                return
            end
            tU:SetValue(hS.text)
        elseif hS.type == "ColorPicker" then
            tU:SetValueRGB(Color3.fromHex(hS.value), hS.transparency)
        elseif hS.type == "KeyPicker" then
            tU:SetValue({ hS.key, hS.mode, hS.modifiers })
            if hS.mode == "Toggle" and hS.toggled ~= nil then
                tU.Toggled = hS.toggled
                tU:Update()
            end
        else
            tU:SetValue(hS.value)
        end
    end)
    return tV_1
end
nQ:AddDivider()
nQ:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
nQ:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
nQ:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
ThemeManager:ApplyToTab(uz_16.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(fns.antiGameplayPauseLoop)
task.spawn(fns.worker5)
Library:OnUnload(fn685)
