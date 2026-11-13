local fns = {}
local zt_2, zt_4, zt_5, GameInfoGroup, FlyGroup, zt_13, zt_15, zt_24, zt_25, zt_27, zt_37, zt_39
local oy
local pf
local oX
local pE
local oE
local CollectionService
local oh
local Label
local oK
local VirtualUser
local op
local o8
local oQ
local UserInputService
local ox
local pe
local oW
local SaveManager
local oD
local Workspace
local og
local o1
local UpgradeNodeTreeRuntimeShared
local pq
local oo
local o7
local oP
local pw
local ow
local pd
local oV
local pC
local oC
local pj
local of
local ButtonActions
local oI
local pp
local om
local o6
local oO
local pv
local ov
local pc
local ItemShelfConfig
local pi
local oe
local o_
local oH
local HttpService
local ol
local o5
local oN
local pu
local ou
local pb
local Label2
local pA
local oA
local ph
local Library
local oZ
local UpgradeNodeTreeShared
local pn
local oj
local o4
local Serializer
local Options
local ot
local pa
local oS
local pz
local oz
local LocalPlayer
local oY
local ReplicatedStorage
local CurrentCamera2
local pm
local oi
local o3
local oL
local ps
local oq
local o9
local oR
local Toggles
function fns.fn16(bg)
    local rB = om()
    local rC = not rB or type(rB.ActiveModules) ~= "table"
    if rC then
        return nil
    end
    return rB.ActiveModules[bg]
end
function fns.fn22()
    local vL = oI("WoodCarving")
    if not vL then
        return
    end
    if not vL.IsLatheActive then
        if Toggles.AutoEnterLathe.Value then
            if type(vL.EnterLathe) == "function" then
                vL:EnterLathe()
            else
                local vM_1 = oq()
                if vM_1 then
                    for i, descendant in vM_1:GetDescendants() do
                        local vM_2 = descendant:IsA("ProximityPrompt") and descendant.Name == "WoodLathePrompt" and descendant.Enabled
                        if vM_2 then
                            pb(descendant)
                            break
                        end
                    end
                end
            end
        end
        return
    end
    local Lathe = vL.Lathe
    if not Lathe or vL.SavePending then
        return
    end
    if not pC(Lathe) then
        return
    end
    if type(vL.CompleteLatheWork) == "function" then
        vL:CompleteLatheWork()
        return
    end
    local vN_1 = Lathe:GetActiveVariantId()
    local vO = Lathe:GetActiveWoodId()
    if not vN_1 or vO == "none" then
        return
    end
    local vP_1 = Serializer.SerializeCarvedLog(Lathe)
    local vQ_1 = Serializer.SerializeCarvedLog(Lathe:GetTargetProfile())
    if not vP_1 or not vQ_1 then
        return
    end
    local vR_1 = Lathe:GetActiveMutation() or "None"
    local vM_4 = vL.LatheSessionId or ""
    local vS_1 = vL.LatheWorkpieceId or ""
    pu("SaveCarvedWood", {
        Serialized = vP_1,
        TargetSerialized = vQ_1,
        WoodId = vO,
        Mutation = vR_1,
        VariantId = vN_1,
        SessionId = vM_4,
        WorkpieceId = vS_1
    })
end
function fns.onRscripts()
    pp(o5, "Copied Rscripts profile to clipboard")
end
function fns.fn41(d9)
    local BasePart = d9:FindFirstChildWhichIsA("BasePart", true)
    if BasePart then
        return BasePart.Position
    end
    local tB = if d9:IsA("Model") then 1 else 0
    if tB == 1 then
        return d9:GetPivot().Position
    end
    return nil
end
function fns.fn67()
    oQ(false)
    local zn = oV()
    if zn then
        zn.PlatformStand = false
        zn.WalkSpeed = 16
    end
end
function fns.fn72()
    return ox() ~= nil
end
function fns.autoAcceptOffersLoop()
    while not Library.Unloaded do
        task.wait(0.3)
        if Toggles.AutoAcceptOffers.Value then
            pcall(ph)
        end
    end
end
function fns.autoBuyShelvesLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AutoBuyShelves.Value then
            pcall(ol)
        end
        if Toggles.AutoBuyPlanters.Value then
            pcall(pf)
        end
    end
end
function fns.onCopyJoinScript_JobID()
    local cs = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, oW)
    pp(cs, "Copied join script to clipboard")
end
function fns.fn122(bK)
    local r2 = oq()
    if not r2 then
        return nil
    end
    for i, descendant in r2:GetDescendants() do
        if descendant:GetAttribute(ButtonActions.ActionAttribute) == bK then
            local attr = descendant:GetAttribute("ButtonEnabled")
            if attr ~= false then
                return descendant
            end
        end
    end
    return nil
end
function fns.fn126(bY)
    local sc = not bY or not bY:IsA("ProximityPrompt") or not bY.Enabled
    if sc then
        return false
    elseif fireproximityprompt then
        pcall(fireproximityprompt, bY)
        return true
    else
        return false
    end
end
function fns.fn146(ab)
    local qR = LocalPlayer.Name .. game.PlaceVersion .. "xdd"
    local function qS(af, ag)
        if ag <= #af then
            return af:sub(1, ag)
        end
        local qJ = ""
        local qK = math.floor(ag / #af)
        local qO = 1
        while qO <= qK do
            qJ ..= af
            qO += 1
        end
        local qK_1 = ag % #af
        if qK_1 > 0 then
            qJ ..= af:sub(1, qK_1)
        end
        return qJ
    end
    local qT = qS(qR, #ab)
    local qR_1 = ""
    qS = #ab
    local qX = 1
    local qV = qS
    while qX <= qV do
        local qY = qX
        qR_1 ..= string.char(bit32.bxor(ab:byte(qY), qT:byte(qY)))
        qX += 1
    end
    return qR_1
end
function fns.fn149()
    if not Toggles.Fly.Value then
        local x7 = oV()
        if x7 then
            x7.PlatformStand = false
        end
    end
end
function fns.fn190()
    if Toggles.AutoBuyRoll.Value then
        local uh_1 = oe()
        if uh_1 == false then
            return
        end
    end
    local uh_2 = oq()
    if not uh_2 then
        return
    end
    if uh_2:GetAttribute("SeedRerollState") ~= "Ready" then
        return
    end
    local ui
    for i, descendant in uh_2:GetDescendants() do
        local uh_3 = descendant:IsA("ProximityPrompt") and descendant.ActionText == "Reroll Seeds" and descendant.Enabled
        if uh_3 then
            ui = descendant
            break
        end
    end
    if ui then
        pb(ui)
    end
end
function fns.fn210()
    local tP = oE()
    local tQ = oH()
    if not tP or not tQ then
        return
    end
    local tR_1 = {}
    for i, child in tP:GetChildren() do
        local attr = child:GetAttribute("TreeDropClaimId")
        if type(attr) == "string" then
            local tS_1 = ov(child)
            if tS_1 and (tS_1 - tQ.Position).Magnitude <= 10 then
                tR_1[#tR_1 + 1] = attr
            end
        end
    end
    if #tR_1 == 0 then
        return
    end
    pu("CollectTreeDrops", { ClaimIds = tR_1 })
end
function fns.fn219()
    return 0.2
end
function fns.onCopyUSDTAddress()
    pp(o6, "Copied USDT address")
end
function fns.fn256(bE)
    local r0 = UpgradeNodeTreeShared.NormalizeCurrencyId(bE)
    if r0 == "Diamonds" then
        return o9()
    end
    return pn()
end
function fns.fn262(aw)
    local ra = oX()
    if not ra then
        return nil
    end
    local rb = ra.CachedRemotes[og(aw)]
    if type(rb) ~= "string" then
        return nil
    end
    local REM = ReplicatedStorage:FindFirstChild("REM")
    local rc = REM and REM:FindFirstChild(rb)
    return rc or nil
end
function fns.fn265()
    if o3 and o3.ModulesLoaded then
        return o3
    elseif not filtergc then
        return nil
    else
        local q__1 = filtergc("table", { Keys = { "AskServer", "CachedRemotes", "ModulesLoaded" }, IgnoreExecutor = true })
        for k, v in q__1 do
            local q__2 = type(v) == "table" and v.ModulesLoaded and type(v.CachedRemotes) == "table"
            if q__2 then
                o3 = v
                return o3
            end
        end
        return nil
    end
end
function fns.autoBuyInvestorLoop()
    while not Library.Unloaded do
        task.wait(Options.InvestorDelay.Value)
        if Toggles.AutoBuyInvestor.Value then
            pcall(oh)
        end
    end
end
function fns.fn278()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local rZ = leaderstats and leaderstats:FindFirstChild("Diamonds")
    if rZ then
        local rZ_1 = tonumber(rZ.Value) or 0
        return rZ_1
    end
    return 0
end
function fns.fn308(S, T, U)
    return string.format("<b>%s</b> %s %s", S, o1("-", "#5a6070"), o1(T, U))
end
function fns.fn324()
    local s4 = {}
    local PlayerData = LocalPlayer:FindFirstChild("PlayerData")
    local s6 = PlayerData and PlayerData:FindFirstChild("Inventory")
    local s5_1 = s6
    if s6 then
        s6 = s5_1:FindFirstChild("Seeds")
    end
    local s5_2 = s6
    if s5_2 then
        for k, v in s5_2:GetAttributes() do
            local s5_3 = tonumber(v) or 0
            if s5_3 > 0 then
                s4[k] = s5_3
            end
        end
    end
    for k, v in LocalPlayer:GetAttributes() do
        if string.sub(k, 1, 14) == "TreeSeedCount_" then
            local s5_4 = string.sub(k, 15)
            local s6_2 = tonumber(v) or 0
            if s6_2 > 0 then
                local max = math.max
                local s8 = s4[s5_4] or 0
                s4[s5_4] = max(s8, s6_2)
            end
        end
    end
    return s4
end
function fns.fn330()
    local tC = oE()
    local tD = oH()
    local tE = not tD
    local tE_1
    local tF = not tC or tE
    local tF_1
    if tF then
        return nil
    end
    tF_1, tE_1 = nil, nil
    for i, child in tC:GetChildren() do
        if child:GetAttribute("TreeDropClaimId") then
            local tC_1 = ov(child)
            if tC_1 then
                local Magnitude = (tC_1 - tD.Position).Magnitude
                if not tE_1 or Magnitude < tE_1 then
                    tF_1 = tC_1
                    tE_1 = Magnitude
                end
            end
        end
    end
    return tF_1
end
function fns.fn349()
    local t0 = oq()
    if not t0 then
        return true
    end
    local t1 = math.clamp(Options.BuyRollMax.Value, 1, ButtonActions.MaxSeedRerollers)
    local Value = Options.BuyRollKeepCash.Value
    local MaxSeedRerollers = ButtonActions.MaxSeedRerollers
    local ue = 1
    while true do
        if not (ue <= MaxSeedRerollers) then
            return true
        end
        local t3_1 = tonumber(t0:GetAttribute("SeedPedestalCount")) or tonumber(t0:GetAttribute("SeedRerollerCount"))
        local t4 = t3_1 or 1
        if t4 >= t1 then
            return true
        end
        local t4_1 = ou(ButtonActions.BuySeedRerollerAction) or t0:FindFirstChild("BuySeedReroller", true)
        if not t4_1 then
            break
        end
        local attr = t4_1:GetAttribute("SeedRerollerMode")
        if attr and attr ~= "Purchase" then
            return true
        end
        local t4_3 = tonumber(t4_1:GetAttribute("SeedRerollerCost"))
        if type(t4_3) ~= "number" then
            local t6_1 = tonumber(t0:GetAttribute("SeedRerollerTier")) or 1
            t4_3 = ButtonActions.GetSeedRerollerCost(t4, t6_1)
        end
        if type(t4_3) ~= "number" then
            return true
        end
        if pn() < t4_3 + Value then
            return true
        end
        local t3_3 = pu(ButtonActions.PurchaseRemote, { Action = ButtonActions.BuySeedRerollerAction, Button = t4_1 })
        local t4_4 = type(t3_3) ~= "table" or t3_3.Success ~= true
        if t4_4 then
            return true
        end
        task.wait(0.25)
        ue += 1
    end
    return true
end
function fns.onCopyBitcoinAddress()
    pp(pe, "Copied Bitcoin address")
end
function fns.autoBuySeedLoop()
    while not Library.Unloaded do
        task.wait(0.25)
        if Toggles.AutoBuySeed.Value then
            pcall(o8)
        end
    end
end
function fns.onCopyVenmoLink()
    pp(oR, "Copied Venmo link")
end
function fns.fn379()
    local sQ = oq()
    if not sQ then
        return
    end
    local GeneratedSeeds = sQ:FindFirstChild("GeneratedSeeds")
    if not GeneratedSeeds then
        return
    end
    for i, child in GeneratedSeeds:GetChildren() do
        local attr = child:GetAttribute("GeneratedTreeType")
        local sR_1 = type(attr) == "string" and pv(attr)
        if sR_1 then
            for i, descendant in child:GetDescendants() do
                local sQ_2 = descendant:IsA("ProximityPrompt") and descendant.Name == "GrabSeedPrompt"
                if sQ_2 then
                    pb(descendant)
                    break
                end
            end
        end
    end
end
function fns.fn389()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    pA = tick()
end
function fns.fn410()
    local Character = LocalPlayer.Character
    local si = Character and Character:FindFirstChild("HumanoidRootPart")
    return si
end
function fns.fn433(hp)
    local wV = {}
    if type(hp) ~= "table" then
        return wV
    end
    for k, v in hp do
        if type(k) == "number" then
            wV[tostring(v)] = true
        elseif v == true then
            wV[tostring(k)] = true
        else
            wV[tostring(v)] = true
        end
    end
    return wV
end
function fns.fn435(j6, j7)
    local Type = j7.Type
    if Type == "Toggle" then
        return { idx = j6, type = "Toggle", value = j7.Value == true }
    elseif Type == "Slider" then
        return { idx = j6, type = "Slider", value = tostring(j7.Value) }
    elseif Type == "Dropdown" then
        return { idx = j6, type = "Dropdown", multi = j7.Multi == true, value = j7.Value }
    elseif Type == "Input" then
        local yH = j7.Value or ""
        return { idx = j6, type = "Input", text = tostring(yH) }
    elseif Type == "ColorPicker" then
        return { idx = j6, type = "ColorPicker", value = j7.Value:ToHex(), transparency = j7.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = j6,
            type = "KeyPicker",
            mode = j7.Mode,
            key = j7.Value,
            modifiers = j7.Modifiers,
            toggled = j7.Toggled
        }
    else
        return nil
    end
end
function fns.fn461()
    return Options.PlantDelay.Value
end
function fns.fn467(P, Q)
    return string.format('<font color="%s">%s</font>', Q, P)
end
function fns.fn527()
    local w2 = pu(UpgradeNodeTreeRuntimeShared.RemoteNames.GetState, {})
    local w3 = type(w2) ~= "table" or w2.Success ~= true or type(w2.State) ~= "table"
    if w3 then
        return
    end
    local w3_1 = oD(w2.State.OwnedNodeIds)
    local w2_1 = UpgradeNodeTreeRuntimeShared.GetNodes()
    if type(w2_1) ~= "table" then
        return
    end
    local w4 = UpgradeNodeTreeRuntimeShared.GetPurchasableNodeIds(w3_1)
    if type(w4) ~= "table" then
        w4 = {}
        for k in w2_1 do
            local w5_1 = not w3_1[tostring(k)]
            if w5_1 ~= false then
                w5_1 = UpgradeNodeTreeRuntimeShared.IsPurchasableNode(k)
            end
            if w5_1 then
                w4[#w4 + 1] = k
            end
        end
    end
    for k, v in w4 do
        local w4_1 = tostring(v)
        if not w3_1[w4_1] then
            local w5_2 = w2_1[v] or w2_1[w4_1]
            if not not w5_2 then
                local w5_3 = UpgradeNodeTreeShared.ResolveNodePresentation(w5_2)
                local w6_1 = w5_3 and w5_3.price
                if not (type(w6_1) ~= "table") then
                    local w6_2 = tonumber(w6_1.quantity) or 0
                    local w6_3 = w6_1.currencyId or UpgradeNodeTreeShared.DefaultCurrencyId
                    local w6_4 = w6_2 > 0 and oL(w6_3) < w6_2
                    if not w6_4 then
                        local w5_6 = pu(UpgradeNodeTreeRuntimeShared.RemoteNames.Purchase, { NodeId = w4_1 })
                        local w4_2 = type(w5_6) == "table" and w5_6.Success == true
                        if w4_2 then
                            return
                        end
                    end
                end
            end
        end
    end
end
function fns.fn530()
    for k, v in oi() do
        local tp = v > 0 and op(k)
        if tp then
            return true
        end
    end
    return false
end
function fns.fn531(ds)
    local Value = Options.BuySeedTypes.Value
    if type(Value) ~= "table" then
        return true
    end
    local sF = false
    for k, v in Value do
        if v then
            sF = true
            break
        end
    end
    if not sF then
        return true
    end
    return Value[ds] == true
end
function fns.fn551()
    local uJ = oq()
    local uK = oH()
    local uL = not uK
    local uL_1
    local uM = not uJ or uL
    local uM_1
    if uM then
        return nil
    end
    uM_1, uL_1 = nil, nil
    for k, v in CollectionService:GetTagged("ChoppableTree") do
        if v:IsDescendantOf(uJ) then
            local uN = v:IsA("Model") and v:GetPivot().Position
            local uO = uN
            if not uO then
                local uN_1 = v:IsA("BasePart") and v.Position
                uO = uN_1
            end
            local uN_2 = uO
            if uN_2 then
                local Magnitude = (uN_2 - uK.Position).Magnitude
                if not uL_1 or Magnitude < uL_1 then
                    uM_1 = v
                    uL_1 = Magnitude
                end
            end
        end
    end
    return uM_1, uL_1
end
function fns.fn570()
    return Workspace:FindFirstChild("ClientTreeDropEffects_" .. LocalPlayer.UserId)
end
function fns.onCopySolanaAddress()
    pp(o4, "Copied Solana address")
end
function fns.fn587(bS)
    local sa = ou(bS)
    if not sa then
        return nil
    end
    return pu(ButtonActions.PurchaseRemote, { Action = bS, Button = sa })
end
local function onCopyLitecoinAddress()
    pp(pi, "Copied Litecoin address")
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in Character:GetDescendants() do
                local xI_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if xI_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn626()
    if not Toggles.WalkSpeedEnabled.Value then
        local x9 = oV()
        if x9 then
            x9.WalkSpeed = 16
        end
    end
end
local function onRenderStepped(i1)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local xY_1 = oV()
        if xY_1 then
            xY_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local xY_3 = oH()
        local xZ = oV()
        if xY_3 and xZ then
            xZ.PlatformStand = true
            local xZ_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                xZ_1 += CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                xZ_1 -= CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                xZ_1 -= CurrentCamera2.CFrame.RightVector
            end
            local x3 = if UserInputService:IsKeyDown(Enum.KeyCode.D) then 1 else 0
            if x3 == 1 then
                xZ_1 += CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                xZ_1 += Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                xZ_1 -= Vector3.new(0, 1, 0)
            end
            xY_3.AssemblyLinearVelocity = Vector3.zero
            if xZ_1.Magnitude > 0 then
                xY_3.CFrame = xY_3.CFrame + xZ_1.Unit * Options.FlySpeed.Value * i1
            end
        end
    end
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local yy = tick() - pE
            local yz = tick() - pA
            if yy >= 300 and yz >= 60 then
                pcall(pj)
            else
                if yy < 300 and yz >= 300 then
                    pcall(pj)
                end
            end
        end
    end
end
local function fn652()
    local yN = {}
    for k, v in { Toggles, Options } do
        for k, v in v do
            local yO = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if yO then
                local yO_1 = o7(k, v)
                if yO_1 then
                    yN[#yN + 1] = yO_1
                end
            end
        end
    end
    table.sort(yN, function(kl, km)
        if kl.type ~= km.type then
            return kl.type < km.type
        end
        return kl.idx < km.idx
    end)
    return { objects = yN }
end
local function fn656()
    pp(pa, "Copied Discord invite to clipboard")
end
local function onInputBegan()
    pE = tick()
end
local function fn667()
    local wM = oq()
    if not wM then
        return
    end
    local wN = (tonumber(wM:GetAttribute("ItemShelfUnlockedCount")))
    local wR = if wN then 1 else 0
    local wP = 2418 * wR + 1506 * (1 - wR)
    local wQ = 3737 * wR + 298 * (1 - wR)
    if not ((wP * 810 + wQ * 2713 + wP * wQ) % 16777213 == 4355914) then
        wN = 1
    end
    local wM_1 = wN
    local wN_1 = math.clamp(Options.BuyShelfMax.Value, 1, ItemShelfConfig.MaxShelves)
    if wM_1 >= wN_1 then
        return
    end
    local wN_2 = ItemShelfConfig.GetCost(wM_1 + 1)
    if type(wN_2) ~= "number" then
        return
    end
    if pn() < wN_2 + Options.BuyShelfKeepCash.Value then
        return
    end
    ps(ButtonActions.BuyItemShelfAction)
end
local function fn699()
    local v2 = {}
    local v3 = {}
    local PlayerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
    if not PlayerGui then
        return v3
    end
    for i, descendant in PlayerGui:GetDescendants() do
        local attr = descendant:GetAttribute("InventoryKey")
        local v5 = type(attr) == "string" and string.sub(attr, 1, 7) == "Carved:"
        if v5 then
            local v5_1 = string.sub(attr, 8)
            if not v2[v5_1] then
                v2[v5_1] = true
                v3[#v3 + 1] = v5_1
            end
        end
    end
    return v3
end
local function onExportConfigToClipboard()
    local za_1
    local y9_1
    y9_1, za_1 = pcall(HttpService.JSONEncode, HttpService, oP())
    if not y9_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local y9_2 = setclipboard or toclipboard
    local y9_3 = type(y9_2) ~= "function" or not pcall(y9_2, za_1)
    if y9_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function fn741()
    local u7 = oq()
    if not u7 then
        return nil
    end
    for i, descendant in u7:GetDescendants() do
        local u7_1 = descendant:IsA("ProximityPrompt") and descendant.Name == "WoodLathePrompt"
        if u7_1 then
            return oZ(descendant.Parent)
        end
    end
    return nil
end
local function onImportConfigFromClipboardTex()
    local zf_1
    local zd = Options.SaveManager_ImportSource.Value or ""
    local zd_1
    local ze = tostring(zd):match("^%s*(.-)%s*$")
    if ze == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    zd_1, zf_1 = pcall(HttpService.JSONDecode, HttpService, ze)
    local ze_1 = not zd_1 or type(zf_1) ~= "table" or type(zf_1.objects) ~= "table"
    if ze_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local zd_2 = 0
    for k, v in zf_1.objects do
        if pw(v) then
            zd_2 += 1
        end
    end
    if zd_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local zf_2 = zd_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(zd_2, zf_2), 6)
end
local function fn750()
    local wd = oq()
    if not wd then
        return
    end
    local SaleSpots = wd:FindFirstChild("SaleSpots", true)
    if not SaleSpots then
        return
    end
    local wf = pm()
    local wg = 1
    for i, child in SaleSpots:GetChildren() do
        local we_1 = child:GetAttribute("SaleSpot") == true and child:GetAttribute("Occupied") ~= true
        if we_1 then
            local we_2 = wf[wg]
            if not we_2 then
                return
            end
            wg += 1
            pu("PlaceCarvedWoodOnSaleSpot", { SpotName = child.Name, TycoonName = wd.Name, WoodId = we_2 })
        end
    end
end
local function fn754()
    local wS = oq()
    if not wS then
        return
    end
    local wT = tonumber(wS:GetAttribute("PlanterCount")) or 1
    local wT_1 = math.clamp(Options.BuyPlanterMax.Value, 1, ButtonActions.MaxPlanters)
    if wT >= wT_1 then
        return
    end
    local wT_2 = ButtonActions.GetPlanterCost(wT)
    if type(wT_2) ~= "number" then
        return
    end
    if pn() < wT_2 + Options.BuyPlanterKeepCash.Value then
        return
    end
    ps(ButtonActions.BuyPlanterAction)
end
local function fn757(dl)
    local Value = Options.PlantSeeds.Value
    if type(Value) ~= "table" then
        return true
    end
    local sw = false
    for k, v in Value do
        if v then
            sw = true
            break
        end
    end
    if not sw then
        return true
    end
    return Value[dl] == true
end
local function fn764()
    local vf = ox()
    if not vf then
        return
    end
    local vf_1 = oI("AxeController")
    local vg = vf_1 and type(vf_1.Equip) == "function"
    if vg then
        if not vf_1.Equipped then
            vf_1:Equip(vf_1:GetPreferredAxeId())
            task.wait(0.2)
        end
        if vf_1.Equipped and vf_1.EquippedTool and vf_1.Character and vf_1.EquippedTool.Parent == vf_1.Character then
            local vg_2 = type(vf_1.PlayNextSwing) == "function" and not vf_1.Swinging
            if vg_2 then
                vf_1:PlayNextSwing()
                return
            end
        end
    end
    local vg_3 = LocalPlayer:GetAttribute("EquippedAxeId") or "BronzeAxe"
    local vh = tostring(vg_3)
    local vg_4 = oV()
    local Character = LocalPlayer.Character
    local vj
    if vf_1 and vf_1.EquippedTool then
        vj = vf_1.EquippedTool
        local vf_2 = vj:GetAttribute("AxeId") or vh
        vh = tostring(vf_2)
    elseif Character then
        for i, child in Character:GetChildren() do
            local vf_3 = child:IsA("Tool") and child:GetAttribute("AxeId")
            if vf_3 then
                vj = child
                vh = tostring(child:GetAttribute("AxeId"))
                break
            end
        end
        if not vj then
            local Backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
            if Backpack then
                for i, child in Backpack:GetChildren() do
                    local vf_5 = child:IsA("Tool") and child:GetAttribute("AxeId")
                    if vf_5 then
                        vj = child
                        vh = tostring(child:GetAttribute("AxeId"))
                        break
                    end
                end
            end
        end
    end
    if vg_4 and vj and vj.Parent ~= Character then
        vg_4:EquipTool(vj)
        task.wait(0.1)
    end
    oS("AxeEquip", { Equipped = true, AxeId = vh })
    oS("AxeHit", { SwingIndex = ow, AxeId = vh })
    ow = ow % 2 + 1
end
local function fn766(f3)
    local vE = f3.Cylinder and f3.Cylinder.Profile
    local TargetProfile = f3.TargetProfile
    local vG = type(vE) ~= "table" or type(TargetProfile) ~= "table"
    if vG then
        return false
    end
    local vG_1 = nil
    if type(TargetProfile.GetProfile) == "function" then
        vG_1 = TargetProfile:GetProfile()
    elseif type(TargetProfile.Profile) == "table" then
        vG_1 = TargetProfile.Profile
    end
    local vE_2 = type(vG_1) ~= "table" or type(vG_1.GetRadiiCopy) ~= "function" or type(vE.LoadRadii) ~= "function"
    if vE_2 then
        return false
    end
    local vE_3 = vG_1:GetRadiiCopy()
    if type(vE_3) ~= "table" then
        return false
    end
    vE:LoadRadii(vE_3)
    f3.HasModifiedWood = true
    if type(f3.GetAccuracyCalculator) == "function" then
        local vE_4 = f3:GetAccuracyCalculator()
        if vE_4 then
            if type(vE_4.SetProfiles) == "function" then
                vE_4:SetProfiles(vE, vG_1)
            end
            if type(vE_4.Calculate) == "function" then
                vE_4:Calculate()
            end
        end
    end
    return f3:HasModifiedCurrentWood() == true
end
local function fn773()
    local Character = LocalPlayer.Character
    local sf = Character and Character:FindFirstChildOfClass("Humanoid")
    return sf
end
local function onInputChanged(jK)
    local UserInputType = jK.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        pE = tick()
    end
end
local function fn786()
    return true
end
local function worker()
    local st_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local ss = math.floor(os.clock() - oC)
        if ss < 60 then
            st_1 = ss .. "s"
        elseif ss < 3600 then
            st_1 = string.format("%dm %ds", ss // 60, ss % 60)
        else
            st_1 = string.format("%dh %dm", ss // 3600, ss % 3600 // 60)
        end
        Label:SetText(oN("Session time", st_1, oo))
    end
end
local function fn828()
    return of() ~= nil
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            oQ(true)
        end
    end
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local xQ_1 = oV()
        if xQ_1 then
            xQ_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function worker2()
    while not Library.Unloaded do
        local xr = false
        local xs = {}
        for k, v in oy do
            if Toggles[v.toggle].Value then
                xr = true
                if v.work() then
                    xs[#xs + 1] = v
                end
            end
        end
        if #xs == 0 then
            local xr_1 = xr and "Waiting for trees" or "Idle"
            Label2:SetText(oN("Status", xr_1, oj))
            task.wait(0.5)
        else
            ot = ot % #xs + 1
            local xr_2 = xs[ot]
            Label2:SetText(oN("Status", xr_2.name, oz))
            if Toggles[xr_2.teleport].Value then
                local xs_1 = xr_2.target()
                local xt_2 = typeof(xs_1) == "Instance" and oZ(xs_1)
                local xu = xt_2
                if not xu then
                    local xt_3 = typeof(xs_1) == "Vector3" and xs_1
                    xu = xt_3
                end
                local xs_2 = xu
                local xt_4 = oH()
                if xu then
                    xu = xt_4
                end
                if xu then
                    xt_4.CFrame = CFrame.new(xs_2 + Vector3.new(0, 3, 5))
                end
            end
            pcall(xr_2.run)
            task.wait(xr_2.delay())
        end
    end
end
local function fn906(I, J)
    if setclipboard then
        setclipboard(I)
    elseif toclipboard then
        toclipboard(I)
    end
    Library:Notify(J)
end
local function autoShelfLoop()
    while not Library.Unloaded do
        task.wait(Options.ShelfDelay.Value)
        if Toggles.AutoShelf.Value then
            pcall(oK)
        end
    end
end
local function fn957()
    local ut = oq()
    if not ut then
        return
    end
    local uu = oi()
    local uv
    for k, v in uu do
        local uu_1 = v > 0 and op(k)
        if uu_1 then
            uv = k
            break
        end
    end
    if not uv then
        return
    end
    for i, descendant in ut:GetDescendants() do
        local uu_2 = descendant:GetAttribute("TreePlanter") == true and descendant:GetAttribute("TreePlanterStatus") == "Empty"
        if uu_2 then
            local uu_3 = tonumber(descendant:GetAttribute("PlanterIndex"))
            if uu_3 then
                pu("PlantSeedFromInventory", { PlanterIndex = uu_3, TreeType = uv, TycoonName = ut.Name })
                return
            end
        end
    end
end
local function fn969()
    return Options.ChopDelay.Value
end
local function autoRollDelayLoop()
    while not Library.Unloaded do
        task.wait(Options.AutoRollDelay.Value)
        if Toggles.AutoRoll.Value then
            pcall(oA)
        elseif Toggles.AutoBuyRoll.Value then
            pcall(oe)
        end
    end
end
local function fn997(cb)
    local DiscordGroup = cb:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = pd })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = pd })
end
local function fn1007()
    local xp = oO() ~= nil and o_()
    return xp
end
local function fn1020()
    return Options.CarveDelay.Value
end
local function fn1056(fs)
    if fs:IsA("Model") then
        return fs:GetPivot().Position
    elseif fs:IsA("BasePart") then
        return fs.Position
    else
        return nil
    end
end
local function fn1058()
    local so_1
    local sn_1
    if identifyexecutor then
        so_1, sn_1 = identifyexecutor()
        local sp = so_1 ~= ""
        local sq = type(so_1) == "string" and sp
        if sq then
            local sp_1 = type(sn_1) == "string" and sn_1 ~= "" and so_1 .. " " .. sn_1
            pq = sp_1 or so_1
        end
    end
end
local function fn1065()
    oQ(Toggles.AntiGameplayPause.Value)
end
local function fn1089()
    local wu = oI("SaleNPCs")
    local wv = not wu or type(wu.ActiveOffers) ~= "table"
    if wv then
        return
    end
    local wv_1 = tonumber(Options.MinOfferPay.Value) or 0
    local ww = {}
    for k, v in wu.ActiveOffers do
        local wv_2 = type(k) == "string" and type(v) == "table"
        if wv_2 then
            local wv_3 = pz(v)
            local wy = wv_3 ~= nil and wv_3 >= wv_1
            ww[k] = wy
        end
    end
    for k, v in ww do
        wu:RespondToOffer(k, v)
    end
end
local function fn1092()
    local uX = oq()
    if not uX then
        return nil
    end
    for i, descendant in uX:GetDescendants() do
        local uX_1 = descendant:GetAttribute("TreePlanter") == true and descendant:GetAttribute("TreePlanterStatus") == "Empty"
        if uX_1 then
            return descendant
        end
    end
    return nil
end
local function onCopyEthereumAddress()
    pp(pc, "Copied Ethereum address")
end
local function fn1132(jZ, j_)
    local yD_1 = (jZ == "Toggle" and Toggles or Options)[j_]
    local yC_2 = type(yD_1) == "table" and yD_1.Type == jZ
    return yC_2 and yD_1 or nil
end
local function fn1153()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local rT = leaderstats and leaderstats:FindFirstChild("Cash")
    if rT then
        local rT_1 = tonumber(rT.Value) or 0
        return rT_1
    end
    return 0
end
local function fn1157(gS)
    local Gui = gS.Gui
    if typeof(Gui) ~= "Instance" then
        return nil
    end
    local Offer = Gui:FindFirstChild("Offer", true)
    local wr_1 = not Offer or not Offer:IsA("TextLabel")
    if wr_1 then
        return nil
    end
    return tonumber(string.match(Offer.Text, "%$(%d+)"))
end
local function fn1161()
    local attr = LocalPlayer:GetAttribute("TycoonName")
    local Tycoons = Workspace:FindFirstChild("Tycoons")
    if not Tycoons then
        return nil
    end
    local rG = attr ~= ""
    local rH = type(attr) == "string" and rG
    if rH then
        local rG_1 = Tycoons:FindFirstChild(attr)
        if rG_1 then
            return rG_1
        end
        local UserId = LocalPlayer.UserId
        for i, child in Tycoons:GetChildren() do
            if child:GetAttribute("OwnerUserId") == UserId then
                return child
            end
        end
        return nil
    end
    local UserId = LocalPlayer.UserId
    for i, child in Tycoons:GetChildren() do
        if child:GetAttribute("OwnerUserId") == UserId then
            return child
        end
    end
    return nil
end
local function onCopyPayPalLink()
    pp(oY, "Copied PayPal link")
end
Library = nil
oe = nil
of = nil
og = nil
oh = nil
oi = nil
oj = nil
ol = nil
om = nil
oo = nil
op = nil
oq = nil
ot = nil
ou = nil
ov = nil
ow = nil
ox = nil
oy = nil
oz = nil
oA = nil
oC = nil
oD = nil
oE = nil
CurrentCamera2 = nil
UpgradeNodeTreeShared = nil
oH = nil
oI = nil
UpgradeNodeTreeRuntimeShared = nil
oK = nil
oL = nil
Serializer = nil
oN = nil
oO = nil
oP = nil
oQ = nil
oR = nil
oS = nil
Label2 = nil
ItemShelfConfig = nil
oV = nil
oW = nil
oX = nil
oY = nil
oZ = nil
o_ = nil
ButtonActions = nil
o1 = nil
Label = nil
o3 = nil
local oB
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
pe = nil
pf = nil
LocalPlayer = nil
ph = nil
pi = nil
pj = nil
Workspace = nil
CollectionService = nil
pm = nil
pn = nil
HttpService = nil
pp = nil
pq = nil
VirtualUser = nil
ps = nil
Options = nil
pu = nil
pv = nil
pw = nil
UserInputService = nil
Toggles = nil
pz = nil
pA = nil
pC = nil
SaveManager = nil
pE = nil
ReplicatedStorage = nil
local pB
pB = nil
local qh, MenuGroup
ReplicatedStorage, UserInputService, VirtualUser, HttpService, CollectionService, Workspace, LocalPlayer, pa, o5, ButtonActions, ItemShelfConfig, Serializer, UpgradeNodeTreeRuntimeShared, UpgradeNodeTreeShared = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local zt_17 = game:GetService("Players")
ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
CollectionService = game:GetService("CollectionService")
Workspace = game:GetService("Workspace")
LocalPlayer = zt_17.LocalPlayer
local zt_6 = "Carve Wood"
pa = "https://discord.gg/ehKVq7pf7v"
o5 = "https://rscripts.net/@Ouroboros"
ButtonActions = require(ReplicatedStorage:WaitForChild("Shared"):WaitForChild("ButtonActions"))
ItemShelfConfig = require(ReplicatedStorage:WaitForChild("Shared"):WaitForChild("ItemShelfConfig"))
local zt_30 = require(ReplicatedStorage:WaitForChild("Shared"):WaitForChild("WoodEconomy"))
Serializer = require(ReplicatedStorage:WaitForChild("Shared"):WaitForChild("WoodCarving"):WaitForChild("Serializer"))
UpgradeNodeTreeRuntimeShared = require(ReplicatedStorage:WaitForChild("Shared"):WaitForChild("UpgradeNodeTreeRuntimeShared"))
UpgradeNodeTreeShared = require(ReplicatedStorage:WaitForChild("Shared"):WaitForChild("UpgradeNodeTreeShared"))
local zt_19 = {}
local zt_21 = {}
for k, v in zt_30.TreeTypesByRarity do
    for k, v in v do
        if not zt_21[v] then
            zt_21[v] = true
            zt_19[#zt_19 + 1] = v
        end
    end
end
table.sort(zt_19)
Library, SaveManager, Toggles, Options, oz, oo, oj, o3, ow, zt_4, pp, pd, o1, oN, og, oX, oB, pu, oS, om, oI, oq, pn, o9, oL, ou, ps, pb, oV, oH, zt_21 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
pp = fn906
pd = fn656
o1 = fns.fn467
oN = fns.fn308
if ((oX or not oX or (pu or og)) and (not oX and oS and (og or not og)) or (oX or not oX or (oX or not oX)) and (not oX and not og and (pu or not og))) and (false and not oX and (not oX or false) or (false or og and not oX) or (oX and pu or false or false and (false or not og))) and not (((oX or not oX or (pu or og)) and (not oX and oS and (og or not og)) or (oX or not oX or (oX or not oX)) and (not oX and not og and (pu or not og))) and (false and not oX and (not oX or false) or (false or og and not oX) or (oX and pu or false or false and (false or not og)))) then
    o9 = "#7fd47f"
else
    oz = "#7fd47f"
end
local zt_35 = "#6ec1ff"
oo = "#e8a34d"
oj = "#8b93a3"
og = fns.fn146
oX = fns.fn265
oB = fns.fn262
pu = function(aF, aG)
    local rn
    rn = nil
    local rp_1
    rn = oB(aF)
    local ro = not rn or rn.ClassName ~= "RemoteFunction"
    local ro_1
    if ro then
        return nil
    end
    ro_1, rp_1 = pcall(function()
        local rl = aG or {}
        return rn:InvokeServer(rl)
    end)
    if ro_1 then
        return rp_1
    end
    return nil
end
oS = function(aP, aQ)
    local ru
    ru = nil
    ru = oB(aP)
    if not ru or ru.ClassName ~= "RemoteEvent" then
        return false
    end
    local rv_1 = pcall(function()
        local rs = aQ or {}
        ru:FireServer(rs)
    end)
    return rv_1
end
om = function()
    local rz = oX()
    if not rz then
        return nil
    elseif rz.__OuroborosNetPatched then
        return rz
    else
        rz.AskServer = function(a_, a0, a1, a2)
            task.spawn(function()
                local rx = pu(a0, a1)
                if type(a2) == "function" then
                    a2(rx)
                end
            end)
        end
        rz.TellServer = function(ba, bb, bc)
            oS(bb, bc)
        end
        rz.__OuroborosNetPatched = true
        return rz
    end
end
oI = fns.fn16
om()
oq = fn1161
if (not oN or oN) and (not pb and pb) and (zt_21 or oN or (oN or not oN)) and ((not oN or not oN or not pb and zt_21) and (not oN or zt_21 or not zt_21 and not oN)) or (pb and not pb or pb and oN or (not zt_21 and not zt_21 or (not pb or oN))) and ((not oN or oN) and (not zt_21 and pb) or oN and not pb and (zt_21 or not oN)) or not ((not oN or oN) and (not pb and pb) and (zt_21 or oN or (oN or not oN)) and ((not oN or not oN or not pb and zt_21) and (not oN or zt_21 or not zt_21 and not oN)) or (pb and not pb or pb and oN or (not zt_21 and not zt_21 or (not pb or oN))) and ((not oN or oN) and (not zt_21 and pb) or oN and not pb and (zt_21 or not oN))) then
    pn = fn1153
end
o9 = fns.fn278
oL = fns.fn256
ou = fns.fn122
ps = fns.fn587
pb = fns.fn126
oV = fn773
oH = fns.fn410
ow = 1
if zt_21 and ThemeManager and (not ThemeManager or false) and (ThemeManager and ThemeManager and false) and (not zt_21 and not ThemeManager and (not ThemeManager and 1) or 1) and (((not zt_21) and (not zt_21)) or (ThemeManager and not zt_21 and (not ThemeManager or not zt_21) or (not zt_21 or false or (not ThemeManager or not zt_21)))) and not (zt_21 and ThemeManager and (not ThemeManager or false) and (ThemeManager and ThemeManager and false) and (not zt_21 and not ThemeManager and (not ThemeManager and 1) or 1) and (((not zt_21) and (not zt_21)) or (ThemeManager and not zt_21 and (not ThemeManager or not zt_21) or (not zt_21 or false or (not ThemeManager or not zt_21))))) then
    zt_6 = pa:CreateWindow({
        Icon = 78539693571783,
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = Library, Copyable = true }, zt_4, "|" },
        Title = "Ouroboros",
        ShowCustomCursor = false,
        NotifySide = "Right",
        CornerRadius = 0
    })
else
    zt_4 = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = pa, Copyable = true }, "|", zt_6 },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0
    })
end
local zt_8 = {
    Info = zt_4:AddTab("Info", "info"),
    Main = zt_4:AddTab("Main", "axe"),
    Player = zt_4:AddTab("Player", "person-standing"),
    Settings = zt_4:AddTab("Settings", "settings")
}
if zt_21 and (og or false) and 23 and (not oX and not oX or 23 or (not og) and (oS or oX)) or (og and oS and (not og and zt_21) or (og or not zt_21) or false and not og and (oN and oX) and (oN and not oX)) or not (zt_21 and (og or false) and 23 and (not oX and not oX or 23 or (not og) and (oS or oX)) or (og and oS and (not og and zt_21) or (og or not zt_21) or false and not og and (oN and oX) and (oN and not oX))) then
    zt_21 = fn997
else
    oI = fn997
end
for k, v in zt_8 do
    zt_21(v)
end
pq, GameInfoGroup, Label, oW, zt_30 = nil, nil, nil, nil, nil
zt_17 = 7
repeat
    zt_21 = (zt_17 * 2 + 1) % 3 + 1
    if zt_21 <= 2 then
        if zt_21 <= 1 then
            zt_21 = (vector.create((zt_17 * 1 + 1) % 11 + 1, (zt_17 * 8 + 8) % 13 + 1, (zt_17 * 8 + 12) % 17 + 1))
            zt_37 = (vector.create((zt_17 * 4 + 5) % 11 + 1, (zt_17 * 4 + 6) % 13 + 1, (zt_17 * 12 + 5) % 17 + 1))
            zt_25 = (vector.create((zt_17 * 2 + 4) % 11 + 1, (zt_17 * 2 + 8) % 13 + 1, (zt_17 * 13 + 13) % 17 + 1))
            zt_13 = (vector.create((zt_17 * 5 + 5) % 11 + 1, (zt_17 * 11 + 8) % 13 + 1, (zt_17 * 3 + 6) % 17 + 1))
            if vector.dot(vector.cross(zt_21, zt_37), (vector.cross(zt_25, zt_13))) == vector.dot(zt_21, zt_25) * vector.dot(zt_37, zt_13) - vector.dot(zt_21, zt_13) * vector.dot(zt_37, zt_25) then
                pq = "Unknown"
                pcall(fn1058)
                zt_4 = zt_8.Info:AddLeftGroupbox("Account", "circle-user")
                zt_4:AddLabel(oN("User", LocalPlayer.Name, oz), true)
                zt_4:AddLabel(oN("Status", "Keyless", oz), true)
                zt_4:AddLabel(oN("Executor", pq, oz), true)
                GameInfoGroup = zt_8.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                GameInfoGroup:AddLabel(o1(zt_6 .. " [" .. tostring(game.PlaceId) .. "]", zt_35), true)
                GameInfoGroup:AddLabel(oN("Place ID", tostring(game.PlaceId), zt_35), true)
                Label = GameInfoGroup:AddLabel(oN("Session time", "0s", oo), true)
            else
                pcall(fn1058)
                oo = Label.Info:AddLeftGroupbox("Account", "circle-user")
                oo:AddLabel(GameInfoGroup("User", o1.Name, zt_6), true)
                oo:AddLabel(GameInfoGroup("Status", "Keyless", zt_6), true)
                oo:AddLabel(GameInfoGroup("Executor", "Unknown", zt_6), true)
                oz = Label.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                oz:AddLabel(LocalPlayer(zt_35 .. " [" .. tostring(game.PlaceId) .. "]", pq), true)
                oz:AddLabel(GameInfoGroup("Place ID", tostring(game.PlaceId), pq), true)
                oN = oz:AddLabel(GameInfoGroup("Session time", "0s", zt_8), true)
            end
            zt_17 = (zt_17 + 20) % 24
        else
            zt_21 = (vector.create((zt_17 * 7 + 6) % 11 + 1, (zt_17 * 2 + 4) % 13 + 1, (zt_17 * 14 + 11) % 17 + 1))
            local As = vector.floor(zt_21) + vector.ceil(zt_21 * -1)
            if vector.dot(As, As) == 5 then
                zt_30 = tostring(game.JobId)
            else
                oW = tostring(game.JobId)
            end
            zt_17 = (zt_17 + 17) % 24
        end
    else
        local Ap = bit32.rrotate(bit32.bxor(bit32.lrotate(zt_17, 13), string.byte(tostring(oW))), 29)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Ap, 231018569), 4072515882), (bit32.bxor(bit32.band(Ap, 4063948726), 3271442610))), 4072515882), 3271442610) ~= Ap then
            oW = #zt_30 > 18
        else
            zt_30 = #oW > 18
        end
        zt_17 = (zt_17 + 20) % 24
    end
until (zt_17 * 5 + 7) % 24 == 15
if zt_30 then
    zt_17 = 4
    repeat
        zt_4 = (vector.create((zt_17 * 5 + 3) % 11 + 1, (zt_17 * 11 + 12) % 13 + 1, (zt_17 * 5 + 15) % 17 + 1))
        zt_21 = (vector.create((zt_17 * 4 + 2) % 11 + 1, (zt_17 * 9 + 12) % 13 + 1, (zt_17 * 3 + 9) % 17 + 1))
        local AD = vector.dot(zt_4, zt_21)
        if AD * AD <= vector.dot(zt_4, zt_4) * vector.dot(zt_21, zt_21) then
            zt_30 = string.sub(oW, 1, 18) .. "..."
        else
            oW = string.sub(zt_30, 1, 18) .. "..."
        end
        zt_17 = (zt_17 + 4) % 8
    until (zt_17 * 3 + 4) % 8 == 4
end
zt_17 = zt_30 or oW
oC, pi, pe, pc, o6, o4, oY, oR, Label2, oy, ot, FlyGroup, CurrentCamera2, MenuGroup, pE, pA, qh, op, pv, o8, oi, o_, oE, ov, of, oe, oA, zt_24, ox, oZ, oO, pC, pm, oK, pz, ph, ol, pf, oD, oh, oQ, pj, pB, o7, oP, pw = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local zt_18 = zt_17
GameInfoGroup:AddLabel(oN("Server", zt_18, oj), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
oC = os.clock()
task.spawn(worker)
local ScriptsGroup = zt_8.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(o1("Included in this hub", oj), true)
ScriptsGroup:AddLabel(o1(zt_6, zt_35), true)
local FeaturesGroup = zt_8.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(o1("Automation", zt_35), true)
FeaturesGroup:AddLabel(o1("Shop", oo), true)
FeaturesGroup:AddLabel(o1("Player", oj), true)
local SocialsGroup = zt_8.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = pd })
SocialsGroup:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
local OuroborosHubGroup = zt_8.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = pd })
pi = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
pe = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
pc = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
o6 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
o4 = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
oY = "https://paypal.me/TheTruckerGOD"
oR = "https://venmo.com/u/miserablemusic"
zt_5, zt_2, zt_27, zt_15, zt_39, zt_25, zt_30 = "#345d9d", "#f7931a", "#627eea", "#26a17b", "#14f195", "#0070ba", "#008cff"
zt_4 = zt_8.Info:AddRightGroupbox("Donations", "heart")
zt_4:AddLabel(o1("All donations are optional but appreciated.", oo), true)
zt_4:AddLabel(o1("If you donate you get a special role, just PING after you donate.", oz), true)
zt_4:AddDivider()
zt_4:AddLabel(o1("LTC / Litecoin", zt_5), true)
zt_4:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
zt_4:AddLabel(o1("BTC / Bitcoin", zt_2), true)
zt_4:AddButton({ Text = "Copy Bitcoin Address", Func = fns.onCopyBitcoinAddress })
zt_4:AddLabel(o1("ETH / Ethereum", zt_27), true)
zt_4:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
zt_4:AddLabel(o1("USDT", zt_15), true)
zt_4:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
zt_4:AddLabel(o1("Solana", zt_39), true)
zt_4:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
zt_4:AddLabel(o1("PayPal", zt_25), true)
zt_4:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
zt_4:AddLabel(o1("Venmo", zt_30), true)
zt_4:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
zt_4:AddDivider()
zt_4:AddLabel(o1("Don't have any of the listed currencies but still wanna donate?", oj), true)
zt_4:AddLabel(o1("DM me and we'll work something out.", zt_35), true)
local FaqGroup = zt_8.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutomationGroup = zt_8.Main:AddLeftGroupbox("Automation", "activity")
Label2 = AutomationGroup:AddLabel(oN("Status", "Idle", oj), true)
local SeedRollGroup = zt_8.Main:AddLeftGroupbox("Seed Roll", "dices")
SeedRollGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
SeedRollGroup:AddSlider("AutoRollDelay", { Text = "Roll Delay", Default = 2.5, Min = 1, Max = 10, Rounding = 1, Suffix = "s" })
SeedRollGroup:AddToggle("AutoBuyRoll", { Text = "Auto Buy Roll", Default = false })
SeedRollGroup:AddSlider("BuyRollMax", { Text = "Max Rollers", Default = 6, Min = 1, Max = ButtonActions.MaxSeedRerollers, Rounding = 0 })
SeedRollGroup:AddSlider("BuyRollKeepCash", { Text = "Keep Cash", Default = 0, Min = 0, Max = 100000, Rounding = 0 })
SeedRollGroup:AddToggle("AutoBuySeed", { Text = "Auto Buy Seed", Default = false })
SeedRollGroup:AddDropdown("BuySeedTypes", { Text = "Seeds", Values = zt_19, Default = {}, Multi = true, Searchable = true, AllowNull = true })
local PlantGroup = zt_8.Main:AddLeftGroupbox("Plant", "sprout")
PlantGroup:AddToggle("AutoPlant", { Text = "Auto Plant Seed", Default = false })
PlantGroup:AddDropdown("PlantSeeds", { Text = "Seeds", Values = zt_19, Default = {}, Multi = true, Searchable = true, AllowNull = true })
PlantGroup:AddToggle("AutoPlantTeleport", { Text = "Teleport To Planters", Default = true })
PlantGroup:AddSlider("PlantDelay", { Text = "Plant Delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 1, Suffix = "s" })
local ChopGroup = zt_8.Main:AddRightGroupbox("Chop", "tree-deciduous")
ChopGroup:AddToggle("AutoChop", { Text = "Auto Chop Trees", Default = false })
ChopGroup:AddToggle("AutoChopTeleport", { Text = "Teleport To Trees", Default = true })
ChopGroup:AddToggle("AutoCollectDrops", { Text = "Auto Collect Tree Drops", Default = false })
ChopGroup:AddSlider("ChopDelay", { Text = "Chop Delay", Default = 0.35, Min = 0.1, Max = 2, Rounding = 2, Suffix = "s" })
local CarveGroup = zt_8.Main:AddRightGroupbox("Carve", "hammer")
CarveGroup:AddToggle("AutoCarve", { Text = "Auto Carve Wood", Default = false })
CarveGroup:AddToggle("AutoEnterLathe", { Text = "Auto Enter Lathe", Default = true })
CarveGroup:AddToggle("AutoCarveTeleport", { Text = "Teleport To Carver", Default = true })
CarveGroup:AddSlider("CarveDelay", { Text = "Carve Delay", Default = 0.75, Min = 0.2, Max = 5, Rounding = 2, Suffix = "s" })
local ShelvesGroup = zt_8.Main:AddLeftGroupbox("Shelves", "layout-grid")
ShelvesGroup:AddToggle("AutoShelf", { Text = "Auto Shelf Carved Wood", Default = false })
ShelvesGroup:AddSlider("ShelfDelay", { Text = "Shelf Delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 1, Suffix = "s" })
ShelvesGroup:AddToggle("AutoBuyShelves", { Text = "Auto Buy Shelves", Default = false })
ShelvesGroup:AddSlider("BuyShelfMax", {
    Text = "Max Shelves",
    Default = ItemShelfConfig.MaxShelves,
    Min = 1,
    Max = ItemShelfConfig.MaxShelves,
    Rounding = 0
})
ShelvesGroup:AddSlider("BuyShelfKeepCash", { Text = "Keep Cash", Default = 0, Min = 0, Max = 100000, Rounding = 0 })
zt_13 = zt_8.Main:AddRightGroupbox("Sell Offers", "hand-coins")
zt_13:AddToggle("AutoAcceptOffers", { Text = "Auto Accept Offers", Default = false })
zt_13:AddInput("MinOfferPay", { Text = "Decline Below", Numeric = true, Default = "0", Finished = true })
zt_21 = zt_8.Main:AddRightGroupbox("Shop", "shopping-cart")
zt_21:AddToggle("AutoBuyPlanters", { Text = "Auto Buy Planters", Default = false })
zt_21:AddSlider("BuyPlanterMax", {
    Text = "Max Planters",
    Default = ButtonActions.MaxPlanters,
    Min = 1,
    Max = ButtonActions.MaxPlanters,
    Rounding = 0
})
zt_21:AddSlider("BuyPlanterKeepCash", { Text = "Keep Cash", Default = 0, Min = 0, Max = 100000, Rounding = 0 })
zt_21:AddToggle("AutoBuyInvestor", { Text = "Auto Buy Investor Upgrades", Default = false })
zt_21:AddSlider("InvestorDelay", { Text = "Investor Delay", Default = 1, Min = 0.5, Max = 10, Rounding = 1, Suffix = "s" })
op = fn757
pv = fns.fn531
if (not pm and false or zt_15 and ov) and (not FlyGroup and pe or (pm or not pm)) and (zt_15 or not ov or not ov and false or (false or ov or (false or pm))) or (ov and pe or (not pm or false) or (pe or FlyGroup or not pm and pm)) and (not FlyGroup and not ov or FlyGroup and pe or false and (pe or ov)) or not ((not pm and false or zt_15 and ov) and (not FlyGroup and pe or (pm or not pm)) and (zt_15 or not ov or not ov and false or (false or ov or (false or pm))) or (ov and pe or (not pm or false) or (pe or FlyGroup or not pm and pm)) and (not FlyGroup and not ov or FlyGroup and pe or false and (pe or ov))) then
    o8 = fns.fn379
    oi = fns.fn324
    o_ = fns.fn530
    oE = fns.fn570
else
    oE = fns.fn379
    o8 = fns.fn324
    oi = fns.fn530
    o_ = fns.fn570
end
ov = fns.fn41
of = fns.fn330
oe = fns.fn349
oA = fns.fn190
if (false and not oK and (not oK or pe) and (not pj or SeedRollGroup or not pB and not oA) or (oK or oK or (oK or SeedRollGroup) or (false or not SeedRollGroup) and (false or not pB)) or (oK and pj or pe and oA) and ((SeedRollGroup or pB) and (oA and false)) and ("bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99" or not oK and pB or not SeedRollGroup and not pj and (not pj or false))) and not (false and not oK and (not oK or pe) and (not pj or SeedRollGroup or not pB and not oA) or (oK or oK or (oK or SeedRollGroup) or (false or not SeedRollGroup) and (false or not pB)) or (oK and pj or pe and oA) and ((SeedRollGroup or pB) and (oA and false)) and ("bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99" or not oK and pB or not SeedRollGroup and not pj and (not pj or false))) then
    oK = fn957
else
    zt_24 = fn957
end
ox = fns.fn551
oZ = fn1056
oO = fn1092
zt_37 = fn741
pC = fn766
pm = fn699
oK = fn750
pz = fn1157
ph = fn1089
ol = fn667
pf = fn754
do
    oD = fns.fn433
    oh = fns.fn527
    task.spawn(autoRollDelayLoop)
    task.spawn(fns.autoBuySeedLoop)
    task.spawn(fns.autoBuyShelvesLoop)
    oy = {
        {
            name = "Planting",
            toggle = "AutoPlant",
            teleport = "AutoPlantTeleport",
            target = oO,
            run = zt_24,
            work = fn1007,
            delay = fns.fn461
        },
        {
            name = "Chopping",
            toggle = "AutoChop",
            teleport = "AutoChopTeleport",
            target = ox,
            run = fn764,
            work = fns.fn72,
            delay = fn969
        },
        {
            name = "Carving",
            toggle = "AutoCarve",
            teleport = "AutoCarveTeleport",
            target = zt_37,
            run = fns.fn22,
            work = fn786,
            delay = fn1020
        },
        {
            name = "Collecting",
            toggle = "AutoCollectDrops",
            teleport = "AutoCollectDrops",
            target = of,
            run = fns.fn210,
            work = fn828,
            delay = fns.fn219
        }
    }
end
ot = 0
task.spawn(worker2)
task.spawn(autoShelfLoop)
task.spawn(fns.autoAcceptOffersLoop)
task.spawn(fns.autoBuyInvestorLoop)
local MovementGroup = zt_8.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
FlyGroup = zt_8.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera2 = Workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fns.fn149)
Toggles.WalkSpeedEnabled:OnChanged(fn626)
oQ = function(jm)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not jm)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not jm
        end
    end)
    if not jm then
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
if (qh and not oe and (fns.fn210 and fns.fn210) or (false or qh or (pv or false)) or ((pv or qh) and (not qh and not pv) or (false or oe or (not pv or pv)))) and ((false or not pv) and (false or qh) and (zt_37 or not qh or (not oe or not pv)) and ((false and not pv or (false or zt_37)) and (qh or not pv or false and qh))) or not ((qh and not oe and (fns.fn210 and fns.fn210) or (false or qh or (pv or false)) or ((pv or qh) and (not qh and not pv) or (false or oe or (not pv or pv)))) and ((false or not pv) and (false or qh) and (zt_37 or not qh or (not oe or not pv)) and ((false and not pv or (false or zt_37)) and (qh or not pv or false and qh)))) then
    Toggles.AntiGameplayPause:OnChanged(fn1065)
    task.spawn(antiGameplayPauseLoop)
    MenuGroup = zt_8.Settings:AddLeftGroupbox("Menu")
else
    MenuGroup.AntiGameplayPause:OnChanged(fn1065)
    task.spawn(antiGameplayPauseLoop)
    zt_8 = Toggles.Settings:AddLeftGroupbox("Menu")
end
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
pE = tick()
pA = tick()
pcall(function()
    for k, v in getconnections(LocalPlayer.Idled) do
        local ys = v
        pcall(function()
            ys:Disable()
        end)
    end
end)
pj = fns.fn389
UserInputService.InputBegan:Connect(onInputBegan)
UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(antiAfkLoop)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(zt_8.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/CarveWood")
qh = SaveManager:BuildConfigSection(zt_8.Settings)
SaveManager:LoadAutoloadConfig()
pB = fn1132
o7 = fns.fn435
oP = fn652
pw = function(ko)
    local y6
    y6 = nil
    local y7 = type(ko) ~= "table" or type(ko.idx) ~= "string" or type(ko.type) ~= "string" or SaveManager.Ignore[ko.idx]
    if y7 then
        return false
    end
    y6 = pB(ko.type, ko.idx)
    if not y6 then
        return false
    end
    local y7_1 = pcall(function()
        if ko.type == "Input" then
            if type(ko.text) ~= "string" then
                return
            end
            y6:SetValue(ko.text)
        elseif ko.type == "ColorPicker" then
            y6:SetValueRGB(Color3.fromHex(ko.value), ko.transparency)
        elseif ko.type == "KeyPicker" then
            y6:SetValue({ ko.key, ko.mode, ko.modifiers })
            if ko.mode == "Toggle" and ko.toggled ~= nil then
                y6.Toggled = ko.toggled
                y6:Update()
            end
        else
            y6:SetValue(ko.value)
        end
    end)
    return y7_1
end
qh:AddDivider()
qh:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
qh:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
qh:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
Library:OnUnload(fns.fn67)
