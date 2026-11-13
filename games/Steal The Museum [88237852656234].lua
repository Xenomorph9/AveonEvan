local fns = {}
local tw
local tV
local t0
local uI
local up
local tO
local Library
local uc
local tU
local uB
local ui
local uH
local tH
local Mutations
local to
local t5
local uN
local tu
local tT
local uA
local tA
local uG
local tG
local CoreGui
local tn
local worker
local tM
local ut
local tt
local ua
local tS
local Remotes
local tz
local tY
local tF
local connection2
local LocalPlayer
local uL
local tL
local Rarities
local CollectionService
local connection
local connection3
local Index
local tX
local tE
local Quality
local tl
local t2
local uK
local ur
local t8
local tQ
local tx
local ue
local tW
local uD
local tk
local t1
local uJ
local tJ
local State
local t7
local uP
function fns.fn6(dv)
    local x4 = not dv
    local x5 = {}
    if not x4 then
        x4 = type(dv.Artifacts) ~= "table"
    end
    if x4 then
        return x5
    end
    for k, v in pairs(dv.Artifacts) do
        local x4_1 = type(v) == "table" and v.State == "Inventory"
        if x4_1 then
            table.insert(x5, { Uid = k, Record = v, Score = tz(v) })
        end
    end
    table.sort(x5, function(dC, dD)
        return dC.Score > dD.Score
    end)
    return x5
end
function fns.fn9()
    connection3:Disconnect()
end
local function fn27(iM)
    State.AutoBuyMasks = iM == true
    if State.AutoBuyMasks then
        tG("AutoBuyMasks", 2, ui)
    end
end
local function fn53(ab)
    return type(ab) == "function"
end
local function fn72()
end
local function fn89()
    local wM = State.Profile
    local wQ = if wM then 1 else 0
    local wO = 1288 * wQ + 2061 * (1 - wQ)
    local wP = 2287 * wQ + 3736 * (1 - wQ)
    if not ((wO * 2961 + wP * 652 + wO * wP) % 16777213 == 8250548) then
        wM = worker()
    end
    return wM
end
local function fn102()
    local Character = LocalPlayer.Character
    local xf = Character and Character:FindFirstChildOfClass("Humanoid")
    return xf
end
local function fn157()
    if State.SellMode == "Sell Filtered" then
        tM()
    else
        tt()
    end
end
local function fn164(eg, eh)
    local yT = {}
    if not eg then
        return yT
    end
    local Slots = eg:FindFirstChild("Slots")
    if not Slots then
        return yT
    end
    local yV = uP(eh)
    for i, child in ipairs(Slots:GetChildren()) do
        local yU_1 = child:IsA("Model") and child:GetAttribute("SlotLocked") ~= true
        if yU_1 then
            local yU_2 = tonumber(child:GetAttribute("SlotIndex"))
            if yU_2 and not yV[yU_2] then
                local SpawnPart = child:FindFirstChild("SpawnPart", true)
                local yX = SpawnPart and SpawnPart:FindFirstChild("PlacePrompt")
                if SpawnPart and yX and yX.Enabled then
                    table.insert(yT, { Slot = child, Index = yU_2, Spawn = SpawnPart, Prompt = yX })
                end
            end
        end
    end
    table.sort(yT, function(ev, ew)
        return ev.Index < ew.Index
    end)
    return yT
end
local function onOnClientEvent2(b5)
    local wV = type(b5) ~= "table" or type(State.Profile) ~= "table"
    if wV then
        return
    end
    for k, v in pairs(b5) do
        State.Profile[k] = v
    end
end
local function fn190()
    gethui = tV
end
local function fn197()
    local Plots = uG:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    for i, child in ipairs(Plots:GetChildren()) do
        if child:GetAttribute("OwnerUserId") == LocalPlayer.UserId then
            return child
        end
    end
    return nil
end
local function fn244(jG, jH)
    local B9
    if tu(setclipboard) then
        B9 = setclipboard
    elseif tu(toclipboard) then
        B9 = toclipboard
    end
    if not B9 then
        Library:Notify("Clipboard unavailable")
        return
    end
    local Ca = pcall(B9, jG)
    if Ca then
        Library:Notify(jH)
    else
        Library:Notify("Failed to copy")
    end
end
local function fn271(be)
    local match = string.match
    local wb = be or ""
    local wc = match(tostring(wb), "^category_(%d+)_")
    local wa_1 = wc and tonumber(wc)
    return wa_1 or nil
end
local function fn291(aQ, aR, aS)
    table.clear(aQ)
    if type(aR) ~= "table" then
        return
    end
    if aR[1] ~= nil then
        for i, v in ipairs(aR) do
            local vS_1 = aS[v] or aS[tostring(v)]
            if vS_1 then
                aQ[v] = true
            end
        end
        return
    end
    for k, v in pairs(aR) do
        local vS_2 = v
        if vS_2 then
            local vT = aS[k] or aS[tostring(k)]
            vS_2 = vT
        end
        if vS_2 then
            aQ[k] = true
        end
    end
end
local function fn293(Y)
    local vI = typeof(cloneref) == "function" and typeof(Y) == "Instance"
    if vI then
        return cloneref(Y)
    end
    return Y
end
local function fn305(eM, eN)
    local zn = os.clock()
    local zp = zn + (eN or 4)
    while true do
        local zn_1 = tn() and os.clock() < zp
        if zn_1 then
            local zn_2 = worker()
            local zo_1 = zn_2 and zn_2.Artifacts and zn_2.Artifacts[eM]
            local zn_3 = zo_1
            if zo_1 then
                zo_1 = zn_3.State == "Inventory"
            end
            if zo_1 then
                return true
            end
            if not State.Carrying and zn_3 == nil then
                return false
            end
            task.wait(0.2)
            continue
        end
        break
    end
    return false
end
local function fn306(iZ)
    State.AutoCollectMoney = iZ == true
    if State.AutoCollectMoney then
        tG("AutoCollectMoney", 1, t5)
    end
end
local function fn338(jl)
    local B1 = {}
    for i, v in ipairs(uc) do
        B1[v] = true
    end
    t1(State.SellRarities, jl, B1)
end
local function fn374()
    connection2:Disconnect()
end
local function fn375(g3)
    if not g3 then
        return nil
    end
    local Treadmill = g3:FindFirstChild("Treadmill")
    if not Treadmill then
        return nil
    end
    local AN = ue()
    local AN_11
    local AO = AN and AN.Unlocks and tonumber(AN.Unlocks.TreadmillLevel)
    if AO then
        local AO_1 = Treadmill:FindFirstChild(tostring(AO))
        if AO_1 then
            local AN_2 = (AO_1:FindFirstChild("StandPart", true))
            local AS = if AN_2 then 1 else 0
            local AQ = 3937 * AS + 3196 * (1 - AS)
            local AR = 1718 * AS + 1791 * (1 - AS)
            if not ((AQ * 3228 + AR * 2102 + AQ * AR) % 16777213 == 6306425) then
                AN_2 = AO_1:FindFirstChild("Hitbox", true)
            end
            local AO_2 = AN_2
            if AN_2 then
                AN_2 = AO_2:IsA("BasePart")
            end
            if AN_2 then
                return AO_2
            end
            for i, child in ipairs(Treadmill:GetChildren()) do
                local AN_3 = child:IsA("Model") and child.Name ~= "UpgradeSign"
                if AN_3 then
                    local AN_4 = child:FindFirstChild("StandPart", true) or child:FindFirstChild("Hitbox", true)
                    local AO_3 = AN_4
                    if AN_4 then
                        AN_4 = AO_3:IsA("BasePart")
                    end
                    if AN_4 then
                        return AO_3
                    end
                end
            end
            local AN_5 = Treadmill:FindFirstChild("StandPart", true) or Treadmill:FindFirstChild("Hitbox", true)
            if AN_11 then
                AN_5:IsA("BasePart")
            end
            if AN_11 then
                return AN_5
            end
            return nil
        end
        for i, child in ipairs(Treadmill:GetChildren()) do
            local AN_6 = child:IsA("Model") and child.Name ~= "UpgradeSign"
            if AN_6 then
                local AN_7 = child:FindFirstChild("StandPart", true) or child:FindFirstChild("Hitbox", true)
                local AO_4 = AN_7
                if AN_7 then
                    AN_7 = AO_4:IsA("BasePart")
                end
                if AN_7 then
                    return AO_4
                end
            end
        end
        local AN_8 = Treadmill:FindFirstChild("StandPart", true) or Treadmill:FindFirstChild("Hitbox", true)
        if AN_11 then
            AN_8:IsA("BasePart")
        end
        if AN_11 then
            return AN_8
        end
        return nil
    end
    for i, child in ipairs(Treadmill:GetChildren()) do
        local AN_9 = child:IsA("Model") and child.Name ~= "UpgradeSign"
        if AN_9 then
            local AN_10 = child:FindFirstChild("StandPart", true) or child:FindFirstChild("Hitbox", true)
            local AO_5 = AN_10
            if AN_10 then
                AN_10 = AO_5:IsA("BasePart")
            end
            if AN_10 then
                return AO_5
            end
        end
    end
    AN_11 = Treadmill:FindFirstChild("StandPart", true) or Treadmill:FindFirstChild("Hitbox", true)
    local AM_3 = AN_11
    if AN_11 then
        AN_11 = AM_3:IsA("BasePart")
    end
    if AN_11 then
        return AM_3
    end
    return nil
end
local function fn400()
    uH(tT, "Copied Discord invite to clipboard")
end
local function fn410(iA)
    State.AutoSteal = iA == true
    if State.AutoSteal then
        tG("AutoSteal", tJ, ut)
    end
end
local function fn461()
    local xP = uG:FindFirstChild("Runtime") and uG.Runtime:FindFirstChild("WorldArtifacts")
    local xQ = {}
    if not xP then
        return xQ
    end
    for i, child in ipairs(xP:GetChildren()) do
        if child:IsA("Model") then
            local attr = child:GetAttribute("ArtifactId")
            local xR_1 = t2(attr)
            local xS = xR_1 and uK(xR_1)
            if xS then
                local xR_2 = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart", true)
                local xS_1 = xR_2
                if xR_2 then
                    xR_2 = tx(xS_1.Position)
                end
                local xS_2 = xR_2
                if xR_2 then
                    xR_2 = xS_2:FindFirstChild("StealPrompt")
                end
                local xT = xS_2
                local xU = xR_2
                if xT then
                    xT = xU
                end
                if xT then
                    xT = xU.Enabled
                end
                if xT then
                    local xR_3 = {
                        ArtifactId = attr,
                        RarityId = child:GetAttribute("RarityId"),
                        MutationId = child:GetAttribute("MutationId"),
                        Quality = child:GetAttribute("Quality")
                    }
                    table.insert(xQ, { Model = child, Spawn = xS_2, Prompt = xU, Score = tz(xR_3), Rec = xR_3 })
                end
            end
        end
    end
    table.sort(xQ, function(dr, ds)
        return dr.Score > ds.Score
    end)
    return xQ
end
local function fn479(dR)
    local yq = {}
    for i, v in ipairs(tY(dR)) do
        if v.SlotIndex then
            yq[v.SlotIndex] = true
        end
    end
    return yq
end
local function fn516(ba, bb)
    if tl(bb) then
        return true
    end
    return bb[ba] == true
end
local function fn536(a1)
    return next(a1) == nil
end
local function fn554(iV)
    State.AutoReplaceBetter = iV == true
    if State.AutoReplaceBetter then
        tG("AutoReplaceBetter", 1.2, uA)
    end
end
local function fn587(ja)
    State.AutoTreadmill = ja == true
    if State.AutoTreadmill then
        tG("AutoTreadmill", 1, t7)
    else
        tL()
    end
end
local function fn591(eG)
    local zg = os.clock()
    local zh = eG
    local zm = if zh then 1 else 0
    local zk = 1671 * zm + 1903 * (1 - zm)
    local zl = 1991 * zm + 3059 * (1 - zm)
    if not ((zk * 583 + zl * 3589 + zk * zl) % 16777213 == 11446853) then
        zh = 3
    end
    local zi = zg + zh
    while true do
        local zg_1 = tn() and os.clock() < zi
        if zg_1 then
            if State.Carrying then
                return true
            end
            task.wait(0.1)
            continue
        end
        break
    end
    return State.Carrying ~= nil
end
local function fn678(bm)
    local wn_1
    local wm_1
    if type(bm) ~= "table" then
        return 0
    end
    local wg = Index.Get(bm.ArtifactId)
    if not wg then
        return 0
    end
    local wh = tonumber(wg.BaseIncome) or 0
    local wh_1 = Rarities.Get(bm.RarityId)
    local wi = tQ(bm.MutationId)
    local wj = wh_1 and tonumber(wh_1.IncomeMultiplier)
    local wh_2 = wj or 1
    local wj_1 = wi
    if wj_1 then
        wj_1 = tonumber(wi.IncomeMultiplier)
    end
    local wh_3 = wj_1 or 1
    local wi_1 = 1
    local IncomeMultiplier = Quality.IncomeMultiplier
    local wl = tonumber(bm.Quality) or 10
    wm_1, wn_1 = pcall(IncomeMultiplier, wl)
    local wh_5 = wm_1 and type(wn_1) == "number"
    if wh_5 then
        wi_1 = wn_1
    end
    return wh * wh_2 * wh_3 * wi_1
end
local function fn679(cH)
    if not cH then
        return nil
    end
    local xx = cH:FindFirstChild("Spawn") or cH:FindFirstChild("PlotOrigin")
    return xx
end
local function fn697()
    local StealGroup = t0.Main:AddLeftGroupbox("Steal", "swords")
    StealGroup:AddToggle("AutoSteal", {
        Text = "Auto Steal",
        Default = false,
        Callback = function(j_)
            tH.SetAutoSteal(j_)
        end
    })
    StealGroup:AddDropdown("StealZones", {
        Text = "Zone Filter",
        Values = tH.ZoneValues(),
        Default = tH.ZoneValues(),
        Multi = true,
        AllowNull = true,
        Callback = function(j2)
            tH.SetStealZones(j2)
        end
    })
    tH.SetStealZones(tH.ZoneValues())
    local PlotGroup = t0.Main:AddLeftGroupbox("Plot", "landmark")
    PlotGroup:AddToggle("AutoPlace", {
        Text = "Auto Place",
        Default = false,
        Callback = function(j5)
            tH.SetAutoPlace(j5)
        end
    })
    PlotGroup:AddToggle("AutoReplaceBetter", {
        Text = "Auto Replace with Better",
        Default = false,
        Callback = function(j7)
            tH.SetAutoReplaceBetter(j7)
        end
    })
    PlotGroup:AddToggle("AutoCollectMoney", {
        Text = "Auto Collect Money",
        Default = false,
        Callback = function(j9)
            tH.SetAutoCollectMoney(j9)
        end
    })
    PlotGroup:AddToggle("AutoUpgradePlot", {
        Text = "Auto Upgrade Plot",
        Default = false,
        Callback = function(kb)
            tH.SetAutoUpgradePlot(kb)
        end
    })
    local TrainingGroup = t0.Main:AddRightGroupbox("Training", "gauge")
    TrainingGroup:AddToggle("AutoBuyMasks", {
        Text = "Auto Buy Masks",
        Default = false,
        Callback = function(ke)
            tH.SetAutoBuyMasks(ke)
        end
    })
    TrainingGroup:AddToggle("AutoUpgradeTreadmill", {
        Text = "Auto Upgrade Treadmill",
        Default = false,
        Callback = function(kg)
            tH.SetAutoUpgradeTreadmill(kg)
        end
    })
    TrainingGroup:AddToggle("AutoTreadmill", {
        Text = "Auto Go on Treadmill",
        Default = false,
        Callback = function(ki)
            tH.SetAutoTreadmill(ki)
        end
    })
    local SellGroup = t0.Main:AddRightGroupbox("Sell", "banknote")
    SellGroup:AddToggle("AutoSell", {
        Text = "Auto Sell",
        Default = false,
        Callback = function(kl)
            tH.SetAutoSell(kl)
        end
    })
    SellGroup:AddDropdown("SellMode", {
        Text = "Sell Mode",
        Values = { "Sell All", "Sell Filtered" },
        Default = "Sell All",
        Callback = function(kn)
            tH.SetSellMode(kn)
        end
    })
    SellGroup:AddDropdown("SellRarities", {
        Text = "Sell Rarities",
        Values = tH.RarityValues(),
        Default = {},
        Multi = true,
        AllowNull = true,
        Callback = function(kp)
            tH.SetSellRarities(kp)
        end
    })
end
local function fn711()
    return uc
end
local function fn718()
    local zH = worker()
    local zI = to()
    local zJ = uB(zH)
    local zK = uL(zI, zH)
    if #zJ == 0 or #zK == 0 then
        return
    end
    for i, v in ipairs(zJ) do
        local zH_2 = zK[i]
        local zI_1 = not zH_2 or not tn() or not State.AutoPlace
        if zI_1 then
            break
        end
        uJ(v, zH_2)
        task.wait(tF)
    end
end
local function fn770(bE)
    if type(bE) ~= "table" then
        return 0
    end
    local ws = Index.Get(bE.ArtifactId)
    if not ws then
        return 0
    end
    local wt = tonumber(ws.BaseValue) or 0
    local wt_1 = Rarities.Get(bE.RarityId)
    local wu = tQ(bE.MutationId)
    local wv = wt_1 and tonumber(wt_1.ValueMultiplier)
    local wt_2 = wv or 1
    local wv_1 = wu
    if wv_1 then
        wv_1 = tonumber(wu.ValueMultiplier)
    end
    local wt_3 = wv_1 or 1
    return math.floor(wt * wt_2 * wt_3 + 0.5)
end
local function fn786(cr)
    local xh = ur()
    local xi = not xh or typeof(cr) ~= "CFrame"
    if xi then
        return false
    end
    xh.CFrame = cr + Vector3.new(0, 3, 0)
    return true
end
local function fn787(dX)
    local Character = LocalPlayer.Character
    local Backpack = LocalPlayer:FindFirstChild("Backpack")
    if Character then
        for i, child in ipairs(Character:GetChildren()) do
            local yy_1 = child:IsA("Tool") and child:GetAttribute("ArtifactUid") == dX
            if yy_1 then
                return child
            end
        end
    end
    if Backpack then
        for i, child in ipairs(Backpack:GetChildren()) do
            local yy_2 = child:IsA("Tool") and child:GetAttribute("ArtifactUid") == dX
            if yy_2 then
                return child
            end
        end
    end
    return nil
end
local function fn792(eX, eY)
    local zs = os.clock()
    local zu = zs + (eY or 3)
    while true do
        local zs_1 = tn() and os.clock() < zu
        if not zs_1 then
            return false
        end
        local zs_2 = worker()
        local zt_1 = zs_2 and zs_2.Artifacts and zs_2.Artifacts[eX]
        local zs_3 = zt_1
        if zt_1 then
            zt_1 = zs_3.State == "Placed"
        end
        if zt_1 then
            break
        end
        task.wait(0.2)
    end
    return true
end
local function fn869(hu)
    local A1 = uG:FindFirstChild("MuseumMap") and uG.MuseumMap:FindFirstChild("SellArea")
    if not A1 then
        return nil
    end
    local A3 = hu and "SellAllPart" or "SellThisPart"
    return A1:FindFirstChild(A3)
end
local function fn882()
    return tk
end
local function fn909(i6)
    State.AutoUpgradeTreadmill = i6 == true
    if State.AutoUpgradeTreadmill then
        tG("AutoUpgradeTreadmill", 2, uD)
    end
end
local function fn962(ey, ez)
    local y6 = ey and ey:FindFirstChild("Slots")
    if not y6 or not ez then
        return nil
    end
    local y6_2 = y6:FindFirstChild(tostring(ez))
    if y6_2 then
        return y6_2
    end
    for i, child in ipairs(y6:GetChildren()) do
        if tonumber(child:GetAttribute("SlotIndex")) == ez then
            return child
        end
    end
    return nil
end
local function fn966(bi)
    local we = Mutations.Get(bi) or Mutations.Get("None") or Mutations.Defs.None
    return we
end
local function fn984(jS)
    local DiscordGroup = jS:AddLeftGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = tT,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    return DiscordGroup
end
local function fn993(iF)
    local BG = {}
    for i, v in ipairs(tk) do
        BG[v] = true
    end
    t1(State.StealZones, iF, BG)
end
local function fn1009(cw)
    local xk = not cw or not cw:IsA("ProximityPrompt")
    if xk then
        return false
    elseif tu(fireproximityprompt) then
        local xk_1 = pcall(fireproximityprompt, cw)
        return xk_1
    else
        return false
    end
end
local function fn1017(d7)
    local yQ = ua()
    if not yQ then
        return false
    end
    yQ:UnequipTools()
    task.wait(0.15)
    if not tn() then
        return false
    end
    local yR = up(d7)
    if not yR then
        return false
    end
    if yR.Parent ~= LocalPlayer.Character then
        yQ:EquipTool(yR)
        task.wait(0.2)
    end
    local yQ_1 = up(d7) ~= nil and up(d7).Parent == LocalPlayer.Character
    return yQ_1
end
local function fn1041(fh, fi)
    if not fh or not fi then
        return false
    elseif not tO(fh.Uid) then
        task.wait(0.4)
        if not tO(fh.Uid) then
            return false
        end
        tW(fi.Spawn.CFrame)
        task.wait(0.25)
        if not tn() then
            return false
        end
        tE(fi.Prompt)
        return tA(fh.Uid, tw)
    else
        tW(fi.Spawn.CFrame)
        task.wait(0.25)
        if not tn() then
            return false
        end
        tE(fi.Prompt)
        return tA(fh.Uid, tw)
    end
end
local function fn1052(jj)
    local B_ = jj == "Sell Filtered" and "Sell Filtered" or "Sell All"
    State.SellMode = B_
end
local function fn1085(jf)
    State.AutoSell = jf == true
    if State.AutoSell then
        tG("AutoSell", 1.5, tX)
    end
end
local function onOnClientEvent(b0)
    if type(b0) == "table" then
        State.Profile = b0
    end
end
local function fn1093(ar)
    local vN = (Remotes.Get(ar))
    local vR = if vN then 1 else 0
    local vP = 1108 * vR + 1073 * (1 - vR)
    local vQ = 4014 * vR + 4045 * (1 - vR)
    if not ((vP * 2511 + vQ * 2434 + vP * vQ) % 16777213 == 222563) then
        vN = uN.STM_Remotes:FindFirstChild(ar)
    end
    return vN
end
local function fn1095()
    local Character = LocalPlayer.Character
    local w9 = Character and Character:FindFirstChild("HumanoidRootPart")
    return w9
end
local function fn1107()
    connection:Disconnect()
end
local function fn1116(cY)
    local xG_1
    local xF_1
    xG_1, xF_1 = nil, 8
    for i, v in ipairs(CollectionService:GetTagged("ArtifactSpawn")) do
        if v:IsA("BasePart") then
            local Magnitude = (v.Position - cY).Magnitude
            if Magnitude < xF_1 then
                xG_1 = v
                xF_1 = Magnitude
            end
        end
    end
    return xG_1
end
local function onOnClientEvent3(cd)
    local w2 = type(cd) == "table" and cd
    local w3 = w2 or nil
    State.Carrying = w3
end
local function fn1119(i2)
    State.AutoUpgradePlot = i2 == true
    if State.AutoUpgradePlot then
        tG("AutoUpgradePlot", 2, tU)
    end
end
local function fn1120(iQ)
    State.AutoPlace = iQ == true
    if State.AutoPlace then
        tG("AutoPlace", tJ, t8)
    end
end
local function fn1138()
    return CoreGui
end
local function fn1186(dF)
    local yd = not dF
    local ye = {}
    local yj = if yd then 1 else 0
    local yh = 2346 * yj + 2613 * (1 - yj)
    local yi = 2570 * yj + 2004 * (1 - yj)
    if not ((yh * 3705 + yi * 3558 + yh * yi) % 16777213 == 7087997) then
        yd = type(dF.Artifacts) ~= "table"
    end
    if yd then
        return ye
    end
    for k, v in pairs(dF.Artifacts) do
        local yd_1 = type(v) == "table" and v.State == "Placed"
        if yd_1 then
            local yd_2 = v.Placement and tonumber(v.Placement.SlotIndex)
            table.insert(ye, { Uid = k, Record = v, Score = tz(v), SlotIndex = yd_2 })
        end
    end
    table.sort(ye, function(dO, dP)
        return dO.Score < dP.Score
    end)
    return ye
end
local function fn1190()
    return not tH.Unloaded
end
local function fn1195()
    local AZ = to()
    local A_ = tS(AZ)
    local AZ_1 = A_ and A_:IsA("BasePart")
    if AZ_1 then
        tW(A_.CFrame)
    end
end
local function fn1203(a3)
    if tl(State.StealZones) then
        return true
    end
    local v6 = uI[tonumber(a3)]
    return v6 ~= nil and State.StealZones[v6] == true
end
tk = nil
tl = nil
connection2 = nil
tn = nil
to = nil
State = nil
tt = nil
tu = nil
Library = nil
tw = nil
tx = nil
tz = nil
tA = nil
tE = nil
tF = nil
tG = nil
tH = nil
tJ = nil
tL = nil
tM = nil
tO = nil
tQ = nil
connection = nil
tS = nil
tT = nil
tU = nil
tV = nil
tW = nil
tX = nil
tY = nil
t0 = nil
t1 = nil
t2 = nil
LocalPlayer = nil
local Players, Toggles, SaveManager, ThemeManager, ts, ty, tB, tC, tD, tI, tK, tN, tP, tZ, t_, Treadmills
t5 = nil
t7 = nil
t8 = nil
CollectionService = nil
ua = nil
uc = nil
ue = nil
Index = nil
ui = nil
Quality = nil
CoreGui = nil
Mutations = nil
up = nil
ur = nil
Rarities = nil
ut = nil
connection3 = nil
Remotes = nil
uA = nil
uB = nil
uD = nil
uG = nil
uH = nil
uI = nil
uJ = nil
uK = nil
uL = nil
worker = nil
uN = nil
uP = nil
local Plots, HeadMasks, Lighting, ug, uh, TeleportService, uk, um, GuiService, HttpService, uw, VirtualUser, UserInputService, RunService, uF, uO
Plots = nil
HeadMasks = nil
Lighting = nil
ug = nil
uh = nil
TeleportService = nil
uk = nil
um = nil
GuiService = nil
HttpService = nil
local uv
uw = nil
VirtualUser = nil
UserInputService = nil
RunService = nil
uF = nil
uO = nil
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, CollectionService, LocalPlayer, tV = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local Gv_8 = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
CollectionService = game:GetService("CollectionService")
local Gv_1 = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local Gv_5 = "OuroborosStealTheMuseum"
tV = fn1138
if getgenv then
    getgenv().gethui = tV
end
tH, uN, uG, Remotes, Rarities, Mutations, Quality, Index, HeadMasks, Plots, Treadmills, tJ, tF, tC, ty, tw, ts, State, tk, uI, tu, tn, t_ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn190)
local function uU(x)
    local vA
    local vB
    local vz
    vz = nil
    vA = nil
    vB = nil
    local vC = x ~= ""
    local vD = type(x) == "string" and vC
    assert(vD, "Atypical is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    vA = getgenv()
    assert(type(vA) == "table", "getgenv did not return a table")
    local vC_1 = vA[x]
    if vC_1 ~= nil then
        local vD_1 = type(vC_1) == "table" and type(vC_1.Unload) == "function"
        assert(vD_1, "Namespace is occupied")
        vC_1.Unload()
        assert(vA[x] == nil, "Previous instance did not release its namespace")
    end
    vB = {}
    vz = { State = {}, Unloaded = false }
    vz.Track = function(D)
        assert(type(D) == "function", "Cleanup must be callable")
        if vz.Unloaded then
            D()
        else
            table.insert(vB, D)
        end
        return D
    end
    vz.Unload = function()
        local vs_1
        local vr_1
        if vz.Unloaded then
            return
        end
        vz.Unloaded = true
        local vp = {}
        local vw = #vB
        local vv = -1
        while false and vw <= 1 or true and vw >= 1 do
            local vx = vw
            local vq_1 = table.remove(vB, vx)
            vr_1, vs_1 = pcall(vq_1)
            if not vr_1 then
                table.insert(vp, tostring(vs_1))
            end
            vw += vv
        end
        table.clear(vz.State)
        if #vp > 0 then
            error("Cleanup incomplete: " .. table.concat(vp, "; "), 0)
        end
        if vA[x] == vz then
            vA[x] = nil
        end
    end
    vA[x] = vz
    return vz
end
local function uZ(Q, R)
    local vG = type(Q) == "table" and type(Q.Track) == "function"
    assert(vG, "FeatureAPI required")
    local vG_1 = type(R) == "table" and type(R.OnUnload) == "function"
    assert(vG_1, "UI library required")
    assert(type(R.Unload) == "function", "UI unload required")
    Q.Track(function()
        if not R.Unloaded then
            R:Unload()
        end
    end)
    R:OnUnload(function()
        Q.Unload()
    end)
end
tH = uU(Gv_5)
local Gv_6 = fn293
if (not uU and tH or not uU and tH or (uU or tH) and (not tH and tH)) and not (not uU and tH or not uU and tH or (uU or tH) and (not tH and tH)) then
    tn = fn53
    tu = fn1190
else
    tu = fn53
    tn = fn1190
end
if (Gv_6 and ts or (tH or not ts)) and (not ts and false or (Gv_6 or Gv_6)) and not ((Gv_6 and ts or (tH or not ts)) and (not ts and false or (Gv_6 or Gv_6))) then
    uN(Gv_6)
else
    uN = Gv_6(Gv_8)
end
uG = Gv_6(Gv_1)
local uW = uN:WaitForChild("Shared")
Remotes = require(uW.Remotes)
local MuseumTiers = require(uW.Config.MuseumTiers)
Rarities = require(uW.Config.Rarities)
Mutations = require(uW.Config.Mutations)
Quality = require(uW.Config.Quality)
Index = require(uW.Config.Artifacts.Index)
HeadMasks = require(uW.Config.HeadMasks)
Plots = require(uW.Config.Plots)
Treadmills = require(uW.Config.Treadmills)
t_ = fn1093
tJ = 0.45
tF = 0.8
tC = 1.2
ty = 1.6
if (false and not uG or (not uI or not uN)) and uN and not ((false and not uG or (not uI or not uN)) and uN) then
    ts = 1.2
    tH = 1
    tk = State.State
    tk.AutoSteal = false
    tk.AutoBuyMasks = false
    tk.AutoPlace = false
    tk.AutoReplaceBetter = false
    tk.AutoCollectMoney = false
    tk.AutoUpgradePlot = false
    tk.AutoUpgradeTreadmill = false
    tk.AutoTreadmill = false
    tk.AutoSell = false
    tk.SellMode = "Sell All"
    tk.StealZones = {}
    tk.SellRarities = {}
    tk.Busy = false
    tk.Carrying = nil
    tk.Profile = nil
    tw = {}
else
    tw = 1.2
    ts = 1
    State = tH.State
    State.AutoSteal = false
    State.AutoBuyMasks = false
    State.AutoPlace = false
    State.AutoReplaceBetter = false
    State.AutoCollectMoney = false
    State.AutoUpgradePlot = false
    State.AutoUpgradeTreadmill = false
    State.AutoTreadmill = false
    State.AutoSell = false
    State.SellMode = "Sell All"
    State.StealZones = {}
    State.SellRarities = {}
    State.Busy = false
    State.Carrying = nil
    State.Profile = nil
    tk = {}
end
local uY = {}
uI = {}
for i, v in ipairs(MuseumTiers.Order) do
    Gv_6 = MuseumTiers.Get(v) or MuseumTiers.Defs[v] or MuseumTiers.Defs[tostring(v)]
    Gv_5 = Gv_6
    if Gv_6 then
        Gv_6 = Gv_5.DisplayName
    end
    if Gv_6 then
        table.insert(tk, Gv_5.DisplayName)
        Gv_6 = Gv_5.DisplayName
        Gv_1 = tonumber(Gv_5.CategoryId) or tonumber(v)
        uY[Gv_6] = Gv_1
        Gv_6 = tonumber(Gv_5.CategoryId) or tonumber(v)
        uI[Gv_6] = Gv_5.DisplayName
    end
end
uc = {}
for i, v in ipairs(Rarities.Order) do
    table.insert(uc, v)
end
t1, tl, uK, uh, t2, tQ, tz, tZ, worker, ue = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
t1 = fn291
tl = fn536
uK = fn1203
uh = fn516
t2 = fn271
tQ = fn966
tz = fn678
tZ = fn770
worker = function()
    local wE
    wE = nil
    local wG_1
    local wF_1
    wE = t_("FetchProfile")
    if not wE then
        return State.Profile
    end
    wF_1, wG_1 = pcall(function()
        return wE:InvokeServer()
    end)
    local wH = wF_1 and type(wG_1) == "table"
    if wH then
        State.Profile = wG_1
    end
    return State.Profile
end
ue = fn89
Gv_6 = t_("ProfileSnapshot")
if Gv_6 then
    connection = nil
    Gv_5 = 7
    repeat
        Gv_1 = (Gv_5 * 1 + 0) % 2 + 1
        if Gv_1 <= 1 then
            Gv_1 = (vector.create((Gv_5 * 2 + 8) % 11 + 1, (Gv_5 * 10 + 10) % 13 + 1, (Gv_5 * 15 + 11) % 17 + 1))
            Gv_8 = (vector.create((Gv_5 * 4 + 4) % 11 + 1, (Gv_5 * 4 + 7) % 13 + 1, (Gv_5 * 2 + 1) % 17 + 1))
            local H4 = vector.dot(Gv_1, Gv_8)
            if H4 * H4 <= vector.dot(Gv_1, Gv_1) * vector.dot(Gv_8, Gv_8) then
                tH.Track(fn1107)
            else
                tH.Track(fn1107)
            end
            Gv_5 = (Gv_5 + 1) % 16
        else
            if ((connection or connection) and (connection or connection) or not Gv_5 and not Gv_5 and (not Gv_5 and connection) or connection and not Gv_5 and (not connection and not connection) and (connection and Gv_5 or (Gv_5 or not Gv_5))) and not ((connection or connection) and (connection or connection) or not Gv_5 and not Gv_5 and (not Gv_5 and connection) or connection and not Gv_5 and (not connection and not connection) and (connection and Gv_5 or (Gv_5 or not Gv_5))) then
                Gv_6.Track(fn72)
                tH = connection.OnClientEvent:Connect(onOnClientEvent)
            else
                tH.Track(fn72)
                connection = Gv_6.OnClientEvent:Connect(onOnClientEvent)
            end
            Gv_5 = (Gv_5 + 15) % 16
        end
    until (Gv_5 * 11 + 8) % 16 == 5
end
Gv_6 = t_("ProfileDelta")
if Gv_6 then
    connection2 = nil
    Gv_5 = 7
    repeat
        Gv_1 = (Gv_5 * 1 + 1) % 2 + 1
        if Gv_1 <= 1 then
            if Gv_5 * 85525229 + 13 + 1 <= Gv_5 * 85525229 + 13 + 1 + 6 then
                connection2 = Gv_6.OnClientEvent:Connect(onOnClientEvent2)
            else
                Gv_6 = connection2.OnClientEvent:Connect(onOnClientEvent2)
            end
            Gv_5 = (Gv_5 + 7) % 16
        else
            if Gv_5 * 113438597 + 12 + 6 >= Gv_5 * 113438597 + 12 + 6 + 3 then
                tH.Track(fn374)
            else
                tH.Track(fn374)
            end
            Gv_5 = (Gv_5 + 9) % 16
        end
    until (Gv_5 * 15 + 13) % 16 == 6
end
Gv_6 = t_("CarryStateChanged")
if Gv_6 then
    connection3 = nil
    Gv_5 = 6
    repeat
        Gv_1 = (Gv_5 * 1 + 0) % 2 + 1
        if Gv_1 <= 1 then
            if (Gv_5 * 1 + 1) * 21 % 4 == ((Gv_5 * 1 + 1) * 21 + 11) % 4 then
                Gv_6 = connection3.OnClientEvent:Connect(onOnClientEvent3)
            else
                connection3 = Gv_6.OnClientEvent:Connect(onOnClientEvent3)
            end
            Gv_5 = (Gv_5 + 1) % 8
        else
            local Hz = bit32.rrotate(bit32.bxor(bit32.lrotate(Gv_5, 2), string.byte(tostring(connection3))), 1)
            if bit32.bxor(bit32.lrotate(bit32.bxor(Hz, 1641144838), 4), 488513638) == bit32.lrotate(Hz, 4) then
                tH.Track(fns.fn9)
            else
                tH.Track(fns.fn9)
            end
            Gv_5 = (Gv_5 + 7) % 8
        end
    until (Gv_5 * 5 + 0) % 8 == 6
end
tN, tT, tP, tI, Gv_8, tB, Library, ThemeManager, SaveManager, Toggles, uO, t0, ur, ua, tW, tE, to, uv, um, tL, tx, uw, uB, tY, uP, up, tO, uL, tD, uF, uk, tA, ut, uJ, t8, uA, ui, t5, tU, uD, tS, t7, tK, tt, tM, tX, tG, uH, ug = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
task.spawn(worker)
ur = fn1095
ua = fn102
tW = fn786
tE = fn1009
to = fn197
if (Gv_8 and false and (ut or not tA) and ((false or Gv_8) and (not Gv_8 and t7)) or ut and tW and (tW or Gv_8) and (uk and t7 or (not tW or not tA))) and (ut and not Gv_8 or false and t7 or (Gv_8 or uk or (false or not Gv_8)) or ut and ut and (not tA and not uk) and (tW or Gv_8 or (not t7 or not tA))) or not ((Gv_8 and false and (ut or not tA) and ((false or Gv_8) and (not Gv_8 and t7)) or ut and tW and (tW or Gv_8) and (uk and t7 or (not tW or not tA))) and (ut and not Gv_8 or false and t7 or (Gv_8 or uk or (false or not Gv_8)) or ut and ut and (not tA and not uk) and (tW or Gv_8 or (not t7 or not tA)))) then
    uv = fn679
    um = function()
        local xz = t_("RequestTeleportToPlot")
        if xz then
            pcall(function()
                xz:FireServer()
            end)
        end
        local xA = to()
        local xB = uv(xA)
        local xA_2 = xB and xB:IsA("BasePart")
        if xA_2 then
            tW(xB.CFrame)
        end
    end
    tL = function()
        local xD = t_("RequestStopTraining")
        if xD then
            pcall(function()
                xD:FireServer()
            end)
        end
    end
else
    tL = fn679
    uv = function()
        local xz = t_("RequestTeleportToPlot")
        if xz then
            pcall(function()
                xz:FireServer()
            end)
        end
        local xA = to()
        local xB = uv(xA)
        local xA_1 = xB and xB:IsA("BasePart")
        if xA_1 then
            tW(xB.CFrame)
        end
    end
    um = function()
        local xD = t_("RequestStopTraining")
        if xD then
            pcall(function()
                xD:FireServer()
            end)
        end
    end
end
tx = fn1116
uw = fn461
uB = fns.fn6
tY = fn1186
uP = fn479
up = fn787
tO = fn1017
uL = fn164
tD = fn962
uF = fn591
uk = fn305
tA = fn792
ut = function()
    if State.Carrying then
        um()
        task.wait(ty)
        return
    end
    local zy = uw()
    local zx = zy[1]
    if not zx then
        return
    end
    tL()
    tW(zx.Spawn.CFrame)
    task.wait(0.25)
    if not tn() then
        return
    end
    if not tE(zx.Prompt) then
        local zw = t_("RequestGrabArtifact")
        if zw then
            pcall(function()
                zw:FireServer(zx.Spawn)
            end)
        end
    end
    if not uF(tC) then
        return
    end
    local zy_1 = State.Carrying and State.Carrying.Uid
    um()
    task.wait(ty)
    if zy_1 then
        uk(zy_1, 4)
    else
        worker()
    end
    State.Carrying = nil
end
uJ = fn1041
t8 = fn718
uA = function()
    local zS
    local zT
    zS = nil
    zT = nil
    local zU = worker()
    local zV = to()
    if not zV then
        return
    end
    local zW = uB(zU)
    local zX = tY(zU)
    if #zW == 0 or #zX == 0 then
        return
    end
    local zY_1 = zW[1]
    zT = zX[1]
    if not zY_1 or not zT or zY_1.Score <= zT.Score then
        return
    end
    zS = t_("RequestPickupArtifact")
    if not zS then
        return
    end
    local SlotIndex = zT.SlotIndex
    pcall(function()
        zS:FireServer(zT.Uid)
    end)
    task.wait(tF)
    if not tn() then
        return
    end
    local zU_1 = worker()
    local zX_1 = tD(zV, SlotIndex)
    local zW_3 = zX_1 and zX_1:FindFirstChild("SpawnPart", true)
    local zX_2 = zW_3
    if zW_3 then
        zW_3 = zX_2:FindFirstChild("PlacePrompt")
    end
    local zZ = zW_3
    local zW_4 = not zZ
    local z2 = if zW_4 then 1 else 0
    local z0 = 1707 * z2 + 1095 * (1 - z2)
    local z1 = 3420 * z2 + 3825 * (1 - z2)
    if not ((z0 * 2569 + z1 * 2467 + z0 * z1) % 16777213 == 1883150) then
        zW_4 = not zZ.Enabled
    end
    if zW_4 then
        local zW_5 = uL(zV, zU_1)
        if zW_5[1] then
            zX_2 = zW_5[1].Spawn
            zZ = zW_5[1].Prompt
        end
    end
    if zX_2 and zZ then
        uJ(zY_1, { Spawn = zX_2, Prompt = zZ })
    end
end
ui = function()
    local z6
    local z7 = worker()
    if not z7 then
        return
    end
    local z8 = (tonumber(z7.Cash))
    local Ah = if z8 then 1 else 0
    local Af = 3389 * Ah + 3187 * (1 - Ah)
    local Ag = 2018 * Ah + 186 * (1 - Ah)
    if not ((Af * 3947 + Ag * 3859 + Af * Ag) % 16777213 == 11225634) then
        z8 = 0
    end
    local z9 = z8
    local Aa = z7.OwnedMasks or {}
    local Aa_1
    local z8_2 = Aa
    local z3 = t_("RequestBuyMask")
    local z4 = t_("RequestEquipMask")
    if not z3 then
        return
    end
    z6, Aa_1 = z7.EquippedMaskId, -1
    for i, v in ipairs(HeadMasks.Sorted()) do
        local Ab_1 = not tn() or not State.AutoBuyMasks
        if Ab_1 then
            break
        else
            local Id = v.Id
            local Ab_2 = tonumber(v.Price) or 0
            local Ab_3 = tonumber(v.Order) or 0
            if z8_2[Id] then
                if Ab_3 > Aa_1 then
                    Aa_1 = Ab_3
                    z6 = Id
                end
            elseif z9 >= Ab_2 then
                pcall(function()
                    z3:FireServer(Id)
                end)
                task.wait(tF)
                z7 = worker()
                local Ab_4 = z7 and z7.Cash
                local Ac_1 = tonumber(Ab_4) or z9
                z9 = Ac_1
                z8_2 = z7 and z7.OwnedMasks or z8_2
                if z8_2[Id] and Ab_3 > Aa_1 then
                    Aa_1 = Ab_3
                    z6 = Id
                end
            end
        end
    end
    if z4 and z6 and z6 ~= "" and z6 ~= z7.EquippedMaskId then
        pcall(function()
            z4:FireServer(z6)
        end)
    end
end
t5 = function()
    local Au = t_("RequestCollectIncome")
    if Au then
        pcall(function()
            Au:FireServer()
        end)
    end
end
tU = function()
    local Ax = worker()
    if not Ax or not Ax.Unlocks then
        return
    end
    local Ay_1 = tonumber(Ax.Unlocks.ActiveArtifactSlots) or 10
    local Ay_2 = Plots.GetActiveSlotUpgradePrice and Plots.GetActiveSlotUpgradePrice(Ay_1)
    local Ay_3 = tonumber(Ax.Cash) or 0
    local Ay_4 = type(Ay_2) == "number" and Ay_3 >= Ay_2
    if Ay_4 then
        local Aw = t_("RequestUpgradePlot")
        if Aw then
            pcall(function()
                Aw:FireServer()
            end)
        end
    end
end
if (not t7 or false) and (uA or false) and ((not t8 or not t8) and (false or not t7)) and not ((not t7 or false) and (uA or false) and ((not t8 or not t8) and (false or not t7))) then
    tx = function()
        local AF = worker()
        if not AF or not AF.Unlocks then
            return
        end
        local AG_5 = tonumber(AF.Unlocks.TreadmillLevel) or 1
        local AG_6 = Treadmills.GetUpgradePrice and Treadmills.GetUpgradePrice(AG_5)
        local AG_7 = tonumber(AF.Cash) or 0
        local AG_8 = type(AG_6) == "number" and AG_7 >= AG_6
        if AG_8 then
            local AE = t_("RequestUpgradeTreadmill")
            if AE then
                pcall(function()
                    AE:FireServer()
                end)
            end
        end
    end
else
    uD = function()
        local AF = worker()
        if not AF or not AF.Unlocks then
            return
        end
        local AG_1 = tonumber(AF.Unlocks.TreadmillLevel) or 1
        local AG_2 = Treadmills.GetUpgradePrice and Treadmills.GetUpgradePrice(AG_1)
        local AG_3 = tonumber(AF.Cash) or 0
        local AG_4 = type(AG_2) == "number" and AG_3 >= AG_2
        if AG_4 then
            local AE = t_("RequestUpgradeTreadmill")
            if AE then
                pcall(function()
                    AE:FireServer()
                end)
            end
        end
    end
end
tS = fn375
t7 = fn1195
tK = fn869
tt = function()
    local Bc
    local Bd
    local Be = worker()
    local Bf = uB(Be)
    if #Bf == 0 then
        return
    end
    Bd, Bc = 0, 0
    for i, v in ipairs(Bf) do
        Bd += 1
        Bc += tZ(v.Record)
    end
    local Be_1 = tK(true)
    local Bf_1 = Be_1 and Be_1:IsA("BasePart")
    if Bf_1 then
        tW(Be_1.CFrame)
        task.wait(0.25)
    end
    local Bb = t_("RequestSellAll")
    if Bb then
        pcall(function()
            Bb:FireServer(Bd, Bc)
        end)
    end
    task.wait(ts)
end
tM = function()
    local Br = worker()
    local Bs = uB(Br)
    local Bq = t_("RequestSellEquipped")
    if not Bq then
        return
    end
    local Br_1 = tK(false)
    for i, v in ipairs(Bs) do
        local Bz = v
        local Bs_1 = not tn() or not State.AutoSell
        if Bs_1 then
            break
        elseif uh(Bz.Record.RarityId, State.SellRarities) then
            if tO(Bz.Uid) then
                local Bs_2 = Br_1 and Br_1:IsA("BasePart")
                if Bs_2 then
                    tW(Br_1.CFrame)
                    task.wait(0.25)
                end
                pcall(function()
                    Bq:FireServer(Bz.Uid)
                end)
                task.wait(ts)
            end
        end
    end
end
tX = fn157
tN = {}
if (tD and not tD or (tD or not tE)) and ((tD or not tE) and (tE and tE)) and not ((tD and not tD or (tD or not tE)) and ((tD or not tE) and (tE and tE))) then
    ur = function(ik, il, im)
        if tN[ik] then
            return
        end
        tN[ik] = true
        task.spawn(function()
            local BC_2
            while true do
                local BB = tn() and State[ik]
                local BB_2
                if BB then
                    if not State.Busy then
                        State.Busy = true
                        BB_2, BC_2 = pcall(im)
                        State.Busy = false
                        if not BB_2 then
                            warn("[Ouroboros STM]", ik, BC_2)
                        end
                    end
                    task.wait(il)
                    continue
                end
                break
            end
            tN[ik] = nil
        end)
    end
else
    tG = function(ik, il, im)
        if tN[ik] then
            return
        end
        tN[ik] = true
        task.spawn(function()
            local BC_1
            while true do
                local BB = tn() and State[ik]
                local BB_1
                if BB then
                    if not State.Busy then
                        State.Busy = true
                        BB_1, BC_1 = pcall(im)
                        State.Busy = false
                        if not BB_1 then
                            warn("[Ouroboros STM]", ik, BC_1)
                        end
                    end
                    task.wait(il)
                    continue
                end
                break
            end
            tN[ik] = nil
        end)
    end
end
tH.SetAutoSteal = fn410
tH.SetStealZones = fn993
tH.SetAutoBuyMasks = fn27
tH.SetAutoPlace = fn1120
tH.SetAutoReplaceBetter = fn554
tH.SetAutoCollectMoney = fn306
tH.SetAutoUpgradePlot = fn1119
tH.SetAutoUpgradeTreadmill = fn909
tH.SetAutoTreadmill = fn587
tH.SetAutoSell = fn1085
tH.SetSellMode = fn1052
tH.SetSellRarities = fn338
tH.ZoneValues = fn882
tH.RarityValues = fn711
tT = "https://discord.gg/synapsex"
tP = "https://rscripts.net/@Ouroboros"
tI = "https://ouroboros-hub-rbx.web.app/"
if (uF and not uF or tx and tx) and ((tx or not tx) and (tx and not uF)) and (not tx and uF and (tx or not tx) or (uF or not uF or (uF or tx))) and not ((uF and not uF or tx and tx) and ((tx or not tx) and (tx and not uF)) and (not tx and uF and (tx or not tx) or (uF or not uF or (uF or tx)))) then
    uO = "v0.2"
else
    Gv_8 = "v0.2"
end
tB = "Steal The Museum"
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles, uO = Library.Toggles, Library.Options
uZ(tH, Library)
uH = fn244
ug = fn400
uU = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = tT, Copyable = true }, "|", tB, "|", Gv_8 },
    Icon = 132608042600488,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
t0 = {
    Info = uU:AddTab("Info", "info"),
    Main = uU:AddTab("Main", "gamepad-2"),
    Player = uU:AddTab("Player", "person-standing"),
    Settings = uU:AddTab("Settings", "settings")
}
uW = fn984
for k, v in t0 do
    if k ~= "Info" then
        uW(v)
    end
end
Gv_8 = fn697
Gv_8()
local function uV()
    local CB
    local CI
    local CE
    local CA
    local CD
    CA = nil
    CB = nil
    CD = nil
    CE = nil
    CI = nil
    local Label, CC, CF, Label2, CH, CJ, Label3, CL
    CE = function(kt)
        return (tostring(kt):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
    end
    CA = function(kw, kx)
        return string.format('<font color="%s">%s</font>', kx, CE(kw))
    end
    CF = function(kA, kB, kC)
        return string.format("<b>%s</b> %s %s", kA, CA("-", "#5a6070"), CA(kB, kC))
    end
    CC = "#7fd47f"
    CI = "Unknown"
    local CM = "#6ec1ff"
    CL = "#e8a34d"
    local CN = "#8b93a3"
    pcall(function()
        local Cg_1
        local Cf_1
        if type(identifyexecutor) == "function" then
            Cg_1, Cf_1 = identifyexecutor()
            local Ch = Cg_1 ~= ""
            local Ci = type(Cg_1) == "string" and Ch
            if Ci then
                local Ch_1 = type(Cf_1) == "string" and Cf_1 ~= "" and Cg_1 .. " " .. Cf_1
                local Cf_2 = Ch_1
                local Cm = if Cf_2 then 1 else 0
                local Ck = 1727 * Cm + 2694 * (1 - Cm)
                local Cl = 3247 * Cm + 634 * (1 - Cm)
                if not ((Ck * 3149 + Cl * 1176 + Ck * Cl) % 16777213 == 14864364) then
                    Cf_2 = Cg_1
                end
                CI = Cf_2
            end
        end
    end)
    local CO = tu(fireproximityprompt) and "prompts ok"
    local CP = CO or "no fireproximityprompt"
    CB = os.clock()
    CH = function()
        local Cq = math.floor(os.clock() - CB)
        if Cq < 60 then
            return Cq .. "s"
        elseif Cq < 3600 then
            return string.format("%dm %ds", Cq // 60, Cq % 60)
        else
            return string.format("%dh %dm", Cq // 3600, Cq % 3600 // 60)
        end
    end
    local UserGroup = t0.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(CF("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, CC), true)
    UserGroup:AddLabel(CF("UserId", tostring(LocalPlayer.UserId), CM), true)
    UserGroup:AddLabel(CF("Executor", CI .. "  " .. CP, CC), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(CF("Session", CH(), CL), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            uH(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            uH("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local DiscordGroup = t0.Info:AddRightGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = tT,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    local SessionGroup = t0.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddLabel(CF("Game", tB, CM), true)
    Label2 = SessionGroup:AddLabel(CF("Players", "0/0", CC), true)
    CJ = tostring(game.JobId)
    local CM_1 = #CJ > 18 and string.sub(CJ, 1, 18) .. "..."
    local CP_2 = CM_1 or CJ
    SessionGroup:AddLabel(CF("Job", CP_2, CN), true)
    Label = SessionGroup:AddLabel(CF("Ping", "0 ms", CL), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Place",
        Func = function()
            TeleportService:Teleport(game.PlaceId, LocalPlayer)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            uH(CJ, "Copied Job ID")
        end
    })
    CD = task.spawn(function()
        local Ct_1
        local Cs_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(CF("Session", CH(), CL))
            Label2:SetText(CF("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), CC))
            Cs_1, Ct_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local Cs_2 = Cs_1 and Ct_1 .. " ms" or "n/a"
            Label:SetText(CF("Ping", Cs_2, CL))
        end
    end)
    tH.Track(function()
        pcall(task.cancel, CD)
    end)
    local SocialsGroup = t0.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = ug })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            uH(tP, "Copied Rscripts profile")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            uH(tI, "Copied website link")
        end
    })
end
uV()
Gv_6 = function()
    local lJ
    local lM
    local lK
    local lL
    local MovementGroup = t0.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = t0.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    lL = {}
    lM = {}
    local lI = {}
    lK = {}
    lJ = {}
    local function lN()
        for k, v in lJ do
            if k.Parent then
                k.CanCollide = v
            end
        end
        table.clear(lJ)
    end
    local function lR()
        for k, v in lK do
            if k.Parent then
                k.WalkSpeed = v
            end
        end
        table.clear(lK)
    end
    local function lV()
        for k, v in lL do
            if k.Parent then
                k.PlatformStand = v
            end
        end
        table.clear(lL)
    end
    local function lZ(l_)
        local De = if not l_:IsA("ProximityPrompt") then 1 else 0
        if De == 1 then
            return
        end
        if lM[l_] == nil then
            lM[l_] = {
                HoldDuration = l_.HoldDuration,
                MaxActivationDistance = l_.MaxActivationDistance,
                RequiresLineOfSight = l_.RequiresLineOfSight
            }
        end
        l_.HoldDuration = 0
        l_.MaxActivationDistance = 50
        l_.RequiresLineOfSight = false
    end
    local function l1()
        for k, v in lM do
            if k.Parent then
                k.HoldDuration = v.HoldDuration
                k.MaxActivationDistance = v.MaxActivationDistance
                k.RequiresLineOfSight = v.RequiresLineOfSight
            end
        end
        table.clear(lM)
    end
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            lV()
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            lR()
        end
    end)
    Toggles.NoClip:OnChanged(function()
        if not Toggles.NoClip.Value then
            lN()
        end
    end)
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for k, v in uG:QueryDescendants("ProximityPrompt") do
                pcall(lZ, v)
            end
        else
            l1()
        end
    end)
    table.insert(lI, uG.DescendantAdded:Connect(function(mj)
        if Toggles.InstantProximityPrompt.Value then
            lZ(mj)
        end
    end))
    table.insert(lI, RunService.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        local Character = LocalPlayer.Character
        if Toggles.NoClip.Value and Character then
            for k, v in Character:QueryDescendants("BasePart") do
                if lJ[v] == nil then
                    lJ[v] = v.CanCollide
                end
                v.CanCollide = false
            end
        end
    end))
    table.insert(lI, UserInputService.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        local DM = ua()
        if Toggles.InfJump.Value and DM then
            DM:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end))
    table.insert(lI, RunService.RenderStepped:Connect(function()
        if Library.Unloaded then
            return
        end
        local Character = LocalPlayer.Character
        local DT = Character and Character:FindFirstChildOfClass("Humanoid")
        local DU = Character
        if DU then
            DU = Character:FindFirstChild("HumanoidRootPart")
        end
        local DS_1 = DU
        local CurrentCamera = uG.CurrentCamera
        if Toggles.WalkSpeedEnabled.Value and DT then
            if lK[DT] == nil then
                lK[DT] = DT.WalkSpeed
            end
            DT.WalkSpeed = uO.WalkSpeed.Value
        end
        if Toggles.Fly.Value and DS_1 and DT and CurrentCamera then
            if UserInputService:GetFocusedTextBox() then
                return
            end
            if lL[DT] == nil then
                lL[DT] = DT.PlatformStand
            end
            DT.PlatformStand = true
            local DU_4 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                DU_4 += CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                DU_4 -= CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                DU_4 -= CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                DU_4 += CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                DU_4 += Vector3.yAxis
            end
            local D_ = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
            if D_ == 1 then
                DU_4 -= Vector3.yAxis
            end
            if DU_4.Magnitude > 0 then
                DS_1.AssemblyLinearVelocity = DU_4.Unit * uO.FlySpeed.Value
            else
                DS_1.AssemblyLinearVelocity = Vector3.zero
            end
        end
    end))
    tH.Track(function()
        for k, v in lI do
            v:Disconnect()
        end
        lN()
        lR()
        lV()
        l1()
    end)
end
Gv_6()
uU = function()
    local Ff, Fg, Label, Fi, Fj, Fk, Fl, Fm, Fn, Fo, Fp, Fq, Fr, Fs
    Fi = {}
    Fr = {}
    Fl = nil
    Fs = false
    Fn = 0
    Fj = 0
    Ff = os.clock()
    local MenuGroup = t0.Settings:AddLeftGroupbox("Menu", "logs")
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Label = MenuGroup:AddLabel("AFK triggers: 0")
    Fk = function()
        local CurrentCamera
        CurrentCamera = uG.CurrentCamera
        local D8 = not CurrentCamera or not tu(VirtualUser.CaptureController)
        local Ec = if D8 then 1 else 0
        local Ea = 809 * Ec + 275 * (1 - Ec)
        local Eb = 3964 * Ec + 190 * (1 - Ec)
        if not ((Ea * 617 + Eb * 1763 + Ea * Eb) % 16777213 == 10694561) then
            D8 = not tu(VirtualUser.ClickButton2)
        end
        if D8 then
            return false
        end
        local D8_1 = pcall(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        end)
        if not D8_1 then
            return false
        end
        Fn += 1
        Ff = os.clock()
        pcall(function()
            Label:SetText("AFK triggers: " .. Fn)
        end)
        return true
    end
    Fo = function(nl)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not nl)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not nl
            end
        end)
        if not nl then
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
    Fq = function(nz)
        local Eh = nz.ClassName == "ParticleEmitter" or nz.ClassName == "Trail"
        local El = if Eh then 1 else 0
        local Ej = 1928 * El + 500 * (1 - El)
        local Ek = 402 * El + 1437 * (1 - El)
        if not ((Ej * 2784 + Ek * 3171 + Ej * Ek) % 16777213 == 7417350) then
            Eh = nz.ClassName == "Smoke"
        end
        if not Eh then
            Eh = nz.ClassName == "Fire"
        end
        if not Eh then
            Eh = nz.ClassName == "Sparkles"
        end
        if not Eh then
            Eh = nz.ClassName == "Explosion"
        end
        if not Eh then
            Eh = nz.ClassName == "Beam"
        end
        if Eh then
            if Fi[nz] == nil then
                Fi[nz] = nz.Enabled
            end
            pcall(function()
                nz.Enabled = false
            end)
        end
    end
    Fm = function()
        for k, v in Fi do
            local Eq = k
            local Es = v
            if Eq.Parent then
                pcall(function()
                    Eq.Enabled = Es
                end)
            end
        end
        table.clear(Fi)
        if Fl then
            pcall(function()
                settings().Rendering.QualityLevel = Fl.Quality
            end)
            Lighting.GlobalShadows = Fl.Shadows
            Lighting.FogEnd = Fl.Fog
            Fl = nil
        end
    end
    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3D", {
        Text = "Disable 3D Rendering",
        Default = false,
        Callback = function(nN)
            pcall(function()
                RunService:Set3dRenderingEnabled(not nN)
            end)
        end
    })
    MenuGroup:AddToggle("FpsBoost", {
        Text = "FPS Boost",
        Default = false,
        Callback = function(nS)
            if nS then
                if not Fl then
                    Fl = {
                        Quality = settings().Rendering.QualityLevel,
                        Shadows = Lighting.GlobalShadows,
                        Fog = Lighting.FogEnd
                    }
                end
                pcall(function()
                    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
                end)
                Lighting.GlobalShadows = false
                Lighting.FogEnd = 9000000000
                for k, v in uG:QueryDescendants("ParticleEmitter,Trail,Smoke,Fire,Sparkles,Beam") do
                    pcall(Fq, v)
                end
            else
                Fm()
            end
        end
    })
    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = uO.MenuKeybind
    Fo(true)
    local ScriptGroup = t0.Settings:AddLeftGroupbox("Script", "terminal")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
    Toggles.AntiGameplayPause:OnChanged(function()
        Fo(Toggles.AntiGameplayPause.Value)
    end)
    if Toggles.AntiGameplayPause.Value then
        Fo(true)
    end
    table.insert(Fr, LocalPlayer.Idled:Connect(function()
        if Toggles.AntiAfk.Value and not Library.Unloaded then
            Fk()
        end
    end))
    table.insert(Fr, uG.DescendantAdded:Connect(function(oa)
        if Toggles.FpsBoost.Value then
            Fq(oa)
        end
    end))
    Fg = function(oe)
        if Fs or Library.Unloaded or not Toggles.AutoReconnect.Value then
            return
        end
        Fs = true
        local EI = Fj
        local EJ_1 = pcall(function()
            if oe then
                TeleportService:Teleport(game.PlaceId, LocalPlayer)
            else
                TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
            end
        end)
        if not EJ_1 then
            Fs = false
            if not oe and EI == Fj then
                task.delay(1.5, function()
                    if EI == Fj then
                        Fg(true)
                    end
                end)
            end
        end
    end
    table.insert(Fr, TeleportService.TeleportInitFailed:Connect(function(oA)
        local ET
        if oA == LocalPlayer and Fs then
            Fs = false
            ET = Fj
            task.delay(3, function()
                if ET == Fj then
                    Fg(true)
                end
            end)
        end
    end))
    task.spawn(function()
        local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
        local E0 = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        if Library.Unloaded or not E0 then
            return
        end
        table.insert(Fr, E0.ChildAdded:Connect(function(oP)
            if oP.Name == "ErrorPrompt" then
                Fg(false)
            end
        end))
    end)
    Fp = task.spawn(function()
        while not Library.Unloaded do
            if Toggles.AntiGameplayPause.Value then
                Fo(true)
            end
            local E6 = Toggles.AntiAfk.Value and os.clock() - Ff >= 60
            if E6 then
                Fk()
            end
            task.wait(1)
        end
    end)
    tH.Track(function()
        Fj += 1
        for k, v in Fr do
            v:Disconnect()
        end
        pcall(task.cancel, Fp)
        Fo(false)
        Fm()
        pcall(function()
            RunService:Set3dRenderingEnabled(true)
        end)
        tL()
    end)
end
uU()
Gv_5 = function()
    local Gl, Gm, Gn, Go
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("MyScriptHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(t0.Settings)
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/StealTheMuseum")
    local Gp = SaveManager:BuildConfigSection(t0.Settings)
    Go = function(ph, pi)
        local Fz_1 = (ph == "Toggle" and Toggles or uO)[pi]
        local Fy_2 = type(Fz_1) == "table" and Fz_1.Type == ph
        return Fy_2 and Fz_1 or nil
    end
    Gm = function(pr, ps)
        local Type = ps.Type
        if Type == "Toggle" then
            return { idx = pr, type = "Toggle", value = ps.Value == true }
        elseif Type == "Slider" then
            return { idx = pr, type = "Slider", value = tostring(ps.Value) }
        elseif Type == "Dropdown" then
            return { idx = pr, type = "Dropdown", multi = ps.Multi == true, value = ps.Value }
        elseif Type == "Input" then
            local FG = ps.Value or ""
            return { idx = pr, type = "Input", text = tostring(FG) }
        elseif Type == "ColorPicker" then
            return { idx = pr, type = "ColorPicker", value = ps.Value:ToHex(), transparency = ps.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = pr,
                type = "KeyPicker",
                mode = ps.Mode,
                key = ps.Value,
                modifiers = ps.Modifiers,
                toggled = ps.Toggled
            }
        else
            return nil
        end
    end
    Gl = function()
        local FM = {}
        for i, v in ipairs({ Toggles, uO }) do
            for k, v in pairs(v) do
                local FN = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if FN then
                    local FN_1 = Gm(k, v)
                    if FN_1 then
                        FM[#FM + 1] = FN_1
                    end
                end
            end
        end
        table.sort(FM, function(pC, pD)
            if pC.type ~= pD.type then
                return pC.type < pD.type
            end
            return pC.idx < pD.idx
        end)
        return { objects = FM }
    end
    Gn = function(pF)
        local F5
        F5 = nil
        local F6 = type(pF) ~= "table" or type(pF.idx) ~= "string" or type(pF.type) ~= "string" or SaveManager.Ignore[pF.idx]
        if F6 then
            return false
        end
        F5 = Go(pF.type, pF.idx)
        if not F5 then
            return false
        end
        local F6_1 = pcall(function()
            if pF.type == "Input" then
                if type(pF.text) ~= "string" then
                    return
                end
                F5:SetValue(pF.text)
            elseif pF.type == "ColorPicker" then
                F5:SetValueRGB(Color3.fromHex(pF.value), pF.transparency)
            elseif pF.type == "KeyPicker" then
                F5:SetValue({ pF.key, pF.mode, pF.modifiers })
                if pF.mode == "Toggle" and pF.toggled ~= nil then
                    F5.Toggled = pF.toggled
                    F5:Update()
                end
            else
                F5:SetValue(pF.value)
            end
        end)
        return F6_1
    end
    Gp:AddDivider()
    Gp:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    Gp:AddButton({
        Text = "Export Config to Clipboard",
        Func = function()
            local F9_1
            local F8_1
            F8_1, F9_1 = pcall(HttpService.JSONEncode, HttpService, Gl())
            if not F8_1 then
                Library:Notify("Failed to encode config")
                return
            end
            uH(F9_1, "Copied config")
        end
    })
    Gp:AddButton({
        Text = "Import Config from Clipboard Text",
        Func = function()
            local Gc = uO.SaveManager_ImportSource and uO.SaveManager_ImportSource.Value or ""
            local Gc_2
            local Gc_1 = Gc == ""
            local Gd = type(Gc) ~= "string" or Gc_1
            local Gd_1
            if Gd then
                Library:Notify("Paste a config first")
                return
            end
            if #Gc > 262144 then
                Library:Notify("Config too large")
                return
            end
            Gc_2, Gd_1 = pcall(HttpService.JSONDecode, HttpService, Gc)
            local Gb_2 = not Gc_2 or type(Gd_1) ~= "table" or type(Gd_1.objects) ~= "table"
            if Gb_2 then
                Library:Notify("Invalid config")
                return
            end
            local Gb_3 = 0
            for i, v in ipairs(Gd_1.objects) do
                if Gn(v) then
                    Gb_3 += 1
                end
            end
            uO.SaveManager_ImportSource:SetValue("")
            Library:Notify("Imported " .. Gb_3 .. " settings")
        end
    })
    SaveManager:LoadAutoloadConfig()
    if Toggles.HideUiOnStart and Toggles.HideUiOnStart.Value then
        pcall(function()
            Library:Toggle(false)
        end)
    end
end
Gv_5()
