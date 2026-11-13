local Pickaxe2
local o3
local oq
local oO
local ov
local PlayerStateClient
local n9
local oU
local oc
local oB
local Car2
local Toggles
local o_
local o2
local oH
local Upgrade
local oK
local oi
local op
local Block2
local n8
local oT
local ob
local oW
local Mutation
local oe
local oG
local o1
local oh
local oJ
local oM
local oo
local oP
local ot
local Library
local Options
local oz
local od
local oC
local oY
local Workspace
local o0
local function fn35()
    if not oT("AutoBuyPickaxes") then
        return
    end
    if os.clock() - oM.pickaxeBuyAt < 1.5 then
        return
    end
    local Pickaxes = Pickaxe2.Pickaxes
    if type(Pickaxes) ~= "table" then
        return
    end
    local s6 = 0
    for i, v in ipairs(Pickaxes) do
        local s7 = type(v) == "table" and type(v.Name) == "string" and od("OwnedPickaxes", v.Name)
        if s7 then
            s6 = i
        end
    end
    for i, v in ipairs(Pickaxes) do
        local s5_1 = Library.Unloaded or not oT("AutoBuyPickaxes")
        if s5_1 then
            return
        end
        local s5_2 = i > s6 and type(v) == "table" and type(v.Name) == "string"
        if s5_2 then
            local s5_3 = v.RobuxOnly or type(v.Price) ~= "number"
            if not s5_3 then
                if not od("OwnedPickaxes", v.Name) then
                    if oM.canSpend(v.Price) then
                        oM.pickaxeBuyAt = os.clock()
                        oo:FireServer("Buy", v.Name)
                        task.wait(0.35)
                        oo:FireServer("Equip", v.Name)
                        return
                    end
                    return
                end
            end
        end
    end
end
local function fn47(a6, a7)
    local p8_1
    local p7_1
    p7_1, p8_1 = pcall(PlayerStateClient.Get, a6)
    if p7_1 and p8_1 ~= nil then
        return p8_1
    end
    return a7
end
local function fn105()
    return oW(oJ("Cash", 0))
end
local function fn110()
    local ux, uy
    if not oT("AutoBreak") then
        oM.setAutoSwing(false)
        return
    end
    local uu = oM.resolvePlot()
    if not uu then
        oM.setAutoSwing(false)
        return
    end
    local uv = oM.blockSlots(uu)
    if #uv == 0 then
        oM.setAutoSwing(false)
        return
    end
    oM.ensurePickaxe()
    oM.setAutoSwing(true)
    local uw = math.max(oM.pickaxeDamage(), 1)
    local uB = false
    for k, v in uv do
        local uA = 10
        while true do
            if uA < 12 then
                if uA < 6 then
                    if uA < 3 then
                        if uA < 1 then
                            oM.standAtSlot(uu, v.index)
                            task.wait(0.2)
                            uA = 23
                        elseif uA < 2 then
                            uA = if uy then 4 else 0
                        else
                            uy = uv.Pending
                            uA = 18
                        end
                    elseif uA < 4 then
                        uy = uv.Type ~= "Block"
                        uA = 7
                    elseif uA < 5 then
                        uA = 13
                    else
                        uv = Library.Unloaded
                        uA = if uv then 16 else 12
                    end
                elseif uA < 9 then
                    if uA < 7 then
                        uA = if uv then 21 else 17
                    elseif uA < 8 then
                        uA = if uy then 18 else 2
                    else
                        uA = 20
                    end
                elseif uA < 10 then
                    return
                elseif uA < 11 then
                    uv = Library.Unloaded
                    uA = if uv then 6 else 14
                else
                    break
                end
            elseif uA < 18 then
                if uA < 15 then
                    if uA < 13 then
                        uv = not oT("AutoBreak")
                        uA = 16
                    elseif uA < 14 then
                        uA = 11
                    else
                        uv = not oT("AutoBreak")
                        uA = 6
                    end
                elseif uA < 16 then
                    uB = true
                    uA = 11
                elseif uA < 17 then
                    uA = if uv then 9 else 22
                else
                    oM.ensurePickaxe()
                    oM.standAtSlot(uu, v.index)
                    uv = math.ceil(math.max(v.health, 1) / uw)
                    ux = os.clock() + math.clamp(uv * oc + 1.5, 2, 25)
                    uA = 8
                end
            elseif uA < 21 then
                if uA < 19 then
                    uA = if uy then 1 else 19
                elseif uA < 20 then
                    uy = not uv.Occupied
                    uA = 1
                else
                    uA = if os.clock() < ux then 5 else 24
                end
            elseif uA < 23 then
                if uA < 22 then
                    return
                end
                uv = od("Plot.Slots", v.index)
                uy = not uv
                uA = if uy then 7 else 3
            elseif uA < 24 then
                uA = 8
            else
                uA = 13
            end
        end
        if uB then
            break
        end
    end
end
local function fn154()
    if not Toggles.AutoBreak.Value then
        oM.setAutoSwing(false)
    end
end
local function fn214()
    return oH
end
local function fn256()
    if not oT("AutoSell") then
        return
    end
    local tW = oJ("Cars", {})
    if type(tW) ~= "table" then
        return
    end
    local tX = oT("KeepMutations")
    local tY = os.clock()
    for k, v in oM.sold do
        if tY - v > 4 then
            oM.sold[k] = nil
        end
    end
    for k, v in tW do
        local tW_1 = Library.Unloaded or not oT("AutoSell")
        if tW_1 then
            return
        end
        if type(v) == "table" then
            local tW_2 = v.UUID
            if type(tW_2) ~= "string" then
                local tZ_1 = type(k) == "string" and k
                tW_2 = tZ_1 or nil
            end
            if not (tW_2 and oM.sold[tW_2]) then
                local Name = v.Name
                local t__2 = v.Mutation or "Normal"
                local t__3 = type(tW_2) == "string" and type(Name) == "string"
                if t__3 then
                    local t__4 = Car2.GetCarData(Name)
                    local tZ_4 = t__4 and t__4.Rarity
                    local tZ_5 = type(tZ_4) == "string" and oz(Options.SellRarities, tZ_4)
                    if tZ_5 then
                        if not (tX and t__2 ~= "Normal") then
                            oM.sold[tW_2] = tY
                            oi:FireServer(tW_2)
                            task.wait(oY)
                        end
                    end
                end
            end
        end
    end
end
local function fn264(aS)
    local pR = Toggles[aS]
    return pR ~= nil and pR.Value == true
end
local function fn289()
    local sq = if not oT("AutoBuyBlocks") then 1 else 0
    if sq == 1 then
        return
    end
    local sj = oM.resolvePlot()
    if not sj then
        return
    end
    local SpawnedBlocks = sj:FindFirstChild("SpawnedBlocks")
    if not SpawnedBlocks then
        return
    end
    local sj_1 = os.clock()
    for k, v in oM.bought do
        if sj_1 - v > 8 then
            oM.bought[k] = nil
        end
    end
    for i, child in SpawnedBlocks:GetChildren() do
        local sk_1 = Library.Unloaded or not oT("AutoBuyBlocks")
        if sk_1 then
            return
        end
        local sk_2 = oM.readSpawned(child)
        local sl = sk_2 and not oM.bought[sk_2.uuid] and oz(Options.BuyBlockFilter, sk_2.name)
        if sl then
            local sl_1 = oM.blockPrice(sk_2.name, sk_2.mutation)
            local sm = sl_1 and oM.canSpend(sl_1)
            if sm then
                oM.bought[sk_2.uuid] = sj_1
                oP:FireServer(sk_2.uuid)
                task.wait(n8)
            end
        end
    end
end
local function fn366(cl)
    local Name = cl.Name
    if type(Name) ~= "string" then
        return nil
    end
    for k, v in o_ do
        if Name == v then
            return v
        end
    end
    local rg = string.match(Name, "^%[X%d+%]%s*(.+)$")
    if rg then
        return rg
    end
    return Name
end
local function fn388(aE)
    o2[#o2 + 1] = aE
    return aE
end
local function fn394()
    local rM = os.clock()
    local rM_1
    local rN = rM - oM.collectAllChecked < 60 and oM.collectAllChecked > 0
    local rN_1
    if rN then
        return oM.ownsCollectAll
    end
    oM.collectAllChecked = rM
    if oh <= 0 then
        oM.ownsCollectAll = false
        return false
    end
    rM_1, rN_1 = pcall(function()
        return op:UserOwnsGamePassAsync(ob.UserId, oh)
    end)
    local rP = rM_1 and rN_1 == true
    oM.ownsCollectAll = rP
    return oM.ownsCollectAll
end
local function fn420()
    if not oT("AutoPlaceBlocks") then
        return
    end
    local sD = oM.resolvePlot()
    if not sD then
        return
    end
    local sE = os.clock()
    for k, v in oM.placed do
        if sE - v > 4 then
            oM.placed[k] = nil
        end
    end
    for k, v in oM.inventoryBlocks() do
        local sF = Library.Unloaded or not oT("AutoPlaceBlocks")
        if sF then
            return
        end
        if not oM.placed[v.uuid] then
            if not not oz(Options.PlaceBlockFilter, v.name) then
                local sF_1 = oM.nextEmptySlot(sD)
                if not sF_1 then
                    return
                end
                oM.placed[v.uuid] = sE
                oK:FireServer(sF_1, "Block", v.uuid)
                task.wait(o1)
            end
        end
    end
end
local function fn458()
    local r6 = oJ("EquippedPickaxe", "Wooden Pickaxe")
    if type(r6) ~= "string" then
        return 15
    end
    local r7 = Pickaxe2.GetPickaxeData(r6)
    local r6_1 = type(r7) == "table" and type(r7.Damage) == "number"
    if r6_1 then
        return r7.Damage
    end
    return 15
end
local function fn460(bY)
    if not bY or not bY.Parent then
        return nil
    end
    local BlockUI = bY:FindFirstChild("BlockUI", true)
    local qT = BlockUI and BlockUI:FindFirstChild("BlockName")
    local qU = BlockUI
    if qU then
        qU = BlockUI:FindFirstChild("Mutation")
    end
    local qS_2 = qT
    local qT_1 = qU
    if qS_2 then
        qS_2 = qT.Text
    end
    local qU_1 = qS_2
    local qS_3 = qU_1 == ""
    local qV_1 = type(qU_1) ~= "string" or qS_3
    if qV_1 then
        return nil
    end
    local qT_2 = qT_1 and qT_1.Text
    local qS_5 = qT_2 == ""
    local qV_2 = type(qT_2) ~= "string" or qS_5
    if qV_2 then
        qT_2 = "Normal"
    end
    return { uuid = bY.Name, name = qU_1, mutation = qT_2 }
end
local function fn521()
    if not oT("AutoBuySlots") then
        return
    end
    if os.clock() - oM.slotBuyAt < 1.5 then
        return
    end
    local to = oM.upgradeLevel() + 1
    local tp = Upgrade.GetUpgradeCost(to)
    if type(tp) ~= "number" then
        return
    end
    if not oM.canSpend(tp) then
        return
    end
    oM.slotBuyAt = os.clock()
    n9:FireServer(to)
end
local function fn631(fF)
    local ue = fF
    local uf = {}
    if ue then
        ue = fF:FindFirstChild("Slots")
    end
    local ug = ue
    if not ug then
        return uf
    end
    local ue_1 = oM.upgradeLevel()
    for i, child in ug:GetChildren() do
        local ug_1 = tonumber(child.Name)
        if ug_1 and ug_1 <= ue_1 then
            local uh_1 = od("Plot.Slots", ug_1)
            if uh_1 and uh_1.Occupied and uh_1.Type == "Block" and not uh_1.Pending then
                local uj_1 = type(uh_1.Name) == "string" and oz(Options.BreakBlockFilter, uh_1.Name)
                if uj_1 then
                    uf[#uf + 1] = { index = ug_1, health = oW(uh_1.Health) }
                end
            end
        end
    end
    table.sort(uf, function(fR, fS)
        return fR.index < fS.index
    end)
    return uf
end
local function fn633(dp, dq)
    local sc = ob.Character and ob.Character:FindFirstChild("HumanoidRootPart")
    local sd = dp
    if sd then
        sd = dp:FindFirstChild("Slots")
    end
    local sc_1 = sd
    if sd then
        sd = sc_1:FindFirstChild(tostring(dq))
    end
    local sc_2 = sd
    if not (sc and sc_2) then
        return false
    end
    sc.CFrame = sc_2:GetPivot() * CFrame.new(0, 4, 3)
    sc.AssemblyLinearVelocity = Vector3.zero
    return true
end
local function fn656()
    if not oT("AutoUpgradePlaced") then
        return
    end
    if os.clock() - oM.upgradeAt < 0.2 then
        return
    end
    local tu = oM.resolvePlot()
    local tv = tu and tu:FindFirstChild("Slots")
    if not tv then
        return
    end
    local tv_1 = 25
    if Options.UpgradeMaxLevel then
        tv_1 = oW(Options.UpgradeMaxLevel.Value)
    end
    if tv_1 < 1 then
        tv_1 = 1
    end
    local tw = oM.upgradeLevel()
    local tx = os.clock()
    for k, v in oM.upgradeSent do
        if tx - v.at > 3 then
            oM.upgradeSent[k] = nil
        end
    end
    local ty = {}
    for i, child in tv:GetChildren() do
        local tu_2 = Library.Unloaded or not oT("AutoUpgradePlaced")
        if tu_2 then
            return
        end
        local tu_3 = tonumber(child.Name)
        if tu_3 and tu_3 <= tw then
            local tz_1 = od("Plot.Slots", tu_3)
            if tz_1 and tz_1.Occupied and tz_1.Type == "Car" and not tz_1.Pending then
                local tA_1 = oW(tz_1.Level)
                if tA_1 < 1 then
                    tA_1 = 1
                end
                if tA_1 < tv_1 then
                    local tB = Car2.GetCarData(tz_1.Name)
                    local tC = tB and tB.Rarity
                    local tC_1 = type(tC) == "string" and tC ~= "Exclusive" and oz(Options.UpgradeRarities, tC)
                    if tC_1 then
                        local tB_2 = oM.upgradeSent[tu_3]
                        if not (tB_2 and tB_2.level == tA_1 and tx - tB_2.at < 2) then
                            local CalculateUpgradeCost = Car2.CalculateUpgradeCost
                            local Name = tz_1.Name
                            local tD = tz_1.Mutation or "Normal"
                            local tE = CalculateUpgradeCost(Name, tA_1, tD)
                            local tz_2 = type(tE) == "number" and oM.canSpend(tE)
                            if tz_2 then
                                ty[#ty + 1] = { index = tu_3, level = tA_1, cost = tE }
                            end
                        end
                    end
                end
            end
        end
    end
    table.sort(ty, function(fd, fe)
        return fd.cost < fe.cost
    end)
    for k, v in ty do
        local tu_4 = Library.Unloaded or not oT("AutoUpgradePlaced")
        if tu_4 then
            return
        end
        if oM.canSpend(v.cost) then
            oM.upgradeAt = os.clock()
            oM.upgradeSent[v.index] = { level = v.level, at = oM.upgradeAt }
            oe:FireServer(v.index)
            task.wait(0.15)
        end
    end
end
local function fn675(b8)
    if not b8 then
        return nil
    end
    local Slots = b8:FindFirstChild("Slots")
    if not Slots then
        return nil
    end
    local q0 = oM.upgradeLevel()
    local q1
    for i, child in Slots:GetChildren() do
        local q__1 = tonumber(child.Name)
        if q__1 and q__1 <= q0 then
            local q2_1 = od("Plot.Slots", q__1)
            local q3 = not q2_1
            if not q3 then
                local q4 = not q2_1.Occupied
                if q4 ~= false then
                    q4 = not q2_1.Pending
                end
                q3 = q4
            end
            if q3 then
                local q2_2 = not q1
                local q8 = if q2_2 then 1 else 0
                local q6 = 3109 * q8 + 3929 * (1 - q8)
                local q7 = 548 * q8 + 222 * (1 - q8)
                if not ((q6 * 560 + q7 * 508 + q6 * q7) % 16777213 == 3723156) then
                    q2_2 = q__1 < q1
                end
                if q2_2 then
                    q1 = q__1
                end
            end
        end
    end
    return q1
end
local function fn679(aH, aI)
    if setclipboard then
        setclipboard(aH)
    elseif toclipboard then
        toclipboard(aH)
    end
    Library:Notify(aI)
end
local function fn720(aO)
    local DiscordGroup = aO:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = ot })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = ot })
end
local function fn764(a3)
    local p2 = tonumber(a3)
    if p2 then
        return p2
    elseif type(a3) == "string" then
        local p2_1 = tonumber((string.gsub(a3, "[,%s%$]", "")))
        if p2_1 then
            return p2_1
        end
        return 0
    else
        return 0
    end
end
local function fn775()
    if not oT("AutoCollect") then
        return
    end
    if oM.refreshCollectAll() then
        oC:FireServer()
        return
    end
    local sW = oM.resolvePlot()
    local sX = sW and sW:FindFirstChild("Slots")
    if not sX then
        return
    end
    for i, child in sX:GetChildren() do
        local sW_2 = Library.Unloaded or not oT("AutoCollect")
        if sW_2 then
            return
        end
        local sW_3 = tonumber(child.Name)
        if sW_3 then
            local sX_1 = od("Plot.Slots", sW_3)
            local sY = sX_1 and sX_1.Occupied and sX_1.Type == "Car" and not sX_1.Pending and oW(sX_1.Cash) > 0
            if sY then
                oG:FireServer(sW_3)
                task.wait(oU)
            end
        end
    end
end
local function fn776()
    oO(oB, "Copied Discord invite to clipboard")
end
local function fn815()
    local KeepCash = Options.KeepCash
    if not KeepCash then
        return 0
    end
    return math.max(oW(KeepCash.Value), 0)
end
local function fn864(bc, bd)
    local qg_1
    local qf_1
    qf_1, qg_1 = pcall(PlayerStateClient.GetFromDict, bc, bd)
    if qf_1 then
        return qg_1
    end
    return nil
end
local function fn901(M)
    local pL = cloneref and typeof(M) == "Instance"
    if pL then
        return cloneref(M)
    end
    return M
end
local function fn903(bO, bP)
    local qK = Block2.GetBlockData(bO)
    local qL = type(qK) ~= "table" or type(qK.Price) ~= "number"
    if qL then
        return nil
    elseif o0:GetAttribute("BlockSale") then
        return 1
    else
        local GetMutationData = Mutation.GetMutationData
        local qM = bP or "Normal"
        local qN = GetMutationData(qM)
        local qL_2 = 1
        local qM_1 = type(qN) == "table" and type(qN.IncomeMultiplier) == "number"
        if qM_1 then
            qL_2 = qN.IncomeMultiplier
        end
        return qK.Price * qL_2
    end
end
local function fn913()
    local qu_1
    local qt_1
    local qs = oJ("UpgradeLevel", nil)
    if qs == nil then
        qt_1, qu_1 = pcall(PlayerStateClient.GetPath, "UpgradeLevel")
        if qt_1 then
            qs = qu_1
        end
    end
    local qs_1 = oW(qs)
    if qs_1 <= 0 then
        return 9
    end
    return qs_1
end
local function fn924()
    local plot = oM.plot
    local qz_1
    local qA = plot and plot.Parent
    local qA_1
    if qA then
        return plot
    end
    qz_1, qA_1 = pcall(function()
        return ov:InvokeServer()
    end)
    local qB = qz_1 and typeof(qA_1) == "Instance"
    if qB then
        oM.plot = oq(qA_1)
        return oM.plot
    end
    local UserId = ob.UserId
    local PlotLocations = Workspace:FindFirstChild("PlotLocations")
    local Plots = Workspace:FindFirstChild("Plots")
    if PlotLocations and Plots then
        for i, child in PlotLocations:GetChildren() do
            if child:GetAttribute("OwnerId") == UserId then
                local qA_3 = Plots:FindFirstChild(child.Name)
                if qA_3 then
                    oM.plot = oq(qA_3)
                    return oM.plot
                end
            end
        end
    end
    return nil
end
local function fn929(bn)
    bn = oW(bn)
    local qn = bn ~= bn
    local qr = if qn then 1 else 0
    local qp = 3329 * qr + 3694 * (1 - qr)
    local qq = 2942 * qr + 3022 * (1 - qr)
    if not ((qp * 3222 + qq * 2921 + qp * qq) % 16777213 == 12336325) then
        qn = bn < 0
    end
    if qn then
        return false
    end
    return oM.cash() - oM.keepCash() >= bn
end
local function fn1044(aX, aY)
    local pU = aX and aX.Value
    if type(pU) ~= "table" then
        return false
    elseif pU[aY] == true then
        return true
    else
        for k, v in pairs(pU) do
            if v == aY then
                return true
            end
        end
        return false
    end
end
n8 = nil
n9 = nil
Options = nil
ob = nil
oc = nil
od = nil
oe = nil
Toggles = nil
Workspace = nil
oh = nil
oi = nil
Upgrade = nil
oo = nil
op = nil
oq = nil
ot = nil
ov = nil
Library = nil
oz = nil
Mutation = nil
oB = nil
oC = nil
Car2 = nil
oG = nil
oH = nil
Pickaxe2 = nil
oJ = nil
oK = nil
oM = nil
Block2 = nil
oO = nil
oP = nil
PlayerStateClient = nil
oT = nil
oU = nil
local oV
oW = nil
local n7, SaveManager, ol, on, ou, TeleportService, oy, oD, oF, oL, oQ, oS, oX
oY = nil
o_ = nil
o0 = nil
o1 = nil
o2 = nil
o3 = nil
local oZ
local pk_1
local o8_2
local o5_3
n7, o0, oX, oS, oQ, oL, oH, oD, TeleportService, op, ol, Workspace, ob, o3 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local o4 = 1
repeat
    local o5_1 = (o4 * 5 + 2) % 6 + 1
    if o5_1 <= 3 then
        if o5_1 <= 2 then
            if o5_1 <= 1 then
                local o6_1 = { "xyu", "gzjelbwi", "snv", "yflaeq", "vye", "drhw", "csqgygjj", "jvflkdiqhs", "ixxjdln" }
                local yx = o4
                local o7_1 = o6_1[yx % 9 + 1]
                if o7_1:len() <= o7_1:gsub("(.)", "%1%1", yx % 3 % 2 + 1):len() then
                    o3 = fn214
                else
                    ol = fn214
                end
                o4 = (o4 + 5) % 24
            else
                local o6_2 = (vector.create((o4 * 3 + 7) % 11 + 1, (o4 * 1 + 13) % 13 + 1, (o4 * 11 + 10) % 17 + 1))
                local o7_2 = (vector.create((o4 * 5 + 3) % 11 + 1, (o4 * 8 + 5) % 13 + 1, (o4 * 2 + 3) % 17 + 1))
                local zo = vector.cross(o6_2, o7_2)
                local zp = vector.dot(o6_2, o7_2)
                if vector.dot(zo, zo) + zp * zp == vector.dot(o6_2, o6_2) * vector.dot(o7_2, o7_2) + 4 then
                    op = game:GetService("Players")
                else
                    n7 = game:GetService("Players")
                end
                o4 = (o4 + 11) % 24
            end
        else
            local o6_3 = {
                "zvwm",
                "cxjsdyf",
                "gunotbzb",
                "chol",
                "eplf",
                "kgcpowfzonn",
                "noxo",
                "gukmdv",
                "vheoh",
                "wzjshvb",
                "fkoxqpprqu"
            }
            if o6_3[(o4 * 73 + 97) % 11 + 1] <= o6_3[(o4 * 73 + 97) % 11 + 1] then
                o0 = game:GetService("ReplicatedStorage")
                oX = game:GetService("RunService")
                oS = game:GetService("UserInputService")
                oQ = game:GetService("VirtualUser")
                oL = game:GetService("HttpService")
            else
                oX = game:GetService("ReplicatedStorage")
                oQ = game:GetService("RunService")
                oL = game:GetService("UserInputService")
                oS = game:GetService("VirtualUser")
                o0 = game:GetService("HttpService")
            end
            o4 = (o4 + 11) % 24
        end
    elseif o5_1 <= 5 then
        if o5_1 <= 4 then
            if o4 * 32255863 + 4 + 7 <= o4 * 32255863 + 4 + 7 + 2 then
                oH = game:GetService("CoreGui")
                oD = game:GetService("GuiService")
            else
                oD = game:GetService("CoreGui")
                oH = game:GetService("GuiService")
            end
            o4 = (o4 + 11) % 24
        else
            local o5_2 = { "knslvubcuulw", "secvzrxjvmmi", "mztwyejixsfm", "plxajc", "zfxrvbvc", "zzmbv", "iya", "husnkp" }
            if o5_2[(o4 * 37 + 106) % 8 + 1] <= o5_2[(o4 * 37 + 106) % 8 + 1] then
                TeleportService = game:GetService("TeleportService")
            else
                ob = game:GetService("TeleportService")
            end
            o4 = (o4 + 23) % 24
        end
    else
        if (o4 * 2 + 7) * 4 % 3 == ((o4 * 2 + 7) * 4 + 6) % 3 then
            op = game:GetService("MarketplaceService")
            ol = game:GetService("Lighting")
            Workspace = game:GetService("Workspace")
            ob = n7.LocalPlayer
        else
            ol = game:GetService("MarketplaceService")
            op = game:GetService("Lighting")
            ob = game:GetService("Workspace")
            n7 = Workspace.LocalPlayer
        end
        o4 = (o4 + 5) % 24
    end
until (o4 * 17 + 20) % 24 == 7
if getgenv then
    oV, o5_3 = nil, nil
    local o4_1 = 15
    repeat
        if (o4_1 * 1 + 1) % 2 + 1 <= 1 then
            local zj = bit32.rrotate(bit32.bxor(bit32.lrotate(o4_1, 30), string.byte(tostring(oV))), 31)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(zj, 1474140331), 1014752041), (bit32.bxor(bit32.band(zj, 2820826964), 3589582476))), 1014752041), 3589582476) ~= zj then
                getgenv().gethui = oV
                o3 = getgenv().__OuroborosBreakForAnimeLib
            else
                getgenv().gethui = o3
                oV = getgenv().__OuroborosBreakForAnimeLib
            end
            o4_1 = (o4_1 + 13) % 16
        else
            local o6_5 = (vector.create((o4_1 * 2 + 5) % 11 + 1, (o4_1 * 7 + 3) % 13 + 1, (o4_1 * 12 + 9) % 17 + 1))
            local o7_3 = (vector.create((o4_1 * 1 + 9) % 11 + 1, (o4_1 * 11 + 8) % 13 + 1, (o4_1 * 9 + 3) % 17 + 1))
            local o8_1 = (vector.create((o4_1 * 3 + 5) % 5 + 1, (o4_1 * 1 + 5) % 7 + 1, (o4_1 * 2 + 5) % 9 + 1))
            if math.abs((vector.angle(o6_5, o7_3, o8_1))) - math.abs((vector.angle(o7_3, o6_5, o8_1))) == 0 then
                o5_3 = oV
            else
                oV = o5_3
            end
            o4_1 = (o4_1 + 7) % 16
        end
    until (o4_1 * 1 + 15) % 16 == 2
    if o5_3 then
        o5_3 = oV.Unload
    end
    if o5_3 then
        pcall(function()
            oV:Unload()
        end)
    end
end
pcall(function()
    gethui = o3
end)
if setthreadidentity then
    setthreadidentity(8)
end
oF, oB, ou, on, oh, oc, n8, o1, oY, oU = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
oF = "Break For Anime!"
oB = "https://discord.gg/ehKVq7pf7v"
ou = "https://rscripts.net/@Ouroboros"
on = "https://ouroboros-hub-rbx.web.app/"
oh = 1932204488
oc = 0.85
n8 = 0.12
o1 = 0.12
oY = 0.12
oU = 0.08
local o7_4 = {
    "Common",
    "Uncommon",
    "Rare",
    "Epic",
    "Legendary",
    "Mythic",
    "Cosmic",
    "Secret",
    "Celestial",
    "Godly",
    "Immortal",
    "Exclusive"
}
local o6_6 = {}
local o5_4 = {}
for k, v in o7_4 do
    if v ~= "Exclusive" then
        o6_6[#o6_6 + 1] = v
        o5_4[v] = true
    end
end
oP, oK, oG, oC, ov, oo, oi, oe, n9, PlayerStateClient, Block2, Pickaxe2, Car2, Mutation, Upgrade, oq = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
oq = fn901
local Remotes = o0:WaitForChild("Remotes")
local Plot = Remotes:WaitForChild("Plot")
local pf_1
local Block = Remotes:WaitForChild("Block")
local Pickaxe = Remotes:WaitForChild("Pickaxe")
local Car = Remotes:WaitForChild("Car")
local o9_1
oP = oq(Block:WaitForChild("BuyBlock"))
oK = oq(Plot:WaitForChild("PlaceItem"))
oG = oq(Plot:WaitForChild("CollectCash"))
oC = oq(Plot:WaitForChild("CollectAll"))
ov = oq(Plot:WaitForChild("GetPlot"))
oo = oq(Pickaxe:WaitForChild("PickaxeRemote"))
oi = oq(Car:WaitForChild("SellCar"))
oe = oq(Car:WaitForChild("UpgradeCar"))
n9 = oq(Remotes:WaitForChild("BuyUpgrade"))
local Shared = o0:WaitForChild("Shared")
local Configurations = Shared:WaitForChild("Configurations")
local Libraries = o0:WaitForChild("Libraries")
local pa_1
PlayerStateClient = require(Libraries:WaitForChild("PlayerState"):WaitForChild("PlayerStateClient"))
Block2 = require(Configurations:WaitForChild("Block"))
Pickaxe2 = require(Configurations:WaitForChild("Pickaxe"))
Car2 = require(Configurations:WaitForChild("Car"))
Mutation = require(Configurations:WaitForChild("Mutation"))
local Market = require(Configurations:WaitForChild("Market"))
local ph_1
Upgrade = require(Configurations:WaitForChild("Upgrade"))
if Market.Gamepasses and Market.Gamepasses.CollectAll then
    oh = Market.Gamepasses.CollectAll
end
o8_2, pa_1, o_, o9_1 = nil, nil, nil, nil
local o4_3 = 12
repeat
    if (o4_3 * 1 + 1) % 2 + 1 <= 1 then
        local pb_2 = {
            "kuvcrqqnfby",
            "sxu",
            "prea",
            "qkzcy",
            "ygvyvhjxil",
            "exfwoos",
            "wphcuib",
            "hgyz",
            "neixnazhbko",
            "exedumtd"
        }
        local yl = o4_3
        local pc_1 = pb_2[yl % 10 + 1]
        if pc_1:len() <= pc_1:reverse():rep(yl % 3 + 2):len() then
            pa_1 = {}
            o_ = {}
            o9_1 = {}
        else
            o9_1 = {}
            pa_1 = {}
            o_ = {}
        end
        o4_3 = (o4_3 + 5) % 16
    else
        if o4_3 * 114075953 + 2 + 4 >= o4_3 * 114075953 + 2 + 4 + 1 then
            o_ = {}
        else
            o8_2 = {}
        end
        o4_3 = (o4_3 + 5) % 16
    end
until (o4_3 * 3 + 8) % 16 == 10
for i, v in ipairs(Block2.Blocks) do
    local o4_4 = type(v) == "table" and type(v.Name) == "string"
    if o4_4 then
        o_[#o_ + 1] = v.Name
        o9_1[v.Name] = true
        if type(v.Price) == "number" then
            o8_2[#o8_2 + 1] = v.Name
            if #o8_2 <= 4 then
                pa_1[v.Name] = true
            end
        end
    end
end
Library, SaveManager = nil, nil
local pd_1 = { Common = true, Uncommon = true }
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
if getgenv then
    getgenv().__OuroborosBreakForAnimeLib = Library
end
Toggles, Options, o2, oM, oy, oZ, oO, ot, oT, oz, oW, oJ, od = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Toggles = Library.Toggles
Options = Library.Options
o2 = {}
oZ = fn388
oO = fn679
ot = fn776
oT = fn264
oz = fn1044
oW = fn764
oJ = fn47
od = fn864
oM = {
    plot = nil,
    bought = {},
    placed = {},
    sold = {},
    pickaxeBuyAt = 0,
    slotBuyAt = 0,
    upgradeAt = 0,
    upgradeSent = {},
    swingSent = nil,
    ownsCollectAll = false,
    collectAllChecked = 0
}
oM.cash = fn105
oM.keepCash = fn815
oM.canSpend = fn929
oM.upgradeLevel = fn913
oM.resolvePlot = fn924
oM.blockPrice = fn903
oM.readSpawned = fn460
oM.nextEmptySlot = fn675
oM.toolBlockName = fn366
oM.inventoryBlocks = function()
    local rA, rB
    rA = {}
    rB = {}
    local rC = oJ("Blocks", {})
    if type(rC) == "table" then
        for k, v in rC do
            if type(v) == "table" then
                local rC_1 = v.UUID
                if type(rC_1) ~= "string" then
                    local rD_1 = type(k) == "string" and k
                    rC_1 = rD_1 or nil
                end
                local Name = v.Name
                local rE_2 = type(rC_1) == "string" and type(Name) == "string"
                if rE_2 then
                    rA[rC_1] = true
                    rB[#rB + 1] = { uuid = rC_1, name = Name }
                end
            end
        end
    end
    local function rC_2(cB)
        if not cB then
            return
        end
        for i, child in cB:GetChildren() do
            local ro = child:IsA("Tool") and child:GetAttribute("ItemType") == "Block"
            if ro then
                local attr = child:GetAttribute("UUID")
                local rp = type(attr) == "string" and not rA[attr]
                if rp then
                    local rp_1 = oM.toolBlockName(child)
                    if type(rp_1) == "string" then
                        rA[attr] = true
                        rB[#rB + 1] = { uuid = attr, name = rp_1 }
                    end
                end
            end
        end
    end
    rC_2(ob:FindFirstChild("Backpack"))
    rC_2(ob.Character)
    return rB
end
oM.refreshCollectAll = fn394
oM.setAutoSwing = function(cY)
    if oM.swingSent == cY then
        return
    end
    oM.swingSent = cY
    pcall(function()
        oo:FireServer("AutoSwing", cY)
    end)
end
oM.ensurePickaxe = function()
    local rS, rT
    local rW_3
    local Character = ob.Character
    if Character then
        local Tool = Character:FindFirstChildWhichIsA("Tool")
        local rW_1 = Tool and Tool:GetAttribute("ItemType") == "Pickaxe"
        if rW_1 then
            return true
        end
        rT = oJ("EquippedPickaxe", "Wooden Pickaxe")
        if rW_3 then
            pcall(function()
                oo:FireServer("Equip", rT)
            end)
        end
        local rV_3 = Character and Character:FindFirstChildOfClass("Humanoid")
        rS = rV_3
        local Backpack = ob:FindFirstChild("Backpack")
        if rS and Backpack then
            for i, child in Backpack:GetChildren() do
                local r2 = child
                local rU_2 = r2:IsA("Tool") and r2:GetAttribute("ItemType") == "Pickaxe"
                if rU_2 then
                    pcall(function()
                        rS:EquipTool(r2)
                    end)
                    return true
                end
            end
        end
        return false
    end
    rT = oJ("EquippedPickaxe", "Wooden Pickaxe")
    local rV_5 = rT ~= ""
    rW_3 = type(rT) == "string" and rV_5
    if rW_3 then
        pcall(function()
            oo:FireServer("Equip", rT)
        end)
    end
    local rV_6 = Character and Character:FindFirstChildOfClass("Humanoid")
    rS = rV_6
    local Backpack = ob:FindFirstChild("Backpack")
    if rS and Backpack then
        for i, child in Backpack:GetChildren() do
            local r2 = child
            local rU_4 = r2:IsA("Tool") and r2:GetAttribute("ItemType") == "Pickaxe"
            if rU_4 then
                pcall(function()
                    rS:EquipTool(r2)
                end)
                return true
            end
        end
    end
    return false
end
oM.pickaxeDamage = fn458
oM.standAtSlot = fn633
oM.buyBlocks = fn289
oM.placeBlocks = fn420
oM.collectMoney = fn775
oM.buyPickaxes = fn35
oM.buySlots = fn521
oM.upgradePlaced = fn656
oM.sellCars = fn256
oM.blockSlots = fn631
oM.breakBlocks = fn110
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = oB, Copyable = true }, "|", oF },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
Window:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Radius = 24, Transparency = 0.3 })
oy = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "box"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in oy do
    if k ~= "Info" then
        fn720(v)
    end
end
ph_1, pk_1, pf_1 = nil, nil, nil
local FarmGroup = oy.Main:AddLeftGroupbox("Farm", "pickaxe")
FarmGroup:AddToggle("AutoBuyBlocks", { Text = "Auto Buy Luck Blocks", Default = false })
FarmGroup:AddDropdown("BuyBlockFilter", { Text = "Luck Blocks", Values = o8_2, Multi = true, Default = pa_1, Expandable = true })
FarmGroup:AddInput("KeepCash", { Text = "Keep Cash", Default = "0", Numeric = true, Finished = false, Placeholder = "0" })
FarmGroup:AddDivider("Plot")
FarmGroup:AddToggle("AutoPlaceBlocks", { Text = "Auto Place Lucky Blocks", Default = false })
FarmGroup:AddDropdown("PlaceBlockFilter", { Text = "Place Blocks", Values = o_, Multi = true, Default = o9_1, Expandable = true })
FarmGroup:AddToggle("AutoBreak", { Text = "Auto Break", Default = false })
FarmGroup:AddDropdown("BreakBlockFilter", { Text = "Break Blocks", Values = o_, Multi = true, Default = o9_1, Expandable = true })
FarmGroup:AddDivider("Upgrade")
FarmGroup:AddToggle("AutoUpgradePlaced", { Text = "Auto Upgrade Placed", Default = false })
FarmGroup:AddDropdown("UpgradeRarities", { Text = "Rarities", Values = o6_6, Multi = true, Default = o5_4, Expandable = true })
FarmGroup:AddSlider("UpgradeMaxLevel", { Text = "Max Level", Default = 25, Min = 1, Max = 100, Rounding = 0 })
FarmGroup:AddDivider("Cash")
FarmGroup:AddToggle("AutoCollect", { Text = "Auto Collect Money", Default = false })
local ShopGroup = oy.Main:AddRightGroupbox("Shop", "shopping-bag")
ShopGroup:AddToggle("AutoBuyPickaxes", { Text = "Auto Buy Pickaxes", Default = false })
ShopGroup:AddToggle("AutoBuySlots", { Text = "Auto Buy Slots", Default = false })
ShopGroup:AddDivider("Sell")
ShopGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
ShopGroup:AddDropdown("SellRarities", { Text = "Rarities", Values = o7_4, Multi = true, Default = pd_1, Expandable = true })
ShopGroup:AddToggle("KeepMutations", { Text = "Keep Mutations", Default = true })
Toggles.AutoBreak:OnChanged(fn154)
local function pj()
    local vz
    local vF
    local vE
    local vA
    local vH
    local vD
    vz = nil
    vA = nil
    vD = nil
    vE = nil
    vF = nil
    vH = nil
    local Label3, vB, Label, vG, vI, Label2
    local vL = "#8b93a3"
    vE = "#e8a34d"
    vA = "#e05a5a"
    vH = "#7fd47f"
    vF = function(gn, go)
        return string.format('<font color="%s">%s</font>', go, gn)
    end
    vG = function(gq, gr, gs)
        return string.format("<b>%s</b> %s %s", gq, vF("-", "#5a6070"), vF(gr, gs))
    end
    local function vM()
        local uH = hookfunction ~= nil
        local uI = hookmetamethod ~= nil
        local uJ = getrawmetatable ~= nil
        local uK = setrawmetatable ~= nil
        local uL = getgc ~= nil
        local uM = getgenv ~= nil
        local uN = getreg ~= nil
        local uO = getconnections ~= nil
        local uP = firesignal ~= nil
        local uQ = getcallbackvalue ~= nil
        local uR = setclipboard ~= nil
        local uS = getcustomasset ~= nil
        local uT = getnamecallmethod ~= nil
        local uU = isexecutorclosure ~= nil
        local uV = fireproximityprompt ~= nil
        local uW = firetouchinterest ~= nil
        local uX = WebSocket ~= nil
        local uY = readfile ~= nil
        local uZ = writefile ~= nil
        local u_ = request
        local va = if u_ then 1 else 0
        local u8 = 658 * va + 910 * (1 - va)
        local u9 = 2986 * va + 1318 * (1 - va)
        if not ((u8 * 154 + u9 * 1973 + u8 * u9) % 16777213 == 7957498) then
            u_ = http_request
        end
        local u0 = u_ ~= nil
        local u2 = (debug and debug.getupvalues) ~= nil
        local u4 = (debug and debug.setupvalue) ~= nil
        local u5 = 0
        local u6 = { uH, uI, uJ, uK, uL, uM, uN, uO, uP, uQ, uR, uS, uT, uU, uV, uW, uX, uY, uZ, u0, u2, u4 }
        for i, v in ipairs(u6) do
            if v then
                u5 += 1
            end
        end
        local uH_1 = u5 / #u6
        if uH_1 >= 0.9 then
            return vF("Full Support", vH)
        elseif uH_1 >= 0.6 then
            return vF("Half Support", vE)
        else
            return vF("Low Support", vA)
        end
    end
    vz = "Unknown"
    pcall(function()
        local vi_1
        local vh_1
        if identifyexecutor then
            vi_1, vh_1 = identifyexecutor()
            local vj = vi_1 ~= ""
            local vk = type(vi_1) == "string" and vj
            if vk then
                local vj_1 = type(vh_1) == "string" and vh_1 ~= "" and vi_1 .. " " .. vh_1
                vz = vj_1 or vi_1
            end
        end
    end)
    local vN = vM()
    vD = os.clock()
    vI = function()
        local vm = math.floor(os.clock() - vD)
        if vm < 60 then
            return vm .. "s"
        elseif vm < 3600 then
            return string.format("%dm %ds", vm // 60, vm % 60)
        else
            return string.format("%dh %dm", vm // 3600, vm % 3600 // 60)
        end
    end
    local UserGroup = oy.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = ob, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(vG("User", ob.DisplayName .. " @" .. ob.Name, vH), true)
    UserGroup:AddLabel(vG("UserId", tostring(ob.UserId), "#6ec1ff"), true)
    UserGroup:AddLabel(vG("Executor", vz .. "  " .. vN, vH), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(vG("Session", vI(), vE), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            oO(ob.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            oO("https://www.roblox.com/users/" .. tostring(ob.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = oy.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(vG("Game", oF, "#6ec1ff"), true)
    Label2 = SessionGroup:AddLabel(vG("Players", "0/0", vH), true)
    vB = tostring(game.JobId)
    local vK = #vB > 18 and string.sub(vB, 1, 18) .. "..."
    local vN_1 = vK or vB
    SessionGroup:AddLabel(vG("Job", vN_1, vL), true)
    Label = SessionGroup:AddLabel(vG("Ping", "0 ms", vE), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            TeleportService:Teleport(game.PlaceId, ob)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            oO(vB, "Copied Job ID")
        end
    })
    task.spawn(function()
        local vv_1
        local vu_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(vG("Session", vI(), vE))
            Label2:SetText(vG("Players", #n7:GetPlayers() .. "/" .. tostring(n7.MaxPlayers), vH))
            vu_1, vv_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local vu_2 = vu_1 and vv_1 .. " ms" or "n/a"
            Label:SetText(vG("Ping", vu_2, vE))
        end
    end)
    local SocialsGroup = oy.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = ot })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            oO(ou, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            oO(on, "Copied website link")
        end
    })
end
if ((false or not pf_1) and (not pf_1 or pk_1) or (pj or not ShopGroup or (not ShopGroup or pj)) or (not pf_1 and pf_1 or not pf_1 and not ShopGroup or (pf_1 or pf_1) and (pj or ShopGroup))) and (false and (pj and pj) and (false and (pk_1 or false)) or (not pf_1 and not ShopGroup or (pj or false)) and ((pj or pk_1) and (false or not pf_1))) or not (((false or not pf_1) and (not pf_1 or pk_1) or (pj or not ShopGroup or (not ShopGroup or pj)) or (not pf_1 and pf_1 or not pf_1 and not ShopGroup or (pf_1 or pf_1) and (pj or ShopGroup))) and (false and (pj and pj) and (false and (pk_1 or false)) or (not pf_1 and not ShopGroup or (pj or false)) and ((pj or pk_1) and (false or not pf_1)))) then
    ph_1 = function()
        local connection
        local MovementGroup = oy.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = oy.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        local function hB()
            local Character = ob.Character
            local vQ = Character and Character:FindFirstChildOfClass("Humanoid")
            return vQ
        end
        local function hG()
            local Character = ob.Character
            local vT = Character and Character:FindFirstChild("HumanoidRootPart")
            return vT
        end
        oZ(oX.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            if Toggles.NoClip and Toggles.NoClip.Value then
                local Character = ob.Character
                if Character then
                    for i, descendant in ipairs(Character:GetDescendants()) do
                        local vV_2 = descendant:IsA("BasePart") and descendant.CanCollide
                        if vV_2 then
                            descendant.CanCollide = false
                        end
                    end
                end
            end
        end))
        oZ(oS.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            if Toggles.InfJump and Toggles.InfJump.Value then
                local v2_1 = hB()
                if v2_1 then
                    v2_1:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end
        end))
        local h2 = Workspace.CurrentCamera
        oZ(oX.RenderStepped:Connect(function(h3)
            if Library.Unloaded then
                return
            end
            if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
                local v7_1 = hB()
                if v7_1 then
                    v7_1.WalkSpeed = Options.WalkSpeed.Value
                end
            end
            if Toggles.Fly and Toggles.Fly.Value then
                local v7_3 = hG()
                local v8 = hB()
                if v7_3 and v8 then
                    v8.PlatformStand = true
                    local v8_1 = Vector3.zero
                    h2 = Workspace.CurrentCamera
                    if h2 then
                        if oS:IsKeyDown(Enum.KeyCode.W) then
                            v8_1 += h2.CFrame.LookVector
                        end
                        if oS:IsKeyDown(Enum.KeyCode.S) then
                            v8_1 -= h2.CFrame.LookVector
                        end
                        if oS:IsKeyDown(Enum.KeyCode.A) then
                            v8_1 -= h2.CFrame.RightVector
                        end
                        if oS:IsKeyDown(Enum.KeyCode.D) then
                            v8_1 += h2.CFrame.RightVector
                        end
                    end
                    if oS:IsKeyDown(Enum.KeyCode.Space) then
                        v8_1 += Vector3.new(0, 1, 0)
                    end
                    if oS:IsKeyDown(Enum.KeyCode.LeftControl) then
                        v8_1 -= Vector3.new(0, 1, 0)
                    end
                    v7_3.AssemblyLinearVelocity = Vector3.zero
                    if v8_1.Magnitude > 0 then
                        v7_3.CFrame = v7_3.CFrame + v8_1.Unit * Options.FlySpeed.Value * h3
                    end
                end
            end
        end))
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                local wh = hB()
                if wh then
                    wh.PlatformStand = false
                end
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                local wj = hB()
                if wj then
                    wj.WalkSpeed = 16
                end
            end
        end)
        local function ir(is)
            if not is:IsA("ProximityPrompt") then
                return
            end
            is.HoldDuration = 0
            is.MaxActivationDistance = 50
            is.RequiresLineOfSight = false
        end
        connection = nil
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for i, descendant in ipairs(Workspace:GetDescendants()) do
                    pcall(ir, descendant)
                end
                connection = Workspace.DescendantAdded:Connect(function(iA)
                    if Toggles.InstantProximityPrompt.Value then
                        pcall(ir, iA)
                    end
                end)
                oZ(connection)
            elseif connection then
                connection:Disconnect()
                connection = nil
            end
        end)
        Library:OnUnload(function()
            if connection then
                connection:Disconnect()
            end
        end)
    end
end
local function pk_2()
    local MenuGroup = oy.Settings:AddLeftGroupbox("Menu", "logs")
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = MenuGroup:AddLabel("AFK triggers: 0")
    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3D", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FpsBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local iL = 0
    local iM = tick()
    local function iN()
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        oQ:CaptureController()
        oQ:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        iL += 1
        iM = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. iL)
        end)
    end
    local connection2 = ob.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(iN)
        end
    end)
    oZ(connection2)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local wE = Toggles.AntiAfk.Value and tick() - iM >= 60
            if wE then
                pcall(iN)
            end
        end
    end)
    local function i8(i9)
        pcall(function()
            oD:SetGameplayPausedNotificationEnabled(not i9)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = oH:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not i9
            end
        end)
        if not i9 then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(ob, "GameplayPaused", false)
            else
                ob.GameplayPaused = false
            end
        end)
    end
    Toggles.AntiGameplayPause:OnChanged(function()
        i8(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                i8(true)
            end
        end
    end)
    local jq = false
    local function jr()
        local PlaceId, JobId
        if jq then
            return
        end
        jq = true
        PlaceId, JobId = game.PlaceId, game.JobId
        local wN = pcall(function()
            TeleportService:TeleportToPlaceInstance(PlaceId, JobId, ob)
        end)
        if not wN then
            pcall(function()
                TeleportService:Teleport(PlaceId, ob)
            end)
        end
    end
    task.spawn(function()
        local RobloxPromptGui = oH:WaitForChild("RobloxPromptGui", 30)
        local wS = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        if not wS then
            return
        end
        oZ(wS.ChildAdded:Connect(function(jK)
            if Library.Unloaded then
                return
            end
            if Toggles.AutoReconnect.Value and jK.Name == "ErrorPrompt" then
                jr()
            end
        end))
    end)
    oZ(TeleportService.TeleportInitFailed:Connect(function()
        if Toggles.AutoReconnect.Value then
            jq = false
            jr()
        end
    end))
    Toggles.Disable3D:OnChanged(function()
        pcall(function()
            oX:Set3dRenderingEnabled(not Toggles.Disable3D.Value)
        end)
    end)
    local j_ = {
        ParticleEmitter = true,
        Trail = true,
        Smoke = true,
        Fire = true,
        Sparkles = true,
        Explosion = true,
        Beam = true
    }
    local function j0(j1)
        if j_[j1.ClassName] then
            pcall(function()
                j1.Enabled = false
            end)
        end
    end
    local connection
    Toggles.FpsBoost:OnChanged(function()
        if Toggles.FpsBoost.Value then
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
            end)
            pcall(function()
                ol.GlobalShadows = false
            end)
            pcall(function()
                ol.FogEnd = 9000000000
            end)
            for i, descendant in ipairs(Workspace:GetDescendants()) do
                pcall(j0, descendant)
            end
            connection = Workspace.DescendantAdded:Connect(function(kg)
                if Toggles.FpsBoost.Value then
                    pcall(j0, kg)
                end
            end)
            oZ(connection)
        else
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic
            end)
            pcall(function()
                ol.GlobalShadows = true
            end)
            if connection then
                connection:Disconnect()
                connection = nil
            end
        end
    end)
    local ScriptGroup = oy.Settings:AddLeftGroupbox("Script", "terminal")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
    Library:OnUnload(function()
        oM.setAutoSwing(false)
        if connection2 then
            connection2:Disconnect()
        end
        i8(false)
        pcall(function()
            oX:Set3dRenderingEnabled(true)
        end)
        if connection then
            connection:Disconnect()
        end
        for k, v in o2 do
            local xb = v
            pcall(function()
                xb:Disconnect()
            end)
        end
        table.clear(o2)
        local Character = ob.Character
        local w4 = Character and Character:FindFirstChildOfClass("Humanoid")
        if w4 then
            w4.PlatformStand = false
            w4.WalkSpeed = 16
        end
        if getgenv then
            getgenv().__OuroborosBreakForAnimeLib = nil
        end
    end)
end
local function pf_2(kE)
    local function kF(kG, kH)
        local xd_1 = (kG == "Toggle" and Toggles or Options)[kH]
        local xc_2 = type(xd_1) == "table" and xd_1.Type == kG
        return xc_2 and xd_1 or nil
    end
    local function kP(kQ, kR)
        local Type = kR.Type
        if Type == "Toggle" then
            return { idx = kQ, type = "Toggle", value = kR.Value == true }
        elseif Type == "Slider" then
            return { idx = kQ, type = "Slider", value = tostring(kR.Value) }
        elseif Type == "Dropdown" then
            return { idx = kQ, type = "Dropdown", multi = kR.Multi == true, value = kR.Value }
        elseif Type == "Input" then
            local xh = kR.Value or ""
            return { idx = kQ, type = "Input", text = tostring(xh) }
        elseif Type == "ColorPicker" then
            return { idx = kQ, type = "ColorPicker", value = kR.Value:ToHex(), transparency = kR.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = kQ,
                type = "KeyPicker",
                mode = kR.Mode,
                key = kR.Value,
                modifiers = kR.Modifiers,
                toggled = kR.Toggled
            }
        else
            return nil
        end
    end
    local function kT()
        local xk = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local xl = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if xl then
                    local xl_1 = kP(k, v)
                    if xl_1 then
                        xk[#xk + 1] = xl_1
                    end
                end
            end
        end
        table.sort(xk, function(k2, k3)
            if k2.type ~= k3.type then
                return k2.type < k3.type
            end
            return k2.idx < k3.idx
        end)
        return { objects = xk }
    end
    local function k4(k5)
        local xB
        xB = nil
        local xC = type(k5) ~= "table" or type(k5.idx) ~= "string"
        local xG = if xC then 1 else 0
        local xE = 2240 * xG + 3029 * (1 - xG)
        local xF = 2725 * xG + 2816 * (1 - xG)
        if not ((xE * 177 + xF * 3632 + xE * xF) % 16777213 == 16397680) then
            xC = type(k5.type) ~= "string"
        end
        if not xC then
            xC = SaveManager.Ignore[k5.idx]
        end
        if xC then
            return false
        end
        xB = kF(k5.type, k5.idx)
        if not xB then
            return false
        end
        local xC_1 = pcall(function()
            if k5.type == "Input" then
                if type(k5.text) ~= "string" then
                    return
                end
                xB:SetValue(k5.text)
            elseif k5.type == "ColorPicker" then
                xB:SetValueRGB(Color3.fromHex(k5.value), k5.transparency)
            elseif k5.type == "KeyPicker" then
                xB:SetValue({ k5.key, k5.mode, k5.modifiers })
                if k5.mode == "Toggle" and k5.toggled ~= nil then
                    xB.Toggled = k5.toggled
                    xB:Update()
                end
            else
                xB:SetValue(k5.value)
            end
        end)
        return xC_1
    end
    kE:AddDivider()
    kE:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    kE:AddButton("Export Config to Clipboard", function()
        local xI_1
        local xH_1
        xH_1, xI_1 = pcall(oL.JSONEncode, oL, kT())
        if not xH_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local xH_2 = setclipboard
        local xQ = if xH_2 then 1 else 0
        local xO = 1251 * xQ + 2377 * (1 - xQ)
        local xP = 1087 * xQ + 3227 * (1 - xQ)
        if not ((xO * 1099 + xP * 202 + xO * xP) % 16777213 == 2954260) then
            xH_2 = toclipboard
        end
        local xJ = xH_2
        local xH_3 = type(xJ) ~= "function" or not pcall(xJ, xI_1)
        if xH_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    kE:AddButton("Import Config from Clipboard Text", function()
        local xT_1
        local xR = Options.SaveManager_ImportSource.Value or ""
        local xR_1
        local xS = tostring(xR):match("^%s*(.-)%s*$")
        if xS == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        xR_1, xT_1 = pcall(oL.JSONDecode, oL, xS)
        local xS_1 = not xR_1
        local xX = if xS_1 then 1 else 0
        local xV = 2194 * xX + 3609 * (1 - xX)
        local xW = 3688 * xX + 226 * (1 - xX)
        if not ((xV * 61 + xW * 142 + xV * xW) % 16777213 == 8749002) then
            xS_1 = type(xT_1) ~= "table"
        end
        if not xS_1 then
            xS_1 = type(xT_1.objects) ~= "table"
        end
        if xS_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local xR_2 = 0
        for i, v in ipairs(xT_1.objects) do
            if k4(v) then
                xR_2 += 1
            end
        end
        if xR_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local xT_2 = xR_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(xR_2, xT_2), 6)
    end)
end
pj()
ph_1()
pk_2()
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(oy.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/BreakForAnime")
local pg_1 = SaveManager:BuildConfigSection(oy.Settings)
pf_2(pg_1)
SaveManager:LoadAutoloadConfig()
if Toggles.HideUiOnStart and Toggles.HideUiOnStart.Value then
    Library:Toggle(false)
end
local function o4_7(lC, lD)
    task.spawn(function()
        while not Library.Unloaded do
            pcall(lD)
            task.wait(lC)
        end
    end)
end
o4_7(0.15, oM.buyBlocks)
o4_7(0.2, oM.placeBlocks)
o4_7(1.5, oM.collectMoney)
o4_7(1, oM.buyPickaxes)
o4_7(1, oM.buySlots)
o4_7(0.4, oM.upgradePlaced)
o4_7(0.45, oM.sellCars)
o4_7(0.25, oM.breakBlocks)
