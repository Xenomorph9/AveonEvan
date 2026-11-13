local Net
local CollectionService
local VirtualUser
local j7
local kQ
local jP
local kx
local kd
local kW
local BaseConfig
local kD
local LocalPlayer
local j0
local SwordConfig
local kp
local j6
local kP
local Toggles
local kw
local kc
local RebirthConfig
local jU
local kC
local ki
local j_
local kI
local SkillTreeConfig
local j5
local kO
local jN
local kv
local kb
local jT
local kB
local kh
local jZ
local kH
local kn
local j4
local kN
local kt
local ka
local kT
local RarityConfig
local kA
local Label
local jY
local Workspace
local km
local j3
local UpgradeConfig
local ks
local j9
local Options
local jR
local kf
local connection
local kF
local kl
local j2
local kL
local kr
local kR
local jQ
local ClientRegistry
local jW
local connection2
local kk
local function fn5()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    kR = tick()
end
local function onCopyJoinScript_JobID()
    local lE = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, kc)
    if setclipboard then
        setclipboard(lE)
    elseif toclipboard then
        toclipboard(lE)
    end
    j4:Notify("Copied join script to clipboard")
end
local function fn36()
    local mw = ClientRegistry.TryGet("UpgradeBoardController")
    return mw and mw.maxBaseHP or 0
end
local function fn62()
    local pk = j0("SellRarities")
    if not pk then
        return false
    end
    local pl = {}
    for i, v in ipairs(j5()) do
        local pm = tonumber(v:GetAttribute("Rarity"))
        local attr = v:GetAttribute("HeldId")
        local po = pm and pk[pm] and typeof(attr) == "string"
        if po and attr ~= "" then
            table.insert(pl, attr)
        end
    end
    if #pl == 0 then
        return false
    elseif not kA() then
        return false
    else
        task.wait(0.1)
        local pk_1 = 0
        for i, v in ipairs(pl) do
            Net:FireServer("SellHeld", v)
            pk_1 += 1
            if pk_1 >= 8 then
                break
            end
        end
        return pk_1 > 0
    end
end
local function fn64(dc, dd, de, df)
    if not df then
        return false
    end
    local nY = {}
    local inventoryGridSize = BaseConfig.inventoryGridSize
    local n3 = 1
    while n3 <= inventoryGridSize do
        local n4 = n3
        local nZ_1 = dd[n4]
        local n_ = nZ_1 and typeof(nZ_1.rarity) == "number"
        if n_ then
            table.insert(nY, { slotId = n4, rarity = nZ_1.rarity })
        end
        n3 += 1
    end
    table.sort(nY, function(dl, dm)
        return dl.rarity > dm.rarity
    end)
    for i, v in ipairs(nY) do
        local lineupTotalSlots = BaseConfig.lineupTotalSlots
        local oe = 1
        while oe <= lineupTotalSlots do
            local of = oe
            local nY_2 = dc:IsSlotUsable(of) and not ka(of) and de[of] == nil
            if nY_2 then
                Net:FireServer("PlantPack", v.slotId, of)
                return true
            end
            oe += 1
        end
    end
    return false
end
local function fn80(bY)
    if not bY then
        return {}
    elseif typeof(bY.GetInventory) == "function" then
        local mI_1 = {}
        local mJ_1 = bY:GetInventory() or mI_1
        return mJ_1
    else
        return bY.inventory or {}
    end
end
local function fn87()
    local o1 = kd()
    if not o1 then
        return nil
    end
    local Functionals = o1:FindFirstChild("Functionals")
    local o1_1 = Functionals and Functionals:FindFirstChild("Interactibles")
    local o2_1 = o1_1
    if o1_1 then
        o1_1 = o2_1:FindFirstChild("Merchants")
    end
    local o2_2 = o1_1
    if o1_1 then
        o1_1 = o2_2:FindFirstChild("SellMerchant")
    end
    local o2_3 = o1_1
    if o1_1 then
        o1_1 = o2_3:FindFirstChild("SellZone")
    end
    local o2_4 = o1_1
    if not o2_4 then
        return nil
    elseif o2_4:IsA("BasePart") then
        return o2_4
    else
        return o2_4:FindFirstChildWhichIsA("BasePart", true)
    end
end
local function fn107()
    local ms = ClientRegistry.TryGet("UpgradeBoardController")
    return ms and ms.upgrades or {}
end
local function fn112(eW, eX, eY)
    if not kl(eX) then
        return false
    end
    local pG = eY.SpawnLevel or 0
    local pG_1 = math.min(pG + 1, RarityConfig.MAX_RARITY)
    local pH_1 = RarityConfig.getPackCost(pG_1)
    if jZ(eW) < pH_1 then
        return false
    end
    Net:FireServer("BuyPack")
    return true
end
local function fn130()
    return ClientRegistry.TryGet("DataController")
end
local function fn144()
    local o4 = kW()
    local o5 = kr()
    if not (o4 and o5) then
        return false
    end
    if (o4.Position - o5.Position).Magnitude > 8 then
        o4.CFrame = o5.CFrame * CFrame.new(0, 3, 0)
    end
    return true
end
local function onRscripts()
    if setclipboard then
        setclipboard(j6)
    elseif toclipboard then
        toclipboard(j6)
    end
    j4:Notify("Copied Rscripts profile to clipboard")
end
local function fn180(f5)
    local qB = not f5 or typeof(f5) ~= "Instance"
    if qB then
        return false
    end
    return f5:GetAttribute("OwnerUserId") == LocalPlayer.UserId
end
local function fn184(bd, be)
    local l4 = Options[bd]
    local l5 = l4 and tonumber(l4.Value)
    return l5 or be
end
local function fn194(G, H)
    return string.format('<font color="%s">%s</font>', H, G)
end
local function fn251()
    local lx_1
    local lw_1
    if identifyexecutor then
        lx_1, lw_1 = identifyexecutor()
        local ly = lx_1 ~= ""
        local lz = type(lx_1) == "string" and ly
        if lz then
            local ly_1 = type(lw_1) == "string" and lw_1 ~= "" and lx_1 .. " " .. lw_1
            jP = ly_1 or lx_1
        end
    end
end
local function fn254()
    local Character = LocalPlayer.Character
    local mS = Character and Character:FindFirstChild("HumanoidRootPart")
    return mS
end
local function fn283(dU)
    local oD = km(dU)
    if next(oD) == nil then
        return nil
    end
    local oE = {}
    for k in pairs(oD) do
        local oD_1 = tonumber(string.match(k, "^(%d+)"))
        if not oD_1 then
            for i, v in ipairs(kC) do
                if v == k then
                    oD_1 = i
                    break
                end
            end
        end
        if oD_1 then
            oE[oD_1] = true
        end
    end
    if next(oE) == nil then
        return nil
    end
    return oE
end
local function fn287(a8)
    local l1 = Toggles[a8]
    return l1 ~= nil and l1.Value == true
end
local function fn313(bN)
    local mz = bN and typeof(bN.cash) == "number"
    if mz then
        return bN.cash
    end
    return 0
end
local function fn342(b_)
    if not b_ then
        return {}
    elseif typeof(b_.GetLineup) == "function" then
        local mL_1 = {}
        local mM_1 = b_:GetLineup() or mL_1
        return mM_1
    else
        return b_.lineup or {}
    end
end
local function fn343()
    local o8 = {}
    local Backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
    local Character = LocalPlayer.Character
    for i, v in ipairs(CollectionService:GetTagged("PlantTool")) do
        if v:IsA("Tool") then
            local pb = Backpack and v:IsDescendantOf(Backpack)
            local pc = pb
            if not pc then
                local pb_1 = Character and v:IsDescendantOf(Character)
                pc = pb_1
            end
            if pc then
                table.insert(o8, v)
            end
        end
    end
    return o8
end
local function fn376(bj)
    local l7 = Options[bj]
    local l8 = l7 and l7.Value
    if typeof(l8) ~= "table" then
        return {}
    end
    local l8_1 = {}
    for k, v in pairs(l8) do
        if v == true then
            l8_1[k] = true
        else
            local l7_2 = typeof(k) == "number" and typeof(v) == "string"
            if l7_2 then
                l8_1[v] = true
            end
        end
    end
    return l8_1
end
local function worker2()
    local q9 = 0
    local ra = {}
    local rb = 1
    local rc = 0
    local rd = SwordConfig.reach or 20
    local max = math.max
    local rf = SwordConfig.swingRateLimit or 20
    local rd_2 = 1 / max(12, rf)
    while not j4.Unloaded do
        if not kf("KillAura") then
            task.wait(0.1)
            continue
        end
        local rf_1 = kW()
        if not rf_1 then
            task.wait(rd_2)
            continue
        end
        if tick() - q9 >= 1 then
            j9()
            q9 = tick()
        end
        local rg = kf("KillAuraTeleport")
        if tick() - rc >= 0.2 then
            local rh_1 = jQ("KillAuraRange", 120)
            local ri_1 = rg and math.max(rh_1, 600)
            local rj_1 = ri_1 or rh_1
            ra = kx(rf_1.Position, rj_1)
            rc = tick()
            if rb > #ra then
                rb = 1
            end
        end
        if #ra == 0 then
            task.wait(0.1)
            continue
        end
        local rh_3 = nil
        for i, v in ipairs(ra) do
            if v.part.Parent then
                if (v.part.Position - rf_1.Position).Magnitude <= rd then
                    rh_3 = v
                    break
                end
            end
        end
        if not rh_3 then
            if rb > #ra then
                rb = 1
            end
            local ri_3 = #ra
            local rt = 1
            while rt <= ri_3 do
                local ri_4 = ra[rb]
                rb += 1
                if rb > #ra then
                    rb = 1
                end
                if ri_4 and ri_4.part.Parent then
                    rh_3 = ri_4
                    break
                end
                rt += 1
            end
        end
        if not rh_3 then
            task.wait(rd_2)
            continue
        end
        if (rh_3.part.Position - rf_1.Position).Magnitude > rd then
            if rg then
                rf_1.CFrame = rh_3.part.CFrame * CFrame.new(0, 0, 3)
                Net:FireServer("SwordSwing")
                task.wait(rd_2)
                continue
            end
            task.wait(rd_2)
            continue
        end
        Net:FireServer("SwordSwing")
        task.wait(rd_2)
    end
end
local function fn405(J, K, L)
    return string.format("<b>%s</b> %s %s", J, kL("-", "#5a6070"), kL(K, L))
end
local function onInputChanged(a_)
    local UserInputType = a_.UserInputType
    local lX = UserInputType == Enum.UserInputType.MouseMovement
    local l0 = if lX then 1 else 0
    local lZ = 135 * l0 + 3373 * (1 - l0)
    local l_ = 1478 * l0 + 3480 * (1 - l0)
    if not ((lZ * 55 + l_ * 3132 + lZ * l_) % 16777213 == 4836051) then
        lX = UserInputType == Enum.UserInputType.Gamepad1
    end
    if lX then
        jN = tick()
    end
end
local function fn438(cj)
    local inventoryGridSize = BaseConfig.inventoryGridSize
    local nc = 1
    while true do
        if not (nc <= inventoryGridSize) then
            return false
        end
        if cj[nc] == nil then
            break
        end
        nc += 1
    end
    return true
end
local function worker()
    local lH_1
    while true do
        task.wait(1)
        if j4.Unloaded then
            break
        end
        local lG = math.floor(os.clock() - kP)
        if lG < 60 then
            lH_1 = lG .. "s"
        elseif lG < 3600 then
            lH_1 = string.format("%dm %ds", lG // 60, lG % 60)
        else
            lH_1 = string.format("%dh %dm", lG // 3600, lG % 3600 // 60)
        end
        Label:SetText(ks("Session time", lH_1, jT))
    end
end
local function fn449(cH)
    if tick() < kp then
        return false
    end
    local nw = {}
    local nw_1
    local inventoryGridSize = BaseConfig.inventoryGridSize
    local nx_3
    local nG = 1
    while nG <= inventoryGridSize do
        local nH = nG
        local nx_1 = cH[nH]
        local ny_1 = nx_1 and typeof(nx_1.rarity) == "number" and nx_1.rarity < RarityConfig.MAX_MERGE_RARITY
        if ny_1 then
            local ny_2 = nw[nx_1.rarity]
            if not ny_2 then
                ny_2 = {}
                nw[nx_1.rarity] = ny_2
            end
            table.insert(ny_2, nH)
        end
        nG += 1
    end
    local nx_2 = nil
    for k, v in pairs(nw) do
        local ny_3 = #v >= 2
        if ny_3 then
            ny_3 = not nx_2 or k < nx_2
        end
        if ny_3 then
            nx_2 = k
        end
    end
    if not nx_2 then
        return false
    end
    local ny_4 = nw[nx_2]
    nw_1, nx_3 = ny_4[1], ny_4[2]
    local ny_5 = j7(kT())
    local nz_2 = ny_5[nw_1]
    local nA = ny_5[nx_3]
    if not kD.canMerge(nz_2, nA, RarityConfig.MAX_MERGE_RARITY) then
        kp = tick() + 0.2
        return false
    end
    local ny_6 = ki(nz_2)
    local nz_3 = ki(nA)
    if not ny_6 or not nz_3 or ny_6 ~= nz_3 then
        kp = tick() + 0.2
        return false
    end
    Net:FireServer("MovePack", nw_1, nx_3)
    kp = tick() + 0.3
    return true
end
local function fn456()
    local Map = Workspace:FindFirstChild("Map")
    local oR = Map and Map:FindFirstChild("Plots")
    if not oR then
        return nil
    end
    for i, child in ipairs(oR:GetChildren()) do
        local oQ_2 = child:GetAttribute("OwnerUserId") or child:GetAttribute("Owner")
        if oQ_2 == LocalPlayer.UserId then
            return child
        end
    end
    return nil
end
local function fn458()
    if setclipboard then
        setclipboard(kb)
    elseif toclipboard then
        toclipboard(kb)
    end
    j4:Notify("Copied Discord invite to clipboard")
end
local function fn461(f1)
    local qw = not f1
    local qA = if qw then 1 else 0
    local qy = 3315 * qA + 1451 * (1 - qA)
    local qz = 2575 * qA + 123 * (1 - qA)
    if not ((qy * 2814 + qz * 2738 + qy * qz) % 16777213 == 8137672) then
        qw = typeof(f1) ~= "Instance"
    end
    if qw then
        return nil
    end
    local qw_1 = f1:FindFirstChild("HumanoidRootPart") or f1.PrimaryPart or f1:FindFirstChildWhichIsA("BasePart", true)
    return qw_1
end
local function fn466(fM)
    local qj = jQ("UnlockPlotDelay", 1)
    if tick() - kv < qj then
        return false
    end
    local lineupTotalSlots = BaseConfig.lineupTotalSlots
    local qn = 1
    while qn <= lineupTotalSlots do
        local qo = qn
        if not fM:IsSlotUnlocked(qo) then
            Net:FireServer("UnlockNextSlot")
            kv = tick()
            return true
        end
        qn += 1
    end
    return false
end
local function fn477()
    connection:Disconnect()
    connection2:Disconnect()
    print("Merge Plants vs Mobs unloaded")
end
local function fn516(fU)
    local qq = fU.rebirths
    local qv = if qq then 1 else 0
    local qt = 286 * qv + 2595 * (1 - qv)
    local qu = 277 * qv + 3136 * (1 - qv)
    if not ((qt * 1715 + qu * 2707 + qt * qu) % 16777213 == 1319551) then
        qq = 0
    end
    local qr = qq
    local qq_1 = RebirthConfig.getRequirement(qr)
    local qr_1 = not qq_1 or typeof(qq_1.cashThreshold) ~= "number"
    if qr_1 then
        return false
    elseif jZ(fU) < qq_1.cashThreshold then
        return false
    else
        Net:FireServer("Rebirth")
        return true
    end
end
local function onInputBegan()
    jN = tick()
end
local function fn596(X)
    local DiscordGroup = X:AddLeftGroupbox("Discord", nil, true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = kN })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = kN })
end
local function onUnload()
    j4:Unload()
end
local function worker3()
    local q6_1
    local q5_1
    while not j4.Unloaded do
        task.wait(0.15)
        local q1 = kT()
        if not q1 then
            continue
        end
        local q2 = j7(q1)
        local q3 = jW(q1)
        local q4 = kI()
        if kf("AutoMerge") then
            q5_1, q6_1 = pcall(kw, q2)
            if q5_1 and q6_1 then
                task.wait(0.12)
            end
            q2 = j7(q1)
        end
        if kf("AutoPlace") then
            pcall(kt, q1, q2, q3, not j2(q2))
            q2 = j7(q1)
            q3 = jW(q1)
        end
        if kf("AutoReplaceBetter") then
            pcall(j_, q1, q2, q3)
            q2 = j7(q1)
            jW(q1)
        end
        if kf("AutoSell") then
            pcall(j3)
        end
        if kf("AutoBuyPack") then
            pcall(jR, q1, q2, q4)
        end
        if kf("AutoBuyUpgrades") then
            pcall(jU, q1, kI())
        end
        if kf("AutoBuySkills") then
            pcall(kB)
        end
        if kf("AutoUnlockPlots") then
            pcall(kn, q1)
        end
        if kf("AutoRebirth") then
            pcall(kO, q1)
        end
    end
end
local function fn654(bt, bu)
    local mg = Options[bt]
    if not mg then
        return bu
    end
    local Value = mg.Value
    if type(Value) == "number" then
        return Value
    elseif type(Value) == "string" then
        local mg_1 = tonumber(string.match(Value, "^(%d+)"))
        if mg_1 then
            return mg_1
        end
        for i, v in ipairs(kC) do
            if v == Value then
                return i
            end
        end
        return bu
    else
        return bu
    end
end
local function fn689()
    local Character = LocalPlayer.Character
    local mY = Character and Character:FindFirstChildOfClass("Humanoid")
    return mY
end
local function fn698(cn)
    local nf = {}
    local inventoryGridSize = BaseConfig.inventoryGridSize
    local nm = 1
    while nm <= inventoryGridSize do
        local ng_1 = cn[nm]
        local nh = ng_1 and typeof(ng_1.rarity) == "number" and ng_1.rarity < RarityConfig.MAX_MERGE_RARITY
        if nh then
            local rarity = ng_1.rarity
            local ni = nf[ng_1.rarity] or 0
            nf[rarity] = ni + 1
            if nf[ng_1.rarity] >= 2 then
                return true
            end
        end
        nm += 1
    end
    return false
end
local function fn701()
    if tick() - kH < 0.35 then
        return false
    end
    local p1 = ClientRegistry.TryGet("SkillTreeController")
    local p2 = kT()
    if not p1 or not p2 then
        return false
    end
    local owned = p1.owned
    if typeof(owned) ~= "table" then
        return false
    end
    local p1_1 = jZ(p2)
    local p4_1 = kQ(p2)
    local p2_1 = {}
    for k, v in SkillTreeConfig.ids() do
        local p5 = not SkillTreeConfig.isNav(v) and v ~= SkillTreeConfig.CENTRAL_ID and not owned[v]
        if p5 then
            if SkillTreeConfig.canUnlock(owned, v) then
                local p5_1 = SkillTreeConfig.get(v)
                local p6 = p5_1 and p5_1.cost
                if typeof(p6) == "table" then
                    local p6_1 = tonumber(p6.amount) or 0
                    local p6_2 = p6.currency
                    local qi = if p6_2 then 1 else 0
                    local qg = 3696 * qi + 1320 * (1 - qi)
                    local qh = 803 * qi + 2083 * (1 - qi)
                    if not ((qg * 899 + qh * 1927 + qg * qh) % 16777213 == 7837973) then
                        p6_2 = "Cash"
                    end
                    local p5_3 = p6_2
                    if p6_1 > 0 then
                        if p6_1 <= (p5_3 == "Gems" and p4_1 or p1_1) then
                            table.insert(p2_1, { id = v, amount = p6_1, currency = p5_3 })
                        end
                    end
                end
            end
        end
    end
    if #p2_1 == 0 then
        return false
    end
    table.sort(p2_1, function(fG, fH)
        return fG.amount < fH.amount
    end)
    local p1_2 = p2_1[1]
    Net:FireServer("UnlockSkill", p1_2.id)
    owned[p1_2.id] = true
    kH = tick()
    return true
end
local function fn708(e5, e6)
    local pJ = km("BaseUpgrades")
    if next(pJ) == nil then
        return false
    end
    local pK = jZ(e5)
    local pL = kQ(e5)
    local pM = false
    for k, v in pairs(jY) do
        if pJ[k] then
            local pN_1 = e6[v] or 0
            local pN_2 = UpgradeConfig.get(v)
            if pN_2 and pN_1 < pN_2.maxLevel then
                local pN_3 = UpgradeConfig.getCostFor(v, pN_1)
                local pO_1 = UpgradeConfig.getCurrencyFor(v)
                if typeof(pN_3) == "number" then
                    if pO_1 == "Gems" and pN_3 <= pL then
                        Net:FireServer("Upgrade", v)
                        pL -= pN_3
                        pM = true
                    else
                        if pO_1 == "Cash" and pN_3 <= pK then
                            Net:FireServer("Upgrade", v)
                            pK -= pN_3
                            pM = true
                        end
                    end
                end
            end
        end
    end
    if pJ["Base Health"] then
        local pL_1 = kh()
        local pN_4 = 0
        if pL_1 > 0 then
            pN_4 = math.max(0, math.floor((pL_1 - BaseConfig.defaultMaxHP) / BaseConfig.upgradeAmountPerLevel))
        end
        local pL_2 = BaseConfig.getUpgradeCost(pN_4)
        local pN_5 = typeof(pL_2) == "number" and pL_2 <= pK
        if pN_5 then
            Net:FireServer("UpgradeBaseHP")
            pM = true
        end
    end
    if pJ["More Slots"] then
        local lineupTotalSlots = BaseConfig.lineupTotalSlots
        local pZ = 1
        while pZ <= lineupTotalSlots do
            local p_ = pZ
            if not e5:IsSlotUnlocked(p_) then
                Net:FireServer("UnlockNextSlot")
                pM = true
                break
            end
            pZ += 1
        end
    end
    return pM
end
local function fn709(dv, dw, dx)
    local ol_1
    local rarity2
    local oh = kF("ReplacePlantMax", RarityConfig.MAX_RARITY)
    local oi = kF("ReplacePackMin", 1)
    local rarity
    ol_1, rarity2 = nil, nil
    local inventoryGridSize = BaseConfig.inventoryGridSize
    local om_2
    local ov = 1
    while ov <= inventoryGridSize do
        local ow = ov
        local om_1 = dw[ow]
        local oo_1 = om_1 and typeof(om_1.rarity) == "number" and om_1.rarity >= oi
        if oo_1 then
            if not rarity2 or om_1.rarity > rarity2 then
                ol_1 = ow
                rarity2 = om_1.rarity
            end
        end
        ov += 1
    end
    if not ol_1 then
        return false
    end
    om_2, rarity = nil, nil
    local lineupTotalSlots = BaseConfig.lineupTotalSlots
    local oA = 1
    while oA <= lineupTotalSlots do
        local oB = oA
        local oo_4 = dv:IsSlotUsable(oB) and not ka(oB)
        if oo_4 then
            local oo_5 = dx[oB]
            local op = oo_5 and typeof(oo_5.rarity) == "number"
            if op then
                if oo_5.rarity <= oh and rarity2 > oo_5.rarity then
                    if not rarity or oo_5.rarity < rarity then
                        om_2 = oB
                        rarity = oo_5.rarity
                    end
                end
            end
        end
        oA += 1
    end
    if not om_2 then
        return false
    end
    Net:FireServer("PlantPack", ol_1, om_2)
    return true
end
local function worker4()
    while not j4.Unloaded do
        task.wait(2)
        if kf("AntiAfk") then
            local qY = tick() - jN
            local qZ = tick() - kR
            if qY >= 300 and qZ >= 60 then
                pcall(kk)
            else
                if qY < 300 and qZ >= 300 then
                    pcall(kk)
                end
            end
        end
    end
end
jN = nil
Toggles = nil
jP = nil
jQ = nil
jR = nil
RarityConfig = nil
jT = nil
jU = nil
BaseConfig = nil
jW = nil
connection = nil
jY = nil
jZ = nil
j_ = nil
j0 = nil
Net = nil
j2 = nil
j3 = nil
j4 = nil
j5 = nil
j6 = nil
j7 = nil
j9 = nil
ka = nil
kb = nil
kc = nil
kd = nil
ClientRegistry = nil
kf = nil
Label = nil
kh = nil
ki = nil
LocalPlayer = nil
kk = nil
kl = nil
km = nil
kn = nil
SkillTreeConfig = nil
kp = nil
VirtualUser = nil
kr = nil
ks = nil
kt = nil
kv = nil
kw = nil
kx = nil
kA = nil
local j8, SeedPackConfig, kz
kB = nil
kC = nil
kD = nil
connection2 = nil
kF = nil
Workspace = nil
kH = nil
kI = nil
SwordConfig = nil
CollectionService = nil
kL = nil
UpgradeConfig = nil
kN = nil
kO = nil
kP = nil
kQ = nil
kR = nil
Options = nil
kT = nil
RebirthConfig = nil
kW = nil
local kU
local k6_1
local k4_1
local k2_1
local kZ_1, kZ_2
local AccountGroup
CollectionService, Workspace, VirtualUser, LocalPlayer, kb, j6, Net, BaseConfig, RarityConfig, RebirthConfig, UpgradeConfig, SwordConfig, kD, SeedPackConfig, SkillTreeConfig, ClientRegistry, kZ_1, j4, Toggles, Options, k4_1, jT, k6_1, kL, ks, kN, k2_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
CollectionService = game:GetService("CollectionService")
Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
LocalPlayer = Players.LocalPlayer
local k5 = "Merge Plants vs Mobs"
kb = "https://discord.gg/ehKVq7pf7v"
j6 = "https://rscripts.net/@Ouroboros"
Net = require(ReplicatedStorage:WaitForChild("Shared"):WaitForChild("Net"))
BaseConfig = require(ReplicatedStorage:WaitForChild("Balancing"):WaitForChild("BaseConfig"))
RarityConfig = require(ReplicatedStorage:WaitForChild("Balancing"):WaitForChild("RarityConfig"))
RebirthConfig = require(ReplicatedStorage:WaitForChild("Balancing"):WaitForChild("RebirthConfig"))
UpgradeConfig = require(ReplicatedStorage:WaitForChild("Balancing"):WaitForChild("UpgradeConfig"))
SwordConfig = require(ReplicatedStorage:WaitForChild("Shared"):WaitForChild("Configs"):WaitForChild("SwordConfig"))
kD = require(ReplicatedStorage:WaitForChild("Shared"):WaitForChild("Util"):WaitForChild("MergeMath"))
SeedPackConfig = require(ReplicatedStorage:WaitForChild("Balancing"):WaitForChild("SeedPackConfig"))
SkillTreeConfig = require(ReplicatedStorage:WaitForChild("Balancing"):WaitForChild("SkillTreeConfig"))
local Client = LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("Client")
local k__1
ClientRegistry = require(Client:WaitForChild("Lib"):WaitForChild("ClientRegistry"))
if (kN and not kN and (not Net and not jT) and (not Net and jT or (not kN or jT)) or (Net or jT or (kN or jT)) and (not kN and false or (j4 or j4))) and ((not k4_1 and k4_1 or (not jT or jT)) and (kN and not jT and (k4_1 or false)) or (j6 or j4 or k4_1 and not Net or (j6 and not k4_1 or (false or not kN)))) and not ((kN and not kN and (not Net and not jT) and (not Net and jT or (not kN or jT)) or (Net or jT or (kN or jT)) and (not kN and false or (j4 or j4))) and ((not k4_1 and k4_1 or (not jT or jT)) and (kN and not jT and (k4_1 or false)) or (j6 or j4 or k4_1 and not Net or (j6 and not k4_1 or (false or not kN))))) then
    kD = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
else
    kZ_1 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
end
if (RebirthConfig and k6_1 or (not k2_1 or false)) and (ClientRegistry or k2_1 or (not RebirthConfig or not k2_1)) or not ((RebirthConfig and k6_1 or (not k2_1 or false)) and (ClientRegistry or k2_1 or (not RebirthConfig or not k2_1))) then
    j4 = loadstring(game:HttpGet(kZ_1 .. "Library.lua"))()
else
    kZ_1 = loadstring(game:HttpGet(j4 .. "Library.lua"))()
end
local k8 = loadstring(game:HttpGet(kZ_1 .. "addons/ThemeManager.lua"))()
local k7 = loadstring(game:HttpGet(kZ_1 .. "addons/SaveManager.lua"))()
Toggles = j4.Toggles
Options = j4.Options
kL = fn194
ks = fn405
local k4_2 = "#7fd47f"
local k3 = "#6ec1ff"
jT = "#e8a34d"
local k6_2 = "#8b93a3"
kN = fn458
local Window = j4:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = kb, Copyable = true }, "|", k5 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local k9 = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "sprout"),
    Combat = Window:AddTab("Combat", "swords"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in k9 do
    fn596(v)
end
jP, AccountGroup, k__1, Label, kc, kZ_2 = nil, nil, nil, nil, nil, nil
local kX_1 = 3
repeat
    local k0_1 = (kX_1 * 1 + 0) % 3 + 1
    if k0_1 <= 2 then
        if k0_1 <= 1 then
            local r8 = bit32.rrotate(bit32.bxor(bit32.lrotate(kX_1, 13), string.byte(tostring(k__1))), 16)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(r8, 1993781053), 463317147), (bit32.bxor(bit32.band(r8, 2301186242), 2611660046))), 463317147), 2611660046) ~= r8 then
                k__1 = "Unknown"
                pcall(fn251)
                k4_2 = LocalPlayer.Info:AddLeftGroupbox("Account", "circle-user")
                k4_2:AddLabel(k9("User", jP.Name, kL), true)
                k4_2:AddLabel(k9("Status", "Keyless", kL), true)
                k4_2:AddLabel(k9("Executor", "Unknown", kL), true)
                k5 = LocalPlayer.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                k5:AddLabel(ks(AccountGroup .. " [" .. tostring(game.PlaceId) .. "]", Label), true)
                k5:AddLabel(k9("Place ID", tostring(game.PlaceId), Label), true)
                jT = k5:AddLabel(k9("Session time", "0s", k3), true)
            else
                jP = "Unknown"
                pcall(fn251)
                AccountGroup = k9.Info:AddLeftGroupbox("Account", "circle-user")
                AccountGroup:AddLabel(ks("User", LocalPlayer.Name, k4_2), true)
                AccountGroup:AddLabel(ks("Status", "Keyless", k4_2), true)
                AccountGroup:AddLabel(ks("Executor", jP, k4_2), true)
                k__1 = k9.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                k__1:AddLabel(kL(k5 .. " [" .. tostring(game.PlaceId) .. "]", k3), true)
                k__1:AddLabel(ks("Place ID", tostring(game.PlaceId), k3), true)
                Label = k__1:AddLabel(ks("Session time", "0s", jT), true)
            end
            kX_1 = (kX_1 + 1) % 12
        else
            if kX_1 * 82063955 + 4 + 5 <= kX_1 * 82063955 + 4 + 5 + 3 then
                kc = tostring(game.JobId)
            else
                jP = tostring(game.JobId)
            end
            kX_1 = (kX_1 + 7) % 12
        end
    else
        local k0_2 = {
            "glfsx",
            "fnpfoa",
            "wztnhis",
            "dgs",
            "hcophokggni",
            "cear",
            "rajpkw",
            "nqthoni",
            "qjyn",
            "zow",
            "snmgyvrbkajx",
            "cgtsdrso"
        }
        if k0_2[(kX_1 * 9 + 51) % 12 + 1] <= k0_2[(kX_1 * 9 + 51) % 12 + 1] then
            kZ_2 = #kc > 18
        else
            kc = #kZ_2 > 18
        end
        kX_1 = (kX_1 + 10) % 12
    end
until (kX_1 * 5 + 6) % 12 == 3
if kZ_2 then
    local kX_2 = 3
    repeat
        local kY_2 = { "kvo", "hjspv", "bznreelft", "dsqhrd", "brnqsxgybk", "okgz", "mnegkepxj", "iuzqggxhnehc" }
        if kY_2[(kX_2 * 11 + 82) % 8 + 1] <= kY_2[(kX_2 * 11 + 82) % 8 + 1] then
            kZ_2 = string.sub(kc, 1, 18) .. "..."
        else
            kc = string.sub(kZ_2, 1, 18) .. "..."
        end
        kX_2 = (kX_2 + 3) % 4
    until (kX_2 * 1 + 2) % 4 == 0
end
local kX_3 = kZ_2 or kc
kP, kC = nil, nil
k__1:AddLabel(ks("Server", kX_3, k6_2), true)
k__1:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
kP = os.clock()
task.spawn(worker)
local ScriptsGroup = k9.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(kL("Included in this hub", k6_2), true)
ScriptsGroup:AddLabel(kL(k5, k3), true)
local FeaturesGroup = k9.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(kL("Auto Merge / Place", k3), true)
FeaturesGroup:AddLabel(kL("Auto Replace Better", k3), true)
FeaturesGroup:AddLabel(kL("Auto Buy / Unlock", jT), true)
FeaturesGroup:AddLabel(kL("Auto Buy Skills", jT), true)
FeaturesGroup:AddLabel(kL("Auto Sell / Rebirth", k4_2), true)
FeaturesGroup:AddLabel(kL("Kill Aura", k6_2), true)
local SocialsGroup = k9.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = kN })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = k9.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = kN })
local FaqGroup = k9.Info:AddRightGroupbox("FAQ", "circle-help")
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
kC = {}
local MAX_RARITY = RarityConfig.MAX_RARITY
local lp = 1
while lp <= MAX_RARITY do
    local lq = lp
    table.insert(kC, lq .. " - " .. RarityConfig.getName(lq))
    lp += 1
end
jN, kR, connection, connection2, kp, jY, kH, kv, kk, kf, jQ, km, kF, kT, kI, kh, jZ, kQ, j7, jW, kW, kz, j9, kl, j2, ki, kw, ka, kt, j_, j0, kd, kr, kA, j5, j3, jR, jU, kB, kn, kO, j8, kU, kx = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local FarmGroup = k9.Main:AddLeftGroupbox("Farm", "sprout")
FarmGroup:AddToggle("AutoMerge", { Text = "Auto Merge Seed Packs", Default = false })
FarmGroup:AddToggle("AutoPlace", { Text = "Auto Place Seed Packs", Default = false })
FarmGroup:AddToggle("AutoBuyPack", { Text = "Auto Buy Seed Pack", Default = false })
local ReplaceGroup = k9.Main:AddRightGroupbox("Replace", "replace")
ReplaceGroup:AddToggle("AutoReplaceBetter", { Text = "Auto Replace Better", Default = false })
ReplaceGroup:AddDropdown("ReplacePlantMax", { Text = "Plant At Or Below", Values = kC, Default = kC[#kC] })
ReplaceGroup:AddDropdown("ReplacePackMin", { Text = "Pack At Or Above", Values = kC, Default = kC[1] })
local BuyGroup = k9.Main:AddLeftGroupbox("Buy", "shopping-cart")
BuyGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Base Upgrades", Default = false })
local k__2 = {
    "Cash Value",
    "Damage",
    "More Slots",
    "Base Health",
    "Gem Chance",
    "Mutation Chance",
    "Spawn Level"
}
BuyGroup:AddDropdown("BaseUpgrades", {
    Text = "Base Upgrades",
    Values = k__2,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
BuyGroup:AddToggle("AutoUnlockPlots", { Text = "Auto Unlock Plots", Default = false })
BuyGroup:AddSlider("UnlockPlotDelay", { Text = "Unlock Delay", Default = 1, Min = 1, Max = 10, Rounding = 0 })
BuyGroup:AddToggle("AutoBuySkills", { Text = "Auto Buy Affordable Skills", Default = false })
BuyGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local SellGroup = k9.Main:AddRightGroupbox("Sell", "banknote")
SellGroup:AddToggle("AutoSell", { Text = "Auto Sell Plants", Default = false })
SellGroup:AddDropdown("SellRarities", {
    Text = "Sell Rarities",
    Values = kC,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
local CombatGroup = k9.Combat:AddLeftGroupbox("Combat", "swords")
CombatGroup:AddToggle("KillAura", { Text = "Kill Aura", Default = false })
CombatGroup:AddToggle("KillAuraTeleport", { Text = "Teleport To Zombies", Default = true })
CombatGroup:AddSlider("KillAuraRange", { Text = "Range", Default = 120, Min = 20, Max = 400, Rounding = 0 })
local MenuGroup = k9.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
j4.ToggleKeybind = Options.MenuKeybind
jN = tick()
kR = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local lT = v
        pcall(function()
            lT:Disable()
        end)
    end
end)
kk = fn5
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
k8:SetLibrary(j4)
k8:SetFolder("OuroborosHub")
k8:SaveDefault("Monochrome")
k7:SetLibrary(j4)
k7:IgnoreThemeSettings()
k7:SetIgnoreIndexes({ "MenuKeybind" })
k7:SetFolder("OuroborosHub/MergePlantsVsMobs")
k7:BuildConfigSection(k9.Settings)
k8:ApplyToTab(k9.Settings)
k8:LoadDefault()
k7:LoadAutoloadConfig()
j4:OnUnload(fn477)
kf = fn287
jQ = fn184
km = fn376
kF = fn654
kT = fn130
kI = fn107
kh = fn36
jZ = fn313
kQ = function(bQ)
    local mC_1
    local mB = bQ and typeof(bQ.GetGems) == "function"
    local mB_1, mB_3
    if mB then
        mB_1, mC_1 = pcall(function()
            return bQ:GetGems()
        end)
        local mD = mB_1 and typeof(mC_1) == "number"
        if mD then
            return mC_1
        end
        if mB_3 then
            return bQ.gems
        end
        return 0
    end
    mB_3 = bQ and typeof(bQ.gems) == "number"
    if mB_3 then
        return bQ.gems
    end
    return 0
end
j7 = fn80
jW = fn342
kW = fn254
kz = fn689
j9 = function()
    local m_ = kz()
    if not m_ then
        return
    end
    for i, v in ipairs(CollectionService:GetTagged("SwordTool")) do
        local m7 = v
        local m0 = m7:IsA("Tool") and m7:IsDescendantOf(LocalPlayer)
        if m0 then
            pcall(function()
                m_:EquipTool(m7)
            end)
            return
        end
    end
end
kl = fn438
j2 = fn698
kp = 0
ki = function(cw)
    local nq_1
    local np = not cw or typeof(cw.rarity) ~= "number"
    local np_3
    if np then
        return nil
    end
    local np_1 = typeof(cw.id) == "string" and cw.id ~= ""
    if np_1 then
        return cw.id
    end
    local np_2 = typeof(cw.packId) == "string" and cw.packId ~= ""
    if np_2 then
        return cw.packId
    end
    np_3, nq_1 = pcall(function()
        return SeedPackConfig.getByRarity(cw.rarity)
    end)
    if np_3 and nq_1 then
        local np_4 = nq_1.id or nq_1.modelName or tostring(cw.rarity)
        return np_4
    end
    return tostring(cw.rarity)
end
kw = fn449
ka = function(c4)
    local nP
    nP = nil
    local nR_1
    nP = ClientRegistry.TryGet("SlotBusyController")
    local nQ = not nP or typeof(nP.IsBusy) ~= "function"
    local nQ_1
    if nQ then
        return false
    end
    nQ_1, nR_1 = pcall(function()
        return nP:IsBusy(c4)
    end)
    return nQ_1 and nR_1 == true
end
kt = fn64
j_ = fn709
j0 = fn283
kd = fn456
kr = fn87
if (j0 or kf or (kf or j0) or j0 and not kf and (kf and kf) or (kf or kf or not kf and j0) and (not kf and not kf or not j0 and j0)) and not (j0 or kf or (kf or j0) or j0 and not kf and (kf and kf) or (kf or kf or not kf and j0) and (not kf and not kf or not j0 and j0)) then
    jY = fn144
    j3 = fn343
    j5 = fn62
    kA = fn112
    jR = {
        ["Gem Chance"] = "GemChance",
        Damage = "Damage",
        ["Cash Value"] = "CashValue",
        ["Spawn Level"] = "SpawnLevel",
        ["Mutation Chance"] = "MutationChance"
    }
else
    kA = fn144
    j5 = fn343
    j3 = fn62
    jR = fn112
    jY = {
        ["Cash Value"] = "CashValue",
        Damage = "Damage",
        ["Gem Chance"] = "GemChance",
        ["Mutation Chance"] = "MutationChance",
        ["Spawn Level"] = "SpawnLevel"
    }
end
jU = fn708
kH = 0
kB = fn701
kv = 0
kn = fn466
kO = fn516
j8 = fn461
kU = fn180
kx = function(f9, ga)
    local qG, qH
    qG = {}
    qH = {}
    local function qI(ge)
        local qD = not kU(ge) or qG[ge]
        if qD then
            return
        end
        qG[ge] = true
        local qD_1 = j8(ge)
        if not qD_1 then
            return
        end
        local Magnitude = (qD_1.Position - f9).Magnitude
        if Magnitude <= ga then
            table.insert(qH, { part = qD_1, dist = Magnitude })
        end
    end
    local qJ = ClientRegistry.TryGet("ZombieRenderController")
    local qK = qJ and typeof(qJ.GetTrackedModels) == "function"
    if qK then
        local qK_1 = qJ:GetTrackedModels()
        if typeof(qK_1) == "table" then
            for k, v in pairs(qK_1) do
                qI(v)
            end
        end
    end
    for i, v in ipairs(CollectionService:GetTagged("Zombie")) do
        qI(v)
    end
    table.sort(qH, function(gz, gA)
        return gz.dist < gA.dist
    end)
    return qH
end
do
    task.spawn(worker4)
    task.spawn(worker3)
    task.spawn(worker2)
end
